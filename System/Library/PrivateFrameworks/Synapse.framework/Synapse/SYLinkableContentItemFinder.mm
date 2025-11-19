@interface SYLinkableContentItemFinder
- (BOOL)_shouldIncludeAsLinkableUserActivity:(id)a3 bundleID:(id)a4 foregroundBundleIDs:(id)a5 excludedActivities:(id)a6;
- (SYLinkableContentItemFinder)init;
- (SYLinkableContentItemFinderDelegate)delegate;
- (void)_activityFetchingFinishedWithActivities:(id)a3 appBundleIDs:(id)a4 foregroundBundleIDs:(id)a5 completion:(id)a6;
- (void)_fetchActiveLinkableUserActivitiesExcluding:(id)a3 completion:(id)a4;
- (void)_updateForegroundAppsFromDisplayLayout:(id)a3;
- (void)dealloc;
- (void)fetchLinkableContentItemsExcludingActivities:(id)a3 completion:(id)a4;
- (void)handleRemoteCurrentActivityDidChange;
@end

@implementation SYLinkableContentItemFinder

- (SYLinkableContentItemFinder)init
{
  v18.receiver = self;
  v18.super_class = SYLinkableContentItemFinder;
  v2 = [(SYLinkableContentItemFinder *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.synapse.linkableItemFinder", v3);
    itemFinderQueue = v2->__itemFinderQueue;
    v2->__itemFinderQueue = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _SYHandleRemoteCurrentActivityChange, @"SYRemoteCurrentActivityDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    objc_initWeak(&location, v2);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    v27 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    if (!getFBSDisplayLayoutMonitorConfigurationClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke;
      v22 = &unk_27856B3C8;
      v23 = &v24;
      __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(&v19);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v9 = [v7 configurationForDefaultMainDisplayMonitor];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__SYLinkableContentItemFinder_init__block_invoke;
    v15[3] = &unk_27856BA90;
    objc_copyWeak(&v16, &location);
    [v9 setTransitionHandler:v15];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getFBSDisplayLayoutMonitorClass_softClass;
    v27 = getFBSDisplayLayoutMonitorClass_softClass;
    if (!getFBSDisplayLayoutMonitorClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getFBSDisplayLayoutMonitorClass_block_invoke;
      v22 = &unk_27856B3C8;
      v23 = &v24;
      __getFBSDisplayLayoutMonitorClass_block_invoke(&v19);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = [v10 monitorWithConfiguration:v9];
    displayLayoutMonitor = v2->__displayLayoutMonitor;
    v2->__displayLayoutMonitor = v12;

    v2->__foregroundAppLoadRetriesRemaining = 4;
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__SYLinkableContentItemFinder_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4 && WeakRetained)
  {
    v7 = [WeakRetained _itemFinderQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__SYLinkableContentItemFinder_init__block_invoke_2;
    v8[3] = &unk_27856B5C8;
    v9 = v6;
    v10 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_INFO, "Deallocating", buf, 2u);
  }

  v4 = [(SYLinkableContentItemFinder *)self _displayLayoutMonitor];
  [v4 invalidate];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SYRemoteCurrentActivityDidChange", 0);
  v6.receiver = self;
  v6.super_class = SYLinkableContentItemFinder;
  [(SYLinkableContentItemFinder *)&v6 dealloc];
}

- (void)fetchLinkableContentItemsExcludingActivities:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Request to fetch linkable items started", buf, 2u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke;
  block[3] = &unk_27856BB08;
  block[4] = self;
  v16 = v7;
  v18 = v11;
  v19 = a2;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  dispatch_async(v12, block);
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2;
  v3[3] = &unk_27856BAE0;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _fetchActiveLinkableUserActivitiesExcluding:v2 completion:v3];
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v38 = a3;
  v34 = a4;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v35 = a1;
  v10 = *(a1 + 48);
  v11 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = [v7 count];
    *&buf[12] = 2048;
    *&buf[14] = v9 - v10;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Request to fetch linkable items finished. Found %ld item(s). Duration %0.2fs.", buf, 0x16u);
  }

  v12 = [v7 count];
  if (v12 != [v38 count])
  {
    __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2_cold_1(a1);
  }

  v37 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v45;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = [v38 objectAtIndexedSubscript:v14];
        if (!v18)
        {
          goto LABEL_17;
        }

        v48 = 0;
        v49 = &v48;
        v50 = 0x2050000000;
        v19 = getAPApplicationClass_softClass;
        v51 = getAPApplicationClass_softClass;
        if (!getAPApplicationClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getAPApplicationClass_block_invoke;
          v54 = &unk_27856B3C8;
          v55 = &v48;
          __getAPApplicationClass_block_invoke(buf);
          v19 = v49[3];
        }

        v20 = v19;
        _Block_object_dispose(&v48, 8);
        v21 = [v19 applicationWithBundleIdentifier:v18];
        v22 = [v21 isLocked];

        if (v22)
        {
          v23 = os_log_create("com.apple.synapse", "LinkableItemFinder");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v18;
            _os_log_impl(&dword_225901000, v23, OS_LOG_TYPE_DEFAULT, "Skip app %@ - app protection enabled", buf, 0xCu);
          }

          v24 = v18;
        }

        else
        {
LABEL_17:
          v25 = objc_alloc(MEMORY[0x277CC1E70]);
          v43 = 0;
          v26 = [v25 initWithBundleIdentifier:v18 allowPlaceholder:1 error:&v43];
          v23 = v43;
          if (v26)
          {
            v24 = [v26 localizedName];
            v27 = v18;
          }

          else
          {
            v27 = os_log_create("com.apple.synapse", "LinkableItemFinder");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v18;
              *&buf[12] = 2112;
              *&buf[14] = v23;
              _os_log_error_impl(&dword_225901000, v27, OS_LOG_TYPE_ERROR, "Error loading app record for %@: %@", buf, 0x16u);
            }

            v24 = v18;
          }

          v28 = [[SYContentItem alloc] initWithUserActivity:v17 sourceAppID:v18 sourceAppName:v24 identifier:0];
          [v37 addObject:v28];

          ++v14;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v13);
  }

  v29 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_15;
  block[3] = &unk_27856BAB8;
  v30 = *(v35 + 40);
  v40 = v37;
  v41 = v34;
  v42 = v30;
  v31 = v34;
  v32 = v37;
  dispatch_async(v29, block);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_fetchActiveLinkableUserActivitiesExcluding:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [SYLinkableContentItemFinder _fetchActiveLinkableUserActivitiesExcluding:a2 completion:self];
  }

  v9 = [(SYLinkableContentItemFinder *)self _currentForegroundAppBundleIDs];
  if (v9)
  {
    v10 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      v11 = "Allowing activities from foreground apps only: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_225901000, v12, v13, v11, &buf, v14);
    }
  }

  else
  {
    if ([(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining]>= 1)
    {
      v21 = dispatch_time(0, 50000000);
      v22 = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke;
      block[3] = &unk_27856B510;
      block[4] = self;
      v30 = v7;
      v31 = v8;
      v23 = v7;
      dispatch_after(v21, v22, block);

      [(SYLinkableContentItemFinder *)self set_foregroundAppLoadRetriesRemaining:[(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining]- 1];
      goto LABEL_16;
    }

    v10 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      v11 = "Could not load foreground apps, allowing activities from all.";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 2;
      goto LABEL_6;
    }
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v15 = getUAUserActivityProxyClass_softClass;
  v35 = getUAUserActivityProxyClass_softClass;
  if (!getUAUserActivityProxyClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v37 = __getUAUserActivityProxyClass_block_invoke;
    v38 = &unk_27856B3C8;
    v39 = &v32;
    __getUAUserActivityProxyClass_block_invoke(&buf);
    v15 = v33[3];
  }

  v16 = v15;
  _Block_object_dispose(&v32, 8);
  objc_opt_class();
  v17 = MEMORY[0x277CC1EF0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24;
  v25[3] = &unk_27856BB58;
  v18 = v8;
  v28 = v18;
  v25[4] = self;
  v26 = v9;
  v27 = v7;
  v19 = v7;
  if (([v17 _currentUserActivityProxiesWithOptions:0 matching:0 completionHandler:v25] & 1) == 0)
  {
    v20 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SYLinkableContentItemFinder _fetchActiveLinkableUserActivitiesExcluding:v20 completion:?];
    }

    (*(v18 + 2))(v18, 0, 0, 0);
  }

LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v26 = v6;
  v27 = v5;
  if (!v5 || v6)
  {
    v24 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24_cold_1(v26, v24);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v9)
    {
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          v13 = [v12 uuid];
          v14 = [v12 bundleIdentifier];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = os_log_create("com.apple.synapse", "LinkableItemFinder");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = v13;
              *&buf[12] = 2112;
              *&buf[14] = v15;
              _os_log_impl(&dword_225901000, v17, OS_LOG_TYPE_DEFAULT, "Could not load activity %@ from %@. Proxy returned nil.", buf, 0x16u);
            }
          }

          else
          {
            [v29 addObject:v13];
            [v7 setObject:v15 forKeyedSubscript:v13];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
      }

      while (v9);
    }

    if ([v29 count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v48 = [v29 count];
      v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(*&buf[8] + 24)];
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v29;
      v19 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v19)
      {
        v20 = *v39;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v38 + 1) + 8 * j);
            v23 = MEMORY[0x277CC1EF0];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26;
            v30[3] = &unk_27856BB30;
            v30[4] = *(a1 + 32);
            v31 = v7;
            v32 = v22;
            v33 = *(a1 + 40);
            v34 = *(a1 + 48);
            v35 = v18;
            v37 = buf;
            v36 = *(a1 + 56);
            [v23 _fetchUserActivityWithUUID:v22 completionHandler:v30];
          }

          v19 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v19);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v5)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    if ([*(a1 + 32) _shouldIncludeAsLinkableUserActivity:v5 bundleID:v8 foregroundBundleIDs:*(a1 + 56) excludedActivities:*(a1 + 64)])
    {
      [*(a1 + 72) setObject:v5 forKeyedSubscript:*(a1 + 48)];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26_cold_1(a1, v6, v8);
    }
  }

  if (!--*(*(*(a1 + 88) + 8) + 24))
  {
    [*(a1 + 32) _activityFetchingFinishedWithActivities:*(a1 + 72) appBundleIDs:*(a1 + 40) foregroundBundleIDs:*(a1 + 56) completion:*(a1 + 80)];
  }

  objc_sync_exit(v7);
}

- (BOOL)_shouldIncludeAsLinkableUserActivity:(id)a3 bundleID:(id)a4 foregroundBundleIDs:(id)a5 excludedActivities:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  if (SYIsLinkableUserActivity(v8))
  {
    if (![v10 count])
    {
      v16 = 1;
      goto LABEL_16;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v12)
    {
      v16 = 1;
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v20;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v20 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (SYEquivalentUserActivities(v8, *(*(&v19 + 1) + 8 * v15)))
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 1;
        if (v13)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.synapse", "LinkableItemFinder");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_INFO, "Ignoring user activity from %@. No usable identifier.", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_15:

LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_activityFetchingFinishedWithActivities:(id)a3 appBundleIDs:(id)a4 foregroundBundleIDs:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if (v11)
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v25 = v12;
      v18 = v10;
      v19 = *v36;
      do
      {
        v20 = v15;
        for (i = 0; i != v17; ++i)
        {
          v22 = v9;
          if (*v36 != v19)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v35 + 1) + 8 * i);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke;
          v30[3] = &unk_27856BB80;
          v31 = v18;
          v32 = v23;
          v33 = v13;
          v34 = v14;
          v9 = v22;
          [v22 enumerateKeysAndObjectsUsingBlock:v30];
        }

        v15 = v20;
        v17 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v17);
      v10 = v18;
      v12 = v25;
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke_2;
    v26[3] = &unk_27856BBA8;
    v27 = v10;
    v28 = v13;
    v29 = v14;
    [v9 enumerateKeysAndObjectsUsingBlock:v26];

    v15 = v27;
  }

  v12[2](v12, v13, v14, 0);
  v24 = *MEMORY[0x277D85DE8];
}

void __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v5 isEqualToString:*(a1 + 40)])
  {
    [*(a1 + 48) addObject:v6];
    [*(a1 + 56) addObject:v5];
  }
}

void __115__SYLinkableContentItemFinder__activityFetchingFinishedWithActivities_appBundleIDs_foregroundBundleIDs_completion___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [a1[4] objectForKeyedSubscript:a2];
  if (v5)
  {
    [a1[5] addObject:v6];
    [a1[6] addObject:v5];
  }
}

- (void)_updateForegroundAppsFromDisplayLayout:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 elements];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isUIApplicationElement])
        {
          v12 = [v11 bundleIdentifier];

          if (v12)
          {
            v13 = [v11 bundleIdentifier];
            [v5 addObject:v13];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [(SYLinkableContentItemFinder *)self _foregroundAppBundleIDs];
  [(SYLinkableContentItemFinder *)self set_foregroundAppBundleIDs:v5];
  if (!v14)
  {
    if ([(SYLinkableContentItemFinder *)self _foregroundAppLoadRetriesRemaining])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (([v5 isEqualToArray:v14] & 1) == 0)
  {
LABEL_13:
    v15 = [(SYLinkableContentItemFinder *)self delegate];
    [v15 linkableItemFinderItemsMightHaveChanged:self];
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoteCurrentActivityDidChange
{
  v3 = [(SYLinkableContentItemFinder *)self _itemFinderQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SYLinkableContentItemFinder_handleRemoteCurrentActivityDidChange__block_invoke;
  block[3] = &unk_27856B880;
  block[4] = self;
  dispatch_async(v3, block);
}

void __67__SYLinkableContentItemFinder_handleRemoteCurrentActivityDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 linkableItemFinderItemsMightHaveChanged:*(a1 + 32)];
}

- (SYLinkableContentItemFinderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __87__SYLinkableContentItemFinder_fetchLinkableContentItemsExcludingActivities_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"SYLinkableContentItemFinder.m" lineNumber:139 description:@"Mismatch in number of activities and identifiers."];
}

- (void)_fetchActiveLinkableUserActivitiesExcluding:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYLinkableContentItemFinder.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_24_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Request for current user activities failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __86__SYLinkableContentItemFinder__fetchActiveLinkableUserActivitiesExcluding_completion___block_invoke_26_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Error fetching user activity %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end