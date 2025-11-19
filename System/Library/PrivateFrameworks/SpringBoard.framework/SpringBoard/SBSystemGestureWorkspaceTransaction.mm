@interface SBSystemGestureWorkspaceTransaction
- (SBSystemGestureWorkspaceTransaction)initWithTransitionRequest:(id)a3;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBSystemGestureWorkspaceTransaction

- (SBSystemGestureWorkspaceTransaction)initWithTransitionRequest:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBSystemGestureWorkspaceTransaction;
  v3 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:a3];
  v4 = v3;
  if (v3)
  {
    v3->_completionType = 1;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 initWithFormat:@"%@-%p", v7, v4];
    suppressionReason = v4->_suppressionReason;
    v4->_suppressionReason = v8;
  }

  return v4;
}

- (void)_begin
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemGestureWorkspaceTransaction.m" lineNumber:53 description:@"Trying to _begin but I'm not tracking a system gesture"];
}

- (void)_didComplete
{
  v3 = +[SBKeyboardSuppressionManager sharedInstance];
  [v3 stopSuppressingKeyboardWithReason:self->_suppressionReason];

  v4.receiver = self;
  v4.super_class = SBSystemGestureWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
}

@end