@interface WFWifiTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFWifiTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  selection = [self selection];
  if (selection != 1)
  {
    if (selection)
    {
      goto LABEL_21;
    }

    if ([self onConnect] && objc_msgSend(self, "onDisconnect"))
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value != nil OR SELF.%@.value == nil", contextStoreKeyPathForCurrentState, contextStoreKeyPathForCurrentState];
      v1 = LABEL_15:;
      goto LABEL_21;
    }

    if ([self onConnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value != nil", contextStoreKeyPathForCurrentState, v22];
      goto LABEL_15;
    }

    if ([self onDisconnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value == nil", contextStoreKeyPathForCurrentState, v22];
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if ([self onConnect] && objc_msgSend(self, "onDisconnect"))
  {
    v5 = MEMORY[0x277CFE360];
    v6 = MEMORY[0x277CCAC30];
    selectedNetworks = [self selectedNetworks];
    selectedNetworks2 = [self selectedNetworks];
    v9 = [v6 predicateWithFormat:@"SELF.%@.value IN %@ OR NOT (SELF.%@.value in %@)", contextStoreKeyPathForCurrentState, selectedNetworks, contextStoreKeyPathForCurrentState, selectedNetworks2];
    v10 = MEMORY[0x277CCAC30];
    selectedNetworks3 = [self selectedNetworks];
    selectedNetworks4 = [self selectedNetworks];
    v13 = [v10 predicateWithFormat:@"NOT (SELF.value IN %@) OR SELF.value IN %@", contextStoreKeyPathForCurrentState, selectedNetworks3, contextStoreKeyPathForCurrentState, selectedNetworks4];
    v1 = [v5 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v9 withPredicateForPreviousState:v13 withMinimumDurationInPreviousState:0.0];

LABEL_19:
    goto LABEL_21;
  }

  if ([self onConnect])
  {
    v14 = MEMORY[0x277CFE360];
    v15 = MEMORY[0x277CCAC30];
    selectedNetworks = [self selectedNetworks];
    selectedNetworks2 = [v15 predicateWithFormat:@"SELF.%@.value IN %@", contextStoreKeyPathForCurrentState, selectedNetworks];
    v16 = MEMORY[0x277CCAC30];
    selectedNetworks5 = [self selectedNetworks];
    [v16 predicateWithFormat:@"NOT (SELF.value IN %@)", contextStoreKeyPathForCurrentState, selectedNetworks5];
    v20 = LABEL_18:;
    v1 = [v14 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:selectedNetworks2 withPredicateForPreviousState:v20 withMinimumDurationInPreviousState:0.0];

    goto LABEL_19;
  }

  if ([self onDisconnect])
  {
    v14 = MEMORY[0x277CFE360];
    v18 = MEMORY[0x277CCAC30];
    selectedNetworks = [self selectedNetworks];
    selectedNetworks2 = [v18 predicateWithFormat:@"NOT (SELF.%@.value IN %@)", contextStoreKeyPathForCurrentState, selectedNetworks];
    v19 = MEMORY[0x277CCAC30];
    selectedNetworks5 = [self selectedNetworks];
    [v19 predicateWithFormat:@"SELF.value IN %@", contextStoreKeyPathForCurrentState, selectedNetworks5];
    goto LABEL_18;
  }

LABEL_20:
  v1 = 0;
LABEL_21:

  return v1;
}

@end