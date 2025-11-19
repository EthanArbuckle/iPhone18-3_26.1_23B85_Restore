@interface TSTCellRegionRowMajorIterator
- (TSTCellRegionRowMajorIterator)initWithCellRegion:(id)a3;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
- (id).cxx_construct;
- (void)terminate;
@end

@implementation TSTCellRegionRowMajorIterator

- (TSTCellRegionRowMajorIterator)initWithCellRegion:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TSTCellRegionRowMajorIterator;
  v5 = [(TSTCellRegionRowMajorIterator *)&v15 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeRowMajorSet_leftToRight_(v4, v6, &v5->mCellRangeSet, 1, v7);
    v8->mBoundingCellRange.origin = objc_msgSend_boundingCellRange(v4, v9, v10, v11, v12);
    v8->mBoundingCellRange.size = v13;
    v8->mCellID = *(v8->mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v8;
}

- (TSUCellCoord)getNext
{
  mCellID = self->mCellID;
  v3 = mCellID.row == 0x7FFFFFFF || (*&mCellID & 0xFFFF00000000) == 0x7FFF00000000;
  if (!v3)
  {
    p_mCellRangeSet = &self->mCellRangeSet;
    begin_node = self->mCellRangeSet.__tree_.__begin_node_;
    self->mCellID.column = mCellID.column + 1;
    v7 = *(begin_node + 36);
    v8 = v7 + *(begin_node + 8) - 1;
    if (v7)
    {
      v9 = *(begin_node + 8) == 0x7FFF;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      LOWORD(v8) = 0x7FFF;
    }

    if ((mCellID.column + 1) > v8)
    {
      v11 = *(begin_node + 28);
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      v3 = HIDWORD(v11)-- == 1;
      LODWORD(v11) = v11 + 1;
      if (!v3)
      {
        sub_2214546F4(p_mCellRangeSet, &v11);
      }

      self->mCellID = *(self->mCellRangeSet.__tree_.__begin_node_ + 28);
    }
  }

  return mCellID;
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
LABEL_35:
    origin = 0x7FFF7FFFFFFFLL;
    goto LABEL_37;
  }

  column = a3.column;
  while (1)
  {
    begin_node = self->mCellRangeSet.__tree_.__begin_node_;
    v18 = *(begin_node + 28);
    origin = v18.origin;
    if ((*&v18.origin & 0xFFFF00000000) != 0x7FFF00000000 && v18.origin.row == 0x7FFFFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = v18.origin.row;
    }

    if (v10 > a3.row)
    {
      origin = *(begin_node + 28);
      goto LABEL_37;
    }

    if (HIDWORD(*&v18.size))
    {
      v11 = v18.origin.row == 0x7FFFFFFF;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = v18.origin.row + v18.size.numberOfRows - 1;
    }

    if (v12 < a3.row)
    {
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      goto LABEL_34;
    }

    if (v10 < a3.row)
    {
      sub_22112C950(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      TSUCellRect::insetTop(&v18);
LABEL_33:
      sub_2214546F4(&self->mCellRangeSet, &v18.origin);
      goto LABEL_34;
    }

    v13 = !v18.size.numberOfColumns || v18.origin.column == 0x7FFF;
    v14 = v13 ? 0x7FFF : LOWORD(v18.size.numberOfColumns) + v18.origin.column - 1;
    if (v14 >= column)
    {
      break;
    }

    sub_22112C950(&self->mCellRangeSet, begin_node);
    operator delete(begin_node);
    TSUCellRect::insetTop(&v18);
    if (v18.size.numberOfRows)
    {
      goto LABEL_33;
    }

LABEL_34:
    if (!self->mCellRangeSet.__tree_.__size_)
    {
      goto LABEL_35;
    }
  }

  if (v18.origin.row != 0x7FFFFFFF && (*&v18.origin & 0xFFFF00000000) == 0x7FFF00000000 || v18.origin.column <= a3.column)
  {
    origin = a3;
  }

LABEL_37:
  self->mCellID = origin;
  return self->mCellID;
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

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end