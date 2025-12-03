@interface PCObservedSpeedETAEstimatorConfig
- (PCObservedSpeedETAEstimatorConfig)initWithMinTravelTimeSec:(double)sec fullEffectTimeSec:(double)timeSec minDistanceToDestinationM:(double)m minReliableSpeedM_Sec:(double)m_Sec maxLocationUncertaintyM:(double)uncertaintyM etaPenaltyTriggerRatio:(double)ratio etaPenaltyRatioRange:(double)range;
@end

@implementation PCObservedSpeedETAEstimatorConfig

- (PCObservedSpeedETAEstimatorConfig)initWithMinTravelTimeSec:(double)sec fullEffectTimeSec:(double)timeSec minDistanceToDestinationM:(double)m minReliableSpeedM_Sec:(double)m_Sec maxLocationUncertaintyM:(double)uncertaintyM etaPenaltyTriggerRatio:(double)ratio etaPenaltyRatioRange:(double)range
{
  v20.receiver = self;
  v20.super_class = PCObservedSpeedETAEstimatorConfig;
  v16 = [(PCObservedSpeedETAEstimatorConfig *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_minTravelTimeSec = sec;
    v16->_fullEffectTimeSec = timeSec;
    v16->_minDistanceToDestinationM = m;
    v16->_minReliableSpeedM_Sec = m_Sec;
    v16->_maxLocationUncertaintyM = uncertaintyM;
    v16->_etaPenaltyTriggerRatio = ratio;
    v16->_etaPenaltyRatioRange = range;
    v18 = v16;
  }

  return v17;
}

@end