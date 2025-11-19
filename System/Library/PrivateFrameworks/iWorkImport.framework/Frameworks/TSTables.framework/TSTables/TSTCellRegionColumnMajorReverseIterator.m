@interface TSTCellRegionColumnMajorReverseIterator
- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)a3;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3;
- (TSUCellCoord)getNext;
@end

@implementation TSTCellRegionColumnMajorReverseIterator

- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TSTCellRegionColumnMajorReverseIterator;
  v5 = [(TSTCellRegionColumnMajorReverseIterator *)&v15 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeColMajorSet_topToBottom_(v4, v6, &v5->super.mCellRangeSet, 0, v7);
    v8->super.mBoundingCellRange.origin = objc_msgSend_boundingCellRange(v4, v9, v10, v11, v12);
    v8->super.mBoundingCellRange.size = v13;
    v8->super.mCellID = *(v8->super.mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v8;
}

- (TSUCellCoord)getNext
{
  v6.receiver = self;
  v6.super_class = TSTCellRegionColumnMajorReverseIterator;
  v2 = [(TSTCellRegionColMajorIterator *)&v6 getNext];
  if ((*&v2 & 0xFFFF00000000) == 0x7FFF00000000 || v2.row == 0x7FFFFFFF)
  {
    row = v2.row;
  }

  else
  {
    row = 999999 - v2.row;
  }

  return (*&v2 & 0xFFFFFFFF00000000 | row);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)a3
{
  v5.receiver = self;
  v5.super_class = TSTCellRegionColumnMajorReverseIterator;
  v3 = [(TSTCellRegionColMajorIterator *)&v5 advanceToCellID:(999999 - a3.row) | *&a3 & 0xFFFFFFFF00000000];
  return ((999999 - v3.row) | *&v3 & 0xFFFFFFFF00000000);
}

@end