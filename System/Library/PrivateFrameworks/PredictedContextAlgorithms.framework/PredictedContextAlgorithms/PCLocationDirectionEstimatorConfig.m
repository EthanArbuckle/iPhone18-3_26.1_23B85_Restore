@interface PCLocationDirectionEstimatorConfig
- (PCLocationDirectionEstimatorConfig)initWithMinTravelTimeSec:(double)a3 fullEffectTimeSec:(double)a4 minDistanceToDestinationM:(double)a5 minReliableDistanceM:(double)a6 maxLocationUncertaintyM:(double)a7;
@end

@implementation PCLocationDirectionEstimatorConfig

- (PCLocationDirectionEstimatorConfig)initWithMinTravelTimeSec:(double)a3 fullEffectTimeSec:(double)a4 minDistanceToDestinationM:(double)a5 minReliableDistanceM:(double)a6 maxLocationUncertaintyM:(double)a7
{
  v16.receiver = self;
  v16.super_class = PCLocationDirectionEstimatorConfig;
  v12 = [(PCLocationDirectionEstimatorConfig *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_minTravelTimeSec = a3;
    v12->_fullEffectTimeSec = a4;
    v12->_minDistanceToDestinationM = a5;
    v12->_minReliableDistanceM = a6;
    v12->_maxLocationUncertaintyM = a7;
    v14 = v12;
  }

  return v13;
}

@end