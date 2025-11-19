@interface NSDateComponents(WFAdditions)
+ (id)wf_nowDateComponents;
@end

@implementation NSDateComponents(WFAdditions)

+ (id)wf_nowDateComponents
{
  v0 = [MEMORY[0x277CBEA80] currentCalendar];
  v1 = [MEMORY[0x277CBEAA8] date];
  v2 = [v0 components:3145852 fromDate:v1];

  return v2;
}

@end