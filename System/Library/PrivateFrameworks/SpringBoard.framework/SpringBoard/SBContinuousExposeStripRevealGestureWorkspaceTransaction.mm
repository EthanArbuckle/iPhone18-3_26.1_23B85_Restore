@interface SBContinuousExposeStripRevealGestureWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (void)handleTransitionRequestForGestureComplete:(id)complete fromGestureManager:(id)manager;
@end

@implementation SBContinuousExposeStripRevealGestureWorkspaceTransaction

- (void)handleTransitionRequestForGestureComplete:(id)complete fromGestureManager:(id)manager
{
  self->_completedGestureWithTransitionRequest = 1;
  v4.receiver = self;
  v4.super_class = SBContinuousExposeStripRevealGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v4 handleTransitionRequestForGestureComplete:complete fromGestureManager:manager];
}

- (BOOL)_canBeInterrupted
{
  if (!self->_completedGestureWithTransitionRequest)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBContinuousExposeStripRevealGestureWorkspaceTransaction;
  return [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _canBeInterrupted];
}

@end