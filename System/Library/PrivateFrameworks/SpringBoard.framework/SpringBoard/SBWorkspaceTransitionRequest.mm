@interface SBWorkspaceTransitionRequest
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (NSSet)fromApplicationSceneEntities;
- (NSSet)toApplicationSceneEntities;
- (id)_initWithWorkspace:(id)a3 displayConfiguration:(id)a4;
- (id)compactDescriptionBuilder;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)declineWithReason:(id)a3;
- (void)finalize;
- (void)modifyApplicationContext:(id)a3;
- (void)modifyTransientOverlayContext:(id)a3;
- (void)setApplicationContext:(id)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setEventLabelWithFormat:(id)a3;
@end

@implementation SBWorkspaceTransitionRequest

- (void)finalize
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __57__SBWorkspaceTransitionRequest_compactDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [v4 activeMultilinePrefix];
    v6 = [v3 compactDescriptionBuilderWithMultilinePrefix:v5];
    v7 = [v6 build];
    v8 = [v4 appendObject:v7 withName:@"applicationContext"];

    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 80);
  if (v9)
  {
    v10 = *(a1 + 40);
    v14 = [v10 activeMultilinePrefix];
    v11 = [v9 compactDescriptionBuilderWithMultilinePrefix:v14];
    v12 = [v11 build];
    v13 = [v10 appendObject:v12 withName:@"transientOverlayContext"];
  }
}

- (id)compactDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_eventLabel withName:@"eventLabel" skipIfNil:1];
  v5 = [(FBSDisplayConfiguration *)self->_displayConfiguration identity];
  v6 = [v3 appendObject:v5 withName:@"display"];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SBWorkspaceTransitionRequest_compactDescriptionBuilder__block_invoke;
  v11[3] = &unk_2783A92D8;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [v7 appendBodySectionWithName:0 multilinePrefix:0 block:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

- (NSSet)toApplicationSceneEntities
{
  v2 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v3 = [v2 applicationSceneEntities];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(SBWorkspaceTransitionRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_eventLabel withName:@"eventLabel" skipIfNil:1];
  v5 = [(FBSDisplayConfiguration *)self->_displayConfiguration identity];
  v6 = [v3 appendObject:v5 withName:@"display"];

  return v3;
}

- (id)_initWithWorkspace:(id)a3 displayConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBWorkspaceTransitionRequest _initWithWorkspace:displayConfiguration:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBWorkspaceTransitionRequest _initWithWorkspace:displayConfiguration:];
LABEL_3:
  v23.receiver = self;
  v23.super_class = SBWorkspaceTransitionRequest;
  v10 = [(SBWorkspaceTransitionRequest *)&v23 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_workspace, a3);
    objc_storeStrong(&v11->_displayConfiguration, a4);
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 copy];
    uniqueID = v11->_uniqueID;
    v11->_uniqueID = v13;

    v15 = [SBApp windowSceneManager];
    v16 = [v9 identity];
    v17 = [v15 windowSceneForDisplayIdentity:v16];
    v18 = [v17 layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v11->_layoutStateTransitionCoordinator;
    v11->_layoutStateTransitionCoordinator = v18;

    v11->_interfaceOrientation = 0;
    v20 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
    applicationContext = v11->_applicationContext;
    v11->_applicationContext = v20;

    [(SBWorkspaceTransitionContext *)v11->_applicationContext setRequest:v11];
  }

  return v11;
}

- (void)setApplicationContext:(id)a3
{
  v5 = a3;
  applicationContext = self->_applicationContext;
  if (applicationContext != v5)
  {
    v7 = v5;
    [(SBWorkspaceTransitionContext *)applicationContext setRequest:0];
    objc_storeStrong(&self->_applicationContext, a3);
    [(SBWorkspaceTransitionContext *)self->_applicationContext setRequest:self];
    v5 = v7;
  }
}

- (void)modifyTransientOverlayContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    transientOverlayContext = self->_transientOverlayContext;
    v7 = v4;
    if (!transientOverlayContext)
    {
      v6 = +[(SBWorkspaceTransitionContext *)SBWorkspaceTransientOverlayTransitionContext];
      [(SBWorkspaceTransitionRequest *)self setTransientOverlayContext:v6];

      v4 = v7;
      transientOverlayContext = self->_transientOverlayContext;
    }

    (*(v4 + 2))(v7, transientOverlayContext);
    v4 = v7;
  }
}

- (void)modifyApplicationContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    applicationContext = self->_applicationContext;
    v7 = v4;
    if (!applicationContext)
    {
      v6 = +[(SBWorkspaceTransitionContext *)SBWorkspaceApplicationSceneTransitionContext];
      [(SBWorkspaceTransitionRequest *)self setApplicationContext:v6];

      v4 = v7;
      applicationContext = self->_applicationContext;
    }

    (*(v4 + 2))(v7, applicationContext);
    v4 = v7;
  }
}

- (void)setEventLabelWithFormat:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [(SBWorkspaceTransitionRequest *)self setEventLabel:v6];
}

- (void)declineWithReason:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_finalized)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBWorkspaceTransitionRequest *)self succinctDescription];
      *buf = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Transition request %{public}@ was declined: %{public}@", buf, 0x16u);
    }

    v7 = [(SBWorkspaceTransitionRequest *)self applicationContext];
    v8 = FBSOpenApplicationErrorCreate();
    [v7 sendActivationResultError:{v8, v4}];
  }
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (self->_displayConfiguration != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_displayConfiguration, a3);
    v6 = [SBApp windowSceneManager];
    v7 = [(FBSDisplayConfiguration *)v11 identity];
    v8 = [v6 windowSceneForDisplayIdentity:v7];
    v9 = [v8 layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = self->_layoutStateTransitionCoordinator;
    self->_layoutStateTransitionCoordinator = v9;

    v5 = v11;
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBWorkspaceTransitionRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceTransitionRequest *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBWorkspaceTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __70__SBWorkspaceTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"displayConfiguration"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"applicationContext" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"transientOverlayContext" skipIfNil:1];
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBLayoutStateTransitionCoordinator *)self->_layoutStateTransitionCoordinator sceneEntityFrameProvider];
  if (v8)
  {
    v9 = [v6 layoutState];
    [v8 sceneEntityFrameForWorkspaceEntity:v7 inLayoutState:v9];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (NSSet)fromApplicationSceneEntities
{
  v2 = [(SBWorkspaceTransitionRequest *)self applicationContext];
  v3 = [v2 previousApplicationSceneEntities];

  return v3;
}

- (void)_initWithWorkspace:displayConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspace" object:? file:? lineNumber:? description:?];
}

- (void)_initWithWorkspace:displayConfiguration:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

@end