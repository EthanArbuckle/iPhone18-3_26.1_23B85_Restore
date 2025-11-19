@interface SBPIPStashTabSuppressionPolicyProvider
- (SBBannerManager)bannerManager;
- (SBDeviceApplicationSceneHandle)sceneHandleToObserve;
- (SBPIPStashTabSuppressionPolicyProvider)initWithObserver:(id)a3 bannerManager:(id)a4 windowScene:(id)a5 pipManager:(id)a6;
- (SBPIPStashTabSuppressionPolicyProviderObserver)observer;
- (SBSwitcherController)switcherController;
- (SBWindowScene)sbWindowScene;
- (SBWindowScenePIPManager)pipManager;
- (void)_reevaluatePolicy;
- (void)_resetReevaluatePolicyTimer;
- (void)_startTrackingPresentable:(id)a3;
- (void)_stopTrackingPresentable:(id)a3;
- (void)_tapRecognized:(id)a3;
- (void)_updateSceneHandleToObserveForLayoutState:(id)a3;
- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5;
- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setSceneHandleToObserve:(id)a3;
- (void)setStashTabCanBeHidden:(BOOL)a3;
@end

@implementation SBPIPStashTabSuppressionPolicyProvider

- (SBPIPStashTabSuppressionPolicyProvider)initWithObserver:(id)a3 bannerManager:(id)a4 windowScene:(id)a5 pipManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = SBPIPStashTabSuppressionPolicyProvider;
  v15 = [(SBPIPStashTabSuppressionPolicyProvider *)&v20 init];
  if (v15)
  {
    if (v13)
    {
      if (v14)
      {
LABEL_4:
        objc_storeWeak(&v15->_observer, v11);
        objc_storeWeak(&v15->_bannerManager, v12);
        objc_storeWeak(&v15->_sbWindowScene, v13);
        objc_storeWeak(&v15->_pipManager, v14);
        [v12 addTransitionObserver:v15];
        v16 = [v13 layoutStateTransitionCoordinator];
        [v16 addObserver:v15];

        [(SBPIPStashTabSuppressionPolicyProvider *)v15 _resetReevaluatePolicyTimer];
        v17 = [v13 layoutStateProvider];
        v18 = [v17 layoutState];

        [(SBPIPStashTabSuppressionPolicyProvider *)v15 _updateSceneHandleToObserveForLayoutState:v18];
        goto LABEL_5;
      }
    }

    else
    {
      [SBPIPStashTabSuppressionPolicyProvider initWithObserver:a2 bannerManager:v15 windowScene:? pipManager:?];
      if (v14)
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
  v6 = [v5 layoutStateTransitionCoordinator];
  [v6 removeObserver:self];

  [(SBPIPStashTabSuppressionPolicyProvider *)self setSceneHandleToObserve:0];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPIPStashTabSuppressionPolicyProvider.m" lineNumber:78 description:{@"Released %@ without invalidating", a2}];
}

- (void)_reevaluatePolicy
{
  if (self->_invalidated || [(NSMutableSet *)self->_requestIdentifiersForPresentedExpanseBanners count]|| self->_reevaluatePolicyTimer)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SBPIPStashTabSuppressionPolicyProvider *)self sceneHandleToObserve];
    v5 = [v4 sceneIfExists];

    v6 = [v5 clientSettings];
    v7 = objc_opt_class();
    v8 = v6;
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

    v3 = [v10 homeIndicatorAutoHidden];
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:v3];
}

- (void)_updateSceneHandleToObserveForLayoutState:(id)a3
{
  v14 = a3;
  if ([v14 unlockedEnvironmentMode] == 3 && (objc_msgSend(v14, "elements"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5 == 1))
  {
    v6 = [v14 elementWithRole:1];
    v7 = [v6 entityGenerator];
    v8 = v7[2]();

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

    v12 = [v13 sceneHandle];
  }

  else
  {
    v12 = 0;
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self setSceneHandleToObserve:v12];
}

- (void)_startTrackingPresentable:(id)a3
{
  v4 = a3;
  requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  v9 = v4;
  if (!requestIdentifiersForPresentedExpanseBanners)
  {
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    v7 = self->_requestIdentifiersForPresentedExpanseBanners;
    self->_requestIdentifiersForPresentedExpanseBanners = v6;

    v4 = v9;
    requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  }

  v8 = [v4 requestIdentifier];
  [(NSMutableSet *)requestIdentifiersForPresentedExpanseBanners addObject:v8];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)_stopTrackingPresentable:(id)a3
{
  requestIdentifiersForPresentedExpanseBanners = self->_requestIdentifiersForPresentedExpanseBanners;
  v5 = [a3 requestIdentifier];
  [(NSMutableSet *)requestIdentifiersForPresentedExpanseBanners removeObject:v5];

  if (![(NSMutableSet *)self->_requestIdentifiersForPresentedExpanseBanners count])
  {
    v6 = self->_requestIdentifiersForPresentedExpanseBanners;
    self->_requestIdentifiersForPresentedExpanseBanners = 0;
  }

  [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
}

- (void)setSceneHandleToObserve:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandleToObserve);
  if (WeakRetained != obj)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_sceneHandleToObserve, obj);
    [obj addObserver:self];
    [(SBPIPStashTabSuppressionPolicyProvider *)self _reevaluatePolicy];
  }
}

- (void)setStashTabCanBeHidden:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_stashTabCanBeHidden != a3)
  {
    v3 = a3;
    self->_stashTabCanBeHidden = a3;
    WeakRetained = objc_loadWeakRetained(&self->_pipManager);
    v6 = SBLogPIP();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109378;
      v8[1] = v3;
      v9 = 2112;
      v10 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[SBPIPStashTabSuppressionPolicyProvider] setStashTabCanBeHidden %{BOOL}u %@", v8, 0x12u);
    }

    v7 = objc_loadWeakRetained(&self->_observer);
    [v7 stashTabVisibilityPolicyProviderDidUpdatePolicy:self];

    if (v3)
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

- (void)_tapRecognized:(id)a3
{
  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:0];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _resetReevaluatePolicyTimer];
}

- (void)_resetReevaluatePolicyTimer
{
  reevaluatePolicyTimer = self->_reevaluatePolicyTimer;
  v4 = self;
  [(NSTimer *)reevaluatePolicyTimer invalidate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SBPIPStashTabSuppressionPolicyProvider__resetReevaluatePolicyTimer__block_invoke;
  v7[3] = &unk_2783AD1F0;
  v7[4] = v4;
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

- (void)activeInterfaceOrientationDidChangeToOrientation:(int64_t)a3 willAnimateWithDuration:(double)a4 fromOrientation:(int64_t)a5
{
  [(SBPIPStashTabSuppressionPolicyProvider *)self setStashTabCanBeHidden:0, a5, a4];

  [(SBPIPStashTabSuppressionPolicyProvider *)self _resetReevaluatePolicyTimer];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [v5 toLayoutState];

  v8 = SBSafeCast(v6, v7);

  [(SBPIPStashTabSuppressionPolicyProvider *)self _updateSceneHandleToObserveForLayoutState:v8];
}

- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 requestIdentifier];
  v11 = [v10 hasPrefix:@"com.apple.conversationController.HUD"];

  if (v11)
  {
    [(SBPIPStashTabSuppressionPolicyProvider *)self _startTrackingPresentable:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v12[3] = &unk_2783B6F60;
    v12[4] = self;
    v13 = v8;
    [v9 animateAlongsideTransition:0 completion:v12];
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

- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 requestIdentifier];
  v11 = [v10 hasPrefix:@"com.apple.conversationController.HUD"];

  if (v11)
  {
    [(SBPIPStashTabSuppressionPolicyProvider *)self _stopTrackingPresentable:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __114__SBPIPStashTabSuppressionPolicyProvider_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
    v12[3] = &unk_2783B6F60;
    v12[4] = self;
    v13 = v8;
    [v9 animateAlongsideTransition:0 completion:v12];
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

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];
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

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:v8 withContext:v9, v14, v15, v16, v17];
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