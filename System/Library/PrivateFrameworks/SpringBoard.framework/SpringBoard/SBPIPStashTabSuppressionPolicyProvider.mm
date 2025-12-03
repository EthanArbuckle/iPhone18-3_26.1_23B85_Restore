@interface SBPIPStashTabSuppressionPolicyProvider
- (SBBannerManager)bannerManager;
- (SBDeviceApplicationSceneHandle)sceneHandleToObserve;
- (SBPIPStashTabSuppressionPolicyProvider)initWithObserver:(id)observer bannerManager:(id)manager windowScene:(id)scene pipManager:(id)pipManager;
- (SBPIPStashTabSuppressionPolicyProviderObserver)observer;
- (SBSwitcherController)switcherController;
- (SBWindowScene)sbWindowScene;
- (SBWindowScenePIPManager)pipManager;
- (void)_reevaluatePolicy;
- (void)_resetReevaluatePolicyTimer;
- (void)_startTrackingPresentable:(id)presentable;
- (void)_stopTrackingPresentable:(id)presentable;
- (void)_tapRecognized:(id)recognized;
- (void)_updateSceneHandleToObserveForLayoutState:(id)state;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation;
- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)dealloc;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)setSceneHandleToObserve:(id)observe;
- (void)setStashTabCanBeHidden:(BOOL)hidden;
@end

@implementation SBPIPStashTabSuppressionPolicyProvider

- (SBPIPStashTabSuppressionPolicyProvider)initWithObserver:(id)observer bannerManager:(id)manager windowScene:(id)scene pipManager:(id)pipManager
{
  observerCopy = observer;
  managerCopy = manager;
  sceneCopy = scene;
  pipManagerCopy = pipManager;
  v20.receiver = self;
  v20.super_class = SBPIPStashTabSuppressionPolicyProvider;
  v15 = [(SBPIPStashTabSuppressionPolicyProvider *)&v20 init];
  if (v15)
  {
    if (sceneCopy)
    {
      if (pipManagerCopy)
      {
LABEL_4:
        objc_storeWeak(&v15->_observer, observerCopy);
        objc_storeWeak(&v15->_bannerManager, managerCopy);
        objc_storeWeak(&v15->_sbWindowScene, sceneCopy);
        objc_storeWeak(&v15->_pipManager, pipManagerCopy);
        [managerCopy addTransitionObserver:v15];
        layoutStateTransitionCoordinator = [sceneCopy layoutStateTransitionCoordinator];
        [layoutStateTransitionCoordinator addObserver:v15];

        [(SBPIPStashTabSuppressionPolicyProvider *)v15 _resetReevaluatePolicyTimer];
        layoutStateProvider = [sceneCopy layoutStateProvider];
        layoutState = [layoutStateProvider layoutState];

        [(SBPIPStashTabSuppressionPolicyProvider *)v15 _updateSceneHandleToObserveForLayoutState:layoutState];
        goto LABEL_5;
      }
    }

    else
    {
      [SBPIPStashTabSuppressionPolicyProvider initWithObserver:a2 bannerManager:v15 windowScene:? pipManager:?];
      if (pipManagerCopy)
      {
        goto LABEL_4;
      }
    }

    [SBPIPStashTabSuppressionPolicyProvider initWithObserver:a2 bannerManager:v15 windowScene:? pipManager:?];
    goto LABEL_4;
  }

LABEL_5:

  return v15;
}

- (void)invalidate
{
  objc_storeWeak(&self->_observer, 0);
  self->_invalidated = 1;
  [(NSTimer *)self->_reevaluatePolicyTimer invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_bannerManager);
  [WeakRetained removeTransitionObserver:self];

  v4 = objc_loadWeakRetained(&self->_sceneHandleToObserve);
  [v4 removeObserver:self];

  v5 = objc_loadWeakRetained(&self->_sbWindowScene);
  layoutStateTransitionCoordinator = [v5 layoutStateTransitionCoordinator];
  [layoutStateTransitionCoordinator removeObserver:self];

  [(SBPIPStashTabSuppressionPolicyProvider *)self setSceneHandleToObserve:0];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBPIPStashTabSuppressionPolicyProvider.m" lineNumber:78 description:{@"Released %@ without invalidating", a2}];
}

- (void)_reevaluatePolicy
{
  if (self->_invalidated || [(NSMutableSet *)self->_requestIdentifiersForPresentedExpanseBanners count]|| self->_reevaluatePolicyTimer)
  {
    homeIndicatorAutoHidden = 0;
  }

  else
  {
    sceneHandleToObserve = [(SBPIPStashTabSuppressionPolicyProvider *)self sceneHandleToObserve];
    sceneIfExists = [sceneHandleToObserve sceneIfExists];

    clientSettings = [sceneIfExists clientSettings];
    v7 = objc_opt_class();
    v8 = clientSettings;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    homeIndicatorAutoHidden = [v10 homeIndicatorAutoHidden];
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:homeIndicatorAutoHidden];
}

- (void)_updateSceneHandleToObserveForLayoutState:(id)state
{
  stateCopy = state;
  if ([stateCopy unlockedEnvironmentMode] == 3 && (objc_msgSend(stateCopy, "elements"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 == 1))
  {
    v6 = [stateCopy elementWithRole:1];
    entityGenerator = [v6 entityGenerator];
    v8 = entityGenerator[2]();

    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    sceneHandle = [v13 sceneHandle];
  }

  else
  {
    sceneHandle = 0;
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self setSceneHandleToObserve:sceneHandle];
}

- (void)_startTrackingPresentable:(id)presentable
{
  presentableCopy = presentable;
  requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  v9 = presentableCopy;
  if (!requestIdentifiersForPresentedExpanseBanners)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    v7 = self->_requestIdentifiersForPresentedExpanseBanners;
    self->_requestIdentifiersForPresentedExpanseBanners = v6;

    presentableCopy = v9;
    requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  }

  requestIdentifier = [presentableCopy requestIdentifier];
  [(NSMutableSet *)requestIdentifiersForPresentedExpanseBanners addObject:requestIdentifier];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)_stopTrackingPresentable:(id)presentable
{
  requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  requestIdentifier = [presentable requestIdentifier];
  [(NSMutableSet *)requestIdentifiersForPresentedExpanseBanners removeObject:requestIdentifier];

  if (![(NSMutableSet *)self->_requestIdentifiersForPresentedExpanseBanners count])
  {
    v6 = self->_requestIdentifiersForPresentedExpanseBanners;
    self->_requestIdentifiersForPresentedExpanseBanners = 0;
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)setSceneHandleToObserve:(id)observe
{
  obj = observe;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserve);
  if (WeakRetained != obj)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_sceneHandleToObserve, obj);
    [obj addObserver:self];
    [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
  }
}

- (void)setStashTabCanBeHidden:(BOOL)hidden
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_stashTabCanBeHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_stashTabCanBeHidden = hidden;
    WeakRetained = objc_loadWeakRetained(&self->_pipManager);
    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = hiddenCopy;
      v9 = 2112;
      v10 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBPIPStashTabSuppressionPolicyProvider] setStashTabCanBeHidden %{BOOL}u %@", v8, 0x12u);
    }

    v7 = objc_loadWeakRetained(&self->_observer);
    [v7 stashTabVisibilityPolicyProviderDidUpdatePolicy:self];

    if (hiddenCopy)
    {
      [WeakRetained addStashTabSuppressionTarget:self action:sel__tapRecognized_];
      [SBApp addActiveOrientationObserver:self];
    }

    else
    {
      [WeakRetained removeStashTabSuppressionTarget:self action:sel__tapRecognized_];
      [SBApp removeActiveOrientationObserver:self];
    }
  }
}

- (void)_tapRecognized:(id)recognized
{
  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:0];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _resetReevaluatePolicyTimer];
}

- (void)_resetReevaluatePolicyTimer
{
  reevaluatePolicyTimer = self->_reevaluatePolicyTimer;
  selfCopy = self;
  [(NSTimer *)reevaluatePolicyTimer invalidate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBPIPStashTabSuppressionPolicyProvider__resetReevaluatePolicyTimer__block_invoke;
  v7[3] = &unk_2783AD1F0;
  v7[4] = selfCopy;
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v7 block:4.0];
  v6 = self->_reevaluatePolicyTimer;
  self->_reevaluatePolicyTimer = v5;
}

void __69__SBPIPStashTabSuppressionPolicyProvider__resetReevaluatePolicyTimer__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 11);
    if (v5 == v6)
    {
      *(v3 + 11) = 0;

      [v4 _reevaluatePolicy];
    }
  }
}

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)orientation willAnimateWithDuration:(double)duration fromOrientation:(int64_t)fromOrientation
{
  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:0, fromOrientation, duration];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _resetReevaluatePolicyTimer];
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];

  v8 = SBSafeCast(v6, toLayoutState);

  [(SBPIPStashTabSuppressionPolicyProvider *)self _updateSceneHandleToObserveForLayoutState:v8];
}

- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  requestIdentifier = [presentableCopy requestIdentifier];
  v11 = [requestIdentifier hasPrefix:@"com.apple.conversationController.HUD"];

  if (v11)
  {
    [(SBPIPStashTabSuppressionPolicyProvider *)self _startTrackingPresentable:presentableCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v12[3] = &unk_2783B6F60;
    v12[4] = self;
    v13 = presentableCopy;
    [coordinatorCopy animateAlongsideTransition:0 completion:v12];
  }
}

uint64_t __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _stopTrackingPresentable:v5];
  }

  return result;
}

- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  presentableCopy = presentable;
  coordinatorCopy = coordinator;
  requestIdentifier = [presentableCopy requestIdentifier];
  v11 = [requestIdentifier hasPrefix:@"com.apple.conversationController.HUD"];

  if (v11)
  {
    [(SBPIPStashTabSuppressionPolicyProvider *)self _stopTrackingPresentable:presentableCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v12[3] = &unk_2783B6F60;
    v12[4] = self;
    v13 = presentableCopy;
    [coordinatorCopy animateAlongsideTransition:0 completion:v12];
  }
}

uint64_t __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _startTrackingPresentable:v5];
  }

  return result;
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];
  clientSettingsInspector = self->_clientSettingsInspector;
  if (!clientSettingsInspector)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75160]);
    v12 = self->_clientSettingsInspector;
    self->_clientSettingsInspector = v11;

    objc_initWeak(&location, self);
    v13 = self->_clientSettingsInspector;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __78__SBPIPStashTabSuppressionPolicyProvider_sceneHandle_didUpdateClientSettings___block_invoke;
    v17 = &unk_2783AC8A0;
    objc_copyWeak(&v18, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v13 observeHomeIndicatorAutoHiddenWithBlock:&v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    clientSettingsInspector = self->_clientSettingsInspector;
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:settingsDiff withContext:transitionContext, v14, v15, v16, v17];
}

void __78__SBPIPStashTabSuppressionPolicyProvider_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reevaluatePolicy];
}

- (SBPIPStashTabSuppressionPolicyProviderObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (SBBannerManager)bannerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_bannerManager);

  return WeakRetained;
}

- (SBWindowScene)sbWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);

  return WeakRetained;
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBWindowScenePIPManager)pipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_pipManager);

  return WeakRetained;
}

- (SBDeviceApplicationSceneHandle)sceneHandleToObserve
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserve);

  return WeakRetained;
}

- (void)initWithObserver:(uint64_t)a1 bannerManager:(uint64_t)a2 windowScene:pipManager:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPStashTabSuppressionPolicyProvider.m" lineNumber:51 description:@"invalid windowScene"];
}

- (void)initWithObserver:(uint64_t)a1 bannerManager:(uint64_t)a2 windowScene:pipManager:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPStashTabSuppressionPolicyProvider.m" lineNumber:52 description:@"invalid pip manager"];
}

@end