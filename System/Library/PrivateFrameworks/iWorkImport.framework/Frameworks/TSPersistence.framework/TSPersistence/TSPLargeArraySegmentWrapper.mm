@interface TSPLargeArraySegmentWrapper
- (TSPLargeArraySegmentWrapper)initWithLargeArraySegment:(id)segment;
@end

@implementation TSPLargeArraySegmentWrapper

- (TSPLargeArraySegmentWrapper)initWithLargeArraySegment:(id)segment
{
  segmentCopy = segment;
  v9.receiver = self;
  v9.super_class = TSPLargeArraySegmentWrapper;
  v6 = [(TSPLargeArraySegmentWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, segment);
  }

  return v7;
}

@end