@interface WFAppInBackgroundTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFAppInBackgroundTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  selectedBundleIdentifiers = [self selectedBundleIdentifiers];
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  v4 = MEMORY[0x277CFE360];
  v5 = MEMORY[0x277CCAC30];
  appUsageBundleID = [MEMORY[0x277CFE338] appUsageBundleID];
  v7 = [v5 predicateWithFormat:@"SUBQUERY(SELF.%@.value, $values, $values.%K  IN %@).@count == 0", contextStoreKeyPathForCurrentState, appUsageBundleID, selectedBundleIdentifiers];
  v8 = MEMORY[0x277CCAC30];
  appUsageBundleID2 = [MEMORY[0x277CFE338] appUsageBundleID];
  v10 = [v8 predicateWithFormat:@"SUBQUERY(SELF.value, $values, $values.%K  IN %@).@count > 0", appUsageBundleID2, selectedBundleIdentifiers];
  v11 = [v4 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v7 withPredicateForPreviousState:v10 withMinimumDurationInPreviousState:0.0];

  return v11;
}

@end