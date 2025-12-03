@interface SBModalAlertPresenter
- (BOOL)isForeground;
- (SBModalAlertPresenter)initWithScene:(id)scene;
- (id)_initWithModalAlertPresentationCoordinator:(id)coordinator scene:(id)scene;
- (id)acquireVisibleModalAlertAssertionWithDescription:(id)description;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initForSystemApplication;
- (id)succinctDescription;
- (void)_addOrRemoveModalAlertPresenterIfNecessary;
- (void)_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:(BOOL)state fromOrToTerminalState:(BOOL)terminalState;
- (void)dealloc;
- (void)decrementVisibleModalAlertCount;
- (void)incrementVisibleModalAlertCount;
- (void)invalidate;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setVisibleModalAlertCount:(unint64_t)count;
@end

@implementation SBModalAlertPresenter

- (id)_initWithModalAlertPresentationCoordinator:(id)coordinator scene:(id)scene
{
  coordinatorCopy = coordinator;
  sceneCopy = scene;
  v13.receiver = self;
  v13.super_class = SBModalAlertPresenter;
  v9 = [(SBModalAlertPresenter *)&v13 init];
  if (v9)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    visibleAlertAssertions = v9->_visibleAlertAssertions;
    v9->_visibleAlertAssertions = weakObjectsHashTable;

    objc_storeStrong(&v9->_modalAlertPresentationCoordinator, coordinator);
    objc_storeStrong(&v9->_scene, scene);
    [(FBScene *)v9->_scene addObserver:v9];
  }

  return v9;
}

- (id)initForSystemApplication
{
  result = [(SBModalAlertPresenter *)self _initWithModalAlertPresentationCoordinator:0 scene:0];
  if (result)
  {
    *(result + 33) = 1;
  }

  return result;
}

- (SBModalAlertPresenter)initWithScene:(id)scene
{
  sceneCopy = scene;
  if (!sceneCopy)
  {
    [(SBModalAlertPresenter *)a2 initWithScene:?];
  }

  v6 = [(SBModalAlertPresenter *)self _initWithModalAlertPresentationCoordinator:0 scene:sceneCopy];

  return v6;
}

- (void)dealloc
{
  [(FBScene *)self->_scene removeObserver:self];
  [(SBModalAlertPresentationCoordinator *)self->_modalAlertPresentationCoordinator _removeModalAlertPresenter:self];
  v3.receiver = self;
  v3.super_class = SBModalAlertPresenter;
  [(SBModalAlertPresenter *)&v3 dealloc];
}

- (BOOL)isForeground
{
  if (self->_isSystemPresenter)
  {
    LOBYTE(scene) = 1;
  }

  else
  {
    scene = self->_scene;
    if (scene)
    {
      settings = [(FBScene *)scene settings];
      isForeground = [settings isForeground];

      LOBYTE(scene) = isForeground;
    }
  }

  return scene;
}

- (void)setVisibleModalAlertCount:(unint64_t)count
{
  v12 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_visibleModalAlertCount != count)
  {
    self->_visibleModalAlertCount = count;
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      identityToken = [(FBScene *)self->_scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v8 = 138412546;
      v9 = stringRepresentation;
      v10 = 2048;
      countCopy = count;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Setting visible modal alert count for [%@] to %zu", &v8, 0x16u);
    }

    [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessary];
  }
}

- (void)incrementVisibleModalAlertCount
{
  v11 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  ++self->_visibleModalAlertCount;
  v3 = SBLogAlertItems();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identityToken = [(FBScene *)self->_scene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    visibleModalAlertCount = self->_visibleModalAlertCount;
    v7 = 138412546;
    v8 = stringRepresentation;
    v9 = 2048;
    v10 = visibleModalAlertCount;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Incremented visible modal alert count for [%@] to %zu", &v7, 0x16u);
  }

  [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessary];
}

- (void)decrementVisibleModalAlertCount
{
  v12 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  visibleModalAlertCount = self->_visibleModalAlertCount;
  if (visibleModalAlertCount)
  {
    self->_visibleModalAlertCount = visibleModalAlertCount - 1;
    v4 = SBLogAlertItems();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      identityToken = [(FBScene *)self->_scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v7 = self->_visibleModalAlertCount;
      v8 = 138412546;
      v9 = stringRepresentation;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Decremented visible modal alert count for [%@] to %zu", &v8, 0x16u);
    }

    [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessary];
  }
}

- (id)acquireVisibleModalAlertAssertionWithDescription:(id)description
{
  v18 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  BSDispatchQueueAssertMain();
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBModalAlertPresenter_acquireVisibleModalAlertAssertionWithDescription___block_invoke;
  v11[3] = &unk_2783A8A98;
  v11[4] = self;
  v6 = [v5 initWithIdentifier:@"modalAlertPresenterContentAssertion" forReason:descriptionCopy queue:MEMORY[0x277D85CD0] invalidationBlock:v11];

  v7 = SBLogAlertItems();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FBScene *)self->_scene identifier];
    v9 = [(NSHashTable *)self->_visibleAlertAssertions count];
    *buf = 134218498;
    v13 = v6;
    v14 = 2114;
    v15 = identifier;
    v16 = 2048;
    v17 = v9 + 1;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Acquiring visible modal alert assertion (%p) for presenter: %{public}@, count %zu", buf, 0x20u);
  }

  [(NSHashTable *)self->_visibleAlertAssertions addObject:v6];

  return v6;
}

void __74__SBModalAlertPresenter_acquireVisibleModalAlertAssertionWithDescription___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogAlertItems();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 16) identifier];
    v6 = [*(*(a1 + 32) + 40) count];
    v7 = 134218498;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6 - 1;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating visible modal alert assertion (%p) for presenter: %{public}@, count %zu", &v7, 0x20u);
  }

  [*(*(a1 + 32) + 40) removeObject:v3];
  [*(a1 + 32) _addOrRemoveModalAlertPresenterIfNecessary];
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    [(SBModalAlertPresentationCoordinator *)self->_modalAlertPresentationCoordinator _removeModalAlertPresenter:self];
    scene = self->_scene;

    [(FBScene *)scene removeObserver:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBModalAlertPresenter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBModalAlertPresenter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBModalAlertPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBModalAlertPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyProem:v9];
  v7 = v5;

  return v5;
}

id __63__SBModalAlertPresenter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 24) withName:@"alertCount"];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v3 + 33) == 1)
  {
    v5 = [*(a1 + 32) appendBool:1 withName:@"isSystemPresenter"];
  }

  else
  {
    v6 = [*(v3 + 16) identifier];
    [v4 appendString:v6 withName:@"sceneID"];

    v7 = *(a1 + 32);
    v8 = [*(*(a1 + 40) + 16) clientHandle];
    v9 = [v8 bundleIdentifier];
    [v7 appendString:v9 withName:@"bundleID"];
  }

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"visibleAlertAssertions"];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    scene = [(SBModalAlertPresenter *)self scene];

    if (scene == sceneCopy)
    {
      settings = [settingsCopy settings];
      -[SBModalAlertPresenter _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:fromOrToTerminalState:](self, "_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:fromOrToTerminalState:", [settings isForeground], 0);
    }
  }
}

- (void)_addOrRemoveModalAlertPresenterIfNecessary
{
  isForeground = [(SBModalAlertPresenter *)self isForeground];

  [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:isForeground fromOrToTerminalState:0];
}

- (void)_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:(BOOL)state fromOrToTerminalState:(BOOL)terminalState
{
  stateCopy = state;
  BSDispatchQueueAssertMain();
  if (!self->_modalAlertPresentationCoordinator)
  {
    modalAlertPresentationCoordinator = [SBApp modalAlertPresentationCoordinator];
    modalAlertPresentationCoordinator = self->_modalAlertPresentationCoordinator;
    self->_modalAlertPresentationCoordinator = modalAlertPresentationCoordinator;

    if (!self->_modalAlertPresentationCoordinator)
    {
      [SBModalAlertPresenter _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:a2 fromOrToTerminalState:self];
    }
  }

  isShowingModalAlert = [(SBModalAlertPresenter *)self isShowingModalAlert];
  v10 = self->_modalAlertPresentationCoordinator;
  if (isShowingModalAlert && stateCopy)
  {

    [(SBModalAlertPresentationCoordinator *)v10 _addModalAlertPresenterIfNecessary:self];
  }

  else
  {

    [(SBModalAlertPresentationCoordinator *)v10 _removeModalAlertPresenter:self];
  }
}

- (void)initWithScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBModalAlertPresenter.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"scene"}];
}

- (void)_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:(uint64_t)a1 fromOrToTerminalState:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBModalAlertPresenter.m" lineNumber:209 description:@"SBModalAlertPresenter was Unable to retrieve a presentation coordinator."];
}

@end