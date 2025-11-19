@interface WFWifiTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFWifiTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v3 = [a1 contextStoreKeyPathForCurrentState];
  v4 = [a1 selection];
  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_21;
    }

    if ([a1 onConnect] && objc_msgSend(a1, "onDisconnect"))
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value != nil OR SELF.%@.value == nil", v3, v3];
      v1 = LABEL_15:;
      goto LABEL_21;
    }

    if ([a1 onConnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value != nil", v3, v22];
      goto LABEL_15;
    }

    if ([a1 onDisconnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value == nil", v3, v22];
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if ([a1 onConnect] && objc_msgSend(a1, "onDisconnect"))
  {
    v5 = MEMORY[0x277CFE360];
    v6 = MEMORY[0x277CCAC30];
    v7 = [a1 selectedNetworks];
    v8 = [a1 selectedNetworks];
    v9 = [v6 predicateWithFormat:@"SELF.%@.value IN %@ OR NOT (SELF.%@.value in %@)", v3, v7, v3, v8];
    v10 = MEMORY[0x277CCAC30];
    v11 = [a1 selectedNetworks];
    v12 = [a1 selectedNetworks];
    v13 = [v10 predicateWithFormat:@"NOT (SELF.value IN %@) OR SELF.value IN %@", v3, v11, v3, v12];
    v1 = [v5 predicateForKeyPath:v3 withPredicate:v9 withPredicateForPreviousState:v13 withMinimumDurationInPreviousState:0.0];

LABEL_19:
    goto LABEL_21;
  }

  if ([a1 onConnect])
  {
    v14 = MEMORY[0x277CFE360];
    v15 = MEMORY[0x277CCAC30];
    v7 = [a1 selectedNetworks];
    v8 = [v15 predicateWithFormat:@"SELF.%@.value IN %@", v3, v7];
    v16 = MEMORY[0x277CCAC30];
    v17 = [a1 selectedNetworks];
    [v16 predicateWithFormat:@"NOT (SELF.value IN %@)", v3, v17];
    v20 = LABEL_18:;
    v1 = [v14 predicateForKeyPath:v3 withPredicate:v8 withPredicateForPreviousState:v20 withMinimumDurationInPreviousState:0.0];

    goto LABEL_19;
  }

  if ([a1 onDisconnect])
  {
    v14 = MEMORY[0x277CFE360];
    v18 = MEMORY[0x277CCAC30];
    v7 = [a1 selectedNetworks];
    v8 = [v18 predicateWithFormat:@"NOT (SELF.%@.value IN %@)", v3, v7];
    v19 = MEMORY[0x277CCAC30];
    v17 = [a1 selectedNetworks];
    [v19 predicateWithFormat:@"SELF.value IN %@", v3, v17];
    goto LABEL_18;
  }

LABEL_20:
  v1 = 0;
LABEL_21:

  return v1;
}

@end