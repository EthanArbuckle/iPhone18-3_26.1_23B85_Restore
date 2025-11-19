@interface SBAdvanceDateOverrideTestRecipe
- (void)advanceOverrideDateByAmount:(int64_t)a3;
- (void)handleVolumeDecrease;
@end

@implementation SBAdvanceDateOverrideTestRecipe

- (void)advanceOverrideDateByAmount:(int64_t)a3
{
  v7 = [MEMORY[0x277D65E40] sharedInstance];
  v4 = [v7 overrideDate];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
  }

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingUnit:16 value:a3 toDate:v4 options:0];

  [v7 setOverrideDate:v6];
}

- (void)handleVolumeDecrease
{
  v2 = [MEMORY[0x277D65E40] sharedInstance];
  [v2 setOverrideDate:0];
}

@end