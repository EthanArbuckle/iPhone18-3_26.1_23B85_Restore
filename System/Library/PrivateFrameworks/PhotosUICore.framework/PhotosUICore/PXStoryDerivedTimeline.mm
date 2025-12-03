@interface PXStoryDerivedTimeline
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)identifier;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier;
- (CGSize)originalSize;
- (CGSize)size;
- (PXStoryDerivedTimeline)init;
- (PXStoryDerivedTimeline)initWithOriginalTimeline:(id)timeline;
- (id)clipWithIdentifier:(int64_t)identifier;
- (id)indexesOfResourcesWithKind:(int64_t)kind inResourcesDataSource:(id)source forClipsInSegmentWithIdentifier:(int64_t)identifier;
- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)index inResourcesDataSource:(id)source resourceKind:(int64_t)kind;
- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)identifier inResourcesDataSource:(id)source resourceKind:(int64_t)kind;
- (int64_t)indexOfSegmentWithIdentifier:(int64_t)identifier;
- (int64_t)numberOfSegments;
- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block;
- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block;
@end

@implementation PXStoryDerivedTimeline

- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)index inResourcesDataSource:(id)source resourceKind:(int64_t)kind
{
  sourceCopy = source;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [originalTimeline identifierOfFirstClipContainingResourceAtIndex:index inResourcesDataSource:sourceCopy resourceKind:kind];

  return v10;
}

- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)identifier inResourcesDataSource:(id)source resourceKind:(int64_t)kind
{
  sourceCopy = source;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [originalTimeline indexOfResourceForClipWithIdentifier:identifier inResourcesDataSource:sourceCopy resourceKind:kind];

  return v10;
}

- (id)indexesOfResourcesWithKind:(int64_t)kind inResourcesDataSource:(id)source forClipsInSegmentWithIdentifier:(int64_t)identifier
{
  sourceCopy = source;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [originalTimeline indexesOfResourcesWithKind:kind inResourcesDataSource:sourceCopy forClipsInSegmentWithIdentifier:identifier];

  return v10;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)identifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  if (originalTimeline)
  {
    v8 = originalTimeline;
    [originalTimeline timeRangeForSegmentWithIdentifier:a4];
    originalTimeline = v8;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (int64_t)indexOfSegmentWithIdentifier:(int64_t)identifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v5 = [originalTimeline indexOfSegmentWithIdentifier:identifier];

  return v5;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)identifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline frameForSegmentWithIdentifier:identifier];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)enumerateSegmentsInTimeRange:(id *)range usingBlock:(id)block
{
  blockCopy = block;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v8 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v8;
  v9[2] = *&range->var1.var1;
  [originalTimeline enumerateSegmentsInTimeRange:v9 usingBlock:blockCopy];
}

- (int64_t)numberOfSegments
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  numberOfSegments = [originalTimeline numberOfSegments];

  return numberOfSegments;
}

- (id)clipWithIdentifier:(int64_t)identifier
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v5 = [originalTimeline clipWithIdentifier:identifier];

  return v5;
}

- (void)enumerateClipsInTimeRange:(id *)range rect:(CGRect)rect usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  v13 = *&range->var0.var3;
  v14[0] = *&range->var0.var0;
  v14[1] = v13;
  v14[2] = *&range->var1.var1;
  [originalTimeline enumerateClipsInTimeRange:v14 rect:blockCopy usingBlock:{x, y, width, height}];
}

- (CGSize)originalSize
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline originalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)size
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  [originalTimeline size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  originalTimeline = [(PXStoryDerivedTimeline *)self originalTimeline];
  if (originalTimeline)
  {
    v6 = originalTimeline;
    [originalTimeline timeRange];
    originalTimeline = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (PXStoryDerivedTimeline)initWithOriginalTimeline:(id)timeline
{
  timelineCopy = timeline;
  v9.receiver = self;
  v9.super_class = PXStoryDerivedTimeline;
  v6 = [(PXStoryDerivedTimeline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalTimeline, timeline);
  }

  return v7;
}

- (PXStoryDerivedTimeline)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDerivedTimeline.m" lineNumber:14 description:{@"%s is not available as initializer", "-[PXStoryDerivedTimeline init]"}];

  abort();
}

@end