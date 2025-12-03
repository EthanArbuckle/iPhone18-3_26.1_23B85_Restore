@interface SBActivityManager
+ (SBActivityManager)sharedInstance;
- (ACActivityProminenceListener)prominenceListener;
- (NSMutableDictionary)prominenceAssertionByActivityIdentifier;
- (SBActivityManager)init;
- (id)_activityLifecyclePayloadWithContentUpdate:(id)update;
- (id)lastRedisplayableActivityForBundleId:(id)id;
- (void)_activityBlocked:(BOOL)blocked item:(id)item;
- (void)_activityDismissedWithContentUpdate:(id)update;
- (void)_activityFinishedWithContentUpdate:(id)update;
- (void)_activityStartedOrUpdatedWithContentUpdate:(id)update;
- (void)_addAppActivitiesRecordForBundleId:(id)id item:(id)item;
- (void)_dismissActivityAlert:(id)alert;
- (void)_handleActivityExceedingReducedPushBudgetWithIdentifier:(id)identifier;
- (void)_handleActivityWithContentUpdate:(id)update;
- (void)_hideAllActivities:(BOOL)activities;
- (void)_invalidateAllProminenceAssertion;
- (void)_invalidateProminenceAssertionForActivityIdenfier:(id)idenfier;
- (void)_presentActivityAlert:(id)alert;
- (void)_publishProminenceUpdate:(BOOL)update item:(id)item;
- (void)_queue_invalidateProminenceAssertionForActivityIdenfier:(id)idenfier;
- (void)_removeAllObservers;
- (void)_removeAppActivitiesRecordForBundleId:(id)id item:(id)item;
- (void)_sendAnalyticsLifecycleEventIfNecessaryWithContentUpdate:(id)update;
- (void)_stopActiveAlertForActivityIdentifier:(id)identifier;
- (void)_updateAllApplicationMonitoringPolicies;
- (void)_updateForScreenTimeLimitForBundleId:(id)id policy:(id)policy;
- (void)activityAlertClient:(id)client dismissAlertProvider:(id)provider;
- (void)activityAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion;
- (void)addObserver:(id)observer;
- (void)alertPresentationFailed:(id)failed;
- (void)cancelObservingActivityUpdates;
- (void)dealloc;
- (void)preventPresentableFromRevoke:(BOOL)revoke forBundleId:(id)id;
- (void)redisplayActivity:(id)activity;
- (void)removeObserver:(id)observer;
- (void)setEnvironment:(int64_t)environment;
- (void)setProminenceAssertionByActivityIdentifier:(id)identifier;
- (void)setProminenceListener:(id)listener;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)startObservingActivityUpdates;
@end

@implementation SBActivityManager

void __50__SBActivityManager_startObservingActivityUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __50__SBActivityManager_startObservingActivityUpdates__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleActivityWithContentUpdate:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (SBActivityManager)init
{
  v35.receiver = self;
  v35.super_class = SBActivityManager;
  v2 = [(SBActivityManager *)&v35 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activityCenter = v2->_activityCenter;
    v2->_activityCenter = v3;

    v5 = objc_alloc_init(MEMORY[0x277CE9568]);
    activityAlertClient = v2->_activityAlertClient;
    v2->_activityAlertClient = v5;

    weakToWeakObjectsMapTable = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    bannerPresentableByActivityIdentifier = v2->_bannerPresentableByActivityIdentifier;
    v2->_bannerPresentableByActivityIdentifier = weakToWeakObjectsMapTable;

    v9 = objc_opt_new();
    itemByActivityIdentifier = v2->_itemByActivityIdentifier;
    v2->_itemByActivityIdentifier = v9;

    v11 = +[SBSoundController sharedInstance];
    soundController = v2->_soundController;
    v2->_soundController = v11;

    v37 = 0;
    v38 = &v37;
    v39 = 0x2050000000;
    v13 = getDMFApplicationPolicyMonitorClass_softClass;
    v40 = getDMFApplicationPolicyMonitorClass_softClass;
    if (!getDMFApplicationPolicyMonitorClass_softClass)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __getDMFApplicationPolicyMonitorClass_block_invoke;
      v36[3] = &unk_2783A9718;
      v36[4] = &v37;
      __getDMFApplicationPolicyMonitorClass_block_invoke(v36);
      v13 = v38[3];
    }

    v14 = v13;
    _Block_object_dispose(&v37, 8);
    v15 = [v13 alloc];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __25__SBActivityManager_init__block_invoke;
    v33 = &unk_2783A8C18;
    v16 = v2;
    v34 = v16;
    v17 = [v15 initWithPolicyChangeHandler:&v30];
    applicationPolicyMonitor = v16->_applicationPolicyMonitor;
    v16->_applicationPolicyMonitor = v17;

    v16->_environment = 0;
    v19 = [SBLiveActivityDomain rootSettings:v30];
    activitySettings = v16->_activitySettings;
    v16->_activitySettings = v19;

    [(PTSettings *)v16->_activitySettings addKeyPathObserver:v16];
    Serial = BSDispatchQueueCreateSerial();
    activityProminenceQueue = v16->_activityProminenceQueue;
    v16->_activityProminenceQueue = Serial;

    v23 = objc_opt_new();
    queue_prominenceListener = v16->_queue_prominenceListener;
    v16->_queue_prominenceListener = v23;

    v25 = objc_opt_new();
    queue_prominenceAssertionByActivityIdentifier = v16->_queue_prominenceAssertionByActivityIdentifier;
    v16->_queue_prominenceAssertionByActivityIdentifier = v25;

    v27 = objc_opt_new();
    prominenceStateByActivityIdentifier = v16->_prominenceStateByActivityIdentifier;
    v16->_prominenceStateByActivityIdentifier = v27;
  }

  return v2;
}

void __25__SBActivityManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

- (void)dealloc
{
  [(SBActivityManager *)self cancelObservingActivityUpdates];
  [(NSMutableDictionary *)self->_itemByActivityIdentifier removeAllObjects];
  itemByActivityIdentifier = self->_itemByActivityIdentifier;
  self->_itemByActivityIdentifier = 0;

  [(NSMutableDictionary *)self->_itemsByBundleIdentifier removeAllObjects];
  itemsByBundleIdentifier = self->_itemsByBundleIdentifier;
  self->_itemsByBundleIdentifier = 0;

  [(NSMapTable *)self->_bannerPresentableByActivityIdentifier removeAllObjects];
  bannerPresentableByActivityIdentifier = self->_bannerPresentableByActivityIdentifier;
  self->_bannerPresentableByActivityIdentifier = 0;

  v6.receiver = self;
  v6.super_class = SBActivityManager;
  [(SBActivityManager *)&v6 dealloc];
}

+ (SBActivityManager)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[SBActivityManager sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

void __35__SBActivityManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBActivityManager);
  v1 = sharedInstance___instance_1;
  sharedInstance___instance_1 = v0;
}

- (void)startObservingActivityUpdates
{
  v3 = SBLogActivity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Start observing activity updates", buf, 2u);
  }

  if (!self->_activitySubscription)
  {
    objc_initWeak(buf, self);
    activityCenter = self->_activityCenter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__SBActivityManager_startObservingActivityUpdates__block_invoke;
    v12[3] = &unk_2783B1230;
    objc_copyWeak(&v13, buf);
    v5 = [(ACActivityCenter *)activityCenter observeContentUpdatesWithHandler:v12];
    activitySubscription = self->_activitySubscription;
    self->_activitySubscription = v5;

    [(ACUISActivityAlertClient *)self->_activityAlertClient setDelegate:self];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  if (!self->_activityExceedingReducedPushBudgetSubscription)
  {
    objc_initWeak(buf, self);
    v7 = self->_activityCenter;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__SBActivityManager_startObservingActivityUpdates__block_invoke_3;
    v10[3] = &unk_2783B1258;
    objc_copyWeak(&v11, buf);
    v8 = [(ACActivityCenter *)v7 observeActivitiesExceedingReducedPushBudgetWithHandler:v10];
    activityExceedingReducedPushBudgetSubscription = self->_activityExceedingReducedPushBudgetSubscription;
    self->_activityExceedingReducedPushBudgetSubscription = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __50__SBActivityManager_startObservingActivityUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleActivityExceedingReducedPushBudgetWithIdentifier:v5];
  }
}

- (void)cancelObservingActivityUpdates
{
  v3 = SBLogActivity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Cancel observing activity updates", v9, 2u);
  }

  activitySubscription = self->_activitySubscription;
  if (activitySubscription)
  {
    [(BSInvalidatable *)activitySubscription invalidate];
    [(BSInvalidatable *)self->_activityAlertSubscription invalidate];
    [(BSInvalidatable *)self->_activityExceedingReducedPushBudgetSubscription invalidate];
    activityExceedingReducedPushBudgetSubscription = self->_activityExceedingReducedPushBudgetSubscription;
    self->_activityExceedingReducedPushBudgetSubscription = 0;

    v6 = self->_activitySubscription;
    self->_activitySubscription = 0;

    activityAlertSubscription = self->_activityAlertSubscription;
    self->_activityAlertSubscription = 0;

    [(SBActivityManager *)self _invalidateAllProminenceAssertion];
    prominenceAssertionByActivityIdentifier = [(SBActivityManager *)self prominenceAssertionByActivityIdentifier];
    [prominenceAssertionByActivityIdentifier removeAllObjects];

    [(SBActivityManager *)self _removeAllObservers];
  }
}

- (void)setEnvironment:(int64_t)environment
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_environment != environment)
  {
    v5 = SBLogActivity();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"ambient";
      if (!environment)
      {
        v6 = @"none";
      }

      *buf = 138412290;
      v9 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Activity environment changed: %@", buf, 0xCu);
    }

    self->_environment = environment;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SBActivityManager_setEnvironment___block_invoke;
    v7[3] = &unk_2783A8BC8;
    v7[4] = self;
    v7[5] = environment;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __36__SBActivityManager_setEnvironment___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 16) copy];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v14 = *v20;
    do
    {
      v4 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v19 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          [v5 activityEnvironmentChanged:*(a1 + 40)];
        }

        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = [*(a1 + 32) prominenceAssertionByActivityIdentifier];
        v7 = [v6 allKeys];

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            v11 = 0;
            do
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(a1 + 32) + 112) objectForKey:*(*(&v15 + 1) + 8 * v11)];
              if ([v5 shouldHandleActivityItem:v12])
              {
                [*(a1 + 32) _publishProminenceUpdate:0 item:v12];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        ++v4;
      }

      while (v4 != v3);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }
}

- (void)alertPresentationFailed:(id)failed
{
  v21 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    item = [failedCopy item];
    identifier = [item identifier];
    *buf = 138543362;
    v20 = identifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alert presentation failed for original destination. Looking for fallback destination.", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 presentFallbackAlert:failedCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_handleActivityWithContentUpdate:(id)update
{
  v9 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  BSDispatchQueueAssertMain();
  [(SBActivityManager *)self _sendAnalyticsLifecycleEventIfNecessaryWithContentUpdate:updateCopy];
  state = [updateCopy state];
  if (state == 2)
  {
    [(SBActivityManager *)self _activityDismissedWithContentUpdate:updateCopy];
  }

  else if (state == 1)
  {
    [(SBActivityManager *)self _activityFinishedWithContentUpdate:updateCopy];
  }

  else if (state)
  {
    v6 = SBLogActivity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      state2 = [updateCopy state];
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Unhandled activity state: %ld", &v7, 0xCu);
    }
  }

  else
  {
    [(SBActivityManager *)self _activityStartedOrUpdatedWithContentUpdate:updateCopy];
  }
}

- (void)_handleActivityExceedingReducedPushBudgetWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
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

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:identifierCopy];
        if ([v10 shouldHandleActivityItem:v11] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v10 activityDidExceedReducedPushBudget:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_activityStartedOrUpdatedWithContentUpdate:(id)update
{
  v44 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  BSDispatchQueueAssertMain();
  identifier = [updateCopy identifier];
  v6 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:identifier];
  v28 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = SBLogActivity();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = identifier;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Activity did update", buf, 0xCu);
    }

    v9 = identifier;

    [(SBActivityItem *)v7 setContentUpdate:updateCopy];
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v36 = 0u;
    v10 = [(NSHashTable *)self->_observers copy];
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          if ([v15 shouldHandleActivityItem:v7] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 activityDidUpdate:v7];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v16 = [[SBActivityItem alloc] initWithContentUpdate:updateCopy];
    v17 = SBLogActivity();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = identifier;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Activity started", buf, 0xCu);
    }

    v27 = identifier;
    [(NSMutableDictionary *)self->_itemByActivityIdentifier setObject:v16 forKey:identifier];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = [(NSHashTable *)self->_observers copy];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          if ([v23 shouldHandleActivityItem:v16] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            descriptor = [updateCopy descriptor];
            [v23 activityDidStart:v16];
            platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
            [(SBActivityManager *)self _addAppActivitiesRecordForBundleId:platterTargetBundleIdentifier item:v16];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    activityProminenceQueue = self->_activityProminenceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke;
    block[3] = &unk_2783A8ED8;
    block[4] = self;
    v9 = v27;
    v30 = v27;
    v7 = v16;
    v31 = v7;
    dispatch_async(activityProminenceQueue, block);
  }
}

void __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v3 = SBLogActivity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] listening for activity prominence changes", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v5 = *(*(a1 + 32) + 32);
    v6 = *(a1 + 40);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke_45;
    v11 = &unk_2783ABB98;
    objc_copyWeak(&v13, buf);
    v12 = *(a1 + 48);
    v7 = [v5 listenForActivityProminence:v6 withHandler:&v8];
    [*(a1 + 32) _queue_invalidateProminenceAssertionForActivityIdenfier:{*(a1 + 40), v8, v9, v10, v11}];
    [*(*(a1 + 32) + 40) setObject:v7 forKeyedSubscript:*(a1 + 40)];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke_45(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke_2;
  block[3] = &unk_2783B1280;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = a2;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __64__SBActivityManager__activityStartedOrUpdatedWithContentUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishProminenceUpdate:*(a1 + 48) item:*(a1 + 32)];
}

- (void)_activityFinishedWithContentUpdate:(id)update
{
  v22 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  BSDispatchQueueAssertMain();
  v14 = updateCopy;
  identifier = [updateCopy identifier];
  v6 = SBLogActivity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = identifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] ended", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:identifier];
        if ([v12 shouldHandleActivityItem:v13] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v12 activityDidEnd:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(SBActivityManager *)self _invalidateProminenceAssertionForActivityIdenfier:identifier];
  [(SBActivityManager *)self _stopActiveAlertForActivityIdentifier:identifier];
}

- (void)_activityDismissedWithContentUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  BSDispatchQueueAssertMain();
  v16 = updateCopy;
  identifier = [updateCopy identifier];
  v6 = SBLogActivity();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = identifier;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismissed", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:identifier];
        if ([v12 shouldHandleActivityItem:v13] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          descriptor = [v13 descriptor];
          [v12 activityDidDismiss:v13];
          platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
          [(SBActivityManager *)self _removeAppActivitiesRecordForBundleId:platterTargetBundleIdentifier item:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(SBActivityManager *)self _invalidateProminenceAssertionForActivityIdenfier:identifier];
  [(NSMutableDictionary *)self->_itemByActivityIdentifier removeObjectForKey:identifier];
  [(SBActivityManager *)self _stopActiveAlertForActivityIdentifier:identifier];
}

- (void)_stopActiveAlertForActivityIdentifier:(id)identifier
{
  v13 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  activeAlert = self->_activeAlert;
  if (activeAlert)
  {
    item = [(SBActivityAlert *)activeAlert item];
    identifier = [item identifier];
    v8 = [identifier isEqualToString:identifierCopy];

    if (v8)
    {
      v9 = SBLogActivity();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = identifierCopy;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Stopping active alert", &v11, 0xCu);
      }

      [(SBActivityAlert *)self->_activeAlert stopAlerting];
      v10 = self->_activeAlert;
      self->_activeAlert = 0;
    }
  }
}

- (void)_publishProminenceUpdate:(BOOL)update item:(id)item
{
  updateCopy = update;
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  BSDispatchQueueAssertMain();
  identifier = [itemCopy identifier];
  v8 = [(NSMutableDictionary *)self->_prominenceStateByActivityIdentifier objectForKeyedSubscript:identifier];
  bOOLValue = [v8 BOOLValue];
  if (bOOLValue == updateCopy)
  {
    v17 = bOOLValue;
    v11 = SBLogActivity();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v25 = identifier;
      v26 = 1024;
      v27 = updateCopy;
      v28 = 1024;
      v29 = v17;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Not publishing prominence state update: %{BOOL}u, current prominence state: %{BOOL}u", buf, 0x18u);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:updateCopy];
    [(NSMutableDictionary *)self->_prominenceStateByActivityIdentifier setObject:v10 forKeyedSubscript:identifier];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v18 = v8;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v16 shouldHandleActivityItem:itemCopy] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v16 activityProminenceChanged:updateCopy item:itemCopy];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
      v8 = v18;
    }
  }
}

- (void)_invalidateProminenceAssertionForActivityIdenfier:(id)idenfier
{
  idenfierCopy = idenfier;
  BSDispatchQueueAssertMain();
  objc_initWeak(&location, self);
  activityProminenceQueue = self->_activityProminenceQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SBActivityManager__invalidateProminenceAssertionForActivityIdenfier___block_invoke;
  block[3] = &unk_2783A9CE8;
  objc_copyWeak(&v9, &location);
  v6 = idenfierCopy;
  v8 = v6;
  dispatch_async(activityProminenceQueue, block);
  [(NSMutableDictionary *)self->_prominenceStateByActivityIdentifier removeObjectForKey:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__SBActivityManager__invalidateProminenceAssertionForActivityIdenfier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_invalidateProminenceAssertionForActivityIdenfier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_queue_invalidateProminenceAssertionForActivityIdenfier:(id)idenfier
{
  idenfierCopy = idenfier;
  v4 = [(NSMutableDictionary *)self->_queue_prominenceAssertionByActivityIdentifier objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
    [(NSMutableDictionary *)self->_queue_prominenceAssertionByActivityIdentifier removeObjectForKey:idenfierCopy];
  }
}

- (void)setProminenceListener:(id)listener
{
  listenerCopy = listener;
  BSDispatchQueueAssertMain();
  activityProminenceQueue = self->_activityProminenceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SBActivityManager_setProminenceListener___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(activityProminenceQueue, v7);
}

void __43__SBActivityManager_setProminenceListener___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (ACActivityProminenceListener)prominenceListener
{
  BSDispatchQueueAssertMain();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  activityProminenceQueue = self->_activityProminenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SBActivityManager_prominenceListener__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(activityProminenceQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setProminenceAssertionByActivityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  activityProminenceQueue = self->_activityProminenceQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SBActivityManager_setProminenceAssertionByActivityIdentifier___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(activityProminenceQueue, v7);
}

void __64__SBActivityManager_setProminenceAssertionByActivityIdentifier___block_invoke(uint64_t a1)
{
  if ((BSEqualDictionaries() & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

- (NSMutableDictionary)prominenceAssertionByActivityIdentifier
{
  BSDispatchQueueAssertMain();
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__31;
  v11 = __Block_byref_object_dispose__31;
  v12 = 0;
  activityProminenceQueue = self->_activityProminenceQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SBActivityManager_prominenceAssertionByActivityIdentifier__block_invoke;
  v6[3] = &unk_2783A8CE0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(activityProminenceQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __60__SBActivityManager_prominenceAssertionByActivityIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_invalidateAllProminenceAssertion
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  prominenceAssertionByActivityIdentifier = [(SBActivityManager *)self prominenceAssertionByActivityIdentifier];
  allValues = [prominenceAssertionByActivityIdentifier allValues];

  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_presentActivityAlert:(id)alert
{
  v34 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  BSDispatchQueueAssertMain();
  if (alertCopy)
  {
    item = [alertCopy item];
    identifier = [item identifier];
    payloadIdentifier = [alertCopy payloadIdentifier];
    v9 = SBLogActivity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = identifier;
      v32 = 2114;
      v33 = payloadIdentifier;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] presents an alert with payload: %{public}@", buf, 0x16u);
    }

    v23 = identifier;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    selfCopy = self;
    v10 = [(NSHashTable *)self->_observers copy];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          if ([v15 shouldHandleActivityItem:item] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 presentAlert:alertCopy];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&selfCopy->_activeAlert, alert);
  }

  else
  {
    item = SBLogActivity();
    if (os_log_type_enabled(item, OS_LOG_TYPE_ERROR))
    {
      [(SBActivityManager *)item _presentActivityAlert:v16, v17, v18, v19, v20, v21, v22];
    }
  }
}

- (void)_dismissActivityAlert:(id)alert
{
  v29 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  BSDispatchQueueAssertMain();
  if (alertCopy)
  {
    item = [alertCopy item];
    identifier = [item identifier];
    v7 = SBLogActivity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = identifier;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismisses the alert", buf, 0xCu);
    }

    [alertCopy stopAlerting];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 shouldHandleActivityItem:item] && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v13 dismissAlert:alertCopy];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [(SBActivityManager *)selfCopy _stopActiveAlertForActivityIdentifier:identifier];
  }

  else
  {
    item = SBLogActivity();
    if (os_log_type_enabled(item, OS_LOG_TYPE_ERROR))
    {
      [(SBActivityManager *)item _dismissActivityAlert:v14, v15, v16, v17, v18, v19, v20];
    }
  }
}

- (void)_removeAllObservers
{
  v3 = SBLogActivity();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Removing all activity observers", v4, 2u);
  }

  [(NSHashTable *)self->_observers removeAllObjects];
}

- (void)_addAppActivitiesRecordForBundleId:(id)id item:(id)item
{
  idCopy = id;
  itemCopy = item;
  BSDispatchQueueAssertMain();
  allKeys = [(NSMutableDictionary *)self->_itemsByBundleIdentifier allKeys];
  v8 = [allKeys containsObject:idCopy];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_itemsByBundleIdentifier objectForKey:idCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v10 = v9;
  [v9 addObject:itemCopy];

  itemsByBundleIdentifier = self->_itemsByBundleIdentifier;
  if (!itemsByBundleIdentifier)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v13 = self->_itemsByBundleIdentifier;
    self->_itemsByBundleIdentifier = dictionary;

    itemsByBundleIdentifier = self->_itemsByBundleIdentifier;
  }

  [(NSMutableDictionary *)itemsByBundleIdentifier setObject:v10 forKey:idCopy];
}

- (void)_removeAppActivitiesRecordForBundleId:(id)id item:(id)item
{
  idCopy = id;
  itemCopy = item;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_itemsByBundleIdentifier objectForKey:idCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_itemsByBundleIdentifier objectForKey:idCopy];
    if ([v8 containsObject:itemCopy])
    {
      [v8 removeObject:itemCopy];
      [(NSMutableDictionary *)self->_itemsByBundleIdentifier setObject:v8 forKey:idCopy];
    }
  }
}

- (id)lastRedisplayableActivityForBundleId:(id)id
{
  v33 = *MEMORY[0x277D85DE8];
  idCopy = id;
  BSDispatchQueueAssertMain();
  [(NSMutableDictionary *)self->_itemsByBundleIdentifier objectForKey:idCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = v30 = 0u;
  reverseObjectEnumerator = [v22 reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    selfCopy = self;
    v21 = idCopy;
    v19 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [(NSHashTable *)self->_observers copy:v19];
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 shouldHandleRedisplayOfActivityItem:v10])
              {
                v17 = v10;

                idCopy = v21;
                goto LABEL_20;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v19;
        self = selfCopy;
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
      v17 = 0;
      idCopy = v21;
    }

    while (v7);
  }

  else
  {
    v17 = 0;
  }

LABEL_20:

  return v17;
}

- (void)redisplayActivity:(id)activity
{
  v16 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  BSDispatchQueueAssertMain();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 redisplayActivity:activityCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)preventPresentableFromRevoke:(BOOL)revoke forBundleId:(id)id
{
  revokeCopy = revoke;
  v18 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 activityForBundleId:idCopy shouldPreventFromRevoke:revokeCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_updateAllApplicationMonitoringPolicies
{
  BSDispatchQueueAssertMain();
  applicationPolicyMonitor = [(SBActivityManager *)self applicationPolicyMonitor];
  allKeys = [(NSMutableDictionary *)self->_itemsByBundleIdentifier allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SBActivityManager__updateAllApplicationMonitoringPolicies__block_invoke;
  v5[3] = &unk_2783AF2C8;
  v5[4] = self;
  [applicationPolicyMonitor requestPoliciesForBundleIdentifiers:allKeys completionHandler:v5];
}

void __60__SBActivityManager__updateAllApplicationMonitoringPolicies__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v8, &location);
  v7 = v5;
  BSDispatchMain();

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__SBActivityManager__updateAllApplicationMonitoringPolicies__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __60__SBActivityManager__updateAllApplicationMonitoringPolicies__block_invoke_3;
    v4[3] = &unk_2783B12A8;
    v4[4] = WeakRetained;
    [v3 enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)_updateForScreenTimeLimitForBundleId:(id)id policy:(id)policy
{
  policyCopy = policy;
  idCopy = id;
  BSDispatchQueueAssertMain();
  v8 = [(NSMutableDictionary *)self->_itemsByBundleIdentifier objectForKey:idCopy];

  v9 = [v8 copy];
  integerValue = [policyCopy integerValue];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__SBActivityManager__updateForScreenTimeLimitForBundleId_policy___block_invoke;
  v11[3] = &unk_2783B12D0;
  v11[4] = self;
  v12 = integerValue != 0;
  [v9 enumerateObjectsUsingBlock:v11];
}

void __65__SBActivityManager__updateForScreenTimeLimitForBundleId_policy___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 descriptor];
  v4 = [v3 contentType];

  if (v4 != 1)
  {
    [*(a1 + 32) _activityBlocked:*(a1 + 40) item:v5];
  }
}

- (void)_activityBlocked:(BOOL)blocked item:(id)item
{
  blockedCopy = blocked;
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  BSDispatchQueueAssertMain();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v17 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (blockedCopy)
        {
          if (objc_opt_respondsToSelector())
          {
            v13 = SBLogActivity();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              identifier = [itemCopy identifier];
              *buf = 138543362;
              v23 = identifier;
              _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] hides activity content", buf, 0xCu);

              v7 = v17;
            }

            [v12 activityWasBlocked:itemCopy];
          }
        }

        else if (objc_opt_respondsToSelector())
        {
          v15 = SBLogActivity();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [itemCopy identifier];
            *buf = 138543362;
            v23 = identifier2;
            _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] unhides activity content", buf, 0xCu);

            v7 = v17;
          }

          [v12 activityWasUnblocked:itemCopy];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v9);
  }
}

- (void)_sendAnalyticsLifecycleEventIfNecessaryWithContentUpdate:(id)update
{
  updateCopy = update;
  identifier = [updateCopy identifier];
  v6 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKeyedSubscript:identifier];

  if ([updateCopy state] || !v6)
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SBActivityManager__sendAnalyticsLifecycleEventIfNecessaryWithContentUpdate___block_invoke;
    v7[3] = &unk_2783B12F8;
    objc_copyWeak(&v9, &location);
    v8 = updateCopy;
    [(SBActivityManager *)self _sendAnalyticsEventWithPayloadBuilder:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

id __78__SBActivityManager__sendAnalyticsLifecycleEventIfNecessaryWithContentUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _activityLifecyclePayloadWithContentUpdate:*(a1 + 32)];

  return v3;
}

- (id)_activityLifecyclePayloadWithContentUpdate:(id)update
{
  v21[4] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  identifier = [updateCopy identifier];
  descriptor = [updateCopy descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
  state = [updateCopy state];
  if (state <= 1)
  {
    v9 = @"Start";
    v10 = @"End";
    if (state != 1)
    {
      v10 = 0;
    }

    v11 = state == 0;
  }

  else
  {
    if (state == 2)
    {
      descriptor2 = [updateCopy descriptor];
      createdDate = [descriptor2 createdDate];

      v16 = [MEMORY[0x277CBEAA8] now];
      [v16 timeIntervalSinceDate:createdDate];
      v18 = v17;

      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18 / 60.0];

      v9 = @"Dismissed";
      v7 = v19;
      goto LABEL_11;
    }

    v9 = @"Stale";
    v10 = @"Pending";
    if (state != 4)
    {
      v10 = 0;
    }

    v11 = state == 3;
  }

  if (!v11)
  {
    v9 = v10;
  }

LABEL_11:
  v20[0] = @"activityId";
  v20[1] = @"bundleId";
  v21[0] = identifier;
  v21[1] = platterTargetBundleIdentifier;
  v20[2] = @"eventType";
  v20[3] = @"duration";
  v21[2] = v9;
  v21[3] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v12;
}

- (void)_hideAllActivities:(BOOL)activities
{
  activitiesCopy = activities;
  v20 = *MEMORY[0x277D85DE8];
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v19 = activitiesCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "All activities hidden: %{public}d", buf, 8u);
  }

  allValues = [(NSMutableDictionary *)self->_itemByActivityIdentifier allValues];
  v7 = [allValues copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBActivityManager *)self _activityBlocked:activitiesCopy item:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v9 = observerCopy;
    v5 = [(NSHashTable *)self->_observers containsObject:observerCopy];
    observerCopy = v9;
    if (!v5)
    {
      observers = self->_observers;
      if (!observers)
      {
        v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
        v8 = self->_observers;
        self->_observers = v7;

        observers = self->_observers;
      }

      [(NSHashTable *)observers addObject:v9];
      observerCopy = v9;
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)activityAlertClient:(id)client presentAlertProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBActivityManager_activityAlertClient_presentAlertProvider_completion___block_invoke;
  block[3] = &unk_2783B1320;
  selfCopy = self;
  v14 = completionCopy;
  v12 = providerCopy;
  v9 = completionCopy;
  v10 = providerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__SBActivityManager_activityAlertClient_presentAlertProvider_completion___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 activityIdentifier];

    if (v3)
    {
      v4 = [*(a1 + 32) activityIdentifier];
      v5 = [*(*(a1 + 40) + 112) objectForKeyedSubscript:v4];
      v6 = [v5 descriptor];
      v7 = [v6 contentType];

      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = [*(a1 + 32) payloadIdentifier];
      }

      v17 = [SBActivityAlert alloc];
      v18 = [*(a1 + 32) options];
      v19 = [*(a1 + 32) title];
      v20 = [*(a1 + 32) body];
      v21 = [(SBActivityAlert *)v17 initWithItem:v5 payloadIdentifier:v8 options:v18 title:v19 body:v20];

      v22 = *(a1 + 40);
      v51 = v5;
      if (*(v22 + 128))
      {
        v23 = SBLogActivity();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(*(a1 + 40) + 128) item];
          v25 = [v24 identifier];
          *buf = 138543618;
          v53 = v4;
          v54 = 2112;
          *v55 = v25;
          _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Received a new alert, stopping previous ongoing alert (ActivityID: %@)", buf, 0x16u);
        }

        v26 = v8;

        [*(*(a1 + 40) + 128) stopAlerting];
        v27 = *(a1 + 40);
        v28 = *(v27 + 128);
        *(v27 + 128) = 0;

        v22 = *(a1 + 40);
      }

      else
      {
        v26 = v8;
      }

      v29 = [(SBActivityAlert *)v21 shouldAlertInEnvironment:*(v22 + 48)];
      v30 = [(SBActivityAlert *)v21 canPresentInEnvironment:*(*(a1 + 40) + 48) alertType:0];
      v31 = [*(a1 + 32) options];
      v32 = [v31 presentationOptions];
      v33 = [v32 interrupting];

      v34 = [*(a1 + 32) options];
      v35 = [v34 presentationOptions];
      v36 = [v35 optional];

      v37 = SBLogActivity();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544386;
        v53 = v4;
        v54 = 1026;
        *v55 = v29;
        *&v55[4] = 1026;
        *&v55[6] = v30;
        v56 = 1026;
        v57 = v36;
        v58 = 1026;
        v59 = v33;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] shouldPresentActivityAlert: %{public}d, canPresentActivityAlert: %{public}d, isAlertPresentationOptional: %{public}d, interrupting: %{public}d", buf, 0x24u);
      }

      if (v29)
      {
        if ((v33 & 1) == 0)
        {
          v40 = SBLogActivity();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v4;
            _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alert is not interrupting, don't alert, send an error back", buf, 0xCu);
          }

          v39 = SBActivityAlertError(2uLL);
          goto LABEL_27;
        }

        if (!v30)
        {
          v44 = SBLogActivity();
          v41 = v26;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v4;
            _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] is already visible to the user and interrupting", buf, 0xCu);
          }

          v42 = v51;
          if (v36)
          {
            v45 = +[SBLockScreenManager sharedInstance];
            if ([v45 isUILocked] && (+[SBBacklightController sharedInstance](SBBacklightController, "sharedInstance"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "screenIsOn"), v46, (v47 & 1) == 0))
            {
              v50 = SBLogActivity();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v53 = v4;
                _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alert is optional and screen is locked and off, don't alert", buf, 0xCu);
              }

              v39 = SBActivityAlertError(1uLL);
            }

            else
            {
              v48 = SBLogActivity();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v53 = v4;
                _os_log_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alert is optional, interrupting and screen is on, alert user", buf, 0xCu);
              }

              [(SBActivityAlert *)v21 alertWithScreenOn:1 playSound:1];
              objc_storeStrong((*(a1 + 40) + 128), v21);
              v39 = 0;
            }
          }

          else
          {
            v49 = SBLogActivity();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v53 = v4;
              _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] alert is mandatory and interrupting, turn screen on and play sound", buf, 0xCu);
            }

            [(SBActivityAlert *)v21 alertWithScreenOn:1 playSound:1];
            objc_storeStrong((*(a1 + 40) + 128), v21);
            v39 = 0;
          }

          goto LABEL_28;
        }

        [*(a1 + 40) _presentActivityAlert:v21];
      }

      else
      {
        v38 = SBLogActivity();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v53 = v4;
          _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] this activity can't be alerted either on this device or on watch", buf, 0xCu);
        }
      }

      v39 = 0;
LABEL_27:
      v41 = v26;
      v42 = v51;
LABEL_28:
      v43 = *(a1 + 48);
      if (v43)
      {
        (*(v43 + 16))(v43, v39);
      }

      return;
    }
  }

  v9 = SBLogActivity();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __73__SBActivityManager_activityAlertClient_presentAlertProvider_completion___block_invoke_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)activityAlertClient:(id)client dismissAlertProvider:(id)provider
{
  providerCopy = provider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBActivityManager_activityAlertClient_dismissAlertProvider___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __62__SBActivityManager_activityAlertClient_dismissAlertProvider___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) activityIdentifier];
  v2 = [*(*(a1 + 40) + 128) item];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:v5];

  if (v4)
  {
    [*(a1 + 40) _dismissActivityAlert:*(*(a1 + 40) + 128)];
  }

  [*(a1 + 40) _stopActiveAlertForActivityIdentifier:v5];
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  pathCopy = path;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SBActivityManager_settings_changedValueForKeyPath___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = pathCopy;
  selfCopy = self;
  v6 = pathCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __53__SBActivityManager_settings_changedValueForKeyPath___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasPrefix:@"hideActivitiesInLockScreen"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "hasPrefix:", @"hideActivitiesInDynamicIsland") & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "hasPrefix:", @"hideActivitiesInAmbient"), result))
  {
    v3 = SBLogActivity();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Live Activity Visibility settings have changed.", v5, 2u);
    }

    if ([*(*(a1 + 40) + 136) hideActivitiesInLockScreen] & 1) != 0 || (objc_msgSend(*(*(a1 + 40) + 136), "hideActivitiesInAmbient"))
    {
      v4 = 1;
    }

    else
    {
      v4 = [*(*(a1 + 40) + 136) hideActivitiesInDynamicIsland];
    }

    return [*(a1 + 40) _hideAllActivities:v4];
  }

  return result;
}

@end