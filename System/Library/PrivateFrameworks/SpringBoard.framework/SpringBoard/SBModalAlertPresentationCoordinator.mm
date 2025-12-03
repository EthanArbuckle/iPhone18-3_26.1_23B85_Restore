@interface SBModalAlertPresentationCoordinator
- (SBModalAlertPresentationCoordinator)initWithSceneDeactivationManager:(id)manager;
- (SBModalAlertPresentationCoordinatorDelegate)delegate;
- (id)_fencingTransitionContext:(BOOL)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hideApplicationModalAlertsForReason:(id)reason;
- (id)succinctDescription;
- (void)_addModalAlertPresenterIfNecessary:(id)necessary;
- (void)_adjustApplicationSceneSettingsForModalAlertsAndFence:(BOOL)fence;
- (void)_noteSpringBoardModalAlertStateChanged:(BOOL)changed;
- (void)_removeModalAlertPresenter:(id)presenter;
@end

@implementation SBModalAlertPresentationCoordinator

- (SBModalAlertPresentationCoordinator)initWithSceneDeactivationManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = SBModalAlertPresentationCoordinator;
  v6 = [(SBModalAlertPresentationCoordinator *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeModalAlertPresenters = v6->_activeModalAlertPresenters;
    v6->_activeModalAlertPresenters = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    hideApplicationModalAlertAssertions = v6->_hideApplicationModalAlertAssertions;
    v6->_hideApplicationModalAlertAssertions = v9;

    objc_storeStrong(&v6->_sceneDeactivationManager, manager);
    objc_initWeak(&location, v6);
    v11 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v15, &location);
    v12 = BSLogAddStateCaptureBlockWithTitle();
    sysdiagnoseStateHandler = v6->_sysdiagnoseStateHandler;
    v6->_sysdiagnoseStateHandler = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

id __72__SBModalAlertPresentationCoordinator_initWithSceneDeactivationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (id)hideApplicationModalAlertsForReason:(id)reason
{
  reasonCopy = reason;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v6 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __75__SBModalAlertPresentationCoordinator_hideApplicationModalAlertsForReason___block_invoke;
  v13 = &unk_2783A9070;
  objc_copyWeak(&v14, &location);
  v8 = [v5 initWithIdentifier:@"HideApplicationModalAlertsAssertion" forReason:reasonCopy queue:v6 invalidationBlock:&v10];

  [(NSMutableSet *)self->_hideApplicationModalAlertAssertions addObject:v8, v10, v11, v12, v13];
  if ([(NSMutableSet *)self->_hideApplicationModalAlertAssertions count]== 1)
  {
    [(SBModalAlertPresentationCoordinator *)self _adjustApplicationSceneSettingsForModalAlertsAndFence:1];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __75__SBModalAlertPresentationCoordinator_hideApplicationModalAlertsForReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[6] removeObject:v5];
    if (![v4[6] count] && (objc_msgSend(v4, "isShowingSystemModalAlert") & 1) == 0)
    {
      [v4 _adjustApplicationSceneSettingsForModalAlertsAndFence:0];
    }
  }
}

- (void)_addModalAlertPresenterIfNecessary:(id)necessary
{
  v11 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  BSDispatchQueueAssertMain();
  if (necessaryCopy && ([(NSMutableSet *)self->_activeModalAlertPresenters containsObject:necessaryCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_activeModalAlertPresenters addObject:necessaryCopy];
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      scene = [(SBModalAlertPresenter *)necessaryCopy scene];
      identityToken = [scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v9 = 138412290;
      v10 = stringRepresentation;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Adding modal alert presenter for %@", &v9, 0xCu);
    }

    if (self->_springBoardModalAlertPresenter == necessaryCopy)
    {
      [(SBModalAlertPresentationCoordinator *)self _noteSpringBoardModalAlertStateChanged:1];
    }
  }
}

- (void)_removeModalAlertPresenter:(id)presenter
{
  v11 = *MEMORY[0x277D85DE8];
  presenterCopy = presenter;
  BSDispatchQueueAssertMain();
  if (presenterCopy && [(NSMutableSet *)self->_activeModalAlertPresenters containsObject:presenterCopy])
  {
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      scene = [(SBModalAlertPresenter *)presenterCopy scene];
      identityToken = [scene identityToken];
      stringRepresentation = [identityToken stringRepresentation];
      v9 = 138412290;
      v10 = stringRepresentation;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Removing modal alert presenter %@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_activeModalAlertPresenters removeObject:presenterCopy];
    if (self->_springBoardModalAlertPresenter == presenterCopy)
    {
      [(SBModalAlertPresentationCoordinator *)self _noteSpringBoardModalAlertStateChanged:0];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBModalAlertPresentationCoordinator *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBModalAlertPresentationCoordinator *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBModalAlertPresentationCoordinator *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBModalAlertPresentationCoordinator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __77__SBModalAlertPresentationCoordinator_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"systemModalAlertPresenter" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"activeModalAlertPresenters"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"sceneDeactivationAssertion" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"hideAllApplicationModalAlertsAssertions"];
}

- (void)_noteSpringBoardModalAlertStateChanged:(BOOL)changed
{
  changedCopy = changed;
  BSDispatchQueueAssertMain();
  hideApplicationModalAlertsAssertionWhileSBModalAlertsActive = self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive;
  if (changedCopy)
  {
    if (hideApplicationModalAlertsAssertionWhileSBModalAlertsActive || self->_systemModalAlertsActiveSceneDeactivationAssertion)
    {
      [(SBModalAlertPresentationCoordinator *)a2 _noteSpringBoardModalAlertStateChanged:?];
    }

    v7 = [(SBModalAlertPresentationCoordinator *)self hideApplicationModalAlertsForReason:@"SystemModalAlertActive"];
    v8 = self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive;
    self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive = v7;

    v9 = [(UIApplicationSceneDeactivationManager *)self->_sceneDeactivationManager newAssertionWithReason:13];
    systemModalAlertsActiveSceneDeactivationAssertion = self->_systemModalAlertsActiveSceneDeactivationAssertion;
    self->_systemModalAlertsActiveSceneDeactivationAssertion = v9;

    v11 = self->_systemModalAlertsActiveSceneDeactivationAssertion;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__SBModalAlertPresentationCoordinator__noteSpringBoardModalAlertStateChanged___block_invoke;
    v16[3] = &unk_2783ADD00;
    v16[4] = self;
    [(UIApplicationSceneDeactivationAssertion *)v11 acquireWithPredicate:v16 transitionContext:0];
  }

  else
  {
    [(BSInvalidatable *)hideApplicationModalAlertsAssertionWhileSBModalAlertsActive invalidate];
    v12 = self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive;
    self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive = 0;

    [(UIApplicationSceneDeactivationAssertion *)self->_systemModalAlertsActiveSceneDeactivationAssertion relinquish];
    v13 = self->_systemModalAlertsActiveSceneDeactivationAssertion;
    self->_systemModalAlertsActiveSceneDeactivationAssertion = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained modalAlertPresentationCoordinator:self didChangeShowingSystemModalAlert:changedCopy];
  }
}

uint64_t __78__SBModalAlertPresentationCoordinator__noteSpringBoardModalAlertStateChanged___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained modalAlertPresentationCoordinatorRequestedForegroundScenes:*(a1 + 32)];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) sceneIfExists];

        if (v10 == v3)
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_fencingTransitionContext:(BOOL)context
{
  contextCopy = context;
  BSDispatchQueueAssertMain();
  if (contextCopy)
  {
    _synchronizedDrawingFence = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    if (_synchronizedDrawingFence)
    {
      transitionContext = [MEMORY[0x277D75188] transitionContext];
      [transitionContext setAnimationFence:_synchronizedDrawingFence];
    }

    else
    {
      transitionContext = 0;
    }
  }

  else
  {
    transitionContext = 0;
  }

  return transitionContext;
}

- (void)_adjustApplicationSceneSettingsForModalAlertsAndFence:(BOOL)fence
{
  fenceCopy = fence;
  v26 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained modalAlertPresentationCoordinatorRequestedForegroundScenes:self];

  isShowingSystemModalAlert = [(SBModalAlertPresentationCoordinator *)self isShowingSystemModalAlert];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    sceneIfExists = 0;
    v10 = *v22;
    do
    {
      v11 = 0;
      v12 = sceneIfExists;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        sceneIfExists = [*(*(&v21 + 1) + 8 * v11) sceneIfExists];

        if (sceneIfExists)
        {
          v13 = [(SBModalAlertPresentationCoordinator *)self _fencingTransitionContext:fenceCopy];
          v14 = objc_opt_class();
          settings = [sceneIfExists settings];
          v16 = [settings mutableCopy];
          v17 = SBSafeCast(v14, v16);

          if (v17)
          {
            if (isShowingSystemModalAlert)
            {
              [v17 setCanShowAlerts:0];
              v18 = [v17 deactivationReasons] | 0x2000;
            }

            else
            {
              [v17 setCanShowAlerts:{-[NSMutableSet count](self->_hideApplicationModalAlertAssertions, "count") == 0}];
              v18 = [v17 deactivationReasons] & 0xFFFFFFFFFFFFDFFFLL;
            }

            [v17 setDeactivationReasons:v18];
            [sceneIfExists updateSettings:v17 withTransitionContext:v13];
          }
        }

        ++v11;
        v12 = sceneIfExists;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (SBModalAlertPresentationCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_noteSpringBoardModalAlertStateChanged:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBModalAlertPresentationCoordinator.m" lineNumber:182 description:@"We shouldn't have any assertions at this point."];
}

@end