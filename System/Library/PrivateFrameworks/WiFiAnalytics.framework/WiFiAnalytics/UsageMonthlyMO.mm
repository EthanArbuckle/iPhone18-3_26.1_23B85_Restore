@interface UsageMonthlyMO
+ (id)jumpBackOneSpan;
@end

@implementation UsageMonthlyMO

+ (id)jumpBackOneSpan
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = +[UsageHelper binnedDate:as:](UsageHelper, "binnedDate:as:", date, [self timeSpan]);

  lowerEdge = [v4 lowerEdge];
  v6 = [lowerEdge dateByAddingTimeInterval:-90000.0];

  return v6;
}

@end