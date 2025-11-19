@interface RTLearnedRouteMultiModalStatisticsMetrics
- (RTLearnedRouteMultiModalStatisticsMetrics)init;
- (id)initForDefaultMetric;
@end

@implementation RTLearnedRouteMultiModalStatisticsMetrics

- (id)initForDefaultMetric
{
  v9.receiver = self;
  v9.super_class = RTLearnedRouteMultiModalStatisticsMetrics;
  result = [(RTLearnedRouteMultiModalStatisticsMetrics *)&v9 init];
  if (result)
  {
    __asm { FMOV            V0.4S, #-1.0 }

    *(result + 8) = _Q0;
    *(result + 24) = _Q0;
    *(result + 40) = _Q0;
    __asm { FMOV            V1.2S, #-1.0 }

    *(result + 7) = _D1;
    *(result + 8) = -1;
    *(result + 18) = -1;
    *(result + 76) = _Q0;
    *(result + 92) = _Q0;
    *(result + 108) = -1;
    *(result + 116) = -1;
    *(result + 124) = -1;
    *(result + 33) = -1;
  }

  return result;
}

- (RTLearnedRouteMultiModalStatisticsMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTLearnedRouteMultiModalStatisticsMetrics;
  result = [(RTLearnedRouteMultiModalStatisticsMetrics *)&v3 init];
  if (result)
  {
    *&result->_numDrivingOnlyClusters = 0u;
    *&result->_multiModalWalkTimeBeforeDriveMax = 0u;
    *&result->_multiModalWalkDistanceBeforeDriveMax = 0u;
    *&result->_multiModalTripSegmentsWithDrive = 0u;
    *&result->_multiModalNumWalkSegmentsAvg = 0u;
    *&result->_multiModalDriveDistanceMax = 0u;
    *&result->_multiModalBikeTimeAfterDriveAvg = 0u;
    *&result->_multiModalBikeDistanceAfterDriveAvg = 0u;
  }

  return result;
}

@end