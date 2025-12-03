@interface WFLocationTrigger(CoreDuetContext)
- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:;
@end

@implementation WFLocationTrigger(CoreDuetContext)

- (uint64_t)shouldFireTriggerWithEventInfo:()CoreDuetContext error:
{
  startTime = [self startTime];
  if (!startTime)
  {
    return 1;
  }

  v3 = startTime;
  endTime = [self endTime];

  if (!endTime)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [self isDateWithinTimeRange:v5];

  return v6;
}

@end