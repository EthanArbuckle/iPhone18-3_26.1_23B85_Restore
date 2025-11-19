@interface HKSPSleepWidgetManager
+ (id)_widgetReloadDescription:(unint64_t)a3;
+ (id)defaultRelevanceController;
+ (id)defaultTimelineControllers;
+ (id)widgetBundleIdentifierForCurrentDevice;
+ (id)widgetContainerBundleIdentifierForCurrentDevice;
+ (id)widgetKinds;
- (HKSPSleepWidgetManager)init;
- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)a3 relevanceController:(id)a4;
- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)a3 relevanceController:(id)a4 timelineScheduler:(id)a5;
- (HKSPSleepWidgetManagerDelegate)delegate;
- (void)invalidateRelevances;
- (void)reloadWidgetsWithReason:(unint64_t)a3;
@end

@implementation HKSPSleepWidgetManager

- (HKSPSleepWidgetManager)init
{
  v3 = [objc_opt_class() defaultTimelineControllers];
  v4 = [objc_opt_class() defaultRelevanceController];
  v5 = [(HKSPSleepWidgetManager *)self initWithTimelineControllers:v3 relevanceController:v4];

  return v5;
}

- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)a3 relevanceController:(id)a4
{
  v6 = MEMORY[0x277D2C938];
  v7 = a4;
  v8 = a3;
  v9 = [v6 serialDispatchQueueSchedulerWithName:@"com.apple.HKSPSleepWidgetManager.serial"];
  v10 = [(HKSPSleepWidgetManager *)self initWithTimelineControllers:v8 relevanceController:v7 timelineScheduler:v9];

  return v10;
}

- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)a3 relevanceController:(id)a4 timelineScheduler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HKSPSleepWidgetManager;
  v12 = [(HKSPSleepWidgetManager *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timelineControllers, a3);
    objc_storeStrong(&v13->_relevanceController, a4);
    objc_storeStrong(&v13->_chsScheduler, a5);
    v14 = v13;
  }

  return v13;
}

+ (id)defaultTimelineControllers
{
  v3 = [a1 widgetKinds];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HKSPSleepWidgetManager_defaultTimelineControllers__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = a1;
  v4 = [v3 na_map:v6];

  return v4;
}

id __52__HKSPSleepWidgetManager_defaultTimelineControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getCHSTimelineControllerClass_softClass;
  v14 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getCHSTimelineControllerClass_block_invoke;
    v10[3] = &unk_279C75838;
    v10[4] = &v11;
    __getCHSTimelineControllerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 alloc];
  v7 = [*(a1 + 32) widgetBundleIdentifierForCurrentDevice];
  v8 = [v6 initWithExtensionBundleIdentifier:v7 kind:v3];

  return v8;
}

+ (id)defaultRelevanceController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getCHSWidgetServiceClass_softClass;
  v10 = getCHSWidgetServiceClass_softClass;
  if (!getCHSWidgetServiceClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getCHSWidgetServiceClass_block_invoke;
    v6[3] = &unk_279C75838;
    v6[4] = &v7;
    __getCHSWidgetServiceClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 sharedWidgetService];

  return v4;
}

+ (id)widgetKinds
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v11[0] = @"com.apple.health.SleepStageWidget";
  v11[1] = @"com.apple.health.SleepWidget";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v4 = [v2 arrayWithArray:v3];

  v5 = [MEMORY[0x277CCDD30] sharedBehavior];
  v6 = [v5 features];
  v7 = [v6 sleepDetails];

  if (v7)
  {
    [v4 addObject:@"com.apple.health.SleepScoreWidget"];
  }

  v8 = [v4 copy];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)reloadWidgetsWithReason:(unint64_t)a3
{
  v5 = [objc_opt_class() _widgetReloadDescription:a3];
  v6 = [objc_opt_class() _shouldForceWidgetReload:a3];
  timelineControllers = self->_timelineControllers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke;
  v9[3] = &unk_279C757E8;
  v9[4] = self;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [(NSArray *)timelineControllers na_each:v9];
}

void __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 kind];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained && (v6 = objc_loadWeakRetained((*(a1 + 32) + 8)), v7 = [v6 shouldReloadWidgetOfKind:v4], v6, !v7))
  {
    v17 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v28 = objc_opt_class();
      v29 = 2114;
      v30 = v4;
      v20 = v28;
      _os_log_impl(&dword_269A84000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] not reloading %{public}@ timeline", buf, 0x16u);
    }
  }

  else
  {
    v8 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138544130;
      v28 = v10;
      v29 = 2114;
      v30 = v4;
      v31 = 2114;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v13 = v10;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] reloading %{public}@ timeline (reason: %{public}@, forceReload: %d)", buf, 0x26u);
    }

    v14 = *(*(a1 + 32) + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke_320;
    v21[3] = &unk_279C757C0;
    v26 = *(a1 + 48);
    v22 = v3;
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v23 = v15;
    v24 = v16;
    v25 = v4;
    [v14 performBlock:v21];

    v17 = v22;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke_320(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [v3 reloadTimelineWithReason:v4];
  }

  else
  {
    [v3 reloadTimelineBudgetedWithReason:v4];
  }
  v5 = ;
  v6 = HKSPLogForCategory(0x12uLL);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = objc_opt_class();
      v10 = *(a1 + 56);
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v5;
      v11 = v9;
      _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to reload %{public}@ timeline (error: %{public}@)", &v16, 0x20u);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 48);
    v13 = objc_opt_class();
    v14 = *(a1 + 56);
    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v11 = v13;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_INFO, "[%{public}@] successfully reloaded %{public}@ timeline", &v16, 0x16u);
    goto LABEL_9;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invalidateRelevances
{
  v3 = [objc_opt_class() widgetKinds];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke;
  v4[3] = &unk_279C75810;
  v4[4] = self;
  [v3 na_each:v4];
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained && (v5 = objc_loadWeakRetained((*(a1 + 32) + 8)), v6 = [v5 shouldInvalidateRelevanceForWidgetOfKind:v3], v5, !v6))
  {
    v12 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v3;
      v14 = v19;
      _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] not invalidating %{public}@ relevances", buf, 0x16u);
    }
  }

  else
  {
    v7 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v3;
      v9 = v19;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating %{public}@ relevances", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_323;
    v16[3] = &unk_279C73B58;
    v16[4] = v10;
    v17 = v3;
    [v11 performBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_323(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4 = [objc_opt_class() widgetContainerBundleIdentifierForCurrentDevice];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_2;
  v6[3] = &unk_279C74F60;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 invalidateRelevancesOfKind:v2 inBundle:v4 completion:v6];
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(0x12uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v14 = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v3;
      v9 = v7;
      _os_log_error_impl(&dword_269A84000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to invalidate %{public}@ relevances (error: %{public}@)", &v14, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = *(a1 + 40);
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v9 = v11;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_INFO, "[%{public}@] successfully invalidated %{public}@ relevances", &v14, 0x16u);
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)widgetBundleIdentifierForCurrentDevice
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 hksp_device];

  v4 = v3 > 6 || ((1 << v3) & 0x7A) == 0;
  if (!v4 || v3 == 1000)
  {
    return @"com.apple.Health.Sleep.SleepWidgetExtension";
  }

  else
  {
    return @"com.apple.NanoSleep.watchkitapp.NanoSleepWidgetExtension";
  }
}

+ (id)widgetContainerBundleIdentifierForCurrentDevice
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = [v2 hksp_device];

  if (v3 == 2)
  {
    v4 = @"com.apple.NanoSleep.watchkitapp";
  }

  else
  {
    v4 = @"com.apple.Health.Sleep";
  }

  return v4;
}

+ (id)_widgetReloadDescription:(unint64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C75890[a3];
  }
}

- (HKSPSleepWidgetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end