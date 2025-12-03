@interface WFWorkoutTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFWorkoutTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = objc_opt_new();
  if ([self onStart])
  {
    v3 = (softLink_HKWorkoutSessionStateName)(2);
    [v2 addObject:v3];
  }

  if ([self onEnd])
  {
    v4 = (softLink_HKWorkoutSessionStateName)(3);
    [v2 addObject:v4];
  }

  selection = [self selection];
  if (selection == 1)
  {
    selectedWorkoutTypes = [self selectedWorkoutTypes];
    goto LABEL_9;
  }

  if (!selection)
  {
    selectedWorkoutTypes = [(objc_class *)getHKWorkoutClass() _allWorkoutActivityTypes];
LABEL_9:
    v7 = selectedWorkoutTypes;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  v8 = MEMORY[0x277CFE380];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v10 = [v8 predicateForFirstPartyWorkoutMatchingTypes:v9 states:v2];

  return v10;
}

@end