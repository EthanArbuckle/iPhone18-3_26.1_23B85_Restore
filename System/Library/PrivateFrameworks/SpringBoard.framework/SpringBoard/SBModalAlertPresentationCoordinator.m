@interface SBModalAlertPresentationCoordinator
- (SBModalAlertPresentationCoordinator)initWithSceneDeactivationManager:(id)a3;
- (SBModalAlertPresentationCoordinatorDelegate)delegate;
- (id)_fencingTransitionContext:(BOOL)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)hideApplicationModalAlertsForReason:(id)a3;
- (id)succinctDescription;
- (void)_addModalAlertPresenterIfNecessary:(id)a3;
- (void)_adjustApplicationSceneSettingsForModalAlertsAndFence:(BOOL)a3;
- (void)_noteSpringBoardModalAlertStateChanged:(BOOL)a3;
- (void)_removeModalAlertPresenter:(id)a3;
@end

@implementation SBModalAlertPresentationCoordinator

- (SBModalAlertPresentationCoordinator)initWithSceneDeactivationManager:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_sceneDeactivationManager, a3);
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

- (id)hideApplicationModalAlertsForReason:(id)a3
{
  v4 = a3;
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
  v8 = [v5 initWithIdentifier:@"HideApplicationModalAlertsAssertion" forReason:v4 queue:v6 invalidationBlock:&v10];

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

- (void)_addModalAlertPresenterIfNecessary:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4 && ([(NSMutableSet *)self->_activeModalAlertPresenters containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_activeModalAlertPresenters addObject:v4];
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBModalAlertPresenter *)v4 scene];
      v7 = [v6 identityToken];
      v8 = [v7 stringRepresentation];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Adding modal alert presenter for %@", &v9, 0xCu);
    }

    if (self->_springBoardModalAlertPresenter == v4)
    {
      [(SBModalAlertPresentationCoordinator *)self _noteSpringBoardModalAlertStateChanged:1];
    }
  }
}

- (void)_removeModalAlertPresenter:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4 && [(NSMutableSet *)self->_activeModalAlertPresenters containsObject:v4])
  {
    v5 = SBLogAlertItems();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBModalAlertPresenter *)v4 scene];
      v7 = [v6 identityToken];
      v8 = [v7 stringRepresentation];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Removing modal alert presenter %@", &v9, 0xCu);
    }

    [(NSMutableSet *)self->_activeModalAlertPresenters removeObject:v4];
    if (self->_springBoardModalAlertPresenter == v4)
    {
      [(SBModalAlertPresentationCoordinator *)self _noteSpringBoardModalAlertStateChanged:0];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBModalAlertPresentationCoordinator *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBModalAlertPresentationCoordinator *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBModalAlertPresentationCoordinator *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SBModalAlertPresentationCoordinator_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
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

- (void)_noteSpringBoardModalAlertStateChanged:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssertMain();
  hideApplicationModalAlertsAssertionWhileSBModalAlertsActive = self->_hideApplicationModalAlertsAssertionWhileSBModalAlertsActive;
  if (v3)
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
    [WeakRetained modalAlertPresentationCoordinator:self didChangeShowingSystemModalAlert:v3];
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

- (id)_fencingTransitionContext:(BOOL)a3
{
  v3 = a3;
  BSDispatchQueueAssertMain();
  if (v3)
  {
    v4 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    if (v4)
    {
      v5 = [MEMORY[0x277D75188] transitionContext];
      [v5 setAnimationFence:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_adjustApplicationSceneSettingsForModalAlertsAndFence:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained modalAlertPresentationCoordinatorRequestedForegroundScenes:self];

  v19 = [(SBModalAlertPresentationCoordinator *)self isShowingSystemModalAlert];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v21 + 1) + 8 * v11) sceneIfExists];

        if (v9)
        {
          v13 = [(SBModalAlertPresentationCoordinator *)self _fencingTransitionContext:v3];
          v14 = objc_opt_class();
          v15 = [v9 settings];
          v16 = [v15 mutableCopy];
          v17 = SBSafeCast(v14, v16);

          if (v17)
          {
            if (v19)
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
            [v9 updateSettings:v17 withTransitionContext:v13];
          }
        }

        ++v11;
        v12 = v9;
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