@interface TSTCellRegion
+ (id)invalidRegion;
+ (id)region:(id)region addingRange:(TSUCellRect)range;
+ (id)region:(id)region addingRegion:(id)addingRegion;
+ (id)region:(id)region intersectingRange:(TSUCellRect)range;
+ (id)region:(id)region intersectingRegion:(id)intersectingRegion;
+ (id)region:(id)region subtractingColumnIndexes:(id)indexes;
+ (id)region:(id)region subtractingRange:(TSUCellRect)range;
+ (id)region:(id)region subtractingRegion:(id)subtractingRegion;
+ (id)region:(id)region subtractingRowIndexes:(id)indexes;
+ (id)regionFillingColumnsFromRegion:(id)region;
+ (id)regionFillingRowsFromRegion:(id)region;
+ (id)regionFromCellCoordSet:(const void *)set;
+ (id)regionFromCellDiffMap:(id)map withTableInfo:(id)info;
+ (id)regionFromCellIDVector:(const void *)vector;
+ (id)regionFromCellMap:(id)map withTableInfo:(id)info;
+ (id)regionFromCellMap:(id)map withTableInfo:(id)info passingTest:(id)test;
+ (id)regionFromCellRangeVector:(const void *)vector;
+ (id)regionFromCellTractRef:(id)ref;
+ (id)regionFromCellUIDVector:(const void *)vector withTableInfo:(id)info;
+ (id)regionFromColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes;
+ (id)regionFromColumnIndices:(id)indices;
+ (id)regionFromColumnIndices:(id)indices rowRange:(_NSRange)range;
+ (id)regionFromMergeActionArray:(id)array withTableInfo:(id)info;
+ (id)regionFromMergeList:(const void *)list;
+ (id)regionFromModelMergeList:(const void *)list;
+ (id)regionFromOverlappingCellRangeVector:(const void *)vector;
+ (id)regionFromPropertyListRepresentation:(id)representation;
+ (id)regionFromRange:(TSUCellRect)range;
+ (id)regionFromRowIndices:(id)indices;
+ (id)regionFromRowIndices:(id)indices columnRange:(_NSRange)range;
+ (id)regionFromViewCellRectVector:(const void *)vector;
+ (id)unionEveryRangeInRegion:(id)region withRange:(TSUCellRect)range;
+ (vector<TSUCellRect,)combineNonOverlappingCellRanges:(id)ranges addingOverlappingCellRanges:(SEL)cellRanges;
- (BOOL)containsCellID:(TSUCellCoord)d;
- (BOOL)containsCellRange:(TSUCellRect)range;
- (BOOL)containsCellRegion:(id)region;
- (BOOL)equalsCellRange:(TSUCellRect)range;
- (BOOL)equalsCellRegion:(id)region;
- (BOOL)intersectsCellRange:(TSUCellRect)range;
- (BOOL)intersectsCellRegion:(id)region;
- (BOOL)intersectsColumn:(unsigned __int16)column;
- (BOOL)intersectsRow:(unsigned int)row;
- (BOOL)isEqual:(id)equal;
- (BOOL)partiallyIntersectsCellRange:(TSUCellRect)range;
- (TSCECellCoordSet)asCellCoordSet;
- (TSTCellRegion)init;
- (TSUCellCoord)suitableAnchor;
- (TSUCellCoord)suitableCursor;
- (TSUCellRect)boundingCellRange;
- (TSUCellRect)largestRangeContainingCellID:(TSUCellCoord)d;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (id)intersectingColumnsInRow:(unsigned int)row;
- (id)isSingleCellWideOrHigh:(id)high;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newBottomToTopIterator;
- (id)newIterator;
- (id)newRightToLeftIterator;
- (id)p_copy;
- (id)propertyListRepresentation;
- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior;
- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block;
- (id)regionByAddingColumns:(id)columns;
- (id)regionByAddingModelCellRegion:(id)region;
- (id)regionByAddingRange:(TSUCellRect)range;
- (id)regionByAddingRegion:(id)region;
- (id)regionByAddingRows:(id)rows;
- (id)regionByAddingViewCellRegion:(id)region;
- (id)regionByApplyingRowMapping:(id)mapping;
- (id)regionByCollapsingRangesForRemovedColumns:(id)columns;
- (id)regionByCollapsingRangesForRemovedRows:(id)rows;
- (id)regionByIntersectingColumnIndices:(id)indices;
- (id)regionByIntersectingRange:(TSUCellRect)range;
- (id)regionByIntersectingRegion:(id)region;
- (id)regionByIntersectingRowIndices:(id)indices;
- (id)regionByMovingColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (id)regionByMovingRowsFromRange:(_NSRange)range toIndex:(unsigned int)index;
- (id)regionByRemovingColumns:(id)columns;
- (id)regionByRemovingRows:(id)rows;
- (id)regionBySubtractingColumnIndexes:(id)indexes;
- (id)regionBySubtractingModelCellRegion:(id)region;
- (id)regionBySubtractingRange:(TSUCellRect)range;
- (id)regionBySubtractingRegion:(id)region;
- (id)regionBySubtractingRowIndexes:(id)indexes;
- (id)regionBySubtractingViewCellRegion:(id)region;
- (id)regionByTrimmingAroundColumnIndices:(id)indices;
- (id)regionByTrimmingAroundRowIndices:(id)indices;
- (id)regionByUnioningEveryRangeInRegionWithRange:(TSUCellRect)range;
- (id)regionOffsetBy:(TSUColumnRowOffset)by;
- (unint64_t)hash;
- (vector<TSUCellRect,)rowBasedSubRangesOfCellCount:(TSTCellRegion *)self;
- (vector<TSUModelCellRect,)modelCellRanges;
- (void)enumerateCellIDsUsingBlock:(id)block;
- (void)enumerateCellRangesUsingBlock:(id)block;
- (void)enumerateColumnsInReverseUsingBlock:(id)block;
- (void)enumerateColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateColumnsUsingBlock:(id)block;
- (void)enumerateGridColumnsUsingBlock:(id)block;
- (void)enumerateGridRowsUsingBlock:(id)block;
- (void)enumerateInDirection:(int64_t)direction usingBlock:(id)block;
- (void)enumerateMissingColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateMissingRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateModelCellRectsUsingBlock:(id)block;
- (void)enumerateRowsInReverseUsingBlock:(id)block;
- (void)enumerateRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block;
- (void)enumerateRowsUsingBlock:(id)block;
- (void)enumerateViewCellRectsUsingBlock:(id)block;
- (void)fillCellRangeColMajorSet:(void *)set topToBottom:(BOOL)bottom;
- (void)fillCellRangeRowMajorSet:(void *)set leftToRight:(BOOL)right;
- (void)p_calculateAncillaryInformation;
- (void)p_copyFromRegion:(id)region;
- (void)p_insertRangeIntoRegion:(TSUCellRect)region;
- (void)saveToMessage:(void *)message;
@end

@implementation TSTCellRegion

- (TSTCellRegion)init
{
  v3.receiver = self;
  v3.super_class = TSTCellRegion;
  result = [(TSTCellRegion *)&v3 init];
  if (result)
  {
    result->_boundingCellRange = xmmword_2217E0780;
    result->_cellCount = 0;
    *&result->_firstCellID.row = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  }

  return result;
}

- (id)initFromMessage:(const void *)message
{
  v10 = objc_msgSend_init(self, a2, message, v3, v4);
  if (v10)
  {
    if (*(message + 6) >= 1)
    {
      v11 = 0;
      do
      {
        *&v14 = sub_22112397C(*(*(message + 4) + 8 * v11 + 8));
        *(&v14 + 1) = v12;
        sub_221083454(v10 + 8, &v14);
        ++v11;
      }

      while (v11 < *(message + 6));
    }

    objc_msgSend_p_calculateAncillaryInformation(v10, v6, v7, v8, v9);
  }

  return v10;
}

- (void)saveToMessage:(void *)message
{
  begin = self->_cellRanges.__begin_;
  if (self->_cellRanges.__end_ != begin)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(message + 4);
      if (!v8)
      {
        goto LABEL_8;
      }

      v9 = *(message + 6);
      v10 = *v8;
      if (v9 >= *v8)
      {
        break;
      }

      *(message + 6) = v9 + 1;
      v11 = *&v8[2 * v9 + 2];
LABEL_10:
      sub_2211239EC(*&begin[v6].origin, *&begin[v6].size, v11);
      ++v7;
      begin = self->_cellRanges.__begin_;
      ++v6;
      if (v7 >= self->_cellRanges.__end_ - begin)
      {
        return;
      }
    }

    if (v10 == *(message + 7))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((message + 16));
      v8 = *(message + 4);
      v10 = *v8;
    }

    *v8 = v10 + 1;
    v11 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(*(message + 2));
    v12 = *(message + 6);
    v13 = *(message + 4) + 8 * v12;
    *(message + 6) = v12 + 1;
    *(v13 + 8) = v11;
    begin = self->_cellRanges.__begin_;
    goto LABEL_10;
  }
}

+ (id)regionFromRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v5 = objc_alloc_init(objc_opt_class());
  v10 = v5;
  if (origin != 0x7FFFFFFF && (origin & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(size) && size)
  {
    objc_msgSend_p_insertRangeIntoRegion_(v5, v6, origin, size, v9);
  }

  objc_msgSend_p_calculateAncillaryInformation(v10, v6, v7, v8, v9);

  return v10;
}

+ (id)regionFromCellCoordSet:(const void *)set
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x4812000000;
  v12 = sub_2214475B4;
  v13 = sub_2214475D8;
  v14 = &unk_22188E88F;
  v16 = 0;
  v17 = 0;
  __p = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2214475F0;
  v8[3] = &unk_278465458;
  v8[4] = &v9;
  TSCECellCoordSet::enumerateColumnsUsingBlock(set, v8);
  v6 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v3, (v10 + 6), v4, v5);
  _Block_object_dispose(&v9, 8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v6;
}

+ (id)regionFromCellMap:(id)map withTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if (objc_msgSend_isUIDBased(mapCopy, v8, v9, v10, v11))
  {
    v16 = objc_msgSend_cellUIDs(mapCopy, v12, v13, v14, v15);
    v20 = objc_msgSend_cellRegionFromCellUIDList_(infoCopy, v17, v16, v18, v19);
  }

  else
  {
    v20 = objc_msgSend_regionFromCellMap_withTableInfo_passingTest_(self, v12, mapCopy, infoCopy, 0);
  }

  return v20;
}

+ (id)regionFromCellMap:(id)map withTableInfo:(id)info passingTest:(id)test
{
  mapCopy = map;
  infoCopy = info;
  testCopy = test;
  if (mapCopy)
  {
    objc_msgSend_coordinatesForTableInfo_passingTest_(mapCopy, v9, infoCopy, testCopy, v11);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  v13 = objc_msgSend_regionFromCellCoordSet_(TSTCellRegion, v9, &v15, v10, v11);
  sub_22107C860(&v16, *(&v16 + 1));

  return v13;
}

+ (id)regionFromCellDiffMap:(id)map withTableInfo:(id)info
{
  mapCopy = map;
  infoCopy = info;
  if (objc_msgSend_isUIDBased(mapCopy, v7, v8, v9, v10))
  {
    v15 = objc_msgSend_cellUIDList(mapCopy, v11, v12, v13, v14);
    v19 = objc_msgSend_cellRegionFromCellUIDList_(infoCopy, v16, v15, v17, v18);
  }

  else
  {
    v20 = objc_msgSend_cellIDs(mapCopy, v11, v12, v13, v14);
    v19 = objc_msgSend_regionFromCellIDVector_(TSTCellRegion, v21, v20, v22, v23);
  }

  return v19;
}

+ (id)regionFromCellIDVector:(const void *)vector
{
  __p = 0;
  v30 = 0;
  v31 = 0;
  v28 = xmmword_2217E0780;
  v3 = *vector;
  v4 = *(vector + 1);
  if (*vector != v4)
  {
    v5 = 0;
    v6 = 0x7FFF7FFFFFFFLL;
    do
    {
      v7 = *v3;
      if (v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v5) || !v5)
      {
        v6 = *v3;
        v5 = 0x100000001;
      }

      else
      {
        if ((v6 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
        {
          v8 = v7 & 0xFFFF000000000000;
          v9 = 0x100000001;
          v6 = *v3;
          v10 = HIDWORD(v7);
        }

        else
        {
          v10 = HIDWORD(v6);
          if ((v7 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
          {
            goto LABEL_13;
          }

          if (v6 > v7 || v6 + HIDWORD(v5) - 1 < v7 || WORD2(v6) > WORD2(v7))
          {
            goto LABEL_15;
          }

          v15 = v5 + WORD2(v6) - 1;
          if (WORD2(v6) == 0x7FFF || v5 == 0)
          {
            v15 = 0x7FFF;
          }

          if (v15 >= WORD2(v7))
          {
LABEL_13:
            v8 = v6 & 0xFFFF000000000000;
            v9 = v5;
          }

          else
          {
LABEL_15:
            v8 = 0;
            if (WORD2(v6) >= WORD2(v7))
            {
              v11 = HIDWORD(v7);
            }

            else
            {
              v11 = HIDWORD(v6);
            }

            if (v6 >= v7)
            {
              v12 = *v3;
            }

            else
            {
              v12 = v6;
            }

            v13 = v5 + WORD2(v6) - 1;
            if (WORD2(v6) == 0x7FFF)
            {
              v13 = 0x7FFF;
            }

            if (WORD2(v7) > v13)
            {
              v13 = WORD2(*v3);
            }

            v14 = v6 + HIDWORD(v5) - 1;
            if (v14 <= v7)
            {
              v14 = *v3;
            }

            v9 = ((v13 - v11 + 1) | ((v14 - v12) << 32)) + 0x100000000;
            LODWORD(v6) = v12;
            LOWORD(v10) = v11;
          }
        }

        if (HIDWORD(v9) * v9 == (HIDWORD(v5) * v5) + 1)
        {
          v6 = v8 | v6 | (v10 << 32);
          v5 = v9;
        }

        else
        {
          sub_221083454(&__p, &v28);
          v5 = 0x100000001;
          v6 = v7;
        }
      }

      *&v28 = v6;
      *(&v28 + 1) = v5;
      ++v3;
    }

    while (v3 != v4);
    v17 = v6 == 0x7FFFFFFF || (v6 & 0xFFFF00000000) == 0x7FFF00000000;
    v18 = v5;
    v19 = HIDWORD(v5);
    if (!v17 && v19 != 0 && v18 != 0)
    {
      sub_221083454(&__p, &v28);
    }
  }

  v22 = objc_opt_class();
  v26 = objc_msgSend_regionFromCellRangeVector_(v22, v23, &__p, v24, v25, v28);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v26;
}

+ (id)regionFromCellUIDVector:(const void *)vector withTableInfo:(id)info
{
  infoCopy = info;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v10 = *vector;
  v11 = *(vector + 1);
  if (*vector != v11)
  {
    do
    {
      v12 = v10[1];
      v25 = *v10;
      v26 = v12;
      v24[0] = v25;
      v24[1] = v12;
      v13 = objc_msgSend_cellIDForCellUID_(infoCopy, v6, v24, v7, v8);
      v14 = v28;
      if (v28 >= v29)
      {
        v16 = (v28 - __p) >> 3;
        if ((v16 + 1) >> 61)
        {
          sub_22107C148();
        }

        v17 = (v29 - __p) >> 2;
        if (v17 <= v16 + 1)
        {
          v17 = v16 + 1;
        }

        if (v29 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v17;
        }

        if (v18)
        {
          sub_2210874C4(&__p, v18);
        }

        v19 = (8 * v16);
        *v19 = v13;
        v15 = 8 * v16 + 8;
        v20 = v19 - (v28 - __p);
        memcpy(v20, __p, v28 - __p);
        v21 = __p;
        __p = v20;
        v28 = v15;
        v29 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v28 = v13;
        v15 = (v14 + 8);
      }

      v28 = v15;
      v10 += 2;
    }

    while (v10 != v11);
  }

  v22 = objc_msgSend_regionFromCellIDVector_(self, v6, &__p, v7, v8);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v22;
}

+ (id)regionFromCellRangeVector:(const void *)vector
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = *vector;
  v8 = *(vector + 1);
  v9 = v8 - *vector;
  if (v8 != *vector)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_22116C9DC(&__p, v7, v8, v9 >> 4);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v10, &__p, &v19, v11);
    v12 = v14;
    if (v14 != v15)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v6, v7, *v12, v12[1], v5);
        v12 += 2;
      }

      while (v12 != v15);
      v12 = v14;
    }

    if (v12)
    {
      operator delete(v12);
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }

  objc_msgSend_p_calculateAncillaryInformation(v6, v7, v8, v4, v5);

  return v6;
}

+ (id)regionFromOverlappingCellRangeVector:(const void *)vector
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = *vector;
  v8 = *(vector + 1);
  v9 = v8 - *vector;
  if (v8 != *vector)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_22116C9DC(&v19, v7, v8, v9 >> 4);
    __p = 0;
    v17 = 0;
    v18 = 0;
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v10, &__p, &v19, v11);
    v12 = v14;
    if (v14 != v15)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v6, v7, *v12, v12[1], v5);
        v12 += 2;
      }

      while (v12 != v15);
      v12 = v14;
    }

    if (v12)
    {
      operator delete(v12);
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }

  objc_msgSend_p_calculateAncillaryInformation(v6, v7, v8, v4, v5);

  return v6;
}

+ (id)regionFromMergeList:(const void *)list
{
  v51 = 0;
  v52 = 0;
  v53 = 0;
  __p = 0;
  v49 = 0;
  v50 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 1065353216;
  v3 = *list;
  v44 = *(list + 1);
  if (*list != v44)
  {
    do
    {
      v4 = TSUCellRect::rows(v3);
      v6 = v5;
      v7 = TSUCellRect::columns(v3);
      v9 = v4 + v6;
      v45 = v4;
      if (v4 < v4 + v6)
      {
        v10 = v7;
        v11 = v8;
        do
        {
          v12 = sub_2210BE30C(v46, &v45);
          if (v12)
          {
            v15 = v12[3];
            v20 = objc_msgSend_count(v15, v16, v17, v18, v19);
            objc_msgSend_addIndexesInRange_(v15, v21, v10, v11, v22);
            v27 = objc_msgSend_count(v15, v23, v24, v25, v26);

            if (v20 + v11 != v27)
            {
              p_p = &__p;
              goto LABEL_10;
            }
          }

          else
          {
            v28 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v13, v10, v11, v14);
            v54 = &v45;
            v29 = sub_221453794(v46, &v45);
            v30 = v29[3];
            v29[3] = v28;
          }

          ++v45;
        }

        while (v45 < v9);
      }

      p_p = &v51;
LABEL_10:
      sub_221083454(p_p, v3++);
    }

    while (v3 != v44);
  }

  v32 = objc_opt_class();
  v36 = objc_msgSend_regionFromCellRangeVector_(v32, v33, &v51, v34, v35);
  v39 = v36;
  v40 = __p;
  v41 = v49;
  if (__p == v49)
  {
    v42 = v36;
  }

  else
  {
    do
    {
      v42 = objc_msgSend_regionByAddingRange_(v39, v37, *v40, v40[1], v38);

      v40 += 2;
      v39 = v42;
    }

    while (v40 != v41);
  }

  sub_221087B80(v46);
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v42;
}

+ (id)regionFromModelMergeList:(const void *)list
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  v6 = *list;
  v7 = *(list + 1);
  while (v6 != v7)
  {
    v10 = *v6;
    sub_221083454(&__p, &v10);
    ++v6;
  }

  v8 = objc_msgSend_regionFromMergeList_(self, a2, &__p, v3, v4);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v8;
}

+ (id)regionFromMergeActionArray:(id)array withTableInfo:(id)info
{
  arrayCopy = array;
  infoCopy = info;
  v7 = objc_alloc_init(objc_opt_class());
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = sub_2214486E8;
  v23 = &unk_278465480;
  v8 = infoCopy;
  v24 = v8;
  v9 = v7;
  v25 = v9;
  objc_msgSend_enumerateObjectsUsingBlock_(arrayCopy, v10, &v20, v11, v12);
  objc_msgSend_p_calculateAncillaryInformation(v9, v13, v14, v15, v16, v20, v21, v22, v23);
  v17 = v25;
  v18 = v9;

  return v9;
}

+ (id)regionFromCellTractRef:(id)ref
{
  refCopy = ref;
  v4 = objc_alloc_init(objc_opt_class());
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22144893C;
  v14[3] = &unk_2784654A8;
  v5 = v4;
  v15 = v5;
  objc_msgSend_foreachRangeRef_(refCopy, v6, v14, v7, v8);
  objc_msgSend_p_calculateAncillaryInformation(v5, v9, v10, v11, v12);

  return v5;
}

+ (id)region:(id)region addingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v35[1] = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v11 = objc_alloc_init(objc_opt_class());
  if (regionCopy && (objc_msgSend_isEmpty(regionCopy, v7, v8, v9, v10) & 1) == 0)
  {
    v16 = regionCopy;
    v21 = objc_msgSend_cellRanges(v16, v17, v18, v19, v20);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_22116C9DC(&v30, *v21, v21[1], (v21[1] - *v21) >> 4);
    v33 = origin;
    v34 = size;
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_2214539F0(&__p, &v33, v35, 1uLL);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v22, &v30, &__p, v23);
    v24 = v33;
    v25 = v34;
    if (v33 != v34)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v11, v12, *v24, v24[1], v15);
        v24 += 2;
      }

      while (v24 != v25);
      v24 = v33;
    }

    if (v24)
    {
      v34 = v24;
      operator delete(v24);
    }

    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }

  else
  {
    objc_msgSend_p_insertRangeIntoRegion_(v11, v7, origin, size, v10);
  }

  objc_msgSend_p_calculateAncillaryInformation(v11, v12, v13, v14, v15);

  return v11;
}

+ (id)region:(id)region subtractingRange:(TSUCellRect)range
{
  rangeCopy = range;
  regionCopy = region;
  v9 = regionCopy;
  if (!regionCopy)
  {
    v29 = objc_alloc_init(objc_opt_class());
    goto LABEL_12;
  }

  if ((objc_msgSend_isEmpty(regionCopy, v5, v6, v7, v8) & 1) != 0 || (v40.origin = objc_msgSend_boundingCellRange(v9, v10, v11, v12, v13), v40.size = v14, (TSUCellRect::intersects(&v40, &rangeCopy) & 1) == 0))
  {
    v29 = v9;
LABEL_12:
    v16 = v29;
    goto LABEL_13;
  }

  v15 = objc_alloc_init(objc_opt_class());
  v40.origin = 0;
  v40.size = &v40;
  v41 = 0x2020000000;
  v42 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_221448D74;
  v31[3] = &unk_2784654D0;
  v35 = rangeCopy;
  v33 = &v36;
  v34 = &v40;
  v16 = v15;
  v32 = v16;
  objc_msgSend_enumerateCellRangesUsingBlock_(v9, v17, v31, v18, v19);
  if (v37[6] >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      objc_msgSend_p_insertRangeIntoRegion_(v16, v20, *(*(*&v40.size + 24) + v22), *(*(*&v40.size + 24) + v22 + 8), v21);
      ++v23;
      v22 += 16;
    }

    while (v23 < v37[6]);
  }

  v24 = *(*&v40.size + 24);
  if (v24)
  {
    free(v24);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  objc_msgSend_p_calculateAncillaryInformation(v16, v25, v26, v27, v28);
LABEL_13:

  return v16;
}

+ (id)region:(id)region subtractingRowIndexes:(id)indexes
{
  regionCopy = region;
  indexesCopy = indexes;
  v11 = indexesCopy;
  if (regionCopy)
  {
    if (objc_msgSend_count(indexesCopy, v7, v8, v9, v10))
    {
      v36.origin = objc_msgSend_boundingCellRange(regionCopy, v12, v13, v14, v15);
      v36.size = v16;
      if (TSUCellRect::intersectsRowIndexes(&v36, v11))
      {
        v21 = MEMORY[0x277CCAB58];
        v36.origin = objc_msgSend_boundingCellRange(regionCopy, v17, v18, v19, v20);
        v36.size = v22;
        v23 = TSUCellRect::rows(&v36);
        v26 = objc_msgSend_indexSetWithIndexesInRange_(v21, v24, v23, v24, v25);
        objc_msgSend_removeIndexes_(v26, v27, v11, v28, v29);
        v33 = objc_msgSend_regionByIntersectingRowIndices_(regionCopy, v30, v26, v31, v32);

        goto LABEL_8;
      }
    }

    v34 = regionCopy;
  }

  else
  {
    v34 = objc_alloc_init(objc_opt_class());
  }

  v33 = v34;
LABEL_8:

  return v33;
}

+ (id)region:(id)region subtractingColumnIndexes:(id)indexes
{
  regionCopy = region;
  indexesCopy = indexes;
  v11 = indexesCopy;
  if (regionCopy)
  {
    if (objc_msgSend_count(indexesCopy, v7, v8, v9, v10))
    {
      v36.origin = objc_msgSend_boundingCellRange(regionCopy, v12, v13, v14, v15);
      v36.size = v16;
      if (TSUCellRect::intersectsColumnIndexes(&v36, v11))
      {
        v21 = MEMORY[0x277CCAB58];
        v36.origin = objc_msgSend_boundingCellRange(regionCopy, v17, v18, v19, v20);
        v36.size = v22;
        v23 = TSUCellRect::columns(&v36);
        v26 = objc_msgSend_indexSetWithIndexesInRange_(v21, v24, v23, v24, v25);
        objc_msgSend_removeIndexes_(v26, v27, v11, v28, v29);
        v33 = objc_msgSend_regionByIntersectingColumnIndices_(regionCopy, v30, v26, v31, v32);

        goto LABEL_8;
      }
    }

    v34 = regionCopy;
  }

  else
  {
    v34 = objc_alloc_init(objc_opt_class());
  }

  v33 = v34;
LABEL_8:

  return v33;
}

+ (id)region:(id)region intersectingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  regionCopy = region;
  v7 = objc_alloc_init(objc_opt_class());
  v12 = v7;
  if (regionCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_221449540;
    v17[3] = &unk_2784654F8;
    v19 = origin;
    v20 = size;
    v18 = v7;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v13, v17, v14, v15);
  }

  objc_msgSend_p_calculateAncillaryInformation(v12, v8, v9, v10, v11);

  return v12;
}

+ (id)unionEveryRangeInRegion:(id)region withRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  regionCopy = region;
  v7 = objc_alloc_init(objc_opt_class());
  v11 = v7;
  if (regionCopy)
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x4812000000;
    v28 = sub_2214475B4;
    v29 = sub_2214475D8;
    v30 = &unk_22188E88F;
    v32 = 0;
    v33 = 0;
    __p = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2214497E4;
    v24[3] = &unk_278465520;
    v24[5] = origin;
    v24[6] = size;
    v24[4] = &v25;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v8, v24, v9, v10);
    objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v12, &v34, (v26 + 6), v13);
    v16 = v22;
    if (v22 != v23)
    {
      do
      {
        objc_msgSend_p_insertRangeIntoRegion_(v11, v14, *v16, v16[1], v15);
        v16 += 2;
      }

      while (v16 != v23);
      v16 = v22;
    }

    if (v16)
    {
      operator delete(v16);
    }

    _Block_object_dispose(&v25, 8);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }
  }

  else
  {
    objc_msgSend_p_insertRangeIntoRegion_(v7, v8, origin, size, v10);
  }

  objc_msgSend_p_calculateAncillaryInformation(v11, v17, v18, v19, v20);

  return v11;
}

+ (id)region:(id)region addingRegion:(id)addingRegion
{
  regionCopy = region;
  addingRegionCopy = addingRegion;
  if (!(regionCopy | addingRegionCopy))
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (!regionCopy || (objc_msgSend_isValid(regionCopy, v6, v7, v8, v9) & 1) == 0)
  {
    v31 = objc_msgSend_p_copy(addingRegionCopy, v6, v7, v8, v9);
LABEL_13:
    v11 = v31;
    goto LABEL_14;
  }

  if (!addingRegionCopy || (objc_msgSend_isValid(addingRegionCopy, v6, v7, v8, v9) & 1) == 0)
  {
    v31 = objc_msgSend_p_copy(regionCopy, v6, v7, v8, v9);
    goto LABEL_13;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v12 = objc_msgSend_cellRangeCount(regionCopy, v6, v7, v8, v9);
  if (v12 <= objc_msgSend_cellRangeCount(addingRegionCopy, v13, v14, v15, v16))
  {
    v33 = addingRegionCopy;
    v38 = objc_msgSend_cellRanges(v33, v34, v35, v36, v37);
    if (&v54 != v38)
    {
      sub_2210BD068(&v54, *v38, v38[1], (v38[1] - *v38) >> 4);
    }

    v39 = regionCopy;
    v28 = objc_msgSend_cellRanges(v39, v40, v41, v42, v43);
  }

  else
  {
    v17 = regionCopy;
    v22 = objc_msgSend_cellRanges(v17, v18, v19, v20, v21);
    if (&v54 != v22)
    {
      sub_2210BD068(&v54, *v22, v22[1], (v22[1] - *v22) >> 4);
    }

    v23 = addingRegionCopy;
    v28 = objc_msgSend_cellRanges(v23, v24, v25, v26, v27);
  }

  if (&v51 != v28)
  {
    sub_2210BD068(&v51, *v28, v28[1], (v28[1] - *v28) >> 4);
  }

  objc_msgSend_combineNonOverlappingCellRanges_addingOverlappingCellRanges_(TSTCellRegion, v29, &v54, &v51, v30);
  v11 = objc_alloc_init(objc_opt_class());
  for (i = __p; i != v50; i += 2)
  {
    objc_msgSend_p_insertRangeIntoRegion_(v11, v44, *i, i[1], v47);
  }

  objc_msgSend_p_calculateAncillaryInformation(v11, v44, v45, v46, v47);
  if (__p)
  {
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

LABEL_14:

  return v11;
}

+ (id)region:(id)region subtractingRegion:(id)subtractingRegion
{
  regionCopy = region;
  subtractingRegionCopy = subtractingRegion;
  if (objc_msgSend_isValid(regionCopy, v8, v9, v10, v11))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_221449C00;
    v26 = sub_221449C10;
    v27 = objc_msgSend_p_copy(regionCopy, v12, v13, v14, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_221449C18;
    v21[3] = &unk_278465548;
    v21[4] = &v22;
    v21[5] = self;
    objc_msgSend_enumerateCellRangesUsingBlock_(subtractingRegionCopy, v16, v21, v17, v18);
    v19 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v19 = regionCopy;
  }

  return v19;
}

+ (id)region:(id)region intersectingRegion:(id)intersectingRegion
{
  regionCopy = region;
  intersectingRegionCopy = intersectingRegion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_221449C00;
  v24 = sub_221449C10;
  v25 = objc_msgSend_invalidRegion(TSTCellRegion, v7, v8, v9, v10);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_221449DFC;
  v17[3] = &unk_278465570;
  v19 = &v20;
  v11 = regionCopy;
  v18 = v11;
  objc_msgSend_enumerateCellRangesUsingBlock_(intersectingRegionCopy, v12, v17, v13, v14);
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

+ (id)invalidRegion
{
  v2 = objc_alloc_init(objc_opt_class());
  objc_msgSend_p_calculateAncillaryInformation(v2, v3, v4, v5, v6);

  return v2;
}

+ (id)regionFillingColumnsFromRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy && !objc_msgSend_isEmpty(regionCopy, v4, v5, v6, v7))
  {
    v10 = objc_alloc_init(objc_opt_class());
    v36 = 0;
    v37 = &v36;
    v38 = 0x4012000000;
    v39 = sub_22144A098;
    v40 = nullsub_79;
    v41 = &unk_22188E88F;
    v42 = 0;
    v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13, v14);
    v20 = objc_msgSend_maxNumberOfRows(v15, v16, v17, v18, v19);
    *(v37 + 15) = v20;

    v21 = v8[7];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_22144A0A8;
    v33 = &unk_2784623E0;
    v35 = &v36;
    v9 = v10;
    v34 = v9;
    objc_msgSend_enumerateRangesUsingBlock_(v21, v22, &v30, v23, v24);
    objc_msgSend_p_calculateAncillaryInformation(v9, v25, v26, v27, v28, v30, v31, v32, v33);

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

+ (id)regionFillingRowsFromRegion:(id)region
{
  regionCopy = region;
  v8 = regionCopy;
  if (regionCopy && !objc_msgSend_isEmpty(regionCopy, v4, v5, v6, v7))
  {
    v10 = objc_alloc_init(objc_opt_class());
    v36 = 0;
    v37 = &v36;
    v38 = 0x4012000000;
    v39 = sub_22144A098;
    v40 = nullsub_79;
    v41 = &unk_22188E88F;
    v42 = 0;
    v15 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v11, v12, v13, v14);
    v20 = objc_msgSend_maxNumberOfColumns(v15, v16, v17, v18, v19);
    *(v37 + 14) = v20;

    v21 = v8[8];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = sub_22144A28C;
    v33 = &unk_2784623E0;
    v35 = &v36;
    v9 = v10;
    v34 = v9;
    objc_msgSend_enumerateRangesUsingBlock_(v21, v22, &v30, v23, v24);
    objc_msgSend_p_calculateAncillaryInformation(v9, v25, v26, v27, v28, v30, v31, v32, v33);

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

+ (id)regionFromRowIndices:(id)indices columnRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indicesCopy = indices;
  v7 = objc_alloc_init(objc_opt_class());
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22144A3B4;
  v17[3] = &unk_278465598;
  v19 = location;
  v20 = length;
  v8 = v7;
  v18 = v8;
  objc_msgSend_enumerateRangesUsingBlock_(indicesCopy, v9, v17, v10, v11);
  objc_msgSend_p_calculateAncillaryInformation(v8, v12, v13, v14, v15);

  return v8;
}

+ (id)regionFromRowIndices:(id)indices
{
  indicesCopy = indices;
  v9 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v5, v6, v7, v8);
  v14 = objc_msgSend_maxNumberOfColumns(v9, v10, v11, v12, v13);

  v16 = objc_msgSend_regionFromRowIndices_columnRange_(self, v15, indicesCopy, 0, v14);

  return v16;
}

+ (id)regionFromColumnIndices:(id)indices rowRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  indicesCopy = indices;
  v7 = objc_alloc_init(objc_opt_class());
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22144A570;
  v17[3] = &unk_278465598;
  v19 = location;
  v20 = length;
  v8 = v7;
  v18 = v8;
  objc_msgSend_enumerateRangesUsingBlock_(indicesCopy, v9, v17, v10, v11);
  objc_msgSend_p_calculateAncillaryInformation(v8, v12, v13, v14, v15);

  return v8;
}

+ (id)regionFromColumnIndices:(id)indices
{
  indicesCopy = indices;
  v9 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v5, v6, v7, v8);
  v14 = objc_msgSend_maxNumberOfRows(v9, v10, v11, v12, v13);

  v16 = objc_msgSend_regionFromColumnIndices_rowRange_(self, v15, indicesCopy, 0, v14);

  return v16;
}

+ (id)regionFromColumnIndexes:(id)indexes rowIndexes:(id)rowIndexes
{
  indexesCopy = indexes;
  rowIndexesCopy = rowIndexes;
  Index = objc_msgSend_lastIndex(indexesCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_firstIndex(indexesCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_count(indexesCopy, v17, v18, v19, v20);
  v26 = objc_msgSend_lastIndex(rowIndexesCopy, v22, v23, v24, v25);
  v31 = objc_msgSend_firstIndex(rowIndexesCopy, v27, v28, v29, v30);
  v36 = objc_msgSend_count(rowIndexesCopy, v32, v33, v34, v35);
  v41 = Index - v16 + 1;
  v42 = v26 - v31 + 1;
  if (v41 == v21 && v42 == v36)
  {
    v43 = objc_msgSend_firstIndex(indexesCopy, v37, v38, v39, v40);
    v48 = objc_msgSend_count(indexesCopy, v44, v45, v46, v47);
    v53 = objc_msgSend_firstIndex(rowIndexesCopy, v49, v50, v51, v52);
    v58 = objc_msgSend_count(rowIndexesCopy, v54, v55, v56, v57);
    v60 = sub_221447778(v43, v48, v53, v58, v59);
    v63 = objc_msgSend_regionFromRange_(TSTCellRegion, v61, v60, v61, v62);
  }

  else if (v41 == v21)
  {
    v75 = objc_msgSend_firstIndex(indexesCopy, v37, v38, v39, v40);
    v80 = objc_msgSend_count(indexesCopy, v76, v77, v78, v79);
    v63 = objc_msgSend_regionFromRowIndices_columnRange_(TSTCellRegion, v81, rowIndexesCopy, v75, v80);
  }

  else
  {
    if (v42 != v36)
    {
      v64 = objc_alloc_init(objc_opt_class());
      v90 = MEMORY[0x277D85DD0];
      v91 = 3221225472;
      v92 = sub_22144A8C0;
      v93 = &unk_27845EBE8;
      v94 = indexesCopy;
      v65 = v64;
      v95 = v65;
      objc_msgSend_enumerateRangesUsingBlock_(rowIndexesCopy, v66, &v90, v67, v68);
      objc_msgSend_p_calculateAncillaryInformation(v65, v69, v70, v71, v72, v90, v91, v92, v93);
      v73 = v95;
      v74 = v65;

      goto LABEL_10;
    }

    v82 = objc_msgSend_firstIndex(rowIndexesCopy, v37, v38, v39, v40);
    v87 = objc_msgSend_count(rowIndexesCopy, v83, v84, v85, v86);
    v63 = objc_msgSend_regionFromColumnIndices_rowRange_(TSTCellRegion, v88, indexesCopy, v82, v87);
  }

  v74 = v63;
LABEL_10:

  return v74;
}

+ (id)regionFromPropertyListRepresentation:(id)representation
{
  v29 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  objc_opt_class();
  v4 = TSUCheckedDynamicCast();
  v5 = objc_alloc_init(objc_opt_class());
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v28, 16);
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v26 = 0;
        v27 = 0;
        objc_msgSend_getBytes_length_(v13, v8, &v26, 16, v9, v22);
        if (v26 != 0x7FFFFFFF && (v26 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v27) != 0 && v27 != 0)
        {
          objc_msgSend_p_insertRangeIntoRegion_(v5, v8, v26, v27, v9);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v22, v28, 16);
    }

    while (v10);
  }

  objc_msgSend_p_calculateAncillaryInformation(v5, v17, v18, v19, v20);

  return v5;
}

+ (vector<TSUCellRect,)combineNonOverlappingCellRanges:(id)ranges addingOverlappingCellRanges:(SEL)cellRanges
{
  v6 = retstr;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v7 = (*(a5 + 1) - *a5) >> 4;
  v8 = *a4;
  v99 = *(a4 + 1);
  if (*a4 != v99)
  {
    while (1)
    {
      v101 = *v8;
      if (v7)
      {
        break;
      }

LABEL_98:
      if (v101 != 0x7FFFFFFF && (v101 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v101 + 1)) && DWORD2(v101) != 0)
      {
        sub_221083454(v6, &v101);
      }

      if (++v8 == v99)
      {
        goto LABEL_108;
      }
    }

    v9 = 0;
    while (1)
    {
      if (v101 == 0x7FFFFFFF || (v101 & 0xFFFF00000000) == 0x7FFF00000000 || HIDWORD(*(&v101 + 1)) == 0 || DWORD2(v101) == 0)
      {
        goto LABEL_98;
      }

      v100 = xmmword_2217E0780;
      v13 = (*a5 + 16 * v9);
      v14 = v13[1];
      v15 = HIDWORD(v14);
      if (HIDWORD(v14))
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_86;
      }

      v17 = *v13;
      if (v101 == 0x7FFFFFFF || v101 <= v17)
      {
        v18 = v101 + HIDWORD(v101) - 1;
        if (v101 == 0x7FFFFFFF)
        {
          v18 = 0x7FFFFFFF;
        }

        if (v18 >= v17 && WORD2(v101) <= WORD2(v17))
        {
          v19 = WORD2(v101) == 0x7FFF || DWORD2(v101) == 0;
          v20 = v19 ? 0x7FFF : WORD4(v101) + WORD2(v101) - 1;
          if (v20 >= WORD2(v17))
          {
            v21 = v14 + WORD2(v17) - 1;
            if (WORD2(v17) == 0x7FFF || v14 == 0)
            {
              v21 = 0x7FFF;
            }

            if (v20 >= v21)
            {
              v23 = v17 + HIDWORD(v14) - 1;
              if (v17 == 0x7FFFFFFF)
              {
                v23 = 0x7FFFFFFF;
              }

              if (v18 >= v23)
              {
                v42 = *(a5 + 1);
                v43 = v42 - (v13 + 2);
                if (v42 != (v13 + 2))
                {
                  memmove((*a5 + 16 * v9), v13 + 2, v42 - (v13 + 2));
                }

                *(a5 + 1) = v13 + v43;
                --v9;
                --v7;
                v6 = retstr;
                goto LABEL_92;
              }
            }
          }
        }
      }

      v24 = v17 & 0xFFFF00000000;
      if (v17 != 0x7FFFFFFFLL || v24 == 0x7FFF00000000)
      {
        v27 = v17 == 0x7FFFFFFF && v24 != 0x7FFF00000000;
        if (v101 < v17 && !v27)
        {
          goto LABEL_86;
        }

        v28 = v17 + HIDWORD(v14) - 1;
        if (v17 == 0x7FFFFFFF)
        {
          v28 = 0x7FFFFFFF;
        }

        if (v28 < v101)
        {
          goto LABEL_86;
        }

        if (v17 != 0x7FFFFFFFLL && v24 == 0x7FFF00000000)
        {
          v29 = v14 + 32766;
          v30 = DWORD1(v101);
          v31 = 0x7FFF;
LABEL_67:
          if (v31 == 0x7FFF || v14 == 0)
          {
            v35 = 0x7FFF;
          }

          else
          {
            v35 = v29;
          }

          v36 = v30;
          v37 = WORD4(v101) + v30 - 1;
          if (v36 == 0x7FFF || DWORD2(v101) == 0)
          {
            v39 = 0x7FFF;
          }

          else
          {
            v39 = v37;
          }

          if (v35 >= v39)
          {
            v40 = v17 + v15 - 1;
            if (v17 == 0x7FFFFFFF)
            {
              v40 = 0x7FFFFFFF;
            }

            v41 = v101 == 0x7FFFFFFF ? 0x7FFFFFFF : v101 + HIDWORD(v101) - 1;
            if (v40 >= v41)
            {
              v101 = xmmword_2217E0780;
              goto LABEL_98;
            }
          }

          goto LABEL_86;
        }
      }

      v30 = DWORD1(v101);
      v31 = WORD2(v17);
      if (WORD2(v17) <= WORD2(v101))
      {
        v32 = WORD2(v17) == 0x7FFF || v14 == 0;
        v29 = v14 - 1 + WORD2(v17);
        v33 = v32 ? 0x7FFF : v14 - 1 + WORD2(v17);
        if (v33 >= WORD2(v101))
        {
          goto LABEL_67;
        }
      }

LABEL_86:
      if (sub_22144B1FC(&v101, *a5 + 16 * v9, &v100) && v100 != 0x7FFFFFFF && (v100 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v100 + 1)) && DWORD2(v100))
      {
        sub_221083454(a5, &v100);
        ++v7;
      }

LABEL_92:
      if (++v9 >= v7)
      {
        goto LABEL_98;
      }
    }
  }

LABEL_108:
  if (v7 >= 2)
  {
    for (i = 1; i < v7; ++i)
    {
      v47 = 0;
      v48 = i;
      do
      {
        v101 = xmmword_2217E0780;
        v49 = (*a5 + 16 * i);
        v50 = v49[1];
        v51 = (*a5 + v47);
        v52 = v51[1];
        v53 = HIDWORD(v50);
        if (HIDWORD(v50))
        {
          v54 = v50 == 0;
        }

        else
        {
          v54 = 1;
        }

        v55 = HIDWORD(v52);
        if (v54 || v55 == 0 || v52 == 0)
        {
          goto LABEL_122;
        }

        v58 = *v49;
        v59 = *v51;
        v60 = *v49;
        v61 = *v49 & 0xFFFF00000000;
        if (v60 != 0x7FFFFFFF || v61 == 0x7FFF00000000)
        {
          if ((v61 == 0x7FFF00000000 || v58 != 0x7FFFFFFF) && v58 > v59)
          {
            goto LABEL_176;
          }

          v65 = v58 + HIDWORD(v50) - 1;
          if (v58 == 0x7FFFFFFF)
          {
            v65 = 0x7FFFFFFF;
          }

          if (v65 < v59)
          {
            goto LABEL_176;
          }

          if (v60 != 0x7FFFFFFF && v61 == 0x7FFF00000000)
          {
            v70 = v50 + 32766;
            v67 = HIDWORD(v59);
            v68 = 0x7FFF;
LABEL_159:
            if (v68 == 0x7FFF || v50 == 0)
            {
              v73 = 0x7FFF;
            }

            else
            {
              v73 = v70;
            }

            v74 = v67;
            v75 = v52 + v67 - 1;
            if (v74 == 0x7FFF || v52 == 0)
            {
              v75 = 0x7FFF;
            }

            if (v73 >= v75)
            {
              v77 = v58 + HIDWORD(v50) - 1;
              if (v58 == 0x7FFFFFFF)
              {
                v77 = 0x7FFFFFFF;
              }

              v78 = v59 + HIDWORD(v52) - 1;
              if (v59 == 0x7FFFFFFF)
              {
                v78 = 0x7FFFFFFF;
              }

              if (v77 >= v78)
              {
                goto LABEL_222;
              }
            }

            goto LABEL_176;
          }
        }

        v67 = HIDWORD(v59);
        v68 = WORD2(v58);
        if (WORD2(v58) <= WORD2(v59))
        {
          v69 = WORD2(v58) == 0x7FFF || v50 == 0;
          v70 = v50 - 1 + WORD2(v58);
          v71 = v69 ? 0x7FFF : v50 - 1 + WORD2(v58);
          if (v71 >= WORD2(v59))
          {
            goto LABEL_159;
          }
        }

LABEL_176:
        v79 = v59 & 0xFFFF00000000;
        if (v59 == 0x7FFFFFFFLL && v79 != 0x7FFF00000000)
        {
          goto LABEL_195;
        }

        v82 = v59 == 0x7FFFFFFF && v79 != 0x7FFF00000000;
        if (v58 < v59 && !v82)
        {
          goto LABEL_122;
        }

        v83 = v59 + HIDWORD(v52) - 1;
        if (v59 == 0x7FFFFFFF)
        {
          v83 = 0x7FFFFFFF;
        }

        if (v83 < v58)
        {
          goto LABEL_122;
        }

        if (v59 != 0x7FFFFFFFLL && v79 == 0x7FFF00000000)
        {
          v84 = v52 + 32766;
          v85 = HIDWORD(v58);
          v86 = 0x7FFF;
        }

        else
        {
LABEL_195:
          v85 = HIDWORD(v58);
          v86 = WORD2(v59);
          if (WORD2(v59) > WORD2(v58))
          {
            goto LABEL_122;
          }

          v87 = WORD2(v59) == 0x7FFF || v52 == 0;
          v84 = v52 - 1 + WORD2(v59);
          v88 = v87 ? 0x7FFF : v52 - 1 + WORD2(v59);
          if (v88 < WORD2(v58))
          {
            goto LABEL_122;
          }
        }

        if (v86 == 0x7FFF || v52 == 0)
        {
          v90 = 0x7FFF;
        }

        else
        {
          v90 = v84;
        }

        v91 = v85;
        v92 = v50 + v85 - 1;
        if (v91 == 0x7FFF || v50 == 0)
        {
          v94 = 0x7FFF;
        }

        else
        {
          v94 = v92;
        }

        if (v90 >= v94)
        {
          v95 = v59 + v55 - 1;
          if (v59 == 0x7FFFFFFF)
          {
            v95 = 0x7FFFFFFF;
          }

          v96 = v58 + v53 - 1;
          if (v58 == 0x7FFFFFFF)
          {
            v96 = 0x7FFFFFFF;
          }

          if (v95 >= v96)
          {
            v51 = (*a5 + 16 * i);
LABEL_222:
            *v51 = xmmword_2217E0780;
            goto LABEL_128;
          }
        }

LABEL_122:
        if (sub_22144B1FC(v51, v49, &v101) && v101 != 0x7FFFFFFF && (v101 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(*(&v101 + 1)) && DWORD2(v101))
        {
          sub_221083454(a5, &v101);
          ++v7;
        }

LABEL_128:
        v47 += 16;
        --v48;
      }

      while (v48);
    }
  }

  return sub_22133594C(retstr, retstr->__end_, *a5, *(a5 + 1), (*(a5 + 1) - *a5) >> 4);
}

- (id)regionByAddingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_opt_class();

  return objc_msgSend_region_addingRange_(v6, v7, self, origin, size);
}

- (id)regionBySubtractingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_opt_class();

  return objc_msgSend_region_subtractingRange_(v6, v7, self, origin, size);
}

- (id)regionBySubtractingRowIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = objc_opt_class();
  v8 = objc_msgSend_region_subtractingRowIndexes_(v5, v6, self, indexesCopy, v7);

  return v8;
}

- (id)regionBySubtractingColumnIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = objc_opt_class();
  v8 = objc_msgSend_region_subtractingColumnIndexes_(v5, v6, self, indexesCopy, v7);

  return v8;
}

- (id)regionByIntersectingRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = objc_msgSend_boundingCellRange(self, a2, *&range.origin, *&range.size, v3);
  if (!HIDWORD(size) || !size || !HIDWORD(v8) || !v8)
  {
    goto LABEL_45;
  }

  v9 = origin & 0xFFFF00000000;
  if (origin != 0x7FFFFFFFLL || v9 == 0x7FFF00000000)
  {
    v15 = v9 != 0x7FFF00000000 && origin == 0x7FFFFFFF;
    if (!v15 && origin > v7)
    {
      goto LABEL_45;
    }

    v16 = origin + HIDWORD(size) - 1;
    if (origin == 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFF;
    }

    if (v16 < v7)
    {
      goto LABEL_45;
    }

    if (origin != 0x7FFFFFFFLL && v9 == 0x7FFF00000000)
    {
      v13 = size + 32766;
      v10 = HIDWORD(v7);
      v11 = 0x7FFF;
      goto LABEL_27;
    }
  }

  v10 = HIDWORD(v7);
  v11 = WORD2(origin);
  if (WORD2(origin) > WORD2(v7) || (WORD2(origin) != 0x7FFF ? (v12 = size == 0) : (v12 = 1), (v13 = size + WORD2(origin) - 1, !v12) ? (v14 = size + WORD2(origin) - 1) : (v14 = 0x7FFF), v14 < WORD2(v7)))
  {
LABEL_45:
    v24 = objc_opt_class();
    selfCopy = objc_msgSend_region_intersectingRange_(v24, v25, self, origin, size);
    goto LABEL_46;
  }

LABEL_27:
  if (v11 == 0x7FFF || size == 0)
  {
    v18 = 0x7FFF;
  }

  else
  {
    v18 = v13;
  }

  v19 = v10;
  v20 = v8 + v10 - 1;
  if (v19 == 0x7FFF || v8 == 0)
  {
    v20 = 0x7FFF;
  }

  if (v18 < v20)
  {
    goto LABEL_45;
  }

  v22 = origin + HIDWORD(size) - 1;
  if (origin == 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = v7 == 0x7FFFFFFF ? 0x7FFFFFFF : v7 + HIDWORD(v8) - 1;
  if (v22 < v23)
  {
    goto LABEL_45;
  }

  selfCopy = self;
LABEL_46:

  return selfCopy;
}

- (id)regionByUnioningEveryRangeInRegionWithRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v6 = objc_opt_class();

  return (MEMORY[0x2821F9670])(v6, sel_unionEveryRangeInRegion_withRange_, self, origin, size);
}

- (id)regionByAddingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v8 = objc_msgSend_region_addingRegion_(v5, v6, self, regionCopy, v7);

  return v8;
}

- (id)regionBySubtractingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v8 = objc_msgSend_region_subtractingRegion_(v5, v6, self, regionCopy, v7);

  return v8;
}

- (id)regionByIntersectingRegion:(id)region
{
  regionCopy = region;
  v5 = objc_opt_class();
  v8 = objc_msgSend_region_intersectingRegion_(v5, v6, self, regionCopy, v7);

  return v8;
}

- (id)regionOffsetBy:(TSUColumnRowOffset)by
{
  v5 = objc_alloc_init(objc_opt_class());
  v10 = objc_msgSend_sharedTableConfiguration(TSTConfiguration, v6, v7, v8, v9);
  v68 = objc_msgSend_maxNumberOfColumns(v10, v11, v12, v13, v14);
  v19 = objc_msgSend_maxNumberOfRows(v10, v15, v16, v17, v18);
  if (!v5)
  {
    goto LABEL_68;
  }

  v24 = 0;
  v66 = v19;
  origin = self->_boundingCellRange.origin;
  row = origin.row;
  v27 = 0x7FFF00000000;
  v28 = 0x7FFFFFFFLL;
  v67 = HIDWORD(*&by);
  if (origin.row == 0x7FFFFFFFLL)
  {
    goto LABEL_22;
  }

  v29 = 0;
  if ((*&origin & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_23;
  }

  v24 = 0;
  size = self->_boundingCellRange.size;
  v31 = HIDWORD(*&size);
  v28 = 0x7FFFFFFFLL;
  if (!HIDWORD(*&size))
  {
    goto LABEL_22;
  }

  v29 = 0;
  if (!size.numberOfColumns)
  {
    goto LABEL_23;
  }

  v32 = HIDWORD(*&origin);
  if (by.var0)
  {
    v24 = 0;
    v33 = by.var0 + origin.column;
    if (origin.column == 0x7FFF)
    {
      v34 = 0x7FFF;
    }

    else
    {
      v34 = (LOWORD(size.numberOfColumns) + origin.column - 1);
    }

    v27 = 0x7FFF00000000;
    v28 = 0x7FFFFFFFLL;
    if (v33 >= v68)
    {
      goto LABEL_22;
    }

    v35 = v34 + by.var0;
    v29 = 0;
    if (v35 < 0)
    {
      goto LABEL_23;
    }

    LODWORD(v32) = v33 & ~(v33 >> 31);
    v36 = v68 - 1;
    if (v35 < v68 - 1)
    {
      v36 = v35;
    }

    size.numberOfColumns = v36 - v32 + 1;
  }

  if (!v67)
  {
LABEL_21:
    v29 = *&origin & 0xFFFF000000000000;
    v24 = size.numberOfColumns | (v31 << 32);
    v27 = v32 << 32;
    v28 = row;
    goto LABEL_23;
  }

  v24 = 0;
  v37 = origin.row + (*&by >> 32);
  v28 = 0x7FFFFFFFLL;
  if (v37 >= v19)
  {
LABEL_22:
    v29 = 0;
    goto LABEL_23;
  }

  v38 = (origin.row + v31 - 1) + (*&by >> 32);
  v29 = 0;
  if ((v38 & 0x8000000000000000) == 0)
  {
    row = v37 & ~(v37 >> 63);
    v39 = v19 - 1;
    if (v38 < v39)
    {
      v39 = v38;
    }

    v31 = v39 - row + 1;
    goto LABEL_21;
  }

LABEL_23:
  v5[4] = v27 | v28 | v29;
  v5[5] = v24;
  __p = 0;
  v71 = 0;
  v72 = 0;
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin != end)
  {
    v42 = 0;
    v43 = *&by >> 32;
    v65 = v19 - 1;
    while (1)
    {
      v44 = begin->origin;
      v45 = *&begin->origin;
      v46 = v45 == 0x7FFFFFFF || (*&begin->origin & 0xFFFF00000000) == 0x7FFF00000000;
      if (v46 || ((v47 = begin->size, (v48 = HIDWORD(*&v47)) != 0) ? (v49 = v47.numberOfColumns == 0) : (v49 = 1), v49))
      {
        v50 = 0;
        v51 = 0;
        v52 = 0x7FFF00000000;
        v53 = 0x7FFFFFFFLL;
        goto LABEL_35;
      }

      v55 = HIDWORD(*&v44);
      if (by.var0)
      {
        v50 = 0;
        v56 = by.var0 + v44.column;
        if (v47.numberOfColumns)
        {
          v57 = v44.column == 0x7FFF;
        }

        else
        {
          v57 = 1;
        }

        if (v57)
        {
          v58 = 0x7FFF;
        }

        else
        {
          v58 = (LOWORD(v47.numberOfColumns) + v44.column - 1);
        }

        v52 = 0x7FFF00000000;
        if (v56 >= v68)
        {
          goto LABEL_62;
        }

        v59 = v58 + by.var0;
        v53 = 0x7FFFFFFFLL;
        v51 = 0;
        if (v59 < 0)
        {
          goto LABEL_35;
        }

        LODWORD(v55) = v56 & ~(v56 >> 31);
        if (v59 >= v68 - 1)
        {
          v60 = v68 - 1;
        }

        else
        {
          v60 = v59;
        }

        v47.numberOfColumns = v60 - v55 + 1;
      }

      if (!v67)
      {
        goto LABEL_61;
      }

      v50 = 0;
      v61 = v45 + v43;
      v52 = 0x7FFF00000000;
      if (v61 < v66)
      {
        v62 = (v44.row + v48 - 1) + v43;
        v53 = 0x7FFFFFFFLL;
        v51 = 0;
        if (v62 < 0)
        {
          goto LABEL_35;
        }

        v45 = v61 & ~(v61 >> 63);
        v63 = v65;
        if (v62 < v65)
        {
          v63 = v62;
        }

        v48 = v63 - v45 + 1;
LABEL_61:
        v51 = *&v44 & 0xFFFF000000000000;
        v50 = v47.numberOfColumns | (v48 << 32);
        v52 = v55 << 32;
        v53 = v45;
        goto LABEL_35;
      }

LABEL_62:
      v53 = 0x7FFFFFFFLL;
      v51 = 0;
LABEL_35:
      v54 = v52 | v51 | v53;
      *&v69 = v54;
      *(&v69 + 1) = v50;
      if (v53 != 0x7FFFFFFF && (v54 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v50) && v50)
      {
        sub_221083454(&__p, &v69);
        v42 += (HIDWORD(v69) * DWORD2(v69));
      }

      if (++begin == end)
      {
        goto LABEL_64;
      }
    }
  }

  v42 = 0;
LABEL_64:
  if (v5 + 1 != &__p)
  {
    sub_2210BD068(v5 + 1, __p, v71, (v71 - __p) >> 4);
  }

  v5[6] = v42;
  objc_msgSend_p_calculateAncillaryInformation(v5, v20, v21, v22, v23, v65);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

LABEL_68:

  return v5;
}

- (id)regionByRemovingRows:(id)rows
{
  rowsCopy = rows;
  v9 = rowsCopy;
  if (rowsCopy && objc_msgSend_count(rowsCopy, v5, v6, v7, v8))
  {
    v10 = objc_alloc_init(TSTCellRegion);
    v15 = objc_msgSend_boundingCellRange(self, v11, v12, v13, v14);
    if (v16 >> 32)
    {
      v18 = v15 == 0x7FFFFFFF;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v16, 0, 0x80000000, v17);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v16, 0, (HIDWORD(v16) + v15), v17);
    }
    v19 = ;
    objc_msgSend_removeIndexes_(v19, v20, v9, v21, v22);
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = sub_22144C234;
    v37 = &unk_2784655C0;
    v40 = v42;
    v41 = v44;
    selfCopy = self;
    v23 = v10;
    v39 = v23;
    objc_msgSend_enumerateRangesUsingBlock_(v19, v24, &v34, v25, v26);
    objc_msgSend_p_calculateAncillaryInformation(v23, v27, v28, v29, v30, v34, v35, v36, v37, selfCopy);
    v31 = v39;
    selfCopy2 = v23;

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)regionByRemovingColumns:(id)columns
{
  columnsCopy = columns;
  v9 = columnsCopy;
  if (columnsCopy && objc_msgSend_count(columnsCopy, v5, v6, v7, v8))
  {
    v10 = objc_alloc_init(TSTCellRegion);
    v15 = objc_msgSend_boundingCellRange(self, v11, v12, v13, v14);
    if (v16)
    {
      v18 = (v15 & 0xFFFF00000000) == 0x7FFF00000000;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v16, 0, 0x8000, v17);
    }

    else
    {
      objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v16, 0, (v16 + WORD2(v15) - 1) + 1, v17);
    }
    v19 = ;
    objc_msgSend_removeIndexes_(v19, v20, v9, v21, v22);
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v43 = 0;
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = sub_22144C568;
    v37 = &unk_2784655C0;
    v40 = v42;
    v41 = v44;
    selfCopy = self;
    v23 = v10;
    v39 = v23;
    objc_msgSend_enumerateRangesUsingBlock_(v19, v24, &v34, v25, v26);
    objc_msgSend_p_calculateAncillaryInformation(v23, v27, v28, v29, v30, v34, v35, v36, v37, selfCopy);
    v31 = v39;
    selfCopy2 = v23;

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

- (id)regionByCollapsingRangesForRemovedRows:(id)rows
{
  rowsCopy = rows;
  v9 = objc_msgSend_intersectingRowsIndexSet(self, v5, v6, v7, v8);
  v13 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v9, v10, rowsCopy, v11, v12);

  v17 = objc_msgSend_regionByRemovingRows_(self, v14, rowsCopy, v15, v16);
  v21 = objc_msgSend_tsu_indexSetByExcludingIndexes_(rowsCopy, v18, v13, v19, v20);
  if (objc_msgSend_count(v21, v22, v23, v24, v25))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_221449C00;
    v43 = sub_221449C10;
    v44 = objc_msgSend_invalidRegion(TSTCellRegion, v26, v27, v28, v29);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22144C89C;
    v36[3] = &unk_27845F7D8;
    v37 = v21;
    v38 = &v39;
    objc_msgSend_enumerateCellRangesUsingBlock_(v17, v30, v36, v31, v32);
    v33 = v40[5];

    _Block_object_dispose(&v39, 8);
    v17 = v33;
  }

  v34 = v17;

  return v17;
}

- (id)regionByCollapsingRangesForRemovedColumns:(id)columns
{
  columnsCopy = columns;
  v9 = objc_msgSend_intersectingColumnsIndexSet(self, v5, v6, v7, v8);
  v13 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v9, v10, columnsCopy, v11, v12);

  v17 = objc_msgSend_regionByRemovingColumns_(self, v14, columnsCopy, v15, v16);
  v21 = objc_msgSend_tsu_indexSetByExcludingIndexes_(columnsCopy, v18, v13, v19, v20);
  if (objc_msgSend_count(v21, v22, v23, v24, v25))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_221449C00;
    v43 = sub_221449C10;
    v44 = objc_msgSend_invalidRegion(TSTCellRegion, v26, v27, v28, v29);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_22144CB30;
    v36[3] = &unk_27845F7D8;
    v37 = v21;
    v38 = &v39;
    objc_msgSend_enumerateCellRangesUsingBlock_(v17, v30, v36, v31, v32);
    v33 = v40[5];

    _Block_object_dispose(&v39, 8);
    v17 = v33;
  }

  v34 = v17;

  return v17;
}

- (id)regionByIntersectingRowIndices:(id)indices
{
  indicesCopy = indices;
  if (objc_msgSend_count(indicesCopy, v5, v6, v7, v8))
  {
    v13 = objc_alloc_init(TSTCellRegion);
    v14 = TSUCellRect::rows(&self->_boundingCellRange);
    v16 = v15;
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_22144CD20;
    v29 = &unk_27845EBE8;
    selfCopy = self;
    v17 = v13;
    v31 = v17;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indicesCopy, v18, v14, v16, 0, &v26);
    objc_msgSend_p_calculateAncillaryInformation(v17, v19, v20, v21, v22, v26, v27, v28, v29, selfCopy);
    v23 = v31;
    v24 = v17;
  }

  else
  {
    v24 = objc_msgSend_invalidRegion(TSTCellRegion, v9, v10, v11, v12);
  }

  return v24;
}

- (id)regionByIntersectingColumnIndices:(id)indices
{
  indicesCopy = indices;
  if (objc_msgSend_count(indicesCopy, v5, v6, v7, v8))
  {
    v13 = TSUCellRect::columns(&self->_boundingCellRange);
    v15 = v14;
    v16 = objc_alloc_init(TSTCellRegion);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_22144CF94;
    v29 = &unk_27845EBE8;
    selfCopy = self;
    v17 = v16;
    v31 = v17;
    objc_msgSend_enumerateRangesInRange_options_usingBlock_(indicesCopy, v18, v13, v15, 0, &v26);
    objc_msgSend_p_calculateAncillaryInformation(v17, v19, v20, v21, v22, v26, v27, v28, v29, selfCopy);
    v23 = v31;
    v24 = v17;
  }

  else
  {
    v24 = objc_msgSend_invalidRegion(TSTCellRegion, v9, v10, v11, v12);
  }

  return v24;
}

- (id)regionByAddingRows:(id)rows
{
  rowsCopy = rows;
  if (rowsCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_221449C00;
    v24 = sub_221449C10;
    v25 = objc_msgSend_p_copy(self, v4, v5, v6, v7);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22144D258;
    v18[3] = &unk_278465610;
    v18[5] = v19;
    v18[6] = &v20;
    v18[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(rowsCopy, v9, v18, v10, v11);
    objc_msgSend_p_calculateAncillaryInformation(v21[5], v12, v13, v14, v15);
    selfCopy = v21[5];
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByAddingColumns:(id)columns
{
  columnsCopy = columns;
  if (columnsCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_221449C00;
    v24 = sub_221449C10;
    v25 = objc_msgSend_p_copy(self, v4, v5, v6, v7);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_22144D6A0;
    v18[3] = &unk_278465610;
    v18[5] = v19;
    v18[6] = &v20;
    v18[4] = self;
    objc_msgSend_enumerateRangesUsingBlock_(columnsCopy, v9, v18, v10, v11);
    objc_msgSend_p_calculateAncillaryInformation(v21[5], v12, v13, v14, v15);
    selfCopy = v21[5];
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByApplyingRowMapping:(id)mapping
{
  mappingCopy = mapping;
  v9 = mappingCopy;
  if (mappingCopy && !objc_msgSend_isIdentityMapping(mappingCopy, v5, v6, v7, v8))
  {
    v11 = objc_alloc_init(TSTCellRegion);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_22144DA90;
    v25 = &unk_278462B70;
    v26 = v9;
    v12 = v11;
    v27 = v12;
    objc_msgSend_enumerateCellRangesUsingBlock_(self, v13, &v22, v14, v15);
    objc_msgSend_p_calculateAncillaryInformation(v12, v16, v17, v18, v19, v22, v23, v24, v25);
    v20 = v27;
    selfCopy = v12;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)regionByMovingRowsFromRange:(_NSRange)range toIndex:(unsigned int)index
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length, *&index);
  v12 = objc_msgSend_regionByIntersectingRowIndices_(self, v9, v8, v10, v11);
  v19 = objc_msgSend_regionByRemovingRows_(self, v13, v8, v14, v15);
  if (location >= index)
  {
    v20 = 0;
  }

  else
  {
    v20 = length;
  }

  v21 = index - v20;
  v22 = objc_msgSend_regionOffsetBy_(v12, v16, (v21 - location) << 32, v17, v18);

  v25 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v23, v21, length, v24);
  v29 = objc_msgSend_regionByAddingRows_(v19, v26, v25, v27, v28);

  v33 = objc_msgSend_regionByAddingRegion_(v29, v30, v22, v31, v32);

  return v33;
}

- (id)regionByMovingColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length, index);
  v12 = objc_msgSend_regionByIntersectingColumnIndices_(self, v9, v8, v10, v11);
  v19 = objc_msgSend_regionByRemovingColumns_(self, v13, v8, v14, v15);
  if (location >= indexCopy)
  {
    v20 = 0;
  }

  else
  {
    v20 = length;
  }

  v21 = indexCopy - v20;
  v22 = objc_msgSend_regionOffsetBy_(v12, v16, v21 - location, v17, v18);

  v25 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v23, v21, length, v24);
  v29 = objc_msgSend_regionByAddingColumns_(v19, v26, v25, v27, v28);

  v33 = objc_msgSend_regionByAddingRegion_(v29, v30, v22, v31, v32);

  return v33;
}

- (id)regionByTrimmingAroundRowIndices:(id)indices
{
  indicesCopy = indices;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_221449C00;
  v23 = sub_221449C10;
  v24 = objc_msgSend_invalidRegion(TSTCellRegion, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22144DFEC;
  v15[3] = &unk_278465660;
  v9 = indicesCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v19;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v10, v15, v11, v12);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)regionByTrimmingAroundColumnIndices:(id)indices
{
  indicesCopy = indices;
  v9 = objc_msgSend_gatherer(TSTCellRegionGatherer, v5, v6, v7, v8);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22144E404;
  v21[3] = &unk_278460BD0;
  v10 = indicesCopy;
  v22 = v10;
  selfCopy = self;
  v11 = v9;
  v24 = v11;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v12, v21, v13, v14);
  v19 = objc_msgSend_gatheredCellRegion(v11, v15, v16, v17, v18);

  return v19;
}

- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior
{
  v4 = objc_msgSend_prunedCellRegionAgainstTable_behavior_usingBlock_(self, a2, table, behavior, 0);

  return v4;
}

- (id)prunedCellRegionAgainstTable:(id)table behavior:(unint64_t)behavior usingBlock:(id)block
{
  behaviorCopy = behavior;
  tableCopy = table;
  blockCopy = block;
  v10 = objc_alloc_init(TSTCellRegion);
  if ((objc_msgSend_isEmptyPivot(tableCopy, v11, v12, v13, v14) & 1) == 0)
  {
    v80 = v10;
    v81 = blockCopy;
    v78 = objc_msgSend_translator(tableCopy, v15, v16, v17, v18);
    v79 = objc_msgSend_indexesForSummaryRows(v78, v19, v20, v21, v22);
    v77 = objc_msgSend_indexesForLabelRows(v78, v23, v24, v25, v26);
    v76 = objc_msgSend_indexesForCategoryColumns(tableCopy, v27, v28, v29, v30);
    v75 = objc_msgSend_indexesForSummaryColumns(tableCopy, v31, v32, v33, v34);
    selfCopy = self;
    v39 = (behaviorCopy & 0x100) == 0;
    v40 = (behaviorCopy & 6) == 0;
    v41 = (behaviorCopy & 0x18) == 0;
    v45 = objc_msgSend_isCategorized(tableCopy, v35, v36, v37, v38) ^ 1;
    if ((behaviorCopy & 0x40) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 1;
    }

    if ((behaviorCopy & 0x20) != 0)
    {
      v47 = v45;
    }

    else
    {
      v47 = 1;
    }

    if ((behaviorCopy & 1) == 0)
    {
      v48 = MEMORY[0x277D81150];
      v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "[TSTCellRegion prunedCellRegionAgainstTable:behavior:usingBlock:]", v43, v44);
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v51, v52);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v54, v49, v53, 1379, 0, "Oh in what case do we need to prune away base cells?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58);
    }

    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_22144EACC;
    v82[3] = &unk_278465688;
    v59 = v79;
    v83 = v59;
    v90 = v40;
    v91 = v46;
    v60 = v77;
    v84 = v60;
    v92 = v41;
    v61 = v76;
    v85 = v61;
    v93 = v47;
    v62 = v75;
    v86 = v62;
    v94 = v39;
    v87 = tableCopy;
    blockCopy = v81;
    v89 = v81;
    v10 = v80;
    v63 = v80;
    v88 = v63;
    objc_msgSend_enumerateCellIDsUsingBlock_(selfCopy, v64, v82, v65, v66);
    objc_msgSend_p_calculateAncillaryInformation(v63, v67, v68, v69, v70);
    v71 = v88;
    v72 = v63;
  }

  return v10;
}

- (id)propertyListRepresentation
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22144ED78;
  v12[3] = &unk_278461548;
  v7 = v6;
  v13 = v7;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v8, v12, v9, v10);

  return v7;
}

- (TSCECellCoordSet)asCellCoordSet
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x5812000000;
  v11 = sub_22144EEF8;
  v12 = sub_22144EF04;
  v13 = &unk_22188E88F;
  v17[0] = 0;
  v17[1] = 0;
  v14 = 0;
  v15 = 0;
  v16 = v17;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22144EF10;
  v7[3] = &unk_2784656B0;
  v7[4] = &v8;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, a3, v7, v3, v4);
  TSCECellCoordSet::TSCECellCoordSet(retstr, (v9 + 6));
  _Block_object_dispose(&v8, 8);
  sub_22107C860(&v16, v17[0]);
  return result;
}

- (TSUCellRect)largestRangeContainingCellID:(TSUCellCoord)d
{
  v6 = objc_msgSend_boundingCellRange(self, a2, *&d, v3, v4);
  v8 = v7;
  v36 = v6;
  v37 = v7;
  if ((objc_msgSend_isRectangle(self, v7, v9, v10, v11) & 1) == 0)
  {
    v16 = objc_msgSend_boundingCellRange(self, v12, v13, v14, v15);
    v19 = objc_msgSend_regionFromRange_(TSTCellRegion, v17, v16, v17, v18);
    v23 = objc_msgSend_regionBySubtractingRegion_(v19, v20, self, v21, v22);

    v24 = v23;
    v29 = objc_msgSend_cellRanges(v24, v25, v26, v27, v28);
    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_22116C9DC(&__p, *v29, v29[1], (v29[1] - *v29) >> 4);
    v36 = TSUCellRect::largestWithoutRectsAndContainsCoord();
    v37 = v30;
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    v6 = v36;
    v8 = v37;
  }

  v31 = v6;
  v32 = v8;
  result.size = v32;
  result.origin = v31;
  return result;
}

- (BOOL)containsCellID:(TSUCellCoord)d
{
  v3 = 0;
  if (d.row != 0x7FFFFFFF && (*&d & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = self->_boundingCellRange.size;
    if (HIDWORD(*&size))
    {
      v5 = size.numberOfColumns == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }

    origin = self->_boundingCellRange.origin;
    v7 = *&origin & 0xFFFF00000000;
    if (origin.row == 0x7FFFFFFFLL && v7 != 0x7FFF00000000)
    {
      goto LABEL_16;
    }

    v11 = origin.row == 0x7FFFFFFF && v7 != 0x7FFF00000000;
    if (origin.row > d.row && !v11)
    {
      return 0;
    }

    v12 = origin.row + size.numberOfRows - 1;
    if (origin.row == 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    if (v12 < d.row)
    {
      return 0;
    }

    if (origin.row == 0x7FFFFFFFLL || v7 != 0x7FFF00000000)
    {
LABEL_16:
      if (origin.column > d.column)
      {
        return 0;
      }

      v8 = origin.column == 0x7FFF || size.numberOfColumns == 0;
      v9 = v8 ? 0x7FFF : LOWORD(size.numberOfColumns) + origin.column - 1;
      if (v9 < d.column)
      {
        return 0;
      }
    }

    begin = self->_cellRanges.__begin_;
    end = self->_cellRanges.__end_;
    if (begin == end)
    {
      return 0;
    }

    do
    {
      v15 = begin->size;
      if (HIDWORD(*&v15))
      {
        v16 = v15.numberOfColumns == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v17 = begin->origin;
        v18 = *&begin->origin;
        v19 = *&begin->origin & 0xFFFF00000000;
        if (v18 != 0x7FFFFFFF || v19 == 0x7FFF00000000)
        {
          v22 = v17.row == 0x7FFFFFFF && v19 != 0x7FFF00000000;
          if (v17.row > d.row && !v22)
          {
            goto LABEL_62;
          }

          v23 = v17.row + v15.numberOfRows - 1;
          if (v17.row == 0x7FFFFFFF)
          {
            v23 = 0x7FFFFFFF;
          }

          if (v23 < d.row)
          {
            goto LABEL_62;
          }

          if (v18 != 0x7FFFFFFF && v19 == 0x7FFF00000000)
          {
            return 1;
          }
        }

        if (v17.column <= d.column)
        {
          v24 = v17.column == 0x7FFF || v15.numberOfColumns == 0;
          v25 = v24 ? 0x7FFF : LOWORD(v15.numberOfColumns) + v17.column - 1;
          if (v25 >= d.column)
          {
            return 1;
          }
        }
      }

LABEL_62:
      v3 = 0;
      ++begin;
    }

    while (begin != end);
  }

  return v3;
}

- (BOOL)containsCellRange:(TSUCellRect)range
{
  origin = range.origin;
  v5 = 0;
  if (range.origin.row != 0x7FFFFFFF && (*&range.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = range.size;
    v5 = 0;
    numberOfRows = range.size.numberOfRows;
    if (range.size.numberOfRows)
    {
      if (range.size.numberOfColumns)
      {
        if (self->_cellCount < range.size.numberOfRows * range.size.numberOfColumns)
        {
          return 0;
        }

        if (!objc_msgSend_isRectangle(self, a2, *&range.origin, *&range.size, v3))
        {
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v36 = numberOfRows * size.numberOfColumns;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = sub_22144F4BC;
          v32[3] = &unk_278465520;
          v32[5] = origin;
          v32[6] = size;
          v32[4] = &v33;
          objc_msgSend_enumerateCellRangesUsingBlock_(self, v9, v32, v10, v11);
          v5 = v34[3] == 0;
          _Block_object_dispose(&v33, 8);
          return v5;
        }

        v5 = 0;
        v12 = self->_boundingCellRange.size;
        v13 = HIDWORD(*&v12);
        if (HIDWORD(*&v12) && v12.numberOfColumns)
        {
          v14 = self->_boundingCellRange.origin;
          v15 = *&v14 & 0xFFFF00000000;
          if (v14.row == 0x7FFFFFFFLL && v15 != 0x7FFF00000000)
          {
            goto LABEL_12;
          }

          v23 = v14.row == 0x7FFFFFFF && v15 != 0x7FFF00000000;
          if (v14.row > origin.row && !v23)
          {
            return 0;
          }

          v24 = v14.row + v12.numberOfRows - 1;
          if (v14.row == 0x7FFFFFFF)
          {
            v24 = 0x7FFFFFFF;
          }

          if (v24 < origin.row)
          {
            return 0;
          }

          if (v14.row == 0x7FFFFFFFLL || v15 != 0x7FFF00000000)
          {
LABEL_12:
            v16 = HIDWORD(*&origin);
            column = v14.column;
            if (v14.column > origin.column)
            {
              return 0;
            }

            v18 = v14.column == 0x7FFF || v12.numberOfColumns == 0;
            v19 = LOWORD(v12.numberOfColumns) - 1 + v14.column;
            v20 = v18 ? 0x7FFF : LOWORD(v12.numberOfColumns) - 1 + v14.column;
            if (v20 < origin.column)
            {
              return 0;
            }
          }

          else
          {
            v19 = LOWORD(v12.numberOfColumns) + 32766;
            v16 = HIDWORD(*&origin);
            column = 0x7FFF;
          }

          if (column == 0x7FFF || v12.numberOfColumns == 0)
          {
            v26 = 0x7FFF;
          }

          else
          {
            v26 = v19;
          }

          v27 = v16;
          v28 = LOWORD(size.numberOfColumns) + v16 - 1;
          if (v27 == 0x7FFF || size.numberOfColumns == 0)
          {
            v28 = 0x7FFF;
          }

          if (v26 < v28)
          {
            return 0;
          }

          v30 = v14.row + v13 - 1;
          if (v14.row == 0x7FFFFFFF)
          {
            v30 = 0x7FFFFFFF;
          }

          v31 = origin.row + numberOfRows - 1;
          if (origin.row == 0x7FFFFFFF)
          {
            v31 = 0x7FFFFFFF;
          }

          return v30 >= v31;
        }
      }
    }
  }

  return v5;
}

- (BOOL)containsCellRegion:(id)region
{
  regionCopy = region;
  v7 = regionCopy;
  if (!regionCopy || self->_cellCount < regionCopy[6])
  {
    goto LABEL_51;
  }

  size = self->_boundingCellRange.size;
  v9 = HIDWORD(*&size);
  if (!HIDWORD(*&size) || size.numberOfColumns == 0)
  {
    goto LABEL_51;
  }

  v11 = regionCopy[5];
  v12 = HIDWORD(v11);
  if (!HIDWORD(v11) || v11 == 0)
  {
    goto LABEL_51;
  }

  origin = self->_boundingCellRange.origin;
  v15 = regionCopy[4];
  v16 = *&origin & 0xFFFF00000000;
  if (origin.row == 0x7FFFFFFFLL && v16 != 0x7FFF00000000)
  {
    goto LABEL_13;
  }

  v22 = v16 != 0x7FFF00000000 && origin.row == 0x7FFFFFFF;
  if (!v22 && origin.row > v15)
  {
    goto LABEL_51;
  }

  v23 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  if (v23 < v15)
  {
    goto LABEL_51;
  }

  if (origin.row == 0x7FFFFFFFLL || v16 != 0x7FFF00000000)
  {
LABEL_13:
    v17 = HIDWORD(v15);
    column = origin.column;
    if (origin.column <= WORD2(v15))
    {
      v19 = origin.column == 0x7FFF || size.numberOfColumns == 0;
      v20 = LOWORD(size.numberOfColumns) - 1 + origin.column;
      v21 = v19 ? 0x7FFF : LOWORD(size.numberOfColumns) - 1 + origin.column;
      if (v21 >= WORD2(v15))
      {
        goto LABEL_33;
      }
    }

LABEL_51:
    v32 = 0;
    goto LABEL_52;
  }

  v20 = LOWORD(size.numberOfColumns) + 32766;
  v17 = HIDWORD(v15);
  column = 0x7FFF;
LABEL_33:
  if (column == 0x7FFF || size.numberOfColumns == 0)
  {
    v25 = 0x7FFF;
  }

  else
  {
    v25 = v20;
  }

  v26 = v17;
  v27 = v11 + v17 - 1;
  if (v26 == 0x7FFF || v11 == 0)
  {
    v29 = 0x7FFF;
  }

  else
  {
    v29 = v27;
  }

  if (v25 < v29)
  {
    goto LABEL_51;
  }

  v30 = origin.row + v9 - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  v31 = v15 + v12 - 1;
  if (v15 == 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  if (v30 < v31)
  {
    goto LABEL_51;
  }

  v34 = regionCopy[1];
  v35 = regionCopy[2];
  if (v34 == v35)
  {
    v32 = 1;
  }

  else
  {
    do
    {
      v36 = objc_msgSend_containsCellRange_(self, v5, *v34, v34[1], v6);
      v32 = v36;
      v34 += 2;
      if (v34 == v35)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }
    }

    while ((v37 & 1) != 0);
  }

LABEL_52:

  return v32;
}

- (BOOL)equalsCellRegion:(id)region
{
  regionCopy = region;
  v9 = regionCopy;
  if (!regionCopy || self->_cellCount != regionCopy[6] || (origin = self->_boundingCellRange.origin, v11 = regionCopy[4], origin.row != v11) || (((v11 ^ *&origin) & 0x101FFFF00000000) == 0 ? (v12 = *&self->_boundingCellRange.size == regionCopy[5]) : (v12 = 0), !v12))
  {
    v13 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_isRectangle(self, v5, v6, v7, v8) && (objc_msgSend_isRectangle(v9, v15, v16, v17, v18) & 1) != 0)
  {
    goto LABEL_31;
  }

  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  v22 = v9[1];
  v21 = v9[2];
  if (end - begin != v21 - v22)
  {
    goto LABEL_25;
  }

  if (end == begin)
  {
LABEL_31:
    v13 = 1;
    goto LABEL_9;
  }

  v23 = end - begin;
  if (v23 <= 1)
  {
    v23 = 1;
  }

  p_size = &begin->size;
  v25 = v22 + 1;
  v13 = 1;
  while (1)
  {
    v26 = p_size[-1];
    v27 = *(v25 - 1);
    if (v26.numberOfColumns != v27)
    {
      break;
    }

    if (((v27 ^ *&v26) & 0x101FFFF00000000) != 0 || *p_size != *v25)
    {
      break;
    }

    p_size += 2;
    v25 += 2;
    if (!--v23)
    {
      goto LABEL_9;
    }
  }

LABEL_25:
  if (v22 == v21)
  {
    goto LABEL_31;
  }

  do
  {
    v29 = objc_msgSend_containsCellRange_(self, v15, *v22, v22[1], v18);
    v13 = v29;
    v22 += 2;
    if (v22 == v21)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }
  }

  while ((v30 & 1) != 0);
LABEL_9:

  return v13;
}

- (BOOL)equalsCellRange:(TSUCellRect)range
{
  if (self->_cellCount != range.size.numberOfRows * range.size.numberOfColumns)
  {
    return 0;
  }

  origin = self->_boundingCellRange.origin;
  if (origin.row != range.origin.row)
  {
    return 0;
  }

  return ((*&origin ^ *&range.origin) & 0x101FFFF00000000) == 0 && *&self->_boundingCellRange.size == *&range.size;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = objc_msgSend_equalsCellRegion_(self, v5, v8, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result ^= begin->origin.row + 16 * begin->origin.column + begin->size.numberOfColumns + begin->size.numberOfRows;
    ++begin;
  }

  while (begin != end);
  return result;
}

- (BOOL)intersectsCellRange:(TSUCellRect)range
{
  p_origin = &self->_cellRanges.__begin_->origin;
  end = self->_cellRanges.__end_;
  if (p_origin == end)
  {
    return 0;
  }

  size = range.size;
  origin = range.origin;
  v7 = *MEMORY[0x277D813C8];
  v8 = *(MEMORY[0x277D813C8] + 8);
  while (1)
  {
    v9 = sub_221119E0C(*p_origin, p_origin[1], origin, size);
    v11 = (v9 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL || HIDWORD(v10) == 0;
    if (!v11 && v10 != 0)
    {
      if (v9 != v7)
      {
        break;
      }

      if (((v7 ^ v9) & 0x101FFFF00000000) != 0 || v10 != v8)
      {
        break;
      }
    }

    p_origin += 2;
    if (p_origin == end)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)partiallyIntersectsCellRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  v7 = objc_msgSend_boundingCellRange(self, a2, *&range.origin, *&range.size, v3);
  v9 = sub_221119E0C(v7, v8, *&origin, *&size);
  if (v9 == 0x7FFFFFFF || (v9 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    goto LABEL_6;
  }

  LOBYTE(v12) = 0;
  if (!HIDWORD(v10) || !v10)
  {
    return v12;
  }

  v14 = ((v9 ^ *&origin) & 0x101FFFF00000000) == 0 && size == v10;
  if (origin.row != v9)
  {
    v14 = 0;
  }

  v49 = v14;
  p_origin = &self->_cellRanges.__begin_->origin;
  end = self->_cellRanges.__end_;
  if (p_origin == end)
  {
LABEL_6:
    LOBYTE(v12) = 0;
    return v12;
  }

  v17 = 0;
  if (size.numberOfColumns)
  {
    v18 = HIDWORD(*&size) == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = size.numberOfColumns == 0;
  if (origin.column == 0x7FFF)
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0x7FFF;
  }

  else
  {
    v20 = LOWORD(size.numberOfColumns) + origin.column - 1;
  }

  v21 = origin.row + size.numberOfRows - 1;
  if (origin.row == 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v45 = v21;
  v46 = v20;
  v47 = *(MEMORY[0x277D813C8] + 8);
  v48 = *MEMORY[0x277D813C8];
  do
  {
    v22 = *p_origin;
    v23 = p_origin[1];
    if (HIDWORD(v23))
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = v24;
    if ((v25 | v18))
    {
      goto LABEL_71;
    }

    v26 = v22 & 0xFFFF00000000;
    if (v22 == 0x7FFFFFFFLL && v26 != 0x7FFF00000000)
    {
      goto LABEL_53;
    }

    v29 = v22 == 0x7FFFFFFF && v26 != 0x7FFF00000000;
    if (v22 > origin.row && !v29)
    {
      goto LABEL_71;
    }

    v30 = v22 + HIDWORD(v23) - 1;
    if (v22 == 0x7FFFFFFF)
    {
      v30 = 0x7FFFFFFF;
    }

    if (v30 < origin.row)
    {
      goto LABEL_71;
    }

    if (v22 != 0x7FFFFFFFLL && v26 == 0x7FFF00000000)
    {
      v31 = v23 + 32766;
      v32 = 0x7FFF;
    }

    else
    {
LABEL_53:
      v32 = WORD2(v22);
      if (WORD2(v22) > origin.column)
      {
        goto LABEL_71;
      }

      v33 = WORD2(v22) == 0x7FFF || v23 == 0;
      v31 = v23 - 1 + WORD2(v22);
      v34 = v33 ? 0x7FFF : v23 - 1 + WORD2(v22);
      if (v34 < origin.column)
      {
        goto LABEL_71;
      }
    }

    if (v32 == 0x7FFF || v23 == 0)
    {
      v36 = 0x7FFF;
    }

    else
    {
      v36 = v31;
    }

    if (v36 >= v46)
    {
      v37 = v22 + HIDWORD(v23) - 1;
      if (v22 == 0x7FFFFFFF)
      {
        v37 = 0x7FFFFFFF;
      }

      if (v37 >= v45)
      {
        goto LABEL_6;
      }
    }

LABEL_71:
    v38 = sub_221119E0C(v22, v23, *&origin, *&size);
    if ((v38 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v39 >> 32 != 0 && v39 != 0)
    {
      v44 = v38 == v48 && ((v48 ^ v38) & 0x101FFFF00000000) == 0 && v39 == v47;
      if (!v44 && !v49)
      {
        LOBYTE(v12) = 1;
        return v12;
      }

      v17 |= !v44;
    }

    p_origin += 2;
  }

  while (p_origin != end);
  if ((v17 & 1) == 0)
  {
    goto LABEL_6;
  }

  return objc_msgSend_containsCellRange_(self, v39, *&origin, *&size, v40) ^ 1;
}

- (BOOL)intersectsCellRegion:(id)region
{
  regionCopy = region;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21.origin = objc_msgSend_boundingCellRange(self, v5, v6, v7, v8);
  v21.size = v9;
  v20.origin = objc_msgSend_boundingCellRange(regionCopy, v9, v10, v11, v12);
  v20.size = v13;
  if (TSUCellRect::intersects(&v21, &v20))
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22144FF08;
    v19[3] = &unk_27845F7D8;
    v19[4] = self;
    v19[5] = &v22;
    objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v14, v19, v15, v16);
  }

  v17 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v17;
}

- (BOOL)intersectsColumn:(unsigned __int16)column
{
  if (column == 0x7FFF)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_containsIndex_(self->_intersectingColumnsIndexSet, a2, column, v3, v4);
  }
}

- (BOOL)intersectsRow:(unsigned int)row
{
  if (row == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_containsIndex_(self->_intersectingRowsIndexSet, a2, row, v3, v4);
  }
}

- (id)isSingleCellWideOrHigh:(id)high
{
  highCopy = high;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3812000000;
  v45[3] = sub_2214502EC;
  v45[4] = nullsub_80;
  v45[5] = &unk_22188E88F;
  v45[6] = 0x7FFF7FFFFFFFLL;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_221449C00;
  v43[4] = sub_221449C10;
  v44 = objc_msgSend_set(MEMORY[0x277CBEB98], v5, v6, v7, v8);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_221449C00;
  v41[4] = sub_221449C10;
  v42 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10, v11, v12);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0x7FFFFFFF;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2214502FC;
  v30[3] = &unk_2784656D8;
  v13 = highCopy;
  v31 = v13;
  selfCopy = self;
  v33 = v45;
  v34 = &v50;
  v35 = v39;
  v36 = v43;
  v37 = v41;
  v38 = &v46;
  objc_msgSend_enumerateCellIDsUsingBlock_(self, v14, v30, v15, v16);
  v17 = MEMORY[0x277D812A8];
  v21 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v18, *(v51 + 24), v19, v20);
  v25 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v22, *(v47 + 24), v23, v24);
  v28 = objc_msgSend_pairWithFirst_second_(v17, v26, v21, v25, v27);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);

  return v28;
}

- (id)intersectingColumnsInRow:(unsigned int)row
{
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  begin = self->_cellRanges.__begin_;
  for (i = self->_cellRanges.__end_; begin != i; ++begin)
  {
    v23 = *begin;
    if (HIDWORD(*&v23.size))
    {
      v12 = v23.size.numberOfColumns == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *&v23.origin & 0xFFFF00000000;
      if (v23.origin.row == 0x7FFFFFFF && v13 != 0x7FFF00000000)
      {
        goto LABEL_22;
      }

      v15 = v23.origin.row != 0x7FFFFFFF || v13 == 0x7FFF00000000;
      v16 = !v15;
      if (v23.origin.row <= row || v16)
      {
        v17 = v23.origin.row + v23.size.numberOfRows - 1;
        if (v23.origin.row == 0x7FFFFFFF)
        {
          v17 = 0x7FFFFFFF;
        }

        if (v17 >= row)
        {
LABEL_22:
          v18 = TSUCellRect::columns(&v23);
          objc_msgSend_addIndexesInRange_(v9, v19, v18, v19, v20);
        }
      }
    }
  }

  if (objc_msgSend_count(v9, v5, v6, v7, v8, *&v23.origin))
  {
    v21 = v9;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)p_copyFromRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTCellRegion p_copyFromRegion:]", v6, v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v11, v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v14, v9, v13, 1824, 0, "invalid nil value for '%{public}s'", "region");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17, v18);
  }

  if (self != regionCopy)
  {
    sub_2210BD068(&self->_cellRanges.__begin_, regionCopy->_cellRanges.__begin_, regionCopy->_cellRanges.__end_, regionCopy->_cellRanges.__end_ - regionCopy->_cellRanges.__begin_);
  }

  self->_boundingCellRange = regionCopy->_boundingCellRange;
  self->_cellCount = regionCopy->_cellCount;
  v19 = objc_msgSend_copy(regionCopy->_intersectingColumnsIndexSet, v4, v5, v6, v7);
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  self->_intersectingColumnsIndexSet = v19;

  v25 = objc_msgSend_copy(regionCopy->_intersectingRowsIndexSet, v21, v22, v23, v24);
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  self->_intersectingRowsIndexSet = v25;

  self->_firstCellID = regionCopy->_firstCellID;
  self->_lastCellID = regionCopy->_lastCellID;
}

- (id)p_copy
{
  v3 = objc_alloc_init(objc_opt_class());
  objc_msgSend_p_copyFromRegion_(v3, v4, self, v5, v6);
  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTMutableCellRegion);
  v9 = v4;
  if (v4 != self)
  {
    sub_2210BD068(&v4->super._cellRanges.__begin_, self->_cellRanges.__begin_, self->_cellRanges.__end_, self->_cellRanges.__end_ - self->_cellRanges.__begin_);
  }

  v9->super._boundingCellRange = self->_boundingCellRange;
  v9->super._cellCount = self->_cellCount;
  v10 = objc_msgSend_copy(self->_intersectingColumnsIndexSet, v5, v6, v7, v8);
  intersectingColumnsIndexSet = v9->super._intersectingColumnsIndexSet;
  v9->super._intersectingColumnsIndexSet = v10;

  v16 = objc_msgSend_copy(self->_intersectingRowsIndexSet, v12, v13, v14, v15);
  intersectingRowsIndexSet = v9->super._intersectingRowsIndexSet;
  v9->super._intersectingRowsIndexSet = v16;

  v9->super._firstCellID = self->_firstCellID;
  v9->super._lastCellID = self->_lastCellID;
  return v9;
}

- (TSUCellCoord)suitableAnchor
{
  if (self->_cellRanges.__end_ == self->_cellRanges.__begin_)
  {
    begin = &unk_2217E1D68;
  }

  else
  {
    begin = self->_cellRanges.__begin_;
  }

  return begin->origin;
}

- (TSUCellCoord)suitableCursor
{
  begin = self->_cellRanges.__begin_;
  if (self->_cellRanges.__end_ == begin)
  {
    return 0x7FFF7FFFFFFFLL;
  }

  else
  {
    return ((*&begin->origin + (*&begin->size << 32) + 0xFFFF00000000) & 0xFFFF00000000 | (*&begin->origin + HIDWORD(*&begin->size) - 1));
  }
}

- (id)newIterator
{
  v3 = [TSTCellRegionRowMajorIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4, v5);
}

- (id)newRightToLeftIterator
{
  v3 = [TSTCellRegionRowMajorReverseIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4, v5);
}

- (id)newBottomToTopIterator
{
  v3 = [TSTCellRegionColumnMajorReverseIterator alloc];

  return MEMORY[0x2821F9670](v3, sel_initWithCellRegion_, self, v4, v5);
}

- (void)enumerateCellIDsUsingBlock:(id)block
{
  blockCopy = block;
  v19 = 0;
  v9 = objc_msgSend_newIterator(self, v5, v6, v7, v8);
  for (i = objc_msgSend_getNext(v9, v10, v11, v12, v13); i != 0x7FFFFFFF && (i & 0xFFFF00000000) != 0x7FFF00000000 && (v19 & 1) == 0; i = objc_msgSend_getNext(v9, v15, v16, v17, v18))
  {
    blockCopy[2](blockCopy);
  }
}

- (void)enumerateCellRangesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  begin = self->_cellRanges.__begin_;
  for (i = self->_cellRanges.__end_; begin != i; ++begin)
  {
    (*(blockCopy + 2))(blockCopy, *&begin->origin, *&begin->size, &v7);
    if (v7)
    {
      break;
    }
  }
}

- (void)enumerateColumnsUsingBlock:(id)block
{
  blockCopy = block;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221450C74;
  v10[3] = &unk_278461298;
  v11 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(intersectingColumnsIndexSet, v7, v10, v8, v9);
}

- (void)enumerateColumnsInReverseUsingBlock:(id)block
{
  blockCopy = block;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221450D3C;
  v9[3] = &unk_278461298;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(intersectingColumnsIndexSet, v7, 2, v9, v8);
}

- (void)enumerateRowsUsingBlock:(id)block
{
  blockCopy = block;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221450E00;
  v10[3] = &unk_278461298;
  v11 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesUsingBlock_(intersectingRowsIndexSet, v7, v10, v8, v9);
}

- (void)enumerateRowsInReverseUsingBlock:(id)block
{
  blockCopy = block;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221450EC4;
  v9[3] = &unk_278461298;
  v10 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateIndexesWithOptions_usingBlock_(intersectingRowsIndexSet, v7, 2, v9, v8);
}

- (void)enumerateInDirection:(int64_t)direction usingBlock:(id)block
{
  blockCopy = block;
  v7 = 64;
  if (direction == 1)
  {
    v7 = 56;
  }

  v8 = *(&self->super.isa + v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_221450FAC;
  v14[3] = &unk_278461298;
  v15 = blockCopy;
  v9 = blockCopy;
  v10 = v8;
  objc_msgSend_enumerateIndexesUsingBlock_(v10, v11, v14, v12, v13);
}

- (void)enumerateRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v12 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10, v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214510E0;
  v20[3] = &unk_2784654F8;
  v22 = origin;
  v23 = size;
  v13 = v12;
  v21 = v13;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v14, v20, v15, v16);
  objc_msgSend_enumerateRangesUsingBlock_(v13, v17, blockCopy, v18, v19);
}

- (void)enumerateMissingRowsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v8, origin.row, HIDWORD(*&size), v9);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_221451260;
  v18[3] = &unk_2784654F8;
  v20 = origin;
  v21 = size;
  v11 = v10;
  v19 = v11;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v12, v18, v13, v14);
  objc_msgSend_enumerateRangesUsingBlock_(v11, v15, blockCopy, v16, v17);
}

- (void)enumerateColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v12 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v8, v9, v10, v11);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2214513D8;
  v20[3] = &unk_2784654F8;
  v22 = origin;
  v23 = size;
  v13 = v12;
  v21 = v13;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v14, v20, v15, v16);
  objc_msgSend_enumerateRangesUsingBlock_(v13, v17, blockCopy, v18, v19);
}

- (void)enumerateMissingColumnsIntersectingCellRange:(TSUCellRect)range usingBlock:(id)block
{
  size = range.size;
  origin = range.origin;
  blockCopy = block;
  v10 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v8, origin.column, size.numberOfColumns, v9);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_221451554;
  v18[3] = &unk_2784654F8;
  v20 = origin;
  v21 = size;
  v11 = v10;
  v19 = v11;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v12, v18, v13, v14);
  objc_msgSend_enumerateRangesUsingBlock_(v11, v15, blockCopy, v16, v17);
}

- (void)enumerateGridColumnsUsingBlock:(id)block
{
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = -1;
  intersectingColumnsIndexSet = self->_intersectingColumnsIndexSet;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2214516B8;
  v10[3] = &unk_278465700;
  v11 = blockCopy;
  v12 = v13;
  v6 = blockCopy;
  objc_msgSend_enumerateRangesUsingBlock_(intersectingColumnsIndexSet, v7, v10, v8, v9);

  _Block_object_dispose(v13, 8);
}

- (void)enumerateGridRowsUsingBlock:(id)block
{
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = -1;
  intersectingRowsIndexSet = self->_intersectingRowsIndexSet;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221451820;
  v10[3] = &unk_278465700;
  v11 = blockCopy;
  v12 = v13;
  v6 = blockCopy;
  objc_msgSend_enumerateRangesUsingBlock_(intersectingRowsIndexSet, v7, v10, v8, v9);

  _Block_object_dispose(v13, 8);
}

- (vector<TSUCellRect,)rowBasedSubRangesOfCellCount:(TSTCellRegion *)self
{
  v6 = a4;
  if (!a4)
  {
    v9 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a3, 0, v4, v5);
    v14 = objc_msgSend_processorCount(v9, v10, v11, v12, v13);

    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = self->_cellCount / (3 * v15);
    if (v16 <= 0x1000)
    {
      v6 = 4096;
    }

    else
    {
      v6 = v16;
    }
  }

  selfCopy = self;
  v22 = objc_msgSend_cellRanges(selfCopy, v18, v19, v20, v21);
  v35 = 0;
  v36 = 0;
  v34 = 0;
  sub_22116C9DC(&v34, *v22, v22[1], (v22[1] - *v22) >> 4);
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  while (1)
  {
    result = v34;
    if (v35 == v34)
    {
      break;
    }

    v33 = *&v35[-1].__end_;
    v35 = (v35 - 16);
    if (v33.size.numberOfRows * v33.size.numberOfColumns <= v6 || TSUCellRect::numRows(&v33) < 2)
    {
      sub_221083454(retstr, &v33);
    }

    else
    {
      v24 = TSUCellRect::numRows(&v33);
      v32 = 0uLL;
      origin = v33.origin;
      v26 = TSUCellRect::numColumns(&v33);
      v27 = v24 >> 1;
      *&v32 = origin;
      *(&v32 + 1) = v26 | (v27 << 32);
      v28 = TSUCellRect::firstRow(&v33);
      origin.row = TSUCellRect::numRows(&v33);
      v31 = 0uLL;
      v29 = TSUCellRect::firstColumn(&v33);
      v30 = TSUCellRect::numColumns(&v33);
      *&v31 = (v28 + v27) | (v29 << 32);
      *(&v31 + 1) = v30 | ((origin.row - v27) << 32);
      sub_221083454(&v34, &v32);
      sub_221083454(&v34, &v31);
    }
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return result;
}

- (void)p_insertRangeIntoRegion:(TSUCellRect)region
{
  origin = region.origin;
  regionCopy = region;
  if (region.origin.row != 0x7FFFFFFF && (*&region.origin & 0xFFFF00000000) != 0x7FFF00000000)
  {
    size = region.size;
    numberOfRows = region.size.numberOfRows;
    if (region.size.numberOfRows)
    {
      if (region.size.numberOfColumns)
      {
        end = self->_cellRanges.__end_;
        p_cellRanges = &self->_cellRanges;
        if (end == self->_cellRanges.__begin_)
        {
          goto LABEL_16;
        }

        v10 = end[-1].origin;
        v9 = end[-1].size;
        v11 = sub_221119E0C(v10, v9, *&region.origin, *&region.size);
        if ((v11 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v12 >> 32 != 0 && v12 != 0)
        {
          if (v11 != *MEMORY[0x277D813C8] || (((*MEMORY[0x277D813C8] ^ v11) & 0x101FFFF00000000) == 0 ? (v22 = v12 == *(MEMORY[0x277D813C8] + 8)) : (v22 = 0), !v22))
          {
            v23 = MEMORY[0x277D81150];
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTCellRegion p_insertRangeIntoRegion:]", v13, v14);
            v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellRegion.mm", v25, v26);
            v27 = sub_221451D44(*&origin, size);
            v28 = sub_221451D44(v10, v9);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v35, v34, 2198, 0, "Added range:%{public}@ should never overlap previous range:%{public}@ in region:%{public}@.", v27, v28, self);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
          }
        }

        *&v36 = sub_2211C1FC4(v10, v9, *&origin, size);
        *(&v36 + 1) = v17;
        v18 = numberOfRows * size;
        if (HIDWORD(v17) * v17 != v18 + (HIDWORD(v9) * v9))
        {
LABEL_16:
          sub_221083454(p_cellRanges, &regionCopy);
          size = regionCopy.size;
          origin = regionCopy.origin;
          v18 = regionCopy.size.numberOfRows * regionCopy.size.numberOfColumns;
        }

        else
        {
          --self->_cellRanges.__end_;
          sub_221083454(p_cellRanges, &v36);
        }

        self->_boundingCellRange.origin = sub_2211C1FC4(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size, *&origin, size);
        self->_boundingCellRange.size = v19;
        v20 = self->_cellCount + v18;
        self->_cellCount = v20;
        begin = self->_cellRanges.__begin_;
        if ((self->_cellRanges.__end_ - begin) >= 0x11 && v20 == v19.numberOfRows * v19.numberOfColumns)
        {
          self->_cellRanges.__end_ = begin;
          sub_221083454(p_cellRanges, &self->_boundingCellRange.origin);
        }
      }
    }
  }
}

- (void)p_calculateAncillaryInformation
{
  obj = objc_alloc_init(MEMORY[0x277CCAB58]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  self->_boundingCellRange = xmmword_2217E0780;
  begin = self->_cellRanges.__begin_;
  end = self->_cellRanges.__end_;
  if (begin != end)
  {
    v31 = 0;
    v10 = 0x7FFF;
    v11 = 0x7FFFFFFF;
    v12 = 0x7FFF;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      objc_msgSend_addIndexesInRange_(obj, v3, begin->origin.column, begin->size.numberOfColumns, v6);
      objc_msgSend_addIndexesInRange_(v7, v14, begin->origin.row, begin->size.numberOfRows, v15);
      row = begin->origin.row;
      if (v11 == 0x7FFFFFFF || v10 == 0x7FFF || row < v11)
      {
        break;
      }

      if (row == v11)
      {
        column = begin->origin.column;
        if (column < v10)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      origin = begin->origin;
      size = begin->size;
      ++begin;
      v20 = origin + HIDWORD(size) - 1;
      v21 = v13 == v20;
      v22 = (size + ((origin + 0xFFFF00000000) >> 32)) > v12;
      v23 = !v21 || !v22;
      if (v21 && v22)
      {
        v24 = origin + HIDWORD(size) - 1;
      }

      else
      {
        v24 = v13;
      }

      if (v23)
      {
        v25 = v12;
      }

      else
      {
        v25 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      if (v13 < v20)
      {
        v24 = origin + HIDWORD(size) - 1;
        v25 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      if (v12 == 0x7FFF)
      {
        v24 = origin + HIDWORD(size) - 1;
        v25 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      v26 = v13 == 0x7FFFFFFF;
      if (v13 == 0x7FFFFFFF)
      {
        v13 = origin + HIDWORD(size) - 1;
      }

      else
      {
        v13 = v24;
      }

      if (v26)
      {
        v12 = size + ((origin + 0xFFFF00000000) >> 32);
      }

      else
      {
        v12 = v25;
      }

      self->_boundingCellRange.origin = sub_2211C1FC4(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size, origin, size);
      self->_boundingCellRange.size = v3;
      if (begin == end)
      {
        goto LABEL_30;
      }
    }

    column = begin->origin.column;
    v11 = begin->origin.row;
LABEL_10:
    v31 = *&begin->origin._preserveRow;
    v10 = column;
    goto LABEL_11;
  }

  v31 = 0;
  v13 = 0x7FFFFFFF;
  LOWORD(v12) = 0x7FFF;
  v11 = 0x7FFFFFFF;
  LOWORD(v10) = 0x7FFF;
LABEL_30:
  if (objc_msgSend_count(obj, v3, v4, v5, v6))
  {
    objc_storeStrong(&self->_intersectingColumnsIndexSet, obj);
  }

  if (objc_msgSend_count(v7, v27, v28, v29, v30))
  {
    objc_storeStrong(&self->_intersectingRowsIndexSet, v7);
  }

  self->_firstCellID.row = v11;
  self->_firstCellID.column = v10;
  *&self->_firstCellID._preserveRow = v31;
  self->_lastCellID.row = v13;
  self->_lastCellID.column = v12;
  *&self->_lastCellID._preserveRow = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = sub_221451D44(*&self->_boundingCellRange.origin, *&self->_boundingCellRange.size);
  v10 = objc_msgSend_stringWithFormat_(v3, v7, @"<%@ %p boundingbox={ %@ }", v8, v9, v5, self, v6);

  if (self->_cellRanges.__end_ == self->_cellRanges.__begin_)
  {
    objc_msgSend_appendString_(v10, v11, @" cellRanges={empty}>", v12, v13);
  }

  else
  {
    objc_msgSend_appendString_(v10, v11, @" cellRanges={", v12, v13);
    begin = self->_cellRanges.__begin_;
    for (i = self->_cellRanges.__end_; begin != i; ++begin)
    {
      v19 = sub_221451D44(*&begin->origin, *&begin->size);
      objc_msgSend_appendFormat_(v10, v20, @"\n  { %@ }", v21, v22, v19);
    }

    objc_msgSend_appendString_(v10, v14, @"}>", v15, v16);
  }

  return v10;
}

- (TSUCellRect)boundingCellRange
{
  size = self->_boundingCellRange.size;
  origin = self->_boundingCellRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)regionByAddingModelCellRegion:(id)region
{
  v5 = objc_msgSend_regionByAddingRegion_(self, a2, region, v3, v4);

  return v5;
}

- (id)regionBySubtractingModelCellRegion:(id)region
{
  v5 = objc_msgSend_regionBySubtractingRegion_(self, a2, region, v3, v4);

  return v5;
}

- (void)enumerateModelCellRectsUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2214523C8;
  v9[3] = &unk_278465728;
  v10 = blockCopy;
  v5 = blockCopy;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v6, v9, v7, v8);
}

- (vector<TSUModelCellRect,)modelCellRanges
{
  selfCopy = self;
  v8 = objc_msgSend_cellRanges(selfCopy, v4, v5, v6, v7);
  v11 = 0;
  v12 = 0;
  __p = 0;
  sub_22116C9DC(&__p, *v8, v8[1], (v8[1] - *v8) >> 4);
  TSUBaseCellRectVectorFromCellRectVector();
  result = __p;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  return result;
}

+ (id)regionFromViewCellRectVector:(const void *)vector
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_22129CFF4(&__p, (*(vector + 1) - *vector) >> 4);
  v7 = *vector;
  if (*(vector + 1) != *vector)
  {
    v8 = 0;
    do
    {
      *(__p + v8) = *(v7 + 16 * v8);
      ++v8;
      v7 = *vector;
    }

    while (v8 < (*(vector + 1) - *vector) >> 4);
  }

  v9 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v4, &__p, v5, v6);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

- (id)regionByAddingViewCellRegion:(id)region
{
  v5 = objc_msgSend_regionByAddingRegion_(self, a2, region, v3, v4);

  return v5;
}

- (id)regionBySubtractingViewCellRegion:(id)region
{
  v5 = objc_msgSend_regionBySubtractingRegion_(self, a2, region, v3, v4);

  return v5;
}

- (void)enumerateViewCellRectsUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22145263C;
  v9[3] = &unk_278465728;
  v10 = blockCopy;
  v5 = blockCopy;
  objc_msgSend_enumerateCellRangesUsingBlock_(self, v6, v9, v7, v8);
}

- (void)fillCellRangeRowMajorSet:(void *)set leftToRight:(BOOL)right
{
  rightCopy = right;
  selfCopy = self;
  v11 = objc_msgSend_cellRanges(selfCopy, v7, v8, v9, v10);
  v12 = *v11;
  v13 = v11[1];
  if (rightCopy)
  {
    if (*v11 != v13)
    {
      do
      {
        v14 = *v12++;
        v19 = v14;
        sub_2214546F4(set, &v19);
      }

      while (v12 != v13);
    }
  }

  else if (*v11 != v13)
  {
    do
    {
      v15 = *v12++;
      v19 = v15;
      v16 = WORD2(v15);
      v17 = 1000 - (WORD4(v15) + WORD2(v15));
      if (DWORD2(v15))
      {
        v18 = v16 == 0x7FFF;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v17 = -31768;
      }

      WORD2(v19) = v17;
      sub_2214546F4(set, &v19);
    }

    while (v12 != v13);
  }

  sub_2214546F4(set, dword_2217E1D74);
}

- (void)fillCellRangeColMajorSet:(void *)set topToBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  selfCopy = self;
  v11 = objc_msgSend_cellRanges(selfCopy, v7, v8, v9, v10);
  v12 = *v11;
  v13 = v11[1];
  if (bottomCopy)
  {
    if (*v11 != v13)
    {
      do
      {
        v14 = *v12++;
        v20 = v14;
        sub_22145480C(set, &v20);
      }

      while (v12 != v13);
    }
  }

  else if (*v11 != v13)
  {
    do
    {
      v15 = *v12++;
      v20 = v15;
      v16 = v15;
      v17 = 1000000 - v15 - HIDWORD(v15);
      if (HIDWORD(*(&v15 + 1)))
      {
        v18 = v16 == 0x7FFFFFFF;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = -2146483648;
      }

      else
      {
        v19 = v17;
      }

      LODWORD(v20) = v19;
      sub_22145480C(set, &v20);
    }

    while (v12 != v13);
  }

  sub_22145480C(set, dword_2217E1D74);
}

@end