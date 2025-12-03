@interface SBApplicationController
+ (id)_sharedInstanceCreateIfNecessary:(BOOL)necessary;
- (BOOL)_appLayoutContainsOnlyResizableApps:(id)apps;
- (BOOL)isApplicationAlwaysAvailableForInfo:(id)info;
- (BOOL)isApplicationAlwaysAvailableForProxy:(id)proxy;
- (Class)_appClassForInfo:(id)info;
- (SBApplicationController)init;
- (id)_allApplicationsFilteredBySystem:(BOOL)system;
- (id)_appInfosToBundleIDs:(id)ds;
- (id)_loadApplicationFromApplicationInfo:(id)info;
- (id)allApplications;
- (id)allBundleIdentifiers;
- (id)alwaysAvailableApplicationBundleIdentifiers;
- (id)applicationForDisplayItem:(id)item;
- (id)applicationWithBundleIdentifier:(id)identifier;
- (id)applicationWithPid:(int)pid;
- (id)bundleIdentifiersWithVisibilityOverrideHidden;
- (id)recentlyUsedBundleIDs;
- (id)runningApplications;
- (void)_finishDeferredMajorVersionMigrationTasks_FlushLegacySnapshots;
- (void)_finishDeferredMajorVersionMigrationTasks_FlushSystemSnapshots;
- (void)_loadApplications:(id)applications remove:(id)remove;
- (void)_memoryWarningReceived;
- (void)_removeApplicationsFromModelWithBundleIdentifier:(id)identifier forInstall:(BOOL)install withReason:(id)reason;
- (void)_sendInstalledAppsDidChangeNotification:(id)notification removed:(id)removed replaced:(id)replaced updated:(id)updated;
- (void)_updateVisibilityOverrides;
- (void)_updateVisibilityOverridesInBackground;
- (void)applicationsDemoted:(id)demoted;
- (void)applicationsRemoved:(id)removed;
- (void)applicationsUpdated:(id)updated;
- (void)dealloc;
- (void)requestUninstallApplication:(id)application options:(unint64_t)options withCompletion:(id)completion;
- (void)requestUninstallApplicationWithBundleIdentifier:(id)identifier options:(unint64_t)options withCompletion:(id)completion;
- (void)uninstallApplication:(id)application;
- (void)waitForUninstallsToComplete:(double)complete;
@end

@implementation SBApplicationController

- (id)runningApplications
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allApplications = [(SBApplicationController *)self allApplications];
  v5 = [allApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allApplications);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        processState = [v9 processState];
        isRunning = [processState isRunning];

        if (isRunning)
        {
          [array addObject:v9];
        }
      }

      v6 = [allApplications countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)allApplications
{
  os_unfair_lock_lock(&self->_applicationsLock);
  allValues = [(NSMutableDictionary *)self->_applicationsByBundleIdentifier allValues];
  os_unfair_lock_unlock(&self->_applicationsLock);

  return allValues;
}

- (void)_updateVisibilityOverridesInBackground
{
  v3 = [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides copy];
  v4 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SBApplicationController__updateVisibilityOverridesInBackground__block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __65__SBApplicationController__updateVisibilityOverridesInBackground__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(a1 + 32) objectForKey:*(*(&v10 + 1) + 8 * i)];
        v5 |= [v8 update];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);

    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__SBApplicationController__updateVisibilityOverridesInBackground__block_invoke_2;
      block[3] = &unk_2783A8C18;
      block[4] = *(a1 + 40);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
  }
}

- (void)_memoryWarningReceived
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allApplications = [(SBApplicationController *)self allApplications];
  v3 = [allApplications countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allApplications);
        }

        [*(*(&v7 + 1) + 8 * v6++) purgeCaches];
      }

      while (v4 != v6);
      v4 = [allApplications countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)applicationForDisplayItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] && objc_msgSend(itemCopy, "type") != 3)
  {
    if ([itemCopy type] == 5)
    {
      webApplication = [(SBApplicationController *)self webApplication];
    }

    else
    {
      webApplication = 0;
    }
  }

  else
  {
    bundleIdentifier = [itemCopy bundleIdentifier];
    webApplication = [(SBApplicationController *)self applicationWithBundleIdentifier:bundleIdentifier];
  }

  return webApplication;
}

+ (id)_sharedInstanceCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (necessary || _sharedInstanceCreateIfNecessary__sharedApplicationController)
  {
    pthread_mutex_lock(&_sharedInstanceCreateIfNecessary__sharedApplicationControllerLock);
    if (_sharedInstanceCreateIfNecessary__sharedApplicationController)
    {
      v5 = 1;
    }

    else
    {
      v5 = !necessaryCopy;
    }

    if (!v5)
    {
      kdebug_trace();
      v6 = objc_alloc_init(SBApplicationController);
      v7 = _sharedInstanceCreateIfNecessary__sharedApplicationController;
      _sharedInstanceCreateIfNecessary__sharedApplicationController = v6;

      kdebug_trace();
    }

    pthread_mutex_unlock(&_sharedInstanceCreateIfNecessary__sharedApplicationControllerLock);
    v4 = _sharedInstanceCreateIfNecessary__sharedApplicationController;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (SBApplicationController)init
{
  v54.receiver = self;
  v54.super_class = SBApplicationController;
  v2 = [(SBApplicationController *)&v54 init];
  v3 = v2;
  if (v2)
  {
    v2->_applicationsLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    applicationsByBundleIdentifier = v3->_applicationsByBundleIdentifier;
    v3->_applicationsByBundleIdentifier = v4;

    v6 = [[SBApplicationRestrictionController alloc] initWithDataSource:v3];
    restrictionController = v3->_restrictionController;
    v3->_restrictionController = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    systemAppsVisibilityOverrides = v3->_systemAppsVisibilityOverrides;
    v3->_systemAppsVisibilityOverrides = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    preventLaunchBundleIDs = v3->_preventLaunchBundleIDs;
    v3->_preventLaunchBundleIDs = v10;

    v12 = objc_alloc_init(SBReverseCountedSemaphore);
    uninstallationReverseSemaphore = v3->_uninstallationReverseSemaphore;
    v3->_uninstallationReverseSemaphore = v12;

    v14 = MEMORY[0x277D46F80];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __31__SBApplicationController_init__block_invoke;
    v52[3] = &unk_2783AD408;
    v15 = v3;
    v53 = v15;
    v16 = [v14 monitorWithConfiguration:v52];
    processMonitor = v15->_processMonitor;
    v15->_processMonitor = v16;

    v18 = MEMORY[0x277D0AC98];
    v19 = +[SBApplication _appStateKeysToPrefetch];
    [v18 setPrefetchedKeys:v19];

    v20 = objc_alloc_init(MEMORY[0x277D0ACB8]);
    [v20 setApplicationInfoClass:objc_opt_class()];
    [v20 setApplicationPlaceholderClass:objc_opt_class()];
    [v20 setAllowConcurrentLoading:1];
    LOBYTE(v19) = [MEMORY[0x277D244C8] inUserSessionLoginUI];
    v21 = _os_feature_enabled_impl();
    objc_initWeak(&location, v15);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __31__SBApplicationController_init__block_invoke_43;
    v47[3] = &unk_2783B1CF0;
    v49 = v19;
    objc_copyWeak(&v48, &location);
    v50 = v21;
    [v20 setInstalledApplicationFilter:v47];
    v22 = [objc_alloc(MEMORY[0x277D0ACB0]) initWithConfiguration:v20];
    appLibrary = v15->_appLibrary;
    v15->_appLibrary = v22;

    v24 = v15->_appLibrary;
    v25 = FBSystemAppBundleID();
    v26 = [(FBSApplicationLibrary *)v24 installedApplicationWithBundleIdentifier:v25];
    systemAppInfo = v15->_systemAppInfo;
    v15->_systemAppInfo = v26;

    mainConfiguration = [MEMORY[0x277D0AA90] mainConfiguration];
    v29 = [SBSplashBoardController alloc];
    v30 = [[SBSplashBoardLaunchRequestProvider alloc] initWithApplicationController:v15 displayConfiguration:mainConfiguration];
    v31 = [(XBApplicationController *)v29 initWithMainDisplayConfiguration:mainConfiguration applicationProvider:v15 launchRequestProvider:v30];
    splashBoardController = v15->_splashBoardController;
    v15->_splashBoardController = v31;

    v33 = [[SBApplicationLibraryObserver alloc] initWithAppLibrary:v15->_appLibrary splashBoardController:v15->_splashBoardController];
    appLibraryObserver = v15->_appLibraryObserver;
    v15->_appLibraryObserver = v33;

    [(SBApplicationLibraryObserver *)v15->_appLibraryObserver addApplicationLifecycleObserver:v15];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v15, _appIconVisibilityPreferencesChanged, @"com.apple.springboard.appIconVisibilityPreferencesChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    kdebug_trace();
    allInstalledApplications = [(FBSApplicationLibrary *)v15->_appLibrary allInstalledApplications];
    [(SBApplicationController *)v15 _loadApplications:allInstalledApplications remove:0];

    kdebug_trace();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__memoryWarningReceived name:*MEMORY[0x277D76670] object:0];
    if (__SBShouldClearSystemAppSnapshotsWhenInitialized == 1)
    {
      [(SBApplicationController *)v15 _finishDeferredMajorVersionMigrationTasks_FlushSystemSnapshots];
    }

    if (__SBShouldClearAllLegacySnapshotsWhenInitialized == 1)
    {
      [(SBApplicationController *)v15 _finishDeferredMajorVersionMigrationTasks_FlushLegacySnapshots];
    }

    mEMORY[0x277D65ED8] = [MEMORY[0x277D65ED8] sharedInstance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __31__SBApplicationController_init__block_invoke_2_54;
    v45[3] = &unk_2783A8C18;
    v39 = v15;
    v46 = v39;
    [mEMORY[0x277D65ED8] performAfterFirstUnlockSinceBootUsingBlock:v45];

    v40 = objc_alloc_init(SBAppProtectionCoordinator);
    appProtectionCoordinator = v39->_appProtectionCoordinator;
    v39->_appProtectionCoordinator = v40;

    v42 = objc_opt_new();
    restrictionMonitoringServer = v39->_restrictionMonitoringServer;
    v39->_restrictionMonitoringServer = v42;

    [(SBApplicationRestrictionController *)v3->_restrictionController addObserver:v39->_restrictionMonitoringServer];
    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __31__SBApplicationController_init__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setEvents:2];
  v4 = [MEMORY[0x277D46FA0] predicateMatchingProcessTypeApplication];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setPredicates:v5];

  [v3 setServiceClass:33];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SBApplicationController_init__block_invoke_2;
  v6[3] = &unk_2783B1CC8;
  v7 = *(a1 + 32);
  [v3 setPreventLaunchUpdateHandle:v6];
}

void __31__SBApplicationController_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SBApplicationController_init__block_invoke_3;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __31__SBApplicationController_init__block_invoke_3(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = [v8 bundleIdentifier];

        if (v9)
        {
          v10 = [v8 bundleIdentifier];
          [v2 addObject:v10];
        }

        else
        {
          v10 = [v8 processIdentity];
          v11 = [v10 embeddedApplicationIdentifier];

          if (v11)
          {
            v12 = [v10 embeddedApplicationIdentifier];
            [v2 addObject:v12];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v5);
  }

  v13 = [v2 mutableCopy];
  [v13 minusSet:*(*(a1 + 40) + 96)];
  v32 = [*(*(a1 + 40) + 96) mutableCopy];
  [v32 minusSet:v2];
  objc_storeStrong((*(a1 + 40) + 96), v2);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * j);
        v19 = [*(a1 + 40) applicationWithBundleIdentifier:v18];
        v20 = SBLogCommon();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            *buf = 138543362;
            v48 = v18;
            _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "termination assertion acquired for %{public}@", buf, 0xCu);
          }

          [v19 _setLaunchPrevented:1];
        }

        else
        {
          if (v21)
          {
            *buf = 138543362;
            v48 = v18;
            _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "termination assertion acquired for %{public}@ (app not found)", buf, 0xCu);
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v15);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v32;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * k);
        v28 = [*(a1 + 40) applicationWithBundleIdentifier:v27];
        v29 = SBLogCommon();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (v30)
          {
            *buf = 138543362;
            v48 = v27;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "termination assertion released for %{public}@", buf, 0xCu);
          }

          [v28 _setLaunchPrevented:0];
        }

        else
        {
          if (v30)
          {
            *buf = 138543362;
            v48 = v27;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "termination assertion released for %{public}@ (app not found)", buf, 0xCu);
          }
        }

        v31 = [SBApp applicationAutoLaunchService];
        [v31 _noteTerminationAssertionRemovedForApplication:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
  }
}

uint64_t __31__SBApplicationController_init__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [v4 correspondingApplicationRecord];
    v8 = [v7 managementDomain];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:*MEMORY[0x277CC1DE8]])
    {
      v6 = 0;
    }

    else if (*(a1 + 41) == 1)
    {
      v10 = [v4 appState];
      if ([v10 isRestricted])
      {
        v6 = [WeakRetained isApplicationAlwaysAvailableForProxy:v4];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_14;
  }

  WeakRetained = [v3 bundleIdentifier];
  if (([WeakRetained isEqualToString:@"com.apple.LoginUI"] & 1) == 0)
  {
    v7 = [v4 bundleIdentifier];
    v9 = FBSystemAppBundleID();
    v6 = [v7 isEqualToString:v9];
LABEL_14:

    goto LABEL_15;
  }

  v6 = 1;
LABEL_15:

  return v6 & 1;
}

void __31__SBApplicationController_init__block_invoke_2_54(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SBApplicationController_init__block_invoke_3_55;
  block[3] = &unk_2783A8C18;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBApplicationController.m" lineNumber:294 description:{@"%@ does not dealloc", objc_opt_class()}];

  v5.receiver = self;
  v5.super_class = SBApplicationController;
  [(SBApplicationController *)&v5 dealloc];
}

- (id)allBundleIdentifiers
{
  os_unfair_lock_lock(&self->_applicationsLock);
  allKeys = [(NSMutableDictionary *)self->_applicationsByBundleIdentifier allKeys];
  os_unfair_lock_unlock(&self->_applicationsLock);

  return allKeys;
}

- (id)applicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_applicationsLock);
  v5 = [(SBApplicationController *)self _lock_applicationWithBundleIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_applicationsLock);

  return v5;
}

- (id)applicationWithPid:(int)pid
{
  v24 = *MEMORY[0x277D85DE8];
  if (pid < 1)
  {
    v9 = 0;
  }

  else
  {
    v3 = *&pid;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    runningApplications = [(SBApplicationController *)self runningApplications];
    v7 = [runningApplications countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v18 = a2;
      v9 = 0;
      v10 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(runningApplications);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          processState = [v12 processState];
          v14 = [processState pid];

          if (v14 == v3)
          {
            if (v9)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v18 object:self file:@"SBApplicationController.m" lineNumber:341 description:{@"shouldn't ever have two apps with the same pid %d: app1=%@ app2=%@", v3, v9, v12}];
            }

            v15 = v12;

            v9 = v15;
          }
        }

        v8 = [runningApplications countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)uninstallApplication:(id)application
{
  v11 = *MEMORY[0x277D85DE8];
  bundleIdentifier = [application bundleIdentifier];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = bundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Uninstall application: %{public}@", buf, 0xCu);
  }

  [(SBApplicationController *)self _removeApplicationsFromModelWithBundleIdentifier:bundleIdentifier forInstall:0 withReason:@"User Requested"];
  v6 = [MEMORY[0x277CBEB98] setWithObject:bundleIdentifier];
  [(SBApplicationController *)self _sendInstalledAppsDidChangeNotification:0 removed:v6 replaced:0 updated:0];

  [(SBReverseCountedSemaphore *)self->_uninstallationReverseSemaphore increment];
  appLibrary = self->_appLibrary;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SBApplicationController_uninstallApplication___block_invoke;
  v8[3] = &unk_2783B0F28;
  v8[4] = self;
  [(FBSApplicationLibrary *)appLibrary uninstallApplication:bundleIdentifier withOptions:0 completion:v8];
}

- (void)requestUninstallApplication:(id)application options:(unint64_t)options withCompletion:(id)completion
{
  completionCopy = completion;
  bundleIdentifier = [application bundleIdentifier];
  [(SBApplicationController *)self requestUninstallApplicationWithBundleIdentifier:bundleIdentifier options:options withCompletion:completionCopy];
}

- (void)requestUninstallApplicationWithBundleIdentifier:(id)identifier options:(unint64_t)options withCompletion:(id)completion
{
  optionsCopy = options;
  identifierCopy = identifier;
  completionCopy = completion;
  appLibraryObserver = self->_appLibraryObserver;
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"requesting uninstall of %@", identifierCopy];
  v12 = [(SBApplicationLibraryObserver *)appLibraryObserver suspendCalloutsAssertionWithReason:identifierCopy];

  v13 = objc_alloc_init(MEMORY[0x277D0ACC8]);
  [v13 setUserInitiated:1];
  if (optionsCopy)
  {
    [v13 setShowsArchiveOption:1];
  }

  appLibrary = self->_appLibrary;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SBApplicationController_requestUninstallApplicationWithBundleIdentifier_options_withCompletion___block_invoke;
  v17[3] = &unk_2783AA0B8;
  v18 = v12;
  v19 = completionCopy;
  v15 = v12;
  v16 = completionCopy;
  [(FBSApplicationLibrary *)appLibrary uninstallApplication:identifierCopy withOptions:v13 completion:v17];
}

void __98__SBApplicationController_requestUninstallApplicationWithBundleIdentifier_options_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__SBApplicationController_requestUninstallApplicationWithBundleIdentifier_options_withCompletion___block_invoke_2;
  block[3] = &unk_2783B1320;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __98__SBApplicationController_requestUninstallApplicationWithBundleIdentifier_options_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v10 = [v3 objectForKey:*MEMORY[0x277CCA7E8]];

    v4 = [v10 domain];
    if ([v4 isEqualToString:*MEMORY[0x277D0AB38]])
    {
      v5 = [v10 code] == 4;
    }

    else
    {
      v5 = 0;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5, 0);
    }

    [*(a1 + 40) invalidate];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }

    else
    {
      v9 = *(a1 + 40);

      [v9 invalidate];
    }
  }
}

- (void)waitForUninstallsToComplete:(double)complete
{
  if (![(SBReverseCountedSemaphore *)self->_uninstallationReverseSemaphore waitWithTimeout:complete])
  {
    v3 = SBLogAppLibrary();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBApplicationController waitForUninstallsToComplete:v3];
    }
  }
}

- (id)alwaysAvailableApplicationBundleIdentifiers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allApplications = [(SBApplicationController *)self allApplications];
  v5 = [allApplications countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allApplications);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([v9 isInternalApplication] & 1) != 0 || objc_msgSend(v9, "isSystemApplication"))
        {
          info = [v9 info];
          if ([info hasHiddenTag])
          {
          }

          else
          {
            isSetup = [v9 isSetup];

            if (!isSetup)
            {
              continue;
            }
          }

          bundleIdentifier = [v9 bundleIdentifier];
          [v3 addObject:bundleIdentifier];
        }
      }

      v6 = [allApplications countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isApplicationAlwaysAvailableForInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isInternalApplication] & 1) != 0 || (objc_msgSend(infoCopy, "isSystemApplication") & 1) != 0 || (objc_msgSend(infoCopy, "hasHiddenTag"))
  {
    v4 = 1;
  }

  else
  {
    bundleIdentifier = [infoCopy bundleIdentifier];
    v4 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];
  }

  return v4;
}

- (BOOL)isApplicationAlwaysAvailableForProxy:(id)proxy
{
  proxyCopy = proxy;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  applicationType = [proxyCopy applicationType];
  if ([applicationType isEqualToString:@"Internal"] & 1) != 0 || (FBSystemAppBundleID(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(bundleIdentifier, "isEqualToString:", v6), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    appTags = [proxyCopy appTags];
    if ([appTags containsObject:@"hidden"])
    {
      v8 = 1;
    }

    else
    {
      v8 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];
    }
  }

  return v8;
}

- (id)_allApplicationsFilteredBySystem:(BOOL)system
{
  allInstalledApplications = [(FBSApplicationLibrary *)self->_appLibrary allInstalledApplications];
  if ([allInstalledApplications count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__SBApplicationController__allApplicationsFilteredBySystem___block_invoke;
    v8[3] = &__block_descriptor_33_e34_B32__0__SBApplicationInfo_8Q16_B24l;
    systemCopy = system;
    v5 = [allInstalledApplications indexesOfObjectsPassingTest:v8];
    v6 = [allInstalledApplications objectsAtIndexes:v5];

    allInstalledApplications = v6;
  }

  return allInstalledApplications;
}

uint64_t __60__SBApplicationController__allApplicationsFilteredBySystem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1 && [v3 type] != 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 usesSplashBoard];
  }

  return v5;
}

- (id)recentlyUsedBundleIDs
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  recentAppLayouts = [v2 recentAppLayouts];

  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recentAppLayouts, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBApplicationController_recentlyUsedBundleIDs__block_invoke;
  v7[3] = &unk_2783B1D38;
  v5 = v4;
  v8 = v5;
  [recentAppLayouts enumerateObjectsUsingBlock:v7];

  return v5;
}

void __48__SBApplicationController_recentlyUsedBundleIDs__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SBApplicationController_recentlyUsedBundleIDs__block_invoke_2;
  v3[3] = &unk_2783AE1C8;
  v4 = *(a1 + 32);
  [a2 enumerate:v3];
}

void __48__SBApplicationController_recentlyUsedBundleIDs__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (![v6 type])
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleIdentifier];
    [v4 addObject:v5];
  }
}

- (BOOL)_appLayoutContainsOnlyResizableApps:(id)apps
{
  appsCopy = apps;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SBApplicationController__appLayoutContainsOnlyResizableApps___block_invoke;
  v6[3] = &unk_2783AFC58;
  v6[4] = &v7;
  [appsCopy enumerate:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __63__SBApplicationController__appLayoutContainsOnlyResizableApps___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = a3;
    v7 = +[SBApplicationController sharedInstance];
    v8 = [v6 bundleIdentifier];

    v11 = [v7 applicationWithBundleIdentifier:v8];

    v9 = v11;
    if (v11)
    {
      v10 = [v11 supportsChamoisViewResizing];
      v9 = v11;
      if ((v10 & 1) == 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }
}

- (void)_finishDeferredMajorVersionMigrationTasks_FlushSystemSnapshots
{
  v15 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_21ED4E000, "XBMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allApplications = [(SBApplicationController *)self allApplications];
  v5 = [allApplications countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allApplications);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 isSystemApplication] & 1) != 0 || objc_msgSend(v8, "isInternalApplication"))
        {
          [v8 flushSnapshotsForAllScenes];
        }
      }

      v5 = [allApplications countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  os_activity_scope_leave(&state);
}

- (void)_finishDeferredMajorVersionMigrationTasks_FlushLegacySnapshots
{
  v14 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_21ED4E000, "XBMigration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allApplications = [(SBApplicationController *)self allApplications];
  v5 = [allApplications countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allApplications);
        }

        [*(*(&v8 + 1) + 8 * v7++) flushSnapshotsForAllScenesIncludingAllLegacyImages];
      }

      while (v5 != v7);
      v5 = [allApplications countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }

  os_activity_scope_leave(&state);
}

- (void)_sendInstalledAppsDidChangeNotification:(id)notification removed:(id)removed replaced:(id)replaced updated:(id)updated
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  removedCopy = removed;
  replacedCopy = replaced;
  updatedCopy = updated;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (notificationCopy && [notificationCopy count])
  {
    [v14 setObject:notificationCopy forKey:@"SBInstalledApplicationsAddedBundleIDs"];
  }

  if (replacedCopy && [replacedCopy count])
  {
    [v14 setObject:replacedCopy forKey:@"SBInstalledApplicationsReplacedBundleIDs"];
  }

  if (updatedCopy && [updatedCopy count])
  {
    [v14 setObject:updatedCopy forKey:@"SBInstalledApplicationsUpdatedBundleIDs"];
  }

  if (removedCopy && [removedCopy count])
  {
    [v14 setObject:removedCopy forKey:@"SBInstalledApplicationsRemovedBundleIDs"];
  }

  allKeys = [v14 allKeys];
  v16 = [allKeys count];

  if (v16)
  {
    [(SBApplicationRestrictionController *)self->_restrictionController noteApplicationIdentifiersDidChangeWithAdded:notificationCopy replaced:replacedCopy removed:removedCopy];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBInstalledApplicationsDidChangeNotification" object:self userInfo:v14];

    v18 = SBLogAppLibrary();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 138544130;
      v21 = notificationCopy;
      v22 = 2114;
      v23 = removedCopy;
      v24 = 2114;
      v25 = replacedCopy;
      v26 = 2114;
      v27 = updatedCopy;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Installed apps did change.\nAdded: %{public}@\nRemoved: %{public}@\nReplaced: %{public}@\nUpdated: %{public}@", &v20, 0x2Au);
    }

    v19 = SBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138544130;
      v21 = notificationCopy;
      v22 = 2114;
      v23 = removedCopy;
      v24 = 2114;
      v25 = replacedCopy;
      v26 = 2114;
      v27 = updatedCopy;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Installed apps did change.\nAdded: %{public}@\nRemoved: %{public}@\nReplaced: %{public}@\nUpdated: %{public}@", &v20, 0x2Au);
    }
  }
}

- (Class)_appClassForInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];
  if ([infoCopy type] == 1 && (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.camera") & 1) == 0)
  {
    [infoCopy representsWebApplication];
  }

  v5 = objc_opt_class();

  return v5;
}

- (id)_appInfosToBundleIDs:(id)ds
{
  v17 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v12 + 1) + 8 * i) bundleIdentifier];
        [v4 addObject:bundleIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_loadApplications:(id)applications remove:(id)remove
{
  v72 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  removeCopy = remove;
  [(SBApplicationController *)self _preLoadApplications];
  v49 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:applicationsCopy];
  [v49 removeObject:self->_systemAppInfo];
  v50 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v46 = removeCopy;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:removeCopy];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = applicationsCopy;
  v10 = [v9 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v62;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        bundleIdentifier = [(SBApplicationInfo *)v14 bundleIdentifier];
        v16 = [(SBApplicationController *)self applicationWithBundleIdentifier:bundleIdentifier];
        if (v16)
        {
          systemAppInfo = self->_systemAppInfo;

          if (v14 != systemAppInfo)
          {
            [v49 removeObject:v14];
            [v50 addObject:v14];
          }
        }

        else
        {
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v11);
  }

  if ([v50 count])
  {
    v18 = SBLogAppLibrary();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v66 = v50;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Reloading application states for '%@' as they have been updated.", buf, 0xCu);
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v58;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v19);
        }

        bundleIdentifier2 = [*(*(&v57 + 1) + 8 * j) bundleIdentifier];
        [(SBApplicationController *)self _removeApplicationsFromModelWithBundleIdentifier:bundleIdentifier2 forInstall:0 withReason:@"Removed from the system."];
      }

      v21 = [v19 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v21);
  }

  v45 = v9;
  v47 = v19;

  v25 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v49];
  [v25 unionSet:v50];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v25;
  v52 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v52)
  {
    v51 = *v54;
    do
    {
      v26 = 0;
      do
      {
        if (*v54 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v53 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        v29 = [(SBApplicationController *)self _loadApplicationFromApplicationInfo:v27];
        v30 = v29;
        if (v29)
        {
          if (*(v29 + 9))
          {
            v31 = 11;
          }

          else
          {
            v31 = 10;
          }

          if (*(v29 + 8) == 1)
          {
            v32 = @"Application added";
            if (*(v29 + 9))
            {
              v32 = @"Application replaced";
            }
          }

          else
          {
            v32 = *(v29 + 16);
          }
        }

        else
        {
          v32 = 0;
          v31 = 10;
        }

        v33 = v32;
        v34 = MEMORY[0x277D28AB8];
        bundleIdentifier3 = [v27 bundleIdentifier];
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v33];
        [v34 logStep:v31 byParty:10 phase:3 success:1 forBundleID:bundleIdentifier3 description:v36];

        bundleIdentifier4 = [v27 bundleIdentifier];
        if (!v30 || (*(v30 + 8) & 1) == 0)
        {
          v38 = SBLogAppLibrary();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            if (v30)
            {
              v39 = *(v30 + 16);
            }

            else
            {
              v39 = 0;
            }

            *buf = 138543618;
            v66 = bundleIdentifier4;
            v67 = 2114;
            v68 = v39;
            v40 = v39;
            _os_log_error_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_ERROR, "*** Application failed to load in 'loadApplications': %{public}@: %{public}@", buf, 0x16u);
          }

          [v49 removeObject:v27];
          [v50 removeObject:v27];
          [v47 addObject:v27];
        }

        objc_autoreleasePoolPop(v28);
        ++v26;
      }

      while (v52 != v26);
      v41 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
      v52 = v41;
    }

    while (v41);
  }

  v42 = [(SBApplicationController *)self _appInfosToBundleIDs:v49];
  v43 = [(SBApplicationController *)self _appInfosToBundleIDs:v50];
  v44 = [(SBApplicationController *)self _appInfosToBundleIDs:v47];
  [(SBApplicationController *)self _sendInstalledAppsDidChangeNotification:v42 removed:v44 replaced:v43 updated:0];
}

- (void)_removeApplicationsFromModelWithBundleIdentifier:(id)identifier forInstall:(BOOL)install withReason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  if (!install)
  {
    v9 = MEMORY[0x277D28AB8];
    reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Application removed for reason: %@", reasonCopy];
    [v9 logStep:12 byParty:10 phase:3 success:1 forBundleID:identifierCopy description:reasonCopy];
  }

  v11 = [(SBApplicationController *)self applicationWithBundleIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    [v11 setUninstalled:1];
    if (!install)
    {
      SBWorkspaceKillApplication(v12, 0, @"uninstalling app", 0);
    }
  }

  v13 = [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides objectForKey:identifierCopy];
  v14 = v13;
  if (v13)
  {
    if (([v13 isCurrentlyVisible] & 1) == 0)
    {
      cachedSystemAppsWithVisibilityOverrideHidden = self->_cachedSystemAppsWithVisibilityOverrideHidden;
      self->_cachedSystemAppsWithVisibilityOverrideHidden = 0;
    }

    [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides removeObjectForKey:identifierCopy];
    [(SBApplicationRestrictionController *)self->_restrictionController noteVisibilityOverridesDidChange];
  }

  os_unfair_lock_lock(&self->_applicationsLock);
  [(NSMutableDictionary *)self->_applicationsByBundleIdentifier removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_applicationsLock);
}

- (void)_updateVisibilityOverrides
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_systemAppsVisibilityOverrides;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        v6 |= [v9 update];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);

    if (v6)
    {
      cachedSystemAppsWithVisibilityOverrideHidden = self->_cachedSystemAppsWithVisibilityOverrideHidden;
      self->_cachedSystemAppsWithVisibilityOverrideHidden = 0;

      [(SBApplicationRestrictionController *)self->_restrictionController noteVisibilityOverridesDidChange];
    }
  }

  else
  {
  }
}

uint64_t __65__SBApplicationController__updateVisibilityOverridesInBackground__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(*(a1 + 32) + 40);

  return [v4 noteVisibilityOverridesDidChange];
}

- (void)applicationsUpdated:(id)updated
{
  v37 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_applicationsLock);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = updatedCopy;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];
        v14 = [(SBApplicationController *)self _lock_applicationWithBundleIdentifier:bundleIdentifier];

        if (v14)
        {
          bundleIdentifier2 = [v12 bundleIdentifier];
          [v5 addObject:bundleIdentifier2];

          bundleIdentifier3 = [v12 bundleIdentifier];
          [dictionary setObject:v14 forKey:bundleIdentifier3];

          bundleIdentifier4 = [v12 bundleIdentifier];
          [dictionary2 setObject:v12 forKey:bundleIdentifier4];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_applicationsLock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        v24 = [dictionary objectForKey:v23];
        v25 = [dictionary2 objectForKey:v23];
        [v24 setInfo:v25];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  [(SBApplicationController *)self _sendInstalledAppsDidChangeNotification:0 removed:0 replaced:0 updated:v18];
}

- (void)applicationsRemoved:(id)removed
{
  v19 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  v5 = [removedCopy mutableCopy];
  os_unfair_lock_lock(&self->_applicationsLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = removedCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [(SBApplicationController *)self _lock_applicationWithBundleIdentifier:bundleIdentifier];

        if (!v13)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_applicationsLock);
  if ([v5 count])
  {
    [(SBApplicationController *)self _loadApplications:0 remove:v5];
  }
}

- (void)applicationsDemoted:(id)demoted
{
  v32 = *MEMORY[0x277D85DE8];
  demotedCopy = demoted;
  v5 = [demotedCopy mutableCopy];
  os_unfair_lock_lock(&self->_applicationsLock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = demotedCopy;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        bundleIdentifier = [v11 bundleIdentifier];
        v13 = [(SBApplicationController *)self _lock_applicationWithBundleIdentifier:bundleIdentifier];

        if (!v13)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_applicationsLock);
  if ([v5 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          bundleIdentifier2 = [*(*(&v22 + 1) + 8 * j) bundleIdentifier];
          [(SBApplicationController *)self _removeApplicationsFromModelWithBundleIdentifier:bundleIdentifier2 forInstall:0 withReason:@"Demotion"];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    v20 = [MEMORY[0x277CBEB98] setWithArray:v14];
    v21 = [(SBApplicationController *)self _appInfosToBundleIDs:v20];

    [(SBApplicationController *)self _sendInstalledAppsDidChangeNotification:0 removed:v21 replaced:0 updated:0];
  }
}

- (id)bundleIdentifiersWithVisibilityOverrideHidden
{
  v21 = *MEMORY[0x277D85DE8];
  cachedSystemAppsWithVisibilityOverrideHidden = self->_cachedSystemAppsWithVisibilityOverrideHidden;
  if (!cachedSystemAppsWithVisibilityOverrideHidden)
  {
    v4 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableDictionary count](self->_systemAppsVisibilityOverrides, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_systemAppsVisibilityOverrides;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides objectForKey:v10, v16];
          v12 = v11;
          if (v11 && ([v11 isCurrentlyVisible] & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_cachedSystemAppsWithVisibilityOverrideHidden;
    self->_cachedSystemAppsWithVisibilityOverrideHidden = v13;

    cachedSystemAppsWithVisibilityOverrideHidden = self->_cachedSystemAppsWithVisibilityOverrideHidden;
  }

  return cachedSystemAppsWithVisibilityOverrideHidden;
}

- (id)_loadApplicationFromApplicationInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(_SBLoadApplicationResult);
  bundleIdentifier = [infoCopy bundleIdentifier];
  bundleURL = [infoCopy bundleURL];
  bundleURL2 = [infoCopy bundleURL];
  path = [bundleURL2 path];

  dataContainerURL = [infoCopy dataContainerURL];
  path2 = [dataContainerURL path];

  v12 = [(SBApplicationController *)self applicationWithBundleIdentifier:bundleIdentifier];
  v13 = v12;
  if (v5)
  {
    v5->_update = v12 != 0;
  }

  if (bundleIdentifier)
  {
    pathExtension = [path pathExtension];
    v15 = [pathExtension isEqualToString:@"app"];

    if (v15)
    {
      infoCopy = [objc_alloc(-[SBApplicationController _appClassForInfo:](self _appClassForInfo:{infoCopy)), "initWithApplicationInfo:", infoCopy}];
      if (infoCopy)
      {
        if (![v13 isSystemApplication] || objc_msgSend(infoCopy, "isSystemApplication"))
        {
          if (v5)
          {
            v5->_success = 1;
          }

          v24 = path2;
          if (v13)
          {
            [(SBApplicationController *)self _removeApplicationsFromModelWithBundleIdentifier:bundleIdentifier forInstall:1 withReason:@"Update"];
          }

          os_unfair_lock_lock(&self->_applicationsLock);
          [(NSMutableDictionary *)self->_applicationsByBundleIdentifier setObject:infoCopy forKey:bundleIdentifier];
          os_unfair_lock_unlock(&self->_applicationsLock);
          info = [infoCopy info];
          visibilityOverride = [info visibilityOverride];

          if (!visibilityOverride)
          {
            path2 = v24;
            goto LABEL_25;
          }

          path2 = v24;
          v19 = [[SBAppVisibilityPreferences alloc] initWithDefaultVisible:visibilityOverride == 1 bundleID:bundleIdentifier containerPath:v24];
          if (v19)
          {
            [(NSMutableDictionary *)self->_systemAppsVisibilityOverrides setObject:v19 forKey:bundleIdentifier];
            if (![(SBAppVisibilityPreferences *)v19 isCurrentlyVisible])
            {
              cachedSystemAppsWithVisibilityOverrideHidden = self->_cachedSystemAppsWithVisibilityOverrideHidden;
              self->_cachedSystemAppsWithVisibilityOverrideHidden = 0;
            }

            [(SBApplicationRestrictionController *)self->_restrictionController noteVisibilityOverridesDidChange];
          }

          goto LABEL_24;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Attempt to replace system application with a user application, which is disallowed.", bundleIdentifier];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to load application (id=%@) because SBApplication's initializer returned nil.", bundleIdentifier];
      }
      v19 = ;
      if (v5)
      {
        objc_setProperty_nonatomic_copy(v5, v22, v19, 16);
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  infoCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to load application because there is no bundle identifier (id=%@) or the bundle is not an app bundle (url=%@) for application info %@.", bundleIdentifier, bundleURL, infoCopy];
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v21, infoCopy, 16);
  }

LABEL_25:

  return v5;
}

@end