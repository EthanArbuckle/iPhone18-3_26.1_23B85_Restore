@interface SBDefaultLaunchSnapshotTestRecipe
- (void)handleVolumeIncrease;
@end

@implementation SBDefaultLaunchSnapshotTestRecipe

- (void)handleVolumeIncrease
{
  if (!self->_alertItem)
  {
    v8[7] = v2;
    v8[8] = v3;
    v5 = [SBGenerateLaunchSnapshotsAlertItem alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SBDefaultLaunchSnapshotTestRecipe_handleVolumeIncrease__block_invoke;
    v8[3] = &unk_2783A8C18;
    v8[4] = self;
    v6 = [(SBGenerateLaunchSnapshotsAlertItem *)v5 initWithHandler:v8];
    alertItem = self->_alertItem;
    self->_alertItem = v6;

    [MEMORY[0x277D67938] activateAlertItem:self->_alertItem];
  }
}

void __57__SBDefaultLaunchSnapshotTestRecipe_handleVolumeIncrease__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

@end