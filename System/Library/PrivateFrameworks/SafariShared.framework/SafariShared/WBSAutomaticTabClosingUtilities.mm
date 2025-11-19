@interface WBSAutomaticTabClosingUtilities
+ (BOOL)shouldCloseTabsAutomaticallyWhenEnteringForeground;
+ (BOOL)userHasPreferenceForAutomaticTabClosingInterval;
+ (unint64_t)automaticTabClosingInterval;
+ (void)clearMostDistantLastViewedTime;
+ (void)resetAutomaticTabClosingIntervalPreference;
+ (void)setAutomaticTabClosingInterval:(unint64_t)a3;
+ (void)setMostDistantLastViewedTime:(double)a3;
@end

@implementation WBSAutomaticTabClosingUtilities

+ (unint64_t)automaticTabClosingInterval
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 integerForKey:@"CloseTabsAutomatically"];

  return v3;
}

+ (BOOL)shouldCloseTabsAutomaticallyWhenEnteringForeground
{
  v2 = [a1 automaticTabClosingInterval];
  v3 = v2;
  if (v2 < 5 && ((0x1Du >> v2) & 1) != 0)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v4 doubleForKey:@"mostDistantLastViewedTime"];
  v6 = v5;

  if (v6 <= 0.0)
  {
    return 0;
  }

  WBSAutomaticTabClosingIntervalTimeInterval(v3);
  v8 = v6 + v7;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return v9 >= v8;
}

+ (BOOL)userHasPreferenceForAutomaticTabClosingInterval
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 objectForKey:@"CloseTabsAutomatically"];
  v4 = v3 != 0;

  return v4;
}

+ (void)setAutomaticTabClosingInterval:(unint64_t)a3
{
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v4 setInteger:a3 forKey:@"CloseTabsAutomatically"];
}

+ (void)resetAutomaticTabClosingIntervalPreference
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v2 removeObjectForKey:@"CloseTabsAutomatically"];
}

+ (void)setMostDistantLastViewedTime:(double)a3
{
  v7 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v7 floatForKey:@"mostDistantLastViewedTime"];
  v5 = *&v4;
  if (*&v4 <= 0.0 || v5 > a3)
  {
    *&v4 = a3;
    [v7 setFloat:@"mostDistantLastViewedTime" forKey:{v4, v5}];
  }
}

+ (void)clearMostDistantLastViewedTime
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v2 removeObjectForKey:@"mostDistantLastViewedTime"];
}

@end