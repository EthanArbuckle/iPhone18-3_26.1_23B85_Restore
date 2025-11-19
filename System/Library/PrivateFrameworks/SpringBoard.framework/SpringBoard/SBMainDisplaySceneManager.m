@interface SBMainDisplaySceneManager
- (BOOL)_handleAction:(id)a3 forScene:(id)a4;
- (BOOL)_isExternalForegroundScene:(id)a3;
- (BOOL)_isLockscreenHostingApp:(id)a3;
- (BOOL)_shouldAutoHostScene:(id)a3;
- (BOOL)_shouldFenceTransitionForScene:(id)a3 updatedClientSettingsDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)isSuspendedUnderLock;
- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventSuspendUnderLockForScene:(id)a4 settings:(id)a5;
- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventUnderLockForScene:(id)a4;
- (BOOL)wantsDisableIdleTimer;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBMainDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6;
- (id)_appSceneClientSettingsDiffInspector;
- (id)_externalClientSettingsDiffInspector;
- (id)_internalClientSettingsDiffInspector;
- (id)_proposeIdleTimerBehaviorForReason:(id)a3;
- (id)_sceneHandlesDisablingIdleTimer;
- (id)_windowScene;
- (id)acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier:(id)a3 reason:(id)a4;
- (id)coordinatorRequestedIdleTimerBehavior:(id)a3;
- (id)currentLayoutState;
- (id)existingSceneHandleForPersistenceIdentifier:(id)a3;
- (id)existingSceneHandleForScene:(id)a3;
- (id)existingSceneHandleForSceneIdentity:(id)a3;
- (id)externalApplicationSceneHandles;
- (id)externalForegroundApplicationSceneHandles;
- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)a3;
- (id)layoutStateManager;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)a3;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3;
- (id)suspendedUnderLockManagerVisibleScenes:(id)a3;
- (id)switcherController;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5;
- (void)_noteDidCommitUpdateForScene:(id)a3;
- (void)_resetIdleTimerIfNeeded;
- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)a3 withHandle:(id)a4;
- (void)_scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)_scene:(id)a3 willUpdateSettings:(id)a4;
- (void)_scene:(id)a3 willUpdateWithSettings:(id)a4 transitionContext:(id)a5;
- (void)_updateLevelAndBackgroundSettingsForScene:(id)a3 transitionContext:(id)a4;
- (void)addActionHandler:(id)a3 forScene:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)displayReferenceModeStatusDidChangeForDisplayWithConfiguration:(id)a3 newStatus:(int64_t)a4;
- (void)removeActionHandler:(id)a3 forScene:(id)a4;
- (void)removeObserver:(id)a3;
- (void)sceneManager:(id)a3 didDestroyScene:(id)a4;
- (void)setSuspendedUnderLock:(BOOL)a3 alongsideWillChangeBlock:(id)a4 alongsideDidChangeBlock:(id)a5;
- (void)windowSceneDidConnect:(id)a3;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBMainDisplaySceneManager

- (id)externalForegroundApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  v2 = [(SBSceneManager *)&v4 externalForegroundApplicationSceneHandles];

  return v2;
}

- (id)_externalClientSettingsDiffInspector
{
  externalClientSettingsDiffInspector = self->_externalClientSettingsDiffInspector;
  if (!externalClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D0ADB8]);
    v5 = self->_externalClientSettingsDiffInspector;
    self->_externalClientSettingsDiffInspector = v4;

    v6 = self->_externalClientSettingsDiffInspector;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_3;
    v18[3] = &unk_2783C0470;
    v18[4] = self;
    v8 = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke(v7, v18);
    [(FBSSceneClientSettingsDiffInspector *)v6 observePreferredLevelWithBlock:v8];

    v9 = self->_externalClientSettingsDiffInspector;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_4;
    v17[3] = &unk_2783C0470;
    v17[4] = self;
    v11 = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke(v10, v17);
    [(FBSSceneClientSettingsDiffInspector *)v9 observePreferredSceneHostIdentifierWithBlock:v11];

    v12 = self->_externalClientSettingsDiffInspector;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_5;
    v16[3] = &unk_2783C0470;
    v16[4] = self;
    v14 = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke(v13, v16);
    [(FBSSceneClientSettingsDiffInspector *)v12 observePreferredSceneHostIdentityWithBlock:v14];

    externalClientSettingsDiffInspector = self->_externalClientSettingsDiffInspector;
  }

  return externalClientSettingsDiffInspector;
}

- (id)_sceneHandlesDisablingIdleTimer
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__110;
  v12 = __Block_byref_object_dispose__110;
  v13 = 0;
  v2 = [(SBMainDisplaySceneManager *)self _windowScene];
  v3 = [v2 switcherController];
  v4 = [v3 layoutStateApplicationSceneHandles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SBMainDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke;
  v7[3] = &unk_2783BFC98;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_windowScene
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBSceneManager *)self displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  return v5;
}

void __60__SBMainDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke(uint64_t a1, void *a2)
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

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

- (BOOL)hasIdleTimerBehaviors
{
  v3 = [(SBMainDisplaySceneManager *)self _windowScene];
  v4 = [v3 switcherController];
  v5 = [v4 layoutState];
  v6 = [v5 unlockedEnvironmentMode];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  v7 = [(SBMainDisplaySceneManager *)self _windowScene];
  if ([v7 activationState])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SBMainDisplaySceneManager *)self _windowScene];
    v10 = [v9 switcherController];
    v11 = [v10 layoutStateApplicationSceneHandles];
    v8 = [v11 count] != 0;
  }

  return v8;
}

- (id)externalApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  v2 = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return v2;
}

- (id)layoutStateManager
{
  v3 = [SBApp windowSceneManager];
  v4 = [(SBSceneManager *)self displayIdentity];
  v5 = [v3 windowSceneForDisplayIdentity:v4];

  v6 = [v5 layoutStateManager];

  return v6;
}

- (id)_appSceneClientSettingsDiffInspector
{
  appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
  if (!appClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75160]);
    v5 = self->_appClientSettingsDiffInspector;
    self->_appClientSettingsDiffInspector = v4;

    v6 = self->_appClientSettingsDiffInspector;
    v8 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v7, &__block_literal_global_194);
    [(UIApplicationSceneClientSettingsDiffInspector *)v6 observeDefaultStatusBarStyleWithBlock:v8];

    v9 = self->_appClientSettingsDiffInspector;
    v11 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v10, &__block_literal_global_196_0);
    [(UIApplicationSceneClientSettingsDiffInspector *)v9 observeDefaultStatusBarHiddenWithBlock:v11];

    v12 = self->_appClientSettingsDiffInspector;
    v14 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v13, &__block_literal_global_198);
    [(UIApplicationSceneClientSettingsDiffInspector *)v12 observeDefaultPNGNameWithBlock:v14];

    v15 = self->_appClientSettingsDiffInspector;
    v17 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v16, &__block_literal_global_200_0);
    [(UIApplicationSceneClientSettingsDiffInspector *)v15 observeDefaultPNGExpirationTimeWithBlock:v17];

    objc_initWeak(&location, self);
    v18 = self->_appClientSettingsDiffInspector;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_7;
    v48[3] = &unk_2783BFC30;
    objc_copyWeak(&v49, &location);
    v20 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v19, v48);
    [(UIApplicationSceneClientSettingsDiffInspector *)v18 observeIdleTimerDisabledWithBlock:v20];

    v21 = self->_appClientSettingsDiffInspector;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_8;
    v47[3] = &unk_2783C0428;
    v47[4] = self;
    v23 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v22, v47);
    [(UIApplicationSceneClientSettingsDiffInspector *)v21 observeProximityDetectionModesWithBlock:v23];

    v24 = self->_appClientSettingsDiffInspector;
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_9;
    v46[3] = &unk_2783C0428;
    v46[4] = self;
    v26 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v25, v46);
    [(UIApplicationSceneClientSettingsDiffInspector *)v24 observeBackgroundStyleWithBlock:v26];

    v27 = self->_appClientSettingsDiffInspector;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_12;
    v45[3] = &unk_2783C0428;
    v45[4] = self;
    v29 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v28, v45);
    [(UIApplicationSceneClientSettingsDiffInspector *)v27 observeWindowOverlayInsetsWithBlock:v29];

    v30 = self->_appClientSettingsDiffInspector;
    v32 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v31, &__block_literal_global_205_0);
    [(UIApplicationSceneClientSettingsDiffInspector *)v30 observeReachabilitySupportedWithBlock:v32];

    v33 = self->_appClientSettingsDiffInspector;
    v35 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v34, &__block_literal_global_208_0);
    [(UIApplicationSceneClientSettingsDiffInspector *)v33 observeBrightnessLevelWithBlock:v35];

    v36 = [MEMORY[0x277D75418] currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if ((v37 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v38 = [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector observeActivationConditionsDataWithBlock:&__block_literal_global_210];
    }

    v39 = self->_appClientSettingsDiffInspector;
    v40 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v38, &__block_literal_global_215_0);
    [(UIApplicationSceneClientSettingsDiffInspector *)v39 observeCanvasTitleWithBlock:v40];

    v41 = self->_appClientSettingsDiffInspector;
    v43 = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(v42, &__block_literal_global_218);
    [(UIApplicationSceneClientSettingsDiffInspector *)v41 observePreferredPointerLockStateWithBlock:v43];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
    appClientSettingsDiffInspector = self->_appClientSettingsDiffInspector;
  }

  return appClientSettingsDiffInspector;
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 scene];
  v5 = [v3 sceneHandle];

  [WeakRetained _resetIdleTimerIfNeededForUpdateToScene:v4 withHandle:v5];
}

- (void)_resetIdleTimerIfNeeded
{
  if ([(SBMainDisplaySceneManager *)self hasIdleTimerBehaviors])
  {
    v3 = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
    v4 = [v3 count] != 0;
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 captureButtonDefaults];
    v7 = [v6 captureButtonAssociatedAppBundleIdentifier];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__SBMainDisplaySceneManager__resetIdleTimerIfNeeded__block_invoke;
    v16[3] = &unk_2783A9FA0;
    v8 = v7;
    v17 = v8;
    if ([v3 bs_containsObjectPassingTest:v16])
    {
      v9 = [SBApp accidentalActivationMitigationSessionCoordinator];
      v4 = [v9 hasIdleTimerBehaviors] ^ 1;
    }

    v10 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    v11 = [v10 isIdleTimerDisabled];

    if (v4 != v11)
    {
      v12 = [v3 bs_mapNoNulls:&__block_literal_global_236];
      v13 = [v12 componentsJoinedByString:{@", "}];

      v14 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"IdleTimerDisableChangedForSceneManager - client:", v13];
      [v14 resetIdleTimerForReason:v15];
    }
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_12(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [v28 updatedClientSettings];
  [v3 primaryWindowOverlayInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v28 app];

  v13 = v28;
  if (v12)
  {
    v14 = [v28 sceneHandle];
    v15 = [v14 sceneIdentifier];

    v16 = [*(a1 + 32) currentLayoutState];
    v17 = [v16 elementWithRole:1];
    v18 = [v17 uniqueIdentifier];
    v19 = [v15 isEqualToString:v18];

    if (v19)
    {
      v20 = 2;
    }

    else
    {
      v21 = [v16 elementWithRole:2];
      v22 = [v21 uniqueIdentifier];
      v23 = [v15 isEqualToString:v22];

      if (!v23)
      {
LABEL_7:

        v13 = v28;
        goto LABEL_8;
      }

      v20 = 3;
    }

    v24 = [SBApp windowSceneManager];
    v25 = [*(a1 + 32) displayIdentity];
    v26 = [v24 windowSceneForDisplayIdentity:v25];
    v27 = [v26 pictureInPictureManager];

    [v27 applyPictureInPictureInsets:v20 forSource:{v5, v7, v9, v11}];
    goto LABEL_7;
  }

LABEL_8:
}

- (id)_internalClientSettingsDiffInspector
{
  internalClientSettingsDiffInspector = self->_internalClientSettingsDiffInspector;
  if (!internalClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75160]);
    v5 = self->_internalClientSettingsDiffInspector;
    self->_internalClientSettingsDiffInspector = v4;

    v6 = self->_internalClientSettingsDiffInspector;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke_3;
    v14[3] = &unk_2783C0400;
    v14[4] = self;
    v8 = __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke(v7, v14);
    [(UIApplicationSceneClientSettingsDiffInspector *)v6 observeProximityDetectionModesWithBlock:v8];

    v9 = self->_internalClientSettingsDiffInspector;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke_4;
    v13[3] = &unk_2783C0400;
    v13[4] = self;
    v11 = __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke(v10, v13);
    [(UIApplicationSceneClientSettingsDiffInspector *)v9 observePhysicalButtonConfigurationsWithBlock:v11];

    internalClientSettingsDiffInspector = self->_internalClientSettingsDiffInspector;
  }

  return internalClientSettingsDiffInspector;
}

void __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_3(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[1];
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v2 _updateLevelAndBackgroundSettingsForScene:a2 transitionContext:v4];
}

void __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_5(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[1];
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v2 _updateLevelAndBackgroundSettingsForScene:a2 transitionContext:v4];
}

- (id)currentLayoutState
{
  v2 = [(SBMainDisplaySceneManager *)self _windowScene];
  v3 = [v2 layoutStateProvider];
  v4 = [v3 layoutState];

  return v4;
}

- (SBMainDisplaySceneManager)initWithReference:(id)a3 sceneIdentityProvider:(id)a4 presentationBinder:(id)a5 snapshotBehavior:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32.receiver = self;
  v32.super_class = SBMainDisplaySceneManager;
  v13 = [(SBSceneManager *)&v32 initWithReference:v10 sceneIdentityProvider:v11 presentationBinder:v12 snapshotBehavior:a6];
  v14 = v13;
  if (v13)
  {
    v13->_validInterfaceOrientation = 0;
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v14 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    v16 = [SBMainDisplayPolicyAggregator alloc];
    v17 = +[SBDefaults localDefaults];
    v18 = [(SBSceneManager *)v14 displayIdentity];
    v19 = [(SBMainDisplayPolicyAggregator *)v16 initWithDefaults:v17 displayIdentity:v18];
    policyAggregator = v14->_policyAggregator;
    v14->_policyAggregator = v19;

    v21 = [[SBFaceContactExpectationManager alloc] initWithSceneManager:v14];
    faceContactExpectationManager = v14->_faceContactExpectationManager;
    v14->_faceContactExpectationManager = v21;

    v23 = [[SBPhysicalButtonSceneOverrideManager alloc] initWithSceneManager:v14];
    physicalButtonSceneOverrideManager = v14->_physicalButtonSceneOverrideManager;
    v14->_physicalButtonSceneOverrideManager = v23;

    objc_initWeak(&location, v14);
    v25 = MEMORY[0x277D85CD0];
    v29 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v30, &location);
    v26 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v14->stateCaptureInvalidatable;
    v14->stateCaptureInvalidatable = v26;

    [v11 setDataSource:{v14, v29, 3221225472, __105__SBMainDisplaySceneManager_initWithReference_sceneIdentityProvider_presentationBinder_snapshotBehavior___block_invoke, &unk_2783AB940}];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v14;
}

id __105__SBMainDisplaySceneManager_initWithReference_sceneIdentityProvider_presentationBinder_snapshotBehavior___block_invoke(uint64_t a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v17[0] = @"externalApplicationSceneHandles";
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

    v18[0] = v5;
    v17[1] = @"externalForegroundApplicationSceneHandles";
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

    v18[1] = v8;
    v17[2] = @"currentLayoutState";
    v9 = [v2 currentLayoutState];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"none";
    }

    v18[2] = v11;
    v17[3] = @"hasIdleTimerBehaviors";
    if ([v2 hasIdleTimerBehaviors])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v18[3] = v12;
    v17[4] = @"suspendedUnderLock";
    if ([v2 isSuspendedUnderLock])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v18[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    v15 = [v14 description];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_internalClientSettingsDiffInspector removeAllObservers];
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector removeAllObservers];
  [(FBSSceneClientSettingsDiffInspector *)self->_externalClientSettingsDiffInspector removeAllObservers];
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v4 dealloc];
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v4 windowSceneDidDisconnect:a3];
  [(SBMainDisplaySceneManager *)self _resetIdleTimerIfNeeded];
}

- (id)existingSceneHandleForScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForScene:a3];

  return v3;
}

- (id)existingSceneHandleForSceneIdentity:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForSceneIdentity:a3];

  return v3;
}

- (id)existingSceneHandleForPersistenceIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForPersistenceIdentifier:a3];

  return v3;
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v3 removeObserver:a3];
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

- (void)windowSceneDidConnect:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v4 = a3;
  [(SBSceneManager *)&v5 windowSceneDidConnect:v4];
  [(SBPhysicalButtonSceneOverrideManager *)&self->_physicalButtonSceneOverrideManager->super.isa windowSceneDidConnect:v4];
}

- (id)acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x277CF0CE8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__SBMainDisplaySceneManager_acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier_reason___block_invoke;
  v16[3] = &unk_2783AEA48;
  objc_copyWeak(&v18, &location);
  v9 = v6;
  v17 = v9;
  v10 = [v8 initWithIdentifier:@"SBMainDisplaySceneManager.IgnoreSuspendedUnderLock" forReason:v7 invalidationBlock:v16];
  v11 = [(NSMutableDictionary *)self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions objectForKey:v9];
  if (!v11)
  {
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    sceneIdentifierToIgnoreSuspendedUnderLockAssertions = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
    if (!sceneIdentifierToIgnoreSuspendedUnderLockAssertions)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v14 = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
      self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions = v13;

      sceneIdentifierToIgnoreSuspendedUnderLockAssertions = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
    }

    [(NSMutableDictionary *)sceneIdentifierToIgnoreSuspendedUnderLockAssertions setObject:v11 forKey:v9];
  }

  [v11 addObject:v10];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v10;
}

void __95__SBMainDisplaySceneManager_acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier_reason___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[41] objectForKey:*(a1 + 32)];
    [v5 removeObject:v7];
    if (![v5 count])
    {
      [v4[41] removeObjectForKey:*(a1 + 32)];
      if (![v4[41] count])
      {
        v6 = v4[41];
        v4[41] = 0;
      }
    }
  }
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

- (BOOL)_handleAction:(id)a3 forScene:(id)a4
{
  v45[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBMainDisplaySceneManager *)self _isExternalForegroundScene:v7];
  v9 = [v6 UIActionType];
  if (v9 > 14)
  {
    if (v9 == 15)
    {
      if (os_variant_has_internal_content())
      {
        v25 = v6;
        if ([v25 shouldChangeOrientation])
        {
          v26 = [v25 orientationRequested] - 1;
          if (v26 <= 3)
          {
            v44[0] = *MEMORY[0x277CC1C08];
            v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v26 + 1)];
            v45[0] = v27;
            v44[1] = *MEMORY[0x277CC1BF8];
            v28 = [MEMORY[0x277CCABB0] numberWithBool:0];
            v45[1] = v28;
            v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

            v30 = [MEMORY[0x277CCA9A0] defaultCenter];
            [v30 postNotificationName:*MEMORY[0x277CC1C00] object:0 userInfo:v29 deliverImmediately:1];
          }
        }
      }

      goto LABEL_31;
    }

    if (v9 == 43)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x2050000000;
      v17 = getLNAppConnectionListenerClass_softClass;
      v43 = getLNAppConnectionListenerClass_softClass;
      if (!getLNAppConnectionListenerClass_softClass)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __getLNAppConnectionListenerClass_block_invoke;
        v39[3] = &unk_2783A9718;
        v39[4] = &v40;
        __getLNAppConnectionListenerClass_block_invoke(v39);
        v17 = v41[3];
      }

      v18 = v17;
      _Block_object_dispose(&v40, 8);
      v19 = [v17 sharedListener];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__SBMainDisplaySceneManager__handleAction_forScene___block_invoke;
      v37[3] = &unk_2783BBF98;
      v38 = v6;
      [v19 handleAction:v38 completionHandler:v37];

      goto LABEL_31;
    }

LABEL_11:
    v36.receiver = self;
    v36.super_class = SBMainDisplaySceneManager;
    if ([(SBSceneManager *)&v36 _handleAction:v6 forScene:v7])
    {
LABEL_31:
      v24 = 1;
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v9 != 1)
  {
    if (v9 == 7)
    {
      if (v8)
      {
        [v6 statusBarStyleOverride];
        v10 = STUIBackgroundActivityIdentifierForStyleOverride();
        v11 = +[SBApplicationController sharedInstance];
        v12 = [v7 clientHandle];
        v13 = [v12 bundleIdentifier];
        v14 = [v11 applicationWithBundleIdentifier:v13];
        v15 = [v7 identifier];
        v16 = [(SBMainDisplaySceneManager *)self _windowScene];
        SBWorkspaceHandleStatusBarReturnActionFromApp(v14, v15, v10, v16);
      }

      goto LABEL_31;
    }

    goto LABEL_11;
  }

  v20 = [v7 clientProcess];
  if ([v20 isCurrentProcess])
  {
    v21 = SBApp;
    v22 = [v6 url];
    v23 = [v20 handle];
    v24 = 1;
    [v21 applicationOpenURL:v22 withApplication:0 animating:1 activationSettings:0 origin:v23 notifyLSOnFailure:1 withResult:0];

    goto LABEL_32;
  }

LABEL_21:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v7 settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 underLock];
    }

    else
    {
      v32 = 0;
    }

    if ((v8 | v32))
    {
      v33 = [v7 identifier];
      if ([v33 length])
      {
        v34 = [(SBMainDisplaySceneManager *)self switcherController];
        [v34 performKeyboardShortcutAction:19 forBundleIdentifier:0 orSceneIdentifier:v33];
      }
    }

    goto LABEL_31;
  }

  v24 = 0;
LABEL_32:

  return v24;
}

void __52__SBMainDisplaySceneManager__handleAction_forScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    [*(a1 + 32) sendResponse:v3];
  }
}

- (void)_scene:(id)a3 willUpdateSettings:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v24];
  v8 = [v6 mutableSettings];

  if (v7)
  {
    [(SBSuspendedUnderLockManager *)self->_lazy_suspendedUnderLockManager interceptUpdateForScene:v24 withNewSettings:v8];
  }

  v9 = [v24 settings];
  v10 = [v9 isForeground];
  v11 = v10 ^ [v8 isForeground];

  if (v11)
  {
    if (([v8 isUISubclass] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = [v24 settings];
    if (([v9 isForeground] & 1) == 0 || !objc_msgSend(v8, "isUISubclass"))
    {

      goto LABEL_12;
    }
  }

  v12 = [(SBSceneManager *)self displayIdentity];
  v13 = [v12 currentConfiguration];
  v14 = [SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:v13];

  if (v11)
  {
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!v14)
    {
      goto LABEL_12;
    }
  }

  displayReferenceModeMonitor = self->_displayReferenceModeMonitor;
  if (!displayReferenceModeMonitor)
  {
    v16 = objc_alloc_init(SBDisplayReferenceModeMonitor);
    v17 = self->_displayReferenceModeMonitor;
    self->_displayReferenceModeMonitor = v16;

    v18 = self->_displayReferenceModeMonitor;
    v19 = [(SBSceneManager *)self displayIdentity];
    v20 = [v19 currentConfiguration];
    [(SBDisplayReferenceModeMonitor *)v18 addReferenceModeStatusObserver:self forDisplayWithConfiguration:v20];

    displayReferenceModeMonitor = self->_displayReferenceModeMonitor;
  }

  v21 = [(SBSceneManager *)self displayIdentity];
  v22 = [v21 currentConfiguration];
  v23 = [(SBDisplayReferenceModeMonitor *)displayReferenceModeMonitor referenceModeStatusForDisplayWithConfiguration:v22];

  if (objc_opt_respondsToSelector())
  {
    [v8 setScreenReferenceDisplayModeStatus:v23];
  }

LABEL_12:
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

  v12 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v25];
  v13 = [v25 settings];
  v14 = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v15 = [v14 containsObject:v12];

  if (v12 && v15)
  {
    v16 = [v13 isOccluded] ? objc_msgSend(v13, "isIgnoringOcclusions") : 1;
    v17 = [v7 isOccluded] ? objc_msgSend(v7, "isIgnoringOcclusions") ^ 1 : 0;
    if (((v16 | v17) & 1) == 0)
    {
      v18 = [(SBMainDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneHandle"];
    }
  }

  v19 = [v13 isForeground];
  v20 = [v7 isForeground];
  if (v12)
  {
    v21 = v20;
    v22 = [(SBMainDisplaySceneManager *)self externalApplicationSceneHandles];
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
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 previousSettings];
  v10 = [v7 transitionContext];
  v11 = [(SBSceneManager *)self daemonScenes];
  if ([v11 containsObject:v6])
  {

    goto LABEL_9;
  }

  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    v12 = [v6 identifier];
    v13 = [v12 isEqualToString:*MEMORY[0x277D22AC8]];

    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = objc_alloc_init(SBClientSettingObserverContext);
    [(SBClientSettingObserverContext *)v14 setScene:v6];
    v21 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v6];
    [(SBClientSettingObserverContext *)v14 setSceneHandle:v21];

    [(SBClientSettingObserverContext *)v14 setOldClientSettings:v9];
    [(SBAttentionAwarenessClient *)v14 setAttentionAwarenessClient:v10];
    v17 = [(SBMainDisplaySceneManager *)self _externalClientSettingsDiffInspector];
    [v8 evaluateWithInspector:v17 context:v14];
    goto LABEL_10;
  }

LABEL_5:
  v14 = [v6 clientProcess];
  if ([(SBClientSettingObserverContext *)v14 isCurrentProcess])
  {
    v15 = [v6 clientSettings];
    v16 = [v15 isUISubclass];

    if (v16)
    {
      v17 = objc_alloc_init(SBInternalClientSettingObserverContext);
      [(SBClientSettingObserverContext *)v17 setScene:v6];
      v18 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v6];
      [(SBClientSettingObserverContext *)v17 setSceneHandle:v18];

      [(SBClientSettingObserverContext *)v17 setOldClientSettings:v9];
      v19 = [v6 uiClientSettings];
      [(SBAttentionAwarenessClient *)v17 setAttentionAwarenessClient:v19];

      [(SBCameraHardwareButton *)v17 setPhysicalButtonOverrideObserver:v10];
      v20 = [(SBMainDisplaySceneManager *)self _internalClientSettingsDiffInspector];
      [v8 evaluateWithInspector:v20 context:v17];

LABEL_10:
    }
  }

  v22.receiver = self;
  v22.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v22 _scene:v6 didUpdateClientSettings:v7];
}

- (BOOL)_shouldFenceTransitionForScene:(id)a3 updatedClientSettingsDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(SBMainDisplaySceneManager *)self _isExternalForegroundScene:v10])
  {
    goto LABEL_7;
  }

  v14 = [v10 settings];
  [v14 deactivationReasons];
  if (!UIApplicationSceneDeactivationReasonMaskContainsReason())
  {

LABEL_7:
    v18.receiver = self;
    v18.super_class = SBMainDisplaySceneManager;
    v16 = [(SBSceneManager *)&v18 _shouldFenceTransitionForScene:v10 updatedClientSettingsDiff:v11 oldClientSettings:v12 transitionContext:v13];
    goto LABEL_8;
  }

  v15 = SBLogWorkspace();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "Not fencing scene transistion with scene: %{public}@ because it is deactivated for system gestures", buf, 0xCu);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)_noteDidChangeToVisibility:(unint64_t)a3 previouslyExisted:(BOOL)a4 forScene:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [v8 clientProcess];
  if ([v9 isApplicationProcess])
  {
    v10 = +[SBApplicationController sharedInstance];
    v11 = [v9 bundleIdentifier];
    v12 = [v10 applicationWithBundleIdentifier:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v8];
  v14 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] setWithObject:v13];
  }

  v17 = v16;

  v18 = +[SBBackgroundActivityAttributionManager sharedInstance];
  [v18 updateForegroundApplicationSceneHandles:v17 withOptions:-1 completion:0];

  if (v12)
  {
    [v12 setHasProminentlyIndicatedLocationUseWhileForeground:0];
  }

  if (a3 == 1)
  {
    if (v12)
    {
      if ([v12 hasRegisteredBackgroundActivityWithIdentifier:*MEMORY[0x277D6BC00]])
      {
        [SBApp nowLocatingAppDidEnterForeground:v12];
      }

      [v13 _setIdleTimerCoordinator:self];
      objc_initWeak(&location, self);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __83__SBMainDisplaySceneManager__noteDidChangeToVisibility_previouslyExisted_forScene___block_invoke_2;
      v20[3] = &unk_2783A8C68;
      objc_copyWeak(&v21, &location);
      dispatch_async(MEMORY[0x277D85CD0], v20);
      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  else if (!a3 && v12)
  {
    [v13 _setIdleTimerCoordinator:0];
    if (v5)
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __83__SBMainDisplaySceneManager__noteDidChangeToVisibility_previouslyExisted_forScene___block_invoke;
      block[3] = &unk_2783A8C68;
      objc_copyWeak(&v23, &location);
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    v19 = [SBApp audioRecordingManager];
    [v19 verifyBackgroundAudioActivityForApplication:v12];
  }
}

void __83__SBMainDisplaySceneManager__noteDidChangeToVisibility_previouslyExisted_forScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _proposeIdleTimerBehaviorForReason:@"SBAppDidEnterBackground"];
}

void __83__SBMainDisplaySceneManager__noteDidChangeToVisibility_previouslyExisted_forScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _proposeIdleTimerBehaviorForReason:@"SBAppDidEnterForeground"];
}

- (void)_noteDidCommitUpdateForScene:(id)a3
{
  v15 = a3;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    v4 = [v15 identifier];
    v5 = [v4 isEqualToString:*MEMORY[0x277D22AC8]];

    if (v5)
    {
      [(SBMainDisplaySceneManager *)self _updateLevelAndBackgroundSettingsForScene:v15 transitionContext:0];
    }
  }

  if ([(SBMainDisplaySceneManager *)self _isExternalForegroundScene:v15])
  {
    v6 = [v15 clientProcess];
    if ([v6 isApplicationProcess])
    {
      v7 = +[SBApplicationController sharedInstance];
      v8 = [v6 bundleIdentifier];
      v9 = [v7 applicationWithBundleIdentifier:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [SBApp appsRegisteredForVolumeEvents];
    v12 = [v11 containsObject:v9];

    if (v12)
    {
      [SBApp setAppRegisteredForVolumeEvents:v9 isActive:1];
    }

    v13 = [SBApp appsRegisteredForLockButtonEvents];
    v14 = [v13 containsObject:v9];

    if (v14)
    {
      [SBApp setAppRegisteredForLockButtonEvents:v9 isActive:1];
    }

    v10 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v15];
    [v10 setHasMainSceneBeenForegroundAtLeastOnce:1];
  }

  else
  {
    v10 = 0;
  }

  [(SBMainDisplaySceneManager *)self _resetIdleTimerIfNeededForUpdateToScene:v15 withHandle:v10];
  [(SBFaceContactExpectationManager *)self->_faceContactExpectationManager updateFaceContactExpectation];
}

- (void)sceneManager:(id)a3 didDestroyScene:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:v7];
  if (v8)
  {
    v9 = [v7 settings];
    v10 = [v9 isForeground];

    if (v10)
    {
      v11 = SBLogIdleTimer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBMainDisplaySceneManager sceneManager:didDestroyScene: %{public}@] - proposing IdleTimerBehavior.", buf, 0xCu);
      }

      v12 = [(SBMainDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneDestroyed"];
    }
  }

  v13.receiver = self;
  v13.super_class = SBMainDisplaySceneManager;
  [(SBMainDisplaySceneManager *)&v13 sceneManager:v6 didDestroyScene:v7];
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)a3
{
  v3 = [(SBSceneManager *)self displayIdentity];
  v4 = [v3 currentConfiguration];

  return v4;
}

- (id)suspendedUnderLockManagerVisibleScenes:(id)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(SBMainDisplaySceneManager *)self _windowScene];
  v6 = [v5 switcherController];
  v7 = [v6 layoutStateApplicationSceneHandles];
  [v4 unionSet:v7];

  v8 = +[SBWorkspace mainWorkspace];
  v9 = [v8 pipCoordinator];
  v10 = [v9 hostedAppSceneHandles];
  [v4 addObjectsFromArray:v10];

  return v4;
}

- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventUnderLockForScene:(id)a4
{
  v4 = [a4 clientHandle];
  v5 = [v4 bundleIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:@"com.apple.PosterBoard"];
  return v4;
}

- (BOOL)suspendedUnderLockManager:(id)a3 shouldPreventSuspendUnderLockForScene:(id)a4 settings:(id)a5
{
  v7 = a4;
  v8 = [a5 sb_displayIdentityForSceneManagers];
  v9 = [v8 isContinuityDisplay];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v7 identifier];
    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions objectForKey:v11];
      v10 = [v12 count] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 fetchOrCreateApplicationSceneHandleForRequest:a3];

  return v3;
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [(NSMapTable *)self->_blsActionHandlersForScenes objectForKey:v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) respondToActions:v7 forFBScene:v6];
        [v7 intersectSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16.receiver = self;
  v16.super_class = SBMainDisplaySceneManager;
  v14 = [(SBSceneManager *)&v16 scene:v6 handleActions:v7];

  return v14;
}

- (void)addActionHandler:(id)a3 forScene:(id)a4
{
  v11 = a3;
  v6 = a4;
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  if (!blsActionHandlersForScenes)
  {
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_blsActionHandlersForScenes;
    self->_blsActionHandlersForScenes = v8;

    blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  }

  v10 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    [(NSMapTable *)self->_blsActionHandlersForScenes setObject:v10 forKey:v6];
  }

  [v10 addObject:v11];
}

- (void)removeActionHandler:(id)a3 forScene:(id)a4
{
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  v6 = a3;
  v7 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:a4];
  [v7 removeObject:v6];
}

- (id)switcherController
{
  v2 = [(SBMainDisplaySceneManager *)self _windowScene];
  v3 = [v2 switcherController];

  return v3;
}

- (BOOL)_isExternalForegroundScene:(id)a3
{
  v4 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:a3];
  if (v4)
  {
    v5 = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke_2;
  v6[3] = &unk_2783B6C98;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

id __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_2;
  v6[3] = &unk_2783B6C98;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 app];
  v4 = [v3 _dataStore];
  v5 = [v2 scene];
  v6 = [v5 identifier];
  v10 = [v4 sceneStoreForIdentifier:v6 creatingIfNecessary:1];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v2 updatedClientSettings];

  v9 = [v7 numberWithInteger:{objc_msgSend(v8, "defaultStatusBarStyle")}];
  [v10 setObject:v9 forKey:@"statusBarStyle"];
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 app];
  v4 = [v3 _dataStore];
  v5 = [v2 scene];
  v6 = [v5 identifier];
  v10 = [v4 sceneStoreForIdentifier:v6 creatingIfNecessary:1];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v2 updatedClientSettings];

  v9 = [v7 numberWithBool:{objc_msgSend(v8, "defaultStatusBarHidden")}];
  [v10 setObject:v9 forKey:@"statusBarHidden"];
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_5(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [v9 updatedClientSettings];
  v3 = [v2 defaultPNGName];

  if (v3)
  {
    v4 = [v9 app];
    v5 = [v4 _dataStore];
    v6 = [v9 scene];
    v7 = [v6 identifier];
    v8 = [v5 sceneStoreForIdentifier:v7 creatingIfNecessary:1];

    [v8 setObject:v3 forKey:@"defaultPNGName"];
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_6(uint64_t a1, void *a2)
{
  v11 = a2;
  v2 = [v11 updatedClientSettings];
  [v2 defaultPNGExpirationTime];
  v4 = v3;

  if (v4 - CFAbsoluteTimeGetCurrent() < 3153600000.0)
  {
    v5 = [v11 app];
    v6 = [v5 _dataStore];
    v7 = [v11 scene];
    v8 = [v7 identifier];
    v9 = [v6 sceneStoreForIdentifier:v8 creatingIfNecessary:1];

    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    [v9 setObject:v10 forKey:@"expirationAbsoluteTime"];
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 oldClientSettings];
  v5 = [v4 proximityDetectionModes];
  v6 = [v3 updatedClientSettings];

  LOBYTE(v3) = [v6 proximityDetectionModes] ^ v5;
  if ((v3 & 0xC) != 0)
  {
    v7 = *(*(a1 + 32) + 304);

    [v7 updateFaceContactExpectation];
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v4 = MEMORY[0x277CF0D38];
  v5 = [v3 transition];
  v6 = [v5 animationSettings];
  v7 = [v4 factoryWithSettings:v6];

  v8 = MEMORY[0x277CF0D38];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_10;
  v17[3] = &unk_2783A9300;
  v9 = v3;
  v18 = v9;
  v19 = &v20;
  [v8 animateWithFactory:v7 actions:v17];
  if (*(v21 + 24) == 1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10 = [*(a1 + 32) externalForegroundApplicationSceneHandles];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_11;
    v12[3] = &unk_2783BFC98;
    v12[4] = &v13;
    [v10 enumerateObjectsUsingBlock:v12];

    if (*(v14 + 24) == 1)
    {
      v11 = +[SBWallpaperController sharedInstance];
      [v11 activateOrientationSource:1];
    }

    else
    {
      v11 = +[SBWallpaperController sharedInstance];
      [v11 deactivateOrientationSource:1];
    }

    _Block_object_dispose(&v13, 8);
  }

  _Block_object_dispose(&v20, 8);
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) app];
  v3 = [v2 info];
  v4 = [*(a1 + 32) oldClientSettings];
  v5 = [v3 backgroundStyleForRequestedBackgroundStyle:{objc_msgSend(v4, "backgroundStyle")}];

  v6 = [*(a1 + 32) app];
  v7 = [v6 info];
  v8 = [*(a1 + 32) updatedClientSettings];
  v9 = [v7 backgroundStyleForRequestedBackgroundStyle:{objc_msgSend(v8, "backgroundStyle")}];

  *(*(*(a1 + 40) + 8) + 24) = v5 != v9;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v10 = [*(a1 + 32) sceneHandle];
    [v10 _noteMainSceneBackgroundStyleChanged];
  }
}

uint64_t __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_11(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isTranslucent];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 updatedClientSettings];
  v3 = [v2 isReachabilitySupported];

  if ((v3 & 1) == 0)
  {
    v4 = +[SBReachabilityManager sharedInstance];
    [v4 deactivateReachability];
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_14(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 scene];
  v3 = [v2 settings];
  v4 = [v3 isForeground];

  if (v4)
  {
    v5 = [v6 updatedClientSettings];
    [v5 brightnessLevel];

    BKSDisplayBrightnessSetWithImplicitTransaction();
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 updatedClientSettings];
  v4 = [v3 activationConditionsData];

  v5 = [v2 app];
  v6 = [v5 _dataStore];
  v7 = [v2 scene];
  v8 = [v7 identifier];
  v9 = [v6 sceneStoreForIdentifier:v8 creatingIfNecessary:1];

  if (v4)
  {
    v19 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v19];
    v11 = v19;
    if (v10)
    {
      v17 = 0;
      v18 = 0;
      v12 = [v10 _validateCompileTimeIssues:&v18 runTimeIssues:&v17];
      v13 = v18;
      v14 = v17;
      if (v12)
      {
        [v9 setArchivedObject:v10 forKey:@"activationConditions"];
      }

      else
      {
        v15 = SBLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_15_cold_1(v13, v14, v15);
        }
      }
    }

    else
    {
      v13 = SBLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_15_cold_2(v11, v13);
      }
    }
  }

  else
  {
    [v9 removeObjectForKey:@"activationConditions"];
  }

  v16 = [v2 sceneHandle];
  [v16 _noteActivationConditionsChanged];
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_213(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = [v10 updatedClientSettings];
  v3 = [v2 canvasTitle];

  v4 = [v10 app];
  v5 = [v4 _dataStore];
  v6 = [v10 scene];
  v7 = [v6 identifier];
  v8 = [v5 sceneStoreForIdentifier:v7 creatingIfNecessary:1];

  if (v3)
  {
    [v8 setObject:v3 forKey:@"canvasTitle"];
  }

  else
  {
    [v8 removeObjectForKey:@"canvasTitle"];
  }

  v9 = [v10 sceneHandle];
  [v9 _noteSceneTitleChanged];
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_2_216(uint64_t a1, void *a2)
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

- (BOOL)_isLockscreenHostingApp:(id)a3
{
  v3 = a3;
  v4 = +[SBLockScreenManager sharedInstance];
  v5 = [v4 lockScreenEnvironment];
  v6 = [v5 applicationHoster];

  if ([v4 isLockScreenActive])
  {
    v7 = [v6 isHostingAnApp];
    v8 = v7;
    if (v3 && v7)
    {
      v9 = [v6 hostedAppSceneHandle];
      v10 = [v9 application];
      v8 = v10 == v3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_2;
  v6[3] = &unk_2783B6C98;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

void __65__SBMainDisplaySceneManager__externalClientSettingsDiffInspector__block_invoke_4(uint64_t a1, id *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = a2;
    a2 = a2[1];
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v2 _updateLevelAndBackgroundSettingsForScene:a2 transitionContext:v4];
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = NSClassFromString(&cfstr_Uikeyboardarbi.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)v4 performSelector:sel_sharedArbiterManager];
    v6 = [v5 remoteKeyboardUndocked] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (self->_isKeyboardDocked != v6)
  {
    self->_isKeyboardDocked = v6;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = @"SBKeyboardDockedKey";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isKeyboardDocked];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 postNotificationName:@"SBKeyboardDockedChangedNotification" object:0 userInfo:v9];
  }
}

- (void)_updateLevelAndBackgroundSettingsForScene:(id)a3 transitionContext:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 clientSettings];
  [v7 preferredLevel];
  v9 = v8;
  v10 = [v5 settings];
  v11 = [v10 isForeground];

  v12 = fmax(v9, 0.0);
  if (*MEMORY[0x277D0AC88] <= v12)
  {
    v13 = *MEMORY[0x277D0AC88];
  }

  else
  {
    v13 = v12;
  }

  v14 = [v5 settings];
  [v14 level];
  if (v15 == v13)
  {
    v16 = [v5 settings];
    v17 = [v16 isForeground];

    if (v11 == v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v18 = SBLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v24 = v5;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Scene %{public}@ is changing level to: %f", buf, 0x16u);
  }

  v19 = MEMORY[0x277D75940];
  v20 = [v6 animationFence];
  [v19 _synchronizeDrawingWithFence:v20];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__SBMainDisplaySceneManager__updateLevelAndBackgroundSettingsForScene_transitionContext___block_invoke;
  v21[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v21[4] = v13;
  v22 = v11;
  [v5 updateSettingsWithBlock:v21];
LABEL_11:
}

void __89__SBMainDisplaySceneManager__updateLevelAndBackgroundSettingsForScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevel:v3];
  [v4 setForeground:*(a1 + 40)];
}

- (id)_proposeIdleTimerBehaviorForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBMainDisplaySceneManager *)self coordinatorRequestedIdleTimerBehavior:self];
  v6 = [(SBMainDisplaySceneManager *)self idleTimerCoordinator];
  v7 = [v6 idleTimerProvider:self didProposeBehavior:v5 forReason:v4];

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
    [(SBMainDisplaySceneManager *)self _resetIdleTimerIfNeeded];
  }
}

uint64_t __52__SBMainDisplaySceneManager__resetIdleTimerIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 application];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

id __52__SBMainDisplaySceneManager__resetIdleTimerIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 application];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)coordinatorRequestedIdleTimerBehavior:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v4 = [v3 bs_mapNoNulls:&__block_literal_global_245_0];
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
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBMainDisplaySceneManager requested idle timer behavior disabled? %{BOOL}u%s%{public}@", v11, 0x1Cu);
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

- (BOOL)wantsDisableIdleTimer
{
  v2 = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)displayReferenceModeStatusDidChangeForDisplayWithConfiguration:(id)a3 newStatus:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) sceneIfExists];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __102__SBMainDisplaySceneManager_displayReferenceModeStatusDidChangeForDisplayWithConfiguration_newStatus___block_invoke;
        v11[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
        v11[4] = a4;
        [v10 performUpdate:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __102__SBMainDisplaySceneManager_displayReferenceModeStatusDidChangeForDisplayWithConfiguration_newStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUISubclass] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 setScreenReferenceDisplayModeStatus:*(a1 + 32)];
  }
}

- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)a3
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
LABEL_3:
      v3 = off_27839FC68;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      goto LABEL_3;
    }
  }

  v3 = off_2783A1240;
LABEL_6:
  v6 = objc_alloc_init(*v3);

  return v6;
}

void __65__SBMainDisplaySceneManager__internalClientSettingsDiffInspector__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 proximityDetectionModes];
  v7 = v9;
  if (v9)
  {
    v7 = v9[4];
  }

  v8 = [v7 proximityDetectionModes] ^ v6;

  if ((v8 & 0xC) != 0)
  {
    [*(*(a1 + 32) + 304) updateFaceContactExpectation];
  }
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_15_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a2 = a1;
  }

  v4 = 138543362;
  v5 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "activation conditions from scene settings did not validate, %{public}@", &v4, 0xCu);
}

void __65__SBMainDisplaySceneManager__appSceneClientSettingsDiffInspector__block_invoke_15_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "error unarchiving activation conditions from scene settings, %{public}@", &v4, 0xCu);
}

@end