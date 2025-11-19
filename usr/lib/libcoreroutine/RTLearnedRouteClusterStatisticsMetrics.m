@interface RTLearnedRouteClusterStatisticsMetrics
- (RTLearnedRouteClusterStatisticsMetrics)init;
- (id)initForDefaultMetric;
@end

@implementation RTLearnedRouteClusterStatisticsMetrics

- (id)initForDefaultMetric
{
  v9.receiver = self;
  v9.super_class = RTLearnedRouteClusterStatisticsMetrics;
  result = [(RTLearnedRouteClusterStatisticsMetrics *)&v9 init];
  if (result)
  {
    __asm { FMOV            V0.4S, #-1.0 }

    *(result + 24) = _Q0;
    __asm { FMOV            V1.2S, #-1.0 }

    *(result + 5) = _D1;
    *(result + 12) = -1;
    *(result + 52) = _D1;
    *(result + 8) = _Q0;
    *&_Q0 = -1;
    *(&_Q0 + 1) = -1;
    *(result + 60) = _Q0;
    *(result + 76) = _D1;
  }

  return result;
}

- (RTLearnedRouteClusterStatisticsMetrics)init
{
  v8.receiver = self;
  v8.super_class = RTLearnedRouteClusterStatisticsMetrics;
  result = [(RTLearnedRouteClusterStatisticsMetrics *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    *&result->_dtwForUnmatchedTripAvg = _D0;
    result->_dtwForUnmatchedTripMin = -1.0;
    *&result->_routeLengthAvg = 0u;
    *&result->_waypointCountAvg = 0u;
    *&result->_clusterProcessingRunTimeAvg = 0;
    *&result->_dtwForMatchedTripAvg = 0;
    *&result->_numRoadsDifferenceBetweenTripSegmentAndLearnedRoute = -1;
    *&result->_tspRunTimeAvg = 0xBF80000000000000;
  }

  return result;
}

@end