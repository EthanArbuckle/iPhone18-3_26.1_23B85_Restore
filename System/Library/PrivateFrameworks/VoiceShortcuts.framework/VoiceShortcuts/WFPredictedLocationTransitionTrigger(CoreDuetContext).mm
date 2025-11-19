@interface WFPredictedLocationTransitionTrigger(CoreDuetContext)
- (double)timeIntervalLowerBound;
- (double)timeIntervalUpperBound;
- (id)contextStorePredicate;
@end

@implementation WFPredictedLocationTransitionTrigger(CoreDuetContext)

- (double)timeIntervalLowerBound
{
  v1 = [a1 minutesBefore];
  if ((v1 - 1) > 4)
  {
    return -60.0;
  }

  else
  {
    return dbl_231166910[v1 - 1];
  }
}

- (double)timeIntervalUpperBound
{
  v1 = [a1 minutesBefore];
  if ((v1 - 1) > 4)
  {
    return 60.0;
  }

  else
  {
    return dbl_2311668E8[v1 - 1];
  }
}

- (id)contextStorePredicate
{
  v2 = [a1 destinationType] == 1;
  v3 = [a1 contextStoreKeyPathForCurrentState];
  v4 = MEMORY[0x277CFE360];
  v5 = [MEMORY[0x277CFE338] locationOfInterestTypeKey];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v7 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v8 = MEMORY[0x277CCABB0];
  [a1 timeIntervalUpperBound];
  v9 = [v8 numberWithDouble:?];
  v10 = [MEMORY[0x277CFE338] transitionWithinTimeIntervalKey];
  v11 = MEMORY[0x277CCABB0];
  [a1 timeIntervalLowerBound];
  v12 = [v11 numberWithDouble:?];
  v13 = [v4 predicateForKeyPath:v3 withFormat:@"SUBQUERY(SELF.%@.value, $prediction, $prediction.%K = %@ AND $prediction.%K <= %@ AND $prediction.%K > %@).@count > 0", v3, v5, v6, v7, v9, v10, v12];

  return v13;
}

@end