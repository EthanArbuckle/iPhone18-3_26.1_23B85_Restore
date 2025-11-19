@interface TSTCellRegionColMajorIterator
- (TSTCellRegionColMajorIterator)initWithCellRegion:(id)a3;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
- (id).cxx_construct;
- (void)terminate;
@end

@implementation TSTCellRegionColMajorIterator

- (TSTCellRegionColMajorIterator)initWithCellRegion:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TSTCellRegionColMajorIterator;
  v5 = [(TSTCellRegionColMajorIterator *)&v15 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeColMajorSet_topToBottom_(v4, v6, &v5->mCellRangeSet, 1, v7);
    v8->mBoundingCellRange.origin = objc_msgSend_boundingCellRange(v4, v9, v10, v11, v12);
    v8->mBoundingCellRange.size = v13;
    v8->mCellID = *(v8->mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v8;
}

- (TSUCellCoord)getNext
{
  mCellID = self->mCellID;
  if (mCellID.row != 0x7FFFFFFF && (*&mCellID & 0xFFFF00000000) != 0x7FFF00000000)
  {
    p_mCellRangeSet = &self->mCellRangeSet;
    begin_node = self->mCellRangeSet.__tree_.__begin_node_;
    self->mCellID.row = mCellID.row + 1;
    v7 = *(begin_node + 7);
    v8 = HIDWORD(*(begin_node + 36));
    v9 = !v8 || v7 == 0x7FFFFFFF;
    v10 = v9 ? 0x7FFFFFFF : v7 + v8 - 1;
    if (mCellID.row + 1 > v10)
    {
      v12 = *(begin_node + 28);
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      ++WORD2(v12);
      if (--DWORD2(v12))
      {
        sub_22145480C(p_mCellRangeSet, &v12);
      }

      self->mCellID = *(self->mCellRangeSet.__tree_.__begin_node_ + 28);
    }
  }

  return mCellID;
}

- (void)terminate
{
  if (self->mCellRangeSet.__tree_.__size_ >= 2)
  {
    do
    {
      begin_node = self->mCellRangeSet.__tree_.__begin_node_;
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
    }

    while (self->mCellRangeSet.__tree_.__size_ > 1);
  }

  self->mCellID = 0x7FFF7FFFFFFFLL;
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3
{
  row = self->mCellID.row;
  if (row > a3.row || row == a3.row && self->mCellID.column > a3.column || a3.row == 0x7FFFFFFF || (*&a3 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return self->mCellID;
  }

  if (!self->mCellRangeSet.__tree_.__size_)
  {
LABEL_34:
    origin = 0x7FFF7FFFFFFFLL;
    goto LABEL_36;
  }

  column = a3.column;
  while (1)
  {
    begin_node = self->mCellRangeSet.__tree_.__begin_node_;
    v19 = *(begin_node + 28);
    origin = v19.origin;
    v9 = *&v19.origin & 0xFFFF00000000;
    if (v19.origin.row != 0x7FFFFFFF && v9 == 0x7FFF00000000)
    {
      v11 = 0;
    }

    else
    {
      v11 = v19.origin.column;
    }

    if (v11 > column)
    {
      origin = *(begin_node + 28);
      goto LABEL_36;
    }

    v12 = LOWORD(v19.size.numberOfColumns) + v19.origin.column - 1;
    if (v19.size.numberOfColumns)
    {
      v13 = v19.origin.column == 0x7FFF;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v12 = 0x7FFF;
    }

    if (v12 < column)
    {
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      goto LABEL_33;
    }

    if (v11 < column)
    {
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      TSUCellRect::insetLeft(&v19);
LABEL_32:
      sub_22145480C(&self->mCellRangeSet, &v19.origin);
      goto LABEL_33;
    }

    v14 = !HIDWORD(*&v19.size) || v19.origin.row == 0x7FFFFFFF;
    v15 = v14 ? 0x7FFFFFFF : v19.origin.row + v19.size.numberOfRows - 1;
    if (v15 >= a3.row)
    {
      break;
    }

    sub_22112C950(&self->mCellRangeSet, begin_node);
    operator delete(begin_node);
    TSUCellRect::insetLeft(&v19);
    if (v19.size.numberOfColumns)
    {
      goto LABEL_32;
    }

LABEL_33:
    if (!self->mCellRangeSet.__tree_.__size_)
    {
      goto LABEL_34;
    }
  }

  if (v9 != 0x7FFF00000000 && v19.origin.row == 0x7FFFFFFF || v19.origin.row <= a3.row)
  {
    origin = a3;
  }

LABEL_36:
  self->mCellID = origin;
  return self->mCellID;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end