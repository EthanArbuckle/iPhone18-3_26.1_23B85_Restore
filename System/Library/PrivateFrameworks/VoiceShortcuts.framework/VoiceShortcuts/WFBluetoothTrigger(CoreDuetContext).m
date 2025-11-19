@interface WFBluetoothTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFBluetoothTrigger(CoreDuetContext)

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
      v5 = MEMORY[0x277CFE360];
      v16 = v3;
LABEL_9:
      [v5 predicateForKeyPath:v3 withFormat:@"SELF.%@.value != nil OR SELF.%@.value == nil", v3, v16];
      v1 = LABEL_16:;
      goto LABEL_21;
    }

    if ([a1 onConnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value != nil", v3, v16];
      goto LABEL_16;
    }

    if ([a1 onDisconnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:v3 withFormat:@"SELF.%@.value == nil", v3, v16];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if ([a1 onConnect] && objc_msgSend(a1, "onDisconnect"))
  {
    v5 = MEMORY[0x277CFE360];
    goto LABEL_9;
  }

  if ([a1 onConnect])
  {
    v6 = MEMORY[0x277CFE360];
    v7 = MEMORY[0x277CCAC30];
    v8 = [a1 selectedDevices];
    v9 = [v7 predicateWithFormat:@"SELF.%@.value IN %@", v3, v8];
    v10 = MEMORY[0x277CCAC30];
    v11 = [a1 selectedDevices];
    [v10 predicateWithFormat:@"NOT (SELF.value IN %@)", v3, v11];
    v14 = LABEL_19:;
    v1 = [v6 predicateForKeyPath:v3 withPredicate:v9 withPredicateForPreviousState:v14 withMinimumDurationInPreviousState:0.0];

    goto LABEL_21;
  }

  if ([a1 onDisconnect])
  {
    v6 = MEMORY[0x277CFE360];
    v12 = MEMORY[0x277CCAC30];
    v8 = [a1 selectedDevices];
    v9 = [v12 predicateWithFormat:@"NOT (SELF.%@.value IN %@)", v3, v8];
    v13 = MEMORY[0x277CCAC30];
    v11 = [a1 selectedDevices];
    [v13 predicateWithFormat:@"SELF.value IN %@", v3, v11];
    goto LABEL_19;
  }

LABEL_20:
  v1 = 0;
LABEL_21:

  return v1;
}

@end