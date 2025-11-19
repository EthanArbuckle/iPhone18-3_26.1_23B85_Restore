@interface WFLocationTrigger(CoreDuetContext)
- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:;
@end

@implementation WFLocationTrigger(CoreDuetContext)

- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:
{
  v2 = [a1 startTime];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [a1 endTime];

  if (!v4)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [a1 isDateWithinTimeRange:v5];

  return v6;
}

@end