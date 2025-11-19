@interface _PXStoryPPTMeasureInfo
- (_PXStoryPPTMeasureInfo)initWithMetric:(int64_t)a3;
@end

@implementation _PXStoryPPTMeasureInfo

- (_PXStoryPPTMeasureInfo)initWithMetric:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = _PXStoryPPTMeasureInfo;
  v4 = [(_PXStoryPPTMeasureInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_metric = a3;
    v6 = objc_alloc_init(PXStatsCalculator);
    statistics = v5->_statistics;
    v5->_statistics = v6;
  }

  return v5;
}

@end