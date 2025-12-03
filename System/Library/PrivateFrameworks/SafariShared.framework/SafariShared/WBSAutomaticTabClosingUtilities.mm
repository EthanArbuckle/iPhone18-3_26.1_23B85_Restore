@interface WBSAutomaticTabClosingUtilities
+ (BOOL)shouldCloseTabsAutomaticallyWhenEnteringForeground;
+ (BOOL)userHasPreferenceForAutomaticTabClosingInterval;
+ (unint64_t)automaticTabClosingInterval;
+ (void)clearMostDistantLastViewedTime;
+ (void)resetAutomaticTabClosingIntervalPreference;
+ (void)setAutomaticTabClosingInterval:(unint64_t)interval;
+ (void)setMostDistantLastViewedTime:(double)time;
@end

@implementation WBSAutomaticTabClosingUtilities

+ (unint64_t)automaticTabClosingInterval
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults integerForKey:@"CloseTabsAutomatically"];

  return v3;
}

+ (BOOL)shouldCloseTabsAutomaticallyWhenEnteringForeground
{
  automaticTabClosingInterval = [self automaticTabClosingInterval];
  v3 = automaticTabClosingInterval;
  if (automaticTabClosingInterval < 5 && ((0x1Du >> automaticTabClosingInterval) & 1) != 0)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults doubleForKey:@"mostDistantLastViewedTime"];
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
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults objectForKey:@"CloseTabsAutomatically"];
  v4 = v3 != 0;

  return v4;
}

+ (void)setAutomaticTabClosingInterval:(unint64_t)interval
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setInteger:interval forKey:@"CloseTabsAutomatically"];
}

+ (void)resetAutomaticTabClosingIntervalPreference
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObjectForKey:@"CloseTabsAutomatically"];
}

+ (void)setMostDistantLastViewedTime:(double)time
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults floatForKey:@"mostDistantLastViewedTime"];
  v5 = *&v4;
  if (*&v4 <= 0.0 || v5 > time)
  {
    *&v4 = time;
    [safari_browserDefaults setFloat:@"mostDistantLastViewedTime" forKey:{v4, v5}];
  }
}

+ (void)clearMostDistantLastViewedTime
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults removeObjectForKey:@"mostDistantLastViewedTime"];
}

@end