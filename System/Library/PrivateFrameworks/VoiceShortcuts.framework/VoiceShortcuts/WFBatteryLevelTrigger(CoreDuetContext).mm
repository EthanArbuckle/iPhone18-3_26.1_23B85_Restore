@interface WFBatteryLevelTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFBatteryLevelTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v3 = [a1 contextStoreKeyPathForCurrentState];
  v4 = [a1 selection];
  if (v4 == 2)
  {
    v9 = MEMORY[0x277CFE360];
    v13 = MEMORY[0x277CCAC30];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "level")}];
    v8 = [v13 predicateWithFormat:@"SELF.%@.value < %@", v3, v7];
    v14 = MEMORY[0x277CCAC30];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "level")}];
    [v14 predicateWithFormat:@"SELF.value >= %@", v12];
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v9 = MEMORY[0x277CFE360];
    v10 = MEMORY[0x277CCAC30];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "level")}];
    v8 = [v10 predicateWithFormat:@"SELF.%@.value > %@", v3, v7];
    v11 = MEMORY[0x277CCAC30];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "level")}];
    [v11 predicateWithFormat:@"SELF.value <= %@", v12];
    v15 = LABEL_7:;
    v1 = [v9 predicateForKeyPath:v3 withPredicate:v8 withPredicateForPreviousState:v15 withMinimumDurationInPreviousState:0.0];

    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_9;
  }

  v5 = MEMORY[0x277CFE360];
  v6 = MEMORY[0x277CCAC30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "level")}];
  v8 = [v6 predicateWithFormat:@"SELF.%@.value == %@", v3, v7];
  v1 = [v5 predicateForKeyPath:v3 withPredicate:v8];
LABEL_8:

LABEL_9:

  return v1;
}

@end