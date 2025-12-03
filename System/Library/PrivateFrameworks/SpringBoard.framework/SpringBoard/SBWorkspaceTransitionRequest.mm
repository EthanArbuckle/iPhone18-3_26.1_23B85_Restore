@interface SBWorkspaceTransitionRequest
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (NSSet)fromApplicationSceneEntities;
- (NSSet)toApplicationSceneEntities;
- (id)_initWithWorkspace:(id)workspace displayConfiguration:(id)configuration;
- (id)compactDescriptionBuilder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)declineWithReason:(id)reason;
- (void)finalize;
- (void)modifyApplicationContext:(id)context;
- (void)modifyTransientOverlayContext:(id)context;
- (void)setApplicationContext:(id)context;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setEventLabelWithFormat:(id)format;
@end

@implementation SBWorkspaceTransitionRequest

- (void)finalize
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  identity = [(FBSDisplayConfiguration *)self->_displayConfiguration identity];
  v6 = [v3 appendObject:identity withName:@"display"];

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
  applicationContext = [(SBWorkspaceTransitionRequest *)self applicationContext];
  applicationSceneEntities = [applicationContext applicationSceneEntities];

  return applicationSceneEntities;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBWorkspaceTransitionRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_eventLabel withName:@"eventLabel" skipIfNil:1];
  identity = [(FBSDisplayConfiguration *)self->_displayConfiguration identity];
  v6 = [v3 appendObject:identity withName:@"display"];

  return v3;
}

- (id)_initWithWorkspace:(id)workspace displayConfiguration:(id)configuration
{
  workspaceCopy = workspace;
  configurationCopy = configuration;
  v9 = configurationCopy;
  if (workspaceCopy)
  {
    if (configurationCopy)
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
    objc_storeStrong(&v10->_workspace, workspace);
    objc_storeStrong(&v11->_displayConfiguration, configuration);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v13 = [uUID copy];
    uniqueID = v11->_uniqueID;
    v11->_uniqueID = v13;

    windowSceneManager = [SBApp windowSceneManager];
    identity = [v9 identity];
    v17 = [windowSceneManager windowSceneForDisplayIdentity:identity];
    layoutStateTransitionCoordinator = [v17 layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v11->_layoutStateTransitionCoordinator;
    v11->_layoutStateTransitionCoordinator = layoutStateTransitionCoordinator;

    v11->_interfaceOrientation = 0;
    v20 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
    applicationContext = v11->_applicationContext;
    v11->_applicationContext = v20;

    [(SBWorkspaceTransitionContext *)v11->_applicationContext setRequest:v11];
  }

  return v11;
}

- (void)setApplicationContext:(id)context
{
  contextCopy = context;
  applicationContext = self->_applicationContext;
  if (applicationContext != contextCopy)
  {
    v7 = contextCopy;
    [(SBWorkspaceTransitionContext *)applicationContext setRequest:0];
    objc_storeStrong(&self->_applicationContext, context);
    [(SBWorkspaceTransitionContext *)self->_applicationContext setRequest:self];
    contextCopy = v7;
  }
}

- (void)modifyTransientOverlayContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    transientOverlayContext = self->_transientOverlayContext;
    v7 = contextCopy;
    if (!transientOverlayContext)
    {
      v6 = +[(SBWorkspaceTransitionContext *)SBWorkspaceTransientOverlayTransitionContext];
      [(SBWorkspaceTransitionRequest *)self setTransientOverlayContext:v6];

      contextCopy = v7;
      transientOverlayContext = self->_transientOverlayContext;
    }

    (*(contextCopy + 2))(v7, transientOverlayContext);
    contextCopy = v7;
  }
}

- (void)modifyApplicationContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    applicationContext = self->_applicationContext;
    v7 = contextCopy;
    if (!applicationContext)
    {
      v6 = +[(SBWorkspaceTransitionContext *)SBWorkspaceApplicationSceneTransitionContext];
      [(SBWorkspaceTransitionRequest *)self setApplicationContext:v6];

      contextCopy = v7;
      applicationContext = self->_applicationContext;
    }

    (*(contextCopy + 2))(v7, applicationContext);
    contextCopy = v7;
  }
}

- (void)setEventLabelWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [(SBWorkspaceTransitionRequest *)self setEventLabel:v6];
}

- (void)declineWithReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!self->_finalized)
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [(SBWorkspaceTransitionRequest *)self succinctDescription];
      *buf = 138543618;
      v10 = succinctDescription;
      v11 = 2114;
      v12 = reasonCopy;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Transition request %{public}@ was declined: %{public}@", buf, 0x16u);
    }

    applicationContext = [(SBWorkspaceTransitionRequest *)self applicationContext];
    v8 = FBSOpenApplicationErrorCreate();
    [applicationContext sendActivationResultError:{v8, reasonCopy}];
  }
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_displayConfiguration != configurationCopy)
  {
    v11 = configurationCopy;
    objc_storeStrong(&self->_displayConfiguration, configuration);
    windowSceneManager = [SBApp windowSceneManager];
    identity = [(FBSDisplayConfiguration *)v11 identity];
    v8 = [windowSceneManager windowSceneForDisplayIdentity:identity];
    layoutStateTransitionCoordinator = [v8 layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = self->_layoutStateTransitionCoordinator;
    self->_layoutStateTransitionCoordinator = layoutStateTransitionCoordinator;

    configurationCopy = v11;
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBWorkspaceTransitionRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBWorkspaceTransitionRequest *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBWorkspaceTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __70__SBWorkspaceTransitionRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"displayConfiguration"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"applicationContext" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"transientOverlayContext" skipIfNil:1];
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  contextCopy = context;
  entityCopy = entity;
  sceneEntityFrameProvider = [(SBLayoutStateTransitionCoordinator *)self->_layoutStateTransitionCoordinator sceneEntityFrameProvider];
  if (sceneEntityFrameProvider)
  {
    layoutState = [contextCopy layoutState];
    [sceneEntityFrameProvider sceneEntityFrameForWorkspaceEntity:entityCopy inLayoutState:layoutState];
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
  applicationContext = [(SBWorkspaceTransitionRequest *)self applicationContext];
  previousApplicationSceneEntities = [applicationContext previousApplicationSceneEntities];

  return previousApplicationSceneEntities;
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