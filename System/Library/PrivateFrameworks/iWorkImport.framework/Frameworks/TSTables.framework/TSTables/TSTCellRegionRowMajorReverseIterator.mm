@interface TSTCellRegionRowMajorReverseIterator
- (TSTCellRegionRowMajorReverseIterator)initWithCellRegion:(id)region;
- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d;
- (TSUCellCoord)getNext;
@end

@implementation TSTCellRegionRowMajorReverseIterator

- (TSTCellRegionRowMajorReverseIterator)initWithCellRegion:(id)region
{
  regionCopy = region;
  v15.receiver = self;
  v15.super_class = TSTCellRegionRowMajorReverseIterator;
  v5 = [(TSTCellRegionRowMajorReverseIterator *)&v15 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fillCellRangeRowMajorSet_leftToRight_(regionCopy, v6, &v5->super.mCellRangeSet, 0, v7);
    v8->super.mBoundingCellRange.origin = objc_msgSend_boundingCellRange(regionCopy, v9, v10, v11, v12);
    v8->super.mBoundingCellRange.size = v13;
    v8->super.mCellID = *(v8->super.mCellRangeSet.__tree_.__begin_node_ + 28);
  }

  return v8;
}

- (TSUCellCoord)getNext
{
  v6.receiver = self;
  v6.super_class = TSTCellRegionRowMajorReverseIterator;
  getNext = [(TSTCellRegionRowMajorIterator *)&v6 getNext];
  v3 = HIDWORD(*&getNext);
  if ((*&getNext & 0xFFFF00000000) != 0x7FFF00000000 && getNext.row != 0x7FFFFFFF)
  {
    LOWORD(v3) = 999 - getNext.column;
  }

  return (*&getNext & 0xFFFF0000FFFFFFFFLL | (v3 << 32));
}

- (TSUCellCoord)advanceToCellID:(TSUCellCoord)d
{
  v5.receiver = self;
  v5.super_class = TSTCellRegionRowMajorReverseIterator;
  v3 = [(TSTCellRegionRowMajorIterator *)&v5 advanceToCellID:*&d & 0xFFFF0000FFFFFFFFLL | (((0x3E700000000 - (*&d & 0xFFFF00000000)) >> 32) << 32)];
  return (*&v3 & 0xFFFF0000FFFFFFFFLL | (((0x3E700000000 - (*&v3 & 0xFFFF00000000)) >> 32) << 32));
}

@end