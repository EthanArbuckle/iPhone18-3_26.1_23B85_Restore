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
  if (addAppVersion_withVersion__onceToken != -1)
  {
    +[PLApplicationAgent addAppVersion:withVersion:];
  }

  if (v7 && v5)
  {
    v6 = _appVersions;
    objc_sync_enter(v6);
    [_appVersions setObject:v5 forKey:v7];
    objc_sync_exit(v6);
  }
}

uint64_t __48__PLApplicationAgent_addAppVersion_withVersion___block_invoke()
{
  _appVersions = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)removeAppVersion:(id)a3 forVersion:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (v5 && v9 && _appVersions)
  {
    v6 = _appVersions;
    objc_sync_enter(v6);
    v7 = [_appVersions objectForKeyedSubscript:v9];
    v8 = [v7 isEqualToString:v5];

    if (v8)
    {
      [_appVersions removeObjectForKey:v9];
    }

    objc_sync_exit(v6);
  }
}

+ (id)appVersionForBundle:(id)a3
{
  v3 = a3;
  if (_appVersions)
  {
    v4 = _appVersions;
    objc_sync_enter(v4);
    v5 = [_appVersions objectForKeyedSubscript:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = &stru_287103958;
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
  v19[0] = &unk_28714B288;
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
  v31[0] = &unk_28714B298;
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
  v17[0] = &unk_28714B288;
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
  v25[0] = &unk_28714B2A8;
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
  v19[0] = &unk_28714B2B8;
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
  v17[0] = &unk_28714B288;
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
  v15[0] = &unk_28714B288;
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
  v21[0] = &unk_28714B288;
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
  v23[0] = &unk_28714B2C8;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277D3F570];
  v23[2] = &unk_28714C8D8;
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
  v19[0] = &unk_287145AC0;
  v19[1] = &unk_287145AD8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[3] = v9;
  v20[4] = @"Visibility";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_BoolFormat];
  v21[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v24[2] = *MEMORY[0x277D3F4B0];
  v25[1] = v12;
  v25[2] = &unk_28714C8F0;
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
  v22[0] = &unk_28714B2C8;
  v22[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F548];
  v21[2] = *MEMORY[0x277D3F570];
  v21[3] = v3;
  v22[2] = &unk_28714C908;
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
  v18[0] = &unk_287145AC0;
  v18[1] = &unk_287145AD8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v20[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v23[2] = *MEMORY[0x277D3F4B0];
  v24[1] = v13;
  v24[2] = &unk_28714C920;
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
  v15[0] = &unk_28714B2C8;
  v15[1] = &unk_287145AF0;
  v14[2] = *MEMORY[0x277D3F588];
  v15[2] = &unk_28714B2D8;
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
  v21[0] = &unk_28714B288;
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
  v21[0] = &unk_28714B2B8;
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
  v14 = &unk_28714B288;
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
  v14 = &unk_28714B288;
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
  v12 = &unk_28714B288;
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
  v12 = &unk_28714B288;
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
  v18[0] = &unk_28714B288;
  v18[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F588];
  v17[2] = *MEMORY[0x277D3F590];
  v17[3] = v3;
  v18[2] = &unk_287145AF0;
  v18[3] = &unk_28714B2E8;
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
  v33[0] = &unk_28714B2B8;
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
  v23[0] = &unk_28714B288;
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
  v48[0] = &unk_28714B2F8;
  v48[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F590];
  v47[2] = *MEMORY[0x277D3F4A0];
  v47[3] = v3;
  v48[2] = MEMORY[0x277CBEC38];
  v48[3] = &unk_287145B08;
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
  v50[2] = &unk_28714C938;
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
  v22[0] = &unk_28714B2C8;
  v22[1] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277D3F578];
  v21[2] = *MEMORY[0x277D3F590];
  v21[3] = v3;
  v22[2] = &unk_287145B08;
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
  v24[2] = &unk_28714C950;
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
  v28[0] = &unk_28714B288;
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
  v23[0] = &unk_28714B308;
  v21 = *MEMORY[0x277D3F470];
  v8 = v21;
  v22 = &unk_28714B318;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v9;
  v23[1] = &unk_28714B318;
  v19 = v8;
  v20 = &unk_28714B328;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v24[1] = v10;
  v23[2] = &unk_28714B328;
  v17 = v8;
  v18 = &unk_28714B338;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v24[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v29[3] = *MEMORY[0x277D3F488];
  v30[2] = v12;
  v30[3] = &unk_28714C968;
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
  v23[0] = &unk_28714B288;
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
  v18 = &unk_28714B348;
  v16 = *MEMORY[0x277D3F470];
  v17 = &unk_28714B328;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v24[3] = *MEMORY[0x277D3F488];
  v25[2] = v11;
  v25[3] = &unk_28714C980;
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
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_cold_1();
  }

  return [*(a1 + 32) sendApplicationMetadataToCA];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_394(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_cold_1();
  }

  v3 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397;
  block[3] = &unk_279A5BDC0;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v3, block);
}

uint64_t __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397(uint64_t a1)
{
  v2 = PLLogApplication();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397_cold_1();
  }

  return [*(a1 + 32) refreshAllAppsAndPlugins];
}

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
  block[3] = &unk_279A5CD00;
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

  if (+[PLUtilities isAppAnalyticsEnabled](PLUtilities, "isAppAnalyticsEnabled") && [*(a1 + 40) intValue] >= 4)
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
      v20[3] = &unk_279A5C768;
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
      _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "pid: %d, name: %@, state: %@, prevState: %@ reasons: %@", buf, 0x30u);
    }

    v23 = [*(a1 + 32) RBSStatetoPLState:v6 state:v9];
    v16 = v8;
    v17 = [PLApplicationAgent isVisible:v9];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v19 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__PLApplicationAgent_initOperatorDependancies__block_invoke_418;
    block[3] = &unk_279A5CD50;
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
  [v7 setEndowmentNamespaces:&unk_28714C998];
  [v4 setStateDescriptor:v7];
  v8 = [*(a1 + 32) copy];
  [v4 setUpdateHandler:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447_cold_1();
  }

  [*(a1 + 32) logEventBackwardWidgetStats:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453_cold_1();
  }

  [*(a1 + 32) logEventPointWidgetUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458_cold_1();
  }

  [*(a1 + 32) logEventPointSuggestedWidgetReload:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465_cold_1();
  }

  [*(a1 + 32) logEventPointPosterUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475_cold_1();
  }

  [*(a1 + 32) logEventForwardSystemAperture:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientMode:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489_cold_1();
  }

  [*(a1 + 32) logEventPointLiveActivityUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494_cold_1();
  }

  [*(a1 + 32) logEventForwardLiveActivityStats:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientModeActiveFace:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507_cold_1();
  }

  [*(a1 + 32) logEventForwardAmbientModeLifetimeCounter:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515_cold_1();
  }

  [*(a1 + 32) logEventForwardMotionToWake:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520_cold_1();
  }

  [*(a1 + 32) logEventPointControlCenterUpdates:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525_cold_1();
  }

  [*(a1 + 32) logEventBackwardControlCenterStats:v6];
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
  v8[3] = &unk_279A5CDC8;
  v8[4] = *(a1 + 32);
  [v4 setUpdateHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 exitEvent];
  v8 = [v7 context];
  v9 = [v8 status];
  v10 = [v7 process];
  v11 = [v10 pid];

  v12 = PLLogApplication();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_1();
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
      __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_2();
    }

    [*(a1 + 32) logEventPointApplicationExitReason:v13];
  }
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540_cold_1();
  }

  [*(a1 + 32) logEventPointDASAppDocking:v6];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548_cold_1();
  }

  [*(a1 + 32) logEventPointDASAppPrewarm:v6];
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
  if (+[PLUtilities AppDeletionEnabled])
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
              _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEFAULT, "AppDeletion : Cleanup pending", v18, 2u);
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
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
  v21 = &unk_279A5CE18;
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
  v3 = a3;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x2020000000;
  v16[2] = 0;
  v4 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke;
  v14[3] = &unk_279A5CE40;
  v14[4] = &v15;
  [v3 enumerateObjectsUsingBlock:v14];
  if (*(v16[0] + 24) > 0.0)
  {
    v5 = PLLogApplication();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent createWidgetStatsAccountingEvents:];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__PLApplicationAgent_createWidgetStatsAccountingEvents___block_invoke_578;
    v11[3] = &unk_279A5CE68;
    v13 = &v15;
    v6 = v4;
    v12 = v6;
    [v3 enumerateObjectsUsingBlock:v11];
    v7 = PLLogApplication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(PLApplicationAgent *)v16 createWidgetStatsAccountingEvents:v6, v7];
    }

    v8 = [MEMORY[0x277D3F0C0] sharedInstance];
    v9 = [v3 lastObject];
    v10 = [v9 entryDate];
    [v8 createDistributionEventBackwardWithDistributionID:50 withChildNodeNameToWeight:v6 withEndDate:v10];
  }

  _Block_object_dispose(&v15, 8);
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
  v21 = &unk_279A5CE18;
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
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v6 = [(PLOperator *)PLApplicationAgent entryKeyForType:v4 andName:@"AmbientModeLifetimeCounter"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  v8 = [v5 objectForKeyedSubscript:@"LifetimePresentationCounter"];

  v9 = [v8 intValue];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{+[PLUtilities roundToSigFig:withSigFig:](PLUtilities, "roundToSigFig:withSigFig:", v9, 2)}];
  [v7 setObject:v10 forKeyedSubscript:@"LifetimePresentationCounter"];

  v11 = PLLogApplication();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(PLApplicationAgent *)v7 logEventForwardAmbientModeLifetimeCounter:v9, v11];
  }

  [(PLOperator *)self logEntry:v7];
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
  v21 = &unk_279A5CE18;
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
  v18[3] = &unk_279A5CE90;
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

  [v7 setObject:&unk_287145BB0 forKeyedSubscript:@"Count"];
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
  v21 = &unk_279A5CE18;
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

          [v6 setObject:&unk_287145BC8 forKeyedSubscript:@"PluginDeletedDate"];
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
  v110 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277D3F2A0] sharedCore];
  v11 = [v10 storage];
  v12 = [v11 storageLocked];

  if ((v12 & 1) == 0)
  {
    v89 = v9;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v13 = [v8 applicationExtensionRecords];
    v14 = [v13 countByEnumeratingWithState:&v105 objects:v109 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v106;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v106 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v105 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [PLApplicationAgent pluginEntryFromRecord:v18];
          [(PLApplicationAgent *)self logInstalledPlugin:v20];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v105 objects:v109 count:16];
      }

      while (v15);
    }

    v21 = *MEMORY[0x277D3F5E0];
    v22 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v23 = [(PLOperator *)self storage];
    v24 = v89;
    v25 = [v23 lastEntryForKey:v22 withSubEntryKey:v89];

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
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 3221225472;
          v90[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_2;
          v90[3] = &unk_279A5CEE0;
          v43 = &v91;
          v54 = v25;
          v91 = v54;
          v45 = &v92;
          v92 = v28;
          v46 = &v93;
          v93 = v8;
          v94 = v89;
          [(PLOperator *)self updateEntry:v54 withBlock:v90];
        }

        else
        {
          v50 = PLLogApplication();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
          }

          v95[0] = MEMORY[0x277D85DD0];
          v95[1] = 3221225472;
          v95[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke_618;
          v95[3] = &unk_279A5CEE0;
          v43 = &v96;
          v51 = v25;
          v96 = v51;
          v45 = &v97;
          v97 = v28;
          v46 = &v98;
          v98 = v8;
          v99 = v89;
          [(PLOperator *)self updateEntry:v51 withBlock:v95];
        }
      }

      else
      {
        v42 = PLLogApplication();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
        }

        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __81__PLApplicationAgent_logInstalledAppWithRecord_withBundleID_shouldMaskTimestamp___block_invoke;
        v100[3] = &unk_279A5CEB8;
        v43 = &v101;
        v44 = v25;
        v101 = v44;
        v104 = v38;
        v45 = &v102;
        v102 = v28;
        v46 = &v103;
        v103 = v8;
        [(PLOperator *)self updateEntry:v44 withBlock:v100];
      }

      v55 = *v43;
      v9 = v89;
    }

    else
    {
      v27 = PLLogApplication();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
      }

      v28 = [MEMORY[0x277CBEAA8] monotonicDate];
      if (([MEMORY[0x277D3F180] fullMode] & 1) == 0)
      {
        v29 = PLLogApplication();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
        }

        if (a5)
        {
          v30 = PLLogApplication();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
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
              [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
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
        v24 = v89;
      }

      v59 = PLLogApplication();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
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
        [PLApplicationAgent logInstalledAppWithRecord:v8 withBundleID:v89 shouldMaskTimestamp:v63];
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

      v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLApplicationAgent isAppClipWithBundleID:](self, "isAppClipWithBundleID:", v89)}];
      [v55 setObject:v70 forKeyedSubscript:@"AppIsClip"];

      [v55 setObject:&unk_287145BC8 forKeyedSubscript:@"AppDeletedDate"];
      v71 = &unk_287145BF8;
      if ([v8 mayBeBUIVisible] && +[PLApplicationAgent hasScreenPresence:](PLApplicationAgent, "hasScreenPresence:", v8))
      {
        v71 = &unk_287145BE0;
      }

      [v55 setObject:v71 forKeyedSubscript:@"AppType"];
      v72 = [v55 objectForKeyedSubscript:@"AppBundleId"];
      v73 = [v72 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

      if (v73)
      {
        [v55 setObject:&unk_287145BE0 forKeyedSubscript:@"AppType"];
      }

      [v55 setObject:&unk_287145BC8 forKeyedSubscript:@"AppUpdatedDate"];
      if (+[PLUtilities isAppAnalyticsEnabled])
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
      v9 = v89;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        [PLApplicationAgent logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:];
      }

      v87 = [v55 objectForKeyedSubscript:@"AppBundleVersion"];
      [PLApplicationAgent addAppVersion:v89 withVersion:v87];
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
  [*(a1 + 32) setObject:&unk_287145BC8 forKeyedSubscript:@"AppDeletedDate"];
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
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277D3F2A0] sharedCore];
  v5 = [v4 storage];
  v18 = v3;
  v6 = [v5 entriesForKey:v3];

  v7 = PLLogApplication();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLApplicationAgent buildAppVersionDictionary:];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledPlugin:(id)a3
{
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
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__8;
      v25 = __Block_byref_object_dispose__8;
      v11 = [(PLOperator *)self storage];
      v26 = [v11 lastEntryForKey:v10 withSubEntryKey:v9];

      v12 = v22[5];
      if (v12)
      {
        v13 = [v12 objectForKeyedSubscript:@"PluginDeletedDate"];
        [v13 doubleValue];
        v15 = v14;

        v16 = PLLogApplication();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (v15 == 0.0)
        {
          if (v17)
          {
            [PLApplicationAgent logInstalledPlugin:];
          }
        }

        else
        {
          if (v17)
          {
            [PLApplicationAgent logInstalledPlugin:];
          }

          v18 = v22[5];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __41__PLApplicationAgent_logInstalledPlugin___block_invoke;
          v20[3] = &unk_279A5C0C8;
          v20[4] = &v21;
          [(PLOperator *)self updateEntry:v18 withBlock:v20];
        }
      }

      else
      {
        v19 = PLLogApplication();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [PLApplicationAgent logInstalledPlugin:];
        }

        [(PLOperator *)self logEntry:v4];
      }

      _Block_object_dispose(&v21, 8);
    }
  }
}

void __41__PLApplicationAgent_logInstalledPlugin___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(*(*(a1 + 32) + 8) + 40) setEntryDate:v2];
  [*(*(*(a1 + 32) + 8) + 40) setObject:&unk_287145BC8 forKeyedSubscript:@"PluginDeletedDate"];
}

- (void)logUninstalledApp:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v20 = a3;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__8;
  v40[4] = __Block_byref_object_dispose__8;
  v41 = [MEMORY[0x277CBEAA8] monotonicDate];
  v3 = *MEMORY[0x277D3F5E0];
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__8;
  v38 = __Block_byref_object_dispose__8;
  v5 = [(PLOperator *)self storage];
  [v5 lastEntryForKey:v4 withSubEntryKey:v20];
  v39 = v19 = v4;

  v6 = v35[5];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke;
  v33[3] = &unk_279A5CF08;
  v33[4] = &v34;
  v33[5] = v40;
  [(PLOperator *)self updateEntry:v6 withBlock:v33];
  v7 = [(PLOperator *)PLApplicationAgent entryKeyForType:v3 andName:@"AllPlugins"];
  v8 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginParentApp" withValue:v20 withComparisonOperation:0];
  v9 = [(PLOperator *)self storage];
  v43[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v11 = [v9 entriesForKey:v7 withComparisons:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v42 count:16];
  if (v13)
  {
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v23 = 0;
        v24 = &v23;
        v25 = 0x3032000000;
        v26 = __Block_byref_object_copy__8;
        v27 = __Block_byref_object_dispose__8;
        v28 = v16;
        v17 = v24[5];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __40__PLApplicationAgent_logUninstalledApp___block_invoke_2;
        v22[3] = &unk_279A5CF08;
        v22[4] = &v23;
        v22[5] = v40;
        [(PLOperator *)self updateEntry:v17 withBlock:v22];
        _Block_object_dispose(&v23, 8);
      }

      v13 = [v12 countByEnumeratingWithState:&v29 objects:v42 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v40, 8);

  v18 = *MEMORY[0x277D85DE8];
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
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
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
    v11[3] = &unk_279A5CF30;
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
  v21[3] = __Block_byref_object_copy__8;
  v21[4] = __Block_byref_object_dispose__8;
  v22 = [MEMORY[0x277CBEAA8] monotonicDate];
  v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", @"AppBundleId", v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
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
    v11[3] = &unk_279A5CF30;
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
    __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke_cold_1(a1);
  }

  v10 = a1[4];
  v11 = [*(*(a1[6] + 8) + 40) objectForKeyedSubscript:@"AppBundleVersion"];
  [PLApplicationAgent removeAppVersion:v10 forVersion:v11];
}

- (void)logAllApps
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
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
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
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
    v6 = dword_25F023D80[v5];
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
            _os_log_error_impl(&dword_25EE51000, v15, OS_LOG_TYPE_ERROR, "could not refresh application record for %@: %@", buf, 0x16u);
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
  v26 = *MEMORY[0x277D85DE8];
  v4 = [(PLApplicationAgent *)self getApplicationRecordSet:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412290;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 isPlaceholder])
        {
          v11 = PLLogApplication();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [(PLApplicationAgent *)&v17 applicationsDidInstall:v18, v11];
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
              v24 = v11;
              _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Update %@\n", buf, 0xCu);
            }

            [(PLApplicationAgent *)self logUpdatedAppVersion:v11];
          }

          else
          {
            if (v14)
            {
              *buf = v16;
              v24 = v11;
              _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "applicationsDidInstall: Install %@", buf, 0xCu);
            }
          }

          [(PLApplicationAgent *)self logInstalledAppWithRecord:v10 withBundleID:v11 shouldMaskTimestamp:1];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 isPlaceholder])
        {
          v11 = PLLogApplication();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [(PLApplicationAgent *)&v18 applicationsDidUninstall:v19, v11];
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
            v25 = v12;
            v26 = 2112;
            v27 = v11;
            _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "AppDeletion : Application Name %@ and bundle ID %@", buf, 0x16u);
          }

          [(PLApplicationAgent *)self logEventForwardApplicationDidUninstall:v11 withAppName:v12];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    if (+[PLUtilities AppDeletionEnabled])
    {
      [(PLApplicationAgent *)self appReferenceCleanup];
    }

    v14 = PLLogApplication();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLApplicationAgent applicationsDidUninstall:];
    }

    v15 = [PLUtilities generateAndUpdateSaltValue:@"PLSaltBundleID"];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_397_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_447_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_453_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_458_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_465_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_475_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_482_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_489_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_494_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_499_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_507_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_515_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_520_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_525_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_2_527_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_540_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __46__PLApplicationAgent_initOperatorDependancies__block_invoke_548_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isApplication:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error to identify isApplication %@", v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)createWidgetStatsAccountingEvents:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createWidgetStatsAccountingEvents:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "WidgetStats Accounting: totalScreenOnTime=%f, identifierToWeight=%@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAmbientModeLifetimeCounter:(NSObject *)a3 .cold.1(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectForKeyedSubscript:@"LifetimePresentationCounter"];
  v7[0] = 67109378;
  v7[1] = a2;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "AmbientModeLifetimePresentationCounter value from payload: %d, value after rounding: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointApplicationForDisplayID:withPid:withState:withReasons:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardRBSApplicationForBundleID:withPid:withState:withReasons:withVisibility:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:(void *)a1 withBundleID:(uint64_t)a2 shouldMaskTimestamp:(NSObject *)a3 .cold.8(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 iTunesMetadata];
  v6 = [v5 distributorInfo];
  v7 = [v6 distributorID];
  OUTLINED_FUNCTION_1();
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_25EE51000, a3, OS_LOG_TYPE_DEBUG, "AllApps logging DistributorID: %@ for BundleID: %@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledAppWithRecord:withBundleID:shouldMaskTimestamp:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)buildAppVersionDictionary:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logInstalledPlugin:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledPlugin:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)logInstalledPlugin:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__PLApplicationAgent_logUpdatedAppVersion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidInstall:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "app Record is placeHolder", buf, 2u);
}

- (void)applicationsDidUninstall:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "app Proxy is placeHolder", buf, 2u);
}

- (void)applicationsDidUninstall:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end