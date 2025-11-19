@interface WLKAppLibraryCore
+ (id)sharedInstance;
- (BOOL)containsAppOfInterest:(id)a3;
- (WLKAppLibraryCore)init;
- (id)_connection;
- (id)_nonConformingBundleList;
- (id)_otherBundlesOfInterest;
- (void)_fetchApplicationsInProcess:(id)a3;
- (void)fetchApplications:(id)a3;
@end

@implementation WLKAppLibraryCore

+ (id)sharedInstance
{
  if (sharedInstance___once_2 != -1)
  {
    +[WLKAppLibraryCore sharedInstance];
  }

  v3 = sharedInstance___singleInstance;

  return v3;
}

uint64_t __35__WLKAppLibraryCore_sharedInstance__block_invoke()
{
  sharedInstance___singleInstance = objc_alloc_init(WLKAppLibraryCore);

  return MEMORY[0x2821F96F8]();
}

- (WLKAppLibraryCore)init
{
  v9.receiver = self;
  v9.super_class = WLKAppLibraryCore;
  v2 = [(WLKAppLibraryCore *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.WatchListKit.AppLibraryCore", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277D37CA8]);
    subscriptionManager = v2->_subscriptionManager;
    v2->_subscriptionManager = v6;

    v2->_xpcLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)_connection
{
  os_unfair_lock_lock(&self->_xpcLock);
  if (!self->_connection)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    connection = self->_connection;
    self->_connection = v3;

    v5 = self->_connection;
    v6 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v5 setExportedInterface:v6];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v7 = self->_connection;
    v8 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_69_0];
    objc_initWeak(&location, self);
    v9 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __32__WLKAppLibraryCore__connection__block_invoke_2;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v9 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_xpcLock);
  v10 = self->_connection;

  return v10;
}

- (void)fetchApplications:(id)a3
{
  v4 = a3;
  if ((WLKIsDaemon() & 1) != 0 || WLKIsRunningTest())
  {
    v5 = WLKStartupSignpostLogObject();
    v6 = os_signpost_id_generate(v5);

    v7 = WLKStartupSignpostLogObject();
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LibraryCore.fetchApplicationsInProcess", &unk_272A8884E, buf, 2u);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke;
    v22[3] = &unk_279E5EED8;
    v9 = v23;
    v23[0] = v4;
    v23[1] = v6;
    v10 = v4;
    [(WLKAppLibraryCore *)self _fetchApplicationsInProcess:v22];
  }

  else
  {
    v11 = [(WLKAppLibraryCore *)self _connection];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke_5;
    v20[3] = &unk_279E5EB38;
    v9 = &v21;
    v12 = v4;
    v21 = v12;
    v13 = [v11 remoteObjectProxyWithErrorHandler:v20];

    v14 = [MEMORY[0x277CBEAA8] date];
    NSLog(&cfstr_Wlkapplibraryc_0.isa);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__WLKAppLibraryCore_fetchApplications___block_invoke_2;
    v17[3] = &unk_279E5EF00;
    v18 = v14;
    v19 = v12;
    v15 = v12;
    v16 = v14;
    [v13 fetchApplications:v17];
  }
}

void __39__WLKAppLibraryCore_fetchApplications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WLKStartupSignpostLogObject();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LibraryCore.fetchApplicationsInProcess", &unk_272A8884E, v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __39__WLKAppLibraryCore_fetchApplications___block_invoke_5(uint64_t a1, uint64_t a2)
{
  NSLog(&cfstr_Wlkapplibraryc.isa, a2);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __39__WLKAppLibraryCore_fetchApplications___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  NSLog(&cfstr_Wlkapplibraryc_1.isa, v4);

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (BOOL)containsAppOfInterest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v10 = [v9 entitlementValueForKey:@"com.apple.smoot.subscriptionservice" ofClass:{objc_opt_class(), v17}];

      v11 = [(WLKAppLibraryCore *)self _otherBundlesOfInterest];
      v12 = [v9 bundleIdentifier];
      v13 = [v11 containsObject:v12];

      v14 = 1;
      if (v10 || (v13 & 1) != 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_nonConformingBundleList
{
  if (_nonConformingBundleList_onceToken != -1)
  {
    [WLKAppLibraryCore _nonConformingBundleList];
  }

  v3 = _nonConformingBundleList___nonConformingBundles;

  return v3;
}

void __45__WLKAppLibraryCore__nonConformingBundleList__block_invoke()
{
  v0 = _nonConformingBundleList___nonConformingBundles;
  _nonConformingBundleList___nonConformingBundles = &unk_288222F18;
}

- (id)_otherBundlesOfInterest
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__WLKAppLibraryCore__otherBundlesOfInterest__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  if (_otherBundlesOfInterest_onceToken != -1)
  {
    dispatch_once(&_otherBundlesOfInterest_onceToken, block);
  }

  return _otherBundlesOfInterest___bundlesOfInterest;
}

void __44__WLKAppLibraryCore__otherBundlesOfInterest__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = [*(a1 + 32) _nonConformingBundleList];
  v6 = [v1 arrayWithArray:v2];

  v3 = WLKTVAppBundleID();
  [v6 addObject:v3];

  v4 = [v6 copy];
  v5 = _otherBundlesOfInterest___bundlesOfInterest;
  _otherBundlesOfInterest___bundlesOfInterest = v4;
}

- (void)_fetchApplicationsInProcess:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke;
  v7[3] = &unk_279E5EFC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = WLKStartupSignpostLogObject();
  v6 = os_signpost_id_generate(v5);

  v7 = WLKStartupSignpostLogObject();
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LibraryCore.fetchApplicationsInProcess.filter", &unk_272A8884E, buf, 2u);
  }

  v10 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_29;
  v75[3] = &unk_279E5EF48;
  v75[4] = *(a1 + 32);
  [v10 setFilter:v75];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSinceDate:v4];
  NSLog(&cfstr_Wlkapplibraryc_2.isa, v12);

  v13 = WLKStartupSignpostLogObject();
  v14 = v13;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v14, OS_SIGNPOST_INTERVAL_END, v6, "LibraryCore.fetchApplicationsInProcess.filter", &unk_272A8884E, buf, 2u);
  }

  v15 = WLKStartupSignpostLogObject();
  v16 = v15;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LibraryCore.fetchApplicationsInProcess.checkAppRecords", &unk_272A8884E, buf, 2u);
  }

  v54 = v3;
  v55 = v6 - 1;
  v52 = v6;
  v53 = v4;
  v57 = a1;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
  v56 = v17;
  if (v18)
  {
    v19 = v18;
    LODWORD(v20) = 0;
    v21 = *v72;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v72 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v71 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = WLKAppProxyForLSApplicationRecord(v23);
        v26 = [v25 isEntitled];
        v27 = v2;
        if (v26)
        {
          goto LABEL_18;
        }

        v28 = [v25 isTVApp];
        v27 = v2;
        if (v28)
        {
          goto LABEL_18;
        }

        v29 = [*(v57 + 32) _nonConformingBundleList];
        v30 = [v25 bundleIdentifier];
        v31 = [v29 containsObject:v30];

        v17 = v56;
        v27 = v58;
        if (v31)
        {
LABEL_18:
          [v27 addObject:v25];
        }

        objc_autoreleasePoolPop(v24);
      }

      v20 = (v20 + v19);
      v19 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  v32 = [MEMORY[0x277CBEAA8] date];
  [v32 timeIntervalSinceDate:v53];
  NSLog(&cfstr_Wlkapplibraryc_3.isa, v33, v20);

  v34 = WLKStartupSignpostLogObject();
  v35 = v34;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v35, OS_SIGNPOST_INTERVAL_END, v52, "LibraryCore.fetchApplicationsInProcess.checkAppRecords", &unk_272A8884E, buf, 2u);
  }

  v36 = WLKStartupSignpostLogObject();
  v37 = v36;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v52, "LibraryCore.fetchApplicationsInProcess.InstalledAppBundles", &unk_272A8884E, buf, 2u);
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_37;
  v67[3] = &unk_279E5EF70;
  v38 = v49;
  v68 = v38;
  v39 = v51;
  v69 = v39;
  v40 = v50;
  v70 = v40;
  [v2 enumerateObjectsUsingBlock:v67];
  v41 = WLKStartupSignpostLogObject();
  v42 = v41;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v42, OS_SIGNPOST_INTERVAL_END, v52, "LibraryCore.fetchApplicationsInProcess.InstalledAppBundles", &unk_272A8884E, buf, 2u);
  }

  v43 = objc_alloc_init(MEMORY[0x277CCAB58]);
  if ([v39 count])
  {
    v44 = WLKStartupSignpostLogObject();
    v45 = v44;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v45, OS_SIGNPOST_INTERVAL_BEGIN, v52, "LibraryCore.fetchApplicationsInProcess.ActiveSubscription", &unk_272A8884E, buf, 2u);
    }

    v46 = *(*(v57 + 32) + 24);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_40;
    v59[3] = &unk_279E5EF98;
    v66 = v52;
    v60 = v39;
    v61 = v43;
    v62 = v54;
    v63 = v38;
    v65 = *(v57 + 40);
    v64 = v58;
    [v46 getActiveSubscriptionServicesMatchingBundleIdentifiers:v40 domainIdentifiers:MEMORY[0x277CBEBF8] maximumExpirationLimit:v59 completionHandler:31104000.0];

    v47 = v60;
    goto LABEL_39;
  }

  NSLog(&cfstr_Wlkapplibraryc_5.isa);
  _configureDemoBundles(v39, v54, v38);
  if (*(v57 + 40))
  {
    v47 = (*(fetchedApplicationsCompletion + 2))(fetchedApplicationsCompletion, v39, v54, v38, v58);
    (*(*(v57 + 40) + 16))();
LABEL_39:
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"com.apple.smoot.subscriptionservice" ofClass:objc_opt_class()];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) _otherBundlesOfInterest];
    v8 = [v3 bundleIdentifier];
    v6 = [v7 containsObject:v8];
  }

  return v6;
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_37(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isAppStoreVendable] & 1) == 0 && (objc_msgSend(v5, "isSystemApp") & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
  }

  [*(a1 + 40) addObject:v5];
  v3 = *(a1 + 48);
  v4 = [v5 bundleIdentifier];
  [v3 addObject:v4];
}

void __49__WLKAppLibraryCore__fetchApplicationsInProcess___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v5 = a3;
  v6 = WLKStartupSignpostLogObject();
  v7 = v6;
  v8 = *(a1 + 80);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, v8, "LibraryCore.fetchApplicationsInProcess.ActiveSubscription", &unk_272A8884E, buf, 2u);
  }

  v9 = WLKStartupSignpostLogObject();
  v10 = v9;
  v11 = *(a1 + 80);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "LibraryCore.fetchApplicationsInProcess.SubscribedAppBundle", &unk_272A8884E, buf, 2u);
  }

  if (v5)
  {
    NSLog(&cfstr_Wlkapplibraryc_4.isa, v5);
  }

  v32 = v5;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v33 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        if ([*(a1 + 32) count])
        {
          v18 = 0;
          while (1)
          {
            v19 = [*(a1 + 32) objectAtIndexedSubscript:v18];
            v20 = [v19 bundleIdentifier];
            v21 = [v20 isEqualToString:v17];

            if (v21)
            {
              break;
            }

            if (++v18 >= [*(a1 + 32) count])
            {
              goto LABEL_20;
            }
          }

          [*(a1 + 40) addIndex:v18];
          v22 = [v19 dictionaryRepresentation];
          v23 = [v22 mutableCopy];

          v24 = [v33 objectForKeyedSubscript:v17];
          v25 = [v24 objectForKeyedSubscript:@"type"];

          [v23 setObject:v25 forKeyedSubscript:@"WLKAppProxy.subscriptionInfo"];
          v26 = [[WLKAppProxy alloc] initWithDictionary:v23];
          [*(a1 + 48) addObject:v26];
        }

LABEL_20:
        ;
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }

  v27 = WLKStartupSignpostLogObject();
  v28 = v27;
  v29 = *(a1 + 80);
  if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v28, OS_SIGNPOST_INTERVAL_END, v29, "LibraryCore.fetchApplicationsInProcess.SubscribedAppBundle", &unk_272A8884E, buf, 2u);
  }

  [*(a1 + 32) removeObjectsAtIndexes:*(a1 + 40)];
  _configureDemoBundles(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  if (*(a1 + 72))
  {
    v30 = (*(fetchedApplicationsCompletion + 2))(fetchedApplicationsCompletion, *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    (*(*(a1 + 72) + 16))();
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __32__WLKAppLibraryCore__connection__block_invoke_2(uint64_t a1)
{
  NSLog(&cfstr_Wlkapplibraryc_7.isa);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    v3 = *&v4[4]._os_unfair_lock_opaque;
    *&v4[4]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v4 + 8);
    WeakRetained = v4;
  }
}

@end