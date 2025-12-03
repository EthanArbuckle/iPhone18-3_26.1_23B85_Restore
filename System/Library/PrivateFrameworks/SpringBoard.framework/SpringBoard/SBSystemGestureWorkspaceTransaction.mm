@interface SBSystemGestureWorkspaceTransaction
- (SBSystemGestureWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBSystemGestureWorkspaceTransaction

- (SBSystemGestureWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v11.receiver = self;
  v11.super_class = SBSystemGestureWorkspaceTransaction;
  v3 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:request];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSystemGestureWorkspaceTransaction.m" lineNumber:53 description:@"Trying to _begin but I'm not tracking a system gesture"];
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