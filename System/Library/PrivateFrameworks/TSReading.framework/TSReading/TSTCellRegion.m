@interface TSTCellRegion
+ (id)invalidRegion;
+ (id)region:(id)a3 addingRange:(id)a4;
+ (id)region:(id)a3 addingRegion:(id)a4;
+ (id)region:(id)a3 intersectingRange:(id)a4;
+ (id)region:(id)a3 subtractingRange:(id)a4;
+ (id)region:(id)a3 subtractingRegion:(id)a4;
+ (id)regionFillingColumnsFromRegion:(id)a3;
+ (id)regionFillingRowsFromRegion:(id)a3;
+ (id)regionFromCellMap:(id)a3;
+ (id)regionFromColumnIndices:(id)a3;
+ (id)regionFromRange:(id)a3;
+ (id)regionFromRowIndices:(id)a3;
+ (id)unionEveryRangeInRegion:(id)a3 withRange:(id)a4;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)suitableAnchor;
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)suitableCursor;
- (BOOL)containsCellID:(id)a3;
- (BOOL)containsCellRange:(id)a3;
- (BOOL)containsCellRegion:(id)a3;
- (BOOL)equalsCellRegion:(id)a3;
- (BOOL)intersectsCellRange:(id)a3;
- (BOOL)partiallyIntersectsCellRange:(id)a3;
- (TSTCellRegion)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)iterator;
- (id)regionByAddingColumns:(id)a3;
- (id)regionByAddingRange:(id)a3;
- (id)regionByAddingRegion:(id)a3;
- (id)regionByAddingRows:(id)a3;
- (id)regionByApplyingRowMapping:(id)a3;
- (id)regionByIntersectingColumnIndices:(id)a3;
- (id)regionByIntersectingRange:(id)a3;
- (id)regionByIntersectingRowIndices:(id)a3;
- (id)regionByRemovingColumns:(id)a3;
- (id)regionByRemovingRows:(id)a3;
- (id)regionBySubtractingRange:(id)a3;
- (id)regionBySubtractingRegion:(id)a3;
- (id)regionByUnioningEveryRangeInRegionWithRange:(id)a3;
- (id)regionOffsetBy:(id)a3;
- (id)rightToLeftIterator;
- (id)topToBottomIterator;
- (void)dealloc;
- (void)enumerateCellIDsUsingBlock:(id)a3;
- (void)enumerateCellRangesUsingBlock:(id)a3;
- (void)enumerateColumnsUsingBlock:(id)a3;
- (void)enumerateInDirection:(int)a3 usingBlock:(id)a4;
- (void)enumerateRowsUsingBlock:(id)a3;
- (void)fillCellRangeColMajorSet:(void *)a3 leftToRight:(BOOL)a4;
- (void)fillCellRangeRowMajorSet:(void *)a3 leftToRight:(BOOL)a4;
- (void)p_calculateAncillaryInformation;
- (void)p_calculateIntersectingColumns;
- (void)p_calculateIntersectingRows;
- (void)p_calculateUpperLeftAndBottomRightCellID;
- (void)p_insertRangeIntoRegion:(id)a3;
@end

@implementation TSTCellRegion

- (TSTCellRegion)init
{
  v3.receiver = self;
  v3.super_class = TSTCellRegion;
  result = [(TSTCellRegion *)&v3 init];
  if (result)
  {
    result->mCellRangesCount = 0;
    result->mCellRanges = 0;
    *&result->mBoundingCellRange.origin.row = xmmword_26CA679F0;
  }

  return result;
}

- (void)dealloc
{
  mCellRanges = self->mCellRanges;
  if (mCellRanges)
  {
    free(mCellRanges);
    self->mCellRanges = 0;
  }

  self->mCellRangesCount = 0;
  *&self->mBoundingCellRange.origin.row = xmmword_26CA679F0;

  self->mIntersectingColumnsIndexSet = 0;
  self->mIntersectingRowsIndexSet = 0;
  v4.receiver = self;
  v4.super_class = TSTCellRegion;
  [(TSTCellRegion *)&v4 dealloc];
}

+ (id)regionFromRange:(id)a3
{
  v4 = ~a3.var0.var0;
  v5 = objc_alloc_init(TSTCellRegion);
  v6 = v5;
  if (v4 && (*&a3 & 0xFF0000) != 0xFF0000 && HIWORD(*&a3) && (*&a3 & 0xFFFF00000000) != 0)
  {
    [(TSTCellRegion *)v5 p_insertRangeIntoRegion:a3];
  }

  [(TSTCellRegion *)v6 p_calculateAncillaryInformation];
  return v6;
}

+ (id)regionFromCellMap:(id)a3
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__27;
  v42 = __Block_byref_object_dispose__27;
  v3 = 0;
  v4 = 0;
  v25 = 0;
  v26 = 0;
  v5 = 0;
  v22 = 0;
  v23 = 0;
  v6 = 0;
  v43 = objc_alloc_init(TSTCellRegion);
  v21 = 0;
  v7 = 255;
  v8 = 0xFFFF;
  v24 = 0xFFFF;
  v9 = 255;
  while (v3 < [a3 count] + 1)
  {
    if (v3 >= [a3 count])
    {
      v11 = 0;
      v12 = 255;
      v13 = 0xFFFF;
    }

    else
    {
      v10 = [a3 cellIDAtIndex:v3];
      v11 = v10 & 0xFF000000;
      v12 = BYTE2(v10);
      v13 = v10;
    }

    if ((v11 | v13) != -1 && ((v11 | (v12 << 16)) & 0xFF0000) != 0xFF0000 && (v8 == 0xFFFF || v7 == 255 || !v5 || !v26))
    {
      goto LABEL_42;
    }

    if (v13 == v8)
    {
      if (v12 == v7 + v5)
      {
        v14 = (v5 + 1);
        v12 = v7;
      }

      else
      {
        if (v4)
        {
          [v4 p_insertRangeIntoRegion:(v5 << 32) | (v26 << 48) | (v25 << 24) | (v7 << 16) | v8];
        }

        else
        {
          v4 = [TSTCellRegion regionFromRange:(v5 << 32) | (v26 << 48) | (v25 << 24) | (v7 << 16) | v8];
        }

LABEL_42:
        v25 = HIBYTE(v11);
        v14 = 1;
        v8 = v13;
        v26 = 1;
      }

      v7 = v9;
      v5 = v6;
      goto LABEL_50;
    }

    if (v4)
    {
      v15 = [v4 regionByAddingRange:(v5 << 32) | (v26 << 48) | (v25 << 24) | (v7 << 16) | v8];
      if (v24 == 0xFFFF || v9 == 255 || !v6 || !v22)
      {
        goto LABEL_49;
      }

      if (!v23)
      {
        [v39[5] p_insertRangeIntoRegion:(v6 << 32) | (v21 << 24) | (v22 << 48) | v24 | (v9 << 16)];
        goto LABEL_49;
      }

      if (v24 + v22 != v8)
      {
        goto LABEL_44;
      }

      v16 = v23[1];
      if (v16 != *(v15 + 8))
      {
        goto LABEL_44;
      }

      if (v16)
      {
        v17 = (*(v15 + 16) + 4);
        v18 = (v23[2] + 4);
        while (*(v18 - 2) == *(v17 - 2) && *v18 == *v17)
        {
          v17 += 4;
          v18 += 4;
          if (!--v16)
          {
            goto LABEL_28;
          }
        }

LABEL_44:
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __35__TSTCellRegion_regionFromCellMap___block_invoke_2;
        v30[3] = &unk_279D4A3D0;
        v30[4] = &v38;
        [v23 enumerateCellRangesUsingBlock:v30];
        goto LABEL_49;
      }

LABEL_28:
      v32 = 0;
      v33 = &v32;
      v34 = 0x3052000000;
      v35 = __Block_byref_object_copy__27;
      v36 = __Block_byref_object_dispose__27;
      v37 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __35__TSTCellRegion_regionFromCellMap___block_invoke;
      v31[3] = &unk_279D4A3D0;
      v31[4] = &v32;
      [v23 enumerateCellRangesUsingBlock:v31];
      v15 = v33[5];
      _Block_object_dispose(&v32, 8);
    }

    else if (v24 == 0xFFFF || v9 == 255 || !v6 || !v22)
    {
      v15 = v23;
    }

    else
    {
      if (v23)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __35__TSTCellRegion_regionFromCellMap___block_invoke_3;
        v29[3] = &unk_279D4A3D0;
        v29[4] = &v38;
        [v23 enumerateCellRangesUsingBlock:v29];
        goto LABEL_48;
      }

      if (v24 + v22 != v8 || v7 != v9 || v5 != v6)
      {
        [v39[5] p_insertRangeIntoRegion:(v6 << 32) | (v21 << 24) | (v22 << 48) | v24 | (v9 << 16)];
LABEL_48:
        v15 = 0;
        goto LABEL_49;
      }

      v15 = 0;
      v8 = v24;
      v25 = v21;
      v26 = (v22 + 1);
    }

LABEL_49:
    v22 = v26;
    v23 = v15;
    v21 = v25;
    v24 = v8;
    v25 = HIBYTE(v11);
    v14 = 1;
    v8 = v13;
    v26 = 1;
    v4 = 0;
LABEL_50:
    v6 = v5;
    v9 = v7;
    ++v3;
    v7 = v12;
    v5 = v14;
  }

  if (v23)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __35__TSTCellRegion_regionFromCellMap___block_invoke_4;
    v28[3] = &unk_279D4A3D0;
    v28[4] = &v38;
    [v23 enumerateCellRangesUsingBlock:v28];
  }

  else
  {
    [v39[5] p_insertRangeIntoRegion:(v6 << 32) | (v22 << 48) | (v21 << 24) | (v9 << 16) | v24];
  }

  [v39[5] p_calculateAncillaryInformation];
  v19 = v39[5];
  _Block_object_dispose(&v38, 8);
  return v19;
}

id __35__TSTCellRegion_regionFromCellMap___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {

    return [v3 p_insertRangeIntoRegion:a2 & 0xFFFFFFFFFFFFLL | ((HIWORD(a2) + 1) << 48)];
  }

  else
  {
    result = [TSTCellRegion regionFromRange:a2 & 0xFFFFFFFFFFFFLL | ((HIWORD(a2) + 1) << 48)];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

+ (id)region:(id)a3 addingRange:(id)a4
{
  v6 = objc_alloc_init(TSTCellRegion);
  v7 = v6;
  if (!a3)
  {
    [(TSTCellRegion *)v6 p_insertRangeIntoRegion:a4];
    goto LABEL_44;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  *v35[3] = a4;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __36__TSTCellRegion_region_addingRange___block_invoke;
  v29[3] = &unk_279D4A3F8;
  v29[5] = &v30;
  v29[6] = &v34;
  v29[4] = v7;
  [a3 enumerateCellRangesUsingBlock:v29];
  LODWORD(v8) = *(v31 + 6);
  if (v8 <= 1)
  {
    goto LABEL_39;
  }

  v9 = 1;
  v10 = 8;
  do
  {
    v11 = 0;
    do
    {
      v28 = 0xFFFFFFLL;
      v12 = v35[3];
      v13 = (v12 + 8 * v9);
      v14 = *v13;
      v15 = *(v12 + v11);
      v16 = HIWORD(*v13);
      if (v16)
      {
        v17 = (*v13 & 0xFFFF00000000) == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17 && HIWORD(v15) != 0 && (v15 & 0xFFFF00000000) != 0)
      {
        if (*v13 <= v15 && (v14 + v16 - 1) >= v15 && BYTE2(v15) >= BYTE2(v14))
        {
          v23 = (BYTE4(v14) + BYTE2(v14) - 1);
          if (v23 >= BYTE2(v15) && v23 >= (BYTE4(v15) + BYTE2(v15) - 1) && (v14 + v16 - 1) >= (v15 + HIWORD(v15) - 1))
          {
            *(v12 + v11) = 0xFFFFFFLL;
            goto LABEL_22;
          }
        }

        if (*(v12 + v11) <= v14)
        {
          v24 = v15 + HIWORD(v15) - 1;
          if (v24 >= v14 && BYTE2(v14) >= BYTE2(v15))
          {
            v25 = (BYTE4(v15) + BYTE2(v15) - 1);
            if (v25 >= BYTE2(v14) && v25 >= (BYTE4(v14) + BYTE2(v14) - 1) && v24 >= (v14 + v16 - 1))
            {
              *v13 = 0xFFFFFFLL;
              goto LABEL_22;
            }
          }
        }
      }

      if (p_TSTCellRangeSplitForAdding(v12 + v11, v13, &v28))
      {
        v20 = v28;
        if (v28 != 0xFFFF && (v28 & 0xFF0000) != 0xFF0000 && HIWORD(v28) && (v28 & 0xFFFF00000000) != 0)
        {
          v21 = *(v31 + 6) + 1;
          *(v31 + 6) = v21;
          v22 = malloc_type_realloc(v35[3], 8 * v21, 0x100004000313F17uLL);
          v35[3] = v22;
          v22[*(v31 + 6) - 1] = v20;
        }
      }

LABEL_22:
      v11 += 8;
    }

    while (v10 != v11);
    ++v9;
    v8 = *(v31 + 6);
    v10 += 8;
  }

  while (v9 < v8);
LABEL_39:
  if (v8 >= 1)
  {
    v26 = 0;
    do
    {
      [(TSTCellRegion *)v7 p_insertRangeIntoRegion:*(v35[3] + 8 * v26++), v28];
    }

    while (v26 < *(v31 + 6));
  }

  free(v35[3]);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
LABEL_44:
  [(TSTCellRegion *)v7 p_calculateAncillaryInformation];
  return v7;
}

uint64_t __36__TSTCellRegion_region_addingRange___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = result;
  v20 = a2;
  if (*(*(*(result + 40) + 8) + 24) >= 1)
  {
    v3 = 0;
    while (1)
    {
      a2 = v20;
      if (v20 == 0xFFFF)
      {
        break;
      }

      v4 = (v20 & 0xFF0000) == 0xFF0000 || HIWORD(v20) == 0;
      if (v4 || (v20 & 0xFFFF00000000) == 0)
      {
        break;
      }

      v19 = 0xFFFFFFLL;
      v6 = (*(*(v2[6] + 8) + 24) + 8 * v3);
      v7 = *v6;
      v8 = HIWORD(*v6);
      if (v8)
      {
        v9 = (*v6 & 0xFFFF00000000) == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        if (v20 <= v7 && (v20 + HIWORD(v20) - 1) >= v7 && BYTE2(v7) >= BYTE2(v20))
        {
          v10 = (BYTE4(v20) + BYTE2(v20) - 1);
          if (v10 >= BYTE2(v7) && v10 >= (BYTE4(v7) + BYTE2(v7) - 1) && (v20 + HIWORD(v20) - 1) >= (v7 + v8 - 1))
          {
            *v6 = 0xFFFFFFLL;
            v14 = *(v2[5] + 8);
            v15 = *(v14 + 24);
            if (v3 + 1 < v15)
            {
              v16 = v3 + 1;
              do
              {
                v17 = (*(*(v2[6] + 8) + 24) + 8 * v16);
                *(v17 - 1) = *v17;
                ++v16;
              }

              while (v16 < *(*(v2[5] + 8) + 24));
              *(*(*(v2[6] + 8) + 24) + 8 * v16 - 8) = 0xFFFFFFLL;
              v14 = *(v2[5] + 8);
              v15 = *(v14 + 24);
            }

            --v3;
            *(v14 + 24) = v15 - 1;
            goto LABEL_33;
          }
        }

        if (*v6 <= v20)
        {
          v11 = v7 + v8 - 1;
          if (v11 >= v20 && BYTE2(v20) >= BYTE2(v7))
          {
            v12 = (BYTE4(v7) + BYTE2(v7) - 1);
            if (v12 >= BYTE2(v20) && v12 >= (BYTE4(v20) + BYTE2(v20) - 1) && v11 >= (v20 + HIWORD(v20) - 1))
            {
              return result;
            }
          }
        }
      }

      result = p_TSTCellRangeSplitForAdding(&v20, *(*(v2[6] + 8) + 24) + 8 * v3, &v19);
      if (result)
      {
        v13 = v19;
        if (v19 != 0xFFFF && (v19 & 0xFF0000) != 0xFF0000 && HIWORD(v19) && (v19 & 0xFFFF00000000) != 0)
        {
          result = malloc_type_realloc(*(*(v2[6] + 8) + 24), 8 * ++*(*(v2[5] + 8) + 24), 0x100004000313F17uLL);
          *(*(v2[6] + 8) + 24) = result;
          *(*(*(v2[6] + 8) + 24) + 8 * *(*(v2[5] + 8) + 24) - 8) = v13;
        }
      }

LABEL_33:
      if (++v3 >= *(*(v2[5] + 8) + 24))
      {
        a2 = v20;
        break;
      }
    }
  }

  if (a2 != 0xFFFF && (a2 & 0xFF0000) != 0xFF0000 && HIWORD(a2) && (a2 & 0xFFFF00000000) != 0)
  {
    v18 = v2[4];

    return [v18 p_insertRangeIntoRegion:a2];
  }

  return result;
}

+ (id)region:(id)a3 subtractingRange:(id)a4
{
  v6 = objc_alloc_init(TSTCellRegion);
  v7 = v6;
  if (a3)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__TSTCellRegion_region_subtractingRange___block_invoke;
    v11[3] = &unk_279D4A420;
    v11[6] = &v16;
    v11[7] = a4;
    v11[4] = v6;
    v11[5] = &v12;
    [a3 enumerateCellRangesUsingBlock:v11];
    if (v13[6] >= 1)
    {
      v8 = 0;
      do
      {
        [(TSTCellRegion *)v7 p_insertRangeIntoRegion:*(v17[3] + 8 * v8++)];
      }

      while (v8 < v13[6]);
    }

    v9 = v17[3];
    if (v9)
    {
      free(v9);
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  [(TSTCellRegion *)v7 p_calculateAncillaryInformation];
  return v7;
}

uint64_t __41__TSTCellRegion_region_subtractingRange___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = result;
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(result + 56);
  v4 = v3 & 0xFFFF00000000;
  v5 = a2 & 0xFFFF00000000;
  if (HIWORD(v3))
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = HIWORD(a2);
  if (!v6 && v7 != 0 && v5 != 0 && *(result + 56) <= a2 && (v3 + HIWORD(v3) - 1) >= a2 && BYTE2(a2) >= BYTE2(v3))
  {
    v17 = (BYTE4(v3) + BYTE2(v3) - 1);
    if (v17 >= BYTE2(a2) && v17 >= (BYTE4(a2) + BYTE2(a2) - 1) && (v3 + HIWORD(v3) - 1) >= (a2 + HIWORD(a2) - 1))
    {
      return result;
    }
  }

  v10 = (~a2 & 0xFF0000) != 0 && a2 != 0xFFFF;
  if (!v10)
  {
    v11 = 0;
    v14 = 0;
    v12 = 16711680;
    v13 = 0xFFFFLL;
    goto LABEL_45;
  }

  v11 = 0;
  v12 = 16711680;
  v13 = 0xFFFFLL;
  if (!v7)
  {
    goto LABEL_44;
  }

  v14 = 0;
  if (!v5)
  {
    goto LABEL_45;
  }

  v11 = 0;
  v12 = 16711680;
  v13 = 0xFFFFLL;
  if (v3 == 0xFFFF)
  {
LABEL_44:
    v14 = 0;
    goto LABEL_45;
  }

  result = v3 & 0xFF0000;
  v14 = 0;
  if ((v3 & 0xFF0000) != 0xFF0000)
  {
    v11 = 0;
    v12 = 16711680;
    v13 = 0xFFFFLL;
    if (HIWORD(v3))
    {
      v14 = 0;
      if (v4)
      {
        v13 = 0;
        v15 = BYTE2(a2);
        if (BYTE2(a2) <= BYTE2(v3))
        {
          v15 = BYTE2(v3);
        }

        if (a2 <= v3)
        {
          result = v3;
        }

        else
        {
          result = a2;
        }

        if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(v3) + BYTE2(v3) - 1))
        {
          v16 = (BYTE4(v3) + BYTE2(v3) - 1);
        }

        else
        {
          v16 = (BYTE4(a2) + BYTE2(a2) - 1);
        }

        LOWORD(v3) = v3 + HIWORD(v3) - 1;
        if ((a2 + HIWORD(a2) - 1) >= v3)
        {
          LODWORD(v3) = v3;
        }

        else
        {
          LODWORD(v3) = (a2 + HIWORD(a2) - 1);
        }

        v12 = 0;
        v11 = 0;
        v14 = 0;
        if (result <= v3 && v15 <= v16)
        {
          v14 = ((v3 - result) << 48) + 0x1000000000000;
          v11 = (((v16 - v15) << 32) + 0x100000000) & 0xFFFF00000000;
          v12 = v15 << 16;
          v13 = result;
        }
      }

      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_45:
  v18 = v12 | v13 | v11 | v14;
  if (v18 == 0xFFFF || (v18 & 0xFF0000) == 0xFF0000 || !HIWORD(v18) || (v18 & 0xFFFF00000000) == 0)
  {
    if (v10 && v7 && v5)
    {
      v20 = v2[4];

      return [v20 p_insertRangeIntoRegion:a2];
    }
  }

  else
  {
    if ((v12 | v13 | v11 | v14) <= a2)
    {
      v26 = 0xFFFFFFLL;
      v19 = a2;
    }

    else
    {
      LOWORD(v26) = a2;
      *(&v26 + 2) = a2 >> 16;
      HIWORD(v26) = v18 - a2;
      LOWORD(v7) = HIWORD(a2) - (v18 - a2);
      v19 = v12 | v13 | v11 | v14;
    }

    if ((v19 + v7 - 1) <= (v18 + HIWORD(v18) - 1))
    {
      v27 = 0xFFFFFFLL;
    }

    else
    {
      *(&v27 + 2) = a2 >> 16;
      LOWORD(v27) = HIWORD(v18) + v18;
      HIWORD(v27) = v19 + v7 - (v18 + HIWORD(v18));
      LOWORD(v7) = v18 + HIWORD(v18) - v19;
    }

    if (BYTE2(v18) <= BYTE2(a2))
    {
      v28 = 0xFFFFFFLL;
    }

    else
    {
      LOWORD(v28) = v19;
      WORD1(v28) = WORD1(a2);
      HIWORD(v28) = v7;
      WORD2(v28) = BYTE2(v18) - BYTE2(a2);
    }

    v21 = HIDWORD(v18) + WORD1(v18) + 255;
    LODWORD(v5) = HIDWORD(v5) + WORD1(a2) + 255;
    if (v21 >= (BYTE4(v5) + BYTE2(a2) - 1))
    {
      v29 = 0xFFFFFFLL;
    }

    else
    {
      LOWORD(v29) = v19;
      BYTE3(v29) = BYTE3(a2);
      HIWORD(v29) = v7;
      BYTE2(v29) = v21 + 1;
      WORD2(v29) = v5 - v21;
    }

    for (i = 0; i != 32; i += 8)
    {
      v23 = *(&v26 + i);
      if (*(&v26 + i) != 0xFFFF && (v23 & 0xFF0000) != 0xFF0000 && HIWORD(v23) != 0 && (v23 & 0xFFFF00000000) != 0)
      {
        result = malloc_type_realloc(*(*(v2[6] + 8) + 24), 8 * ++*(*(v2[5] + 8) + 24), 0x100004000313F17uLL);
        *(*(v2[6] + 8) + 24) = result;
        *(*(*(v2[6] + 8) + 24) + 8 * *(*(v2[5] + 8) + 24) - 8) = v23;
      }
    }
  }

  return result;
}

+ (id)region:(id)a3 intersectingRange:(id)a4
{
  v6 = objc_alloc_init(TSTCellRegion);
  v7 = v6;
  if (a3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__TSTCellRegion_region_intersectingRange___block_invoke;
    v9[3] = &unk_279D4A448;
    v9[4] = v6;
    v9[5] = a4;
    [a3 enumerateCellRangesUsingBlock:v9];
  }

  [(TSTCellRegion *)v7 p_calculateAncillaryInformation];
  return v7;
}

uint64_t __42__TSTCellRegion_region_intersectingRange___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (a2 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v6 = *(result + 40);
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (*(result + 40) == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((v6 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(v6))
  {
LABEL_23:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if ((v6 & 0xFFFF00000000) != 0)
    {
      v4 = 0;
      if (BYTE2(a2) <= BYTE2(v6))
      {
        v7 = BYTE2(v6);
      }

      else
      {
        v7 = BYTE2(a2);
      }

      if (a2 <= v6)
      {
        v8 = *(result + 40);
      }

      else
      {
        v8 = a2;
      }

      if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(v6) + BYTE2(v6) - 1))
      {
        v9 = (BYTE4(v6) + BYTE2(v6) - 1);
      }

      else
      {
        v9 = (BYTE4(a2) + BYTE2(a2) - 1);
      }

      v10 = (v6 + HIWORD(v6) - 1);
      if ((a2 + HIWORD(a2) - 1) < v10)
      {
        v10 = (a2 + HIWORD(a2) - 1);
      }

      v3 = 0;
      v2 = 0;
      v5 = 0;
      if (v8 <= v10 && v7 <= v9)
      {
        v5 = ((v10 - v8) << 48) + 0x1000000000000;
        v2 = (((v9 - v7) << 32) + 0x100000000) & 0xFFFF00000000;
        v3 = v7 << 16;
        v4 = v8;
      }
    }
  }

LABEL_24:
  v11 = v3 | v4 | v2 | v5;
  if (v11 != 0xFFFF && (v11 & 0xFF0000) != 0xFF0000 && HIWORD(v11) != 0 && (v11 & 0xFFFF00000000) != 0)
  {
    return [*(result + 32) p_insertRangeIntoRegion:?];
  }

  return result;
}

+ (id)unionEveryRangeInRegion:(id)a3 withRange:(id)a4
{
  v6 = objc_alloc_init(TSTCellRegion);
  v7 = v6;
  if (a3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__TSTCellRegion_unionEveryRangeInRegion_withRange___block_invoke;
    v9[3] = &unk_279D4A448;
    v9[4] = v6;
    v9[5] = a4;
    [a3 enumerateCellRangesUsingBlock:v9];
  }

  else
  {
    [(TSTCellRegion *)v6 p_insertRangeIntoRegion:a4];
  }

  [(TSTCellRegion *)v7 p_calculateAncillaryInformation];
  return v7;
}

unint64_t __51__TSTCellRegion_unionEveryRangeInRegion_withRange___block_invoke(uint64_t a1, unint64_t a2)
{
  result = TSTCellRangeUnionCellRange(a2, *(a1 + 40));
  if (result != 0xFFFF)
  {
    v4 = (result & 0xFF0000) == 0xFF0000 || HIWORD(result) == 0;
    if (!v4 && (result & 0xFFFF00000000) != 0)
    {
      v6 = *(a1 + 32);

      return [v6 p_insertRangeIntoRegion:?];
    }
  }

  return result;
}

+ (id)region:(id)a3 addingRegion:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__27;
  v13 = __Block_byref_object_dispose__27;
  v14 = [a3 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__TSTCellRegion_region_addingRegion___block_invoke;
  v8[3] = &unk_279D4A470;
  v8[4] = a1;
  v8[5] = &v9;
  [a4 enumerateCellRangesUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __37__TSTCellRegion_region_addingRegion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_class() region:*(*(*(a1 + 40) + 8) + 40) addingRange:a2];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)region:(id)a3 subtractingRegion:(id)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__27;
  v13 = __Block_byref_object_dispose__27;
  v14 = [a3 copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__TSTCellRegion_region_subtractingRegion___block_invoke;
  v8[3] = &unk_279D4A470;
  v8[4] = a1;
  v8[5] = &v9;
  [a4 enumerateCellRangesUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __42__TSTCellRegion_region_subtractingRegion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_class() region:*(*(*(a1 + 40) + 8) + 40) subtractingRange:a2];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)invalidRegion
{
  v2 = objc_alloc_init(TSTCellRegion);
  [(TSTCellRegion *)v2 p_calculateAncillaryInformation];
  return v2;
}

+ (id)regionFillingColumnsFromRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isEmpty])
  {
    return a3;
  }

  v4 = objc_alloc_init(TSTCellRegion);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3812000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__4;
  v14 = &unk_26CAC6BB9;
  v15 = 0;
  v5 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  *(v10 + 27) = v5;
  v6 = *(a3 + 5);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__TSTCellRegion_regionFillingColumnsFromRegion___block_invoke;
  v8[3] = &unk_279D4A498;
  v8[4] = v4;
  v8[5] = &v9;
  [v6 enumerateRangesUsingBlock:v8];
  [(TSTCellRegion *)v4 p_calculateAncillaryInformation];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __48__TSTCellRegion_regionFillingColumnsFromRegion___block_invoke(uint64_t a1, char a2, __int16 a3)
{
  *(*(*(a1 + 40) + 8) + 50) = a2;
  *(*(*(a1 + 40) + 8) + 52) = a3;
  return [*(a1 + 32) p_insertRangeIntoRegion:*(*(*(a1 + 40) + 8) + 48)];
}

+ (id)regionFillingRowsFromRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 isEmpty])
  {
    return a3;
  }

  v4 = objc_alloc_init(TSTCellRegion);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3812000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__4;
  v14 = &unk_26CAC6BB9;
  v15 = 0;
  v5 = [+[TSTConfiguration sharedTableConfiguration](TSTConfiguration "sharedTableConfiguration")];
  *(v10 + 26) = v5;
  v6 = *(a3 + 6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__TSTCellRegion_regionFillingRowsFromRegion___block_invoke;
  v8[3] = &unk_279D4A498;
  v8[4] = v4;
  v8[5] = &v9;
  [v6 enumerateRangesUsingBlock:v8];
  [(TSTCellRegion *)v4 p_calculateAncillaryInformation];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __45__TSTCellRegion_regionFillingRowsFromRegion___block_invoke(uint64_t a1, __int16 a2, __int16 a3)
{
  *(*(*(a1 + 40) + 8) + 48) = a2;
  *(*(*(a1 + 40) + 8) + 54) = a3;
  return [*(a1 + 32) p_insertRangeIntoRegion:*(*(*(a1 + 40) + 8) + 48)];
}

+ (id)regionFromRowIndices:(id)a3
{
  v4 = objc_alloc_init(TSTCellRegion);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TSTCellRegion_regionFromRowIndices___block_invoke;
  v6[3] = &unk_279D4A4C0;
  v6[4] = v4;
  [a3 enumerateRangesUsingBlock:v6];
  [(TSTCellRegion *)v4 p_calculateAncillaryInformation];
  return v4;
}

+ (id)regionFromColumnIndices:(id)a3
{
  v4 = objc_alloc_init(TSTCellRegion);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__TSTCellRegion_regionFromColumnIndices___block_invoke;
  v6[3] = &unk_279D4A4C0;
  v6[4] = v4;
  [a3 enumerateRangesUsingBlock:v6];
  [(TSTCellRegion *)v4 p_calculateAncillaryInformation];
  return v4;
}

uint64_t __41__TSTCellRegion_regionFromColumnIndices___block_invoke(uint64_t a1, unsigned __int8 a2, unsigned __int16 a3)
{
  if (a3 >= 0xFFu)
  {
    v3 = 255;
  }

  else
  {
    v3 = a3;
  }

  return [*(a1 + 32) p_insertRangeIntoRegion:(a2 << 16) | (v3 << 32) | 0xFFFF000000000000];
}

- (id)regionByAddingRange:(id)a3
{
  v5 = objc_opt_class();

  return [v5 region:self addingRange:a3];
}

- (id)regionBySubtractingRange:(id)a3
{
  v5 = objc_opt_class();

  return [v5 region:self subtractingRange:a3];
}

- (id)regionByIntersectingRange:(id)a3
{
  v5 = [(TSTCellRegion *)self boundingCellRange];
  if (HIWORD(*&a3))
  {
    if ((*&a3 & 0xFFFF00000000) != 0)
    {
      if (HIWORD(*&v5))
      {
        if ((*&v5 & 0xFFFF00000000) != 0 && a3.var0.var0 <= v5.var0.var0 && (a3.var0.var0 + a3.var1.var1 - 1) >= v5.var0.var0 && v5.var0.var1 >= a3.var0.var1)
        {
          v6 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
          if (v6 >= v5.var0.var1 && v6 >= (LOBYTE(v5.var1.var0) + v5.var0.var1 - 1) && (a3.var0.var0 + a3.var1.var1 - 1) >= (v5.var0.var0 + v5.var1.var1 - 1))
          {
            return self;
          }
        }
      }
    }
  }

  v7 = objc_opt_class();

  return [v7 region:self intersectingRange:a3];
}

- (id)regionByUnioningEveryRangeInRegionWithRange:(id)a3
{
  v5 = objc_opt_class();

  return [v5 unionEveryRangeInRegion:self withRange:a3];
}

- (id)regionByAddingRegion:(id)a3
{
  v5 = objc_opt_class();

  return [v5 region:self addingRegion:a3];
}

- (id)regionBySubtractingRegion:(id)a3
{
  v5 = objc_opt_class();

  return [v5 region:self subtractingRegion:a3];
}

- (id)regionOffsetBy:(id)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v6 = malloc_type_malloc(8 * self->mCellRangesCount, 0x100004000313F17uLL);
    mCellRangesCount = self->mCellRangesCount;
    v5[1] = mCellRangesCount;
    v5[2] = v6;
    v5[4] = self->mCellCount;
    origin = self->mBoundingCellRange.origin;
    v9 = a3.var1 + origin.row;
    v10 = ((a3.var0 + origin.column) | v9) >> 16;
    v11 = ((LOBYTE(a3.var0) + origin.column) << 16) | v9;
    v12 = v10 ? 0xFFFFFF : v11;
    *(v5 + 6) = v12;
    *(v5 + 7) = self->mBoundingCellRange.size;
    if (mCellRangesCount)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        var0 = self->mCellRanges[v13].var0;
        v16 = a3.var1 + var0.var0;
        v17 = ((a3.var0 + var0.var1) | v16) >> 16;
        v18 = ((LOBYTE(a3.var0) + var0.var1) << 16) | v16;
        if (v17)
        {
          v18 = 0xFFFFFF;
        }

        *(v5[2] + v13 * 8) = v18;
        *(v5[2] + v13 * 8 + 4) = self->mCellRanges[v13].var1;
        ++v14;
        ++v13;
      }

      while (v14 < v5[1]);
    }
  }

  [v5 p_calculateAncillaryInformation];
  return v5;
}

- (id)regionByRemovingRows:(id)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(TSTCellRegion);
    v6 = [(TSTCellRegion *)self boundingCellRange];
    v7 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, (v6.var0.var0 + v6.var1.var1 - 1) + 1}];
    [v7 removeIndexes:a3];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__TSTCellRegion_regionByRemovingRows___block_invoke;
    v9[3] = &unk_279D4A510;
    v9[6] = v10;
    v9[7] = v12;
    v9[4] = self;
    v9[5] = v5;
    [v7 enumerateRangesUsingBlock:v9];
    [(TSTCellRegion *)v5 p_calculateAncillaryInformation];
    self = v5;
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v12, 8);
  }

  return self;
}

uint64_t __38__TSTCellRegion_regionByRemovingRows___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = a2 + a3;
  v4 = [objc_msgSend(*(a1 + 32) regionByIntersectingRange:{a2 | (a3 << 48) | 0xFF00000000), "regionOffsetBy:", *(*(*(a1 + 48) + 8) + 24) << 32}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TSTCellRegion_regionByRemovingRows___block_invoke_2;
  v6[3] = &unk_279D4A4E8;
  v6[4] = *(a1 + 40);
  return [v4 enumerateCellRangesUsingBlock:v6];
}

- (id)regionByRemovingColumns:(id)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(TSTCellRegion);
    v6 = [(TSTCellRegion *)self boundingCellRange];
    v7 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, (LOBYTE(v6.var1.var0) + v6.var0.var1 - 1) + 1}];
    [v7 removeIndexes:a3];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__TSTCellRegion_regionByRemovingColumns___block_invoke;
    v9[3] = &unk_279D4A510;
    v9[6] = v10;
    v9[7] = v12;
    v9[4] = self;
    v9[5] = v5;
    [v7 enumerateRangesUsingBlock:v9];
    [(TSTCellRegion *)v5 p_calculateAncillaryInformation];
    self = v5;
    _Block_object_dispose(v10, 8);
    _Block_object_dispose(v12, 8);
  }

  return self;
}

uint64_t __41__TSTCellRegion_regionByRemovingColumns___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24) - a2;
  *(*(*(a1 + 56) + 8) + 24) = a2 + a3;
  if (a3 >= 0xFFu)
  {
    v4 = 255;
  }

  else
  {
    v4 = a3;
  }

  v5 = [objc_msgSend(*(a1 + 32) regionByIntersectingRange:{(a2 << 16) | (v4 << 32) | 0xFFFF000000000000), "regionOffsetBy:", *(*(*(a1 + 48) + 8) + 24)}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__TSTCellRegion_regionByRemovingColumns___block_invoke_2;
  v7[3] = &unk_279D4A4E8;
  v7[4] = *(a1 + 40);
  return [v5 enumerateCellRangesUsingBlock:v7];
}

- (id)regionByIntersectingRowIndices:(id)a3
{
  v5 = objc_alloc_init(TSTCellRegion);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__TSTCellRegion_regionByIntersectingRowIndices___block_invoke;
  v7[3] = &unk_279D4A538;
  v7[4] = self;
  v7[5] = v5;
  [a3 enumerateRangesUsingBlock:v7];
  [(TSTCellRegion *)v5 p_calculateAncillaryInformation];
  return v5;
}

uint64_t __48__TSTCellRegion_regionByIntersectingRowIndices___block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__TSTCellRegion_regionByIntersectingRowIndices___block_invoke_2;
  v5[3] = &unk_279D4A448;
  v3 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v5[5] = a2 | (a3 << 48) | 0xFF00000000;
  return [v3 enumerateCellRangesUsingBlock:v5];
}

uint64_t __48__TSTCellRegion_regionByIntersectingRowIndices___block_invoke_2(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (a2 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v6 = *(result + 40);
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (*(result + 40) == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((v6 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(v6))
  {
LABEL_23:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if ((v6 & 0xFFFF00000000) != 0)
    {
      v4 = 0;
      if (BYTE2(a2) <= BYTE2(v6))
      {
        v7 = BYTE2(v6);
      }

      else
      {
        v7 = BYTE2(a2);
      }

      if (a2 <= v6)
      {
        v8 = *(result + 40);
      }

      else
      {
        v8 = a2;
      }

      if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(v6) + BYTE2(v6) - 1))
      {
        v9 = (BYTE4(v6) + BYTE2(v6) - 1);
      }

      else
      {
        v9 = (BYTE4(a2) + BYTE2(a2) - 1);
      }

      v10 = (v6 + HIWORD(v6) - 1);
      if ((a2 + HIWORD(a2) - 1) < v10)
      {
        v10 = (a2 + HIWORD(a2) - 1);
      }

      v3 = 0;
      v2 = 0;
      v5 = 0;
      if (v8 <= v10 && v7 <= v9)
      {
        v5 = ((v10 - v8) << 48) + 0x1000000000000;
        v2 = (((v9 - v7) << 32) + 0x100000000) & 0xFFFF00000000;
        v3 = v7 << 16;
        v4 = v8;
      }
    }
  }

LABEL_24:
  v11 = v3 | v4 | v2 | v5;
  if (v11 != 0xFFFF && (v11 & 0xFF0000) != 0xFF0000 && HIWORD(v11) != 0 && (v11 & 0xFFFF00000000) != 0)
  {
    return [*(result + 32) p_insertRangeIntoRegion:?];
  }

  return result;
}

- (id)regionByIntersectingColumnIndices:(id)a3
{
  v5 = objc_alloc_init(TSTCellRegion);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TSTCellRegion_regionByIntersectingColumnIndices___block_invoke;
  v7[3] = &unk_279D4A538;
  v7[4] = self;
  v7[5] = v5;
  [a3 enumerateRangesUsingBlock:v7];
  [(TSTCellRegion *)v5 p_calculateAncillaryInformation];
  return v5;
}

uint64_t __51__TSTCellRegion_regionByIntersectingColumnIndices___block_invoke(uint64_t a1, unsigned __int8 a2, unsigned __int16 a3)
{
  if (a3 >= 0xFFu)
  {
    v3 = 255;
  }

  else
  {
    v3 = a3;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TSTCellRegion_regionByIntersectingColumnIndices___block_invoke_2;
  v6[3] = &unk_279D4A448;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v6[5] = (a2 << 16) | (v3 << 32) | 0xFFFF000000000000;
  return [v4 enumerateCellRangesUsingBlock:v6];
}

uint64_t __51__TSTCellRegion_regionByIntersectingColumnIndices___block_invoke_2(uint64_t result, unint64_t a2)
{
  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (a2 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(a2))
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((a2 & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v6 = *(result + 40);
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (*(result + 40) == 0xFFFF)
  {
    goto LABEL_23;
  }

  v5 = 0;
  if ((v6 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v2 = 0;
  v3 = 16711680;
  v4 = 0xFFFFLL;
  if (!HIWORD(v6))
  {
LABEL_23:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if ((v6 & 0xFFFF00000000) != 0)
    {
      v4 = 0;
      if (BYTE2(a2) <= BYTE2(v6))
      {
        v7 = BYTE2(v6);
      }

      else
      {
        v7 = BYTE2(a2);
      }

      if (a2 <= v6)
      {
        v8 = *(result + 40);
      }

      else
      {
        v8 = a2;
      }

      if ((BYTE4(a2) + BYTE2(a2) - 1) >= (BYTE4(v6) + BYTE2(v6) - 1))
      {
        v9 = (BYTE4(v6) + BYTE2(v6) - 1);
      }

      else
      {
        v9 = (BYTE4(a2) + BYTE2(a2) - 1);
      }

      v10 = (v6 + HIWORD(v6) - 1);
      if ((a2 + HIWORD(a2) - 1) < v10)
      {
        v10 = (a2 + HIWORD(a2) - 1);
      }

      v3 = 0;
      v2 = 0;
      v5 = 0;
      if (v8 <= v10 && v7 <= v9)
      {
        v5 = ((v10 - v8) << 48) + 0x1000000000000;
        v2 = (((v9 - v7) << 32) + 0x100000000) & 0xFFFF00000000;
        v3 = v7 << 16;
        v4 = v8;
      }
    }
  }

LABEL_24:
  v11 = v3 | v4 | v2 | v5;
  if (v11 != 0xFFFF && (v11 & 0xFF0000) != 0xFF0000 && HIWORD(v11) != 0 && (v11 & 0xFFFF00000000) != 0)
  {
    return [*(result + 32) p_insertRangeIntoRegion:?];
  }

  return result;
}

- (id)regionByAddingRows:(id)a3
{
  v3 = self;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__27;
    v12 = __Block_byref_object_dispose__27;
    v13 = [(TSTCellRegion *)self copy];
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__TSTCellRegion_regionByAddingRows___block_invoke;
    v6[3] = &unk_279D4A588;
    v6[5] = v7;
    v6[6] = &v8;
    v6[4] = v3;
    [a3 enumerateRangesUsingBlock:v6];
    [v9[5] p_calculateAncillaryInformation];
    v3 = v9[5];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

void __36__TSTCellRegion_regionByAddingRows___block_invoke(void *a1, __int16 a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(*(a1[6] + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__TSTCellRegion_regionByAddingRows___block_invoke_2;
  v11[3] = &unk_279D4A560;
  v12 = v7;
  v10 = a1[4];
  v13 = v3;
  v11[4] = v10;
  v11[5] = v8;
  [v9 enumerateCellRangesUsingBlock:v11];

  *(*(a1[6] + 8) + 40) = v8;
}

uint64_t __36__TSTCellRegion_regionByAddingRows___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 48);
  if (v5 > a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5 > (a2 + HIWORD(a2) - 1))
  {
    v6 = 0;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v8 = (a2 + HIWORD(a2) - 1) + 1;
      if (v8 != v5)
      {
        goto LABEL_16;
      }

      v9 = a2 & 0xFF0000 | v8;
      if (WORD2(a2) >= 0xFFu)
      {
        v10 = 255;
      }

      else
      {
        v10 = WORD2(a2);
      }

      v11 = v9 | (v10 << 32);
      v12 = [*(a1 + 32) regionByIntersectingRange:v11 | 0x1000000000000];
      if (![v12 equalsCellRange:v11 | 0x1000000000000])
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __36__TSTCellRegion_regionByAddingRows___block_invoke_3;
        v14[3] = &unk_279D4A4E8;
        v14[4] = *(a1 + 40);
        [v12 enumerateCellRangesUsingBlock:v14];
        goto LABEL_16;
      }
    }

    v4 = *(a1 + 50) + v4;
LABEL_16:
    v7 = a2;
    return [*(a1 + 40) p_insertRangeIntoRegion:a2 & 0xFFFFFFFF0000 | (v4 << 48) | v7];
  }

  v7 = *(a1 + 50) + a2;
  return [*(a1 + 40) p_insertRangeIntoRegion:a2 & 0xFFFFFFFF0000 | (v4 << 48) | v7];
}

- (id)regionByAddingColumns:(id)a3
{
  v3 = self;
  if (a3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__27;
    v12 = __Block_byref_object_dispose__27;
    v13 = [(TSTCellRegion *)self copy];
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v7[3] = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__TSTCellRegion_regionByAddingColumns___block_invoke;
    v6[3] = &unk_279D4A588;
    v6[5] = v7;
    v6[6] = &v8;
    v6[4] = v3;
    [a3 enumerateRangesUsingBlock:v6];
    [v9[5] p_calculateAncillaryInformation];
    v3 = v9[5];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }

  return v3;
}

void __39__TSTCellRegion_regionByAddingColumns___block_invoke(void *a1, char a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  v7 = v6 + a2;
  *(v5 + 24) = v6 + a3;
  v8 = objc_alloc_init(TSTCellRegion);
  v9 = *(*(a1[6] + 8) + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__TSTCellRegion_regionByAddingColumns___block_invoke_2;
  v11[3] = &unk_279D4A5B0;
  v13 = v7;
  v10 = a1[4];
  v12 = v3;
  v11[4] = v10;
  v11[5] = v8;
  [v9 enumerateCellRangesUsingBlock:v11];

  *(*(a1[6] + 8) + 40) = v8;
}

uint64_t __39__TSTCellRegion_regionByAddingColumns___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 16;
  v5 = HIDWORD(a2);
  v6 = *(a1 + 50);
  if (v6 > BYTE2(a2))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 > (BYTE4(a2) + BYTE2(a2) - 1))
  {
    v7 = 0;
  }

  if (v7 == 2)
  {
    LOWORD(v4) = WORD1(a2) + *(a1 + 48);
  }

  else
  {
    if (v7 != 1)
    {
      v8 = (BYTE4(a2) + BYTE2(a2) - 1) + 1;
      if (v8 != v6)
      {
        return [*(a1 + 40) p_insertRangeIntoRegion:a2 & 0xFFFF0000FF000000 | (v5 << 32) | (v4 << 16) | a2];
      }

      v9 = a2 & 0xFFFF000000000000 | a2 | (v8 << 16);
      v10 = [*(a1 + 32) regionByIntersectingRange:v9 | 0x100000000];
      if (![v10 equalsCellRange:v9 | 0x100000000])
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __39__TSTCellRegion_regionByAddingColumns___block_invoke_3;
        v12[3] = &unk_279D4A4E8;
        v12[4] = *(a1 + 40);
        [v10 enumerateCellRangesUsingBlock:v12];
        return [*(a1 + 40) p_insertRangeIntoRegion:a2 & 0xFFFF0000FF000000 | (v5 << 32) | (v4 << 16) | a2];
      }
    }

    LOWORD(v5) = *(a1 + 48) + v5;
  }

  return [*(a1 + 40) p_insertRangeIntoRegion:a2 & 0xFFFF0000FF000000 | (v5 << 32) | (v4 << 16) | a2];
}

- (id)regionByApplyingRowMapping:(id)a3
{
  v5 = objc_alloc_init(TSTCellRegion);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__TSTCellRegion_regionByApplyingRowMapping___block_invoke;
  v7[3] = &unk_279D4A5D8;
  v7[4] = a3;
  v7[5] = v5;
  [(TSTCellRegion *)self enumerateCellRangesUsingBlock:v7];
  [(TSTCellRegion *)v5 p_calculateAncillaryInformation];
  return v5;
}

uint64_t __44__TSTCellRegion_regionByApplyingRowMapping___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = a2 + HIWORD(a2) - 1;
  if ((a2 + HIWORD(a2) - 1) >= a2)
  {
    v4 = result;
    if (WORD2(a2) >= 0xFFu)
    {
      v5 = 255;
    }

    else
    {
      v5 = WORD2(a2);
    }

    v6 = a2 & 0xFF0000 | (v5 << 32) | 0x1000000000000;
    do
    {
      result = [*(v4 + 40) p_insertRangeIntoRegion:{v6 | objc_msgSend(*(v4 + 32), "mapIndex:", v2++)}];
    }

    while (v2 <= v3);
  }

  return result;
}

- (BOOL)containsCellID:(id)a3
{
  result = 0;
  if (a3.var0 != 0xFFFF && (*&a3.var0 & 0xFF0000) != 0xFF0000)
  {
    mCellRangesCount = self->mCellRangesCount;
    if (mCellRangesCount)
    {
      mCellRanges = self->mCellRanges;
      while (1)
      {
        v8 = *mCellRanges++;
        v7 = v8;
        v9 = v8 & 0xFFFF00000000;
        v10 = HIWORD(v8);
        v11 = !HIWORD(v8) || v9 == 0;
        if (!v11 && v7 <= a3.var0)
        {
          v12 = (v7 + v10 - 1) < a3.var0 || BYTE2(v7) > a3.var1;
          if (!v12 && a3.var1 <= (BYTE4(v7) + BYTE2(v7) - 1))
          {
            break;
          }
        }

        if (!--mCellRangesCount)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)containsCellRange:(id)a3
{
  var0 = a3.var0;
  result = 0;
  if (a3.var0.var0 != 0xFFFF && (*&a3 & 0xFF0000) != 0xFF0000)
  {
    result = 0;
    if (a3.var1.var1)
    {
      if ((*&a3 & 0xFFFF00000000) != 0)
      {
        v7 = a3.var1.var0;
        if (self->mCellCount < a3.var1.var0 * a3.var1.var1)
        {
          return 0;
        }

        if (self->mCellRangesCount != 1)
        {
          v11 = *&a3 >> 16;
          v12 = a3.var0.var0;
          v13 = a3.var1.var1 + a3.var0.var0;
          var1 = a3.var0.var1;
          v15 = a3.var1.var0 + a3.var0.var1;
          while (1)
          {
            v16 = var1;
            v17 = v11;
            if (v7)
            {
              break;
            }

LABEL_21:
            ++*&var0;
            v12 = var0.var0;
            result = 1;
            if (v13 <= var0.var0)
            {
              return result;
            }
          }

          while (1)
          {
            v3 = v3 & 0xFFFFFFFF00000000 | v12 | (v16 << 16);
            if (![(TSTCellRegion *)self containsCellID:v3])
            {
              return 0;
            }

            v16 = ++v17;
            if (v15 <= v17)
            {
              goto LABEL_21;
            }
          }
        }

        result = 0;
        mBoundingCellRange = self->mBoundingCellRange;
        if (HIWORD(*&mBoundingCellRange) && (*&mBoundingCellRange & 0xFFFF00000000) != 0)
        {
          if (*&self->mBoundingCellRange > a3.var0.var0)
          {
            return 0;
          }

          result = 0;
          if (mBoundingCellRange.origin.column <= a3.var0.var1)
          {
            v9 = mBoundingCellRange.origin.row + mBoundingCellRange.size.numberOfRows - 1;
            if (v9 >= a3.var0.var0)
            {
              v10 = (LOBYTE(mBoundingCellRange.size.numberOfColumns) + mBoundingCellRange.origin.column - 1);
              if (v10 >= a3.var0.var1 && v10 >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
              {
                return v9 >= (a3.var0.var0 + a3.var1.var1 - 1);
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)containsCellRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self->mCellCount < *(a3 + 4))
  {
    return 0;
  }

  mBoundingCellRange = self->mBoundingCellRange;
  if (!HIWORD(*&mBoundingCellRange) || (*&mBoundingCellRange & 0xFFFF00000000) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 3);
  if (!HIWORD(v7) || (v7 & 0xFFFF00000000) == 0)
  {
    return 0;
  }

  if (*&self->mBoundingCellRange > v7)
  {
    return 0;
  }

  v9 = mBoundingCellRange.origin.row + mBoundingCellRange.size.numberOfRows - 1;
  if (v9 < v7)
  {
    return 0;
  }

  if (BYTE2(v7) < mBoundingCellRange.origin.column)
  {
    return 0;
  }

  v10 = (LOBYTE(mBoundingCellRange.size.numberOfColumns) + mBoundingCellRange.origin.column - 1);
  if (v10 < BYTE2(v7) || v10 < (BYTE4(v7) + BYTE2(v7) - 1) || v9 < (v7 + HIWORD(v7) - 1))
  {
    return 0;
  }

  if (!*(a3 + 1))
  {
    return 1;
  }

  v12 = 0;
  do
  {
    result = [(TSTCellRegion *)self containsCellRange:*(*(a3 + 2) + 8 * v12)];
    if (!result)
    {
      break;
    }

    ++v12;
  }

  while (v12 < *(a3 + 1));
  return result;
}

- (BOOL)equalsCellRegion:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self->mCellCount != *(a3 + 4) || ((*(a3 + 3) ^ *&self->mBoundingCellRange) & 0xFFFFFFFF00FFFFFFLL) != 0)
  {
    return 0;
  }

  if (!*(a3 + 1))
  {
    return 1;
  }

  v6 = 0;
  do
  {
    result = [(TSTCellRegion *)self containsCellRange:*(*(a3 + 2) + 8 * v6)];
    if (!result)
    {
      break;
    }

    ++v6;
  }

  while (v6 < *(a3 + 1));
  return result;
}

- (BOOL)intersectsCellRange:(id)a3
{
  mCellRangesCount = self->mCellRangesCount;
  if (mCellRangesCount)
  {
    mCellRanges = self->mCellRanges;
    v5 = (~*&a3.var0 & 0xFF0000) != 0 && a3.var0.var0 != 0xFFFF;
    v6 = (*&a3 & 0xFFFF00000000) == 0 || a3.var1.var1 == 0;
    v7 = !v6;
    v8 = 1;
    v9 = self->mCellRangesCount;
    v10 = 1;
    do
    {
      v11 = 0;
      v13 = *mCellRanges++;
      v12 = v13;
      if (v13 == 0xFFFF)
      {
        v14 = 0xFFFFLL;
        v15 = 16711680;
        v16 = 0;
      }

      else
      {
        v14 = 0xFFFFLL;
        v15 = 16711680;
        v16 = 0;
        if ((v12 & 0xFF0000) != 0xFF0000)
        {
          if (HIWORD(v12))
          {
            v17 = (v12 & 0xFFFF00000000) == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17 && v5 && v7)
          {
            v14 = 0;
            var1 = BYTE2(v12);
            if (BYTE2(v12) <= a3.var0.var1)
            {
              var1 = a3.var0.var1;
            }

            if (v12 <= a3.var0.var0)
            {
              var0 = a3.var0.var0;
            }

            else
            {
              var0 = v12;
            }

            if ((BYTE4(v12) + BYTE2(v12) - 1) >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
            {
              v20 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
            }

            else
            {
              v20 = (BYTE4(v12) + BYTE2(v12) - 1);
            }

            if ((v12 + HIWORD(v12) - 1) >= (a3.var0.var0 + a3.var1.var1 - 1))
            {
              v21 = (a3.var0.var0 + a3.var1.var1 - 1);
            }

            else
            {
              v21 = (v12 + HIWORD(v12) - 1);
            }

            v15 = 0;
            v11 = 0;
            v16 = 0;
            if (var0 <= v21 && var1 <= v20)
            {
              v16 = ((v21 - var0) << 48) + 0x1000000000000;
              v11 = (((v20 - var1) << 32) + 0x100000000) & 0xFFFF00000000;
              v15 = var1 << 16;
              v14 = var0;
            }
          }

          else
          {
            v11 = 0;
            v16 = 0;
            v14 = 0xFFFFLL;
            v15 = 16711680;
          }
        }
      }

      v22 = v15 | v14 | v11 | v16;
      if (v22 != 0xFFFF)
      {
        v6 = (v22 & 0xFF0000) == 16711680;
        v23 = v22 & 0xFFFF00000000;
        v24 = HIWORD(v22);
        v25 = v6 || v24 == 0;
        if (!v25 && v23 != 0)
        {
          break;
        }
      }

      v10 = v8++ < mCellRangesCount;
      --v9;
    }

    while (v9);
  }

  else
  {
    return 0;
  }

  return v10;
}

- (BOOL)partiallyIntersectsCellRange:(id)a3
{
  v5 = [(TSTCellRegion *)self boundingCellRange];
  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (v5.var0.var0 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((*&v5 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (!HIWORD(*&v5))
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((*&v5 & 0xFFFF00000000) == 0)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (a3.var0.var0 == 0xFFFF)
  {
    goto LABEL_23;
  }

  v9 = 0;
  if ((*&a3 & 0xFF0000) == 0xFF0000)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 16711680;
  v8 = 0xFFFFLL;
  if (!HIWORD(*&a3))
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  v9 = 0;
  if ((*&a3 & 0xFFFF00000000) != 0)
  {
    v8 = 0;
    if (v5.var0.var1 <= a3.var0.var1)
    {
      var1 = a3.var0.var1;
    }

    else
    {
      var1 = v5.var0.var1;
    }

    if (v5.var0.var0 <= a3.var0.var0)
    {
      var0 = a3.var0.var0;
    }

    else
    {
      var0 = v5.var0.var0;
    }

    if ((LOBYTE(v5.var1.var0) + v5.var0.var1 - 1) >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
    {
      v12 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
    }

    else
    {
      v12 = (LOBYTE(v5.var1.var0) + v5.var0.var1 - 1);
    }

    v13 = (a3.var0.var0 + a3.var1.var1 - 1);
    if ((v5.var0.var0 + v5.var1.var1 - 1) < v13)
    {
      v13 = (v5.var0.var0 + v5.var1.var1 - 1);
    }

    v7 = 0;
    v6 = 0;
    v9 = 0;
    if (var0 <= v13 && var1 <= v12)
    {
      v9 = ((v13 - var0) << 48) + 0x1000000000000;
      v6 = (((v12 - var1) << 32) + 0x100000000) & 0xFFFF00000000;
      v7 = var1 << 16;
      v8 = var0;
    }
  }

LABEL_24:
  result = 0;
  v15 = v7 | v8 | v6 | v9;
  if (v15 != 0xFFFF && (v15 & 0xFF0000) != 0xFF0000)
  {
    result = 0;
    if (HIWORD(v15))
    {
      if ((v15 & 0xFFFF00000000) != 0)
      {
        mCellRangesCount = self->mCellRangesCount;
        if (mCellRangesCount)
        {
          v17 = 0;
          v18 = (v15 ^ *&a3) & 0xFFFFFFFF00FFFFFFLL;
          mCellRanges = self->mCellRanges;
          v20 = HIWORD(*&a3);
          v21 = (~*&a3.var0 & 0xFF0000) != 0 && a3.var0.var0 != 0xFFFF;
          v22 = v20 == 0;
          v23 = v20 == 0;
          v24 = !v22;
          if ((*&a3 & 0xFFFF00000000) == 0)
          {
            v23 = 1;
          }

          v25 = a3.var0.var1;
          if ((*&a3 & 0xFFFF00000000) == 0)
          {
            v24 = 0;
          }

          if (a3.var0.var1 <= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
          {
            v25 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
          }

          while (1)
          {
            v27 = *mCellRanges++;
            v26 = v27;
            v28 = HIWORD(v27);
            v29 = HIWORD(v27) == 0;
            v30 = v27 & 0xFFFF00000000;
            if ((v27 & 0xFFFF00000000) == 0)
            {
              v29 = 1;
            }

            if (!v29 && !v23 && v26 <= a3.var0.var0 && (v26 + v28 - 1) >= a3.var0.var0 && BYTE2(v26) <= a3.var0.var1 && v25 <= (BYTE4(v26) + BYTE2(v26) - 1) && (v26 + v28 - 1) >= (a3.var0.var0 + a3.var1.var1 - 1))
            {
              return 0;
            }

            v31 = 0;
            if (v26 != 0xFFFF)
            {
              v32 = 0xFFFFLL;
              v33 = 16711680;
              v34 = 0;
              if ((v26 & 0xFF0000) == 0xFF0000)
              {
                goto LABEL_72;
              }

              v31 = 0;
              if (v28)
              {
                v32 = 0xFFFFLL;
                v33 = 16711680;
                v34 = 0;
                if (v30)
                {
                  if (v21 && v24)
                  {
                    v32 = 0;
                    if (BYTE2(v26) <= a3.var0.var1)
                    {
                      v35 = a3.var0.var1;
                    }

                    else
                    {
                      v35 = BYTE2(v26);
                    }

                    if (v26 <= a3.var0.var0)
                    {
                      v36 = a3.var0.var0;
                    }

                    else
                    {
                      v36 = v26;
                    }

                    if ((BYTE4(v26) + BYTE2(v26) - 1) >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
                    {
                      v37 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
                    }

                    else
                    {
                      v37 = (BYTE4(v26) + BYTE2(v26) - 1);
                    }

                    v38 = (v26 + v28 - 1);
                    if (v38 >= (a3.var0.var0 + a3.var1.var1 - 1))
                    {
                      v38 = (a3.var0.var0 + a3.var1.var1 - 1);
                    }

                    v33 = 0;
                    v31 = 0;
                    v34 = 0;
                    if (v36 <= v38 && v35 <= v37)
                    {
                      v34 = ((v38 - v36) << 48) + 0x1000000000000;
                      v31 = (((v37 - v35) << 32) + 0x100000000) & 0xFFFF00000000;
                      v33 = v35 << 16;
                      v32 = v36;
                    }
                  }

                  else
                  {
                    v31 = 0;
                    v34 = 0;
                    v32 = 0xFFFFLL;
                    v33 = 16711680;
                  }
                }

                goto LABEL_72;
              }
            }

            v32 = 0xFFFFLL;
            v33 = 16711680;
            v34 = 0;
LABEL_72:
            v39 = v33 | v32 | v31 | v34;
            if (v39 != 0xFFFF && (v39 & 0xFF0000) != 0xFF0000)
            {
              if (HIWORD(v39))
              {
                if ((v39 & 0xFFFF00000000) != 0)
                {
                  v40 = v39 & 0xFFFFFFFF00FFFFFFLL;
                  v17 |= v40 != 0;
                  if (v40)
                  {
                    if (v18)
                    {
                      return 1;
                    }
                  }
                }
              }
            }

            if (!--mCellRangesCount)
            {
              if ((v17 & 1) == 0)
              {
                return 0;
              }

              return ![(TSTCellRegion *)self containsCellRange:a3];
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[TSTCellRegion allocWithZone:](TSTCellRegion init];
  v6 = v5;
  mCellRangesCount = self->mCellRangesCount;
  v5->mCellRangesCount = mCellRangesCount;
  if (mCellRangesCount)
  {
    v8 = malloc_type_malloc(8 * mCellRangesCount, 0x100004000313F17uLL);
    v6->mCellRanges = v8;
    memcpy(v8, self->mCellRanges, 8 * self->mCellRangesCount);
  }

  else
  {
    v5->mCellRanges = 0;
  }

  v6->mBoundingCellRange = self->mBoundingCellRange;
  v6->mCellCount = self->mCellCount;
  v6->mIntersectingColumnsIndexSet = [(NSIndexSet *)self->mIntersectingColumnsIndexSet copyWithZone:a3];
  v6->mIntersectingRowsIndexSet = [(NSIndexSet *)self->mIntersectingRowsIndexSet copyWithZone:a3];
  v6->mUpperLeftCellID = self->mUpperLeftCellID;
  v6->mBottomRightCellID = self->mBottomRightCellID;
  return v6;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)suitableAnchor
{
  if (self->mCellRangesCount)
  {
    mCellRanges = self->mCellRanges;
  }

  else
  {
    mCellRanges = &TSTInvalidCellID;
  }

  return mCellRanges->var0;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)suitableCursor
{
  if (self->mCellRangesCount)
  {
    return ((*self->mCellRanges + ((*self->mCellRanges >> 16) & 0xFF0000) + 16711680) & 0xFF0000 | (*self->mCellRanges + HIWORD(*self->mCellRanges) - 1));
  }

  else
  {
    return 0xFFFFFF;
  }
}

- (id)iterator
{
  v2 = [[TSTCellRegionRowMajorIterator alloc] initWithCellRegion:self];

  return v2;
}

- (id)rightToLeftIterator
{
  v2 = [[TSTCellRegionRowMajorReverseIterator alloc] initWithCellRegion:self];

  return v2;
}

- (id)topToBottomIterator
{
  v2 = [[TSTCellRegionColMajorIterator alloc] initWithCellRegion:self];

  return v2;
}

- (void)enumerateCellIDsUsingBlock:(id)a3
{
  v9 = 0;
  v5 = [(TSTCellRegion *)self iterator];
  v6 = [v5 getNext];
  if (v6 != 0xFFFF)
  {
    v7 = v6;
    if ((v6 & 0xFF0000) != 0xFF0000)
    {
      do
      {
        v3 = v7 | v3 & 0xFFFFFFFF00000000;
        (*(a3 + 2))(a3, v3, &v9);
        v8 = [v5 getNext];
        if (v8 == 0xFFFF)
        {
          break;
        }

        v7 = v8;
        if ((v8 & 0xFF0000) == 0xFF0000)
        {
          break;
        }
      }

      while ((v9 & 1) == 0);
    }
  }
}

- (void)enumerateCellRangesUsingBlock:(id)a3
{
  v6 = 0;
  if (self->mCellRangesCount)
  {
    v5 = 0;
    do
    {
      (*(a3 + 2))(a3, *&self->mCellRanges[v5++], &v6);
    }

    while (v5 < self->mCellRangesCount && (v6 & 1) == 0);
  }
}

- (void)enumerateColumnsUsingBlock:(id)a3
{
  mIntersectingColumnsIndexSet = self->mIntersectingColumnsIndexSet;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TSTCellRegion_enumerateColumnsUsingBlock___block_invoke;
  v4[3] = &unk_279D481F8;
  v4[4] = a3;
  [(NSIndexSet *)mIntersectingColumnsIndexSet enumerateIndexesUsingBlock:v4];
}

- (void)enumerateRowsUsingBlock:(id)a3
{
  mIntersectingRowsIndexSet = self->mIntersectingRowsIndexSet;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__TSTCellRegion_enumerateRowsUsingBlock___block_invoke;
  v4[3] = &unk_279D481F8;
  v4[4] = a3;
  [(NSIndexSet *)mIntersectingRowsIndexSet enumerateIndexesUsingBlock:v4];
}

- (void)enumerateInDirection:(int)a3 usingBlock:(id)a4
{
  v4 = 48;
  if (a3 == 1)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__TSTCellRegion_enumerateInDirection_usingBlock___block_invoke;
  v6[3] = &unk_279D481F8;
  v6[4] = a4;
  [v5 enumerateIndexesUsingBlock:v6];
}

- (void)p_insertRangeIntoRegion:(id)a3
{
  if (a3.var0.var0 == 0xFFFF)
  {
    return;
  }

  if ((*&a3 & 0xFF0000) == 0xFF0000)
  {
    return;
  }

  var1 = a3.var1.var1;
  if (!a3.var1.var1 || (*&a3 & 0xFFFF00000000) == 0)
  {
    return;
  }

  mCellRangesCount = self->mCellRangesCount;
  mCellRanges = self->mCellRanges;
  if (mCellRangesCount)
  {
    v8 = 0;
    v9 = mCellRanges[mCellRangesCount - 1];
    v10 = 16711680;
    v11 = 0xFFFFLL;
    var0 = a3.var1.var0;
    if (mCellRanges[mCellRangesCount - 1].var0.var0 == 0xFFFF)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      if ((v9 & 0xFF0000) != 0xFF0000)
      {
        if (HIWORD(v9))
        {
          v14 = (v9 & 0xFFFF00000000) == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v8 = 0;
          v13 = 0;
          v10 = 16711680;
          v11 = 0xFFFFLL;
        }

        else
        {
          v11 = 0;
          v15 = BYTE2(v9);
          if (BYTE2(v9) <= a3.var0.var1)
          {
            v15 = a3.var0.var1;
          }

          if (*&mCellRanges[mCellRangesCount - 1] <= a3.var0.var0)
          {
            v16 = a3.var0.var0;
          }

          else
          {
            v16 = *&mCellRanges[mCellRangesCount - 1];
          }

          if ((BYTE4(v9) + BYTE2(v9) - 1) >= (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1))
          {
            v17 = (LOBYTE(a3.var1.var0) + a3.var0.var1 - 1);
          }

          else
          {
            v17 = (BYTE4(v9) + BYTE2(v9) - 1);
          }

          if ((v9 + HIWORD(v9) - 1) >= (a3.var0.var0 + a3.var1.var1 - 1))
          {
            v18 = (a3.var0.var0 + a3.var1.var1 - 1);
          }

          else
          {
            v18 = (v9 + HIWORD(v9) - 1);
          }

          v10 = 0;
          v8 = 0;
          v13 = 0;
          if (v16 <= v18 && v15 <= v17)
          {
            v13 = ((v18 - v16) << 48) + 0x1000000000000;
            v8 = (((v17 - v15) << 32) + 0x100000000) & 0xFFFF00000000;
            v10 = v15 << 16;
            v11 = v16;
          }
        }
      }
    }

    v19 = v10 | v11 | v8 | v13;
    if (v19 != 0xFFFF && (v19 & 0xFF0000) != 0xFF0000 && HIWORD(v19) && (v19 & 0xFFFF00000000) != 0)
    {
      v20 = [MEMORY[0x277D6C290] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTCellRegion p_insertRangeIntoRegion:]"];
      [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCellRegion.mm"), 1254, @"should never overlap."}];
      mCellRangesCount = self->mCellRangesCount;
      mCellRanges = self->mCellRanges;
      v9 = mCellRanges[mCellRangesCount - 1];
    }

    v22 = TSTCellRangeUnionCellRange(v9, *&a3);
    if (WORD2(v22) * HIWORD(v22) == a3.var1.var0 * var1 + WORD2(v9) * HIWORD(v9))
    {
      mCellRanges[mCellRangesCount - 1] = v22;
      v23 = self->mCellRangesCount;
      goto LABEL_38;
    }
  }

  else
  {
    var0 = a3.var1.var0;
  }

  v24 = malloc_type_realloc(mCellRanges, 8 * mCellRangesCount + 8, 0x100004000313F17uLL);
  self->mCellRanges = v24;
  v24[self->mCellRangesCount] = a3;
  v23 = self->mCellRangesCount + 1;
  self->mCellRangesCount = v23;
LABEL_38:
  v25 = TSTCellRangeUnionCellRange(*&self->mBoundingCellRange, *&a3);
  v26 = self->mCellCount + var0 * var1;
  self->mBoundingCellRange = v25;
  self->mCellCount = v26;
  if (v23 >= 2 && v26 == WORD2(v25) * HIWORD(v25))
  {
    *self->mCellRanges = v25;
    self->mCellRangesCount = 1;
  }
}

- (void)p_calculateAncillaryInformation
{
  [(TSTCellRegion *)self p_calculateIntersectingColumns];
  [(TSTCellRegion *)self p_calculateIntersectingRows];

  [(TSTCellRegion *)self p_calculateUpperLeftAndBottomRightCellID];
}

- (void)p_calculateIntersectingColumns
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = v3;
  if (self->mCellRangesCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      [(NSIndexSet *)v6 addIndexesInRange:self->mCellRanges[v4].var0.var1, self->mCellRanges[v4].var1.var0];
      v3 = v6;
      ++v5;
      ++v4;
    }

    while (v5 < self->mCellRangesCount);
  }

  if ([(NSIndexSet *)v3 count])
  {
    self->mIntersectingColumnsIndexSet = v6;
  }

  else
  {
  }
}

- (void)p_calculateIntersectingRows
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = v3;
  if (self->mCellRangesCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      [(NSIndexSet *)v6 addIndexesInRange:self->mCellRanges[v4].var0.var0, self->mCellRanges[v4].var1.var1];
      v3 = v6;
      ++v5;
      ++v4;
    }

    while (v5 < self->mCellRangesCount);
  }

  if ([(NSIndexSet *)v3 count])
  {
    self->mIntersectingRowsIndexSet = v6;
  }

  else
  {
  }
}

- (void)p_calculateUpperLeftAndBottomRightCellID
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3812000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__18;
  v16 = &unk_26CAC6BB9;
  v17 = 0xFFFFFF;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3812000000;
  v7 = __Block_byref_object_copy__17;
  v8 = __Block_byref_object_dispose__18;
  v9 = &unk_26CAC6BB9;
  v10 = 0xFFFFFF;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__TSTCellRegion_p_calculateUpperLeftAndBottomRightCellID__block_invoke;
  v3[3] = &unk_279D4A600;
  v3[4] = &v11;
  v3[5] = &v4;
  [(TSTCellRegion *)self enumerateCellRangesUsingBlock:v3];
  self->mUpperLeftCellID = v12[12];
  self->mBottomRightCellID = v5[12];
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v11, 8);
}

uint64_t __57__TSTCellRegion_p_calculateUpperLeftAndBottomRightCellID__block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 48);
  if (*(v2 + 48) == 0xFFFF || (*&v3 & 0xFF0000) == 0xFF0000 || a2 < v3 || a2 == *(v2 + 48) && BYTE2(a2) < BYTE2(v3))
  {
    *(v2 + 48) = a2;
    *(v2 + 50) = BYTE2(a2);
    *(v2 + 51) = BYTE3(a2);
  }

  v4 = a2 + ((a2 >> 16) & 0xFF0000) + 16711680;
  v5 = *(*(result + 40) + 8);
  v6 = *(v5 + 48);
  if (*(v5 + 48) == 0xFFFF || (*&v6 & 0xFF0000) == 0xFF0000 || (a2 + HIWORD(a2) - 1) > v6 || ((v7 = BYTE2(v6), (a2 + HIWORD(a2) - 1) == *(v5 + 48)) ? (v8 = BYTE2(v4) > v7) : (v8 = 0), v8))
  {
    *(v5 + 48) = a2 + HIWORD(a2) - 1;
    *(v5 + 50) = BYTE2(v4);
    *(v5 + 51) = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mBoundingCellRange = self->mBoundingCellRange;
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", mBoundingCellRange.origin.column, mBoundingCellRange.origin.row];
  v9 = [v3 stringWithFormat:@"<%@ %p boundingbox=%@", v5, self, objc_msgSend(v7, "stringWithFormat:", @"(%@, %@)", v8, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", mBoundingCellRange.size.numberOfColumns, HIWORD(*&mBoundingCellRange)))];
  v10 = v9;
  if (self->mCellRanges)
  {
    [v9 appendString:@" cellRanges={"];
    if (self->mCellRangesCount)
    {
      v11 = 0;
      do
      {
        v12 = self->mCellRanges[v11];
        v13 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%hu, %hu)", v12.var0.var1, v12.var0.var0];
        [v10 appendFormat:@"\n  { %@ }", objc_msgSend(v13, "stringWithFormat:", @"(%@, %@)", v14, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%hux%hu", v12.var1.var0, HIWORD(*&v12)))];
        ++v11;
      }

      while (v11 < self->mCellRangesCount);
    }

    v15 = @"}>";
  }

  else
  {
    v15 = @" cellRanges={empty}>";
  }

  [v10 appendString:v15];
  return v10;
}

- (void)fillCellRangeRowMajorSet:(void *)a3 leftToRight:(BOOL)a4
{
  mCellRangesCount = self->mCellRangesCount;
  if (a4)
  {
    if (mCellRangesCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, &self->mCellRanges[v7]);
        ++v8;
        ++v7;
      }

      while (v8 < self->mCellRangesCount);
    }
  }

  else if (mCellRangesCount)
  {
    v9 = 0;
    do
    {
      v10 = self->mCellRanges[v9];
      v10.var0.var1 = ~(*&v10.var1 + HIWORD(*&v10.var0));
      std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, &v10);
      ++v9;
    }

    while (v9 < self->mCellRangesCount);
  }

  std::__tree<TSUColumnRowRect,TSTCellRangeRowMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, TSTInvalidCellRange);
}

- (void)fillCellRangeColMajorSet:(void *)a3 leftToRight:(BOOL)a4
{
  mCellRangesCount = self->mCellRangesCount;
  if (a4)
  {
    if (mCellRangesCount)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, &self->mCellRanges[v7]);
        ++v8;
        ++v7;
      }

      while (v8 < self->mCellRangesCount);
    }
  }

  else if (mCellRangesCount)
  {
    v9 = 0;
    do
    {
      v10 = self->mCellRanges[v9];
      v10.var0.var1 = ~(*&v10.var1 + HIWORD(*&v10.var0));
      std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, &v10);
      ++v9;
    }

    while (v9 < self->mCellRangesCount);
  }

  std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(a3, TSTInvalidCellRange);
}

@end