@interface WLKAppLibrary
+ (id)defaultAppLibrary;
- (BOOL)isTVAppInstalled;
- (WLKAppLibrary)init;
- (id)_bundleIdentifiersfromProxies:(id)proxies;
- (id)_nonConformingAppBundleIdentifiers;
- (id)_nonConformingAppProxies;
- (id)_refreshAppLibrary;
- (id)_subscriptionInfosForProxies:(id)proxies;
- (id)allAppBundleIdentifiers;
- (id)allAppProxies;
- (id)allAppProxiesPerCategory;
- (id)dictionaryRepresentation;
- (id)installedAppBundleIdentifiers;
- (id)installedAppProxies;
- (id)localizedNameForBundle:(id)bundle;
- (id)refresh;
- (id)subscribedAppBundleIdentifiers;
- (id)subscribedAppProxies;
- (id)subscriptionInfoForBundle:(id)bundle;
- (id)testAppBundleIdentifiers;
- (id)testAppProxies;
- (void)_handleInvalidationWithReason:(id)reason;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)beginIgnoringAppLibraryChanges;
- (void)dealloc;
- (void)endIgnoringAppLibraryChanges;
@end

@implementation WLKAppLibrary

+ (id)defaultAppLibrary
{
  if (defaultAppLibrary___once != -1)
  {
    +[WLKAppLibrary defaultAppLibrary];
  }

  v3 = defaultAppLibrary___defaultAppLibrary;

  return v3;
}

void __34__WLKAppLibrary_defaultAppLibrary__block_invoke()
{
  v0 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Library.Init", &unk_272A8884E, buf, 2u);
  }

  v1 = objc_alloc_init(WLKAppLibrary);
  v2 = defaultAppLibrary___defaultAppLibrary;
  defaultAppLibrary___defaultAppLibrary = v1;

  v3 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Library.Init", &unk_272A8884E, v4, 2u);
  }
}

- (WLKAppLibrary)init
{
  v14.receiver = self;
  v14.super_class = WLKAppLibrary;
  v2 = [(WLKAppLibrary *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("WLKAppLibraryQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("WLKAppLibraryRefreshQueue", 0);
    refreshQueue = v2->_refreshQueue;
    v2->_refreshQueue = v5;

    if (WLKIsDaemon())
    {
      refresh = [(WLKAppLibrary *)v2 refresh];
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      [defaultWorkspace addObserver:v2];
    }

    else
    {
      _refreshAppLibrary = [(WLKAppLibrary *)v2 _refreshAppLibrary];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__subscriptionsDidChangeNotification_ name:@"VSActiveSubscriptionsDidChangeNotification" object:0];

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __21__WLKAppLibrary_init__block_invoke;
    handler[3] = &unk_279E5F5B8;
    v13 = v2;
    notify_register_dispatch("com.apple.WatchListKit.WLKAppLibraryDidChangeNotification", &v2->_didChangeNotificationToken, MEMORY[0x277D85CD0], handler);
  }

  return v2;
}

- (id)_refreshAppLibrary
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Library.Refresh", &unk_272A8884E, buf, 2u);
  }

  v5 = dispatch_semaphore_create(0);
  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__6;
  v37 = __Block_byref_object_dispose__6;
  v38 = 0;
  v6 = +[WLKAppLibraryCore sharedInstance];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __35__WLKAppLibrary__refreshAppLibrary__block_invoke;
  v30[3] = &unk_279E5FE68;
  v32 = buf;
  v7 = v5;
  v31 = v7;
  [v6 fetchApplications:v30];

  if (WLKIsDaemon())
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = WLKStartupSignpostLogObject();
    if (os_signpost_enabled(v8))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Library.Refresh", &unk_272A8884E, v24, 2u);
    }

LABEL_13:
    *v24 = 0;
    v25 = v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__6;
    v28 = __Block_byref_object_dispose__6;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__6;
    v22[4] = __Block_byref_object_dispose__6;
    v23 = 0;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__6;
    v20[4] = __Block_byref_object_dispose__6;
    v21 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__6;
    v18[4] = __Block_byref_object_dispose__6;
    v19 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WLKAppLibrary__refreshAppLibrary__block_invoke_29;
    block[3] = &unk_279E5FE90;
    block[4] = self;
    block[5] = v24;
    block[6] = v22;
    block[7] = v20;
    block[8] = v18;
    block[9] = buf;
    block[10] = &v39;
    dispatch_sync(accessQueue, block);
    _Block_object_dispose(v18, 8);

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);

    _Block_object_dispose(v24, 8);
    v13 = 1;
    goto LABEL_14;
  }

  v9 = dispatch_time(0, 5000000000);
  v10 = dispatch_semaphore_wait(v7, v9);
  v11 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v11))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Library.Refresh", &unk_272A8884E, v24, 2u);
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = WLKSystemLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - Timeout while waiting for list of apps.", v24, 2u);
  }

  v13 = 0;
LABEL_14:

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(v3);
  if (v13)
  {
    v15 = v40[5];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v39, 8);

  return v15;
}

- (id)allAppProxiesPerCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WLKAppLibrary_allAppProxiesPerCategory__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__WLKAppLibrary_allAppProxiesPerCategory__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __35__WLKAppLibrary__refreshAppLibrary__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __35__WLKAppLibrary__refreshAppLibrary__block_invoke_29(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = [*(v2 + 40) copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(a1[5] + 8) + 40), v4);
  if (v3)
  {
  }

  v5 = a1[4];
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = [*(v5 + 24) copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v7);
  if (v6)
  {
  }

  v8 = a1[4];
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = [*(v8 + 32) copy];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(a1[7] + 8) + 40), v10);
  if (v9)
  {
  }

  v11 = a1[4];
  v12 = [v11[1] objectForKeyedSubscript:@"Subscribed"];
  v13 = [v11 _subscriptionInfosForProxies:v12];
  v14 = *(a1[8] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  objc_storeStrong((a1[4] + 8), *(*(a1[9] + 8) + 40));
  v16 = a1[4];
  v17 = [v16[1] objectForKeyedSubscript:@"Test"];
  v18 = [v16 _bundleIdentifiersfromProxies:v17];
  v19 = a1[4];
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(a1[4] + 40) sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v22 = a1[4];
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = a1[4];
  v25 = [v24[1] objectForKeyedSubscript:@"Installed"];
  v26 = [v24 _bundleIdentifiersfromProxies:v25];
  v27 = a1[4];
  v28 = *(v27 + 24);
  *(v27 + 24) = v26;

  v29 = [*(a1[4] + 24) sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v30 = a1[4];
  v31 = *(v30 + 24);
  *(v30 + 24) = v29;

  v32 = a1[4];
  v33 = [v32[1] objectForKeyedSubscript:@"Subscribed"];
  v34 = [v32 _bundleIdentifiersfromProxies:v33];
  v35 = a1[4];
  v36 = *(v35 + 32);
  *(v35 + 32) = v34;

  v37 = [*(a1[4] + 32) sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v38 = a1[4];
  v39 = *(v38 + 32);
  *(v38 + 32) = v37;

  v40 = a1[4];
  v41 = [v40[1] objectForKeyedSubscript:@"NonConforming"];
  v42 = [v40 _bundleIdentifiersfromProxies:v41];
  v43 = a1[4];
  v44 = *(v43 + 48);
  *(v43 + 48) = v42;

  v45 = [*(a1[4] + 48) sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v46 = a1[4];
  v47 = *(v46 + 48);
  *(v46 + 48) = v45;

  v48 = a1[4];
  v49 = [v48[1] objectForKeyedSubscript:@"Subscribed"];
  v50 = [v48 _subscriptionInfosForProxies:v49];

  v51 = [MEMORY[0x277CBEB58] set];
  [v51 addObjectsFromArray:*(a1[4] + 40)];
  [v51 addObjectsFromArray:*(a1[4] + 24)];
  [v51 addObjectsFromArray:*(a1[4] + 32)];
  v52 = [v51 allObjects];
  v53 = a1[4];
  v54 = *(v53 + 16);
  *(v53 + 16) = v52;

  v55 = *(*(a1[5] + 8) + 40);
  if (v55 || *(*(a1[6] + 8) + 40) || *(*(a1[7] + 8) + 40))
  {
    v56 = *(a1[4] + 40);
    v57 = v55;
    v58 = v57;
    if (v56 == v57)
    {
    }

    else
    {
      if (!v57 || !v56)
      {
        goto LABEL_42;
      }

      v59 = [v56 isEqual:v57];

      if (!v59)
      {
        goto LABEL_43;
      }
    }

    v60 = *(*(a1[6] + 8) + 40);
    v56 = *(a1[4] + 24);
    v61 = v60;
    v58 = v61;
    if (v56 == v61)
    {
    }

    else
    {
      if (!v56 || !v61)
      {
        goto LABEL_42;
      }

      v62 = [v56 isEqual:v61];

      if (!v62)
      {
        goto LABEL_43;
      }
    }

    v63 = *(*(a1[7] + 8) + 40);
    v56 = *(a1[4] + 32);
    v64 = v63;
    v58 = v64;
    if (v56 == v64)
    {

LABEL_37:
      v66 = *(*(a1[8] + 8) + 40);
      v56 = v50;
      v67 = v66;
      v58 = v67;
      if (v56 == v67)
      {
LABEL_56:

        goto LABEL_57;
      }

      if (v56 && v67)
      {
        v68 = [v56 isEqual:v67];

        if (v68)
        {
          goto LABEL_57;
        }

        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v56 && v64)
    {
      v65 = [v56 isEqual:v64];

      if (!v65)
      {
        goto LABEL_43;
      }

      goto LABEL_37;
    }

LABEL_42:

LABEL_43:
    v56 = [MEMORY[0x277CBEB38] dictionary];
    v69 = [*(*(a1[5] + 8) + 40) wlk_arrayDifference:*(a1[4] + 40)];
    if ([v69 count])
    {
      [v56 setObject:v69 forKeyedSubscript:@"TestChanges"];
    }

    v70 = [*(*(a1[6] + 8) + 40) wlk_arrayDifference:*(a1[4] + 24)];

    if ([v70 count])
    {
      [v56 setObject:v70 forKeyedSubscript:@"InstalledChanges"];
    }

    v71 = [*(*(a1[7] + 8) + 40) wlk_arrayDifference:*(a1[4] + 32)];

    if ([v71 count])
    {
      [v56 setObject:v71 forKeyedSubscript:@"SubscribedChanges"];
      v58 = v71;
    }

    else
    {
      v58 = [*(*(a1[8] + 8) + 40) wlk_dictionaryDifference:v50];

      if ([v58 count])
      {
        v72 = WLKSystemLogObject();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v58;
          _os_log_impl(&dword_272A0F000, v72, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - Subscription info did change: %@", buf, 0xCu);
        }

        v80 = @"SubscriptionInfoChanges";
        v81 = v58;
        v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        [v56 setObject:v73 forKeyedSubscript:@"SubscribedChanges"];
      }
    }

    v74 = [v56 copy];
    v75 = *(a1[10] + 8);
    v76 = *(v75 + 40);
    *(v75 + 40) = v74;

    v77 = WLKSystemLogObject();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = *(*(a1[10] + 8) + 40);
      *buf = 138412290;
      v83 = v78;
      _os_log_impl(&dword_272A0F000, v77, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - Library did change: %@", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_57:

  v79 = *MEMORY[0x277D85DE8];
}

void __41__WLKAppLibrary_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"Installed"];
    v4 = *(a1 + 32);
  }

  v6 = v4[4];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"Subscribed"];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{@"Subscribed", 0}];
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [v13 subscriptionInfo];
          v15 = [v13 bundleIdentifier];
          [v7 setObject:v14 forKey:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    [v3 setObject:v16 forKeyedSubscript:@"SubscriptionInfo"];

    v4 = *(a1 + 32);
  }

  v17 = v4[5];
  if (v17)
  {
    [v3 setObject:v17 forKeyedSubscript:@"Test"];
    v4 = *(a1 + 32);
  }

  v18 = v4[6];
  if (v18)
  {
    [v3 setObject:v18 forKeyedSubscript:@"NonConforming"];
  }

  v19 = [v3 copy];
  v20 = *(*(a1 + 40) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WLKAppLibrary_dictionaryRepresentation__block_invoke;
  v5[3] = &unk_279E5F9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __21__WLKAppLibrary_init__block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 88), &state64);
  result = getpid();
  if (state64 != result)
  {
    return [*(a1 + 32) _handleInvalidationWithReason:@"WLKAppLibraryDidChange"];
  }

  return result;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  didChangeNotificationToken = self->_didChangeNotificationToken;
  if (didChangeNotificationToken)
  {
    notify_cancel(didChangeNotificationToken);
  }

  v6.receiver = self;
  v6.super_class = WLKAppLibrary;
  [(WLKAppLibrary *)&v6 dealloc];
}

- (id)installedAppBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__WLKAppLibrary_installedAppBundleIdentifiers__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)subscribedAppBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__WLKAppLibrary_subscribedAppBundleIdentifiers__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)testAppBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WLKAppLibrary_testAppBundleIdentifiers__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)allAppBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__WLKAppLibrary_allAppBundleIdentifiers__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)installedAppProxies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__WLKAppLibrary_installedAppProxies__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __36__WLKAppLibrary_installedAppProxies__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"Installed"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)subscribedAppProxies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__WLKAppLibrary_subscribedAppProxies__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__WLKAppLibrary_subscribedAppProxies__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"Subscribed"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)testAppProxies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__WLKAppLibrary_testAppProxies__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__WLKAppLibrary_testAppProxies__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"Test"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)allAppProxies
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = [MEMORY[0x277CBEB58] set];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__WLKAppLibrary_allAppProxies__block_invoke;
  v6[3] = &unk_279E5F280;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  allObjects = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return allObjects;
}

void __30__WLKAppLibrary_allAppProxies__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"Installed"];
  [v2 addObjectsFromArray:v3];

  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"Subscribed"];
  [v4 addObjectsFromArray:v5];

  v6 = *(a1 + 32);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [*(v6 + 8) objectForKeyedSubscript:@"Test"];
  [v7 addObjectsFromArray:v8];
}

- (id)subscriptionInfoForBundle:(id)bundle
{
  bundleCopy = bundle;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__WLKAppLibrary_subscriptionInfoForBundle___block_invoke;
  block[3] = &unk_279E5FE18;
  block[4] = self;
  v10 = bundleCopy;
  v11 = &v12;
  v6 = bundleCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __43__WLKAppLibrary_subscriptionInfoForBundle___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:{@"Subscribed", 0}];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          v10 = [v7 subscriptionInfo];
          v11 = *(a1[6] + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)localizedNameForBundle:(id)bundle
{
  bundleCopy = bundle;
  v11 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:bundleCopy error:&v11];
  v5 = v11;
  if (v5)
  {

    v10 = 0;
    v6 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:bundleCopy allowPlaceholder:0 error:&v10];
    v7 = v10;

    v4 = v6;
  }

  localizedName = [v4 localizedName];

  return localizedName;
}

- (BOOL)isTVAppInstalled
{
  installedAppBundleIdentifiers = [(WLKAppLibrary *)self installedAppBundleIdentifiers];
  v3 = WLKTVAppBundleID();
  v4 = [installedAppBundleIdentifiers containsObject:v3];

  return v4;
}

- (id)refresh
{
  v3 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLKAppLibrary.refresh"];
  _refreshAppLibrary = [(WLKAppLibrary *)self _refreshAppLibrary];
  if (_refreshAppLibrary)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"WLKAppLibraryDidChangeNotification" object:_refreshAppLibrary];

    if (WLKShouldRunInProcess())
    {
      v6 = WLKSystemLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - posting cross process note", v10, 2u);
      }

      didChangeNotificationToken = self->_didChangeNotificationToken;
      v8 = getpid();
      notify_set_state(didChangeNotificationToken, v8);
      notify_post("com.apple.WatchListKit.WLKAppLibraryDidChangeNotification");
    }
  }

  return _refreshAppLibrary;
}

- (id)_subscriptionInfosForProxies:(id)proxies
{
  v3 = MEMORY[0x277CBEB38];
  proxiesCopy = proxies;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__WLKAppLibrary__subscriptionInfosForProxies___block_invoke;
  v9[3] = &unk_279E5FE40;
  v10 = v5;
  v6 = v5;
  [proxiesCopy enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __46__WLKAppLibrary__subscriptionInfosForProxies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 bundleIdentifier];
  v4 = [v3 subscriptionInfo];

  if ([v5 length] && objc_msgSend(v4, "length"))
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
  }
}

- (id)_nonConformingAppBundleIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__WLKAppLibrary__nonConformingAppBundleIdentifiers__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nonConformingAppProxies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__WLKAppLibrary__nonConformingAppProxies__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__WLKAppLibrary__nonConformingAppProxies__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:@"NonConforming"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)beginIgnoringAppLibraryChanges
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLKAppLibrary_beginIgnoringAppLibraryChanges__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)endIgnoringAppLibraryChanges
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WLKAppLibrary_endIgnoringAppLibraryChanges__block_invoke;
  block[3] = &unk_279E5F9D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(accessQueue, block);
  if (*(v11 + 24) == 1)
  {
    v4 = WLKSystemLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - No longer ignoring app library. Refreshing...", buf, 2u);
    }

    objc_initWeak(buf, self);
    refreshQueue = self->_refreshQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__WLKAppLibrary_endIgnoringAppLibraryChanges__block_invoke_26;
    v6[3] = &unk_279E5EC50;
    objc_copyWeak(&v7, buf);
    dispatch_async(refreshQueue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __45__WLKAppLibrary_endIgnoringAppLibraryChanges__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 80);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (!v3)
  {
    *(v1 + 80) = v4;
    v5 = *(result + 32);
    if (!*(v5 + 80) && *(v5 + 72) == 1)
    {
      *(v5 + 72) = 0;
      *(*(*(result + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void __45__WLKAppLibrary_endIgnoringAppLibraryChanges__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained refresh];
}

- (id)_bundleIdentifiersfromProxies:(id)proxies
{
  v19 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = proxiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        [array addObject:bundleIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [array copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_handleInvalidationWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLKAppLibrary__handleInvalidationWithReason___block_invoke;
  block[3] = &unk_279E5FE18;
  block[4] = self;
  v6 = reasonCopy;
  v13 = v6;
  v14 = &v15;
  dispatch_sync(accessQueue, block);
  if (*(v16 + 24) == 1)
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - Invalidating: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    refreshQueue = self->_refreshQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__WLKAppLibrary__handleInvalidationWithReason___block_invoke_34;
    v10[3] = &unk_279E5EC50;
    objc_copyWeak(&v11, buf);
    dispatch_async(refreshQueue, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void __47__WLKAppLibrary__handleInvalidationWithReason___block_invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 80) >= 1)
  {
    v2 = WLKSystemLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[5];
      v4 = *(a1[4] + 80);
      v6 = 138412546;
      v7 = v3;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKAppLibrary - %@, but currently ignoring app library changes (%ld).", &v6, 0x16u);
    }

    *(a1[4] + 72) = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __47__WLKAppLibrary__handleInvalidationWithReason___block_invoke_34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained refresh];
}

- (void)applicationsDidInstall:(id)install
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  installCopy = install;
  v5 = [installCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  defaultCenter = installCopy;
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(installCopy);
        }

        bundleIdentifier = [*(*(&v16 + 1) + 8 * i) bundleIdentifier];
        v11 = WLKTVAppBundleID();
        v12 = [bundleIdentifier isEqualToString:v11];

        if (v12)
        {

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"WLKAppLibraryTVAppDidInstallNotification" object:self];
          goto LABEL_11;
        }
      }

      v7 = [installCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    defaultCenter = installCopy;
  }

LABEL_11:

  v13 = +[WLKAppLibraryCore sharedInstance];
  v14 = [v13 containsAppOfInterest:installCopy];

  if (v14)
  {
    [(WLKAppLibrary *)self _handleInvalidationWithReason:@"App installed"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
  v5 = +[WLKAppLibraryCore sharedInstance];
  v6 = [v5 containsAppOfInterest:uninstallCopy];

  if (v6)
  {

    [(WLKAppLibrary *)self _handleInvalidationWithReason:@"App uninstalled"];
  }
}

@end