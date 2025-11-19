@interface SYDefaults
+ (BOOL)shouldDisableQuickNoteTemporarily;
+ (int64_t)indicatorCoverage;
+ (void)setIndicatorCoverage:(int64_t)a3;
@end

@implementation SYDefaults

+ (BOOL)shouldDisableQuickNoteTemporarily
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
  v3 = [v2 objectForKey:@"shouldDisableTemporarily"];

  if (v3)
  {
    LOBYTE(v3) = [v2 BOOLForKey:@"shouldDisableTemporarily"];
  }

  return v3;
}

+ (int64_t)indicatorCoverage
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
  v3 = [v2 objectForKey:@"indicatorCoverage"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"indicatorCoverage"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (void)setIndicatorCoverage:(int64_t)a3
{
  if (a3 <= 2)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Synapse"];
    [v5 setInteger:a3 forKey:@"indicatorCoverage"];
  }
}

@end