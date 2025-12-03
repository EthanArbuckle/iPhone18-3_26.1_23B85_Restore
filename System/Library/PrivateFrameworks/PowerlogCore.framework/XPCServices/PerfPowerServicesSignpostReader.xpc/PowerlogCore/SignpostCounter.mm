@interface SignpostCounter
- (SignpostCounter)init;
- (void)updateMxSignpostOverlapStatistics:(id)statistics;
@end

@implementation SignpostCounter

- (SignpostCounter)init
{
  v8.receiver = self;
  v8.super_class = SignpostCounter;
  result = [(SignpostCounter *)&v8 init];
  if (result)
  {
    result->count = 0;
    result->mxSignpostIntervalCounts = 0;
    result->mxSignpostIntervalOverlaps = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->prevMxSignpostStartMs = _Q0;
  }

  return result;
}

- (void)updateMxSignpostOverlapStatistics:(id)statistics
{
  statisticsCopy = statistics;
  ++self->mxSignpostIntervalCounts;
  prevMxSignpostStartMs = self->prevMxSignpostStartMs;
  v12 = statisticsCopy;
  [statisticsCopy startMs];
  if (prevMxSignpostStartMs <= v6)
  {
    prevMxSignpostEndMs = self->prevMxSignpostEndMs;
    [v12 startMs];
    if (prevMxSignpostEndMs > v9)
    {
      ++self->mxSignpostIntervalOverlaps;
    }

    v10 = self->prevMxSignpostEndMs;
    [v12 endMs];
    if (v10 >= v7)
    {
      v7 = v10;
    }
  }

  else
  {
    [v12 endMs];
  }

  self->prevMxSignpostEndMs = v7;
  [v12 startMs];
  self->prevMxSignpostStartMs = v11;
}

@end