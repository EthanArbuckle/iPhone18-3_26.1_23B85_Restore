@interface DateRounder
+ (id)roundToDayResolutionOnly:(id)only;
@end

@implementation DateRounder

+ (id)roundToDayResolutionOnly:(id)only
{
  v3 = MEMORY[0x277CBEA80];
  onlyCopy = only;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:1564 fromDate:onlyCopy];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar2 dateFromComponents:v6];

  return v8;
}

@end