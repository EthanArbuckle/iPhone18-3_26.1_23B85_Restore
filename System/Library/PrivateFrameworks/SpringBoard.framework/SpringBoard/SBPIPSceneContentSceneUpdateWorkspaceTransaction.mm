@interface SBPIPSceneContentSceneUpdateWorkspaceTransaction
- (SBPIPSceneContentSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)entity transitionRequest:(id)request;
- (void)_begin;
- (void)_didComplete;
@end

@implementation SBPIPSceneContentSceneUpdateWorkspaceTransaction

- (SBPIPSceneContentSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)entity transitionRequest:(id)request
{
  entityCopy = entity;
  v11.receiver = self;
  v11.super_class = SBPIPSceneContentSceneUpdateWorkspaceTransaction;
  v8 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:request];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_applicationSceneEntity, entity);
  }

  return v9;
}

- (void)_begin
{
  v6.receiver = self;
  v6.super_class = SBPIPSceneContentSceneUpdateWorkspaceTransaction;
  [(SBPIPSceneContentSceneUpdateWorkspaceTransaction *)&v6 _begin];
  [(SBPIPSceneContentSceneUpdateWorkspaceTransaction *)self addMilestone:@"_SBPIPSceneContentSceneUpdateWorkspaceTransactionMilestoneSceneUpdate"];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:self->_applicationSceneEntity transitionRequest:transitionRequest];
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
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController updateMedusaHostedKeyboardWindow];
}

@end