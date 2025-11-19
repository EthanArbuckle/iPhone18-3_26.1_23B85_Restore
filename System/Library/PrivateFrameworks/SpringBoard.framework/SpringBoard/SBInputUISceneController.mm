@interface SBInputUISceneController
+ (BOOL)_shouldControlInputUIScene;
+ (id)_setupInfo;
- (BOOL)isVisibleForSpringBoard;
- (SBInputUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8;
- (UIWindow)hostingWindow;
- (id)_currentDisplayConfiguration;
- (id)_currentTraitsPipelineManager;
- (id)_targetSceneForFocusedSceneTokenString:(id)a3;
- (id)_targetSceneForKeyboardFocusContext:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (void)_createInputUIScene;
- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4;
- (void)_setupDefaultPresentationForTargetHostingGraph:(id)a3 targetScene:(id)a4;
- (void)_updateDefaultPresenterForTargetScene:(id)a3 contextID:(unsigned int)a4;
- (void)_userSwipedToKillFromSwitcher:(id)a3;
- (void)dealloc;
- (void)focusContextDidChange:(id)a3;
- (void)terminateWithReason:(id)a3;
@end

@implementation SBInputUISceneController

+ (id)_setupInfo
{
  v7[6] = *MEMORY[0x277D85DE8];
  v6[0] = @"class";
  v7[0] = objc_opt_class();
  v6[1] = @"enabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "_shouldControlInputUIScene")}];
  v7[1] = v3;
  v7[2] = @"com.apple.InputUI";
  v6[2] = @"jobLabel";
  v6[3] = @"traitsRole";
  v7[3] = @"SBTraitsParticipantRoleInputUI";
  v7[4] = &unk_283370298;
  v6[4] = @"vendingStrategy";
  v6[5] = @"workspaceID";
  v7[5] = @"com.apple.SpringBoard.SceneWorkspace.InputUI";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:6];

  return v4;
}

+ (BOOL)_shouldControlInputUIScene
{
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) != 0 || (v2 = objc_msgSend(MEMORY[0x277D75658], "usesInputSystemUIForAutoFillOnly")) != 0)
  {
    LOBYTE(v2) = objc_opt_respondsToSelector();
  }

  return v2 & 1;
}

- (SBInputUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8
{
  v12.receiver = self;
  v12.super_class = SBInputUISceneController;
  v8 = [(SBSystemUISceneController *)&v12 initWithSceneWorkspaceIdentifier:a3 clientProcessIdentity:a4 sceneVendingPolicy:a5 traitsRole:a6 jobLabel:a7 level:a8];
  v9 = v8;
  if (v8)
  {
    v11 = v8;
    BSDispatchMain();
  }

  return v9;
}

void __128__SBInputUISceneController_initWithSceneWorkspaceIdentifier_clientProcessIdentity_sceneVendingPolicy_traitsRole_jobLabel_level___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__userSwipedToKillFromSwitcher_ name:@"SBUserSwipedToKillRecentAppLayoutNotification" object:0];
  [*(a1 + 32) _createInputUIScene];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBInputUISceneController;
  [(SBSystemUISceneController *)&v4 dealloc];
}

- (void)_createInputUIScene
{
  BSDispatchQueueAssertMain();
  v15 = objc_alloc_init(MEMORY[0x277D75980]);
  v3 = objc_alloc_init(MEMORY[0x277D75180]);
  [v15 setSpecification:v3];

  v4 = MEMORY[0x277CCACA8];
  v5 = [(SBSystemUISceneController *)self jobLabel];
  v6 = [v4 stringWithFormat:@"SystemUIScene-[%@]", v5];
  [v15 setIdentifier:v6];

  v7 = [SBSingleSceneController alloc];
  v8 = [(SBSystemUISceneController *)self sceneWorkspaceController];
  v9 = [(SBSystemUISceneController *)self clientProcessIdentity];
  v10 = [(SBSystemUISceneController *)self traitsRole];
  v11 = [(SBSingleSceneController *)v7 initWithSceneWorkspaceController:v8 sceneRequestOptions:v15 clientIdentity:v9 traitsRole:v10 level:1.79769313e308];
  sceneController = self->_sceneController;
  self->_sceneController = v11;

  [(SBSingleSceneController *)self->_sceneController setShouldActivateForDisplayConfiguration:1];
  [(SBSingleSceneController *)self->_sceneController setShouldForegroundForDisplayConfiguration:1];
  [(SBSingleSceneController *)self->_sceneController setShouldBeKeptActiveWhileForeground:1];
  v13 = [(SBSingleSceneController *)self->_sceneController scene];
  inputUIScene = self->_inputUIScene;
  self->_inputUIScene = v13;
}

- (BOOL)isVisibleForSpringBoard
{
  v3 = [MEMORY[0x277D46F48] currentProcess];
  v4 = [(FBScene *)self->_targetScene clientHandle];
  v5 = [v4 processHandle];
  v6 = [v5 isEqual:v3];

  return v6;
}

- (UIWindow)hostingWindow
{
  v3 = objc_opt_class();
  v4 = [(SBSingleSceneController *)self->_sceneController presenter];
  v5 = SBSafeCast(v3, v4);

  v6 = [(SBSingleSceneController *)self->_sceneController scene];
  v7 = [v5 hostingWindowForScene:v6];

  return v7;
}

- (void)terminateWithReason:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemUISceneController *)self clientProcessIdentity];
  v6 = [MEMORY[0x277D0AAC0] sharedInstanceIfExists];
  v7 = [v6 processForIdentity:v5];

  if ([v7 isRunning])
  {
    v8 = [objc_alloc(MEMORY[0x277D47010]) initWithExplanation:v4];
    [v8 setReportType:0];
    [v8 setExceptionDomain:10];
    [v8 setExceptionCode:439025681];
    [v8 setMaximumTerminationResistance:50];
    LODWORD(v9) = BSPthreadCurrentEffectiveQualityOfService();
    if (v9 <= 0x19)
    {
      v9 = 25;
    }

    else
    {
      v9 = v9;
    }

    v10 = dispatch_get_global_queue(v9, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SBInputUISceneController_terminateWithReason___block_invoke;
    block[3] = &unk_2783A8ED8;
    v13 = v5;
    v14 = v8;
    v15 = v4;
    v11 = v8;
    dispatch_async(v10, block);
  }
}

void __48__SBInputUISceneController_terminateWithReason___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:a1[4]];
  v3 = [objc_alloc(MEMORY[0x277D47018]) initWithPredicate:v2 context:a1[5]];
  v9 = 0;
  v4 = [v3 execute:&v9];
  v5 = v9;
  v6 = SBLogInputUI();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[6];
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ termination succeeded", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __48__SBInputUISceneController_terminateWithReason___block_invoke_cold_1(a1, v5, v7);
  }
}

- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_targetScene)
  {
    v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v29 = v6;
      v11 = 0;
      v12 = *v33;
      obj = v8;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [v14 parentSceneIdentityToken];
          v16 = self;
          v17 = [(FBScene *)self->_targetScene identityToken];
          v18 = [v15 isEqual:v17];

          if (v18)
          {
            if (objc_opt_respondsToSelector())
            {
              if ([v14 isVisibleOnScreen])
              {
                v19 = v14;
              }

              else
              {
                v19 = v11;
              }

              v20 = v19;

              v11 = v20;
            }

            self = v16;
            [v30 addObject:v14];
          }

          else
          {
            self = v16;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);

      v6 = v29;
      if (v11)
      {
        v21 = v11;
        v22 = v21;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v23 = [v30 lastObject];
    if (!v23)
    {
      v26 = [(FBScene *)self->_targetScene identityToken];
      v27 = [v26 isEqual:self->_lastExternallyPresentedSceneToken];

      if (v27)
      {
        objc_storeWeak(&self->_currentExternalPresenter, 0);
        v21 = 0;
        v22 = 0;
      }

      else
      {
        lastExternallyPresentedSceneToken = self->_lastExternallyPresentedSceneToken;
        self->_lastExternallyPresentedSceneToken = 0;

        objc_storeWeak(&self->_currentExternalPresenter, 0);
        v22 = [(SBSystemUISceneController *)self defaultPresenter];
        v21 = 0;
      }

      goto LABEL_23;
    }

    v22 = v23;
    v21 = 0;
LABEL_22:
    v24 = [(FBScene *)self->_targetScene identityToken];
    v25 = self->_lastExternallyPresentedSceneToken;
    self->_lastExternallyPresentedSceneToken = v24;

    objc_storeWeak(&self->_currentExternalPresenter, v22);
LABEL_23:
    [(SBSingleSceneController *)self->_sceneController setPresenter:v22];
  }
}

- (void)focusContextDidChange:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __50__SBInputUISceneController_focusContextDidChange___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = SBLogInputUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v70 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Focused scene identity did change to: %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) sceneIdentity];
  v5 = [*(*(a1 + 40) + 152) identityToken];
  v6 = [v4 isEqual:v5];

  if (!v6)
  {
    v9 = objc_opt_respondsToSelector();
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v10 layeringSceneIdentity];
      v12 = SBLogInputUI();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v70 = v11;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Client overrides preferred layering scene identity: %{public}@", buf, 0xCu);
      }

      v13 = [*(a1 + 32) contextID];
      if (v11)
      {
        v14 = v11;
        v7 = v14;
LABEL_13:
        v15 = *(a1 + 32);
        if (!v15)
        {
          goto LABEL_18;
        }

        if (v13 || v14)
        {
          if (([v15 isEqual:*(*(a1 + 40) + 176)] & 1) == 0)
          {
            ++*(*(a1 + 40) + 200);
            objc_storeStrong((*(a1 + 40) + 176), *(a1 + 32));
            v27 = [*(a1 + 40) _targetSceneForKeyboardFocusContext:*(a1 + 32)];
            v28 = *(a1 + 40);
            v29 = *(v28 + 160);
            *(v28 + 160) = v27;

            if (!*(*(a1 + 40) + 160))
            {
              v30 = [SBApp windowSceneManager];
              v31 = [v30 activeDisplayWindowScene];

              v32 = [MEMORY[0x277D0AAD8] sharedInstance];
              v33 = [v31 _FBSScene];
              v34 = [v33 identityToken];
              v35 = [v32 sceneFromIdentityToken:v34];
              v36 = *(a1 + 40);
              v37 = *(v36 + 160);
              *(v36 + 160) = v35;
            }

            if (!v13)
            {
              v38 = *(a1 + 40);
              if (v38[20])
              {
                v39 = [v38 defaultPresenter];
                v40 = [v39 hostingWindowForScene:*(*(a1 + 40) + 152)];
                v41 = [v40 _contextId];

                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v42 = [*(*(a1 + 40) + 160) clientSettings];
                v43 = [v42 layers];
                v44 = [v43 reverseObjectEnumerator];

                v45 = [v44 countByEnumeratingWithState:&v65 objects:v75 count:16];
                if (v45)
                {
                  v46 = v45;
                  v47 = *v66;
                  while (2)
                  {
                    for (i = 0; i != v46; ++i)
                    {
                      if (*v66 != v47)
                      {
                        objc_enumerationMutation(v44);
                      }

                      v49 = *(*(&v65 + 1) + 8 * i);
                      if ([v49 contextID] && objc_msgSend(v49, "contextID") != v41)
                      {
                        v13 = [v49 contextID];
                        goto LABEL_36;
                      }
                    }

                    v46 = [v44 countByEnumeratingWithState:&v65 objects:v75 count:16];
                    if (v46)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v13 = 0;
LABEL_36:
              }

              else
              {
                v13 = 0;
              }
            }

            v50 = SBLogInputUI();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v62 = *(a1 + 32);
              v63 = *(*(a1 + 40) + 160);
              *buf = 138543874;
              v70 = v62;
              v71 = 2114;
              v72 = v63;
              v73 = 1024;
              v74 = v13;
              _os_log_error_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_ERROR, "Couldn't find a targetScene for the given focusContext[%{public}@]. Fall back to scene[%{public}@] and contextID[%x] ", buf, 0x1Cu);
            }

            v51 = *(a1 + 40);
            v52 = v51[20];
            if (v52)
            {
              [v51 _updateDefaultPresenterForTargetScene:v52 contextID:v13];
              v53 = [*(a1 + 40) _currentTraitsPipelineManager];
              v54 = *(a1 + 40);
              v55 = *(v54 + 184);
              *(v54 + 184) = v53;

              [*(*(a1 + 40) + 184) setKeyboardFocusContext:*(a1 + 32)];
              v56 = SBLogInputUI();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = [v14 stringRepresentation];
                v58 = [*(*(a1 + 40) + 160) identifier];
                *buf = 138543618;
                v70 = v57;
                v71 = 2114;
                v72 = v58;
                _os_log_impl(&dword_21ED4E000, v56, OS_LOG_TYPE_DEFAULT, "Target scene for focused identity[%{public}@]: %{public}@", buf, 0x16u);
              }

              v59 = *(a1 + 40);
              v60 = v59[18];
              v61 = [v59 _currentDisplayConfiguration];
              [v60 setTargetDisplayConfiguration:v61];

              [*(*(a1 + 40) + 144) setSceneContentVisible:1];
            }

            goto LABEL_43;
          }

          if (!*(a1 + 32))
          {
LABEL_18:
            v16 = *(a1 + 40);
            if (*(v16 + 176))
            {
              [*(v16 + 216) invalidate];
              [*(*(a1 + 40) + 144) setSceneContentVisible:0];
              v17 = *(a1 + 40);
              v18 = *(v17 + 168);
              *(v17 + 168) = 0;

              v19 = *(a1 + 40);
              v20 = *(v19 + 160);
              *(v19 + 160) = 0;

              v21 = *(a1 + 40);
              v22 = *(v21 + 176);
              *(v21 + 176) = 0;

              v23 = *(a1 + 40);
              v24 = *(v23 + 184);
              *(v23 + 184) = 0;

              v25 = *(*(a1 + 40) + 200);
              v26 = dispatch_time(0, 4000000000);
              v64[0] = MEMORY[0x277D85DD0];
              v64[1] = 3221225472;
              v64[2] = __50__SBInputUISceneController_focusContextDidChange___block_invoke_57;
              v64[3] = &unk_2783A8BC8;
              v64[4] = *(a1 + 40);
              v64[5] = v25;
              dispatch_after(v26, MEMORY[0x277D85CD0], v64);
            }
          }
        }

LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v13 = [v10 contextID];
    }

    v14 = [*(a1 + 32) sceneIdentity];
    v7 = 0;
    goto LABEL_13;
  }

  v7 = SBLogInputUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v70 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Can't focus InputUI on itself: %{public}@. Note: this can happen in case InputUI scene is used for AutoFill purposes, when InputUI is otherwise not used for keyboard hosting ones.", buf, 0xCu);
  }

LABEL_44:
}

void __50__SBInputUISceneController_focusContextDidChange___block_invoke_57(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(a1 + 40) == *(v3 + 200))
  {
    v7 = v1;
    v8 = v2;
    [*(v3 + 184) setKeyboardFocusContext:0];
    [*(*(a1 + 32) + 144) setTargetDisplayConfiguration:0];
    v5 = SBLogInputUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "InputUI scene was backgrounded", v6, 2u);
    }
  }
}

- (id)_targetSceneForKeyboardFocusContext:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneIdentity];
  v6 = v5;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__13;
    v18 = __Block_byref_object_dispose__13;
    v7 = [v5 stringRepresentation];
    v19 = [(SBInputUISceneController *)self _targetSceneForFocusedSceneTokenString:v7];

    v8 = v15[5];
    if (!v8)
    {
      v9 = objc_alloc_init(SBKeyboardFocusVisibilityGraphNavigator);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __64__SBInputUISceneController__targetSceneForKeyboardFocusContext___block_invoke;
      v13[3] = &unk_2783ADBF0;
      v13[4] = self;
      v13[5] = &v14;
      [(SBKeyboardFocusVisibilityGraphNavigator *)v9 reverseEnumerateChainContainingSceneIdentityToken:v6 block:v13];

      v8 = v15[5];
      if (!v8)
      {
        v10 = SBLogInputUI();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [(SBInputUISceneController *)v4 _targetSceneForKeyboardFocusContext:v10];
        }

        v8 = v15[5];
      }
    }

    v11 = v8;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __64__SBInputUISceneController__targetSceneForKeyboardFocusContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) _targetSceneForFocusedSceneTokenString:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)_targetSceneForFocusedSceneTokenString:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [SBApp systemUIScenesCoordinator];
    v5 = [v4 sceneFromIdentityTokenStringRepresentation:v3];

    if (!v5)
    {
      v6 = [MEMORY[0x277D0AAD8] sharedInstance];
      v5 = [v6 sceneFromIdentityTokenStringRepresentation:v3];

      if (!v5)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v7 = [SBApp windowSceneManager];
        v8 = [v7 connectedWindowScenes];

        obj = v8;
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v5 = 0;
          v11 = *v25;
          do
          {
            v12 = 0;
            v13 = v5;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v24 + 1) + 8 * v12);
              v15 = +[SBSceneManagerCoordinator sharedInstance];
              v16 = [v14 _fbsDisplayIdentity];
              v17 = [v15 sceneManagerForDisplayIdentity:v16];
              v18 = [v17 externalForegroundApplicationSceneHandles];

              v22[0] = MEMORY[0x277D85DD0];
              v22[1] = 3221225472;
              v22[2] = __67__SBInputUISceneController__targetSceneForFocusedSceneTokenString___block_invoke;
              v22[3] = &unk_2783ADC40;
              v23 = v3;
              v19 = [v18 bs_firstObjectPassingTest:v22];
              v5 = [v19 sceneIfExists];

              ++v12;
              v13 = v5;
            }

            while (v10 != v12);
            v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
          }

          while (v10);
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __67__SBInputUISceneController__targetSceneForFocusedSceneTokenString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sceneIfExists];
  v4 = [v3 clientSettings];
  v5 = [v4 layers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SBInputUISceneController__targetSceneForFocusedSceneTokenString___block_invoke_2;
  v9[3] = &unk_2783ADC18;
  v10 = *(a1 + 32);
  v6 = [v5 bs_firstObjectPassingTest:v9];
  v7 = v6 != 0;

  return v7;
}

uint64_t __67__SBInputUISceneController__targetSceneForFocusedSceneTokenString___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyboardProxyLayer])
  {
    v3 = [v2 keyboardOwner];
    v4 = [v3 stringRepresentation];
    v5 = BSEqualObjects();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDefaultPresenterForTargetScene:(id)a3 contextID:(unsigned int)a4
{
  v4 = *&a4;
  v7 = a3;
  if (!v7)
  {
    [SBInputUISceneController _updateDefaultPresenterForTargetScene:a2 contextID:self];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [MEMORY[0x277D75978] sceneHostingGraph];
  objc_initWeak(&location, self);
  [(BSInvalidatable *)self->_hostingGraphObservationInvalidatable invalidate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SBInputUISceneController__updateDefaultPresenterForTargetScene_contextID___block_invoke;
  v12[3] = &unk_2783ADC68;
  objc_copyWeak(&v14, &location);
  v13 = v7;
  v9 = [v8 observeLocalWindowGraphHostingContextID:v4 withHandler:v12];
  hostingGraphObservationInvalidatable = self->_hostingGraphObservationInvalidatable;
  self->_hostingGraphObservationInvalidatable = v9;

  v11 = [v8 localWindowGraphHostingContextID:v4];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

LABEL_6:
  [(SBInputUISceneController *)self _setupDefaultPresentationForTargetHostingGraph:v11 targetScene:v7];
  [(SBSystemUISceneController *)self _setNeedsPresentersEvaluation];
}

void __76__SBInputUISceneController__updateDefaultPresenterForTargetScene_contextID___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _setupDefaultPresentationForTargetHostingGraph:v3 targetScene:*(a1 + 32)];

    [WeakRetained _setNeedsPresentersEvaluation];
  }
}

- (void)_setupDefaultPresentationForTargetHostingGraph:(id)a3 targetScene:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SBInputUISceneController _setupDefaultPresentationForTargetHostingGraph:a2 targetScene:self];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = [v7 reverseObjectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v45;
LABEL_5:
    v14 = 0;
    v15 = v12;
    while (1)
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v44 + 1) + 8 * v14);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = v16;
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      ++v14;
      v15 = v12;
      if (v11 == v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        v15 = v12;
        v12 = 0;
        break;
      }
    }
  }

  else
  {
    v15 = 0;
    v12 = 0;
  }

  v18 = [v8 settings];
  v19 = [v18 sb_displayConfigurationForSceneManagers];

  v20 = [v12 windowScene];
  v21 = [(SBSystemUISceneController *)self defaultPresenter];

  if (v21)
  {
    v22 = [(SBSystemUISceneController *)self defaultPresenter];
    v23 = [v22 targetWindowScene];

    if (v12)
    {
      if ([v20 isEqual:v23])
      {
        goto LABEL_26;
      }

      v24 = [(SBSystemUISceneController *)self defaultPresenter];
      v25 = [v24 dismissScene:self->_inputUIScene];

      v26 = [[SBSystemUISceneDefaultPresenter alloc] initWithWindowHostingPresentationOnWindowScene:v20];
    }

    else
    {
      v43 = v8;
      v29 = v7;
      v30 = [(SBSystemUISceneController *)self defaultPresenter];
      v31 = [v30 targetDisplayConfiguration];
      v32 = [v31 isEqual:v19];

      if (v32)
      {
        v7 = v29;
        v8 = v43;
        goto LABEL_26;
      }

      v33 = [(SBSystemUISceneController *)self defaultPresenter];
      v34 = [v33 dismissScene:self->_inputUIScene];

      v26 = [[SBSystemUISceneDefaultPresenter alloc] initWithTargetDisplayConfiguration:v19];
      v7 = v29;
      v8 = v43;
    }

    [(SBSystemUISceneController *)self setDefaultPresenter:v26];
  }

  else
  {
    v27 = [SBSystemUISceneDefaultPresenter alloc];
    if (v12)
    {
      v28 = [(SBSystemUISceneDefaultPresenter *)v27 initWithWindowHostingPresentationOnWindowScene:v20];
    }

    else
    {
      v28 = [(SBSystemUISceneDefaultPresenter *)v27 initWithTargetDisplayConfiguration:v19];
    }

    v23 = v28;
    [(SBSystemUISceneController *)self setDefaultPresenter:v28];
  }

LABEL_26:

  if (v12)
  {
    v35 = v12;
  }

  else
  {
    v35 = v15;
  }

  v36 = v35;
  v37 = [(SBSystemUISceneController *)self defaultPresenter];
  v38 = MEMORY[0x277CCABB0];
  if (v36)
  {
    [v36 windowLevel];
    v40 = 1.1;
  }

  else
  {
    v39 = *MEMORY[0x277D76EE8];
    v40 = 255.0;
  }

  v41 = [v38 numberWithDouble:v39 + v40];
  [v37 setPreferredWindowLevel:v41];

  v42 = SBLogInputUI();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v49 = v7;
    v50 = 2114;
    v51 = v12;
    _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "localWindowsGraphForFocusedContextID[%{public}@] targetWindow[%{public}@]", buf, 0x16u);
  }
}

- (id)_currentTraitsPipelineManager
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBInputUISceneController *)self _currentDisplayConfiguration];
  v5 = [v4 identity];
  v6 = [v3 windowSceneForDisplayIdentity:v5];
  v7 = [v6 traitsPipelineManager];

  return v7;
}

- (id)_currentDisplayConfiguration
{
  v3 = [(SBSystemUISceneController *)self defaultPresenter];
  v4 = [v3 targetWindowScene];

  v5 = [(SBSystemUISceneController *)self defaultPresenter];
  v6 = [v5 targetDisplayConfiguration];

  if (v4)
  {
    v7 = [v4 _sbDisplayConfiguration];
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v6)
  {
    v7 = v6;
    goto LABEL_5;
  }

  v10 = [(FBScene *)self->_targetScene settings];
  v8 = [v10 sb_displayConfigurationForSceneManagers];

LABEL_6:

  return v8;
}

- (void)_userSwipedToKillFromSwitcher:(id)a3
{
  v4 = a3;
  v5 = [(SBSystemUISceneController *)self clientProcessIdentity];
  v6 = [MEMORY[0x277D0AAC0] sharedInstanceIfExists];
  v7 = [v6 processForIdentity:v5];

  if ([v7 isRunning])
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D67C58];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SBInputUISceneController__userSwipedToKillFromSwitcher___block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    v9 = [v8 userSwipedToKillActionWithTimeoutHandler:v14];
    v10 = SBLogInputUI();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Sending SBSUIUserSwipedToKillAction", v13, 2u);
    }

    v11 = [v7 workspace];
    v12 = [MEMORY[0x277CBEB98] setWithObject:v9];
    [v11 sendActions:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __58__SBInputUISceneController__userSwipedToKillFromSwitcher___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained terminateWithReason:@"SBSUIUserSwipedToKillAction InputUI timeout"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBInputUISceneController;
  v4 = [(SBSystemUISceneController *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_sceneController withName:@"InputUI Scene Controller"];

  return v4;
}

void __48__SBInputUISceneController_terminateWithReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "%{public}@ termination failed with error: %{public}@", &v4, 0x16u);
}

- (void)_targetSceneForKeyboardFocusContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Couldn't find a target scene for focused context: %{public}@", &v2, 0xCu);
}

- (void)_updateDefaultPresenterForTargetScene:(uint64_t)a1 contextID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInputUISceneController.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"targetScene"}];
}

- (void)_setupDefaultPresentationForTargetHostingGraph:(uint64_t)a1 targetScene:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInputUISceneController.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"targetScene"}];
}

@end