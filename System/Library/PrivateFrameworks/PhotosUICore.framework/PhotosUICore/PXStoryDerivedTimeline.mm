@interface PXStoryDerivedTimeline
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3;
- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3;
- (CGSize)originalSize;
- (CGSize)size;
- (PXStoryDerivedTimeline)init;
- (PXStoryDerivedTimeline)initWithOriginalTimeline:(id)a3;
- (id)clipWithIdentifier:(int64_t)a3;
- (id)indexesOfResourcesWithKind:(int64_t)a3 inResourcesDataSource:(id)a4 forClipsInSegmentWithIdentifier:(int64_t)a5;
- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5;
- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5;
- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3;
- (int64_t)numberOfSegments;
- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5;
- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4;
@end

@implementation PXStoryDerivedTimeline

- (int64_t)identifierOfFirstClipContainingResourceAtIndex:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [v9 identifierOfFirstClipContainingResourceAtIndex:a3 inResourcesDataSource:v8 resourceKind:a5];

  return v10;
}

- (int64_t)indexOfResourceForClipWithIdentifier:(int64_t)a3 inResourcesDataSource:(id)a4 resourceKind:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [v9 indexOfResourceForClipWithIdentifier:a3 inResourcesDataSource:v8 resourceKind:a5];

  return v10;
}

- (id)indexesOfResourcesWithKind:(int64_t)a3 inResourcesDataSource:(id)a4 forClipsInSegmentWithIdentifier:(int64_t)a5
{
  v8 = a4;
  v9 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v10 = [v9 indexesOfResourcesWithKind:a3 inResourcesDataSource:v8 forClipsInSegmentWithIdentifier:a5];

  return v10;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRangeForSegmentWithIdentifier:(SEL)a3
{
  v6 = [(PXStoryDerivedTimeline *)self originalTimeline];
  if (v6)
  {
    v8 = v6;
    [v6 timeRangeForSegmentWithIdentifier:a4];
    v6 = v8;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (int64_t)indexOfSegmentWithIdentifier:(int64_t)a3
{
  v4 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v5 = [v4 indexOfSegmentWithIdentifier:a3];

  return v5;
}

- (CGRect)frameForSegmentWithIdentifier:(int64_t)a3
{
  v4 = [(PXStoryDerivedTimeline *)self originalTimeline];
  [v4 frameForSegmentWithIdentifier:a3];
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

- (void)enumerateSegmentsInTimeRange:(id *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v8 = *&a3->var0.var3;
  v9[0] = *&a3->var0.var0;
  v9[1] = v8;
  v9[2] = *&a3->var1.var1;
  [v7 enumerateSegmentsInTimeRange:v9 usingBlock:v6];
}

- (int64_t)numberOfSegments
{
  v2 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v3 = [v2 numberOfSegments];

  return v3;
}

- (id)clipWithIdentifier:(int64_t)a3
{
  v4 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v5 = [v4 clipWithIdentifier:a3];

  return v5;
}

- (void)enumerateClipsInTimeRange:(id *)a3 rect:(CGRect)a4 usingBlock:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = [(PXStoryDerivedTimeline *)self originalTimeline];
  v13 = *&a3->var0.var3;
  v14[0] = *&a3->var0.var0;
  v14[1] = v13;
  v14[2] = *&a3->var1.var1;
  [v12 enumerateClipsInTimeRange:v14 rect:v11 usingBlock:{x, y, width, height}];
}

- (CGSize)originalSize
{
  v2 = [(PXStoryDerivedTimeline *)self originalTimeline];
  [v2 originalSize];
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
  v2 = [(PXStoryDerivedTimeline *)self originalTimeline];
  [v2 size];
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
  v4 = [(PXStoryDerivedTimeline *)self originalTimeline];
  if (v4)
  {
    v6 = v4;
    [v4 timeRange];
    v4 = v6;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (PXStoryDerivedTimeline)initWithOriginalTimeline:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryDerivedTimeline;
  v6 = [(PXStoryDerivedTimeline *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalTimeline, a3);
  }

  return v7;
}

- (PXStoryDerivedTimeline)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryDerivedTimeline.m" lineNumber:14 description:{@"%s is not available as initializer", "-[PXStoryDerivedTimeline init]"}];

  abort();
}

@end