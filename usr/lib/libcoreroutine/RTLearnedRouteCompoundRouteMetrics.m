@interface RTLearnedRouteCompoundRouteMetrics
- (RTLearnedRouteCompoundRouteMetrics)init;
- (id)initForDefaultMetric;
@end

@implementation RTLearnedRouteCompoundRouteMetrics

- (id)initForDefaultMetric
{
  v8.receiver = self;
  v8.super_class = RTLearnedRouteCompoundRouteMetrics;
  result = [(RTLearnedRouteCompoundRouteMetrics *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *(result + 1) = _D0;
    *(result + 2) = -1;
    *(result + 3) = -1;
    *(result + 8) = -1;
  }

  return result;
}

- (RTLearnedRouteCompoundRouteMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTLearnedRouteCompoundRouteMetrics;
  result = [(RTLearnedRouteCompoundRouteMetrics *)&v3 init];
  if (result)
  {
    *&result->_compoundRoutesDistanceBetweenAdjacentCompoundTripSegmentsAvg = 0;
    *&result->_compoundRoutesNumFailureDrivesTooFar = 0;
    result->_compoundRoutesNumSuccessTripSegments = 0;
    *&result->_compoundRoutesNumFailureDrivesTooMany = 0;
  }

  return result;
}

@end