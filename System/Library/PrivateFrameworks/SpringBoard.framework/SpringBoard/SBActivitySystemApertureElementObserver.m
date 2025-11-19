@interface SBActivitySystemApertureElementObserver
- (BOOL)_activityAlertIsPendingForIdentifier:(id)a3;
- (BOOL)_activityHasDifferentAlertSceneTarget:(id)a3;
- (BOOL)_activityHasSwappedScene:(id)a3;
- (BOOL)_activityIsPendingForIdentifier:(id)a3;
- (BOOL)_canPresentAlert:(id)a3;
- (BOOL)_canRegisterElementForActivityItem:(id)a3;
- (BOOL)_hasValidAlertingAssertion;
- (BOOL)_isActivityOngoing:(id)a3;
- (BOOL)_isContentReadyForAlert:(id)a3;
- (BOOL)_registeredElementExistsForBundleIdentifier:(id)a3;
- (BOOL)_shouldSwapActivityItem:(id)a3 withOtherItem:(id)a4 itemAlerting:(BOOL)a5;
- (BOOL)_systemApertureElementAssertionExistsForBundleIdentifier:(id)a3;
- (BOOL)shouldHandleActivityItem:(id)a3;
- (SBActivitySystemApertureElementObserver)init;
- (id)_activatedElementItemForBundleIdentifier:(id)a3;
- (id)_createSceneHandle:(id)a3 forAlerting:(BOOL)a4;
- (id)_createSystemApertureSceneHandleWithItem:(id)a3 forAlerting:(BOOL)a4;
- (id)_pendingItemForAlert:(id)a3;
- (void)_addPendingAlert:(id)a3;
- (void)_addPendingItemIfNecessary:(id)a3;
- (void)_checkForPossibleSwapsForActivatedItem:(id)a3;
- (void)_cleanUpAlertPresentation:(id)a3 completion:(id)a4;
- (void)_cleanUpInvalidRegisteredElements;
- (void)_createAndActivateElementForActivityItem:(id)a3 forAlerting:(BOOL)a4 completion:(id)a5;
- (void)_createAndActivateSystemApertureElementWithScene:(id)a3 item:(id)a4 forAlerting:(BOOL)a5 completion:(id)a6;
- (void)_invalidateSystemApertureElementForItem:(id)a3 completion:(id)a4;
- (void)_prepareAndPresentActivityAlert:(id)a3;
- (void)_prepareForAlertingActivityIfNecessary:(id)a3 completion:(id)a4;
- (void)_presentAlert:(id)a3;
- (void)_presentOrPendActivityAlert:(id)a3;
- (void)_presentPendingAlertIfNecessary;
- (void)_presentPendingAlertIfNecessaryForActivityIdentifier:(id)a3;
- (void)_registerSystemApertureElementForPendingActivityIfNecessary;
- (void)_removePendingItem:(id)a3 withPendingAlerts:(BOOL)a4;
- (void)_removeSystemApertureSceneHandleWithItem:(id)a3;
- (void)_restoreOngoingActivityElementIfNecessaryForDismissingAlert:(id)a3;
- (void)_stopAlertingForActivityIdentifier:(id)a3;
- (void)_storeSceneHandle:(id)a3 item:(id)a4;
- (void)_swapActivityItem:(id)a3 withItem:(id)a4;
- (void)_swapItemWithRegisteredItemIfNecessary:(id)a3 itemAlerting:(BOOL)a4;
- (void)_swapToAlertSceneForActivityItem:(id)a3 completion:(id)a4;
- (void)_unlockAndLaunchAppIfPossible:(id)a3 withAction:(id)a4;
- (void)_updatePendingItemWithItem:(id)a3;
- (void)_updateSystemApertureElementProminence:(BOOL)a3 item:(id)a4;
- (void)activityDidEnd:(id)a3;
- (void)activityDidStart:(id)a3;
- (void)activityDidUpdate:(id)a3;
- (void)activityEnvironmentChanged:(int64_t)a3;
- (void)activityProminenceChanged:(BOOL)a3 item:(id)a4;
- (void)activityWasBlockedForItem:(id)a3;
- (void)activityWasUnblockedForItem:(id)a3;
- (void)dismissAlert:(id)a3;
- (void)presentAlert:(id)a3;
- (void)presentFallbackAlert:(id)a3;
- (void)systemApertureSceneHandle:(id)a3 updatedContentPayloadID:(id)a4;
@end

@implementation SBActivitySystemApertureElementObserver

- (SBActivitySystemApertureElementObserver)init
{
  v30.receiver = self;
  v30.super_class = SBActivitySystemApertureElementObserver;
  v2 = [(SBActivitySystemApertureElementObserver *)&v30 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sceneHandleByActivityIdentifier = v2->_sceneHandleByActivityIdentifier;
    v2->_sceneHandleByActivityIdentifier = v3;

    v5 = objc_opt_new();
    elementAssertionByActivityIdentifier = v2->_elementAssertionByActivityIdentifier;
    v2->_elementAssertionByActivityIdentifier = v5;

    v7 = objc_opt_new();
    elementByActivityIdentifier = v2->_elementByActivityIdentifier;
    v2->_elementByActivityIdentifier = v7;

    v9 = objc_opt_new();
    activeItemByActivityIdentifier = v2->_activeItemByActivityIdentifier;
    v2->_activeItemByActivityIdentifier = v9;

    v11 = objc_opt_new();
    contentPayloadIDsByActivityIdentifier = v2->_contentPayloadIDsByActivityIdentifier;
    v2->_contentPayloadIDsByActivityIdentifier = v11;

    v13 = objc_opt_new();
    prominenceStateByActivityIdentifier = v2->_prominenceStateByActivityIdentifier;
    v2->_prominenceStateByActivityIdentifier = v13;

    v15 = objc_opt_new();
    pendingItems = v2->_pendingItems;
    v2->_pendingItems = v15;

    v17 = objc_opt_new();
    activeWidgetActivitiesWithSceneHandles = v2->_activeWidgetActivitiesWithSceneHandles;
    v2->_activeWidgetActivitiesWithSceneHandles = v17;

    v19 = objc_opt_new();
    pendingAlerts = v2->_pendingAlerts;
    v2->_pendingAlerts = v19;

    v21 = objc_opt_new();
    ongoingActivities = v2->_ongoingActivities;
    v2->_ongoingActivities = v21;

    v23 = objc_opt_new();
    activitiesWithSwappedScenes = v2->_activitiesWithSwappedScenes;
    v2->_activitiesWithSwappedScenes = v23;

    v25 = objc_opt_new();
    alertingAssertionsByActivityIdentifier = v2->_alertingAssertionsByActivityIdentifier;
    v2->_alertingAssertionsByActivityIdentifier = v25;

    v27 = objc_opt_new();
    alertSceneHandlesByActivityIdentifier = v2->_alertSceneHandlesByActivityIdentifier;
    v2->_alertSceneHandlesByActivityIdentifier = v27;

    v2->_activityEnvironment = 0;
  }

  return v2;
}

- (void)activityDidStart:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __60__SBActivitySystemApertureElementObserver_activityDidStart___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = [*(a1 + 40) identifier];
  [v2 addObject:v3];

  [*(a1 + 32) _cleanUpInvalidRegisteredElements];
  if ([*(a1 + 32) _canRegisterElementForActivityItem:*(a1 + 40)])
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _createAndActivateElementForActivityItem:v5 forAlerting:0 completion:0];
  }

  else
  {
    v11 = [*(a1 + 40) descriptor];
    v6 = [v11 platterTargetBundleIdentifier];
    v7 = [*(a1 + 32) _activatedElementItemForBundleIdentifier:v6];
    v8 = [*(a1 + 32) _shouldSwapActivityItem:*(a1 + 40) withOtherItem:v7 itemAlerting:0];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    if (v8)
    {
      [v9 _swapActivityItem:v10 withItem:v7];
    }

    else
    {
      [v9 _addPendingItemIfNecessary:v10];
    }
  }
}

- (void)activityDidUpdate:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBActivitySystemApertureElementObserver *)self _cleanUpInvalidRegisteredElements];
  v5 = [v4 identifier];
  v6 = [v4 descriptor];
  v7 = [v6 platterTargetBundleIdentifier];
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [v4 relevanceScore];
    *buf = 138543874;
    v27 = v5;
    v28 = 2114;
    v29 = v7;
    v30 = 2048;
    v31 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] updated with relevance score %f", buf, 0x20u);
  }

  v10 = [(SBActivitySystemApertureElementObserver *)self _activatedElementItemForBundleIdentifier:v7];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:v5];

  v13 = SBLogActivity();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Update is on the registered element", buf, 0x16u);
    }

    [(NSMutableDictionary *)self->_activeItemByActivityIdentifier setObject:v4 forKeyedSubscript:v5];
    v15 = [(NSMutableArray *)self->_pendingItems copy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(SBActivitySystemApertureElementObserver *)self _swapItemWithRegisteredItemIfNecessary:*(*(&v21 + 1) + 8 * v20++) itemAlerting:0, v21];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@, BundleID: %{public}@] Update is on a pending element", buf, 0x16u);
    }

    [(SBActivitySystemApertureElementObserver *)self _updatePendingItemWithItem:v4];
    [(SBActivitySystemApertureElementObserver *)self _swapItemWithRegisteredItemIfNecessary:v4 itemAlerting:0];
  }
}

- (void)activityDidEnd:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __58__SBActivitySystemApertureElementObserver_activityDidEnd___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 88);
  v4 = [*(a1 + 40) identifier];
  [v3 removeObject:v4];

  v5 = [*v2 descriptor];
  v6 = [v5 activityIdentifier];
  if (v6)
  {
    v7 = SBLogActivity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ended", buf, 0xCu);
    }

    [*(a1 + 32) _stopAlertingForActivityIdentifier:v6];
    objc_initWeak(buf, *(a1 + 32));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__SBActivitySystemApertureElementObserver_activityDidEnd___block_invoke_14;
    v10[3] = &unk_2783AFD20;
    objc_copyWeak(&v13, buf);
    v11 = *(a1 + 40);
    v12 = v6;
    [v8 _invalidateSystemApertureElementForItem:v9 completion:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __58__SBActivitySystemApertureElementObserver_activityDidEnd___block_invoke_14(id *a1, void *a2, char a3)
{
  v5 = a2;
  objc_copyWeak(&v8, a1 + 6);
  v9 = a3;
  v6 = a1[4];
  v7 = a1[5];
  BSDispatchMain();

  objc_destroyWeak(&v8);
}

void __58__SBActivitySystemApertureElementObserver_activityDidEnd___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && *(a1 + 56) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained _removeSystemApertureSceneHandleWithItem:*(a1 + 32)];
    [v3 _registerSystemApertureElementForPendingActivityIfNecessary];
    [v3[12] removeObject:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (BOOL)shouldHandleActivityItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 descriptor];
  v4 = [v3 presentationOptions];
  v5 = [v4 destinations];
  v6 = [v5 bs_containsObjectPassingTest:&__block_literal_global_129];

  v7 = +[SBLiveActivityDomain rootSettings];
  v8 = [v7 hideActivitiesInDynamicIsland];

  v9 = (v8 ^ 1) & v6;
  return v9;
}

- (void)activityWasBlockedForItem:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] was blocked", &v7, 0xCu);
  }

  [(SBActivitySystemApertureElementObserver *)self activityDidEnd:v4];
}

- (void)activityWasUnblockedForItem:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] was unblocked", &v7, 0xCu);
  }

  [(SBActivitySystemApertureElementObserver *)self activityDidStart:v4];
}

- (void)presentAlert:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBActivitySystemApertureElementObserver_presentAlert___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__SBActivitySystemApertureElementObserver_presentAlert___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) item];
  v3 = [v2 identifier];

  v4 = [*(a1 + 32) canPresentInEnvironment:*(*(a1 + 40) + 120) alertType:2];
  v5 = SBLogActivity();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] presents alert", &v7, 0xCu);
    }

    [*(a1 + 40) _presentOrPendActivityAlert:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] System aperture can't present alert in this environment", &v7, 0xCu);
    }
  }
}

- (void)dismissAlert:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SBActivitySystemApertureElementObserver_dismissAlert___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __56__SBActivitySystemApertureElementObserver_dismissAlert___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) item];
  v3 = [v2 identifier];

  v4 = SBLogActivity();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismisses alert", &v10, 0xCu);
  }

  v5 = [*(*(a1 + 40) + 104) objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    [v5 invalidateWithReason:@"SBActivitySystemApertureElementObserver's dismissAlertForActivityAlertProvider"];
    [*(*(a1 + 40) + 104) removeObjectForKey:v3];
  }

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) item];
  v9 = [v8 identifier];
  [v7 _stopAlertingForActivityIdentifier:v9];
}

- (void)activityProminenceChanged:(BOOL)a3 item:(id)a4
{
  v4 = a3;
  v8 = a4;
  BSDispatchQueueAssertMain();
  v6 = [v8 identifier];
  v7 = [(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v6];

  if (v7)
  {
    [(SBActivitySystemApertureElementObserver *)self _updateSystemApertureElementProminence:v4 item:v8];
  }
}

- (void)activityEnvironmentChanged:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_activityEnvironment != a3)
  {
    self->_activityEnvironment = a3;
    if (a3 == 1)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = [(NSMutableDictionary *)self->_alertingAssertionsByActivityIdentifier allValues];
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v9 + 1) + 8 * v8++) invalidateWithReason:@"SBActivitySystemApertureElementObserver's activityEnvironmentChanged"];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }

      [(NSMutableDictionary *)self->_alertingAssertionsByActivityIdentifier removeAllObjects];
    }
  }
}

- (void)presentFallbackAlert:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 item];
    v7 = [v6 identifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] posting fallback alert", &v8, 0xCu);
  }

  [(SBActivitySystemApertureElementObserver *)self _presentOrPendActivityAlert:v4];
}

- (BOOL)_isActivityOngoing:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  LOBYTE(self) = [(NSMutableSet *)self->_ongoingActivities containsObject:v4];

  return self;
}

- (void)_cleanUpInvalidRegisteredElements
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier allValues];
  v4 = [v3 copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138543362;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 scene];
        v13 = [v12 isValid];

        if ((v13 & 1) == 0)
        {
          v14 = [v11 descriptor];
          v15 = [v14 activityIdentifier];

          v16 = [(NSMutableDictionary *)self->_activeItemByActivityIdentifier objectForKeyedSubscript:v15];
          if (v16)
          {
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __76__SBActivitySystemApertureElementObserver__cleanUpInvalidRegisteredElements__block_invoke;
            v19[3] = &unk_2783B4738;
            v20 = v15;
            [(SBActivitySystemApertureElementObserver *)self _invalidateSystemApertureElementForItem:v16 completion:v19];
            v17 = v20;
          }

          else
          {
            [v11 invalidate];
            [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier removeObjectForKey:v15];
            v17 = SBLogActivity();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v26 = v15;
              _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] scene handle removed.", buf, 0xCu);
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }
}

void __76__SBActivitySystemApertureElementObserver__cleanUpInvalidRegisteredElements__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = SBLogActivity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] invalid scene removed.", &v4, 0xCu);
  }
}

- (BOOL)_canRegisterElementForActivityItem:(id)a3
{
  v4 = [a3 descriptor];
  v5 = [v4 contentType];
  v6 = [v4 platterTargetBundleIdentifier];
  v7 = [(SBActivitySystemApertureElementObserver *)self _registeredElementExistsForBundleIdentifier:v6];
  v8 = [(SBActivitySystemApertureElementObserver *)self _systemApertureElementAssertionExistsForBundleIdentifier:v6];
  v9 = v8;
  if (v5)
  {
    v10 = !v7 && !v8;
  }

  else
  {
    v10 = [(NSMutableSet *)self->_activeWidgetActivitiesWithSceneHandles count]<= 1 && !v7 && !v9;
  }

  return v10;
}

- (void)_createAndActivateElementForActivityItem:(id)a3 forAlerting:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  BSDispatchQueueAssertMain();
  v11 = [v9 descriptor];
  v12 = [v11 activityIdentifier];
  if ([(SBActivitySystemApertureElementObserver *)self shouldHandleActivityItem:v9]&& v12)
  {
    v13 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKeyedSubscript:v12];
    v14 = SBLogActivity();
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SBActivitySystemApertureElementObserver _createAndActivateElementForActivityItem:forAlerting:completion:];
      }

      if (v10)
      {
        v10[2](v10, 1);
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v12;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] started, creating system aperture element", buf, 0xCu);
      }

      v16 = [(SBActivitySystemApertureElementObserver *)self _createSystemApertureSceneHandleWithItem:v9 forAlerting:v6];
      v17 = [v16 scene];
      if (v17)
      {
        objc_initWeak(buf, self);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __107__SBActivitySystemApertureElementObserver__createAndActivateElementForActivityItem_forAlerting_completion___block_invoke;
        v19[3] = &unk_2783B4760;
        objc_copyWeak(&v23, buf);
        v20 = v12;
        v21 = v9;
        v22 = v10;
        [(SBActivitySystemApertureElementObserver *)self _createAndActivateSystemApertureElementWithScene:v17 item:v21 forAlerting:v6 completion:v19];

        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      else
      {
        v18 = SBLogActivity();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SBActivitySystemApertureElementObserver _createAndActivateElementForActivityItem:forAlerting:completion:];
        }

        if (v10)
        {
          v10[2](v10, 0);
        }
      }
    }
  }

  else
  {
    [SBActivitySystemApertureElementObserver _createAndActivateElementForActivityItem:a2 forAlerting:self completion:v10];
  }
}

void __107__SBActivitySystemApertureElementObserver__createAndActivateElementForActivityItem_forAlerting_completion___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = SBLogActivity();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v18 = 138543362;
      v19 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] System aperture element is created and activate successfully", &v18, 0xCu);
    }

    v8 = [*(a1 + 40) identifier];
    [WeakRetained _presentPendingAlertIfNecessaryForActivityIdentifier:v8];

    [WeakRetained _checkForPossibleSwapsForActivatedItem:*(a1 + 40)];
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_10:
      v10();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __107__SBActivitySystemApertureElementObserver__createAndActivateElementForActivityItem_forAlerting_completion___block_invoke_cold_1(a1, v6, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 48);
    if (v17)
    {
      v10 = *(v17 + 16);
      goto LABEL_10;
    }
  }
}

- (void)_registerSystemApertureElementForPendingActivityIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = [(NSMutableArray *)self->_pendingItems firstObject];
  if ([(NSMutableSet *)self->_activeWidgetActivitiesWithSceneHandles count]<= 1)
  {
    v4 = [v3 descriptor];
    v5 = [v4 platterTargetBundleIdentifier];
    v6 = [(SBActivitySystemApertureElementObserver *)self _registeredElementExistsForBundleIdentifier:v5];

    if (!v6)
    {
      if (v3)
      {
        [(SBActivitySystemApertureElementObserver *)self _removePendingItem:v3 withPendingAlerts:0];
        v7 = SBLogActivity();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 identifier];
          v13 = 138543362;
          v14 = v8;
          _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] starting new activity from pending activities", &v13, 0xCu);
        }

        v9 = [v3 identifier];
        v10 = [(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v9];

        if (v10)
        {
          [(SBActivitySystemApertureElementObserver *)self _createAndActivateElementForActivityItem:v3 forAlerting:0 completion:0];
        }

        else
        {
          v11 = SBLogActivity();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v3 identifier];
            v13 = 138543362;
            v14 = v12;
            _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] this activity has already ended, abort starting pending activity", &v13, 0xCu);
          }
        }
      }
    }
  }
}

- (void)_stopAlertingForActivityIdentifier:(id)a3
{
  activeAlert = self->_activeAlert;
  v5 = a3;
  v6 = [(SBActivityAlert *)activeAlert item];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {
    [(SBActivityAlert *)self->_activeAlert stopAlerting];
    v9 = self->_activeAlert;
    self->_activeAlert = 0;
  }
}

- (void)_checkForPossibleSwapsForActivatedItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  BSDispatchQueueAssertMain();
  v4 = SBLogActivity();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Element activated. Checking for any possible swaps with pending items", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSMutableArray *)self->_pendingItems copy];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 descriptor];
        v12 = [v11 platterTargetBundleIdentifier];
        v13 = [v3 descriptor];
        v14 = [v13 platterTargetBundleIdentifier];
        v15 = [v12 isEqualToString:v14];

        if (v15 && [(SBActivitySystemApertureElementObserver *)self _shouldSwapActivityItem:v10 withOtherItem:v3 itemAlerting:0])
        {
          [(SBActivitySystemApertureElementObserver *)self _swapActivityItem:v10 withItem:v3];
          [(SBActivitySystemApertureElementObserver *)self _removePendingItem:v10 withPendingAlerts:0];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_prepareForAlertingActivityIfNecessary:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [v6 item];
  v9 = [v8 identifier];

  v10 = [v6 item];
  v11 = [(SBActivitySystemApertureElementObserver *)self _activityHasDifferentAlertSceneTarget:v10];
  if ([(SBActivitySystemApertureElementObserver *)self _activityIsPendingForIdentifier:v9])
  {
    v12 = SBLogActivity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v9;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] preparing element for alerting pending activity", &v15, 0xCu);
    }

    if ([(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v9])
    {
      v13 = [(SBActivitySystemApertureElementObserver *)self _pendingItemForAlert:v6];
      [(SBActivitySystemApertureElementObserver *)self _createAndActivateElementForActivityItem:v13 forAlerting:v11 completion:v7];
    }

    else
    {
      v14 = SBLogActivity();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] this activity has already ended, no alert necessary", &v15, 0xCu);
      }

      if (v7)
      {
        v7[2](v7, 0);
      }
    }
  }

  else if (v11)
  {
    [(SBActivitySystemApertureElementObserver *)self _swapToAlertSceneForActivityItem:v10 completion:v7];
  }

  else if (v7)
  {
    (v7)[2](v7, [(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v9]);
  }
}

- (void)_presentPendingAlertIfNecessary
{
  v3 = [(NSMutableOrderedSet *)self->_pendingAlerts firstObject];
  if (v3)
  {
    v4 = v3;
    [(SBActivitySystemApertureElementObserver *)self _presentOrPendActivityAlert:v3];
    v3 = v4;
  }
}

- (void)_presentPendingAlertIfNecessaryForActivityIdentifier:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_pendingAlerts copy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543874;
    v20 = v8;
    v21 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 item];
        v14 = [v13 identifier];
        v15 = [v14 isEqualToString:v4];

        if (v15 && [(SBActivitySystemApertureElementObserver *)self _canPresentAlert:v12]&& [(SBActivitySystemApertureElementObserver *)self _isContentReadyForAlert:v12])
        {
          v16 = [(NSMutableDictionary *)self->_contentPayloadIDsByActivityIdentifier objectForKeyedSubscript:v4];
          v17 = SBLogActivity();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v12 payloadIdentifier];
            v19 = [v16 description];
            *buf = v20;
            v27 = v4;
            v28 = 2114;
            v29 = v18;
            v30 = 2114;
            v31 = v19;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Showing alert with payload ID: %{public}@, payload IDs received for the activity: %{public}@", buf, 0x20u);

            v6 = v21;
          }

          [(SBActivitySystemApertureElementObserver *)self _prepareAndPresentActivityAlert:v12];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }
}

- (void)_presentOrPendActivityAlert:(id)a3
{
  v4 = a3;
  if ([(SBActivitySystemApertureElementObserver *)self _canPresentAlert:v4])
  {
    if ([(SBActivitySystemApertureElementObserver *)self _isContentReadyForAlert:v4])
    {
      [(SBActivitySystemApertureElementObserver *)self _prepareAndPresentActivityAlert:v4];
    }

    else
    {
      self->_preparingElementForPendingAlert = 1;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __71__SBActivitySystemApertureElementObserver__presentOrPendActivityAlert___block_invoke;
      v10[3] = &unk_2783A8BF0;
      v10[4] = self;
      v11 = v4;
      [(SBActivitySystemApertureElementObserver *)self _prepareForAlertingActivityIfNecessary:v11 completion:v10];
    }
  }

  else
  {
    [(SBActivitySystemApertureElementObserver *)self _addPendingAlert:v4];
    v5 = [v4 item];
    v6 = [v5 identifier];

    v7 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v6];
    v8 = [(SBActivitySystemApertureElementObserver *)self _pendingItemForAlert:v4];
    v9 = v8;
    if (!v7 && v8)
    {
      [(SBActivitySystemApertureElementObserver *)self _swapItemWithRegisteredItemIfNecessary:v8 itemAlerting:1];
    }
  }
}

uint64_t __71__SBActivitySystemApertureElementObserver__presentOrPendActivityAlert___block_invoke(uint64_t result, int a2)
{
  *(*(result + 32) + 112) = 0;
  if (a2)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = [*(result + 40) item];
    LODWORD(v3) = [v3 _activityHasSwappedScene:v4];

    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    if (v3)
    {

      return [v5 _presentAlert:v6];
    }

    else
    {

      return [v5 _addPendingAlert:v6];
    }
  }

  return result;
}

- (void)_addPendingAlert:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 identifier];

  v7 = SBLogActivity();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] adding to pending alerts", &v8, 0xCu);
  }

  [(NSMutableOrderedSet *)self->_pendingAlerts addObject:v4];
}

- (void)_prepareAndPresentActivityAlert:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__SBActivitySystemApertureElementObserver__prepareAndPresentActivityAlert___block_invoke;
  v6[3] = &unk_2783A8BF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SBActivitySystemApertureElementObserver *)self _prepareForAlertingActivityIfNecessary:v5 completion:v6];
}

uint64_t __75__SBActivitySystemApertureElementObserver__prepareAndPresentActivityAlert___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _presentAlert:*(result + 40)];
  }

  return result;
}

- (void)_cleanUpAlertPresentation:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 item];
  v9 = [v8 identifier];
  if ([(SBActivitySystemApertureElementObserver *)self _activityIsPendingForIdentifier:v9]|| [(SBActivitySystemApertureElementObserver *)self _activityHasSwappedScene:v8])
  {
    objc_initWeak(&location, self);
    v10 = [v6 item];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__SBActivitySystemApertureElementObserver__cleanUpAlertPresentation_completion___block_invoke;
    v11[3] = &unk_2783B4788;
    objc_copyWeak(&v14, &location);
    v12 = v6;
    v13 = v7;
    [(SBActivitySystemApertureElementObserver *)self _invalidateSystemApertureElementForItem:v10 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __80__SBActivitySystemApertureElementObserver__cleanUpAlertPresentation_completion___block_invoke(id *a1, void *a2, char a3)
{
  v5 = a2;
  objc_copyWeak(&v8, a1 + 6);
  v9 = a3;
  v6 = a1[4];
  v7 = a1[5];
  BSDispatchMain();

  objc_destroyWeak(&v8);
}

void __80__SBActivitySystemApertureElementObserver__cleanUpAlertPresentation_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (*(a1 + 56) == 1)
    {
      v4 = [*(a1 + 32) item];
      [v6 _removeSystemApertureSceneHandleWithItem:v4];

      [v6 _registerSystemApertureElementForPendingActivityIfNecessary];
      v3 = v6;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
      v3 = v6;
    }
  }
}

- (void)_presentAlert:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(SBActivitySystemApertureElementObserver *)self _canPresentAlert:v6])
  {
    [(SBActivitySystemApertureElementObserver *)a2 _presentAlert:?];
  }

  v7 = [v6 item];
  v8 = [v7 identifier];

  v9 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKey:v8];
  v10 = [v9 descriptor];

  if ([(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v8])
  {
    v11 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v8];
    if (objc_opt_respondsToSelector())
    {
      v12 = SBLogActivity();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 description];
        *buf = 138543618;
        v31 = v8;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] enables alerting for element %@", buf, 0x16u);
      }

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__SBActivitySystemApertureElementObserver__presentAlert___block_invoke;
      v27[3] = &unk_2783B47B0;
      v14 = v8;
      v28 = v14;
      v15 = v10;
      v29 = v15;
      [(SBActivitySystemApertureElementObserver *)self _sendAnalyticsEventWithPayloadBuilder:v27];
      [(NSMutableOrderedSet *)self->_pendingAlerts removeObject:v6];
      [v6 alertWithScreenOn:1 playSound:1];
      objc_storeStrong(&self->_activeAlert, a3);
      v16 = [v6 isProminent];
      v17 = [v15 isMomentary];
      v18 = v17;
      v19 = [v11 requestAlertingAssertionImplicitlyDismissable:v16 & v17];
      if (v19)
      {
        [(NSMutableDictionary *)self->_alertingAssertionsByActivityIdentifier setObject:v19 forKey:v14];
        [v19 setAutomaticallyInvalidatable:0 lockingWithKey:@"SBActivitySystemApertureElementObserver" reason:@"SBActivitySystemApertureElementObserver"];
        objc_initWeak(buf, self);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __57__SBActivitySystemApertureElementObserver__presentAlert___block_invoke_2;
        v22[3] = &unk_2783B47D8;
        v23 = v14;
        objc_copyWeak(&v25, buf);
        v24 = v6;
        v26 = v18;
        [v19 addInvalidationBlock:v22];

        objc_destroyWeak(&v25);
        objc_destroyWeak(buf);
      }

      else
      {
        v21 = SBLogActivity();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(SBActivitySystemApertureElementObserver *)v14 _presentAlert:v11, v21];
        }
      }
    }
  }

  else
  {
    v20 = SBLogActivity();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v8;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] activity has ended, not presenting an alert for it", buf, 0xCu);
    }

    [(NSMutableOrderedSet *)self->_pendingAlerts removeObject:v6];
    [(SBActivitySystemApertureElementObserver *)self _presentPendingAlertIfNecessary];
    [(SBActivitySystemApertureElementObserver *)self _cleanUpAlertPresentation:v6 completion:0];
  }
}

id __57__SBActivitySystemApertureElementObserver__presentAlert___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = v2;
  v6[0] = @"activityId";
  v6[1] = @"bundleId";
  v3 = [v1 platterTargetBundleIdentifier];
  v6[2] = @"eventType";
  v7[1] = v3;
  v7[2] = @"alert-jindo";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __57__SBActivitySystemApertureElementObserver__presentAlert___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = SBLogActivity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v17 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] invalidating alerting assertion", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _presentPendingAlertIfNecessary];
    v6 = *(a1 + 40);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __57__SBActivitySystemApertureElementObserver__presentAlert___block_invoke_51;
    v13 = &unk_2783A8BF0;
    v14 = v5;
    v15 = v6;
    [v5 _cleanUpAlertPresentation:v15 completion:&v10];
    if (*(a1 + 56) == 1)
    {
      v7 = [*(a1 + 40) item];
      v8 = objc_alloc_init(MEMORY[0x277CB98A0]);
      v9 = [v7 identifier];
      [v8 endActivity:v9];
    }
  }
}

- (void)_restoreOngoingActivityElementIfNecessaryForDismissingAlert:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 item];
  v5 = [v4 identifier];
  v6 = [(SBActivitySystemApertureElementObserver *)self _activityHasSwappedScene:v4];
  v7 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKey:v5];

  if (v6 && !v7)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] restoring system aperture element", buf, 0xCu);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __103__SBActivitySystemApertureElementObserver__restoreOngoingActivityElementIfNecessaryForDismissingAlert___block_invoke;
    v9[3] = &unk_2783A8BF0;
    v9[4] = self;
    v10 = v5;
    [(SBActivitySystemApertureElementObserver *)self _createAndActivateElementForActivityItem:v4 forAlerting:0 completion:v9];
  }
}

- (BOOL)_canPresentAlert:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 item];
  v5 = [v4 identifier];

  v6 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v5];
  v7 = SBLogActivity();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 description];
      v12 = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Element for alerting: %@", &v12, 0x16u);
    }

    v10 = [v6 isReadyForPresentation];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SBActivitySystemApertureElementObserver _canPresentAlert:];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_isContentReadyForAlert:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 item];
  v6 = [v5 identifier];

  v7 = [v4 payloadIdentifier];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_contentPayloadIDsByActivityIdentifier objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 containsObject:v7];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = SBLogActivity();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] No payload ID passed with the alert", &v13, 0xCu);
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)_hasValidAlertingAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_alertingAssertionsByActivityIdentifier allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isValid])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_pendingItemForAlert:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a3 item];
  v5 = [v4 identifier];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_pendingItems;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)_registeredElementExistsForBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) descriptor];
        v10 = [v9 platterTargetBundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_systemApertureElementAssertionExistsForBundleIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSMutableDictionary *)self->_activeItemByActivityIdentifier allValues];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 descriptor];
        v12 = [v11 platterTargetBundleIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          elementAssertionByActivityIdentifier = self->_elementAssertionByActivityIdentifier;
          v16 = [v10 identifier];
          v17 = [(NSMutableDictionary *)elementAssertionByActivityIdentifier objectForKey:v16];
          v14 = v17 != 0;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_activatedElementItemForBundleIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier allValues];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 descriptor];
        v12 = [v11 platterTargetBundleIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = [v10 descriptor];
          v15 = [v14 activityIdentifier];

          v16 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v15];
          v17 = v16;
          if (v16 && ([v16 isActivated] & 1) != 0)
          {
            v18 = [(NSMutableDictionary *)self->_activeItemByActivityIdentifier objectForKeyedSubscript:v15];

            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)_shouldSwapActivityItem:(id)a3 withOtherItem:(id)a4 itemAlerting:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    v16 = SBLogActivity();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v8 identifier];
      v22 = [v10 identifier];
      v43 = 138543618;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      v23 = "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Not swapping because items can't be found";
LABEL_13:
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, v23, &v43, 0x16u);
    }

LABEL_14:
    v20 = 0;
    goto LABEL_28;
  }

  v11 = [v8 descriptor];
  v12 = [v11 platterTargetBundleIdentifier];
  v13 = [v10 descriptor];
  v14 = [v13 platterTargetBundleIdentifier];
  v15 = [v12 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v16 = SBLogActivity();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v8 identifier];
      v22 = [v10 identifier];
      v43 = 138543618;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      v23 = "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Not swapping items because bundle identifiers doesn't match";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v16 = [v8 identifier];
  if (v5 && [(SBActivitySystemApertureElementObserver *)self _activityAlertIsPendingForIdentifier:v16])
  {
    v17 = SBLogActivity();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 identifier];
      v19 = [v10 identifier];
      v43 = 138543618;
      v44 = v18;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Swapping items because alert is pending", &v43, 0x16u);
    }

    v20 = 1;
  }

  else
  {
    alertingAssertionsByActivityIdentifier = self->_alertingAssertionsByActivityIdentifier;
    v25 = [v10 identifier];
    v26 = [(NSMutableDictionary *)alertingAssertionsByActivityIdentifier objectForKey:v25];

    if (v26)
    {
      v17 = SBLogActivity();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v8 identifier];
        v28 = [v10 identifier];
        v43 = 138543618;
        v44 = v27;
        v45 = 2114;
        v46 = v28;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Not swapping items because swapped item is alerting", &v43, 0x16u);
      }

      v20 = 0;
    }

    else
    {
      v17 = [v10 identifier];
      v29 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKeyedSubscript:v17];
      v30 = SBLogActivity();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        if (v31)
        {
          v32 = [v8 identifier];
          v33 = [v10 identifier];
          [v8 relevanceScore];
          v35 = v34;
          [v10 relevanceScore];
          v43 = 138544130;
          v44 = v32;
          v45 = 2114;
          v46 = v33;
          v47 = 2048;
          v48 = v35;
          v49 = 2048;
          v50 = v36;
          _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Checking relevance scores for swapping decision: Swapping Activity Relevance Score: %f, Swapped Activity Relevance Score: %f", &v43, 0x2Au);
        }

        [v8 relevanceScore];
        v38 = v37;
        [v10 relevanceScore];
        v20 = v38 > v39;
      }

      else
      {
        if (v31)
        {
          v40 = [v8 identifier];
          v41 = [v10 identifier];
          v43 = 138543618;
          v44 = v40;
          v45 = 2114;
          v46 = v41;
          _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "[Swapping Activity: %{public}@, Swapped Activity: %{public}@] Not swapping items because no element found for registered item", &v43, 0x16u);
        }

        v20 = 0;
      }
    }
  }

LABEL_28:
  return v20;
}

- (void)_swapItemWithRegisteredItemIfNecessary:(id)a3 itemAlerting:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [v9 descriptor];
  v7 = [v6 platterTargetBundleIdentifier];

  v8 = [(SBActivitySystemApertureElementObserver *)self _activatedElementItemForBundleIdentifier:v7];
  if ([(SBActivitySystemApertureElementObserver *)self _shouldSwapActivityItem:v9 withOtherItem:v8 itemAlerting:v4])
  {
    [(SBActivitySystemApertureElementObserver *)self _swapActivityItem:v9 withItem:v8];
    [(SBActivitySystemApertureElementObserver *)self _removePendingItem:v9 withPendingAlerts:0];
  }
}

- (void)_swapActivityItem:(id)a3 withItem:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = SBLogActivity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 identifier];
      v11 = [v6 descriptor];
      v12 = [v11 platterTargetBundleIdentifier];
      v13 = [v8 identifier];
      v14 = [v8 descriptor];
      v15 = [v14 platterTargetBundleIdentifier];
      *buf = 138544130;
      v21 = v10;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Swapping item [ActivityID: %{public}@, BundleID: %{public}@] with other item [ActivityID: %{public}@, BundleID: %{public}@]", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SBActivitySystemApertureElementObserver__swapActivityItem_withItem___block_invoke;
    v16[3] = &unk_2783AFD20;
    objc_copyWeak(&v19, buf);
    v17 = v8;
    v18 = v6;
    [(SBActivitySystemApertureElementObserver *)self _invalidateSystemApertureElementForItem:v17 completion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __70__SBActivitySystemApertureElementObserver__swapActivityItem_withItem___block_invoke(id *a1, void *a2, char a3)
{
  v5 = a2;
  objc_copyWeak(&v8, a1 + 6);
  v9 = a3;
  v6 = a1[4];
  v7 = a1[5];
  BSDispatchMain();

  objc_destroyWeak(&v8);
}

void __70__SBActivitySystemApertureElementObserver__swapActivityItem_withItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      [WeakRetained _removeSystemApertureSceneHandleWithItem:*(a1 + 32)];
    }

    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __70__SBActivitySystemApertureElementObserver__swapActivityItem_withItem___block_invoke_3;
    v5[3] = &unk_2783A8BF0;
    v5[4] = v3;
    v6 = v4;
    [v3 _createAndActivateElementForActivityItem:v6 forAlerting:0 completion:v5];
  }
}

void __70__SBActivitySystemApertureElementObserver__swapActivityItem_withItem___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) identifier];
    [v2 _presentPendingAlertIfNecessaryForActivityIdentifier:v3];
  }
}

- (BOOL)_activityAlertIsPendingForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_pendingAlerts;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) item];
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_activityIsPendingForIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_pendingItems;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        v10 = [v9 isEqualToString:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_addPendingItemIfNecessary:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(NSMutableArray *)self->_pendingItems containsObject:v4]& 1) == 0 && ![(SBActivitySystemApertureElementObserver *)self _activityHasSwappedScene:v4])
  {
    v5 = SBLogActivity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 identifier];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] added to pending activities", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_pendingItems addObject:v4];
  }
}

- (void)_updatePendingItemWithItem:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  pendingItems = self->_pendingItems;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __70__SBActivitySystemApertureElementObserver__updatePendingItemWithItem___block_invoke;
  v11 = &unk_2783B4800;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  [(NSMutableArray *)pendingItems enumerateObjectsUsingBlock:&v8];
  v7 = v15[3];
  if (v7 == -1)
  {
    [(SBActivitySystemApertureElementObserver *)self _addPendingItemIfNecessary:v6, v8, v9, v10, v11];
  }

  else
  {
    [(NSMutableArray *)self->_pendingItems replaceObjectAtIndex:v7 withObject:v6, v8, v9, v10, v11];
  }

  _Block_object_dispose(&v14, 8);
}

void __70__SBActivitySystemApertureElementObserver__updatePendingItemWithItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_removePendingItem:(id)a3 withPendingAlerts:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSMutableArray *)self->_pendingItems containsObject:v6])
  {
    [(NSMutableArray *)self->_pendingItems removeObject:v6];
    if (v4)
    {
      pendingAlerts = self->_pendingAlerts;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __80__SBActivitySystemApertureElementObserver__removePendingItem_withPendingAlerts___block_invoke;
      v14[3] = &unk_2783B4828;
      v8 = v6;
      v15 = v8;
      v9 = [(NSMutableOrderedSet *)pendingAlerts bs_firstObjectPassingTest:v14];
      if (v9)
      {
        v10 = SBLogActivity();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v8 identifier];
          *buf = 138543362;
          v17 = v11;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] removed from pending alert for this item", buf, 0xCu);
        }

        [(NSMutableOrderedSet *)self->_pendingAlerts removeObject:v9];
      }
    }

    v12 = SBLogActivity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 identifier];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] removed from pending activities", buf, 0xCu);
    }
  }
}

BOOL __80__SBActivitySystemApertureElementObserver__removePendingItem_withPendingAlerts___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = v4 == v5;

  return v6;
}

- (BOOL)_activityHasDifferentAlertSceneTarget:(id)a3
{
  v3 = a3;
  v4 = [v3 descriptor];
  v5 = [v4 alertSceneTargetBundleIdentifiers];

  v6 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:2];
  v7 = [v5 objectForKey:v6];
  v8 = [v3 descriptor];

  v9 = [v8 platterTargetBundleIdentifier];

  if (v7)
  {
    v10 = [v9 isEqualToString:v7] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_swapToAlertSceneForActivityItem:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 identifier];
    *buf = 138543362;
    v17 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] swapping to alerting scene", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__SBActivitySystemApertureElementObserver__swapToAlertSceneForActivityItem_completion___block_invoke;
  v12[3] = &unk_2783B4788;
  objc_copyWeak(&v15, buf);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [(SBActivitySystemApertureElementObserver *)self _invalidateSystemApertureElementForItem:v10 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __87__SBActivitySystemApertureElementObserver__swapToAlertSceneForActivityItem_completion___block_invoke(id *a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (a3)
  {
    v7 = *(WeakRetained + 12);
    v8 = [a1[4] identifier];
    [v7 addObject:v8];

    [v6 _removeSystemApertureSceneHandleWithItem:a1[4]];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__SBActivitySystemApertureElementObserver__swapToAlertSceneForActivityItem_completion___block_invoke_2;
    v11[3] = &unk_2783A9C70;
    v9 = a1[4];
    v12 = a1[5];
    [v6 _createAndActivateElementForActivityItem:v9 forAlerting:1 completion:v11];
  }

  else
  {
    v10 = a1[5];
    if (v10)
    {
      v10[2](v10, 0);
    }
  }
}

uint64_t __87__SBActivitySystemApertureElementObserver__swapToAlertSceneForActivityItem_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_activityHasSwappedScene:(id)a3
{
  v4 = [a3 identifier];
  LOBYTE(self) = [(NSMutableSet *)self->_activitiesWithSwappedScenes containsObject:v4];

  return self;
}

- (id)_createSystemApertureSceneHandleWithItem:(id)a3 forAlerting:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v6 descriptor];
  v8 = [v7 activityIdentifier];
  v9 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKey:v8];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x277CCACA8];
    v12 = [v6 identifier];
    v13 = [v11 stringWithFormat:@"[ActivityID: %@] Active system aperture scene handle found while creating a new system aperture scene handle", v12];
  }

  else
  {
    v10 = [(SBActivitySystemApertureElementObserver *)self _createSceneHandle:v6 forAlerting:v4];
    [(SBActivitySystemApertureElementObserver *)self _storeSceneHandle:v10 item:v6];
  }

  return v10;
}

- (id)_createSceneHandle:(id)a3 forAlerting:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogActivity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Creating a system aperture scene handle", &v11, 0xCu);
  }

  v8 = [v5 descriptor];
  v9 = [[SBActivitySystemApertureSceneHandle alloc] initWithDescriptor:v8 configuringForAlertTarget:v4];

  return v9;
}

- (void)_storeSceneHandle:(id)a3 item:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 identifier];
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Storing scene handle", &v18, 0xCu);
  }

  if (v6)
  {
    v10 = [v7 descriptor];
    v11 = [v10 activityIdentifier];
    [v6 setDelegate:self];
    v12 = [v6 isForAlertTarget];
    v13 = 8;
    if (v12)
    {
      v13 = 16;
    }

    [*(&self->super.isa + v13) setObject:v6 forKey:v11];
    [(NSMutableDictionary *)self->_activeItemByActivityIdentifier setObject:v7 forKeyedSubscript:v11];
    if (![v10 contentType])
    {
      activeWidgetActivitiesWithSceneHandles = self->_activeWidgetActivitiesWithSceneHandles;
      v15 = [v10 activityIdentifier];
      [(NSMutableSet *)activeWidgetActivitiesWithSceneHandles addObject:v15];
    }

    v16 = SBLogActivity();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v7 identifier];
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Scene handle stored successfully", &v18, 0xCu);
    }
  }
}

- (void)_removeSystemApertureSceneHandleWithItem:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 descriptor];
  v6 = [v5 activityIdentifier];
  v7 = [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier objectForKey:v6];
  [(NSMutableDictionary *)self->_activeItemByActivityIdentifier removeObjectForKey:v6];
  if (v7)
  {
    [v7 invalidate];
    [(NSMutableDictionary *)self->_sceneHandleByActivityIdentifier removeObjectForKey:v6];
  }

  v8 = [(NSMutableDictionary *)self->_alertSceneHandlesByActivityIdentifier objectForKey:v6];
  [v8 invalidate];
  [(NSMutableDictionary *)self->_alertSceneHandlesByActivityIdentifier removeObjectForKey:v6];
  [(NSMutableDictionary *)self->_contentPayloadIDsByActivityIdentifier removeObjectForKey:v6];
  v9 = [v4 identifier];
  v10 = [(SBActivitySystemApertureElementObserver *)self _isActivityOngoing:v9];

  if (v10)
  {
    [(SBActivitySystemApertureElementObserver *)self _addPendingItemIfNecessary:v4];
  }

  else
  {
    [(SBActivitySystemApertureElementObserver *)self _removePendingItem:v4 withPendingAlerts:1];
  }

  pendingAlerts = self->_pendingAlerts;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__SBActivitySystemApertureElementObserver__removeSystemApertureSceneHandleWithItem___block_invoke;
  v19[3] = &unk_2783B4850;
  v12 = v6;
  v20 = v12;
  v13 = [(NSMutableOrderedSet *)pendingAlerts indexOfObjectPassingTest:v19];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v13;
    if ([(NSMutableOrderedSet *)self->_pendingAlerts count]> v13 && !v10)
    {
      [(NSMutableOrderedSet *)self->_pendingAlerts removeObjectAtIndex:v14];
    }
  }

  activeWidgetActivitiesWithSceneHandles = self->_activeWidgetActivitiesWithSceneHandles;
  v16 = [v5 activityIdentifier];
  LODWORD(activeWidgetActivitiesWithSceneHandles) = [(NSMutableSet *)activeWidgetActivitiesWithSceneHandles containsObject:v16];

  if (activeWidgetActivitiesWithSceneHandles)
  {
    v17 = self->_activeWidgetActivitiesWithSceneHandles;
    v18 = [v5 activityIdentifier];
    [(NSMutableSet *)v17 removeObject:v18];
  }
}

uint64_t __84__SBActivitySystemApertureElementObserver__removeSystemApertureSceneHandleWithItem___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 item];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (a3)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (void)_updateSystemApertureElementProminence:(BOOL)a3 item:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  BSDispatchQueueAssertMain();
  v7 = [v6 identifier];
  if (v4 && self->_activityEnvironment == 1)
  {
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Environment is ambient, system aperture element can't become prominent", &v17, 0xCu);
    }
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_prominenceStateByActivityIdentifier objectForKeyedSubscript:v7];
    v9 = [v8 BOOLValue];
    v10 = SBLogActivity();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBOOL();
      v12 = NSStringFromBOOL();
      v17 = 138543874;
      v18 = v7;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Prominence state update: %@, current prominence state: %@", &v17, 0x20u);
    }

    if (v9 != v4)
    {
      v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:v4];
      [(NSMutableDictionary *)self->_prominenceStateByActivityIdentifier setObject:v13 forKeyedSubscript:v7];

      v14 = [[SBActivityAlert alloc] initWithItem:v6 payloadIdentifier:0 options:0 title:0 body:0];
      [(SBActivityAlert *)v14 setProminent:1];
      v15 = SBLogActivity();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        if (v16)
        {
          v17 = 138543362;
          v18 = v7;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Presenting a prominent alert", &v17, 0xCu);
        }

        [(SBActivitySystemApertureElementObserver *)self presentAlert:v14];
      }

      else
      {
        if (v16)
        {
          v17 = 138543362;
          v18 = v7;
          _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Dismissing a prominent alert", &v17, 0xCu);
        }

        [(SBActivitySystemApertureElementObserver *)self dismissAlert:v14];
      }
    }
  }
}

- (void)_createAndActivateSystemApertureElementWithScene:(id)a3 item:(id)a4 forAlerting:(BOOL)a5 completion:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v9 = a4;
  v10 = a6;
  v36 = v9;
  v11 = [v9 descriptor];
  v12 = [v11 activityIdentifier];
  v13 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = SBLogActivity();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SBActivitySystemApertureElementObserver _createAndActivateSystemApertureElementWithScene:item:forAlerting:completion:];
    }

    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v30 = [SBApp systemApertureControllerForMainDisplay];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke;
    v56[3] = &unk_2783AD528;
    v32 = v37;
    v57 = v32;
    v35 = MEMORY[0x223D6F7F0](v56);
    v15 = [SBSystemApertureSceneElement activePlaceholderElementPassingTest:v35];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_2;
    v53[3] = &unk_2783B4878;
    v34 = v12;
    v54 = v34;
    v16 = v10;
    v55 = v16;
    v33 = MEMORY[0x223D6F7F0](v53);
    if (!v15)
    {
      v17 = self;
      v18 = [SBSystemApertureSceneElement alloc];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_3;
      v48[3] = &unk_2783B48C8;
      v48[4] = v17;
      v49 = v34;
      v50 = v30;
      v51 = v33;
      v52 = v16;
      v15 = [(SBSystemApertureSceneElement *)v18 initWithScene:v32 statusBarBackgroundActivitiesSuppresser:v50 readyForPresentationHandler:v48];
    }

    v19 = objc_alloc_init(SBSystemApertureSceneElementConfiguration);
    [(SBSystemApertureSceneElementConfiguration *)v19 setAllowsSceneReactivation:1];
    if (![v11 contentType])
    {
      v20 = [MEMORY[0x277D67D08] defaultMetrics];
      v21 = [v20 systemApertureMetrics];

      v22 = [v21 expandedMetricsRequest];
      v23 = [v22 heightRequest];
      [v23 maximum];
      [(SBSystemApertureSceneElementConfiguration *)v19 setMaximumHeight:?];
    }

    [(NSMutableDictionary *)self->_elementByActivityIdentifier setObject:v15 forKeyedSubscript:v34, v30];
    v24 = [(SBSystemApertureSceneElement *)v15 isActivated];
    v25 = SBLogActivity();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (v26)
      {
        *buf = 138543362;
        v59 = v34;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Update System Aperture element with connected scene", buf, 0xCu);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_74;
      v38[3] = &unk_2783B48F0;
      v38[4] = self;
      v39 = v33;
      [(SBSystemApertureSceneElement *)v15 updateWithConnectedScene:v32 configuration:v19 elementAssertionAcquisitionHandler:v38];
    }

    else
    {
      if (v26)
      {
        *buf = 138543362;
        v59 = v34;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] System Aperture element is not activated. Activating...", buf, 0xCu);
      }

      [(SBSystemApertureSceneElement *)v15 setConfiguration:v19];
      v27 = [v32 clientHandle];
      v28 = v27 == 0;

      if (v28)
      {
        v29 = SBLogActivity();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v59 = v34;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Activating System Aperture element with deferred check for existing placeholder", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        objc_initWeak(&location, v15);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_70;
        v40[3] = &unk_2783B4918;
        objc_copyWeak(&v45, buf);
        v41 = v34;
        v42 = v32;
        v43 = v19;
        v44 = v33;
        objc_copyWeak(&v46, &location);
        [(SBSystemApertureSceneElement *)v15 activateWithPostActivationPlaceholderTest:v35 foundPlaceholderHandler:v40];
        objc_destroyWeak(&v46);

        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else
      {
        [(SBSystemApertureSceneElement *)v15 activate];
      }
    }
  }
}

uint64_t __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientHandle];
  v5 = [v4 bundleIdentifier];

  v6 = [*(a1 + 32) clientSettings];
  v7 = [v6 SBUISA_elementIdentifier];
  v8 = v7;
  v9 = *MEMORY[0x277D67FF0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v3 clientIdentifier];
  if ([v5 isEqualToString:v11])
  {
    v12 = [v3 elementIdentifier];
    v13 = [v10 isEqualToString:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = *(a1 + 32);
  v7 = a2;
  [v5 setObject:a3 forKeyedSubscript:v6];
  [v7 _presentPendingAlertIfNecessaryForActivityIdentifier:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v5 = a1[5];
  v6 = a1[6];
  v7 = v3;
  v8 = a1[7];
  v9 = a1[8];
  v4 = v3;
  BSDispatchMain();
}

void __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 80) == 1)
  {
    v3 = SBLogActivity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] System aperture element is ready for presentation", &v9, 0xCu);
    }

    v5 = [*(a1 + 48) registerElement:*(a1 + 56)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = SBLogActivity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] System aperture element is NOT yet ready for presentation", &v9, 0xCu);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

void __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_70(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = SBLogActivity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Placeholder System Aperture element found, updating it with connected scene", buf, 0xCu);
    }

    [WeakRetained[4] setObject:v3 forKeyedSubscript:*(a1 + 32)];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __120__SBActivitySystemApertureElementObserver__createAndActivateSystemApertureElementWithScene_item_forAlerting_completion___block_invoke_71;
    v13 = &unk_2783B48F0;
    v15 = *(a1 + 56);
    v14 = WeakRetained;
    [v3 updateWithConnectedScene:v7 configuration:v8 elementAssertionAcquisitionHandler:&v10];
    v9 = objc_loadWeakRetained((a1 + 72));
    [v9 deactivateWhenRemovedWithHandler:{0, v10, v11, v12, v13}];
  }
}

- (void)_invalidateSystemApertureElementForItem:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 descriptor];
  v9 = [v8 activityIdentifier];
  v10 = SBLogActivity();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Invalidating system aperture element", buf, 0xCu);
  }

  v11 = [(NSMutableDictionary *)self->_elementAssertionByActivityIdentifier objectForKeyedSubscript:v9];
  v12 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v9];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke;
  v30[3] = &unk_2783A8ED8;
  v13 = v11;
  v31 = v13;
  v14 = v9;
  v32 = v14;
  v33 = self;
  v15 = MEMORY[0x223D6F7F0](v30);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_2;
  v28[3] = &unk_2783B4940;
  v16 = v7;
  v29 = v16;
  v17 = MEMORY[0x223D6F7F0](v28);
  if ([v12 isDeactivating])
  {
    v18 = SBLogActivity();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v14;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Invalidating system aperture element - already deactivated", buf, 0xCu);
    }

    (v17)[2](v17, v12, 0);
  }

  else if ([v12 isActivated] && (objc_msgSend(v12, "isDeactivating") & 1) == 0)
  {
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_78;
    v24 = &unk_2783B4990;
    v19 = v14;
    v25 = v19;
    v26 = v15;
    v27 = v17;
    [v12 deactivateWhenRemovedWithHandler:&v21];
    if (v13 && [v13 isValid])
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ActivityID: %@] ended", v19, v21, v22, v23, v24, v25, v26];
      [v13 invalidateWithReason:v20];
    }
  }

  else
  {
    [(SBActivitySystemApertureElementObserver *)self _removeSystemApertureSceneHandleWithItem:v6];
    [(SBActivitySystemApertureElementObserver *)self _registerSystemApertureElementForPendingActivityIfNecessary];
    v15[2](v15);
    (v17)[2](v17, v12, 1);
  }
}

uint64_t __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2 && [v2 isValid])
  {
    v3 = a1[4];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ActivityID: %@] ended", a1[5]];
    [v3 invalidateWithReason:v4];
  }

  [*(a1[6] + 24) removeObjectForKey:a1[5]];
  [*(a1[6] + 32) removeObjectForKey:a1[5]];
  v5 = a1[5];
  v6 = *(a1[6] + 56);

  return [v6 removeObjectForKey:v5];
}

uint64_t __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_78(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_2_79;
  v5[3] = &unk_2783B4968;
  v6 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __94__SBActivitySystemApertureElementObserver__invalidateSystemApertureElementForItem_completion___block_invoke_2_79(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogActivity();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Element deactivated", &v5, 0xCu);
  }

  (*(a1[6] + 16))();
  return (*(a1[7] + 16))();
}

- (void)_unlockAndLaunchAppIfPossible:(id)a3 withAction:(id)a4
{
  v27[4] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 descriptor];
  v8 = [v7 activityIdentifier];
  v9 = [v7 platterTargetBundleIdentifier];
  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_elementByActivityIdentifier objectForKeyedSubscript:v8];
    v11 = v10;
    if (v10 && ([v10 isActivated]& 1) != 0)
    {
      if ([v11 layoutMode]<= 0)
      {
        v14 = SBLogActivity();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [SBActivitySystemApertureElementObserver _unlockAndLaunchAppIfPossible:withAction:];
        }
      }

      else
      {
        v12 = MEMORY[0x277D0AD60];
        v26[0] = *MEMORY[0x277D0ABD0];
        if (v6)
        {
          v25 = v6;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
        }

        else
        {
          v13 = MEMORY[0x277CBEBF8];
        }

        v15 = *MEMORY[0x277D0AC28];
        v26[1] = *MEMORY[0x277D0AC58];
        v26[2] = v15;
        v26[3] = *MEMORY[0x277D0AC70];
        v27[0] = v13;
        v27[1] = MEMORY[0x277CBEC38];
        v27[2] = *MEMORY[0x277D67088];
        v27[3] = MEMORY[0x277CBEC38];
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:4];
        v14 = [v12 optionsWithDictionary:v16];

        if (v6)
        {
        }

        v17 = SBLogActivity();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543619;
          v22 = v8;
          v23 = 2113;
          v24 = v6;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Sending open application request for %{private}@", buf, 0x16u);
        }

        v18 = SBSCreateOpenApplicationService();
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __84__SBActivitySystemApertureElementObserver__unlockAndLaunchAppIfPossible_withAction___block_invoke;
        v19[3] = &unk_2783B49B8;
        v20 = v8;
        [v18 openApplication:v9 withOptions:v14 completion:v19];
      }
    }

    else
    {
      v14 = SBLogActivity();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [SBActivitySystemApertureElementObserver _unlockAndLaunchAppIfPossible:withAction:];
      }
    }
  }

  else
  {
    v11 = SBLogActivity();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SBActivitySystemApertureElementObserver _unlockAndLaunchAppIfPossible:withAction:];
    }
  }
}

void __84__SBActivitySystemApertureElementObserver__unlockAndLaunchAppIfPossible_withAction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__SBActivitySystemApertureElementObserver__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Open application succeeded.", &v8, 0xCu);
  }
}

- (void)systemApertureSceneHandle:(id)a3 updatedContentPayloadID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SBActivitySystemApertureElementObserver_systemApertureSceneHandle_updatedContentPayloadID___block_invoke;
  block[3] = &unk_2783A8ED8;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__SBActivitySystemApertureElementObserver_systemApertureSceneHandle_updatedContentPayloadID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) descriptor];
  v3 = [v2 activityIdentifier];

  v4 = *(a1 + 40);
  v5 = SBLogActivity();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Updated payload ID received: %{public}@", buf, 0x16u);
    }

    v8 = [*(*(a1 + 48) + 48) objectForKeyedSubscript:v3];
    v5 = v8;
    if (v8)
    {
      [v8 addObject:*(a1 + 40)];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{*(a1 + 40), 0}];
      [*(*(a1 + 48) + 48) setObject:v9 forKeyedSubscript:v3];
    }

    [*(a1 + 48) _presentPendingAlertIfNecessaryForActivityIdentifier:v3];
  }

  else if (v6)
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] No payload ID received.", buf, 0xCu);
  }
}

- (void)_createAndActivateElementForActivityItem:(uint64_t)a1 forAlerting:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBActivitySystemApertureElementObserver.m" lineNumber:299 description:@"Activity cannot be started in system aperture if it doesn't have a system aperture destination or an identifier"];

  if (a3)
  {
    v7 = *(a3 + 16);

    v7(a3, 0);
  }
}

- (void)_presentAlert:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBActivitySystemApertureElementObserver.m" lineNumber:508 description:@"Cannot present an alert when an alert is active or content is not ready"];
}

- (void)_presentAlert:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 description];
  v6 = 138543618;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[ActivityID: %{public}@] alerting assertion cannot be requested for element %@", &v6, 0x16u);
}

void __84__SBActivitySystemApertureElementObserver__unlockAndLaunchAppIfPossible_withAction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "[ActivityID: %{public}@] Open application failed: %{public}@", &v4, 0x16u);
}

@end