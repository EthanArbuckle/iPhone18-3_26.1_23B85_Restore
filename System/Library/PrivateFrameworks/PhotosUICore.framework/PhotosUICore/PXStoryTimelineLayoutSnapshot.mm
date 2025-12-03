@interface PXStoryTimelineLayoutSnapshot
- ($7A74DE1ADD4D9428579EDAA94466197A)clipCornerRadius;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange;
- (CGRect)timelineRect;
- (PXStoryTimelineLayoutSnapshot)init;
- (PXStoryTimelineLayoutSnapshot)initWithTimeline:(id)timeline timelineRect:(CGRect)rect timeRange:(id *)range clipCornerRadius:(id)radius;
@end

@implementation PXStoryTimelineLayoutSnapshot

- ($7A74DE1ADD4D9428579EDAA94466197A)clipCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)timeRange
{
  v3 = *&self[1].var1.var1;
  *&retstr->var0.var0 = *&self[1].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var0.var0;
  return self;
}

- (CGRect)timelineRect
{
  x = self->_timelineRect.origin.x;
  y = self->_timelineRect.origin.y;
  width = self->_timelineRect.size.width;
  height = self->_timelineRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXStoryTimelineLayoutSnapshot)initWithTimeline:(id)timeline timelineRect:(CGRect)rect timeRange:(id *)range clipCornerRadius:(id)radius
{
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  timelineCopy = timeline;
  v27.receiver = self;
  v27.super_class = PXStoryTimelineLayoutSnapshot;
  v22 = [(PXStoryTimelineLayoutSnapshot *)&v27 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_timeline, timeline);
    v23->_timelineRect.origin.x = x;
    v23->_timelineRect.origin.y = y;
    v23->_timelineRect.size.width = width;
    v23->_timelineRect.size.height = height;
    v24 = *&range->var0.var0;
    v25 = *&range->var1.var1;
    *&v23->_timeRange.start.epoch = *&range->var0.var3;
    *&v23->_timeRange.duration.timescale = v25;
    *&v23->_timeRange.start.value = v24;
    v23->_clipCornerRadius.var0.var0.topLeft = v13;
    v23->_clipCornerRadius.var0.var0.topRight = v12;
    v23->_clipCornerRadius.var0.var0.bottomLeft = v11;
    v23->_clipCornerRadius.var0.var0.bottomRight = v10;
  }

  return v23;
}

- (PXStoryTimelineLayoutSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryTimelineLayoutSnapshot.m" lineNumber:14 description:{@"%s is not available as initializer", "-[PXStoryTimelineLayoutSnapshot init]"}];

  abort();
}

@end