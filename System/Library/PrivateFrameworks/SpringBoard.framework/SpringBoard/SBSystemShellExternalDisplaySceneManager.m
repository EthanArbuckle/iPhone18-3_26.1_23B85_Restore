@interface SBSystemShellExternalDisplaySceneManager
- (BOOL)_isExternalForegroundScene:(id)a3;
- (BOOL)_shouldAutoHostScene:(id)a3;
- (BOOL)_shouldFenceTransitionForScene:(id)a3 updatedClientSettingsDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)isSuspendedUnderLock;
- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventUnderLockForScene:(id)a4;
- (BOOL)wantsDisableIdleTimer;
- (SBSystemShellExternalDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6;
- (SBWindowScene)_windowScene;
- (id)_appSceneClientSettingsDiffInspector;
- (id)_proposeIdleTimerBehaviorForReason:(id)a3;
- (id)_sceneHandlesDisablingIdleTimer;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)existingSceneHandleForPersistenceIdentifier:(id)a3;
- (id)existingSceneHandleForScene:(id)a3;
- (id)existingSceneHandleForSceneIdentity:(id)a3;
- (id)externalApplicationSceneHandles;
- (id)externalForegroundApplicationSceneHandles;
- (id)layoutStateManager;
- (id)newSceneIdentifierForBundleIdentifier:(id)a3 supportsMultiwindow:(BOOL)a4;
- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)a3;
- (id)suspendedUnderLockManager:(id)a3 sceneHandleForScene:(id)a4;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3;
- (id)suspendedUnderLockManagerVisibleScenes:(id)a3;
- (id)switcherController;
- (id)transientApplicationSceneHandlesForApplication:(id)a3;
- (void)_doObserverCalloutWithBlock:(id)a3;
- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5;
- (void)_noteDidCommitUpdateForScene:(id)a3;
- (void)_reconnectSceneRemnant:(id)a3 forProcess:(id)a4 sceneManager:(id)a5;
- (void)_resetIdleTimerIfNeeded;
- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)a3 withHandle:(id)a4;
- (void)_scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)_scene:(id)a3 willUpdateSettings:(id)a4;
- (void)_scene:(id)a3 willUpdateWithSettings:(id)a4 transitionContext:(id)a5;
- (void)dealloc;
- (void)sceneManager:(id)a3 didDestroyScene:(id)a4;
- (void)setSuspendedUnderLock:(BOOL)a3 alongsideWillChangeBlock:(id)a4 alongsideDidChangeBlock:(id)a5;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBSystemShellExternalDisplaySceneManager

- (SBSystemShellExternalDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27.receiver = self;
  v27.super_class = SBSystemShellExternalDisplaySceneManager;
  v13 = [(SBSceneManager *)&v27 initWithReference:v10 sceneIdentityProvider:v11 presentationBinder:v12 snapshotBehavior:a6];
  if (v13)
  {
    [v11 setDataSource:v13];
    v14 = [SBSystemShellExternalDisplayPolicyAggregator alloc];
    v15 = +[SBDefaults localDefaults];
    v16 = [(SBSceneManager *)v13 displayIdentity];
    v17 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v18 = [v17 policyAggregator];
    v19 = [(SBSystemShellExternalDisplayPolicyAggregator *)v14 initWithDefaults:v15 displayIdentity:v16 policyDataSource:v18];
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

- (void)windowSceneDidDisconnect:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 windowSceneDidDisconnect:a3];
  [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeeded];
}

- (BOOL)_shouldAutoHostScene:(id)a3
{
  v3 = a3;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) != 0 || (v4 = *MEMORY[0x277D22AC8], objc_msgSend(v3, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), LOBYTE(v4) = objc_msgSend(v4, "isEqualToString:", v5), v5, (v4 & 1) == 0))
  {
    v7 = [v3 clientProcess];
    v6 = ![v7 isApplicationProcess] || objc_msgSend(v7, "isCurrentProcess");
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_doObserverCalloutWithBlock:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v3 _doObserverCalloutWithBlock:a3];
}

- (void)_reconnectSceneRemnant:(id)a3 forProcess:(id)a4 sceneManager:(id)a5
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v5 _reconnectSceneRemnant:a3 forProcess:a4 sceneManager:a5];
}

- (void)_scene:(id)a3 willUpdateSettings:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 _scene:a3 willUpdateSettings:a4];
}

- (void)_scene:(id)a3 willUpdateWithSettings:(id)a4 transitionContext:(id)a5
{
  v25 = a3;
  v7 = a4;
  v8 = SBApp;
  v9 = MEMORY[0x277CCACA8];
  v10 = [v25 identifier];
  v11 = [v9 stringWithFormat:@"Workspace will update scene with identifier %@", v10];
  [v8 updateMirroredDisplayOrientationWithLogMessage:v11];

  v12 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:v25];
  v13 = [v25 settings];
  v14 = [(SBSystemShellExternalDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v15 = [v14 containsObject:v12];

  if (v12 && v15)
  {
    v16 = [v13 isOccluded] ? objc_msgSend(v13, "isIgnoringOcclusions") : 1;
    v17 = [v7 isOccluded] ? objc_msgSend(v7, "isIgnoringOcclusions") ^ 1 : 0;
    if (((v16 | v17) & 1) == 0)
    {
      v18 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneHandle"];
    }
  }

  v19 = [v13 isForeground];
  v20 = [v7 isForeground];
  if (v12)
  {
    v21 = v20;
    v22 = [(SBSystemShellExternalDisplaySceneManager *)self externalApplicationSceneHandles];
    v23 = [v22 containsObject:v12];

    if (!(v21 & 1 | ((v19 & 1) == 0)) && v23 && ([v12 shouldAlwaysDisplayLiveContent] & 1) == 0)
    {
      v24 = [v25 prepareSnapshot];
      [v12 saveSuspendSnapshot:v24];
    }
  }
}

- (void)_scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  [(SBSceneManager *)&v4 _scene:a3 didUpdateClientSettings:a4];
}

- (void)sceneManager:(id)a3 didDestroyScene:(id)a4
{
  v9 = a4;
  v5 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:?];
  if (v5)
  {
    v6 = [v9 settings];
    v7 = [v6 isForeground];

    if (v7)
    {
      v8 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneDestroyed"];
    }
  }
}

- (BOOL)_shouldFenceTransitionForScene:(id)a3 updatedClientSettingsDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v7.receiver = self;
  v7.super_class = SBSystemShellExternalDisplaySceneManager;
  return [(SBSceneManager *)&v7 _shouldFenceTransitionForScene:a3 updatedClientSettingsDiff:a4 oldClientSettings:a5 transitionContext:a6];
}

- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5
{
  v5 = a4;
  v21 = a5;
  v8 = [v21 clientProcess];
  if ([v8 isApplicationProcess])
  {
    v9 = +[SBApplicationController sharedInstance];
    v10 = [v8 bundleIdentifier];
    v11 = [v9 applicationWithBundleIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:v21];
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

  if (a3 == 1)
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

  else if (!a3 && v11)
  {
    [v12 _setIdleTimerCoordinator:0];
    if (v5)
    {
      v18 = [(SBSystemShellExternalDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBAppDidEnterBackground"];
    }

    v19 = [SBApp audioRecordingManager];
    [v19 verifyBackgroundAudioActivityForApplication:v11];
  }
}

- (void)_noteDidCommitUpdateForScene:(id)a3
{
  v13 = a3;
  if ([(SBSystemShellExternalDisplaySceneManager *)self _isExternalForegroundScene:?])
  {
    v4 = [v13 clientProcess];
    if ([v4 isApplicationProcess])
    {
      v5 = +[SBApplicationController sharedInstance];
      v6 = [v4 bundleIdentifier];
      v7 = [v5 applicationWithBundleIdentifier:v6];
    }

    else
    {
      v7 = 0;
    }

    v9 = [SBApp appsRegisteredForVolumeEvents];
    v10 = [v9 containsObject:v7];

    if (v10)
    {
      [SBApp setAppRegisteredForVolumeEvents:v7 isActive:1];
    }

    v11 = [SBApp appsRegisteredForLockButtonEvents];
    v12 = [v11 containsObject:v7];

    if (v12)
    {
      [SBApp setAppRegisteredForLockButtonEvents:v7 isActive:1];
    }

    v8 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:v13];
    [v8 setHasMainSceneBeenForegroundAtLeastOnce:1];
  }

  else
  {
    v8 = 0;
  }

  [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeededForUpdateToScene:v13 withHandle:v8];
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

    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v2 = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return v2;
}

- (id)externalForegroundApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBSystemShellExternalDisplaySceneManager;
  v2 = [(SBSceneManager *)&v4 externalForegroundApplicationSceneHandles];

  return v2;
}

- (id)existingSceneHandleForScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForScene:a3];

  return v3;
}

- (id)existingSceneHandleForSceneIdentity:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForSceneIdentity:a3];

  return v3;
}

- (id)existingSceneHandleForPersistenceIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForPersistenceIdentifier:a3];

  return v3;
}

- (SBWindowScene)_windowScene
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBSceneManager *)self displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  return v5;
}

- (BOOL)isSuspendedUnderLock
{
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;

  return [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager isSuspendedUnderLock];
}

- (void)setSuspendedUnderLock:(BOOL)a3 alongsideWillChangeBlock:(id)a4 alongsideDidChangeBlock:(id)a5
{
  v6 = a3;
  v15 = a4;
  v8 = a5;
  BSDispatchQueueAssertMain();
  lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  if (!lazy_suspendedUnderLockManager)
  {
    v10 = [SBSuspendedUnderLockManager alloc];
    v11 = +[SBWorkspace mainWorkspace];
    v12 = [v11 eventQueue];
    v13 = [(SBSuspendedUnderLockManager *)v10 initWithDelegate:self eventQueue:v12];
    v14 = self->_lazy_suspendedUnderLockManager;
    self->_lazy_suspendedUnderLockManager = v13;

    lazy_suspendedUnderLockManager = self->_lazy_suspendedUnderLockManager;
  }

  [(SBSuspendedUnderLockManager *)lazy_suspendedUnderLockManager setSuspendedUnderLock:v6 alongsideWillChangeBlock:v15 alongsideDidChangeBlock:v8];
}

- (id)layoutStateManager
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBSceneManager *)self displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  v6 = [v5 layoutStateManager];

  return v6;
}

- (id)transientApplicationSceneHandlesForApplication:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 transientApplicationSceneHandlesForApplication:a3];

  return v3;
}

- (id)newSceneIdentifierForBundleIdentifier:(id)a3 supportsMultiwindow:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SBSystemShellExternalDisplaySceneManager;
  return [(SBSceneManager *)&v5 newSceneIdentifierForBundleIdentifier:a3 supportsMultiwindow:a4];
}

- (id)switcherController
{
  v2 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  v3 = [v2 switcherController];

  return v3;
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3
{
  v3 = [(SBSceneManager *)self displayIdentity];
  v4 = [v3 currentConfiguration];

  return v4;
}

- (id)suspendedUnderLockManager:(id)a3 sceneHandleForScene:(id)a4
{
  v6.receiver = self;
  v6.super_class = SBSystemShellExternalDisplaySceneManager;
  v4 = [(SBSceneManager *)&v6 existingSceneHandleForScene:a4];

  return v4;
}

- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventUnderLockForScene:(id)a4
{
  v4 = [a4 clientHandle];
  v5 = [v4 bundleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:@"com.apple.PosterBoard"];
  return v4;
}

- (id)suspendedUnderLockManagerVisibleScenes:(id)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  v6 = [v5 switcherController];
  v7 = [v6 layoutStateApplicationSceneHandles];
  [v4 unionSet:v7];

  return v4;
}

- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)a3
{
  v3 = objc_alloc_init(SBExternalDisplaySceneSnapshotRequestStrategy);

  return v3;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v4 = [v3 bs_mapNoNulls:&__block_literal_global_89_2];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = [v3 count];
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
  v3 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  v4 = [v3 switcherController];
  v5 = [v4 layoutState];
  v6 = [v5 unlockedEnvironmentMode];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v7 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  if ([v7 activationState])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
    v10 = [v9 switcherController];
    v11 = [v10 layoutStateApplicationSceneHandles];
    v8 = [v11 count] != 0;
  }

  return v8;
}

- (BOOL)wantsDisableIdleTimer
{
  v2 = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_isExternalForegroundScene:(id)a3
{
  v4 = [(SBSystemShellExternalDisplaySceneManager *)self existingSceneHandleForScene:a3];
  if (v4)
  {
    v5 = [(SBSystemShellExternalDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_proposeIdleTimerBehaviorForReason:(id)a3
{
  v4 = a3;
  v5 = +[SBWorkspace mainWorkspace];
  v6 = [(SBSystemShellExternalDisplaySceneManager *)self coordinatorRequestedIdleTimerBehavior:self];
  v7 = [v5 idleTimerProvider:self didProposeBehavior:v6 forReason:v4];

  return v7;
}

- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)a3 withHandle:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 clientProcess];
  v8 = [v15 uiClientSettings];
  v9 = [v8 idleTimerDisabled];
  if (v9)
  {
    v10 = v9;
    v11 = [v15 settings];
    if ([v11 isForeground] && !objc_msgSend(v6, "sceneFullyOccluded"))
    {
      v12 = 1;
    }

    else if ([v7 isApplicationProcess])
    {
      v12 = [v7 isBeingDebugged];
      if ((v10 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_13;
  }

  if ([v7 isApplicationProcess])
  {
    v12 = [v7 isBeingDebugged];
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
  v14 = [v13 isIdleTimerDisabled];

  if (v12 != v14)
  {
    [(SBSystemShellExternalDisplaySceneManager *)self _resetIdleTimerIfNeeded];
  }
}

- (void)_resetIdleTimerIfNeeded
{
  if ([(SBSystemShellExternalDisplaySceneManager *)self hasIdleTimerBehaviors])
  {
    v9 = [(SBSystemShellExternalDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
    v3 = [v9 count];
    v4 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    LOBYTE(v3) = (v3 == 0) ^ [v4 isIdleTimerDisabled];

    if ((v3 & 1) == 0)
    {
      v5 = [v9 bs_mapNoNulls:&__block_literal_global_98];
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
  v2 = [(SBSystemShellExternalDisplaySceneManager *)self _windowScene];
  v3 = [v2 switcherController];
  v4 = [v3 layoutStateApplicationSceneHandles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBSystemShellExternalDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke;
  v7[3] = &unk_2783BFC98;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

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