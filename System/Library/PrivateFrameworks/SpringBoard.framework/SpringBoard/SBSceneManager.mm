@interface SBSceneManager
+ (id)_globalRegistry;
+ (id)existingSceneHandleForSceneIdentity:(id)identity;
- (BOOL)_handleAction:(id)action forScene:(id)scene;
- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (BOOL)isSceneHandleNotUserDestroyable:(id)destroyable;
- (SBSceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior;
- (id)_windowScene;
- (id)assertBackgroundedStatusForScenes:(id)scenes;
- (id)childTransactionsForTransitionRequest:(id)request;
- (id)debugNameForSceneSnapshotRequestor:(id)requestor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier;
- (id)existingSceneHandleForScene:(id)scene;
- (id)existingSceneHandleForSceneIdentity:(id)identity;
- (id)externalApplicationSceneHandlesForBundleIdentifiers:(id)identifiers;
- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)request;
- (id)newSceneIdentifierForBundleIdentifier:(id)identifier;
- (id)newSceneIdentifierForBundleIdentifier:(id)identifier supportsMultiwindow:(BOOL)multiwindow;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneSnapshotRequestContextForSceneSnapshotRequestor:(id)requestor;
- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor;
- (id)scenesForWorkspaceWithID:(id)d;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)switcherController;
- (id)topmostForegroundUIScenesMatching:(id)matching;
- (id)transientApplicationSceneHandlesForApplication:(id)application;
- (id)windowScene;
- (void)_addReportedForegroundExternalApplicationSceneHandle:(id)handle;
- (void)_addScene:(id)scene;
- (void)_addSceneToPresentationBinder:(id)binder trackedCollection:(id)collection;
- (void)_doObserverCalloutWithBlock:(id)block;
- (void)_noteObserversDidInvalidate;
- (void)_prepareToRemoveScene:(id)scene withReason:(int64_t)reason;
- (void)_prepareToRemoveSceneHandle:(id)handle withReason:(int64_t)reason;
- (void)_reconnectSceneRemnant:(id)remnant forProcess:(id)process sceneManager:(id)manager;
- (void)_removeReportedForegroundExternalApplicationSceneHandle:(id)handle;
- (void)_removeScene:(id)scene withReason:(int64_t)reason;
- (void)_removeSceneFromPresentationBinder:(id)binder trackedCollection:(id)collection;
- (void)_removeSceneHandle:(id)handle withReason:(int64_t)reason;
- (void)_scene:(id)_scene didUpdateClientSettings:(id)settings;
- (void)_updateIconStyleSettingsOnScene:(id)scene;
- (void)_updateStateForScene:(id)scene withSettings:(id)settings;
- (void)addChildTransactionProvider:(id)provider;
- (void)addObserver:(id)observer;
- (void)addSystemUISceneToPresentationBinder:(id)binder;
- (void)addUserInterfaceStyleObserver:(id)observer;
- (void)bootCompleted:(id)completed;
- (void)dealloc;
- (void)iconStyleProvider:(id)provider didUpdateIconStyleConfiguration:(id)configuration;
- (void)invalidate;
- (void)removeChildTransactionProvider:(id)provider;
- (void)removeObserver:(id)observer;
- (void)removeUserInterfaceStyleObserver:(id)observer;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidActivate:(id)activate;
- (void)setHidden:(BOOL)hidden;
- (void)transferOwnershipOfSceneWithIdentity:(id)identity toSceneManager:(id)manager;
- (void)updatePresentationBinder:(id)binder;
- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion;
@end

@implementation SBSceneManager

+ (id)_globalRegistry
{
  if (_globalRegistry_onceToken != -1)
  {
    +[SBSceneManager _globalRegistry];
  }

  v3 = _globalRegistry_globalRegistry;

  return v3;
}

- (id)windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v5;
}

void __33__SBSceneManager__globalRegistry__block_invoke()
{
  v0 = objc_alloc_init(SBSceneManagerSceneHandleWeakRegistry);
  v1 = _globalRegistry_globalRegistry;
  _globalRegistry_globalRegistry = v0;
}

+ (id)existingSceneHandleForSceneIdentity:(id)identity
{
  identityCopy = identity;
  v4 = +[SBSceneManager _globalRegistry];
  v5 = [v4 existingSceneHandleForSceneIdentity:identityCopy];

  return v5;
}

- (SBSceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior
{
  referenceCopy = reference;
  providerCopy = provider;
  binderCopy = binder;
  if (!referenceCopy)
  {
    [SBSceneManager initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:];
  }

  displayIdentity = [referenceCopy displayIdentity];

  if (displayIdentity)
  {
    if (providerCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [SBSceneManager initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:];
    if (providerCopy)
    {
      goto LABEL_5;
    }
  }

  [SBSceneManager initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:];
LABEL_5:
  v56.receiver = self;
  v56.super_class = SBSceneManager;
  v15 = [(SBSceneManager *)&v56 init];
  if (v15)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    sceneManager = v15->_sceneManager;
    v15->_sceneManager = mEMORY[0x277D0AAD8];

    objc_storeStrong(&v15->_selfReference, reference);
    v18 = objc_alloc_init(_SBSceneManagerPolicyAggregator);
    policyAggregator = v15->_policyAggregator;
    v15->_policyAggregator = v18;

    objc_storeStrong(&v15->_presentationBinder, binder);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    transientMapSceneIdentityToSceneHandle = v15->_transientMapSceneIdentityToSceneHandle;
    v15->_transientMapSceneIdentityToSceneHandle = strongToWeakObjectsMapTable;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    persistentMapSceneIdentityToSceneHandle = v15->_persistentMapSceneIdentityToSceneHandle;
    v15->_persistentMapSceneIdentityToSceneHandle = strongToStrongObjectsMapTable;

    v24 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    boundScenes = v15->_boundScenes;
    v15->_boundScenes = v24;

    v26 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    boundSingleScenes = v15->_boundSingleScenes;
    v15->_boundSingleScenes = v26;

    v28 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    boundPointerUIScenes = v15->_boundPointerUIScenes;
    v15->_boundPointerUIScenes = v28;

    v30 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    allScenes = v15->_allScenes;
    v15->_allScenes = v30;

    v32 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    externalApplicationSceneHandles = v15->_externalApplicationSceneHandles;
    v15->_externalApplicationSceneHandles = v32;

    v34 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    externalForegroundApplicationSceneHandles = v15->_externalForegroundApplicationSceneHandles;
    v15->_externalForegroundApplicationSceneHandles = v34;

    v36 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    reportedExternalForegroundApplicationSceneHandles = v15->_reportedExternalForegroundApplicationSceneHandles;
    v15->_reportedExternalForegroundApplicationSceneHandles = v36;

    v38 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    daemonScenes = v15->_daemonScenes;
    v15->_daemonScenes = v38;

    v40 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    workspaceScenes = v15->_workspaceScenes;
    v15->_workspaceScenes = v40;

    v42 = objc_alloc_init(MEMORY[0x277CF0BE0]);
    modernScenesPendingActivation = v15->_modernScenesPendingActivation;
    v15->_modernScenesPendingActivation = v42;

    v44 = objc_alloc_init(MEMORY[0x277CCA940]);
    assertedBackgroundScenes = v15->_assertedBackgroundScenes;
    v15->_assertedBackgroundScenes = v44;

    objc_storeStrong(&v15->_sceneIdentityProvider, provider);
    if (behavior == 1)
    {
      v46 = [[SBSceneSnapshotRequestor alloc] initWithDelegate:v15];
      snapshotRequestor = v15->_snapshotRequestor;
      v15->_snapshotRequestor = v46;

      v48 = objc_alloc_init(SBBiomeAppearanceChangeObserver);
      appearanceChangeObserver = v15->_appearanceChangeObserver;
      v15->_appearanceChangeObserver = v48;
    }

    v50 = SBApp;
    displayIdentity2 = [referenceCopy displayIdentity];
    v52 = [v50 userInterfaceStyleProviderForDisplay:displayIdentity2];
    userInterfaceStyleProvider = v15->_userInterfaceStyleProvider;
    v15->_userInterfaceStyleProvider = v52;

    [(SBUserInterfaceStyleProvider *)v15->_userInterfaceStyleProvider addObserver:v15];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_bootCompleted_ name:@"SBBootCompleteNotification" object:0];
  }

  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIScenePresentationBinder *)self->_presentationBinder invalidate];
  [(SBSceneSnapshotRequestor *)self->_snapshotRequestor invalidate];
  [(SBBiomeAppearanceChangeObserver *)self->_appearanceChangeObserver invalidate];
  [(SBUserInterfaceStyleProvider *)self->_userInterfaceStyleProvider removeObserver:self];
  v4 = self->_selfReference;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __25__SBSceneManager_dealloc__block_invoke;
  v10 = &unk_2783A8C18;
  v11 = v4;
  v5 = v4;
  BSDispatchMain();

  v6.receiver = self;
  v6.super_class = SBSceneManager;
  [(SBSceneManager *)&v6 dealloc];
}

- (void)invalidate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBSceneManager invalidate]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBSceneManager.m" lineNumber:261 description:@"this call must be made on the main thread"];
}

- (id)scenesForWorkspaceWithID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  immutableSet = [(BSCopyingCacheSet *)self->_workspaceScenes immutableSet];
  v7 = [immutableSet countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(immutableSet);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        workspaceIdentifier = [v11 workspaceIdentifier];
        v13 = [workspaceIdentifier isEqualToString:dCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [immutableSet countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)topmostForegroundUIScenesMatching:(id)matching
{
  matchingCopy = matching;
  allScenes = [(SBSceneManager *)self allScenes];
  v6 = [MEMORY[0x277CBEB58] set];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SBSceneManager_topmostForegroundUIScenesMatching___block_invoke;
  v12[3] = &unk_2783ACAA0;
  v7 = matchingCopy;
  v14 = v7;
  v15 = v16;
  v8 = v6;
  v13 = v8;
  [allScenes enumerateObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v8;

  _Block_object_dispose(v16, 8);

  return v10;
}

void __52__SBSceneManager_topmostForegroundUIScenesMatching___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  v3 = [v10 settings];
  v4 = [v10 clientSettings];
  if ([v3 isForeground] && objc_msgSend(v4, "isUISubclass") && (*(a1[5] + 16))())
  {
    [v3 level];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 24);
    if (v5 <= v7)
    {
      if (v5 != v7)
      {
        goto LABEL_9;
      }

      v8 = (a1 + 4);
    }

    else
    {
      *(v6 + 24) = v5;
      v9 = a1[4];
      v8 = (a1 + 4);
      [v9 removeAllObjects];
    }

    [*v8 addObject:v10];
  }

LABEL_9:
}

- (void)transferOwnershipOfSceneWithIdentity:(id)identity toSceneManager:(id)manager
{
  v51 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  managerCopy = manager;
  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138413058;
    v44 = v10;
    v45 = 2048;
    selfCopy3 = self;
    v47 = 2114;
    v48 = identityCopy;
    v49 = 2114;
    v50 = managerCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[%@-%p] Transferring ownership of scene %{public}@ to %{public}@", buf, 0x2Au);
  }

  v11 = [(SBSceneManager *)self existingSceneHandleForSceneIdentity:identityCopy];
  sceneIfExists = [v11 sceneIfExists];
  v13 = sceneIfExists;
  if (sceneIfExists)
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __70__SBSceneManager_transferOwnershipOfSceneWithIdentity_toSceneManager___block_invoke;
    v40[3] = &unk_2783ACAC8;
    v40[4] = self;
    v14 = sceneIfExists;
    v41 = v14;
    v37 = managerCopy;
    v15 = managerCopy;
    v42 = v15;
    [(SBSceneManager *)self _doObserverCalloutWithBlock:v40];
    [(SBSceneManager *)self _prepareToRemoveScene:v14 withReason:1];
    [(SBSceneManager *)self _removeScene:v14 withReason:1];
    [v15 _addScene:v14];
    displayIdentity = [v15 displayIdentity];
    currentConfiguration = [displayIdentity currentConfiguration];

    settings = [v14 settings];
    displayConfiguration = [settings displayConfiguration];

    if ([currentConfiguration isEqual:displayConfiguration])
    {
      [v14 updateSettingsWithBlock:&__block_literal_global_67];
      v20 = SBLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138412802;
        v44 = v22;
        v45 = 2048;
        selfCopy3 = self;
        v47 = 2114;
        v48 = currentConfiguration;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[%@-%p] Clearing displayConfigurationForSceneManagers because the scene's displayConfiguration matches the sceneManager's displayConfiguration: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __70__SBSceneManager_transferOwnershipOfSceneWithIdentity_toSceneManager___block_invoke_68;
      v38[3] = &unk_2783ACB10;
      v31 = currentConfiguration;
      v39 = v31;
      [v14 updateSettingsWithBlock:v38];
      v32 = SBLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        NSStringFromClass(v33);
        v34 = v36 = identityCopy;
        *buf = 138413058;
        v44 = v34;
        v45 = 2048;
        selfCopy3 = self;
        v47 = 2114;
        v48 = displayConfiguration;
        v49 = 2114;
        v50 = v31;
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "[%@-%p] Setting displayConfigurationForSceneManagers because the scene's displayConfiguration %{public}@ does NOT match the sceneManager's displayConfiguration: %{public}@", buf, 0x2Au);

        identityCopy = v36;
      }

      v20 = v39;
    }

    v35 = [v15 existingSceneHandleForScene:v14];
    [v35 setSceneManager:v15];
    if (v35 && v11 != v35)
    {
      [v11 _noteReplacedWithSceneHandle:v35];
    }

    managerCopy = v37;
  }

  else if (v11)
  {
    [(SBSceneManager *)self _prepareToRemoveSceneHandle:v11 withReason:1];
    [(SBSceneManager *)self _removeSceneHandle:v11 withReason:1];
    application = [v11 application];

    if (application)
    {
      v24 = [SBApplicationSceneHandleRequest alloc];
      [v11 application];
      v26 = v25 = identityCopy;
      _definition = [v11 _definition];
      displayIdentity2 = [managerCopy displayIdentity];
      v29 = [(SBApplicationSceneHandleRequest *)v24 initWithApplication:v26 sceneDefinition:_definition displayIdentity:displayIdentity2];

      v30 = [managerCopy fetchOrCreateApplicationSceneHandleForRequest:v29];
      [v30 setSceneManager:managerCopy];

      identityCopy = v25;
    }
  }
}

void __70__SBSceneManager_transferOwnershipOfSceneWithIdentity_toSceneManager___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneManager:a1[4] willMoveScene:a1[5] toSceneManager:a1[6]];
  }
}

- (id)existingSceneHandleForScene:(id)scene
{
  definition = [scene definition];
  identity = [definition identity];
  v6 = [(SBSceneManager *)self existingSceneHandleForSceneIdentity:identity];

  return v6;
}

- (id)existingSceneHandleForSceneIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    v5 = [(NSMapTable *)self->_persistentMapSceneIdentityToSceneHandle objectForKey:identityCopy];
    if (!v5)
    {
      v5 = [(NSMapTable *)self->_transientMapSceneIdentityToSceneHandle objectForKey:identityCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBSceneManager_existingSceneHandleForPersistenceIdentifier___block_invoke;
    v9[3] = &unk_2783ACB38;
    v10 = identifierCopy;
    v6 = MEMORY[0x223D6F7F0](v9);
    v7 = (v6)[2](v6, self->_persistentMapSceneIdentityToSceneHandle);
    if (!v7)
    {
      v7 = (v6)[2](v6, self->_transientMapSceneIdentityToSceneHandle);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __62__SBSceneManager_existingSceneHandleForPersistenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectEnumerator];
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = [v3 nextObject];

    if (!v4)
    {
      break;
    }

    v6 = [v4 persistenceIdentifier];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  while (!v7);

  return v4;
}

- (id)externalApplicationSceneHandlesForBundleIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  externalApplicationSceneHandles = [(SBSceneManager *)self externalApplicationSceneHandles];
  v7 = [externalApplicationSceneHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(externalApplicationSceneHandles);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        application = [v11 application];
        bundleIdentifier = [application bundleIdentifier];
        v14 = [identifiersCopy containsObject:bundleIdentifier];

        if (v14)
        {
          v15 = objc_opt_class();
          v16 = v11;
          if (v15)
          {
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          [v5 addObject:v18];
        }
      }

      v8 = [externalApplicationSceneHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)assertBackgroundedStatusForScenes:(id)scenes
{
  scenesCopy = scenes;
  if ([scenesCopy count])
  {
    v5 = [SBSceneBackgroundedStatusAssertion alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke;
    v9[3] = &unk_2783ACB88;
    v9[4] = self;
    v6 = [(SBSceneBackgroundedStatusAssertion *)v5 initWithScenes:scenesCopy invalidationHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke_73;
    v8[3] = &unk_2783ACB60;
    v8[4] = self;
    [scenesCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke_2;
  v3[3] = &unk_2783ACB60;
  v3[4] = *(a1 + 32);
  return [a2 enumerateObjectsUsingBlock:v3];
}

void __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogWorkspace();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Background status assertion invalidated for scene: %{public}@", &v10, 0xCu);
  }

  [*(*(a1 + 32) + 184) removeObject:v3];
  if ([v3 isValid])
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = [v3 identifier];
    v7 = [v5 sceneWithIdentifier:v6];

    if (v7 == v3)
    {
      v8 = *(a1 + 32);
      v9 = [v3 settings];
      [v8 _updateStateForScene:v3 withSettings:v9];
    }
  }
}

void __52__SBSceneManager_assertBackgroundedStatusForScenes___block_invoke_73(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogWorkspace();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Asserting background status for scenes: %{public}@", &v7, 0xCu);
  }

  [*(*(a1 + 32) + 184) addObject:v3];
  v5 = *(a1 + 32);
  v6 = [v3 settings];
  [v5 _updateStateForScene:v3 withSettings:v6];
}

- (void)addChildTransactionProvider:(id)provider
{
  providerCopy = provider;
  BSDispatchQueueAssertMain();
  v4 = providerCopy;
  if (providerCopy)
  {
    childTransactionProviders = self->_childTransactionProviders;
    if (!childTransactionProviders)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_childTransactionProviders;
      self->_childTransactionProviders = v6;

      childTransactionProviders = self->_childTransactionProviders;
    }

    [(NSMutableSet *)childTransactionProviders addObject:providerCopy];
    v4 = providerCopy;
  }
}

- (void)removeChildTransactionProvider:(id)provider
{
  providerCopy = provider;
  BSDispatchQueueAssertMain();
  v4 = providerCopy;
  if (providerCopy)
  {
    [(NSMutableSet *)self->_childTransactionProviders removeObject:providerCopy];
    v5 = [(NSMutableSet *)self->_childTransactionProviders count];
    v4 = providerCopy;
    if (!v5)
    {
      childTransactionProviders = self->_childTransactionProviders;
      self->_childTransactionProviders = 0;

      v4 = providerCopy;
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v4 = observerCopy;
  }
}

- (id)newSceneIdentifierForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:identifierCopy];

  info = [v6 info];
  v8 = -[SBSceneManager newSceneIdentifierForBundleIdentifier:supportsMultiwindow:](self, "newSceneIdentifierForBundleIdentifier:supportsMultiwindow:", identifierCopy, [info supportsMultiwindow]);

  return v8;
}

- (id)newSceneIdentifierForBundleIdentifier:(id)identifier supportsMultiwindow:(BOOL)multiwindow
{
  multiwindowCopy = multiwindow;
  identifierCopy = identifier;
  if (multiwindowCopy)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  else
  {
    uUIDString = @"default";
  }

  v9 = [(SBSceneManager *)self sceneIdentifierForBundleIdentifier:identifierCopy uniqueIdentifier:uUIDString];

  return v9;
}

- (BOOL)isSceneHandleNotUserDestroyable:(id)destroyable
{
  destroyableCopy = destroyable;
  sceneIfExists = [destroyableCopy sceneIfExists];
  if (sceneIfExists)
  {
    application = [destroyableCopy application];
    v7 = +[SBWorkspace mainWorkspace];
    v8 = [v7 isApplicationRunningAsViewService:application];

    windowScene = [(SBSceneManager *)self windowScene];
    homeScreenController = [windowScene homeScreenController];

    iconManager = [homeScreenController iconManager];
    iconModel = [iconManager iconModel];

    if ([application isWebApplication])
    {
      identifier = [sceneIfExists identifier];
      bundleIdentifier2 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:identifier];

      if (bundleIdentifier2)
      {
        v15 = [iconModel leafIconForIdentifier:bundleIdentifier2];
LABEL_11:
        v22 = v15;
LABEL_15:

        v16 = v8 | [iconModel isIconVisible:v22] ^ 1;
        goto LABEL_16;
      }
    }

    else
    {
      if ([application isAppClip])
      {
        v17 = MEMORY[0x277D0AC98];
        bundleIdentifier = [application bundleIdentifier];
        bundleIdentifier2 = [v17 storeForApplication:bundleIdentifier];

        identifier2 = [sceneIfExists identifier];
        v20 = [bundleIdentifier2 sceneStoreForIdentifier:identifier2 creatingIfNecessary:0];

        v21 = [v20 objectForKey:@"appClipIdentifier"];
        if (v21)
        {
          v22 = [iconModel leafIconForIdentifier:v21];
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_15;
      }

      bundleIdentifier2 = [application bundleIdentifier];
      if (bundleIdentifier2)
      {
        v15 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier2];
        goto LABEL_11;
      }
    }

    v22 = 0;
    goto LABEL_15;
  }

  v16 = 0;
LABEL_16:

  return v16 & 1;
}

- (id)transientApplicationSceneHandlesForApplication:(id)application
{
  applicationCopy = application;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  transientMapSceneIdentityToSceneHandle = self->_transientMapSceneIdentityToSceneHandle;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBSceneManager_transientApplicationSceneHandlesForApplication___block_invoke;
  v9[3] = &unk_2783ACBB0;
  v6 = applicationCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMapTable *)transientMapSceneIdentityToSceneHandle bs_each:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__SBSceneManager_transientApplicationSceneHandlesForApplication___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 application];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

- (void)bootCompleted:(id)completed
{
  windowScene = [(SBSceneManager *)self windowScene];
  homeScreenController = [windowScene homeScreenController];

  iconStyleProvider = self->_iconStyleProvider;
  self->_iconStyleProvider = homeScreenController;
  v7 = homeScreenController;

  [(SBIconStyleProvider *)self->_iconStyleProvider addIconStyleObserver:self];
  v8 = self->_iconStyleProvider;
  currentIconStyleConfiguration = [(SBIconStyleProvider *)v8 currentIconStyleConfiguration];
  [(SBSceneManager *)self iconStyleProvider:v8 didUpdateIconStyleConfiguration:currentIconStyleConfiguration];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSceneManager *)self succinctDescriptionBuilder];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v16[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v17 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v14[3] = &unk_2783A92D8;
  v14[4] = self;
  v7 = v6;
  v15 = v7;
  [v7 appendBodySectionWithName:@"TransientScenes" multilinePrefix:0 block:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v12[3] = &unk_2783A92D8;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [v8 appendBodySectionWithName:@"Scenes" multilinePrefix:0 block:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) displayIdentity];
  v2 = [v1 appendObject:v3 withName:@"display"];
}

void __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(*(a1 + 32) + 96) objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) succinctDescription];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) immutableSet];
  v3 = [v2 mutableCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  v13[3] = &unk_2783ACBD8;
  v14 = v3;
  v15 = *(a1 + 40);
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](v13);
  v6 = [*(*(a1 + 32) + 176) immutableSet];
  (v5)[2](v5, @"externalForegroundAppSceneHandles", v6, 0);
  v7 = [*(*(a1 + 32) + 160) immutableSet];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_5;
  v11[3] = &unk_2783ACC00;
  v12 = v6;
  v8 = v6;
  v9 = [v7 objectsPassingTest:v11];
  (v5)[2](v5, @"externalBackgroundAppSceneHandles", v9, 0);

  v10 = [*(*(a1 + 32) + 144) immutableSet];
  (v5)[2](v5, @"otherWorkspace", 0, v10);

  (v5)[2](v5, @"assertedBackground", 0, *(*(a1 + 32) + 184));
  (v5)[2](v5, @"uncategorized", 0, v4);
}

void __56__SBSceneManager_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CBEB18] array];
  if ([v8 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v30 = v9;
      v31 = a1;
      v33 = v8;
      v15 = v7;
      v16 = 0;
      v17 = *v39;
      do
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v38 + 1) + 8 * v18);
          v21 = [v20 succinctDescription];
          [v10 addObject:v21];

          v16 = [v20 sceneIfExists];

          if (v16)
          {
            [v11 addObject:v16];
          }

          ++v18;
          v19 = v16;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v14);

      v7 = v15;
      a1 = v31;
      v8 = v33;
      v9 = v30;
    }
  }

  else if ([v9 count])
  {
    v32 = a1;
    v29 = v7;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v27 succinctDescription];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), v27];
          }
          v28 = ;
          [v10 addObject:v28];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    v11 = v22;
    v7 = v29;
    a1 = v32;
  }

  else
  {
    v11 = 0;
  }

  [*(a1 + 32) minusSet:v11];
  [*(a1 + 40) appendArraySection:v10 withName:v7 skipIfEmpty:1];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  state = self->_state;
  if (state == 1)
  {
    v6 = @"invalidating";
  }

  else
  {
    if (state != 2)
    {
      goto LABEL_6;
    }

    v6 = @"invalidated";
  }

  [v3 appendString:v6 withName:0];
LABEL_6:

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    self->_hidden = hidden;
  }
}

- (BOOL)_handleAction:(id)action forScene:(id)scene
{
  v58 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_opt_class();
      _windowScene = [(SBSceneManager *)self _windowScene];
      switcherController = [_windowScene switcherController];
      contentViewController = [switcherController contentViewController];
      v14 = SBSafeCast(v10, contentViewController);

      if (v14)
      {
        [v14 prepareForIncomingCenterWindowAnimationWithAction:actionCopy];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _windowScene2 = [(SBSceneManager *)self _windowScene];
          lockedPointerManager = [_windowScene2 lockedPointerManager];

          identifier = [sceneCopy identifier];
          v9 = 1;
          [lockedPointerManager clientWithSceneIdentifier:identifier suppressPreferredLockStatus:1];

          goto LABEL_4;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [actionCopy dispatchToHostGestureRecognizer];
        }

        else
        {
          uIActionType = [actionCopy UIActionType];
          if (uIActionType == 48)
          {
            lockedPointerManager = [MEMORY[0x277CCAB98] defaultCenter];
            v48 = @"SBSceneResizeLayoutDidFinishNotificationSceneIdentifierKey";
            identifier2 = [sceneCopy identifier];
            v49 = identifier2;
            v9 = 1;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
            [lockedPointerManager postNotificationName:@"SBSceneResizeLayoutDidFinishNotification" object:self userInfo:v34];

            goto LABEL_4;
          }

          if (uIActionType != 35)
          {
            goto LABEL_38;
          }

          v24 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
          if (v24)
          {
            v25 = objc_opt_class();
            v26 = __BSSafeCast(actionCopy, v25);
            persistedIdentifiers = [v26 persistedIdentifiers];

            if (persistedIdentifiers)
              v28 = {;
              v29 = 0;
              v30 = 1;
            }

            else
            {
              isUserOriginatedRequest = [v26 isUserOriginatedRequest];
              v36 = [(SBSceneManager *)self isSceneHandleNotUserDestroyable:v24];
              if (isUserOriginatedRequest && v36)
                v28 = {;
                v29 = 0;
                v30 = 3;
              }

              else
              {
                v37 = SBApplicationSceneEntityDestructionMakeIntent([v26 preferredAnimationType], objc_msgSend(v26, "destroySceneSession"));
                v38 = [MEMORY[0x277CBEB98] setWithObject:v24];
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __41__SBSceneManager__handleAction_forScene___block_invoke;
                v46[3] = &unk_2783ACC28;
                v47 = actionCopy;
                SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v38, v37, v46);

                v30 = 0;
                v28 = 0;
                v29 = 1;
              }
            }
          }

          else
            v28 = {;
            v29 = 0;
            v30 = 2;
          }

          if (v28)
          {
            v39 = SBLogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [SBSceneManager _handleAction:v28 forScene:v39];
            }

            v40 = MEMORY[0x277CCA9B8];
            v41 = SBSceneManagerErrorDomain;
            v50 = *MEMORY[0x277CCA068];
            v51 = v28;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v43 = [v40 errorWithDomain:v41 code:v30 userInfo:v42];

            v44 = [objc_alloc(MEMORY[0x277D75408]) initWithInfo:0 error:v43];
            [actionCopy sendResponse:v44];
          }

          if ((v29 & 1) == 0)
          {
LABEL_38:
            v45 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
            v9 = [v45 _handleSceneAction:actionCopy];

            goto LABEL_16;
          }
        }

LABEL_15:
        v9 = 1;
        goto LABEL_16;
      }

      v16 = objc_opt_class();
      _windowScene3 = [(SBSceneManager *)self _windowScene];
      switcherController2 = [_windowScene3 switcherController];
      contentViewController2 = [switcherController2 contentViewController];
      v14 = SBSafeCast(v16, contentViewController2);

      if (v14)
      {
        [v14 cleanUpAfterCompletingCenterWindowAnimationWithAction:actionCopy];
      }
    }

    goto LABEL_15;
  }

  if (([actionCopy isValid] & 1) == 0)
  {
    v15 = XBLogCapture();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      displayIdentity = [(SBSceneManager *)self displayIdentity];
      identifier3 = [sceneCopy identifier];
      *buf = 138412802;
      v53 = displayIdentity;
      v54 = 2112;
      v55 = identifier3;
      v56 = 2112;
      v57 = actionCopy;
      _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "[display:%@] [%@] Ignoring invalid snapshot action: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  lockedPointerManager = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
  v9 = [(SBSceneSnapshotRequestor *)self->_snapshotRequestor handleSnapshotRequestAction:actionCopy forSceneHandle:lockedPointerManager];
LABEL_4:

LABEL_16:
  return v9;
}

void __41__SBSceneManager__handleAction_forScene___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D75408];
  v5 = a3;
  v6 = [[v4 alloc] initWithInfo:0 error:v5];

  [*(a1 + 32) sendResponse:v6];
}

- (id)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v5;
}

- (void)_reconnectSceneRemnant:(id)remnant forProcess:(id)process sceneManager:(id)manager
{
  v31 = *MEMORY[0x277D85DE8];
  processCopy = process;
  managerCopy = manager;
  remnantCopy = remnant;
  lastSettings = [remnantCopy lastSettings];
  v12 = [managerCopy createLegacySceneFromRemnant:remnantCopy withSettings:lastSettings transitionContext:0];

  if (v12)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = FBSProcessPrettyDescription();
      v17 = [MEMORY[0x277CF0C00] succinctDescriptionForObject:v12];
      v23 = 138413058;
      v24 = v15;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[%@-%p] Connected to remnant from %@: %@", &v23, 0x2Au);
    }

    settings = [v12 settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v20 = SBLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = 138412546;
        v24 = v22;
        v25 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[%@-%p] Sending foreground scene remnant to the background.", &v23, 0x16u);
      }

      [v12 updateSettingsWithBlock:&__block_literal_global_145];
    }
  }
}

- (void)_scene:(id)_scene didUpdateClientSettings:(id)settings
{
  _sceneCopy = _scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  clientProcess = [_sceneCopy clientProcess];
  if ([clientProcess isApplicationProcess] && (objc_msgSend(clientProcess, "isCurrentProcess") & 1) == 0)
  {
    if (([previousSettings isUISubclass] & 1) == 0)
    {
      [SBSceneManager _scene:didUpdateClientSettings:];
    }

    v11 = [(SBSceneManager *)self existingSceneHandleForScene:_sceneCopy];
    v12 = objc_alloc_init(SBAppClientSettingObserverContext);
    [(SBAppClientSettingObserverContext *)v12 setScene:_sceneCopy];
    application = [v11 application];
    [(SBAppClientSettingObserverContext *)v12 setApp:application];

    [(SBAppClientSettingObserverContext *)v12 setSceneHandle:v11];
    uiSettings = [_sceneCopy uiSettings];
    [(SBAppClientSettingObserverContext *)v12 setSettings:uiSettings];

    [(SBAppClientSettingObserverContext *)v12 setOldClientSettings:previousSettings];
    uiClientSettings = [_sceneCopy uiClientSettings];
    [(SBAppClientSettingObserverContext *)v12 setUpdatedClientSettings:uiClientSettings];

    [(SBAppClientSettingObserverContext *)v12 setTransition:transitionContext];
    _appSceneClientSettingsDiffInspector = [(SBSceneManager *)self _appSceneClientSettingsDiffInspector];
    [settingsDiff evaluateWithInspector:_appSceneClientSettingsDiffInspector context:v12];
  }
}

- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  settings = [sceneCopy settings];
  isForeground = [settings isForeground];

  if ((isForeground & 1) == 0)
  {
    v9 = SBLogWorkspace();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = sceneCopy;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Not fencing scene transistion with scene: %@ because it is backgrounded", &v11, 0xCu);
    }
  }

  return isForeground;
}

- (id)debugNameForSceneSnapshotRequestor:(id)requestor
{
  requestorCopy = requestor;
  if (SBFIsShellSceneKitAvailable())
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      displayIdentity = [(SBSceneManager *)self displayIdentity];
      currentConfiguration = [displayIdentity currentConfiguration];

      name = [currentConfiguration name];
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__8;
      v17 = __Block_byref_object_dispose__8;
      v18 = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__SBSceneManager_debugNameForSceneSnapshotRequestor___block_invoke;
      v12[3] = &unk_2783A8CE0;
      v12[4] = self;
      v12[5] = &v13;
      dispatch_sync(MEMORY[0x277D85CD0], v12);
      name = [v14[5] name];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
    displayIdentity2 = [(SBSceneManager *)self displayIdentity];
    v10 = [mEMORY[0x277D0AA90] configurationForIdentity:displayIdentity2];

    name = [v10 name];
  }

  return name;
}

void __53__SBSceneManager_debugNameForSceneSnapshotRequestor___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) displayIdentity];
  v2 = [v5 currentConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sceneSnapshotRequestContextForSceneSnapshotRequestor:(id)requestor
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v6 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  switcherController = [v6 switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  layoutStateTransitionCoordinator = [v6 layoutStateTransitionCoordinator];
  transitionContext = [layoutStateTransitionCoordinator transitionContext];

  lastAppearanceChangeTimestamp = [(SBBiomeAppearanceChangeObserver *)self->_appearanceChangeObserver lastAppearanceChangeTimestamp];
  windowSceneManager2 = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager2 embeddedDisplayWindowScene];
  switcherController2 = [embeddedDisplayWindowScene switcherController];

  v15 = objc_alloc_init(SBMutableSceneSnapshotRequestContext);
  [(SBSceneSnapshotRequestContext *)v15 setSceneDisplayReferenceFrameProvider:switcherController];
  [(SBSceneSnapshotRequestContext *)v15 setSceneDisplayWindowManagementContext:windowManagementContext];
  [(SBSceneSnapshotRequestContext *)v15 setSceneDisplayLayoutStateTransitionContext:transitionContext];
  [(SBSceneSnapshotRequestContext *)v15 setEmbeddedDisplayReferenceFrameProvider:switcherController2];
  [(SBSceneSnapshotRequestContext *)v15 setLastAppearanceChangeTimestamp:lastAppearanceChangeTimestamp];

  return v15;
}

- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor
{
  if (self->_snapshotRequestor)
  {
    [SBSceneManager sceneSnapshotRequestStrategyForSceneSnapshotRequestor:];
  }

  return 0;
}

- (id)switcherController
{
  _windowScene = [(SBSceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];

  return switcherController;
}

- (void)_updateStateForScene:(id)scene withSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v7 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
  clientHandle = [sceneCopy clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];
  v10 = [bundleIdentifier isEqualToString:@"com.apple.PosterBoard"];

  if (v7 && !(v10 & 1 | (([(BSCopyingCacheSet *)self->_externalApplicationSceneHandles containsObject:v7]& 1) == 0)))
  {
    allScenes = self->_allScenes;
    sceneIfExists = [v7 sceneIfExists];
    v13 = [(BSCopyingCacheSet *)allScenes containsObject:sceneIfExists];

    if (v13)
    {
      v14 = [(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles containsObject:v7]^ 1;
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }

    if ([settingsCopy isForeground])
    {
      v16 = [(NSCountedSet *)self->_assertedBackgroundScenes containsObject:sceneCopy];
      clientProcess = [sceneCopy clientProcess];
      if (([clientProcess isCurrentProcess] & 1) == 0)
      {
        [(BSCopyingCacheSet *)self->_externalForegroundApplicationSceneHandles addObject:v7];
        if (v16)
        {
          [(SBSceneManager *)self _removeReportedForegroundExternalApplicationSceneHandle:v7];
        }

        else
        {
          [(SBSceneManager *)self _addReportedForegroundExternalApplicationSceneHandle:v7];
        }
      }
    }

    else
    {
      [(SBSceneManager *)self _removeReportedForegroundExternalApplicationSceneHandle:v7];
      [(BSCopyingCacheSet *)self->_externalForegroundApplicationSceneHandles removeObject:v7];
    }

    v18 = [(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles containsObject:v7];
    if (((v15 | v18) & 1) == 0 || (v14 & v18 & 1) != 0 || v13 != 1)
    {
      [(SBSceneManager *)self _noteDidChangeToVisibility:v18 & 1 previouslyExisted:v13 forScene:sceneCopy];
    }
  }
}

- (void)_updateIconStyleSettingsOnScene:(id)scene
{
  iconStyleProvider = self->_iconStyleProvider;
  sceneCopy = scene;
  currentIconStyleConfiguration = [(SBIconStyleProvider *)iconStyleProvider currentIconStyleConfiguration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SBSceneManager__updateIconStyleSettingsOnScene___block_invoke;
  v7[3] = &unk_2783ACC50;
  v8 = currentIconStyleConfiguration;
  v6 = currentIconStyleConfiguration;
  [sceneCopy performUpdate:v7];
}

void __50__SBSceneManager__updateIconStyleSettingsOnScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2835FD268])
  {
    [v3 setIconStyleConfiguration:*(a1 + 32)];
  }
}

- (void)_addReportedForegroundExternalApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  if (([(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles containsObject:handleCopy]& 1) == 0)
  {
    [(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles addObject:handleCopy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __71__SBSceneManager__addReportedForegroundExternalApplicationSceneHandle___block_invoke;
    v5[3] = &unk_2783ACC78;
    v5[4] = self;
    v6 = handleCopy;
    [(SBSceneManager *)self _doObserverCalloutWithBlock:v5];
  }
}

void __71__SBSceneManager__addReportedForegroundExternalApplicationSceneHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneManager:*(a1 + 32) didAddExternalForegroundApplicationSceneHandle:*(a1 + 40)];
  }
}

- (void)_removeReportedForegroundExternalApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  if ([(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles containsObject:handleCopy])
  {
    [(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles removeObject:handleCopy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __74__SBSceneManager__removeReportedForegroundExternalApplicationSceneHandle___block_invoke;
    v5[3] = &unk_2783ACC78;
    v5[4] = self;
    v6 = handleCopy;
    [(SBSceneManager *)self _doObserverCalloutWithBlock:v5];
  }
}

void __74__SBSceneManager__removeReportedForegroundExternalApplicationSceneHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneManager:*(a1 + 32) didRemoveExternalForegroundApplicationSceneHandle:*(a1 + 40)];
  }
}

- (void)_noteObserversDidInvalidate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__SBSceneManager__noteObserversDidInvalidate__block_invoke;
  v2[3] = &unk_2783ACCA0;
  v2[4] = self;
  [(SBSceneManager *)self _doObserverCalloutWithBlock:v2];
}

void __45__SBSceneManager__noteObserversDidInvalidate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneManagerDidInvalidate:*(a1 + 32)];
  }
}

- (void)_doObserverCalloutWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [(NSHashTable *)self->_observers copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)addUserInterfaceStyleObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    userInterfaceStyleObservers = self->_userInterfaceStyleObservers;
    if (!userInterfaceStyleObservers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_userInterfaceStyleObservers;
      self->_userInterfaceStyleObservers = weakObjectsHashTable;

      userInterfaceStyleObservers = self->_userInterfaceStyleObservers;
    }

    [(NSHashTable *)userInterfaceStyleObservers addObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)removeUserInterfaceStyleObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_userInterfaceStyleObservers removeObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)userInterfaceStyleProvider:(id)provider didUpdateStyle:(int64_t)style preferredAnimationSettings:(id)settings completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  completionCopy = completion;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = SBFStringForUIUserInterfaceStyle();
    *buf = 138543362;
    v20 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Got a user interface style change, forwarding %{public}@ to scenes", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke;
  v15[3] = &unk_2783AB780;
  v15[4] = self;
  v16 = settingsCopy;
  v17 = completionCopy;
  styleCopy = style;
  v13 = completionCopy;
  v14 = settingsCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D0AB20] sharedInstance];
  v3 = MEMORY[0x277D0AB18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_2;
  v11[3] = &unk_2783AA4F8;
  v4 = a1[4];
  v5 = a1[5];
  v12 = v2;
  v13 = v4;
  v6 = v5;
  v8 = a1[6];
  v7 = a1[7];
  v14 = v6;
  v16 = v7;
  v15 = v8;
  v9 = v2;
  v10 = [v3 eventWithName:@"Forward user interface style change to scenes" handler:v11];
  [v9 executeOrAppendEvent:v10];
}

void __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__8;
  v62[4] = __Block_byref_object_dispose__8;
  v63 = [*(a1 + 32) acquireLockForReason:@"Forward user interface style change to scenes"];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_3;
  v61[3] = &unk_2783A9718;
  v61[4] = v64;
  v29 = MEMORY[0x223D6F7F0](v61);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_4;
  v57[3] = &unk_2783ACCC8;
  v59 = v64;
  v60 = v62;
  v58 = *(a1 + 32);
  v28 = MEMORY[0x223D6F7F0](v57);
  v29[2]();
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v2 = [SBApp systemUIScenesCoordinator];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_5;
  v52[3] = &unk_2783ACCF0;
  v52[4] = &v53;
  [v2 enumerateScenesWithBlock:v52];

  v3 = [*(a1 + 40) allScenes];
  if ([v3 count] || (v54[3] & 1) != 0)
  {
  }

  else
  {
    v26 = [*(*(a1 + 40) + 232) count] == 0;

    if (v26)
    {
      v5 = 0;
      v4 = 0;
      goto LABEL_5;
    }
  }

  v4 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
  v5 = *(a1 + 48);
LABEL_5:
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [*(a1 + 40) allScenes];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *v49;
  v27 = v42;
  obj = v6;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v49 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v48 + 1) + 8 * i);
      v11 = [v10 settings];
      if ([v11 isUISubclass])
      {
        v12 = [v11 sb_displayIdentityForSceneManagers];
        if (v12)
        {
          if ([v11 isForeground])
          {
          }

          else
          {
            v13 = [v11 underLock];

            if (!v13)
            {
              goto LABEL_16;
            }
          }

          v29[2]();
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v42[0] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_6;
          v42[1] = &unk_2783ACD18;
          v47 = *(a1 + 64);
          v43 = v4;
          v44 = v10;
          v45 = v5;
          v46 = v28;
          [v10 performUpdate:v41];
        }
      }

LABEL_16:
    }

    v6 = obj;
    v7 = [obj countByEnumeratingWithState:&v48 objects:v67 count:16];
  }

  while (v7);
LABEL_18:

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = *(*(a1 + 40) + 232);
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v66 count:16];
  if (v15)
  {
    v16 = *v38;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v37 + 1) + 8 * j) sceneManager:*(a1 + 40) didUpdateUserInterfaceStyle:*(a1 + 64) withAnimationSettings:v5 fence:v4];
      }

      v15 = [v14 countByEnumeratingWithState:&v37 objects:v66 count:16];
    }

    while (v15);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [SBApp windowSceneManager];
  v19 = [v18 connectedWindowScenes];

  v20 = [v19 countByEnumeratingWithState:&v33 objects:v65 count:16];
  if (v20)
  {
    v21 = *v34;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [*(*(&v33 + 1) + 8 * k) traitsPipelineManager];
        [v23 userInterfaceStyleDidUpdateWithAnimationSettings:v5 fence:v4];
      }

      v20 = [v19 countByEnumeratingWithState:&v33 objects:v65 count:16];
    }

    while (v20);
  }

  if (v4)
  {
    v24 = MEMORY[0x277CD9FF0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_7;
    v31[3] = &unk_2783A9348;
    v32 = *(a1 + 56);
    [v24 bs_performAfterSynchronizedCommit:v31];
  }

  else
  {
    v25 = *(a1 + 56);
    if (v25)
    {
      (*(v25 + 16))();
    }
  }

  v28[2]();

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
}

void __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_4(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24) && *(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) relinquishLock:?];
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

uint64_t __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_5(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  [a2 setUserInterfaceStyle:*(a1 + 64)];
  [v12 setAnimationFence:*(a1 + 32)];
  v5 = [SBApp systemUIScenesCoordinator];
  v6 = [v5 accessibilityUIServerUISceneController];
  v7 = [v6 jobLabel];

  v8 = [*(a1 + 40) clientHandle];
  v9 = [v8 bundleIdentifier];
  v10 = [v9 isEqualToString:v7];

  if (v10 && (_AXSClassicInvertColorsEnabled() || _AXSInvertColorsEnabled()))
  {
    v11 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    [v12 setAnimationSettings:v11];
  }

  else
  {
    [v12 setAnimationSettings:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __98__SBSceneManager_userInterfaceStyleProvider_didUpdateStyle_preferredAnimationSettings_completion___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)iconStyleProvider:(id)provider didUpdateIconStyleConfiguration:(id)configuration
{
  v12 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = configurationCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Got an icon style change, forwarding %{public}@ to scenes", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke;
  v8[3] = &unk_2783A92D8;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AB20] sharedInstance];
  v3 = MEMORY[0x277D0AB18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_2;
  v8[3] = &unk_2783A8ED8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v2;
  v10 = v4;
  v11 = v5;
  v6 = v2;
  v7 = [v3 eventWithName:@"Forward icon style change to scenes" handler:v8];
  [v6 executeOrAppendEvent:v7];
}

void __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_2(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__8;
  v33[4] = __Block_byref_object_dispose__8;
  v34 = [a1[4] acquireLockForReason:@"Forward icon style change to scenes"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_3;
  v32[3] = &unk_2783A9718;
  v32[4] = v35;
  v1 = MEMORY[0x223D6F7F0](v32);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_4;
  v28[3] = &unk_2783ACCC8;
  v30 = v35;
  v31 = v33;
  v29 = a1[4];
  v13 = MEMORY[0x223D6F7F0](v28);
  v1[2](v1);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v2 = [SBApp systemUIScenesCoordinator];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_5;
  v25[3] = &unk_2783ACCF0;
  v25[4] = v26;
  [v2 enumerateScenesWithBlock:v25];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [a1[5] allScenes];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v36 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      v6 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v21 + 1) + 8 * v6);
        v8 = [v7 settings];
        if ([v8 isUISubclass])
        {
          v9 = [v8 sb_displayIdentityForSceneManagers];
          if (v9)
          {
            if ([v8 isForeground] & 1) != 0 || (objc_msgSend(v8, "underLock"))
            {

LABEL_11:
              v1[2](v1);
              v15[0] = MEMORY[0x277D85DD0];
              v15[1] = 3221225472;
              v15[2] = __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_6;
              v15[3] = &unk_2783ACD40;
              v16 = a1[6];
              v17 = 0;
              v18 = v7;
              v19 = 0;
              v20 = v13;
              [v7 performUpdate:v15];

              goto LABEL_12;
            }

            v10 = [v7 workspaceIdentifier];
            v11 = v10 == 0;

            if (!v11)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_12:

        ++v6;
      }

      while (v4 != v6);
      v12 = [v3 countByEnumeratingWithState:&v21 objects:v36 count:16];
      v4 = v12;
    }

    while (v12);
  }

  v13[2](v13);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

void __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_4(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24) && *(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) relinquishLock:?];
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

uint64_t __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_5(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __68__SBSceneManager_iconStyleProvider_didUpdateIconStyleConfiguration___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 conformsToProtocol:&unk_2835FD268])
  {
    [v13 setIconStyleConfiguration:*(a1 + 32)];
  }

  [v5 setAnimationFence:*(a1 + 40)];
  v6 = [SBApp systemUIScenesCoordinator];
  v7 = [v6 accessibilityUIServerUISceneController];
  v8 = [v7 jobLabel];

  v9 = [*(a1 + 48) clientHandle];
  v10 = [v9 bundleIdentifier];
  v11 = [v10 isEqualToString:v8];

  if (v11 && (_AXSClassicInvertColorsEnabled() || _AXSInvertColorsEnabled()))
  {
    v12 = [MEMORY[0x277CF0B70] settingsWithDuration:0.0];
    [v5 setAnimationSettings:v12];
  }

  else
  {
    [v5 setAnimationSettings:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
}

- (id)childTransactionsForTransitionRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_childTransactionProviders;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) childTransactionsForTransitionRequest:{requestCopy, v13}];
        if ([v11 count])
        {
          if (v8)
          {
            [v8 unionSet:v11];
          }

          else
          {
            v8 = [v11 mutableCopy];
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)request
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  application = [requestCopy application];
  if (!application)
  {
    [SBSceneManager fetchOrCreateApplicationSceneHandleForRequest:];
  }

  sceneDefinition = [requestCopy sceneDefinition];
  identity = [sceneDefinition identity];

  v8 = [(SBSceneManager *)self existingSceneHandleForSceneIdentity:identity];
  v9 = +[SBSceneManager _globalRegistry];
  v10 = [v9 existingSceneHandleForSceneIdentity:identity];

  if (v8 || !v10)
  {
    if (v8)
    {
      existingScene = SBLogCommon();
      if (os_log_type_enabled(existingScene, OS_LOG_TYPE_DEBUG))
      {
        v21 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v41 = v21;
        v42 = 2112;
        v43 = v8;
        _os_log_debug_impl(&dword_21ED4E000, existingScene, OS_LOG_TYPE_DEBUG, "[%{public}@] Fetched existing sceneHandle: %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = v10;
      _applicationSceneHandleClass = [objc_opt_class() _applicationSceneHandleClass];
      existingScene = [requestCopy existingScene];
      v24 = [_applicationSceneHandleClass alloc];
      if (existingScene)
      {
        displayIdentity = [(SBSceneManager *)self displayIdentity];
        v8 = [v24 _initWithApplication:application scene:existingScene displayIdentity:displayIdentity];

        [(NSMapTable *)self->_persistentMapSceneIdentityToSceneHandle setObject:v8 forKey:identity];
        v26 = SBLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = _SBFLoggingMethodProem();
          *buf = 138543618;
          v41 = v27;
          v42 = 2112;
          v43 = v8;
          _os_log_debug_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEBUG, "[%{public}@] Created PERSISTENT sceneHandle: %@", buf, 0x16u);
        }
      }

      else
      {
        sceneDefinition2 = [requestCopy sceneDefinition];
        displayIdentity2 = [(SBSceneManager *)self displayIdentity];
        v30 = application;
        v31 = displayIdentity2;
        v38 = v30;
        v8 = [v24 _initWithApplication:? sceneDefinition:? displayIdentity:?];

        [(NSMapTable *)self->_transientMapSceneIdentityToSceneHandle setObject:v8 forKey:identity];
        v26 = SBLogCommon();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v36 = _SBFLoggingMethodProem();
          *buf = 138543618;
          v41 = v36;
          v42 = 2112;
          v43 = v8;
          _os_log_debug_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEBUG, "[%{public}@] Created TRANSIENT sceneHandle: %@", buf, 0x16u);
        }

        application = v38;
      }

      v32 = +[SBSceneManager _globalRegistry];
      [v32 addSceneHandle:v8 forSceneIdentity:identity];

      [v8 _setManuallyControlsLifecycle:1];
      [v8 setSceneManager:self];
      v10 = v22;
    }
  }

  else
  {
    selfCopy = self;
    [requestCopy existingScene];
    v39 = v37 = v10;
    v8 = v10;
    sceneManager = [v8 sceneManager];
    sceneDefinition3 = [requestCopy sceneDefinition];
    [sceneDefinition3 identity];
    v15 = v14 = application;
    v16 = [sceneManager existingSceneHandleForSceneIdentity:v15];

    application = v14;
    if (v16 != v8)
    {
      v17 = SBLogCommon();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v39)
      {
        if (v18)
        {
          v34 = _SBFLoggingMethodProem();
          *buf = 138543618;
          v41 = v34;
          v42 = 2112;
          v43 = v8;
          _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Storing existing global PERSISTENT sceneHandle: %@", buf, 0x16u);
        }

        v19 = 88;
      }

      else
      {
        if (v18)
        {
          v35 = _SBFLoggingMethodProem();
          *buf = 138543618;
          v41 = v35;
          v42 = 2112;
          v43 = v8;
          _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "[%{public}@] Storing existing global TRANSIENT sceneHandle: %@", buf, 0x16u);
        }

        v19 = 96;
      }

      [*(&selfCopy->super.isa + v19) setObject:v8 forKey:identity];
    }

    v10 = v37;
    existingScene = v39;
  }

  return v8;
}

- (void)_addScene:(id)scene
{
  sceneCopy = scene;
  v26 = sceneCopy;
  if (self->_state)
  {
    [SBSceneManager _addScene:];
    sceneCopy = v26;
  }

  if (([sceneCopy isLegacy] & 1) == 0 && (objc_msgSend(v26, "isActive") & 1) == 0)
  {
    [(BSCopyingCacheSet *)self->_modernScenesPendingActivation addObject:v26];
    goto LABEL_24;
  }

  [(SBSceneManagerReference *)self->_selfReference retainForScene:v26];
  if ([(SBSceneManager *)self _shouldAutoHostScene:v26])
  {
    [(BSCopyingCacheSet *)self->_boundScenes addObject:v26];
    [(UIScenePresentationBinder *)self->_presentationBinder addScene:v26];
  }

  clientProcess = [v26 clientProcess];
  workspaceIdentifier = [v26 workspaceIdentifier];
  isCurrentProcess = [clientProcess isCurrentProcess];
  isApplicationProcess = [clientProcess isApplicationProcess];
  if (workspaceIdentifier)
  {
    [(BSCopyingCacheSet *)self->_workspaceScenes addObject:v26];
    if (isCurrentProcess)
    {
      goto LABEL_21;
    }

LABEL_17:
    if ([clientProcess hasEntitlement:@"com.apple.springboard.homeScreenIconStyle"])
    {
      v21 = objc_opt_self();
      [v26 addExtension:v21];
    }

    goto LABEL_21;
  }

  if (isApplicationProcess)
  {
    if ((isCurrentProcess & 1) == 0)
    {
      v10 = +[SBApplicationController sharedInstance];
      clientHandle = [v26 clientHandle];
      bundleIdentifier = [clientHandle bundleIdentifier];
      v13 = [v10 applicationWithBundleIdentifier:bundleIdentifier];

      if (!v13)
      {
        [(SBSceneManager *)a2 _addScene:v26];
      }

      v14 = [SBApplicationSceneHandleRequest alloc];
      definition = [v26 definition];
      displayIdentity = [(SBSceneManager *)self displayIdentity];
      v17 = [(SBApplicationSceneHandleRequest *)v14 initWithApplication:v13 sceneDefinition:definition displayIdentity:displayIdentity];

      [(SBApplicationSceneHandleRequest *)v17 setExistingScene:v26];
      v18 = [(SBSceneManager *)self fetchOrCreateApplicationSceneHandleForRequest:v17];
      if (!v18)
      {
        [SBSceneManager _addScene:];
      }

      _definition = [v18 _definition];
      identity = [_definition identity];

      [(NSMapTable *)self->_persistentMapSceneIdentityToSceneHandle setObject:v18 forKey:identity];
      [(NSMapTable *)self->_transientMapSceneIdentityToSceneHandle removeObjectForKey:identity];
      [(BSCopyingCacheSet *)self->_externalApplicationSceneHandles addObject:v18];

      goto LABEL_17;
    }
  }

  else
  {
    [(BSCopyingCacheSet *)self->_daemonScenes addObject:v26];
  }

LABEL_21:
  v22 = [(SBSceneManager *)self existingSceneHandleForScene:v26];
  sceneIfExists = [v22 sceneIfExists];

  v24 = v26;
  if (sceneIfExists != v26)
  {
    [v22 _noteSceneCreated:v26];
    v24 = v26;
  }

  settings = [v24 settings];
  [(SBSceneManager *)self _updateStateForScene:v26 withSettings:settings];

  [(SBSceneManager *)self _updateIconStyleSettingsOnScene:v26];
  [(BSCopyingCacheSet *)self->_allScenes addObject:v26];

LABEL_24:
}

- (void)_prepareToRemoveScene:(id)scene withReason:(int64_t)reason
{
  snapshotRequestor = self->_snapshotRequestor;
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  [(SBSceneSnapshotRequestor *)snapshotRequestor invalidatePendingSnapshotsForSceneID:identifier];

  v10 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];

  v9 = v10;
  if (v10)
  {
    [(SBSceneManager *)self _prepareToRemoveSceneHandle:v10 withReason:reason];
    v9 = v10;
  }
}

- (void)_prepareToRemoveSceneHandle:(id)handle withReason:(int64_t)reason
{
  handleCopy = handle;
  if ([(BSCopyingCacheSet *)self->_reportedExternalForegroundApplicationSceneHandles containsObject:handleCopy])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SBSceneManager__prepareToRemoveSceneHandle_withReason___block_invoke;
    v7[3] = &unk_2783ACD68;
    v7[4] = self;
    v8 = handleCopy;
    reasonCopy = reason;
    [(SBSceneManager *)self _doObserverCalloutWithBlock:v7];
  }
}

void __57__SBSceneManager__prepareToRemoveSceneHandle_withReason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sceneManager:a1[4] willRemoveExternalForegroundApplicationSceneHandle:a1[5] withReason:a1[6]];
  }
}

- (void)_removeScene:(id)scene withReason:(int64_t)reason
{
  sceneCopy = scene;
  [(BSCopyingCacheSet *)self->_allScenes removeObject:sceneCopy];
  [(BSCopyingCacheSet *)self->_daemonScenes removeObject:sceneCopy];
  [(BSCopyingCacheSet *)self->_workspaceScenes removeObject:sceneCopy];
  [(BSCopyingCacheSet *)self->_modernScenesPendingActivation removeObject:sceneCopy];
  v6 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
  if (v6)
  {
    [(SBSceneManager *)self _removeSceneHandle:v6 withReason:reason];
  }

  [(SBSceneManagerReference *)self->_selfReference releaseForScene:sceneCopy];
  [(BSCopyingCacheSet *)self->_boundScenes removeObject:sceneCopy];
  [(UIScenePresentationBinder *)self->_presentationBinder removeScene:sceneCopy];
}

- (void)_removeSceneHandle:(id)handle withReason:(int64_t)reason
{
  handleCopy = handle;
  [(BSCopyingCacheSet *)self->_externalApplicationSceneHandles removeObject:handleCopy];
  [(BSCopyingCacheSet *)self->_externalForegroundApplicationSceneHandles removeObject:handleCopy];
  [(SBSceneManager *)self _removeReportedForegroundExternalApplicationSceneHandle:handleCopy];
  _definition = [handleCopy _definition];
  identity = [_definition identity];

  if (reason == 1)
  {
    [(NSMapTable *)self->_transientMapSceneIdentityToSceneHandle removeObjectForKey:identity];
    [(NSMapTable *)self->_persistentMapSceneIdentityToSceneHandle removeObjectForKey:identity];
  }

  else if (!reason)
  {
    [(NSMapTable *)self->_transientMapSceneIdentityToSceneHandle setObject:handleCopy forKey:identity];
    [(NSMapTable *)self->_persistentMapSceneIdentityToSceneHandle removeObjectForKey:identity];
    sceneIfExists = [handleCopy sceneIfExists];
    [handleCopy _noteSceneDestroyed:sceneIfExists];
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  if (([activateCopy isLegacy] & 1) == 0 && -[BSCopyingCacheSet containsObject:](self->_modernScenesPendingActivation, "containsObject:", activateCopy))
  {
    [(BSCopyingCacheSet *)self->_modernScenesPendingActivation removeObject:activateCopy];
    [(SBSceneManager *)self _addScene:activateCopy];
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v29 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  actionsCopy = actions;
  if (self->_state)
  {
    [SBSceneManager scene:handleActions:];
  }

  v8 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v21;
    *&v11 = 138543618;
    v19 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([(SBSceneManager *)self _handleAction:v15 forScene:sceneCopy, v19, v20])
        {
          [v8 addObject:v15];
        }

        else
        {
          v16 = SBLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            identifier = [sceneCopy identifier];
            *buf = v19;
            v25 = identifier;
            v26 = 2112;
            v27 = v15;
            _os_log_error_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_ERROR, "Ignoring unhandled action directed at scene %{public}@: %@", buf, 0x16u);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  return v8;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];
  if (self->_state)
  {
    [SBSceneManager scene:didUpdateClientSettings:];
  }

  animationFence = [transitionContext animationFence];
  if (animationFence && [(SBSceneManager *)self _shouldFenceTransitionForScene:sceneCopy updatedClientSettingsDiff:settingsDiff oldClientSettings:previousSettings transitionContext:transitionContext])
  {
    [MEMORY[0x277D75940] _synchronizeDrawingWithFence:animationFence];
  }

  [(SBSceneManager *)self _scene:sceneCopy didUpdateClientSettings:settingsCopy];
  windowScene = [(SBSceneManager *)self windowScene];
  medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController scene:sceneCopy didUpdateClientSettings:settingsCopy];
}

- (void)scene:(id)scene didPrepareUpdateWithContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  transitionContext = [contextCopy transitionContext];
  settings = [contextCopy settings];
  if (self->_state)
  {
    [SBSceneManager scene:didPrepareUpdateWithContext:];
  }

  [(SBSceneManager *)self _updateStateForScene:sceneCopy withSettings:settings];
  [(SBSceneManager *)self _scene:sceneCopy willUpdateWithSettings:settings transitionContext:transitionContext];
  externalApplicationSceneHandles = self->_externalApplicationSceneHandles;
  v10 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
  LODWORD(externalApplicationSceneHandles) = [(BSCopyingCacheSet *)externalApplicationSceneHandles containsObject:v10];

  if (externalApplicationSceneHandles)
  {
    v11 = [(SBSceneManager *)self existingSceneHandleForScene:sceneCopy];
    if ([(BSCopyingCacheSet *)self->_externalApplicationSceneHandles containsObject:v11])
    {
      v12 = objc_opt_class();
      v13 = v11;
      if (v12)
      {
        v14 = (objc_opt_isKindOfClass() & 1) != 0 ? v13 : 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      shouldAlwaysDisplayLiveContent = [v15 shouldAlwaysDisplayLiveContent];
      if ((shouldAlwaysDisplayLiveContent & 1) == 0)
      {
        [(SBSceneSnapshotRequestor *)self->_snapshotRequestor requestSnapshotsForSceneHandle:v13 updatingToNewSettings:settings withUpdateContext:contextCopy];
      }
    }
  }
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  errorCopy = error;
  contextCopy = context;
  sceneCopy = scene;
  windowScene = [(SBSceneManager *)self windowScene];
  medusaHostedKeyboardWindowController = [windowScene medusaHostedKeyboardWindowController];
  [medusaHostedKeyboardWindowController scene:sceneCopy didCompleteUpdateWithContext:contextCopy error:errorCopy];

  [(SBSceneManager *)self _noteDidCommitUpdateForScene:sceneCopy];
}

- (void)addSystemUISceneToPresentationBinder:(id)binder
{
  boundSingleScenes = self->_boundSingleScenes;
  binderCopy = binder;
  [(SBSceneManager *)self _addSceneToPresentationBinder:binderCopy trackedCollection:boundSingleScenes];
  [(BSCopyingCacheSet *)self->_allScenes removeObject:binderCopy];
}

- (void)_addSceneToPresentationBinder:(id)binder trackedCollection:(id)collection
{
  binderCopy = binder;
  collectionCopy = collection;
  if (self->_state)
  {
    [SBSceneManager(ChamoisDevelopmentShimming) _addSceneToPresentationBinder:trackedCollection:];
  }

  [(BSCopyingCacheSet *)self->_boundScenes addObject:binderCopy];
  [(UIScenePresentationBinder *)self->_presentationBinder addScene:binderCopy];
  [collectionCopy addObject:binderCopy];
  workspaceIdentifier = [binderCopy workspaceIdentifier];
  if (workspaceIdentifier)
  {
    [(BSCopyingCacheSet *)self->_workspaceScenes addObject:binderCopy];
  }

  [(BSCopyingCacheSet *)self->_allScenes addObject:binderCopy];
}

- (void)_removeSceneFromPresentationBinder:(id)binder trackedCollection:(id)collection
{
  binderCopy = binder;
  collectionCopy = collection;
  if (self->_state)
  {
    [SBSceneManager(ChamoisDevelopmentShimming) _removeSceneFromPresentationBinder:trackedCollection:];
  }

  [(BSCopyingCacheSet *)self->_boundScenes removeObject:binderCopy];
  [(UIScenePresentationBinder *)self->_presentationBinder removeScene:binderCopy];
  [collectionCopy removeObject:binderCopy];
  workspaceIdentifier = [binderCopy workspaceIdentifier];
  if (workspaceIdentifier)
  {
    [(BSCopyingCacheSet *)self->_workspaceScenes removeObject:binderCopy];
  }

  [(BSCopyingCacheSet *)self->_allScenes removeObject:binderCopy];
}

- (void)updatePresentationBinder:(id)binder
{
  v20 = *MEMORY[0x277D85DE8];
  binderCopy = binder;
  p_presentationBinder = &self->_presentationBinder;
  presentationBinder = self->_presentationBinder;
  if (presentationBinder != binderCopy)
  {
    v8 = presentationBinder;
    objc_storeStrong(&self->_presentationBinder, binder);
    [(UIScenePresentationBinder *)v8 invalidate];
    immutableSet = [(BSCopyingCacheSet *)self->_boundScenes immutableSet];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [immutableSet countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(immutableSet);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          [(UIScenePresentationBinder *)*p_presentationBinder addScene:v14];
          [(UIScenePresentationBinder *)v8 removeScene:v14];
        }

        v11 = [immutableSet countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reference" object:? file:? lineNumber:? description:?];
}

- (void)initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[reference displayIdentity]" object:? file:? lineNumber:? description:?];
}

- (void)initWithReference:sceneIdentityProvider:presentationBinder:snapshotBehavior:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneIdentityProvider" object:? file:? lineNumber:? description:?];
}

- (void)_handleAction:(uint64_t)a1 forScene:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

- (void)_scene:didUpdateClientSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)fetchOrCreateApplicationSceneHandleForRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addScene:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addScene:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSceneManager.m" lineNumber:1391 description:{@"Unable to fetch SBApplication for scene: %@", a3}];
}

- (void)_addScene:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:handleActions:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:didUpdateClientSettings:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)scene:didPrepareUpdateWithContext:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end