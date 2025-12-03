@interface SBSystemShellExternalDisplaySceneManager
- (BOOL)_isExternalForegroundScene:(id)scene;
- (BOOL)_shouldAutoHostScene:(id)scene;
- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)isSuspendedUnderLock;
- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventUnderLockForScene:(id)scene;
- (BOOL)wantsDisableIdleTimer;
- (SBSystemShellExternalDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior;
- (SBWindowScene)_windowScene;
- (id)_appSceneClientSettingsDiffInspector;
- (id)_proposeIdleTimerBehaviorForReason:(id)reason;
- (id)_sceneHandlesDisablingIdleTimer;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier;
- (id)existingSceneHandleForScene:(id)scene;
- (id)existingSceneHandleForSceneIdentity:(id)identity;
- (id)externalApplicationSceneHandles;
- (id)externalForegroundApplicationSceneHandles;
- (id)layoutStateManager;
- (id)newSceneIdentifierForBundleIdentifier:(id)identifier supportsMultiwindow:(BOOL)multiwindow;
- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor;
- (id)suspendedUnderLockManager:(id)manager sceneHandleForScene:(id)scene;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration;
- (id)suspendedUnderLockManagerVisibleScenes:(id)scenes;
- (id)switcherController;
- (id)transientApplicationSceneHandlesForApplication:(id)application;
- (void)_doObserverCalloutWithBlock:(id)block;
- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene;
- (void)_noteDidCommitUpdateForScene:(id)scene;
- (void)_reconnectSceneRemnant:(id)remnant forProcess:(id)process sceneManager:(id)manager;
- (void)_resetIdleTimerIfNeeded;
- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)scene withHandle:(id)handle;
- (void)_scene:(id)_scene didUpdateClientSettings:(id)settings;
- (void)_scene:(id)_scene willUpdateSettings:(id)settings;
- (void)_scene:(id)_scene willUpdateWithSettings:(id)settings transitionContext:(id)context;
- (void)dealloc;
- (void)sceneManager:(id)manager didDestroyScene:(id)scene;
- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBSystemShellExternalDisplaySceneManager

- (SBSystemShellExternalDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior
{
  referenceCopy = reference;
  providerCopy = provider;
  binderCopy = binder;
  v27.receiver = self;
  v27.super_class = SBSystemShellExternalDisplaySceneManager;
  v13 = [(SBSceneManager *)&v27 initWithReference:referenceCopy sceneIdentityProvider:providerCopy presentationBinder:binderCopy snapshotBehavior:behavior];
  if (v13)
  {
    [providerCopy setDataSource:v13];
    v14 = [SBSystemShellExternalDisplayPolicyAggregator alloc];
    v15 = +[SBDefaults localDefaults];
    displayIdentity = [(SBSceneManager *)v13 displayIdentity];
    v17 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    policyAggregator = [v17 policyAggregator];
    v19 = [(SBSystemShellExternalDisplayPolicyAggregator *)v14 initWithDefaults:v15 displayIdentity:displayIdentity policyDataSource:policyAggregator];
    policyAggregator = v13->_policyAggregator;
    v13->_policyAggregator = v19;

    objc_initWeak(&location, v13);
    v21 = MEMORY[0x277D85CD0];
    objc_copyWeak(&v25, &location);
    v22 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v13->_stateCaptureInvalidatable;
    v13->_stateCaptureInvalidatable = v22;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v13;
}

id __120__SBSystemShellExternalDisplaySceneManager_initWithReference_sceneIdentityProvider_presentationBinder_snapshotBehavior___block_invoke(uint64_t a1)
{
  v20[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v19[0] = @"externalApplicationSceneHandles";
    v3 = [WeakRetained externalApplicationSceneHandles];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = @"none";
    }

    v20[0] = v5;
    v19[1] = @"externalForegroundApplicationSceneHandles";
    v6 = [v2 externalForegroundApplicationSceneHandles];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"none";
    }

    v20[1] = v8;
    v19[2] = @"currentLayoutState";
    v9 = [v2 _windowScene];
    v10 = [v9 layoutStateProvider];
    v11 = [v10 layoutState];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"none";
    }

    v20[2] = v13;
    v19[3] = @"hasIdleTimerBehaviors";
    if ([v2 hasIdleTimerBehaviors])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v20[3] = v14;
    v19[4] = @"suspendedUnderLock";
    if ([v2 isSuspendedUnderLock])
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v20[4] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v17 = [v16 description];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector removeAllObservers];
  v3.receiver = self;
  v3.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v3 dealloc];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 windowSceneDidDisconnect:disconnect];
  [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeeded];
}

- (BOOL)_shouldAutoHostScene:(id)scene
{
  sceneCopy = scene;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) != 0 || (v4 = *MEMORY[0x277D22AC8], objc_msgSend(sceneCopy, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "isEqualToString:", v5), v5, (v4 & 1) == 0))
  {
    clientProcess = [sceneCopy clientProcess];
    v6 = ![clientProcess isApplicationProcess] || objc_msgSend(clientProcess, "isCurrentProcess");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_doObserverCalloutWithBlock:(id)block
{
  v3.receiver = self;
  v3.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v3 _doObserverCalloutWithBlock:block];
}

- (void)_reconnectSceneRemnant:(id)remnant forProcess:(id)process sceneManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v5 _reconnectSceneRemnant:remnant forProcess:process sceneManager:manager];
}

- (void)_scene:(id)_scene willUpdateSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 _scene:_scene willUpdateSettings:settings];
}

- (void)_scene:(id)_scene willUpdateWithSettings:(id)settings transitionContext:(id)context
{
  _sceneCopy = _scene;
  settingsCopy = settings;
  v8 = SBApp;
  v9 = MEMORY[0x277CCACA8];
  identifier = [_sceneCopy identifier];
  v11 = [v9 stringWithFormat:@"Workspace will update scene with identifier %@", identifier];
  [v8 updateMirroredDisplayOrientationWithLogMessage:v11];

  v12 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:_sceneCopy];
  settings = [_sceneCopy settings];
  externalForegroundApplicationSceneHandles = [(SBSystemShellExternalDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v15 = [externalForegroundApplicationSceneHandles containsObject:v12];

  if (v12 && v15)
  {
    v16 = [settings isOccluded] ? objc_msgSend(settings, "isIgnoringOcclusions") : 1;
    v17 = [settingsCopy isOccluded] ? objc_msgSend(settingsCopy, "isIgnoringOcclusions") ^ 1 : 0;
    if (((v16 | v17) & 1) == 0)
    {
      v18 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneHandle"];
    }
  }

  isForeground = [settings isForeground];
  isForeground2 = [settingsCopy isForeground];
  if (v12)
  {
    v21 = isForeground2;
    externalApplicationSceneHandles = [(SBSystemShellExternalDisplaySceneManager *)self externalApplicationSceneHandles];
    v23 = [externalApplicationSceneHandles containsObject:v12];

    if (!(v21 & 1 | ((isForeground & 1) == 0)) && v23 && ([v12 shouldAlwaysDisplayLiveContent] & 1) == 0)
    {
      prepareSnapshot = [_sceneCopy prepareSnapshot];
      [v12 saveSuspendSnapshot:prepareSnapshot];
    }
  }
}

- (void)_scene:(id)_scene didUpdateClientSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 _scene:_scene didUpdateClientSettings:settings];
}

- (void)sceneManager:(id)manager didDestroyScene:(id)scene
{
  sceneCopy = scene;
  v5 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:?];
  if (v5)
  {
    settings = [sceneCopy settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v8 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneDestroyed"];
    }
  }
}

- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SBSystemShellExternalDisplaySceneManager;
  return [(SBSceneManager *)&v7 _shouldFenceTransitionForScene:scene updatedClientSettingsDiff:diff oldClientSettings:settings transitionContext:context];
}

- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene
{
  existedCopy = existed;
  sceneCopy = scene;
  clientProcess = [sceneCopy clientProcess];
  if ([clientProcess isApplicationProcess])
  {
    v9 = +[SBApplicationController sharedInstance];
    bundleIdentifier = [clientProcess bundleIdentifier];
    v11 = [v9 applicationWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:sceneCopy];
  v13 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEB98] setWithObject:v12];
  }

  v16 = v15;

  v17 = +[SBBackgroundActivityAttributionManager sharedInstance];
  [v17 updateForegroundApplicationSceneHandles:v16 withOptions:-1 completion:0];

  if (v11)
  {
    [v11 setHasProminentlyIndicatedLocationUseWhileForeground:0];
  }

  if (visibility == 1)
  {
    if (v11)
    {
      if ([v11 hasRegisteredBackgroundActivityWithIdentifier:*MEMORY[0x277D6BC00]])
      {
        [SBApp nowLocatingAppDidEnterForeground:v11];
      }

      [v12 _setIdleTimerCoordinator:self];
      v20 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBAppDidEnterForeground"];
    }
  }

  else if (!visibility && v11)
  {
    [v12 _setIdleTimerCoordinator:0];
    if (existedCopy)
    {
      v18 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBAppDidEnterBackground"];
    }

    audioRecordingManager = [SBApp audioRecordingManager];
    [audioRecordingManager verifyBackgroundAudioActivityForApplication:v11];
  }
}

- (void)_noteDidCommitUpdateForScene:(id)scene
{
  sceneCopy = scene;
  if ([(SBSystemShellExternalDisplaySceneManager *)self _isExternalForegroundScene:?])
  {
    clientProcess = [sceneCopy clientProcess];
    if ([clientProcess isApplicationProcess])
    {
      v5 = +[SBApplicationController sharedInstance];
      bundleIdentifier = [clientProcess bundleIdentifier];
      v7 = [v5 applicationWithBundleIdentifier:bundleIdentifier];
    }

    else
    {
      v7 = 0;
    }

    appsRegisteredForVolumeEvents = [SBApp appsRegisteredForVolumeEvents];
    v10 = [appsRegisteredForVolumeEvents containsObject:v7];

    if (v10)
    {
      [SBApp setAppRegisteredForVolumeEvents:v7 isActive:1];
    }

    appsRegisteredForLockButtonEvents = [SBApp appsRegisteredForLockButtonEvents];
    v12 = [appsRegisteredForLockButtonEvents containsObject:v7];

    if (v12)
    {
      [SBApp setAppRegisteredForLockButtonEvents:v7 isActive:1];
    }

    v8 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:sceneCopy];
    [v8 setHasMainSceneBeenForegroundAtLeastOnce:1];
  }

  else
  {
    v8 = 0;
  }

  [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeededForUpdateToScene:sceneCopy withHandle:v8];
}

- (id)_appSceneClientSettingsDiffInspector
{
  appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
  if (!appClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75160]);
    v5 = self->_appClientSettingsDiffInspector;
    self->_appClientSettingsDiffInspector = v4;

    objc_initWeak(&location, self);
    v6 = self->_appClientSettingsDiffInspector;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_3;
    v18 = &unk_2783BFC30;
    objc_copyWeak(&v19, &location);
    v8 = __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v7, &v15);
    [(UIApplicationSceneClientSettingsDiffInspector *)v6 observeIdleTimerDisabledWithBlock:v8, v15, v16, v17, v18];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = self->_appClientSettingsDiffInspector;
      v13 = __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v11, &__block_literal_global_68_0);
      [(UIApplicationSceneClientSettingsDiffInspector *)v12 observePreferredPointerLockStateWithBlock:v13];
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
  }

  return appClientSettingsDiffInspector;
}

id __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_2;
  v6[3] = &unk_2783B6C98;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

void __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 scene];
  v5 = [v3 sceneHandle];

  [WeakRetained _resetIdleTimerIfNeededForUpdateToScene:v4 withHandle:v5];
}

void __80__SBSystemShellExternalDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v11 = [v2 updatedClientSettings];
  v3 = [v11 preferredPointerLockStatus];
  v4 = [v2 scene];
  v5 = [v4 identifier];

  v6 = [SBApp windowSceneManager];
  v7 = [v2 sceneHandle];

  v8 = [v7 displayIdentity];
  v9 = [v6 windowSceneForDisplayIdentity:v8];
  v10 = [v9 lockedPointerManager];

  [v10 clientWithSceneIdentifier:v5 prefersPointerLockStatus:v3];
}

- (id)externalApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  externalApplicationSceneHandles = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return externalApplicationSceneHandles;
}

- (id)externalForegroundApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  externalForegroundApplicationSceneHandles = [(SBSceneManager *)&v4 externalForegroundApplicationSceneHandles];

  return externalForegroundApplicationSceneHandles;
}

- (id)existingSceneHandleForScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForScene:scene];

  return v3;
}

- (id)existingSceneHandleForSceneIdentity:(id)identity
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForSceneIdentity:identity];

  return v3;
}

- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForPersistenceIdentifier:identifier];

  return v3;
}

- (SBWindowScene)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v5;
}

- (BOOL)isSuspendedUnderLock
{
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;

  return [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager isSuspendedUnderLock];
}

- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock
{
  lockCopy = lock;
  blockCopy = block;
  changeBlockCopy = changeBlock;
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  if (!lazy_suspendedUnderLockManager)
  {
    v10 = [SBSuspendedUnderLockManager alloc];
    v11 = +[SBWorkspace mainWorkspace];
    eventQueue = [v11 eventQueue];
    v13 = [(SBSuspendedUnderLockManager *)v10 initWithDelegate:self eventQueue:eventQueue];
    v14 = self->_lazy_suspendedUnderLockManager;
    self->_lazy_suspendedUnderLockManager = v13;

    lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  }

  [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager setSuspendedUnderLock:lockCopy alongsideWillChangeBlock:blockCopy alongsideDidChangeBlock:changeBlockCopy];
}

- (id)layoutStateManager
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  layoutStateManager = [v5 layoutStateManager];

  return layoutStateManager;
}

- (id)transientApplicationSceneHandlesForApplication:(id)application
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 transientApplicationSceneHandlesForApplication:application];

  return v3;
}

- (id)newSceneIdentifierForBundleIdentifier:(id)identifier supportsMultiwindow:(BOOL)multiwindow
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  return [(SBSceneManager *)&v5 newSceneIdentifierForBundleIdentifier:identifier supportsMultiwindow:multiwindow];
}

- (id)switcherController
{
  _windowScene = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];

  return switcherController;
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration
{
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  currentConfiguration = [displayIdentity currentConfiguration];

  return currentConfiguration;
}

- (id)suspendedUnderLockManager:(id)manager sceneHandleForScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = SBSystemShellExternalDisplaySceneManager;
  v4 = [(SBSceneManager *)&v6 existingSceneHandleForScene:scene];

  return v4;
}

- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventUnderLockForScene:(id)scene
{
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  LOBYTE(clientHandle) = [bundleIdentifier isEqualToString:@"com.apple.PosterBoard"];
  return clientHandle;
}

- (id)suspendedUnderLockManagerVisibleScenes:(id)scenes
{
  v4 = [MEMORY[0x277CBEB58] set];
  _windowScene = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
  [v4 unionSet:layoutStateApplicationSceneHandles];

  return v4;
}

- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor
{
  v3 = objc_alloc_init(SBExternalDisplaySceneSnapshotRequestStrategy);

  return v3;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  v16 = *MEMORY[0x277D85DE8];
  _sceneHandlesDisablingIdleTimer = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v4 = [_sceneHandlesDisablingIdleTimer bs_mapNoNulls:&__block_literal_global_89_2];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [_sceneHandlesDisablingIdleTimer count];
  v7 = SBLogIdleTimer();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109634;
    v11[1] = v6 != 0;
    v8 = " For SceneIDs: ";
    if (!v6)
    {
      v8 = "";
    }

    v12 = 2080;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBSystemShellExternalDisplaySceneManager requested idle timer behavior disabled? %{BOOL}u%s%{public}@", v11, 0x1Cu);
  }

  if (v6)
  {
    +[SBIdleTimerBehavior disabledBehavior];
  }

  else
  {
    +[SBIdleTimerBehavior autoLockBehavior];
  }
  v9 = ;

  return v9;
}

- (BOOL)hasIdleTimerBehaviors
{
  _windowScene = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutState = [switcherController layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

  if ((unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  _windowScene2 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  if ([_windowScene2 activationState])
  {
    v8 = 0;
  }

  else
  {
    _windowScene3 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
    switcherController2 = [_windowScene3 switcherController];
    layoutStateApplicationSceneHandles = [switcherController2 layoutStateApplicationSceneHandles];
    v8 = [layoutStateApplicationSceneHandles count] != 0;
  }

  return v8;
}

- (BOOL)wantsDisableIdleTimer
{
  _sceneHandlesDisablingIdleTimer = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v3 = [_sceneHandlesDisablingIdleTimer count] != 0;

  return v3;
}

- (BOOL)_isExternalForegroundScene:(id)scene
{
  v4 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:scene];
  if (v4)
  {
    externalForegroundApplicationSceneHandles = [(SBSystemShellExternalDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
    v6 = [externalForegroundApplicationSceneHandles containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_proposeIdleTimerBehaviorForReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[SBWorkspace mainWorkspace];
  v6 = [(SBSystemShellExternalDisplaySceneManager *)self coordinatorRequestedIdleTimerBehavior:self];
  v7 = [v5 idleTimerProvider:self didProposeBehavior:v6 forReason:reasonCopy];

  return v7;
}

- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)scene withHandle:(id)handle
{
  sceneCopy = scene;
  handleCopy = handle;
  clientProcess = [sceneCopy clientProcess];
  uiClientSettings = [sceneCopy uiClientSettings];
  idleTimerDisabled = [uiClientSettings idleTimerDisabled];
  if (idleTimerDisabled)
  {
    v10 = idleTimerDisabled;
    settings = [sceneCopy settings];
    if ([settings isForeground] && !objc_msgSend(handleCopy, "sceneFullyOccluded"))
    {
      isBeingDebugged = 1;
    }

    else if ([clientProcess isApplicationProcess])
    {
      isBeingDebugged = [clientProcess isBeingDebugged];
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      isBeingDebugged = 0;
    }

    goto LABEL_13;
  }

  if ([clientProcess isApplicationProcess])
  {
    isBeingDebugged = [clientProcess isBeingDebugged];
  }

  else
  {
    isBeingDebugged = 0;
  }

LABEL_13:

  v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  isIdleTimerDisabled = [v13 isIdleTimerDisabled];

  if (isBeingDebugged != isIdleTimerDisabled)
  {
    [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeeded];
  }
}

- (void)_resetIdleTimerIfNeeded
{
  if ([(SBSystemShellExternalDisplaySceneManager *)self hasIdleTimerBehaviors])
  {
    _sceneHandlesDisablingIdleTimer = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
    v3 = [_sceneHandlesDisablingIdleTimer count];
    v4 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    LOBYTE(v3) = (v3 == 0) ^ [v4 isIdleTimerDisabled];

    if ((v3 & 1) == 0)
    {
      v5 = [_sceneHandlesDisablingIdleTimer bs_mapNoNulls:&__block_literal_global_98];
      v6 = [v5 componentsJoinedByString:{@", "}];

      v7 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"IdleTimerDisableChangedForSceneManager - client:", v6];
      [v7 resetIdleTimerForReason:v8];
    }
  }
}

id __67__SBSystemShellExternalDisplaySceneManager__resetIdleTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 application];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)_sceneHandlesDisablingIdleTimer
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__109;
  v12 = __Block_byref_object_dispose__109;
  v13 = 0;
  _windowScene = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBSystemShellExternalDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke;
  v7[3] = &unk_2783BFC98;
  v7[4] = &v8;
  [layoutStateApplicationSceneHandles enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __75__SBSystemShellExternalDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sceneIfExists];
  if ([v4 isValid])
  {
    v5 = [v4 uiClientSettings];
    v6 = [v5 idleTimerDisabled];

    v7 = [v4 clientProcess];
    if ([v7 isApplicationProcess])
    {
      v8 = [v7 isBeingDebugged];
      v9 = v8;
      if ((v6 & 1) == 0)
      {
        if (v8)
        {
          v9 = 1;
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v9 = 0;
    }

    if (![v3 sceneFullyOccluded] || (v9 & 1) != 0)
    {
LABEL_10:
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = v11;
        v13 = *(v10 + 40);
        *(v10 + 40) = v12;
      }

      else
      {
        v14 = [MEMORY[0x277CBEB18] array];
        v15 = *(*(a1 + 32) + 8);
        v13 = *(v15 + 40);
        *(v15 + 40) = v14;
      }

      v16 = SBLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v3 sceneIdentifier];
        v19[0] = 67109890;
        v19[1] = v6;
        v20 = 1024;
        v21 = v9;
        v22 = 2112;
        v23 = v17;
        v24 = 2048;
        v25 = v3;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "found a scene that has disabled the idle timer (idleTimerDisabled: %d, isBeingDebugged: %d): %@ (%p)", v19, 0x22u);
      }

      v18 = SBLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __75__SBSystemShellExternalDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke_cold_1(v3, v18);
      }

      [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
    }

LABEL_18:
  }
}

void __75__SBSystemShellExternalDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "sceneHandle: %@", &v2, 0xCu);
}

@end