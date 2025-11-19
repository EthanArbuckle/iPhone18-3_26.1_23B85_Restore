@interface SBModalAlertPresenter
- (BOOL)isForeground;
- (SBModalAlertPresenter)initWithScene:(id)a3;
- (id)_initWithModalAlertPresentationCoordinator:(id)a3 scene:(id)a4;
- (id)acquireVisibleModalAlertAssertionWithDescription:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initForSystemApplication;
- (id)succinctDescription;
- (void)_addOrRemoveModalAlertPresenterIfNecessary;
- (void)_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:(BOOL)a3 fromOrToTerminalState:(BOOL)a4;
- (void)dealloc;
- (void)decrementVisibleModalAlertCount;
- (void)incrementVisibleModalAlertCount;
- (void)invalidate;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setVisibleModalAlertCount:(unint64_t)a3;
@end

@implementation SBModalAlertPresenter

- (id)_initWithModalAlertPresentationCoordinator:(id)a3 scene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SBModalAlertPresenter;
  v9 = [(SBModalAlertPresenter *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    visibleAlertAssertions = v9->_visibleAlertAssertions;
    v9->_visibleAlertAssertions = v10;

    objc_storeStrong(&v9->_modalAlertPresentationCoordinator, a3);
    objc_storeStrong(&v9->_scene, a4);
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

- (SBModalAlertPresenter)initWithScene:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBModalAlertPresenter *)a2 initWithScene:?];
  }

  v6 = [(SBModalAlertPresenter *)self _initWithModalAlertPresentationCoordinator:0 scene:v5];

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
      v3 = [(FBScene *)scene settings];
      v4 = [v3 isForeground];

      LOBYTE(scene) = v4;
    }
  }

  return scene;
}

- (void)setVisibleModalAlertCount:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_visibleModalAlertCount != a3)
  {
    self->_visibleModalAlertCount = a3;
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FBScene *)self->_scene identityToken];
      v7 = [v6 stringRepresentation];
      v8 = 138412546;
      v9 = v7;
      v10 = 2048;
      v11 = a3;
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
    v4 = [(FBScene *)self->_scene identityToken];
    v5 = [v4 stringRepresentation];
    visibleModalAlertCount = self->_visibleModalAlertCount;
    v7 = 138412546;
    v8 = v5;
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
      v5 = [(FBScene *)self->_scene identityToken];
      v6 = [v5 stringRepresentation];
      v7 = self->_visibleModalAlertCount;
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Decremented visible modal alert count for [%@] to %zu", &v8, 0x16u);
    }

    [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessary];
  }
}

- (id)acquireVisibleModalAlertAssertionWithDescription:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SBModalAlertPresenter_acquireVisibleModalAlertAssertionWithDescription___block_invoke;
  v11[3] = &unk_2783A8A98;
  v11[4] = self;
  v6 = [v5 initWithIdentifier:@"modalAlertPresenterContentAssertion" forReason:v4 queue:MEMORY[0x277D85CD0] invalidationBlock:v11];

  v7 = SBLogAlertItems();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(FBScene *)self->_scene identifier];
    v9 = [(NSHashTable *)self->_visibleAlertAssertions count];
    *buf = 134218498;
    v13 = v6;
    v14 = 2114;
    v15 = v8;
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
  v2 = [(SBModalAlertPresenter *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBModalAlertPresenter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBModalAlertPresenter *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SBModalAlertPresenter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
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

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v9 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    v7 = [(SBModalAlertPresenter *)self scene];

    if (v7 == v9)
    {
      v8 = [v6 settings];
      -[SBModalAlertPresenter _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:fromOrToTerminalState:](self, "_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:fromOrToTerminalState:", [v8 isForeground], 0);
    }
  }
}

- (void)_addOrRemoveModalAlertPresenterIfNecessary
{
  v3 = [(SBModalAlertPresenter *)self isForeground];

  [(SBModalAlertPresenter *)self _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:v3 fromOrToTerminalState:0];
}

- (void)_addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:(BOOL)a3 fromOrToTerminalState:(BOOL)a4
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_modalAlertPresentationCoordinator)
  {
    v7 = [SBApp modalAlertPresentationCoordinator];
    modalAlertPresentationCoordinator = self->_modalAlertPresentationCoordinator;
    self->_modalAlertPresentationCoordinator = v7;

    if (!self->_modalAlertPresentationCoordinator)
    {
      [SBModalAlertPresenter _addOrRemoveModalAlertPresenterIfNecessaryWithForegroundState:a2 fromOrToTerminalState:self];
    }
  }

  v9 = [(SBModalAlertPresenter *)self isShowingModalAlert];
  v10 = self->_modalAlertPresentationCoordinator;
  if (v9 && v4)
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