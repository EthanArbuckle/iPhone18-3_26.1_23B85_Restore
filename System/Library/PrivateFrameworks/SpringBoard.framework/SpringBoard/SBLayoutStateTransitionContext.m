@interface SBLayoutStateTransitionContext
- (BOOL)isInterrupted;
- (SBLayoutStateTransitionContext)init;
- (SBLayoutStateTransitionContext)initWithWorkspaceTransaction:(id)a3;
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
  v3 = [(SBLayoutStateTransitionContext *)self workspaceTransaction];
  if ([v3 isInterrupted])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SBLayoutStateTransitionContext *)self error];
    v4 = v5 != 0;
  }

  return v4;
}

- (SBLayoutStateTransitionContext)initWithWorkspaceTransaction:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBLayoutStateTransitionContext;
  v5 = [(SBLayoutStateTransitionContext *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_workspaceTransaction, v4);
    v7 = [v4 transitionRequest];
    v8 = [v7 applicationContext];

    v9 = [v8 previousLayoutState];
    fromLayoutState = v6->_fromLayoutState;
    v6->_fromLayoutState = v9;

    v11 = [v8 layoutState];
    toLayoutState = v6->_toLayoutState;
    v6->_toLayoutState = v11;

    objc_storeWeak(&v6->_applicationTransitionContext, v8);
    v6->_animationsDisabled = [v8 animationDisabled];
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