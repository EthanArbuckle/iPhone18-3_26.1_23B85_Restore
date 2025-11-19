@interface WFAppInBackgroundTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFAppInBackgroundTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = [a1 selectedBundleIdentifiers];
  v3 = [a1 contextStoreKeyPathForCurrentState];
  v4 = MEMORY[0x277CFE360];
  v5 = MEMORY[0x277CCAC30];
  v6 = [MEMORY[0x277CFE338] appUsageBundleID];
  v7 = [v5 predicateWithFormat:@"SUBQUERY(SELF.%@.value, $values, $values.%K  IN %@).@count == 0", v3, v6, v2];
  v8 = MEMORY[0x277CCAC30];
  v9 = [MEMORY[0x277CFE338] appUsageBundleID];
  v10 = [v8 predicateWithFormat:@"SUBQUERY(SELF.value, $values, $values.%K  IN %@).@count > 0", v9, v2];
  v11 = [v4 predicateForKeyPath:v3 withPredicate:v7 withPredicateForPreviousState:v10 withMinimumDurationInPreviousState:0.0];

  return v11;
}

@end