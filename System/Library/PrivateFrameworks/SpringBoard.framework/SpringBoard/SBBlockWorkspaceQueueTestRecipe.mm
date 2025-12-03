@interface SBBlockWorkspaceQueueTestRecipe
- (void)blockTimerDidFire:(id)fire;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBBlockWorkspaceQueueTestRecipe

- (void)handleVolumeIncrease
{
  v6 = [objc_alloc(MEMORY[0x277D0AB28]) initWithReason:@"Test Recipe"];
  queueLock = [(SBBlockWorkspaceQueueTestRecipe *)self queueLock];
  [queueLock relinquish];

  [(SBBlockWorkspaceQueueTestRecipe *)self setQueueLock:v6];
  blockTimer = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [blockTimer invalidate];

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_blockTimerDidFire_ selector:0 userInfo:0 repeats:2.0];
  [(SBBlockWorkspaceQueueTestRecipe *)self setBlockTimer:v5];
}

- (void)blockTimerDidFire:(id)fire
{
  queueLock = [(SBBlockWorkspaceQueueTestRecipe *)self queueLock];
  [queueLock relinquish];

  [(SBBlockWorkspaceQueueTestRecipe *)self setQueueLock:0];
  blockTimer = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [blockTimer invalidate];

  [(SBBlockWorkspaceQueueTestRecipe *)self setBlockTimer:0];
}

- (void)handleVolumeDecrease
{
  blockTimer = [(SBBlockWorkspaceQueueTestRecipe *)self blockTimer];
  [blockTimer fire];
}

@end