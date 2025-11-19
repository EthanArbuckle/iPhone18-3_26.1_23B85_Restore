@interface PCObservedSpeedETAEstimatorConfig
- (PCObservedSpeedETAEstimatorConfig)initWithMinTravelTimeSec:(double)a3 fullEffectTimeSec:(double)a4 minDistanceToDestinationM:(double)a5 minReliableSpeedM_Sec:(double)a6 maxLocationUncertaintyM:(double)a7 etaPenaltyTriggerRatio:(double)a8 etaPenaltyRatioRange:(double)a9;
@end

@implementation PCObservedSpeedETAEstimatorConfig

- (PCObservedSpeedETAEstimatorConfig)initWithMinTravelTimeSec:(double)a3 fullEffectTimeSec:(double)a4 minDistanceToDestinationM:(double)a5 minReliableSpeedM_Sec:(double)a6 maxLocationUncertaintyM:(double)a7 etaPenaltyTriggerRatio:(double)a8 etaPenaltyRatioRange:(double)a9
{
  v20.receiver = self;
  v20.super_class = PCObservedSpeedETAEstimatorConfig;
  v16 = [(PCObservedSpeedETAEstimatorConfig *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_minTravelTimeSec = a3;
    v16->_fullEffectTimeSec = a4;
    v16->_minDistanceToDestinationM = a5;
    v16->_minReliableSpeedM_Sec = a6;
    v16->_maxLocationUncertaintyM = a7;
    v16->_etaPenaltyTriggerRatio = a8;
    v16->_etaPenaltyRatioRange = a9;
    v18 = v16;
  }

  return v17;
}

@end