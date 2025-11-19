@interface SBBlockWorkspaceQueueTestRecipe
- (void)blockTimerDidFire:(id)a3;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBBlockWorkspaceQueueTestRecipe

- (void)handleVolumeIncrease
{
  v6 = [objc_alloc(MEMORY[0x277D0AB28]) initWithReason:@"Test Recipe"];
  v3 = [(SBBlockWorkspaceQueueTestRecipe *)self queueLock];
  [v3 relinquish];

  [(SBBlockWorkspaceQueueTestRecipe *)self setQueueLock:v6];
  v4 = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [v4 invalidate];

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_blockTimerDidFire_ selector:0 userInfo:0 repeats:2.0];
  [(SBBlockWorkspaceQueueTestRecipe *)self setBlockTimer:v5];
}

- (void)blockTimerDidFire:(id)a3
{
  v4 = [(SBBlockWorkspaceQueueTestRecipe *)self queueLock];
  [v4 relinquish];

  [(SBBlockWorkspaceQueueTestRecipe *)self setQueueLock:0];
  v5 = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [v5 invalidate];

  [(SBBlockWorkspaceQueueTestRecipe *)self setBlockTimer:0];
}

- (void)handleVolumeDecrease
{
  v2 = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [v2 fire];
}

@end