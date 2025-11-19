@interface SBInCallPresentationManager
- (BOOL)_hasPendingDismissalOfSceneHandleWithPersistenceIdentifier:(id)a3;
- (BOOL)_isManagingSceneOrSceneHandleWithPersistenceIdentifier:(id)a3;
- (BOOL)canHandleOpenApplicationRequestForApplication:(id)a3;
- (BOOL)disablesSystemVolumeHUDForCategory:(id)a3;
- (BOOL)disallowsLockHardwareButtonDoublePress;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)hasFullscreenActiveCallInSwitcher;
- (BOOL)hasOverrideAppSceneEntityForLaunchingApplication:(id)a3;
- (BOOL)inCallClientPresentationSession:(id)a3 canRestoreToPreviousEntity:(id)a4;
- (BOOL)inCallClientPresentationSessionAmbientPresentationActive:(id)a3;
- (BOOL)isHostingAnApp;
- (BOOL)isSceneHandleCloseableInSwitcher:(id)a3;
- (BOOL)supportsBecomingVisibleWhenUnlockingFromSource:(int)a3 wakingDisplay:(BOOL)a4;
- (BOOL)supportsHandlingDeviceLock;
- (SBHideSharePlayContentFromSharedScreenController)hideSharePlayContentFromSharedScreenController;
- (SBInCallPresentationManager)initWithWindowSceneManager:(id)a3 applicationController:(id)a4 bannerManager:(id)a5;
- (SBInCallPresentationManagerDelegate)delegate;
- (SBInCallPresentationSession)_lastPresentationSession;
- (UIEdgeInsets)inCallClientPresentationSessionResolvedPIPDodgingInsets:(id)a3;
- (id)_hostedPresentationSessions;
- (id)_newClientPresentationSessionWithSceneHandle:(id)a3;
- (id)_sessionForSceneWithIdentifier:(id)a3;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)inCallClientPresentationSession:(id)a3 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:(id)a4;
- (id)overrideAppSceneEntityForLaunchingApplication:(id)a3;
- (id)scenesForBacklightSession;
- (id)sessionForSceneIdentifier:(id)a3;
- (int64_t)inCallClientPresentationSessionInterfaceOrientationForBannerPresentation:(id)a3;
- (int64_t)inCallClientPresentationSessionInterfaceOrientationForTransientOverlayPresentation:(id)a3;
- (void)_actionButtonPressed:(id)a3;
- (void)_applicationDidExit:(id)a3;
- (void)_dismissAllPresentations;
- (void)_dismissAllPresentationsForApplication:(id)a3;
- (void)_dismissClientWithIdentifier:(id)a3 animated:(BOOL)a4 analyticsSource:(id)a5 reason:(id)a6 completion:(id)a7;
- (void)_evaluateNonModalSuppressionAssertions;
- (void)_runZombieChecksForScene:(id)a3;
- (void)_runZombieChecksForSceneHandle:(id)a3;
- (void)ensureSwitcherInclusionForRestoringFromPIPForSceneWithPersistenceIdentifier:(id)a3 completion:(id)a4;
- (void)handleAccessoryAttachWithCompletion:(id)a3;
- (void)handleDeviceLockFromSource:(int)a3;
- (void)handleOpenApplicationRequest:(id)a3 clientWorkspace:(id)a4 actions:(id)a5 origin:(id)a6 options:(id)a7 withResult:(id)a8;
- (void)handlePresentationForActivityContinuationIdentifier:(id)a3;
- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3;
- (void)inCallClientPresentationSession:(id)a3 handleDestroySceneActionWithReason:(int64_t)a4 analyticsSource:(id)a5 completion:(id)a6;
- (void)inCallClientPresentationSessionInvalidateBacklightEnvironment:(id)a3;
- (void)inCallClientPresentationSessionSceneWasDestroyed:(id)a3;
- (void)inCallPresentationRequestServer:(id)a3 clientWithIdentifier:(id)a4 requestsPresentationWithConfiguration:(id)a5 completion:(id)a6;
- (void)reactivateInCallForReason:(int64_t)a3;
- (void)sceneManager:(id)a3 willMoveScene:(id)a4 toSceneManager:(id)a5;
@end

@implementation SBInCallPresentationManager

- (id)_hostedPresentationSessions
{
  v3 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = [(NSMutableArray *)self->_pendingInvalidationSessions arrayByAddingObjectsFromArray:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (BOOL)isHostingAnApp
{
  v2 = [(SBInCallPresentationManager *)self _hostedPresentationSessions];
  v3 = [v2 bs_containsObjectPassingTest:&__block_literal_global_193];

  return v3;
}

- (id)scenesForBacklightSession
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 sceneHandle];
        v11 = [v10 sceneIfExists];

        if (v11 && [v9 isShowingOnEmbeddedDisplay])
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SBInCallPresentationManager)initWithWindowSceneManager:(id)a3 applicationController:(id)a4 bannerManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = SBInCallPresentationManager;
  v12 = [(SBInCallPresentationManager *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_windowSceneManager, a3);
    objc_storeStrong(&v13->_applicationController, a4);
    v14 = objc_alloc_init(SBInCallPresentationRequestServer);
    presentationRequestServer = v13->_presentationRequestServer;
    v13->_presentationRequestServer = v14;

    [(SBInCallPresentationRequestServer *)v13->_presentationRequestServer setDelegate:v13];
    [(SBInCallPresentationRequestServer *)v13->_presentationRequestServer activate];
    v16 = objc_alloc_init(SBInCallBannerAuthority);
    inCallBannerAuthority = v13->_inCallBannerAuthority;
    v13->_inCallBannerAuthority = v16;

    v18 = v13->_inCallBannerAuthority;
    v19 = +[SBInCallBannerPresentableViewController requesterIdentifier];
    [v11 registerAuthority:v18 forRequesterIdentifier:v19];

    v20 = objc_alloc_init(SBExpanseBannerAuthority);
    expanseBannerAuthority = v13->_expanseBannerAuthority;
    v13->_expanseBannerAuthority = v20;

    [v11 registerAuthority:v13->_expanseBannerAuthority forRequesterIdentifier:@"com.apple.ConversationKit"];
    v22 = [MEMORY[0x277D0AC98] storeForApplication:@"com.apple.InCallService"];
    [v22 removeAllSceneDataStores];

    v23 = [MEMORY[0x277D0AAD8] sharedInstance];
    [v23 addObserver:v13];

    v24 = [SBApp backlightEnvironmentSessionProvider];
    [v24 registerBacklightEnvironmentSceneProvider:v13];

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v13 selector:sel__actionButtonPressed_ name:*MEMORY[0x277D679D8] object:0];

    objc_initWeak(&location, v13);
    v26 = MEMORY[0x277CF0BD0];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __94__SBInCallPresentationManager_initWithWindowSceneManager_applicationController_bannerManager___block_invoke;
    v30[3] = &unk_2783AD688;
    objc_copyWeak(&v31, &location);
    v27 = [v26 assertionWithIdentifier:@"Non Modal Call Suppression Assertion" stateDidChangeHandler:v30];
    nonModalSuppressionAssertions = v13->_nonModalSuppressionAssertions;
    v13->_nonModalSuppressionAssertions = v27;

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __94__SBInCallPresentationManager_initWithWindowSceneManager_applicationController_bannerManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _evaluateNonModalSuppressionAssertions];
}

- (void)_evaluateNonModalSuppressionAssertions
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(SBInCallPresentationManager *)self _shouldSuppressNonModalCalls];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setNonModalPresentationsSuppressed:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)inCallClientPresentationSession:(id)a3 handleDestroySceneActionWithReason:(int64_t)a4 analyticsSource:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__68;
  v32 = __Block_byref_object_dispose__68;
  v33 = 0;
  clientIdentifierToPresentationSession = self->_clientIdentifierToPresentationSession;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __125__SBInCallPresentationManager_inCallClientPresentationSession_handleDestroySceneActionWithReason_analyticsSource_completion___block_invoke;
  v25 = &unk_2783B7CD0;
  v13 = v9;
  v26 = v13;
  v27 = &v28;
  [(NSMutableDictionary *)clientIdentifierToPresentationSession enumerateKeysAndObjectsUsingBlock:&v22];
  if (v29[5])
  {
    v14 = SBLogInCallPresentation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 sceneHandle];
      v16 = [v15 sceneIdentifier];
      v17 = SBSUIInCallWindowSceneSessionDestructionReasonDescription();
      *buf = 138543874;
      v35 = v16;
      v36 = 2114;
      v37 = v17;
      v38 = 2114;
      v39 = v10;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Dismissing client with scene identifier %{public}@ from destroy scene action request with reason %{public}@, analyticsSource: %{public}@", buf, 0x20u);
    }

    [(SBInCallPresentationManager *)self _dismissClientWithIdentifier:v29[5] animated:1 analyticsSource:v10 reason:@"client request" completion:v11];
  }

  else
  {
    v18 = SBLogInCallPresentation();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v13 sceneHandle];
      v20 = [v19 sceneIdentifier];
      v21 = SBSUIInCallWindowSceneSessionDestructionReasonDescription();
      *buf = 138543618;
      v35 = v20;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Failed to find client identifier for scene identifier %{public}@ to handle destroy scene action with reason %{public}@", buf, 0x16u);
    }

    if (v11)
    {
      v11[2](v11, 1);
    }
  }

  _Block_object_dispose(&v28, 8);
}

void __125__SBInCallPresentationManager_inCallClientPresentationSession_handleDestroySceneActionWithReason_analyticsSource_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)inCallClientPresentationSessionSceneWasDestroyed:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__68;
  v23 = __Block_byref_object_dispose__68;
  v24 = 0;
  clientIdentifierToPresentationSession = self->_clientIdentifierToPresentationSession;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __80__SBInCallPresentationManager_inCallClientPresentationSessionSceneWasDestroyed___block_invoke;
  v16 = &unk_2783B7CD0;
  v6 = v4;
  v17 = v6;
  v18 = &v19;
  [(NSMutableDictionary *)clientIdentifierToPresentationSession enumerateKeysAndObjectsUsingBlock:&v13];
  if (v20[5])
  {
    v7 = SBLogInCallPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 sceneHandle];
      v9 = [v8 sceneIdentifier];
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Dismissing client with scene identifier %{public}@ due to scene destruction", buf, 0xCu);
    }

    [(SBInCallPresentationManager *)self _dismissClientWithIdentifier:v20[5] animated:0 analyticsSource:*MEMORY[0x277D67F00] reason:@"inCallClientPresentationSessionSceneWasDestroyed" completion:0];
  }

  else
  {
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 sceneHandle];
      v12 = [v11 sceneIdentifier];
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Already removed client identifier %{public}@ from set of presentation sessions which means we think we already have handled inCallClientPresentationSessionSceneWasDestroyed and can safely do nothing.", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __80__SBInCallPresentationManager_inCallClientPresentationSessionSceneWasDestroyed___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)inCallClientPresentationSessionInvalidateBacklightEnvironment:(id)a3
{
  v4 = [SBApp backlightEnvironmentSessionProvider];
  [v4 invalidateBacklightScenesForProvider:self];
}

- (int64_t)inCallClientPresentationSessionInterfaceOrientationForBannerPresentation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 windowScene];

  v7 = [WeakRetained inCallPresentationManager:self interfaceOrientationForBannerPresentationInWindowScene:v6];
  return v7;
}

- (int64_t)inCallClientPresentationSessionInterfaceOrientationForTransientOverlayPresentation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [v4 windowScene];

  v7 = [WeakRetained inCallPresentationManager:self interfaceOrientationForTransientOverlayPresentationInWindowScene:v6];
  return v7;
}

- (id)inCallClientPresentationSession:(id)a3 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:(id)a4
{
  v5 = a4;
  v6 = [(SBInCallPresentationManager *)self hideSharePlayContentFromSharedScreenController];
  v7 = [v6 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:v5];

  return v7;
}

- (BOOL)inCallClientPresentationSession:(id)a3 canRestoreToPreviousEntity:(id)a4
{
  v6 = a4;
  v7 = [a3 sceneHandle];
  v8 = [v6 deviceApplicationSceneEntity];

  v9 = [v8 sceneHandle];

  v10 = [v9 application];
  v11 = [v7 application];
  if (([v10 isEqual:v11] & 1) == 0)
  {

    goto LABEL_5;
  }

  v12 = [v9 persistenceIdentifier];
  v13 = [v7 persistenceIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
LABEL_5:
    v16 = 1;
    goto LABEL_6;
  }

  v15 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__SBInCallPresentationManager_inCallClientPresentationSession_canRestoreToPreviousEntity___block_invoke;
  v18[3] = &unk_2783B7CF8;
  v19 = v9;
  v16 = [v15 bs_containsObjectPassingTest:v18];

LABEL_6:
  return v16;
}

uint64_t __90__SBInCallPresentationManager_inCallClientPresentationSession_canRestoreToPreviousEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sceneHandle];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 canBeRestored];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)inCallClientPresentationSessionAmbientPresentationActive:(id)a3
{
  v3 = [(SBInCallPresentationManager *)self windowSceneManager];
  v4 = [v3 activeDisplayWindowScene];
  v5 = [v4 ambientPresentationController];
  v6 = [v5 isPresented];

  return v6;
}

- (void)inCallPresentationRequestServer:(id)a3 clientWithIdentifier:(id)a4 requestsPresentationWithConfiguration:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 sceneBundleIdentifier];
  v13 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:v12];
  v19 = v9;
  v20 = v10;
  v21 = v12;
  v22 = v11;
  v14 = v12;
  v15 = v10;
  v16 = v13;
  v17 = v11;
  v18 = v9;
  BSDispatchMain();
}

void __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];

  if (v2)
  {
    v3 = SBLogInCallPresentation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138543362;
      v69 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Skipping presentation for client with identifier %{public}@ because there is already a presentation session", buf, 0xCu);
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }

    return;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [v6 processState];
    v8 = [v7 isRunning];

    if (v8)
    {
      v9 = *(*(a1 + 32) + 56);
      v10 = [*(a1 + 48) bundleIdentifier];
      LOBYTE(v9) = [v9 containsObject:v10];

      if ((v9 & 1) == 0)
      {
        v11 = *(*(a1 + 32) + 56);
        if (!v11)
        {
          v12 = [MEMORY[0x277CBEB58] set];
          v13 = *(a1 + 32);
          v14 = *(v13 + 56);
          *(v13 + 56) = v12;

          v11 = *(*(a1 + 32) + 56);
        }

        v15 = [*(a1 + 48) bundleIdentifier];
        [v11 addObject:v15];

        v16 = [MEMORY[0x277CCAB98] defaultCenter];
        [v16 addObserver:*(a1 + 32) selector:sel__applicationDidExit_ name:@"SBApplicationDidExitNotification" object:*(a1 + 48)];
      }

      v17 = [*(*(a1 + 32) + 104) activeDisplayWindowScene];
      v18 = [v17 sceneManager];

      if ([*(a1 + 56) isUserInitiated])
      {
        v19 = [*(a1 + 56) preferredPresentationMode] == 3;
      }

      else
      {
        v19 = 0;
      }

      v26 = [v18 displayIdentity];
      if ([v26 isContinuityDisplay])
      {
        v27 = v19 | ~[*(a1 + 56) shouldPreferContinuityDisplayForFullScreenPresentation];

        if ((v27 & 1) == 0)
        {
          goto LABEL_28;
        }

        v26 = [*(*(a1 + 32) + 104) embeddedDisplayWindowScene];
        v28 = [v26 sceneManager];

        v18 = v28;
      }

LABEL_28:
      if (([*(*(a1 + 32) + 64) containsObject:v18] & 1) == 0)
      {
        [v18 addObserver:*(a1 + 32)];
        [*(*(a1 + 32) + 64) addObject:v18];
      }

      v29 = *(a1 + 48);
      v30 = [v18 newSceneIdentityForApplication:v29];
      v31 = [v18 displayIdentity];
      v32 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v29 sceneIdentity:v30 displayIdentity:v31];

      v33 = [v32 sceneDefinition];
      v34 = [v33 mutableCopy];

      v35 = [MEMORY[0x277D67BC0] specification];
      [v34 setSpecification:v35];

      [v32 setSceneDefinition:v34];
      v36 = [*(a1 + 56) preferredPresentationMode];
      v37 = objc_opt_class();
      v38 = [v18 fetchOrCreateApplicationSceneHandleForRequest:v32];
      v39 = SBSafeCast(v37, v38);

      if (v39)
      {
        if ((v36 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v40 = +[SBLockScreenManager sharedInstanceIfExists];
          v41 = [v40 isUILocked];

          if ((v41 & 1) == 0)
          {
            v42 = +[SBAssistantController sharedInstanceIfExists];
            [v42 dismissAssistantViewInEverySceneIfNecessary];
          }
        }

        v43 = [*(a1 + 32) _newClientPresentationSessionWithSceneHandle:v39];
        [v43 setNonModalPresentationsSuppressed:{objc_msgSend(*(a1 + 32), "_shouldSuppressNonModalCalls")}];
        if (v43)
        {
          v44 = *(*(a1 + 32) + 40);
          if (!v44)
          {
            v45 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
            v46 = *(a1 + 32);
            v47 = *(v46 + 40);
            *(v46 + 40) = v45;

            v44 = *(*(a1 + 32) + 40);
          }

          [v44 setObject:v43 forKey:*(a1 + 40)];
          [v43 setDelegate:*(a1 + 32)];
          [*(a1 + 56) preferredBannerHeight];
          [v43 setPreferredBannerHeight:?];
          v48 = SBLogInCallPresentation();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [v39 sceneIdentifier];
            v50 = SBSInCallPresentationModeDescription();
            *buf = 138543618;
            v69 = v49;
            v70 = 2114;
            v71 = v50;
            _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "Requesting client presentation session presentation for scene identifier: %{public}@ with initial presentation mode: %{public}@", buf, 0x16u);
          }

          [v43 setShouldIgnoreHomeIndicatorAutoHiddenClientSettings:v36 != 3];
          v51 = [SBApp backlightEnvironmentSessionProvider];
          [v51 invalidateBacklightScenesForProvider:*(a1 + 32)];

          v52 = *MEMORY[0x277D67EF0];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_41;
          v62[3] = &unk_2783AAD08;
          v53 = *(a1 + 56);
          v63 = *(a1 + 48);
          v54 = v43;
          v55 = *(a1 + 32);
          v56 = *(a1 + 40);
          v64 = v54;
          v65 = v55;
          v66 = v56;
          v67 = *(a1 + 72);
          [v54 presentWithRequestedConfiguration:v53 animated:1 analyticsSource:v52 completion:v62];

          v57 = v63;
        }

        else
        {
          v60 = SBLogInCallPresentation();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_cold_1();
          }

          v61 = *(a1 + 72);
          if (!v61)
          {
            goto LABEL_49;
          }

          v57 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBInCallPresentationManagerErrorDomain" code:-2004 userInfo:0];
          (*(v61 + 16))(v61, v57);
        }
      }

      else
      {
        v58 = SBLogInCallPresentation();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_cold_2();
        }

        v59 = *(a1 + 72);
        if (!v59)
        {
          goto LABEL_50;
        }

        v43 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBInCallPresentationManagerErrorDomain" code:-2003 userInfo:0];
        (*(v59 + 16))(v59, v43);
      }

LABEL_49:

LABEL_50:
      goto LABEL_51;
    }

    v24 = SBLogInCallPresentation();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 138543362;
      v69 = v25;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Skipping presentation for client with identifier %{public}@ because it is no longer running", buf, 0xCu);
    }

    [*(a1 + 32) _dismissAllPresentationsForApplication:*(a1 + 48)];
    v21 = *(a1 + 72);
    if (v21)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = -2003;
      goto LABEL_22;
    }
  }

  else
  {
    v20 = SBLogInCallPresentation();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_cold_3();
    }

    v21 = *(a1 + 72);
    if (v21)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = -2002;
LABEL_22:
      v18 = [v22 errorWithDomain:@"SBInCallPresentationManagerErrorDomain" code:v23 userInfo:0];
      (*(v21 + 16))(v21, v18);
LABEL_51:
    }
  }
}

void __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_41(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) processState];
  v3 = [v2 isRunning];

  v4 = SBLogInCallPresentation();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Successfully presented %@", buf, 0xCu);
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Immediately dismissing session %{public}@ because the application is no longer running", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *MEMORY[0x277D67F00];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_45;
    v12[3] = &unk_2783A9C98;
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    [v9 _dismissClientWithIdentifier:v10 animated:0 analyticsSource:v11 reason:@"shouldImmediatelyDismiss" completion:v12];
  }
}

void __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_45(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = SBLogInCallPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Immediately dismissed session %{public}@ with success %{BOOL}u", &v8, 0x12u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBInCallPresentationManagerErrorDomain" code:-2004 userInfo:0];
    (*(v6 + 16))(v6, v7);
  }
}

- (UIEdgeInsets)inCallClientPresentationSessionResolvedPIPDodgingInsets:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v6 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues:a3];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v20 + 1) + 8 * v11) preferredPIPDodgingInsets];
        UIEdgeInsetsMax();
        v4 = v12;
        v3 = v13;
        v6 = v14;
        v5 = v15;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = v4;
  v17 = v3;
  v18 = v6;
  v19 = v5;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (id)hostedAppSceneHandle
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"SBInCallPresentationManager.m" lineNumber:362 description:{@"%@ should never be called", v5}];

  return 0;
}

- (id)hostedAppSceneHandles
{
  v2 = [(SBInCallPresentationManager *)self _hostedPresentationSessions];
  v3 = [v2 bs_compactMap:&__block_literal_global_57_1];
  v4 = [v3 bs_flatten];

  return v4;
}

- (void)hostedAppWillRotateToInterfaceOrientation:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SBInCallPresentationManager *)self _hostedPresentationSessions];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) hostedAppWillRotateToInterfaceOrientation:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)sceneManager:(id)a3 willMoveScene:(id)a4 toSceneManager:(id)a5
{
  v9 = a5;
  v7 = [a4 identifier];
  v8 = [(SBInCallPresentationManager *)self sessionForSceneIdentifier:v7];

  if (v8 && ([(NSMutableSet *)self->_observedSceneManagers containsObject:v9]& 1) == 0)
  {
    [v9 addObserver:self];
    [(NSMutableSet *)self->_observedSceneManagers addObject:v9];
  }
}

- (BOOL)hasOverrideAppSceneEntityForLaunchingApplication:(id)a3
{
  v3 = [(SBInCallPresentationManager *)self overrideAppSceneEntityForLaunchingApplication:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)overrideAppSceneEntityForLaunchingApplication:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) overrideAppSceneEntityForLaunchingApplication:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)sessionForSceneIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 sceneHandle];
        v11 = [v10 sceneIdentifier];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)supportsHandlingDeviceLock
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) supportsHandlingDeviceLock])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)disallowsLockHardwareButtonDoublePress
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) disallowsLockHardwareButtonDoublePress])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)supportsBecomingVisibleWhenUnlockingFromSource:(int)a3 wakingDisplay:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * i) supportsBecomingVisibleWhenUnlockingFromSource:v5 wakingDisplay:v4])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)handleAccessoryAttachWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) handleAccessoryAttachWithCompletion:v4])
        {

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v4[2](v4, 0);
LABEL_11:
}

- (void)handlePresentationForActivityContinuationIdentifier:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isSpecializedAPISupported])
  {
    v3 = [MEMORY[0x277D6EDF8] sharedInstance];
    [v3 activateInCallUIWithActivityContinuationIdentifier:v4];
  }
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) handleHeadsetButtonPress:v3])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)handleDeviceLockFromSource:(int)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = SBLogInCallPresentation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "SBInCallPresentationManager handling handleDeviceLockFromSource", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectEnumerator];
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        if ([v9 supportsHandlingDeviceLock])
        {
          if (!v5)
          {
            v5 = [MEMORY[0x277CBEB58] setWithCapacity:1];
          }

          [v5 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v5 count])
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    [v5 allObjects];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    obj = v26 = 0u;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * j);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __58__SBInCallPresentationManager_handleDeviceLockFromSource___block_invoke;
          v19[3] = &unk_2783B7D88;
          v20 = v5;
          v21 = v14;
          v24 = buf;
          v22 = WeakRetained;
          v23 = self;
          [v14 handleDeviceLockFromSource:a3 completion:v19];
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v11);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = SBLogInCallPresentation();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SBInCallPresentationManager handleDeviceLockFromSource:];
    }

    [WeakRetained inCallPresentationManagerRequestsHandlingOfDeferredUILock:self];
  }
}

uint64_t __58__SBInCallPresentationManager_handleDeviceLockFromSource___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeObject:*(a1 + 40)];
  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  result = [*(a1 + 32) count];
  if (!result && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v5 = SBLogInCallPresentation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 64) + 8) + 24);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBLogInCallPresentationManager finished handling handleDeviceLockFromSource, hasAnySessionConsumedLock: %{BOOL}u", v7, 8u);
    }

    return [*(a1 + 48) inCallPresentationManagerRequestsHandlingOfDeferredUILock:*(a1 + 56)];
  }

  return result;
}

- (void)reactivateInCallForReason:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = SBLogInCallPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a3 - 1) > 2)
    {
      v5 = @".invalid";
    }

    else
    {
      v5 = off_2783B7E20[a3 - 1];
    }

    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Reactivating InCall for reason: %{public}@", &v8, 0xCu);
  }

  if (!+[SBInCallPresentationManager isSpecializedAPISupported])
  {
    v6 = +[SBWorkspace mainWorkspace];
    v7 = [v6 inCallTransientOverlayManager];
    [v7 presentTransientOverlay];
  }
}

- (BOOL)canHandleOpenApplicationRequestForApplication:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:@"com.apple.InCallService"])
  {
    v5 = [v3 processState];
    v6 = [v5 isRunning];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleOpenApplicationRequest:(id)a3 clientWorkspace:(id)a4 actions:(id)a5 origin:(id)a6 options:(id)a7 withResult:(id)a8
{
  v64 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v13 = a4;
  v14 = a5;
  v53 = a6;
  v15 = a7;
  v16 = a8;
  v17 = SBLogInCallPresentation();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = v53;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Handling open application request from origin %{public}@", buf, 0xCu);
  }

  v18 = [v14 mutableCopy];
  v19 = [v15 objectForKey:*MEMORY[0x277D0AC28]];
  v20 = [v19 isEqualToString:*MEMORY[0x277D67088]];

  v50 = v15;
  v51 = v13;
  v49 = v16;
  if (v20)
  {
    if (!v18)
    {
      v18 = [MEMORY[0x277CBEB58] set];
    }

    v21 = objc_alloc(MEMORY[0x277D757D0]);
    v22 = [MEMORY[0x277CBEBC0] URLWithString:@"facetime://?showInCallUI=1"];
    v23 = [v21 initWithURL:v22 workspaceOriginatingProcess:v53];

    [v18 addObject:v23];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v57;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v57 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v56 + 1) + 8 * i);
        if ([v29 UIActionType] == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v30 = objc_alloc(MEMORY[0x277D757D0]);
          v31 = [v29 url];
          v32 = [v29 workspaceOriginatingProcess];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = v53;
          }

          v35 = [v30 initWithURL:v31 workspaceOriginatingProcess:v34];

          [v18 removeObject:v29];
          [v18 addObject:v35];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v26);
  }

  v36 = [v52 processState];
  v37 = [v36 pid];

  if (v37 != -1)
  {
    v48 = [MEMORY[0x277D47008] targetWithPid:v37];
    v38 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
    v60[0] = v38;
    v39 = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
    v60[1] = v39;
    v40 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
    v60[2] = v40;
    v41 = [MEMORY[0x277D46FC0] grantWithResistance:40];
    v60[3] = v41;
    v42 = [MEMORY[0x277D46E30] grant];
    v60[4] = v42;
    v43 = [MEMORY[0x277D46FD0] withReason:9];
    v60[5] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:6];

    v45 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"SBInCallPresentationManagerHandlingOpenApplication" target:v48 attributes:v44];
    [v45 acquireWithError:0];
    v46 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__SBInCallPresentationManager_handleOpenApplicationRequest_clientWorkspace_actions_origin_options_withResult___block_invoke;
    block[3] = &unk_2783A8C18;
    v55 = v45;
    v47 = v45;
    dispatch_after(v46, MEMORY[0x277D85CD0], block);
  }

  [v51 sendActions:v18];
  v49[2](v49, 0);
}

- (void)ensureSwitcherInclusionForRestoringFromPIPForSceneWithPersistenceIdentifier:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v13 = [v12 sceneHandle];
      v14 = [v13 sceneIfExists];
      v15 = [v14 settings];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        v18 = (objc_opt_isKindOfClass() & 1) != 0 ? v17 : 0;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [v19 persistenceIdentifier];
      v21 = [v20 isEqualToString:v6];

      if (v21)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    v22 = v12;

    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = v24;
    [v22 ensureInclusionInSwitcherForRestoreFromPIPWithCompletion:v24];
  }

  else
  {
LABEL_14:

LABEL_17:
    v23 = v24;
    (*(v24 + 2))(v24, 0);
  }
}

- (BOOL)hasFullscreenActiveCallInSwitcher
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(SBInCallPresentationManager *)self _hostedPresentationSessions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isFullscreenCallInSwitcher])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (SBHideSharePlayContentFromSharedScreenController)hideSharePlayContentFromSharedScreenController
{
  lazy_hideSharePlayContentFromSharedScreenController = self->_lazy_hideSharePlayContentFromSharedScreenController;
  if (!lazy_hideSharePlayContentFromSharedScreenController)
  {
    v4 = objc_alloc_init(SBHideSharePlayContentFromSharedScreenController);
    v5 = self->_lazy_hideSharePlayContentFromSharedScreenController;
    self->_lazy_hideSharePlayContentFromSharedScreenController = v4;

    lazy_hideSharePlayContentFromSharedScreenController = self->_lazy_hideSharePlayContentFromSharedScreenController;
  }

  return lazy_hideSharePlayContentFromSharedScreenController;
}

- (BOOL)disablesSystemVolumeHUDForCategory:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SBInCallPresentationManager_disablesSystemVolumeHUDForCategory___block_invoke;
  v9[3] = &unk_2783B7CF8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_containsObjectPassingTest:v9];

  return v7;
}

- (BOOL)isSceneHandleCloseableInSwitcher:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBInCallPresentationManager_isSceneHandleCloseableInSwitcher___block_invoke;
  v9[3] = &unk_2783B7CF8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_containsObjectPassingTest:v9];

  return v7 ^ 1;
}

uint64_t __64__SBInCallPresentationManager_isSceneHandleCloseableInSwitcher___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sceneHandle];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 isCloseableInSwitcher] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_dismissAllPresentationsForApplication:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession copy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBInCallPresentationManager__dismissAllPresentationsForApplication___block_invoke;
  v10[3] = &unk_2783B7DB0;
  v6 = v4;
  v12 = self;
  v13 = &v14;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  if ((v15[3] & 1) == 0)
  {
    v7 = MEMORY[0x277D0AC98];
    v8 = [v6 bundleIdentifier];
    v9 = [v7 storeForApplication:v8];
    [v9 removeAllSceneDataStores];
  }

  _Block_object_dispose(&v14, 8);
}

void __70__SBInCallPresentationManager__dismissAllPresentationsForApplication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 sceneHandle];
  v6 = [v5 application];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) _dismissClientWithIdentifier:v8 animated:1 analyticsSource:*MEMORY[0x277D67F00] reason:@"_dismissAllPresentationsForApplication" completion:0];
  }
}

- (void)_dismissAllPresentations
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession copy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = *MEMORY[0x277D67F20];
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBInCallPresentationManager *)self _dismissClientWithIdentifier:*(*(&v10 + 1) + 8 * v9++) animated:1 analyticsSource:v8 reason:@"_dismissAllPresentations" completion:0];
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (SBInCallPresentationSession)_lastPresentationSession
{
  v2 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v3 = [v2 lastObject];

  return v3;
}

- (id)_sessionForSceneWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__68;
  v16 = __Block_byref_object_dispose__68;
  v17 = 0;
  clientIdentifierToPresentationSession = self->_clientIdentifierToPresentationSession;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SBInCallPresentationManager__sessionForSceneWithIdentifier___block_invoke;
  v9[3] = &unk_2783B7DD8;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(NSMutableDictionary *)clientIdentifierToPresentationSession enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__SBInCallPresentationManager__sessionForSceneWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = v7;
  v9 = *(a1 + 40);
  if (!*(*(v9 + 8) + 40))
  {
    v10 = [v7 sceneHandle];
    v11 = [v10 sceneIdentifier];
    v12 = [v11 isEqualToString:*(a1 + 32)];

    v9 = *(a1 + 40);
    if (v12)
    {
      objc_storeStrong((*(v9 + 8) + 40), a3);
      v9 = *(a1 + 40);
    }
  }

  if (*(*(v9 + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)_actionButtonPressed:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues:a3];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) handleActionButtonPressed];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_dismissClientWithIdentifier:(id)a3 animated:(BOOL)a4 analyticsSource:(id)a5 reason:(id)a6 completion:(id)a7
{
  v10 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession objectForKey:v12];
  v17 = [v16 sceneHandle];
  v18 = [v17 sceneIdentifier];

  if (v16 && ([(NSMutableArray *)self->_pendingInvalidationSessions containsObject:v16]& 1) == 0)
  {
    pendingInvalidationSessions = self->_pendingInvalidationSessions;
    if (!pendingInvalidationSessions)
    {
      v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v21 = self->_pendingInvalidationSessions;
      self->_pendingInvalidationSessions = v20;

      pendingInvalidationSessions = self->_pendingInvalidationSessions;
    }

    [(NSMutableArray *)pendingInvalidationSessions addObject:v16];
    v22 = SBLogInCallPresentation();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v30 = v16;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "starting to destroy %{public}@ with reason %{public}@", buf, 0x16u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke;
    v23[3] = &unk_2783B7E00;
    v24 = v16;
    v25 = self;
    v26 = v12;
    v27 = v18;
    v28 = v15;
    [v24 dismissAndFinalizeSceneDestructionAnimated:v10 analyticsSource:v13 completion:v23];
  }

  else if (v15)
  {
    (*(v15 + 2))(v15, 1);
  }
}

uint64_t __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = SBLogInCallPresentation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v13 = 138543618;
    v14 = v5;
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Destroyed %{public}@ with success %{BOOL}u", &v13, 0x12u);
  }

  if (a2)
  {
    [*(a1 + 32) invalidate];
    [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 48)];
    [*(*(a1 + 40) + 48) removeObject:*(a1 + 32)];
    if (![*(*(a1 + 40) + 48) count])
    {
      v6 = *(a1 + 40);
      v7 = *(v6 + 48);
      *(v6 + 48) = 0;
    }
  }

  v8 = [MEMORY[0x277D0AAD8] sharedInstance];
  v9 = [v8 sceneWithIdentifier:*(a1 + 56)];

  if (a2 && v9)
  {
    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke_cold_1();
    }
  }

  else
  {
    if (a2)
    {
      goto LABEL_14;
    }

    v10 = SBLogInCallPresentation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke_cold_2();
    }
  }

LABEL_14:
  v11 = [SBApp backlightEnvironmentSessionProvider];
  [v11 invalidateBacklightScenesForProvider:*(a1 + 40)];

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

- (id)_newClientPresentationSessionWithSceneHandle:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained inCallPresentationManager:self createPresentationSessionWithSceneHandle:v4];

  return v6;
}

- (void)_applicationDidExit:(id)a3
{
  v4 = [a3 object];
  [(SBInCallPresentationManager *)self _dismissAllPresentationsForApplication:v4];
}

- (void)_runZombieChecksForScene:(id)a3
{
  v4 = a3;
  v5 = [v4 settings];
  v6 = [v5 displayConfiguration];
  v10 = [v6 identity];

  v7 = +[SBSceneManagerCoordinator sharedInstance];
  v8 = [v7 sceneManagerForDisplayIdentity:v10];

  v9 = [v8 existingSceneHandleForScene:v4];

  if (v9)
  {
    [(SBInCallPresentationManager *)self _runZombieChecksForSceneHandle:v9];
  }
}

- (void)_runZombieChecksForSceneHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 application];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.InCallService"];

  if (v7)
  {
    v8 = [v4 sceneIfExists];

    if (v8)
    {
      v9 = [v4 persistenceIdentifier];
      v10 = [(SBInCallPresentationManager *)self _hasPendingDismissalOfSceneHandleWithPersistenceIdentifier:v9];

      v11 = [v4 persistenceIdentifier];
      if (v11 && !v10 && ![(SBInCallPresentationManager *)self _isManagingSceneOrSceneHandleWithPersistenceIdentifier:v11])
      {
        v12 = SBLogInCallPresentation();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SBInCallPresentationManager _runZombieChecksForSceneHandle:];
        }
      }
    }
  }
}

- (BOOL)_isManagingSceneOrSceneHandleWithPersistenceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_clientIdentifierToPresentationSession allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__SBInCallPresentationManager__isManagingSceneOrSceneHandleWithPersistenceIdentifier___block_invoke;
  v9[3] = &unk_2783B7CF8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_containsObjectPassingTest:v9];

  return v7;
}

uint64_t __86__SBInCallPresentationManager__isManagingSceneOrSceneHandleWithPersistenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneHandle];
  v4 = [v3 persistenceIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (BOOL)_hasPendingDismissalOfSceneHandleWithPersistenceIdentifier:(id)a3
{
  v4 = a3;
  pendingInvalidationSessions = self->_pendingInvalidationSessions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__SBInCallPresentationManager__hasPendingDismissalOfSceneHandleWithPersistenceIdentifier___block_invoke;
  v8[3] = &unk_2783B7CF8;
  v9 = v4;
  v6 = v4;
  LOBYTE(pendingInvalidationSessions) = [(NSMutableArray *)pendingInvalidationSessions bs_containsObjectPassingTest:v8];

  return pendingInvalidationSessions;
}

uint64_t __90__SBInCallPresentationManager__hasPendingDismissalOfSceneHandleWithPersistenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneHandle];
  v4 = [v3 persistenceIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (SBInCallPresentationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __133__SBInCallPresentationManager_inCallPresentationRequestServer_clientWithIdentifier_requestsPresentationWithConfiguration_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__SBInCallPresentationManager__dismissClientWithIdentifier_animated_analyticsSource_reason_completion___block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_4();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_ERROR, "Dismissal failed for %{public}@ with sceneRemovedFromSceneManager: %{BOOL}u", v2, 0x12u);
}

@end