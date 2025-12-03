@interface RTLocationAwarenessManagerConfig
- (RTLocationAwarenessManagerConfig)initWithHeartbeatIntervalResolution:(double)resolution maxHeartbeatInterval:(double)interval dispatchTimerLeeway:(double)leeway requiredHorizontalAccuracy:(double)accuracy activeDuration:(double)duration minMetricSubmissionAge:(double)age maxHorizontalAccuracyForCoarseLocation:(double)location highAccuracyLocationRequestDuration:(double)self0;
@end

@implementation RTLocationAwarenessManagerConfig

- (RTLocationAwarenessManagerConfig)initWithHeartbeatIntervalResolution:(double)resolution maxHeartbeatInterval:(double)interval dispatchTimerLeeway:(double)leeway requiredHorizontalAccuracy:(double)accuracy activeDuration:(double)duration minMetricSubmissionAge:(double)age maxHorizontalAccuracyForCoarseLocation:(double)location highAccuracyLocationRequestDuration:(double)self0
{
  v19.receiver = self;
  v19.super_class = RTLocationAwarenessManagerConfig;
  result = [(RTLocationAwarenessManagerConfig *)&v19 init];
  if (result)
  {
    result->_heartbeatIntervalResolution = resolution;
    result->_maxHeartbeatInterval = interval;
    result->_dispatchTimerLeeway = leeway;
    result->_requiredHorizontalAccuracy = accuracy;
    result->_activeDuration = duration;
    result->_minMetricSubmissionAge = age;
    result->_maxHorizontalAccuracyForCoarseLocation = location;
    result->_highAccuracyLocationRequestDuration = requestDuration;
  }

  return result;
}

@end