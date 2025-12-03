@interface SBLayoutStateTransitionContext
- (BOOL)isInterrupted;
- (SBLayoutStateTransitionContext)init;
- (SBLayoutStateTransitionContext)initWithWorkspaceTransaction:(id)transaction;
- (SBWorkspaceApplicationSceneTransitionContext)applicationTransitionContext;
- (SBWorkspaceTransaction)workspaceTransaction;
@end

@implementation SBLayoutStateTransitionContext

- (SBWorkspaceApplicationSceneTransitionContext)applicationTransitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationTransitionContext);

  return WeakRetained;
}

- (SBWorkspaceTransaction)workspaceTransaction
{
  WeakRetained = objc_loadWeakRetained(&self->_workspaceTransaction);

  return WeakRetained;
}

- (BOOL)isInterrupted
{
  workspaceTransaction = [(SBLayoutStateTransitionContext *)self workspaceTransaction];
  if ([workspaceTransaction isInterrupted])
  {
    v4 = 1;
  }

  else
  {
    error = [(SBLayoutStateTransitionContext *)self error];
    v4 = error != 0;
  }

  return v4;
}

- (SBLayoutStateTransitionContext)initWithWorkspaceTransaction:(id)transaction
{
  transactionCopy = transaction;
  v14.receiver = self;
  v14.super_class = SBLayoutStateTransitionContext;
  v5 = [(SBLayoutStateTransitionContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workspaceTransaction, transactionCopy);
    transitionRequest = [transactionCopy transitionRequest];
    applicationContext = [transitionRequest applicationContext];

    previousLayoutState = [applicationContext previousLayoutState];
    fromLayoutState = v6->_fromLayoutState;
    v6->_fromLayoutState = previousLayoutState;

    layoutState = [applicationContext layoutState];
    toLayoutState = v6->_toLayoutState;
    v6->_toLayoutState = layoutState;

    objc_storeWeak(&v6->_applicationTransitionContext, applicationContext);
    v6->_animationsDisabled = [applicationContext animationDisabled];
  }

  return v6;
}

- (SBLayoutStateTransitionContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@ does not support initialization.", v6}];

  return [(SBLayoutStateTransitionContext *)self initWithWorkspaceTransaction:0];
}

@end