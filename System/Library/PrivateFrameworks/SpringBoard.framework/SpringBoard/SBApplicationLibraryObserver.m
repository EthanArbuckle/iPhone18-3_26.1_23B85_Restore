@interface SBApplicationLibraryObserver
+ (SBApplicationLibraryObserver)new;
- (SBApplicationLibraryObserver)init;
- (SBApplicationLibraryObserver)initWithAppLibrary:(id)a3 splashBoardController:(id)a4;
- (id)suspendCalloutsAssertionWithReason:(id)a3;
- (void)_addObserver:(id)a3 table:(id)a4;
- (void)_didAddApplications:(id)a3;
- (void)_didAddPlaceholders:(id)a3;
- (void)_didCancelPlaceholders:(id)a3;
- (void)_didChangeNetworkUsage:(BOOL)a3;
- (void)_didDemoteApplications:(id)a3;
- (void)_didRemoveApplications:(id)a3;
- (void)_didReplaceApplications:(id)a3;
- (void)_didUpdateApplications:(id)a3;
- (void)_removeObserver:(id)a3 table:(id)a4;
- (void)_waitForLaunchImageGenerationForApplications:(id)a3;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation SBApplicationLibraryObserver

+ (SBApplicationLibraryObserver)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBApplicationLibraryObserver.m" lineNumber:49 description:@"-[SBApplicationLibraryObserver new] is unavailable."];

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SBApplicationLibraryObserver;
  return objc_msgSendSuper2(&v6, "new");
}

- (SBApplicationLibraryObserver)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBApplicationLibraryObserver.m" lineNumber:54 description:@"-[SBApplicationLibraryObserver init] is unavailable."];

  v6.receiver = self;
  v6.super_class = SBApplicationLibraryObserver;
  return [(SBApplicationLibraryObserver *)&v6 init];
}

- (SBApplicationLibraryObserver)initWithAppLibrary:(id)a3 splashBoardController:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v42 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationLibraryObserver initWithAppLibrary:splashBoardController:];
  }

  kdebug_trace();
  v64.receiver = self;
  v64.super_class = SBApplicationLibraryObserver;
  v7 = [(SBApplicationLibraryObserver *)&v64 init];
  if (v7)
  {
    v8 = dispatch_queue_create_with_target_V2("com.apple.springboard.applibrary.observer", 0, MEMORY[0x277D85CD0]);
    mainQueueProxy = v7->_mainQueueProxy;
    v7->_mainQueueProxy = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    placeholdersByBundleID = v7->_placeholdersByBundleID;
    v7->_placeholdersByBundleID = v10;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:{512, v41}];
    applicationObservers = v7->_applicationObservers;
    v7->_applicationObservers = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:512];
    placeholderObservers = v7->_placeholderObservers;
    v7->_placeholderObservers = v14;

    objc_storeStrong(&v7->_appLibrary, a3);
    objc_storeStrong(&v7->_splashBoardController, a4);
    objc_initWeak(&location, v7);
    appLibrary = v7->_appLibrary;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke;
    v61[3] = &unk_2783AC1F0;
    objc_copyWeak(&v62, &location);
    v17 = [(FBSApplicationLibrary *)appLibrary observeDidAddPlaceholdersWithBlock:v61];
    v18 = v7->_appLibrary;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_2;
    v59[3] = &unk_2783AC1F0;
    objc_copyWeak(&v60, &location);
    v19 = [(FBSApplicationLibrary *)v18 observeDidCancelPlaceholdersWithBlock:v59];
    v20 = v7->_appLibrary;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_3;
    v57[3] = &unk_2783AC1F0;
    objc_copyWeak(&v58, &location);
    v21 = [(FBSApplicationLibrary *)v20 observeDidAddApplicationsWithBlock:v57];
    v22 = v7->_appLibrary;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_4;
    v55[3] = &unk_2783C44E0;
    objc_copyWeak(&v56, &location);
    v23 = [(FBSApplicationLibrary *)v22 observeDidReplaceApplicationsWithBlock:v55];
    v24 = v7->_appLibrary;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_5;
    v53[3] = &unk_2783C44E0;
    objc_copyWeak(&v54, &location);
    v25 = [(FBSApplicationLibrary *)v24 observeDidUpdateApplicationsWithBlock:v53];
    v26 = v7->_appLibrary;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_6;
    v51[3] = &unk_2783AC1F0;
    objc_copyWeak(&v52, &location);
    v27 = [(FBSApplicationLibrary *)v26 observeDidRemoveApplicationsWithBlock:v51];
    v28 = v7->_appLibrary;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_7;
    v49[3] = &unk_2783AC1F0;
    objc_copyWeak(&v50, &location);
    v29 = [(FBSApplicationLibrary *)v28 observeDidDemoteApplicationsWithBlock:v49];
    v30 = v7->_appLibrary;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_8;
    v47[3] = &unk_2783AC358;
    objc_copyWeak(&v48, &location);
    v31 = [(FBSApplicationLibrary *)v30 observeDidChangeNetworkUsageWithBlock:v47];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [(FBSApplicationLibrary *)v7->_appLibrary allPlaceholders];
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v65 count:16];
    if (v33)
    {
      v34 = *v44;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v43 + 1) + 8 * i);
          v37 = v7->_placeholdersByBundleID;
          v38 = [v36 bundleIdentifier];
          [(NSMutableDictionary *)v37 setObject:v36 forKey:v38];
        }

        v33 = [v32 countByEnumeratingWithState:&v43 objects:v65 count:16];
      }

      while (v33);
    }

    v39 = [MEMORY[0x277D262A0] sharedConnection];
    [v39 registerObserver:v7];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);
  }

  kdebug_trace();

  return v7;
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didAddPlaceholders:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didCancelPlaceholders:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didAddApplications:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReplaceApplications:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didUpdateApplications:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didRemoveApplications:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDemoteApplications:v3];
}

void __73__SBApplicationLibraryObserver_initWithAppLibrary_splashBoardController___block_invoke_8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didChangeNetworkUsage:a2];
}

- (id)suspendCalloutsAssertionWithReason:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBApplicationLibraryObserver *)a2 suspendCalloutsAssertionWithReason:?];
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationLibraryObserver suspendCalloutsAssertionWithReason:];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__147;
  v40 = __Block_byref_object_dispose__147;
  v41 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CF0B80]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke;
  v32[3] = &unk_2783AEA70;
  v7 = v6;
  v33 = v7;
  v34 = self;
  v35 = &v36;
  v8 = MEMORY[0x223D6F7F0](v32);
  v9 = objc_alloc(MEMORY[0x277CF0B58]);
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke_31;
  v29[3] = &unk_2783C4508;
  v31 = &v36;
  v12 = v8;
  v30 = v12;
  v13 = [v9 initWithInfo:0 timeout:v10 forResponseOnQueue:v29 withHandler:0.0];

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke_33;
  v27 = &unk_2783A9348;
  v14 = v12;
  v28 = v14;
  [v13 setInvalidationHandler:&v24];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p: %@", v13, v5, v24, v25, v26, v27];
  v16 = v37[5];
  v37[5] = v15;

  v17 = SBLogAppLibrary();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v37[5];
    *buf = 138412290;
    v43 = v18;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "adding suspendCalloutsAssertion '%@'", buf, 0xCu);
  }

  suspendCalloutsAssertionReasons = self->_suspendCalloutsAssertionReasons;
  if (suspendCalloutsAssertionReasons)
  {
    [(NSMutableSet *)suspendCalloutsAssertionReasons addObject:v37[5]];
  }

  else
  {
    v20 = [MEMORY[0x277CBEB58] setWithObject:v37[5]];
    v21 = self->_suspendCalloutsAssertionReasons;
    self->_suspendCalloutsAssertionReasons = v20;

    v22 = SBLogAppLibrary();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "suspending callouts", buf, 2u);
    }

    dispatch_suspend(self->_mainQueueProxy);
  }

  _Block_object_dispose(&v36, 8);

  return v13;
}

void __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) signal] && objc_msgSend(*(*(a1 + 40) + 24), "containsObject:", *(*(*(a1 + 48) + 8) + 40)))
  {
    v2 = SBLogAppLibrary();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 48) + 8) + 40);
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "removing suspendCalloutsAssertion '%@'", &v7, 0xCu);
    }

    [*(*(a1 + 40) + 24) removeObject:*(*(*(a1 + 48) + 8) + 40)];
    if (![*(*(a1 + 40) + 24) count])
    {
      v4 = *(a1 + 40);
      v5 = *(v4 + 24);
      *(v4 + 24) = 0;

      dispatch_resume(*(*(a1 + 40) + 32));
      v6 = SBLogAppLibrary();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "resuming callouts", &v7, 2u);
      }
    }
  }
}

void __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  v5 = [v4 code];

  if (v5 != 5)
  {
    v6 = SBLogAppLibrary();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke_31_cold_1(a1, v3, v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_addObserver:(id)a3 table:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (v6 && ([v5 containsObject:v6] & 1) == 0)
  {
    [v5 addObject:v6];
  }
}

- (void)_removeObserver:(id)a3 table:(id)a4
{
  if (a3)
  {
    [a4 removeObject:?];
  }
}

- (void)_waitForLaunchImageGenerationForApplications:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_21ED4E000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v6 = objc_alloc_init(MEMORY[0x277D656A0]);
  [v6 setContentTypeMask:2];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [objc_alloc(MEMORY[0x277D65698]) initWithApplicationInfo:*(*(&v18 + 1) + 8 * v10)];
        [v11 deleteSnapshotsMatchingPredicate:v6];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = dispatch_semaphore_create(0);
  splashBoardController = self->_splashBoardController;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBApplicationLibraryObserver__waitForLaunchImageGenerationForApplications___block_invoke;
  v16[3] = &unk_2783A8C18;
  v14 = v12;
  v17 = v14;
  [(XBApplicationController *)splashBoardController captureOrUpdateLaunchImagesForApplications:v7 firstImageIsReady:v16 completion:0];
  v15 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v14, v15);

  os_activity_scope_leave(&state);
}

- (void)_didAddPlaceholders:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    mainQueueProxy = self->_mainQueueProxy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__SBApplicationLibraryObserver__didAddPlaceholders___block_invoke;
    v6[3] = &unk_2783A92D8;
    v7 = v4;
    v8 = self;
    dispatch_sync(mainQueueProxy, v6);
  }
}

void __52__SBApplicationLibraryObserver__didAddPlaceholders___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 40);
        v9 = [v7 bundleIdentifier];
        [v8 setObject:v7 forKey:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(*(a1 + 40) + 56);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * j) applicationPlaceholdersAdded:{*(a1 + 32), v15}];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_didCancelPlaceholders:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    mainQueueProxy = self->_mainQueueProxy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__SBApplicationLibraryObserver__didCancelPlaceholders___block_invoke;
    v6[3] = &unk_2783A92D8;
    v7 = v4;
    v8 = self;
    dispatch_sync(mainQueueProxy, v6);
  }
}

void __55__SBApplicationLibraryObserver__didCancelPlaceholders___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(a1 + 40) + 40);
        v8 = [*(*(&v18 + 1) + 8 * v6) bundleIdentifier];
        [v7 removeObjectForKey:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(*(a1 + 40) + 56);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) applicationPlaceholdersCancelled:{*(a1 + 32), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_didAddApplications:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mainQueueProxy = self->_mainQueueProxy;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __52__SBApplicationLibraryObserver__didAddApplications___block_invoke;
  v12 = &unk_2783A92D8;
  v6 = v4;
  v13 = v6;
  v14 = self;
  dispatch_sync(mainQueueProxy, &v9);
  v7 = XBLogFileManifest();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 bs_map:{&__block_literal_global_443, v9, v10, v11, v12}];
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Applications were added. Updating launch images for: %{public}@", buf, 0xCu);
  }

  [(SBApplicationLibraryObserver *)self _waitForLaunchImageGenerationForApplications:v6];
}

void __52__SBApplicationLibraryObserver__didAddApplications___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * v9);
        v7 = [v11 bundleIdentifier];

        v12 = [*(*(a1 + 40) + 40) objectForKey:v7];
        if (v12)
        {
          [v3 addObject:v12];
          [*(*(a1 + 40) + 40) removeObjectForKey:v7];
        }

        else
        {
          [v2 addObject:v11];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D0AB18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__SBApplicationLibraryObserver__didAddApplications___block_invoke_2;
  v19[3] = &unk_2783A8ED8;
  v14 = *(a1 + 40);
  v20 = v3;
  v21 = v14;
  v22 = v2;
  v15 = v2;
  v16 = v3;
  v17 = [v13 eventWithName:@"Applications Added" handler:v19];
  v18 = [MEMORY[0x277D0AB20] sharedInstance];
  [v18 executeOrAppendEvent:v17];
}

void __52__SBApplicationLibraryObserver__didAddApplications___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(*(a1 + 40) + 56);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        v6 = 0;
        do
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v16 + 1) + 8 * v6++) applicationPlaceholdersInstalled:*(a1 + 32)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v4);
    }
  }

  if ([*(a1 + 48) count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(*(a1 + 40) + 48);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) applicationsAdded:{*(a1 + 48), v12}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)_didReplaceApplications:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectEnumerator];
  v5 = [v4 allObjects];

  mainQueueProxy = self->_mainQueueProxy;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__SBApplicationLibraryObserver__didReplaceApplications___block_invoke;
  v13 = &unk_2783A92D8;
  v7 = v5;
  v14 = v7;
  v15 = self;
  dispatch_sync(mainQueueProxy, &v10);
  if ([v7 count])
  {
    v8 = XBLogFileManifest();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 bs_map:&__block_literal_global_51_5];
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Applications were replaced. Updating launch images for: %{public}@", buf, 0xCu);
    }

    [(SBApplicationLibraryObserver *)self _waitForLaunchImageGenerationForApplications:v7];
  }
}

void __56__SBApplicationLibraryObserver__didReplaceApplications___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * v9);
        v7 = [v11 bundleIdentifier];

        v12 = [*(*(a1 + 40) + 40) objectForKey:v7];
        if (v12)
        {
          [v3 addObject:v12];
          [*(*(a1 + 40) + 40) removeObjectForKey:v7];
        }

        else
        {
          [v2 addObject:v11];
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x277D0AB18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__SBApplicationLibraryObserver__didReplaceApplications___block_invoke_2;
  v19[3] = &unk_2783A8ED8;
  v14 = *(a1 + 40);
  v20 = v3;
  v21 = v14;
  v22 = v2;
  v15 = v2;
  v16 = v3;
  v17 = [v13 eventWithName:@"Applications Updated" handler:v19];
  v18 = [MEMORY[0x277D0AB20] sharedInstance];
  [v18 executeOrAppendEvent:v17];
}

void __56__SBApplicationLibraryObserver__didReplaceApplications___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(*(a1 + 40) + 56);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v17;
      do
      {
        v6 = 0;
        do
        {
          if (*v17 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v16 + 1) + 8 * v6++) applicationPlaceholdersInstalled:*(a1 + 32)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v4);
    }
  }

  if ([*(a1 + 48) count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = *(*(a1 + 40) + 48);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) applicationsReplaced:{*(a1 + 48), v12}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      }

      while (v9);
    }
  }
}

- (void)_didUpdateApplications:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBApplicationLibraryObserver__didUpdateApplications___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__SBApplicationLibraryObserver__didUpdateApplications___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectEnumerator];
  v3 = [v2 allObjects];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(*(a1 + 40) + 48);
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

        [*(*(&v9 + 1) + 8 * v8++) applicationsUpdated:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_didRemoveApplications:(id)a3
{
  v4 = a3;
  mainQueueProxy = self->_mainQueueProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBApplicationLibraryObserver__didRemoveApplications___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(mainQueueProxy, v7);
}

void __55__SBApplicationLibraryObserver__didRemoveApplications___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0AB18];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__SBApplicationLibraryObserver__didRemoveApplications___block_invoke_2;
  v14 = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = v3;
  v16 = v4;
  v5 = [v2 eventWithName:@"Applications Removed" handler:&v11];
  v6 = [MEMORY[0x277D0AB20] sharedInstance];
  [v6 executeOrAppendEvent:v5];

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v7 = _os_activity_create(&dword_21ED4E000, "XBInvalidate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &v10);

  v8 = XBLogFileManifest();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) _appBundleIDsForApplications:{*(a1 + 32), v10.opaque[0], v10.opaque[1], v11, v12, v13, v14}];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary removed applications. Removing launch images for %{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 8) removeCachedLaunchImagesForApplications:*(a1 + 32) forgettingApps:1];
  os_activity_scope_leave(&v10);
}

void __55__SBApplicationLibraryObserver__didRemoveApplications___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(*(a1 + 40) + 48);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) applicationsRemoved:{*(a1 + 32), v7}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)_didDemoteApplications:(id)a3
{
  v4 = a3;
  mainQueueProxy = self->_mainQueueProxy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBApplicationLibraryObserver__didDemoteApplications___block_invoke;
  v7[3] = &unk_2783A92D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(mainQueueProxy, v7);
}

void __55__SBApplicationLibraryObserver__didDemoteApplications___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0AB18];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__SBApplicationLibraryObserver__didDemoteApplications___block_invoke_2;
  v14 = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = v3;
  v16 = v4;
  v5 = [v2 eventWithName:@"Applications Demoted" handler:&v11];
  v6 = [MEMORY[0x277D0AB20] sharedInstance];
  [v6 executeOrAppendEvent:v5];

  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  v7 = _os_activity_create(&dword_21ED4E000, "XBInvalidate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &v10);

  v8 = XBLogFileManifest();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 40) _appBundleIDsForApplications:{*(a1 + 32), v10.opaque[0], v10.opaque[1], v11, v12, v13, v14}];
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary demoted applications. Removing launch images for %{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 8) removeCachedLaunchImagesForApplications:*(a1 + 32) forgettingApps:1];
  os_activity_scope_leave(&v10);
}

void __55__SBApplicationLibraryObserver__didDemoteApplications___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(*(a1 + 40) + 48);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) applicationsDemoted:{*(a1 + 32), v7}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)_didChangeNetworkUsage:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__SBApplicationLibraryObserver__didChangeNetworkUsage___block_invoke;
  v3[3] = &unk_2783A9F58;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __55__SBApplicationLibraryObserver__didChangeNetworkUsage___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) applicationPlaceholdersNetworkUsageChanged:{*(a1 + 40), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  mainQueueProxy = self->_mainQueueProxy;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__SBApplicationLibraryObserver_profileConnectionDidReceiveEffectiveSettingsChangedNotification_userInfo___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(mainQueueProxy, block);
}

void __105__SBApplicationLibraryObserver_profileConnectionDidReceiveEffectiveSettingsChangedNotification_userInfo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SBLogAppLibrary();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "restriction update: profile change", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) applicationRestrictionsMayHaveChanged];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  mainQueueProxy = self->_mainQueueProxy;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__SBApplicationLibraryObserver_profileConnectionDidReceiveProfileListChangedNotification_userInfo___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(mainQueueProxy, block);
}

void __99__SBApplicationLibraryObserver_profileConnectionDidReceiveProfileListChangedNotification_userInfo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SBLogAppLibrary();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "visibility update: profile change", buf, 2u);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = *(*(a1 + 32) + 48);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) applicationVisibilityMayHaveChanged];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)initWithAppLibrary:splashBoardController:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplicationLibraryObserver initWithAppLibrary:splashBoardController:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplicationLibraryObserver.m" lineNumber:59 description:@"this call must be made on the main thread"];
}

- (void)suspendCalloutsAssertionWithReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationLibraryObserver.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)suspendCalloutsAssertionWithReason:.cold.2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplicationLibraryObserver suspendCalloutsAssertionWithReason:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplicationLibraryObserver.m" lineNumber:119 description:@"this call must be made on the main thread"];
}

void __67__SBApplicationLibraryObserver_suspendCalloutsAssertionWithReason___block_invoke_31_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "unexpected response from suspendCalloutsAssertion '%@' : %@", &v4, 0x16u);
}

@end