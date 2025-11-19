@interface SBSystemUISceneController
+ (id)_setupInfo;
- (BOOL)enumerateScenesWithBlock:(id)a3;
- (SBSystemUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8;
- (id)__newSceneIdentifierForWindowScene:(id)a3 sessionRole:(id)a4;
- (id)__sceneFutureIdentifierForWindowScene:(id)a3 level:(double)a4;
- (id)_createOrRetrievePresenterForDisplayIdentity:(id)a3 level:(double)a4;
- (id)_newAppSceneRequestOptionsForWindowScene:(id)a3 withBlueprintOptions:(id)a4;
- (id)_newSceneControllerForWindowScene:(id)a3 sceneRequestOptions:(id)a4 traitsRole:(id)a5 level:(double)a6;
- (id)addPresenter:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)sceneFromIdentityToken:(id)a3;
- (id)sceneFromIdentityTokenStringRepresentation:(id)a3;
- (id)sceneWorkspaceControllerForProcessIdentity:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4;
- (void)_evaluateSceneVisibility;
- (void)_invalidateAllSceneControllers;
- (void)_invalidateSceneControllersForWindowScene:(id)a3;
- (void)_setNeedsPresentersEvaluation;
- (void)_updateClientProcess:(id)a3;
- (void)_updateDisplayConfiguration:(id)a3 forSceneControllerWithScene:(id)a4;
- (void)_updateEnhancedWindowingModeEnabled:(BOOL)a3 forSceneControllerWithScene:(id)a4;
- (void)activateSceneForProcessIdentity:(id)a3 withHandle:(id)a4 options:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)a3 processIdentity:(id)a4 completion:(id)a5;
- (void)processDidExit:(id)a3;
- (void)processManager:(id)a3 didAddProcess:(id)a4;
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBSystemUISceneController

- (void)_setNeedsPresentersEvaluation
{
  v3 = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:v3 forSceneControllers:self->_sceneControllers];
}

+ (id)_setupInfo
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return MEMORY[0x277CBEC10];
}

- (SBSystemUISceneController)initWithSceneWorkspaceIdentifier:(id)a3 clientProcessIdentity:(id)a4 sceneVendingPolicy:(int64_t)a5 traitsRole:(id)a6 jobLabel:(id)a7 level:(double)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBSystemUISceneController initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:];
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [SBSystemUISceneController initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:];
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_11:
  [SBSystemUISceneController initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:];
LABEL_4:
  v46.receiver = self;
  v46.super_class = SBSystemUISceneController;
  v18 = [(SBSystemUISceneController *)&v46 init];
  v19 = v18;
  if (v18)
  {
    v18->_level = a8;
    v20 = [v17 copy];
    jobLabel = v19->_jobLabel;
    v19->_jobLabel = v20;

    v22 = [v16 copy];
    traitsRole = v19->_traitsRole;
    v19->_traitsRole = v22;

    v19->_sceneVendingPolicy = a5;
    v24 = [MEMORY[0x277CBEB18] array];
    sceneControllers = v19->_sceneControllers;
    v19->_sceneControllers = v24;

    objc_storeStrong(&v19->_clientProcessIdentity, a4);
    v26 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneControllersByDisplayIdentity = v19->_sceneControllersByDisplayIdentity;
    v19->_sceneControllersByDisplayIdentity = v26;

    v28 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    presentersByLevelForDisplayIdentity = v19->_presentersByLevelForDisplayIdentity;
    v19->_presentersByLevelForDisplayIdentity = v28;

    v30 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneFuturesByLevelForDisplayIdentity = v19->_sceneFuturesByLevelForDisplayIdentity;
    v19->_sceneFuturesByLevelForDisplayIdentity = v30;

    v32 = objc_alloc_init(MEMORY[0x277D65F28]);
    sceneWorkspaceControllerDelegate = v19->_sceneWorkspaceControllerDelegate;
    v19->_sceneWorkspaceControllerDelegate = v32;

    v34 = [objc_alloc(MEMORY[0x277D65F20]) initWithIdentifier:v14 delegate:v19->_sceneWorkspaceControllerDelegate];
    sceneWorkspaceController = v19->_sceneWorkspaceController;
    v19->_sceneWorkspaceController = v34;

    if ((v19->_sceneVendingPolicy - 1) <= 2)
    {
      v36 = [MEMORY[0x277D0AAC0] sharedInstance];
      v37 = [v36 processForIdentity:v19->_clientProcessIdentity];
      [(SBSystemUISceneController *)v19 _updateClientProcess:v37];

      [(FBProcess *)v19->_clientProcess addObserver:v19];
      v38 = [MEMORY[0x277D0AAC0] sharedInstance];
      [v38 addObserver:v19];
    }

    objc_initWeak(&location, v19);
    v39 = MEMORY[0x277D85CD0];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - SystemUISceneController - %@", v17];
    objc_copyWeak(&v44, &location);
    v41 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v19->_stateCaptureInvalidatable;
    v19->_stateCaptureInvalidatable = v41;

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v19;
}

id __129__SBSystemUISceneController_initWithSceneWorkspaceIdentifier_clientProcessIdentity_sceneVendingPolicy_traitsRole_jobLabel_level___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionWithMultilinePrefix:0];

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0AAC0] sharedInstance];
  [v3 removeObserver:self];

  [(FBProcess *)self->_clientProcess removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(SBSystemUISceneController *)self _presenterArray];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = SBSystemUISceneController;
  [(SBSystemUISceneController *)&v9 dealloc];
}

- (void)windowSceneDidConnect:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
  v6 = [v4 _fbsDisplayIdentity];
  v7 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:v6];

  if (v7)
  {
    [SBSystemUISceneController windowSceneDidConnect:];
  }

  if (self->_sceneVendingPolicy >= 2uLL)
  {
    v8 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity keyEnumerator];
    v9 = v8;
    if (self->_sceneVendingPolicy != 3 || ([v8 nextObject], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v11 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectEnumerator];
      v12 = [v11 allObjects];
      v13 = [v12 bs_filter:&__block_literal_global_438];
      v14 = [v13 firstObject];

      if (v14)
      {
        v29 = v11;
        v30 = v9;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = v14;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v32;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              v22 = [v21 scene];
              v23 = [(SBSystemUISceneController *)self _isAllowedToRecreateSceneOnConnectingWindowScene:v22];

              if (v23)
              {
                v24 = [v21 sceneOptions];
                v25 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:v4 withBlueprintOptions:v24];

                v26 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:v4 withSceneRequestOptions:v25];
                [v26 setSceneActive:{objc_msgSend(v21, "isSceneActive")}];

                v18 = v26;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        v11 = v29;
        v9 = v30;
        v14 = v28;
      }

      else
      {
        v27 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:v4 withBlueprintOptions:0];
        v18 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:v4 withSceneRequestOptions:v27];
      }
    }
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_sceneVendingPolicy)
  {
    if (!self->_sceneControllers)
    {
      [SBSystemUISceneController windowSceneDidDisconnect:];
    }

    [(SBSystemUISceneController *)self _invalidateSceneControllersForWindowScene:v4];
    if ((SBFIsShellSceneKitAvailable() & 1) != 0 || [v4 isContinuityDisplayWindowScene])
    {
      v5 = [v4 _fbsDisplayIdentity];
      v6 = SBLogSystemUIScene();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ display disconnected", &v7, 0xCu);
      }

      [(NSMapTable *)self->_presentersByLevelForDisplayIdentity removeObjectForKey:v5];
      [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity removeObjectForKey:v5];
    }
  }
}

- (id)addPresenter:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBSystemUISceneController addPresenter:];
  }

  v6 = [(SBSystemUISceneController *)self _presenterArray];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [(SBSystemUISceneController *)a2 addPresenter:v5];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v8 = objc_alloc(MEMORY[0x277CF0CE8]);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __42__SBSystemUISceneController_addPresenter___block_invoke;
  v18 = &unk_2783C4090;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v9 = [v8 initWithIdentifier:@"SBSystemUISceneController" forReason:@"_initiallyPendedPresenters" invalidationBlock:&v15];
  if (objc_opt_respondsToSelector())
  {
    [v5 setPresentingDelegate:{self, v15, v16, v17, v18}];
  }

  presenters = self->_presenters;
  if (presenters)
  {
    v11 = presenters;
  }

  else
  {
    v11 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  }

  v12 = self->_presenters;
  self->_presenters = v11;

  [(NSPointerArray *)self->_presenters addPointer:v5];
  [(NSPointerArray *)self->_presenters compact];
  v13 = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:v13 forSceneControllers:self->_sceneControllers];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v9;
}

void __42__SBSystemUISceneController_addPresenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained[6] count];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      while ([WeakRetained[6] pointerAtIndex:v5] != v2)
      {
        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }

      [WeakRetained[6] removePointerAtIndex:v5];
      v6 = [WeakRetained _presenterArray];
      [WeakRetained _evaluateAvailablePresenters:v6 forSceneControllers:WeakRetained[5]];
    }
  }

LABEL_8:
}

- (void)_evaluateAvailablePresenters:(id)a3 forSceneControllers:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a4;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    v30 = self;
    v31 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        v9 = [v8 sceneOptions];
        v36 = v9;
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 scenePlacementConfiguration];
          v11 = objc_opt_respondsToSelector();
          if ((v11 & 1) == 0)
          {
            v12 = 0;
            v13 = 0;
LABEL_23:
            v19 = v11 ^ 1;

            goto LABEL_24;
          }

          v12 = [v10 targetSceneIdentity];

          if (v12)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v10 = v6;
            v13 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v13)
            {
              v32 = v11;
              v14 = *v38;
              while (2)
              {
                for (i = 0; i != v13; i = i + 1)
                {
                  if (*v38 != v14)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v16 = *(*(&v37 + 1) + 8 * i);
                  v17 = [v16 parentSceneIdentityToken];
                  v18 = [v17 isEqual:v12];

                  if (v18)
                  {
                    v13 = v16;
                    goto LABEL_22;
                  }
                }

                v13 = [v10 countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }

LABEL_22:
              self = v30;
              v6 = v31;
              v11 = v32;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = 0;
        v19 = 1;
LABEL_24:
        v20 = [v8 scene];
        v21 = [v20 settings];
        v22 = [v21 sb_displayIdentityForSceneManagers];

        if ((SBFIsShellSceneKitAvailable() & 1) != 0 || [v22 isContinuityDisplay])
        {
          v23 = [v8 scene];
          v24 = [v23 settings];
          [v24 level];
          v25 = [(SBSystemUISceneController *)self _createOrRetrievePresenterForDisplayIdentity:v22 level:?];

          [v8 setPresenter:v25];
        }

        else if (v13)
        {
          [v8 setPresenter:v13];
        }

        else if (v19)
        {
          v26 = [v6 lastObject];
          defaultPresenter = v26;
          if (!v26)
          {
            defaultPresenter = self->_defaultPresenter;
          }

          v28 = defaultPresenter;

          [v8 setPresenter:v28];
        }

        ++v7;
      }

      while (v7 != v35);
      v29 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      v35 = v29;
    }

    while (v29);
  }
}

- (id)_newSceneControllerForWindowScene:(id)a3 sceneRequestOptions:(id)a4 traitsRole:(id)a5 level:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_9:
    [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_10:
  [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
LABEL_4:
  v13 = [v10 _fbsDisplayConfiguration];
  v14 = [v13 identity];
  v15 = [MEMORY[0x277D77770] sb_defaultContext];
  v16 = objc_alloc(MEMORY[0x277CF0BE8]);
  [v15 deviceInfoFloatValueForKey:*MEMORY[0x277D77810]];
  v17 = [v16 initWithCornerRadius:?];
  v24 = v11;
  v18 = [[SBSingleSceneController alloc] initWithSceneWorkspaceController:self->_sceneWorkspaceController sceneRequestOptions:v11 clientIdentity:self->_clientProcessIdentity traitsRole:v12 level:a6];
  [(SBSingleSceneController *)v18 setTargetDisplayConfiguration:v13];
  [(SBSingleSceneController *)v18 setCornerRadiusConfiguration:v17];
  [(SBSingleSceneController *)v18 setEnhancedWindowingModeEnabled:0];
  [(SBSingleSceneController *)v18 setShouldForegroundForDisplayConfiguration:1];
  [(SBSingleSceneController *)v18 setShouldActivateUponClientConnection:self->_sceneVendingPolicy == 2];
  [(SBSystemUISceneController *)self _evaluateSceneVisibility];
  v19 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:v14];
  if (v19)
  {
    v20 = v19;
    v21 = v10;
    [v19 addObject:v18];
  }

  else
  {
    v21 = v10;
    v20 = [MEMORY[0x277CBEB18] arrayWithObject:v18];
  }

  [(NSMapTable *)self->_sceneControllersByDisplayIdentity setObject:v20 forKey:v14];
  [(NSMutableArray *)self->_sceneControllers addObject:v18];
  v22 = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:v22 forSceneControllers:self->_sceneControllers];

  return v18;
}

- (void)_invalidateSceneControllersForWindowScene:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 _fbsDisplayIdentity];
  v5 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:v4];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SBSystemUISceneController__invalidateSceneControllersForWindowScene___block_invoke;
  v15[3] = &unk_2783C40B8;
  v15[4] = self;
  v6 = [v5 bs_filter:v15];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_sceneControllers removeObjectsInArray:v6];
  [(NSMapTable *)self->_sceneControllersByDisplayIdentity removeObjectForKey:v4];
}

- (void)_invalidateAllSceneControllers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [SBApp windowSceneManager];
  v4 = [v3 connectedWindowScenes];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBSystemUISceneController *)self _invalidateSceneControllersForWindowScene:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_updateDisplayConfiguration:(id)a3 forSceneControllerWithScene:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_sceneControllers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      v14 = [v13 scene];

      if (v14 == v7)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v15 = v13;

    if (!v15)
    {
      goto LABEL_15;
    }

    sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
    v17 = [v7 settings];
    v18 = [v17 displayIdentity];
    v19 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:v18];
    [v19 removeObject:v15];

    [(NSMutableArray *)v15 setTargetDisplayConfiguration:v6];
    v20 = self->_sceneControllersByDisplayIdentity;
    v21 = [v6 identity];
    v22 = [(NSMapTable *)v20 objectForKey:v21];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v22 addObject:v15];
    v23 = self->_sceneControllersByDisplayIdentity;
    v24 = [v6 identity];
    [(NSMapTable *)v23 setObject:v22 forKey:v24];
  }

  else
  {
LABEL_9:
    v15 = v8;
  }

LABEL_15:
}

- (void)_updateEnhancedWindowingModeEnabled:(BOOL)a3 forSceneControllerWithScene:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_sceneControllers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v12 scene];

        if (v13 == v6)
        {
          [v12 setEnhancedWindowingModeEnabled:v4];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)_newAppSceneRequestOptionsForWindowScene:(id)a3 withBlueprintOptions:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D75980];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v6 specification];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D75180]);
  }

  v13 = v12;

  v14 = [v13 uiSceneSessionRole];
  v15 = [(SBSystemUISceneController *)self __newSceneIdentifierForWindowScene:v8 sessionRole:v14];

  [v9 setIdentifier:v15];
  [v9 setSpecification:v13];
  v16 = [v6 actions];
  [v9 setActions:v16];

  v17 = [v6 initialClientSettings];
  [v9 setInitialClientSettings:v17];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v18 = [v6 scenePlacementConfiguration];
    [v9 setScenePlacementConfiguration:v18];
  }

  return v9;
}

- (id)__newSceneIdentifierForWindowScene:(id)a3 sessionRole:(id)a4
{
  v6 = a3;
  v7 = a4;
  ++self->_sceneIDGeneration;
  v8 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneWorkspaceIdentifier];
  v9 = [v8 componentsSeparatedByString:@"."];
  v10 = [v9 lastObject];

  v11 = v7;
  v12 = v11;
  if ([v11 hasPrefix:@"SBSUIWindowSceneSessionRole"])
  {
    v12 = [v11 substringFromIndex:{objc_msgSend(@"SBSUIWindowSceneSessionRole", "length")}];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [v6 _fbsDisplayIdentity];
  v15 = [v14 description];
  v16 = [v13 stringWithFormat:@"SUIS-%@-%@:[%@] - %lu", v10, v12, v15, self->_sceneIDGeneration];

  return v16;
}

- (id)__sceneFutureIdentifierForWindowScene:(id)a3 level:(double)a4
{
  sceneWorkspaceController = self->_sceneWorkspaceController;
  v6 = a3;
  v7 = [(SBFSceneWorkspaceController *)sceneWorkspaceController sceneWorkspaceIdentifier];
  v8 = [v7 componentsSeparatedByString:@"."];
  v9 = [v8 lastObject];

  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 _fbsDisplayIdentity];

  v12 = [v11 description];
  v13 = [v10 stringWithFormat:@"SUIS-Future-%@:[%@][%f]", v9, v12, *&a4];

  return v13;
}

- (id)_createOrRetrievePresenterForDisplayIdentity:(id)a3 level:(double)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(NSMapTable *)self->_presentersByLevelForDisplayIdentity objectForKey:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [SBApp windowSceneManager];
    v12 = [v11 windowSceneForDisplayIdentity:v6];

    v13 = [v12 _FBSScene];
    v14 = [v13 workspaceService];
    v15 = [v12 _fbsDisplayConfiguration];
    v16 = [(SBSystemUISceneController *)self __sceneFutureIdentifierForWindowScene:v12 level:a4];
    [v6 isContinuityDisplay];
    v17 = objc_opt_new();
    v18 = [v13 settings];
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke;
    v54[3] = &unk_2783C4130;
    v27 = v16;
    v55 = v27;
    v28 = v17;
    v56 = v28;
    v29 = v15;
    v57 = v29;
    v58 = v20;
    v59 = v22;
    v60 = v24;
    v61 = v26;
    v62 = a4;
    v51 = v14;
    v30 = [v14 createScene:v54];
    if (v30)
    {
      v45 = v28;
      v47 = v29;
      v31 = SBLogSystemUIScene();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        [v30 identifier];
        v33 = v32 = v27;
        *buf = 138543362;
        v64 = v33;
        _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "Scene future %{public}@ created", buf, 0xCu);

        v27 = v32;
      }

      v50 = v13;

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_113;
      v52[3] = &unk_2783ACC28;
      v49 = v27;
      v34 = v27;
      v53 = v34;
      [v30 activateWithCompletion:v52];
      v35 = [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity objectForKey:v6];
      if (!v35)
      {
        v35 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity setObject:v35 forKey:v6];
      }

      v36 = [MEMORY[0x277CCABB0] numberWithDouble:{a4, v45, v47}];
      [v35 setObject:v30 forKey:v36];

      v37 = [v30 delegate];
      v38 = objc_opt_class();
      v39 = v37;
      if (v38)
      {
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      v41 = v40;

      if (v41)
      {
        v10 = [[SBSystemUISceneDefaultPresenter alloc] initWithWindowHostingPresentationOnWindowScene:v41];
        [(SBSystemUISceneDefaultPresenter *)v10 setPresentingDelegate:self];
        v42 = [(NSMapTable *)self->_presentersByLevelForDisplayIdentity objectForKey:v6];
        if (!v42)
        {
          v42 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          [(NSMapTable *)self->_presentersByLevelForDisplayIdentity setObject:v42 forKey:v6];
        }

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
        [v42 setObject:v10 forKey:v43];
      }

      else
      {
        v42 = SBLogSystemUIScene();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [SBSystemUISceneController _createOrRetrievePresenterForDisplayIdentity:v34 level:v42];
        }

        v10 = 0;
      }

      v27 = v49;
      v13 = v50;
      v28 = v46;
      v29 = v48;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentifier:v3];
  [v4 setSpecification:*(a1 + 40)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_2;
  v5[3] = &unk_2783C4108;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  [v4 configureParameters:v5];
}

void __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_2(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_3;
  v7[3] = &unk_2783C40E0;
  v8 = *(a1 + 32);
  v4 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v4;
  v5 = a2;
  [v5 updateSettingsWithBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_4;
  v6[3] = &__block_descriptor_40_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v6[4] = *(a1 + 72);
  [v5 updateClientSettingsWithBlock:v6];
}

void __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setForeground:1];
  [v3 setDisplayConfiguration:*(a1 + 32)];
  [v3 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_113(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogSystemUIScene();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Scene future %{public}@ creation complete %u error %{public}@", &v8, 0x1Cu);
  }
}

- (void)activateSceneForProcessIdentity:(id)a3 withHandle:(id)a4 options:(id)a5 completion:(id)a6
{
  v73[1] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  BSDispatchQueueAssertMain();
  if (v9)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemUISceneController activateSceneForProcessIdentity:withHandle:options:completion:];
    if (a3)
    {
      goto LABEL_3;
    }
  }

  [SBSystemUISceneController activateSceneForProcessIdentity:withHandle:options:completion:];
LABEL_3:
  if (!self->_sceneVendingPolicy)
  {
    v23 = MEMORY[0x277CCA9B8];
    v24 = SBSystemUISceneControllerErrorDomain;
    v72 = *MEMORY[0x277CCA450];
    v73[0] = @"The controller policy doesn't allow to handle this request";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v11 = [v23 errorWithDomain:v24 code:2 userInfo:v25];

    v10[2](v10, 0, v11);
    goto LABEL_44;
  }

  v11 = [v9 identifier];
  v55 = v9;
  if (!v11)
  {
    v26 = [SBApp windowSceneManager];
    v27 = v26;
    if (self->_sceneVendingPolicy == 1)
    {
      v28 = MEMORY[0x277CBEB98];
      v29 = [v26 activeDisplayWindowScene];
      v30 = [v28 setWithObject:v29];
    }

    else
    {
      v30 = [v26 connectedWindowScenes];
    }

    if (![v30 count])
    {
      goto LABEL_42;
    }

    v53 = v27;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = v30;
    obja = v30;
    v31 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (!v31)
    {
      v47 = v10;
      goto LABEL_41;
    }

    v32 = v31;
    v33 = *v59;
    v54 = *MEMORY[0x277CCA450];
    while (1)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(obja);
        }

        v35 = *(*(&v58 + 1) + 8 * i);
        sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
        v37 = [v35 _fbsDisplayIdentity];
        v38 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:v37];
        v39 = [v38 count];

        if (v39 > 4)
        {
          if (!v10)
          {
            goto LABEL_34;
          }

          v43 = MEMORY[0x277CCA9B8];
          v44 = SBSystemUISceneControllerErrorDomain;
          v66 = v54;
          v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reached maximum allowed number of scenes per display (%d)", 5];
          v67 = v45;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v40 = [v43 errorWithDomain:v44 code:5 userInfo:v46];

          v9 = v55;
          v10[2](v10, 0, v40);
          v41 = v10;
        }

        else
        {
          v40 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:v35 withBlueprintOptions:v9];
          v41 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:v35 withSceneRequestOptions:v40];
          [v41 setSceneActive:1];
          if (v10)
          {
            v42 = [v41 scene];
            (v10)[2](v10, v42, 0);
          }
        }

LABEL_34:
        v10 = 0;
      }

      v32 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
      v10 = 0;
      v47 = 0;
      if (!v32)
      {
LABEL_41:

        v10 = v47;
        v27 = v53;
        v11 = 0;
        v30 = v52;
LABEL_42:

        goto LABEL_43;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_39;
  }

  v12 = [v9 scenePlacementConfiguration];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = v11;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_sceneControllers;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (!v15)
  {
LABEL_17:

    v9 = v55;
    v11 = v14;
LABEL_39:
    v49 = MEMORY[0x277CCA9B8];
    v50 = SBSystemUISceneControllerErrorDomain;
    v69 = *MEMORY[0x277CCA450];
    v70 = @"Tried to re-activate an unknown scene session";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v27 = [v49 errorWithDomain:v50 code:3 userInfo:v51];

    v10[2](v10, 0, v27);
    v10 = 0;
    goto LABEL_43;
  }

  v16 = v15;
  v17 = *v63;
LABEL_9:
  v18 = 0;
  while (1)
  {
    if (*v63 != v17)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v62 + 1) + 8 * v18);
    v20 = [v19 scenePersistentIdentifier];
    v21 = [v20 isEqualToString:v14];

    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = [v19 sceneOptions];
    if (objc_opt_respondsToSelector())
    {
      break;
    }

LABEL_15:
    if (v16 == ++v18)
    {
      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v16)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  v9 = v55;
  v48 = [v55 scenePlacementConfiguration];
  [v22 setScenePlacementConfiguration:v48];

  v27 = [v19 scene];

  v11 = v14;
  if (!v27)
  {
    goto LABEL_39;
  }

  (v10)[2](v10, v27, 0);
  [(SBSystemUISceneController *)self _setNeedsPresentersEvaluation];
LABEL_43:

LABEL_44:
}

- (void)destroyScenesWithPersistentIdentifiers:(id)a3 processIdentity:(id)a4 completion:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  BSDispatchQueueAssertMain();
  if (!v8)
  {
    [SBSystemUISceneController destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
  }

  if (!a4)
  {
    [SBSystemUISceneController destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
  }

  v51 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity keyEnumerator];
  v10 = [(NSMutableArray *)self->_sceneControllers firstObject];
  v11 = [v10 scene];
  v12 = [v11 clientHandle];
  v13 = [v12 processHandle];
  v14 = [v13 pid];

  clientProcess = self->_clientProcess;
  if (clientProcess)
  {
    v48 = clientProcess;
  }

  else
  {
    v16 = [MEMORY[0x277D0AAC0] sharedInstance];
    v48 = [v16 processForPID:v14];
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v18 = [v51 nextObject];
  v50 = v8;
  if (v18)
  {
    v19 = v18;
    v49 = self;
    do
    {
      v20 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:v19];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __95__SBSystemUISceneController_destroyScenesWithPersistentIdentifiers_processIdentity_completion___block_invoke;
      v60[3] = &unk_2783C40B8;
      v61 = v8;
      v21 = [v20 bs_filter:v60];
      if ([v21 count])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v56 objects:v65 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v57;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v57 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v56 + 1) + 8 * i);
              v28 = [v27 scenePersistentIdentifier];
              [v17 addObject:v28];
              [v27 invalidate];
            }

            v24 = [v22 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v24);
        }

        self = v49;
        [(NSMutableArray *)v49->_sceneControllers removeObjectsInArray:v22];
        [v20 removeObjectsInArray:v22];
        v29 = [(NSMutableArray *)v49->_sceneControllers copy];
        [(SBSystemUISceneController *)v49 _activeSceneControllersAfterRemoving:v29];

        v8 = v50;
      }

      v30 = [v51 nextObject];

      v19 = v30;
    }

    while (v30);
  }

  v31 = v48;
  if ([v17 count])
  {
    if (v48)
    {
      v32 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v17, "count")}];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v33 = v17;
      v34 = [v33 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v53;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v53 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v52 + 1) + 8 * j);
            v39 = objc_alloc(MEMORY[0x277D75400]);
            v40 = [MEMORY[0x277CBEB98] setWithObject:v38];
            v41 = [v39 initWithPersistedIdentifiers:v40 preferredAnimationType:1 callbackQueue:0 completion:0];
            [v32 addObject:v41];
          }

          v35 = [v33 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v35);
      }

      v31 = v48;
      v42 = [(FBProcess *)v48 workspace];
      [v42 sendActions:v32];

      v8 = v50;
    }

    else
    {
      v32 = SBLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [SBSystemUISceneController destroyScenesWithPersistentIdentifiers:v32 processIdentity:? completion:?];
      }
    }
  }

  if (v47)
  {
    v43 = [v17 count];
    if (v43 == [v8 count])
    {
      v47[2](v47, 1, 0);
    }

    else
    {
      v44 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
      [v44 removeObjectsInArray:v17];
      v62[0] = *MEMORY[0x277CCA450];
      v62[1] = SBSystemUISceneControllerErrorInfoUnknownPersistentIdentifiersListKey;
      v63[0] = @"Unknown persistent identifiers";
      v63[1] = v44;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v46 = [MEMORY[0x277CCA9B8] errorWithDomain:SBSystemUISceneControllerErrorDomain code:4 userInfo:v45];
      (v47)[2](v47, 0, v46);
    }
  }
}

uint64_t __95__SBSystemUISceneController_destroyScenesWithPersistentIdentifiers_processIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 scenePersistentIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)sceneFromIdentityToken:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneFromIdentityToken:v4];

  return v5;
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneFromIdentityTokenStringRepresentation:v4];

  return v5;
}

- (BOOL)enumerateScenesWithBlock:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  LOBYTE(self) = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController enumerateScenesWithBlock:v4];

  return self;
}

- (id)sceneWorkspaceControllerForProcessIdentity:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBSystemUISceneController sceneWorkspaceControllerForProcessIdentity:];
  }

  if (![(RBSProcessIdentity *)self->_clientProcessIdentity isEqual:v4])
  {
    self = 0;
  }

  v5 = self;

  return self;
}

- (void)processDidExit:(id)a3
{
  v4 = [a3 identity];
  v5 = [v4 isEqual:self->_clientProcessIdentity];

  if ((v5 & 1) == 0)
  {
    [SBSystemUISceneController processDidExit:];
  }

  if ((self->_sceneVendingPolicy | 2) == 3)
  {
    BSDispatchMain();
  }
}

- (void)processManager:(id)a3 didAddProcess:(id)a4
{
  v5 = a4;
  v6 = [v5 identity];
  v7 = [v6 isEqual:self->_clientProcessIdentity];

  if (v7)
  {
    [v5 addObserver:self];
    v8 = v5;
    BSDispatchMain();
  }
}

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v5 = a4;
  v6 = [v5 identity];
  v7 = [v6 isEqual:self->_clientProcessIdentity];

  if (v7)
  {
    [v5 removeObserver:self];
    BSDispatchMain();
  }
}

- (void)_updateClientProcess:(id)a3
{
  v10 = a3;
  BSDispatchQueueAssertMain();
  objc_storeStrong(&self->_clientProcess, a3);
  clientProcess = self->_clientProcess;
  if (clientProcess)
  {
    v6 = MEMORY[0x277D46F48];
    v7 = [MEMORY[0x277D46F50] identifierWithPid:{-[FBProcess pid](clientProcess, "pid")}];
    v8 = [v6 handleForIdentifier:v7 error:0];
    clientProcessHandle = self->_clientProcessHandle;
    self->_clientProcessHandle = v8;
  }

  else
  {
    v7 = self->_clientProcessHandle;
    self->_clientProcessHandle = 0;
  }

  [(SBSystemUISceneController *)self _evaluateSceneVisibility];
}

- (void)_evaluateSceneVisibility
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(RBSProcessHandle *)self->_clientProcessHandle sb_canDrawWhileLocked];
  v4 = [SBApp windowSceneManager];
  v5 = [v4 connectedWindowScenes];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v28 = !v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        clientProcess = self->_clientProcess;
        v12 = [v10 secureDisplayStateProvider];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [SBApp authenticationController];
        }

        v15 = v14;

        v16 = [v15 isInSecureDisplayMode];
        sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
        v18 = [v10 _fbsDisplayIdentity];
        v19 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:v18];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = clientProcess == 0;
          v24 = *v30;
          v25 = v23 | v16 & v28;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v20);
              }

              [*(*(&v29 + 1) + 8 * j) setHidden:v25 & 1];
            }

            v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v22);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }
}

- (id)succinctDescription
{
  v2 = [(SBSystemUISceneController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_jobLabel withName:@"Job Label"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSystemUISceneController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSystemUISceneController *)self succinctDescriptionBuilder];
  [v4 appendString:self->_traitsRole withName:@"Traits Role"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBSystemUISceneController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v8[3] = &unk_2783A92D8;
  v5 = v4;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:0 block:v8];
  v6 = v5;

  return v5;
}

void __67__SBSystemUISceneController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"Client Process Identity"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"Scene Workspace Controller"];
  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 56) dictionaryRepresentation];
  [v4 appendDictionarySection:v5 withName:@"Scene controllers by window scene" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) _presenterArray];
  [v6 appendArraySection:v7 withName:@"Presenters" skipIfEmpty:0];
}

- (void)initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"workspaceIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"clientProcessIdentity" object:? file:? lineNumber:? description:?];
}

- (void)initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"traitsRole" object:? file:? lineNumber:? description:?];
}

- (void)windowSceneDidConnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)windowSceneDidDisconnect:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addPresenter:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"presenter" object:? file:? lineNumber:? description:?];
}

- (void)addPresenter:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemUISceneController.m" lineNumber:233 description:{@"presenter was already added: %@", a3}];
}

- (void)_newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"traitsRole" object:? file:? lineNumber:? description:?];
}

- (void)_newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"windowScene" object:? file:? lineNumber:? description:?];
}

- (void)_newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneRequestOptions" object:? file:? lineNumber:? description:?];
}

- (void)_createOrRetrievePresenterForDisplayIdentity:(uint64_t)a1 level:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Scene future %{public}@ with a non UIWindowScene delegate", &v2, 0xCu);
}

- (void)activateSceneForProcessIdentity:withHandle:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"options" object:? file:? lineNumber:? description:?];
}

- (void)activateSceneForProcessIdentity:withHandle:options:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)destroyScenesWithPersistentIdentifiers:processIdentity:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"persistentIdentifiers" object:? file:? lineNumber:? description:?];
}

- (void)destroyScenesWithPersistentIdentifiers:processIdentity:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)destroyScenesWithPersistentIdentifiers:(uint64_t)a1 processIdentity:(NSObject *)a2 completion:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v3 = 138543362;
  v4 = v2;
}

- (void)sceneWorkspaceControllerForProcessIdentity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"processIdentity" object:? file:? lineNumber:? description:?];
}

- (void)processDidExit:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[[process identity] isEqual:_clientProcessIdentity]" object:? file:? lineNumber:? description:?];
}

@end