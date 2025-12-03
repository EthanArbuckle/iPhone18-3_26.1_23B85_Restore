@interface PLBatteryBreakdownService
+ (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d;
+ (id)appNameForBundleID:(id)d;
+ (id)combineQualifiers:(id)qualifiers;
+ (id)installedPlugins;
+ (id)pluginEntryFromRecord:(id)record;
+ (void)load;
- (BOOL)checkHomeKitEvents;
- (BOOL)inDemoMode;
- (BOOL)isBackgroundLocationUsageAlwaysEnabled:(id)enabled withLocationDict:(id)dict;
- (BOOL)isBackgroundRefreshEnabled:(id)enabled;
- (BOOL)shouldShowBatteryBreakdownWithTotalSumEnergy:(double)energy withtotalSumEnergyRatioCutOff:(double)off;
- (BOOL)shouldSuggestAutoBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)shouldSuggestAutoLockWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)shouldSuggestReduceBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent;
- (BOOL)showRootNodesInInternal;
- (BOOL)wasGizmoConnectedInRange:(_PLTimeIntervalRange)range;
- (NSDictionary)givenNameToMappedName;
- (NSDictionary)gizmoDaemonToAppBundleID;
- (NSDictionary)gizmoIDSTopicToAppBundleID;
- (NSDictionary)installedBundleIDToDisplayName;
- (NSDictionary)installedPluginBundleIDToPluginEntry;
- (NSDictionary)nodeIDToNodeName;
- (NSDictionary)rootNodeNameToRootNodeEnergyKey;
- (NSSet)deletedAppClipNames;
- (NSSet)deletedAppNames;
- (NSSet)intermediateRootNodes;
- (NSSet)nonAppNames;
- (NSSet)rootNodeNames;
- (NSSet)webAppNames;
- (double)computeTotalBackgroundDuration:(id)duration;
- (double)computeTotalForegroundDuration:(id)duration;
- (double)getLastUpgradeTimestamp;
- (double)getfirstEntryTimestampFromDb;
- (double)nonAppRuntimeWithEventForwardTableName:(id)name withRange:(_PLTimeIntervalRange)range andIdentificationKey:(id)key;
- (id)addForegroundAndBackgroundDurations:(id)durations withRange:(_PLTimeIntervalRange)range withQueryType:(int)type;
- (id)addNotificationValues:(id)values withRange:(_PLTimeIntervalRange)range withQueryType:(int)type;
- (id)adjustBackgroundTimesWithEnergyEntries:(id)entries;
- (id)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries;
- (id)adjustFGBGTimeForNonAppEnergyEntry:(id)entry;
- (id)adjustForegroundTimesWithEnergyEntries:(id)entries;
- (id)applyDynamicNameTransformationsWithEnergyEntries:(id)entries;
- (id)applyStaticNameTransformationsWithEnergyEntries:(id)entries;
- (id)bundleIDsForMappedName:(id)name;
- (id)combineDuplicatesWithEnergyEntries:(id)entries;
- (id)determineDisplayNamesWithEnergyEntries:(id)entries;
- (id)energyEntriesWithRange:(_PLTimeIntervalRange)range withEntryTimeInterval:(double)interval withQueryType:(int)type;
- (id)filterEnergyEntriesBasedOnTime:(id)time withQueryType:(int)type;
- (id)filterWithEnergyEntries:(id)entries withQueryType:(int)type;
- (id)getUpgradeDataWithLastUpgradeTimestamp:(double)timestamp withFirstEntryTimestampFromDB:(double)b withNow:(id)now withBeforeUpgrade:(BOOL)upgrade withRange:(_PLTimeIntervalRange)range;
- (id)getUsageDataWithStartTime:(double)time withMidTime:(double)midTime withEndTime:(id)endTime;
- (id)mapCloudDocsToAppsWithEnergyEntries:(id)entries;
- (id)mapDeletedAppsWithEnergyEntries:(id)entries;
- (id)mapGizmoToAppsWithEnergyEntries:(id)entries;
- (id)mapPluginsToAppsWithEnergyEntries:(id)entries;
- (id)nonAppsRuntimesWithRange:(_PLTimeIntervalRange)range;
- (id)nonNullValue:(id)value withKey:(id)key;
- (id)pluginBundleIDsforBundleID:(id)d;
- (id)populateBLDKeysWithEnergyEntries:(id)entries;
- (id)populateEnergyBucketKeysWithEntries:(id)entries;
- (id)populateRootNodeEnergyKeysWithEnergyEntries:(id)entries;
- (id)qualifiersWithEnergyEntry:(id)entry bucketSize:(double)size andTotalEnergy:(double)energy;
- (id)reaccountBackupRestoreWithEnergyEntries:(id)entries;
- (id)reaccountExchangeEntriesWithEnergyEntries:(id)entries;
- (id)removeNodesNotToShowInInternalUI:(id)i withQueryType:(int)type;
- (id)shouldSuggestBackgroundCPUWithEnergyEntries:(id)entries;
- (id)shouldSuggestBackgroundLocationWithEnergyEntries:(id)entries;
- (id)suggestionsWithEnergyEntries:(id)entries;
- (int)appTypeForName:(id)name;
- (int)minimumRequiredQueryTypeForAppType:(int)type;
- (signed)energyMetricBucketForRootNodeID:(id)d;
- (void)checkHomeKitEvents;
- (void)clearState;
@end

@implementation PLBatteryBreakdownService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLBatteryBreakdownService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)clearState
{
  [(PLBatteryBreakdownService *)self setRootNodeNames:0];
  [(PLBatteryBreakdownService *)self setNonAppNames:0];
  [(PLBatteryBreakdownService *)self setDeletedAppNames:0];
  [(PLBatteryBreakdownService *)self setDeletedAppClipNames:0];
  [(PLBatteryBreakdownService *)self setWebAppNames:0];
  [(PLBatteryBreakdownService *)self setNodeIDToNodeName:0];
  [(PLBatteryBreakdownService *)self setInstalledBundleIDToDisplayName:0];
  [(PLBatteryBreakdownService *)self setInstalledPluginBundleIDToPluginEntry:0];
  [(PLBatteryBreakdownService *)self setRootNodeNameToRootNodeEnergyKey:0];
  [(PLBatteryBreakdownService *)self setGivenNameToMappedName:0];
  [(PLBatteryBreakdownService *)self setGizmoDaemonToAppBundleID:0];
  [(PLBatteryBreakdownService *)self setGizmoIDSTopicToAppBundleID:0];

  [(PLBatteryBreakdownService *)self setHasHomeKitActivity:0];
}

- (NSSet)rootNodeNames
{
  rootNodeNames = self->_rootNodeNames;
  if (!rootNodeNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BF90];
    v5 = self->_rootNodeNames;
    self->_rootNodeNames = v4;

    rootNodeNames = self->_rootNodeNames;
  }

  return rootNodeNames;
}

- (NSSet)nonAppNames
{
  nonAppNames = self->_nonAppNames;
  if (!nonAppNames)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BFA8];
    v5 = self->_nonAppNames;
    self->_nonAppNames = v4;

    nonAppNames = self->_nonAppNames;
  }

  return nonAppNames;
}

- (NSSet)intermediateRootNodes
{
  intermediateRootNodes = self->_intermediateRootNodes;
  if (!intermediateRootNodes)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BFC0];
    v5 = self->_intermediateRootNodes;
    self->_intermediateRootNodes = v4;

    intermediateRootNodes = self->_intermediateRootNodes;
  }

  return intermediateRootNodes;
}

- (NSSet)deletedAppNames
{
  selfCopy = self;
  v55[1] = *MEMORY[0x277D85DE8];
  deletedAppNames = self->_deletedAppNames;
  if (!deletedAppNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:1];
    storage = [(PLOperator *)selfCopy storage];
    v38 = v5;
    v55[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:1];
    v39 = v4;
    v8 = [storage entriesForKey:v4 withComparisons:v7];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v8;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    v10 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke;
      v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v49[4] = v11;
      if (deletedAppNames_defaultOnce != -1)
      {
        dispatch_once(&deletedAppNames_defaultOnce, v49);
      }

      if (deletedAppNames_classDebugEnabled == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"deletedAppEntries=%@", v8];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:240];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    obj = [MEMORY[0x277CBEB58] set];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = v8;
    v43 = [(NSSet *)v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v43)
    {
      v42 = *v46;
      v40 = v18;
      do
      {
        v19 = 0;
        do
        {
          if (*v46 != v42)
          {
            objc_enumerationMutation(v18);
          }

          v20 = *(*(&v45 + 1) + 8 * v19);
          v21 = [v20 objectForKeyedSubscript:@"AppBundleId"];
          v22 = [v20 objectForKeyedSubscript:@"AppIsClip"];
          if ([*(v10 + 384) debugEnabled])
          {
            v23 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v23;
            if (deletedAppNames_defaultOnce_293 != -1)
            {
              dispatch_once(&deletedAppNames_defaultOnce_293, block);
            }

            if (deletedAppNames_classDebugEnabled_294 == 1)
            {
              v24 = v10;
              v25 = selfCopy;
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v21];
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppNames]"];
              [v27 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:246];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v26;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v25;
              v10 = v24;
              v18 = v40;
            }
          }

          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v22 intValue];
            *buf = 138412546;
            v51 = v21;
            v52 = 1024;
            v53 = intValue;
            _os_log_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v21 && ([v22 BOOLValue] & 1) == 0)
          {
            [obj addObject:v21];
          }

          ++v19;
        }

        while (v43 != v19);
        v43 = [(NSSet *)v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v43);
    }

    objc_storeStrong(&selfCopy->_deletedAppNames, obj);
    v34 = PLLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppNames = selfCopy->_deletedAppNames;
  }

  v36 = *MEMORY[0x277D85DE8];

  return deletedAppNames;
}

uint64_t __44__PLBatteryBreakdownService_deletedAppNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppNames_classDebugEnabled = result;
  return result;
}

uint64_t __44__PLBatteryBreakdownService_deletedAppNames__block_invoke_295(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppNames_classDebugEnabled_294 = result;
  return result;
}

- (NSSet)deletedAppClipNames
{
  selfCopy = self;
  v47[1] = *MEMORY[0x277D85DE8];
  deletedAppClipNames = self->_deletedAppClipNames;
  if (!deletedAppClipNames)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:1];
    storage = [(PLOperator *)selfCopy storage];
    v32 = v5;
    v47[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v33 = v4;
    v8 = [storage entriesForKey:v4 withComparisons:v7];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v8;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    obj = [MEMORY[0x277CBEB58] set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v8;
    v11 = [(NSSet *)v10 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v36 = *v39;
      do
      {
        v13 = 0;
        v34 = v12;
        do
        {
          if (*v39 != v36)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          v15 = [v14 objectForKeyedSubscript:@"AppBundleId"];
          v16 = [v14 objectForKeyedSubscript:@"AppIsClip"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v17 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v17;
            if (deletedAppClipNames_defaultOnce != -1)
            {
              dispatch_once(&deletedAppClipNames_defaultOnce, block);
            }

            if (deletedAppClipNames_classDebugEnabled == 1)
            {
              v18 = v10;
              v19 = selfCopy;
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v15];
              v21 = MEMORY[0x277D3F178];
              v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent = [v22 lastPathComponent];
              v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService deletedAppClipNames]"];
              [v21 logMessage:v20 fromFile:lastPathComponent fromFunction:v24 fromLineNumber:273];

              v25 = PLLogCommon();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v43 = v20;
                _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              selfCopy = v19;
              v10 = v18;
              v12 = v34;
            }
          }

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v16 intValue];
            *buf = 138412546;
            v43 = v15;
            v44 = 1024;
            v45 = intValue;
            _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v15 && [v16 BOOLValue])
          {
            [obj addObject:v15];
          }

          ++v13;
        }

        while (v12 != v13);
        v12 = [(NSSet *)v10 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v12);
    }

    objc_storeStrong(&selfCopy->_deletedAppClipNames, obj);
    v28 = PLLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      deletedAppNames = selfCopy->_deletedAppNames;
      *buf = 138412290;
      v43 = deletedAppNames;
      _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    deletedAppClipNames = selfCopy->_deletedAppClipNames;
  }

  v30 = *MEMORY[0x277D85DE8];

  return deletedAppClipNames;
}

uint64_t __48__PLBatteryBreakdownService_deletedAppClipNames__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  deletedAppClipNames_classDebugEnabled = result;
  return result;
}

- (NSSet)webAppNames
{
  v22 = *MEMORY[0x277D85DE8];
  webAppNames = self->_webAppNames;
  if (!webAppNames)
  {
    v4 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
    storage = [(PLOperator *)self storage];
    v6 = [storage entriesForKey:v4];

    v7 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) objectForKeyedSubscript:{@"identifier", v17}];
          if (v13)
          {
            [(NSSet *)v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = self->_webAppNames;
    self->_webAppNames = v7;

    webAppNames = self->_webAppNames;
  }

  v15 = *MEMORY[0x277D85DE8];

  return webAppNames;
}

- (NSDictionary)nodeIDToNodeName
{
  v29[1] = *MEMORY[0x277D85DE8];
  nodeIDToNodeName = self->_nodeIDToNodeName;
  if (!nodeIDToNodeName)
  {
    storage = [(PLOperator *)self storage];
    entryKey = [MEMORY[0x277D3F0C8] entryKey];
    v28 = @"where";
    whereValidName = [objc_opt_class() whereValidName];
    v27 = whereValidName;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v29[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v9 = [storage entriesForKey:entryKey withProperties:v8];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          name = [v16 name];
          v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "entryID")}];
          [(NSDictionary *)dictionary setObject:name forKeyedSubscript:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v19 = self->_nodeIDToNodeName;
    self->_nodeIDToNodeName = dictionary;

    nodeIDToNodeName = self->_nodeIDToNodeName;
  }

  v20 = *MEMORY[0x277D85DE8];

  return nodeIDToNodeName;
}

- (NSDictionary)installedBundleIDToDisplayName
{
  selfCopy = self;
  v79[1] = *MEMORY[0x277D85DE8];
  installedBundleIDToDisplayName = self->_installedBundleIDToDisplayName;
  if (!installedBundleIDToDisplayName)
  {
    v4 = 0x279A5A000uLL;
    v5 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v6 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:0];
    storage = [(PLOperator *)selfCopy storage];
    v54 = v6;
    v79[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:1];
    v55 = v5;
    v9 = [storage entriesForKey:v5 withComparisons:v8];

    v10 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v11 = objc_opt_class();
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke;
      v70[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v70[4] = v11;
      if (installedBundleIDToDisplayName_defaultOnce != -1)
      {
        dispatch_once(&installedBundleIDToDisplayName_defaultOnce, v70);
      }

      if (installedBundleIDToDisplayName_classDebugEnabled == 1)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedAppEntries=%@", v9];
        v13 = MEMORY[0x277D3F178];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v14 lastPathComponent];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
        [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:323];

        v17 = PLLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v4 = 0x279A5A000uLL;
      }
    }

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap];
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
    v57 = selfCopy;
    if (v19)
    {
      v20 = v19;
      v21 = *v67;
      do
      {
        v22 = 0;
        do
        {
          if (*v67 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v66 + 1) + 8 * v22);
          v24 = [v23 objectForKeyedSubscript:@"AppType"];
          intValue = [v24 intValue];

          if (intValue == 101)
          {
            v26 = [v23 objectForKeyedSubscript:@"AppBundleId"];
            v27 = [v23 objectForKeyedSubscript:@"AppName"];
            if ([*(v10 + 384) debugEnabled])
            {
              v28 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v28;
              if (installedBundleIDToDisplayName_defaultOnce_325 != -1)
              {
                dispatch_once(&installedBundleIDToDisplayName_defaultOnce_325, block);
              }

              if (installedBundleIDToDisplayName_classDebugEnabled_326 == 1)
              {
                v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v26, v27];
                v30 = MEMORY[0x277D3F178];
                v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v31 lastPathComponent];
                v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                [v30 logMessage:v29 fromFile:lastPathComponent2 fromFunction:v33 fromLineNumber:333];

                v34 = PLLogCommon();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v77 = v29;
                  _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                selfCopy = v57;
                v4 = 0x279A5A000;
                v10 = 0x277D3F000;
              }
            }

            [(NSDictionary *)dictionary setObject:v27 forKeyedSubscript:v26];
          }

          else
          {
            v26 = PLLogCommon();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v74 getBundleIDToDisplayNameMap];
            }
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [obj countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v20);
    }

    v35 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v62;
      do
      {
        v39 = 0;
        do
        {
          if (*v62 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v61 + 1) + 8 * v39);
          if ([v40 mayBeBUIVisible])
          {
            if (![*(v4 + 3200) hasScreenPresence:v40])
            {
              goto LABEL_48;
            }

            bundleIdentifier = [v40 bundleIdentifier];
            v42 = [(NSDictionary *)dictionary objectForKeyedSubscript:bundleIdentifier];

            if (!v42)
            {
              localizedName = [v40 localizedName];
              if ([MEMORY[0x277D3F180] debugEnabled])
              {
                v44 = objc_opt_class();
                v60[0] = MEMORY[0x277D85DD0];
                v60[1] = 3221225472;
                v60[2] = __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334;
                v60[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v60[4] = v44;
                if (installedBundleIDToDisplayName_defaultOnce_332 != -1)
                {
                  dispatch_once(&installedBundleIDToDisplayName_defaultOnce_332, v60);
                }

                if (installedBundleIDToDisplayName_classDebugEnabled_333 == 1)
                {
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier, localizedName];
                  v56 = MEMORY[0x277D3F178];
                  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v46 lastPathComponent];
                  v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedBundleIDToDisplayName]"];
                  [v56 logMessage:v45 fromFile:lastPathComponent3 fromFunction:v48 fromLineNumber:351];

                  v49 = v45;
                  v50 = PLLogCommon();
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v77 = v49;
                    _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  selfCopy = v57;
                  v4 = 0x279A5A000;
                }
              }

              [(NSDictionary *)dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier];
            }
          }

          else
          {
            bundleIdentifier = PLLogCommon();
            if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v71 getBundleIDToDisplayNameMap];
            }
          }

LABEL_48:
          ++v39;
        }

        while (v37 != v39);
        v37 = [v35 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v37);
    }

    v51 = selfCopy->_installedBundleIDToDisplayName;
    selfCopy->_installedBundleIDToDisplayName = dictionary;

    installedBundleIDToDisplayName = selfCopy->_installedBundleIDToDisplayName;
  }

  v52 = *MEMORY[0x277D85DE8];

  return installedBundleIDToDisplayName;
}

uint64_t __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedBundleIDToDisplayName_classDebugEnabled = result;
  return result;
}

uint64_t __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_327(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedBundleIDToDisplayName_classDebugEnabled_326 = result;
  return result;
}

uint64_t __59__PLBatteryBreakdownService_installedBundleIDToDisplayName__block_invoke_334(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedBundleIDToDisplayName_classDebugEnabled_333 = result;
  return result;
}

- (NSDictionary)installedPluginBundleIDToPluginEntry
{
  selfCopy = self;
  v74[1] = *MEMORY[0x277D85DE8];
  installedPluginBundleIDToPluginEntry = self->_installedPluginBundleIDToPluginEntry;
  if (!installedPluginBundleIDToPluginEntry)
  {
    v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871456E8 withComparisonOperation:0];
    storage = [(PLOperator *)selfCopy storage];
    v51 = v5;
    v74[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
    v52 = v4;
    v8 = [storage entriesForKey:v4 withComparisons:v7];

    v9 = 0x277D3F000uLL;
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v10 = objc_opt_class();
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke;
      v69[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v69[4] = v10;
      if (installedPluginBundleIDToPluginEntry_defaultOnce != -1)
      {
        dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce, v69);
      }

      if (installedPluginBundleIDToPluginEntry_classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v8];
        v12 = MEMORY[0x277D3F178];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v13 lastPathComponent];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
        [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:373];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v9 = 0x277D3F000uLL;
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v65 objects:v73 count:16];
    v54 = v17;
    v55 = selfCopy;
    if (v18)
    {
      v19 = v18;
      v20 = *v66;
      do
      {
        v21 = 0;
        do
        {
          if (*v66 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v65 + 1) + 8 * v21);
          v23 = [v22 objectForKeyedSubscript:@"PluginId"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v24 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v24;
            if (installedPluginBundleIDToPluginEntry_defaultOnce_344 != -1)
            {
              dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce_344, block);
            }

            if (installedPluginBundleIDToPluginEntry_classDebugEnabled_345 == 1)
            {
              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v23];
              v26 = MEMORY[0x277D3F178];
              v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v27 lastPathComponent];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
              [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:378];

              v30 = PLLogCommon();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v72 = v25;
                _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v17 = v54;
              selfCopy = v55;
              v9 = 0x277D3F000uLL;
            }
          }

          [(NSDictionary *)dictionary setObject:v22 forKeyedSubscript:v23];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v19);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v31 = +[PLBatteryBreakdownService installedPlugins];
    v32 = dictionary;
    v57 = [v31 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v57)
    {
      v56 = *v61;
      v53 = v31;
      do
      {
        v33 = 0;
        do
        {
          if (*v61 != v56)
          {
            objc_enumerationMutation(v31);
          }

          v34 = *(*(&v60 + 1) + 8 * v33);
          v35 = [v34 objectForKeyedSubscript:@"PluginId"];
          v36 = [v34 objectForKeyedSubscript:@"PluginParentApp"];
          v37 = [(NSDictionary *)v32 objectForKeyedSubscript:v35];

          if (!v37)
          {
            if ([*(v9 + 384) debugEnabled])
            {
              v38 = objc_opt_class();
              v59[0] = MEMORY[0x277D85DD0];
              v59[1] = 3221225472;
              v59[2] = __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356;
              v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v59[4] = v38;
              if (installedPluginBundleIDToPluginEntry_defaultOnce_354 != -1)
              {
                dispatch_once(&installedPluginBundleIDToPluginEntry_defaultOnce_354, v59);
              }

              if (installedPluginBundleIDToPluginEntry_classDebugEnabled_355 == 1)
              {
                v39 = MEMORY[0x277CCACA8];
                v40 = [v34 objectForKeyedSubscript:@"PluginExecutableName"];
                v41 = [v34 objectForKeyedSubscript:@"PluginType"];
                v42 = [v39 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v40, v35, v36, v41];

                v43 = MEMORY[0x277D3F178];
                v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v44 lastPathComponent];
                v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService installedPluginBundleIDToPluginEntry]"];
                [v43 logMessage:v42 fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:389];

                v47 = PLLogCommon();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v72 = v42;
                  _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                selfCopy = v55;
                v9 = 0x277D3F000;
                v32 = dictionary;
                v31 = v53;
              }
            }

            [(NSDictionary *)v32 setObject:v34 forKeyedSubscript:v35];
          }

          ++v33;
        }

        while (v57 != v33);
        v57 = [v31 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v57);
    }

    v48 = selfCopy->_installedPluginBundleIDToPluginEntry;
    selfCopy->_installedPluginBundleIDToPluginEntry = v32;

    installedPluginBundleIDToPluginEntry = selfCopy->_installedPluginBundleIDToPluginEntry;
  }

  v49 = *MEMORY[0x277D85DE8];

  return installedPluginBundleIDToPluginEntry;
}

uint64_t __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled = result;
  return result;
}

uint64_t __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_346(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled_345 = result;
  return result;
}

uint64_t __65__PLBatteryBreakdownService_installedPluginBundleIDToPluginEntry__block_invoke_356(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  installedPluginBundleIDToPluginEntry_classDebugEnabled_355 = result;
  return result;
}

- (id)pluginBundleIDsforBundleID:(id)d
{
  dCopy = d;
  installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PLBatteryBreakdownService_pluginBundleIDsforBundleID___block_invoke;
  v10[3] = &unk_279A5C2A0;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [installedPluginBundleIDToPluginEntry keysOfEntriesPassingTest:v10];

  allObjects = [v7 allObjects];

  return allObjects;
}

uint64_t __56__PLBatteryBreakdownService_pluginBundleIDsforBundleID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"PluginParentApp"];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

+ (id)appNameForBundleID:(id)d
{
  v3 = SBSCopyLocalizedApplicationNameForDisplayIdentifier();

  return v3;
}

+ (id)installedPlugins
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
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

        v9 = [PLBatteryBreakdownService pluginEntryFromRecord:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          [array addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)pluginEntryFromRecord:(id)record
{
  recordCopy = record;
  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  bundleIdentifier = [recordCopy bundleIdentifier];
  if (bundleIdentifier)
  {
    containingBundleRecord = [recordCopy containingBundleRecord];
    if (containingBundleRecord)
    {
      v7 = containingBundleRecord;
      containingBundleRecord2 = [recordCopy containingBundleRecord];
      bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
      if (bundleIdentifier2)
      {
        v10 = bundleIdentifier2;
        executableURL = [recordCopy executableURL];

        if (executableURL)
        {
          bundleIdentifier = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
          bundleIdentifier3 = [recordCopy bundleIdentifier];
          [bundleIdentifier setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

          containingBundleRecord3 = [recordCopy containingBundleRecord];
          bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
          [bundleIdentifier setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

          extensionPointRecord = [recordCopy extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          [bundleIdentifier setObject:identifier forKeyedSubscript:@"PluginType"];

          executableURL2 = [recordCopy executableURL];
          path = [executableURL2 path];
          [bundleIdentifier setObject:path forKeyedSubscript:@"PluginExecutableName"];

          [bundleIdentifier setObject:&unk_2871456E8 forKeyedSubscript:@"PluginDeletedDate"];
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    bundleIdentifier = 0;
  }

LABEL_9:

  return bundleIdentifier;
}

- (NSDictionary)gizmoDaemonToAppBundleID
{
  gizmoDaemonToAppBundleID = self->_gizmoDaemonToAppBundleID;
  if (!gizmoDaemonToAppBundleID)
  {
    self->_gizmoDaemonToAppBundleID = &unk_287147DC0;

    gizmoDaemonToAppBundleID = self->_gizmoDaemonToAppBundleID;
  }

  return gizmoDaemonToAppBundleID;
}

- (NSDictionary)gizmoIDSTopicToAppBundleID
{
  gizmoIDSTopicToAppBundleID = self->_gizmoIDSTopicToAppBundleID;
  if (!gizmoIDSTopicToAppBundleID)
  {
    self->_gizmoIDSTopicToAppBundleID = &unk_287147DE8;

    gizmoIDSTopicToAppBundleID = self->_gizmoIDSTopicToAppBundleID;
  }

  return gizmoIDSTopicToAppBundleID;
}

- (NSDictionary)rootNodeNameToRootNodeEnergyKey
{
  v26[17] = *MEMORY[0x277D85DE8];
  rootNodeNameToRootNodeEnergyKey = self->_rootNodeNameToRootNodeEnergyKey;
  if (!rootNodeNameToRootNodeEnergyKey)
  {
    v24 = [&unk_28714BFD8 objectAtIndexedSubscript:2];
    v25[0] = v24;
    v26[0] = @"PLBatteryUIAppCPUEnergyKey";
    v23 = [&unk_28714BFF0 objectAtIndexedSubscript:4];
    v25[1] = v23;
    v26[1] = @"PLBatteryUIAppVENCEnergyKey";
    v22 = [&unk_28714C008 objectAtIndexedSubscript:5];
    v25[2] = v22;
    v26[2] = @"PLBatteryUIAppVDECEnergyKey";
    v21 = [&unk_28714C020 objectAtIndexedSubscript:6];
    v25[3] = v21;
    v26[3] = @"PLBatteryUIAppISPEnergyKey";
    v20 = [&unk_28714C038 objectAtIndexedSubscript:7];
    v25[4] = v20;
    v26[4] = @"PLBatteryUIAppRestOfSOCEnergyKey";
    v19 = [&unk_28714C050 objectAtIndexedSubscript:8];
    v25[5] = v19;
    v26[5] = @"PLBatteryUIAppGPUEnergyKey";
    v18 = [&unk_28714C068 objectAtIndexedSubscript:9];
    v25[6] = v18;
    v26[6] = @"PLBatteryUIAppDRAMEnergyKey";
    v17 = [&unk_28714C080 objectAtIndexedSubscript:10];
    v25[7] = v17;
    v26[7] = @"PLBatteryUIAppDisplayEnergyKey";
    v16 = [&unk_28714C098 objectAtIndexedSubscript:11];
    v25[8] = v16;
    v26[8] = @"PLBatteryUIAppWIFIEnergyKey";
    v4 = [&unk_28714C0B0 objectAtIndexedSubscript:15];
    v25[9] = v4;
    v26[9] = @"PLBatteryUIAppAUDIOEnergyKey";
    v5 = [&unk_28714C0C8 objectAtIndexedSubscript:37];
    v25[10] = v5;
    v26[10] = @"PLBatteryUIAppBBEnergyKey";
    v6 = [&unk_28714C0E0 objectAtIndexedSubscript:48];
    v25[11] = v6;
    v26[11] = @"BLMEnergyGPS";
    v7 = [&unk_28714C0F8 objectAtIndexedSubscript:12];
    v25[12] = v7;
    v26[12] = @"PLBatteryUIAppWifiLocationEnergyKey";
    v8 = [&unk_28714C110 objectAtIndexedSubscript:13];
    v25[13] = v8;
    v26[13] = @"PLBatteryUIAppWifiPipelineEnergyKey";
    v9 = [&unk_28714C128 objectAtIndexedSubscript:50];
    v25[14] = v9;
    v26[14] = @"PLBatteryUIAppBluetoothEnergyKey";
    v10 = [&unk_28714C140 objectAtIndexedSubscript:20];
    v25[15] = v10;
    v26[15] = @"PLBatteryUIAppAccessoryEnergyKey";
    v11 = [&unk_28714C158 objectAtIndexedSubscript:16];
    v25[16] = v11;
    v26[16] = @"PLBatteryUIAppNfcEnergyKey";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:17];
    v13 = self->_rootNodeNameToRootNodeEnergyKey;
    self->_rootNodeNameToRootNodeEnergyKey = v12;

    rootNodeNameToRootNodeEnergyKey = self->_rootNodeNameToRootNodeEnergyKey;
  }

  v14 = *MEMORY[0x277D85DE8];

  return rootNodeNameToRootNodeEnergyKey;
}

- (NSDictionary)givenNameToMappedName
{
  v12[73] = *MEMORY[0x277D85DE8];
  givenNameToMappedName = self->_givenNameToMappedName;
  if (!givenNameToMappedName)
  {
    v11[0] = @"IMRemoteURLConn";
    v11[1] = @"IMRemoteURLConne";
    v12[0] = @"com.apple.MobileSMS";
    v12[1] = @"com.apple.MobileSMS";
    v11[2] = @"com.apple.mobilesms.notification";
    v11[3] = @"mstreamd";
    v12[2] = @"com.apple.MobileSMS";
    v12[3] = @"com.apple.mobileslideshow";
    v11[4] = @"mediastream.mstreamd";
    v11[5] = @"assetsd";
    v12[4] = @"com.apple.mobileslideshow";
    v12[5] = @"com.apple.mobileslideshow";
    v11[6] = @"cloudphotod";
    v11[7] = @"com.apple.mobileslideshow.Discretionary";
    v12[6] = @"com.apple.mobileslideshow";
    v12[7] = @"com.apple.mobileslideshow";
    v11[8] = @"com.apple.icloud-container.com.apple.photos.cloud";
    v11[9] = @"com.apple.photoanalysisd";
    v12[8] = @"com.apple.mobileslideshow";
    v12[9] = @"com.apple.mobileslideshow";
    v11[10] = @"com.apple.photoanalysisd.backgroundanalysis";
    v11[11] = @"com.apple.mediaanalysisd";
    v12[10] = @"com.apple.mobileslideshow";
    v12[11] = @"com.apple.mobileslideshow";
    v11[12] = @"com.apple.mediaanalysisd.fullanalysis";
    v11[13] = @"com.apple.photos.cloud";
    v12[12] = @"com.apple.mobileslideshow";
    v12[13] = @"com.apple.mobileslideshow";
    v11[14] = @"WirelessRadioManager";
    v11[15] = @"WirelessRadioManagerd";
    v12[14] = @"com.apple.mobilephone";
    v12[15] = @"com.apple.mobilephone";
    v11[16] = @"WirelessRadioMa";
    v11[17] = @"vmd";
    v12[16] = @"com.apple.mobilephone";
    v12[17] = @"com.apple.mobilephone";
    v11[18] = @"ipTelephony";
    v11[19] = @"com.apple.MailCompositionService";
    v12[18] = @"com.apple.mobilephone";
    v12[19] = @"com.apple.mobilemail";
    v11[20] = @"MailCompositionService";
    v11[21] = @"suggestd";
    v12[20] = @"com.apple.mobilemail";
    v12[21] = @"com.apple.mobilemail";
    v11[22] = @"email.maild";
    v11[23] = @"com.apple.email.maild";
    v12[22] = @"com.apple.mobilemail";
    v12[23] = @"com.apple.mobilemail";
    v11[24] = @"com.apple.springboard.lockscreen.navigation";
    v11[25] = @"com.apple.Siri";
    v12[24] = @"com.apple.Maps";
    v12[25] = @"Siri";
    v11[26] = *MEMORY[0x277D0ABB8];
    v11[27] = @"assistantd";
    v12[26] = @"Siri";
    v12[27] = @"Siri";
    v11[28] = @"com.apple.WebKit.Networking";
    v11[29] = @"com.apple.WebKit.WebContent";
    v12[28] = @"com.apple.mobilesafari";
    v12[29] = @"com.apple.mobilesafari";
    v11[30] = @"com.apple.WebKit";
    v11[31] = @"com.apple.WebKi";
    v12[30] = @"com.apple.mobilesafari";
    v12[31] = @"com.apple.mobilesafari";
    v11[32] = @"com.apple.SafariViewService";
    v11[33] = @"safarifetcherd";
    v12[32] = @"com.apple.mobilesafari";
    v12[33] = @"com.apple.mobilesafari";
    v11[34] = @"com.apple.WebKit.WebContent.CaptivePortal";
    v11[35] = @"com.apple.WebKit.WebContent.Development";
    v12[34] = @"com.apple.mobilesafari";
    v12[35] = @"com.apple.mobilesafari";
    v11[36] = @"com.apple.WebKit.GPU";
    v11[37] = @"com.apple.WebKit.GPU.Development";
    v12[36] = @"com.apple.mobilesafari";
    v12[37] = @"com.apple.mobilesafari";
    v11[38] = @"com.apple.PassKitCore";
    v11[39] = @"passd";
    v12[38] = @"com.apple.Passbook";
    v12[39] = @"com.apple.Passbook";
    v11[40] = @"PassbookUIService";
    v11[41] = @"com.apple.PassbookUIService";
    v12[40] = @"com.apple.Passbook";
    v12[41] = @"com.apple.Passbook";
    v11[42] = @"com.apple.calendar";
    v11[43] = @"calaccessd";
    v12[42] = @"com.apple.mobilecal";
    v12[43] = @"com.apple.mobilecal";
    v4 = *MEMORY[0x277D66F48];
    v11[44] = *MEMORY[0x277D66F20];
    v11[45] = v4;
    v12[44] = @"HLS";
    v12[45] = @"HLS";
    v5 = *MEMORY[0x277D66F58];
    v11[46] = *MEMORY[0x277D66F10];
    v11[47] = v5;
    v12[46] = @"HLS";
    v12[47] = @"HLS";
    v6 = *MEMORY[0x277D0AB90];
    v11[48] = *MEMORY[0x277D0AB98];
    v11[49] = v6;
    v12[48] = @"HLS";
    v12[49] = @"HLS";
    v11[50] = *MEMORY[0x277D0ABB0];
    v11[51] = @"LockScreen";
    v12[50] = @"HLS";
    v12[51] = @"HLS";
    v11[52] = @"com.apple.MobileBackup.framework";
    v11[53] = @"backupd";
    v12[52] = @"Backup";
    v12[53] = @"Backup";
    v11[54] = @"com.apple.Restore";
    v11[55] = @"com.apple.atc";
    v12[54] = @"com.apple.AppStore";
    v12[55] = @"com.apple.AppStore";
    v11[56] = @"installd";
    v11[57] = @"com.apple.StreamingUnzipService";
    v12[56] = @"com.apple.AppStore";
    v12[57] = @"com.apple.AppStore";
    v11[58] = @"containermanagerd";
    v11[59] = @"appstored";
    v12[58] = @"com.apple.AppStore";
    v12[59] = @"com.apple.AppStore";
    v11[60] = @"OOS";
    v11[61] = @"healthd";
    v12[60] = @"PoorCellCondition";
    v12[61] = @"com.apple.Health";
    v11[62] = @"com.apple.healthappd";
    v11[63] = @"misd";
    v12[62] = @"com.apple.Health";
    v12[63] = @"Hotspot";
    v11[64] = @"RadarComposeUIService";
    v12[64] = @"com.apple.ist.radar";
    v11[65] = @"remindd";
    v12[65] = @"com.apple.reminders";
    v11[66] = @"homed";
    v12[66] = @"HomeKit";
    v11[67] = @"com.apple.private.alloy.willow";
    v12[67] = @"HomeKit";
    v11[68] = @"atc";
    v12[68] = @"com.apple.Music";
    v11[69] = @"siriactionsd";
    v12[69] = @"com.apple.shortcuts";
    v11[70] = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
    v12[70] = @"com.apple.shortcuts";
    v11[71] = @"weatherd";
    v12[71] = @"com.apple.weather";
    v11[72] = @"synapse.contentlinkingd";
    v12[72] = @"com.apple.mobilenotes";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:73];
    v8 = self->_givenNameToMappedName;
    self->_givenNameToMappedName = v7;

    givenNameToMappedName = self->_givenNameToMappedName;
  }

  v9 = *MEMORY[0x277D85DE8];

  return givenNameToMappedName;
}

- (BOOL)inDemoMode
{
  if (inDemoMode_defaultOnce != -1)
  {
    [PLBatteryBreakdownService inDemoMode];
  }

  return inDemoMode_demoMode;
}

void __39__PLBatteryBreakdownService_inDemoMode__block_invoke()
{
  v0 = [MEMORY[0x277D3F180] objectForKey:@"BUI_DEMO_MODE" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  inDemoMode_demoMode = v0 != 0;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1080(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1079 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1086(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1085 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1092(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1091 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1098(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1097 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1104(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1103 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1110(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1109 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1116(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1115 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1119(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1118 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1125(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1124 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1134(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1133 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1146(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1145 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1174 = result;
  return result;
}

uint64_t __139__PLBatteryBreakdownService_batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff___block_invoke_1186(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  batteryBreakdownWithTimeRange_withDataRange_withEntryTimeInterval_withQueryType_withTotalSumEnergyRatioCutOff__classDebugEnabled_1185 = result;
  return result;
}

- (id)nonNullValue:(id)value withKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [valueCopy objectForKeyedSubscript:keyCopy];

  if (v7)
  {
    v8 = [valueCopy objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = &stru_287103958;
  }

  return v8;
}

- (id)suggestionsWithEnergyEntries:(id)entries
{
  v58[2] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_opt_new();
  v52 = 0.0;
  v7 = 0x277CBE000;
  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoLockWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v52])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (suggestionsWithEnergyEntries__defaultOnce != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce, block);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autolock"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:934];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v57[0] = @"PLBatteryUISuggestionTypeKey";
    v57[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v58[0] = &unk_287145700;
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
    v58[1] = v15;
    v16 = [*(v7 + 2752) dictionaryWithObjects:v58 forKeys:v57 count:2];
    [array addObject:v16];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoLock" forKeyedSubscript:@"type"];
    v49[5] = MEMORY[0x277D85DD0];
    v49[6] = 3221225472;
    v49[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1222;
    v49[8] = &unk_279A5BF38;
    v50 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestAutoBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v52])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2;
      v49[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v49[4] = v17;
      if (suggestionsWithEnergyEntries__defaultOnce_1224 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1224, v49);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1225 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting autobrightness"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent2 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent2 fromFunction:v22 fromLineNumber:947];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v55[0] = @"PLBatteryUISuggestionTypeKey";
    v55[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v56[0] = &unk_2871456E8;
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
    v56[1] = v24;
    v25 = [*(v7 + 2752) dictionaryWithObjects:v56 forKeys:v55 count:2];
    [array addObject:v25];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"autoBrightness" forKeyedSubscript:@"type"];
    v47[5] = MEMORY[0x277D85DD0];
    v47[6] = 3221225472;
    v47[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1235;
    v47[8] = &unk_279A5BF38;
    v48 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldSuggestReduceBrightnessWithEnergyEntries:entriesCopy andSavedEnergyPercent:&v52])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v26 = objc_opt_class();
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238;
      v47[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v47[4] = v26;
      if (suggestionsWithEnergyEntries__defaultOnce_1236 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1236, v47);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1237 == 1)
      {
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting reduce brightness"];
        v28 = MEMORY[0x277D3F178];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent3 = [v29 lastPathComponent];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v28 logMessage:v27 fromFile:lastPathComponent3 fromFunction:v31 fromLineNumber:960];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v7 = 0x277CBE000uLL;
      }
    }

    v53[0] = @"PLBatteryUISuggestionTypeKey";
    v53[1] = @"PLBatteryUISuggestionEnergyPercentKey";
    v54[0] = &unk_287145718;
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
    v54[1] = v33;
    v34 = [*(v7 + 2752) dictionaryWithObjects:v54 forKeys:v53 count:2];
    [array addObject:v34];

    ADClientSetValueForScalarKey();
    [v6 setObject:@"suggestion" forKeyedSubscript:@"category"];
    [v6 setObject:@"reduceBrightness" forKeyedSubscript:@"type"];
    v45[5] = MEMORY[0x277D85DD0];
    v45[6] = 3221225472;
    v45[7] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_1250;
    v45[8] = &unk_279A5BF38;
    v46 = v6;
    AnalyticsSendEventLazy();
  }

  if ([(PLBatteryBreakdownService *)self shouldShowUpgradeInsightWithQueryType:0])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v35 = objc_opt_class();
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253;
      v45[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v45[4] = v35;
      if (suggestionsWithEnergyEntries__defaultOnce_1251 != -1)
      {
        dispatch_once(&suggestionsWithEnergyEntries__defaultOnce_1251, v45);
      }

      if (suggestionsWithEnergyEntries__classDebugEnabled_1252 == 1)
      {
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"suggesting high activity after upgrade"];
        v37 = MEMORY[0x277D3F178];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent4 = [v38 lastPathComponent];
        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService suggestionsWithEnergyEntries:]"];
        [v37 logMessage:v36 fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:1037];

        v41 = PLLogCommon();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    ADClientSetValueForScalarKey();
    [v6 setObject:@"insight" forKeyedSubscript:@"category"];
    [v6 setObject:@"upgradeUsage" forKeyedSubscript:@"type"];
    v44 = v6;
    AnalyticsSendEventLazy();
    [array addObject:&unk_287147E10];
  }

  v42 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1225 = result;
  return result;
}

uint64_t __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1238(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1237 = result;
  return result;
}

uint64_t __58__PLBatteryBreakdownService_suggestionsWithEnergyEntries___block_invoke_2_1253(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  suggestionsWithEnergyEntries__classDebugEnabled_1252 = result;
  return result;
}

- (BOOL)isBackgroundRefreshEnabled:(id)enabled
{
  enabledCopy = enabled;
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    bOOLValue = 1;
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
    v8 = [v7 objectForKey:enabledCopy];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  return bOOLValue;
}

- (BOOL)isBackgroundLocationUsageAlwaysEnabled:(id)enabled withLocationDict:(id)dict
{
  v4 = [dict objectForKeyedSubscript:enabled];
  v5 = [MEMORY[0x277CBFC10] entityAuthorizationForLocationDictionary:v4] == 4;

  return v5;
}

- (id)shouldSuggestBackgroundCPUWithEnergyEntries:(id)entries
{
  v45 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v5 = 160;
  if (self->_totalEnergyDay == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = [&unk_28714C170 objectAtIndexedSubscript:14];
    v9 = [&unk_28714C188 objectAtIndexedSubscript:2];
    v10 = [v7 rootNodeQualificationNameWithQualificationName:v8 withRootNodeName:v9];

    v11 = v10;
    v35 = entriesCopy;
    v36 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = entriesCopy;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [&unk_28714C1A0 objectAtIndexedSubscript:2];
          v19 = [v17 objectForKeyedSubscript:v18];
          [v19 doubleValue];
          v21 = v20;

          if (v21 != 0.0)
          {
            v22 = [v17 objectForKeyedSubscript:v11];
            [v22 doubleValue];
            v24 = v23;

            if (v24 / v21 * 100.0 > 5.0)
            {
              v25 = v24 / *(&self->super.super.super.isa + v5) * 100.0;
              if (v25 > 5.0)
              {
                v42[0] = @"PLBatteryUISuggestionEnergyKey";
                v37 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
                v42[1] = @"PLBatteryUISuggestionPercentKey";
                v43[0] = v37;
                v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
                v43[1] = v26;
                [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
                v27 = v12;
                v28 = v11;
                v29 = v5;
                v31 = v30 = self;
                v32 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                [v36 setObject:v31 forKeyedSubscript:v32];

                self = v30;
                v5 = v29;
                v11 = v28;
                v12 = v27;
              }
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v14);
    }

    if ([v36 count])
    {
      v6 = v36;
    }

    else
    {
      v6 = 0;
    }

    entriesCopy = v35;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shouldSuggestBackgroundLocationWithEnergyEntries:(id)entries
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (self->_totalEnergyDay == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    [&unk_28714C1B8 objectAtIndexedSubscript:2];
    v7 = v53 = self;
    v8 = [&unk_28714C1D0 objectAtIndexedSubscript:48];
    v56 = [v6 rootNodeQualificationNameWithQualificationName:v7 withRootNodeName:v8];

    selfCopy = self;
    v10 = objc_opt_class();
    v11 = [&unk_28714C1E8 objectAtIndexedSubscript:2];
    v12 = [&unk_28714C200 objectAtIndexedSubscript:12];
    v55 = [v10 rootNodeQualificationNameWithQualificationName:v11 withRootNodeName:v12];

    v13 = objc_opt_class();
    v14 = [&unk_28714C218 objectAtIndexedSubscript:2];
    v15 = [&unk_28714C230 objectAtIndexedSubscript:13];
    v54 = [v13 rootNodeQualificationNameWithQualificationName:v14 withRootNodeName:v15];

    v51 = entriesCopy;
    v52 = objc_opt_new();
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = entriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v58;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v58 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v57 + 1) + 8 * i);
          v22 = [&unk_28714C248 objectAtIndexedSubscript:48];
          v23 = [v21 objectForKeyedSubscript:v22];
          [v23 doubleValue];
          v25 = v24;

          v26 = [&unk_28714C260 objectAtIndexedSubscript:12];
          v27 = [v21 objectForKeyedSubscript:v26];
          [v27 doubleValue];
          v29 = v25 + v28;

          v30 = [&unk_28714C278 objectAtIndexedSubscript:13];
          v31 = [v21 objectForKeyedSubscript:v30];
          [v31 doubleValue];
          v33 = v29 + v32;

          if (v33 != 0.0)
          {
            v34 = [v21 objectForKeyedSubscript:v56];
            [v34 doubleValue];
            v36 = v35;

            v37 = [v21 objectForKeyedSubscript:v55];
            [v37 doubleValue];
            v39 = v36 + v38;

            v40 = [v21 objectForKeyedSubscript:v54];
            [v40 doubleValue];
            v42 = v39 + v41;

            v43 = v33 - v42;
            if (v33 - v42 < 0.0)
            {
              v43 = 0.0;
            }

            if (v43 / v33 * 100.0 > 33.0)
            {
              v44 = v43 / selfCopy->_totalEnergyDay * 100.0;
              if (v44 > 5.0)
              {
                v61[0] = @"PLBatteryUISuggestionEnergyKey";
                v45 = [MEMORY[0x277CCABB0] numberWithDouble:?];
                v61[1] = @"PLBatteryUISuggestionPercentKey";
                v62[0] = v45;
                v46 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
                v62[1] = v46;
                v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
                v48 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                [v52 setObject:v47 forKeyedSubscript:v48];

                selfCopy = v53;
              }
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v18);
    }

    if ([v52 count])
    {
      v5 = v52;
    }

    else
    {
      v5 = 0;
    }

    entriesCopy = v51;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)shouldSuggestAutoLockWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v39 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v7 = [mEMORY[0x277D262A0] effectiveValueForSetting:*MEMORY[0x277D25D78]];

  if ([v7 intValue] == 0x7FFFFFFF)
  {
    v8 = objc_opt_class();
    v9 = [&unk_28714C290 objectAtIndexedSubscript:9];
    v10 = [&unk_28714C2A8 objectAtIndexedSubscript:10];
    v11 = [v8 rootNodeQualificationNameWithQualificationName:v9 withRootNodeName:v10];

    v12 = objc_opt_class();
    v13 = [&unk_28714C2C0 objectAtIndexedSubscript:9];
    v14 = [&unk_28714C2D8 objectAtIndexedSubscript:56];
    v15 = [v12 rootNodeQualificationNameWithQualificationName:v13 withRootNodeName:v14];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = entriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    percentCopy = percent;
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v34 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:v11];
          [v23 doubleValue];
          v25 = v24;
          v26 = [v22 objectForKeyedSubscript:v15];
          [v26 doubleValue];
          v20 = v20 + v25 + v27;
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = 0.0;
    }

    +[PLUtilities defaultBatteryEnergyCapacity];
    *percentCopy = v20 * 100.0 / v29;
    +[PLUtilities defaultBatteryEnergyCapacity];
    v28 = v20 > v30 * 0.01;
  }

  else
  {
    v28 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)shouldSuggestAutoBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v46 = *MEMORY[0x277D85DE8];
  if (+[PLDisplayAgent shouldLogALSPowerSaved])
  {
    v6 = [MEMORY[0x277D3F180] objectForKey:@"BKEnableALS" forApplicationID:@"com.apple.backboardd" synchronize:1];
    v7 = v6;
    if (!v6 || ([v6 BOOLValue] & 1) != 0)
    {
      v8 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = [(PLOperator *)PLDisplayAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ALSPowerSaved"];
    storage = [(PLOperator *)self storage];
    v11 = [storage entriesForKey:v9];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v39 = v9;
      percentCopy = percent;
      v15 = 0;
      v16 = *v42;
      v17 = 0.0;
      do
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v41 + 1) + 8 * v18);
          if (v19)
          {
            v21 = [v19 objectForKeyedSubscript:@"Power"];
            [v21 doubleValue];
            v23 = v22;

            entryDate = [v20 entryDate];
            entryDate2 = [v19 entryDate];
            [entryDate timeIntervalSinceDate:entryDate2];
            v27 = v26;

            v17 = v17 + v23 * (v27 / 3600.0);
          }

          v15 = v20;

          ++v18;
          v19 = v15;
        }

        while (v14 != v18);
        v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v14);

      if (!v15)
      {
        v9 = v39;
        percent = percentCopy;
        goto LABEL_20;
      }

      v28 = [v15 objectForKeyedSubscript:@"Power"];
      [v28 doubleValue];
      v30 = v29;

      monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
      entryDate3 = [v15 entryDate];
      [monotonicDate timeIntervalSinceDate:entryDate3];
      v34 = v33;

      v17 = v17 + v30 * (v34 / 3600.0);
      v9 = v39;
      percent = percentCopy;
    }

    else
    {
      v17 = 0.0;
      v15 = v12;
    }

LABEL_20:
    [PLUtilities defaultBatteryEnergyCapacity:v39];
    *percent = v17 * 100.0 / v35;
    +[PLUtilities defaultBatteryEnergyCapacity];
    v8 = v17 > v36 * 0.01;

    goto LABEL_21;
  }

  v8 = 0;
LABEL_22:
  v37 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)shouldSuggestReduceBrightnessWithEnergyEntries:(id)entries andSavedEnergyPercent:(double *)percent
{
  v28 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (+[PLUtilities isALSCurveHigherThanDefault])
  {
    percentCopy = percent;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = entriesCopy;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [&unk_28714C2F0 objectAtIndexedSubscript:6];
          v14 = [v12 objectForKeyedSubscript:v13];
          [v14 doubleValue];
          v10 = v10 + v15;

          v16 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v16 doubleValue];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
    }

    +[PLUtilities defaultBatteryEnergyCapacity];
    *percentCopy = v10 * 100.0 / v18;
    +[PLUtilities defaultBatteryEnergyCapacity];
    v17 = v10 > v19 * 0.05;
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

- (double)getLastUpgradeTimestamp
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)getfirstEntryTimestampFromDb
{
  v3 = *MEMORY[0x277D3F5B8];
  v4 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v5 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F318]];
  v6 = [MEMORY[0x277D3F128] entryKeyForType:v3 andName:*MEMORY[0x277D3F2F0]];
  storage = [(PLOperator *)self storage];
  v8 = [storage entryForKey:v4 withID:1];

  storage2 = [(PLOperator *)self storage];
  v10 = [storage2 entryForKey:v5 withID:1];

  storage3 = [(PLOperator *)self storage];
  v12 = [storage3 entryForKey:v6 withID:1];

  if (v8)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v12 == 0)
  {
    v23 = 9.22337204e18;
  }

  else
  {
    v15 = [v8 objectForKeyedSubscript:@"timestamp"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v10 objectForKeyedSubscript:@"timestamp"];
    [v18 doubleValue];
    v20 = fmax(v17, v19);
    v21 = [v12 objectForKeyedSubscript:@"timestamp"];
    [v21 doubleValue];
    v23 = fmax(v20, v22);
  }

  return v23;
}

- (id)getUsageDataWithStartTime:(double)time withMidTime:(double)midTime withEndTime:(id)endTime
{
  v66 = *MEMORY[0x277D85DE8];
  endTimeCopy = endTime;
  v9 = COERCE_DOUBLE(objc_alloc_init(MEMORY[0x277CBEB38]));
  [endTimeCopy timeIntervalSince1970];
  v56 = v10;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [endTimeCopy timeIntervalSince1970];
  v14 = v13 - midTime;
  v15 = *MEMORY[0x277CBF040];
  v16 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v17 = _CFPreferencesCopyValueWithContainer();
  v18 = v17;
  if (v17)
  {
    [v17 doubleValue];
    v20 = v19;
  }

  else
  {
    v20 = 86400.0;
  }

  midTimeCopy = midTime;
  if (v14 <= v20)
  {
    [endTimeCopy timeIntervalSince1970];
    v38 = v37;
    v39 = midTime + -86400.0;
    v21 = 0.0;
    timeCopy = time;
    v41 = v39 <= time;
    v30 = 0.0;
    v27 = 0.0;
    v36 = 0.0;
    v33 = 0.0;
    if (!v41)
    {
      v42 = timeCopy;
      do
      {
        v38 = v38 + -86400.0;
        v43 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:v39 withEntryTimeInterval:v38 - v39 withQueryType:0.0, 0.0, 3600.0];
        v44 = [v43 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v44 doubleValue];
        v33 = v33 + v45;

        v46 = [v43 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v46 doubleValue];
        v36 = v36 + v47;

        v21 = v21 + v38 - v39;
        v39 = v39 + -86400.0;
      }

      while (v39 > v42);
      v27 = 0.0;
      v30 = 0.0;
    }
  }

  else
  {
    v21 = midTime - time;
    [endTimeCopy timeIntervalSince1970];
    v23 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:midTime withEntryTimeInterval:v22 - midTime withQueryType:0.0, 0.0, 3600.0];
    v24 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:time withEntryTimeInterval:midTime - time withQueryType:0.0, 0.0, 3600.0];
    v25 = [v23 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v25 doubleValue];
    v27 = v26;

    v28 = [v23 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [v24 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v31 doubleValue];
    v33 = v32;

    v34 = [v24 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v34 doubleValue];
    v36 = v35;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v59 = v27;
    v60 = 2048;
    v61 = v30;
    v62 = 2048;
    v63 = v33;
    v64 = 2048;
    v65 = v36;
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "afterUpgradeTotalEnergy: %f afterUpgradeDataTotalForeGroundTime: %f beforeUpgradeDataTotalEnergy: %f beforeUpgradeDataTotalForeGroundTime: %f", buf, 0x2Au);
  }

  v48 = v30;
  v49 = v56 - midTimeCopy;
  if (v21 == 0.0)
  {
    [v11 setObject:0 forKeyedSubscript:@"AvgPower"];
    [v11 setObject:0 forKeyedSubscript:@"AvgForegroundTime"];
  }

  else
  {
    v50 = [MEMORY[0x277CCABB0] numberWithDouble:v33 / v21];
    [v11 setObject:v50 forKeyedSubscript:@"AvgPower"];

    v51 = [MEMORY[0x277CCABB0] numberWithDouble:v36 / v21];
    [v11 setObject:v51 forKeyedSubscript:@"AvgForegroundTime"];
  }

  if (v49 == 0.0)
  {
    [v12 setObject:0 forKeyedSubscript:@"AvgPower"];
    [v12 setObject:0 forKeyedSubscript:@"AvgForegroundTime"];
  }

  else
  {
    v52 = [MEMORY[0x277CCABB0] numberWithDouble:v27 / v49];
    [v12 setObject:v52 forKeyedSubscript:@"AvgPower"];

    v53 = [MEMORY[0x277CCABB0] numberWithDouble:v48 / v49];
    [v12 setObject:v53 forKeyedSubscript:@"AvgForegroundTime"];
  }

  [*&v9 setObject:v11 forKeyedSubscript:@"beforeUpgradeData"];
  [*&v9 setObject:v12 forKeyedSubscript:@"afterUpgradeData"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v9;
    _os_log_impl(&dword_25EE51000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "-----Usage data--- %@", buf, 0xCu);
  }

  v54 = *MEMORY[0x277D85DE8];

  return *&v9;
}

- (id)getUpgradeDataWithLastUpgradeTimestamp:(double)timestamp withFirstEntryTimestampFromDB:(double)b withNow:(id)now withBeforeUpgrade:(BOOL)upgrade withRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  upgradeCopy = upgrade;
  nowCopy = now;
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!upgradeCopy)
  {
    goto LABEL_6;
  }

  [nowCopy timeIntervalSince1970];
  v16 = v15 - timestamp;
  v17 = *MEMORY[0x277CBF040];
  v18 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v19 = _CFPreferencesCopyValueWithContainer();
  v20 = v19;
  if (v19)
  {
    [v19 doubleValue];
    v22 = v21;
  }

  else
  {
    v22 = 86400.0;
  }

  if (v16 <= v22)
  {
    [nowCopy timeIntervalSince1970];
    v34 = timestamp + -86400.0;
    v29 = 0.0;
    v26 = 0.0;
    if (v34 > b)
    {
      v35 = v33;
      do
      {
        v35 = v35 + -86400.0;
        v36 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:v34 withEntryTimeInterval:v35 - v34 withQueryType:0.0, 0.0, 3600.0];
        v37 = [v36 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v37 doubleValue];
        v39 = v26 + v38;

        v40 = [v36 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v40 doubleValue];
        v26 = v39 + v41;

        v34 = v34 + -86400.0;
      }

      while (v34 > b);
    }
  }

  else
  {
LABEL_6:
    v23 = [(PLBatteryBreakdownService *)self batteryBreakdownWithTimeRange:0 withDataRange:location withEntryTimeInterval:length withQueryType:0.0, 0.0, 3600.0];
    v24 = [v23 objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [v23 objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v27 doubleValue];
    v29 = v28;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  [v14 setObject:v30 forKey:@"TotalEnergy"];

  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
  [v14 setObject:v31 forKey:@"TotalForeGroundTime"];

  return v14;
}

- (id)energyEntriesWithRange:(_PLTimeIntervalRange)range withEntryTimeInterval:(double)interval withQueryType:(int)type
{
  length = range.length;
  location = range.location;
  v196 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    v192[0] = MEMORY[0x277D85DD0];
    v192[1] = 3221225472;
    v192[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke;
    v192[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v192[4] = v9;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce, v192);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"entryTimeInterval=%f", *&interval];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v11 logMessage:v10 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:1476];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v16 = *MEMORY[0x277D3F5B8];
  v17 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  v18 = [MEMORY[0x277D3F128] entryKeyForType:v16 andName:*MEMORY[0x277D3F2F0]];
  v19 = MEMORY[0x277CCACA8];
  v20 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  whereValidName = [objc_opt_class() whereValidName];
  v23 = [v19 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v20, entryKey, whereValidName];

  v24 = location + length;
  v163 = v23;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&location, *&v24, *&interval, v23];
  v178 = v17;
  v165 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v17, v25];;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v26 = objc_opt_class();
    v191[0] = MEMORY[0x277D85DD0];
    v191[1] = 3221225472;
    v191[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528;
    v191[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v191[4] = v26;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1526 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1526, v191);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1527 == 1)
    {
      v165 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyQuery=%@", v165];
      v28 = MEMORY[0x277D3F178];
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v28 logMessage:v165 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:1489];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  storage = [(PLOperator *)self storage];
  v164 = [storage entriesForKey:v178 withQuery:v165];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v34 = objc_opt_class();
    v190[0] = MEMORY[0x277D85DD0];
    v190[1] = 3221225472;
    v190[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534;
    v190[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v190[4] = v34;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1532 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1532, v190);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1533 == 1)
    {
      v164 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateRootNodeEnergyEntries=%@", v164];
      v36 = MEMORY[0x277D3F178];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent3 = [v37 lastPathComponent];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v36 logMessage:v164 fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:1493];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v163 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@)", *&location, *&v24, *&interval, v163];

  v158 = v163;
  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (%@)", v18, v163];;
  v162 = v42;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v43 = objc_opt_class();
    v189[0] = MEMORY[0x277D85DD0];
    v189[1] = 3221225472;
    v189[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540;
    v189[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v189[4] = v43;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1538 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1538, v189);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1539 == 1)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyQuery=%@", v42];
      v45 = MEMORY[0x277D3F178];
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent4 = [v46 lastPathComponent];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v45 logMessage:v44 fromFile:lastPathComponent4 fromFunction:v48 fromLineNumber:1498];

      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v42 = v162;
    }
  }

  storage2 = [(PLOperator *)self storage];
  v51 = [storage2 entriesForKey:v18 withQuery:v42];

  v161 = v51;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v52 = objc_opt_class();
    v188[0] = MEMORY[0x277D85DD0];
    v188[1] = 3221225472;
    v188[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546;
    v188[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v188[4] = v52;
    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1544 != -1)
    {
      dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1544, v188);
    }

    if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1545 == 1)
    {
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateQualificationEnergyEntries=%@", v51];
      v54 = MEMORY[0x277D3F178];
      v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent5 = [v55 lastPathComponent];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
      [v54 logMessage:v53 fromFile:lastPathComponent5 fromFunction:v57 fromLineNumber:1502];

      v58 = PLLogCommon();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v51 = v161;
    }
  }

  v159 = v18;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = [v164 arrayByAddingObjectsFromArray:v51];
  v182 = [obj countByEnumeratingWithState:&v184 objects:v195 count:16];
  if (v182)
  {
    v180 = *MEMORY[0x277D3F328];
    v181 = *v185;
    v175 = *MEMORY[0x277D3F310];
    v168 = *MEMORY[0x277D3F2F8];
    v174 = *MEMORY[0x277D3F330];
    v171 = *MEMORY[0x277D3F320];
    v172 = *MEMORY[0x277D3F308];
    selfCopy = self;
    do
    {
      v59 = 0;
      v60 = 0x277D3F000uLL;
      do
      {
        if (*v185 != v181)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v184 + 1) + 8 * v59);
        if ([*(v60 + 384) debugEnabled])
        {
          v62 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v62;
          if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1550 != -1)
          {
            dispatch_once(&energyEntriesWithRange_withEntryTimeInterval_withQueryType__defaultOnce_1550, block);
          }

          if (energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1551 == 1)
          {
            v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"aggregateEnergyEntry=%@", v61];
            v64 = MEMORY[0x277D3F178];
            v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent6 = [v65 lastPathComponent];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService energyEntriesWithRange:withEntryTimeInterval:withQueryType:]"];
            [v64 logMessage:v63 fromFile:lastPathComponent6 fromFunction:v67 fromLineNumber:1507];

            v68 = PLLogCommon();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v194 = v63;
              _os_log_debug_impl(&dword_25EE51000, v68, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v69 = [v61 objectForKeyedSubscript:v180];
        if (v69)
        {
          v70 = [dictionary objectForKeyedSubscript:v69];
          if (v70)
          {
            goto LABEL_52;
          }

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKeyedSubscript:v69];

          v70 = [dictionary objectForKeyedSubscript:v69];
          nodeIDToNodeName = [(PLBatteryBreakdownService *)self nodeIDToNodeName];
          v73 = [nodeIDToNodeName objectForKeyedSubscript:v69];

          if (!v73)
          {
            goto LABEL_90;
          }

          [v70 setObject:v73 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

LABEL_52:
          entryKey2 = [v61 entryKey];
          v75 = [entryKey2 isEqualToString:v178];

          if (v75)
          {
            v76 = [v61 objectForKeyedSubscript:v174];
            intValue = [v76 intValue];
            if ([&unk_28714C308 count] > intValue)
            {
              v78 = [&unk_28714C338 objectAtIndexedSubscript:{objc_msgSend(v76, "intValue")}];
              v79 = [v61 objectForKeyedSubscript:v171];
              if ([v76 intValue] == 58)
              {
                v80 = PLLogCommon();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                {
                  intValue2 = [v76 intValue];
                  [v79 doubleValue];
                  *buf = 67109376;
                  *v194 = intValue2;
                  *&v194[4] = 2048;
                  *&v194[6] = v147;
                  _os_log_debug_impl(&dword_25EE51000, v80, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v81 = MEMORY[0x277CCABB0];
                [v79 doubleValue];
                v83 = [v81 numberWithDouble:{fmin(v82, 9000.0)}];

                v84 = PLLogCommon();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_93;
                }

                goto LABEL_78;
              }

              if ([v76 intValue] == 59)
              {
                v119 = PLLogCommon();
                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
                {
                  intValue3 = [v76 intValue];
                  [v79 doubleValue];
                  *buf = 67109376;
                  *v194 = intValue3;
                  *&v194[4] = 2048;
                  *&v194[6] = v151;
                  _os_log_debug_impl(&dword_25EE51000, v119, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

                v120 = MEMORY[0x277CCABB0];
                [v79 doubleValue];
                v83 = [v120 numberWithDouble:{fmin(v121, 5500.0)}];

                v84 = PLLogCommon();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                {
LABEL_93:
                  intValue4 = [v76 intValue];
                  [v83 doubleValue];
                  *buf = 67109376;
                  *v194 = intValue4;
                  *&v194[4] = 2048;
                  *&v194[6] = v153;
                  _os_log_debug_impl(&dword_25EE51000, v84, OS_LOG_TYPE_DEBUG, "after clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                }

LABEL_78:
                selfCopy3 = self;

                v79 = v83;
              }

              else
              {
                selfCopy3 = self;
              }

              v123 = MEMORY[0x277CCABB0];
              v124 = [v70 objectForKeyedSubscript:v78];
              [v124 doubleValue];
              v126 = v125;
              [v79 doubleValue];
              v128 = [v123 numberWithDouble:v126 + v127 / 1000.0];
              [v70 setObject:v128 forKeyedSubscript:v78];

              v129 = MEMORY[0x277CCABB0];
              v130 = [v70 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v130 doubleValue];
              v132 = v131;
              [v79 doubleValue];
              v134 = [v129 numberWithDouble:v132 + v133 / 1000.0];
              [v70 setObject:v134 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              self = selfCopy3;
              v60 = 0x277D3F000;
              if (type == 4)
              {
                v135 = [(PLBatteryBreakdownService *)self energyMetricBucketForRootNodeID:v76];
                v136 = MEMORY[0x277CCACA8];
                v137 = [MEMORY[0x277CCABB0] numberWithShort:v135];
                v137 = [v136 stringWithFormat:@"%@", v137];

                if (v137)
                {
                  intValue5 = [v79 intValue];
                  if (intValue5 >= 1)
                  {
                    v140 = intValue5;
                    v141 = MEMORY[0x277CCABB0];
                    v142 = [v70 objectForKeyedSubscript:v137];
                    v143 = [v142 intValue] + v140;
                    v144 = v141;
                    self = selfCopy;
                    v145 = [v144 numberWithInt:v143];
                    [v70 setObject:v145 forKeyedSubscript:v137];

                    v60 = 0x277D3F000;
                  }
                }
              }

LABEL_89:
LABEL_90:

              goto LABEL_91;
            }

            v78 = PLLogCommon();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue6 = [v76 intValue];
            v115 = [&unk_28714C320 count];
            *buf = 67109376;
            *v194 = intValue6;
            *&v194[4] = 2048;
            *&v194[6] = v115;
            v116 = v78;
          }

          else
          {
            v76 = [v61 objectForKeyedSubscript:v175];
            intValue7 = [v76 intValue];
            if ([&unk_28714C350 count] > intValue7)
            {
              v78 = [&unk_28714C380 objectAtIndexedSubscript:{objc_msgSend(v76, "intValue")}];
              v86 = [v61 objectForKeyedSubscript:v172];
              intValue8 = [v86 intValue];
              v176 = v86;
              if ([&unk_28714C398 count] <= intValue8)
              {
                v88 = PLLogCommon();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                {
                  intValue9 = [v176 intValue];
                  v149 = [&unk_28714C3B0 count];
                  *buf = 67109376;
                  *v194 = intValue9;
                  *&v194[4] = 2048;
                  *&v194[6] = v149;
                  _os_log_error_impl(&dword_25EE51000, v88, OS_LOG_TYPE_ERROR, "qualificationID=%d out of bounds=%lu", buf, 0x12u);
                }
              }

              else
              {
                v88 = [&unk_28714C3C8 objectAtIndexedSubscript:{objc_msgSend(v86, "intValue")}];
                v89 = [objc_opt_class() rootNodeQualificationNameWithQualificationName:v88 withRootNodeName:v78];
                v90 = [v61 objectForKeyedSubscript:v168];
                v91 = MEMORY[0x277CCABB0];
                v92 = [v70 objectForKeyedSubscript:v89];
                [v92 doubleValue];
                v94 = v93;
                [v90 doubleValue];
                v96 = [v91 numberWithDouble:v94 + v95 / 1000.0];
                v170 = v89;
                v97 = v89;
                v98 = v90;
                [v70 setObject:v96 forKeyedSubscript:v97];

                v99 = MEMORY[0x277CCABB0];
                v100 = [v70 objectForKeyedSubscript:v88];
                [v100 doubleValue];
                v102 = v101;
                [v90 doubleValue];
                v104 = [v99 numberWithDouble:v102 + v103 / 1000.0];
                [v70 setObject:v104 forKeyedSubscript:v88];

                if (type == 4 && [v176 intValue] == 2)
                {
                  v105 = [(PLBatteryBreakdownService *)selfCopy energyMetricBucketForRootNodeID:v76];
                  v106 = MEMORY[0x277CCACA8];
                  v107 = [MEMORY[0x277CCABB0] numberWithShort:v105];
                  v107 = [v106 stringWithFormat:@"%@", v107];

                  if (v107)
                  {
                    v108 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v107];
                    intValue10 = [v98 intValue];
                    if (intValue10 >= 1)
                    {
                      v166 = MEMORY[0x277CCABB0];
                      v111 = intValue10;
                      [v70 objectForKeyedSubscript:v108];
                      v112 = v167 = v108;
                      v113 = [v166 numberWithInt:{objc_msgSend(v112, "intValue") + v111}];
                      [v70 setObject:v113 forKeyedSubscript:v167];

                      v108 = v167;
                    }
                  }
                }

                self = selfCopy;
                v60 = 0x277D3F000;
              }

              goto LABEL_89;
            }

            v78 = PLLogCommon();
            if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_89;
            }

            intValue11 = [v76 intValue];
            v118 = [&unk_28714C368 count];
            *buf = 67109376;
            *v194 = intValue11;
            *&v194[4] = 2048;
            *&v194[6] = v118;
            v116 = v78;
          }

          _os_log_error_impl(&dword_25EE51000, v116, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
          goto LABEL_89;
        }

LABEL_91:

        ++v59;
      }

      while (v182 != v59);
      v154 = [obj countByEnumeratingWithState:&v184 objects:v195 count:16];
      v182 = v154;
    }

    while (v154);
  }

  allValues = [dictionary allValues];

  objc_autoreleasePoolPop(context);
  v156 = *MEMORY[0x277D85DE8];

  return allValues;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled = result;
  return result;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1528(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1527 = result;
  return result;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1534(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1533 = result;
  return result;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1540(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1539 = result;
  return result;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1546(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1545 = result;
  return result;
}

uint64_t __88__PLBatteryBreakdownService_energyEntriesWithRange_withEntryTimeInterval_withQueryType___block_invoke_1552(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  energyEntriesWithRange_withEntryTimeInterval_withQueryType__classDebugEnabled_1551 = result;
  return result;
}

- (signed)energyMetricBucketForRootNodeID:(id)d
{
  v3 = [d intValue] - 2;
  if (v3 > 0x3C)
  {
    return 0;
  }

  else
  {
    return word_25F023B40[v3];
  }
}

- (id)populateEnergyBucketKeysWithEntries:(id)entries
{
  v52 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = entries;
  v33 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v33)
  {
    v32 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        v5 = 1;
        do
        {
          v6 = MEMORY[0x277CCACA8];
          v7 = [MEMORY[0x277CCABB0] numberWithShort:v5];
          v8 = [v6 stringWithFormat:@"%@", v7];

          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v8];
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v8];
          v11 = [v4 objectForKeyedSubscript:v8];
          intValue = [v11 intValue];

          v13 = [v4 objectForKeyedSubscript:v9];
          intValue2 = [v13 intValue];

          if ([(PLBatteryBreakdownService *)self isForegroundOnlyBucket:v5])
          {
            intValue2 = intValue;
            if (intValue >= 1)
            {
              v15 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
              [v4 setObject:v15 forKeyedSubscript:v9];

              intValue2 = intValue;
            }
          }

          v16 = (intValue - intValue2);
          if (v16 >= 1)
          {
            v17 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v17 doubleValue];
            v19 = v18;

            v20 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v20 doubleValue];
            v22 = v21;

            v23 = v19 + v22;
            if (v19 + v22 <= 0.0 || ((v23 = v19 / v23 * intValue, v24 = v23, v16 >= v23) ? (v16 = v24) : (v16 = v16), v24 >= 1))
            {
              v25 = [MEMORY[0x277CCABB0] numberWithInt:{v16, v23}];
              [v4 setObject:v25 forKeyedSubscript:v10];

              intValue2 = intValue - v16;
              v26 = [MEMORY[0x277CCABB0] numberWithInt:(intValue - v16)];
              [v4 setObject:v26 forKeyedSubscript:v9];
            }
          }

          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v35 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138413314;
            v42 = v35;
            v43 = 2112;
            v44 = v8;
            v45 = 1024;
            v46 = intValue;
            v47 = 1024;
            v48 = intValue2;
            v49 = 1024;
            v50 = v16;
            _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@: %@ total:%d fg:%d bg:%d", buf, 0x28u);
          }

          v28 = v5++;
        }

        while (v28 < 0x11);
        v3 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v33);
  }

  v29 = *MEMORY[0x277D85DE8];

  return obj;
}

- (id)populateRootNodeEnergyKeysWithEnergyEntries:(id)entries
{
  v62 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = entries;
  v41 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v41)
  {
    v38 = v53;
    v40 = *v55;
    v4 = 0x277D3F000uLL;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v54 + 1) + 8 * v5);
        if ([*(v4 + 384) debugEnabled])
        {
          v7 = objc_opt_class();
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v53[0] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke;
          v53[1] = &__block_descriptor_40_e5_v8__0lu32l8;
          v53[2] = v7;
          if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce, v52);
          }

          if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled == 1)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v6, v38];
            v9 = MEMORY[0x277D3F178];
            v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v10 lastPathComponent];
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
            [v9 logMessage:v8 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:1741];

            v13 = PLLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v60 = v8;
              _os_log_debug_impl(&dword_25EE51000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        rootNodeNameToRootNodeEnergyKey = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
        v14 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v14)
        {
          v15 = v14;
          v45 = *v49;
          do
          {
            v16 = 0;
            do
            {
              if (*v49 != v45)
              {
                objc_enumerationMutation(rootNodeNameToRootNodeEnergyKey);
              }

              v17 = *(*(&v48 + 1) + 8 * v16);
              if ([*(v4 + 384) debugEnabled])
              {
                v18 = objc_opt_class();
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603;
                block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                block[4] = v18;
                if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1601 != -1)
                {
                  dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1601, block);
                }

                if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1602 == 1)
                {
                  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeName=%@", v17];
                  v20 = MEMORY[0x277D3F178];
                  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent2 = [v21 lastPathComponent];
                  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:1743];

                  v24 = PLLogCommon();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v60 = v19;
                    _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000uLL;
                }
              }

              rootNodeNameToRootNodeEnergyKey2 = [(PLBatteryBreakdownService *)self rootNodeNameToRootNodeEnergyKey];
              v26 = [rootNodeNameToRootNodeEnergyKey2 objectForKeyedSubscript:v17];

              if ([*(v4 + 384) debugEnabled])
              {
                v27 = objc_opt_class();
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609;
                v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                v46[4] = v27;
                if (populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1607 != -1)
                {
                  dispatch_once(&populateRootNodeEnergyKeysWithEnergyEntries__defaultOnce_1607, v46);
                }

                if (populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1608 == 1)
                {
                  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"rootNodeEnergyKey=%@", v26];
                  v29 = MEMORY[0x277D3F178];
                  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                  lastPathComponent3 = [v30 lastPathComponent];
                  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService populateRootNodeEnergyKeysWithEnergyEntries:]"];
                  [v29 logMessage:v28 fromFile:lastPathComponent3 fromFunction:v32 fromLineNumber:1746];

                  v33 = PLLogCommon();
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v60 = v28;
                    _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  self = selfCopy;
                  v4 = 0x277D3F000;
                }
              }

              v34 = [v6 objectForKeyedSubscript:v17];
              if (v34)
              {
                v35 = v34;
              }

              else
              {
                v35 = &unk_2871456E8;
              }

              [v6 setObject:v35 forKeyedSubscript:v26];

              ++v16;
            }

            while (v15 != v16);
            v15 = [rootNodeNameToRootNodeEnergyKey countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v15);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v41);
  }

  v36 = *MEMORY[0x277D85DE8];

  return obj;
}

uint64_t __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1603(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1602 = result;
  return result;
}

uint64_t __73__PLBatteryBreakdownService_populateRootNodeEnergyKeysWithEnergyEntries___block_invoke_1609(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  populateRootNodeEnergyKeysWithEnergyEntries__classDebugEnabled_1608 = result;
  return result;
}

- (id)populateBLDKeysWithEnergyEntries:(id)entries
{
  v77 = *MEMORY[0x277D85DE8];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = entries;
  v63 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v63)
  {
    v62 = *v73;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v73 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v72 + 1) + 8 * i);
        v5 = [&unk_28714C3E0 objectAtIndexedSubscript:15];
        v6 = [v4 objectForKeyedSubscript:v5];

        v71 = v6;
        if (v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = &unk_2871456E8;
        }

        [v4 setObject:v7 forKeyedSubscript:@"BLDEnergyAudio"];
        v8 = [&unk_28714C3F8 objectAtIndexedSubscript:50];
        v9 = [v4 objectForKeyedSubscript:v8];

        v70 = v9;
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = &unk_2871456E8;
        }

        [v4 setObject:v10 forKeyedSubscript:@"BLDEnergyBluetooth"];
        v11 = [&unk_28714C410 objectAtIndexedSubscript:37];
        v12 = [v4 objectForKeyedSubscript:v11];

        v69 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &unk_2871456E8;
        }

        [v4 setObject:v13 forKeyedSubscript:@"BLDEnergyCellData"];
        v14 = [&unk_28714C428 objectAtIndexedSubscript:10];
        v15 = [v4 objectForKeyedSubscript:v14];

        v68 = v15;
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &unk_2871456E8;
        }

        [v4 setObject:v16 forKeyedSubscript:@"BLDEnergyDisplay"];
        v17 = [&unk_28714C440 objectAtIndexedSubscript:38];
        v18 = [v4 objectForKeyedSubscript:v17];

        v67 = v18;
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = &unk_2871456E8;
        }

        [v4 setObject:v19 forKeyedSubscript:@"BLDEnergyVoice"];
        v20 = [&unk_28714C458 objectAtIndexedSubscript:11];
        v21 = [v4 objectForKeyedSubscript:v20];

        v66 = v21;
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = &unk_2871456E8;
        }

        [v4 setObject:v22 forKeyedSubscript:@"BLDEnergyWiFi"];
        v23 = [&unk_28714C470 objectAtIndexedSubscript:1];
        v24 = [v4 objectForKeyedSubscript:v23];

        v65 = v24;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = &unk_2871456E8;
        }

        [v4 setObject:v25 forKeyedSubscript:@"BBCondition"];
        v26 = objc_opt_class();
        v27 = [&unk_28714C488 objectAtIndexedSubscript:2];
        v28 = [&unk_28714C4A0 objectAtIndexedSubscript:2];
        v64 = [v26 rootNodeQualificationNameWithQualificationName:v27 withRootNodeName:v28];

        v29 = [v4 objectForKeyedSubscript:v64];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &unk_2871456E8;
        }

        [v4 setObject:v31 forKeyedSubscript:@"BLDEnergyFGCPU"];
        v32 = [&unk_28714C4B8 objectAtIndexedSubscript:2];
        v33 = [v4 objectForKeyedSubscript:v32];

        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = &unk_2871456E8;
        }

        v35 = v34;

        v36 = MEMORY[0x277CCABB0];
        [v35 doubleValue];
        v38 = v37;
        [v30 doubleValue];
        v40 = v38 - v39;
        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        v41 = [v36 numberWithDouble:v40];
        [v4 setObject:v41 forKeyedSubscript:@"BLDEnergyBGCPU"];
        v42 = objc_opt_class();
        v43 = [&unk_28714C4D0 objectAtIndexedSubscript:2];
        v44 = [&unk_28714C4E8 objectAtIndexedSubscript:48];
        v45 = [v42 rootNodeQualificationNameWithQualificationName:v43 withRootNodeName:v44];

        v46 = [v4 objectForKeyedSubscript:v45];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = &unk_2871456E8;
        }

        [v4 setObject:v48 forKeyedSubscript:@"BLDEnergyFGLocation"];
        v49 = [&unk_28714C500 objectAtIndexedSubscript:48];
        v50 = [v4 objectForKeyedSubscript:v49];

        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = &unk_2871456E8;
        }

        v52 = v51;

        v53 = MEMORY[0x277CCABB0];
        [v52 doubleValue];
        v55 = v54;
        [v47 doubleValue];
        v57 = v55 - v56;
        if (v57 < 0.0)
        {
          v57 = 0.0;
        }

        v58 = [v53 numberWithDouble:v57];
        [v4 setObject:v58 forKeyedSubscript:@"BLDEnergyBGLocation"];
      }

      v63 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v63);
  }

  v59 = *MEMORY[0x277D85DE8];

  return obj;
}

- (id)addForegroundAndBackgroundDurations:(id)durations withRange:(_PLTimeIntervalRange)range withQueryType:(int)type
{
  length = range.length;
  location = range.location;
  v169 = *MEMORY[0x277D85DE8];
  durationsCopy = durations;
  v10 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  typeCopy = type;
  v124 = durationsCopy;
  if (type == 4)
  {
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    dictionary7 = [MEMORY[0x277CBEB38] dictionary];
    dictionary8 = [MEMORY[0x277CBEB38] dictionary];
    dictionary9 = [MEMORY[0x277CBEB38] dictionary];
    dictionary10 = [MEMORY[0x277CBEB38] dictionary];
  }

  else
  {
    dictionary10 = 0;
    dictionary9 = 0;
    dictionary8 = 0;
    dictionary7 = 0;
    dictionary6 = 0;
    dictionary5 = 0;
  }

  selfCopy = self;
  storage = [(PLOperator *)self storage];
  v127 = v10;
  v12 = [storage aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  array = [MEMORY[0x277CBEB18] array];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v160 objects:v168 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v161;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v161 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v160 + 1) + 8 * i);
        entryDate = [v19 entryDate];
        if (entryDate)
        {
          v21 = entryDate;
          [entryDate timeIntervalSince1970];
          v23 = v22;

          if (location <= v23 && v23 < location + length)
          {
            [array addObject:v19];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v160 objects:v168 count:16];
    }

    while (v16);
  }

  v125 = v14;

  v126 = array;
  v25 = [MEMORY[0x277D3F190] summarizeAggregateEntries:array];
  v26 = [MEMORY[0x277CBEB58] set];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v25;
  v27 = [obj countByEnumeratingWithState:&v156 objects:v167 count:16];
  if (v27)
  {
    v28 = v27;
    v130 = *v157;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v157 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v156 + 1) + 8 * j);
        v31 = [v30 objectForKeyedSubscript:@"BundleID"];
        [v26 addObject:v31];
        v32 = [v30 objectForKeyedSubscript:@"ScreenOnTime"];
        [dictionary setObject:v32 forKeyedSubscript:v31];

        v33 = [v30 objectForKeyedSubscript:@"BackgroundTime"];
        [dictionary2 setObject:v33 forKeyedSubscript:v31];

        v34 = [v30 objectForKeyedSubscript:@"ScreenOnPluggedInTime"];
        [dictionary3 setObject:v34 forKeyedSubscript:v31];

        v35 = [v30 objectForKeyedSubscript:@"BackgroundPluggedInTime"];
        [dictionary4 setObject:v35 forKeyedSubscript:v31];

        if (typeCopy == 4)
        {
          v36 = [v30 objectForKeyedSubscript:@"BackgroundLocationTime"];
          [dictionary5 setObject:v36 forKeyedSubscript:v31];

          v37 = [v30 objectForKeyedSubscript:@"BackgroundLocationPluggedInTime"];
          [dictionary6 setObject:v37 forKeyedSubscript:v31];

          v38 = [v30 objectForKeyedSubscript:@"BackgroundAudioPlayingTime"];
          [dictionary7 setObject:v38 forKeyedSubscript:v31];

          v39 = [v30 objectForKeyedSubscript:@"BackgroundAudioPlayingTimePluggedIn"];
          [dictionary8 setObject:v39 forKeyedSubscript:v31];

          v40 = [v30 objectForKeyedSubscript:@"BackgroundLocationAudioTime"];
          [dictionary9 setObject:v40 forKeyedSubscript:v31];

          v41 = [v30 objectForKeyedSubscript:@"BackgroundLocationAudioPluggedInTime"];
          [dictionary10 setObject:v41 forKeyedSubscript:v31];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v156 objects:v167 count:16];
    }

    while (v28);
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v131 = [(PLBatteryBreakdownService *)selfCopy nonAppsRuntimesWithRange:location, length];
  v42 = [v131 countByEnumeratingWithState:&v152 objects:v166 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v153;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v153 != v44)
        {
          objc_enumerationMutation(v131);
        }

        v46 = *(*(&v152 + 1) + 8 * k);
        v47 = [v46 objectForKeyedSubscript:@"BundleID"];
        [v26 addObject:v47];

        v48 = [v46 objectForKeyedSubscript:@"ScreenOnTime"];
        v49 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v48 forKeyedSubscript:v49];

        v50 = [v46 objectForKeyedSubscript:@"BackgroundTime"];
        v51 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary2 setObject:v50 forKeyedSubscript:v51];
      }

      v43 = [v131 countByEnumeratingWithState:&v152 objects:v166 count:16];
    }

    while (v43);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v132 = v124;
  v52 = [v132 countByEnumeratingWithState:&v148 objects:v165 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v149;
    do
    {
      for (m = 0; m != v53; ++m)
      {
        if (*v149 != v54)
        {
          objc_enumerationMutation(v132);
        }

        v56 = *(*(&v148 + 1) + 8 * m);
        v57 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v58 = [v26 containsObject:v57];

        if (v58)
        {
          v59 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          [v26 removeObject:v59];
        }

        v60 = [v56 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v61 = MEMORY[0x277CCABB0];
        v62 = [dictionary objectForKeyedSubscript:v60];
        [v62 doubleValue];
        v63 = [v61 numberWithDouble:?];
        [v56 setObject:v63 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v64 = MEMORY[0x277CCABB0];
        v65 = [dictionary2 objectForKeyedSubscript:v60];
        [v65 doubleValue];
        v66 = [v64 numberWithDouble:?];
        [v56 setObject:v66 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v67 = MEMORY[0x277CCABB0];
        v68 = [dictionary3 objectForKeyedSubscript:v60];
        [v68 doubleValue];
        v69 = [v67 numberWithDouble:?];
        [v56 setObject:v69 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v70 = MEMORY[0x277CCABB0];
        v71 = [dictionary4 objectForKeyedSubscript:v60];
        [v71 doubleValue];
        v72 = [v70 numberWithDouble:?];
        [v56 setObject:v72 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (typeCopy == 4)
        {
          v73 = MEMORY[0x277CCABB0];
          v74 = [dictionary5 objectForKeyedSubscript:v60];
          [v74 doubleValue];
          v75 = [v73 numberWithDouble:?];
          [v56 setObject:v75 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

          v76 = MEMORY[0x277CCABB0];
          v77 = [dictionary6 objectForKeyedSubscript:v60];
          [v77 doubleValue];
          v78 = [v76 numberWithDouble:?];
          [v56 setObject:v78 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

          v79 = MEMORY[0x277CCABB0];
          v80 = [dictionary7 objectForKeyedSubscript:v60];
          [v80 doubleValue];
          v81 = [v79 numberWithDouble:?];
          [v56 setObject:v81 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

          v82 = MEMORY[0x277CCABB0];
          v83 = [dictionary8 objectForKeyedSubscript:v60];
          [v83 doubleValue];
          v84 = [v82 numberWithDouble:?];
          [v56 setObject:v84 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

          v85 = MEMORY[0x277CCABB0];
          v86 = [dictionary9 objectForKeyedSubscript:v60];
          [v86 doubleValue];
          v87 = [v85 numberWithDouble:?];
          [v56 setObject:v87 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

          v88 = MEMORY[0x277CCABB0];
          v89 = [dictionary10 objectForKeyedSubscript:v60];
          [v89 doubleValue];
          v90 = [v88 numberWithDouble:?];
          [v56 setObject:v90 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
        }
      }

      v53 = [v132 countByEnumeratingWithState:&v148 objects:v165 count:16];
    }

    while (v53);
  }

  v91 = [v132 mutableCopy];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v129 = v26;
  v92 = [v129 countByEnumeratingWithState:&v144 objects:v164 count:16];
  v93 = 0x277CBE000uLL;
  if (v92)
  {
    v94 = v92;
    v95 = *v145;
    do
    {
      for (n = 0; n != v94; ++n)
      {
        if (*v145 != v95)
        {
          objc_enumerationMutation(v129);
        }

        v97 = *(*(&v144 + 1) + 8 * n);
        dictionary11 = [*(v93 + 2872) dictionary];
        [dictionary11 setObject:v97 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        [dictionary11 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        v99 = [dictionary objectForKeyedSubscript:v97];
        [dictionary11 setObject:v99 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v100 = [dictionary2 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v100 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v101 = [dictionary3 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v101 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v102 = [dictionary4 objectForKeyedSubscript:v97];
        [dictionary11 setObject:v102 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (typeCopy == 4)
        {
          v103 = MEMORY[0x277CCABB0];
          v104 = [dictionary5 objectForKeyedSubscript:v97];
          [v104 doubleValue];
          v105 = [v103 numberWithDouble:?];
          [dictionary11 setObject:v105 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];

          v106 = MEMORY[0x277CCABB0];
          v107 = [dictionary6 objectForKeyedSubscript:v97];
          [v107 doubleValue];
          v108 = [v106 numberWithDouble:?];
          [dictionary11 setObject:v108 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];

          v109 = MEMORY[0x277CCABB0];
          v110 = [dictionary7 objectForKeyedSubscript:v97];
          [v110 doubleValue];
          v111 = [v109 numberWithDouble:?];
          [dictionary11 setObject:v111 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];

          v112 = MEMORY[0x277CCABB0];
          v113 = [dictionary8 objectForKeyedSubscript:v97];
          [v113 doubleValue];
          v114 = [v112 numberWithDouble:?];
          [dictionary11 setObject:v114 forKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];

          v115 = MEMORY[0x277CCABB0];
          v116 = [dictionary9 objectForKeyedSubscript:v97];
          [v116 doubleValue];
          v117 = [v115 numberWithDouble:?];
          [dictionary11 setObject:v117 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];

          v93 = 0x277CBE000;
          v118 = MEMORY[0x277CCABB0];
          v119 = [dictionary10 objectForKeyedSubscript:v97];
          [v119 doubleValue];
          v120 = [v118 numberWithDouble:?];
          [dictionary11 setObject:v120 forKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
        }

        [dictionary11 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v91 addObject:dictionary11];
      }

      v94 = [v129 countByEnumeratingWithState:&v144 objects:v164 count:16];
    }

    while (v94);
  }

  v121 = *MEMORY[0x277D85DE8];

  return v91;
}

- (id)addNotificationValues:(id)values withRange:(_PLTimeIntervalRange)range withQueryType:(int)type
{
  length = range.length;
  location = range.location;
  valuesCopy = values;
  storage = [(PLOperator *)self storage];
  v10 = [storage aggregateEntriesForKey:@"PLSpringBoardAgent_Aggregate_SBNotifications_Aggregate" withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v11 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke;
  v22[3] = &unk_279A5C278;
  v24 = location;
  v25 = length;
  v23 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:v22];
  v13 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v12 withPrimaryKeys:&unk_28714C518];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2;
  v20[3] = &unk_279A5C2E8;
  v15 = dictionary;
  v21 = v15;
  [v13 enumerateObjectsUsingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_1726;
  v18[3] = &unk_279A5C310;
  v19 = v15;
  v16 = v15;
  [valuesCopy enumerateObjectsUsingBlock:v18];

  return valuesCopy;
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 entryDate];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  if (v6)
  {
    v7 = v6;
    [v6 timeIntervalSince1970];
    v9 = v8;
    v10 = v4 + v5;

    if (v4 <= v9 && v9 < v10)
    {
      [*(a1 + 32) addObject:v12];
    }
  }
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"NotificationType"];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 objectForKeyedSubscript:@"NotificationType"];
  if ([v6 intValue])
  {
    v7 = [v3 objectForKeyedSubscript:@"NotificationType"];
    if ([v7 intValue] != 3)
    {
      v13 = [v3 objectForKeyedSubscript:@"NotificationType"];
      v14 = [v13 intValue];

      if (v14 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v8 = [v3 objectForKeyedSubscript:@"NotificationBundleID"];
  if (v8)
  {
    v9 = [[PLBatteryBreakdownNotificationInfo alloc] initWithEntry:v3];
    if (v9)
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:v8];

      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = [v11 objectForKeyedSubscript:v8];
        [v12 combineWith:v9];
      }

      else
      {
        [v11 setObject:v9 forKeyedSubscript:v8];
      }

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_1();
      }
    }

    else
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_2();
      }
    }
  }

LABEL_19:
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_1726(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (![*(a1 + 32) count])
  {
    *a4 = 1;
  }

  v6 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"NotificationInfo"];
    [*(a1 + 32) removeObjectForKey:v6];
  }
}

- (id)nonAppsRuntimesWithRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v13[3] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(PLOperator *)PLCameraAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Torch"];
  [(PLBatteryBreakdownService *)self nonAppRuntimeWithEventForwardTableName:v7 withRange:@"Level" andIdentificationKey:location, length];
  v12[0] = @"BundleID";
  v12[1] = @"ScreenOnTime";
  v13[0] = @"Flashlight";
  v13[1] = &unk_2871456E8;
  v12[2] = @"BackgroundTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  [array addObject:v9];
  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (double)nonAppRuntimeWithEventForwardTableName:(id)name withRange:(_PLTimeIntervalRange)range andIdentificationKey:(id)key
{
  length = range.length;
  location = range.location;
  v46[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  keyCopy = key;
  v11 = objc_alloc(MEMORY[0x277D3F260]);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:location];
  v13 = [v11 initWithKey:@"timestamp" withValue:v12 withComparisonOperation:5];

  storage = [(PLOperator *)self storage];
  v39 = v13;
  v46[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v16 = [storage lastEntryForKey:nameCopy withComparisons:v15 isSingleton:0];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:keyCopy];
    bOOLValue = [v17 BOOLValue];

    if (bOOLValue)
    {
      v19 = location;
    }

    else
    {
      v19 = -1.0;
    }
  }

  else
  {
    v19 = -1.0;
  }

  storage2 = [(PLOperator *)self storage];
  v40 = nameCopy;
  v21 = [storage2 entriesForKey:nameCopy inTimeRange:0 withFilters:{location, length}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  reverseObjectEnumerator = [v21 reverseObjectEnumerator];
  v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    v26 = 0.0;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v28 = *(*(&v41 + 1) + 8 * i);
        v29 = [v28 objectForKeyedSubscript:keyCopy];
        bOOLValue2 = [v29 BOOLValue];

        if (bOOLValue2)
        {
          if (v19 == -1.0)
          {
            entryDate = [v28 entryDate];
            [entryDate timeIntervalSince1970];
            v19 = v32;
          }
        }

        else
        {
          if (v19 != -1.0)
          {
            entryDate2 = [v28 entryDate];
            [entryDate2 timeIntervalSince1970];
            v35 = v34 - v19;

            v26 = v26 + v35;
          }

          v19 = -1.0;
        }
      }

      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0.0;
  }

  if (v19 == -1.0)
  {
    v36 = v26;
  }

  else
  {
    v36 = v26 + location + length - v19;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)removeNodesNotToShowInInternalUI:(id)i withQueryType:(int)type
{
  v27 = *MEMORY[0x277D85DE8];
  iCopy = i;
  if (type == 2 && ![(PLBatteryBreakdownService *)self showRootNodesInInternal])
  {
    v20 = iCopy;
    v21 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = iCopy;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"PLBatteryUIAppTypeKey", v20}];
          intValue = [v13 intValue];

          if (intValue != 5)
          {
            v15 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            intermediateRootNodes = [(PLBatteryBreakdownService *)self intermediateRootNodes];
            v17 = [intermediateRootNodes containsObject:v15];

            if ((v17 & 1) == 0 && [v15 rangeOfString:@"AssertionPID"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v21 addObject:v12];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    iCopy = v20;
  }

  else
  {
    v21 = iCopy;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)filterEnergyEntriesBasedOnTime:(id)time withQueryType:(int)type
{
  v86 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v7 = timeCopy;
  typeCopy = type;
  if (type == 4)
  {
    v71 = timeCopy;
    goto LABEL_62;
  }

  v71 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v67 = v7;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (!v8)
  {
    goto LABEL_61;
  }

  v9 = v8;
  v10 = *v78;
  v11 = 0x277D3F000uLL;
  v68 = *v78;
  do
  {
    v12 = 0;
    do
    {
      if (*v78 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v77 + 1) + 8 * v12);
      v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([*(v11 + 384) debugEnabled])
      {
        v15 = objc_opt_class();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        block[4] = v15;
        if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce != -1)
        {
          dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce, block);
        }

        if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled == 1)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entry: %@ ========= %@", v14, v13];
          v17 = MEMORY[0x277D3F178];
          v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent = [v18 lastPathComponent];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
          [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:2090];

          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v84 = v16;
            _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v10 = v68;
          v11 = 0x277D3F000uLL;
        }
      }

      if ([(PLBatteryBreakdownService *)self appTypeForName:v14]== 1)
      {
        v22 = [(PLBatteryBreakdownService *)self adjustFGBGTimeForNonAppEnergyEntry:v13];
        [v71 addObject:v22];

        if ([*(v11 + 384) debugEnabled])
        {
          v23 = objc_opt_class();
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736;
          v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v75[4] = v23;
          if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1734 != -1)
          {
            dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1734, v75);
          }

          if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1735 == 1)
          {
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding: NON APP"];
            v25 = MEMORY[0x277D3F178];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v26 lastPathComponent];
            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
            [v25 logMessage:v24 fromFile:lastPathComponent2 fromFunction:v28 fromLineNumber:2096];

            v29 = PLLogCommon();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
LABEL_48:

              v10 = v68;
              v11 = 0x277D3F000;
              goto LABEL_56;
            }

LABEL_58:
            *buf = 138412290;
            v84 = v24;
            _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v30 doubleValue];
        v32 = v31;

        v33 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v33 doubleValue];
        v35 = v34;

        if (typeCopy > 1 || (v32 == 0.0 ? (v36 = v35 < 60.0) : (v36 = 0), !v36))
        {
          if (v32 > 0.0 && v32 < 60.0)
          {
            v55 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v55 doubleValue];
            v57 = v56;

            v58 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v32 * v57];
            [v13 setObject:v58 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v13 setObject:&unk_287145790 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            if ([*(v11 + 384) debugEnabled])
            {
              v59 = objc_opt_class();
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756;
              v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v73[4] = v59;
              if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1754 != -1)
              {
                dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1754, v73);
              }

              if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1755 == 1)
              {
                v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding with Corrected FGTime"];
                v60 = MEMORY[0x277D3F178];
                v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v61 lastPathComponent];
                v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
                [v60 logMessage:v44 fromFile:lastPathComponent3 fromFunction:v63 fromLineNumber:2128];

                v49 = PLLogCommon();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_59;
                }

                goto LABEL_54;
              }
            }
          }

          else if ([*(v11 + 384) debugEnabled])
          {
            v43 = objc_opt_class();
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762;
            v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v72[4] = v43;
            if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1760 != -1)
            {
              dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1760, v72);
            }

            if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1761 == 1)
            {
              v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Adding without any changes"];
              v45 = MEMORY[0x277D3F178];
              v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v46 lastPathComponent];
              v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
              [v45 logMessage:v44 fromFile:lastPathComponent4 fromFunction:v48 fromLineNumber:2130];

              v49 = PLLogCommon();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
LABEL_59:
                *buf = 138412290;
                v84 = v44;
                _os_log_debug_impl(&dword_25EE51000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

LABEL_54:
              v10 = v68;

              v11 = 0x277D3F000;
            }
          }

          [v71 addObject:v13];
          goto LABEL_56;
        }

        if (![v14 isEqualToString:@"com.apple.findmy"])
        {
          goto LABEL_46;
        }

        v37 = [&unk_28714C530 objectAtIndexedSubscript:59];
        v38 = [v13 objectForKeyedSubscript:v37];
        [v38 doubleValue];
        v40 = v39;

        if (v40 > 0.0)
        {
          [v71 addObject:v13];
          v41 = PLLogCommon();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:&v82 withQueryType:?];
          }
        }

        else
        {
LABEL_46:
          if ([*(v11 + 384) debugEnabled])
          {
            v50 = objc_opt_class();
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748;
            v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v74[4] = v50;
            if (filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1746 != -1)
            {
              dispatch_once(&filterEnergyEntriesBasedOnTime_withQueryType__defaultOnce_1746, v74);
            }

            if (filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1747 == 1)
            {
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropping: Low FG BG Time"];
              v51 = MEMORY[0x277D3F178];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent5 = [v52 lastPathComponent];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterEnergyEntriesBasedOnTime:withQueryType:]"];
              [v51 logMessage:v24 fromFile:lastPathComponent5 fromFunction:v54 fromLineNumber:2112];

              v29 = PLLogCommon();
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_48;
              }

              goto LABEL_58;
            }
          }
        }
      }

LABEL_56:

      ++v12;
    }

    while (v9 != v12);
    v64 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    v9 = v64;
  }

  while (v64);
LABEL_61:

  v7 = v67;
LABEL_62:

  v65 = *MEMORY[0x277D85DE8];

  return v71;
}

uint64_t __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1735 = result;
  return result;
}

uint64_t __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1747 = result;
  return result;
}

uint64_t __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1756(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1755 = result;
  return result;
}

uint64_t __74__PLBatteryBreakdownService_filterEnergyEntriesBasedOnTime_withQueryType___block_invoke_1762(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterEnergyEntriesBasedOnTime_withQueryType__classDebugEnabled_1761 = result;
  return result;
}

- (id)adjustFGBGTimeForNonAppEnergyEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  if (([v4 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"DeletedAppAndAppClip"))
  {
    v5 = @"PLBatteryUIAppForegroundRuntimeKey";
  }

  else
  {
    if (![v4 isEqualToString:@"Flashlight"])
    {
      goto LABEL_10;
    }

    v5 = @"PLBatteryUIAppBackgroundRuntimeKey";
  }

  v6 = [entryCopy objectForKeyedSubscript:v5];
  [v6 doubleValue];
  v8 = v7;

  if (v8 < 60.0 && v8 > 0.0)
  {
    [entryCopy setObject:&unk_287145790 forKeyedSubscript:v5];
  }

LABEL_10:

  return entryCopy;
}

- (double)computeTotalForegroundDuration:(id)duration
{
  v18 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(durationCopy);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)computeTotalBackgroundDuration:(id)duration
{
  v18 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(durationCopy);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [durationCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)checkHomeKitEvents
{
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLHomeKitAgent" withType:*MEMORY[0x277D3F5E8] withName:@"HomeKitEvents"];
  storage = [(PLOperator *)self storage];
  v5 = [storage countOfEntriesForKey:v3];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService checkHomeKitEvents];
  }

  return v5 > 0;
}

- (id)applyStaticNameTransformationsWithEnergyEntries:(id)entries
{
  v68 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  if (![(PLBatteryBreakdownService *)self hasHomeKitActivity])
  {
    [(PLBatteryBreakdownService *)self setHasHomeKitActivity:[(PLBatteryBreakdownService *)self checkHomeKitEvents]];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v5 = entriesCopy;
  v56 = [v5 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v56)
  {
    v55 = *v62;
    v6 = 0x277D3F000uLL;
    obj = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v61 + 1) + 8 * v7);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([*(v6 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce, block);
          }

          if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"givenName=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2199];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v11;
              _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000uLL;
          }
        }

        if ([v9 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
        {
          v17 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

          if (v17)
          {
            if ([*(v6 + 384) debugEnabled])
            {
              v18 = objc_opt_class();
              v59[0] = MEMORY[0x277D85DD0];
              v59[1] = 3221225472;
              v59[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777;
              v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v59[4] = v18;
              if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1775 != -1)
              {
                dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1775, v59);
              }

              if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1776 == 1)
              {
                v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error lockscreen-navigation background time not zero"];
                v20 = MEMORY[0x277D3F178];
                v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent2 = [v21 lastPathComponent];
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v20 logMessage:v19 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:2203];

                v24 = PLLogCommon();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v66 = v19;
                  _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000uLL;
              }
            }

            if ([*(v6 + 384) debugEnabled])
            {
              v25 = objc_opt_class();
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783;
              v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v58[4] = v25;
              if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1781 != -1)
              {
                dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1781, v58);
              }

              if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1782 == 1)
              {
                v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"lockscreen-navigation energyEntry = %@", v8];
                v27 = MEMORY[0x277D3F178];
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
                lastPathComponent3 = [v28 lastPathComponent];
                v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
                [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:2204];

                v31 = PLLogCommon();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v66 = v26;
                  _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v6 = 0x277D3F000;
              }
            }
          }

          v32 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v33 = MEMORY[0x277CCABB0];
          [v32 doubleValue];
          v35 = [v33 numberWithDouble:-v34];
          [v8 setObject:v35 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        else if ([v9 isEqualToString:@"com.apple.PassbookUIService"])
        {
          [v8 setObject:&unk_28714B1C8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }

        givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
        v37 = [givenNameToMappedName objectForKeyedSubscript:v9];

        if ([*(v6 + 384) debugEnabled])
        {
          v38 = objc_opt_class();
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791;
          v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v57[4] = v38;
          if (applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1789 != -1)
          {
            dispatch_once(&applyStaticNameTransformationsWithEnergyEntries__defaultOnce_1789, v57);
          }

          if (applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1790 == 1)
          {
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"mappedName=%@", v37];
            v40 = MEMORY[0x277D3F178];
            v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent4 = [v41 lastPathComponent];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService applyStaticNameTransformationsWithEnergyEntries:]"];
            [v40 logMessage:v39 fromFile:lastPathComponent4 fromFunction:v43 fromLineNumber:2214];

            v44 = PLLogCommon();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v39;
              _os_log_debug_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = 0x277D3F000;
          }
        }

        if (v37)
        {
          [v8 setObject:v37 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        if ([(PLBatteryBreakdownService *)self hasHomeKitActivity])
        {
          v45 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v46 = [v45 isEqualToString:@"HomeKit"];

          if (v46)
          {
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v8;
              _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "Energy Entry before mapping: %@", buf, 0xCu);
            }

            installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
            v49 = [installedBundleIDToDisplayName objectForKeyedSubscript:@"com.apple.Home"];

            if (v49)
            {
              [v8 setObject:@"com.apple.Home" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v50 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v8 setObject:v50 forKeyedSubscript:@"HomeKitEnergy"];

            v51 = PLLogCommon();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v66 = v8;
              _os_log_debug_impl(&dword_25EE51000, v51, OS_LOG_TYPE_DEBUG, "Energy Entry after mapping: %@", buf, 0xCu);
            }
          }
        }

        ++v7;
      }

      while (v56 != v7);
      v5 = obj;
      v56 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v56);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1777(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1776 = result;
  return result;
}

uint64_t __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1782 = result;
  return result;
}

uint64_t __77__PLBatteryBreakdownService_applyStaticNameTransformationsWithEnergyEntries___block_invoke_1791(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  applyStaticNameTransformationsWithEnergyEntries__classDebugEnabled_1790 = result;
  return result;
}

- (id)bundleIDsForMappedName:(id)name
{
  nameCopy = name;
  givenNameToMappedName = [(PLBatteryBreakdownService *)self givenNameToMappedName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PLBatteryBreakdownService_bundleIDsForMappedName___block_invoke;
  v10[3] = &unk_279A5C338;
  v11 = nameCopy;
  v6 = nameCopy;
  v7 = [givenNameToMappedName keysOfEntriesPassingTest:v10];

  allObjects = [v7 allObjects];

  return allObjects;
}

- (id)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries
{
  v17 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (([v9 isEqualToString:@"com.apple.store.Jolly.spotlightindex"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"com.apple.mobilemail.DiagnosticExtension"))
        {
          [v8 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v8 setObject:&unk_2871456E8 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

- (id)applyDynamicNameTransformationsWithEnergyEntries:(id)entries
{
  v4 = [(PLBatteryBreakdownService *)self mapDeletedAppsWithEnergyEntries:entries];
  v5 = [(PLBatteryBreakdownService *)self mapPluginsToAppsWithEnergyEntries:v4];

  v6 = [(PLBatteryBreakdownService *)self mapGizmoToAppsWithEnergyEntries:v5];

  v7 = [(PLBatteryBreakdownService *)self reaccountExchangeEntriesWithEnergyEntries:v6];

  v8 = [(PLBatteryBreakdownService *)self reaccountBackupRestoreWithEnergyEntries:v7];

  v9 = [(PLBatteryBreakdownService *)self mapCloudDocsToAppsWithEnergyEntries:v8];

  return v9;
}

- (id)mapDeletedAppsWithEnergyEntries:(id)entries
{
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  deletedAppNames = [(PLBatteryBreakdownService *)self deletedAppNames];
  if ([deletedAppNames count])
  {
  }

  else
  {
    deletedAppClipNames = [(PLBatteryBreakdownService *)self deletedAppClipNames];
    v7 = [deletedAppClipNames count];

    if (!v7)
    {
      goto LABEL_46;
    }
  }

  deletedAppClipNames2 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
  if (![deletedAppClipNames2 count])
  {

LABEL_8:
    deletedAppNames2 = [(PLBatteryBreakdownService *)self deletedAppNames];
    v13 = [deletedAppNames2 count];

    if (v13)
    {
      v11 = @"DeletedApp";
    }

    else
    {
      deletedAppClipNames3 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
      v15 = [deletedAppClipNames3 count];

      v11 = @"DeletedAppClip";
      if (!v15)
      {
        v11 = 0;
      }
    }

    goto LABEL_12;
  }

  deletedAppNames3 = [(PLBatteryBreakdownService *)self deletedAppNames];
  v10 = [deletedAppNames3 count];

  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = @"DeletedAppAndAppClip";
LABEL_12:
  v48 = v11;
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = entriesCopy;
  obj = entriesCopy;
  v17 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v49 = *v55;
    do
    {
      v19 = 0;
      do
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v54 + 1) + 8 * v19);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v21;
          if (mapDeletedAppsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&mapDeletedAppsWithEnergyEntries__defaultOnce, block);
          }

          if (mapDeletedAppsWithEnergyEntries__classDebugEnabled == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v20];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:2279];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v22;
              _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        deletedAppNames4 = [(PLBatteryBreakdownService *)self deletedAppNames];
        v29 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([deletedAppNames4 containsObject:v29])
        {
        }

        else
        {
          deletedAppClipNames4 = [(PLBatteryBreakdownService *)self deletedAppClipNames];
          v31 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v32 = [deletedAppClipNames4 containsObject:v31];

          if (!v32)
          {
            goto LABEL_39;
          }
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v33 = objc_opt_class();
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810;
          v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v52[4] = v33;
          if (mapDeletedAppsWithEnergyEntries__defaultOnce_1808 != -1)
          {
            dispatch_once(&mapDeletedAppsWithEnergyEntries__defaultOnce_1808, v52);
          }

          if (mapDeletedAppsWithEnergyEntries__classDebugEnabled_1809 == 1)
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a deleted app"];
            v35 = MEMORY[0x277D3F178];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v36 lastPathComponent];
            v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapDeletedAppsWithEnergyEntries:]"];
            [v35 logMessage:v34 fromFile:lastPathComponent2 fromFunction:v38 fromLineNumber:2282];

            v39 = PLLogCommon();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v34;
              _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v40 = PLLogCommon();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryBreakdownService *)&v50 mapDeletedAppsWithEnergyEntries:v51];
        }

        [v20 setObject:v48 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_39:
        v41 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v42 = [v41 containsString:@"Unspecified"];

        if (v42)
        {
          v43 = PLLogCommon();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v43, OS_LOG_TYPE_DEFAULT, "AppDeletion : Found an unspecified entry so refactoring", buf, 2u);
          }

          [v20 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        ++v19;
      }

      while (v18 != v19);
      v18 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v18);
  }

  entriesCopy = v46;
LABEL_46:
  v44 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

uint64_t __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapDeletedAppsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __61__PLBatteryBreakdownService_mapDeletedAppsWithEnergyEntries___block_invoke_1810(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapDeletedAppsWithEnergyEntries__classDebugEnabled_1809 = result;
  return result;
}

- (id)mapPluginsToAppsWithEnergyEntries:(id)entries
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = entries;
  v43 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v43)
  {
    v4 = *v47;
    v5 = 0x277D3F000uLL;
    v6 = @"PluginType";
    v41 = *v47;
    do
    {
      v7 = 0;
      do
      {
        if (*v47 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v8 = v6;
        v9 = *(*(&v46 + 1) + 8 * v7);
        if ([*(v5 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (mapPluginsToAppsWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&mapPluginsToAppsWithEnergyEntries__defaultOnce, block);
          }

          if (mapPluginsToAppsWithEnergyEntries__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2305];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v51 = v11;
              _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v4 = v41;
            v5 = 0x277D3F000uLL;
          }
        }

        installedPluginBundleIDToPluginEntry = [(PLBatteryBreakdownService *)self installedPluginBundleIDToPluginEntry];
        v18 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v19 = [installedPluginBundleIDToPluginEntry objectForKeyedSubscript:v18];

        v6 = v8;
        if (v19)
        {
          if ([*(v5 + 384) debugEnabled])
          {
            v20 = objc_opt_class();
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819;
            v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v44[4] = v20;
            if (mapPluginsToAppsWithEnergyEntries__defaultOnce_1817 != -1)
            {
              dispatch_once(&mapPluginsToAppsWithEnergyEntries__defaultOnce_1817, v44);
            }

            if (mapPluginsToAppsWithEnergyEntries__classDebugEnabled_1818 == 1)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
              v22 = MEMORY[0x277D3F178];
              v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v23 lastPathComponent];
              v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService mapPluginsToAppsWithEnergyEntries:]"];
              [v22 logMessage:v21 fromFile:lastPathComponent2 fromFunction:v25 fromLineNumber:2310];

              v26 = PLLogCommon();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v21;
                _os_log_debug_impl(&dword_25EE51000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v4 = v41;
              v5 = 0x277D3F000;
              v6 = v8;
            }
          }

          v27 = [v19 objectForKeyedSubscript:@"PluginId"];
          v28 = [v27 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

          if ((v28 & 1) == 0)
          {
            v29 = [v19 objectForKeyedSubscript:@"PluginParentApp"];
            [v9 setObject:v29 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v30 = [v19 objectForKeyedSubscript:v6];
            v31 = [v30 isEqualToString:@"com.apple.watchkit"];

            if (v31)
            {
              v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v32 forKeyedSubscript:@"WatchEnergy"];
            }

            else
            {
              v33 = [v19 objectForKeyedSubscript:v6];
              v34 = [v33 isEqualToString:@"com.apple.widgetkit-extension"];

              if (!v34)
              {
                goto LABEL_28;
              }

              v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v9 setObject:v35 forKeyedSubscript:@"ChronoWidgetEnergy"];

              v32 = PLLogCommon();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v36 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                v37 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v37 doubleValue];
                *buf = 138412546;
                v51 = v36;
                v52 = 2048;
                v53 = v38;
                _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "Widget Energy for %@ : %f", buf, 0x16u);
              }
            }

            v6 = v8;
          }
        }

LABEL_28:

        ++v7;
      }

      while (v43 != v7);
      v43 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v43);
  }

  v39 = *MEMORY[0x277D85DE8];

  return obj;
}

uint64_t __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapPluginsToAppsWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __63__PLBatteryBreakdownService_mapPluginsToAppsWithEnergyEntries___block_invoke_1819(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  mapPluginsToAppsWithEnergyEntries__classDebugEnabled_1818 = result;
  return result;
}

- (id)mapGizmoToAppsWithEnergyEntries:(id)entries
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = [entriesCopy countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v57;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        gizmoDaemonToAppBundleID = [(PLBatteryBreakdownService *)self gizmoDaemonToAppBundleID];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v12 = [gizmoDaemonToAppBundleID objectForKeyedSubscript:v11];

        if (v12)
        {
          [v9 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v9 setObject:v13 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v6 = [entriesCopy countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v6);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = entriesCopy;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v52 + 1) + 8 * j);
        v20 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v20 hasSuffix:@"/watch"])
        {
          v21 = [v20 substringWithRange:{0, objc_msgSend(v20, "length") - 6}];
          [v19 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          v22 = [v19 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v19 setObject:v22 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v16);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v23 = v14;
  v24 = [v23 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v49;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v49 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v48 + 1) + 8 * k);
        v29 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v29 hasSuffix:@".watchkitextension"])
        {
          v30 = [v29 substringWithRange:{0, objc_msgSend(v29, "length") - 18}];
          [v28 setObject:v30 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          v31 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v28 setObject:v31 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v25);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = v23;
  v33 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v45;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v44 + 1) + 8 * m);
        gizmoIDSTopicToAppBundleID = [(PLBatteryBreakdownService *)self gizmoIDSTopicToAppBundleID];
        v39 = [v37 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v40 = [gizmoIDSTopicToAppBundleID objectForKeyedSubscript:v39];

        if (v40)
        {
          [v37 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v41 = [v37 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v37 setObject:v41 forKeyedSubscript:@"WatchEnergy"];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v34);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)mapCloudDocsToAppsWithEnergyEntries:(id)entries
{
  v28 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v7 = @"com.apple.clouddocs.";
    v8 = @".";
    do
    {
      v9 = 0;
      v22 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v11 hasPrefix:v7])
        {
          v12 = [v11 substringFromIndex:{-[__CFString length](v7, "length")}];
          v13 = [v12 rangeOfString:v8];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v6;
            v16 = v7;
            v17 = entriesCopy;
            v18 = v8;
            v19 = [v12 substringFromIndex:v13 + v14];
            if (v19)
            {
              [v10 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v8 = v18;
            entriesCopy = v17;
            v7 = v16;
            v6 = v15;
            v5 = v22;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [entriesCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

- (id)reaccountExchangeEntriesWithEnergyEntries:(id)entries
{
  v60 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v53 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v15 = v14;
    if (v14 && ([v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "doubleValue"), v18 = v17, v16, v18 != 0.0))
    {
      v39 = v15;
      v40 = v4;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v49 = 0u;
      v20 = [&unk_28714C548 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v50;
        v23 = 0.0;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v50 != v22)
            {
              objc_enumerationMutation(&unk_28714C548);
            }

            v25 = [dictionary objectForKeyedSubscript:*(*(&v49 + 1) + 8 * j)];
            v26 = v25;
            if (v25)
            {
              v27 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
              [v27 doubleValue];
              v29 = v28;

              if (v29 >= 0.0)
              {
                v30 = v29;
              }

              else
              {
                v30 = 0.0;
              }

              v23 = v23 + v30;
            }
          }

          v21 = [&unk_28714C548 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v21);
      }

      else
      {
        v23 = 0.0;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v31 = [&unk_28714C548 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v46;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v46 != v33)
            {
              objc_enumerationMutation(&unk_28714C548);
            }

            v35 = [dictionary objectForKeyedSubscript:*(*(&v45 + 1) + 8 * k)];
            v36 = v35;
            if (v35)
            {
              v41[0] = MEMORY[0x277D85DD0];
              v41[1] = 3221225472;
              v41[2] = __71__PLBatteryBreakdownService_reaccountExchangeEntriesWithEnergyEntries___block_invoke;
              v41[3] = &unk_279A5C0F0;
              v42 = v35;
              v43 = v18;
              v44 = v23;
              [v42 enumerateKeysAndObjectsUsingBlock:v41];
            }
          }

          v32 = [&unk_28714C548 countByEnumeratingWithState:&v45 objects:v57 count:16];
        }

        while (v32);
      }

      v19 = [v6 mutableCopy];
      v15 = v39;
      [v19 removeObject:v39];
      v4 = v40;
    }

    else
    {
      v19 = v6;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v19;
}

void __71__PLBatteryBreakdownService_reaccountExchangeEntriesWithEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = [v6 numberWithDouble:v7 * (*(a1 + 40) / *(a1 + 48) + 1.0)];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)reaccountBackupRestoreWithEnergyEntries:(id)entries
{
  v46 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v4 = entriesCopy;
  if (entriesCopy && [entriesCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"Backup"];
    v15 = [dictionary objectForKeyedSubscript:@"Restore"];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v16 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (reaccountBackupRestoreWithEnergyEntries__defaultOnce != -1)
      {
        dispatch_once(&reaccountBackupRestoreWithEnergyEntries__defaultOnce, block);
      }

      if (reaccountBackupRestoreWithEnergyEntries__classDebugEnabled == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"backupEnergyEntry=%@, restoreEnergyEntry=%@", v14, v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:2473];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_1872;
      v37[3] = &unk_279A5C118;
      v23 = v14;
      v38 = v23;
      v24 = v15;
      v39 = v24;
      [v23 enumerateKeysAndObjectsUsingBlock:v37];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v25 = objc_opt_class();
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_2;
        v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v36[4] = v25;
        if (reaccountBackupRestoreWithEnergyEntries__defaultOnce_1873 != -1)
        {
          dispatch_once(&reaccountBackupRestoreWithEnergyEntries__defaultOnce_1873, v36);
        }

        if (reaccountBackupRestoreWithEnergyEntries__classDebugEnabled_1874 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined backupEnergyEntry=%@", v23];
          v35 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
          lastPathComponent2 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService reaccountBackupRestoreWithEnergyEntries:]"];
          [v35 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:2485];

          v30 = v26;
          v31 = PLLogCommon();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v32 = [v6 mutableCopy];
      [v32 removeObject:v24];
    }

    else
    {
      v32 = v6;
    }
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestoreWithEnergyEntries__classDebugEnabled = result;
  return result;
}

void __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_1872(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = v7;
    v9 = [*(a1 + 40) objectForKeyedSubscript:v12];
    [v9 doubleValue];
    v11 = [v6 numberWithDouble:v8 + v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }
}

uint64_t __69__PLBatteryBreakdownService_reaccountBackupRestoreWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestoreWithEnergyEntries__classDebugEnabled_1874 = result;
  return result;
}

- (id)combineDuplicatesWithEnergyEntries:(id)entries
{
  v51 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = entriesCopy;
  v38 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v38)
  {
    v37 = *v45;
    v35 = dictionary;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * v5);
        v7 = [v6 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (combineDuplicatesWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce, block);
          }

          if (combineDuplicatesWithEnergyEntries__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"name=%@", v7];
            v10 = MEMORY[0x277D3F178];
            v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v11 lastPathComponent];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
            [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:2496];

            v14 = PLLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v49 = v9;
              _os_log_debug_impl(&dword_25EE51000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            dictionary = v35;
          }
        }

        if (v7)
        {
          v15 = [dictionary objectForKeyedSubscript:v7];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v16 = objc_opt_class();
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883;
            v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v42[4] = v16;
            if (combineDuplicatesWithEnergyEntries__defaultOnce_1881 != -1)
            {
              dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce_1881, v42);
            }

            if (combineDuplicatesWithEnergyEntries__classDebugEnabled_1882 == 1)
            {
              v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"storedEnergyEntry=%@", v15];
              v18 = MEMORY[0x277D3F178];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent2 = [v19 lastPathComponent];
              v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v18 logMessage:v17 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:2500];

              v22 = PLLogCommon();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v17;
                _os_log_debug_impl(&dword_25EE51000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              dictionary = v35;
            }
          }

          if (v15)
          {
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1887;
            v40[3] = &unk_279A5C360;
            v41 = v15;
            [v6 enumerateKeysAndObjectsUsingBlock:v40];
          }

          else
          {
            [dictionary setObject:v6 forKeyedSubscript:v7];
          }

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v23 = objc_opt_class();
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_2;
            v39[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v39[4] = v23;
            if (combineDuplicatesWithEnergyEntries__defaultOnce_1888 != -1)
            {
              dispatch_once(&combineDuplicatesWithEnergyEntries__defaultOnce_1888, v39);
            }

            if (combineDuplicatesWithEnergyEntries__classDebugEnabled_1889 == 1)
            {
              v24 = MEMORY[0x277CCACA8];
              v25 = [dictionary objectForKeyedSubscript:v7];
              v26 = [v24 stringWithFormat:@"nameToEnergyEntry[name]=%@", v25];

              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService combineDuplicatesWithEnergyEntries:]"];
              [v27 logMessage:v26 fromFile:lastPathComponent3 fromFunction:v30 fromLineNumber:2528];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v49 = v26;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }
        }

        ++v5;
      }

      while (v38 != v5);
      v38 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v38);
  }

  allValues = [dictionary allValues];

  v33 = *MEMORY[0x277D85DE8];

  return allValues;
}

uint64_t __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  combineDuplicatesWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1883(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  combineDuplicatesWithEnergyEntries__classDebugEnabled_1882 = result;
  return result;
}

void __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_1887(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:@"NotificationInfo"])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"NotificationInfo"];
    v7 = v6;
    if (!v5 || v6)
    {
      [v6 combineWith:v5];
    }

    else
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:@"NotificationInfo"];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v10 = v9;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v13];
    [v7 doubleValue];
    v12 = [v8 numberWithDouble:v10 + v11];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];

LABEL_9:
  }
}

uint64_t __64__PLBatteryBreakdownService_combineDuplicatesWithEnergyEntries___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  combineDuplicatesWithEnergyEntries__classDebugEnabled_1889 = result;
  return result;
}

- (id)determineDisplayNamesWithEnergyEntries:(id)entries
{
  v43 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [entriesCopy countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v32 = *v37;
    selfCopy = self;
    do
    {
      v8 = 0;
      v33 = v6;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v11 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v11;
          if (determineDisplayNamesWithEnergyEntries__defaultOnce != -1)
          {
            dispatch_once(&determineDisplayNamesWithEnergyEntries__defaultOnce, block);
          }

          if (determineDisplayNamesWithEnergyEntries__classDebugEnabled == 1)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@", v10];
            v13 = MEMORY[0x277D3F178];
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v14 lastPathComponent];
            v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:2536];

            v17 = PLLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v41 = v12;
              _os_log_debug_impl(&dword_25EE51000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v6 = v33;
            v7 = v32;
          }
        }

        installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
        v19 = [installedBundleIDToDisplayName objectForKeyedSubscript:v10];

        if ([(__CFString *)v10 isEqualToString:@"com.apple.Bridge"])
        {

          v19 = @"Apple Watch";
        }

        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v20 = objc_opt_class();
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898;
          v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v34[4] = v20;
          if (determineDisplayNamesWithEnergyEntries__defaultOnce_1896 != -1)
          {
            dispatch_once(&determineDisplayNamesWithEnergyEntries__defaultOnce_1896, v34);
          }

          if (determineDisplayNamesWithEnergyEntries__classDebugEnabled_1897 == 1)
          {
            v21 = entriesCopy;
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"displayName=%@", v19];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService determineDisplayNamesWithEnergyEntries:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent2 fromFunction:v26 fromLineNumber:2542];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v41 = v22;
              _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            entriesCopy = v21;
            self = selfCopy;
            v6 = v33;
            v7 = v32;
          }
        }

        if (v19)
        {
          v28 = v19;
        }

        else
        {
          v28 = v10;
        }

        [v9 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppNameKey"];

        ++v8;
      }

      while (v6 != v8);
      v6 = [entriesCopy countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v6);
  }

  v29 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

uint64_t __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  determineDisplayNamesWithEnergyEntries__classDebugEnabled = result;
  return result;
}

uint64_t __68__PLBatteryBreakdownService_determineDisplayNamesWithEnergyEntries___block_invoke_1898(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  determineDisplayNamesWithEnergyEntries__classDebugEnabled_1897 = result;
  return result;
}

- (id)filterWithEnergyEntries:(id)entries withQueryType:(int)type
{
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = entriesCopy;
  v49 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v49)
  {
    v48 = *v55;
    v7 = 0x277D3F000uLL;
    typeCopy = type;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * v8);
        if ([*(v7 + 384) debugEnabled])
        {
          v10 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v10;
          if (filterWithEnergyEntries_withQueryType__defaultOnce != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce, block);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled == 1)
          {
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v9];
            v12 = MEMORY[0x277D3F178];
            v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent = [v13 lastPathComponent];
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:2552];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v11;
              _os_log_debug_impl(&dword_25EE51000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v18 = [(PLBatteryBreakdownService *)self appTypeForName:v17];
        if ([*(v7 + 384) debugEnabled])
        {
          v19 = objc_opt_class();
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904;
          v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v52[4] = v19;
          if (filterWithEnergyEntries_withQueryType__defaultOnce_1902 != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1902, v52);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1903 == 1)
          {
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"appType=%i", v18];
            v21 = MEMORY[0x277D3F178];
            v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v22 lastPathComponent];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v21 logMessage:v20 fromFile:lastPathComponent2 fromFunction:v24 fromLineNumber:2558];

            v25 = PLLogCommon();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v20;
              _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
        [v9 setObject:v26 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];

        v27 = [(PLBatteryBreakdownService *)self minimumRequiredQueryTypeForAppType:v18];
        if ([*(v7 + 384) debugEnabled])
        {
          v28 = objc_opt_class();
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910;
          v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v51[4] = v28;
          if (filterWithEnergyEntries_withQueryType__defaultOnce_1908 != -1)
          {
            dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1908, v51);
          }

          if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1909 == 1)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"minimumRequiredQueryType=%i", v27];
            v30 = MEMORY[0x277D3F178];
            v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent3 = [v31 lastPathComponent];
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
            [v30 logMessage:v29 fromFile:lastPathComponent3 fromFunction:v33 fromLineNumber:2564];

            v34 = PLLogCommon();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v29;
              _os_log_debug_impl(&dword_25EE51000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            type = typeCopy;
            self = selfCopy;
            v7 = 0x277D3F000uLL;
          }
        }

        if (type == 4)
        {
          if ((v18 & 0xFFFFFFFB) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v27 > type)
          {
            goto LABEL_39;
          }

          if ([*(v7 + 384) debugEnabled])
          {
            v35 = objc_opt_class();
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916;
            v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v50[4] = v35;
            if (filterWithEnergyEntries_withQueryType__defaultOnce_1914 != -1)
            {
              dispatch_once(&filterWithEnergyEntries_withQueryType__defaultOnce_1914, v50);
            }

            if (filterWithEnergyEntries_withQueryType__classDebugEnabled_1915 == 1)
            {
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding entry"];
              v37 = MEMORY[0x277D3F178];
              v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v38 lastPathComponent];
              v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService filterWithEnergyEntries:withQueryType:]"];
              [v37 logMessage:v36 fromFile:lastPathComponent4 fromFunction:v40 fromLineNumber:2575];

              v41 = PLLogCommon();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v59 = v36;
                _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              type = typeCopy;
              self = selfCopy;
              v7 = 0x277D3F000;
            }
          }
        }

        [array addObject:v9];
LABEL_39:

        ++v8;
      }

      while (v49 != v8);
      v49 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v49);
  }

  v42 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled = result;
  return result;
}

uint64_t __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1904(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1903 = result;
  return result;
}

uint64_t __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1910(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1909 = result;
  return result;
}

uint64_t __67__PLBatteryBreakdownService_filterWithEnergyEntries_withQueryType___block_invoke_1916(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  filterWithEnergyEntries_withQueryType__classDebugEnabled_1915 = result;
  return result;
}

- (int)appTypeForName:(id)name
{
  nameCopy = name;
  rootNodeNames = [(PLBatteryBreakdownService *)self rootNodeNames];
  v6 = [rootNodeNames containsObject:nameCopy];

  if (v6)
  {
    v7 = 5;
  }

  else
  {
    nonAppNames = [(PLBatteryBreakdownService *)self nonAppNames];
    v9 = [nonAppNames containsObject:nameCopy];

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      webAppNames = [(PLBatteryBreakdownService *)self webAppNames];
      v11 = [webAppNames containsObject:nameCopy];

      if (v11)
      {
        v7 = 4;
      }

      else
      {
        installedBundleIDToDisplayName = [(PLBatteryBreakdownService *)self installedBundleIDToDisplayName];
        v13 = [installedBundleIDToDisplayName objectForKeyedSubscript:nameCopy];
        v14 = v13 == 0;

        v7 = 2 * v14;
      }
    }
  }

  return v7;
}

- (int)minimumRequiredQueryTypeForAppType:(int)type
{
  if (type == 5)
  {
    return 3;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (id)adjustForegroundTimesWithEnergyEntries:(id)entries
{
  v18 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = [&unk_287147E60 objectForKeyedSubscript:v9];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

- (id)adjustBackgroundTimesWithEnergyEntries:(id)entries
{
  v18 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(entriesCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = [&unk_287147E88 objectForKeyedSubscript:v9];
        if (v10)
        {
          [v8 setObject:v10 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }
      }

      v5 = [entriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return entriesCopy;
}

- (id)qualifiersWithEnergyEntry:(id)entry bucketSize:(double)size andTotalEnergy:(double)energy
{
  v231 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v8 = objc_opt_class();
    v222[0] = MEMORY[0x277D85DD0];
    v222[1] = 3221225472;
    v222[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke;
    v222[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v222[4] = v8;
    v9 = v222;
    if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce != -1)
    {
      dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce, v9);
    }

    if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled == 1)
    {
      entryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", entryCopy];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
      [v11 logMessage:entryCopy fromFile:lastPathComponent fromFunction:v14 fromLineNumber:2702];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (entryCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
    v18 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v18 doubleValue];
    v20 = v19;

    v21 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
    [v21 doubleValue];
    v23 = v22;

    v24 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
    [v24 doubleValue];
    v26 = v25;

    v27 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [entryCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
    [v30 doubleValue];
    v32 = v31;

    v33 = v23 + v26;
    [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
    v35 = v34 > 0.0 && v20 / v34 > dbl_25F023B30[size > 3600.0];
    if (v33 > 0.0)
    {
      v37 = *MEMORY[0x277CBF040];
      v38 = *MEMORY[0x277CBF030];
      v39 = (v29 + v32) / v33;
      +[PLUtilities containerPath];
      v40 = _CFPreferencesCopyValueWithContainer();
      v41 = v40;
      if (v40)
      {
        [v40 doubleValue];
        v43 = v42;
      }

      else
      {
        v43 = 0.8;
      }

      if (v39 >= v43 && !v35)
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v44 = objc_opt_class();
          v221[0] = MEMORY[0x277D85DD0];
          v221[1] = 3221225472;
          v221[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939;
          v221[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v221[4] = v44;
          v45 = v221;
          if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1937 != -1)
          {
            dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1937, v45);
          }

          if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1938 == 1)
          {
            v46 = MEMORY[0x277CCACA8];
            v47 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
            v48 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
            v49 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
            v50 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
            v51 = [v46 stringWithFormat:@"PluggedInQualifier: Adding plugged in qualifier based on BGTime %@, FGTime %@, BGPluggedInTime %@, FGPluggedInTime %@", v47, v48, v49, v50];

            v52 = MEMORY[0x277D3F178];
            v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
            lastPathComponent2 = [v53 lastPathComponent];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
            [v52 logMessage:v51 fromFile:lastPathComponent2 fromFunction:v55 fromLineNumber:2732];

            v56 = PLLogCommon();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        [array addObject:&unk_2871457A8];
      }
    }

    if (v20 == 0.0)
    {
      v36 = array;
    }

    else
    {
      v57 = [&unk_28714C560 objectAtIndexedSubscript:1];
      v58 = [entryCopy objectForKeyedSubscript:v57];
      [v58 doubleValue];
      v60 = v59;

      v61 = v60 / v20;
      if (v60 / v20 > 0.33 && [objc_opt_class() canSetQualifier:1 forBundleID:v17])
      {
        [array addObject:&unk_2871457C0];
      }

      v62 = [&unk_28714C578 objectAtIndexedSubscript:{2, v61}];
      v63 = [entryCopy objectForKeyedSubscript:v62];
      [v63 doubleValue];
      v65 = v64;

      v66 = v20 - v65;
      v67 = v66 / v20;
      if (v66 / v20 > 0.5 && [objc_opt_class() canSetQualifier:2 forBundleID:v17])
      {
        debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
        if (v23 < 300.0 || (v69 = v23 / v26, v23 / v26 < 0.33))
        {
          if (debugEnabled)
          {
            v81 = objc_opt_class();
            v219[0] = MEMORY[0x277D85DD0];
            v219[1] = 3221225472;
            v219[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964;
            v219[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v219[4] = v81;
            v82 = v219;
            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1962 != -1)
            {
              dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1962, v82);
            }

            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1963 == 1)
            {
              v83 = MEMORY[0x277CCACA8];
              v84 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
              v85 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
              v86 = [v83 stringWithFormat:@"BGQualifier: Removing qualifier based on BGTime %@, FGTime %@", v84, v85];

              v87 = MEMORY[0x277D3F178];
              v88 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent3 = [v88 lastPathComponent];
              v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v87 logMessage:v86 fromFile:lastPathComponent3 fromFunction:v90 fromLineNumber:2754];

              v91 = PLLogCommon();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }
        }

        else
        {
          if (debugEnabled)
          {
            v70 = objc_opt_class();
            v220[0] = MEMORY[0x277D85DD0];
            v220[1] = 3221225472;
            v220[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956;
            v220[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v220[4] = v70;
            v71 = v220;
            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1954 != -1)
            {
              dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1954, v71);
            }

            if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1955 == 1)
            {
              v72 = MEMORY[0x277CCACA8];
              v73 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
              v74 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
              v75 = [v72 stringWithFormat:@"BGQualifier: Adding qualifier based on BGTime %@, FGTime %@", v73, v74];

              v76 = MEMORY[0x277D3F178];
              v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
              lastPathComponent4 = [v77 lastPathComponent];
              v79 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:]"];
              [v76 logMessage:v75 fromFile:lastPathComponent4 fromFunction:v79 fromLineNumber:2751];

              v80 = PLLogCommon();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
              {
                __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
              }
            }
          }

          [array addObject:{&unk_2871457D8, v69}];
        }
      }

      if ([v17 isEqualToString:@"com.apple.findmy"])
      {
        v92 = +[PLBatteryBreakdownService defaults];
        v93 = [v92 objectForKeyedSubscript:@"energyRatioIT"];
        [v93 doubleValue];
        v95 = v94;

        v96 = [&unk_28714C590 objectAtIndexedSubscript:59];
        v97 = [entryCopy objectForKeyedSubscript:v96];
        [v97 doubleValue];
        v99 = v98;

        if (v99 / v20 > v95 && ([array containsObject:{&unk_2871457D8, v99 / v20}] & 1) == 0)
        {
          [array addObject:&unk_2871457D8];
        }

        v100 = PLLogCommon();
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
        }
      }

      v218[0] = MEMORY[0x277D85DD0];
      v218[1] = 3221225472;
      v218[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972;
      v218[3] = &unk_279A5BDC0;
      v218[4] = self;
      v101 = v218;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1971 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_1971, v101);
      }

      v102 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey;
      v103 = [&unk_28714C5A8 objectAtIndexedSubscript:48];
      v104 = [entryCopy objectForKeyedSubscript:v103];
      [v104 doubleValue];
      v106 = v105;

      v107 = [&unk_28714C5C0 objectAtIndexedSubscript:12];
      v108 = [entryCopy objectForKeyedSubscript:v107];
      [v108 doubleValue];
      v110 = v106 + v109;

      v111 = [&unk_28714C5D8 objectAtIndexedSubscript:13];
      v112 = [entryCopy objectForKeyedSubscript:v111];
      [v112 doubleValue];
      v114 = v110 + v113;

      v115 = [&unk_28714C5F0 objectAtIndexedSubscript:15];
      v116 = [&unk_28714C608 objectAtIndexedSubscript:2];
      v117 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v115 withRootNodeName:v116];

      v118 = [entryCopy objectForKeyedSubscript:v117];
      [v118 doubleValue];
      v120 = v114 + v119;

      v121 = [&unk_28714C620 objectAtIndexedSubscript:15];
      v122 = [&unk_28714C638 objectAtIndexedSubscript:7];
      v123 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v121 withRootNodeName:v122];

      v124 = [entryCopy objectForKeyedSubscript:v123];
      [v124 doubleValue];
      v126 = v120 + v125;

      v127 = [&unk_28714C650 objectAtIndexedSubscript:15];
      v128 = [&unk_28714C668 objectAtIndexedSubscript:9];
      v129 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v127 withRootNodeName:v128];

      v130 = [entryCopy objectForKeyedSubscript:v129];
      [v130 doubleValue];
      v132 = v126 + v131;

      v133 = [&unk_28714C680 objectAtIndexedSubscript:15];
      v134 = [&unk_28714C698 objectAtIndexedSubscript:52];
      v135 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v133 withRootNodeName:v134];

      v136 = [entryCopy objectForKeyedSubscript:v135];
      [v136 doubleValue];
      v138 = v132 + v137;

      v139 = [&unk_28714C6B0 objectAtIndexedSubscript:15];
      v140 = [&unk_28714C6C8 objectAtIndexedSubscript:54];
      v141 = [PLBatteryBreakdownService rootNodeQualificationNameWithQualificationName:v139 withRootNodeName:v140];

      v142 = [entryCopy objectForKeyedSubscript:v141];
      [v142 doubleValue];
      v144 = v138 + v143;

      v145 = PLLogCommon();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
      }

      if (v144 / v20 > v102 && [objc_opt_class() canSetQualifier:3 forBundleID:v17])
      {
        v217[0] = MEMORY[0x277D85DD0];
        v217[1] = 3221225472;
        v217[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014;
        v217[3] = &unk_279A5BDC0;
        v217[4] = self;
        v146 = v217;
        if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2012 != -1)
        {
          dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2012, v146);
        }

        v147 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2013;
        v148 = [&unk_28714C6E0 objectAtIndexedSubscript:15];
        v149 = [entryCopy objectForKeyedSubscript:v148];
        [v149 doubleValue];
        v151 = v150;

        v152 = PLLogCommon();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryBreakdownService qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:];
        }

        if (v151 / v66 > v147 && [array containsObject:{&unk_2871457D8, v151 / v66}])
        {
          [array removeObject:&unk_2871457D8];
          v153 = &unk_2871457F0;
        }

        else
        {
          v153 = &unk_287145808;
        }

        [array addObject:v153];
      }

      v216[0] = MEMORY[0x277D85DD0];
      v216[1] = 3221225472;
      v216[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024;
      v216[3] = &unk_279A5BDC0;
      v216[4] = self;
      v154 = v216;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2022 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2022, v154);
      }

      v155 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2023;
      v215[0] = MEMORY[0x277D85DD0];
      v215[1] = 3221225472;
      v215[2] = __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2;
      v215[3] = &unk_279A5BDC0;
      v215[4] = self;
      v156 = v215;
      if (qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2025 != -1)
      {
        dispatch_once(&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__defaultOnce_2025, v156);
      }

      v157 = *&qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2026;
      v158 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];

      if (v158 && [objc_opt_class() canSetQualifier:9 forBundleID:v17])
      {
        v159 = [entryCopy objectForKeyedSubscript:@"NotificationInfo"];
        [v159 notificationEnergy];
        v161 = v160;
        +[PLUtilities defaultBatteryEnergyCapacity];
        v163 = v161 * 100.0 / v162;
        v164 = PLLogCommon();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v224 = v17;
          v225 = 2112;
          v226 = v159;
          v227 = 2048;
          v228 = v161;
          v229 = 2048;
          v230 = v163;
          _os_log_debug_impl(&dword_25EE51000, v164, OS_LOG_TYPE_DEBUG, "%@ notificationInfo: %@, energy: %.3f, batteryPercent %.3f", buf, 0x2Au);
        }

        if (v161 / v20 > v155 || v163 > v157)
        {
          [array addObject:{&unk_287145820, v161 / v20}];
        }
      }

      v165 = [&unk_28714C6F8 objectAtIndexedSubscript:3];
      v166 = [entryCopy objectForKeyedSubscript:v165];
      [v166 doubleValue];
      v168 = v167;

      v169 = v168 / v20;
      if (v168 / v20 > 0.33 && [objc_opt_class() canSetQualifier:4 forBundleID:v17])
      {
        [array addObject:&unk_287145838];
      }

      v170 = [&unk_28714C710 objectAtIndexedSubscript:{4, v169}];
      v171 = [entryCopy objectForKeyedSubscript:v170];
      [v171 doubleValue];
      v173 = v172;

      v174 = v173 / v20;
      if (v173 / v20 > 0.33 && [objc_opt_class() canSetQualifier:5 forBundleID:v17])
      {
        [array addObject:&unk_287145850];
      }

      v175 = [&unk_28714C728 objectAtIndexedSubscript:{14, v174}];
      v176 = [entryCopy objectForKeyedSubscript:v175];
      [v176 doubleValue];
      v178 = v177;

      v179 = [&unk_28714C740 objectAtIndexedSubscript:15];
      v180 = [entryCopy objectForKeyedSubscript:v179];
      [v180 doubleValue];
      v182 = v181;

      v183 = [&unk_28714C758 objectAtIndexedSubscript:55];
      v184 = [entryCopy objectForKeyedSubscript:v183];
      [v184 doubleValue];
      v186 = v185;

      if ((v178 + v182 + v186) / v20 > 0.03 && [objc_opt_class() canSetQualifier:7 forBundleID:v17])
      {
        [array addObject:&unk_287145868];
      }

      v187 = [entryCopy objectForKeyedSubscript:@"WatchEnergy"];
      [v187 doubleValue];
      v189 = v188;

      if ([(PLBatteryBreakdownService *)self showGizmoQualifier])
      {
        v190 = v189 / v20;
        if (v189 / v20 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:10 forBundleID:v17])
          {
            [array addObject:&unk_287145880];
          }
        }
      }

      v191 = [entryCopy objectForKeyedSubscript:{@"ChronoWidgetEnergy", v190}];
      [v191 doubleValue];
      v193 = v192;

      v194 = v193 / v20;
      if (v193 / v20 > 0.33 && [objc_opt_class() canSetQualifier:12 forBundleID:v17])
      {
        [array addObject:&unk_287145898];
      }

      v195 = [&unk_28714C770 objectAtIndexedSubscript:{10, v194}];
      v196 = [entryCopy objectForKeyedSubscript:v195];
      [v196 doubleValue];
      v198 = v197;

      v199 = v198 / v20;
      if (v198 / v20 > 0.33 && [objc_opt_class() canSetQualifier:9 forBundleID:v17])
      {
        [array addObject:&unk_287145820];
      }

      v200 = [entryCopy objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v199}];
      v201 = [v200 isEqualToString:@"com.apple.Home"];

      if (v201)
      {
        v202 = [entryCopy objectForKeyedSubscript:@"HomeKitEnergy"];
        [v202 doubleValue];
        v204 = v203;

        if (v204 / v20 > 0.33)
        {
          if ([objc_opt_class() canSetQualifier:13 forBundleID:v17])
          {
            [array addObject:&unk_2871458B0];
          }
        }
      }

      v205 = [objc_opt_class() combineQualifiers:array];
      if ([array containsObject:&unk_287145868])
      {
        v206 = [array containsObject:&unk_2871457D8];
        if (v67 > 0.5 && v206 && ([v205 containsObject:&unk_2871457A8] & 1) == 0)
        {
          v207 = [v205 arrayByAddingObject:&unk_2871457D8];

          v205 = v207;
        }
      }

      array2 = [MEMORY[0x277CBEB18] array];
      if ([v205 containsObject:&unk_2871457A8])
      {
        [array2 addObject:&unk_2871457A8];
      }

      if ([v205 count])
      {
        v209 = 0;
        do
        {
          v210 = [v205 objectAtIndexedSubscript:v209];
          intValue = [v210 intValue];

          if (intValue != 11)
          {
            v212 = [v205 objectAtIndexedSubscript:v209];
            [array2 addObject:v212];
          }

          if ([array2 count] == 2)
          {
            break;
          }

          ++v209;
        }

        while ([v205 count] > v209);
      }

      v36 = array2;
    }
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  v213 = *MEMORY[0x277D85DE8];

  return v36;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled = result;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1939(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1938 = result;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1956(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1955 = result;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1964(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__classDebugEnabled_1963 = result;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_1972(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioLocation"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey = v2;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2014(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioBackgroundLocation"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2013 = v2;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2024(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyRatioNotifications"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2023 = v2;
  return result;
}

uint64_t __81__PLBatteryBreakdownService_qualifiersWithEnergyEntry_bucketSize_andTotalEnergy___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) defaultDoubleForKey:@"energyAbsoluteNotifications"];
  qualifiersWithEnergyEntry_bucketSize_andTotalEnergy__objectForKey_2026 = v2;
  return result;
}

+ (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d
{
  dCopy = d;
  v6 = [dCopy isEqualToString:@"com.apple.mobilephone"];
  if (qualifier == 2 && (v6 & 1) != 0)
  {
    goto LABEL_9;
  }

  v7 = [dCopy isEqualToString:@"com.apple.facetime"];
  if (qualifier == 2 && (v7 & 1) != 0)
  {
    goto LABEL_9;
  }

  v8 = [dCopy isEqualToString:@"HLS"];
  if (qualifier == 2 && (v8 & 1) != 0)
  {
    goto LABEL_9;
  }

  v9 = [dCopy isEqualToString:@"Flashlight"];
  if (qualifier == 2 && (v9 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (([dCopy isEqualToString:@"Backup & Restore"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Backup") & 1) == 0 && !objc_msgSend(dCopy, "isEqualToString:", @"Restore"))
  {
    v13 = [dCopy isEqualToString:@"com.apple.mobilesafari"];
    if (qualifier != 2 || (v13 & 1) == 0)
    {
      v14 = [dCopy isEqualToString:@"Hotspot"];
      if (qualifier != 2 || (v14 & 1) == 0)
      {
        v15 = [dCopy isEqualToString:@"com.apple.Maps"];
        if (qualifier != 2 || (v15 & 1) == 0)
        {
          v16 = [dCopy isEqualToString:@"Siri"];
          if ((qualifier != 2 || (v16 & 1) == 0) && ([dCopy isEqualToString:@"Flashlight"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"PowerOutAccessories") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedApp") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppClip") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"DeletedAppAndAppClip") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"EN") & 1) == 0)
          {
            if ([dCopy isEqualToString:@"com.apple.Bridge"])
            {
              if (qualifier < 0xB)
              {
                v10 = 0x2FBu >> qualifier;
                goto LABEL_10;
              }

LABEL_41:
              LOBYTE(v10) = 1;
              goto LABEL_10;
            }

            v17 = [dCopy isEqualToString:@"com.apple.camera"];
            if ((qualifier != 10 || (v17 & 1) == 0) && ([dCopy isEqualToString:@"PoorCellCondition"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
            {
              goto LABEL_41;
            }
          }
        }
      }
    }

LABEL_9:
    LOBYTE(v10) = 0;
    goto LABEL_10;
  }

  LOBYTE(v10) = qualifier != 7 && qualifier != 2;
LABEL_10:

  return v10 & 1;
}

+ (id)combineQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  v4 = qualifiersCopy;
  if (qualifiersCopy && [qualifiersCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145868))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871457A8))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457F0] && objc_msgSend(v5, "containsObject:", &unk_2871457A8))
    {
      [v5 removeObject:&unk_2871457F0];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871457C0))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_287145868] && objc_msgSend(v5, "containsObject:", &unk_287145838))
    {
      [v5 removeObject:&unk_287145868];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145850))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_287145850] && objc_msgSend(v5, "containsObject:", &unk_287145838))
    {
      [v5 removeObject:&unk_287145850];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145880))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_2871458B0))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    if ([v5 containsObject:&unk_2871457D8] && objc_msgSend(v5, "containsObject:", &unk_287145820))
    {
      [v5 removeObject:&unk_2871457D8];
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (BOOL)shouldShowBatteryBreakdownWithTotalSumEnergy:(double)energy withtotalSumEnergyRatioCutOff:(double)off
{
  v7 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLBatteryAgent" withType:*MEMORY[0x277D3F5C8] withName:@"Battery"];
  storage = [(PLOperator *)self storage];
  v9 = [storage lastEntryForKey:v7];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"DesignCapacity"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v9 objectForKeyedSubscript:@"Voltage"];
    [v13 doubleValue];
    v15 = v14 / 1000.0;

    v16 = v12 * v15 * off < energy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)wasGizmoConnectedInRange:(_PLTimeIntervalRange)range
{
  location = range.location;
  v4 = range.location + range.length;
  v5 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLIdentityServicesAgent" withType:*MEMORY[0x277D3F5D0] withName:@"LocalLinkType"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from %@ where linkType=1 and timestamp>=%f and timestamp<=%f limit 1", v5, *&location, *&v4];
  mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
  storage = [mEMORY[0x277D3F2A0] storage];
  v9 = [storage entriesForKey:v5 withQuery:v6];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__PLBatteryBreakdownService_wasGizmoConnectedInRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v10;
    if (wasGizmoConnectedInRange__defaultOnce != -1)
    {
      dispatch_once(&wasGizmoConnectedInRange__defaultOnce, block);
    }

    if (wasGizmoConnectedInRange__classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query Result %@", v9];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryBreakdownService.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryBreakdownService wasGizmoConnectedInRange:]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:3064];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v17 = v9 && [v9 count];

  return v17;
}

uint64_t __54__PLBatteryBreakdownService_wasGizmoConnectedInRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  wasGizmoConnectedInRange__classDebugEnabled = result;
  return result;
}

- (BOOL)showRootNodesInInternal
{
  if (showRootNodesInInternal_onceToken != -1)
  {
    [PLBatteryBreakdownService showRootNodesInInternal];
  }

  v3 = showRootNodesInInternal_val;
  if (showRootNodesInInternal_val)
  {

    LOBYTE(v3) = [v3 BOOLValue];
  }

  return v3;
}

uint64_t __52__PLBatteryBreakdownService_showRootNodesInInternal__block_invoke()
{
  v0 = *MEMORY[0x277CBF040];
  v1 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  showRootNodesInInternal_val = _CFPreferencesCopyValueWithContainer();

  return MEMORY[0x2821F96F8]();
}

- (void)batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)batteryBreakdownWithTimeRange:withDataRange:withEntryTimeInterval:withQueryType:withTotalSumEnergyRatioCutOff:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__PLBatteryBreakdownService_addNotificationValues_withRange_withQueryType___block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)filterEnergyEntriesBasedOnTime:(_DWORD *)a1 withQueryType:(void *)a2 .cold.1(_DWORD *a1, void *a2)
{
  *a1 = 138412290;
  *a2 = @"com.apple.findmy";
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)checkHomeKitEvents
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Count of HomeKit events: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mapDeletedAppsWithEnergyEntries:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Display Name for Deleted entry: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)mapDeletedAppsWithEnergyEntries:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "IT Qualifier: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)qualifiersWithEnergyEntry:bucketSize:andTotalEnergy:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end