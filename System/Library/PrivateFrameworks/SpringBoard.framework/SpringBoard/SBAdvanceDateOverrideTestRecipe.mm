@interface SBAdvanceDateOverrideTestRecipe
- (void)advanceOverrideDateByAmount:(int64_t)amount;
- (void)handleVolumeDecrease;
@end

@implementation SBAdvanceDateOverrideTestRecipe

- (void)advanceOverrideDateByAmount:(int64_t)amount
{
  mEMORY[0x277D65E40] = [MEMORY[0x277D65E40] sharedInstance];
  overrideDate = [mEMORY[0x277D65E40] overrideDate];
  if (!overrideDate)
  {
    overrideDate = [MEMORY[0x277CBEAA8] date];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:16 value:amount toDate:overrideDate options:0];

  [mEMORY[0x277D65E40] setOverrideDate:v6];
}

- (void)handleVolumeDecrease
{
  mEMORY[0x277D65E40] = [MEMORY[0x277D65E40] sharedInstance];
  [mEMORY[0x277D65E40] setOverrideDate:0];
}

@end