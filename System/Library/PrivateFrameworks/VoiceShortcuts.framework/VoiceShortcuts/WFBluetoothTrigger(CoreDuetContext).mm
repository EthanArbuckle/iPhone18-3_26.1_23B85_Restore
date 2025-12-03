@interface WFBluetoothTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFBluetoothTrigger(CoreDuetContext)

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
      v5 = MEMORY[0x277CFE360];
      v16 = contextStoreKeyPathForCurrentState;
LABEL_9:
      [v5 predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value != nil OR SELF.%@.value == nil", contextStoreKeyPathForCurrentState, v16];
      v1 = LABEL_16:;
      goto LABEL_21;
    }

    if ([self onConnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value != nil", contextStoreKeyPathForCurrentState, v16];
      goto LABEL_16;
    }

    if ([self onDisconnect])
    {
      [MEMORY[0x277CFE360] predicateForKeyPath:contextStoreKeyPathForCurrentState withFormat:@"SELF.%@.value == nil", contextStoreKeyPathForCurrentState, v16];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if ([self onConnect] && objc_msgSend(self, "onDisconnect"))
  {
    v5 = MEMORY[0x277CFE360];
    goto LABEL_9;
  }

  if ([self onConnect])
  {
    v6 = MEMORY[0x277CFE360];
    v7 = MEMORY[0x277CCAC30];
    selectedDevices = [self selectedDevices];
    v9 = [v7 predicateWithFormat:@"SELF.%@.value IN %@", contextStoreKeyPathForCurrentState, selectedDevices];
    v10 = MEMORY[0x277CCAC30];
    selectedDevices2 = [self selectedDevices];
    [v10 predicateWithFormat:@"NOT (SELF.value IN %@)", contextStoreKeyPathForCurrentState, selectedDevices2];
    v14 = LABEL_19:;
    v1 = [v6 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v9 withPredicateForPreviousState:v14 withMinimumDurationInPreviousState:0.0];

    goto LABEL_21;
  }

  if ([self onDisconnect])
  {
    v6 = MEMORY[0x277CFE360];
    v12 = MEMORY[0x277CCAC30];
    selectedDevices = [self selectedDevices];
    v9 = [v12 predicateWithFormat:@"NOT (SELF.%@.value IN %@)", contextStoreKeyPathForCurrentState, selectedDevices];
    v13 = MEMORY[0x277CCAC30];
    selectedDevices2 = [self selectedDevices];
    [v13 predicateWithFormat:@"SELF.value IN %@", contextStoreKeyPathForCurrentState, selectedDevices2];
    goto LABEL_19;
  }

LABEL_20:
  v1 = 0;
LABEL_21:

  return v1;
}

@end