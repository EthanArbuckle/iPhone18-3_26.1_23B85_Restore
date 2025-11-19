@interface SBPIPSceneContentSceneUpdateWorkspaceTransaction
- (SBPIPSceneContentSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)a3 transitionRequest:(id)a4;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBPIPSceneContentSceneUpdateWorkspaceTransaction

- (SBPIPSceneContentSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)a3 transitionRequest:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBPIPSceneContentSceneUpdateWorkspaceTransaction;
  v8 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_applicationSceneEntity, a3);
  }

  return v9;
}

- (void)_begin
{
  v6.receiver = self;
  v6.super_class = SBPIPSceneContentSceneUpdateWorkspaceTransaction;
  [(SBPIPSceneContentSceneUpdateWorkspaceTransaction *)&v6 _begin];
  [(SBPIPSceneContentSceneUpdateWorkspaceTransaction *)self addMilestone:@"_SBPIPSceneContentSceneUpdateWorkspaceTransactionMilestoneSceneUpdate"];
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:self->_applicationSceneEntity transitionRequest:v3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBPIPSceneContentSceneUpdateWorkspaceTransaction__begin__block_invoke;
  v5[3] = &unk_2783A9398;
  v5[4] = self;
  [(SBApplicationSceneUpdateTransaction *)v4 setCompletionBlock:v5];
  [(SBPIPSceneContentSceneUpdateWorkspaceTransaction *)self addChildTransaction:v4 withSchedulingPolicy:0];
}

- (void)_didComplete
{
  v5.receiver = self;
  v5.super_class = SBPIPSceneContentSceneUpdateWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v5 _didComplete];
  v3 = [(SBWorkspaceTransaction *)self windowScene];
  v4 = [v3 medusaHostedKeyboardWindowController];
  [v4 updateMedusaHostedKeyboardWindow];
}

@end