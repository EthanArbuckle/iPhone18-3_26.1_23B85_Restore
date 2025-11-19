@interface SBSceneLayoutWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (BOOL)_overrideInterfaceOrientationForOrientationMismatch:(int64_t *)a3;
- (BOOL)_runningOnManagedDisplay;
- (BOOL)_sceneEntities:(id)a3 hasEntityRepresentingSceneID:(id)a4;
- (BOOL)_shouldKeepSceneForSceneHandleForeground:(id)a3;
- (BOOL)synchronizedTransactionGroup:(id)a3 shouldFailForSynchronizedTransaction:(id)a4;
- (FBSynchronizedTransactionDelegate)synchronizationDelegate;
- (SBSceneLayoutWorkspaceTransaction)initWithTransitionRequest:(id)a3 delegate:(id)a4;
- (SBSceneLayoutWorkspaceTransactionDelegate)delegate;
- (id)_collectSceneIDsOfExternallyHostedApps;
- (id)_currentFlexibleWindowingAutoLayoutSpace;
- (id)_defaultDisplayLayoutTransitionReason;
- (id)sceneManager;
- (void)_begin;
- (void)_beginLayoutTransition;
- (void)_captureAppsForTransition;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_completeTransition;
- (void)_didComplete;
- (void)_evaluateTransitionCompletion;
- (void)_performTransition;
- (void)_prepareLayoutTransition;
- (void)_prepareScenesForSceneUpdates;
- (void)_prepareScenesForTransition;
- (void)_sendActivationResultWithError:(id)a3;
- (void)_updateKeyboardContextMaskStyles:(BOOL)a3;
- (void)_updatePreferredDisplayLayoutTransitionReason:(id)a3;
- (void)_updateScenesForTransitionCompletion;
- (void)_willBegin;
- (void)_willFailWithReason:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)dealloc;
- (void)performSynchronizedCommit;
- (void)synchronizedTransaction:(id)a3 didCommitSynchronizedTransactions:(id)a4;
- (void)synchronizedTransaction:(id)a3 willCommitSynchronizedTransactions:(id)a4;
- (void)synchronizedTransactionReadyToCommit:(id)a3;
- (void)transaction:(id)a3 didCommitSceneUpdate:(id)a4;
- (void)transaction:(id)a3 didCreateScene:(id)a4;
- (void)transaction:(id)a3 didLaunchProcess:(id)a4;
- (void)transaction:(id)a3 willCommitSceneUpdate:(id)a4;
- (void)transaction:(id)a3 willLaunchProcess:(id)a4;
- (void)transaction:(id)a3 willUpdateScene:(id)a4;
@end

@implementation SBSceneLayoutWorkspaceTransaction

- (id)_collectSceneIDsOfExternallyHostedApps
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    v4 = +[SBCoverSheetPresentationManager sharedInstance];
    v5 = [v4 isVisible];

    if (v5)
    {
      v6 = +[SBLockScreenManager sharedInstance];
      v7 = [v6 lockScreenEnvironment];
      v8 = [v7 applicationHoster];
      [v3 addObject:v8];
    }

    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    v10 = [v9 secureAppViewController];
    if ([v9 isVisible] && v10)
    {
      [v3 addObject:v10];
    }

    v11 = +[SBWorkspace mainWorkspace];
    v12 = [v11 inCallPresentationManager];
    if (v12)
    {
      [v3 addObject:v12];
    }

    v13 = [v11 pipCoordinator];
    [v3 addObject:v13];
    v14 = [(SBWorkspaceTransaction *)self windowScene];
    v15 = [v14 homeScreenController];

    v16 = [v15 leftOfHomeAppViewController];
    if (v16)
    {
      [v3 addObject:v16];
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
    v20 = [v19 sceneIdentifier];
    [v18 addObject:v20];
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
  v6 = [(SBWorkspaceTransaction *)self transitionRequest];
  v7 = [v6 uniqueID];
  v8 = [v3 stringWithFormat:@"%@:%@", v5, v7];

  return v8;
}

- (void)_willBegin
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSceneLayoutWorkspaceTransaction.m" lineNumber:220 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)_performTransition
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
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
  v2 = [(SBWorkspaceTransaction *)self displayIdentity];
  v3 = [v2 sb_displayWindowingMode] == 1;

  return v3;
}

- (void)_captureAppsForTransition
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(SBWorkspaceTransaction *)self windowScene];
  v4 = [v3 switcherController];
  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [v5 originatingProcess];

  v7 = v6;
  v8 = +[SBApplicationController sharedInstanceIfExists];
  v9 = [v8 applicationWithPid:{objc_msgSend(v6, "pid")}];

  if (v9)
  {
    v10 = [v9 bundleIdentifier];
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
    v12 = [v4 _sceneEntitiesToForeground];
    v13 = [v12 mutableCopy];
    foregroundingAppSceneEntities = self->_foregroundingAppSceneEntities;
    self->_foregroundingAppSceneEntities = v13;
  }

  else
  {
    v15 = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext applicationSceneEntities];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke;
    v58[3] = &unk_2783BAE80;
    v58[4] = self;
    [v15 enumerateObjectsUsingBlock:v58];
  }

  v16 = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext previousApplicationSceneEntities];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_2;
  v57[3] = &unk_2783BAE80;
  v57[4] = self;
  [v16 enumerateObjectsUsingBlock:v57];

  v17 = [(SBSceneLayoutWorkspaceTransaction *)self _collectSceneIDsOfExternallyHostedApps];
  v18 = [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext applicationSceneEntities];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_3;
  v54[3] = &unk_2783BAEA8;
  v19 = v17;
  v55 = v19;
  v56 = self;
  [v18 enumerateObjectsUsingBlock:v54];

  v20 = 0x277CBE000uLL;
  v21 = [MEMORY[0x277CBEB58] set];
  if (SBFIsSwitcherForegroundAppsAvailable())
  {
    v22 = v9;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v23 = self->_fromAppSceneEntities;
    v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v41 = v4;
      v42 = v6;
      v26 = v3;
      v27 = *v51;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = [*(*(&v50 + 1) + 8 * i) sceneHandle];
          [v21 addObject:v29];
        }

        v25 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v25);
      v3 = v26;
      v4 = v41;
      v9 = v22;
      v7 = v42;
    }

    else
    {
      v7 = v6;
    }

    v20 = 0x277CBE000;
  }

  else
  {
    if (![(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
    {
      goto LABEL_21;
    }

    v23 = [v4 layoutStateApplicationSceneHandles];
    if ([(NSMutableSet *)v23 count])
    {
      [v21 unionSet:v23];
    }
  }

LABEL_21:
  if ([(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    v43 = v7;
    v30 = v9;
    v31 = v4;
    v32 = v3;
    v33 = +[SBSceneManagerCoordinator sharedInstance];
    v34 = [(SBWorkspaceTransaction *)self displayIdentity];
    v35 = [v33 sceneManagerForDisplayIdentity:v34];
    v36 = [v35 externalForegroundApplicationSceneHandles];

    if ([v36 count])
    {
      [v21 unionSet:v36];
    }

    v3 = v32;
    v4 = v31;
    v9 = v30;
    v7 = v43;
    v20 = 0x277CBE000uLL;
  }

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_4;
  v47[3] = &unk_2783BAED0;
  v48 = v19;
  v49 = self;
  v37 = v19;
  v38 = [v21 objectsPassingTest:v47];
  v39 = objc_alloc_init(*(v20 + 2904));
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __62__SBSceneLayoutWorkspaceTransaction__captureAppsForTransition__block_invoke_5;
  v44[3] = &unk_2783BAEF8;
  v45 = v39;
  v46 = self;
  v40 = v39;
  [v38 enumerateObjectsUsingBlock:v44];
  [(NSMutableSet *)self->_scenesToBackground unionSet:v40];
}

- (void)_prepareScenesForSceneUpdates
{
  v98 = *MEMORY[0x277D85DE8];
  if (self->_performSceneUpdates && [(SBSceneLayoutWorkspaceTransaction *)self _runningOnManagedDisplay])
  {
    v71 = self;
    v3 = [(SBWorkspaceTransaction *)self windowScene];
    v78 = [v3 switcherController];

    v70 = [v78 windowManagementContext];
    v77 = [v70 isChamoisOrFlexibleWindowing];
    v74 = [v70 isFlexibleWindowingEnabled];
    v4 = objc_opt_class();
    v5 = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    v6 = [v5 layoutState];
    v7 = SBSafeCast(v4, v6);

    v69 = [v7 appLayout];
    if (v69)
    {
      v8 = v74;
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
        v9 = [obj autoLayoutItems];
        v10 = 0;
        v11 = 0;
        v12 = [v9 countByEnumeratingWithState:&v92 objects:v97 count:16];
        if (v12)
        {
          v13 = *v93;
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v93 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v92 + 1) + 8 * v14);
            if ([v15 ownedDisplayRectCorners])
            {
              v16 = [v15 displayItem];

              v11 = v16;
            }

            if (([v15 ownedDisplayRectCorners] & 2) != 0)
            {
              v17 = [v15 displayItem];

              v10 = v17;
            }

            if (v11 && v10)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v9 countByEnumeratingWithState:&v92 objects:v97 count:16];
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
          v29 = [v28 layoutRole];
          v30 = [v28 sceneHandle];
          [v30 setLayoutRole:v29];

          v31 = [v28 sceneHandle];
          v32 = [v31 isDeviceApplicationSceneHandle];

          if (v32)
          {
            if (v29 == 1 || (height = v23, width = v24, y = v25, x = v26, v29 == 2))
            {
              v37 = [v78 coordinateSpaceForLayoutState:v7];
              v38 = [v7 elementWithRole:v29];
              v39 = [v78 coordinateSpaceForLayoutElement:v38 layoutState:v7];

              [v78 statusBarAvoidanceFrameForLayoutRole:v29 layoutState:v7];
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

            if (v74)
            {
              v52 = [v28 uniqueIdentifier];
              v53 = [v73 uniqueIdentifier];
              v54 = BSEqualStrings();

              v55 = [v72 uniqueIdentifier];
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

            else if (v77)
            {
              v84 = 0;
              v85 = &v84;
              v86 = 0x2020000000;
              v87 = 0;
              v60 = [v7 appLayout];
              v61 = [(SBWorkspaceTransaction *)v71 windowScene];
              v62 = [v61 switcherController];

              v63 = [v62 displayItemLayoutAttributesProvider];
              v79[0] = MEMORY[0x277D85DD0];
              v79[1] = 3221225472;
              v79[2] = __66__SBSceneLayoutWorkspaceTransaction__prepareScenesForSceneUpdates__block_invoke;
              v79[3] = &unk_2783BAFD8;
              v79[4] = v28;
              v64 = v63;
              v80 = v64;
              v65 = v60;
              v81 = v65;
              v66 = v62;
              v82 = v66;
              v83 = &v84;
              [v65 enumerate:v79];
              v59 = v85[3];

              _Block_object_dispose(&v84, 8);
            }

            else if (v29 == 1)
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
              if (v29 == 4)
              {
                v67 = 0;
              }

              if (v29 == 3)
              {
                v67 = 0;
              }

              if (v29 == 2)
              {
                v59 = 2;
              }

              else
              {
                v59 = v67;
              }
            }

            v68 = [v28 sceneHandle];
            [v68 setStatusBarParts:v59];
            [v68 setStatusBarAvoidanceFrame:{x, y, width, height}];
            [v68 setWantsEnhancedWindowingEnabled:v77];
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
  v3 = [(SBSceneLayoutWorkspaceTransaction *)self delegate];
  if (v3)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self addMilestone:@"waitingForDelegate"];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__SBSceneLayoutWorkspaceTransaction__beginLayoutTransition__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [v3 transaction:self performTransitionWithCompletion:v4];
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
          v17 = [v16 sceneHandle];
          v18 = [v17 sceneIfExists];

          if ([v18 isValid])
          {
            v19 = [v16 layoutRole];
            if (SBLayoutRoleIsValidForSplitView(v19))
            {
              v20 = [v18 clientSettings];
              if ([v20 isUISubclass])
              {
                [v20 primaryWindowOverlayInsets];
                if (v19 == 1)
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

                if (v19 == 1)
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

    v25 = [SBApp windowSceneManager];
    v26 = [(SBWorkspaceTransaction *)self displayIdentity];
    v27 = [v25 windowSceneForDisplayIdentity:v26];
    v28 = [v27 pictureInPictureManager];

    [v28 applyPictureInPictureInsets:2 forSource:{v14, v13, v12, v11}];
    [v28 applyPictureInPictureInsets:3 forSource:{v4, v3, v6, v5}];
  }
}

- (void)_prepareLayoutTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transactionWillBeginLayoutTransition:self];

  v4 = [(SBWorkspaceTransaction *)self windowScene];
  v5 = [v4 displayLayoutPublisher];

  [v5 flush];
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
  v2 = [(SBWorkspaceTransaction *)&v4 sceneManager];

  return v2;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateScenesForTransitionCompletion
{
  v40 = *MEMORY[0x277D85DE8];
  if (self->_performSceneUpdates)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _updateKeyboardContextMaskStyles:0];
    v3 = [(SBWorkspaceTransaction *)self windowScene];
    v4 = [v3 medusaHostedKeyboardWindowController];
    [v4 updateMedusaHostedKeyboardWindow];

    if ([(SBSceneLayoutWorkspaceTransaction *)self isInterrupted]&& (interruptingTransitionRequest = self->_interruptingTransitionRequest) != 0)
    {
      v6 = [(SBWorkspaceTransitionRequest *)interruptingTransitionRequest applicationContext];
      v7 = [v6 applicationSceneEntities];
      v8 = [v7 bs_map:&__block_literal_global_200];
    }

    else
    {
      v8 = 0;
    }

    v26 = [(SBSceneLayoutWorkspaceTransaction *)self _collectSceneIDsOfExternallyHostedApps];
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
          v15 = [v14 identifier];
          if ([v14 isValid] && (objc_msgSend(v8, "containsObject:", v15) & 1) == 0 && (objc_msgSend(v26, "containsObject:", v15) & 1) == 0)
          {
            [v14 updateUISettingsWithBlock:&__block_literal_global_203];
            v16 = [v14 uiPresentationManager];
            [v16 modifyDefaultPresentationContext:&__block_literal_global_206];
          }
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v11);
    }

    if (SBFIsSwitcherForegroundAppsAvailable())
    {
      v17 = [(SBWorkspaceTransaction *)self windowScene];
      v18 = [v17 switcherController];

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

            v24 = [*(*(&v30 + 1) + 8 * j) sceneHandle];
            v25 = [v24 sceneIfExists];

            if (v25)
            {
              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __73__SBSceneLayoutWorkspaceTransaction__updateScenesForTransitionCompletion__block_invoke_4;
              v27[3] = &unk_2783B90C8;
              v28 = v18;
              v29 = v25;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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

- (SBSceneLayoutWorkspaceTransaction)initWithTransitionRequest:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 applicationContext];
  if (!v8)
  {
    [SBSceneLayoutWorkspaceTransaction initWithTransitionRequest:delegate:];
  }

  if ([v8 isBackground])
  {
    [SBSceneLayoutWorkspaceTransaction initWithTransitionRequest:delegate:];
  }

  v28.receiver = self;
  v28.super_class = SBSceneLayoutWorkspaceTransaction;
  v9 = [(SBWorkspaceTransaction *)&v28 initWithTransitionRequest:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transitionContext, v8);
    objc_storeWeak(&v10->_delegate, v7);
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

    if (([v8 waitsForSceneUpdates] & 1) == 0)
    {
      v10->_options |= 4uLL;
    }

    if (SBFIsSwitcherForegroundAppsAvailable())
    {
      v23 = [(SBWorkspaceTransaction *)v10 windowScene];
      v24 = [v23 switcherController];
      [v24 _prepareForSceneLayoutTransitionWithTransitionContext:v8];
    }

    v25 = [(SBSceneLayoutWorkspaceTransaction *)v10 _defaultDisplayLayoutTransitionReason];
    preferredDisplayLayoutTransitionReason = v10->_preferredDisplayLayoutTransitionReason;
    v10->_preferredDisplayLayoutTransitionReason = v25;

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
    v4 = [v3 isInSetupModeReadyToExit];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_willInterruptWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v5 _willInterruptWithReason:a3];
  self->_transitionFailed = 1;
  v4 = [(SBWorkspaceTransaction *)self _transitionRequestForInterruption];
  if (v4)
  {
    objc_storeStrong(&self->_interruptingTransitionRequest, v4);
  }
}

- (void)_willFailWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v4 _willFailWithReason:a3];
  self->_transitionFailed = 1;
}

- (void)_childTransactionDidComplete:(id)a3
{
  v4 = a3;
  if (self->_sceneUpdateTransactionGroup == v4)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _evaluateTransitionCompletion];
  }

  v5.receiver = self;
  v5.super_class = SBSceneLayoutWorkspaceTransaction;
  [(SBSceneLayoutWorkspaceTransaction *)&v5 _childTransactionDidComplete:v4];
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

- (BOOL)_sceneEntities:(id)a3 hasEntityRepresentingSceneID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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

        v11 = [*(*(&v15 + 1) + 8 * i) sceneHandle];
        v12 = [v11 sceneIdentifier];
        v13 = [v12 isEqualToString:v6];

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

- (BOOL)_shouldKeepSceneForSceneHandleForeground:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 sceneIfExists];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = 0;
    v6 = [WeakRetained transaction:self shouldKeepSceneForeground:v4 withReason:&v11];
    v7 = v11;
    if (v7)
    {
      v8 = SBLogTransaction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v4 identifier];
        *buf = 138543618;
        v13 = v9;
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

- (void)_updateKeyboardContextMaskStyles:(BOOL)a3
{
  v3 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v5 = +[SBPlatformController sharedInstance];
  v6 = [v5 isMedusaCapable];

  if (v6)
  {
    v7 = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    v8 = [v7 previousLayoutState];

    v9 = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
    v10 = [v9 layoutState];

    v33 = v8;
    v11 = [v8 elements];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v14 = v13;

    v15 = [v10 elements];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277CBEB98] set];
    }

    v18 = v17;
    v32 = v10;

    v19 = [v18 setByAddingObjectsFromSet:v14];
    v20 = [MEMORY[0x277CBEB58] set];
    if ([v18 count] >= 2)
    {
      [v20 unionSet:v18];
    }

    if (v3 && [v14 count] >= 2)
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
  v4 = [(SBSceneLayoutWorkspaceTransaction *)self transitionContext];
  v5 = [v4 layoutState];
  v6 = SBSafeCast(v3, v5);

  v7 = [v6 appLayout];
  if (v7)
  {
    v8 = [(SBWorkspaceTransaction *)self windowScene];
    v9 = [v8 switcherController];

    v10 = [v6 interfaceOrientation];
    [v9 containerBoundsForInterfaceOrientation:v10];
    v44 = v12;
    v45 = v11;
    v42 = v14;
    v43 = v13;
    v15 = [v9 windowScene];
    v16 = [v15 floatingDockController];
    [v16 floatingDockHeight];
    v41 = v17;

    v18 = [v9 _prefersStripHidden];
    v19 = [v9 _prefersDockHidden];
    [v9 _leftStatusBarPartIntersectionRegion];
    v40 = v20;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v9 _rightStatusBarPartIntersectionRegion];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    v36 = [v15 screen];
    [v36 scale];
    v38 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](v35, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", v7, v10, [v15 isExtendedDisplayWindowScene] ^ 1, v18, v19, v41, v37, v45, v44, v43, v42, v40, v22, v24, v26, v28, v30, v32, v34);
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

- (BOOL)_overrideInterfaceOrientationForOrientationMismatch:(int64_t *)a3
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
    v25 = a3;
    v27 = self;
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
        v12 = [v11 applicationSceneEntity];
        v13 = [MEMORY[0x277D0AAD8] sharedInstance];
        v14 = [v11 sceneIdentifier];
        v15 = [v13 sceneWithIdentifier:v14];

        v16 = [v11 sceneSettings];
        v17 = [v11 sceneSettings];
        v18 = [v17 interfaceOrientation];

        v19 = [v15 uiClientSettings];
        v20 = [v19 sb_effectiveInterfaceOrientation];

        if ([v15 isValid] && objc_msgSend(v16, "isUISubclass"))
        {
          if (([v16 deviceOrientationEventsEnabled] & 1) == 0)
          {
            if ([(SBSceneLayoutWorkspaceTransaction *)v27 isAuditHistoryEnabled])
            {
              [(SBSceneLayoutWorkspaceTransaction *)v27 _addAuditHistoryItem:@"Don't need to do any orientation override, the settings don't have orientation events enabled"];
            }

            return 0;
          }

          if (v18 != v20)
          {
            if (v8 && v8 != v20)
            {
              [SBSceneLayoutWorkspaceTransaction _overrideInterfaceOrientationForOrientationMismatch:];
            }

            if ([(SBSceneLayoutWorkspaceTransaction *)v27 isAuditHistoryEnabled])
            {
              v21 = BSInterfaceOrientationDescription();
              v22 = [v12 application];
              v23 = [v22 bundleIdentifier];
              [(SBSceneLayoutWorkspaceTransaction *)v27 _addAuditHistoryItem:@"Scene Layout Transaction needs to override orientation to %@ for %@", v21, v23];

              v9 = v26;
            }

            v8 = v20;
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
    if (v25)
    {
      if (v8)
      {
        *v25 = v8;
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

- (void)_sendActivationResultWithError:(id)a3
{
  v4 = a3;
  if ([(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext needsToSendActivationResult])
  {
    if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Sent activation result; success = %d", v4 == 0];
    }

    [(SBWorkspaceApplicationSceneTransitionContext *)self->_transitionContext sendActivationResultError:v4];
  }
}

- (void)_updatePreferredDisplayLayoutTransitionReason:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (!v4)
  {
    v4 = [(SBSceneLayoutWorkspaceTransaction *)self _defaultDisplayLayoutTransitionReason];
  }

  if (v4 != self->_preferredDisplayLayoutTransitionReason)
  {
    v5 = [(NSString *)v4 copy];
    preferredDisplayLayoutTransitionReason = self->_preferredDisplayLayoutTransitionReason;
    self->_preferredDisplayLayoutTransitionReason = v5;

    if (self->_displayLayoutTransitionAssertion)
    {
      v7 = [(SBWorkspaceTransaction *)self windowScene];
      v8 = [v7 displayLayoutPublisher];

      v9 = [v8 transitionAssertionWithReason:self->_preferredDisplayLayoutTransitionReason];
      [(BSInvalidatable *)self->_displayLayoutTransitionAssertion invalidate];
      displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
      self->_displayLayoutTransitionAssertion = v9;
    }
  }
}

- (void)transaction:(id)a3 willLaunchProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableSet *)self->_updateTransactions count]<= 1 && [(NSMutableSet *)self->_updateTransactions containsObject:v6])
  {
    if ([v7 isRunning])
    {
      [(SBSceneLayoutWorkspaceTransaction *)self _sendActivationResultWithError:0];
    }

    else
    {
      v8 = [v7 exitContext];
      v9 = [v8 createError];
      [(SBSceneLayoutWorkspaceTransaction *)self _sendActivationResultWithError:v9];
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SBSceneLayoutWorkspaceTransaction_transaction_willLaunchProcess___block_invoke;
  v12[3] = &unk_2783BB020;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
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

- (void)transaction:(id)a3 didLaunchProcess:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__SBSceneLayoutWorkspaceTransaction_transaction_didLaunchProcess___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)transaction:(id)a3 didCreateScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SBSceneLayoutWorkspaceTransaction_transaction_didCreateScene___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)transaction:(id)a3 willUpdateScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SBSceneLayoutWorkspaceTransaction_transaction_willUpdateScene___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)transaction:(id)a3 willCommitSceneUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SBSceneLayoutWorkspaceTransaction_transaction_willCommitSceneUpdate___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)transaction:(id)a3 didCommitSceneUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__SBSceneLayoutWorkspaceTransaction_transaction_didCommitSceneUpdate___block_invoke;
  v10[3] = &unk_2783BB020;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)synchronizedTransactionReadyToCommit:(id)a3
{
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Scene updates ready to commit."];
  }

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeSendActivationResultTransaction synchronize];
  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizePrepareTransitionTransaction synchronize];
  v5 = [(SBSceneLayoutWorkspaceTransaction *)self synchronizationDelegate];
  if (v5)
  {
    [(SBSceneLayoutWorkspaceTransaction *)self addMilestone:*MEMORY[0x277D0AA58]];
    if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
    {
      v4 = [MEMORY[0x277CF0C00] descriptionForObject:v5];
      [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Deferring commit to synchronization delegate: %@", v4];
    }

    [v5 synchronizedTransactionReadyToCommit:self];
  }

  else
  {
    [(FBSynchronizedTransactionGroup *)self->_sceneUpdateTransactionGroup performSynchronizedCommit];
  }
}

- (void)synchronizedTransaction:(id)a3 willCommitSynchronizedTransactions:(id)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);
  v7[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [WeakRetained synchronizedTransaction:self willCommitSynchronizedTransactions:v6];
}

- (void)synchronizedTransaction:(id)a3 didCommitSynchronizedTransactions:(id)a4
{
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled:a3])
  {
    [(SBSceneLayoutWorkspaceTransaction *)self _addAuditHistoryItem:@"Synchronizing with scene updates NOW."];
  }

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeBeginTransitionTransaction synchronize];
  WeakRetained = objc_loadWeakRetained(&self->_synchronizationDelegate);
  v6 = [(FBSynchronizedTransactionGroup *)self->_sceneUpdateTransactionGroup synchronizedTransactions];
  [WeakRetained synchronizedTransaction:self didCommitSynchronizedTransactions:v6];

  [(SBSceneLayoutSynchronizeTransitionTransaction *)self->_synchronizeAddSlavesTransaction synchronize];
  self->_waitingForSynchronizedCommit = 0;

  [(SBSceneLayoutWorkspaceTransaction *)self _evaluateTransitionCompletion];
}

- (BOOL)synchronizedTransactionGroup:(id)a3 shouldFailForSynchronizedTransaction:(id)a4
{
  v5 = a4;
  self->_transitionFailed = 1;
  if ([(SBSceneLayoutWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    v6 = [MEMORY[0x277CF0C00] descriptionForObject:v5];
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