@interface DateRounder
+ (id)roundToDayResolutionOnly:(id)a3;
@end

@implementation DateRounder

+ (id)roundToDayResolutionOnly:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:1564 fromDate:v4];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

@end