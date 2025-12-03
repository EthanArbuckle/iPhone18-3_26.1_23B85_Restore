@interface NSDateComponents(WFAdditions)
+ (id)wf_nowDateComponents;
@end

@implementation NSDateComponents(WFAdditions)

+ (id)wf_nowDateComponents
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v2 = [currentCalendar components:3145852 fromDate:date];

  return v2;
}

@end