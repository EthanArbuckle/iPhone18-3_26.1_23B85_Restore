@interface TSTCellRegionColumnMajorReverseIterator
- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)region;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
@end

@implementation TSTCellRegionColumnMajorReverseIterator

- (TSTCellRegionColumnMajorReverseIterator)initWithCellRegion:(id)region
{
  regionCopy = region;
  v15.receiver = self;
  v15.super_class = TSTCellRegionColumnMajorReverseIterator;
  v5 = [(TSTCellRegionColumnMajorReverseIterator *)&v15 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeColMajorSet_topToBottom_(regionCopy, v6, &v5->super.mCellRangeSet, 0, v7);
    v8->super.mBoundingCellRange.origin = objc_msgSend_boundingCellRange(regionCopy, v9, v10, v11, v12);
    v8->super.mBoundingCellRange.size = v13;
    v8->super.mCellID = *(v8->super.mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v8;
}

- (TSUCellCoord)getNext
{
  v6.receiver = self;
  v6.super_class = TSTCellRegionColumnMajorReverseIterator;
  getNext = [(TSTCellRegionColMajorIterator *)&v6 getNext];
  if ((*&getNext & 0xFFFF00000000) == 0x7FFF00000000 || getNext.row == 0x7FFFFFFF)
  {
    row = getNext.row;
  }

  else
  {
    row = 999999 - getNext.row;
  }

  return (*&getNext & 0xFFFFFFFF00000000 | row);
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  v5.receiver = self;
  v5.super_class = TSTCellRegionColumnMajorReverseIterator;
  0xFFFFFFFF00000000 = [(TSTCellRegionColMajorIterator *)&v5 advanceToCellID:(999999 - d.row) | *&d & 0xFFFFFFFF00000000];
  return ((999999 - 0xFFFFFFFF00000000.row) | *&0xFFFFFFFF00000000 & 0xFFFFFFFF00000000);
}

@end