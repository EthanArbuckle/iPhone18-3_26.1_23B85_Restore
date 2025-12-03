@interface TSTCellRegionGatherer
+ (id)gatherer;
- (TSTCellRegionGatherer)init;
- (TSUCellRect)lastCellRangeAdded;
- (id).cxx_construct;
- (id)gatheredCellRegion;
- (id)p_gatherCellRegionViaCellRegionAddition;
- (id)p_gatherCellRegionViaReducedOverlap;
- (void)addColumns:(id)columns;
- (void)addRange:(TSUCellRect)range;
- (void)addRegion:(id)region;
- (void)addRows:(id)rows;
- (void)moveColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index;
- (void)moveRowsFromRange:(_NSRange)range toIndex:(unsigned int)index;
- (void)p_addRange:(TSUCellRect)range;
- (void)p_cleanupStashedRangeIffExists;
- (void)removeColumns:(id)columns;
- (void)removeRows:(id)rows;
@end

@implementation TSTCellRegionGatherer

+ (id)gatherer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSTCellRegionGatherer)init
{
  v9.receiver = self;
  v9.super_class = TSTCellRegionGatherer;
  v2 = [(TSTCellRegionGatherer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    memset(v7, 0, sizeof(v7));
    v8 = 1065353216;
    *(v2 + 3) = 0;
    *(v2 + 8) = xmmword_2217E08F0;
    sub_22120A3D8((v2 + 32), v5);
    sub_22120A3D8(&v3->_gathererMap._encodedJoinCoordToCandidateIndexMap, v7);
    sub_2210BDEC0(v7);
    sub_2210BDEC0(v5);
  }

  return v3;
}

- (void)addRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValidOrSpanning(&rangeCopy))
  {
    if (TSUCellRect::isValid(&self->_lastCellRangeAdded))
    {
      size = self->_lastCellRangeAdded.size;
      v5 = rangeCopy;
      v15.origin = self->_lastCellRangeAdded.origin;
      v15.size = size;
      v14 = rangeCopy;
      v6 = sub_2211C1FC4(*&v15.origin, *&size, *&rangeCopy.origin, *&rangeCopy.size);
      v8 = v7;
      if (v7.numberOfRows * v7.numberOfColumns != v5.size.numberOfRows * v5.size.numberOfColumns + (size.numberOfRows * size.numberOfColumns) && (TSUCellRect::contains(&v15, &v14) & 1) == 0 && !TSUCellRect::contains(&v14, &v15))
      {
        v6 = 0x7FFF7FFFFFFFLL;
        v8 = 0;
      }

      v15.origin = v6;
      v15.size = v8;
      v9 = &v15;
      if ((TSUCellRect::isValid(&v15) & 1) == 0)
      {
        objc_msgSend_p_addRange_(self, v10, *&self->_lastCellRangeAdded.origin, *&self->_lastCellRangeAdded.size, v11);
        v9 = &rangeCopy;
      }

      v12 = *v9;
    }

    else
    {
      v12 = rangeCopy;
    }

    self->_lastCellRangeAdded = v12;
  }
}

- (void)addRegion:(id)region
{
  regionCopy = region;
  if (!self->_gathererMap._cellRangeIndex)
  {
    self->_mightOverlap = 1;
  }

  objc_msgSend_p_cleanupStashedRangeIffExists(self, v4, v5, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221208C18;
  v12[3] = &unk_278461548;
  v12[4] = self;
  objc_msgSend_enumerateCellRangesUsingBlock_(regionCopy, v9, v12, v10, v11);
}

- (void)addColumns:(id)columns
{
  columnsCopy = columns;
  v9 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  objc_msgSend_addColumns_(v14, v15, columnsCopy, v16, v17);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v21);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v23);
  sub_2210BDEC0(v23);
  sub_2210BDEC0(v21);
  objc_msgSend_addRegion_(self, v18, v14, v19, v20);
}

- (void)addRows:(id)rows
{
  rowsCopy = rows;
  v9 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  objc_msgSend_addRows_(v14, v15, rowsCopy, v16, v17);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v21);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v23);
  sub_2210BDEC0(v23);
  sub_2210BDEC0(v21);
  objc_msgSend_addRegion_(self, v18, v14, v19, v20);
}

- (void)removeColumns:(id)columns
{
  columnsCopy = columns;
  v9 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  objc_msgSend_removeColumns_(v14, v15, columnsCopy, v16, v17);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v21);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v23);
  sub_2210BDEC0(v23);
  sub_2210BDEC0(v21);
  objc_msgSend_addRegion_(self, v18, v14, v19, v20);
}

- (void)removeRows:(id)rows
{
  rowsCopy = rows;
  v9 = objc_msgSend_gatheredCellRegion(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutableCopy(v9, v10, v11, v12, v13);

  objc_msgSend_removeRows_(v14, v15, rowsCopy, v16, v17);
  memset(v21, 0, sizeof(v21));
  v22 = 1065353216;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v21);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v23);
  sub_2210BDEC0(v23);
  sub_2210BDEC0(v21);
  objc_msgSend_addRegion_(self, v18, v14, v19, v20);
}

- (void)moveColumnsFromRange:(_NSRange)range toIndex:(unsigned __int16)index
{
  indexCopy = index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_gatheredCellRegion(self, a2, range.location, range.length, index);
  v10 = objc_msgSend_regionByMovingColumnsFromRange_toIndex_(v8, v9, location, length, indexCopy);

  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v14);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v16);
  sub_2210BDEC0(v16);
  sub_2210BDEC0(v14);
  objc_msgSend_addRegion_(self, v11, v10, v12, v13);
}

- (void)moveRowsFromRange:(_NSRange)range toIndex:(unsigned int)index
{
  v4 = *&index;
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_gatheredCellRegion(self, a2, range.location, range.length, *&index);
  v10 = objc_msgSend_regionByMovingRowsFromRange_toIndex_(v8, v9, location, length, v4);

  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  self->_gathererMap._rowRange.length = 0;
  *&self->_gathererMap._cellRangeIndex = xmmword_2217E08F0;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v14);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v16);
  sub_2210BDEC0(v16);
  sub_2210BDEC0(v14);
  objc_msgSend_addRegion_(self, v11, v10, v12, v13);
}

- (void)p_cleanupStashedRangeIffExists
{
  if (TSUCellRect::isValid(&self->_lastCellRangeAdded))
  {
    objc_msgSend_p_addRange_(self, v3, *&self->_lastCellRangeAdded.origin, *&self->_lastCellRangeAdded.size, v4);
    self->_lastCellRangeAdded = xmmword_2217E0900;
  }
}

- (void)p_addRange:(TSUCellRect)range
{
  rangeCopy = range;
  if (TSUCellRect::isValidOrSpanning(&rangeCopy))
  {
    if (!self->_gathererMap._cellRangeIndex)
    {
      self->_mightOverlap = 1;
    }

    v4 = sub_221087F14(&self->_originToRangeMap.__table_.__bucket_list_.__ptr_, &rangeCopy.origin);
    v5 = (v4 + 3);
    if (!v4)
    {
      v5 = &xmmword_2217E0900;
    }

    v25 = *v5;
    isValid = TSUCellRect::isValid(&v25);
    origin = rangeCopy.origin;
    size = rangeCopy.size;
    if (!isValid || !HIDWORD(*&v25.size) || !v25.size.numberOfColumns || !HIDWORD(*&rangeCopy.size) || !rangeCopy.size.numberOfColumns)
    {
      goto LABEL_48;
    }

    v9 = *&v25.origin & 0xFFFF00000000;
    if (v25.origin.row == 0x7FFFFFFFLL && v9 != 0x7FFF00000000)
    {
      goto LABEL_13;
    }

    v15 = v9 != 0x7FFF00000000 && v25.origin.row == 0x7FFFFFFF;
    if (!v15 && v25.origin.row > rangeCopy.origin.row)
    {
      goto LABEL_48;
    }

    v16 = v25.origin.row + v25.size.numberOfRows - 1;
    if (v25.origin.row == 0x7FFFFFFF)
    {
      v16 = 0x7FFFFFFF;
    }

    if (v16 < rangeCopy.origin.row)
    {
      goto LABEL_48;
    }

    if (v25.origin.row == 0x7FFFFFFFLL || v9 != 0x7FFF00000000)
    {
LABEL_13:
      v10 = HIDWORD(*&rangeCopy.origin);
      column = v25.origin.column;
      if (v25.origin.column > rangeCopy.origin.column || (v25.origin.column != 0x7FFF ? (v12 = v25.size.numberOfColumns == 0) : (v12 = 1), (v13 = LOWORD(v25.size.numberOfColumns) - 1 + v25.origin.column, !v12) ? (v14 = LOWORD(v25.size.numberOfColumns) - 1 + v25.origin.column) : (v14 = 0x7FFF), v14 < rangeCopy.origin.column))
      {
LABEL_48:
        sub_221208378(&self->_gathererMap._cellRangeIndex, origin, size, 0);
        v27 = &rangeCopy;
        v24 = sub_22120B15C(&self->_originToRangeMap.__table_.__bucket_list_.__ptr_, &rangeCopy.origin);
        *(v24 + 3) = rangeCopy;
        return;
      }
    }

    else
    {
      v13 = LOWORD(v25.size.numberOfColumns) + 32766;
      v10 = HIDWORD(*&rangeCopy.origin);
      column = 0x7FFF;
    }

    if (column == 0x7FFF)
    {
      v17 = 0x7FFF;
    }

    else
    {
      v17 = v13;
    }

    v18 = v10;
    v19 = LOWORD(rangeCopy.size.numberOfColumns) + v10 - 1;
    if (v18 == 0x7FFF || rangeCopy.size.numberOfColumns == 0)
    {
      v21 = 0x7FFF;
    }

    else
    {
      v21 = v19;
    }

    if (v17 < v21)
    {
      goto LABEL_48;
    }

    v22 = v25.origin.row + v25.size.numberOfRows - 1;
    if (v25.origin.row == 0x7FFFFFFF)
    {
      v22 = 0x7FFFFFFF;
    }

    v23 = rangeCopy.origin.row + rangeCopy.size.numberOfRows - 1;
    if (rangeCopy.origin.row == 0x7FFFFFFF)
    {
      v23 = 0x7FFFFFFF;
    }

    if (v22 < v23)
    {
      goto LABEL_48;
    }
  }
}

- (id)gatheredCellRegion
{
  objc_msgSend_p_cleanupStashedRangeIffExists(self, a2, v2, v3, v4);
  if (self->_gathererMap._cellRanges.__table_.__size_ > 0x63)
  {
    objc_msgSend_p_gatherCellRegionViaReducedOverlap(self, v6, v7, v8, v9);
  }

  else
  {
    objc_msgSend_p_gatherCellRegionViaCellRegionAddition(self, v6, v7, v8, v9);
  }
  v10 = ;

  return v10;
}

- (id)p_gatherCellRegionViaCellRegionAddition
{
  sub_2212088FC(&self->_gathererMap, &__p);
  if (self->_mightOverlap)
  {
    v9 = objc_msgSend_invalidRegion(TSTMutableCellRegion, v3, v4, v5, v6);
    v10 = __p;
    v11 = v14;
    while (v10 != v11)
    {
      objc_msgSend_addRange_(v9, v7, *v10, v10[1], v8);
      v10 += 2;
    }
  }

  else
  {
    v9 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v3, &__p, v5, v6);
  }

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  return v9;
}

- (id)p_gatherCellRegionViaReducedOverlap
{
  location = self->_gathererMap._rowRange.location;
  length = self->_gathererMap._rowRange.length;
  sub_2212088FC(&self->_gathererMap, &v18);
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_22116C9DC(&__p, v18, v19, (v19 - v18) >> 4);
  sub_221209670(&__p, location, length, v5, v14);
  *&self->_gathererMap._cellRangeIndex = *v14;
  self->_gathererMap._rowRange.length = v15;
  sub_22120A3D8(&self->_gathererMap._cellRanges, v16);
  sub_22120A3D8(&self->_gathererMap._encodedJoinCoordToCandidateIndexMap, v17);
  sub_2210BDEC0(v17);
  sub_2210BDEC0(v16);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  sub_2212088FC(&self->_gathererMap, v14);
  v9 = objc_msgSend_regionFromCellRangeVector_(TSTCellRegion, v6, v14, v7, v8);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  return v9;
}

- (TSUCellRect)lastCellRangeAdded
{
  size = self->_lastCellRangeAdded.size;
  origin = self->_lastCellRangeAdded.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 26) = 1065353216;
  *(self + 8) = xmmword_2217E08F0;
  *(self + 3) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 36) = 1065353216;
  return self;
}

@end