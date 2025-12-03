@interface WFPredictedLocationTransitionTrigger(CoreDuetContext)
- (double)timeIntervalLowerBound;
- (double)timeIntervalUpperBound;
- (id)contextStorePredicate;
@end

@implementation WFPredictedLocationTransitionTrigger(CoreDuetContext)

- (double)timeIntervalLowerBound
{
  minutesBefore = [self minutesBefore];
  if ((minutesBefore - 1) > 4)
  {
    return -60.0;
  }

  else
  {
    return dbl_231166910[minutesBefore - 1];
  }
}

- (double)timeIntervalUpperBound
{
  minutesBefore = [self minutesBefore];
  if ((minutesBefore - 1) > 4)
  {
    return 60.0;
  }

  else
  {
    return dbl_2311668E8[minutesBefore - 1];
  }
}

- (id)contextStorePredicate
{
  v2 = [self destinationType] == 1;
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v4 = MEMORY[0x277CFE360];
  locationOfInterestTypeKey = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  transitionWithinTimeIntervalKey = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v8 = MEMORY[0x277CCABB0];
  [self timeIntervalUpperBound];
  v9 = [v8 numberWithDouble:?];
  transitionWithinTimeIntervalKey2 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v11 = MEMORY[0x277CCABB0];
  [self timeIntervalLowerBound];
  v12 = [v11 numberWithDouble:?];
  v13 = [v4 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SUBQUERY(SELF.%@.value, $prediction, $prediction.%K = %@ AND $prediction.%K <= %@ AND $prediction.%K > %@).@count > 0", contextStoreKeyPathForCurrentState, locationOfInterestTypeKey, v6, transitionWithinTimeIntervalKey, v9, transitionWithinTimeIntervalKey2, v12];

  return v13;
}

@end