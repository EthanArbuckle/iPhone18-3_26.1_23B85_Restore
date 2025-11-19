@interface WFWorkoutTrigger(CoreDuetContext)
- (id)contextStorePredicate;
@end

@implementation WFWorkoutTrigger(CoreDuetContext)

- (id)contextStorePredicate
{
  v2 = objc_opt_new();
  if ([a1 onStart])
  {
    v3 = (softLink_HKWorkoutSessionStateName)(2);
    [v2 addObject:v3];
  }

  if ([a1 onEnd])
  {
    v4 = (softLink_HKWorkoutSessionStateName)(3);
    [v2 addObject:v4];
  }

  v5 = [a1 selection];
  if (v5 == 1)
  {
    v6 = [a1 selectedWorkoutTypes];
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = [(objc_class *)getHKWorkoutClass() _allWorkoutActivityTypes];
LABEL_9:
    v7 = v6;
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