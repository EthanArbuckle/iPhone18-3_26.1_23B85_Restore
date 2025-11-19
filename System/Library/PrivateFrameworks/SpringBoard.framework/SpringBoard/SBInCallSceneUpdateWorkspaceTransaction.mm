@interface SBInCallSceneUpdateWorkspaceTransaction
- (SBInCallSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)a3 transitionRequest:(id)a4;
- (void)_begin;
@end

@implementation SBInCallSceneUpdateWorkspaceTransaction

- (SBInCallSceneUpdateWorkspaceTransaction)initWithApplicationSceneEntity:(id)a3 transitionRequest:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBInCallSceneUpdateWorkspaceTransaction;
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
  v14.receiver = self;
  v14.super_class = SBInCallSceneUpdateWorkspaceTransaction;
  [(SBInCallSceneUpdateWorkspaceTransaction *)&v14 _begin];
  v3 = MEMORY[0x223D6F7F0](self->_postSceneUpdateHandler);
  postSceneUpdateHandler = self->_postSceneUpdateHandler;
  self->_postSceneUpdateHandler = 0;

  if (v3)
  {
    [(SBInCallSceneUpdateWorkspaceTransaction *)self addMilestone:@"_SBInCallSceneUpdateWorkspaceTransactionMilestonePostSceneUpdateBlocks"];
  }

  [(SBInCallSceneUpdateWorkspaceTransaction *)self addMilestone:@"_SBInCallSceneUpdateWorkspaceTransactionMilestoneSceneUpdate"];
  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:self->_applicationSceneEntity transitionRequest:v5];
  [(FBApplicationUpdateScenesTransaction *)v6 setWaitsForSceneCommits:1];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__SBInCallSceneUpdateWorkspaceTransaction__begin__block_invoke;
  v11 = &unk_2783B3B78;
  v12 = self;
  v13 = v3;
  v7 = v3;
  [(SBApplicationSceneUpdateTransaction *)v6 setCompletionBlock:&v8];
  [(SBInCallSceneUpdateWorkspaceTransaction *)self addChildTransaction:v6 withSchedulingPolicy:0, v8, v9, v10, v11, v12];
}

uint64_t __49__SBInCallSceneUpdateWorkspaceTransaction__begin__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__SBInCallSceneUpdateWorkspaceTransaction__begin__block_invoke_2;
    v5[3] = &unk_2783A9398;
    v5[4] = *(a1 + 32);
    (*(v3 + 16))(v3, a2, v5);
  }

  return [*(a1 + 32) removeMilestone:@"_SBInCallSceneUpdateWorkspaceTransactionMilestoneSceneUpdate"];
}

uint64_t __49__SBInCallSceneUpdateWorkspaceTransaction__begin__block_invoke_2(uint64_t a1, char a2)
{
  if (([*(a1 + 32) isFailed] & 1) == 0 && (a2 & 1) == 0)
  {
    [*(a1 + 32) failWithReason:@"Post scene update failure"];
  }

  v4 = *(a1 + 32);

  return [v4 removeMilestone:@"_SBInCallSceneUpdateWorkspaceTransactionMilestonePostSceneUpdateBlocks"];
}

@end