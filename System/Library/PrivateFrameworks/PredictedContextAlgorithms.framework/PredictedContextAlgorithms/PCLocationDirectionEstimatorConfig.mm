@interface PCLocationDirectionEstimatorConfig
- (PCLocationDirectionEstimatorConfig)initWithMinTravelTimeSec:(double)sec fullEffectTimeSec:(double)timeSec minDistanceToDestinationM:(double)m minReliableDistanceM:(double)distanceM maxLocationUncertaintyM:(double)uncertaintyM;
@end

@implementation PCLocationDirectionEstimatorConfig

- (PCLocationDirectionEstimatorConfig)initWithMinTravelTimeSec:(double)sec fullEffectTimeSec:(double)timeSec minDistanceToDestinationM:(double)m minReliableDistanceM:(double)distanceM maxLocationUncertaintyM:(double)uncertaintyM
{
  v16.receiver = self;
  v16.super_class = PCLocationDirectionEstimatorConfig;
  v12 = [(PCLocationDirectionEstimatorConfig *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_minTravelTimeSec = sec;
    v12->_fullEffectTimeSec = timeSec;
    v12->_minDistanceToDestinationM = m;
    v12->_minReliableDistanceM = distanceM;
    v12->_maxLocationUncertaintyM = uncertaintyM;
    v14 = v12;
  }

  return v13;
}

@end