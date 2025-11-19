@interface PLApplicationAgent
+ (BOOL)hasScreenPresence:(id)a3;
+ (BOOL)isVisible:(id)a3;
+ (id)appVersionForBundle:(id)a3;
+ (id)entryAggregateDefinitionApplicationReason;
+ (id)entryAggregateDefinitions;
+ (id)entryAggregateDefintionWidgetUpdates;
+ (id)entryEventBackwardDefinitionApplicationMemory;
+ (id)entryEventBackwardDefinitionControlCenterStats;
+ (id)entryEventBackwardDefinitionWidgetStats;
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionAmbientActiveFace;
+ (id)entryEventForwardDefinitionAmbientMode;
+ (id)entryEventForwardDefinitionAmbientModeLifetimeCounter;
+ (id)entryEventForwardDefinitionApplication;
+ (id)entryEventForwardDefinitionApplicationDidUninstall;
+ (id)entryEventForwardDefinitionLiveActivityStats;
+ (id)entryEventForwardDefinitionMotionToWake;
+ (id)entryEventForwardDefinitionRBSApplication;
+ (id)entryEventForwardDefinitionSystemAperture;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventNoneAllApps;
+ (id)entryEventNoneAllPlugins;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionAppDocking;
+ (id)entryEventPointDefinitionAppPrewarm;
+ (id)entryEventPointDefinitionApplicationExitReason;
+ (id)entryEventPointDefinitionControlCenterUpdates;
+ (id)entryEventPointDefinitionLiveActivityUpdates;
+ (id)entryEventPointDefinitionPosterUpdates;
+ (id)entryEventPointDefinitionSuggestedWidgetReload;
+ (id)entryEventPointDefinitionWidgetUpdates;
+ (id)entryEventPointDefinitions;
+ (id)getReasons:(id)a3;
+ (id)installedPlugins;
+ (id)pluginEntryFromRecord:(id)a3;
+ (void)addAppVersion:(id)a3 withVersion:(id)a4;
+ (void)load;
+ (void)removeAppVersion:(id)a3 forVersion:(id)a4;
- (BOOL)checkAppReferenceCleanupNeeded;
- (BOOL)isAppClipWithBundleID:(id)a3;
- (BOOL)stateDidChange:(id)a3 state:(id)a4 prevState:(id)a5;
- (PLApplicationAgent)init;
- (id)getApplicationRecordSet:(id)a3;
- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4;
- (int)RBSStatetoPLState:(id)a3 state:(id)a4;
- (void)appReferenceCleanup;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)buildAppVersionDictionary:(id)a3;
- (void)createWidgetStatsAccountingEvents:(id)a3;
- (void)dealloc;
- (void)displayIdentifiersDidChange;
- (void)initOperatorDependancies;
- (void)logAllApps;
- (void)logAllPlugins;
- (void)logEventBackwardApplicationMemoryWithBundleId:(id)a3 withSuspendedMemory:(id)a4 withPeakMemory:(id)a5;
- (void)logEventBackwardControlCenterStats:(id)a3;
- (void)logEventBackwardWidgetStats:(id)a3;
- (void)logEventForwardAmbientMode:(id)a3;
- (void)logEventForwardAmbientModeActiveFace:(id)a3;
- (void)logEventForwardAmbientModeLifetimeCounter:(id)a3;
- (void)logEventForwardApplicationDidUninstall:(id)a3 withAppName:(id)a4;
- (void)logEventForwardLiveActivityStats:(id)a3;
- (void)logEventForwardMotionToWake:(id)a3;
- (void)logEventForwardSystemAperture:(id)a3;
- (void)logEventPointApplication;
- (void)logEventPointApplicationExitReason:(id)a3;
- (void)logEventPointApplicationForDisplayID:(id)a3;
- (void)logEventPointControlCenterUpdates:(id)a3;
- (void)logEventPointDASAppDocking:(id)a3;
- (void)logEventPointDASAppPrewarm:(id)a3;
- (void)logEventPointLiveActivityUpdates:(id)a3;
- (void)logEventPointPosterUpdates:(id)a3;
- (void)logEventPointSuggestedWidgetReload:(id)a3;
- (void)logEventPointWidgetUpdates:(id)a3;
- (void)logInstalledAppWithRecord:(id)a3 withBundleID:(id)a4 shouldMaskTimestamp:(BOOL)a5;
- (void)logInstalledPlugin:(id)a3;
- (void)logUninstalledApp:(id)a3;
- (void)logUninstalledAppVersion:(id)a3;
- (void)logUpdatedAppVersion:(id)a3;
- (void)refreshAllAppsAndPlugins;
- (void)sendApplicationMetadataToCA;
@end

@implementation PLApplicationAgent

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_402(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CEEE80];
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = -1;
  }

  v7 = [v4 objectForKey:*MEMORY[0x277CEEE68]];
  v8 = [v4 objectForKey:*MEMORY[0x277CEEE70]];
  v9 = [v4 objectForKey:*MEMORY[0x277CEEE88]];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_404;
  block[3] = &unk_2782621D0;
  objc_copyWeak(&v19, (a1 + 32));
  v20 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, block);

  objc_destroyWeak(&v19);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_404(uint64_t a1)
{
  v45[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained logEventPointApplicationForDisplayID:*(a1 + 32) withPid:*(a1 + 64) withState:*(a1 + 40) withReasons:*(a1 + 48)];

  if ([MEMORY[0x277D3F258] isAppAnalyticsEnabled] && objc_msgSend(*(a1 + 40), "intValue") >= 4)
  {
    v3 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppBundleId" withValue:*(a1 + 32) withComparisonOperation:0];
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = objc_loadWeakRetained((a1 + 56));
    v6 = [v5 storage];
    v45[0] = v3;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v8 = [v6 lastEntryForKey:v4 withComparisons:v7 isSingleton:1];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buffer = 0u;
    v26 = 0u;
    if (proc_pid_rusage(*(a1 + 64), 0, buffer))
    {
      v9 = 0;
    }

    else
    {
      memset(out, 0, 37);
      uuid_unparse(buffer, out);
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:out];
    }

    size = 0;
    *out = 0xE00000001;
    v11 = *(a1 + 64);
    out[2] = 1;
    out[3] = v11;
    if (sysctl(out, 4u, 0, &size, 0, 0) < 0 || (v12 = malloc_type_malloc(size, 0x3215B771uLL)) == 0)
    {
      v14 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = v12;
      if (sysctl(out, 4u, v12, &size, 0, 0) < 0)
      {
        v14 = 0;
      }

      else
      {
        if ((v7[8] & 4) != 0)
        {
          v13 = @"arm-64bit";
        }

        else
        {
          v13 = @"arm-32bit";
        }

        v14 = v13;
      }

      free(v7);
      if (!v9)
      {
LABEL_23:
        if (!v14)
        {
LABEL_29:

          goto LABEL_30;
        }

        goto LABEL_24;
      }
    }

    v7 = [v8 objectForKeyedSubscript:@"AppUUID"];
    if (([v9 isEqualToString:v7] & 1) == 0)
    {

LABEL_27:
      v17 = objc_loadWeakRetained((a1 + 56));
      v18 = [v17 storage];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_414;
      v20[3] = &unk_27825D6E8;
      v21 = v8;
      v22 = v9;
      v23 = v14;
      [v18 updateEntry:v21 withBlock:v20];

      v7 = v21;
LABEL_28:

      goto LABEL_29;
    }

    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_24:
    v15 = [v8 objectForKeyedSubscript:@"AppArchitecture"];
    v16 = [(__CFString *)v14 isEqualToString:v15];

    if (v9)
    {
    }

    if (v16)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  if ([*(a1 + 40) intValue] == 2)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buffer = 0u;
    v26 = 0u;
    if (!proc_pid_rusage(*(a1 + 64), 4, buffer))
    {
      v3 = objc_loadWeakRetained((a1 + 56));
      v10 = *(a1 + 32);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v29 + 1)];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v40];
      [v3 logEventBackwardApplicationMemoryWithBundleId:v10 withSuspendedMemory:v4 withPeakMemory:v8];
LABEL_30:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)displayIdentifiersDidChange
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        [v3 addObject:v10];
        v11 = [(PLApplicationAgent *)self currentDisplayIdentifiers];
        v12 = [v11 containsObject:v10];

        if ((v12 & 1) == 0)
        {
          [(PLApplicationAgent *)self logInstalledAppWithRecord:v9 withBundleID:v10 shouldMaskTimestamp:1];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v13 = MEMORY[0x277CBEB58];
  v14 = [(PLApplicationAgent *)self currentDisplayIdentifiers];
  v15 = [v13 setWithSet:v14];

  v16 = [MEMORY[0x277CBEB58] setWithSet:v3];
  [v15 minusSet:v3];
  v17 = [(PLApplicationAgent *)self currentDisplayIdentifiers];
  [v16 minusSet:v17];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v15;
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

        [(PLApplicationAgent *)self logUninstalledApp:*(*(&v27 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

  if ([v16 count] || objc_msgSend(v18, "count"))
  {
    v23 = [MEMORY[0x277D3F2A0] sharedCore];
    v24 = [v23 storage];
    [v24 flushCachesWithReason:@"AppAddedOrRemoved"];
  }

  [(PLApplicationAgent *)self setCurrentDisplayIdentifiers:v3];

  v25 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientModeLifetimePresentationCounter payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAmbientModeLifetimeCounter:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ApertureLayoutChanged payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSystemAperture:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_394(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2;
  block[3] = &unk_2782591D0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLApplicationAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (void)addAppVersion:(id)a3 withVersion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (qword_2811F6AA0 != -1)
  {
    dispatch_once(&qword_2811F6AA0, &__block_literal_global_94);
  }

  if (v7 && v5)
  {
    v6 = qword_2811F6AA8;
    objc_sync_enter(v6);
    [qword_2811F6AA8 setObject:v5 forKey:v7];
    objc_sync_exit(v6);
  }
}

uint64_t __48__PLApplicationAgent_addAppVersion_withVersion___block_invoke()
{
  v0 = objc_opt_new();
  qword_2811F6AA8 = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)removeAppVersion:(id)a3 forVersion:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (v5 && v9 && qword_2811F6AA8)
  {
    v6 = qword_2811F6AA8;
    objc_sync_enter(v6);
    v7 = [qword_2811F6AA8 objectForKeyedSubscript:v9];
    v8 = [v7 isEqualToString:v5];

    if (v8)
    {
      [qword_2811F6AA8 removeObjectForKey:v9];
    }

    objc_sync_exit(v6);
  }
}

+ (id)appVersionForBundle:(id)a3
{
  v3 = a3;
  if (qword_2811F6AA8)
  {
    v4 = qword_2811F6AA8;
    objc_sync_enter(v4);
    v5 = [qword_2811F6AA8 objectForKeyedSubscript:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = &stru_282B650A0;
  }

  return v5;
}

+ (id)entryEventPointDefinitions
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14[0] = @"SuggestedWidgetReload";
  v3 = [a1 entryEventPointDefinitionSuggestedWidgetReload];
  v15[0] = v3;
  v14[1] = @"WidgetUpdates";
  v4 = [a1 entryEventPointDefinitionWidgetUpdates];
  v15[1] = v4;
  v14[2] = @"ApplicationExitReason";
  v5 = [a1 entryEventPointDefinitionApplicationExitReason];
  v15[2] = v5;
  v14[3] = @"AppDocking";
  v6 = [a1 entryEventPointDefinitionAppDocking];
  v15[3] = v6;
  v14[4] = @"AppPrewarm";
  v7 = [a1 entryEventPointDefinitionAppPrewarm];
  v15[4] = v7;
  v14[5] = @"PosterUpdates";
  v8 = [a1 entryEventPointDefinitionPosterUpdates];
  v15[5] = v8;
  v14[6] = @"LiveActivityUpdates";
  v9 = [a1 entryEventPointDefinitionLiveActivityUpdates];
  v15[6] = v9;
  v14[7] = @"ControlCenterUpdates";
  v10 = [a1 entryEventPointDefinitionControlCenterUpdates];
  v15[7] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionSuggestedWidgetReload
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1CC68;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"bundleID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v17[0] = v4;
  v16[1] = @"kind";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v17[1] = v6;
  v16[2] = @"size";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"suggestionIdentifier";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_StringFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionWidgetUpdates
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1CC78;
  v31[1] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v27;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"bundleID";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat_withBundleID];
  v29[0] = v25;
  v28[1] = @"cost";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_IntegerFormat];
  v29[1] = v23;
  v28[2] = @"identifier";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v29[2] = v21;
  v28[3] = @"kind";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v29[3] = v19;
  v28[4] = @"reason";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v29[4] = v17;
  v28[5] = @"remainingBudget";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v29[5] = v15;
  v28[6] = @"suggestionIdentifier";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v29[6] = v4;
  v28[7] = @"executionTime";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_RealFormat];
  v29[7] = v6;
  v28[8] = @"host";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v29[8] = v8;
  v28[9] = @"errorReason";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v29[9] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:10];
  v33[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionPosterUpdates
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1CC68;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"Reason";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"updateType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionLiveActivityUpdates
{
  v27[2] = *MEMORY[0x277D85DE8];
  v26[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v24[0] = *MEMORY[0x277D3F568];
  v24[1] = v2;
  v25[0] = &unk_282C1CC88;
  v25[1] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[0] = v21;
  v26[1] = *MEMORY[0x277D3F540];
  v22[0] = @"bundleID";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat_withBundleID];
  v23[0] = v19;
  v22[1] = @"activityIdentifier";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v23[1] = v17;
  v22[2] = @"source";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v23[2] = v15;
  v22[3] = @"pushPriority";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v23[3] = v4;
  v22[4] = @"isAlert";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v23[4] = v6;
  v22[5] = @"state";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v23[5] = v8;
  v22[6] = @"reason";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionApplicationExitReason
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v18[0] = *MEMORY[0x277D3F568];
  v18[1] = v2;
  v19[0] = &unk_282C1CC98;
  v19[1] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v15;
  v20[1] = *MEMORY[0x277D3F540];
  v16[0] = @"Identifier";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat_withBundleID];
  v17[0] = v4;
  v16[1] = @"pid";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v17[1] = v6;
  v16[2] = @"Reason";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v17[2] = v8;
  v16[3] = @"Subcode";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v17[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v21[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventPointDefinitionAppDocking
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1CC68;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v15[0] = v5;
  v14[1] = @"PID";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v15[1] = v7;
  v14[2] = @"State";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionAppPrewarm
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CC68;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"BundleID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"PID";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionControlCenterUpdates
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1CC68;
  v21[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"bundleID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat_withBundleID];
  v19[0] = v15;
  v18[1] = @"identifier";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"reason";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"location";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"executionTime";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v18[11] = *MEMORY[0x277D85DE8];
  v17[0] = @"Application";
  v16 = [a1 entryEventForwardDefinitionApplication];
  v18[0] = v16;
  v17[1] = @"ApplicationDidUninstall";
  v15 = [a1 entryEventForwardDefinitionApplicationDidUninstall];
  v18[1] = v15;
  v17[2] = @"SystemAperture";
  v3 = [a1 entryEventForwardDefinitionSystemAperture];
  v18[2] = v3;
  v17[3] = @"LiveActivityStats";
  v4 = [a1 entryEventForwardDefinitionLiveActivityStats];
  v18[3] = v4;
  v17[4] = @"HomeScreenConfiguration";
  v5 = [a1 entryEventForwardDefinitionHomeScreenConfiguration];
  v18[4] = v5;
  v17[5] = @"AmbientMode";
  v6 = [a1 entryEventForwardDefinitionAmbientMode];
  v18[5] = v6;
  v17[6] = @"HomeScreenPresentation";
  v7 = [a1 entryEventForwardDefinitionHomeScreenPresentation];
  v18[6] = v7;
  v17[7] = @"AmbientModeActiveFace";
  v8 = [a1 entryEventForwardDefinitionAmbientActiveFace];
  v18[7] = v8;
  v17[8] = @"AmbientModeLifetimeCounter";
  v9 = [a1 entryEventForwardDefinitionAmbientModeLifetimeCounter];
  v18[8] = v9;
  v17[9] = @"MotionToWake";
  v10 = [a1 entryEventForwardDefinitionMotionToWake];
  v18[9] = v10;
  v17[10] = @"RBSApplication";
  v11 = [a1 entryEventForwardDefinitionRBSApplication];
  v18[10] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionRBSApplication
{
  v25[3] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1CCA8;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F570];
  v23[2] = &unk_282C16AB8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v25[0] = v17;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"Identifier";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v16 commonTypeDict_StringFormat_withBundleID];
  v21[0] = v3;
  v20[1] = @"pid";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v21[1] = v5;
  v20[2] = @"State";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v21[2] = v7;
  v20[3] = @"Reason";
  v8 = *MEMORY[0x277D3F5A0];
  v18[0] = *MEMORY[0x277D3F5A8];
  v18[1] = v8;
  v19[0] = &unk_282C13128;
  v19[1] = &unk_282C13140;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[3] = v9;
  v20[4] = @"Visibility";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v21[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v24[2] = *MEMORY[0x277D3F4B0];
  v25[1] = v12;
  v25[2] = &unk_282C16AD0;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventForwardDefinitionApplication
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1CCA8;
  v22[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F548];
  v21[2] = *MEMORY[0x277D3F570];
  v21[3] = v3;
  v22[2] = &unk_282C16AE8;
  v22[3] = @"logEventPointApplication";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v24[0] = v4;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"Identifier";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v20[0] = v6;
  v19[1] = @"pid";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v20[1] = v8;
  v19[2] = @"State";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v20[2] = v10;
  v19[3] = @"Reason";
  v11 = *MEMORY[0x277D3F5A0];
  v17[0] = *MEMORY[0x277D3F5A8];
  v17[1] = v11;
  v18[0] = &unk_282C13128;
  v18[1] = &unk_282C13140;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v23[2] = *MEMORY[0x277D3F4B0];
  v24[1] = v13;
  v24[2] = &unk_282C16B00;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventForwardDefinitionApplicationDidUninstall
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CCA8;
  v15[1] = &unk_282C13158;
  v14[2] = *MEMORY[0x277D3F588];
  v15[2] = &unk_282C1CCB8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"AppBundleId";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"AppName";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionSystemAperture
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1CC68;
  v21[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"PrimaryClient";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat_withBundleID];
  v19[0] = v15;
  v18[1] = @"PrimaryElement";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"SecondaryClient";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v19[2] = v6;
  v18[3] = @"SecondaryElement";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v19[3] = v8;
  v18[4] = @"Layout";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionLiveActivityStats
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v20[0] = *MEMORY[0x277D3F568];
  v20[1] = v2;
  v21[0] = &unk_282C1CC98;
  v21[1] = MEMORY[0x277CBEC38];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"bundleID";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat_withBundleID];
  v19[0] = v15;
  v18[1] = @"activityIdentifier";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v19[1] = v4;
  v18[2] = @"source";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v19[2] = v6;
  v18[3] = @"eventType";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v19[3] = v8;
  v18[4] = @"updateBudget";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v19[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v23[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionAmbientMode
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1CC68;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Mode";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"Enabled";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionAmbientActiveFace
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1CC68;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"ActiveFaceType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"ActiveFaceDescriptor";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionAmbientModeLifetimeCounter
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CC68;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"LifetimePresentationCounter";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventForwardDefinitionMotionToWake
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CC68;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Enabled";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"ApplicationMemory";
  v3 = [a1 entryEventBackwardDefinitionApplicationMemory];
  v10[0] = v3;
  v9[1] = @"WidgetStats";
  v4 = [a1 entryEventBackwardDefinitionWidgetStats];
  v10[1] = v4;
  v9[2] = @"ControlCenterStats";
  v5 = [a1 entryEventBackwardDefinitionControlCenterStats];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitionApplicationMemory
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v17[0] = *MEMORY[0x277D3F568];
  v17[1] = v2;
  v18[0] = &unk_282C1CC68;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F588];
  v17[2] = *MEMORY[0x277D3F590];
  v17[3] = v3;
  v18[2] = &unk_282C13158;
  v18[3] = &unk_282C1CCC8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v20[0] = v4;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"AppBundleId";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withBundleID];
  v16[0] = v6;
  v15[1] = @"SuspendedMemory";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v16[1] = v8;
  v15[2] = @"PeakMemory";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_IntegerFormat];
  v16[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionWidgetStats
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1CC98;
  v33[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"bundleID";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_StringFormat_withBundleID];
  v31[0] = v27;
  v30[1] = @"identifier";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v31[1] = v25;
  v30[2] = @"isInStack";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_BoolFormat];
  v31[2] = v23;
  v30[3] = @"kind";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v31[3] = v21;
  v30[4] = @"location";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v31[4] = v19;
  v30[5] = @"page";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v31[5] = v17;
  v30[6] = @"size";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_IntegerFormat];
  v31[6] = v15;
  v30[7] = @"suggestionIdentifier";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v31[7] = v4;
  v30[8] = @"totalFramesRendered";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v31[8] = v6;
  v30[9] = @"totalRenderWorkload";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v31[9] = v8;
  v30[10] = @"totalTimeSpentOnScreen";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventBackwardDefinitionControlCenterStats
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1CC68;
  v23[1] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"bundleID";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v21[0] = v17;
  v20[1] = @"identifier";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_StringFormat];
  v21[1] = v15;
  v20[2] = @"kind";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[2] = v4;
  v20[3] = @"location";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v21[3] = v6;
  v20[4] = @"stateBased";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v21[4] = v8;
  v20[5] = @"totalTimeSpentOnScreen";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v21[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventNoneDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"AllApps";
  v2 = +[PLApplicationAgent entryEventNoneAllApps];
  v7[1] = @"AllPlugins";
  v8[0] = v2;
  v3 = +[PLApplicationAgent entryEventNoneAllPlugins];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventNoneAllApps
{
  v50[3] = *MEMORY[0x277D85DE8];
  v49[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v47[0] = *MEMORY[0x277D3F568];
  v47[1] = v2;
  v48[0] = &unk_282C1CCD8;
  v48[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F590];
  v47[2] = *MEMORY[0x277D3F4A0];
  v47[3] = v3;
  v48[2] = MEMORY[0x277CBEC38];
  v48[3] = &unk_282C13170;
  v47[4] = *MEMORY[0x277D3F578];
  v48[4] = @"AppBundleId";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:5];
  v50[0] = v44;
  v49[1] = *MEMORY[0x277D3F540];
  v45[0] = @"AppBundleId";
  v43 = [MEMORY[0x277D3F198] sharedInstance];
  v42 = [v43 commonTypeDict_StringFormat_withBundleID];
  v46[0] = v42;
  v45[1] = @"AppName";
  v41 = [MEMORY[0x277D3F198] sharedInstance];
  v40 = [v41 commonTypeDict_StringFormat_withAppName];
  v46[1] = v40;
  v45[2] = @"AppBuildVersion";
  v39 = [MEMORY[0x277D3F198] sharedInstance];
  v38 = [v39 commonTypeDict_StringFormat];
  v46[2] = v38;
  v45[3] = @"AppBundleVersion";
  v37 = [MEMORY[0x277D3F198] sharedInstance];
  v36 = [v37 commonTypeDict_StringFormat];
  v46[3] = v36;
  v45[4] = @"AppExecutable";
  v35 = [MEMORY[0x277D3F198] sharedInstance];
  v34 = [v35 commonTypeDict_StringFormat_withProcessName];
  v46[4] = v34;
  v45[5] = @"AppVendorID";
  v33 = [MEMORY[0x277D3F198] sharedInstance];
  v32 = [v33 commonTypeDict_StringFormat];
  v46[5] = v32;
  v45[6] = @"AppItemID";
  v31 = [MEMORY[0x277D3F198] sharedInstance];
  v30 = [v31 commonTypeDict_IntegerFormat];
  v46[6] = v30;
  v45[7] = @"AppCohort";
  v29 = [MEMORY[0x277D3F198] sharedInstance];
  v28 = [v29 commonTypeDict_StringFormat];
  v46[7] = v28;
  v45[8] = @"AppStoreFront";
  v27 = [MEMORY[0x277D3F198] sharedInstance];
  v26 = [v27 commonTypeDict_IntegerFormat];
  v46[8] = v26;
  v45[9] = @"AppDistributorID";
  v25 = [MEMORY[0x277D3F198] sharedInstance];
  v24 = [v25 commonTypeDict_StringFormat];
  v46[9] = v24;
  v45[10] = @"AppIsBeta";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_BoolFormat];
  v46[10] = v22;
  v45[11] = @"AppIs3rdParty";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_BoolFormat];
  v46[11] = v20;
  v45[12] = @"AppIsClip";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_BoolFormat];
  v46[12] = v18;
  v45[13] = @"AppArchitecture";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat];
  v46[13] = v16;
  v45[14] = @"AppUUID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v46[14] = v5;
  v45[15] = @"AppDeletedDate";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v46[15] = v7;
  v45[16] = @"AppType";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v46[16] = v9;
  v45[17] = @"AppUpdatedDate";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v46[17] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:18];
  v49[2] = *MEMORY[0x277D3F528];
  v50[1] = v12;
  v50[2] = &unk_282C16B18;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventNoneAllPlugins
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v21[0] = *MEMORY[0x277D3F568];
  v21[1] = v2;
  v22[0] = &unk_282C1CCA8;
  v22[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F578];
  v21[2] = *MEMORY[0x277D3F590];
  v21[3] = v3;
  v22[2] = &unk_282C13170;
  v22[3] = @"PluginId";
  v21[4] = *MEMORY[0x277D3F4A0];
  v22[4] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"PluginId";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat_withBundleID];
  v20[0] = v16;
  v19[1] = @"PluginParentApp";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v20[1] = v5;
  v19[2] = @"PluginType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v20[2] = v7;
  v19[3] = @"PluginExecutableName";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat_withProcessName];
  v20[3] = v9;
  v19[4] = @"PluginDeletedDate";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_IntegerFormat];
  v20[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  v23[2] = *MEMORY[0x277D3F528];
  v24[1] = v12;
  v24[2] = &unk_282C16B30;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryAggregateDefinitions
{
  v13[1] = *MEMORY[0x277D85DE8];
  if ([a1 isDebugEnabledForKey:@"Aggregate"])
  {
    v12 = @"ApplicationReason";
    v3 = [a1 entryAggregateDefinitionApplicationReason];
    v13[0] = v3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = v13;
    v6 = &v12;
  }

  else
  {
    v10 = @"WidgetUpdates";
    v3 = [a1 entryAggregateDefintionWidgetUpdates];
    v11 = v3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v11;
    v6 = &v10;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryAggregateDefinitionApplicationReason
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1CC68;
  v28[1] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v30[0] = v16;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"Reason";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v25[1] = @"Count";
  v26[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v26[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v30[1] = v7;
  v29[2] = *MEMORY[0x277D3F478];
  v23[0] = &unk_282C1CCE8;
  v21 = *MEMORY[0x277D3F470];
  v8 = v21;
  v22 = &unk_282C1CCF8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v9;
  v23[1] = &unk_282C1CCF8;
  v19 = v8;
  v20 = &unk_282C1CD08;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v24[1] = v10;
  v23[2] = &unk_282C1CD08;
  v17 = v8;
  v18 = &unk_282C1CD18;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v24[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v29[3] = *MEMORY[0x277D3F488];
  v30[2] = v12;
  v30[3] = &unk_282C16B48;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryAggregateDefintionWidgetUpdates
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v22[0] = *MEMORY[0x277D3F568];
  v22[1] = v2;
  v23[0] = &unk_282C1CC68;
  v23[1] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[0] = v15;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"bundleID";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_StringFormat];
  v21[0] = v4;
  v20[1] = @"host";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v21[1] = v6;
  v20[2] = @"Count";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v21[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v25[1] = v9;
  v24[2] = *MEMORY[0x277D3F478];
  v18 = &unk_282C1CD28;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_282C1CD08;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v24[3] = *MEMORY[0x277D3F488];
  v25[2] = v11;
  v25[3] = &unk_282C16B60;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLApplicationAgent)init
{
  v3.receiver = self;
  v3.super_class = PLApplicationAgent;
  return [(PLAgent *)&v3 init];
}

- (void)dealloc
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    if (v3)
    {
      v4 = [MEMORY[0x277CBEB68] null];

      if (v3 != v4)
      {
        [v3 removeObserver:self];
        [v3 _LSClearSchemaCaches];
      }
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:@"PLAppDeletionActivityComplete" object:0];
  }

  v6.receiver = self;
  v6.super_class = PLApplicationAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)sendApplicationMetadataToCA
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Logging all Installed Applications' BundleID/DistributorID to CA", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v4 = [MEMORY[0x277D3F2A0] sharedCore];
  v5 = [v4 storage];
  v16 = v3;
  v6 = [v5 entriesForKey:v3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"AppBundleId"];
        [v11 objectForKeyedSubscript:@"AppDistributorID"];
        v20 = v19 = v12;
        v13 = v20;
        v14 = v12;
        AnalyticsSendEventLazy();
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v15 = *MEMORY[0x277D85DE8];
}

id __49__PLApplicationAgent_sendApplicationMetadataToCA__block_invoke(int64x2_t *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = @"AppBundleId";
  v4[1] = @"AppDistributorID";
  v5 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"nil"), a1[2]);
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:v4 count:2];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = PLLogApplication();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Not invoking initOperatorDependancies", location, 2u);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277D3F1F0]);
    v5 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    v6 = *MEMORY[0x277CBE580];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke;
    v101[3] = &unk_2782597E8;
    v101[4] = self;
    v7 = [v4 initWithWorkQueue:v5 forNotification:v6 withBlock:v101];

    [(PLApplicationAgent *)self setDailyTaskNotification:v7];
    v8 = SBSCopyDisplayIdentifiers();
    currentDisplayIdentifiers = self->_currentDisplayIdentifiers;
    self->_currentDisplayIdentifiers = v8;

    v100[5] = MEMORY[0x277D85DD0];
    v100[6] = 3221225472;
    v100[7] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_394;
    v100[8] = &unk_2782621A8;
    v100[9] = self;
    SBSRegisterDisplayIdentifiersChangedBlock();
    v10 = [MEMORY[0x277D3F158] sharedInstance];
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3;
    v100[3] = &unk_2782591D0;
    v100[4] = self;
    [v10 registerForArchivingNotificationUsingBlock:v100];

    v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB68] null];

      if (v11 != v12)
      {
        [v11 addObserver:self];
        [v11 _LSClearSchemaCaches];
      }
    }

    [(PLApplicationAgent *)self resetScheduledAppCleanup];
    if (self->_scheduledAppCleanup)
    {
      [MEMORY[0x277D3F150] registerFilePermissionActivity];
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel_resetScheduledAppCleanup name:@"PLAppDeletionActivityComplete" object:0];

    v14 = objc_alloc_init(MEMORY[0x277CEEE90]);
    appStateMonitor = self->_appStateMonitor;
    self->_appStateMonitor = v14;

    objc_initWeak(location, self);
    v16 = self->_appStateMonitor;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_402;
    v97[3] = &unk_2782621F8;
    objc_copyWeak(&v98, location);
    [(BKSApplicationStateMonitor *)v16 setHandler:v97];
    if (([MEMORY[0x277D3F180] fullMode] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "internalBuild") && objc_msgSend(MEMORY[0x277D3F180], "taskMode"))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_4;
      aBlock[3] = &unk_278262248;
      aBlock[4] = self;
      objc_copyWeak(&v96, location);
      v17 = _Block_copy(aBlock);
      v18 = MEMORY[0x277D46F80];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_421;
      v93[3] = &unk_278262270;
      v19 = v17;
      v94 = v19;
      v20 = [v18 monitorWithConfiguration:v93];
      RBSAppStateMonitor = self->_RBSAppStateMonitor;
      self->_RBSAppStateMonitor = v20;

      objc_destroyWeak(&v96);
    }

    v22 = *MEMORY[0x277D3F5E0];
    v23 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v24 = [(PLOperator *)self storage];
    v25 = [v24 countOfEntriesForKey:v23];

    if (!v25)
    {
      [(PLApplicationAgent *)self logAllPlugins];
    }

    v26 = [(PLOperator *)PLApplicationAgent entryKeyForType:v22 andName:@"AllApps"];
    v27 = [(PLOperator *)self storage];
    v28 = [v27 countOfEntriesForKey:v26];

    if (v28)
    {
      [(PLApplicationAgent *)self buildAppVersionDictionary:v26];
    }

    else
    {
      [(PLApplicationAgent *)self logAllApps];
    }

    if ([(PLOperator *)self isDebugEnabled])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, TestRefreshAllAppsAndPlugins, @"com.apple.powerlogd.refreshAllAppsAndPlugins", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v30 = objc_alloc(MEMORY[0x277D3F270]);
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447;
    v92[3] = &unk_27825A1D8;
    v92[4] = self;
    v31 = [v30 initWithOperator:self withRegistration:&unk_282C19EA8 withBlock:v92];
    widgetStatsListener = self->_widgetStatsListener;
    self->_widgetStatsListener = v31;

    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453;
    v91[3] = &unk_27825A1D8;
    v91[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_282C19ED0 withBlock:v91];
    widgetUpdatesListener = self->_widgetUpdatesListener;
    self->_widgetUpdatesListener = v34;

    v36 = objc_alloc(MEMORY[0x277D3F270]);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458;
    v90[3] = &unk_27825A1D8;
    v90[4] = self;
    v37 = [v36 initWithOperator:self withRegistration:&unk_282C19EF8 withBlock:v90];
    suggestedWidgetReloadListener = self->_suggestedWidgetReloadListener;
    self->_suggestedWidgetReloadListener = v37;

    v39 = objc_alloc(MEMORY[0x277D3F270]);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465;
    v89[3] = &unk_27825A1D8;
    v89[4] = self;
    v40 = [v39 initWithOperator:self withRegistration:&unk_282C19F20 withBlock:v89];
    posterUpdatesListener = self->_posterUpdatesListener;
    self->_posterUpdatesListener = v40;

    v42 = objc_alloc(MEMORY[0x277D3F270]);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475;
    v88[3] = &unk_27825A1D8;
    v88[4] = self;
    v43 = [v42 initWithOperator:self withRegistration:&unk_282C19F48 withBlock:v88];
    systemApertureListener = self->_systemApertureListener;
    self->_systemApertureListener = v43;

    v45 = objc_alloc(MEMORY[0x277D3F270]);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482;
    v87[3] = &unk_27825A1D8;
    v87[4] = self;
    v46 = [v45 initWithOperator:self withRegistration:&unk_282C19F70 withBlock:v87];
    ambientModeListener = self->_ambientModeListener;
    self->_ambientModeListener = v46;

    v48 = objc_alloc(MEMORY[0x277D3F270]);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489;
    v86[3] = &unk_27825A1D8;
    v86[4] = self;
    v49 = [v48 initWithOperator:self withRegistration:&unk_282C19F98 withBlock:v86];
    liveActivityUpdatesListener = self->_liveActivityUpdatesListener;
    self->_liveActivityUpdatesListener = v49;

    v51 = objc_alloc(MEMORY[0x277D3F270]);
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494;
    v85[3] = &unk_27825A1D8;
    v85[4] = self;
    v52 = [v51 initWithOperator:self withRegistration:&unk_282C19FC0 withBlock:v85];
    liveActivityStatsListener = self->_liveActivityStatsListener;
    self->_liveActivityStatsListener = v52;

    v54 = objc_alloc(MEMORY[0x277D3F270]);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499;
    v84[3] = &unk_27825A1D8;
    v84[4] = self;
    v55 = [v54 initWithOperator:self withRegistration:&unk_282C19FE8 withBlock:v84];
    ambientModeActiveFaceListener = self->_ambientModeActiveFaceListener;
    self->_ambientModeActiveFaceListener = v55;

    v57 = objc_alloc(MEMORY[0x277D3F270]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507;
    v83[3] = &unk_27825A1D8;
    v83[4] = self;
    v58 = [v57 initWithOperator:self withRegistration:&unk_282C1A010 withBlock:v83];
    ambientModeLifetimeCounterListener = self->_ambientModeLifetimeCounterListener;
    self->_ambientModeLifetimeCounterListener = v58;

    v60 = objc_alloc(MEMORY[0x277D3F270]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515;
    v82[3] = &unk_27825A1D8;
    v82[4] = self;
    v61 = [v60 initWithOperator:self withRegistration:&unk_282C1A038 withBlock:v82];
    motionToWakeListener = self->_motionToWakeListener;
    self->_motionToWakeListener = v61;

    v63 = objc_alloc(MEMORY[0x277D3F270]);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520;
    v81[3] = &unk_27825A1D8;
    v81[4] = self;
    v64 = [v63 initWithOperator:self withRegistration:&unk_282C1A060 withBlock:v81];
    controlCenterUpdatesListener = self->_controlCenterUpdatesListener;
    self->_controlCenterUpdatesListener = v64;

    v66 = objc_alloc(MEMORY[0x277D3F270]);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525;
    v80[3] = &unk_27825A1D8;
    v80[4] = self;
    v67 = [v66 initWithOperator:self withRegistration:&unk_282C1A088 withBlock:v80];
    controlCenterStatsListener = self->_controlCenterStatsListener;
    self->_controlCenterStatsListener = v67;

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_526;
    v79[3] = &unk_2782622C0;
    v79[4] = self;
    v69 = [MEMORY[0x277D46F80] monitorWithConfiguration:v79];
    appStateMonitorRBS = self->_appStateMonitorRBS;
    self->_appStateMonitorRBS = v69;

    v71 = objc_alloc(MEMORY[0x277D3F270]);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540;
    v78[3] = &unk_27825A1D8;
    v78[4] = self;
    v72 = [v71 initWithOperator:self withRegistration:&unk_282C1A0B0 withBlock:v78];
    appDockingListener = self->_appDockingListener;
    self->_appDockingListener = v72;

    v74 = objc_alloc(MEMORY[0x277D3F270]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548;
    v77[3] = &unk_27825A1D8;
    v77[4] = self;
    v75 = [v74 initWithOperator:self withRegistration:&unk_282C1A0D8 withBlock:v77];
    appPrewarmListener = self->_appPrewarmListener;
    self->_appPrewarmListener = v75;

    objc_destroyWeak(&v98);
    objc_destroyWeak(location);
  }
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Application metadata being sent to CA", v4, 2u);
  }

  return [*(a1 + 32) sendApplicationMetadataToCA];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "PLApplicationAgent_RefreshAllsAppsAndPlugins callback initiated", buf, 2u);
  }

  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397;
  block[3] = &unk_2782591D0;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v3, block);
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "PLApplicationAgent_RefreshAllsAppsAndPlugins callback running", v4, 2u);
  }

  return [*(a1 + 32) refreshAllAppsAndPlugins];
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_414(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppUUID"];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setObject:v2 forKeyedSubscript:@"AppArchitecture"];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 previousState];
  v9 = [v7 state];
  if ([*(a1 + 32) stateDidChange:v6 state:v9 prevState:v8])
  {
    v24 = [v6 pid];
    v10 = [v6 bundle];
    v11 = [v10 identifier];

    v12 = [v7 state];
    v13 = [v12 assertions];
    v14 = [PLApplicationAgent getReasons:v13];

    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110146;
      v33 = v24;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v14;
      _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "pid: %d, name: %@, state: %@, prevState: %@ reasons: %@", buf, 0x30u);
    }

    v23 = [*(a1 + 32) RBSStatetoPLState:v6 state:v9];
    v16 = v8;
    v17 = [PLApplicationAgent isVisible:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_418;
    block[3] = &unk_278262220;
    objc_copyWeak(&v28, (a1 + 40));
    v29 = v24;
    v30 = v23;
    v26 = v11;
    v27 = v14;
    v31 = v17;
    v8 = v16;
    v20 = v14;
    v21 = v11;
    dispatch_async(v19, block);

    objc_destroyWeak(&v28);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_418(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained logEventForwardRBSApplicationForBundleID:*(a1 + 32) withPid:*(a1 + 56) withState:*(a1 + 60) withReasons:*(a1 + 40) withVisibility:*(a1 + 64)];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_421(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FA0];
  v4 = a2;
  v5 = [v3 predicatePowerLogProcesses];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v4 setPredicates:v6];

  v7 = [MEMORY[0x277D46FB0] descriptor];
  [v7 setValues:25];
  [v7 setEndowmentNamespaces:&unk_282C16B78];
  [v4 setStateDescriptor:v7];
  v8 = [*(a1 + 32) copy];
  [v4 setUpdateHandler:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WidgetStats payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardWidgetStats:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WidgetUpdates payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointWidgetUpdates:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SuggestedWidgetReload payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointSuggestedWidgetReload:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PosterUpdates payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointPosterUpdates:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientMode payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAmbientMode:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LiveActivityUpdates payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointLiveActivityUpdates:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LiveActivityStats payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardLiveActivityStats:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientModeActiveFace payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAmbientModeActiveFace:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientModeMotionToWake payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardMotionToWake:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ControlCenterUpdates payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointControlCenterUpdates:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ControlCenterStats payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventBackwardControlCenterStats:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_526(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FA0];
  v4 = a2;
  v5 = [v3 predicateMatchingLaunchServicesProcesses];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 setPredicates:v6];

  [v4 setEvents:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527;
  v8[3] = &unk_278262298;
  v8[4] = *(a1 + 32);
  [v4 setUpdateHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 exitEvent];
  v8 = [v7 context];
  v9 = [v8 status];
  v10 = [v7 process];
  v11 = [v10 pid];

  v12 = PLLogApplication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = 67109120;
    LODWORD(v23) = v11;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "Received exit event for %d", &v22, 8u);
  }

  if ([*(a1 + 32) isApplication:v11])
  {
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v11];
    [v13 setObject:v14 forKeyedSubscript:@"pid"];

    v15 = [v6 bundle];
    v16 = [v15 identifier];
    [v13 setObject:v16 forKeyedSubscript:@"Identifier"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "domain")}];
    [v13 setObject:v17 forKeyedSubscript:@"Reason"];

    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "code")}];
    [v13 setObject:v18 forKeyedSubscript:@"Subcode"];

    v19 = [v8 timestamp];
    [v13 setObject:v19 forKeyedSubscript:@"timestamp"];

    v20 = PLLogApplication();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138412290;
      v23 = v13;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Payload for app exit is %@", &v22, 0xCu);
    }

    [*(a1 + 32) logEventPointApplicationExitReason:v13];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLApplicationAgent:: appDockingListener with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointDASAppDocking:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "PLApplicationAgent:: appPrewarmListener with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointDASAppPrewarm:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointDASAppDocking:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AppDocking"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDASAppPrewarm:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AppPrewarm"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (BOOL)checkAppReferenceCleanupNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F258] AppDeletionEnabled])
  {
    v2 = [MEMORY[0x277D3F2A0] sharedCore];
    v3 = [v2 storage];
    v4 = [v3 entriesForKey:@"PLApplicationAgent_EventForward_ApplicationDidUninstall"];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v4;
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
          v11 = [v10 objectForKeyedSubscript:@"AppBundleId"];
          if (([v11 containsString:@"Unspecified"] & 1) == 0)
          {

LABEL_15:
            v15 = PLLogAppDeletion();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *v18 = 0;
              _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEFAULT, "AppDeletion : Cleanup pending", v18, 2u);
            }

            v14 = 1;
            goto LABEL_18;
          }

          v12 = [v10 objectForKeyedSubscript:@"AppName"];
          v13 = [v12 containsString:@"Unspecified"];

          if ((v13 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v14 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_18:
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)hasScreenPresence:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appTags];
    if ([v5 containsObject:@"Hidden"])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = [v4 appTags];
      if ([v7 containsObject:@"hidden"])
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v8 = [v4 applicationState];
        if ([v8 isRestricted])
        {
          LOBYTE(v6) = 0;
        }

        else
        {
          v9 = [v4 applicationState];
          if ([v9 isRemovedSystemApp])
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = [v4 isLaunchProhibited] ^ 1;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isAppClipWithBundleID:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v9 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v9];

  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 appClipMetadata];

    v6 = v7 != 0;
  }

  return v6;
}

- (void)refreshAllAppsAndPlugins
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogApplication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "begin", buf, 2u);
  }

  v23 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v4 = *MEMORY[0x277D3F5E0];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AllPlugins"];
  v7 = [(PLOperator *)self storage];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = 0", @"AppDeletedDate"];
  v29[0] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = 0", @"AppUpdatedDate"];
  v29[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v7 deleteAllEntriesForKey:v5 withFilters:v10];

  v11 = [(PLOperator *)self storage];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IS NULL", @"AppUpdatedDate"];
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v11 deleteAllEntriesForKey:v5 withFilters:v13];

  v14 = [(PLOperator *)self storage];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = 0", @"PluginDeletedDate"];
  v27 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v14 deleteAllEntriesForKey:v6 withFilters:v16];

  [(PLApplicationAgent *)self logAllApps];
  [(PLApplicationAgent *)self logAllPlugins];

  objc_autoreleasePoolPop(context);
  v17 = dispatch_time(0, 60000000000);
  v18 = [MEMORY[0x277D3F258] transactionWorkQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_refreshAllAppsAndPlugins__block_invoke;
  block[3] = &unk_2782591D0;
  v25 = v23;
  v19 = v23;
  dispatch_after(v17, v18, block);

  v20 = PLLogApplication();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logEventBackwardApplicationMemoryWithBundleId:(id)a3 withSuspendedMemory:(id)a4 withPeakMemory:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v12 && [v12 length])
  {
    v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ApplicationMemory"];
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
    [v11 setObject:v12 forKeyedSubscript:@"AppBundleId"];
    [v11 setObject:v8 forKeyedSubscript:@"SuspendedMemory"];
    [v11 setObject:v9 forKeyedSubscript:@"PeakMemory"];
    [(PLOperator *)self logEntry:v11];
  }
}

- (void)logEventBackwardWidgetStats:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [v4 objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"WidgetStats"];
  v12 = [MEMORY[0x277CBEB18] array];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __50__PLApplicationAgent_logEventBackwardWidgetStats___block_invoke;
  v21 = &unk_2782622E8;
  v13 = v11;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  [v10 enumerateObjectsUsingBlock:&v18];
  if ([v15 count])
  {
    v25 = v13;
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];

    [(PLApplicationAgent *)self createWidgetStatsAccountingEvents:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __50__PLApplicationAgent_logEventBackwardWidgetStats___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)createWidgetStatsAccountingEvents:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke;
  v16[3] = &unk_278262310;
  v16[4] = &v17;
  [v3 enumerateObjectsUsingBlock:v16];
  if (v18[3] > 0.0)
  {
    v5 = PLLogApplication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "WidgetStats Accounting: entries=%@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke_578;
    v13[3] = &unk_278262338;
    v15 = &v17;
    v6 = v4;
    v14 = v6;
    [v3 enumerateObjectsUsingBlock:v13];
    v7 = PLLogApplication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(v18 + 3);
      *buf = 134218242;
      v22 = v12;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "WidgetStats Accounting: totalScreenOnTime=%f, identifierToWeight=%@", buf, 0x16u);
    }

    v8 = [MEMORY[0x277D3F0C0] sharedInstance];
    v9 = [v3 lastObject];
    v10 = [v9 entryDate];
    [v8 createDistributionEventBackwardWithDistributionID:50 withChildNodeNameToWeight:v6 withEndDate:v10];
  }

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"totalTimeSpentOnScreen"];
  [v4 doubleValue];
  *(*(*(a1 + 32) + 8) + 24) = v3 + *(*(*(a1 + 32) + 8) + 24);
}

void __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke_578(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = [v3 objectForKeyedSubscript:@"bundleID"];
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 objectForKeyedSubscript:@"totalTimeSpentOnScreen"];

  [v5 doubleValue];
  v7 = [v4 numberWithDouble:v6 / *(*(*(a1 + 40) + 8) + 24)];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v15];

    if (v8)
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [*(a1 + 32) objectForKeyedSubscript:v15];
      [v10 doubleValue];
      v12 = v11;
      [v7 doubleValue];
      v14 = [v9 numberWithDouble:v12 + v13];
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v15];
    }

    else
    {
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v15];
    }
  }
}

- (void)logEventBackwardControlCenterStats:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [v4 objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"ControlCenterStats"];
  v12 = [MEMORY[0x277CBEB18] array];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __57__PLApplicationAgent_logEventBackwardControlCenterStats___block_invoke;
  v21 = &unk_2782622E8;
  v13 = v11;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  [v10 enumerateObjectsUsingBlock:&v18];
  if ([v15 count])
  {
    v25 = v13;
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __57__PLApplicationAgent_logEventBackwardControlCenterStats___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventForwardApplicationDidUninstall:(id)a3 withAppName:(id)a4
{
  v6 = *MEMORY[0x277D3F5D0];
  v7 = a4;
  v8 = a3;
  v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:v6 andName:@"ApplicationDidUninstall"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  [v9 setObject:v8 forKeyedSubscript:@"AppBundleId"];

  [v9 setObject:v7 forKeyedSubscript:@"AppName"];
  [(PLOperator *)self logEntry:v9];
}

- (void)logEventForwardSystemAperture:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"SystemAperture"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientMode:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientMode"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientModeActiveFace:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientModeActiveFace"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardAmbientModeLifetimeCounter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientModeLifetimeCounter"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [v5 objectForKeyedSubscript:@"LifetimePresentationCounter"];

  v9 = [v8 intValue];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F258], "roundToSigFig:withSigFig:", v9, 2)}];
  [v7 setObject:v10 forKeyedSubscript:@"LifetimePresentationCounter"];

  v11 = PLLogApplication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v7 objectForKeyedSubscript:@"LifetimePresentationCounter"];
    v14[0] = 67109378;
    v14[1] = v9;
    v15 = 2112;
    v16 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "AmbientModeLifetimePresentationCounter value from payload: %d, value after rounding: %@", v14, 0x12u);
  }

  [(PLOperator *)self logEntry:v7];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardMotionToWake:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"MotionToWake"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointApplicationExitReason:(id)a3
{
  v9 = a3;
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ApplicationExitReason"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v9];
  v6 = [v9 objectForKey:@"timestamp"];

  if (v6)
  {
    v7 = [v9 objectForKeyedSubscript:@"timestamp"];
    v8 = [v7 convertFromSystemToMonotonic];

    [v5 setEntryDate:v8];
  }

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventPointApplication
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = SBSCopyApplicationDisplayIdentifiers();
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:*(*(&v10 + 1) + 8 * v8++), v10];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:@"noApplications" withPid:4294967196 withState:0 withReasons:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointApplicationForDisplayID:(id)a3
{
  v4 = a3;
  SBSProcessIDForDisplayIdentifier();
  v5 = [MEMORY[0x277CCABB0] numberWithInt:SBSGetApplicationState()];
  [(PLApplicationAgent *)self logEventPointApplicationForDisplayID:v4 withPid:0 withState:v5 withReasons:0];
}

- (void)logEventPointSuggestedWidgetReload:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [v4 objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"SuggestedWidgetReload"];
  v12 = [MEMORY[0x277CBEB18] array];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __57__PLApplicationAgent_logEventPointSuggestedWidgetReload___block_invoke;
  v21 = &unk_2782622E8;
  v13 = v11;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  [v10 enumerateObjectsUsingBlock:&v18];
  if ([v15 count])
  {
    v25 = v13;
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __57__PLApplicationAgent_logEventPointSuggestedWidgetReload___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

- (void)logEventPointWidgetUpdates:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [v4 objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"WidgetUpdates"];
  v12 = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__PLApplicationAgent_logEventPointWidgetUpdates___block_invoke;
  v18[3] = &unk_278260EE8;
  v13 = v11;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v22 = self;
  [v10 enumerateObjectsUsingBlock:v18];
  if ([v15 count])
  {
    v23 = v13;
    v24[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __49__PLApplicationAgent_logEventPointWidgetUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v10 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];
  v5 = [v4 objectForKeyedSubscript:@"host"];

  LODWORD(v4) = [v5 isEqualToString:@"com.apple.chronod.timeline-host"];
  if (v4)
  {
    [v10 setObject:@"Local" forKeyedSubscript:@"host"];
  }

  [v10 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v10];
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"WidgetUpdates"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [v10 objectForKeyedSubscript:@"bundleID"];
  [v7 setObject:v8 forKeyedSubscript:@"bundleID"];

  v9 = [v10 objectForKeyedSubscript:@"host"];
  [v7 setObject:v9 forKeyedSubscript:@"host"];

  [v7 setObject:&unk_282C13218 forKeyedSubscript:@"Count"];
  [*(a1 + 56) logEntry:v7];
}

- (void)logEventPointPosterUpdates:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"PosterUpdates"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardLiveActivityStats:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v9 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"LiveActivityStats"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];

  v8 = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:v8];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointLiveActivityUpdates:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v9 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"LiveActivityUpdates"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];

  v8 = [v7 convertFromSystemToMonotonic];
  [v6 setEntryDate:v8];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointControlCenterUpdates:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestamp"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  v9 = [v8 convertFromSystemToMonotonic];

  v10 = [v4 objectForKeyedSubscript:@"stats"];

  v11 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ControlCenterUpdates"];
  v12 = [MEMORY[0x277CBEB18] array];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __56__PLApplicationAgent_logEventPointControlCenterUpdates___block_invoke;
  v21 = &unk_2782622E8;
  v13 = v11;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  [v10 enumerateObjectsUsingBlock:&v18];
  if ([v15 count])
  {
    v25 = v13;
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    [(PLOperator *)self logEntries:v16 withGroupID:v13];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __56__PLApplicationAgent_logEventPointControlCenterUpdates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F190];
  v4 = a2;
  v5 = [[v3 alloc] initWithEntryKey:*(a1 + 32) withRawData:v4];

  [v5 setEntryDate:*(a1 + 40)];
  [*(a1 + 48) addObject:v5];
}

+ (id)pluginEntryFromRecord:(id)a3
{
  v4 = a3;
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  v6 = [v4 bundleIdentifier];
  if (v6)
  {
    v7 = [v4 executableURL];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 containingBundleRecord];
      if (v9)
      {
        v3 = [v4 containingBundleRecord];
        v10 = [v3 bundleIdentifier];
        if (v10)
        {

LABEL_10:
          v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5];
          v14 = [v4 bundleIdentifier];
          [v6 setObject:v14 forKeyedSubscript:@"PluginId"];

          v15 = [v4 containingBundleRecord];
          v16 = [v15 bundleIdentifier];
          [v6 setObject:v16 forKeyedSubscript:@"PluginParentApp"];

          v17 = [v4 extensionPointRecord];
          v18 = [v17 identifier];
          [v6 setObject:v18 forKeyedSubscript:@"PluginType"];

          v19 = [v4 executableURL];
          v20 = [v19 path];
          [v6 setObject:v20 forKeyedSubscript:@"PluginExecutableName"];

          [v6 setObject:&unk_282C13230 forKeyedSubscript:@"PluginDeletedDate"];
          goto LABEL_12;
        }
      }

      v11 = [v4 extensionPointRecord];
      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:@"com.apple.posterkit.provider"];

      if (v9)
      {
      }

      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v6 = 0;
  }

LABEL_12:

  return v6;
}

- (void)logInstalledAppWithRecord:(id)a3 withBundleID:(id)a4 shouldMaskTimestamp:(BOOL)a5
{
  v5 = a5;
  v117 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = [v10 storage];
  v12 = [v11 storageLocked];

  if ((v12 & 1) == 0)
  {
    v92 = v9;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v13 = [v8 applicationExtensionRecords];
    v14 = [v13 countByEnumeratingWithState:&v108 objects:v116 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v109;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v109 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v108 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [PLApplicationAgent pluginEntryFromRecord:v18];
          [(PLApplicationAgent *)self logInstalledPlugin:v20];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v108 objects:v116 count:16];
      }

      while (v15);
    }

    v21 = *MEMORY[0x277D3F5E0];
    v22 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v23 = [(PLOperator *)self storage];
    v24 = v92;
    v25 = [v23 lastEntryForKey:v22 withSubEntryKey:v92];

    if (v25)
    {
      v26 = [v8 shortVersionString];
      if (v26)
      {
        [v8 shortVersionString];
      }

      else
      {
        [v8 bundleVersion];
      }
      v28 = ;

      v37 = [v25 objectForKeyedSubscript:@"AppBundleVersion"];
      v38 = [v37 isEqualToString:v28];

      v39 = [v25 objectForKeyedSubscript:@"AppDeletedDate"];
      [v39 doubleValue];
      v41 = v40;

      if (v41 == 0.0)
      {
        v47 = [v25 objectForKeyedSubscript:@"AppUpdatedDate"];
        [v47 doubleValue];
        v49 = v48;

        if (v49 == 0.0)
        {
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_2;
          v93[3] = &unk_2782591A8;
          v43 = &v94;
          v54 = v25;
          v94 = v54;
          v45 = &v95;
          v95 = v28;
          v46 = &v96;
          v96 = v8;
          v97 = v92;
          [(PLOperator *)self updateEntry:v54 withBlock:v93];
        }

        else
        {
          v50 = PLLogApplication();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v113 = v92;
            _os_log_debug_impl(&dword_21A4C6000, v50, OS_LOG_TYPE_DEBUG, "%@ was updated, modify version", buf, 0xCu);
          }

          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_618;
          v98[3] = &unk_2782591A8;
          v43 = &v99;
          v51 = v25;
          v99 = v51;
          v45 = &v100;
          v100 = v28;
          v46 = &v101;
          v101 = v8;
          v102 = v92;
          [(PLOperator *)self updateEntry:v51 withBlock:v98];
        }
      }

      else
      {
        v42 = PLLogApplication();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v113 = v92;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "AllApps entry %@ was deleted and reinstalled", buf, 0xCu);
        }

        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke;
        v103[3] = &unk_278261A00;
        v43 = &v104;
        v44 = v25;
        v104 = v44;
        v107 = v38;
        v45 = &v105;
        v105 = v28;
        v46 = &v106;
        v106 = v8;
        [(PLOperator *)self updateEntry:v44 withBlock:v103];
      }

      v55 = *v43;
      v9 = v92;
    }

    else
    {
      v27 = PLLogApplication();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v113 = v92;
        _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "AllApps logInstalledAppWithRecord bundleID doesnt exist for %@", buf, 0xCu);
      }

      v28 = [MEMORY[0x277CBEAA8] monotonicDate];
      if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
      {
        v29 = PLLogApplication();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v113) = v5;
          _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "AllApps shouldMaskTimestamp: %d", buf, 8u);
        }

        if (v5)
        {
          v30 = PLLogApplication();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "AllApps masking Timestamp", buf, 2u);
          }

          v31 = [(PLOperator *)PLApplicationAgent entryKeyForType:v21 andName:@"AllApps"];
          v32 = [(PLOperator *)self storage];
          v33 = [v32 lastEntryForKey:v31];

          if (v33)
          {
            v34 = MEMORY[0x277CBEAA8];
            v35 = [v33 objectForKeyedSubscript:@"timestamp"];
            [v35 doubleValue];
            v36 = [v34 dateWithTimeIntervalSince1970:?];
          }

          else
          {
            v56 = PLLogApplication();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v56, OS_LOG_TYPE_DEBUG, "AllApps table is empty, using fuzzed timestamp", buf, 2u);
            }

            v57 = MEMORY[0x277CBEAA8];
            [v28 timeIntervalSince1970];
            v36 = [v57 dateWithTimeIntervalSince1970:round(v58 / 1800.0) * 1800.0];
          }

          v28 = v31;
        }

        else
        {
          v52 = MEMORY[0x277CBEAA8];
          [v28 timeIntervalSince1970];
          v36 = [v52 dateWithTimeIntervalSince1970:round(v53 / 1800.0) * 1800.0];
        }

        v28 = v36;
        v24 = v92;
      }

      v59 = PLLogApplication();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v113 = v28;
        _os_log_debug_impl(&dword_21A4C6000, v59, OS_LOG_TYPE_DEBUG, "AllApps lastRow Timestamp: %@", buf, 0xCu);
      }

      v55 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v22 withDate:v28];
      [v55 setObject:v24 forKeyedSubscript:@"AppBundleId"];
      v60 = [v8 iTunesMetadata];
      v61 = [v60 distributorInfo];
      v62 = [v61 distributorID];
      [v55 setObject:v62 forKeyedSubscript:@"AppDistributorID"];

      v63 = PLLogApplication();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        v91 = [v8 iTunesMetadata];
        v89 = [v91 distributorInfo];
        v90 = [v89 distributorID];
        *buf = 138412546;
        v113 = v90;
        v114 = 2112;
        v115 = v92;
        _os_log_debug_impl(&dword_21A4C6000, v63, OS_LOG_TYPE_DEBUG, "AllApps logging DistributorID: %@ for BundleID: %@", buf, 0x16u);
      }

      v64 = [v8 localizedName];
      [v55 setObject:v64 forKeyedSubscript:@"AppName"];

      v65 = [v8 bundleVersion];
      [v55 setObject:v65 forKeyedSubscript:@"AppBuildVersion"];

      v66 = [v8 shortVersionString];
      if (v66)
      {
        [v8 shortVersionString];
      }

      else
      {
        [v8 bundleVersion];
      }
      v67 = ;
      [v55 setObject:v67 forKeyedSubscript:@"AppBundleVersion"];

      v68 = [v8 executableURL];
      v69 = [v68 lastPathComponent];
      [v55 setObject:v69 forKeyedSubscript:@"AppExecutable"];

      v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLApplicationAgent isAppClipWithBundleID:](self, "isAppClipWithBundleID:", v92)}];
      [v55 setObject:v70 forKeyedSubscript:@"AppIsClip"];

      [v55 setObject:&unk_282C13230 forKeyedSubscript:@"AppDeletedDate"];
      v71 = &unk_282C13260;
      if ([v8 mayBeBUIVisible] && +[PLApplicationAgent hasScreenPresence:](PLApplicationAgent, "hasScreenPresence:", v8))
      {
        v71 = &unk_282C13248;
      }

      [v55 setObject:v71 forKeyedSubscript:@"AppType"];
      v72 = [v55 objectForKeyedSubscript:@"AppBundleId"];
      v73 = [v72 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

      if (v73)
      {
        [v55 setObject:&unk_282C13248 forKeyedSubscript:@"AppType"];
      }

      [v55 setObject:&unk_282C13230 forKeyedSubscript:@"AppUpdatedDate"];
      if ([MEMORY[0x277D3F258] isAppAnalyticsEnabled])
      {
        v74 = [v8 deviceIdentifierForVendor];
        v75 = [v74 UUIDString];
        [v55 setObject:v75 forKeyedSubscript:@"AppVendorID"];

        v76 = MEMORY[0x277CCABB0];
        v77 = [v8 iTunesMetadata];
        v78 = [v76 numberWithUnsignedLongLong:{objc_msgSend(v77, "storeItemIdentifier")}];
        [v55 setObject:v78 forKeyedSubscript:@"AppItemID"];

        v79 = [v8 iTunesMetadata];
        v80 = [v79 storeCohort];
        [v55 setObject:v80 forKeyedSubscript:@"AppCohort"];

        v81 = MEMORY[0x277CCABB0];
        v82 = [v8 iTunesMetadata];
        v83 = [v81 numberWithUnsignedLongLong:{objc_msgSend(v82, "storeFront")}];
        [v55 setObject:v83 forKeyedSubscript:@"AppStoreFront"];

        v84 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isBeta")}];
        [v55 setObject:v84 forKeyedSubscript:@"AppIsBeta"];

        v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v8, "developerType") == 3}];
        [v55 setObject:v85 forKeyedSubscript:@"AppIs3rdParty"];
      }

      [(PLOperator *)self logEntry:v55];
      v86 = PLLogApplication();
      v9 = v92;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v113 = v92;
        _os_log_debug_impl(&dword_21A4C6000, v86, OS_LOG_TYPE_DEBUG, "log new AppVersions entry %@\n", buf, 0xCu);
      }

      v87 = [v55 objectForKeyedSubscript:@"AppBundleVersion"];
      [PLApplicationAgent addAppVersion:v92 withVersion:v87];
    }
  }

  v88 = *MEMORY[0x277D85DE8];
}

void __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277CBEAA8] monotonicDateWithTimeIntervalSinceNow:2700.0];
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v2 = v10;
  }

  else
  {
    v3 = MEMORY[0x277CBEAA8];
    [v10 timeIntervalSince1970];
    v5 = [v3 dateWithTimeIntervalSince1970:round(v4 / 1800.0) * 1800.0];

    v2 = v5;
  }

  v11 = v2;
  [*(a1 + 32) setEntryDate:?];
  [*(a1 + 32) setObject:&unk_282C13230 forKeyedSubscript:@"AppDeletedDate"];
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
    v6 = [*(a1 + 48) bundleVersion];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"AppBuildVersion"];
  }

  v7 = [*(a1 + 48) iTunesMetadata];
  v8 = [v7 distributorInfo];
  v9 = [v8 distributorID];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"AppDistributorID"];
}

uint64_t __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_618(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
  v2 = [*(a1 + 48) bundleVersion];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"AppBuildVersion"];

  v3 = [*(a1 + 48) iTunesMetadata];
  v4 = [v3 distributorInfo];
  v5 = [v4 distributorID];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"AppDistributorID"];

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [PLApplicationAgent addAppVersion:v6 withVersion:v7];
}

uint64_t __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"AppBundleVersion"];
  v2 = [*(a1 + 48) bundleVersion];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"AppBuildVersion"];

  v3 = [*(a1 + 48) iTunesMetadata];
  v4 = [v3 distributorInfo];
  v5 = [v4 distributorID];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"AppDistributorID"];

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);

  return [PLApplicationAgent addAppVersion:v6 withVersion:v7];
}

- (void)buildAppVersionDictionary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277D3F2A0] sharedCore];
  v5 = [v4 storage];
  v18 = v3;
  v6 = [v5 entriesForKey:v3];

  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AllApps Building app verion dictionary from the db", buf, 2u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:@"AppBundleId"];
        v15 = [v13 objectForKeyedSubscript:@"AppBundleVersion"];
        [PLApplicationAgent addAppVersion:v14 withVersion:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledPlugin:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3F2A0] sharedCore];
  v6 = [v5 storage];
  v7 = [v6 storageLocked];

  if (v4 && (v7 & 1) == 0)
  {
    v8 = [v4 objectForKeyedSubscript:@"PluginId"];
    v9 = [v8 description];

    if (v9 && [v9 length])
    {
      v10 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__19;
      v26 = __Block_byref_object_dispose__19;
      v11 = [(PLOperator *)self storage];
      v27 = [v11 lastEntryForKey:v10 withSubEntryKey:v9];

      v12 = v23[5];
      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:@"PluginDeletedDate"];
        [v13 doubleValue];
        v15 = v14 != 0.0;

        v16 = PLLogApplication();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (v15)
        {
          if (v17)
          {
            *buf = 138412290;
            v29 = v9;
            _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "Update: pluginID=%@", buf, 0xCu);
          }

          v18 = v23[5];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __41__PLApplicationAgent_logInstalledPlugin___block_invoke;
          v21[3] = &unk_27825A990;
          v21[4] = &v22;
          [(PLOperator *)self updateEntry:v18 withBlock:v21];
        }

        else
        {
          if (v17)
          {
            *buf = 138412290;
            v29 = v9;
            _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "Duplicate: pluginID=%@", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = PLLogApplication();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v29 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "New: pluginID=%@", buf, 0xCu);
        }

        [(PLOperator *)self logEntry:v4];
      }

      _Block_object_dispose(&v22, 8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __41__PLApplicationAgent_logInstalledPlugin___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(*(*(a1 + 32) + 8) + 40) setEntryDate:v2];
  [*(*(*(a1 + 32) + 8) + 40) setObject:&unk_282C13230 forKeyedSubscript:@"PluginDeletedDate"];
}

- (void)logUninstalledApp:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__19;
  v35[4] = __Block_byref_object_dispose__19;
  v36 = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = *MEMORY[0x277D3F5E0];
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__19;
  v33 = __Block_byref_object_dispose__19;
  v5 = [(PLOperator *)self storage];
  [v5 lastEntryForKey:v4 withSubEntryKey:v19];
  v34 = v18 = v4;

  v6 = v30[5];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke;
  v28[3] = &unk_278262360;
  v28[4] = &v29;
  v28[5] = v35;
  [(PLOperator *)self updateEntry:v6 withBlock:v28];
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v3 andName:@"AllPlugins"];
  v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginParentApp" withValue:v19 withComparisonOperation:0];
  v9 = [(PLOperator *)self storage];
  v38[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v11 = [v9 entriesForKey:v7 withComparisons:v10];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x3032000000;
        v22[3] = __Block_byref_object_copy__19;
        v22[4] = __Block_byref_object_dispose__19;
        v23 = v16;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke_2;
        v21[3] = &unk_278262360;
        v21[4] = v22;
        v21[5] = v35;
        [(PLOperator *)self updateEntry:v23 withBlock:v21];
        _Block_object_dispose(v22, 8);
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v35, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __40__PLApplicationAgent_logUninstalledApp___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSince1970];
  v3 = [v2 numberWithDouble:?];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"AppDeletedDate"];
}

void __40__PLApplicationAgent_logUninstalledApp___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  [*(*(*(a1 + 40) + 8) + 40) timeIntervalSince1970];
  v3 = [v2 numberWithDouble:?];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:@"PluginDeletedDate"];
}

- (void)logUninstalledAppVersion:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__19;
  v21[4] = __Block_byref_object_dispose__19;
  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v7 = [(PLOperator *)self storage];
  v23[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = [v7 lastEntryForKey:v5 withFilters:v8];

  v9 = v16[5];
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__PLApplicationAgent_logUninstalledAppVersion___block_invoke;
    v11[3] = &unk_27825BC18;
    v13 = v21;
    v14 = &v15;
    v12 = v4;
    [(PLOperator *)self updateEntry:v9 withBlock:v11];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(v21, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __47__PLApplicationAgent_logUninstalledAppVersion___block_invoke(void *a1)
{
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v2 = MEMORY[0x277CBEAA8];
    [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
    v4 = [v2 dateWithTimeIntervalSince1970:round(v3 / 1800.0) * 1800.0];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277CCABB0];
  [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:@"AppDeletedDate"];

  v9 = a1[4];
  v10 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"AppBundleVersion"];
  [PLApplicationAgent removeAppVersion:v9 forVersion:v10];
}

- (void)logUpdatedAppVersion:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__19;
  v21[4] = __Block_byref_object_dispose__19;
  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__19;
  v19 = __Block_byref_object_dispose__19;
  v7 = [(PLOperator *)self storage];
  v23[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20 = [v7 lastEntryForKey:v5 withFilters:v8];

  v9 = v16[5];
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke;
    v11[3] = &unk_27825BC18;
    v13 = v21;
    v14 = &v15;
    v12 = v4;
    [(PLOperator *)self updateEntry:v9 withBlock:v11];
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(v21, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
  {
    v2 = MEMORY[0x277CBEAA8];
    [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
    v4 = [v2 dateWithTimeIntervalSince1970:round(v3 / 1800.0) * 1800.0];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = MEMORY[0x277CCABB0];
  [*(*(a1[5] + 8) + 40) timeIntervalSince1970];
  v8 = [v7 numberWithDouble:?];
  [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:@"AppUpdatedDate"];

  v9 = PLLogApplication();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = a1[4];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "Update: mark %@ entry as updated\n", &v14, 0xCu);
  }

  v10 = a1[4];
  v11 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"AppBundleVersion"];
  [PLApplicationAgent removeAppVersion:v10 forVersion:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logAllApps
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = PLLogApplication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "logAllApps was called", buf, 2u);
  }

  [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 bundleIdentifier];
        [(PLApplicationAgent *)self logInstalledAppWithRecord:v9 withBundleID:v11 shouldMaskTimestamp:0];

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = PLLogApplication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "AllApps logAllApps end", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logAllPlugins
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[PLApplicationAgent installedPlugins];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(PLApplicationAgent *)self logInstalledPlugin:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)installedPlugins
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x277CC1E50] enumeratorWithOptions:{0, 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PLApplicationAgent pluginEntryFromRecord:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)trimConditionsForEntryKey:(id)a3 forTrimDate:(id)a4
{
  v5 = a3;
  [a4 timeIntervalSince1970];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v8 timeIntervalSince1970];
  v10 = v9 + -604800.0;

  if (v7 >= v10)
  {
    v7 = v10;
  }

  v11 = objc_opt_class();
  v12 = *MEMORY[0x277D3F5E0];
  v13 = [v11 entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v14 = [v5 isEqualToString:v13];

  if (v14)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(timestamp is NULL OR timestamp<%f) AND ((%@!=0 AND %@<%f) OR (%@!=0 AND %@<%f))", *&v7, @"AppDeletedDate", @"AppDeletedDate", *&v7, @"AppUpdatedDate", @"AppUpdatedDate", *&v7];
    v17 = LABEL_7:;
    goto LABEL_9;
  }

  v15 = [objc_opt_class() entryKeyForType:v12 andName:@"AllPlugins"];
  v16 = [v5 isEqualToString:v15];

  if (v16)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(timestamp is NULL OR timestamp<%f) AND %@!=0 AND %@<%f", *&v7, @"PluginDeletedDate", @"PluginDeletedDate", *&v7, v19, v20, v21];
    goto LABEL_7;
  }

  v17 = 0;
LABEL_9:

  return v17;
}

- (void)appReferenceCleanup
{
  if (self->_scheduledAppCleanup)
  {
    v2 = PLLogApplication();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "AppDeletion : Activity is scheduled.", buf, 2u);
    }
  }

  else
  {
    self->_scheduledAppCleanup = 1;
    v3 = [MEMORY[0x277D3F150] changeClassProtection:1];
    v4 = PLLogApplication();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "AppDeletion : Changed class protection successfully", v7, 2u);
      }

      [MEMORY[0x277D3F150] registerAppDeletionActivity];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "AppDeletion : Could not change class protection", v6, 2u);
      }

      [MEMORY[0x277D3F150] registerFilePermissionActivity];
    }
  }
}

+ (BOOL)isVisible:(id)a3
{
  v3 = [a3 endowmentNamespaces];
  v4 = [v3 containsObject:@"com.apple.frontboard.visibility"];

  return v4;
}

+ (id)getReasons:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "reason", v17)}];
        v12 = [v10 explanation];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int)RBSStatetoPLState:(id)a3 state:(id)a4
{
  v4 = a4;
  v5 = [v4 taskState] - 1;
  if (v5 > 3u)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_21AA22380[v5];
  }

  v7 = [PLApplicationAgent isVisible:v4];

  if (v7)
  {
    return 8;
  }

  else
  {
    return v6;
  }
}

- (BOOL)stateDidChange:(id)a3 state:(id)a4 prevState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PLApplicationAgent *)self RBSStatetoPLState:v8 state:v9];
  if (v10 && v11 == [(PLApplicationAgent *)self RBSStatetoPLState:v8 state:v10])
  {
    v12 = [v9 process];
    v13 = [v12 pid];
    v14 = [v10 process];
    v15 = v13 != [v14 pid];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)getApplicationRecordSet:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = objc_alloc(MEMORY[0x277CC1E70]);
        v12 = [v10 bundleURL];
        v19 = 0;
        v13 = [v11 initWithURL:v12 allowPlaceholder:1 error:&v19];
        v14 = v19;

        if (v13)
        {
          [v4 addObject:v13];
        }

        else
        {
          v15 = PLLogApplication();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v25 = v10;
            v26 = 2112;
            v27 = v14;
            _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, "could not refresh application record for %@: %@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)applicationsDidInstall:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(PLApplicationAgent *)self getApplicationRecordSet:a3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138412290;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isPlaceholder])
        {
          v11 = PLLogApplication();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "app Record is placeHolder", buf, 2u);
          }
        }

        else
        {
          v11 = [v10 bundleIdentifier];
          v12 = [v10 isUpdate];
          v13 = PLLogApplication();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
          if (v12)
          {
            if (v14)
            {
              *buf = v16;
              v22 = v11;
              _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Update %@\n", buf, 0xCu);
            }

            [(PLApplicationAgent *)self logUpdatedAppVersion:v11];
          }

          else
          {
            if (v14)
            {
              *buf = v16;
              v22 = v11;
              _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Install %@", buf, 0xCu);
            }
          }

          [(PLApplicationAgent *)self logInstalledAppWithRecord:v10 withBundleID:v11 shouldMaskTimestamp:1];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v19;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isPlaceholder])
        {
          v11 = PLLogApplication();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "app Proxy is placeHolder", buf, 2u);
          }
        }

        else
        {
          v11 = [v10 bundleIdentifier];
          v12 = [v10 localizedName];
          [(PLApplicationAgent *)self logUninstalledAppVersion:v11];
          v13 = PLLogApplication();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v17;
            v23 = v12;
            v24 = 2112;
            v25 = v11;
            _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "AppDeletion : Application Name %@ and bundle ID %@", buf, 0x16u);
          }

          [(PLApplicationAgent *)self logEventForwardApplicationDidUninstall:v11 withAppName:v12];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    if ([MEMORY[0x277D3F258] AppDeletionEnabled])
    {
      [(PLApplicationAgent *)self appReferenceCleanup];
    }

    v14 = PLLogApplication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "AppResume : Updating salt value", buf, 2u);
    }

    v15 = [MEMORY[0x277D3F258] generateAndUpdateSaltValue:@"PLSaltBundleID"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end