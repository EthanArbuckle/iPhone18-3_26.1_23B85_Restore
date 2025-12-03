@interface SBAlertItemTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBAlertItemTestRecipe

- (void)handleVolumeIncrease
{
  ++handleVolumeIncrease_count;
  v3 = [SBTestAlertItem alertItemWithShowInLockScreen:1 forcesModal:1 superModal:0];
  handleVolumeIncrease_count = [MEMORY[0x277CCACA8] stringWithFormat:@"Modal %d", handleVolumeIncrease_count];
  [v3 setTitle:handleVolumeIncrease_count];

  [v3 setReappearsAfterLock:1];
  [v3 setReappearsAfterUnlock:1];
  [MEMORY[0x277D67938] activateAlertItem:v3];
}

- (void)handleVolumeDecrease
{
  ++handleVolumeDecrease_count;
  v3 = [SBTestAlertItem alertItemWithShowInLockScreen:1 forcesModal:0 superModal:0];
  [v3 setReappearsAfterLock:1];
  [v3 setReappearsAfterUnlock:1];
  handleVolumeDecrease_count = [MEMORY[0x277CCACA8] stringWithFormat:@"Normal %d", handleVolumeDecrease_count];
  [v3 setTitle:handleVolumeDecrease_count];

  [MEMORY[0x277D67938] activateAlertItem:v3];
}

@end