@interface SBMainDisplaySceneManager
- (BOOL)_handleAction:(id)action forScene:(id)scene;
- (BOOL)_isExternalForegroundScene:(id)scene;
- (BOOL)_isLockscreenHostingApp:(id)app;
- (BOOL)_shouldAutoHostScene:(id)scene;
- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (BOOL)hasIdleTimerBehaviors;
- (BOOL)isSuspendedUnderLock;
- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventSuspendUnderLockForScene:(id)scene settings:(id)settings;
- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventUnderLockForScene:(id)scene;
- (BOOL)wantsDisableIdleTimer;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBMainDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior;
- (id)_appSceneClientSettingsDiffInspector;
- (id)_externalClientSettingsDiffInspector;
- (id)_internalClientSettingsDiffInspector;
- (id)_proposeIdleTimerBehaviorForReason:(id)reason;
- (id)_sceneHandlesDisablingIdleTimer;
- (id)_windowScene;
- (id)acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier:(id)identifier reason:(id)reason;
- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior;
- (id)currentLayoutState;
- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier;
- (id)existingSceneHandleForScene:(id)scene;
- (id)existingSceneHandleForSceneIdentity:(id)identity;
- (id)externalApplicationSceneHandles;
- (id)externalForegroundApplicationSceneHandles;
- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)request;
- (id)layoutStateManager;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor;
- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration;
- (id)suspendedUnderLockManagerVisibleScenes:(id)scenes;
- (id)switcherController;
- (void)_keyboardWillChangeFrame:(id)frame;
- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene;
- (void)_noteDidCommitUpdateForScene:(id)scene;
- (void)_resetIdleTimerIfNeeded;
- (void)_resetIdleTimerIfNeededForUpdateToScene:(id)scene withHandle:(id)handle;
- (void)_scene:(id)_scene didUpdateClientSettings:(id)settings;
- (void)_scene:(id)_scene willUpdateSettings:(id)settings;
- (void)_scene:(id)_scene willUpdateWithSettings:(id)settings transitionContext:(id)context;
- (void)_updateLevelAndBackgroundSettingsForScene:(id)scene transitionContext:(id)context;
- (void)addActionHandler:(id)handler forScene:(id)scene;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)displayReferenceModeStatusDidChangeForDisplayWithConfiguration:(id)configuration newStatus:(int64_t)status;
- (void)removeActionHandler:(id)handler forScene:(id)scene;
- (void)removeObserver:(id)observer;
- (void)sceneManager:(id)manager didDestroyScene:(id)scene;
- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock;
- (void)windowSceneDidConnect:(id)connect;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBMainDisplaySceneManager

- (id)externalForegroundApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  externalForegroundApplicationSceneHandles = [(SBSceneManager *)&v4 externalForegroundApplicationSceneHandles];

  return externalForegroundApplicationSceneHandles;
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
  _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SBMainDisplaySceneManager__sceneHandlesDisablingIdleTimer__block_invoke;
  v7[3] = &unk_2783BFC98;
  v7[4] = &v8;
  [layoutStateApplicationSceneHandles enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)_windowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

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
  _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutState = [switcherController layoutState];
  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

  if ((unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0;
  }

  _windowScene2 = [(SBMainDisplaySceneManager *)self _windowScene];
  if ([_windowScene2 activationState])
  {
    v8 = 0;
  }

  else
  {
    _windowScene3 = [(SBMainDisplaySceneManager *)self _windowScene];
    switcherController2 = [_windowScene3 switcherController];
    layoutStateApplicationSceneHandles = [switcherController2 layoutStateApplicationSceneHandles];
    v8 = [layoutStateApplicationSceneHandles count] != 0;
  }

  return v8;
}

- (id)externalApplicationSceneHandles
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  externalApplicationSceneHandles = [(SBSceneManager *)&v4 externalApplicationSceneHandles];

  return externalApplicationSceneHandles;
}

- (id)layoutStateManager
{
  windowSceneManager = [SBApp windowSceneManager];
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  v5 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  layoutStateManager = [v5 layoutStateManager];

  return layoutStateManager;
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

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
    _sceneHandlesDisablingIdleTimer = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
    v4 = [_sceneHandlesDisablingIdleTimer count] != 0;
    v5 = +[SBDefaults localDefaults];
    captureButtonDefaults = [v5 captureButtonDefaults];
    captureButtonAssociatedAppBundleIdentifier = [captureButtonDefaults captureButtonAssociatedAppBundleIdentifier];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__SBMainDisplaySceneManager__resetIdleTimerIfNeeded__block_invoke;
    v16[3] = &unk_2783A9FA0;
    v8 = captureButtonAssociatedAppBundleIdentifier;
    v17 = v8;
    if ([_sceneHandlesDisablingIdleTimer bs_containsObjectPassingTest:v16])
    {
      accidentalActivationMitigationSessionCoordinator = [SBApp accidentalActivationMitigationSessionCoordinator];
      v4 = [accidentalActivationMitigationSessionCoordinator hasIdleTimerBehaviors] ^ 1;
    }

    v10 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    isIdleTimerDisabled = [v10 isIdleTimerDisabled];

    if (v4 != isIdleTimerDisabled)
    {
      v12 = [_sceneHandlesDisablingIdleTimer bs_mapNoNulls:&__block_literal_global_236];
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
  _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
  layoutStateProvider = [_windowScene layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  return layoutState;
}

- (SBMainDisplaySceneManager)initWithReference:(id)reference sceneIdentityProvider:(id)provider presentationBinder:(id)binder snapshotBehavior:(unint64_t)behavior
{
  referenceCopy = reference;
  providerCopy = provider;
  binderCopy = binder;
  v32.receiver = self;
  v32.super_class = SBMainDisplaySceneManager;
  v13 = [(SBSceneManager *)&v32 initWithReference:referenceCopy sceneIdentityProvider:providerCopy presentationBinder:binderCopy snapshotBehavior:behavior];
  v14 = v13;
  if (v13)
  {
    v13->_validInterfaceOrientation = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    v16 = [SBMainDisplayPolicyAggregator alloc];
    v17 = +[SBDefaults localDefaults];
    displayIdentity = [(SBSceneManager *)v14 displayIdentity];
    v19 = [(SBMainDisplayPolicyAggregator *)v16 initWithDefaults:v17 displayIdentity:displayIdentity];
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

    [providerCopy setDataSource:{v14, v29, 3221225472, __105__SBMainDisplaySceneManager_initWithReference_sceneIdentityProvider_presentationBinder_snapshotBehavior___block_invoke, &unk_2783AB940}];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_internalClientSettingsDiffInspector removeAllObservers];
  [(UIApplicationSceneClientSettingsDiffInspector *)self->_appClientSettingsDiffInspector removeAllObservers];
  [(FBSSceneClientSettingsDiffInspector *)self->_externalClientSettingsDiffInspector removeAllObservers];
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v4 dealloc];
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  v4.receiver = self;
  v4.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v4 windowSceneDidDisconnect:disconnect];
  [(SBMainDisplaySceneManager *)self _resetIdleTimerIfNeeded];
}

- (id)existingSceneHandleForScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForScene:scene];

  return v3;
}

- (id)existingSceneHandleForSceneIdentity:(id)identity
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForSceneIdentity:identity];

  return v3;
}

- (id)existingSceneHandleForPersistenceIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 existingSceneHandleForPersistenceIdentifier:identifier];

  return v3;
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v3 removeObserver:observer];
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

- (void)windowSceneDidConnect:(id)connect
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  connectCopy = connect;
  [(SBSceneManager *)&v5 windowSceneDidConnect:connectCopy];
  [(SBPhysicalButtonSceneOverrideManager *)&self->_physicalButtonSceneOverrideManager->super.isa windowSceneDidConnect:connectCopy];
}

- (id)acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x277CF0CE8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __95__SBMainDisplaySceneManager_acquireIgnoreSuspendedUnderLockAssertionForSceneIdentifier_reason___block_invoke;
  v16[3] = &unk_2783AEA48;
  objc_copyWeak(&v18, &location);
  v9 = identifierCopy;
  v17 = v9;
  v10 = [v8 initWithIdentifier:@"SBMainDisplaySceneManager.IgnoreSuspendedUnderLock" forReason:reasonCopy invalidationBlock:v16];
  weakObjectsHashTable = [(NSMutableDictionary *)self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions objectForKey:v9];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    sceneIdentifierToIgnoreSuspendedUnderLockAssertions = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
    if (!sceneIdentifierToIgnoreSuspendedUnderLockAssertions)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
      v14 = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
      self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions = v13;

      sceneIdentifierToIgnoreSuspendedUnderLockAssertions = self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions;
    }

    [(NSMutableDictionary *)sceneIdentifierToIgnoreSuspendedUnderLockAssertions setObject:weakObjectsHashTable forKey:v9];
  }

  [weakObjectsHashTable addObject:v10];

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

- (BOOL)_handleAction:(id)action forScene:(id)scene
{
  v45[2] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  sceneCopy = scene;
  v8 = [(SBMainDisplaySceneManager *)self _isExternalForegroundScene:sceneCopy];
  uIActionType = [actionCopy UIActionType];
  if (uIActionType > 14)
  {
    if (uIActionType == 15)
    {
      if (os_variant_has_internal_content())
      {
        v25 = actionCopy;
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

            defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
            [defaultCenter postNotificationName:*MEMORY[0x277CC1C00] object:0 userInfo:v29 deliverImmediately:1];
          }
        }
      }

      goto LABEL_31;
    }

    if (uIActionType == 43)
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
      sharedListener = [v17 sharedListener];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__SBMainDisplaySceneManager__handleAction_forScene___block_invoke;
      v37[3] = &unk_2783BBF98;
      v38 = actionCopy;
      [sharedListener handleAction:v38 completionHandler:v37];

      goto LABEL_31;
    }

LABEL_11:
    v36.receiver = self;
    v36.super_class = SBMainDisplaySceneManager;
    if ([(SBSceneManager *)&v36 _handleAction:actionCopy forScene:sceneCopy])
    {
LABEL_31:
      v24 = 1;
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (uIActionType != 1)
  {
    if (uIActionType == 7)
    {
      if (v8)
      {
        [actionCopy statusBarStyleOverride];
        v10 = STUIBackgroundActivityIdentifierForStyleOverride();
        v11 = +[SBApplicationController sharedInstance];
        clientHandle = [sceneCopy clientHandle];
        bundleIdentifier = [clientHandle bundleIdentifier];
        v14 = [v11 applicationWithBundleIdentifier:bundleIdentifier];
        identifier = [sceneCopy identifier];
        _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
        SBWorkspaceHandleStatusBarReturnActionFromApp(v14, identifier, v10, _windowScene);
      }

      goto LABEL_31;
    }

    goto LABEL_11;
  }

  clientProcess = [sceneCopy clientProcess];
  if ([clientProcess isCurrentProcess])
  {
    v21 = SBApp;
    v22 = [actionCopy url];
    handle = [clientProcess handle];
    v24 = 1;
    [v21 applicationOpenURL:v22 withApplication:0 animating:1 activationSettings:0 origin:handle notifyLSOnFailure:1 withResult:0];

    goto LABEL_32;
  }

LABEL_21:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    settings = [sceneCopy settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      underLock = [settings underLock];
    }

    else
    {
      underLock = 0;
    }

    if ((v8 | underLock))
    {
      identifier2 = [sceneCopy identifier];
      if ([identifier2 length])
      {
        switcherController = [(SBMainDisplaySceneManager *)self switcherController];
        [switcherController performKeyboardShortcutAction:19 forBundleIdentifier:0 orSceneIdentifier:identifier2];
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

- (void)_scene:(id)_scene willUpdateSettings:(id)settings
{
  _sceneCopy = _scene;
  settingsCopy = settings;
  v7 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:_sceneCopy];
  mutableSettings = [settingsCopy mutableSettings];

  if (v7)
  {
    [(SBSuspendedUnderLockManager *)self->_lazy_suspendedUnderLockManager interceptUpdateForScene:_sceneCopy withNewSettings:mutableSettings];
  }

  settings = [_sceneCopy settings];
  isForeground = [settings isForeground];
  v11 = isForeground ^ [mutableSettings isForeground];

  if (v11)
  {
    if (([mutableSettings isUISubclass] & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    settings = [_sceneCopy settings];
    if (([settings isForeground] & 1) == 0 || !objc_msgSend(mutableSettings, "isUISubclass"))
    {

      goto LABEL_12;
    }
  }

  displayIdentity = [(SBSceneManager *)self displayIdentity];
  currentConfiguration = [displayIdentity currentConfiguration];
  v14 = [SBDisplayReferenceModeMonitor canAddObserverForDisplayWithConfiguration:currentConfiguration];

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
    displayIdentity2 = [(SBSceneManager *)self displayIdentity];
    currentConfiguration2 = [displayIdentity2 currentConfiguration];
    [(SBDisplayReferenceModeMonitor *)v18 addReferenceModeStatusObserver:self forDisplayWithConfiguration:currentConfiguration2];

    displayReferenceModeMonitor = self->_displayReferenceModeMonitor;
  }

  displayIdentity3 = [(SBSceneManager *)self displayIdentity];
  currentConfiguration3 = [displayIdentity3 currentConfiguration];
  v23 = [(SBDisplayReferenceModeMonitor *)displayReferenceModeMonitor referenceModeStatusForDisplayWithConfiguration:currentConfiguration3];

  if (objc_opt_respondsToSelector())
  {
    [mutableSettings setScreenReferenceDisplayModeStatus:v23];
  }

LABEL_12:
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

  v12 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:_sceneCopy];
  settings = [_sceneCopy settings];
  externalForegroundApplicationSceneHandles = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v15 = [externalForegroundApplicationSceneHandles containsObject:v12];

  if (v12 && v15)
  {
    v16 = [settings isOccluded] ? objc_msgSend(settings, "isIgnoringOcclusions") : 1;
    v17 = [settingsCopy isOccluded] ? objc_msgSend(settingsCopy, "isIgnoringOcclusions") ^ 1 : 0;
    if (((v16 | v17) & 1) == 0)
    {
      v18 = [(SBMainDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneHandle"];
    }
  }

  isForeground = [settings isForeground];
  isForeground2 = [settingsCopy isForeground];
  if (v12)
  {
    v21 = isForeground2;
    externalApplicationSceneHandles = [(SBMainDisplaySceneManager *)self externalApplicationSceneHandles];
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
  _sceneCopy = _scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];
  daemonScenes = [(SBSceneManager *)self daemonScenes];
  if ([daemonScenes containsObject:_sceneCopy])
  {

    goto LABEL_9;
  }

  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    identifier = [_sceneCopy identifier];
    v13 = [identifier isEqualToString:*MEMORY[0x277D22AC8]];

    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_9:
    clientProcess = objc_alloc_init(SBClientSettingObserverContext);
    [(SBClientSettingObserverContext *)clientProcess setScene:_sceneCopy];
    v21 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:_sceneCopy];
    [(SBClientSettingObserverContext *)clientProcess setSceneHandle:v21];

    [(SBClientSettingObserverContext *)clientProcess setOldClientSettings:previousSettings];
    [(SBAttentionAwarenessClient *)clientProcess setAttentionAwarenessClient:transitionContext];
    _externalClientSettingsDiffInspector = [(SBMainDisplaySceneManager *)self _externalClientSettingsDiffInspector];
    [settingsDiff evaluateWithInspector:_externalClientSettingsDiffInspector context:clientProcess];
    goto LABEL_10;
  }

LABEL_5:
  clientProcess = [_sceneCopy clientProcess];
  if ([(SBClientSettingObserverContext *)clientProcess isCurrentProcess])
  {
    clientSettings = [_sceneCopy clientSettings];
    isUISubclass = [clientSettings isUISubclass];

    if (isUISubclass)
    {
      _externalClientSettingsDiffInspector = objc_alloc_init(SBInternalClientSettingObserverContext);
      [(SBClientSettingObserverContext *)_externalClientSettingsDiffInspector setScene:_sceneCopy];
      v18 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:_sceneCopy];
      [(SBClientSettingObserverContext *)_externalClientSettingsDiffInspector setSceneHandle:v18];

      [(SBClientSettingObserverContext *)_externalClientSettingsDiffInspector setOldClientSettings:previousSettings];
      uiClientSettings = [_sceneCopy uiClientSettings];
      [(SBAttentionAwarenessClient *)_externalClientSettingsDiffInspector setAttentionAwarenessClient:uiClientSettings];

      [(SBCameraHardwareButton *)_externalClientSettingsDiffInspector setPhysicalButtonOverrideObserver:transitionContext];
      _internalClientSettingsDiffInspector = [(SBMainDisplaySceneManager *)self _internalClientSettingsDiffInspector];
      [settingsDiff evaluateWithInspector:_internalClientSettingsDiffInspector context:_externalClientSettingsDiffInspector];

LABEL_10:
    }
  }

  v22.receiver = self;
  v22.super_class = SBMainDisplaySceneManager;
  [(SBSceneManager *)&v22 _scene:_sceneCopy didUpdateClientSettings:settingsCopy];
}

- (BOOL)_shouldFenceTransitionForScene:(id)scene updatedClientSettingsDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  if (![(SBMainDisplaySceneManager *)self _isExternalForegroundScene:sceneCopy])
  {
    goto LABEL_7;
  }

  settings = [sceneCopy settings];
  [settings deactivationReasons];
  if (!UIApplicationSceneDeactivationReasonMaskContainsReason())
  {

LABEL_7:
    v18.receiver = self;
    v18.super_class = SBMainDisplaySceneManager;
    v16 = [(SBSceneManager *)&v18 _shouldFenceTransitionForScene:sceneCopy updatedClientSettingsDiff:diffCopy oldClientSettings:settingsCopy transitionContext:contextCopy];
    goto LABEL_8;
  }

  v15 = SBLogWorkspace();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = sceneCopy;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "Not fencing scene transistion with scene: %{public}@ because it is deactivated for system gestures", buf, 0xCu);
  }

  v16 = 0;
LABEL_8:

  return v16;
}

- (void)_noteDidChangeToVisibility:(unint64_t)visibility previouslyExisted:(BOOL)existed forScene:(id)scene
{
  existedCopy = existed;
  sceneCopy = scene;
  clientProcess = [sceneCopy clientProcess];
  if ([clientProcess isApplicationProcess])
  {
    v10 = +[SBApplicationController sharedInstance];
    bundleIdentifier = [clientProcess bundleIdentifier];
    v12 = [v10 applicationWithBundleIdentifier:bundleIdentifier];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:sceneCopy];
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

  if (visibility == 1)
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

  else if (!visibility && v12)
  {
    [v13 _setIdleTimerCoordinator:0];
    if (existedCopy)
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

    audioRecordingManager = [SBApp audioRecordingManager];
    [audioRecordingManager verifyBackgroundAudioActivityForApplication:v12];
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

- (void)_noteDidCommitUpdateForScene:(id)scene
{
  sceneCopy = scene;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    identifier = [sceneCopy identifier];
    v5 = [identifier isEqualToString:*MEMORY[0x277D22AC8]];

    if (v5)
    {
      [(SBMainDisplaySceneManager *)self _updateLevelAndBackgroundSettingsForScene:sceneCopy transitionContext:0];
    }
  }

  if ([(SBMainDisplaySceneManager *)self _isExternalForegroundScene:sceneCopy])
  {
    clientProcess = [sceneCopy clientProcess];
    if ([clientProcess isApplicationProcess])
    {
      v7 = +[SBApplicationController sharedInstance];
      bundleIdentifier = [clientProcess bundleIdentifier];
      v9 = [v7 applicationWithBundleIdentifier:bundleIdentifier];
    }

    else
    {
      v9 = 0;
    }

    appsRegisteredForVolumeEvents = [SBApp appsRegisteredForVolumeEvents];
    v12 = [appsRegisteredForVolumeEvents containsObject:v9];

    if (v12)
    {
      [SBApp setAppRegisteredForVolumeEvents:v9 isActive:1];
    }

    appsRegisteredForLockButtonEvents = [SBApp appsRegisteredForLockButtonEvents];
    v14 = [appsRegisteredForLockButtonEvents containsObject:v9];

    if (v14)
    {
      [SBApp setAppRegisteredForLockButtonEvents:v9 isActive:1];
    }

    v10 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:sceneCopy];
    [v10 setHasMainSceneBeenForegroundAtLeastOnce:1];
  }

  else
  {
    v10 = 0;
  }

  [(SBMainDisplaySceneManager *)self _resetIdleTimerIfNeededForUpdateToScene:sceneCopy withHandle:v10];
  [(SBFaceContactExpectationManager *)self->_faceContactExpectationManager updateFaceContactExpectation];
}

- (void)sceneManager:(id)manager didDestroyScene:(id)scene
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  sceneCopy = scene;
  v8 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:sceneCopy];
  if (v8)
  {
    settings = [sceneCopy settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v11 = SBLogIdleTimer();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = sceneCopy;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[SBMainDisplaySceneManager sceneManager:didDestroyScene: %{public}@] - proposing IdleTimerBehavior.", buf, 0xCu);
      }

      v12 = [(SBMainDisplaySceneManager *)self _proposeIdleTimerBehaviorForReason:@"SBApplicationSceneDestroyed"];
    }
  }

  v13.receiver = self;
  v13.super_class = SBMainDisplaySceneManager;
  [(SBMainDisplaySceneManager *)&v13 sceneManager:managerCopy didDestroyScene:sceneCopy];
}

- (id)suspendedUnderLockManagerDisplayConfiguration:(id)configuration
{
  displayIdentity = [(SBSceneManager *)self displayIdentity];
  currentConfiguration = [displayIdentity currentConfiguration];

  return currentConfiguration;
}

- (id)suspendedUnderLockManagerVisibleScenes:(id)scenes
{
  v4 = [MEMORY[0x277CBEB58] set];
  _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];
  layoutStateApplicationSceneHandles = [switcherController layoutStateApplicationSceneHandles];
  [v4 unionSet:layoutStateApplicationSceneHandles];

  v8 = +[SBWorkspace mainWorkspace];
  pipCoordinator = [v8 pipCoordinator];
  hostedAppSceneHandles = [pipCoordinator hostedAppSceneHandles];
  [v4 addObjectsFromArray:hostedAppSceneHandles];

  return v4;
}

- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventUnderLockForScene:(id)scene
{
  clientHandle = [scene clientHandle];
  bundleIdentifier = [clientHandle bundleIdentifier];

  LOBYTE(clientHandle) = [bundleIdentifier isEqualToString:@"com.apple.PosterBoard"];
  return clientHandle;
}

- (BOOL)suspendedUnderLockManager:(id)manager shouldPreventSuspendUnderLockForScene:(id)scene settings:(id)settings
{
  sceneCopy = scene;
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
  isContinuityDisplay = [sb_displayIdentityForSceneManagers isContinuityDisplay];

  if (isContinuityDisplay)
  {
    v10 = 1;
  }

  else
  {
    identifier = [sceneCopy identifier];
    if (identifier)
    {
      v12 = [(NSMutableDictionary *)self->_sceneIdentifierToIgnoreSuspendedUnderLockAssertions objectForKey:identifier];
      v10 = [v12 count] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)fetchOrCreateApplicationSceneHandleForRequest:(id)request
{
  v5.receiver = self;
  v5.super_class = SBMainDisplaySceneManager;
  v3 = [(SBSceneManager *)&v5 fetchOrCreateApplicationSceneHandleForRequest:request];

  return v3;
}

- (id)scene:(id)scene handleActions:(id)actions
{
  v22 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v7 = [actions mutableCopy];
  v8 = [(NSMapTable *)self->_blsActionHandlersForScenes objectForKey:sceneCopy];
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

        v13 = [*(*(&v17 + 1) + 8 * i) respondToActions:v7 forFBScene:sceneCopy];
        [v7 intersectSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16.receiver = self;
  v16.super_class = SBMainDisplaySceneManager;
  v14 = [(SBSceneManager *)&v16 scene:sceneCopy handleActions:v7];

  return v14;
}

- (void)addActionHandler:(id)handler forScene:(id)scene
{
  handlerCopy = handler;
  sceneCopy = scene;
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  if (!blsActionHandlersForScenes)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v9 = self->_blsActionHandlersForScenes;
    self->_blsActionHandlersForScenes = weakToStrongObjectsMapTable;

    blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  }

  v10 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:sceneCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAA50]);
    [(NSMapTable *)self->_blsActionHandlersForScenes setObject:v10 forKey:sceneCopy];
  }

  [v10 addObject:handlerCopy];
}

- (void)removeActionHandler:(id)handler forScene:(id)scene
{
  blsActionHandlersForScenes = self->_blsActionHandlersForScenes;
  handlerCopy = handler;
  v7 = [(NSMapTable *)blsActionHandlersForScenes objectForKey:scene];
  [v7 removeObject:handlerCopy];
}

- (id)switcherController
{
  _windowScene = [(SBMainDisplaySceneManager *)self _windowScene];
  switcherController = [_windowScene switcherController];

  return switcherController;
}

- (BOOL)_isExternalForegroundScene:(id)scene
{
  v4 = [(SBMainDisplaySceneManager *)self existingSceneHandleForScene:scene];
  if (v4)
  {
    externalForegroundApplicationSceneHandles = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
    v6 = [externalForegroundApplicationSceneHandles containsObject:v4];
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

- (BOOL)_isLockscreenHostingApp:(id)app
{
  appCopy = app;
  v4 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v4 lockScreenEnvironment];
  applicationHoster = [lockScreenEnvironment applicationHoster];

  if ([v4 isLockScreenActive])
  {
    isHostingAnApp = [applicationHoster isHostingAnApp];
    v8 = isHostingAnApp;
    if (appCopy && isHostingAnApp)
    {
      hostedAppSceneHandle = [applicationHoster hostedAppSceneHandle];
      application = [hostedAppSceneHandle application];
      v8 = application == appCopy;
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

- (void)_keyboardWillChangeFrame:(id)frame
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v10 = @"SBKeyboardDockedKey";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isKeyboardDocked];
    v11[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"SBKeyboardDockedChangedNotification" object:0 userInfo:v9];
  }
}

- (void)_updateLevelAndBackgroundSettingsForScene:(id)scene transitionContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  contextCopy = context;
  clientSettings = [sceneCopy clientSettings];
  [clientSettings preferredLevel];
  v9 = v8;
  settings = [sceneCopy settings];
  isForeground = [settings isForeground];

  v12 = fmax(v9, 0.0);
  if (*MEMORY[0x277D0AC88] <= v12)
  {
    v13 = *MEMORY[0x277D0AC88];
  }

  else
  {
    v13 = v12;
  }

  settings2 = [sceneCopy settings];
  [settings2 level];
  if (v15 == v13)
  {
    settings3 = [sceneCopy settings];
    isForeground2 = [settings3 isForeground];

    if (isForeground == isForeground2)
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
    v24 = sceneCopy;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Scene %{public}@ is changing level to: %f", buf, 0x16u);
  }

  v19 = MEMORY[0x277D75940];
  animationFence = [contextCopy animationFence];
  [v19 _synchronizeDrawingWithFence:animationFence];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__SBMainDisplaySceneManager__updateLevelAndBackgroundSettingsForScene_transitionContext___block_invoke;
  v21[3] = &__block_descriptor_41_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v21[4] = v13;
  v22 = isForeground;
  [sceneCopy updateSettingsWithBlock:v21];
LABEL_11:
}

void __89__SBMainDisplaySceneManager__updateLevelAndBackgroundSettingsForScene_transitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevel:v3];
  [v4 setForeground:*(a1 + 40)];
}

- (id)_proposeIdleTimerBehaviorForReason:(id)reason
{
  reasonCopy = reason;
  v5 = [(SBMainDisplaySceneManager *)self coordinatorRequestedIdleTimerBehavior:self];
  idleTimerCoordinator = [(SBMainDisplaySceneManager *)self idleTimerCoordinator];
  v7 = [idleTimerCoordinator idleTimerProvider:self didProposeBehavior:v5 forReason:reasonCopy];

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

- (id)coordinatorRequestedIdleTimerBehavior:(id)behavior
{
  v16 = *MEMORY[0x277D85DE8];
  _sceneHandlesDisablingIdleTimer = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v4 = [_sceneHandlesDisablingIdleTimer bs_mapNoNulls:&__block_literal_global_245_0];
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
  _sceneHandlesDisablingIdleTimer = [(SBMainDisplaySceneManager *)self _sceneHandlesDisablingIdleTimer];
  v3 = [_sceneHandlesDisablingIdleTimer count] != 0;

  return v3;
}

- (void)displayReferenceModeStatusDidChangeForDisplayWithConfiguration:(id)configuration newStatus:(int64_t)status
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  externalForegroundApplicationSceneHandles = [(SBMainDisplaySceneManager *)self externalForegroundApplicationSceneHandles];
  v6 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(externalForegroundApplicationSceneHandles);
        }

        sceneIfExists = [*(*(&v12 + 1) + 8 * v9) sceneIfExists];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __102__SBMainDisplaySceneManager_displayReferenceModeStatusDidChangeForDisplayWithConfiguration_newStatus___block_invoke;
        v11[3] = &__block_descriptor_40_e63_v24__0__FBSMutableSceneSettings_8__FBSSceneTransitionContext_16l;
        v11[4] = status;
        [sceneIfExists performUpdate:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)sceneSnapshotRequestStrategyForSceneSnapshotRequestor:(id)requestor
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
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