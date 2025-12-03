@interface SBSystemUISceneController
+ (id)_setupInfo;
- (BOOL)enumerateScenesWithBlock:(id)block;
- (SBSystemUISceneController)initWithSceneWorkspaceIdentifier:(id)identifier clientProcessIdentity:(id)identity sceneVendingPolicy:(int64_t)policy traitsRole:(id)role jobLabel:(id)label level:(double)level;
- (id)__newSceneIdentifierForWindowScene:(id)scene sessionRole:(id)role;
- (id)__sceneFutureIdentifierForWindowScene:(id)scene level:(double)level;
- (id)_createOrRetrievePresenterForDisplayIdentity:(id)identity level:(double)level;
- (id)_newAppSceneRequestOptionsForWindowScene:(id)scene withBlueprintOptions:(id)options;
- (id)_newSceneControllerForWindowScene:(id)scene sceneRequestOptions:(id)options traitsRole:(id)role level:(double)level;
- (id)addPresenter:(id)presenter;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)sceneFromIdentityToken:(id)token;
- (id)sceneFromIdentityTokenStringRepresentation:(id)representation;
- (id)sceneWorkspaceControllerForProcessIdentity:(id)identity;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_evaluateAvailablePresenters:(id)presenters forSceneControllers:(id)controllers;
- (void)_evaluateSceneVisibility;
- (void)_invalidateAllSceneControllers;
- (void)_invalidateSceneControllersForWindowScene:(id)scene;
- (void)_setNeedsPresentersEvaluation;
- (void)_updateClientProcess:(id)process;
- (void)_updateDisplayConfiguration:(id)configuration forSceneControllerWithScene:(id)scene;
- (void)_updateEnhancedWindowingModeEnabled:(BOOL)enabled forSceneControllerWithScene:(id)scene;
- (void)activateSceneForProcessIdentity:(id)identity withHandle:(id)handle options:(id)options completion:(id)completion;
- (void)dealloc;
- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers processIdentity:(id)identity completion:(id)completion;
- (void)processDidExit:(id)exit;
- (void)processManager:(id)manager didAddProcess:(id)process;
- (void)processManager:(id)manager didRemoveProcess:(id)process;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBSystemUISceneController

- (void)_setNeedsPresentersEvaluation
{
  _presenterArray = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:_presenterArray forSceneControllers:self->_sceneControllers];
}

+ (id)_setupInfo
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];

  return MEMORY[0x277CBEC10];
}

- (SBSystemUISceneController)initWithSceneWorkspaceIdentifier:(id)identifier clientProcessIdentity:(id)identity sceneVendingPolicy:(int64_t)policy traitsRole:(id)role jobLabel:(id)label level:(double)level
{
  identifierCopy = identifier;
  identityCopy = identity;
  roleCopy = role;
  labelCopy = label;
  if (identifierCopy)
  {
    if (identityCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBSystemUISceneController initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:];
    if (roleCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [SBSystemUISceneController initWithSceneWorkspaceIdentifier:clientProcessIdentity:sceneVendingPolicy:traitsRole:jobLabel:level:];
  if (!identityCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (roleCopy)
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
    v18->_level = level;
    v20 = [labelCopy copy];
    jobLabel = v19->_jobLabel;
    v19->_jobLabel = v20;

    v22 = [roleCopy copy];
    traitsRole = v19->_traitsRole;
    v19->_traitsRole = v22;

    v19->_sceneVendingPolicy = policy;
    array = [MEMORY[0x277CBEB18] array];
    sceneControllers = v19->_sceneControllers;
    v19->_sceneControllers = array;

    objc_storeStrong(&v19->_clientProcessIdentity, identity);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneControllersByDisplayIdentity = v19->_sceneControllersByDisplayIdentity;
    v19->_sceneControllersByDisplayIdentity = weakToStrongObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    presentersByLevelForDisplayIdentity = v19->_presentersByLevelForDisplayIdentity;
    v19->_presentersByLevelForDisplayIdentity = strongToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    sceneFuturesByLevelForDisplayIdentity = v19->_sceneFuturesByLevelForDisplayIdentity;
    v19->_sceneFuturesByLevelForDisplayIdentity = weakToStrongObjectsMapTable2;

    v32 = objc_alloc_init(MEMORY[0x277D65F28]);
    sceneWorkspaceControllerDelegate = v19->_sceneWorkspaceControllerDelegate;
    v19->_sceneWorkspaceControllerDelegate = v32;

    v34 = [objc_alloc(MEMORY[0x277D65F20]) initWithIdentifier:identifierCopy delegate:v19->_sceneWorkspaceControllerDelegate];
    sceneWorkspaceController = v19->_sceneWorkspaceController;
    v19->_sceneWorkspaceController = v34;

    if ((v19->_sceneVendingPolicy - 1) <= 2)
    {
      mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
      v37 = [mEMORY[0x277D0AAC0] processForIdentity:v19->_clientProcessIdentity];
      [(SBSystemUISceneController *)v19 _updateClientProcess:v37];

      [(FBProcess *)v19->_clientProcess addObserver:v19];
      mEMORY[0x277D0AAC0]2 = [MEMORY[0x277D0AAC0] sharedInstance];
      [mEMORY[0x277D0AAC0]2 addObserver:v19];
    }

    objc_initWeak(&location, v19);
    v39 = MEMORY[0x277D85CD0];
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - SystemUISceneController - %@", labelCopy];
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
  mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
  [mEMORY[0x277D0AAC0] removeObserver:self];

  [(FBProcess *)self->_clientProcess removeObserver:self];
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _presenterArray = [(SBSystemUISceneController *)self _presenterArray];
  v5 = [_presenterArray countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_presenterArray);
        }

        [*(*(&v10 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [_presenterArray countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = SBSystemUISceneController;
  [(SBSystemUISceneController *)&v9 dealloc];
}

- (void)windowSceneDidConnect:(id)connect
{
  v36 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
  _fbsDisplayIdentity = [connectCopy _fbsDisplayIdentity];
  v7 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:_fbsDisplayIdentity];

  if (v7)
  {
    [SBSystemUISceneController windowSceneDidConnect:];
  }

  if (self->_sceneVendingPolicy >= 2uLL)
  {
    keyEnumerator = [(NSMapTable *)self->_sceneControllersByDisplayIdentity keyEnumerator];
    v9 = keyEnumerator;
    if (self->_sceneVendingPolicy != 3 || ([keyEnumerator nextObject], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      objectEnumerator = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectEnumerator];
      allObjects = [objectEnumerator allObjects];
      v13 = [allObjects bs_filter:&__block_literal_global_438];
      firstObject = [v13 firstObject];

      if (firstObject)
      {
        v29 = objectEnumerator;
        v30 = v9;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = firstObject;
        v15 = firstObject;
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
              scene = [v21 scene];
              v23 = [(SBSystemUISceneController *)self _isAllowedToRecreateSceneOnConnectingWindowScene:scene];

              if (v23)
              {
                sceneOptions = [v21 sceneOptions];
                v25 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:connectCopy withBlueprintOptions:sceneOptions];

                v26 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:connectCopy withSceneRequestOptions:v25];
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

        objectEnumerator = v29;
        v9 = v30;
        firstObject = v28;
      }

      else
      {
        v27 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:connectCopy withBlueprintOptions:0];
        v18 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:connectCopy withSceneRequestOptions:v27];
      }
    }
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v9 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  if (self->_sceneVendingPolicy)
  {
    if (!self->_sceneControllers)
    {
      [SBSystemUISceneController windowSceneDidDisconnect:];
    }

    [(SBSystemUISceneController *)self _invalidateSceneControllersForWindowScene:disconnectCopy];
    if ((SBFIsShellSceneKitAvailable() & 1) != 0 || [disconnectCopy isContinuityDisplayWindowScene])
    {
      _fbsDisplayIdentity = [disconnectCopy _fbsDisplayIdentity];
      v6 = SBLogSystemUIScene();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = _fbsDisplayIdentity;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ display disconnected", &v7, 0xCu);
      }

      [(NSMapTable *)self->_presentersByLevelForDisplayIdentity removeObjectForKey:_fbsDisplayIdentity];
      [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity removeObjectForKey:_fbsDisplayIdentity];
    }
  }
}

- (id)addPresenter:(id)presenter
{
  presenterCopy = presenter;
  if (!presenterCopy)
  {
    [SBSystemUISceneController addPresenter:];
  }

  _presenterArray = [(SBSystemUISceneController *)self _presenterArray];
  v7 = [_presenterArray containsObject:presenterCopy];

  if (v7)
  {
    [(SBSystemUISceneController *)a2 addPresenter:presenterCopy];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, presenterCopy);
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
    [presenterCopy setPresentingDelegate:{self, v15, v16, v17, v18}];
  }

  presenters = self->_presenters;
  if (presenters)
  {
    weakObjectsPointerArray = presenters;
  }

  else
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  }

  v12 = self->_presenters;
  self->_presenters = weakObjectsPointerArray;

  [(NSPointerArray *)self->_presenters addPointer:presenterCopy];
  [(NSPointerArray *)self->_presenters compact];
  _presenterArray2 = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:_presenterArray2 forSceneControllers:self->_sceneControllers];

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

- (void)_evaluateAvailablePresenters:(id)presenters forSceneControllers:(id)controllers
{
  v47 = *MEMORY[0x277D85DE8];
  presentersCopy = presenters;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = controllers;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v35)
  {
    v34 = *v42;
    selfCopy = self;
    v31 = presentersCopy;
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
        sceneOptions = [v8 sceneOptions];
        v36 = sceneOptions;
        if (objc_opt_respondsToSelector())
        {
          scenePlacementConfiguration = [sceneOptions scenePlacementConfiguration];
          v11 = objc_opt_respondsToSelector();
          if ((v11 & 1) == 0)
          {
            targetSceneIdentity = 0;
            v13 = 0;
LABEL_23:
            v19 = v11 ^ 1;

            goto LABEL_24;
          }

          targetSceneIdentity = [scenePlacementConfiguration targetSceneIdentity];

          if (targetSceneIdentity)
          {
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            scenePlacementConfiguration = presentersCopy;
            v13 = [scenePlacementConfiguration countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                    objc_enumerationMutation(scenePlacementConfiguration);
                  }

                  v16 = *(*(&v37 + 1) + 8 * i);
                  parentSceneIdentityToken = [v16 parentSceneIdentityToken];
                  v18 = [parentSceneIdentityToken isEqual:targetSceneIdentity];

                  if (v18)
                  {
                    v13 = v16;
                    goto LABEL_22;
                  }
                }

                v13 = [scenePlacementConfiguration countByEnumeratingWithState:&v37 objects:v45 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }

LABEL_22:
              self = selfCopy;
              presentersCopy = v31;
              v11 = v32;
            }

            goto LABEL_23;
          }
        }

        else
        {
          targetSceneIdentity = 0;
        }

        v13 = 0;
        v19 = 1;
LABEL_24:
        scene = [v8 scene];
        settings = [scene settings];
        sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

        if ((SBFIsShellSceneKitAvailable() & 1) != 0 || [sb_displayIdentityForSceneManagers isContinuityDisplay])
        {
          scene2 = [v8 scene];
          settings2 = [scene2 settings];
          [settings2 level];
          v25 = [(SBSystemUISceneController *)self _createOrRetrievePresenterForDisplayIdentity:sb_displayIdentityForSceneManagers level:?];

          [v8 setPresenter:v25];
        }

        else if (v13)
        {
          [v8 setPresenter:v13];
        }

        else if (v19)
        {
          lastObject = [presentersCopy lastObject];
          defaultPresenter = lastObject;
          if (!lastObject)
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

- (id)_newSceneControllerForWindowScene:(id)scene sceneRequestOptions:(id)options traitsRole:(id)role level:(double)level
{
  sceneCopy = scene;
  optionsCopy = options;
  roleCopy = role;
  if (roleCopy)
  {
    if (sceneCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
    if (optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
  if (!sceneCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (optionsCopy)
  {
    goto LABEL_4;
  }

LABEL_10:
  [SBSystemUISceneController _newSceneControllerForWindowScene:sceneRequestOptions:traitsRole:level:];
LABEL_4:
  _fbsDisplayConfiguration = [sceneCopy _fbsDisplayConfiguration];
  identity = [_fbsDisplayConfiguration identity];
  sb_defaultContext = [MEMORY[0x277D77770] sb_defaultContext];
  v16 = objc_alloc(MEMORY[0x277CF0BE8]);
  [sb_defaultContext deviceInfoFloatValueForKey:*MEMORY[0x277D77810]];
  v17 = [v16 initWithCornerRadius:?];
  v24 = optionsCopy;
  v18 = [[SBSingleSceneController alloc] initWithSceneWorkspaceController:self->_sceneWorkspaceController sceneRequestOptions:optionsCopy clientIdentity:self->_clientProcessIdentity traitsRole:roleCopy level:level];
  [(SBSingleSceneController *)v18 setTargetDisplayConfiguration:_fbsDisplayConfiguration];
  [(SBSingleSceneController *)v18 setCornerRadiusConfiguration:v17];
  [(SBSingleSceneController *)v18 setEnhancedWindowingModeEnabled:0];
  [(SBSingleSceneController *)v18 setShouldForegroundForDisplayConfiguration:1];
  [(SBSingleSceneController *)v18 setShouldActivateUponClientConnection:self->_sceneVendingPolicy == 2];
  [(SBSystemUISceneController *)self _evaluateSceneVisibility];
  v19 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:identity];
  if (v19)
  {
    v20 = v19;
    v21 = sceneCopy;
    [v19 addObject:v18];
  }

  else
  {
    v21 = sceneCopy;
    v20 = [MEMORY[0x277CBEB18] arrayWithObject:v18];
  }

  [(NSMapTable *)self->_sceneControllersByDisplayIdentity setObject:v20 forKey:identity];
  [(NSMutableArray *)self->_sceneControllers addObject:v18];
  _presenterArray = [(SBSystemUISceneController *)self _presenterArray];
  [(SBSystemUISceneController *)self _evaluateAvailablePresenters:_presenterArray forSceneControllers:self->_sceneControllers];

  return v18;
}

- (void)_invalidateSceneControllersForWindowScene:(id)scene
{
  v17 = *MEMORY[0x277D85DE8];
  _fbsDisplayIdentity = [scene _fbsDisplayIdentity];
  v5 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:_fbsDisplayIdentity];
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
  [(NSMapTable *)self->_sceneControllersByDisplayIdentity removeObjectForKey:_fbsDisplayIdentity];
}

- (void)_invalidateAllSceneControllers
{
  v15 = *MEMORY[0x277D85DE8];
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = connectedWindowScenes;
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

- (void)_updateDisplayConfiguration:(id)configuration forSceneControllerWithScene:(id)scene
{
  v30 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  sceneCopy = scene;
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
      scene = [v13 scene];

      if (scene == sceneCopy)
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
    settings = [sceneCopy settings];
    displayIdentity = [settings displayIdentity];
    v19 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:displayIdentity];
    [v19 removeObject:v15];

    [(NSMutableArray *)v15 setTargetDisplayConfiguration:configurationCopy];
    v20 = self->_sceneControllersByDisplayIdentity;
    identity = [configurationCopy identity];
    v22 = [(NSMapTable *)v20 objectForKey:identity];

    if (!v22)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v22 addObject:v15];
    v23 = self->_sceneControllersByDisplayIdentity;
    identity2 = [configurationCopy identity];
    [(NSMapTable *)v23 setObject:v22 forKey:identity2];
  }

  else
  {
LABEL_9:
    v15 = v8;
  }

LABEL_15:
}

- (void)_updateEnhancedWindowingModeEnabled:(BOOL)enabled forSceneControllerWithScene:(id)scene
{
  enabledCopy = enabled;
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
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
        scene = [v12 scene];

        if (scene == sceneCopy)
        {
          [v12 setEnhancedWindowingModeEnabled:enabledCopy];
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (id)_newAppSceneRequestOptionsForWindowScene:(id)scene withBlueprintOptions:(id)options
{
  optionsCopy = options;
  v7 = MEMORY[0x277D75980];
  sceneCopy = scene;
  v9 = objc_alloc_init(v7);
  specification = [optionsCopy specification];
  v11 = specification;
  if (specification)
  {
    v12 = specification;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D75180]);
  }

  v13 = v12;

  uiSceneSessionRole = [v13 uiSceneSessionRole];
  v15 = [(SBSystemUISceneController *)self __newSceneIdentifierForWindowScene:sceneCopy sessionRole:uiSceneSessionRole];

  [v9 setIdentifier:v15];
  [v9 setSpecification:v13];
  actions = [optionsCopy actions];
  [v9 setActions:actions];

  initialClientSettings = [optionsCopy initialClientSettings];
  [v9 setInitialClientSettings:initialClientSettings];

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    scenePlacementConfiguration = [optionsCopy scenePlacementConfiguration];
    [v9 setScenePlacementConfiguration:scenePlacementConfiguration];
  }

  return v9;
}

- (id)__newSceneIdentifierForWindowScene:(id)scene sessionRole:(id)role
{
  sceneCopy = scene;
  roleCopy = role;
  ++self->_sceneIDGeneration;
  sceneWorkspaceIdentifier = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneWorkspaceIdentifier];
  v9 = [sceneWorkspaceIdentifier componentsSeparatedByString:@"."];
  lastObject = [v9 lastObject];

  v11 = roleCopy;
  v12 = v11;
  if ([v11 hasPrefix:@"SBSUIWindowSceneSessionRole"])
  {
    v12 = [v11 substringFromIndex:{objc_msgSend(@"SBSUIWindowSceneSessionRole", "length")}];
  }

  v13 = MEMORY[0x277CCACA8];
  _fbsDisplayIdentity = [sceneCopy _fbsDisplayIdentity];
  v15 = [_fbsDisplayIdentity description];
  v16 = [v13 stringWithFormat:@"SUIS-%@-%@:[%@] - %lu", lastObject, v12, v15, self->_sceneIDGeneration];

  return v16;
}

- (id)__sceneFutureIdentifierForWindowScene:(id)scene level:(double)level
{
  sceneWorkspaceController = self->_sceneWorkspaceController;
  sceneCopy = scene;
  sceneWorkspaceIdentifier = [(SBFSceneWorkspaceController *)sceneWorkspaceController sceneWorkspaceIdentifier];
  v8 = [sceneWorkspaceIdentifier componentsSeparatedByString:@"."];
  lastObject = [v8 lastObject];

  v10 = MEMORY[0x277CCACA8];
  _fbsDisplayIdentity = [sceneCopy _fbsDisplayIdentity];

  v12 = [_fbsDisplayIdentity description];
  v13 = [v10 stringWithFormat:@"SUIS-Future-%@:[%@][%f]", lastObject, v12, *&level];

  return v13;
}

- (id)_createOrRetrievePresenterForDisplayIdentity:(id)identity level:(double)level
{
  v65 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v7 = [(NSMapTable *)self->_presentersByLevelForDisplayIdentity objectForKey:identityCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:level];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    windowSceneManager = [SBApp windowSceneManager];
    v12 = [windowSceneManager windowSceneForDisplayIdentity:identityCopy];

    _FBSScene = [v12 _FBSScene];
    workspaceService = [_FBSScene workspaceService];
    _fbsDisplayConfiguration = [v12 _fbsDisplayConfiguration];
    v16 = [(SBSystemUISceneController *)self __sceneFutureIdentifierForWindowScene:v12 level:level];
    [identityCopy isContinuityDisplay];
    v17 = objc_opt_new();
    settings = [_FBSScene settings];
    [settings frame];
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
    v29 = _fbsDisplayConfiguration;
    v57 = v29;
    v58 = v20;
    v59 = v22;
    v60 = v24;
    v61 = v26;
    levelCopy = level;
    v51 = workspaceService;
    v30 = [workspaceService createScene:v54];
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

      v50 = _FBSScene;

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __80__SBSystemUISceneController__createOrRetrievePresenterForDisplayIdentity_level___block_invoke_113;
      v52[3] = &unk_2783ACC28;
      v49 = v27;
      v34 = v27;
      v53 = v34;
      [v30 activateWithCompletion:v52];
      weakToStrongObjectsMapTable = [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity objectForKey:identityCopy];
      if (!weakToStrongObjectsMapTable)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        [(NSMapTable *)self->_sceneFuturesByLevelForDisplayIdentity setObject:weakToStrongObjectsMapTable forKey:identityCopy];
      }

      v36 = [MEMORY[0x277CCABB0] numberWithDouble:{level, v45, v47}];
      [weakToStrongObjectsMapTable setObject:v30 forKey:v36];

      delegate = [v30 delegate];
      v38 = objc_opt_class();
      v39 = delegate;
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
        strongToStrongObjectsMapTable = [(NSMapTable *)self->_presentersByLevelForDisplayIdentity objectForKey:identityCopy];
        if (!strongToStrongObjectsMapTable)
        {
          strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
          [(NSMapTable *)self->_presentersByLevelForDisplayIdentity setObject:strongToStrongObjectsMapTable forKey:identityCopy];
        }

        v43 = [MEMORY[0x277CCABB0] numberWithDouble:level];
        [strongToStrongObjectsMapTable setObject:v10 forKey:v43];
      }

      else
      {
        strongToStrongObjectsMapTable = SBLogSystemUIScene();
        if (os_log_type_enabled(strongToStrongObjectsMapTable, OS_LOG_TYPE_ERROR))
        {
          [SBSystemUISceneController _createOrRetrievePresenterForDisplayIdentity:v34 level:strongToStrongObjectsMapTable];
        }

        v10 = 0;
      }

      v27 = v49;
      _FBSScene = v50;
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

- (void)activateSceneForProcessIdentity:(id)identity withHandle:(id)handle options:(id)options completion:(id)completion
{
  v73[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (optionsCopy)
  {
    if (identity)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSystemUISceneController activateSceneForProcessIdentity:withHandle:options:completion:];
    if (identity)
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
    identifier = [v23 errorWithDomain:v24 code:2 userInfo:v25];

    completionCopy[2](completionCopy, 0, identifier);
    goto LABEL_44;
  }

  identifier = [optionsCopy identifier];
  v55 = optionsCopy;
  if (!identifier)
  {
    windowSceneManager = [SBApp windowSceneManager];
    scene2 = windowSceneManager;
    if (self->_sceneVendingPolicy == 1)
    {
      v28 = MEMORY[0x277CBEB98];
      activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
      connectedWindowScenes = [v28 setWithObject:activeDisplayWindowScene];
    }

    else
    {
      connectedWindowScenes = [windowSceneManager connectedWindowScenes];
    }

    if (![connectedWindowScenes count])
    {
      goto LABEL_42;
    }

    v53 = scene2;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v52 = connectedWindowScenes;
    obja = connectedWindowScenes;
    v31 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (!v31)
    {
      v47 = completionCopy;
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
        _fbsDisplayIdentity = [v35 _fbsDisplayIdentity];
        v38 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:_fbsDisplayIdentity];
        v39 = [v38 count];

        if (v39 > 4)
        {
          if (!completionCopy)
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

          optionsCopy = v55;
          completionCopy[2](completionCopy, 0, v40);
          v41 = completionCopy;
        }

        else
        {
          v40 = [(SBSystemUISceneController *)self _newAppSceneRequestOptionsForWindowScene:v35 withBlueprintOptions:optionsCopy];
          v41 = [(SBSystemUISceneController *)self _newSceneControllerForWindowScene:v35 withSceneRequestOptions:v40];
          [v41 setSceneActive:1];
          if (completionCopy)
          {
            scene = [v41 scene];
            (completionCopy)[2](completionCopy, scene, 0);
          }
        }

LABEL_34:
        completionCopy = 0;
      }

      v32 = [obja countByEnumeratingWithState:&v58 objects:v68 count:16];
      completionCopy = 0;
      v47 = 0;
      if (!v32)
      {
LABEL_41:

        completionCopy = v47;
        scene2 = v53;
        identifier = 0;
        connectedWindowScenes = v52;
LABEL_42:

        goto LABEL_43;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_39;
  }

  scenePlacementConfiguration = [optionsCopy scenePlacementConfiguration];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    goto LABEL_39;
  }

  v14 = identifier;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_sceneControllers;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (!v15)
  {
LABEL_17:

    optionsCopy = v55;
    identifier = v14;
LABEL_39:
    v49 = MEMORY[0x277CCA9B8];
    v50 = SBSystemUISceneControllerErrorDomain;
    v69 = *MEMORY[0x277CCA450];
    v70 = @"Tried to re-activate an unknown scene session";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    scene2 = [v49 errorWithDomain:v50 code:3 userInfo:v51];

    completionCopy[2](completionCopy, 0, scene2);
    completionCopy = 0;
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
    scenePersistentIdentifier = [v19 scenePersistentIdentifier];
    v21 = [scenePersistentIdentifier isEqualToString:v14];

    if (!v21)
    {
      goto LABEL_15;
    }

    sceneOptions = [v19 sceneOptions];
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

  optionsCopy = v55;
  scenePlacementConfiguration2 = [v55 scenePlacementConfiguration];
  [sceneOptions setScenePlacementConfiguration:scenePlacementConfiguration2];

  scene2 = [v19 scene];

  identifier = v14;
  if (!scene2)
  {
    goto LABEL_39;
  }

  (completionCopy)[2](completionCopy, scene2, 0);
  [(SBSystemUISceneController *)self _setNeedsPresentersEvaluation];
LABEL_43:

LABEL_44:
}

- (void)destroyScenesWithPersistentIdentifiers:(id)identifiers processIdentity:(id)identity completion:(id)completion
{
  v66 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  if (!identifiersCopy)
  {
    [SBSystemUISceneController destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
  }

  if (!identity)
  {
    [SBSystemUISceneController destroyScenesWithPersistentIdentifiers:processIdentity:completion:];
  }

  keyEnumerator = [(NSMapTable *)self->_sceneControllersByDisplayIdentity keyEnumerator];
  firstObject = [(NSMutableArray *)self->_sceneControllers firstObject];
  scene = [firstObject scene];
  clientHandle = [scene clientHandle];
  processHandle = [clientHandle processHandle];
  v14 = [processHandle pid];

  clientProcess = self->_clientProcess;
  if (clientProcess)
  {
    v48 = clientProcess;
  }

  else
  {
    mEMORY[0x277D0AAC0] = [MEMORY[0x277D0AAC0] sharedInstance];
    v48 = [mEMORY[0x277D0AAC0] processForPID:v14];
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  nextObject = [keyEnumerator nextObject];
  v50 = identifiersCopy;
  if (nextObject)
  {
    v19 = nextObject;
    selfCopy = self;
    do
    {
      v20 = [(NSMapTable *)self->_sceneControllersByDisplayIdentity objectForKey:v19];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __95__SBSystemUISceneController_destroyScenesWithPersistentIdentifiers_processIdentity_completion___block_invoke;
      v60[3] = &unk_2783C40B8;
      v61 = identifiersCopy;
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
              scenePersistentIdentifier = [v27 scenePersistentIdentifier];
              [v17 addObject:scenePersistentIdentifier];
              [v27 invalidate];
            }

            v24 = [v22 countByEnumeratingWithState:&v56 objects:v65 count:16];
          }

          while (v24);
        }

        self = selfCopy;
        [(NSMutableArray *)selfCopy->_sceneControllers removeObjectsInArray:v22];
        [v20 removeObjectsInArray:v22];
        v29 = [(NSMutableArray *)selfCopy->_sceneControllers copy];
        [(SBSystemUISceneController *)selfCopy _activeSceneControllersAfterRemoving:v29];

        identifiersCopy = v50;
      }

      nextObject2 = [keyEnumerator nextObject];

      v19 = nextObject2;
    }

    while (nextObject2);
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
      workspace = [(FBProcess *)v48 workspace];
      [workspace sendActions:v32];

      identifiersCopy = v50;
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
    if (v43 == [identifiersCopy count])
    {
      v47[2](v47, 1, 0);
    }

    else
    {
      v44 = [MEMORY[0x277CBEB18] arrayWithArray:identifiersCopy];
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

- (id)sceneFromIdentityToken:(id)token
{
  tokenCopy = token;
  BSDispatchQueueAssertMain();
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneFromIdentityToken:tokenCopy];

  return v5;
}

- (id)sceneFromIdentityTokenStringRepresentation:(id)representation
{
  representationCopy = representation;
  BSDispatchQueueAssertMain();
  v5 = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController sceneFromIdentityTokenStringRepresentation:representationCopy];

  return v5;
}

- (BOOL)enumerateScenesWithBlock:(id)block
{
  blockCopy = block;
  BSDispatchQueueAssertMain();
  LOBYTE(self) = [(SBFSceneWorkspaceController *)self->_sceneWorkspaceController enumerateScenesWithBlock:blockCopy];

  return self;
}

- (id)sceneWorkspaceControllerForProcessIdentity:(id)identity
{
  identityCopy = identity;
  BSDispatchQueueAssertMain();
  if (!identityCopy)
  {
    [SBSystemUISceneController sceneWorkspaceControllerForProcessIdentity:];
  }

  if (![(RBSProcessIdentity *)self->_clientProcessIdentity isEqual:identityCopy])
  {
    self = 0;
  }

  selfCopy = self;

  return self;
}

- (void)processDidExit:(id)exit
{
  identity = [exit identity];
  v5 = [identity isEqual:self->_clientProcessIdentity];

  if ((v5 & 1) == 0)
  {
    [SBSystemUISceneController processDidExit:];
  }

  if ((self->_sceneVendingPolicy | 2) == 3)
  {
    BSDispatchMain();
  }
}

- (void)processManager:(id)manager didAddProcess:(id)process
{
  processCopy = process;
  identity = [processCopy identity];
  v7 = [identity isEqual:self->_clientProcessIdentity];

  if (v7)
  {
    [processCopy addObserver:self];
    v8 = processCopy;
    BSDispatchMain();
  }
}

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  processCopy = process;
  identity = [processCopy identity];
  v7 = [identity isEqual:self->_clientProcessIdentity];

  if (v7)
  {
    [processCopy removeObserver:self];
    BSDispatchMain();
  }
}

- (void)_updateClientProcess:(id)process
{
  processCopy = process;
  BSDispatchQueueAssertMain();
  objc_storeStrong(&self->_clientProcess, process);
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
  sb_canDrawWhileLocked = [(RBSProcessHandle *)self->_clientProcessHandle sb_canDrawWhileLocked];
  windowSceneManager = [SBApp windowSceneManager];
  connectedWindowScenes = [windowSceneManager connectedWindowScenes];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = connectedWindowScenes;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v28 = !sb_canDrawWhileLocked;
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
        secureDisplayStateProvider = [v10 secureDisplayStateProvider];
        v13 = secureDisplayStateProvider;
        if (secureDisplayStateProvider)
        {
          authenticationController = secureDisplayStateProvider;
        }

        else
        {
          authenticationController = [SBApp authenticationController];
        }

        v15 = authenticationController;

        isInSecureDisplayMode = [v15 isInSecureDisplayMode];
        sceneControllersByDisplayIdentity = self->_sceneControllersByDisplayIdentity;
        _fbsDisplayIdentity = [v10 _fbsDisplayIdentity];
        v19 = [(NSMapTable *)sceneControllersByDisplayIdentity objectForKey:_fbsDisplayIdentity];

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
          v25 = v23 | isInSecureDisplayMode & v28;
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
  succinctDescriptionBuilder = [(SBSystemUISceneController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_jobLabel withName:@"Job Label"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemUISceneController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSystemUISceneController *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_traitsRole withName:@"Traits Role"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBSystemUISceneController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v8[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v9 = v5;
  selfCopy = self;
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