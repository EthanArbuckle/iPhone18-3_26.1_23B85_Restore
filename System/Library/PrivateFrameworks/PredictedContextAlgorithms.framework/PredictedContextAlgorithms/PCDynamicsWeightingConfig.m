@interface PCDynamicsWeightingConfig
- (PCDynamicsWeightingConfig)init;
@end

@implementation PCDynamicsWeightingConfig

- (PCDynamicsWeightingConfig)init
{
  v10.receiver = self;
  v10.super_class = PCDynamicsWeightingConfig;
  v2 = [(PCDynamicsWeightingConfig *)&v10 init];
  if (v2)
  {
    v3 = [[PCLocationDirectionEstimatorConfig alloc] initWithMinTravelTimeSec:600.0 fullEffectTimeSec:900.0 minDistanceToDestinationM:2000.0 minReliableDistanceM:1000.0 maxLocationUncertaintyM:200.0];
    v4 = [[PCLocationOnlyDirectionScaleFactorEstimator alloc] initWithConfig:v3];
    directionScaleFactorEstimator = v2->_directionScaleFactorEstimator;
    v2->_directionScaleFactorEstimator = v4;

    v6 = [[PCObservedSpeedETAEstimatorConfig alloc] initWithMinTravelTimeSec:600.0 fullEffectTimeSec:900.0 minDistanceToDestinationM:2000.0 minReliableSpeedM_Sec:2.0 maxLocationUncertaintyM:200.0 etaPenaltyTriggerRatio:1.5 etaPenaltyRatioRange:0.5];
    v7 = [[PCObservedSpeedETAEstimator alloc] initWithConfig:v6];
    etaScaleFactorEstimator = v2->_etaScaleFactorEstimator;
    v2->_etaScaleFactorEstimator = v7;
  }

  return v2;
}

@end