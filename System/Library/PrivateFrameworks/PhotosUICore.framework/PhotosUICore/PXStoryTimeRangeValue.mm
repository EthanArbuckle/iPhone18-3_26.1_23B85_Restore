@interface PXStoryTimeRangeValue
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)storyTimeRange;
- (PXStoryTimeRangeValue)init;
- (PXStoryTimeRangeValue)initWithStoryTimeRange:(id *)a3;
@end

@implementation PXStoryTimeRangeValue

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)storyTimeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (PXStoryTimeRangeValue)initWithStoryTimeRange:(id *)a3
{
  v7.receiver = self;
  v7.super_class = PXStoryTimeRangeValue;
  result = [(PXStoryTimeRangeValue *)&v7 init];
  if (result)
  {
    v5 = *&a3->var0.var0;
    v6 = *&a3->var0.var3;
    *&result->_storyTimeRange.duration.timescale = *&a3->var1.var1;
    *&result->_storyTimeRange.start.epoch = v6;
    *&result->_storyTimeRange.start.value = v5;
  }

  return result;
}

- (PXStoryTimeRangeValue)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryTypes.m" lineNumber:89 description:{@"%s is not available as initializer", "-[PXStoryTimeRangeValue init]"}];

  abort();
}

@end