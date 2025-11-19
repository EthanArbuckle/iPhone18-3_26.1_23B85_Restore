@interface SBContinuousExposeStripRevealGestureWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4;
@end

@implementation SBContinuousExposeStripRevealGestureWorkspaceTransaction

- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4
{
  self->_completedGestureWithTransitionRequest = 1;
  v4.receiver = self;
  v4.super_class = SBContinuousExposeStripRevealGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v4 handleTransitionRequestForGestureComplete:a3 fromGestureManager:a4];
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