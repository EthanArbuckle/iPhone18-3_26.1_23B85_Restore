@interface WFSleepTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFSleepTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  contextStoreKeyPathForCurrentState = [self contextStoreKeyPathForCurrentState];
  selection = [self selection];
  switch(selection)
  {
    case 2:
      v4 = MEMORY[0x277CFE360];
      v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%@.value.%K = %@ OR SELF.%@.value.%K = %@", contextStoreKeyPathForCurrentState, @"sleepScheduleState", &unk_2845ECF78, contextStoreKeyPathForCurrentState, @"sleepScheduleState", &unk_2845ECF78];
      [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.value.%K = %@ OR SELF.value.%K = %@", @"sleepScheduleState", &unk_2845ECF90, @"sleepScheduleState", &unk_2845ECFF0];
      goto LABEL_7;
    case 1:
      v4 = MEMORY[0x277CFE360];
      v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%@.value.%K = %@", contextStoreKeyPathForCurrentState, @"sleepModeState", &unk_2845ECF90];
      [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.value.%K != %@", @"sleepModeState", &unk_2845ECF90, v9, v10];
      goto LABEL_7;
    case 0:
      v4 = MEMORY[0x277CFE360];
      v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%@.value.%K = %@ AND SELF.%@.value.%K = %@", contextStoreKeyPathForCurrentState, @"sleepModeState", &unk_2845ECF78, contextStoreKeyPathForCurrentState, @"sleepModeState", &unk_2845ECF78];
      [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.value.%K != %@ AND SELF.value.%K != %@", @"sleepModeState", &unk_2845ECF78, @"sleepModeState", &unk_2845ECF90];
      v6 = LABEL_7:;
      v7 = [v4 predicateForKeyPath:contextStoreKeyPathForCurrentState withPredicate:v5 withPredicateForPreviousState:v6 withMinimumDurationInPreviousState:0.0];

      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end