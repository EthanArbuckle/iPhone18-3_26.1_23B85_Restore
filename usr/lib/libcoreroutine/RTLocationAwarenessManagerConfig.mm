@interface RTLocationAwarenessManagerConfig
- (RTLocationAwarenessManagerConfig)initWithHeartbeatIntervalResolution:(double)a3 maxHeartbeatInterval:(double)a4 dispatchTimerLeeway:(double)a5 requiredHorizontalAccuracy:(double)a6 activeDuration:(double)a7 minMetricSubmissionAge:(double)a8 maxHorizontalAccuracyForCoarseLocation:(double)a9 highAccuracyLocationRequestDuration:(double)a10;
@end

@implementation RTLocationAwarenessManagerConfig

- (RTLocationAwarenessManagerConfig)initWithHeartbeatIntervalResolution:(double)a3 maxHeartbeatInterval:(double)a4 dispatchTimerLeeway:(double)a5 requiredHorizontalAccuracy:(double)a6 activeDuration:(double)a7 minMetricSubmissionAge:(double)a8 maxHorizontalAccuracyForCoarseLocation:(double)a9 highAccuracyLocationRequestDuration:(double)a10
{
  v19.receiver = self;
  v19.super_class = RTLocationAwarenessManagerConfig;
  result = [(RTLocationAwarenessManagerConfig *)&v19 init];
  if (result)
  {
    result->_heartbeatIntervalResolution = a3;
    result->_maxHeartbeatInterval = a4;
    result->_dispatchTimerLeeway = a5;
    result->_requiredHorizontalAccuracy = a6;
    result->_activeDuration = a7;
    result->_minMetricSubmissionAge = a8;
    result->_maxHorizontalAccuracyForCoarseLocation = a9;
    result->_highAccuracyLocationRequestDuration = a10;
  }

  return result;
}

@end