@interface TSTCellRegionRowMajorReverseIterator
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)getNext;
- (TSTCellRegionRowMajorReverseIterator)initWithCellRegion:(id)region;
@end

@implementation TSTCellRegionRowMajorReverseIterator

- (TSTCellRegionRowMajorReverseIterator)initWithCellRegion:(id)region
{
  v7.receiver = self;
  v7.super_class = TSTCellRegionRowMajorReverseIterator;
  v4 = [(TSTCellRegionRowMajorReverseIterator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [region fillCellRangeRowMajorSet:&v4->super.mCellRangeSet leftToRight:0];
    v5->super.mBoundingCellRange = [region boundingCellRange];
    v5->super.mCellID = *(v5->super.mCellRangeSet.__tree_.__begin_node_ + 26);
  }

  return v5;
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)getNext
{
  v6.receiver = self;
  v6.super_class = TSTCellRegionRowMajorReverseIterator;
  getNext = [(TSTCellRegionRowMajorIterator *)&v6 getNext];
  v3 = HIWORD(getNext);
  if ((~getNext & 0xFF0000) != 0 && ~getNext != 0)
  {
    LOBYTE(v3) = -2 - BYTE2(getNext);
  }

  return (getNext & 0xFF00FFFF | (v3 << 16));
}

@end