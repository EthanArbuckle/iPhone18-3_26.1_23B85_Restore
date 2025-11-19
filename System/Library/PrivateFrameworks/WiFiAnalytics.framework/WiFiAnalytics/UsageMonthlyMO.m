@interface UsageMonthlyMO
+ (id)jumpBackOneSpan;
@end

@implementation UsageMonthlyMO

+ (id)jumpBackOneSpan
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = +[UsageHelper binnedDate:as:](UsageHelper, "binnedDate:as:", v3, [a1 timeSpan]);

  v5 = [v4 lowerEdge];
  v6 = [v5 dateByAddingTimeInterval:-90000.0];

  return v6;
}

@end