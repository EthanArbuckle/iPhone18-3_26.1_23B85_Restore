uint64_t treeRebalance(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v38 = v8;
  if (v8 < 0)
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = v11 + 56 * v8;
  v13 = *(v12 + 32);
  v14 = v13 < 0 ? 0 : *(v11 + 56 * v13 + 48);
  v15 = *(v12 + 24);
  v16 = v15 < 0 ? 0 : *(v11 + 56 * v15 + 48);
  v17 = v14 - v16;
  if ((v17 + 1) < 3)
  {
    return 0;
  }

  if (v17 == -2)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      v22 = v11 + 56 * v15;
      v23 = *(v22 + 32);
      v24 = v23 < 0 ? 0 : *(v11 + 56 * v23 + 48);
      v31 = *(v22 + 24);
      v32 = v31 < 0 ? 0 : *(v11 + 56 * v31 + 48);
      if (v24 > v32)
      {
        v37 = v15;
        if ((treeRotateLeft(a1, &v37) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 360, 107, 0, "treeRotateLeft %zd", v33, v34, v37);
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v8 + 24) = v37;
      }
    }

    if ((treeRotateRight(a1, &v38) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 364, 107, 0, "treeRotateRight %zd", v35, v36, v38);
      return 0xFFFFFFFFLL;
    }

    goto LABEL_36;
  }

  if (v17 == 2)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v19 = v11 + 56 * v13;
      v20 = *(v19 + 32);
      v21 = v20 < 0 ? 0 : *(v11 + 56 * v20 + 48);
      v25 = *(v19 + 24);
      v26 = v25 < 0 ? 0 : *(v11 + 56 * v25 + 48);
      if (v21 < v26)
      {
        v37 = v13;
        if ((treeRotateRight(a1, &v37) & 0x80000000) != 0)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 347, 107, 0, "treeRotateRight %zd", v27, v28, v37);
          return 0xFFFFFFFFLL;
        }

        *(*(a1 + 8) + 56 * v8 + 32) = v37;
      }
    }

    if ((treeRotateLeft(a1, &v38) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 351, 107, 0, "treeRotateRight %zd", v29, v30, v38);
      return 0xFFFFFFFFLL;
    }

LABEL_36:
    result = 0;
    *a2 = v38;
    return result;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeRebalance", 366, 107, 0, "invalid imbalance: %d", a7, a8, v17);
  return 0xFFFFFFFFLL;
}

uint64_t treeSub(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 2);
  v8 = a1[2];
  if (v8 < 0)
  {
    return 0;
  }

  while (1)
  {
    while (1)
    {
      v13 = (a1[1] + 56 * v8);
      v14 = *v13;
      if (*v13 >= a3)
      {
        v16 = 3;
        goto LABEL_6;
      }

      v15 = v13[1];
      if (v15 > a2)
      {
        break;
      }

      v16 = 4;
LABEL_6:
      v8 = v13[v16];
      if (v8 < 0)
      {
        return 0;
      }
    }

    if (v14 >= a2 && v15 <= a3)
    {
      break;
    }

    if (v14 >= a2)
    {
      *v13 = a3;
    }

    else
    {
      v13[1] = a2;
      if (v15 > a3 && (treeAdd(a1, -1, v9, a3, v15, a6, a7, a8) & 0x80000000) != 0)
      {
        v19 = "treeAdd";
        v20 = 538;
        goto LABEL_22;
      }
    }

LABEL_19:
    result = 0;
    v8 = *v9;
    if (*v9 < 0)
    {
      return result;
    }
  }

  if ((treeDeleteRangeWithPoint(a1, v9, v14, a4, v15, a6, a7, a8) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  v19 = "treeDeleteRangeWithPoint";
  v20 = 525;
LABEL_22:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeSub", v20, 107, 0, v19, a7, a8, v21);
  return 0xFFFFFFFFLL;
}

uint64_t treeAdd(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5 - a4;
  if (a5 <= a4)
  {
    return 0;
  }

  v13 = *a3;
  v52 = v13;
  if (v13 < 0)
  {
    v13 = a1[3];
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = a1[1];
      goto LABEL_5;
    }

    if (*a1)
    {
      v42 = 2 * *a1;
    }

    else
    {
      v42 = 32;
    }

    if (56 * v42 < 0x2000000001)
    {
      v43 = a1[1];
      v15 = realloc(v43, 56 * v42);
      if (v15)
      {
        a1[1] = v15;
        v44 = *a1;
        if (*a1 >= v42)
        {
          v13 = -1;
        }

        else
        {
          v45 = &v15[56 * v44 + 16];
          v46 = -1;
          do
          {
            *v45 = v46;
            v45 += 7;
            v46 = v44++;
          }

          while (v42 != v44);
          v13 = v44 - 1;
        }

        *a1 = v42;
LABEL_5:
        v16 = &v15[56 * v13];
        a1[3] = *(v16 + 2);
        *(v16 + 2) = a2;
        *(v16 + 3) = -1;
        *v16 = a4;
        *(v16 + 1) = a5;
        *(v16 + 12) = 1;
        *(v16 + 4) = -1;
        *(v16 + 5) = v8;
        v52 = v13;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_73:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 391, 107, 0, "nodeAlloc", a7, a8, v50);
        return 0xFFFFFFFFLL;
      }

      free(v43);
    }

    else
    {
      *__error() = 12;
    }

    a1[1] = 0;
    v47 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "nodeAlloc", 43, 107, *v47, "malloc", v48, v49, v50);
    goto LABEL_73;
  }

LABEL_6:
  v17 = a1[1];
  v18 = (v17 + 56 * v13);
  v19 = *v18;
  v20 = v18[3];
  if (v20 < 0)
  {
    v23 = 0x8000000000000000;
  }

  else
  {
    v21 = v18[3];
    do
    {
      v22 = v17 + 56 * v21;
      v21 = *(v22 + 32);
    }

    while ((v21 & 0x8000000000000000) == 0);
    v23 = *(v22 + 8);
  }

  if (v19 > a4 && v19 <= a5 && v23 < v19)
  {
    if (a4 <= v23)
    {
      v19 = v23;
    }

    else
    {
      v19 = a4;
    }

    *v18 = v19;
  }

  v25 = v18[1];
  v26 = *(v17 + 56 * v13 + 32);
  if (v26 < 0)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    do
    {
      v27 = (v17 + 56 * v26);
      v26 = v27[3];
    }

    while ((v26 & 0x8000000000000000) == 0);
    v28 = *v27;
  }

  if (v25 < a5 && v25 >= a4 && v28 > v25)
  {
    if (v28 >= a5)
    {
      v25 = a5;
    }

    else
    {
      v25 = v28;
    }

    *(v17 + 56 * v13 + 8) = v25;
  }

  if (v19 > a4)
  {
    if (v19 >= a5)
    {
      v29 = a5;
    }

    else
    {
      v29 = v19;
    }

    v51 = v20;
    if ((treeAdd(a1, v13, &v51, a4, v29) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 418, 107, 0, "treeAdd: %zd", a7, a8, v51);
      return 0xFFFFFFFFLL;
    }

    v17 = a1[1];
    *(v17 + 56 * v13 + 24) = v51;
  }

  if (v25 < a5)
  {
    if (v25 <= a4)
    {
      v30 = a4;
    }

    else
    {
      v30 = v25;
    }

    v51 = *(v17 + 56 * v13 + 32);
    if ((treeAdd(a1, v13, &v51, v30, a5) & 0x80000000) != 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 428, 107, 0, "treeAdd: %zd", a7, a8, v51);
      return 0xFFFFFFFFLL;
    }

    v17 = a1[1];
    *(v17 + 56 * v13 + 32) = v51;
  }

  v31 = (v17 + 56 * v13);
  v32 = v31[3];
  if (v32 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = *(v17 + 56 * v32 + 48);
  }

  v34 = v31[4];
  if (v34 < 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v17 + 56 * v34 + 48);
  }

  if (v35 > v33)
  {
    v33 = v35;
  }

  *(v31 + 12) = v33 + 1;
  v36 = *v31;
  if (v32 < 0)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v17 + 56 * v32 + 40);
  }

  v38 = v31[1] - *v31 + v37;
  if (v34 < 0)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v17 + 56 * v34 + 40);
  }

  v31[5] = v38 + v39;
  if ((treeRebalance(a1, &v52, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
  {
    result = 0;
    *a3 = v52;
    return result;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "treeAdd", 434, 107, 0, "treeRebalance: %zd", v40, v41, v52);
  return 0xFFFFFFFFLL;
}

void *AAByteRangeCreate()
{
  v0 = malloc(0x20uLL);
  v1 = v0;
  if (v0)
  {
    memset_s(v0, 0x20uLL, 0, 0x20uLL);
    v1[2] = -1;
    v1[3] = -1;
  }

  else
  {
    v2 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeCreate", 551, 107, *v2, "malloc", v3, v4, v6);
    AAByteRangeDestroy(0);
  }

  return v1;
}

void AAByteRangeDestroy(void **a1)
{
  if (a1)
  {
    free(a1[1]);

    free(a1);
  }
}

void *AAByteRangeClone(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  if (!v2)
  {
    v6 = 563;
    goto LABEL_10;
  }

  memset_s(v2, 0x20uLL, 0, 0x20uLL);
  v3[2] = -1;
  v3[3] = -1;
  if ((*(a1 + 16) & 0x8000000000000000) == 0)
  {
    v4 = *a1;
    if (is_mul_ok(*a1, 0x38uLL) && 56 * v4 < 0x2000000001)
    {
      v5 = calloc(v4, 0x38uLL);
      v3[1] = v5;
      if (v5)
      {
        memcpy(v5, *(a1 + 8), 56 * *a1);
        *v3 = *a1;
        *(v3 + 1) = *(a1 + 16);
        return v3;
      }
    }

    else
    {
      *__error() = 12;
      v3[1] = 0;
    }

    v6 = 570;
LABEL_10:
    v7 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeClone", v6, 107, *v7, "malloc", v8, v9, v11);
    AAByteRangeDestroy(v3);
    return 0;
  }

  return v3;
}

uint64_t AAByteRangeAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((treeAdd(a1, -1, (a1 + 16), a2, a3, a6, a7, a8) & 0x80000000) != 0)
    {
      v8 = "addSegment";
      v9 = 595;
      goto LABEL_7;
    }

    return 0;
  }

  v8 = "Invalid segment bounds";
  v9 = 593;
LABEL_7:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeAdd", v9, 107, 0, v8, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSub(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (a2 <= a3)
  {
    if ((a1[2] & 0x8000000000000000) != 0 || (treeSub(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
    {
      return 0;
    }

    v9 = "subSegment";
    v10 = 612;
  }

  else
  {
    v9 = "Invalid segment bounds";
    v10 = 609;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAByteRange.c", "AAByteRangeSub", v10, 107, 0, v9, a7, a8, vars0);
  return 0xFFFFFFFFLL;
}

uint64_t AAByteRangeSizeAtOffset(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 < 0)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 8);
  while (1)
  {
    v6 = (v5 + 56 * v2);
    v7 = v6 + 3;
    if (a2 > *v6)
    {
      break;
    }

LABEL_9:
    v2 = *v7;
    if (*v7 < 0)
    {
      return result;
    }
  }

  v8 = *v7;
  if (v8 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v5 + 56 * v8 + 40);
  }

  v10 = v9 + result;
  v11 = v6[1];
  if (v11 < a2)
  {
    result = v11 - *v6 + v10;
    v7 = v6 + 4;
    goto LABEL_9;
  }

  return a2 - *v6 + v10;
}

uint64_t AAByteRangeOffsetAtSize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = *(a1 + 8);
    do
    {
      v4 = (v3 + 56 * v2);
      if (a2 > v4[5])
      {
        break;
      }

      v2 = v4[3];
      if (v2 < 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v3 + 56 * v2 + 40);
      }

      v6 = __OFSUB__(a2, v5);
      v7 = a2 - v5;
      if (!((v7 < 0) ^ v6 | (v7 == 0)))
      {
        v8 = v4[1] - *v4;
        a2 = v7 - v8;
        if (v7 <= v8)
        {
          return *v4 + v7;
        }

        v2 = v4[4];
      }
    }

    while ((v2 & 0x8000000000000000) == 0);
  }

  return -1;
}

uint64_t AAByteRangeFirst(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  First = findFirst(a1, *(a1 + 16), a2);
  if (First < 0)
  {
    return -1;
  }

  v8 = First;
  v9 = *(a1 + 8);
  v10 = *(v9 + 56 * First);
  while (1)
  {
    result = v8;
    v12 = v9 + 56 * v8;
    v13 = *(v12 + 8);
    v14 = *(v12 + 32);
    v15 = result;
    if (v14 < 0)
    {
      break;
    }

    do
    {
      v8 = v14;
      v14 = *(v9 + 56 * v14 + 24);
    }

    while ((v14 & 0x8000000000000000) == 0);
LABEL_8:
    if (*(v9 + 56 * v8) != v13)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
    v8 = *(v9 + 56 * v15 + 16);
    if (v8 < 0)
    {
      break;
    }

    v16 = *(v9 + 56 * v8 + 32) == v15;
    v15 = *(v9 + 56 * v15 + 16);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  *a3 = v10;
  *a4 = v13;
  return result;
}

uint64_t findFirst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = a2;
  v6 = *(a1 + 8);
  while (1)
  {
    v7 = (v6 + 56 * v4);
    if (*v7 > a3)
    {
      First = findFirst(a1, v7[3], a3);
      if ((First & 0x8000000000000000) == 0)
      {
        break;
      }
    }

    if (v7[1] > a3)
    {
      return v4;
    }

    v4 = v7[4];
    if (v4 < 0)
    {
      return -1;
    }
  }

  return First;
}

uint64_t AAByteRangeNext(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = *(a1 + 8);
  v5 = *(v4 + 56 * a2 + 32);
  if (v5 < 0)
  {
    while (1)
    {
      result = *(v4 + 56 * a2 + 16);
      if (result < 0)
      {
        break;
      }

      v7 = *(v4 + 56 * result + 32) == a2;
      a2 = *(v4 + 56 * a2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      result = v5;
      v5 = *(v4 + 56 * v5 + 24);
    }

    while ((v5 & 0x8000000000000000) == 0);
LABEL_9:
    v8 = (v4 + 56 * result);
    *a3 = *v8;
    *a4 = v8[1];
  }

  return result;
}

uint64_t treeRotateRight(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 56 * v2);
  v5 = v4[3];
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = (v3 + 56 * v5);
  v7 = v6[4];
  v6[4] = v2;
  v6[2] = v4[2];
  v4[2] = v5;
  v4[3] = v7;
  if (v7 < 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = v3 + 56 * v7;
    *(v8 + 16) = v2;
    v9 = *(v8 + 48);
  }

  v11 = v4[4];
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 56 * v11 + 48);
  }

  if (v12 > v9)
  {
    v9 = v12;
  }

  v13 = v9 + 1;
  *(v4 + 12) = v13;
  v14 = *v4;
  if (v7 < 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v3 + 56 * v7 + 40);
  }

  v16 = v4[1] - *v4 + v15;
  if (v11 < 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v3 + 56 * v11 + 40);
  }

  v18 = v16 + v17;
  v4[5] = v18;
  v19 = v6[3];
  if (v19 < 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 56 * v19 + 48);
  }

  if (v13 <= v20)
  {
    v13 = v20;
  }

  *(v6 + 12) = v13 + 1;
  v21 = *v6;
  if (v19 < 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v3 + 56 * v19 + 40);
  }

  result = 0;
  v6[5] = v6[1] - *v6 + v22 + v18;
  *a2 = v5;
  return result;
}

uint64_t treeRotateLeft(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = (v3 + 56 * v2);
  v5 = v4[4];
  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3 + 56 * v5;
  v7 = *(v6 + 24);
  *(v6 + 16) = v4[2];
  *(v6 + 24) = v2;
  v4[2] = v5;
  v4[4] = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    *(v3 + 56 * v7 + 16) = v2;
  }

  v8 = v4[3];
  if (v8 < 0)
  {
    v9 = 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = *(v3 + 56 * v8 + 48);
  if (v7 < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = *(v3 + 56 * v7 + 48);
LABEL_11:
  if (v10 > v9)
  {
    v9 = v10;
  }

  v12 = v9 + 1;
  *(v4 + 12) = v12;
  v13 = *v4;
  if (v8 < 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v3 + 56 * v8 + 40);
  }

  v15 = v4[1] - *v4 + v14;
  if (v7 < 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 56 * v7 + 40);
  }

  v17 = v15 + v16;
  v4[5] = v17;
  v18 = *(v6 + 32);
  if (v18 < 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v3 + 56 * v18 + 48);
  }

  if (v19 > v12)
  {
    v12 = v19;
  }

  *(v6 + 48) = v12 + 1;
  v20 = *(v6 + 8) - *v6 + v17;
  if (v18 < 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v3 + 56 * v18 + 40);
  }

  result = 0;
  *(v6 + 40) = v20 + v21;
  *a2 = v5;
  return result;
}

void *aaArchiveFileOutputStreamOpenAt(int a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, __int16 a7)
{
  v14 = calloc(1uLL, 0x68uLL);
  v15 = malloc(0x80uLL);
  v16 = v15;
  if (v15)
  {
    memset_s(v15, 0x80uLL, 0, 0x80uLL);
    if (v14)
    {
      *v16 = -1;
      if ((a7 & 0x100) == 0)
      {
        if (a1 < 0)
        {
          unlink(a2);
        }

        else
        {
          unlinkat(a1, a2, 0);
        }
      }

      if (a7)
      {
        a6 = 4;
      }

      if (a6 < 1)
      {
        v28 = *v16;
        if ((*v16 & 0x80000000) != 0)
        {
          v46 = -92;
          v28 = a1 < 0 ? open(a2, 1793) : openat(a1, a2, 1793);
          *v16 = v28;
          if (v28 < 0)
          {
            v21 = *__error();
            v46 = a2;
            v24 = "%s";
            v25 = 363;
            goto LABEL_7;
          }
        }
      }

      else if (a1 < 0)
      {
        v46 = -92;
        v28 = open_dprotected_np(a2, 1793, a6, 0);
        *v16 = v28;
        if (v28 < 0)
        {
LABEL_22:
          v21 = *__error();
          v46 = a2;
          v24 = "%s";
          v25 = 354;
          goto LABEL_7;
        }
      }

      else
      {
        v27 = openat(a1, a2, 1793, 420);
        *v16 = v27;
        if (v27 < 0)
        {
          goto LABEL_22;
        }

        v46 = a6;
        if (fcntl(v27, 64) < 0)
        {
          v21 = *__error();
          v24 = "fcntl F_SETPROTECTIONCLASS";
          v25 = 352;
          goto LABEL_7;
        }

        v28 = *v16;
        if ((*v16 & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      if ((a7 & 8) != 0)
      {
        v46 = 1;
        if (fcntl(v28, 48))
        {
          v29 = __error();
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 371, 67, "Warning: F_NOCACHE failed with error %d: %s\n", v30, v31, v32, *v29);
        }
      }

      if ((a7 & 2) != 0)
      {
        v46 = 1;
        if (fcntl(*v16, 68) == -1)
        {
          v33 = __error();
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", 380, 67, "Warning: F_SETSTATICCONTENT failed with error %d: %s\n", v34, v35, v36, *v33);
        }
      }

      if (a3 > 0)
      {
        if (a4 != -1 && (a7 & 4) != 0)
        {
          v37 = AAAFSCStreamOpen(*v16, a3, a4, a5, v17, v18, v19, v20);
          *(v16 + 40) = v37;
          if (!v37)
          {
            v46 = a2;
            v24 = "ParallelCompressionAFSCStreamOpen failed: %s";
            v25 = 389;
            goto LABEL_60;
          }
        }

        if ((a7 & 0x40) != 0 && !*(v16 + 40))
        {
          v38 = fpathconf(*v16, 27);
          if (v38 >= 1)
          {
            *(v16 + 88) = 1;
            if (v38 == 4096)
            {
              *(v16 + 96) = 4096;
            }

            else
            {
              v39 = 0x10000;
              if (v38 < 0x10000)
              {
                v39 = v38;
              }

              v40 = 1024;
              do
              {
                v41 = v40;
                v40 *= 2;
              }

              while (v41 < v39);
              *(v16 + 96) = v41;
            }
          }
        }
      }

      *(v16 + 16) = a3;
      *(v16 + 56) = 0x40000;
      if (*(v16 + 40))
      {
        goto LABEL_58;
      }

      v42 = *(v16 + 72);
      if (v42 >> 18)
      {
        goto LABEL_58;
      }

      do
      {
        v43 = (v42 >> 1) + v42;
        if (((v42 >> 1) & v42) != 0)
        {
          v43 = ((v42 >> 1) & v42) + v42;
        }

        if (v42)
        {
          v42 = v43;
        }

        else
        {
          v42 = 0x4000;
        }
      }

      while (v42 < 0x40000);
      v44 = *(v16 + 80);
      v45 = realloc(v44, v42);
      if (v45)
      {
        *(v16 + 72) = v42;
        *(v16 + 80) = v45;
LABEL_58:
        *v14 = v16;
        v14[1] = afStreamClose;
        v14[7] = afStreamCancel;
        v14[3] = afStreamWrite;
        v14[12] = afStreamCloseWithState;
        return v14;
      }

      free(v44);
      *(v16 + 64) = 0;
      *(v16 + 72) = 0;
      *(v16 + 80) = 0;
      v24 = "alloc blob";
      v25 = 434;
LABEL_60:
      v21 = 0;
      goto LABEL_7;
    }
  }

  v21 = *__error();
  v24 = "malloc";
  v25 = 329;
LABEL_7:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAt", v25, 67, v21, v24, v22, v23, v46);
  afStreamClose(v16);
  free(v14);
  return 0;
}

uint64_t afStreamClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load((result + 48));
    v3 = v2 == 0;
    if (AAByteStreamClose(*(result + 40)) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 197, 67, 0, "closing AFSC stream", v4, v5, v17);
      v3 = 0;
    }

    if (*(v1 + 120) && *(v1 + 104))
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = (*(v1 + 120) + v6);
        v20 = 0;
        v21 = 0;
        v19 = 0;
        v9 = *v8;
        v10 = v8[1] - *v8;
        v20 = v9;
        v21 = v10;
        if (fcntl(*v1, 99, &v19) < 0)
        {
          break;
        }

        ++v7;
        v6 += 16;
        if (v7 >= *(v1 + 104))
        {
          goto LABEL_11;
        }
      }

      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 209, 67, "F_PUNCHHOLE failed", v11, v12, v13, v18);
    }

LABEL_11:
    if ((*(v1 + 8) & 0x10) != 0 && fcntl(*v1, 51) == -1)
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamClose", 218, 67, *v14, "Final FULLFSYNC", v15, v16, 0);
    }

    if ((*v1 & 0x80000000) == 0 && !*(v1 + 4))
    {
      close(*v1);
    }

    free(*(v1 + 80));
    memset_s((v1 + 64), 0x18uLL, 0, 0x18uLL);
    free(*(v1 + 120));
    free(v1);
    return (v3 - 1);
  }

  return result;
}

uint64_t afStreamWrite(uint64_t a1, uint64_t __src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!atomic_load((a1 + 48)))
  {
    v10 = a3;
    v12 = *(a1 + 24);
    if (__CFADD__(a3, v12) || (a3 + v12) > *(a1 + 16))
    {
      v32 = a3 + v12;
      v16 = "received too many bytes %llu/%llu";
      v17 = 275;
      goto LABEL_13;
    }

    v13 = __src;
    v14 = *(a1 + 40);
    if (v14)
    {
      if (!v14[3])
      {
        v9 = -1;
LABEL_46:
        if (v12 != *(a1 + 16) || (flushBuf(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) == 0)
        {
          if ((v9 & 0x8000000000000000) == 0)
          {
            return v9;
          }

          goto LABEL_14;
        }

        v16 = "flush buf";
        v17 = 298;
LABEL_13:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamWrite", v17, 67, 0, v16, a7, a8, v32);
        v9 = -1;
LABEL_14:
        v18 = 0;
        atomic_compare_exchange_strong((a1 + 48), &v18, 1u);
        return v9;
      }

      if (a3)
      {
        v9 = 0;
        while (1)
        {
          v15 = (v14[3])(*v14, v13, v10);
          if (v15 < 1)
          {
            break;
          }

          v13 += v15;
          v9 += v15;
          v10 -= v15;
          if (!v10)
          {
            goto LABEL_41;
          }
        }

        v12 = *(a1 + 24);
        v9 = v15;
        goto LABEL_46;
      }
    }

    else if (a3)
    {
      v9 = 0;
      v20 = (a1 + 64);
      v19 = *(a1 + 64);
      do
      {
        v21 = *(a1 + 56);
        v22 = v21 - v19;
        if (v21 == v19)
        {
          if ((flushBuf(a1, __src, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
          {
            v16 = "flush buf";
            v17 = 284;
            goto LABEL_13;
          }

          v19 = *v20;
        }

        if (v10 < v22)
        {
          v22 = v10;
        }

        v23 = __CFADD__(v19, v22);
        v24 = v19 + v22;
        if (v23 || (v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v25 = *(a1 + 72);
        if (v25 < v24)
        {
          do
          {
            while (!v25)
            {
              v25 = 0x4000;
              v27 = 0x4000;
              if (v24 <= 0x4000)
              {
                goto LABEL_33;
              }
            }

            v26 = v25 >> 1;
            if ((v25 & (v25 >> 1)) != 0)
            {
              v26 = v25 & (v25 >> 1);
            }

            v25 += v26;
          }

          while (v25 < v24);
          v27 = v25;
          if (v25 >= 0x2000000001)
          {
            *__error() = 12;
            goto LABEL_54;
          }

LABEL_33:
          v28 = *(a1 + 80);
          v29 = realloc(v28, v27);
          if (v29)
          {
            *(a1 + 72) = v27;
            *(a1 + 80) = v29;
            goto LABEL_35;
          }

          free(v28);
LABEL_54:
          *v20 = 0;
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
LABEL_55:
          v16 = "append to buf";
          v17 = 286;
          goto LABEL_13;
        }

LABEL_35:
        v30 = *(a1 + 80);
        if (v13)
        {
          memcpy((v30 + *v20), v13, v22);
        }

        else if (v30)
        {
          memset_s((v30 + *v20), v22, 0, v22);
        }

        v19 = *v20 + v22;
        *v20 = v19;
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v13 += v22;
        v9 += v22;
        v10 -= v22;
      }

      while (v10);
LABEL_41:
      v12 = *(a1 + 24);
      if (v9 >= 1)
      {
        v12 += v9;
        *(a1 + 24) = v12;
      }

      goto LABEL_46;
    }

    v9 = 0;
    v12 = *(a1 + 24);
    goto LABEL_46;
  }

  return -1;
}

uint64_t afStreamCloseWithState(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (atomic_load((a1 + 48)))
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v8;
  v36 = v9;
  if ((flushBuf(a1, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 236, 67, 0, "flush buf", v15, v16, v32[0]);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(a1 + 24);
  v32[0] = *(a1 + 8);
  v32[1] = v18;
  v19 = *(a1 + 96);
  v32[2] = *(a1 + 56);
  v32[3] = v19;
  v33 = *(a1 + 40) != 0;
  v34 = *(a1 + 88);
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v20 = 0;
  v21 = v32;
  v22 = 66;
  while (1)
  {
    v23 = (a2[3])(*a2, v21, v22);
    if (v23 < 1)
    {
      break;
    }

    v21 = (v21 + v23);
    v20 += v23;
    v22 -= v23;
    if (!v22)
    {
      if (v20 < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_13;
    }
  }

  if (v23 < 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  if (!a2[3])
  {
    goto LABEL_32;
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = 0;
    v26 = *(a1 + 80);
    while (1)
    {
      v27 = (a2[3])(*a2, v26, v24);
      if (v27 < 1)
      {
        break;
      }

      v26 += v27;
      v25 += v27;
      v24 -= v27;
      if (!v24)
      {
        if (v25 < 0)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }
    }

    if (v27 < 0)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (!a2[3])
    {
      goto LABEL_32;
    }
  }

  v28 = 16 * *(a1 + 104);
  if (v28)
  {
    v29 = 0;
    v30 = *(a1 + 120);
    while (1)
    {
      v31 = (a2[3])(*a2, v30, v28);
      if (v31 < 1)
      {
        break;
      }

      v30 += v31;
      v29 += v31;
      v28 -= v31;
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    v29 = v31;
LABEL_28:
    if (v29 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((AAByteStreamCloseWithState(*(a1 + 40)) & 0x80000000) != 0)
  {
LABEL_32:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "afStreamCloseWithState", 253, 67, 0, "serializing state", v15, v16, v32[0]);
    v17 = 0;
  }

  else if (a3)
  {
    *a3 = *(a1 + 24);
  }

  if ((*a1 & 0x80000000) == 0 && !*(a1 + 4))
  {
    close(*a1);
  }

  free(*(a1 + 80));
  memset_s((a1 + 64), 0x18uLL, 0, 0x18uLL);
  free(*(a1 + 120));
  free(a1);
  if (v17)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *aaArchiveFileOutputStreamOpenAtWithState(int a1, const char *a2, AAByteStream_impl *a3, void *a4)
{
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v8 = calloc(1uLL, 0x68uLL);
  v9 = malloc(0x80uLL);
  v10 = v9;
  if (!v9 || (memset_s(v9, 0x80uLL, 0, 0x80uLL), !v8))
  {
    v14 = *__error();
    v15 = "malloc";
    v16 = 467;
    goto LABEL_27;
  }

  *v10 = -1;
  v55 = -92;
  if (a1 < 0)
  {
    v11 = open(a2, 257);
  }

  else
  {
    v11 = openat(a1, a2, 257);
  }

  *v10 = v11;
  if (v11 < 0)
  {
    v34 = *__error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 475, 67, v34, "%s", v35, v36, a2);
    goto LABEL_28;
  }

  if (!*(a3 + 2))
  {
LABEL_25:
    v15 = "loading state";
    v16 = 478;
    goto LABEL_26;
  }

  v17 = &v56;
  v18 = 66;
  do
  {
    v19 = (*(a3 + 2))(*a3, v17, v18);
    if (v19 < 0)
    {
      goto LABEL_25;
    }

    v17 = (v17 + v19);
    v18 -= v19;
    if (v19)
    {
      v23 = v18 == 0;
    }

    else
    {
      v23 = 1;
    }
  }

  while (!v23);
  v24 = *(&v59 + 1);
  v25 = v59;
  *(v10 + 104) = *(&v59 + 1);
  v26 = (v10 + 104);
  v27 = v57;
  *(v10 + 8) = v56;
  *(v10 + 24) = v27;
  v28 = v58;
  *(v10 + 56) = v58;
  *(v10 + 88) = HIBYTE(v60);
  *(v10 + 96) = v25;
  *(v10 + 112) = v24;
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_81;
  }

  v29 = (v10 + 64);
  v30 = *(v10 + 72);
  if (v30 < v28)
  {
    do
    {
      while (!v30)
      {
        v30 = 0x4000;
        if (v28 <= 0x4000)
        {
          v32 = (v10 + 80);
          v30 = 0x4000;
          goto LABEL_33;
        }
      }

      v31 = v30 >> 1;
      if ((v30 & (v30 >> 1)) != 0)
      {
        v31 = v30 & (v30 >> 1);
      }

      v30 += v31;
    }

    while (v30 < v28);
    v32 = (v10 + 80);
    if (v30 >= 0x2000000001)
    {
      *__error() = 12;
      goto LABEL_80;
    }

LABEL_33:
    v37 = *v32;
    v38 = realloc(*v32, v30);
    if (v38)
    {
      *(v10 + 72) = v30;
      *(v10 + 80) = v38;
      v24 = *(v10 + 112);
      goto LABEL_35;
    }

    free(v37);
LABEL_80:
    *v32 = 0;
    *v29 = 0;
    *(v10 + 72) = 0;
LABEL_81:
    v15 = "alloc buf";
    v16 = 490;
    goto LABEL_26;
  }

LABEL_35:
  if (v24)
  {
    if (v24 >= 0x200000001)
    {
      *__error() = 12;
      *(v10 + 120) = 0;
LABEL_78:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", 492, 67, 0, "alloc holes", v12, v13, 164);
      *v26 = 0;
      *(v10 + 112) = 0;
      goto LABEL_28;
    }

    v39 = calloc(v24, 0x10uLL);
    *(v10 + 120) = v39;
    if (!v39)
    {
      goto LABEL_78;
    }
  }

  v40 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
LABEL_64:
    if (!*(a3 + 2))
    {
      goto LABEL_86;
    }

    v50 = 16 * *v26;
    if (v50)
    {
      v51 = *(v10 + 120);
      do
      {
        v52 = (*(a3 + 2))(*a3, v51, v50);
        if (v52 < 0)
        {
          goto LABEL_86;
        }

        v51 += v52;
        v50 -= v52;
        if (v52)
        {
          v53 = v50 == 0;
        }

        else
        {
          v53 = 1;
        }
      }

      while (!v53);
    }

    if (v60)
    {
      v54 = AAAFSCStreamOpenWithState(*v10, a3, 0, v20, v21, v22, v12, v13);
      *(v10 + 40) = v54;
      if (!v54)
      {
        v15 = "loading AFSC stream state";
        v16 = 500;
        goto LABEL_26;
      }
    }

    if (a4)
    {
      *a4 = *(v10 + 24);
    }

    *v8 = v10;
    v8[1] = afStreamClose;
    v8[7] = afStreamCancel;
    v8[3] = afStreamWrite;
    v8[12] = afStreamCloseWithState;
    return v8;
  }

  v42 = *(v10 + 64);
  v41 = *(v10 + 72);
  while (1)
  {
    if (v42 != v41)
    {
      goto LABEL_52;
    }

    v43 = v41 + 0x40000;
    if ((v41 + 0x40000) < 0)
    {
      goto LABEL_86;
    }

    if (v41 <= 0xFFFFFFFFFFFBFFFFLL)
    {
      break;
    }

    v42 = v41;
LABEL_52:
    v45 = v41;
LABEL_56:
    if (v45 - v42 >= v40)
    {
      v48 = v40;
    }

    else
    {
      v48 = v45 - v42;
    }

    v49 = AAByteStreamRead(a3, (*(v10 + 80) + v42), v48);
    if (v49 < 0)
    {
      goto LABEL_86;
    }

    if (!v49)
    {
      goto LABEL_64;
    }

    v42 = *v29 + v49;
    if (__CFADD__(*v29, v49))
    {
      goto LABEL_86;
    }

    v41 = *(v10 + 72);
    if (v42 > v41)
    {
      goto LABEL_86;
    }

    *v29 = v42;
    v40 -= v49;
    if (!v40)
    {
      goto LABEL_64;
    }
  }

  do
  {
    while (!v41)
    {
      v41 = 0x4000;
      v45 = 0x4000;
      if (v43 <= 0x4000)
      {
        goto LABEL_54;
      }
    }

    v44 = v41 >> 1;
    if ((v41 & (v41 >> 1)) != 0)
    {
      v44 = v41 & (v41 >> 1);
    }

    v41 += v44;
  }

  while (v41 < v43);
  v45 = v41;
  if (v41 >= 0x2000000001)
  {
    *__error() = 12;
    goto LABEL_85;
  }

LABEL_54:
  v46 = *(v10 + 80);
  v47 = realloc(v46, v45);
  if (v47)
  {
    *(v10 + 72) = v45;
    *(v10 + 80) = v47;
    v42 = *(v10 + 64);
    goto LABEL_56;
  }

  free(v46);
LABEL_85:
  *v29 = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
LABEL_86:
  v15 = "loading state";
  v16 = 496;
LABEL_26:
  v14 = 0;
LABEL_27:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamOpenAtWithState", v16, 67, v14, v15, v12, v13, v55);
LABEL_28:
  afStreamClose(v10);
  free(v8);
  return 0;
}

uint64_t aaArchiveFileOutputStreamCloseAndReturnFD(uint64_t (**a1)(uint64_t result), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a1[1] == afStreamClose)
  {
    v8 = **a1;
    *(*a1 + 1) = 1;
    if ((AAByteStreamClose(a1) & 0x80000000) == 0)
    {
      return v8;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 531, 67, 0, "closing stream", v10, v11, v12);
    if ((v8 & 0x80000000) == 0)
    {
      close(v8);
    }
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "aaArchiveFileOutputStreamCloseAndReturnFD", 524, 67, 0, "invalid stream", a7, a8, v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t flushBuf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 64);
  if (!v8)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 88);
  if (v10 + v8 < *(a1 + 16))
  {
    if (v11)
    {
      v12 = -*(a1 + 96);
    }

    else
    {
      v12 = -16384;
    }

    v8 &= v12;
  }

  v13 = *(a1 + 80);
  if (!v11)
  {
    if (!v8)
    {
      return 0;
    }

    v17 = v8;
    while (1)
    {
      v18 = pwrite(*a1, v13, v17, v10);
      if (v18 < 0)
      {
        break;
      }

      v13 += v18;
      v10 = *(a1 + 32) + v18;
      *(a1 + 32) = v10;
      v17 -= v18;
      if (!v17)
      {
        goto LABEL_64;
      }
    }

    v16 = *__error();
    v14 = "write";
    v15 = 170;
    goto LABEL_67;
  }

  if (((*(a1 + 96) - 1) & v10) != 0)
  {
    v14 = "buffer offset not aligned to holes";
    v15 = 114;
LABEL_10:
    v16 = 0;
LABEL_67:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", v15, 67, v16, v14, a7, a8, v49);
    return 0xFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v19 = v8;
  while (2)
  {
    v20 = *(a1 + 96);
    if (v20 <= v19)
    {
      v21 = 0;
      v22 = v13;
      v23 = *(a1 + 96);
      do
      {
        v24 = v23;
        if (v20)
        {
          v25 = 0;
          do
          {
            v26 = *&v22[v25];
            v25 += 8;
            if (v26)
            {
              v27 = 1;
            }

            else
            {
              v27 = v25 >= v20;
            }
          }

          while (!v27);
          if (v26)
          {
            break;
          }
        }

        v23 = v20 + v24;
        v22 += v20;
        v21 = v24;
      }

      while (v20 + v24 <= v19);
    }

    else
    {
      v21 = 0;
    }

    v28 = &v13[v21];
    v29 = v21;
    do
    {
      v30 = v29;
      v29 += v20;
      if (v29 > v19)
      {
        v30 = v19;
        if (v21)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

      if (!v20)
      {
        v30 = v21;
        if (v21)
        {
          goto LABEL_41;
        }

        goto LABEL_50;
      }

      v31 = 0;
      do
      {
        v32 = *&v28[v31];
        v31 += 8;
        if (v32)
        {
          v33 = 1;
        }

        else
        {
          v33 = v31 >= v20;
        }
      }

      while (!v33);
      v28 += v20;
    }

    while (v32);
    if (!v21)
    {
LABEL_50:
      v41 = v10;
      goto LABEL_56;
    }

LABEL_41:
    v34 = *(a1 + 104);
    if (!v34 || (v35 = *(a1 + 120) + 16 * v34, v37 = *(v35 - 8), v36 = (v35 - 8), v37 != v10))
    {
      if (v34 == *(a1 + 112))
      {
        v38 = 2 * v34;
        if (v38 <= 0x10)
        {
          v38 = 16;
        }

        *(a1 + 112) = v38;
        if (16 * v38 >= 0x2000000001)
        {
          *__error() = 12;
        }

        else
        {
          v39 = *(a1 + 120);
          v40 = realloc(v39, 16 * v38);
          if (v40)
          {
            *(a1 + 120) = v40;
            v34 = *(a1 + 104);
            v10 = *(a1 + 32);
            goto LABEL_54;
          }

          free(v39);
        }

        *(a1 + 120) = 0;
        v46 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AAArchiveFileStream.c", "flushBuf", 140, 67, *v46, "malloc", v47, v48, v49);
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        return 0xFFFFFFFFLL;
      }

      v40 = *(a1 + 120);
LABEL_54:
      *(a1 + 104) = v34 + 1;
      v42 = &v40[16 * v34];
      *v42 = v10;
      v36 = v42 + 1;
    }

    v41 = v10;
    v10 += v21;
    *v36 = v10;
LABEL_56:
    if (v10 == *(a1 + 16))
    {
      if (!v21 || v21 != v30)
      {
        v14 = "invalid state";
        v15 = 151;
        goto LABEL_10;
      }

      v21 -= *(a1 + 96);
    }

    if (v30 > v21)
    {
      if (pwrite(*a1, &v13[v21], v30 - v21, v21 + v41) != v30 - v21)
      {
        v14 = "writing data";
        v15 = 159;
        goto LABEL_10;
      }

      v41 = *(a1 + 32);
    }

    v13 += v30;
    v10 = v41 + v30;
    *(a1 + 32) = v41 + v30;
    v19 -= v30;
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_64:
  v43 = *(a1 + 64);
  v44 = v43 - v8;
  if (v43 < v8)
  {
    return 0;
  }

  if (v43 != v8)
  {
    memmove(*(a1 + 80), (*(a1 + 80) + v8), v43 - v8);
  }

  result = 0;
  *(a1 + 64) = v44;
  return result;
}

uint64_t fullReplacementBXPatch5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x29EDCA608];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v12 = *(a1 + 32);
  if (a5 >= 1)
  {
    fwrite("Full replacement patch\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  if (v12 + 60 <= a2)
  {
    if (v12 + 60 < a2)
    {
      fwrite("Extra bytes in patch (ignored)", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    v14 = malloc(0x20000uLL);
    if (v14)
    {
      v17 = ILowMemoryDecoderStreamCreateWithBuffer(a1 + 60, v12, 0x20000uLL);
      if (v17)
      {
        v18 = OSHA1StreamCreate(a3, 0, a4);
        if (v18)
        {
          v19 = v18;
          v20 = *(a1 + 16);
          if (v20)
          {
            v21 = 0;
            while (1)
            {
              v22 = v20 - v21;
              if (v22 >= 0x20000)
              {
                v23 = 0x20000;
              }

              else
              {
                v23 = v22;
              }

              if (ILowMemoryDecoderStreamRead(v17, v14, v23) != v23)
              {
                v26 = "reading from payload stream";
                v27 = 62;
                goto LABEL_32;
              }

              if (OSHA1StreamWrite(v19, v14, v23) != v23)
              {
                break;
              }

              v21 += v23;
              v20 = *(a1 + 16);
              if (v21 >= v20)
              {
                goto LABEL_18;
              }
            }

            v26 = "writing to digest stream";
            v27 = 64;
          }

          else
          {
LABEL_18:
            OSHA1StreamDestroy(v19, &v33);
            if (v33 == *(a1 + 40) && v34 == *(a1 + 48) && v35 == *(a1 + 56))
            {
              v13 = 0;
LABEL_34:
              free(v14);
              ILowMemoryDecoderStreamDestroy(v17);
              goto LABEL_35;
            }

            v26 = "Invalid output digest after patch application";
            v27 = 71;
          }
        }

        else
        {
          v26 = "Digest stream init";
          v27 = 52;
        }
      }

      else
      {
        v26 = "Payload stream init";
        v27 = 51;
      }

LABEL_32:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", v27, 42, 0, v26, v15, v16, v33);
    }

    else
    {
      v28 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 50, 42, *v28, "malloc", v29, v30, v33);
      v17 = 0;
    }

    v13 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "fullReplacementBXPatch5", 45, 42, 0, "Missing bytes in patch", a7, a8, v33);
  v13 = 0xFFFFFFFFLL;
LABEL_35:
  v31 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t BXDiff5GetPatchInfo(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0xFFFFFFFFLL;
  if (a2 >= 0x3C && *a1 == 0x3035464649445842)
  {
    result = 0;
    *a3 = *(a1 + 16);
    v5 = *(a1 + 12) & 1;
    *(a3 + 8) = *(a1 + 8) == 0;
    *(a3 + 12) = v5;
  }

  return result;
}

uint64_t BXPatch5StreamWithFlags(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t), uint64_t a7, uint64_t a8)
{
  v154 = *MEMORY[0x29EDCA608];
  if (a5 <= 0x3B)
  {
    v8 = "Invalid patch size";
    v9 = 264;
    goto LABEL_50;
  }

  if (*a4 != 0x3035464649445842)
  {
    v8 = "Invalid patch header";
    v9 = 265;
    goto LABEL_50;
  }

  v12 = *(a4 + 8);
  v13 = 28 * v12 + 60;
  if (v13 > a5)
  {
    v8 = "Invalid patch size";
    v9 = 269;
    goto LABEL_50;
  }

  v16 = a8 & 1;
  v17 = *(a4 + 24);
  v18 = __CFADD__(v13, v17);
  v19 = v13 + v17;
  if (v18)
  {
    v19 = -1;
  }

  if (v12)
  {
    v23 = *(a4 + 8);
    v24 = (a4 + 60);
    do
    {
      v25 = *v24;
      v24 = (v24 + 28);
      v18 = __CFADD__(v19, v25);
      v19 += v25;
      if (v18)
      {
        v19 = -1;
      }

      --v23;
    }

    while (v23);
    v26 = *(a4 + 32);
    v18 = __CFADD__(v19, v26);
    v27 = v19 + v26;
    if (v18)
    {
      v27 = -1;
    }

    if (v27 <= a5)
    {
      v148 = (a4 + 60);
      *md = 0;
      v152 = 0;
      v153 = 0;
      memset(&c, 0, sizeof(c));
      v28 = malloc(0x40000uLL);
      if (!v28)
      {
        v43 = *__error();
        v44 = "malloc";
        v45 = 156;
LABEL_48:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "getStreamSHA1Digest", v45, 42, v43, v44, v32, v33, v128);
        free(v28);
        goto LABEL_49;
      }

      v146 = v16;
      CC_SHA1_Deprecated_Init(&c);
      v29 = 0;
      if (a3)
      {
        while (1)
        {
          v30 = v29 + 0x40000 <= a3 ? 0x40000 : a3 - v29;
          v31 = a1(a2, v28, v30, v29);
          if (v31 <= 0)
          {
            break;
          }

          v34 = v31;
          CC_SHA1_Deprecated_Update(&c, v28, v31);
          v29 += v34;
          if (v29 >= a3)
          {
            goto LABEL_27;
          }
        }

        v44 = "inProc read";
        v45 = 165;
        v43 = 0;
        goto LABEL_48;
      }

LABEL_27:
      CC_SHA1_Deprecated_Final(md, &c);
      free(v28);
      if (v29 != a3)
      {
LABEL_49:
        v8 = "Input digest failed";
        v9 = 285;
        goto LABEL_50;
      }

      if (v146)
      {
        v47 = MEMORY[0x29EDCA610];
        fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a4 + 8));
        v36 = a4 + 40;
        if (*md != *(a4 + 40) || v152 != *(a4 + 48) || v153 != *(a4 + 56))
        {
LABEL_59:
          v50 = *(a4 + 8);
          if (!v50)
          {
LABEL_69:
            v8 = "Input doesn't match any of the expected patch inputs";
            v9 = 310;
            goto LABEL_50;
          }

          v51 = 0;
          v52 = *(a4 + 8);
          v53 = a4 + 68;
          while (1)
          {
            v54 = *md == *v53 && v152 == *(v53 + 8);
            if (v54 && v153 == *(v53 + 16))
            {
              break;
            }

            ++v51;
            v53 += 28;
            if (v50 == v51)
            {
              goto LABEL_69;
            }
          }

          v143 = v51;
          if (v146)
          {
            fprintf(*MEMORY[0x29EDCA610], "Patch matching entry %u\n", v51);
            v51 = v143;
            v52 = *(a4 + 8);
            LODWORD(v50) = *(a4 + 8);
          }

          v132 = v36;
          v56 = v148;
          v139 = v148 + 28 * v52;
          v141 = *(a4 + 24);
          v57 = v139 + v141;
          v58 = 0;
          if (v50)
          {
            v59 = v51;
            do
            {
              if (!v59)
              {
                v58 = v57;
              }

              v60 = *v56;
              v56 = (v56 + 28);
              v57 += v60;
              --v59;
              --v52;
            }

            while (v52);
          }

          v135 = *(a4 + 32);
          v137 = *(v53 - 8);
          if (v57 + v135 - a4 != a5)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 331, 42, "Warning: extra bytes in patch (ignored)\n", v35, a7, a8, v128);
            LODWORD(v50) = *(a4 + 8);
          }

          v134 = *(a4 + 16);
          v61 = 8 * (v50 + 2);
          v147 = malloc(0x20000uLL);
          v62 = malloc(0x20000uLL);
          v133 = v61;
          v63 = v61;
          v64 = v147;
          v149 = malloc(v63);
          enterThreadErrorContext(v149, v65, v66, v67, v68, v69, v70, v71, v128);
          v145 = v62;
          if (v62 && v147 && v149)
          {
            v142 = ILowMemoryDecoderStreamCreateWithBuffer(v139, v141, 0x20000uLL);
            if (v142)
            {
              v76 = ILowMemoryDecoderStreamCreateWithBuffer(v58, v137, 0x20000uLL);
              if (v76)
              {
                v140 = ILowMemoryDecoderStreamCreateWithBuffer(v57, v135, 0x20000uLL);
                if (v140)
                {
                  v77 = OSHA1StreamCreate(a6, 0, a7);
                  if (v77)
                  {
                    v136 = v76;
                    v131 = v77;
                    v138 = OBufferedStreamCreate(OSHA1StreamWrite, OSHA1StreamAbort, v77, 0x20000uLL);
                    if (!v138)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 356, 42, 0, "OBufferedStreamCreate", v85, v86, v129);
                      v110 = 0;
                      v111 = -1;
                      v64 = v147;
                      v115 = v140;
                      v116 = v142;
LABEL_158:
                      v109 = v131;
LABEL_159:
                      free(v149);
                      free(v64);
                      free(v145);
                      OBufferedStreamDestroy(v110, v121, v122, v123, v124, v125, v126, v127);
                      OSHA1StreamDestroy(v109, md);
                      ILowMemoryDecoderStreamDestroy(v116);
                      ILowMemoryDecoderStreamDestroy(v76);
                      ILowMemoryDecoderStreamDestroy(v115);
                      LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                      if (result >= 0)
                      {
                        result = v111;
                      }

                      else
                      {
                        result = result;
                      }

                      goto LABEL_51;
                    }

                    if (v134)
                    {
                      v87 = 0;
                      v88 = 0;
                      v144 = v143 + 2;
                      while (1)
                      {
                        if (ILowMemoryDecoderStreamRead(v142, v149, v133) != v133)
                        {
                          v119 = "reading from control stream";
                          v120 = 362;
                          goto LABEL_156;
                        }

                        v89 = v149[1];
                        if (*v149 >= 0)
                        {
                          v90 = *v149;
                        }

                        else
                        {
                          v90 = 0x8000000000000000 - *v149;
                        }

                        if (v89 >= 0)
                        {
                          v91 = v149[1];
                        }

                        else
                        {
                          v91 = 0x8000000000000000 - v89;
                        }

                        v92 = v149[v144];
                        if (v92 < 0)
                        {
                          v92 = 0x8000000000000000 - v92;
                        }

                        v130 = v92;
                        if (v87 < 0 || v90 + v87 > a3)
                        {
                          v119 = "Invalid in segment in patch";
                          v120 = 369;
                          goto LABEL_156;
                        }

                        if (v90 + v88 + v91 > *(a4 + 16))
                        {
                          v119 = "Invalid out segment in patch";
                          v120 = 370;
                          goto LABEL_156;
                        }

                        if (v90)
                        {
                          break;
                        }

LABEL_116:
                        if (v91)
                        {
                          v99 = 0;
                          v100 = v91;
                          while (1)
                          {
                            v101 = v100 - v99;
                            if (v101 >= 0x20000)
                            {
                              v102 = 0x20000;
                            }

                            else
                            {
                              v102 = v101;
                            }

                            v64 = v147;
                            if (ILowMemoryDecoderStreamRead(v140, v147, v102) != v102)
                            {
                              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 405, 42, 0, "reading from archive stream", v103, v104, v129);
                              v111 = -1;
                              goto LABEL_157;
                            }

                            if (OBufferedStreamWrite(v138, v147, v102) != v102)
                            {
                              break;
                            }

                            v99 += v102;
                            v88 += v102;
                            v100 = v91;
                            if (v99 >= v91)
                            {
                              goto LABEL_124;
                            }
                          }

                          v119 = "writing to digest stream";
                          v120 = 407;
                          goto LABEL_156;
                        }

LABEL_124:
                        v87 += v130;
                        if (v88 >= v134)
                        {
                          goto LABEL_125;
                        }
                      }

                      v93 = 0;
                      while (1)
                      {
                        if (v90 - v93 >= 0x20000)
                        {
                          v94 = 0x20000;
                        }

                        else
                        {
                          v94 = v90 - v93;
                        }

                        if (ILowMemoryDecoderStreamRead(v136, v147, v94) != v94)
                        {
                          v119 = "reading from diff stream";
                          v120 = 379;
                          goto LABEL_156;
                        }

                        if (a1(a2, v145, v94, v87) != v94)
                        {
                          v119 = "reading from input stream";
                          v120 = 381;
                          goto LABEL_156;
                        }

                        if (v90 != v93)
                        {
                          if (v94 <= 1)
                          {
                            v95 = 1;
                          }

                          else
                          {
                            v95 = v94;
                          }

                          v96 = v145;
                          v97 = v147;
                          do
                          {
                            v98 = *v96++;
                            *v97++ += v98;
                            --v95;
                          }

                          while (v95);
                        }

                        if (OBufferedStreamWrite(v138, v147, v94) != v94)
                        {
                          break;
                        }

                        v93 += v94;
                        v87 += v94;
                        v88 += v94;
                        if (v93 >= v90)
                        {
                          goto LABEL_116;
                        }
                      }

                      v119 = "writing to digest stream";
                      v120 = 390;
LABEL_156:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v120, 42, 0, v119, v85, v86, v129);
                      v111 = -1;
                      v64 = v147;
LABEL_157:
                      v115 = v140;
                      v116 = v142;
                      v76 = v136;
                      v110 = v138;
                      goto LABEL_158;
                    }

LABEL_125:
                    OBufferedStreamDestroy(v138, v80, v81, v82, v83, v84, v85, v86);
                    OSHA1StreamDestroy(v131, md);
                    if (*md == *v132 && v152 == *(v132 + 8) && v153 == *(v132 + 16))
                    {
                      v111 = 0;
                      v109 = 0;
                      v110 = 0;
                    }

                    else
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 421, 42, 0, "Invalid output digest after patch application", v105, v106, v129);
                      v109 = 0;
                      v110 = 0;
                      v111 = -1;
                    }

                    v64 = v147;
                    v116 = v142;
                    v76 = v136;
                  }

                  else
                  {
                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", 355, 42, 0, "Digest stream init", v78, v79, v129);
                    v109 = 0;
                    v110 = 0;
                    v111 = -1;
                    v116 = v142;
                  }

                  v115 = v140;
                  goto LABEL_159;
                }

                v117 = "Archive stream init";
                v118 = 354;
              }

              else
              {
                v117 = "Diff stream init";
                v118 = 353;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v118, 42, 0, v117, v74, v75, v129);
              v109 = 0;
              v110 = 0;
              v115 = 0;
              v111 = -1;
              v116 = v142;
              goto LABEL_159;
            }

            v113 = "Control stream init";
            v114 = 352;
            v112 = 0;
          }

          else
          {
            v112 = *__error();
            v113 = "malloc";
            v114 = 351;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v114, 42, v112, v113, v72, v73, v129);
          v109 = 0;
          v110 = 0;
          v115 = 0;
          v76 = 0;
          v116 = 0;
          v111 = -1;
          goto LABEL_159;
        }

        fwrite("No-op patch matching, writing input\n", 0x24uLL, 1uLL, *v47);
      }

      else
      {
        v36 = a4 + 40;
        if (*md != *(a4 + 40) || v152 != *(a4 + 48) || v153 != *(a4 + 56))
        {
          goto LABEL_59;
        }
      }

      if ((copyStream(a1, a2, a3, a6, a7) & 0x80000000) == 0)
      {
        result = 0;
        goto LABEL_51;
      }

      v8 = "Output copy failed\n";
      v9 = 293;
LABEL_50:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5StreamWithFlags", v9, 42, 0, v8, a7, a8, v128);
      result = 0xFFFFFFFFLL;
LABEL_51:
      v46 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_42:
    v8 = "Invalid patch size";
    v9 = 278;
    goto LABEL_50;
  }

  v39 = *(a4 + 32);
  v18 = __CFADD__(v19, v39);
  v40 = v19 + v39;
  if (v18)
  {
    v40 = -1;
  }

  if (v40 > a5)
  {
    goto LABEL_42;
  }

  v41 = *MEMORY[0x29EDCA608];

  return fullReplacementBXPatch5(a4, a5, a6, a7, a8 & 1, a6, a7, a8);
}

uint64_t BXPatch5FileWithFlags(const char *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = a1;
  st_size = 0;
  memset(&v22, 0, sizeof(v22));
  v12 = open(a1, 0);
  v23 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v18 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 235, 42, *v18, "open: %s", v19, v20, v11);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v13 = v12;
    if (fstat(v12, &v22))
    {
      v14 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5FileWithFlags", 236, 42, *v14, "fstat: %s", v15, v16, v11);
      v17 = 0xFFFFFFFFLL;
LABEL_6:
      close(v13);
      return v17;
    }

    st_size = v22.st_size;
    v17 = BXPatch5StreamWithFlags(BXPatch5WithFlagsFileStreamPRead, &v23, v22.st_size, a2, a3, a4, a5, a6);
    v13 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  return v17;
}

ssize_t BXPatch5WithFlagsFileStreamPRead(uint64_t a1, void *a2, size_t a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  result = -1;
  if (!__CFADD__(a4, a3) && a4 + a3 <= *(a1 + 8))
  {
    return pread(*a1, a2, a3, a4);
  }

  return result;
}

uint64_t copyStream(uint64_t (*a1)(uint64_t, void *, uint64_t, unint64_t), uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t), uint64_t a5)
{
  v10 = malloc(0x40000uLL);
  if (!v10)
  {
    v18 = *__error();
    v19 = "malloc";
    v20 = 188;
LABEL_16:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "copyStream", v20, 42, v18, v19, v14, v15, v22);
    v17 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = 0;
  if (a3)
  {
    while (1)
    {
      if (v11 + 0x40000 <= a3)
      {
        v12 = 0x40000;
      }

      else
      {
        v12 = a3 - v11;
      }

      v13 = a1(a2, v10, v12, v11);
      if (v13 <= 0)
      {
        v19 = "inProc read";
        v20 = 196;
        goto LABEL_15;
      }

      v16 = a4(a5, v10, v13);
      if (v16 <= 0)
      {
        break;
      }

      v11 += v16;
      if (v11 >= a3)
      {
        goto LABEL_9;
      }
    }

    v19 = "outProc write";
    v20 = 198;
LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

LABEL_9:
  if (v11 == a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

LABEL_17:
  free(v10);
  return v17;
}

uint64_t BXPatch5InPlace(const char *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v155 = *MEMORY[0x29EDCA608];
  if (a3 <= 0x3B)
  {
    v8 = "Invalid patch size";
    v9 = 441;
LABEL_29:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v9, 42, 0, v8, a7, a8, v128);
    result = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if (*a2 != 0x3035464649445842)
  {
    v8 = "Invalid patch header";
    v9 = 442;
    goto LABEL_29;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    v8 = "Patch can't be applied in-place";
    v9 = 445;
    goto LABEL_29;
  }

  if (a4 >= 1)
  {
    fprintf(*MEMORY[0x29EDCA610], "Input variants in patch: %u\n", *(a2 + 8));
  }

  v152 = 0;
  v153 = 0;
  v154 = 0;
  FileSHA1Digest = getFileSHA1Digest(a1, &v152);
  if (FileSHA1Digest)
  {
    v8 = "computing file digest";
    v9 = 450;
    goto LABEL_29;
  }

  if (v152 != *(a2 + 40) || v153 != *(a2 + 48) || v154 != *(a2 + 56))
  {
    v22 = *(a2 + 8);
    if (!v22)
    {
LABEL_28:
      v8 = "Input doesn't match any of the expected patch inputs (in-place)";
      v9 = 467;
      goto LABEL_29;
    }

    v23 = 0;
    v24 = (a2 + 60);
    v25 = *(a2 + 8);
    v26 = a2 + 68;
    while (1)
    {
      v27 = v152 == *v26 && v153 == *(v26 + 8);
      if (v27 && v154 == *(v26 + 16))
      {
        break;
      }

      ++v23;
      v26 += 28;
      if (v22 == v23)
      {
        goto LABEL_28;
      }
    }

    if (a4 >= 1)
    {
      FileSHA1Digest = fprintf(*MEMORY[0x29EDCA610], "In-place patch matching entry %u\n", v23);
      v25 = *(a2 + 8);
      LODWORD(v22) = *(a2 + 8);
    }

    v150 = *(a2 + 24);
    v146 = v24 + 28 * v25;
    v31 = v146 + v150;
    v32 = 0;
    if (v22)
    {
      v33 = v23;
      do
      {
        if (!v33)
        {
          v32 = v31;
        }

        v34 = *v24;
        v24 = (v24 + 28);
        v31 += v34;
        --v33;
        --v25;
      }

      while (v25);
    }

    v35 = *(v26 - 8);
    v132 = *(a2 + 32);
    if (v31 + v132 - a2 != a3)
    {
      FileSHA1Digest = pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 489, 42, "Warning: extra bytes in patch (ignored)\n", v19, a7, a8, v128);
      LODWORD(v22) = *(a2 + 8);
    }

    enterThreadErrorContext(FileSHA1Digest, v15, v16, v17, v18, v19, a7, a8, v128);
    v138 = malloc(0x1000uLL);
    if (v138)
    {
      v36 = malloc(0x1000uLL);
      if (v36)
      {
        v134 = v36;
        v139 = (v22 + 2);
        v140 = 8 * v139;
        v137 = malloc(8 * v139);
        v37 = ILowMemoryDecoderStreamCreateWithBuffer(v146, v150, 0x1000uLL);
        if (v37)
        {
          v130 = v35;
          v142 = v37;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = v137;
          v45 = 8 * (v22 + 2);
          while (1)
          {
            v147 = v40;
            v151 = v42;
            if (v42 == v41)
            {
              v46 = v41 + (v41 >> 1);
              if (v41 >> 5 <= 0xC34)
              {
                v46 = 2 * v41;
              }

              if (!v41)
              {
                v46 = 2000;
              }

              v143 = v46;
              v47 = reallocf(v43, v45 * v46);
              v45 = 8 * (v22 + 2);
              v44 = v137;
              v43 = v47;
              if (!v47)
              {
                v88 = v137;
                v89 = *__error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 527, 42, v89, "malloc", v90, v91, v129);
                goto LABEL_92;
              }
            }

            else
            {
              v143 = v41;
            }

            v48 = ILowMemoryDecoderStreamRead(v142, v44, v45);
            if (!v48)
            {
              break;
            }

            v51 = v44;
            v52 = v147;
            v53 = (v22 + 2);
            if (v48 != v45)
            {
              v88 = v44;
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 533, 42, 0, "reading from control stream S=%lld", v49, v50, v48);
LABEL_92:
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v61 = v134;
LABEL_94:
              v65 = v142;
              goto LABEL_95;
            }

            do
            {
              v55 = *v51++;
              v54 = v55;
              v56 = 0x8000000000000000 - v55;
              if (v55 < 0)
              {
                v54 = v56;
              }

              *&v43[v52] = v54;
              v52 += 8;
              --v53;
            }

            while (v53);
            v42 = v151 + 1;
            v40 = v147 + v45;
            v41 = v143;
          }

          if (a4 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "%zu controls in patch (%zu B allocated)\n", v151, v140 * v143);
          }

          v66 = PagedFileCreate(a1, *(a2 + 16), 0x2800000uLL, a4);
          if (!v66)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v61 = v134;
            v88 = v137;
            goto LABEL_94;
          }

          v67 = v66;
          if (v151)
          {
            v68 = 0;
            v69 = v43;
            v70 = v151;
            do
            {
              v135 = *v69;
              v144 = v68;
              v148 = v69[(v23 + 2)];
              PagedFileRetainIn(v67, v68, *v69, v94, v95, v96, v97, v98);
              v68 = v144 + v135 + v148;
              v69 = (v69 + v140);
              --v70;
            }

            while (v70);
          }

          PagedFileReleaseAllIn(v67, v92, v93, v94, v95, v96, v97, v98);
          v62 = v67;
          if (a4 > 1)
          {
            PagedFileDump(v67, "Input retained");
          }

          v65 = v142;
          v141 = ILowMemoryDecoderStreamCreateWithBuffer(v32, v130, 0x1000uLL);
          if (v141)
          {
            v145 = v62;
            if (v151)
            {
              v73 = 0;
              v149 = 0;
              v74 = 0;
              v75 = v23 + 2;
              v76 = v134;
              v131 = v23 + 2;
              while (1)
              {
                v77 = &v43[8 * v73 * v139];
                v78 = *v77;
                v79 = v77[1];
                v136 = v77[v75];
                if (a4 >= 3)
                {
                  fprintf(*MEMORY[0x29EDCA610], "DIFF STREAM: I=%zu OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu IDELTA=%lld\n", v73, v74, v149, v78, v79, v136);
                  PagedFileDump(v145, "Before applying control");
                  v76 = v134;
                }

                v133 = v79;
                if (v78)
                {
                  break;
                }

LABEL_89:
                v149 += v136;
                v74 += v133;
                ++v73;
                v75 = v131;
                if (v73 == v151)
                {
                  goto LABEL_105;
                }
              }

              while (1)
              {
                if (v78 >= 0x1000)
                {
                  v80 = 4096;
                }

                else
                {
                  v80 = v78;
                }

                if (ILowMemoryDecoderStreamRead(v141, v76, v80) != v80)
                {
                  v122 = "reading from diff stream";
                  v123 = 584;
                  goto LABEL_130;
                }

                if (PagedFileReadAndReleaseIn(v145, v149, v80, v138, v81, v82, v83, v84))
                {
                  v122 = "reading from input stream";
                  v123 = 587;
                  goto LABEL_130;
                }

                for (i = 0; i != v80; ++i)
                {
                  v134[i] += v138[i];
                }

                if (PagedFileRetainAndWriteOut(v145, v74, v80, v134, v85, v86, v83, v84))
                {
                  break;
                }

                v149 += v80;
                v74 += v80;
                v78 -= v80;
                v76 = v134;
                if (!v78)
                {
                  goto LABEL_89;
                }
              }

              v122 = "writing output";
              v123 = 593;
LABEL_130:
              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v123, 42, 0, v122, v83, v84, v129);
              v63 = 0;
            }

            else
            {
              v149 = 0;
LABEL_105:
              v62 = v145;
              if (a4 >= 2)
              {
                PagedFileDump(v145, "Diff stream applied");
              }

              if (!PagedFileHasNoIn(v145))
              {
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 608, 42, 0, "some input bytes are still mapped after diff expansion", v101, v102, v129);
                v63 = 0;
                v61 = v134;
                v88 = v137;
                v65 = v142;
LABEL_139:
                v64 = v141;
                goto LABEL_95;
              }

              v63 = ILowMemoryDecoderStreamCreateWithBuffer(v31, v132, 0x1000uLL);
              if (v63)
              {
                if (v151)
                {
                  v105 = 0;
                  v106 = 0;
                  while (1)
                  {
                    v107 = &v43[8 * v105 * v139];
                    v109 = *v107;
                    v108 = *(v107 + 1);
                    if (a4 >= 3)
                    {
                      fprintf(*MEMORY[0x29EDCA610], "ARCHIVE STREAM: OPOS=%llu IPOS=%llu NDIFF=%llu NARCHIVE=%llu\n", v106, v149, *v107, v108);
                    }

                    v106 += v109;
                    if (v108)
                    {
                      break;
                    }

LABEL_121:
                    if (++v105 == v151)
                    {
                      goto LABEL_122;
                    }
                  }

                  v61 = v134;
                  while (1)
                  {
                    if (v108 >= 0x1000)
                    {
                      v110 = 4096;
                    }

                    else
                    {
                      v110 = v108;
                    }

                    if (ILowMemoryDecoderStreamRead(v63, v61, v110) != v110)
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 630, 42, 0, "reading from archive stream", v113, v114, v129);
                      goto LABEL_138;
                    }

                    if (PagedFileRetainAndWriteOut(v145, v106, v110, v61, v111, v112, v113, v114))
                    {
                      break;
                    }

                    v106 += v110;
                    v108 -= v110;
                    v61 = v134;
                    if (!v108)
                    {
                      goto LABEL_121;
                    }
                  }

                  v124 = "writing output";
                  v125 = 633;
                }

                else
                {
LABEL_122:
                  if (a4 >= 2)
                  {
                    PagedFileDump(v145, "Archive stream applied");
                  }

                  if (PagedFileHasAllOut(v145))
                  {
                    PagedFileDestroy(v145, v115, v116, v117, v118, v119, v103, v104);
                    free(v43);
                    free(v137);
                    free(v138);
                    free(v134);
                    ILowMemoryDecoderStreamDestroy(v142);
                    ILowMemoryDecoderStreamDestroy(v141);
                    ILowMemoryDecoderStreamDestroy(v63);
                    if (getFileSHA1Digest(a1, &v152))
                    {
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 658, 42, 0, "computing file digest", v120, v121, v129);
                      v99 = 0;
                    }

                    else
                    {
                      v99 = 1;
                    }

                    if (v152 == *(a2 + 40) && v153 == *(a2 + 48) && v154 == *(a2 + 56))
                    {
                      goto LABEL_97;
                    }

                    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 659, 42, 0, "Invalid output digest", v120, v121, v129);
LABEL_96:
                    v99 = 0;
LABEL_97:
                    LODWORD(result) = leaveThreadErrorContext(0, 0, 0);
                    if (v99)
                    {
                      v100 = 0;
                    }

                    else
                    {
                      v100 = -1;
                    }

                    if (result >= 0)
                    {
                      result = v100;
                    }

                    else
                    {
                      result = result;
                    }

                    goto LABEL_30;
                  }

                  v124 = "some output bytes are missing or referenced more than once after archive expansion";
                  v125 = 643;
                }
              }

              else
              {
                v124 = "Archive stream init";
                v125 = 611;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v125, 42, 0, v124, v103, v104, v129);
            }

            v61 = v134;
LABEL_138:
            v88 = v137;
            v65 = v142;
            v62 = v145;
            goto LABEL_139;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 563, 42, 0, "Diff stream init", v71, v72, v129);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", 517, 42, 0, "Control stream init", v38, v39, v129);
          v43 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
        }

        v61 = v134;
        v88 = v137;
LABEL_95:
        PagedFileDestroy(v62, v92, v93, v94, v95, v96, v97, v98);
        free(v43);
        free(v88);
        free(v138);
        free(v61);
        ILowMemoryDecoderStreamDestroy(v65);
        ILowMemoryDecoderStreamDestroy(v64);
        ILowMemoryDecoderStreamDestroy(v63);
        goto LABEL_96;
      }

      v57 = *__error();
      v60 = 513;
    }

    else
    {
      v57 = *__error();
      v60 = 511;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelPatch/BXPatch5.c", "BXPatch5InPlace", v60, 42, v57, "malloc", v58, v59, v129);
    v43 = 0;
    v88 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    goto LABEL_95;
  }

  if (a4 >= 1)
  {
    fwrite("No-op patch matching, do nothing\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  result = 0;
LABEL_30:
  v30 = *MEMORY[0x29EDCA608];
  return result;
}

size_t PCompressLZVNEncode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_encode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

size_t PCompressLZVNDecode(uint8_t *a1, size_t a2, const uint8_t *a3, size_t a4)
{
  result = compression_decode_buffer(a1, a2, a3, a4, 0, 0x900u);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t AEADecryptInPlace(AAByteStream_impl *a1, AEAContext_impl *a2, uint64_t a3, uint64_t (*a4)(void, float), AAFlagSet a5, int a6)
{
  v11 = aaInPlaceStreamOpen(a1);
  v14 = v11;
  if (v11)
  {
    v17 = AEADecryptionRandomAccessInputStreamOpen(v11, a2, 0xFFFFFFFFFFFFFFFFLL, a5, a6);
    if (v17)
    {
      FieldUInt = AEAContextGetFieldUInt(a2, 0xDu);
      if ((FieldUInt & 0x8000000000000000) != 0)
      {
        v20 = "bad output size";
        v21 = 80;
      }

      else
      {
        if ((processWithProgress(v17, v14, 0, FieldUInt, a3, a4) & 0x80000000) == 0)
        {
          v19 = 1;
          goto LABEL_12;
        }

        v20 = "processWithProgress";
        v21 = 83;
      }
    }

    else
    {
      v20 = "AEADecryptionRandomAccessInputStreamOpen";
      v21 = 76;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", v21, 127, 0, v20, v15, v16, v25);
    AAByteStreamCancel(v14);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 72, 127, 0, "aaInPlaceStreamOpen", v12, v13, v25);
    v17 = 0;
  }

  v19 = 0;
LABEL_12:
  if (AAByteStreamClose(v17) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEADecryptInPlace", 87, 127, 0, "AAByteStreamClose", v22, v23, v25);
    v19 = 0;
  }

  AAByteStreamClose(v14);
  if (v19)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t processWithProgress(AAByteStream_impl *a1, AAByteStream_impl *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void, float))
{
  v8 = a4;
  if (a3 && a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc(0x40000uLL);
    if (v12)
    {
      if (a3)
      {
        v15 = a3;
        v44 = a5;
        v45 = v8;
LABEL_7:
        v16 = v15;
        if (v15 >= 0x40000)
        {
          v15 = 0x40000;
        }

        if (*(a1 + 2))
        {
          v17 = a6;
          v18 = 0;
          v19 = v12;
          v20 = v15;
          while (1)
          {
            v21 = (*(a1 + 2))(*a1, v19, v20);
            if (v21 < 0)
            {
              break;
            }

            if (v21)
            {
              v19 += v21;
              v18 += v21;
              v20 -= v21;
              if (v20)
              {
                continue;
              }
            }

            if (v18 <= 0)
            {
              break;
            }

            if (*(a2 + 3))
            {
              v22 = 0;
              v23 = v12;
              v24 = v15;
              while (1)
              {
                v25 = (*(a2 + 3))(*a2, v23, v24);
                if (v25 < 1)
                {
                  break;
                }

                v23 += v25;
                v22 += v25;
                v24 -= v25;
                if (!v24)
                {
                  if (v22 <= 0)
                  {
                    break;
                  }

                  v15 = v16 - v15;
                  a6 = v17;
                  a5 = v44;
                  if (a6 && (a6(v44, ((a3 - v15) * 100.0) / a3) & 0x80000000) != 0)
                  {
                    v40 = "progress_proc";
                    v41 = 33;
                    goto LABEL_48;
                  }

                  v8 = v45;
                  if (v15)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_23;
                }
              }
            }

            v40 = "aaByteStreamWriteExpected";
            v41 = 31;
            goto LABEL_48;
          }
        }

        v40 = "aaByteStreamReadExpected";
        v41 = 30;
      }

      else
      {
LABEL_23:
        if (!v8)
        {
LABEL_42:
          free(v12);
          return 0;
        }

        v26 = v8;
        v27 = v8;
        v43 = a6;
        v46 = v8;
LABEL_25:
        if (v27 >= 0x40000)
        {
          v28 = 0x40000;
        }

        else
        {
          v28 = v27;
        }

        if (*(a1 + 4))
        {
          v29 = 0;
          v27 -= v28;
          v30 = v12;
          v31 = v27;
          v32 = v28;
          while (1)
          {
            v33 = (*(a1 + 4))(*a1, v30, v32, v31);
            if (v33 < 0)
            {
              break;
            }

            if (v33)
            {
              v30 += v33;
              v29 += v33;
              v31 += v33;
              v32 -= v33;
              if (v32)
              {
                continue;
              }
            }

            if (v29 <= 0)
            {
              break;
            }

            if (*(a2 + 5))
            {
              v34 = 0;
              v35 = v12;
              v36 = v27;
              while (1)
              {
                v37 = (*(a2 + 5))(*a2, v35, v28, v36);
                if (v37 < 1)
                {
                  break;
                }

                v35 += v37;
                v34 += v37;
                v36 += v37;
                v28 -= v37;
                if (!v28)
                {
                  if (v34 <= 0)
                  {
                    break;
                  }

                  if (v43 && (v43(a5, ((v46 - v27) * 100.0) / v26) & 0x80000000) != 0)
                  {
                    v40 = "progress_proc";
                    v41 = 43;
                    goto LABEL_48;
                  }

                  if (v27)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_42;
                }
              }
            }

            v40 = "aaByteStreamPWriteExpected";
            v41 = 42;
            goto LABEL_48;
          }
        }

        v40 = "aaByteStreamPReadExpected";
        v41 = 41;
      }

LABEL_48:
      v39 = 0;
    }

    else
    {
      v39 = *__error();
      v40 = "malloc";
      v41 = 24;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "processWithProgress", v41, 127, v39, v40, v13, v14, v42);
  }

  free(v12);
  AAByteStreamCancel(a1);
  AAByteStreamCancel(a2);
  return 0xFFFFFFFFLL;
}

uint64_t AEAEncryptInPlace(AAByteStream_impl *a1, AEAContext_impl *a2, uint64_t a3, uint64_t (*a4)(void, float), unint64_t a5, int a6)
{
  v12 = AAByteStreamSeek(a1, 0, 2);
  if (v12 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 106, 127, 0, "AAByteStreamSeek", v13, v14, v30);
    v19 = 0;
LABEL_11:
    v23 = 0;
LABEL_16:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v15 = v12;
  v16 = aaInPlaceStreamOpen(a1);
  v19 = v16;
  if (!v16)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 110, 127, 0, "aaInPlaceStreamOpen", v17, v18, v30);
    goto LABEL_11;
  }

  v20 = 3;
  if (a5 < 3)
  {
    v20 = a5;
  }

  v23 = AEAEncryptionOutputStreamOpen(v16, a2, v20 << 62, a6);
  if (!v23)
  {
    v27 = "AEAEncryptionOutputStreamOpen";
    v28 = 114;
LABEL_14:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", v28, 127, 0, v27, v21, v22, v30);
LABEL_15:
    AAByteStreamCancel(v19);
    goto LABEL_16;
  }

  if ((processWithProgress(v19, v23, v15, 0, a3, a4) & 0x80000000) != 0)
  {
    v27 = "processWithProgress";
    v28 = 117;
    goto LABEL_14;
  }

  if (AEAEncryptionOutputStreamCloseAndUpdateContext(v23, a2) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAInplace.c", "AEAEncryptInPlace", 121, 127, 0, "AEAEncryptionOutputStreamCloseAndUpdateContext", v24, v25, v30);
    v23 = 0;
    goto LABEL_15;
  }

  v23 = 0;
  v26 = 0;
LABEL_17:
  AAByteStreamClose(v23);
  AAByteStreamClose(v19);
  return v26;
}

uint64_t AEAKeychainGenerateItem(int a1, unint64_t a2, unint64_t a3, void *bytes, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = (a2 + 7) >> 3;
      if (v10 <= a3)
      {
        result = CCRandomGenerateBytes(bytes, (a2 + 7) >> 3);
        if (!result)
        {
          *a5 = v10;
          return result;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes", v15, v16, v26);
        v11 = "RNG failed";
        v12 = 43;
      }

      else
      {
        v11 = "Insufficient buffer capacity";
        v12 = 42;
      }
    }

    else
    {
      v11 = "Invalid item type";
      v12 = 78;
    }
  }

  else
  {
    v13 = vcvtps_u32_f32(a2 / 16.61);
    if (6 * v13 <= a3)
    {
      bytesa = 0;
      if (!v13)
      {
LABEL_24:
        result = 0;
        *(bytes + v13) = 0;
        *a5 = v13;
        return result;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 5 * v13;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      while (1)
      {
        if (0xCCCCCCCCCCCCCCCDLL * v18 <= 0x3333333333333333 && v19 != 0)
        {
          *(bytes + v19++) = 45;
        }

        if (!v20)
        {
          break;
        }

LABEL_23:
        v13 = v19 + 1;
        *(bytes + v19) = (v17 % 0xA) | 0x30;
        bytesa = v17 / 0xA;
        --v20;
        ++v18;
        v17 /= 0xAu;
        ++v19;
        if (v18 == v22)
        {
          goto LABEL_24;
        }
      }

      while (!CCRandomGenerateBytes(&bytesa, 4uLL))
      {
        if (bytesa <= 0xEE6B27FF)
        {
          v17 = bytesa % 0x3B9ACA00;
          v20 = 9;
          goto LABEL_23;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "RNG", 24, 96, 0, "generate random bytes", v24, v25, v26);
      v11 = "RNG failed";
      v12 = 64;
    }

    else
    {
      v11 = "Insufficient buffer capacity";
      v12 = 52;
    }
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainGenerateItem", v12, 96, 0, v11, a7, a8, v26);
  return 0xFFFFFFFFLL;
}

uint64_t AEAKeychainStoreItem(unsigned __int8 *a1, unint64_t a2, int a3, const UInt8 *a4, CFIndex a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a5)
  {
    v22 = "Invalid args";
    v23 = 178;
LABEL_10:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", v23, 96, 0, v22, a7, a8, v26);
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    v22 = "create attributes";
    v23 = 182;
    goto LABEL_10;
  }

  v11 = Attributes;
  v12 = CFDataCreate(*MEMORY[0x29EDB8ED8], a4, a5);
  if (!v12)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 186, 96, 0, "create item data", v13, v14, v26);
    CFRelease(v11);
    return 0xFFFFFFFFLL;
  }

  v15 = v12;
  CFDictionaryAddValue(v11, *MEMORY[0x29EDBBCD0], v12);
  v18 = SecAccessControlCreateWithFlags(0, *MEMORY[0x29EDBBB90], 1uLL, 0);
  if (!v18)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 191, 96, 0, "create access control", v16, v17, v26);
    goto LABEL_15;
  }

  CFDictionaryAddValue(v11, *MEMORY[0x29EDBBB70], v18);
  v19 = SecItemAdd(v11, 0);
  if (v19)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainStoreItem", 196, 96, 0, "adding item to the keychain: %d", v20, v21, v19);
LABEL_15:
    v24 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  v24 = 0;
LABEL_17:
  CFRelease(v11);
  CFRelease(v15);
  if (v18)
  {
    CFRelease(v18);
  }

  return v24;
}

__CFDictionary *aeaKeychainCreateAttributes(unsigned __int8 *a1, unint64_t a2, int a3)
{
  v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "kSecUseDataProtectionKeychain");
  if (!v6)
  {
    v11 = "Keychain support not available";
    v12 = 115;
LABEL_12:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", v12, 96, 0, v11, v7, v8, v34);
    return 0;
  }

  v9 = *v6;
  if (!a3)
  {
    v10 = "pAEA";
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v10 = "kAEA";
LABEL_7:
    v13 = *MEMORY[0x29EDB8ED8];
    v14 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, v10);
    if (v14)
    {
      v15 = v14;
      if (((a2 >> 36) & 0x7FFFFFF) != 0)
      {
        *__error() = 12;
LABEL_20:
        v29 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 132, 96, *v29, "malloc", v30, v31, v34);
        v32 = v15;
LABEL_21:
        CFRelease(v32);
        return 0;
      }

      v16 = 2 * a2;
      v17 = malloc((2 * a2) | 1);
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (a2)
      {
        v19 = v17 + 1;
        do
        {
          v20 = *a1++;
          *(v19 - 1) = aeaKeychainCreateAttributes_hex[v20 >> 4];
          *v19 = aeaKeychainCreateAttributes_hex[v20 & 0xF];
          v19 += 2;
          --a2;
        }

        while (a2);
      }

      v17[v16] = 0;
      v23 = CFStringCreateWithCString(v13, v17, 0x600u);
      if (v23)
      {
        Mutable = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        v27 = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC40]);
          CFDictionaryAddValue(v27, v9, *MEMORY[0x29EDB8F00]);
          CFDictionaryAddValue(v27, *MEMORY[0x29EDBBC28], v15);
          CFDictionaryAddValue(v27, *MEMORY[0x29EDBBC10], @"AppleEncryptedArchive");
          CFDictionaryAddValue(v27, *MEMORY[0x29EDBBBA0], v23);
          v28 = 0;
LABEL_27:
          free(v18);
          CFRelease(v15);
          if (v23)
          {
            CFRelease(v23);
            if ((v28 & 1) == 0)
            {
              return v27;
            }
          }

          else if (!v28)
          {
            return v27;
          }

          if (!v27)
          {
            return v27;
          }

          v32 = v27;
          goto LABEL_21;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 144, 96, 0, "create attributes", v25, v26, v34);
      }

      else
      {
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 141, 96, 0, "create attributes", v21, v22, v34);
        v27 = 0;
      }

      v28 = 1;
      goto LABEL_27;
    }

    v11 = "create attributes";
    v12 = 128;
    goto LABEL_12;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "aeaKeychainCreateAttributes", 124, 96, 0, "Invalid item type %d", v7, v8, a3);
  return 0;
}

uint64_t AEAKeychainLoadItem(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, void *a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (!a2)
  {
    v17 = "Invalid args";
    v18 = 219;
LABEL_7:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", v18, 96, 0, v17, a7, a8, v28);
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    v17 = "create attributes";
    v18 = 223;
    goto LABEL_7;
  }

  v12 = Attributes;
  CFDictionaryAddValue(Attributes, *MEMORY[0x29EDBBCB0], *MEMORY[0x29EDB8F00]);
  v13 = SecItemCopyMatching(v12, &result);
  if (v13 == -25300)
  {
    v16 = 0;
    goto LABEL_18;
  }

  if (!a5 || v13)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", 231, 96, 0, "searching item in keychain: %d", v14, v15, v13);
  }

  else
  {
    v19 = CFGetTypeID(result);
    if (v19 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(result);
      if (Length - 1 < a4)
      {
        v23 = Length;
        BytePtr = CFDataGetBytePtr(result);
        memcpy(a5, BytePtr, v23);
        *a6 = v23;
        v16 = 1;
        goto LABEL_18;
      }

      v25 = "Invalid data size";
      v26 = 236;
    }

    else
    {
      v25 = "Invalid return type";
      v26 = 234;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainLoadItem", v26, 96, 0, v25, v20, v21, v28);
  }

  v16 = 0xFFFFFFFFLL;
LABEL_18:
  CFRelease(v12);
  if (result)
  {
    CFRelease(result);
  }

  return v16;
}

uint64_t AEAKeychainHasItem(unsigned __int8 *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (!a2)
  {
    v14 = "Invalid args";
    v15 = 258;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", v15, 96, 0, v14, a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    v14 = "create attributes";
    v15 = 262;
    goto LABEL_8;
  }

  v9 = Attributes;
  CFDictionaryAddValue(Attributes, *MEMORY[0x29EDBBCA8], *MEMORY[0x29EDB8F00]);
  v10 = SecItemCopyMatching(v9, &result);
  if (v10 == -25300)
  {
    v13 = 0;
  }

  else if (v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainHasItem", 270, 96, 0, "searching item in keychain: %d", v11, v12, v10);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 1;
  }

  CFRelease(v9);
  if (result)
  {
    CFRelease(result);
  }

  return v13;
}

uint64_t AEAKeychainRemoveItem(unsigned __int8 *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v14 = "Invalid args";
    v15 = 289;
LABEL_8:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", v15, 96, 0, v14, a7, a8, v17);
    return 0xFFFFFFFFLL;
  }

  Attributes = aeaKeychainCreateAttributes(a1, a2, a3);
  if (!Attributes)
  {
    v14 = "create attributes";
    v15 = 293;
    goto LABEL_8;
  }

  v9 = Attributes;
  v10 = SecItemDelete(Attributes);
  if (v10 == -25300)
  {
    v13 = 0;
  }

  else if (v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAKeychain.c", "AEAKeychainRemoveItem", 298, 96, 0, "removing item from keychain: %d", v11, v12, v10);
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = 1;
  }

  CFRelease(v9);
  return v13;
}

uint64_t PCompressZLIB5Encode(uint64_t a1, unint64_t a2, const uint8_t *a3, size_t a4)
{
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (!v4)
  {
    return -1;
  }

  *a1 = 24184;
  v7 = compression_encode_buffer((a1 + 2), v5, a3, a4, 0, COMPRESSION_ZLIB);
  if (v7)
  {
    return v7 + 2;
  }

  else
  {
    return -1;
  }
}

size_t PCompressZLIBDecode(uint8_t *a1, size_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >= 2;
  v5 = a4 - 2;
  if (!v4)
  {
    return -1;
  }

  result = compression_decode_buffer(a1, a2, (a3 + 2), v5, 0, COMPRESSION_ZLIB);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t ParallelCompressionEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v8 = *(a1 + 4);
  LODWORD(v15) = *a1;
  v14 = *(a1 + 16);
  v12[1] = 0;
  v13 = v8;
  v12[0] = *(a1 + 8);
  v9 = *(a1 + 40);
  v11[0] = *(a1 + 24);
  v11[1] = v9;
  v11[2] = *(a1 + 56);
  return PCompressFilter(v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t ParallelCompressionDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = 0u;
  v13 = 0u;
  v8 = *(a1 + 4);
  DWORD2(v13) = *a1;
  DWORD1(v12) = 1;
  DWORD2(v12) = v8;
  v9 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v9;
  v11[2] = *(a1 + 40);
  return PCompressFilter(&v12, v11, 0, a4, a5, a6, a7, a8);
}

uint64_t (*PCompressGetEncoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1DE8F20[a1];
  }
}

uint64_t (*PCompressGetDecoderFilter(unsigned int a1))()
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2A1DE8F58[a1];
  }
}

uint64_t RawImagePatchInternal(uint64_t a1, AAByteStream_impl *a2)
{
  v5 = *(a1 + 40);
  DefaultNThreads = *(a1 + 44);
  if (!DefaultNThreads)
  {
    DefaultNThreads = getDefaultNThreads();
    *(a1 + 44) = DefaultNThreads;
  }

  if (DefaultNThreads >= 3)
  {
    *(a1 + 44) = 2;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = *(a1 + 24);
  }

  v6 = a2;
  if (!a2)
  {
    v18 = AAFileStreamOpenWithPath(*(a1 + 32), 0, 0);
    v6 = v18;
    if (!v18)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 542, 135, 0, "AAFileStreamOpenWithPath", v19, v20, v262);
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v28 = 0;
      v27 = 0;
      goto LABEL_30;
    }

    if ((v5 & 1) != 0 && (io_set_nocache(v18) & 0x80000000) != 0)
    {
      pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 543, 135, "io_set_nocache %s", v21, v22, v23, *(a1 + 32));
    }
  }

  v7 = malloc(0x2EuLL);
  v10 = v7;
  if (!v7)
  {
    v17 = *__error();
    v15 = "aaMalloc";
    v16 = 108;
    goto LABEL_24;
  }

  if (!*(v6 + 2))
  {
    goto LABEL_17;
  }

  v11 = 0;
  v12 = 46;
  v13 = v7;
  do
  {
    v14 = (*(v6 + 2))(*v6, v13, v12);
    if (v14 < 0)
    {
      goto LABEL_17;
    }

    if (!v14)
    {
      break;
    }

    v13 = (v13 + v14);
    v11 += v14;
    v12 -= v14;
  }

  while (v12);
  if (v11 != 46)
  {
LABEL_17:
    v15 = "aaByteStreamReadExpected";
    v16 = 110;
    goto LABEL_18;
  }

  if (*v10 != 0x3031464649444952 || !*(v10 + 4) || !*(v10 + 18) || (v35 = *(v10 + 30), v35 < 0x2F) || v35 >= *(v10 + 38))
  {
    v15 = "bad header";
    v16 = 118;
LABEL_18:
    v17 = 0;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v16, 135, v17, v15, v8, v9, v262);
LABEL_25:
    free(v10);
    v24 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 548, 135, *v24, "patch_read_header", v25, v26, v263);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  if (v35 >= 0x2000000001)
  {
    *__error() = 12;
LABEL_50:
    v45 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", 122, 135, *v45, "aaReallocf", v46, v47, v262);
    v10 = 0;
    goto LABEL_25;
  }

  v36 = realloc(v10, v35);
  if (!v36)
  {
    free(v10);
    goto LABEL_50;
  }

  v30 = v36;
  v39 = *(v36 + 30) - 46;
  v40 = v36 + 46;
  if (*(v6 + 2))
  {
    if (*(v36 + 30) == 46)
    {
      goto LABEL_54;
    }

    v41 = 0;
    v42 = v36 + 46;
    v43 = *(v36 + 30) - 46;
    while (1)
    {
      v44 = (*(v6 + 2))(*v6, v42, v43);
      if (v44 < 0)
      {
        break;
      }

      if (v44)
      {
        v42 += v44;
        v41 += v44;
        v43 -= v44;
        if (v43)
        {
          continue;
        }
      }

      goto LABEL_53;
    }

    v41 = v44;
  }

  else
  {
    v41 = -1;
  }

LABEL_53:
  if (v39 != v41)
  {
    v55 = "aaByteStreamReadExpected";
    v56 = 124;
LABEL_62:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_header", v56, 135, 0, v55, v37, v38, v262);
    v10 = v30;
    goto LABEL_25;
  }

LABEL_54:
  v48 = *(v30 + 38);
  v49 = *(v30 + 4);
  v50 = v49 + 1;
  v51 = 46;
  do
  {
    v52 = *&v30[v51];
    if (v48 >= v52)
    {
      v55 = "bad header";
      v56 = 130;
      goto LABEL_62;
    }

    v51 += 8;
    v48 = v52;
    --v50;
  }

  while (v50);
  v303 = v40;
  if (*(a1 + 48) >= 1)
  {
    v53 = MEMORY[0x29EDCA610];
    if (v49 == 1)
    {
      v54 = "*full replacement*";
    }

    else
    {
      v54 = *(a1 + 16);
    }

    v57 = "(stream based)";
    if (*(a1 + 32))
    {
      v57 = *(a1 + 32);
    }

    v58 = *(a1 + 40);
    if (v58)
    {
      v59 = "no";
    }

    else
    {
      v59 = "yes";
    }

    if ((v58 & 2) != 0)
    {
      v60 = "yes";
    }

    else
    {
      v60 = "no";
    }

    fprintf(*MEMORY[0x29EDCA610], "ImagePatch\n  Input:        %s\n  Output:       %s\n  Patch:        %s\n  CryptexCache: %s\n  StaticContent: %s\n", v54, *(a1 + 24), v57, v59, v60);
    if (*(a1 + 48) >= 2)
    {
      fprintf(*v53, "  - Variants:   %d\n  - Flags:      %llx\n  - # controls: %llu\n  - Patch size: %llu bytes\n    - Metadata: %llu bytes\n    - Controls: %llu bytes\n", *(v30 + 4), *(v30 + 10), *(v30 + 18), *&v40[8 * *(v30 + 4)], *(v30 + 38) - *(v30 + 30), *(v30 + 46) - *(v30 + 38));
      if (*(v30 + 4))
      {
        v61 = 0;
        v62 = v30 + 54;
        do
        {
          if (v61)
          {
            v63 = "Diff";
          }

          else
          {
            v63 = "Literal";
          }

          ++v61;
          fprintf(*v53, "    - %s stream: %llu bytes\n", v63, *v62 - *(v62 - 1));
          ++v62;
        }

        while (v61 < *(v30 + 4));
      }
    }
  }

  v64 = aaIntervalInputStreamOpen(v6, *(v30 + 30), *(v30 + 38));
  v67 = v64;
  if (!v64)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 187, 135, 0, "aaIntervalInputStreamOpen", v65, v66, v262);
    v29 = 0;
    v72 = 0;
    goto LABEL_95;
  }

  v68 = *(a1 + 48);
  if (v68 <= 3)
  {
    v69 = v68 << 62;
  }

  else
  {
    v69 = 0xC000000000000000;
  }

  v72 = AADecompressionInputStreamOpen(v64, v69, *(a1 + 44));
  if (!v72)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", 189, 135, 0, "AADecompressionInputStreamOpen", v70, v71, v262);
    v29 = 0;
    goto LABEL_95;
  }

  v29 = calloc(*(v30 + 4), 8uLL);
  if (!v29)
  {
    v78 = "aaCalloc";
    v79 = 193;
    goto LABEL_94;
  }

  if (*(v30 + 4))
  {
    v75 = 0;
    while (1)
    {
      v76 = rawimg_create_with_stream(v72, v75 == 0);
      v29[v75] = v76;
      if (!v76)
      {
        break;
      }

      if (++v75 >= *(v30 + 4))
      {
        goto LABEL_89;
      }
    }

    v78 = "rawimg_create_with_stream";
    v79 = 199;
LABEL_94:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_read_variants", v79, 135, 0, v78, v73, v74, v262);
LABEL_95:
    free(v29);
    v77 = 1;
  }

  else
  {
LABEL_89:
    v77 = 0;
  }

  v80 = AAByteStreamClose(v72);
  v81 = AAByteStreamClose(v67);
  if (!v29 || (v77 & 1) != 0 || v81 < 0 || v80 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 552, 135, 0, "patch_read_variants", v82, v83, v262);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_26;
  }

  v84 = calloc(*(v30 + 4), 0x20uLL);
  v31 = v84;
  if (!v84)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 556, 135, 0, "aaCalloc", v85, v86, v262);
    v28 = 0;
    goto LABEL_381;
  }

  if (*(v30 + 4))
  {
    v87 = 0;
    v88 = v84;
    do
    {
      v89 = *(v29[v87] + 2104);
      *v88 = *(v29[v87] + 2088);
      v88[1] = v89;
      v88 += 2;
      ++v87;
      v90 = *(v30 + 4);
    }

    while (v87 < v90);
    *(*v29 + 2048) = *(a1 + 24);
    if (v90 == 1)
    {
      v28 = 0;
      v281 = 0;
      v287 = 0;
      s = 0;
      v299 = 0;
      compressed_stream = 0;
      v290 = 0;
      v91 = *v29;
      v92 = *(a1 + 40);
      v93 = v92 & 1;
      goto LABEL_106;
    }
  }

  else
  {
    *(*v29 + 2048) = *(a1 + 24);
  }

  v109 = malloc(0x2000uLL);
  v28 = v109;
  if (!v109)
  {
    v124 = "aaMalloc";
    v125 = 568;
    goto LABEL_380;
  }

  saveThreadErrorContext(v109);
  v112 = *(v30 + 4);
  if (!*(v30 + 4))
  {
LABEL_138:
    restoreThreadErrorContext(v28);
    goto LABEL_139;
  }

  v113 = &v31[4 * v112 - 4];
  v114 = (v29 - 1);
  while (1)
  {
    v305 = v112;
    v115 = v112 - 1;
    *(*&v114[8 * v112] + 2048) = *(a1 + 16);
    if (!rawimg_get_digests(*&v114[8 * v112], 4u, 1, 1))
    {
      v116 = *&v114[8 * v305];
      v117 = v116[261];
      v118 = v116[262];
      v119 = v116[263];
      v120 = v116[264];
      v121 = *v113 == v117 && v113[1] == v118;
      v122 = v121 && v113[2] == v119;
      if (v122 && v113[3] == v120)
      {
        break;
      }
    }

    v113 -= 4;
    v112 = v115;
    if (!v115)
    {
      goto LABEL_138;
    }
  }

  restoreThreadErrorContext(v28);
  v281 = v115;
  if ((v115 & 0x80000000) != 0)
  {
LABEL_139:
    v124 = "ImagePatch: No variant found";
    v125 = 586;
    goto LABEL_380;
  }

  if (v305 != 1)
  {
    v296 = v115 & 0x7FFFFFFF;
    v193 = &v31[4 * v296];
    v194 = *v193;
    v195 = v193[1];
    v197 = v193[2];
    v196 = v193[3];
    if (*v31 != v194 || v31[1] != v195 || v31[2] != v197 || v31[3] != v196)
    {
      rawimg_show(v29[v296], 0, *(a1 + 48));
      v92 = *(a1 + 40);
      v93 = v92 & 1;
      v297 = *v29;
      v300 = v29[v296];
      v201 = v300[256];
      v294 = strcmp(v201, *(*v29 + 2048));
      if (v294)
      {
        if (*(v30 + 4) > 1u)
        {
          v287 = AAFileStreamOpenWithPath(v201, 0, 0);
          if (v287)
          {
            if ((v92 & 1) == 0)
            {
              goto LABEL_283;
            }

            if ((io_set_nocache(v287) & 0x80000000) != 0)
            {
              pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 284, 135, "io_set_nocache %s", v207, v208, v209, v300[256]);
            }

            v210 = *(a1 + 48);
            v211 = v210 <= 3 ? v210 << 62 : 0xC000000000000000;
            v93 = 1;
            v287 = aaCacheStreamOpen(v287, 0x1000000uLL, 14, 1, v211);
            if (v287)
            {
LABEL_283:
              v301 = 0;
              goto LABEL_337;
            }

            v252 = "aaCacheStreamOpen";
            v253 = 286;
          }

          else
          {
            v252 = "AAFileStreamOpenWithPath";
            v253 = 281;
          }

LABEL_359:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v253, 135, 0, v252, v205, v206, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          v301 = 0;
          s = 0;
          v287 = 0;
LABEL_360:
          v288 = 0;
          if (v287 == v301)
          {
            v256 = 0;
          }

          else
          {
            v256 = v287;
          }

          goto LABEL_363;
        }

        v287 = 0;
        s = 0;
        v299 = 0;
        compressed_stream = 0;
        v290 = 0;
LABEL_319:
        v91 = v297;
LABEL_106:
        v297 = v91;
        v301 = AAFileStreamOpenWithPath(*(v91 + 2048), 1538, 0x1A4u);
        if (!v301)
        {
          v107 = "AAFileStreamOpenWithPath";
          v108 = 305;
          goto LABEL_142;
        }

        if ((v92 & 2) != 0 && (io_hint_static_content(v301) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 308, 135, "ImagePatch: Static content hint failed.", v96, v97, v98, v262);
        }

        if ((io_preallocate(v301, *(v297 + 2120)) & 0x80000000) != 0)
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 311, 135, "ImagePatch: Preallocation failed.", v99, v100, v101, v262);
        }

        if (v93)
        {
          if ((io_set_nocache(v301) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 316, 135, "io_set_nocache %s", v102, v103, v104, *(v297 + 2048));
          }

          v105 = *(a1 + 48);
          if (v105 <= 3)
          {
            v106 = v105 << 62;
          }

          else
          {
            v106 = 0xC000000000000000;
          }

          v280 = 1;
          v301 = aaCacheStreamOpen(v301, 0x100000uLL, 14, 1, v106);
          if (!v301)
          {
            v107 = "aaCacheStreamOpen";
            v108 = 318;
LABEL_142:
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v108, 135, 0, v107, v94, v95, v262);
            v291 = 0;
            v293 = 0;
            v295 = 0;
            v304 = 0;
            v306 = 0;
            v301 = 0;
            goto LABEL_360;
          }
        }

        else
        {
          v280 = 1;
        }

LABEL_144:
        v126 = aaSegmentStreamOpen(v301, v297);
LABEL_145:
        v304 = v126;
        if (v126)
        {
          v306 = aaForkOutputStreamOpen(v126, v297);
          if (!v306)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 324, 135, 0, "aaForkOutputStreamOpen", v129, v130, v262);
            v291 = 0;
            v293 = 0;
            v295 = 0;
            v306 = 0;
            goto LABEL_360;
          }

          v293 = aaIntervalInputStreamOpen(v6, *(v30 + 46), *(v30 + 54));
          if (v293)
          {
            v133 = *(a1 + 48);
            if (v133 <= 3)
            {
              v134 = v133 << 62;
            }

            else
            {
              v134 = 0xC000000000000000;
            }

            v295 = AADecompressionInputStreamOpen(v293, v134, *(a1 + 44));
            if (v295)
            {
              v291 = calloc(1uLL, 0x10040uLL);
              if (!v291)
              {
                v212 = __error();
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_create", 36, 135, *v212, "aaCalloc", v213, v214, v262);
                pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 338, 135, 0, "control_reader_create", v215, v216, v264);
                v291 = 0;
                goto LABEL_360;
              }

              *(v291 + 0x2000) = v6;
              *(v291 + 8195) = v30;
              *(v291 + 8196) = a1;
              v143 = *(v30 + 4) + 1;
              *(v291 + 8197) = 0x2000 / v143 * v143;
              *(v291 + 8198) = -1;
              v144 = *(v30 + 18);
              *(v291 + 8199) = v144 * v143;
              v145 = v280;
              if (!v144)
              {
                v145 = 1;
              }

              if (v145)
              {
LABEL_156:
                v288 = calloc(1uLL, 0x20000uLL);
                if (v288)
                {
                  v273 = 0;
                  v270 = 0;
                  v266 = v281;
                  v152 = *(v30 + 18);
                  v267 = 1;
                  while (!v152)
                  {
LABEL_256:
                    v191 = v280;
                    if (v267 > 1)
                    {
                      v191 = 1;
                    }

                    ++v267;
                    if (v191 == 1)
                    {
                      v192 = *(v297 + 2120);
                      if ((AAByteStreamTruncate(v301) & 0x80000000) == 0)
                      {
                        v298 = 0;
                        goto LABEL_398;
                      }

                      v254 = "AAByteStreamTruncate";
                      v255 = 457;
LABEL_397:
                      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v255, 135, 0, v254, v150, v151, v262);
                      v298 = 1;
LABEL_398:
                      if (v287 == v301)
                      {
                        v256 = 0;
                      }

                      else
                      {
                        v256 = v287;
                      }

                      goto LABEL_364;
                    }
                  }

                  v268 = 0;
                  v269 = 0;
                  v278 = 0;
                  while (2)
                  {
                    v153 = ctrl_reader_get(v291, v268, v146, v147, v148, v149, v150, v151);
                    if (!v153)
                    {
                      v254 = "ctrl_reader_get";
                      v255 = 387;
                      goto LABEL_397;
                    }

                    v154 = *v153;
                    v155 = v153[1];
                    if ((*v153 & 0x8000000000000000) != 0)
                    {
                      v154 = 0x8000000000000000 - *v153;
                    }

                    v274 = v154;
                    v156 = 0x8000000000000000 - v155;
                    if (v155 >= 0)
                    {
                      v156 = v153[1];
                    }

                    v272 = v156;
                    v157 = v153[v266 + 1];
                    if (v157 < 0)
                    {
                      v157 = 0x8000000000000000 - v157;
                    }

                    v265 = v157;
                    if (v267 == 2)
                    {
                      v278 += v274;
                      if ((v280 & 1) == 0 && v278 < *(v297 + 2056))
                      {
                        goto LABEL_170;
                      }

LABEL_223:
                      if (v272)
                      {
                        v275 = 0;
                        while (1)
                        {
                          v178 = v272 - v275;
                          if (v272 - v275 >= 0x10000)
                          {
                            v178 = 0x10000;
                          }

                          v277 = v178;
                          if (!*(v295 + 2))
                          {
                            goto LABEL_349;
                          }

                          if (v272 == v275)
                          {
                            v179 = 0;
                          }

                          else
                          {
                            v179 = 0;
                            v180 = v288;
                            v181 = v178;
                            while (1)
                            {
                              v182 = (*(v295 + 2))(*v295, v180, v181);
                              if (v182 < 0)
                              {
                                break;
                              }

                              if (v182)
                              {
                                v180 += v182;
                                v179 += v182;
                                v181 -= v182;
                                if (v181)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_236;
                            }

                            v179 = v182;
                          }

LABEL_236:
                          if (v277 != v179)
                          {
LABEL_349:
                            v254 = "aaByteStreamReadExpected";
                            v255 = 439;
                            goto LABEL_397;
                          }

                          if (!*(v306 + 5))
                          {
                            goto LABEL_350;
                          }

                          if (v272 == v275)
                          {
                            v284 = 0;
                          }

                          else
                          {
                            v284 = 0;
                            v183 = v288;
                            v185 = v277;
                            v184 = v278;
                            while (1)
                            {
                              v186 = (*(v306 + 5))(*v306, v183, v185, v184);
                              if (v186 < 1)
                              {
                                break;
                              }

                              v183 += v186;
                              v284 += v186;
                              v184 += v186;
                              v185 -= v186;
                              if (!v185)
                              {
                                goto LABEL_245;
                              }
                            }

                            v284 = v186;
                          }

LABEL_245:
                          if (v277 != v284)
                          {
LABEL_350:
                            v254 = "aaByteStreamWriteExpected";
                            v255 = 440;
                            goto LABEL_397;
                          }

                          v187 = v277 + v273;
                          v273 += v277;
                          if (*a1)
                          {
                            v188 = v187 > v270;
                          }

                          else
                          {
                            v188 = 0;
                          }

                          if (v188)
                          {
                            v189 = *(v297 + 2080);
                            if (v273 < v189)
                            {
                              v190 = ((v189 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                              if (((*a1)(*(a1 + 8), v273 / (v189 / 0x64 + 1)) & 0x80000000) != 0)
                              {
                                v261 = 450;
                                goto LABEL_403;
                              }

                              v270 = v273 + (v190 >> 2);
                            }
                          }

                          v278 += v277;
                          v275 += v277;
                          if (v275 >= v272)
                          {
                            goto LABEL_255;
                          }
                        }
                      }

                      goto LABEL_255;
                    }

                    if (!v274)
                    {
LABEL_220:
                      v269 += v265;
                      if ((v280 & 1) != 0 || v267 != 1 || v278 < *(v297 + 2056))
                      {
                        goto LABEL_223;
                      }

LABEL_170:
                      v278 += v272;
LABEL_255:
                      v152 = *(v30 + 18);
                      if (++v268 >= v152)
                      {
                        goto LABEL_256;
                      }

                      continue;
                    }

                    break;
                  }

                  v271 = 0;
                  while (2)
                  {
                    v158 = v274 - v271;
                    if (v274 - v271 >= 0x10000)
                    {
                      v158 = 0x10000;
                    }

                    v276 = v158;
                    if (!v299[4])
                    {
                      goto LABEL_353;
                    }

                    if (v274 == v271)
                    {
                      v282 = 0;
                    }

                    else
                    {
                      v282 = 0;
                      v159 = v288;
                      v160 = v269;
                      v161 = v158;
                      while (1)
                      {
                        v162 = (v299[4])(*v299, v159, v161, v160);
                        if (v162 < 0)
                        {
                          break;
                        }

                        if (v162)
                        {
                          v159 += v162;
                          v282 += v162;
                          v160 += v162;
                          v161 -= v162;
                          if (v161)
                          {
                            continue;
                          }
                        }

                        goto LABEL_184;
                      }

                      v282 = v162;
                    }

LABEL_184:
                    if (v276 != v282)
                    {
LABEL_353:
                      v254 = "aaByteStreamPReadExpected";
                      v255 = 400;
                      goto LABEL_397;
                    }

                    v163 = *(v297 + 2072);
                    if (v278 < v163)
                    {
                      if (v276 + v278 > v163)
                      {
                        v254 = "bad controls";
                        v255 = 406;
                        goto LABEL_397;
                      }

                      if (!*(v290 + 2))
                      {
                        goto LABEL_394;
                      }

                      if (v274 == v271)
                      {
                        if (!*(v306 + 5))
                        {
                          goto LABEL_354;
                        }

                        goto LABEL_204;
                      }

                      v164 = 0;
                      v165 = v288 + 0x10000;
                      v166 = v276;
                      while (1)
                      {
                        v167 = (*(v290 + 2))(*v290, v165, v166);
                        if (v167 < 0)
                        {
                          break;
                        }

                        if (v167)
                        {
                          v165 += v167;
                          v164 += v167;
                          v166 -= v167;
                          if (v166)
                          {
                            continue;
                          }
                        }

                        goto LABEL_197;
                      }

                      v164 = v167;
LABEL_197:
                      if (v276 != v164)
                      {
LABEL_394:
                        v254 = "aaByteStreamReadExpected";
                        v255 = 407;
                        goto LABEL_397;
                      }

                      v168 = v276;
                      if (v276 <= 1)
                      {
                        v168 = 1;
                      }

                      v169 = v288;
                      do
                      {
                        *v169 += v169[0x10000];
                        ++v169;
                        --v168;
                      }

                      while (v168);
                    }

                    if (!*(v306 + 5))
                    {
                      goto LABEL_354;
                    }

                    if (v274 == v271)
                    {
LABEL_204:
                      v283 = 0;
                    }

                    else
                    {
                      v283 = 0;
                      v170 = v288;
                      v172 = v276;
                      v171 = v278;
                      while (1)
                      {
                        v173 = (*(v306 + 5))(*v306, v170, v172, v171);
                        if (v173 < 1)
                        {
                          break;
                        }

                        v170 += v173;
                        v283 += v173;
                        v171 += v173;
                        v172 -= v173;
                        if (!v172)
                        {
                          goto LABEL_210;
                        }
                      }

                      v283 = v173;
                    }

LABEL_210:
                    if (v276 != v283)
                    {
LABEL_354:
                      v254 = "aaByteStreamWriteExpected";
                      v255 = 412;
                      goto LABEL_397;
                    }

                    v174 = v273 + v276;
                    v273 += v276;
                    if (*a1)
                    {
                      v175 = v174 > v270;
                    }

                    else
                    {
                      v175 = 0;
                    }

                    if (v175)
                    {
                      v176 = *(v297 + 2080);
                      if (v273 < v176)
                      {
                        v177 = ((v176 >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64;
                        if (((*a1)(*(a1 + 8), v273 / (v176 / 0x64 + 1)) & 0x80000000) != 0)
                        {
                          v261 = 422;
LABEL_403:
                          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v261, 135, 0, "callback signaled abort", v150, v151, v262);
                          if (v287 == v301)
                          {
                            v256 = 0;
                          }

                          else
                          {
                            v256 = v287;
                          }

                          if (v290)
                          {
                            AAByteStreamCancel(v290);
                          }

                          AAByteStreamCancel(v295);
LABEL_363:
                          v298 = 1;
LABEL_364:
                          if (v291)
                          {
                            AAByteStreamClose(*(v291 + 8194));
                            AAByteStreamClose(*(v291 + 8193));
                            free(v291);
                          }

                          free(v288);
                          AAByteStreamClose(v299);
                          AAByteStreamClose(s);
                          AAByteStreamClose(v256);
                          AAByteStreamClose(v306);
                          AAByteStreamClose(v304);
                          AAByteStreamClose(v301);
                          AAByteStreamClose(v290);
                          AAByteStreamClose(compressed_stream);
                          AAByteStreamClose(v295);
                          AAByteStreamClose(v293);
                          if (v298)
                          {
                            v124 = "patch_apply";
                            v125 = 621;
                            goto LABEL_380;
                          }

                          if (rawimg_get_digests(*v29, 4u, 0, 1) || (*v31 == *(*v29 + 2088) ? (v257 = v31[1] == *(*v29 + 2096)) : (v257 = 0), v257 ? (v258 = v31[2] == *(*v29 + 2104)) : (v258 = 0), v258 ? (v259 = v31[3] == *(*v29 + 2112)) : (v259 = 0), !v259))
                          {
                            v124 = "digest mismatch";
                            v125 = 630;
                            goto LABEL_380;
                          }

                          if (*(a1 + 48) >= 2)
                          {
                            v222 = *MEMORY[0x29EDCA610];
                            v223 = "ImagePatch: Digest match. Output reconstructed.\n";
                            v224 = 48;
LABEL_388:
                            fwrite(v223, v224, 1uLL, v222);
                          }

                          goto LABEL_389;
                        }

                        v270 = v273 + (v177 >> 2);
                      }
                    }

                    v269 += v276;
                    v278 += v276;
                    v271 += v276;
                    if (v271 >= v274)
                    {
                      goto LABEL_220;
                    }

                    continue;
                  }
                }

                v232 = *__error();
                v230 = "aaCalloc";
                v231 = 371;
              }

              else
              {
                v225 = 0;
                v289 = 0;
                while (1)
                {
                  v226 = ctrl_reader_get(v291, v289, v137, v138, v139, v140, v141, v142);
                  if (!v226)
                  {
                    v230 = "ctrl_reader_get";
                    v231 = 349;
                    goto LABEL_315;
                  }

                  if ((*v226 & 0x8000000000000000) == 0)
                  {
                    v227 = *v226;
                  }

                  else
                  {
                    v227 = 0x8000000000000000 - *v226;
                  }

                  v228 = v226[v281 + 1];
                  if (v228 < 0)
                  {
                    v228 = 0x8000000000000000 - v228;
                  }

                  v279 = v228;
                  if (v227)
                  {
                    break;
                  }

LABEL_312:
                  v225 += v279;
                  if (++v289 >= *(v30 + 18))
                  {
                    goto LABEL_156;
                  }
                }

                while (1)
                {
                  v229 = v227 >= 0x10000 ? 0x10000 : v227;
                  if (v229 != aaByteStreamSimulate(v299))
                  {
                    break;
                  }

                  v225 += v229;
                  v227 -= v229;
                  if (!v227)
                  {
                    goto LABEL_312;
                  }
                }

                v230 = "aaByteStreamSimulate";
                v231 = 358;
LABEL_315:
                v232 = 0;
              }

              pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", v231, 135, v232, v230, v141, v142, v262);
              goto LABEL_360;
            }

            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 330, 135, 0, "AADecompressionInputStreamOpen", v135, v136, v262);
            v291 = 0;
          }

          else
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 328, 135, 0, "aaIntervalInputStreamOpen", v131, v132, v262);
            v291 = 0;
            v293 = 0;
          }

          v295 = 0;
          goto LABEL_360;
        }

        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 322, 135, 0, "aaSegmentStreamOpen", v127, v128, v262);
        v291 = 0;
        v293 = 0;
        v295 = 0;
      }

      else
      {
        if (v30[10])
        {
          if (*(a1 + 48))
          {
            fprintf(*MEMORY[0x29EDCA610], "ImagePatch: Patching with excess space <= %d bytes.\n", *(v30 + 26));
          }
        }

        else
        {
          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 245, 135, "ImagePatch: Patch not created with in place. No bound on needed excess space.", v202, v203, v204, v262);
        }

        v233 = v300[265];
        if (*(v297 + 2120) > v233)
        {
          v233 = *(v297 + 2120);
        }

        v292 = v233;
        v302 = AAFileStreamOpenWithPath(*(v297 + 2048), 2, 0x1A4u);
        if (!v302)
        {
          v252 = "AAFileStreamOpenWithPath";
          v253 = 252;
          goto LABEL_359;
        }

        if (v92)
        {
          if ((io_set_nocache(v302) & 0x80000000) != 0)
          {
            pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 257, 135, "io_set_nocache %s", v234, v235, v236, *(v297 + 2048));
          }

          v237 = *(a1 + 48);
          v238 = v237 <= 3 ? v237 << 62 : 0xC000000000000000;
          v302 = aaCacheStreamOpen(v302, 0x1000000uLL, 14, 1, v238);
          if (!v302)
          {
            v252 = "aaCacheStreamOpen";
            v253 = 259;
            goto LABEL_359;
          }
        }

        v287 = aaInSituStreamOpen(v302, v292, *(v30 + 26), *(a1 + 48), 1);
        if (!v287)
        {
          v252 = "aaInSituStreamOpen";
          v253 = 264;
          goto LABEL_359;
        }

        if (*(v30 + 4) <= 1u)
        {
          s = 0;
          v299 = 0;
          compressed_stream = 0;
          v290 = 0;
          v280 = 0;
          v301 = v287;
          v126 = aaSegmentStreamOpen(v287, v297);
          goto LABEL_145;
        }

        v301 = v287;
LABEL_337:
        s = aaSegmentStreamOpen(v287, v300);
        if (!s)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 290, 135, 0, "aaSegmentStreamOpen", v242, v243, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          s = 0;
          goto LABEL_360;
        }

        v299 = aaForkInputStreamOpen(s, v300, 0, v239, v240, v241, v242, v243);
        if (!v299)
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 292, 135, 0, "aaForkInputStreamOpen", v244, v245, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
          v304 = 0;
          v306 = 0;
          v299 = 0;
          goto LABEL_360;
        }

        compressed_stream = aaIntervalInputStreamOpen(v6, *&v303[8 * v296], *&v303[8 * v305]);
        if (compressed_stream)
        {
          v248 = *(a1 + 48);
          if (v248 <= 3)
          {
            v249 = v248 << 62;
          }

          else
          {
            v249 = 0xC000000000000000;
          }

          v290 = AADecompressionInputStreamOpen(compressed_stream, v249, *(a1 + 44));
          if (v290)
          {
            if (v294)
            {
              goto LABEL_319;
            }

            v280 = 0;
            goto LABEL_144;
          }

          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 298, 135, 0, "AADecompressionInputStreamOpen", v250, v251, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
        }

        else
        {
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "patch_apply", 296, 135, 0, "aaIntervalInputStreamOpen", v246, v247, v262);
          v291 = 0;
          v293 = 0;
          v295 = 0;
          v290 = 0;
          compressed_stream = 0;
        }
      }

      v304 = 0;
      v306 = 0;
      goto LABEL_360;
    }

    *(*v29 + 2048) = *(a1 + 16);
  }

  v217 = *v29;
  v218 = *(*v29 + 2048);
  v219 = *(a1 + 24);
  v220 = strcmp(v218, v219);
  v221 = *(a1 + 48);
  if (v220)
  {
    if (v221 >= 2)
    {
      fwrite("ImagePatch: Digest match. Copy input to output.\n", 0x30uLL, 1uLL, *MEMORY[0x29EDCA610]);
      v217 = *v29;
    }

    if ((copyFileSegment(v218, 0, *(v217 + 2120), v219) & 0x80000000) != 0)
    {
      v124 = "copyFileSegment";
      v125 = 607;
      goto LABEL_380;
    }
  }

  else if (v221 >= 2)
  {
    v222 = *MEMORY[0x29EDCA610];
    v223 = "ImagePatch: Digest match. Output already correct.\n";
    v224 = 50;
    goto LABEL_388;
  }

LABEL_389:
  v27 = 1;
  rawimg_show(*v29, 1, *(a1 + 48));
  if (*a1 && ((*a1)(*(a1 + 8), 100) & 0x80000000) != 0)
  {
    v124 = "callback signaled abort";
    v125 = 641;
LABEL_380:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", v125, 135, 0, v124, v110, v111, v262);
LABEL_381:
    v27 = 0;
  }

  if (*(v30 + 4))
  {
    v260 = 0;
    do
    {
      rawimg_destroy(v29[v260++]);
    }

    while (v260 < *(v30 + 4));
  }

LABEL_27:
  if (!a2)
  {
LABEL_30:
    if (AAByteStreamClose(v6) < 0)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "RawImagePatchInternal", 649, 135, 0, "AAByteStreamClose", v32, v33, v262);
      v27 = 0;
    }
  }

  free(v31);
  free(v30);
  free(v29);
  free(v28);
  if (v27)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ctrl_reader_get(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 + 0x10000;
  v9 = *(a1 + 65560);
  if (*(v9 + 18) <= a2)
  {
    return 0;
  }

  v11 = a2 + a2 * *(v9 + 8);
  if (v11 >= *(a1 + 65584))
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 65568);
  *(a1 + 65584) = -*(a1 + 65576);
  AAByteStreamClose(*(a1 + 65552));
  *(v8 + 16) = 0;
  AAByteStreamClose(*(v8 + 8));
  *(v8 + 8) = 0;
  v13 = aaIntervalInputStreamOpen(*v8, *(v9 + 38), *(v9 + 46));
  *(v8 + 8) = v13;
  if (!v13)
  {
    v27 = "aaIntervalInputStreamOpen";
    v28 = 81;
LABEL_24:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImagePatch.c", "ctrl_reader_get", v28, 135, 0, v27, a7, a8, v30);
    return 0;
  }

  v14 = *(v12 + 48);
  if (v14 <= 3)
  {
    v15 = v14 << 62;
  }

  else
  {
    v15 = 0xC000000000000000;
  }

  v16 = AADecompressionInputStreamOpen(v13, v15, *(v12 + 44));
  *(v8 + 16) = v16;
  if (!v16)
  {
    v27 = "AADecompressionInputStreamOpen";
    v28 = 83;
    goto LABEL_24;
  }

LABEL_8:
  while (1)
  {
    v17 = *(v8 + 40);
    v18 = *(v8 + 48);
    v19 = v17 + v18;
    if (v11 < v17 + v18)
    {
      return a1 + 8 * (v11 - v18);
    }

    *(v8 + 48) = v19;
    v20 = *(v8 + 56) - v19;
    if (v20 < v17)
    {
      v17 = v20;
    }

    v21 = *(v8 + 16);
    if (*(v21 + 16))
    {
      v22 = 0;
      v23 = 8 * v17;
      if (8 * v17)
      {
        v24 = a1;
        v25 = 8 * v17;
        while (1)
        {
          v26 = (*(v21 + 16))(*v21, v24, v25);
          if (v26 < 0)
          {
            break;
          }

          if (v26)
          {
            v24 += v26;
            v22 += v26;
            v25 -= v26;
            if (v25)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        v22 = v26;
      }

LABEL_19:
      if (v23 == v22)
      {
        continue;
      }
    }

    v27 = "aaByteStreamReadExpected";
    v28 = 91;
    goto LABEL_24;
  }
}

off_t AARandomAccessByteStreamProcess(AAByteStream istream, AAByteStream ostream, off_t max_offset, size_t block_size, AAFlagSet flags, int n_threads)
{
  if (block_size <= 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "AARandomAccessByteStreamProcess", 315, 89, 0, "Invalid arguments", v6, v7, v88);
    return -1;
  }

  LODWORD(v8) = n_threads;
  if ((flags & 0x400) == 0)
  {
    if (n_threads <= 0)
    {
      LODWORD(v8) = getDefaultNThreads();
    }

    __s = 0;
    v91 = 0;
    v92 = 0;
    memset_s(&__s, 0x18uLL, 0, 0x18uLL);
    __s = ostream;
    v8 = v8;
    v13 = calloc(v8, 8uLL);
    if (v13)
    {
      v14 = v13;
      if (v8)
      {
        v15 = v13;
        v16 = v8;
        while (1)
        {
          v17 = malloc(0x38uLL);
          if (!v17)
          {
            v74 = *__error();
            v77 = 125;
            goto LABEL_55;
          }

          v18 = v17;
          memset_s(v17, 0x38uLL, 0, 0x38uLL);
          *v15 = v18;
          v18[1] = block_size;
          v18[2] = 0;
          *v18 = istream;
          if (block_size >= 0x2000000001)
          {
            break;
          }

          v19 = malloc(block_size);
          v18[3] = v19;
          if (!v19)
          {
            goto LABEL_54;
          }

          ++v15;
          if (!--v16)
          {
            goto LABEL_12;
          }
        }

        *__error() = 12;
        v18[3] = 0;
LABEL_54:
        v74 = *__error();
        v77 = 131;
LABEL_55:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", v77, 89, v74, "malloc", v75, v76, v88);
        v27 = 0;
      }

      else
      {
LABEL_12:
        v27 = ThreadPipelineCreate(v8, v14, sequentialReaderProc, &__s, sequentialWriterProc, 0);
        if (v27)
        {
          v28 = 0;
          if (max_offset >= 0x7FFFFFFFFFFFFFFFLL)
          {
            max_offset = 0x7FFFFFFFFFFFFFFFLL;
          }

          while (1)
          {
            v29 = atomic_load(&v92 + 1);
            if (v29 || (v30 = atomic_load(&v92)) != 0)
            {
              v72 = 0;
              goto LABEL_62;
            }

            Worker = ThreadPipelineGetWorker(v27, v20, v21, v22, v23, v24, v25, v26);
            if (!Worker)
            {
              break;
            }

            if ((v28 + block_size) >= max_offset)
            {
              v36 = max_offset;
            }

            else
            {
              v36 = v28 + block_size;
            }

            *(Worker + 32) = v36 - v28;
            *(Worker + 40) = v28;
            v28 = v36;
            if ((ThreadPipelineRunWorker(v27, Worker, v32, v33, v34, v35, v25, v26) & 0x80000000) != 0)
            {
              v37 = "running task";
              v38 = 158;
              goto LABEL_60;
            }
          }

          v37 = "allocating reader";
          v38 = 153;
        }

        else
        {
          v37 = "ThreadPipelineCreate";
          v38 = 136;
        }

LABEL_60:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", v38, 89, 0, v37, v25, v26, v88);
      }

      v72 = 1;
LABEL_62:
      ThreadPipelineDestroy(v27);
      if (v8)
      {
        v82 = v14;
        do
        {
          v83 = *v82++;
          free(v83[3]);
          free(v83);
          --v8;
        }

        while (v8);
      }

      free(v14);
      if ((v72 & 1) == 0)
      {
        return v91;
      }
    }

    else
    {
      v66 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processSequential", 121, 89, *v66, "malloc", v67, v68, v88);
      ThreadPipelineDestroy(0);
    }

    return -1;
  }

  if (n_threads <= 0)
  {
    LODWORD(v8) = getDefaultNThreads();
  }

  LODWORD(__s) = 0;
  v93 = 0;
  v39 = v8;
  v40 = calloc(v8, 8uLL);
  if (!v40)
  {
    v69 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", 246, 89, *v69, "malloc", v70, v71, v88);
    ThreadPoolDestroy(0);
    return -1;
  }

  v89 = v40;
  if (v8)
  {
    v41 = v40;
    v8 = v8;
    while (1)
    {
      v42 = malloc(0x48uLL);
      if (!v42)
      {
        v78 = *__error();
        v81 = 250;
        goto LABEL_58;
      }

      v43 = v42;
      memset_s(v42, 0x48uLL, 0, 0x48uLL);
      *v41 = v43;
      *v43 = istream;
      v43[1] = ostream;
      v43[4] = &__s;
      v43[5] = &v93;
      v43[2] = block_size;
      if (block_size >= 0x2000000001)
      {
        break;
      }

      v44 = malloc(block_size);
      v43[3] = v44;
      if (!v44)
      {
        goto LABEL_57;
      }

      ++v41;
      if (!--v8)
      {
        goto LABEL_33;
      }
    }

    *__error() = 12;
    v43[3] = 0;
LABEL_57:
    v78 = *__error();
    v81 = 258;
LABEL_58:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", v81, 89, v78, "malloc", v79, v80, max_offset);
    v53 = 0;
    v73 = 1;
    v45 = v89;
  }

  else
  {
LABEL_33:
    v45 = v89;
    v53 = ThreadPoolCreate(v39, v89, randomAccessWorkerProc);
    if (v53)
    {
      v54 = 0;
      if (max_offset >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = max_offset;
      }

      while (1)
      {
        v56 = atomic_load(&__s);
        if (v56 || (v57 = atomic_load(&v93)) != 0)
        {
          v73 = 0;
          goto LABEL_69;
        }

        v58 = ThreadPoolGetWorker(v53, v46, v47, v48, v49, v50, v51, v52);
        if (!v58)
        {
          break;
        }

        if ((v54 + block_size) >= v55)
        {
          v63 = v55;
        }

        else
        {
          v63 = v54 + block_size;
        }

        *(v58 + 56) = v63 - v54;
        *(v58 + 64) = v54;
        v54 = v63;
        if ((ThreadPoolRunWorker(v53, v58, v59, v60, v61, v62, v51, v52) & 0x80000000) != 0)
        {
          v64 = "running task";
          v65 = 285;
          goto LABEL_68;
        }
      }

      v64 = "allocating reader";
      v65 = 280;
    }

    else
    {
      v64 = "ThreadPipelineCreate";
      v65 = 263;
    }

LABEL_68:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "processRandomAccess", v65, 89, 0, v64, v51, v52, max_offset);
    v73 = 1;
  }

LABEL_69:
  ThreadPoolDestroy(v53);
  v84 = 0;
  if (v39)
  {
    v85 = v45;
    do
    {
      v86 = *v85++;
      v84 += *(v86 + 48);
      free(*(v86 + 24));
      free(v86);
      --v39;
    }

    while (v39);
  }

  free(v45);
  if (v73)
  {
    return -1;
  }

  return v84;
}

uint64_t sequentialReaderProc(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  v2 = *(a1 + 32);
  if (v2 > *(a1 + 8))
  {
    goto LABEL_2;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = AAByteStreamPRead(*a1, *(a1 + 24), v2, *(a1 + 40));
  if (v4 < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "sequentialReaderProc", 49, 89, 0, "PRead", v5, v6, v8);
LABEL_2:
    *(a1 + 48) = 1;
    return 0xFFFFFFFFLL;
  }

  v7 = v4;
  result = 0;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sequentialWriterProc(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 20);
  if (atomic_load((a1 + 20)))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a2 + 48))
  {
    v7 = *(a2 + 16);
    if (!v7)
    {
      result = 0;
      v2 = (a1 + 16);
      goto LABEL_5;
    }

    v8 = *(a2 + 24);
    while (1)
    {
      v9 = AAByteStreamWrite(*a1, v8, v7);
      if (v9 <= 0)
      {
        break;
      }

      v8 += v9;
      *(a1 + 8) += v9;
      v7 -= v9;
      if (!v7)
      {
        return 0;
      }
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "sequentialWriterProc", 87, 89, 0, "Write failed", v10, v11, v12);
  }

  result = 0xFFFFFFFFLL;
LABEL_5:
  v5 = 0;
  atomic_compare_exchange_strong(v2, &v5, 1u);
  return result;
}

uint64_t randomAccessWorkerProc(uint64_t a1)
{
  if (!atomic_load(*(a1 + 32)))
  {
    v3 = *(a1 + 56);
    if (v3 <= *(a1 + 16))
    {
      if (!v3)
      {
        return 0;
      }

      v4 = AAByteStreamPRead(*a1, *(a1 + 24), v3, *(a1 + 64));
      if (v4 < 0)
      {
        v9 = "PRead";
        v10 = 207;
      }

      else
      {
        v7 = v4;
        if (!v4)
        {
          v11 = 0;
          result = 0;
          atomic_compare_exchange_strong(*(a1 + 40), &v11, 1u);
          return result;
        }

        if (AAByteStreamPWrite(*(a1 + 8), *(a1 + 24), v4, *(a1 + 64)) == v4)
        {
          result = 0;
          *(a1 + 48) += v7;
          return result;
        }

        v9 = "Write";
        v10 = 219;
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchive/AARandomAccessByteStreamProcess.c", "randomAccessWorkerProc", v10, 89, 0, v9, v5, v6, v13);
    }

    v12 = 0;
    atomic_compare_exchange_strong(*(a1 + 32), &v12, 1u);
  }

  return 0xFFFFFFFFLL;
}

void *AEADecryptionDirectRandomAccessInputStreamOpen(AAByteStream_impl *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 <= 0)
  {
    getDefaultNThreads();
  }

  if (!*(a2 + 2736) || !*(a2 + 2728))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "AEADecryptionDirectRandomAccessInputStreamOpen", 148, 122, 0, "Invalid context", a7, a8, v25);
    v13 = 0;
    v11 = 0;
LABEL_16:
    BlockDecryptionStreamClose(v13);
    free(v11);
    return 0;
  }

  v11 = calloc(1uLL, 0x68uLL);
  v12 = malloc(0x30uLL);
  v13 = v12;
  if (!v12 || (memset_s(v12, 0x30uLL, 0, 0x30uLL), !v11))
  {
    v21 = *__error();
    v22 = "malloc";
    v23 = 153;
LABEL_15:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "AEADecryptionDirectRandomAccessInputStreamOpen", v23, 122, v21, v22, v15, v16, v25);
    goto LABEL_16;
  }

  *v13 = a1;
  v13[1] = a3;
  if ((a3 & 0x400000000000000) != 0)
  {
    *(a2 + 2740) = 1;
  }

  Existing = aeaContainerCreateExisting(a2, a1, 1, 0);
  v13[2] = Existing;
  if (!Existing)
  {
    v22 = "unlock container";
    v23 = 166;
    v21 = 0;
    goto LABEL_15;
  }

  if (*(Existing + 24))
  {
    v17 = aeaEffectiveCompressionAlgorithm(*(Existing + 24));
    v13[3] = compression_decode_scratch_buffer_size(v17);
    Existing = v13[2];
  }

  *v11 = v13;
  v11[1] = BlockDecryptionStreamClose;
  v11[7] = BlockDecryptionStreamCancel;
  v11[4] = BlockDecryptionStreamPRead;
  v11[2] = BlockDecryptionStreamRead;
  *a2 = *Existing;
  v18 = *(Existing + 16);
  v19 = *(Existing + 32);
  v20 = *(Existing + 48);
  *(a2 + 64) = *(Existing + 64);
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 16) = v18;
  return v11;
}

uint64_t BlockDecryptionStreamClose(uint64_t *a1)
{
  if (a1)
  {
    aeaContainerDestroy(a1[2]);
    free(a1);
  }

  return 0;
}

void BlockDecryptionStreamCancel(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong((a1 + 32), &v1, 1u);
  if (!v1)
  {
    AAByteStreamCancel(*a1);
  }
}

uint64_t BlockDecryptionStreamPRead(uint64_t a1, uint8_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    v10 = "negative offset";
    v11 = 55;
    goto LABEL_6;
  }

  v8 = a4;
  v9 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    v10 = "invalid request";
    v11 = 59;
LABEL_6:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", v11, 122, 0, v10, a7, a8, v42);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = -1;
    goto LABEL_48;
  }

  v17 = *(a1 + 16);
  v18 = *(v17 + 32);
  if (v18 <= a4 || (v9 >= v18 ? (v19 = *(v17 + 32)) : (v19 = a4 + a3), v9 <= a4))
  {
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_48;
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v44 = *(v17 + 24);
  v21 = *(v17 + 16);
  __size = v21;
  v43 = v19;
  while (1)
  {
    v22 = v13;
    v23 = v8 / v21;
    v24 = *(a1 + 16);
    if (v8 / v21 >= *(v24 + 400))
    {
      v38 = v14;
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 69, 122, 0, "invalid state", a7, a8, v42);
      v14 = v38;
LABEL_51:
      v15 = -1;
      v13 = v22;
      goto LABEL_48;
    }

    v25 = v23 * v21;
    v26 = *(*(v24 + 392) + 544 * v23 + 4);
    v27 = v23 * v21 + v26;
    if (v8 <= v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = v8;
    }

    if (v27 >= v19)
    {
      v27 = v19;
    }

    v45 = v28;
    v29 = v27 - v28;
    v30 = v25 >= v8 && v29 == v26;
    v31 = v30;
    v47 = v31;
    if (v30)
    {
      v49 = a2;
      goto LABEL_30;
    }

    v49 = v14;
    if (!v14)
    {
      v14 = malloc(__size);
      v49 = v14;
      if (!v14)
      {
        v39 = __error();
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", 93, 122, *v39, "malloc", v40, v41, v42);
        v14 = 0;
        goto LABEL_51;
      }
    }

LABEL_30:
    v48 = v14;
    if (v44)
    {
      v13 = v22;
      if (!v22)
      {
        v13 = malloc(__size);
      }

      if (!v12)
      {
        v32 = *(a1 + 24);
        if (v32)
        {
          if (v32 < 0x2000000001)
          {
            v12 = malloc(v32);
          }

          else
          {
            v12 = 0;
            *__error() = 12;
          }
        }
      }

      if (!v13 || !v12 && *(a1 + 24))
      {
        v35 = *__error();
        v36 = "malloc";
        v37 = 100;
        goto LABEL_53;
      }

      v22 = v13;
      v24 = *(a1 + 16);
    }

    v33 = v24;
    v13 = v22;
    if (aeaContainerLoadSegment(v33, *a1, v23, v49, v22, v12, a7, a8) < 0)
    {
      break;
    }

    if ((v47 & 1) == 0)
    {
      memcpy(a2, &v49[v45 - v25], v29);
    }

    v8 += v29;
    a2 += v29;
    v15 += v29;
    v19 = v43;
    v14 = v48;
    v21 = __size;
    if (v8 >= v43)
    {
      goto LABEL_48;
    }
  }

  v36 = "loading segment";
  v37 = 105;
  v35 = 0;
LABEL_53:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEADirectRandomAccessDecryptionStream.c", "BlockDecryptionStreamPRead", v37, 122, v35, v36, a7, a8, v42);
  v15 = -1;
  v14 = v48;
LABEL_48:
  free(v14);
  free(v13);
  free(v12);
  return v15;
}

uint64_t ECC65537GetParity(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  if (a1 <= 0x1FFE0)
  {
    v4 = (a1 & 1) + a1;
    if (v4)
    {
      v5 = 0uLL;
      v6 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_296AD18A0), vceqzq_s32(qword_296AD18B0)));
      v7 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_296AD1890))));
      v8.i64[0] = 0xFFFF0000FFFFLL;
      v8.i64[1] = 0xFFFF0000FFFFLL;
      v9.i64[0] = 0x1000100010001;
      v9.i64[1] = 0x1000100010001;
      v10.i64[0] = 0x1000100010001;
      v10.i64[1] = 0x1000100010001;
      v11.i64[0] = 0x100000001;
      v11.i64[1] = 0x100000001;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      do
      {
        v15 = v4 - 2;
        if (v4 <= a1)
        {
          v16 = *(a2 + v15);
        }

        else
        {
          v16 = *(a2 + v15);
        }

        v17 = vextq_s8(v5, v12, 0xCuLL);
        v18 = vextq_s8(v12, v13, 0xCuLL);
        v19 = vextq_s8(v13, v14, 0xCuLL);
        v20 = vdupq_laneq_s32(v14, 3);
        v21 = vextq_s8(qword_296AD18B0, v5, 0xCuLL);
        v21.i32[0] = v16;
        v22 = vmulq_laneq_s32(ECC65537_G, v14, 3);
        v23 = vmulq_laneq_s32(unk_296AD1890, v14, 3);
        v24 = vmulq_laneq_s32(xmmword_296AD18A0, v14, 3);
        v25 = vmulq_laneq_s32(qword_296AD18B0, v14, 3);
        v26 = vceqzq_s32(v20);
        v27 = vuzp1q_s16(v26, v26);
        v28 = vuzp1q_s16(vceqzq_s32(v24), vceqzq_s32(v25));
        v29 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v22), vceqzq_s32(v23)));
        v30 = vsubq_s32(vandq_s8(v25, v8), vshrq_n_u32(v25, 0x10uLL));
        v31 = vsubq_s32(vandq_s8(v24, v8), vshrq_n_u32(v24, 0x10uLL));
        v32 = vsubq_s32(vandq_s8(v23, v8), vshrq_n_u32(v23, 0x10uLL));
        v33 = vsubq_s32(vandq_s8(v22, v8), vshrq_n_u32(v22, 0x10uLL));
        v34 = vand_s8(vand_s8(v7, v29), vmovn_s16(vmvnq_s8(v27)));
        *v27.i8 = vmovn_s16(vandq_s8(vbicq_s8(v6, v27), v28));
        v35 = vsubq_s32(v19, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v30, vandq_s8(vcgtq_u32(v30, v10), v9))));
        v36 = vsubq_s32(v18, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v27.i8, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v31, vandq_s8(vcgtq_u32(v31, v10), v9))));
        v37 = vsubq_s32(v17, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v32, vandq_s8(vcgtq_u32(v32, v10), v9))));
        v38 = vsubq_s32(v21, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v34, 0xB4200003C1CLL)), 0x1FuLL)), v11, vaddq_s32(v33, vandq_s8(vcgtq_u32(v33, v10), v9))));
        v14 = vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v10), v9));
        v13 = vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v10), v9));
        v12 = vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v10), v9));
        v5 = vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v10), v9));
        v4 = v15;
      }

      while (v15);
    }

    else
    {
      v5 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    v39 = 0;
    v40 = 0;
    v44[0] = v5;
    v44[1] = v12;
    v44[2] = v13;
    v44[3] = v14;
    do
    {
      v41 = *(v44 + v39);
      if (v41)
      {
        v42 = 65537 - v41;
      }

      else
      {
        v42 = 0;
      }

      v40 |= (1 << v39) & (v42 << 15 >> 31);
      *(a3 + 2 * v39++) = v42;
    }

    while (v39 != 16);
    result = 0;
    *(a3 + 32) = v40;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v43 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ECC65537CheckAndFix(unsigned int a1, uint64_t a2, uint16x8_t *a3, _DWORD *a4)
{
  v115 = *MEMORY[0x29EDCA608];
  v7 = 0uLL;
  v8 = (a1 & 1) + a1;
  if (v8)
  {
    v9 = 0uLL;
    v10 = vmvnq_s8(vuzp1q_s16(vceqzq_s32(xmmword_296AD18A0), vceqzq_s32(qword_296AD18B0)));
    v11 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(ECC65537_G), vceqzq_s32(unk_296AD1890))));
    v12.i64[0] = 0xFFFF0000FFFFLL;
    v12.i64[1] = 0xFFFF0000FFFFLL;
    v13.i64[0] = 0x1000100010001;
    v13.i64[1] = 0x1000100010001;
    v14.i64[0] = 0x1000100010001;
    v14.i64[1] = 0x1000100010001;
    v15.i64[0] = 0x100000001;
    v15.i64[1] = 0x100000001;
    v16 = (a1 & 1) + a1;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    do
    {
      v20 = v16 - 2;
      if (v16 <= a1)
      {
        v21 = *(a2 + v20);
      }

      else
      {
        v21 = *(a2 + v20);
      }

      v22 = vextq_s8(v9, v17, 0xCuLL);
      v23 = vextq_s8(v17, v18, 0xCuLL);
      v24 = vextq_s8(v18, v19, 0xCuLL);
      v25 = vdupq_laneq_s32(v19, 3);
      v26 = vextq_s8(0, v9, 0xCuLL);
      v26.i32[0] = v21;
      v27 = vmulq_laneq_s32(ECC65537_G, v19, 3);
      v28 = vmulq_laneq_s32(unk_296AD1890, v19, 3);
      v29 = vmulq_laneq_s32(xmmword_296AD18A0, v19, 3);
      v30 = vmulq_laneq_s32(qword_296AD18B0, v19, 3);
      v31 = vceqzq_s32(v25);
      v32 = vuzp1q_s16(v31, v31);
      v33 = vuzp1q_s16(vceqzq_s32(v29), vceqzq_s32(v30));
      v34 = vmovn_s16(vuzp1q_s16(vceqzq_s32(v27), vceqzq_s32(v28)));
      v35 = vsubq_s32(vandq_s8(v30, v12), vshrq_n_u32(v30, 0x10uLL));
      v36 = vsubq_s32(vandq_s8(v29, v12), vshrq_n_u32(v29, 0x10uLL));
      v37 = vsubq_s32(vandq_s8(v28, v12), vshrq_n_u32(v28, 0x10uLL));
      v38 = vsubq_s32(vandq_s8(v27, v12), vshrq_n_u32(v27, 0x10uLL));
      v39 = vand_s8(vand_s8(v11, v34), vmovn_s16(vmvnq_s8(v32)));
      *v32.i8 = vmovn_s16(vandq_s8(vbicq_s8(v10, v32), v33));
      v40 = vsubq_s32(v24, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v35, vandq_s8(vcgtq_u32(v35, v14), v13))));
      v41 = vsubq_s32(v23, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v32.i8, 0)), 0x1FuLL)), v15, vaddq_s32(v36, vandq_s8(vcgtq_u32(v36, v14), v13))));
      v42 = vsubq_s32(v22, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v37, vandq_s8(vcgtq_u32(v37, v14), v13))));
      v43 = vsubq_s32(v26, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v39, 0)), 0x1FuLL)), v15, vaddq_s32(v38, vandq_s8(vcgtq_u32(v38, v14), v13))));
      v19 = vaddq_s32(v40, vandq_s8(vcgtq_u32(v40, v14), v13));
      v18 = vaddq_s32(v41, vandq_s8(vcgtq_u32(v41, v14), v13));
      v17 = vaddq_s32(v42, vandq_s8(vcgtq_u32(v42, v14), v13));
      v9 = vaddq_s32(v43, vandq_s8(vcgtq_u32(v43, v14), v13));
      v16 = v20;
    }

    while (v20);
  }

  else
  {
    v9 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  v44 = 0;
  v114[0] = v9;
  v114[1] = v17;
  v114[2] = v18;
  v114[3] = v19;
  v45 = xmmword_296AD1830;
  v46 = vdupq_n_s32(a3[2].u16[0]);
  v47 = xmmword_296AD1840;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x1000000010000;
  v49.i64[1] = 0x1000000010000;
  v50.i64[0] = 0x800000008;
  v50.i64[1] = 0x800000008;
  v51 = 0uLL;
  do
  {
    v52 = *a3++;
    v53 = vmovl_u16(*v52.i8);
    v54 = vmovl_high_u16(v52);
    v55 = &v114[v44];
    v56 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v45), v46)), v54, (*&v54 | __PAIR128__(0x1000000010000, 0x1000000010000))), v114[v44 + 1]);
    v57 = vaddq_s32(vbslq_s8(vceqzq_s32(vandq_s8(vshlq_u32(v48, v47), v46)), v53, (*&v53 | __PAIR128__(0x1000000010000, 0x1000000010000))), v114[v44]);
    v58 = vminq_u32(vaddq_s32(v56, v49), v56);
    v59 = vminq_u32(vaddq_s32(v57, v49), v57);
    *v55 = v59;
    v55[1] = v58;
    v51 = vorrq_s8(v58, v51);
    v7 = vorrq_s8(v59, v7);
    v47 = vaddq_s32(v47, v50);
    v45 = vaddq_s32(v45, v50);
    v44 += 2;
  }

  while (v44 != 4);
  v60 = vorrq_s8(v7, v51);
  if (!*&vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL)))
  {
    v103 = 0;
    goto LABEL_90;
  }

  v61 = calloc(1uLL, 0x4C0uLL);
  if (!v61)
  {
    v105 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/ErrorCorrection_ECC65537.c", "ECC65537CheckAndFix", 423, 63, *v105, "malloc", v106, v107, v110);
    v103 = 0xFFFFFFFFLL;
    goto LABEL_90;
  }

  v62 = v61;
  v112 = a1;
  v113 = a2;
  v63 = 0;
  v64 = v8 >> 1;
  v65 = 1;
  do
  {
    v62[v63] = ecc65537PolyEval(16, v114, v65);
    v66 = (3 * v65) - ((3 * v65) >> 16);
    if (v66 + 65537 >= v66)
    {
      v65 = (3 * v65) - ((3 * v65) >> 16);
    }

    else
    {
      v65 = v66 + 65537;
    }

    ++v63;
  }

  while (v63 != 16);
  v67 = 0;
  v68 = v62 + 48;
  v69 = 48;
  do
  {
    v70 = &v62[v69];
    v71 = *&v62[v67];
    v72 = *&v62[v67 + 4];
    v70[8] = v62[v67 + 8];
    *v70 = v71;
    *(v70 + 1) = v72;
    v69 += 16;
    ++v67;
  }

  while (v67 != 8);
  v73 = ecc65537Triangulate(8, 9, (v62 + 48));
  if (v73 < 1)
  {
    goto LABEL_84;
  }

  LODWORD(v74) = v73;
  if ((ecc65537Solve(v73, v62 + 48, (v62 + 16)) & 0x80000000) != 0)
  {
    goto LABEL_84;
  }

  v75 = 0;
  v76 = 0;
  v77 = v62 + 32;
  v78 = v64 + 16;
  v79 = 1;
  do
  {
    if (!ecc65537PolyEval(v74 + 1, (v62 + 16), v79) && v76 <= 7)
    {
      v77[v76++] = v75;
    }

    v80 = (3 * v79) - ((3 * v79) >> 16);
    if (v80 + 65537 >= v80)
    {
      v79 = (3 * v79) - ((3 * v79) >> 16);
    }

    else
    {
      v79 = v80 + 65537;
    }

    ++v75;
  }

  while (v78 != v75);
  if (v76 != v74)
  {
    goto LABEL_84;
  }

  v111 = a4;
  v81 = 0;
  v74 = v74;
  do
  {
    v82 = 0;
    do
    {
      v83 = v77[v82] * v81;
      if (v83)
      {
        v84 = 3;
        if (v83 < 0)
        {
          v84 = ecc65537Inv(3);
          v83 = -v83;
        }

        v85 = v83;
        v86 = 1;
        while (1)
        {
          if (v85)
          {
            if (v84 && v86 && !(v86 * v84))
            {
              v86 = 1;
            }

            else
            {
              v86 = (v86 * v84) - ((v86 * v84) >> 16);
              if (v86 + 65537 < v86)
              {
                v86 += 65537;
              }
            }
          }

          if (v85 < 2)
          {
            break;
          }

          v85 >>= 1;
          v87 = v84 * v84;
          if (v84)
          {
            v84 = 1;
            if (!v87)
            {
              continue;
            }
          }

          v88 = v87 - HIWORD(v87);
          if (v88 + 65537 >= v88)
          {
            v84 = v88;
          }

          else
          {
            v84 = v88 + 65537;
          }
        }
      }

      else
      {
        v86 = 1;
      }

      v68[v82 + (16 * v81)] = v86;
      ++v82;
    }

    while (v82 != v74);
    v89 = v62[v81];
    if (v89)
    {
      v90 = 65537 - v89;
    }

    else
    {
      v90 = 0;
    }

    v68[16 * v81++ + v74] = v90;
  }

  while (v81 != v74);
  if (ecc65537Triangulate(v74, v74 + 1, (v62 + 48)) == v74)
  {
    v91 = v62 + 40;
    a4 = v111;
    if ((ecc65537Solve(v74, v62 + 48, (v62 + 40)) & 0x80000000) == 0)
    {
      v93 = 0;
      v94 = 0;
      while (1)
      {
        v95 = *(v91 - 8);
        if (v112 > 2 * v95)
        {
          v96 = 2 * v95;
          v97 = v96 + 2 <= v112 || v112 - v96 == 2;
          v98 = v97;
          if (v97)
          {
            v99 = *(v113 + v96);
          }

          else
          {
            v99 = *(v113 + v96);
          }

          v100 = v99 - *v91;
          if (v100 + 65537 < v100)
          {
            v100 += 65537;
          }

          if (HIWORD(v100))
          {
            goto LABEL_85;
          }

          v101 = v100 ^ v99;
          v92.i32[0] = v101;
          v92 = vcnt_s8(v92);
          v92.i16[0] = vaddlv_u8(v92);
          v94 += v92.i32[0];
          if (v101 <= 0xFF)
          {
            v102 = v93;
          }

          else
          {
            v102 = v93 + 1;
          }

          if (v101)
          {
            v93 = v102 + 1;
          }

          else
          {
            v93 = v102;
          }

          if (v98)
          {
            *(v113 + v96) = v100;
          }

          else
          {
            *(v113 + v96) = v100;
          }
        }

        ++v91;
        v103 = v93;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_84:
    v94 = 0;
    LODWORD(v93) = 0;
LABEL_85:
    v103 = 0xFFFFFFFFLL;
    goto LABEL_86;
  }

  v94 = 0;
  LODWORD(v93) = 0;
  v103 = 0xFFFFFFFFLL;
  a4 = v111;
LABEL_86:
  free(v62);
  if (a4 && (v103 & 0x80000000) == 0)
  {
    v104 = a4[1] + v93;
    *a4 += v94;
    a4[1] = v104;
  }

LABEL_90:
  v108 = *MEMORY[0x29EDCA608];
  return v103;
}

uint64_t ecc65537PolyEval(int a1, uint64_t a2, int a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v5 = a1 + 1;
  v6 = (a2 + 4 * a1 - 4);
  do
  {
    if (a3 && result && !(result * a3))
    {
      v7 = 1;
    }

    else
    {
      v7 = (result * a3) - ((result * a3) >> 16);
      if (v7 + 65537 < v7)
      {
        v7 += 65537;
      }
    }

    v8 = *v6--;
    v9 = v7 + v8;
    if (v9 - 65537 >= v9)
    {
      result = v9;
    }

    else
    {
      result = v9 - 65537;
    }

    --v5;
  }

  while (v5 > 1);
  return result;
}

uint64_t ecc65537Triangulate(int a1, int a2, uint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  LODWORD(v5) = 0;
  v6 = a3 + 64;
  v7 = a3;
  v8 = 1;
  while (v4 >= a2)
  {
    LODWORD(v12) = v5;
LABEL_12:
    v5 = v3;
    if (v4 == a2)
    {
      return v5;
    }

    v14 = 16 * v3;
    if (v3 != v12 && a2 > 0)
    {
      v15 = 0;
      v16 = a3 + 64 * v12;
      do
      {
        v17 = *(v16 + v15);
        *(v16 + v15) = *(v7 + v15);
        *(v7 + v15) = v17;
        v15 += 4;
      }

      while (4 * a2 != v15);
    }

    if (++v3 < a1)
    {
      v18 = *(a3 + 4 * v14 + 4 * v4);
      v19 = a3 + 4 * v4;
      v20 = (a3 + 4 * v14 + 4 * (v4 + 1));
      v21 = v8;
      v22 = (v6 + 4 * (v4 + 1));
      do
      {
        v23 = *(v19 + (v21 << 6));
        if (v23)
        {
          *(v19 + (v21 << 6)) = 0;
          if (v4 + 1 < a2)
          {
            v24 = a2 - 1 - v4;
            v25 = v22;
            v26 = v20;
            do
            {
              if (v18 && (*v25 ? (v27 = *v25 * v18 == 0) : (v27 = 0), v27))
              {
                v28 = 1;
              }

              else
              {
                v28 = (*v25 * v18) - ((*v25 * v18) >> 16);
                if (v28 + 65537 < v28)
                {
                  v28 += 65537;
                }
              }

              v30 = *v26++;
              v29 = v30;
              v31 = v30 * v23;
              v32 = (v30 * v23) - ((v30 * v23) >> 16);
              v33 = v32 + 65537;
              if (v32 + 65537 >= v32)
              {
                v33 = v32;
              }

              if (v29)
              {
                v34 = v31 == 0;
              }

              else
              {
                v34 = 0;
              }

              if (v34)
              {
                v33 = 1;
              }

              v35 = v28 - v33;
              if (v35 + 65537 < v35)
              {
                v35 += 65537;
              }

              *v25 = v35;
              v25 += 2;
              --v24;
            }

            while (v24);
          }
        }

        ++v21;
        v22 += 32;
      }

      while (v21 != a1);
    }

    ++v8;
    v7 += 64;
    v6 += 64;
    if (v3 == a1)
    {
      return a1;
    }
  }

  v9 = v4;
  v10 = (v7 + 4 * v4);
  while (2)
  {
    v11 = v10;
    v12 = v3;
    do
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        v4 = v9;
        goto LABEL_12;
      }

      ++v12;
    }

    while (a1 != v12);
    ++v9;
    ++v10;
    if (v9 != a2)
    {
      continue;
    }

    return v3;
  }
}

uint64_t ecc65537Solve(int a1, int *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 <= 0)
  {
    v26 = 0;
    *(a3 + 4 * a1) = 1;
  }

  else
  {
    v5 = a1;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 17;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      --v6;
    }

    while (v6);
    *(a3 + 4 * a1) = 1;
    v9 = a1;
    v10 = 17 * a1 - 16;
    v11 = a1;
    do
    {
      if (v11 <= v5)
      {
        v12 = 0;
        v13 = v10;
        v14 = v9;
        do
        {
          v15 = *(a3 + 4 * v14);
          v16 = a2[v13];
          if (v15)
          {
            v17 = v16 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v16 * v15 == 0)
          {
            v19 = 1;
          }

          else
          {
            v19 = (v16 * v15) - ((v16 * v15) >> 16);
            if (v19 + 65537 < v19)
            {
              v19 += 65537;
            }
          }

          v20 = v19 + v12;
          if (v20 - 65537 >= v20)
          {
            v12 = v20;
          }

          else
          {
            v12 = v20 - 65537;
          }

          --v13;
          v21 = v11 < v14--;
        }

        while (v21);
      }

      else
      {
        v12 = 0;
      }

      v22 = ecc65537Inv(a2[17 * v11 - 17]);
      if (v12 && (v22 ? (v23 = v22 * v12 == 0) : (v23 = 0), v23))
      {
        v24 = 1;
      }

      else
      {
        v24 = (v22 * v12) - ((v22 * v12) >> 16);
        if (v24 + 65537 < v24)
        {
          v24 += 65537;
        }
      }

      if (65537 - v24 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = 65537 - v24;
      }

      *(a3 + 4 * (v11 - 1)) = v25;
      v10 -= 16;
      v21 = v11-- <= 1;
    }

    while (!v21);
    return 0;
  }

  return v26;
}

uint64_t ecc65537Inv(uint64_t a1)
{
  if (a1 == 1)
  {
    LODWORD(v1) = 1;
  }

  else
  {
    v2 = 0;
    v3 = 1;
    v4 = 65537;
    do
    {
      if (a1 <= v4)
      {
        v5 = -1;
        do
        {
          v6 = a1 << (v5 + 2);
          ++v5;
        }

        while (v6 <= v4);
        v4 = (v4 - (a1 << v5));
        v2 = (v2 - (v3 << v5));
      }

      v1 = v2;
      v7 = v4;
      v2 = v3;
      v3 = v1;
      v4 = a1;
      a1 = v7;
    }

    while (v7 != 1);
  }

  v8 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v1 + 65537 * (((v1 & ~(v1 >> 31)) - (v1 + (v1 >> 31))) / 0x10001 + (v1 >> 31));
  }

  return v8 - ((((2147450881 * v9) >> 32) >> 15) | (((2147450881 * v9) >> 32) >> 15 << 16));
}

uint64_t ParallelCompressionGetCompressedSize(uint64_t a1, unint64_t a2, int a3)
{
  v3 = a2;
  if (a2 >= 0x400)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0;
    v7 = IMemStreamCreate(a1, a2);
    if (v7)
    {
      DWORD2(v20) = a3;
      LODWORD(v20) = 0;
      DWORD1(v20) = getDefaultNThreads();
      *&v21 = 0x200000;
      *(&v21 + 1) = IMemStreamRead;
      *(&v22 + 1) = v7;
      *&v23 = getCompressedSizeCounterProc;
      v24 = &v19;
      if (!ParallelCompressionEncode(&v20, v8, v9, v10, v11, v12, v13, v14))
      {
        if (v19 < v3)
        {
          v3 = v19;
        }

        goto LABEL_9;
      }

      v15 = "ParallelCompressionEncode";
      v16 = 75;
    }

    else
    {
      v15 = "IMemStreamCreate";
      v16 = 64;
    }

    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ParallelCompressionGetCompressedSize", v16, 39, 0, v15, v5, v6, v18);
    v3 = -1;
LABEL_9:
    OMemStreamDestroy(v7);
  }

  return v3;
}

uint64_t IDecoderStreamThreadProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ParallelCompressionDecode(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamThreadProc", 100, 39, 0, "decoder failed", v8, v9, vars0);
  }

  return 0;
}

uint64_t IDecoderStreamCreate(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = malloc(0x48uLL);
  v18 = v10;
  if (v10)
  {
    v10[2] = 0u;
    v10[3] = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    v19 = SharedBufferCreate(a4, v11, v12, v13, v14, v15, v16, v17);
    *(v18 + 64) = v19;
    if (!v19)
    {
      v23 = "fail to init buffer";
      v24 = 112;
      v22 = 0;
      goto LABEL_7;
    }

    *v18 = 0;
    *(v18 + 4) = a5;
    *(v18 + 8) = a1;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = SharedBufferWrite;
    *(v18 + 40) = SharedBufferAbort;
    *(v18 + 48) = v19;
    if (createThread((v18 + 56), IDecoderStreamThreadProc, v18, 0))
    {
      v22 = *__error();
      v23 = "failed to start decoder thread";
      v24 = 125;
LABEL_7:
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", v24, 39, v22, v23, v20, v21, v29);
      IDecoderStreamDestroy(v18);
      return 0;
    }
  }

  else
  {
    v25 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamCreate", 107, 39, *v25, "malloc", v26, v27, v29);
  }

  return v18;
}

void IDecoderStreamDestroy(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a1[8])
    {
      while (1)
      {
        v2 = SharedBufferRead(a1[8], v11, 0x400uLL);
        if (v2 < 0)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_7;
        }
      }

      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 155, 39, 0, "flushing shared buffer", v3, v4, v10);
    }

LABEL_7:
    v5 = a1[7];
    if (v5 && joinThread(v5))
    {
      v6 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "IDecoderStreamDestroy", 163, 39, *v6, "failed to join decoder thread", v7, v8, v10);
    }

    SharedBufferDestroy(a1[8]);
    free(a1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t IDecoderStreamRead(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    return SharedBufferRead(*(a1 + 64), a2, a3);
  }

  else
  {
    return -1;
  }
}

size_t IDecoderStreamAbort(size_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (result)
  {
    return SharedBufferAbort(*(result + 64), a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t ILowMemoryDecoderStreamCreate(uint64_t (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3, size_t a4)
{
  v8 = malloc(0xD8uLL);
  v9 = v8;
  if (v8)
  {
    v8[26] = 0;
    *(v8 + 11) = 0u;
    *(v8 + 12) = 0u;
    *(v8 + 9) = 0u;
    *(v8 + 10) = 0u;
    *(v8 + 7) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 5) = 0u;
    *(v8 + 6) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    if (a4 <= 0x1000)
    {
      a4 = 4096;
    }

    *v8 = 0uLL;
    v10 = MemBufferCreate(a4);
    *(v9 + 56) = v10;
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = MemBufferCreate(a4);
    *(v9 + 64) = v11;
    if (!v11)
    {
      goto LABEL_27;
    }

    *(v9 + 32) = -1;
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    if (MemBufferFillFromIStream(*(v9 + 56), 0xCuLL, a1, a3) != 12)
    {
      v19 = "couldn't read enough header bytes from compressed file";
      v20 = 465;
      goto LABEL_26;
    }

    DataPtr = MemBufferGetDataPtr(*(v9 + 56));
    if ((*(v9 + 32) & 0x80000000) != 0)
    {
      v15 = DataPtr;
      if (*DataPtr == 25200 && *(DataPtr + 2) == 122)
      {
        v25 = 0;
        while (1)
        {
          v26 = v15[3];
          if (v26 == PCompressGetDecoderKey(v25))
          {
            break;
          }

          if (++v25 == 7)
          {
            if ((*(v9 + 32) & 0x80000000) == 0)
            {
              return v9;
            }

            goto LABEL_12;
          }
        }

        *(v9 + 40) = bswap64(*(v15 + 4));
        *(v9 + 48) = PCompressGetDecoderFilter(v25);
        MemBufferDecreaseSize(*(v9 + 56), 0xCuLL, v36, v37, v38, v39, v40, v41);
        if ((MemBufferIncreaseCapacity(*(v9 + 56), *(v9 + 40)) & 0x8000000000000000) != 0)
        {
          v19 = "MemBufferIncreaseCapacity in";
          v20 = 487;
        }

        else
        {
          if ((MemBufferIncreaseCapacity(*(v9 + 64), *(v9 + 40)) & 0x8000000000000000) == 0)
          {
            *(v9 + 32) = 0;
            return v9;
          }

          v19 = "MemBufferIncreaseCapacity out";
          v20 = 488;
        }

        goto LABEL_26;
      }

LABEL_12:
      if (*v15 == 1484404733 && *(v15 + 2) == 90)
      {
        if (!lzma_stream_decoder())
        {
          *(v9 + 32) = 1;
          return v9;
        }

        v19 = "lzma_stream_decoder";
        v20 = 503;
        goto LABEL_26;
      }

      v18 = *v15 == 23106 && v15[2] == 104;
      if (v18 && v15[3] - 49 <= 8)
      {
        if (BZ2_bzDecompressInit((v9 + 72), 0, 0))
        {
          v19 = "BZ2_bzDecompressInit";
          v20 = 514;
LABEL_26:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", v20, 39, 0, v19, v12, v13, v47);
LABEL_27:
          ILowMemoryDecoderStreamDestroy(v9);
          return 0;
        }

        v46 = 3;
LABEL_61:
        *(v9 + 32) = v46;
        return v9;
      }

      v27 = *v15;
      if (v27 == 120)
      {
        if (-1108378657 * (v15[1] | 0x7800u) <= 0x8421084)
        {
          if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB) == COMPRESSION_STATUS_OK)
          {
            MemBufferDecreaseSize(*(v9 + 56), 2uLL, v42, v43, v44, v45, v12, v13);
            *(v9 + 32) = 2;
            return v9;
          }

          v19 = "compression_stream_init";
          v20 = 570;
          goto LABEL_26;
        }
      }

      else if (v27 == 31 && v15[1] == 139 && v15[2] == 8)
      {
        if (MemBufferFillFromIStream(*(v9 + 56), 0x1000uLL, *v9, *(v9 + 16)) < 0)
        {
          v19 = "reading gzip header data";
          v20 = 525;
          goto LABEL_26;
        }

        DataSize = MemBufferGetDataSize(*(v9 + 56));
        if ((v15[3] & 4) != 0)
        {
          if (DataSize <= 0xB)
          {
            v19 = "parsing gzip header";
            v20 = 531;
            goto LABEL_26;
          }

          v33 = *(v15 + 5) + 12;
          if (v33 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 534;
            goto LABEL_26;
          }
        }

        else
        {
          v33 = 10;
        }

        if ((v15[3] & 8) != 0)
        {
          v34 = v33 + 2;
          if (v33 + 2 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 539;
            goto LABEL_26;
          }

          if (v33 + 2 < DataSize)
          {
            while (v15[v33 + 1])
            {
              if (DataSize - 2 == ++v33)
              {
                v34 = DataSize;
                goto LABEL_43;
              }
            }

            v34 = v33 + 2;
          }
        }

        else
        {
          v34 = v33;
        }

LABEL_43:
        if ((v15[3] & 0x10) != 0)
        {
          v35 = v34 + 2;
          if (v34 + 2 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 545;
            goto LABEL_26;
          }

          if (v34 + 2 < DataSize)
          {
            while (v15[v34 + 1])
            {
              if (DataSize - 2 == ++v34)
              {
                v35 = DataSize;
                goto LABEL_45;
              }
            }

            v35 = v34 + 2;
          }
        }

        else
        {
          v35 = v34;
        }

LABEL_45:
        if ((v15[3] & 2) != 0)
        {
          v35 += 2;
          if (v35 > DataSize)
          {
            v19 = "parsing gzip header";
            v20 = 551;
            goto LABEL_26;
          }
        }

        MemBufferDecreaseSize(*(v9 + 56), v35, v29, v30, v31, v32, v12, v13);
        if (compression_stream_init((v9 + 72), COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
        {
          v19 = "compression_stream_init";
          v20 = 557;
          goto LABEL_26;
        }

        v46 = 2;
        goto LABEL_61;
      }

      v19 = "Could not identify compressed stream format";
      v20 = 579;
      goto LABEL_26;
    }
  }

  else
  {
    v21 = __error();
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreate", 452, 39, *v21, "malloc", v22, v23, v47);
  }

  return v9;
}

void ILowMemoryDecoderStreamDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    switch(v2)
    {
      case 3:
        BZ2_bzDecompressEnd((a1 + 72));
        break;
      case 2:
        compression_stream_destroy((a1 + 72));
        break;
      case 1:
        lzma_end();
        break;
    }

    MemBufferDestroy(*(a1 + 56));
    MemBufferDestroy(*(a1 + 64));
    OMemStreamDestroy(*(a1 + 24));

    free(a1);
  }
}

uint64_t ILowMemoryDecoderStreamCreateWithBuffer(uint64_t a1, uint64_t a2, size_t a3)
{
  v4 = IMemStreamCreate(a1, a2);
  if (v4)
  {
    v7 = v4;
    result = ILowMemoryDecoderStreamCreate(IMemStreamRead, IMemStreamAbort, v4, a3);
    if (result)
    {
      *(result + 24) = v7;
      return result;
    }

    OMemStreamDestroy(v7);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamCreateWithBuffer", 596, 39, 0, "IMemStreamCreate failed", v5, v6, v9);
  }

  return 0;
}

uint64_t ILowMemoryDecoderStreamRead(uint64_t a1, char *a2, size_t a3)
{
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!a3)
      {
        return v7;
      }

      DataSize = MemBufferGetDataSize(*(a1 + 64));
      if (DataSize)
      {
        if (DataSize >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = DataSize;
        }

        DataPtr = MemBufferGetDataPtr(*(a1 + 64));
        memcpy(a2, DataPtr, v9);
        MemBufferDecreaseSize(*(a1 + 64), v9, v11, v12, v13, v14, v15, v16);
        v7 += v9;
        a3 -= v9;
        if (!a3)
        {
          return v7;
        }

        a2 += v9;
      }

      if (*(a1 + 208))
      {
        return v7;
      }

      v17 = *(a1 + 56);
      if (!*(a1 + 32))
      {
        v43 = MemBufferGetDataSize(v17);
        v44 = v43;
        if (v43 <= 0xF)
        {
          if (MemBufferFillFromIStream(*(a1 + 56), 16 - v43, *a1, *(a1 + 16)) < 0)
          {
            v107 = "reading block header failed";
            v108 = 645;
            goto LABEL_78;
          }

          v45 = MemBufferGetDataSize(*(a1 + 56));
          if (!v45)
          {
            *(a1 + 208) = 1;
            return v7;
          }

          v44 = v45;
        }

        v46 = MemBufferGetDataPtr(*(a1 + 56));
        v52 = *v46;
        v51 = v46[1];
        v53 = bswap64(*v46);
        v54 = bswap64(v51);
        v55 = *(a1 + 40);
        if (v53 > v55 || v54 > v55)
        {
          v107 = "invalid block header";
          v108 = 655;
          goto LABEL_78;
        }

        MemBufferDecreaseSize(*(a1 + 56), 0x10uLL, v47, v48, v49, v50, v18, v19);
        v57 = v54 >= v44 - 16;
        v58 = v54 - (v44 - 16);
        if (v58 != 0 && v57)
        {
          if (MemBufferFillFromIStream(*(a1 + 56), v58, *a1, *(a1 + 16)) != v58)
          {
            v107 = "reading block payload failed";
            v108 = 665;
            goto LABEL_78;
          }

          MemBufferGetDataSize(*(a1 + 56));
        }

        if (v52 == v51)
        {
          FreePtr = MemBufferGetFreePtr(*(a1 + 64));
          v60 = MemBufferGetDataPtr(*(a1 + 56));
          memcpy(FreePtr, v60, v53);
        }

        else
        {
          v97 = *(a1 + 48);
          v98 = MemBufferGetFreePtr(*(a1 + 64));
          v99 = MemBufferGetDataPtr(*(a1 + 56));
          if (v97(v98, v53, v99, v54) != v53)
          {
            v107 = "decoding block payload failed";
            v108 = 677;
            goto LABEL_78;
          }
        }

        MemBufferDecreaseSize(*(a1 + 56), v54, v61, v62, v63, v64, v18, v19);
        MemBufferIncreaseSize(*(a1 + 64), v53, v100, v101, v102, v103, v104, v105);
        goto LABEL_64;
      }

      if (MemBufferFillFromIStream(v17, 0xFFFFFFFFFFFFFFFFLL, *a1, *(a1 + 16)) < 0)
      {
        v107 = "reading payload failed";
        v108 = 687;
        goto LABEL_78;
      }

      v20 = MemBufferGetDataPtr(*(a1 + 56));
      v21 = MemBufferGetDataSize(*(a1 + 56));
      v22 = MemBufferGetFreePtr(*(a1 + 64));
      FreeSize = MemBufferGetFreeSize(*(a1 + 64));
      v26 = FreeSize;
      v27 = *(a1 + 32);
      switch(v27)
      {
        case 1:
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 96) = v22;
          *(a1 + 104) = FreeSize;
          v80 = lzma_code();
          v87 = v80;
          if (v80 > 0xA || ((1 << v80) & 0x403) == 0)
          {
            pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 738, 39, 0, "decoding lzma payload", v85, v86, v110);
            v106 = 1;
            goto LABEL_62;
          }

          v88 = *(a1 + 72);
          v89 = *(a1 + 96);
          MemBufferDecreaseSize(*(a1 + 56), v88 - v20, v81, v82, v83, v84, v85, v86);
          if (v89 == v22 && v88 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v89 - v22, v90, v91, v92, v93, v94, v95);
          if (v87 != 1)
          {
            v106 = 14;
LABEL_62:
            if (v87 > 0xA || ((1 << v87) & 0x403) == 0)
            {
              continue;
            }

            goto LABEL_64;
          }

          break;
        case 3:
          *(a1 + 72) = v20;
          *(a1 + 80) = v21;
          *(a1 + 96) = v22;
          *(a1 + 104) = FreeSize;
          v65 = BZ2_bzDecompress((a1 + 72));
          if (v65 < 0)
          {
            v107 = "decoding bzip2 payload";
            v108 = 722;
            goto LABEL_78;
          }

          v70 = v65;
          v71 = *(a1 + 72);
          v72 = *(a1 + 96);
          MemBufferDecreaseSize(*(a1 + 56), v71 - v20, v66, v67, v68, v69, v18, v19);
          if (v72 == v22 && v71 == v20)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v72 - v22, v73, v74, v75, v76, v77, v78);
          if (v70 != 4)
          {
            goto LABEL_64;
          }

          break;
        case 2:
          *(a1 + 88) = v20;
          *(a1 + 96) = v21;
          *(a1 + 72) = v22;
          *(a1 + 80) = FreeSize;
          v28 = compression_stream_process((a1 + 72), 0);
          if (v28 < 0)
          {
            v107 = "decoding zlib payload";
            v108 = 706;
            goto LABEL_78;
          }

          v33 = v28;
          v34 = *(a1 + 96);
          v35 = *(a1 + 80);
          MemBufferDecreaseSize(*(a1 + 56), v21 - v34, v29, v30, v31, v32, v18, v19);
          if (v26 == v35 && v21 == v34)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          MemBufferIncreaseSize(*(a1 + 64), v26 - v35, v36, v37, v38, v39, v40, v41);
          if (v33 != COMPRESSION_STATUS_END)
          {
            goto LABEL_64;
          }

          break;
        default:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", 748, 39, 0, "invalid decoder: %d", v24, v25, *(a1 + 32));
          return -1;
      }

      *(a1 + 208) = 1;
LABEL_64:
      if (v6 >= 3)
      {
        v107 = "Truncated stream";
        v108 = 753;
LABEL_78:
        pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/IOCompressedStreams.c", "ILowMemoryDecoderStreamRead", v108, 39, 0, v107, v18, v19, v110);
        return -1;
      }

      v106 = 0;
    }

    while (!v106);
  }

  return -1;
}

uint64_t rawimg_force_in_place(void *a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 2120) <= a3[265])
  {
    v12 = a3[265];
  }

  else
  {
    v12 = *(a4 + 2120);
  }

  v15 = AAFileStreamOpenWithPath(*(a4 + 2048), 0, 0);
  if (!v15)
  {
    v23 = "AAFileStreamOpenWithPath";
    v24 = 234;
LABEL_123:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v24, 141, 0, v23, v13, v14, v133);
    v48 = 0;
    v45 = 0;
    v38 = 0;
    v35 = 0;
    v17 = 0;
LABEL_124:
    v115 = 0;
    goto LABEL_125;
  }

  v16 = (a5 + 0x3FFF) >> 14;
  v17 = calloc(1uLL, 0x68uLL);
  v18 = calloc(1uLL, 0x28uLL);
  v21 = v18;
  if ((v16 & 0x80000000) != 0)
  {
    v25 = "too little excess";
    v26 = 184;
LABEL_122:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "aaSimStreamOpen", v26, 141, 0, v25, v19, v20, v133);
    free(v17);
    SimStreamClose(v21, v108, v109, v110, v111, v112, v113, v114);
    v23 = "aaSimStreamOpen";
    v24 = 236;
    goto LABEL_123;
  }

  if (!v17 || !v18)
  {
    v25 = "aaCalloc";
    v26 = 185;
    goto LABEL_122;
  }

  *v18 = v15;
  *(v18 + 4) = (v12 + 0x3FFF) >> 14;
  *(v18 + 8) = v16;
  *(v18 + 9) = a6;
  v22 = ((v12 + 0x3FFF) >> 14);
  if (v22 >= 0x3333333333333334)
  {
    *__error() = 12;
    v21[1] = 0;
LABEL_121:
    v25 = "aaCalloc";
    v26 = 195;
    goto LABEL_122;
  }

  v27 = calloc(v22, 5uLL);
  v21[1] = v27;
  if (!v27)
  {
    goto LABEL_121;
  }

  AACustomByteStreamSetData(v17, v21);
  AACustomByteStreamSetCloseProc(v17, SimStreamClose);
  AACustomByteStreamSetPReadProc(v17, SimStreamPRead);
  AACustomByteStreamSetPWriteProc(v17, SimStreamPWrite);
  v17[11] = SimStreamSimulate;
  v28 = *v17;
  v29 = aaSegmentStreamOpen(v17, a3);
  v35 = v29;
  if (!v29)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 241, 141, 0, "aaSegmentStreamOpen", v33, v34, v133);
    v48 = 0;
    v45 = 0;
    v38 = 0;
    goto LABEL_124;
  }

  v38 = aaForkInputStreamOpen(v29, a3, 0, v30, v31, v32, v33, v34);
  if (!v38)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 243, 141, 0, "aaForkInputStreamOpen", v36, v37, v133);
    v48 = 0;
    v45 = 0;
    goto LABEL_124;
  }

  v39 = aaSegmentStreamOpen(v17, a4);
  v45 = v39;
  if (!v39)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 247, 141, 0, "aaSegmentStreamOpen", v43, v44, v133);
    v48 = 0;
    goto LABEL_124;
  }

  v153 = v28;
  v48 = aaForkInputStreamOpen(v39, a4, 0, v40, v41, v42, v43, v44);
  if (!v48)
  {
    v106 = "aaForkOutputStreamOpen";
    v107 = 249;
LABEL_144:
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v107, 141, 0, v106, v46, v47, v133);
    goto LABEL_124;
  }

  v143 = 0;
  v142 = vnegq_f64(0);
  v141 = 1;
  v152 = v45;
  v151 = a6;
  v158 = a2;
  v159 = a1;
LABEL_19:
  bzero(*(v153 + 8), 5 * *(v153 + 16));
  v49 = *(v153 + 16);
  *(v153 + 24) = 0;
  *(v153 + 20) = v49;
  v50 = *a2;
  if (*a2)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      v53 = (*a1 + 24 * v52);
      if ((*v53 & 0x8000000000000000) == 0)
      {
        v54 = *v53;
      }

      else
      {
        v54 = 0x8000000000000000 - *v53;
      }

      v55 = v53[2];
      v56 = 0x8000000000000000 - v55;
      if (v55 >= 0)
      {
        v56 = v55;
      }

      if (v54)
      {
        v148 = v56;
        v154 = v52;
        for (i = 0; i < v54; i += v58)
        {
          if (v54 - i >= 0x10000)
          {
            v58 = 0x10000;
          }

          else
          {
            v58 = v54 - i;
          }

          if (v58 != aaByteStreamSimulate(v38))
          {
            v129 = "aaByteStreamSimulate";
            v130 = 270;
            goto LABEL_146;
          }
        }

        a1 = v159;
        v50 = *v158;
        a6 = v151;
        v52 = v154;
        v56 = v148;
      }

      v51 += v54 + v56;
      ++v52;
    }

    while (v52 < v50);
  }

  v59 = 1;
  v60 = v50;
  v61 = v158;
  v145 = v35;
LABEL_36:
  if (!v60)
  {
    goto LABEL_63;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v139 = v59;
  while (1)
  {
    v65 = &(*v159)[3 * v64];
    v66 = v65[1];
    v67 = 0x8000000000000000 - *v65;
    if ((*v65 & 0x8000000000000000) == 0)
    {
      v67 = *v65;
    }

    if (v66 >= 0)
    {
      v68 = v65[1];
    }

    else
    {
      v68 = 0x8000000000000000 - v66;
    }

    v69 = v65[2];
    if (v69 < 0)
    {
      v69 = 0x8000000000000000 - v69;
    }

    v155 = v64;
    if (v59 == 2)
    {
      v63 += v67;
      if (v63 >= *(a4 + 2056))
      {
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    v146 = v68;
    v149 = v69;
    if (v67)
    {
      break;
    }

LABEL_56:
    v62 += v149;
    v59 = v139;
    if (v139 != 1)
    {
      v35 = v145;
      v68 = v146;
LABEL_60:
      v73 = aaByteStreamSimulate(v48);
      v61 = v158;
      v64 = v155;
      if (v68 != v73)
      {
        v129 = "aaByteStreamSimulate";
        v130 = 310;
        goto LABEL_146;
      }

      goto LABEL_61;
    }

    v61 = v158;
    v64 = v155;
    v35 = v145;
    v68 = v146;
    if (v63 < *(a4 + 2056))
    {
      goto LABEL_60;
    }

LABEL_61:
    v63 += v68;
    ++v64;
    v50 = *v61;
    if (v64 >= *v61)
    {
      v60 = *v61;
      a6 = v151;
LABEL_63:
      if (++v59 != 3)
      {
        goto LABEL_36;
      }

      v74 = *(v153 + 28);
      if (a6 >= 3)
      {
        fprintf(*MEMORY[0x29EDCA610], "ForceInPlace %d: excess_pages=%d/%d, converted bytes=%llu, %zu controls\n", v141, v74, *(v153 + 32), v143, v50);
        v74 = *(v153 + 28);
      }

      v75 = *(v153 + 32);
      v76 = __OFSUB__(v74, v75);
      v77 = v74 - v75;
      if ((v77 < 0) ^ v76 | (v77 == 0))
      {
        v132 = merge_controls(*v159, v158, a4);
        *v159 = v132;
        if (v132)
        {
          if (v151 >= 2)
          {
            fprintf(*MEMORY[0x29EDCA610], "ForceInPlace: %zu controls. Dropped %llu bytes to stay within budget.\n", *v158, v143);
          }

          v115 = 1;
        }

        else
        {
          v129 = "merge_controls";
          v130 = 447;
LABEL_146:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v130, 141, 0, v129, v46, v47, v133);
          v115 = 0;
        }

        v45 = v152;
        goto LABEL_125;
      }

      v78 = v77 + 1;
      v79 = (v78 >> 1) << 14;
      if (v78 < 2)
      {
        v80 = 1;
        a2 = v158;
        a1 = v159;
        v81 = v143;
        goto LABEL_118;
      }

      v137 = 0;
      v134 = -1;
      v82 = 1;
      a2 = v158;
      a1 = v159;
      v81 = v143;
      v83 = v142;
      while (2)
      {
        v84 = *(a4 + 2080);
        v85 = *a2;
        if (*a2)
        {
          v86 = 0;
          v135 = v82 - 1;
          v136 = v82;
          v87 = 24 * v85;
          while (1)
          {
            v88 = *a1 + v87;
            v89 = (v88 - 24);
            v90 = *(v88 - 24);
            v91 = vbslq_s8(vcltzq_s64(v90), vsubq_s64(v83, v90), v90);
            v92 = *(v88 - 8);
            v93 = 0x8000000000000000 - v92;
            if (v92 >= 0)
            {
              v93 = *(v88 - 8);
            }

            v84 -= vaddvq_s64(v91);
            if (!v79)
            {
              goto LABEL_97;
            }

            v94 = v91.i64[0];
            if (!v91.i64[0])
            {
              goto LABEL_97;
            }

            if (v82 == 1)
            {
              break;
            }

            if (v82 != 2)
            {
              if (v82 != 3)
              {
                goto LABEL_97;
              }

              v95 = *(a4 + 2056);
              goto LABEL_89;
            }

            if (v84 >= *(a4 + 2072))
            {
              if (v91.i64[0] > v79)
              {
                v96 = v134;
                v97 = v137;
                if (v134 > v91.i64[0])
                {
                  v97 = v88 - 24;
                }

                v137 = v97;
                if (v134 >= v91.i64[0])
                {
                  v96 = v91.i64[0];
                }

                v134 = v96;
                goto LABEL_97;
              }

              goto LABEL_92;
            }

LABEL_97:
            v87 -= 24;
            --v85;
            a1 = v159;
            if (!v85)
            {
              v80 = v86 == 0;
              a2 = v158;
              goto LABEL_100;
            }
          }

          if (v84 < *(a4 + 2056))
          {
            goto LABEL_97;
          }

          v95 = *(a4 + 2072);
LABEL_89:
          if (v84 < v95)
          {
            if (v91.i64[0] >= v79)
            {
              v94 = v79;
            }

LABEL_92:
            if (v151 >= 4)
            {
              v98 = v79;
              v144 = v81;
              v156 = v84;
              v147 = v94;
              v150 = v88;
              v140 = v93;
              v138 = v91;
              fprintf(*MEMORY[0x29EDCA610], "Dropping %llu bytes at %llu, needed=%llu bytes, type %s\n", v94, v84, v79, rawimg_force_in_place_pass_name[v135]);
              v91 = v138;
              v93 = v140;
              v94 = v147;
              v88 = v150;
              v84 = v156;
              v82 = v136;
              v81 = v144;
              v79 = v98;
              v83 = v142;
            }

            v90.i64[0] = v94;
            v99.i64[0] = vsubq_s64(v91, v90).u64[0];
            v99.i64[1] = vaddq_s64(v91, vdupq_n_s64(v94)).i64[1];
            *v89 = vbslq_s8(vcltzq_s64(v99), vsubq_s64(v83, v99), v99);
            v100 = v94 + v93;
            if ((v94 + v93) < 0)
            {
              v100 = 0x8000000000000000 - (v94 + v93);
            }

            *(v88 - 8) = v100;
            v81 += v94;
            v79 -= v94;
            v86 = 1;
            goto LABEL_97;
          }

          goto LABEL_97;
        }

        v80 = 1;
LABEL_100:
        if (v84)
        {
          v129 = "control sequence broken";
          v130 = 411;
          goto LABEL_146;
        }

        if (v79)
        {
          v101 = v80;
        }

        else
        {
          v101 = 0;
        }

        if (v82 != 3 || !v101 || !v137)
        {
          v102 = !v80;
          if (v82 > 2)
          {
            v102 = 1;
          }

          if (v102)
          {
            goto LABEL_118;
          }

          ++v82;
          if (!v79)
          {
            goto LABEL_118;
          }

          continue;
        }

        break;
      }

      v103 = v81;
      if (*v137 >= 0)
      {
        v104 = *v137;
      }

      else
      {
        v104 = 0x8000000000000000 - *v137;
      }

      v157 = *(v137 + 8);
      if (v151 >= 4)
      {
        fprintf(*MEMORY[0x29EDCA610], "Dropping copy fork with %llu bytes, needed=%llu bytesx\n", v104, v79);
      }

      v79 = 0;
      v80 = 0;
      *v137 = 0;
      v105 = vaddq_s64(vbslq_s8(vcltzq_s64(v157), vsubq_s64(v142, v157), v157), vdupq_n_s64(v104));
      *(v137 + 8) = vbslq_s8(vcltzq_s64(v105), vsubq_s64(v142, v105), v105);
      v81 = v104 + v103;
      a2 = v158;
      a1 = v159;
LABEL_118:
      v143 = v81;
      ++v141;
      v45 = v152;
      a6 = v151;
      if (v80 && v79)
      {
        v106 = "no possible conversions";
        v107 = 441;
        goto LABEL_144;
      }

      goto LABEL_19;
    }
  }

  v70 = 0;
  while (1)
  {
    v71 = v67;
    if (v67 - v70 >= 0x10000)
    {
      v72 = 0x10000;
    }

    else
    {
      v72 = v67 - v70;
    }

    if (v72 != aaByteStreamSimulate(v38))
    {
      v131 = 298;
      goto LABEL_150;
    }

    if (v72 != aaByteStreamSimulate(v48))
    {
      break;
    }

    v62 += v72;
    v63 += v72;
    v70 += v72;
    v67 = v71;
    if (v70 >= v71)
    {
      goto LABEL_56;
    }
  }

  v131 = 299;
LABEL_150:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", v131, 141, 0, "aaByteStreamSimulate", v46, v47, v133);
  v115 = 0;
  v45 = v152;
  v35 = v145;
LABEL_125:
  if (AAByteStreamClose(v38) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 458, 141, 0, "AAByteStreamClose", v116, v117, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v35) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 459, 141, 0, "AAByteStreamClose", v118, v119, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v48) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 460, 141, 0, "AAByteStreamClose", v120, v121, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v45) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 461, 141, 0, "AAByteStreamClose", v122, v123, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v17) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 462, 141, 0, "AAByteStreamClose", v124, v125, v133);
    v115 = 0;
  }

  if (AAByteStreamClose(v15) < 0)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "rawimg_force_in_place", 463, 141, 0, "AAByteStreamClose", v126, v127, v133);
    v115 = 0;
  }

  if (v115)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *merge_controls(void *result, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = *result + result[1];
  v6 = result + 3;
  v7 = 1;
  do
  {
    v8 = *v6;
    v9 = v6[1];
    if (v5 == *(a3 + 2072))
    {
LABEL_8:
      ++v4;
      v13 = *v6;
      v14 = &result[3 * v4];
      v14[2] = v6[2];
      *v14 = v13;
      goto LABEL_17;
    }

    v10 = &result[3 * v4];
    v11 = v10[1];
    if (v8)
    {
      if (v11)
      {
        goto LABEL_8;
      }

      v12 = v10[2];
      if (v12)
      {
        goto LABEL_8;
      }

      v11 = 0;
    }

    else
    {
      v12 = v10[2];
    }

    *v10 += v8;
    v10[1] = v11 + v9;
    if (v12 < 0)
    {
      v12 = 0x8000000000000000 - v12;
    }

    v15 = v6[2];
    if (v15 < 0)
    {
      v15 = 0x8000000000000000 - v15;
    }

    v16 = __OFADD__(v15, v12);
    v17 = v15 + v12;
    if (v17 < 0 != v16)
    {
      v17 = 0x8000000000000000 - v17;
    }

    v10[2] = v17;
LABEL_17:
    v5 += v9 + v8;
    ++v7;
    v6 += 3;
  }

  while (v7 < *a2);
  v3 = v4 + 1;
LABEL_20:
  *a2 = v3;
  return result;
}

uint64_t SimStreamClose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (v9 < 1)
  {
    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  do
  {
    v13 = *v11;
    v11 = (v11 + 5);
    v10 += v13;
    --v12;
  }

  while (v12);
  if (v10)
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 148, 141, 0, "%i dangling reads", a7, a8, v10);
    v9 = *(a1 + 16);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = *(a1 + 24);
  if (*(a1 + 28) + v9 != *(a1 + 20) + v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 152, 141, "file + excess != written + free", a6, a7, a8, v17);
    v9 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  if (v9 < v15)
  {
    pc_log_info("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamClose", 154, 141, "file < written", a6, a7, a8, v17);
  }

  if (*(a1 + 36) >= 2)
  {
    fprintf(*MEMORY[0x29EDCA610], "SimStream: pages: %i file, %i written, %i free, %i excess (%iK)\n", *(a1 + 16), *(a1 + 24), *(a1 + 20), *(a1 + 28), 16 * *(a1 + 28));
  }

  free(*(a1 + 8));
  free(a1);
  return v14;
}

uint64_t SimStreamSimulate(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return a4;
  }

  if (a2 > 2)
  {
    v17 = "not implemented";
    v18 = 87;
    goto LABEL_20;
  }

  v9 = a5 + a4;
  v10 = *(a1 + 8);
  while (1)
  {
    v11 = v10 + 5 * (a5 >> 14);
    if (a2)
    {
      break;
    }

    if (!(*v11)++)
    {
      v14 = *(a1 + 20);
      *(a1 + 20) = v14 - 1;
      if (!v14)
      {
        v17 = "no free pages";
        v18 = 94;
        goto LABEL_20;
      }
    }

LABEL_17:
    a5 = (a5 & 0xFFFFFFFFFFFFC000) + 0x4000;
    if (a5 >= v9)
    {
      return a4;
    }
  }

  if (a2 != 1)
  {
    if (!*(v11 + 4))
    {
      *(v11 + 4) = 1;
      v15 = *(a1 + 20);
      if (v15)
      {
        *(a1 + 20) = v15 - 1;
      }

      else
      {
        ++*(a1 + 28);
      }

      ++*(a1 + 24);
    }

    goto LABEL_17;
  }

  if (*v11 > 0)
  {
    v12 = *v11 - 1;
    *v11 = v12;
    if (!v12)
    {
      ++*(a1 + 20);
    }

    goto LABEL_17;
  }

  v17 = "data not locked";
  v18 = 99;
LABEL_20:
  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/ParallelDiff/ImageDiff/ImageDiffInPlace.c", "SimStreamSimulate", v18, 141, 0, v17, a7, a8, v8);
  return -1;
}

int AEAContextDecryptAttributes(AEAContext context)
{
  v18 = *MEMORY[0x29EDCA608];
  v17 = 0;
  memset(__s, 0, sizeof(__s));
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (*(context + 684) && *(context + 341))
  {
    if ((aeaContextUnlock(context, &v11, __s, 0, 1, 0) & 0x80000000) != 0)
    {
      v4 = "unlock container";
      v5 = 18;
    }

    else
    {
      if ((v13 + v12 - 1) / v12 < 0xFFFFFFFF)
      {
        v6 = 0;
        v9 = v14;
        *(context + 2) = v13;
        *(context + 3) = v9;
        *(context + 8) = v15;
        v10 = v12;
        *context = v11;
        *(context + 1) = v10;
        goto LABEL_8;
      }

      v4 = "Invalid data size";
      v5 = 22;
    }
  }

  else
  {
    v4 = "invalid context";
    v5 = 15;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleEncryptedArchive/AEAContextValidate.c", "AEAContextDecryptAttributes", v5, 121, 0, v4, v1, v2, v11);
  v6 = -1;
LABEL_8:
  memset_s(__s, 0x104uLL, 0, 0x104uLL);
  memset_s(&v11, 0x48uLL, 0, 0x48uLL);
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

char *SharedBufferCreate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 - 0x100000000 > 0xFFFFFFFF00000000)
  {
    v9 = getpagesize();
    if (v9 <= 0x197)
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 252, 73, 0, "Incompatible page size", v10, v11, v39);
      return 0;
    }

    v14 = v9;
    if (a1 >> 2 < v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = (a1 >> 2) / v9;
    }

    v16 = v15 * v9;
    v17 = valloc(v9 + 4 * v16);
    v12 = v17;
    if (!v17)
    {
      v24 = __error();
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 262, 73, *v24, "malloc", v25, v26, v39);
      return v12;
    }

    *(v17 + 50) = 0;
    *(v17 + 23) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 21) = 0u;
    *(v17 + 22) = 0u;
    *(v17 + 19) = 0u;
    *(v17 + 20) = 0u;
    *(v17 + 17) = 0u;
    *(v17 + 18) = 0u;
    *(v17 + 15) = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 13) = 0u;
    *(v17 + 14) = 0u;
    *(v17 + 11) = 0u;
    *(v17 + 12) = 0u;
    *(v17 + 9) = 0u;
    *(v17 + 10) = 0u;
    *(v17 + 7) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 5) = 0u;
    *(v17 + 6) = 0u;
    *(v17 + 3) = 0u;
    *(v17 + 4) = 0u;
    *(v17 + 1) = 0u;
    *(v17 + 2) = 0u;
    *v17 = 0u;
    *(v17 + 48) = -1;
    atomic_store(2u, v17 + 101);
    *v17 = 0x600000000;
    v18 = calloc(6uLL, 4uLL);
    *(v12 + 1) = v18;
    if (v18)
    {
      if (pthread_mutex_init((v12 + 4), 0))
      {
        v22 = "SharedArrayInit: pthread_mutex_init failed\n";
        v23 = 56;
      }

      else
      {
        if (!pthread_cond_init((v12 + 20), 0))
        {
          *(v12 + 16) = 0x600000000;
          v31 = calloc(6uLL, 4uLL);
          *(v12 + 17) = v31;
          if (v31)
          {
            if (pthread_mutex_init((v12 + 36), 0))
            {
              v35 = "SharedArrayInit: pthread_mutex_init failed\n";
              v36 = 56;
            }

            else
            {
              if (!pthread_cond_init((v12 + 52), 0))
              {
                v37 = 0;
                for (i = v12 + 68; ; i += 4)
                {
                  *i = 0;
                  i[1] = 0;
                  *(i - 2) = v12 + v14;
                  *(i - 1) = v16;
                  if ((SharedArrayPush(v12 + 32, v37) & 0x80000000) != 0)
                  {
                    break;
                  }

                  ++v37;
                  v14 += v16;
                  if (v37 == 4)
                  {
                    return v12;
                  }
                }

                v29 = "SharedArrayPush";
                v30 = 283;
                goto LABEL_19;
              }

              v35 = "SharedArrayInit: pthread_cond_init failed\n";
              v36 = 57;
            }
          }

          else
          {
            v35 = "SharedArrayInit: malloc failed\n";
            v36 = 55;
          }

          pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v36, 0, v35, v32, v33, v34, v39);
          v29 = "SharedArrayInit";
          v30 = 270;
LABEL_19:
          pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", v30, 73, 0, v29, v27, v28, v39);
          if (!pthread_mutex_destroy((v12 + 4)) && !pthread_cond_destroy((v12 + 20)))
          {
            free(*(v12 + 1));
          }

          if (!pthread_mutex_destroy((v12 + 36)) && !pthread_cond_destroy((v12 + 52)))
          {
            free(*(v12 + 17));
          }

          free(v12);
          return 0;
        }

        v22 = "SharedArrayInit: pthread_cond_init failed\n";
        v23 = 57;
      }
    }

    else
    {
      v22 = "SharedArrayInit: malloc failed\n";
      v23 = 55;
    }

    pc_log_warning("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedArray.h", "SharedArrayInit", v23, 0, v22, v19, v20, v21, v39);
    v29 = "SharedArrayInit";
    v30 = 269;
    goto LABEL_19;
  }

  pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/Common/SharedBuffer.c", "SharedBufferCreate", 247, 73, 0, "SharedBuffer invalid capacity: %zu", a7, a8, a1);
  return 0;
}