@interface SBSceneLayoutWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (BOOL)_overrideInterfaceOrientationForOrientationMismatch:(int64_t *)mismatch;
- (BOOL)_runningOnManagedDisplay;
- (BOOL)_sceneEntities:(id)entities hasEntityRepresentingSceneID:(id)d;
- (BOOL)_shouldKeepSceneForSceneHandleForeground:(id)foreground;
- (BOOL)synchronizedTransactionGroup:(id)group shouldFailForSynchronizedTransaction:(id)transaction;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (SBSceneLayoutWorkspaceTransaction)initWithTransitionRequest:(id)request delegate:(id)delegate;
- (SBSceneLayoutWorkspaceTransactionDelegate)delegate;
- (id)_collectSceneIDsOfExternallyHostedApps;
- (id)_currentFlexibleWindowingAutoLayoutSpace;
- (id)_defaultDisplayLayoutTransitionReason;
- (id)sceneManager;
- (void)_begin;
- (void)_beginLayoutTransition;
- (void)_captureAppsForTransition;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_completeTransition;
- (void)_didComplete;
- (void)_evaluateTransitionCompletion;
- (void)_performTransition;
- (void)_prepareLayoutTransition;
- (void)_prepareScenesForSceneUpdates;
- (void)_prepareScenesForTransition;
- (void)_sendActivationResultWithError:(id)error;
- (void)_updateKeyboardContextMaskStyles:(BOOL)styles;
- (void)_updatePreferredDisplayLayoutTransitionReason:(id)reason;
- (void)_updateScenesForTransitionCompletion;
- (void)_willBegin;
- (void)_willFailWithReason:(id)reason;
- (void)_willInterruptWithReason:(id)reason;
- (void)dealloc;
- (void)performSynchronizedCommit;
- (void)synchronizedTransaction:(id)transaction didCommitSynchronizedTransactions:(id)transactions;
- (void)synchronizedTransaction:(id)transaction willCommitSynchronizedTransactions:(id)transactions;
- (void)synchronizedTransactionReadyToCommit:(id)commit;
- (void)transaction:(id)transaction didCommitSceneUpdate:(id)update;
- (void)transaction:(id)transaction didCreateScene:(id)scene;
- (void)transaction:(id)transaction didLaunchProcess:(id)process;
- (void)transaction:(id)transaction willCommitSceneUpdate:(id)update;
- (void)transaction:(id)transaction willLaunchProcess:(id)process;
- (void)transaction:(id)transaction willUpdateScene:(id)scene;
@end

@implementation SBSceneLayoutWorkspaceTransaction

- (id)_collectSceneIDsOfExternallyHostedApps
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    isVisible = [v4 isVisible];

    if (isVisible)
    {
      v6 = +[SBLockScreenManager sharedInstance];
      lockScreenEnvironment = [v6 lockScreenEnvironment];
      applicationHoster = [lockScreenEnvironment applicationHoster];
      [v3 addObject:applicationHoster];
    }

    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    secureAppViewController = [v9 secureAppViewController];
    if ([v9 isVisible] && secureAppViewController)
    {
      [v3 addObject:secureAppViewController];
    }

    v11 = +[SBWorkspace mainWorkspace];
    inCallPresentationManager = [v11 inCallPresentationManager];
    if (inCallPresentationManager)
    {
      [v3 addObject:inCallPresentationManager];
    }

    pipCoordinator = [v11 pipCoordinator];
    [v3 addObject:pipCoordinator];
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    homeScreenController = [windowScene homeScreenController];

    leftOfHomeAppViewController = [homeScreenController leftOfHomeAppViewController];
    if (leftOfHomeAppViewController)
    {
      [v3 addObject:leftOfHomeAppViewController];
    }
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__SBSceneLayoutWorkspaceTransaction__collectSceneIDsOfExternallyHostedApps__block_invoke;
  v22[3] = &unk_2783BAF48;
  v18 = v17;
  v23 = v18;
  [v3 enumerateObjectsUsingBlock:v22];
  if (SBSpotlightIsVisible())
  {
    v19 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewController];
    sceneIdentifier = [v19 sceneIdentifier];
    [v18 addObject:sceneIdentifier];
  }

  return v18;
}

- (void)_begin
{
  v3.receiver = self;
  v3.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v3 _begin];
  [(SBSceneLayoutWorkspaceTransaction *)self _performTransition];
}

- (id)_defaultDisplayLayoutTransitionReason
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  uniqueID = [transitionRequest uniqueID];
  v8 = [v3 stringWithFormat:@"%@:%@", v5, uniqueID];

  return v8;
}

- (void)_willBegin
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSceneLayoutWorkspaceTransaction.m" lineNumber:220 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)_performTransition
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_sceneUpdateTransactionGroup == nil" object:? file:? lineNumber:? description:?];
}

void __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isFrozen] & 1) == 0)
  {
    [*(*(a1 + 32) + 328) addObject:v3];
  }
}

void __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 sceneHandle];
  v4 = *(a1 + 32);
  v5 = [v10 sceneHandle];
  v6 = [v5 sceneIdentifier];
  LOBYTE(v4) = [v4 containsObject:v6];

  if ((v4 & 1) == 0)
  {
    [*(*(a1 + 40) + 312) addObject:v10];
  }

  v7 = [v3 application];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.InCallService"];

  if (v9)
  {
    [*(*(a1 + 40) + 312) addObject:v10];
    if (SBFIsSwitcherForegroundAppsAvailable())
    {
      [*(*(a1 + 40) + 328) addObject:v10];
    }
  }
}

- (BOOL)_runningOnManagedDisplay
{
  displayIdentity = [(SBWorkspaceTransaction *)self displayIdentity];
  v3 = [displayIdentity sb_displayWindowingMode] == 1;

  return v3;
}

- (void)_captureAppsForTransition
{
  v60 = *MEMORY[0x277D85DE8];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  originatingProcess = [transitionRequest originatingProcess];

  v7 = originatingProcess;
  v8 = +[SBApplicationController sharedInstanceIfExists];
  v9 = [v8 applicationWithPid:{objc_msgSend(originatingProcess, "pid")}];

  if (v9)
  {
    bundleIdentifier = [v9 bundleIdentifier];
    v11 = SBSDisplayLayoutTransitionReasonForSourceApplication();
    [(SBSceneLayoutWorkspaceTransaction *)self _updatePreferredDisplayLayoutTransitionReason:v11];
  }

  [(NSMutableSet *)self->_scenesToBackground removeAllObjects];
  [(NSMutableSet *)self->_fromAppSceneEntities removeAllObjects];
  [(NSMutableSet *)self->_toAppSceneEntities removeAllObjects];
  [(NSMutableSet *)self->_foregroundingAppSceneEntities removeAllObjects];
  [(NSMutableSet *)self->_backgroundingAppSceneEntities removeAllObjects];
  if (SBFIsSwitcherForegroundAppsAvailable())
  {
    _sceneEntitiesToForeground = [switcherController _sceneEntitiesToForeground];
    v13 = [_sceneEntitiesToForeground mutableCopy];
    foregroundingAppSceneEntities = self->_foregroundingAppSceneEntities;
    self->_foregroundingAppSceneEntities = v13;
  }

  else
  {
    applicationSceneEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext applicationSceneEntities];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke;
    v58[3] = &unk_2783BAE80;
    v58[4] = self;
    [applicationSceneEntities enumerateObjectsUsingBlock:v58];
  }

  previousApplicationSceneEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext previousApplicationSceneEntities];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_2;
  v57[3] = &unk_2783BAE80;
  v57[4] = self;
  [previousApplicationSceneEntities enumerateObjectsUsingBlock:v57];

  _collectSceneIDsOfExternallyHostedApps = [(SBSceneLayoutWorkspaceTransaction *)self _collectSceneIDsOfExternallyHostedApps];
  applicationSceneEntities2 = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext applicationSceneEntities];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_3;
  v54[3] = &unk_2783BAEA8;
  v19 = _collectSceneIDsOfExternallyHostedApps;
  v55 = v19;
  selfCopy = self;
  [applicationSceneEntities2 enumerateObjectsUsingBlock:v54];

  v20 = 0x277CBE000uLL;
  v21 = [MEMORY[0x277CBEB58] set];
  if (SBFIsSwitcherForegroundAppsAvailable())
  {
    v22 = v9;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    layoutStateApplicationSceneHandles = self->_fromAppSceneEntities;
    v24 = [(NSMutableSet *)layoutStateApplicationSceneHandles countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v41 = switcherController;
      v42 = originatingProcess;
      v26 = windowScene;
      v27 = *v51;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(layoutStateApplicationSceneHandles);
          }

          sceneHandle = [*(*(&v50 + 1) + 8 * i) sceneHandle];
          [v21 addObject:sceneHandle];
        }

        v25 = [(NSMutableSet *)layoutStateApplicationSceneHandles countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v25);
      windowScene = v26;
      switcherController = v41;
      v9 = v22;
      v7 = v42;
    }

    else
    {
      v7 = originatingProcess;
    }

    v20 = 0x277CBE000;
  }

  else
  {
    if (![(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
    {
      goto LABEL_21;
    }

    layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
    if ([(NSMutableSet *)layoutStateApplicationSceneHandles count])
    {
      [v21 unionSet:layoutStateApplicationSceneHandles];
    }
  }

LABEL_21:
  if ([(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    v43 = v7;
    v30 = v9;
    v31 = switcherController;
    v32 = windowScene;
    v33 = +[SBSceneManagerCoordinator sharedInstance];
    displayIdentity = [(SBWorkspaceTransaction *)self displayIdentity];
    v35 = [v33 sceneManagerForDisplayIdentity:displayIdentity];
    externalForegroundApplicationSceneHandles = [v35 externalForegroundApplicationSceneHandles];

    if ([externalForegroundApplicationSceneHandles count])
    {
      [v21 unionSet:externalForegroundApplicationSceneHandles];
    }

    windowScene = v32;
    switcherController = v31;
    v9 = v30;
    v7 = v43;
    v20 = 0x277CBE000uLL;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_4;
  v47[3] = &unk_2783BAED0;
  v48 = v19;
  selfCopy2 = self;
  v37 = v19;
  v38 = [v21 objectsPassingTest:v47];
  v39 = objc_alloc_init(*(v20 + 2904));
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_5;
  v44[3] = &unk_2783BAEF8;
  v45 = v39;
  selfCopy3 = self;
  v40 = v39;
  [v38 enumerateObjectsUsingBlock:v44];
  [(NSMutableSet *)self->_scenesToBackground unionSet:v40];
}

- (void)_prepareScenesForSceneUpdates
{
  v98 = *MEMORY[0x277D85DE8];
  if (self->_performSceneUpdates && [(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    selfCopy = self;
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    switcherController = [windowScene switcherController];

    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];
    v4 = objc_opt_class();
    transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    layoutState = [transitionContext layoutState];
    v7 = SBSafeCast(v4, layoutState);

    appLayout = [v7 appLayout];
    if (appLayout)
    {
      v8 = isFlexibleWindowingEnabled;
    }

    else
    {
      v8 = 0;
    }

    if (v8 == 1)
    {
      obj = [(SBSceneLayoutWorkspaceTransaction *)self _currentFlexibleWindowingAutoLayoutSpace];
      if ([obj ownedDisplayRectCorners])
      {
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        autoLayoutItems = [obj autoLayoutItems];
        v10 = 0;
        v11 = 0;
        v12 = [autoLayoutItems countByEnumeratingWithState:&v92 objects:v97 count:16];
        if (v12)
        {
          v13 = *v93;
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v93 != v13)
            {
              objc_enumerationMutation(autoLayoutItems);
            }

            v15 = *(*(&v92 + 1) + 8 * v14);
            if ([v15 ownedDisplayRectCorners])
            {
              displayItem = [v15 displayItem];

              v11 = displayItem;
            }

            if (([v15 ownedDisplayRectCorners] & 2) != 0)
            {
              displayItem2 = [v15 displayItem];

              v10 = displayItem2;
            }

            if (v11 && v10)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [autoLayoutItems countByEnumeratingWithState:&v92 objects:v97 count:16];
              if (v12)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v18 = MEMORY[0x277D76620];
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v19 = v11;
      }

      else
      {
        v19 = v10;
      }

      v72 = v19;
      if ([*v18 userInterfaceLayoutDirection] == 1)
      {
        v20 = v10;
      }

      else
      {
        v20 = v11;
      }

      v73 = v20;
    }

    else
    {
      v72 = 0;
      v73 = 0;
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obja = self->_foregroundingAppSceneEntities;
    v21 = [(NSMutableSet *)obja countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v21)
    {
      v22 = *v89;
      v24 = *(MEMORY[0x277CBF3A0] + 16);
      v23 = *(MEMORY[0x277CBF3A0] + 24);
      v26 = *MEMORY[0x277CBF3A0];
      v25 = *(MEMORY[0x277CBF3A0] + 8);
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v89 != v22)
          {
            objc_enumerationMutation(obja);
          }

          v28 = *(*(&v88 + 1) + 8 * i);
          layoutRole = [v28 layoutRole];
          sceneHandle = [v28 sceneHandle];
          [sceneHandle setLayoutRole:layoutRole];

          sceneHandle2 = [v28 sceneHandle];
          isDeviceApplicationSceneHandle = [sceneHandle2 isDeviceApplicationSceneHandle];

          if (isDeviceApplicationSceneHandle)
          {
            if (layoutRole == 1 || (height = v23, width = v24, y = v25, x = v26, layoutRole == 2))
            {
              v37 = [switcherController coordinateSpaceForLayoutState:v7];
              v38 = [v7 elementWithRole:layoutRole];
              v39 = [switcherController coordinateSpaceForLayoutElement:v38 layoutState:v7];

              [switcherController statusBarAvoidanceFrameForLayoutRole:layoutRole layoutState:v7];
              [v37 convertRect:v39 toCoordinateSpace:?];
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v47 = v46;
              [v39 bounds];
              v101.origin.x = v48;
              v101.origin.y = v49;
              v101.size.width = v50;
              v101.size.height = v51;
              v99.origin.x = v41;
              v99.origin.y = v43;
              v99.size.width = v45;
              v99.size.height = v47;
              v100 = CGRectIntersection(v99, v101);
              x = v100.origin.x;
              y = v100.origin.y;
              width = v100.size.width;
              height = v100.size.height;
            }

            if (isFlexibleWindowingEnabled)
            {
              uniqueIdentifier = [v28 uniqueIdentifier];
              uniqueIdentifier2 = [v73 uniqueIdentifier];
              v54 = BSEqualStrings();

              uniqueIdentifier3 = [v72 uniqueIdentifier];
              v56 = BSEqualStrings();

              v57 = 2;
              if (!v56)
              {
                v57 = 0;
              }

              v58 = 0xFFFFLL;
              if (!v56)
              {
                v58 = 1;
              }

              if (v54)
              {
                v59 = v58;
              }

              else
              {
                v59 = v57;
              }
            }

            else if (isChamoisOrFlexibleWindowing)
            {
              v84 = 0;
              v85 = &v84;
              v86 = 0x2020000000;
              v87 = 0;
              appLayout2 = [v7 appLayout];
              windowScene2 = [(SBWorkspaceTransaction *)selfCopy windowScene];
              switcherController2 = [windowScene2 switcherController];

              displayItemLayoutAttributesProvider = [switcherController2 displayItemLayoutAttributesProvider];
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __66__SBSceneLayoutWorkspaceTransaction__prepareScenesForSceneUpdates__block_invoke;
              v79[3] = &unk_2783BAFD8;
              v79[4] = v28;
              v64 = displayItemLayoutAttributesProvider;
              v80 = v64;
              v65 = appLayout2;
              v81 = v65;
              v66 = switcherController2;
              v82 = v66;
              v83 = &v84;
              [v65 enumerate:v79];
              v59 = v85[3];

              _Block_object_dispose(&v84, 8);
            }

            else if (layoutRole == 1)
            {
              if ([v7 isFullScreen])
              {
                v59 = 0xFFFFLL;
              }

              else
              {
                v59 = 1;
              }
            }

            else
            {
              v67 = 0xFFFFLL;
              if (layoutRole == 4)
              {
                v67 = 0;
              }

              if (layoutRole == 3)
              {
                v67 = 0;
              }

              if (layoutRole == 2)
              {
                v59 = 2;
              }

              else
              {
                v59 = v67;
              }
            }

            sceneHandle3 = [v28 sceneHandle];
            [sceneHandle3 setStatusBarParts:v59];
            [sceneHandle3 setStatusBarAvoidanceFrame:{x, y, width, height}];
            [sceneHandle3 setWantsEnhancedWindowingEnabled:isChamoisOrFlexibleWindowing];
          }
        }

        v21 = [(NSMutableSet *)obja countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v21);
    }
  }
}

void __75__SBSceneLayoutWorkspaceTransaction__collectSceneIDsOfExternallyHostedApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHostingAnApp])
  {
    v4 = [v3 hostedAppSceneHandles];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __75__SBSceneLayoutWorkspaceTransaction__collectSceneIDsOfExternallyHostedApps__block_invoke_2;
    v5[3] = &unk_2783BAF20;
    v6 = *(a1 + 32);
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

void __55__SBSceneLayoutWorkspaceTransaction__performTransition__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prepareLayoutTransition];

  v5[2](v5, 1);
}

- (void)_beginLayoutTransition
{
  [(SBSceneLayoutWorkspaceTransaction *)self _prepareScenesForTransition];
  delegate = [(SBSceneLayoutWorkspaceTransaction *)self delegate];
  if (delegate)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self addMilestone:@"waitingForDelegate"];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__SBSceneLayoutWorkspaceTransaction__beginLayoutTransition__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [delegate transaction:self performTransitionWithCompletion:v4];
  }

  else
  {
    self->_waitForSceneUpdates = 1;
    [(SBSceneLayoutWorkspaceTransaction *)self _evaluateTransitionCompletion];
  }
}

- (void)_prepareScenesForTransition
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_performSceneUpdates && [(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _updateKeyboardContextMaskStyles:1];
    v4 = *MEMORY[0x277D768C8];
    v3 = *(MEMORY[0x277D768C8] + 8);
    v6 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = self->_foregroundingAppSceneEntities;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      v11 = v5;
      v12 = v6;
      v13 = v3;
      v14 = v4;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          sceneHandle = [v16 sceneHandle];
          sceneIfExists = [sceneHandle sceneIfExists];

          if ([sceneIfExists isValid])
          {
            layoutRole = [v16 layoutRole];
            if (SBLayoutRoleIsValidForSplitView(layoutRole))
            {
              clientSettings = [sceneIfExists clientSettings];
              if ([clientSettings isUISubclass])
              {
                [clientSettings primaryWindowOverlayInsets];
                if (layoutRole == 1)
                {
                  v11 = v24;
                  v12 = v23;
                }

                else
                {
                  v5 = v24;
                  v6 = v23;
                  v3 = v22;
                  v4 = v21;
                }

                if (layoutRole == 1)
                {
                  v13 = v22;
                  v14 = v21;
                }
              }
            }
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = v5;
      v12 = v6;
      v13 = v3;
      v14 = v4;
    }

    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [(SBWorkspaceTransaction *)self displayIdentity];
    v27 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];
    pictureInPictureManager = [v27 pictureInPictureManager];

    [pictureInPictureManager applyPictureInPictureInsets:2 forSource:{v14, v13, v12, v11}];
    [pictureInPictureManager applyPictureInPictureInsets:3 forSource:{v4, v3, v6, v5}];
  }
}

- (void)_prepareLayoutTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transactionWillBeginLayoutTransition:self];

  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  displayLayoutPublisher = [windowScene displayLayoutPublisher];

  [displayLayoutPublisher flush];
}

void __55__SBSceneLayoutWorkspaceTransaction__performTransition__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginLayoutTransition];

  v5[2](v5, 1);
}

- (SBSceneLayoutWorkspaceTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__SBSceneLayoutWorkspaceTransaction__performTransition__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendActivationResultWithError:0];

  v5[2](v5, 1);
}

- (FBSynchronizedTransactionDelegate)synchronizationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);

  return WeakRetained;
}

- (void)performSynchronizedCommit
{
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Delegate says perform commit now."];
  }

  [(FBSynchronizedTransactionGroup *)self->_sceneUpdateTransactionGroup performSynchronizedCommit];
  v3 = *MEMORY[0x277D0AA58];

  [(SBSceneLayoutWorkspaceTransaction *)self satisfyMilestone:v3];
}

void __55__SBSceneLayoutWorkspaceTransaction__performTransition__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained sceneManager];
    v8 = [v6 transitionRequest];
    v9 = [v7 childTransactionsForTransitionRequest:v8];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v6 addChildTransaction:{*(*(&v15 + 1) + 8 * v14++), v15}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }

  [v6 satisfyMilestone:{@"slaves", v15}];
  v4[2](v4, 1);
}

- (id)sceneManager
{
  v4.receiver = self;
  v4.super_class = SBSceneLayoutWorkspaceTransaction;
  sceneManager = [(SBWorkspaceTransaction *)&v4 sceneManager];

  return sceneManager;
}

- (void)_evaluateTransitionCompletion
{
  if (!self->_waitingForSynchronizedCommit && (!self->_waitForSceneUpdates || (sceneUpdateTransactionGroup = self->_sceneUpdateTransactionGroup) == 0 || [(FBSynchronizedTransactionGroup *)sceneUpdateTransactionGroup isComplete]) && ([(SBSceneLayoutWorkspaceTransaction *)self isWaitingForMilestone:@"waitingForDelegate"]& 1) == 0)
  {

    [(SBSceneLayoutWorkspaceTransaction *)self _completeTransition];
  }
}

uint64_t __59__SBSceneLayoutWorkspaceTransaction__beginLayoutTransition__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) satisfyMilestone:@"waitingForDelegate"];
  *(*(a1 + 32) + 244) = (*(*(a1 + 32) + 216) & 4) == 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 304);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setWaitsForSceneCommits:{*(*(a1 + 32) + 244), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) _evaluateTransitionCompletion];
}

- (void)dealloc
{
  [(SBSceneBackgroundedStatusAssertion *)self->_scenesBackgroundedStatusAssertion invalidate];
  v3.receiver = self;
  v3.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v3 dealloc];
}

- (void)_completeTransition
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateScenesForTransitionCompletion
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_performSceneUpdates)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _updateKeyboardContextMaskStyles:0];
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
    [medusaHostedKeyboardWindowController updateMedusaHostedKeyboardWindow];

    if ([(SBSceneLayoutWorkspaceTransaction *)self isInterrupted]&& (interruptingTransitionRequest = self->_interruptingTransitionRequest) != 0)
    {
      applicationContext = [(SBWorkspaceTransitionRequest *)interruptingTransitionRequest applicationContext];
      applicationSceneEntities = [applicationContext applicationSceneEntities];
      v8 = [applicationSceneEntities bs_map:&__block_literal_global_200];
    }

    else
    {
      v8 = 0;
    }

    _collectSceneIDsOfExternallyHostedApps = [(SBSceneLayoutWorkspaceTransaction *)self _collectSceneIDsOfExternallyHostedApps];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = self->_scenesToBackground;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          identifier = [v14 identifier];
          if ([v14 isValid] && (objc_msgSend(v8, "containsObject:", identifier) & 1) == 0 && (objc_msgSend(_collectSceneIDsOfExternallyHostedApps, "containsObject:", identifier) & 1) == 0)
          {
            [v14 updateUISettingsWithBlock:&__block_literal_global_203];
            uiPresentationManager = [v14 uiPresentationManager];
            [uiPresentationManager modifyDefaultPresentationContext:&__block_literal_global_206];
          }
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    if (SBFIsSwitcherForegroundAppsAvailable())
    {
      windowScene2 = [(SBWorkspaceTransaction *)self windowScene];
      switcherController = [windowScene2 switcherController];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v19 = self->_foregroundingAppSceneEntities;
      v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v19);
            }

            sceneHandle = [*(*(&v30 + 1) + 8 * j) sceneHandle];
            sceneIfExists = [sceneHandle sceneIfExists];

            if (sceneIfExists)
            {
              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __73__SBSceneLayoutWorkspaceTransaction__updateScenesForTransitionCompletion__block_invoke_4;
              v27[3] = &unk_2783B90C8;
              v28 = switcherController;
              v29 = sceneIfExists;
              [v29 updateSettingsWithBlock:v27];
            }
          }

          v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v21);
      }
    }
  }
}

void __56__SBSceneLayoutWorkspaceTransaction__completeTransition__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    __56__SBSceneLayoutWorkspaceTransaction__completeTransition__block_invoke_2_cold_1(a1, a1 + 40, &v14);
    v6 = v14;
  }

  *(v6 + 24) = 1;
  if ([*(a1 + 32) isAuditHistoryEnabled])
  {
    v7 = *(a1 + 32);
    v8 = NSStringFromBOOL();
    [v7 _addAuditHistoryItem:{@"Transition continuation called with follow-up transition: %@.", v8}];
  }

  v9 = *(a1 + 32);
  if (v9[35] == v13)
  {
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(v9 + 35, a2);
    v9 = *(a1 + 32);
    if (v9[35])
    {
LABEL_7:
      if ([v9 isComplete] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isInterrupted"))
      {
        if ([*(a1 + 32) isAuditHistoryEnabled])
        {
          [*(a1 + 32) _addAuditHistoryItem:@"Ignoring continuation because we have already completed."];
        }
      }

      else
      {
        *(*(a1 + 32) + 216) = a3;
        [*(*(a1 + 32) + 176) setApplicationContext:*(*(a1 + 32) + 280)];
        v10 = *(a1 + 32);
        v11 = v10[35];
        v12 = [v10 layoutStateTransitionCoordinator];
        [v11 setDelegate:v12];

        [*(*(a1 + 32) + 280) finalize];
        [*(a1 + 32) _performTransition];
      }

      goto LABEL_16;
    }
  }

  if ([v9 isAuditHistoryEnabled])
  {
    [*(a1 + 32) _addAuditHistoryItem:@"Scene layout completed."];
  }

  [*(a1 + 32) satisfyMilestone:@"transitioning"];
LABEL_16:
}

- (void)_didComplete
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"_scenesBackgroundedStatusAssertion == nil" object:? file:? lineNumber:? description:?];
}

uint64_t __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sceneIdentifier];
  if ([*(a1 + 32) containsObject:v4] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_sceneEntities:hasEntityRepresentingSceneID:", *(*(a1 + 40) + 328), v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) _shouldKeepSceneForSceneHandleForeground:v3] ^ 1;
  }

  return v5;
}

- (SBSceneLayoutWorkspaceTransaction)initWithTransitionRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  applicationContext = [requestCopy applicationContext];
  if (!applicationContext)
  {
    [SBSceneLayoutWorkspaceTransaction initWithTransitionRequest:delegate:];
  }

  if ([applicationContext isBackground])
  {
    [SBSceneLayoutWorkspaceTransaction initWithTransitionRequest:delegate:];
  }

  v28.receiver = self;
  v28.super_class = SBSceneLayoutWorkspaceTransaction;
  v9 = [(SBWorkspaceTransaction *)&v28 initWithTransitionRequest:requestCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transitionContext, applicationContext);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updateTransactions = v10->_updateTransactions;
    v10->_updateTransactions = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    toAppSceneEntities = v10->_toAppSceneEntities;
    v10->_toAppSceneEntities = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    fromAppSceneEntities = v10->_fromAppSceneEntities;
    v10->_fromAppSceneEntities = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundingAppSceneEntities = v10->_foregroundingAppSceneEntities;
    v10->_foregroundingAppSceneEntities = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    backgroundingAppSceneEntities = v10->_backgroundingAppSceneEntities;
    v10->_backgroundingAppSceneEntities = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    scenesToBackground = v10->_scenesToBackground;
    v10->_scenesToBackground = v21;

    if (([applicationContext waitsForSceneUpdates] & 1) == 0)
    {
      v10->_options |= 4uLL;
    }

    if (SBFIsSwitcherForegroundAppsAvailable())
    {
      windowScene = [(SBWorkspaceTransaction *)v10 windowScene];
      switcherController = [windowScene switcherController];
      [switcherController _prepareForSceneLayoutTransitionWithTransitionContext:applicationContext];
    }

    _defaultDisplayLayoutTransitionReason = [(SBSceneLayoutWorkspaceTransaction *)v10 _defaultDisplayLayoutTransitionReason];
    preferredDisplayLayoutTransitionReason = v10->_preferredDisplayLayoutTransitionReason;
    v10->_preferredDisplayLayoutTransitionReason = _defaultDisplayLayoutTransitionReason;

    [(SBSceneLayoutWorkspaceTransaction *)v10 _captureAppsForTransition];
  }

  return v10;
}

- (BOOL)_canBeInterrupted
{
  v2 = +[SBSetupManager sharedInstance];
  if ([v2 isInSetupMode])
  {
    v3 = +[SBSetupManager sharedInstance];
    isInSetupModeReadyToExit = [v3 isInSetupModeReadyToExit];
  }

  else
  {
    isInSetupModeReadyToExit = 1;
  }

  return isInSetupModeReadyToExit;
}

- (void)_willInterruptWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v5 _willInterruptWithReason:reason];
  self->_transitionFailed = 1;
  _transitionRequestForInterruption = [(SBWorkspaceTransaction *)self _transitionRequestForInterruption];
  if (_transitionRequestForInterruption)
  {
    objc_storeStrong(&self->_interruptingTransitionRequest, _transitionRequestForInterruption);
  }
}

- (void)_willFailWithReason:(id)reason
{
  v4.receiver = self;
  v4.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v4 _willFailWithReason:reason];
  self->_transitionFailed = 1;
}

- (void)_childTransactionDidComplete:(id)complete
{
  completeCopy = complete;
  if (self->_sceneUpdateTransactionGroup == completeCopy)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _evaluateTransitionCompletion];
  }

  v5.receiver = self;
  v5.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v5 _childTransactionDidComplete:completeCopy];
}

void __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_5(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 sceneIfExists];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    v4 = [v3 clientHandle];
    v5 = [v4 bundleIdentifier];

    v6 = [*(*(a1 + 40) + 280) previousApplicationSceneEntityForBundleID:v5];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 208));
      v7 = [WeakRetained createSceneEntityForHandle:v12];

      if (!v7)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    [*(*(a1 + 40) + 336) addObject:v7];
    v9 = *(a1 + 40);
    v10 = v9[40];
    v11 = [v12 sceneIdentifier];
    LOBYTE(v9) = [v9 _sceneEntities:v10 hasEntityRepresentingSceneID:v11];

    if ((v9 & 1) == 0)
    {
      [*(*(a1 + 40) + 320) addObject:v7];
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __75__SBSceneLayoutWorkspaceTransaction__collectSceneIDsOfExternallyHostedApps__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sceneIdentifier];
  [v2 addObject:v3];
}

- (BOOL)_sceneEntities:(id)entities hasEntityRepresentingSceneID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = entitiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        sceneHandle = [*(*(&v15 + 1) + 8 * i) sceneHandle];
        sceneIdentifier = [sceneHandle sceneIdentifier];
        v13 = [sceneIdentifier isEqualToString:dCopy];

        if (v13)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)_shouldKeepSceneForSceneHandleForeground:(id)foreground
{
  v16 = *MEMORY[0x277D85DE8];
  sceneIfExists = [foreground sceneIfExists];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (sceneIfExists && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = 0;
    v6 = [WeakRetained transaction:self shouldKeepSceneForeground:sceneIfExists withReason:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = SBLogTransaction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        identifier = [sceneIfExists identifier];
        *buf = 138543618;
        v13 = identifier;
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Keeping scene %{public}@ foreground for reason:\n%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __56__SBSceneLayoutWorkspaceTransaction__completeTransition__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CF0B48]];
  v4 = [v3 isEqualToString:*MEMORY[0x277D0AA60]];

  return v4;
}

- (void)_updateKeyboardContextMaskStyles:(BOOL)styles
{
  stylesCopy = styles;
  v39 = *MEMORY[0x277D85DE8];
  v5 = +[SBPlatformController sharedInstance];
  isMedusaCapable = [v5 isMedusaCapable];

  if (isMedusaCapable)
  {
    transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    previousLayoutState = [transitionContext previousLayoutState];

    transitionContext2 = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    layoutState = [transitionContext2 layoutState];

    v33 = previousLayoutState;
    elements = [previousLayoutState elements];
    v12 = elements;
    if (elements)
    {
      v13 = elements;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v14 = v13;

    elements2 = [layoutState elements];
    v16 = elements2;
    if (elements2)
    {
      v17 = elements2;
    }

    else
    {
      v17 = [MEMORY[0x277CBEB98] set];
    }

    v18 = v17;
    v32 = layoutState;

    v19 = [v18 setByAddingObjectsFromSet:v14];
    v20 = [MEMORY[0x277CBEB58] set];
    if ([v18 count] >= 2)
    {
      [v20 unionSet:v18];
    }

    if (stylesCopy && [v14 count] >= 2)
    {
      [v20 unionSet:v14];
    }

    v31 = v14;
    v21 = [v19 bs_map:{&__block_literal_global_193, v19}];
    v22 = [v20 bs_map:&__block_literal_global_193];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          if ([v22 containsObject:v28])
          {
            v29 = 2;
          }

          else
          {
            v29 = 26;
          }

          [v28 setKeyboardContextMaskStyle:v29];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v25);
    }
  }
}

id __70__SBSceneLayoutWorkspaceTransaction__updateKeyboardContextMaskStyles___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 workspaceEntity];
  v3 = [v2 deviceApplicationSceneEntity];
  v4 = [v3 sceneHandle];

  return v4;
}

void __66__SBSceneLayoutWorkspaceTransaction__prepareScenesForSceneUpdates__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  v6 = [v18 uniqueIdentifier];
  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [v10 preferredDisplayOrdinal];
    v12 = [*(a1 + 56) interfaceOrientation];
    if ((v12 - 1) < 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * ((v12 - 3) < 2);
    }

    v14 = [v9 layoutAttributesForDisplayItem:v18 inAppLayout:v10 displayOrdinal:v11 orientation:v13];
    v15 = [(SBCameraHardwareButton *)v14 foregroundCameraShutterButtonPIDs];
    IsOccluded = SBOcclusionStateIsOccluded(v15);
    v17 = [(SBHomeScreenConfigurationServer *)v14 connections];
    if (!IsOccluded && v17 == 2)
    {
      *(*(*(a1 + 64) + 8) + 24) = 0xFFFFLL;
      *a4 = 1;
    }
  }
}

- (id)_currentFlexibleWindowingAutoLayoutSpace
{
  v3 = objc_opt_class();
  transitionContext = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
  layoutState = [transitionContext layoutState];
  v6 = SBSafeCast(v3, layoutState);

  appLayout = [v6 appLayout];
  if (appLayout)
  {
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    switcherController = [windowScene switcherController];

    interfaceOrientation = [v6 interfaceOrientation];
    [switcherController containerBoundsForInterfaceOrientation:interfaceOrientation];
    v44 = v12;
    v45 = v11;
    v42 = v14;
    v43 = v13;
    windowScene2 = [switcherController windowScene];
    floatingDockController = [windowScene2 floatingDockController];
    [floatingDockController floatingDockHeight];
    v41 = v17;

    _prefersStripHidden = [switcherController _prefersStripHidden];
    _prefersDockHidden = [switcherController _prefersDockHidden];
    [switcherController _leftStatusBarPartIntersectionRegion];
    v40 = v20;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [switcherController _rightStatusBarPartIntersectionRegion];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    screen = [windowScene2 screen];
    [screen scale];
    v38 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](v35, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", appLayout, interfaceOrientation, [windowScene2 isExtendedDisplayWindowScene] ^ 1, _prefersStripHidden, _prefersDockHidden, v41, v37, v45, v44, v43, v42, v40, v22, v24, v26, v28, v30, v32, v34);
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

id __73__SBSceneLayoutWorkspaceTransaction__updateScenesForTransitionCompletion__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sceneHandle];
  v3 = [v2 sceneIdentifier];

  return v3;
}

void __73__SBSceneLayoutWorkspaceTransaction__updateScenesForTransitionCompletion__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setForeground:0];
  v3 = [v2 ignoreOcclusionReasons];

  [v3 removeAllObjects];
}

void __73__SBSceneLayoutWorkspaceTransaction__updateScenesForTransitionCompletion__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v5 setJetsamMode:{objc_msgSend(v3, "_jetsamModeForScene:", v4)}];
  [v5 setActivityMode:{objc_msgSend(*(a1 + 32), "_activityModeForScene:", *(a1 + 40))}];
}

- (BOOL)_overrideInterfaceOrientationForOrientationMismatch:(int64_t *)mismatch
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_updateTransactions;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    mismatchCopy = mismatch;
    selfCopy = self;
    obj = v5;
    v8 = 0;
    v9 = *v30;
    v26 = *v30;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        applicationSceneEntity = [v11 applicationSceneEntity];
        mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
        sceneIdentifier = [v11 sceneIdentifier];
        v15 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:sceneIdentifier];

        sceneSettings = [v11 sceneSettings];
        sceneSettings2 = [v11 sceneSettings];
        interfaceOrientation = [sceneSettings2 interfaceOrientation];

        uiClientSettings = [v15 uiClientSettings];
        sb_effectiveInterfaceOrientation = [uiClientSettings sb_effectiveInterfaceOrientation];

        if ([v15 isValid] && objc_msgSend(sceneSettings, "isUISubclass"))
        {
          if (([sceneSettings deviceOrientationEventsEnabled] & 1) == 0)
          {
            if ([(SBSceneLayoutWorkspaceTransaction *)selfCopy isAuditHistoryEnabled])
            {
              [(SBSceneLayoutWorkspaceTransaction *)selfCopy _addAuditHistoryItem:@"Don't need to do any orientation override, the settings don't have orientation events enabled"];
            }

            return 0;
          }

          if (interfaceOrientation != sb_effectiveInterfaceOrientation)
          {
            if (v8 && v8 != sb_effectiveInterfaceOrientation)
            {
              [SBSceneLayoutWorkspaceTransaction _overrideInterfaceOrientationForOrientationMismatch:];
            }

            if ([(SBSceneLayoutWorkspaceTransaction *)selfCopy isAuditHistoryEnabled])
            {
              v21 = BSInterfaceOrientationDescription();
              application = [applicationSceneEntity application];
              bundleIdentifier = [application bundleIdentifier];
              [(SBSceneLayoutWorkspaceTransaction *)selfCopy _addAuditHistoryItem:@"Scene Layout Transaction needs to override orientation to %@ for %@", v21, bundleIdentifier];

              v9 = v26;
            }

            v8 = sb_effectiveInterfaceOrientation;
          }
        }
      }

      v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    result = v8 != 0;
    if (mismatchCopy)
    {
      if (v8)
      {
        *mismatchCopy = v8;
        return 1;
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (void)_sendActivationResultWithError:(id)error
{
  errorCopy = error;
  if ([(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext needsToSendActivationResult])
  {
    if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; success = %d", errorCopy == 0];
    }

    [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext sendActivationResultError:errorCopy];
  }
}

- (void)_updatePreferredDisplayLayoutTransitionReason:(id)reason
{
  reasonCopy = reason;
  v11 = reasonCopy;
  if (!reasonCopy)
  {
    reasonCopy = [(SBSceneLayoutWorkspaceTransaction *)self _defaultDisplayLayoutTransitionReason];
  }

  if (reasonCopy != self->_preferredDisplayLayoutTransitionReason)
  {
    v5 = [(NSString *)reasonCopy copy];
    preferredDisplayLayoutTransitionReason = self->_preferredDisplayLayoutTransitionReason;
    self->_preferredDisplayLayoutTransitionReason = v5;

    if (self->_displayLayoutTransitionAssertion)
    {
      windowScene = [(SBWorkspaceTransaction *)self windowScene];
      displayLayoutPublisher = [windowScene displayLayoutPublisher];

      v9 = [displayLayoutPublisher transitionAssertionWithReason:self->_preferredDisplayLayoutTransitionReason];
      [(BSInvalidatable *)self->_displayLayoutTransitionAssertion invalidate];
      displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
      self->_displayLayoutTransitionAssertion = v9;
    }
  }
}

- (void)transaction:(id)transaction willLaunchProcess:(id)process
{
  transactionCopy = transaction;
  processCopy = process;
  if ([(NSMutableSet *)self->_updateTransactions count]<= 1 && [(NSMutableSet *)self->_updateTransactions containsObject:transactionCopy])
  {
    if ([processCopy isRunning])
    {
      [(SBSceneLayoutWorkspaceTransaction *)self _sendActivationResultWithError:0];
    }

    else
    {
      exitContext = [processCopy exitContext];
      createError = [exitContext createError];
      [(SBSceneLayoutWorkspaceTransaction *)self _sendActivationResultWithError:createError];
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SBSceneLayoutWorkspaceTransaction_transaction_willLaunchProcess___block_invoke;
  v12[3] = &unk_2783BB020;
  v13 = transactionCopy;
  v14 = processCopy;
  v10 = processCopy;
  v11 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v12];
}

void __67__SBSceneLayoutWorkspaceTransaction_transaction_willLaunchProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) willLaunchProcess:*(a1 + 40)];
  }
}

- (void)transaction:(id)transaction didLaunchProcess:(id)process
{
  transactionCopy = transaction;
  processCopy = process;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SBSceneLayoutWorkspaceTransaction_transaction_didLaunchProcess___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = transactionCopy;
  v12 = processCopy;
  v8 = processCopy;
  v9 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v10];
}

void __66__SBSceneLayoutWorkspaceTransaction_transaction_didLaunchProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) didLaunchProcess:*(a1 + 40)];
  }
}

- (void)transaction:(id)transaction didCreateScene:(id)scene
{
  transactionCopy = transaction;
  sceneCopy = scene;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SBSceneLayoutWorkspaceTransaction_transaction_didCreateScene___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = transactionCopy;
  v12 = sceneCopy;
  v8 = sceneCopy;
  v9 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v10];
}

void __64__SBSceneLayoutWorkspaceTransaction_transaction_didCreateScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) didCreateScene:*(a1 + 40)];
  }
}

- (void)transaction:(id)transaction willUpdateScene:(id)scene
{
  transactionCopy = transaction;
  sceneCopy = scene;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBSceneLayoutWorkspaceTransaction_transaction_willUpdateScene___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = transactionCopy;
  v12 = sceneCopy;
  v8 = sceneCopy;
  v9 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v10];
}

void __65__SBSceneLayoutWorkspaceTransaction_transaction_willUpdateScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) willUpdateScene:*(a1 + 40)];
  }
}

- (void)transaction:(id)transaction willCommitSceneUpdate:(id)update
{
  transactionCopy = transaction;
  updateCopy = update;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SBSceneLayoutWorkspaceTransaction_transaction_willCommitSceneUpdate___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = transactionCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v10];
}

void __71__SBSceneLayoutWorkspaceTransaction_transaction_willCommitSceneUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) willCommitSceneUpdate:*(a1 + 40)];
  }
}

- (void)transaction:(id)transaction didCommitSceneUpdate:(id)update
{
  transactionCopy = transaction;
  updateCopy = update;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBSceneLayoutWorkspaceTransaction_transaction_didCommitSceneUpdate___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = transactionCopy;
  v12 = updateCopy;
  v8 = updateCopy;
  v9 = transactionCopy;
  [(SBSceneLayoutWorkspaceTransaction *)self _enumerateObserversWithBlock:v10];
}

void __70__SBSceneLayoutWorkspaceTransaction_transaction_didCommitSceneUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transaction:*(a1 + 32) didCommitSceneUpdate:*(a1 + 40)];
  }
}

- (void)synchronizedTransactionReadyToCommit:(id)commit
{
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Scene updates ready to commit."];
  }

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeSendActivationResultTransaction synchronize];
  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizePrepareTransitionTransaction synchronize];
  synchronizationDelegate = [(SBSceneLayoutWorkspaceTransaction *)self synchronizationDelegate];
  if (synchronizationDelegate)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self addMilestone:*MEMORY[0x277D0AA58]];
    if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      v4 = [MEMORY[0x277CF0C00] descriptionForObject:synchronizationDelegate];
      [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Deferring commit to synchronization delegate: %@", v4];
    }

    [synchronizationDelegate synchronizedTransactionReadyToCommit:self];
  }

  else
  {
    [(FBSynchronizedTransactionGroup *)self->_sceneUpdateTransactionGroup performSynchronizedCommit];
  }
}

- (void)synchronizedTransaction:(id)transaction willCommitSynchronizedTransactions:(id)transactions
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);
  v7[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [WeakRetained synchronizedTransaction:self willCommitSynchronizedTransactions:v6];
}

- (void)synchronizedTransaction:(id)transaction didCommitSynchronizedTransactions:(id)transactions
{
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled:transaction])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Synchronizing with scene updates NOW."];
  }

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeBeginTransitionTransaction synchronize];
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);
  synchronizedTransactions = [(FBSynchronizedTransactionGroup *)self->_sceneUpdateTransactionGroup synchronizedTransactions];
  [WeakRetained synchronizedTransaction:self didCommitSynchronizedTransactions:synchronizedTransactions];

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeAddSlavesTransaction synchronize];
  self->_waitingForSynchronizedCommit = 0;

  [(SBSceneLayoutWorkspaceTransaction *)self _evaluateTransitionCompletion];
}

- (BOOL)synchronizedTransactionGroup:(id)group shouldFailForSynchronizedTransaction:(id)transaction
{
  transactionCopy = transaction;
  self->_transitionFailed = 1;
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v6 = [MEMORY[0x277CF0C00] descriptionForObject:transactionCopy];
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Update transaction failed: %@", v6];
  }

  return 0;
}

- (void)initWithTransitionRequest:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"context != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionRequest:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"![context isBackground]" object:? file:? lineNumber:? description:?];
}

void __56__SBSceneLayoutWorkspaceTransaction__completeTransition__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"SBSceneLayoutWorkspaceTransaction.m" lineNumber:653 description:@"can't call this more than once"];

  *a3 = *(*a2 + 8);
}

- (void)_overrideInterfaceOrientationForOrientationMismatch:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = BSInterfaceOrientationDescription();
  v2 = BSInterfaceOrientationDescription();
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v1 object:v2 file:? lineNumber:? description:?];
}

@end