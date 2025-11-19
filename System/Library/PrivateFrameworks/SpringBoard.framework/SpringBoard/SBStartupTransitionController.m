@interface SBStartupTransitionController
- (SBStartupTransitionController)initWithInitialRestartState:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)initializeAndRunStartupTransition:(id)a3;
- (void)transactionDidBegin:(id)a3;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBStartupTransitionController

- (SBStartupTransitionController)initWithInitialRestartState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SBStartupTransitionController;
  v6 = [(SBStartupTransitionController *)&v15 init];
  if (v6)
  {
    v7 = SBLogWorkspace();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Startup transition controller initialized with initial state: %@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_initialRestartState, a3);
    v8 = [[SBStartupTransitionFactory alloc] initWithInitialRestartState:v6->_initialRestartState];
    transitionFactory = v6->_transitionFactory;
    v6->_transitionFactory = v8;

    v10 = [SBStartupTransitionContextPersistence alloc];
    v11 = [(SBInitialRestartState *)v6->_initialRestartState bootDefaults];
    v12 = [(SBStartupTransitionContextPersistence *)v10 initWithBootDefaults:v11 loginSession:[(SBInitialRestartState *)v6->_initialRestartState isLoginSession]];
    transitionContextPersistence = v6->_transitionContextPersistence;
    v6->_transitionContextPersistence = v12;
  }

  return v6;
}

- (void)initializeAndRunStartupTransition:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v30 = a3;
  kdebug_trace();
  BSDispatchQueueAssertMain();
  if (self->_ranOnce)
  {
    [SBStartupTransitionController initializeAndRunStartupTransition:];
  }

  self->_ranOnce = 1;
  v32 = [(SBStartupTransitionContextPersistence *)self->_transitionContextPersistence readTransitionContext];
  v4 = v32;
  if ([v32 hasUserSwitchOverlayMismatch])
  {
    v5 = [v32 overlay];
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:0.5];
    [v5 dismissWithAnimation:v6];

    v4 = v32;
  }

  v44 = 0;
  v7 = [(SBStartupTransitionFactory *)self->_transitionFactory transitionForContext:v4 outDestination:&v44];
  transition = self->_transition;
  self->_transition = v7;

  if (!self->_transition)
  {
    [SBStartupTransitionController initializeAndRunStartupTransition:];
  }

  objc_initWeak(&location, self);
  v9 = self->_transition;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke;
  v41[3] = &unk_2783B59B8;
  objc_copyWeak(&v42, &location);
  v41[4] = self;
  [(SBStartupTransition *)v9 registerBlockObserver:v41];
  v10 = [MEMORY[0x277CF05E8] dismissActions];
  renderOverlayDismissActions = self->_renderOverlayDismissActions;
  self->_renderOverlayDismissActions = v10;

  if ([(NSSet *)self->_renderOverlayDismissActions count]>= 2)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = self->_renderOverlayDismissActions;
    v14 = [(NSSet *)v13 countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          v19 = [v18 overlayDescriptor];
          v20 = [v19 isInterstitial];

          if (v20)
          {
            [v12 addObject:v18];
          }

          else
          {
            v15 = 1;
          }
        }

        v14 = [(NSSet *)v13 countByEnumeratingWithState:&v37 objects:v52 count:16];
      }

      while (v14);

      if ((v15 & 1) == 0 || ![v12 count])
      {
        goto LABEL_29;
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = v12;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v51 count:16];
      if (v22)
      {
        v23 = *v34;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v33 + 1) + 8 * j) dismiss];
          }

          v22 = [v21 countByEnumeratingWithState:&v33 objects:v51 count:16];
        }

        while (v22);
      }

      v13 = [MEMORY[0x277CBEB58] setWithSet:self->_renderOverlayDismissActions];
      [(NSSet *)v13 minusSet:v21];
      v25 = [MEMORY[0x277CBEB98] setWithSet:v13];
      v26 = self->_renderOverlayDismissActions;
      self->_renderOverlayDismissActions = v25;
    }

LABEL_29:
  }

  if (v31)
  {
    (v31)[2](v31, self->_transitionObserver, self->_transition);
  }

  v27 = SBLogWorkspace();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = NSStringFromStartupTransitionDestination(v44);
    v29 = self->_transition;
    *buf = 138543874;
    v46 = v28;
    v47 = 2114;
    v48 = v29;
    v49 = 2114;
    v50 = v32;
    _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "Startup transition destination: %{public}@, with transition: %{public}@ (context=%{public}@).", buf, 0x20u);
  }

  [(SBStartupTransition *)self->_transition begin];
  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

void __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke_2;
  v12[3] = &unk_2783B5990;
  v8 = WeakRetained;
  v13 = v8;
  [v7 addTransactionDidBeginBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke_3;
  v10[3] = &unk_2783B5990;
  v11 = v8;
  v9 = v8;
  [v7 addTransactionDidCompleteBlock:v10];
}

- (id)succinctDescription
{
  v2 = [(SBStartupTransitionController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBStartupTransitionController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBStartupTransitionController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBStartupTransitionController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

- (void)transactionDidBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBStartupTransitionController transactionDidBegin:];
    v4 = 0;
  }

  if (self->_transition != v4)
  {
    [SBStartupTransitionController transactionDidBegin:];
  }

  [(SBStartupTransitionContextPersistence *)self->_transitionContextPersistence saveContext:0];
}

- (void)transactionDidComplete:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBStartupTransitionController transactionDidComplete:];
  }

  if (self->_transition != v4)
  {
    [SBStartupTransitionController transactionDidComplete:];
  }

  v5 = SBLogWorkspace();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Startup transition completed.", buf, 2u);
  }

  transition = self->_transition;
  self->_transition = 0;

  transitionObserver = self->_transitionObserver;
  self->_transitionObserver = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBStartupTransitionController_transactionDidComplete___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__SBStartupTransitionController_transactionDidComplete___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D76620];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SBStartupTransitionController_transactionDidComplete___block_invoke_2;
  v3[3] = &unk_2783A8C18;
  v3[4] = *(a1 + 32);
  return [v1 _performBlockAfterCATransactionCommits:v3];
}

uint64_t __56__SBStartupTransitionController_transactionDidComplete___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = *(*(a1 + 32) + 56);
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    v5 = *MEMORY[0x277CDA7B8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 overlayDescriptor];
        v9 = [v8 isInterstitial];

        v10 = MEMORY[0x277CF0B70];
        if (v9)
        {
          v11 = [MEMORY[0x277CD9EF8] functionWithName:v5];
          v12 = [v10 settingsWithDuration:v11 timingFunction:0.75];
          [v7 dismissWithAnimation:v12];
        }

        else
        {
          v11 = [MEMORY[0x277CF0B70] settingsWithDuration:1.0];
          [v7 dismissWithAnimation:v11];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  return kdebug_trace();
}

- (void)initializeAndRunStartupTransition:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initializeAndRunStartupTransition:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transactionDidBegin:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transition" object:? file:? lineNumber:? description:?];
}

- (void)transactionDidBegin:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transactionDidComplete:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transition" object:? file:? lineNumber:? description:?];
}

- (void)transactionDidComplete:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end