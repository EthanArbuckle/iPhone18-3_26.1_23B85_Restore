@interface RTLearnedRouteSPIStatisticsMetrics
- (RTLearnedRouteSPIStatisticsMetrics)init;
- (id)initForDefaultMetric;
@end

@implementation RTLearnedRouteSPIStatisticsMetrics

- (id)initForDefaultMetric
{
  v8.receiver = self;
  v8.super_class = RTLearnedRouteSPIStatisticsMetrics;
  result = [(RTLearnedRouteSPIStatisticsMetrics *)&v8 init];
  if (result)
  {
    *(result + 11) = 0;
    *(result + 2) = 0;
    *(result + 20) = -1;
    __asm { FMOV            V0.2S, #-1.0 }

    *(result + 28) = _D0;
    *(result + 36) = -1082130432;
    *(result + 15) = 0;
    *(result + 17) = 0;
  }

  return result;
}

- (RTLearnedRouteSPIStatisticsMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTLearnedRouteSPIStatisticsMetrics;
  result = [(RTLearnedRouteSPIStatisticsMetrics *)&v3 init];
  if (result)
  {
    *&result->_isSPIResponseRouteLowLikelihood = 0;
    *&result->_isSPISuccess = 0;
    *&result->_numSPIReturnWaypointsAvg = 0;
    *&result->_timeBetweenSPIQueries = 0;
    *&result->_spiResponseTime = 0;
  }

  return result;
}

@end