@interface PCAlgorithmsConfig
- (PCAlgorithmsConfig)init;
- (id)description;
@end

@implementation PCAlgorithmsConfig

- (PCAlgorithmsConfig)init
{
  v6.receiver = self;
  v6.super_class = PCAlgorithmsConfig;
  v2 = [(PCAlgorithmsConfig *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PCVisitHistoryPredictorConfig);
    [(PCAlgorithmsConfig *)v2 setVisitHistoryConfig:v3];

    v4 = objc_alloc_init(PCDynamicsWeightingConfig);
    [(PCAlgorithmsConfig *)v2 setDynamicsConfig:v4];

    [(PCAlgorithmsConfig *)v2 setUseVisitHistoryPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUseCalendarVisitPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUseScheduledTravelPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUseMapsViewedPlacesPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUseHomeKitPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUseProbabilityModifier:1];
    [(PCAlgorithmsConfig *)v2 setUseProbabilityCuller:1];
    [(PCAlgorithmsConfig *)v2 setUseParkedCarLocationPredictor:1];
    [(PCAlgorithmsConfig *)v2 setUsePropagatedPosition:1];
  }

  return v2;
}

- (id)description
{
  v6 = MEMORY[0x1E696AEC0];
  v3 = [(PCAlgorithmsConfig *)self visitHistoryConfig];
  v4 = [v6 stringWithFormat:@"visitHistoryConfig, { %@ }, historyPredictor, %d, calendar, %d, scheduled travel, %d, maps viewed places, %d, parked car location, %d, homekit, %d, propagatedposition, %d, probability modifier, %d, probability culling, %d", v3, -[PCAlgorithmsConfig useVisitHistoryPredictor](self, "useVisitHistoryPredictor"), -[PCAlgorithmsConfig useCalendarVisitPredictor](self, "useCalendarVisitPredictor"), -[PCAlgorithmsConfig useScheduledTravelPredictor](self, "useScheduledTravelPredictor"), -[PCAlgorithmsConfig useMapsViewedPlacesPredictor](self, "useMapsViewedPlacesPredictor"), -[PCAlgorithmsConfig useParkedCarLocationPredictor](self, "useParkedCarLocationPredictor"), -[PCAlgorithmsConfig useHomeKitPredictor](self, "useHomeKitPredictor"), -[PCAlgorithmsConfig usePropagatedPosition](self, "usePropagatedPosition"), -[PCAlgorithmsConfig useProbabilityModifier](self, "useProbabilityModifier"), -[PCAlgorithmsConfig useProbabilityCuller](self, "useProbabilityCuller")];

  return v4;
}

@end