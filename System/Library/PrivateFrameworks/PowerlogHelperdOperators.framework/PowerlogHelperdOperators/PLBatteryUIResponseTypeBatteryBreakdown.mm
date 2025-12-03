@interface PLBatteryUIResponseTypeBatteryBreakdown
- (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d;
- (BOOL)filterFgBg:(id)bg filterArray:(id)array;
- (BOOL)gizmoConnectedInRange:(_PLTimeIntervalRange)range;
- (BOOL)hasHomeKitEvents;
- (BOOL)shouldShowBreakdown:(id)breakdown;
- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range;
- (_PLTimeIntervalRange)getDataRange:(id)range;
- (double)getDataDurationFromRange:(_PLTimeIntervalRange)range;
- (double)getEnergyToRemoveForSlopAdjustment:(id)adjustment withEnergyKey:(id)key forBucket:(id)bucket;
- (double)getNonAppRuntimesWith:(id)with identificationKey:(id)key andRange:(_PLTimeIntervalRange)range withNow:(id)now;
- (id)buildBucketWithEnergyEntries:(id)entries andRange:(_PLTimeIntervalRange)range;
- (id)buildEnergyEntriesWithRootNodes:(id)nodes andQualificationNodes:(id)qualificationNodes andRange:(_PLTimeIntervalRange)range;
- (id)combineQualifiers:(id)qualifiers;
- (id)getAppRuntimesInRange:(_PLTimeIntervalRange)range;
- (id)getBundleIDToDisplayNameMap;
- (id)getBundleIDToReplacementBundleIDMap;
- (id)getBundleIDsToEnergyKeyForSlopAdjustmentMap;
- (id)getDeletedAppBundleIDs;
- (id)getDeletedAppClipBundleIDs;
- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in;
- (id)getEnergyEntry:(id)entry forBundleID:(id)d;
- (id)getInstalledPluginEntries;
- (id)getLastBatteryEntry;
- (id)getNodeEntriesForEntryKey:(id)key withRange:(_PLTimeIntervalRange)range andTimeInterval:(double)interval;
- (id)getNodeIDToNodeNameMap;
- (id)getNonAppRuntimesInRange:(_PLTimeIntervalRange)range withNow:(id)now;
- (id)getNotificationEntriesInRange:(_PLTimeIntervalRange)range;
- (id)getPluginBundleIDToEntryMap;
- (id)getQualificationNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval;
- (id)getRootNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval;
- (id)getRootNodeIDToRootNodeEnergyKeys;
- (id)getWebAppBundleIDs;
- (id)getWidgetUpdateTypeToCount:(id)count inRange:(_PLTimeIntervalRange)range;
- (id)ongoingUpdateRestoreEntryInitializer;
- (id)processAppTimeEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array;
- (id)processNotificationEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array;
- (id)processQualificationNodes:(id)nodes inRange:(_PLTimeIntervalRange)range;
- (id)processRootNodes:(id)nodes inRange:(_PLTimeIntervalRange)range;
- (id)result;
- (id)stringifyKeysForDict:(id)dict;
- (int)computeNumberOfBuckets;
- (int)getBatteryMaximumCapacityPercentWithError:(id *)error;
- (signed)getEnergyMetricBucketForRootNodeID:(id)d;
- (signed)getWidgetTypeForEnergyEntry:(id)entry;
- (signed)getWidgetTypeForHostName:(id)name;
- (void)addEntryTypes:(id)types;
- (void)addErrorCode:(id)code;
- (void)addQualifiers:(id)qualifiers;
- (void)addTotalEnergy:(id)energy;
- (void)addTotals:(id)totals;
- (void)adjustEnergyValues:(id)values;
- (void)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries;
- (void)adjustRuntimes:(id)runtimes;
- (void)applyDisplayNameTransformation:(id)transformation;
- (void)applyDynamicNameTransformation:(id)transformation;
- (void)applySlopAdjustment:(id)adjustment;
- (void)applyStaticNameTransformation:(id)transformation;
- (void)buildBucketsForRange:(_PLTimeIntervalRange)range;
- (void)buildUtilityCache;
- (void)cleanEntries:(id)entries;
- (void)coalesce;
- (void)collapseEnergyEntries:(id)entries;
- (void)configure:(id)configure;
- (void)createPerAppBreakdown:(id)breakdown;
- (void)enumerateBucketsUsingBlock:(id)block;
- (void)filterEnergyEntries:(id)entries;
- (void)filterEnergyEntriesWithRuntimes:(id)runtimes;
- (void)getStaticData;
- (void)identifyBucket:(id)bucket withRange:(_PLTimeIntervalRange)range;
- (void)initializeBucketsWithRange:(_PLTimeIntervalRange)range;
- (void)normalizeBucket:(id)bucket to:(int)to;
- (void)normalizeForBucket:(id)bucket with:(int)with;
- (void)ongoingUpdateRestoreTransformations:(id)transformations;
- (void)prepareBucketsWithRange:(_PLTimeIntervalRange)range;
- (void)reaccountBackupRestore:(id)restore;
- (void)reaccountExchangeEntries:(id)entries;
- (void)transformCloudDocs:(id)docs;
- (void)transformDeletedApps:(id)apps;
- (void)transformGizmoDaemons:(id)daemons;
- (void)transformPlugins:(id)plugins withBucket:(id)bucket;
@end

@implementation PLBatteryUIResponseTypeBatteryBreakdown

- (id)getRootNodeIDToRootNodeEnergyKeys
{
  v23[17] = *MEMORY[0x277D85DE8];
  v21 = [&unk_28714BD50 objectAtIndexedSubscript:2];
  v22[0] = v21;
  v23[0] = @"PLBatteryUIAppCPUEnergyKey";
  v20 = [&unk_28714BD68 objectAtIndexedSubscript:4];
  v22[1] = v20;
  v23[1] = @"PLBatteryUIAppVENCEnergyKey";
  v19 = [&unk_28714BD80 objectAtIndexedSubscript:5];
  v22[2] = v19;
  v23[2] = @"PLBatteryUIAppVDECEnergyKey";
  v18 = [&unk_28714BD98 objectAtIndexedSubscript:6];
  v22[3] = v18;
  v23[3] = @"PLBatteryUIAppISPEnergyKey";
  v17 = [&unk_28714BDB0 objectAtIndexedSubscript:7];
  v22[4] = v17;
  v23[4] = @"PLBatteryUIAppRestOfSOCEnergyKey";
  v16 = [&unk_28714BDC8 objectAtIndexedSubscript:8];
  v22[5] = v16;
  v23[5] = @"PLBatteryUIAppGPUEnergyKey";
  v15 = [&unk_28714BDE0 objectAtIndexedSubscript:9];
  v22[6] = v15;
  v23[6] = @"PLBatteryUIAppDRAMEnergyKey";
  v14 = [&unk_28714BDF8 objectAtIndexedSubscript:10];
  v22[7] = v14;
  v23[7] = @"PLBatteryUIAppDisplayEnergyKey";
  v2 = [&unk_28714BE10 objectAtIndexedSubscript:11];
  v22[8] = v2;
  v23[8] = @"PLBatteryUIAppWIFIEnergyKey";
  v3 = [&unk_28714BE28 objectAtIndexedSubscript:15];
  v22[9] = v3;
  v23[9] = @"PLBatteryUIAppAUDIOEnergyKey";
  v4 = [&unk_28714BE40 objectAtIndexedSubscript:37];
  v22[10] = v4;
  v23[10] = @"PLBatteryUIAppBBEnergyKey";
  v5 = [&unk_28714BE58 objectAtIndexedSubscript:48];
  v22[11] = v5;
  v23[11] = @"BLMEnergyGPS";
  v6 = [&unk_28714BE70 objectAtIndexedSubscript:12];
  v22[12] = v6;
  v23[12] = @"PLBatteryUIAppWifiLocationEnergyKey";
  v7 = [&unk_28714BE88 objectAtIndexedSubscript:13];
  v22[13] = v7;
  v23[13] = @"PLBatteryUIAppWifiPipelineEnergyKey";
  v8 = [&unk_28714BEA0 objectAtIndexedSubscript:50];
  v22[14] = v8;
  v23[14] = @"PLBatteryUIAppBluetoothEnergyKey";
  v9 = [&unk_28714BEB8 objectAtIndexedSubscript:20];
  v22[15] = v9;
  v23[15] = @"PLBatteryUIAppAccessoryEnergyKey";
  v10 = [&unk_28714BED0 objectAtIndexedSubscript:16];
  v22[16] = v10;
  v23[16] = @"PLBatteryUIAppNfcEnergyKey";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:17];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (signed)getEnergyMetricBucketForRootNodeID:(id)d
{
  v3 = [d intValue] - 2;
  if (v3 > 0x3C)
  {
    return 0;
  }

  else
  {
    return word_25F023A38[v3];
  }
}

- (_PLTimeIntervalRange)getDataRange:(id)range
{
  v41 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  v5 = *MEMORY[0x277D3F5B8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v38 = [MEMORY[0x277D3F128] entryKeyForType:v5 andName:*MEMORY[0x277D3F318]];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v9 = [storage firstEntryForKey:v6];

  if (v9)
  {
    entryDate = [v9 entryDate];
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:];
    }
  }

  else
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:v12];
    }

    entryDate = rangeCopy;
  }

  responderService2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage2 = [responderService2 storage];
  v15 = [storage2 firstEntryForKey:v38];

  if (v15)
  {
    entryDate2 = [v15 entryDate];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:];
    }
  }

  else
  {
    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getDataRange:v18];
    }

    entryDate2 = rangeCopy;
  }

  v19 = [entryDate2 laterDate:entryDate];
  v20 = rangeCopy;
  [v19 timeIntervalSince1970];
  v22 = v21;
  [v20 timeIntervalSince1970];
  v24 = v23;

  v25 = v24 - v22;
  v26 = PLLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = MEMORY[0x277CCACA8];
    v37 = v9;
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
    v28 = v15;
    v29 = entryDate;
    v31 = v30 = v6;
    v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22 + v25];
    v33 = [v27 stringWithFormat:@"Start: %@, End %@", v31, v32];

    v9 = v37;
    v6 = v30;
    entryDate = v29;
    v15 = v28;
    *buf = 138412290;
    v40 = v33;
    _os_log_impl(&dword_25EE51000, v26, OS_LOG_TYPE_INFO, "dataRange: %@", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
  v35 = v22;
  v36 = v25;
  result.length = v36;
  result.location = v35;
  return result;
}

- (double)getDataDurationFromRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v5 = MEMORY[0x277CBEAA8];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  convertFromMonotonicToSystem = [v6 convertFromMonotonicToSystem];
  v8 = [v5 nearestMidnightBeforeDate:convertFromMonotonicToSystem];

  v9 = MEMORY[0x277CBEAA8];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
  convertFromMonotonicToSystem2 = [v10 convertFromMonotonicToSystem];
  v12 = [v9 nearestMidnightAfterDate:convertFromMonotonicToSystem2];

  [v12 timeIntervalSinceDate:v8];
  v14 = v13;

  return v14;
}

- (id)getNodeEntriesForEntryKey:(id)key withRange:(_PLTimeIntervalRange)range andTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  keyCopy = key;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v11 = MEMORY[0x277CCACA8];
  v12 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  v14 = [v11 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v12, entryKey, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ > %d", *MEMORY[0x277D3F320], 100];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM '%@' WHERE (timestamp>%f AND timestamp<%f AND timeInterval=%f AND (%@) AND (%@))", keyCopy, *&location, location + length, *&interval, v14, v15];;
  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getNodeEntriesForEntryKey:withRange:andTimeInterval:];
  }

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v20 = [storage entriesForKey:keyCopy withQuery:v16];

  return v20;
}

- (id)getAppRuntimesInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v7 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"AppRunTime"];
  v8 = [storage aggregateEntriesForKey:v7 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  return v8;
}

- (id)getNonAppRuntimesInRange:(_PLTimeIntervalRange)range withNow:(id)now
{
  length = range.length;
  location = range.location;
  v17[3] = *MEMORY[0x277D85DE8];
  nowCopy = now;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  if (responderService)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNonAppRuntimesWith:@"PLCameraAgent_EventForward_Torch" identificationKey:@"Level" andRange:nowCopy withNow:location, length];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  array = [MEMORY[0x277CBEB18] array];
  if (v10 > 0.0)
  {
    v16[0] = @"BundleID";
    v16[1] = @"ScreenOnTime";
    v17[0] = @"Flashlight";
    v17[1] = &unk_2871456D0;
    v16[2] = @"BackgroundTime";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    v17[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

    [array addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (double)getNonAppRuntimesWith:(id)with identificationKey:(id)key andRange:(_PLTimeIntervalRange)range withNow:(id)now
{
  length = range.length;
  location = range.location;
  v54[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  keyCopy = key;
  nowCopy = now;
  v13 = location + 1800.0;
  v14 = objc_alloc(MEMORY[0x277D3F260]);
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v16 = [v14 initWithKey:@"timestamp" withValue:v15 withComparisonOperation:5];

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v46 = v16;
  v54[0] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  v20 = [storage lastEntryForKey:withCopy withComparisons:v19 isSingleton:0];

  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:keyCopy];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      v23 = v13;
    }

    else
    {
      v23 = -1.0;
    }
  }

  else
  {
    v23 = -1.0;
  }

  responderService2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage2 = [responderService2 storage];
  v48 = withCopy;
  v26 = [storage2 entriesForKey:withCopy inTimeRange:0 withFilters:{v13, length}];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  reverseObjectEnumerator = [v26 reverseObjectEnumerator];
  v28 = [reverseObjectEnumerator countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v50;
    v31 = 0.0;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v33 = *(*(&v49 + 1) + 8 * i);
        v34 = [v33 objectForKeyedSubscript:keyCopy];
        bOOLValue2 = [v34 BOOLValue];

        if (bOOLValue2)
        {
          if (v23 == -1.0)
          {
            entryDate = [v33 entryDate];
            [entryDate timeIntervalSince1970];
            v23 = v37;
          }
        }

        else
        {
          if (v23 != -1.0)
          {
            entryDate2 = [v33 entryDate];
            [entryDate2 timeIntervalSince1970];
            v40 = v39 - v23;

            v31 = v31 + v40;
          }

          v23 = -1.0;
        }
      }

      v29 = [reverseObjectEnumerator countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v29);
  }

  else
  {
    v31 = 0.0;
  }

  if (v23 == -1.0)
  {
    v41 = nowCopy;
    v43 = v48;
  }

  else
  {
    v41 = nowCopy;
    [nowCopy timeIntervalSince1970];
    if (v42 >= length + v13)
    {
      v42 = length + v13;
    }

    v31 = v31 + v42 - v23;
    v43 = v48;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)getDeletedAppBundleIDs
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "Searching for deleted app names", buf, 2u);
  }

  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:1];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v36[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v25 = v4;
  v9 = [storage entriesForKey:v4 withComparisons:v8];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"AppBundleId"];
        v18 = [v16 objectForKeyedSubscript:@"AppIsClip"];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v18 intValue];
          *buf = 138412546;
          v32 = v17;
          v33 = 1024;
          v34 = intValue;
          _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
        }

        if (v17 && ([v18 BOOLValue] & 1) == 0)
        {
          [v26 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
  }

  v22 = [v26 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)getDeletedAppClipBundleIDs
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_DEFAULT, "Searching for deleted app clip names", buf, 2u);
  }

  v4 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:1];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v36[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v25 = v4;
  v9 = [storage entriesForKey:v4 withComparisons:v8];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
  }

  v26 = [MEMORY[0x277CBEB58] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"AppBundleId"];
        v18 = [v16 objectForKeyedSubscript:@"AppIsClip"];
        v19 = PLLogCommon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          intValue = [v18 intValue];
          *buf = 138412546;
          v32 = v17;
          v33 = 1024;
          v34 = intValue;
          _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
        }

        if (v17 && [v18 BOOLValue])
        {
          [v26 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v13);
  }

  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
  }

  v22 = [v26 copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)getWebAppBundleIDs
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
  v4 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v7 = [storage entriesForKey:v3];

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"identifier"];

        if (v13)
        {
          v14 = [v12 objectForKeyedSubscript:@"identifier"];
          [v4 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)getBundleIDToDisplayNameMap
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:0];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v54 = v4;
  v77[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
  v55 = v3;
  v8 = [storage entriesForKey:v3 withComparisons:v7];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v65 objects:v76 count:16];
  v12 = 0x277D3F000uLL;
  v56 = v10;
  if (v11)
  {
    v13 = v11;
    v14 = *v66;
    do
    {
      v15 = 0;
      do
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v65 + 1) + 8 * v15);
        v17 = [v16 objectForKeyedSubscript:@"AppType"];
        intValue = [v17 intValue];

        if (intValue == 101 || ([v16 objectForKeyedSubscript:@"AppBundleId"], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v19, v20))
        {
          v21 = [v16 objectForKeyedSubscript:@"AppBundleId"];
          v22 = [v16 objectForKeyedSubscript:@"AppName"];
          if ([*(v12 + 384) debugEnabled])
          {
            v23 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v23;
            if (getBundleIDToDisplayNameMap_defaultOnce != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce, block);
            }

            if (getBundleIDToDisplayNameMap_classDebugEnabled == 1)
            {
              v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v21, v22];
              v25 = MEMORY[0x277D3F178];
              v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
              lastPathComponent = [v26 lastPathComponent];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap]"];
              [v25 logMessage:v24 fromFile:lastPathComponent fromFunction:v28 fromLineNumber:338];

              v29 = PLLogCommon();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v75 = v24;
                _os_log_debug_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v10 = v56;
              v12 = 0x277D3F000;
            }
          }

          [dictionary setObject:v22 forKeyedSubscript:v21];
        }

        else
        {
          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v72 getBundleIDToDisplayNameMap];
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v13);
  }

  v30 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v31 = [v30 countByEnumeratingWithState:&v60 objects:v71 count:16];
  v32 = 0x279A5A000uLL;
  if (v31)
  {
    v33 = v31;
    v34 = *v61;
    v57 = v30;
    do
    {
      v35 = 0;
      do
      {
        if (*v61 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v60 + 1) + 8 * v35);
        if (([v36 mayBeBUIVisible] & 1) == 0)
        {
          bundleIdentifier = [v36 bundleIdentifier];
          v38 = [bundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

          if (!v38)
          {
            bundleIdentifier2 = PLLogCommon();
            if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_DEBUG))
            {
              [(PLBatteryUIResponseTypeBatteryBreakdown(Utilities) *)&v69 getBundleIDToDisplayNameMap];
            }

            goto LABEL_42;
          }
        }

        if (([*(v32 + 3200) hasScreenPresence:v36] & 1) != 0 || (objc_msgSend(v36, "bundleIdentifier"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v39, v40))
        {
          bundleIdentifier2 = [v36 bundleIdentifier];
          v42 = [dictionary objectForKeyedSubscript:bundleIdentifier2];

          if (!v42)
          {
            localizedName = [v36 localizedName];
            if ([MEMORY[0x277D3F180] debugEnabled])
            {
              v44 = objc_opt_class();
              v59[0] = MEMORY[0x277D85DD0];
              v59[1] = 3221225472;
              v59[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke_401;
              v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v59[4] = v44;
              if (getBundleIDToDisplayNameMap_defaultOnce_399 != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMap_defaultOnce_399, v59);
              }

              if (getBundleIDToDisplayNameMap_classDebugEnabled_400 == 1)
              {
                v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier2, localizedName];
                v46 = MEMORY[0x277D3F178];
                v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
                lastPathComponent2 = [v47 lastPathComponent];
                v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getBundleIDToDisplayNameMap]"];
                [v46 logMessage:v45 fromFile:lastPathComponent2 fromFunction:v49 fromLineNumber:356];

                v50 = PLLogCommon();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v75 = v45;
                  _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v32 = 0x279A5A000;
                v30 = v57;
              }
            }

            [dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier2];
          }

LABEL_42:
        }

        ++v35;
      }

      while (v33 != v35);
      v33 = [v30 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v33);
  }

  [dictionary setObject:@"Apple Watch" forKeyedSubscript:@"com.apple.Bridge"];
  v51 = [dictionary copy];

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

uint64_t __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled = result;
  return result;
}

uint64_t __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getBundleIDToDisplayNameMap__block_invoke_401(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMap_classDebugEnabled_400 = result;
  return result;
}

- (id)getNodeIDToNodeNameMap
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ NOT NULL) AND (%@ NOT LIKE '%%%@%%') AND (%@ NOT LIKE '%%%@%%')", *MEMORY[0x277D3F3E0], *MEMORY[0x277D3F3E0], @"null", *MEMORY[0x277D3F3E0], @"unknown"];
  v4 = MEMORY[0x277CCACA8];
  v5 = *MEMORY[0x277D3F300];
  entryKey = [MEMORY[0x277D3F0C8] entryKey];
  v25 = v3;
  v7 = [v4 stringWithFormat:@"%@ IN (SELECT ID FROM '%@' WHERE %@)", v5, entryKey, v3];

  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v10 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];
  v31 = @"WHERE";
  v32[0] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [storage entriesForKey:v10 withProperties:v11];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        name = [v19 name];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v19, "entryID")}];
        [dictionary setObject:name forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  v22 = [dictionary copy];
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)getPluginBundleIDToEntryMap
{
  v73[1] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
  v4 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871456D0 withComparisonOperation:0];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v50 = v4;
  v73[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
  v51 = v3;
  v8 = [storage entriesForKey:v3 withComparisons:v7];

  v9 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = objc_opt_class();
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke;
    v68[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v68[4] = v10;
    if (getPluginBundleIDToEntryMap_defaultOnce != -1)
    {
      dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce, v68);
    }

    if (getPluginBundleIDToEntryMap_classDebugEnabled == 1)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v8];
      v12 = MEMORY[0x277D3F178];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
      lastPathComponent = [v13 lastPathComponent];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
      [v12 logMessage:v11 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:396];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      v9 = 0x277D3F000uLL;
    }
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v64 objects:v72 count:16];
  v53 = v17;
  selfCopy = self;
  if (v18)
  {
    v19 = v18;
    v20 = *v65;
    do
    {
      v21 = 0;
      do
      {
        if (*v65 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v64 + 1) + 8 * v21);
        v23 = [v22 objectForKeyedSubscript:@"PluginId"];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v24 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_422;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v24;
          if (getPluginBundleIDToEntryMap_defaultOnce_420 != -1)
          {
            dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce_420, block);
          }

          if (getPluginBundleIDToEntryMap_classDebugEnabled_421 == 1)
          {
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v23];
            v26 = MEMORY[0x277D3F178];
            v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
            lastPathComponent2 = [v27 lastPathComponent];
            v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
            [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:401];

            v30 = PLLogCommon();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v71 = v25;
              _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v17 = v53;
            self = selfCopy;
            v9 = 0x277D3F000uLL;
          }
        }

        [dictionary setObject:v22 forKeyedSubscript:v23];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v19);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  getInstalledPluginEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getInstalledPluginEntries];
  v32 = dictionary;
  v56 = [getInstalledPluginEntries countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v56)
  {
    v55 = *v60;
    v52 = getInstalledPluginEntries;
    do
    {
      v33 = 0;
      do
      {
        if (*v60 != v55)
        {
          objc_enumerationMutation(getInstalledPluginEntries);
        }

        v34 = *(*(&v59 + 1) + 8 * v33);
        v35 = [v34 objectForKeyedSubscript:@"PluginId"];
        v36 = [v34 objectForKeyedSubscript:@"PluginParentApp"];
        v37 = [v32 objectForKeyedSubscript:v35];

        if (!v37)
        {
          if ([*(v9 + 384) debugEnabled])
          {
            v38 = objc_opt_class();
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_431;
            v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v58[4] = v38;
            if (getPluginBundleIDToEntryMap_defaultOnce_429 != -1)
            {
              dispatch_once(&getPluginBundleIDToEntryMap_defaultOnce_429, v58);
            }

            if (getPluginBundleIDToEntryMap_classDebugEnabled_430 == 1)
            {
              v39 = MEMORY[0x277CCACA8];
              v40 = [v34 objectForKeyedSubscript:@"PluginExecutableName"];
              v41 = [v34 objectForKeyedSubscript:@"PluginType"];
              v42 = [v39 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v40, v35, v36, v41];

              v43 = MEMORY[0x277D3F178];
              v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
              lastPathComponent3 = [v44 lastPathComponent];
              v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) getPluginBundleIDToEntryMap]"];
              [v43 logMessage:v42 fromFile:lastPathComponent3 fromFunction:v46 fromLineNumber:412];

              v47 = PLLogCommon();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v71 = v42;
                _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v9 = 0x277D3F000;
              v32 = dictionary;
              getInstalledPluginEntries = v52;
            }
          }

          [v32 setObject:v34 forKeyedSubscript:v35];
        }

        ++v33;
      }

      while (v56 != v33);
      v56 = [getInstalledPluginEntries countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v56);
  }

  v48 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled = result;
  return result;
}

uint64_t __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_422(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled_421 = result;
  return result;
}

uint64_t __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getPluginBundleIDToEntryMap__block_invoke_431(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMap_classDebugEnabled_430 = result;
  return result;
}

- (id)getNotificationEntriesInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v7 = [storage aggregateEntriesForKey:@"PLSpringBoardAgent_Aggregate_SBNotifications_Aggregate" withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v8 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getNotificationEntriesInRange___block_invoke;
  v12[3] = &unk_279A5C278;
  v14 = location;
  v15 = length;
  v13 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];
  v10 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v9 withPrimaryKeys:&unk_28714BF00];

  return v10;
}

void __84__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getNotificationEntriesInRange___block_invoke(uint64_t a1, void *a2)
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

- (id)getInstalledPluginEntries
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v31 = *MEMORY[0x277D3F5E0];
    do
    {
      v6 = 0;
      v32 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        bundleIdentifier = [v7 bundleIdentifier];
        if (!bundleIdentifier)
        {
          goto LABEL_20;
        }

        v9 = bundleIdentifier;
        executableURL = [v7 executableURL];
        if (!executableURL)
        {
          goto LABEL_19;
        }

        v11 = executableURL;
        containingBundleRecord = [v7 containingBundleRecord];
        if (!containingBundleRecord)
        {
          goto LABEL_12;
        }

        containingBundleRecord2 = [v7 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
        if (!bundleIdentifier2)
        {
          v33 = 0;
LABEL_12:
          v15 = v5;
          v16 = v2;
          extensionPointRecord = [v7 extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          v14 = [identifier isEqualToString:@"com.apple.posterkit.provider"];

          if (!containingBundleRecord)
          {

            v2 = v16;
            v5 = v15;
            v4 = v32;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_17:
            v19 = objc_alloc(MEMORY[0x277D3F190]);
            v20 = [(PLOperator *)PLApplicationAgent entryKeyForType:v31 andName:@"AllPlugins"];
            v9 = [v19 initWithEntryKey:v20];

            bundleIdentifier3 = [v7 bundleIdentifier];
            [v9 setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

            containingBundleRecord3 = [v7 containingBundleRecord];
            bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
            [v9 setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

            extensionPointRecord2 = [v7 extensionPointRecord];
            identifier2 = [extensionPointRecord2 identifier];
            [v9 setObject:identifier2 forKeyedSubscript:@"PluginType"];

            executableURL2 = [v7 executableURL];
            path = [executableURL2 path];
            [v9 setObject:path forKeyedSubscript:@"PluginExecutableName"];

            [v9 setObject:&unk_2871456D0 forKeyedSubscript:@"PluginDeletedDate"];
            if (!v9)
            {
              goto LABEL_20;
            }

            [array addObject:v9];
LABEL_19:

            goto LABEL_20;
          }

          v2 = v16;
          v5 = v15;
          v4 = v32;
          bundleIdentifier2 = v33;
          goto LABEL_14;
        }

        LOBYTE(v14) = 1;
LABEL_14:
        v33 = bundleIdentifier2;

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_20:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v4);
  }

  v28 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)getLastBatteryEntry
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLBatteryAgent" withType:*MEMORY[0x277D3F5C8] withName:@"Battery"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v6 = [storage lastEntryForKey:v3];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"DesignCapacity"];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v6 objectForKeyedSubscript:@"Voltage"];
    [v10 doubleValue];
    v12 = v11 / 1000.0;
  }

  else
  {
    v12 = 0.0;
    v9 = 0.0;
  }

  v18[0] = @"DesignCapacity";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v18[1] = @"Voltage";
  v19[0] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)gizmoConnectedInRange:(_PLTimeIntervalRange)range
{
  location = range.location;
  v5 = range.location + range.length;
  v6 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLIdentityServicesAgent" withType:*MEMORY[0x277D3F5D0] withName:@"LocalLinkType"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"select * from %@ where linkType=1 and timestamp>=%f and timestamp<=%f limit 1", v6, *&location, *&v5];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v10 = [storage entriesForKey:v6 withQuery:v7];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__gizmoConnectedInRange___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (gizmoConnectedInRange__defaultOnce != -1)
    {
      dispatch_once(&gizmoConnectedInRange__defaultOnce, block);
    }

    if (gizmoConnectedInRange__classDebugEnabled == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query Result %@", v10];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown+Utilities.m"];
      lastPathComponent = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown(Utilities) gizmoConnectedInRange:]"];
      [v13 logMessage:v12 fromFile:lastPathComponent fromFunction:v16 fromLineNumber:493];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v18 = v10 && [v10 count];

  return v18;
}

uint64_t __76__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__gizmoConnectedInRange___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  gizmoConnectedInRange__classDebugEnabled = result;
  return result;
}

- (BOOL)hasHomeKitEvents
{
  v3 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLHomeKitAgent" withType:*MEMORY[0x277D3F5E8] withName:@"HomeKitEvents"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v6 = [storage countOfEntriesForKey:v3] > 0;

  return v6;
}

- (id)getBundleIDToReplacementBundleIDMap
{
  v154[172] = *MEMORY[0x277D85DE8];
  v10[0] = @"IMRemoteURLConn";
  v10[1] = @"IMRemoteURLConne";
  v154[0] = @"com.apple.MobileSMS";
  v154[1] = @"com.apple.MobileSMS";
  v10[2] = @"com.apple.mobilesms.notification";
  v10[3] = @"GenerativePlaygroundApp.MessagesExtension";
  v154[2] = @"com.apple.MobileSMS";
  v154[3] = @"com.apple.MobileSMS";
  v10[4] = @"com.apple.GenerativePlaygroundApp.MessagesExtension";
  v10[5] = @"mstreamd";
  v154[4] = @"com.apple.MobileSMS";
  v154[5] = @"com.apple.mobileslideshow";
  v10[6] = @"mediastream.mstreamd";
  v10[7] = @"assetsd";
  v154[6] = @"com.apple.mobileslideshow";
  v154[7] = @"com.apple.mobileslideshow";
  v10[8] = @"cloudphotod";
  v10[9] = @"com.apple.mobileslideshow.Discretionary";
  v154[8] = @"com.apple.mobileslideshow";
  v154[9] = @"com.apple.mobileslideshow";
  v10[10] = @"com.apple.icloud-container.com.apple.photos.cloud";
  v10[11] = @"com.apple.photoanalysisd";
  v154[10] = @"com.apple.mobileslideshow";
  v154[11] = @"com.apple.mobileslideshow";
  v10[12] = @"com.apple.photoanalysisd.backgroundanalysis";
  v10[13] = @"com.apple.photos.cloud";
  v154[12] = @"com.apple.mobileslideshow";
  v154[13] = @"com.apple.mobileslideshow";
  v10[14] = @"WirelessRadioManager";
  v10[15] = @"WirelessRadioManagerd";
  v154[14] = @"com.apple.mobilephone";
  v154[15] = @"com.apple.mobilephone";
  v10[16] = @"WirelessRadioMa";
  v10[17] = @"vmd";
  v154[16] = @"com.apple.mobilephone";
  v154[17] = @"com.apple.mobilephone";
  v10[18] = @"ipTelephony";
  v10[19] = @"ContactsUI.MonogramPosterExtension";
  v154[18] = @"com.apple.mobilephone";
  v154[19] = @"com.apple.mobilephone";
  v10[20] = @"com.apple.ContactsUI.MonogramPosterExtension";
  v10[21] = @"com.apple.MailCompositionService";
  v154[20] = @"com.apple.mobilephone";
  v154[21] = @"com.apple.mobilemail";
  v10[22] = @"MailCompositionService";
  v10[23] = @"suggestd";
  v154[22] = @"com.apple.mobilemail";
  v154[23] = @"com.apple.mobilemail";
  v10[24] = @"email.maild";
  v10[25] = @"com.apple.email.maild";
  v154[24] = @"com.apple.mobilemail";
  v154[25] = @"com.apple.mobilemail";
  v10[26] = @"maild";
  v10[27] = @"com.apple.springboard.lockscreen.navigation";
  v154[26] = @"com.apple.mobilemail";
  v154[27] = @"com.apple.Maps";
  v2 = *MEMORY[0x277D0ABB8];
  v10[28] = @"com.apple.Siri";
  v11 = v2;
  v154[28] = @"Siri";
  v154[29] = @"Siri";
  v12 = @"assistantd";
  v13 = @"omniSearch.SearchToolExtension";
  v154[30] = @"Siri";
  v154[31] = @"Siri";
  v14 = @"com.apple.WebKit.Networking";
  v15 = @"com.apple.WebKit.WebContent";
  v154[32] = @"com.apple.mobilesafari";
  v154[33] = @"com.apple.mobilesafari";
  v16 = @"com.apple.WebKit";
  v17 = @"com.apple.WebKi";
  v154[34] = @"com.apple.mobilesafari";
  v154[35] = @"com.apple.mobilesafari";
  v18 = @"com.apple.SafariViewService";
  v19 = @"safarifetcherd";
  v154[36] = @"com.apple.mobilesafari";
  v154[37] = @"com.apple.mobilesafari";
  v20 = @"com.apple.WebKit.WebContent.CaptivePortal";
  v21 = @"com.apple.WebKit.WebContent.Development";
  v154[38] = @"com.apple.mobilesafari";
  v154[39] = @"com.apple.mobilesafari";
  v22 = @"com.apple.WebKit.GPU";
  v23 = @"com.apple.WebKit.GPU.Development";
  v154[40] = @"com.apple.mobilesafari";
  v154[41] = @"com.apple.mobilesafari";
  v24 = @"com.apple.PassKitCore";
  v25 = @"passd";
  v154[42] = @"com.apple.Passbook";
  v154[43] = @"com.apple.Passbook";
  v26 = @"PassbookUIService";
  v27 = @"com.apple.PassbookUIService";
  v154[44] = @"com.apple.Passbook";
  v154[45] = @"com.apple.Passbook";
  v28 = @"com.apple.calendar";
  v29 = @"calaccessd";
  v154[46] = @"com.apple.mobilecal";
  v154[47] = @"com.apple.mobilecal";
  v3 = *MEMORY[0x277D66F48];
  v30 = *MEMORY[0x277D66F20];
  v31 = v3;
  v154[48] = @"HLS";
  v154[49] = @"HLS";
  v4 = *MEMORY[0x277D66F58];
  v32 = *MEMORY[0x277D66F10];
  v33 = v4;
  v154[50] = @"HLS";
  v154[51] = @"HLS";
  v34 = *MEMORY[0x277D0AB98];
  v154[52] = @"HLS";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v34, @"aod", @"IMRemoteURLConn", @"IMRemoteURLConne", @"com.apple.mobilesms.notification", @"GenerativePlaygroundApp.MessagesExtension", @"com.apple.GenerativePlaygroundApp.MessagesExtension", @"mstreamd", @"mediastream.mstreamd", @"assetsd", @"cloudphotod", @"com.apple.mobileslideshow.Discretionary", @"com.apple.icloud-container.com.apple.photos.cloud", @"com.apple.photoanalysisd", @"com.apple.photoanalysisd.backgroundanalysis", @"com.apple.photos.cloud", @"WirelessRadioManager", @"WirelessRadioManagerd", @"WirelessRadioMa", @"vmd", @"ipTelephony", @"ContactsUI.MonogramPosterExtension", @"com.apple.ContactsUI.MonogramPosterExtension", @"com.apple.MailCompositionService", @"MailCompositionService", @"suggestd", @"email.maild", @"com.apple.email.maild", @"maild", @"com.apple.springboard.lockscreen.navigation", @"com.apple.Siri", v11, @"assistantd", @"omniSearch.SearchToolExtension", @"com.apple.WebKit.Networking", @"com.apple.WebKit.WebContent", @"com.apple.WebKit", @"com.apple.WebKi", @"com.apple.SafariViewService", @"safarifetcherd", @"com.apple.WebKit.WebContent.CaptivePortal", @"com.apple.WebKit.WebContent.Development", @"com.apple.WebKit.GPU", @"com.apple.WebKit.GPU.Development", @"com.apple.PassKitCore", @"passd", @"PassbookUIService", @"com.apple.PassbookUIService", @"com.apple.calendar", @"calaccessd", v30, v31, v32, v4, v34];
  v6 = *MEMORY[0x277D0AB90];
  v35 = v5;
  v36 = v6;
  v154[53] = @"AlwaysOnDisplay";
  v154[54] = @"HLS";
  v37 = *MEMORY[0x277D0ABB0];
  v38 = @"LockScreen";
  v154[55] = @"HLS";
  v154[56] = @"HLS";
  v39 = @"com.apple.PosterBoard";
  v40 = @"PosterBoard";
  v154[57] = @"HLS";
  v154[58] = @"HLS";
  v41 = @"com.apple.MobileBackup.framework";
  v42 = @"backupd";
  v154[59] = @"Backup";
  v154[60] = @"Backup";
  v43 = @"com.apple.backupd";
  v44 = @"softwareupdateservicesd";
  v154[61] = @"Backup";
  v154[62] = @"Backup";
  v45 = @"mobile.softwareupdated";
  v46 = @"com.apple.Restore";
  v154[63] = @"Backup";
  v154[64] = @"com.apple.AppStore";
  v47 = @"com.apple.atc";
  v154[65] = @"com.apple.AppStore";
  v48 = @"installd";
  v154[66] = @"com.apple.AppStore";
  v49 = @"com.apple.StreamingUnzipService";
  v154[67] = @"com.apple.AppStore";
  v50 = @"containermanagerd";
  v154[68] = @"com.apple.AppStore";
  v51 = @"appstored";
  v154[69] = @"com.apple.AppStore";
  v52 = @"OOS";
  v154[70] = @"PoorCellCondition";
  v53 = @"healthd";
  v154[71] = @"com.apple.Health";
  v54 = @"com.apple.healthappd";
  v154[72] = @"com.apple.Health";
  v55 = @"misd";
  v154[73] = @"Hotspot";
  v56 = @"RadarComposeUIService";
  v154[74] = @"com.apple.ist.radar";
  v57 = @"remindd";
  v154[75] = @"com.apple.reminders";
  v58 = @"homed";
  v154[76] = @"HomeKit";
  v59 = @"com.apple.private.alloy.willow";
  v154[77] = @"HomeKit";
  v60 = @"atc";
  v154[78] = @"com.apple.Music";
  v61 = @"siriactionsd";
  v154[79] = @"com.apple.shortcuts";
  v62 = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v154[80] = @"com.apple.shortcuts";
  v63 = @"weatherd";
  v154[81] = @"com.apple.weather";
  v64 = @"synapse.contentlinkingd";
  v154[82] = @"com.apple.mobilenotes";
  v65 = @"com.apple.sportsd";
  v154[83] = @"com.apple.tv";
  v66 = @"sportsd";
  v154[84] = @"com.apple.tv";
  v67 = @"com.apple.continuitycaptured";
  v154[85] = @"com.apple.sidecar.extension.capture";
  v68 = @"com.apple.ContinuityCaptureShieldUI";
  v154[86] = @"com.apple.sidecar.extension.capture";
  v69 = @"com.apple.ScreenContinuityShell";
  v154[87] = @"ScreenContinuityShell";
  v70 = @"GenerativePlaygroundApp";
  v154[88] = @"com.apple.GenerativePlaygroundApp";
  v71 = @"eventkitsyncd";
  v154[89] = @"com.apple.mobilecal";
  v72 = @"companioncamerad";
  v154[90] = @"com.apple.camera";
  v73 = @"nanomailbootstrapd";
  v154[91] = @"com.apple.mobilemail";
  v74 = @"nanomapscd";
  v154[92] = @"com.apple.Maps";
  v75 = @"companionmessagesd";
  v154[93] = @"com.apple.MobileSMS";
  v76 = @"NPKCompanionAgent";
  v154[94] = @"com.apple.Passbook";
  v77 = @"tursd";
  v154[95] = @"com.apple.mobilephone";
  v78 = @"nptocompaniond";
  v154[96] = @"com.apple.mobileslideshow";
  v79 = @"remotemediaservicesd";
  v154[97] = @"com.apple.RemoteMediaServices";
  v80 = @"companionfindlocallyd";
  v154[98] = @"com.apple.companionfindlocallyd";
  v81 = @"pairedunlockd";
  v154[99] = @"com.apple.pairedunlockd";
  v82 = @"nanoweatherprefsd";
  v154[100] = @"com.apple.weather";
  v83 = @"com.apple.ess";
  v154[101] = @"com.apple.mobilephone";
  v84 = @"com.apple.madrid";
  v154[102] = @"com.apple.MobileSMS";
  v85 = @"com.apple.private.alloy.accountssync";
  v154[103] = @"accountsd";
  v86 = @"com.apple.private.alloy.addressbooksync";
  v154[104] = @"addressbooksyncd";
  v87 = @"com.apple.private.alloy.appregistrysync";
  v154[105] = @"nanoappregistryd";
  v88 = @"com.apple.private.alloy.audiocontrol.bridge";
  v154[106] = @"com.apple.Bridge";
  v89 = @"com.apple.private.alloy.audiocontrol.music";
  v154[107] = @"com.apple.Music";
  v90 = @"com.apple.private.alloy.bluetoothregistry";
  v154[108] = @"nanoregistryd";
  v91 = @"com.apple.private.alloy.bulletindistributor.settings";
  v154[109] = @"bulletindistributord";
  v92 = @"com.apple.private.alloy.bulletindistributor";
  v154[110] = @"bulletindistributord";
  v93 = @"com.apple.private.alloy.callhistorysync";
  v154[111] = @"CallHistorySyncHelper";
  v94 = @"com.apple.private.alloy.camera.proxy";
  v154[112] = @"com.apple.camera";
  v95 = @"com.apple.private.alloy.continuity.activity";
  v154[113] = @"sharingd";
  v96 = @"com.apple.private.alloy.continuity.auth";
  v154[114] = @"sharingd";
  v97 = @"com.apple.private.alloy.continuity.encryption";
  v154[115] = @"sharingd";
  v98 = @"com.apple.private.alloy.continuity.tethering";
  v154[116] = @"sharingd";
  v99 = @"com.apple.private.alloy.coreduet";
  v154[117] = @"coreduetd";
  v100 = @"com.apple.private.alloy.eventkitsync";
  v154[118] = @"com.apple.mobilecal";
  v101 = @"com.apple.private.alloy.fignero";
  v154[119] = @"mediaserverd";
  v102 = @"com.apple.private.alloy.findmylocaldevice";
  v154[120] = @"com.apple.companionfindlocallyd";
  v103 = @"com.apple.private.alloy.fmf";
  v154[121] = @"fmfd";
  v104 = @"com.apple.private.alloy.health.general";
  v154[122] = @"com.apple.Health";
  v105 = @"com.apple.private.alloy.health.sync";
  v154[123] = @"com.apple.Health";
  v106 = @"com.apple.private.alloy.icloudpairing";
  v154[124] = @"bluetoothd";
  v107 = @"com.apple.private.alloy.idscredentials";
  v154[125] = @"IDSCredentialsAgent";
  v108 = @"com.apple.private.alloy.idsremoteurlconnection";
  v154[126] = @"IDSRemoteURLConnectionAgent";
  v109 = @"com.apple.private.alloy.idstransfers";
  v154[127] = @"IMTransferAgent";
  v110 = @"com.apple.private.alloy.iosdiagnostics";
  v154[128] = @"Diagnostics";
  v111 = @"com.apple.private.alloy.location.auth";
  v154[129] = @"locationd";
  v112 = @"com.apple.private.alloy.location.motion";
  v154[130] = @"locationd";
  v113 = @"com.apple.private.alloy.location.usage";
  v154[131] = @"locationd";
  v114 = @"com.apple.private.alloy.location.wifitilesync";
  v154[132] = @"locationd";
  v115 = @"com.apple.private.alloy.mail.fetches";
  v154[133] = @"com.apple.mobilemail";
  v116 = @"com.apple.private.alloy.mail.sync.accounts";
  v154[134] = @"com.apple.mobilemail";
  v117 = @"com.apple.private.alloy.mail.sync.content";
  v154[135] = @"com.apple.mobilemail";
  v118 = @"com.apple.private.alloy.mail.sync.messages";
  v154[136] = @"com.apple.mobilemail";
  v119 = @"com.apple.private.alloy.maps.proxy";
  v154[137] = @"com.apple.Maps";
  v120 = @"com.apple.private.alloy.maps.sync";
  v154[138] = @"com.apple.Maps";
  v121 = @"com.apple.private.alloy.maps";
  v154[139] = @"com.apple.Maps";
  v122 = @"com.apple.private.alloy.messages";
  v154[140] = @"com.apple.MobileSMS";
  v123 = @"com.apple.private.alloy.nsurlsessionproxy";
  v154[141] = @"sharingd";
  v124 = @"com.apple.private.alloy.otaupdate";
  v154[142] = @"Restore";
  v125 = @"com.apple.private.alloy.pairedunlock";
  v154[143] = @"com.apple.pairedunlockd";
  v126 = @"com.apple.private.alloy.passbook.general";
  v154[144] = @"com.apple.Passbook";
  v127 = @"com.apple.private.alloy.passbook.maintenance";
  v154[145] = @"com.apple.Passbook";
  v128 = @"com.apple.private.alloy.passbook.provisioning";
  v154[146] = @"com.apple.Passbook";
  v129 = @"com.apple.private.alloy.passbook.relevancy";
  v154[147] = @"com.apple.Passbook";
  v130 = @"com.apple.private.alloy.passbook.remoteadmin";
  v154[148] = @"com.apple.Passbook";
  v131 = @"com.apple.private.alloy.pbbridge";
  v154[149] = @"com.apple.Bridge";
  v132 = @"com.apple.private.alloy.phonecontinuity";
  v154[150] = @"com.apple.mobilephone";
  v133 = @"com.apple.private.alloy.photos.proxy";
  v154[151] = @"com.apple.mobileslideshow";
  v134 = @"com.apple.private.alloy.photostream";
  v154[152] = @"com.apple.mobileslideshow";
  v135 = @"com.apple.private.alloy.preferencessync";
  v154[153] = @"nanoprefsyncd";
  v136 = @"com.apple.private.alloy.proxiedcrashcopier";
  v154[154] = @"ProxiedCrashCopier";
  v137 = @"com.apple.private.alloy.pushproxy";
  v154[155] = @"apsd";
  v138 = @"com.apple.private.alloy.remotemediaservices";
  v154[156] = @"com.apple.RemoteMediaServices";
  v139 = @"com.apple.private.alloy.resourcegrabber";
  v154[157] = @"resourcegrabberd";
  v140 = @"com.apple.private.alloy.screenshotter";
  v154[158] = @"screenshotsyncd";
  v141 = @"com.apple.private.alloy.siri.device";
  v154[159] = @"Siri";
  v142 = @"com.apple.private.alloy.siri.location";
  v154[160] = @"Siri";
  v143 = @"com.apple.private.alloy.siri.proxy";
  v154[161] = @"Siri";
  v144 = @"com.apple.private.alloy.sms";
  v154[162] = @"com.apple.MobileSMS";
  v145 = @"com.apple.private.alloy.sockpuppet";
  v154[163] = @"companionappd";
  v146 = @"com.apple.private.alloy.systemsettings";
  v154[164] = @"nanosystemsettingsd";
  v147 = @"com.apple.private.alloy.telephonyutilitiestemporary";
  v154[165] = @"com.apple.mobilephone";
  v148 = @"com.apple.private.alloy.timesync";
  v154[166] = @"timed";
  v149 = @"com.apple.private.alloy.timezonesync";
  v154[167] = @"tzd";
  v150 = @"com.apple.private.alloy.utilitybelt";
  v154[168] = @"com.apple.Bridge";
  v151 = @"com.apple.private.alloy.voicemailsync";
  v154[169] = @"com.apple.mobilephone";
  v152 = @"com.apple.private.alloy.wifi.networksync";
  v154[170] = @"wifid";
  v153 = @"com.apple.private.alloy.continuity.notifications";
  v154[171] = @"ScreenContinuityShell";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v10 count:172];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getEnergyEntry:(id)entry forBundleID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getEnergyEntry_forBundleID___block_invoke;
  v10[3] = &unk_279A5C168;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [entryCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __81__PLBatteryUIResponseTypeBatteryBreakdown_Utilities__getEnergyEntry_forBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)getBundleIDsToEnergyKeyForSlopAdjustmentMap
{
  v2 = objc_opt_new();
  v3 = [&unk_28714BF60 objectAtIndexedSubscript:58];
  [v2 setObject:v3 forKeyedSubscript:@"EN"];

  v4 = [&unk_28714BF78 objectAtIndexedSubscript:59];
  [v2 setObject:v4 forKeyedSubscript:@"com.apple.findmy"];

  if ([MEMORY[0x277D3F208] hasAOD])
  {
    [v2 setObject:@"AlwaysOnEnergy" forKeyedSubscript:@"AlwaysOnDisplay"];
  }

  return v2;
}

- (void)configure:(id)configure
{
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPercentageOption:2];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPercentageOption:0];
  }

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExcludeTimeOnCharger:1];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExcludeTimeOnCharger:0];
  }

  v11 = [configureCopy objectForKeyedSubscript:@"isDynamicEnd"];
  -[PLBatteryUIResponseTypeBatteryBreakdown setIsDynamicEnd:](self, "setIsDynamicEnd:", [v11 BOOLValue]);

  v12 = +[PLUtilities getOverridableMonotonicNow];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setMonotonicNow:v12];

  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setStart:v13];

  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setEnd:v14];

  v15 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v15 doubleValue];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBucketSize:?];

  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self isDynamicEnd])
  {
    monotonicNow = [(PLBatteryUIResponseTypeBatteryBreakdown *)self monotonicNow];
    [monotonicNow timeIntervalSince1970];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:v10 - v17];
  }

  else
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:0.0];
  }

  getNodeIDToNodeNameMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeIDToNodeNameMap];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNodeIDsToNodeNames:getNodeIDToNodeNameMap];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setHasHomeKit:[(PLBatteryUIResponseTypeBatteryBreakdown *)self hasHomeKitEvents]];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIsSlopAdjustmentEnabled:1];
  getLastBatteryEntry = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getLastBatteryEntry];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setLastBatteryEntry:getLastBatteryEntry];

  v20 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:1];
  [v20 doubleValue];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setLastUpgradeTimestamp:?];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self buildUtilityCache];
  start = [(PLBatteryUIResponseTypeBatteryBreakdown *)self start];
  v22 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  [start timeIntervalSince1970];
  v24 = v23;
  [v22 timeIntervalSince1970];
  v26 = v25 - v24;

  v27 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDataRange:v27];
  v29 = v28;
  v31 = v30;

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self generateRange:v24 + -1800.0 withDataRange:v26 + 1800.0, v29, v31];
  v33 = v32;
  v35 = v34;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setGizmoConnected:[(PLBatteryUIResponseTypeBatteryBreakdown *)self gizmoConnectedInRange:?]];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDataDurationFromRange:v33, v35];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDataDuration:?];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self buildBucketsForRange:v33, v35];
  if (_os_feature_enabled_impl())
  {
    v36 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getDrainPerBucketIn:v33, v35];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setUiLevelDrainEntries:v36];

    uiLevelDrainEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];

    if (!uiLevelDrainEntries)
    {
      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown configure:];
      }
    }
  }
}

- (id)getDrainPerBucketIn:(_PLTimeIntervalRange)in
{
  length = in.length;
  location = in.location;
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v35 = v6;
  v9 = [storage entriesForKey:v6 inTimeRange:0 withFilters:{location, length}];

  v37 = objc_opt_new();
  v10 = location + length;
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  if (computeNumberOfBuckets >= 1)
  {
    v13 = 0;
    LODWORD(v14) = 0;
    do
    {
      v15 = v12;
      v16 = v11;
      v11 = [v12 copy];

      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v12 = [v11 dateByAddingTimeInterval:-v17];

      if ([v9 count] <= v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v14 = v14;
        while (1)
        {
          v19 = [v9 objectAtIndexedSubscript:v14];
          [v12 timeIntervalSince1970];
          v21 = v20;
          entryDate = [v19 entryDate];
          [entryDate timeIntervalSince1970];
          v24 = v23;

          if (v21 > v24)
          {
            break;
          }

          [v11 timeIntervalSince1970];
          v26 = v25;
          [(PLBatteryUIResponseTypeBatteryBreakdown *)self dynamicEndOffset];
          v28 = v26 - v27;
          entryDate2 = [v19 entryDate];
          [entryDate2 timeIntervalSince1970];
          v31 = v30;

          if (v28 > v31)
          {
            v32 = [v19 objectForKeyedSubscript:@"Level"];
            v18 = [v32 intValue] + v18;
          }

          ++v14;

          if ([v9 count] <= v14)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_12:
      v33 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      [v37 addObject:v33];

      ++v13;
    }

    while (v13 != computeNumberOfBuckets);
  }

  return v37;
}

- (void)coalesce
{
  buckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
  v4 = [buckets count];

  if (v4)
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self getStaticData];
    buckets2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
    v6 = [buckets2 count];

    if (v6 >= 1)
    {
      v7 = 0;
      while (1)
      {
        buckets3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
        v9 = [buckets3 objectAtIndexedSubscript:v7];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateEnergyBucketKeysWithEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateInternalRootNodeEnergyKeys:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self populateBLDKeysWithEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyStaticNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustExtensionBackgroundTimeWithEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyDynamicNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustRuntimes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self applyDisplayNameTransformation:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addEntryTypes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self filterEnergyEntries:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self filterEnergyEntriesWithRuntimes:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotalEnergy:v9];
        LODWORD(buckets3) = [(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotals:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self adjustEnergyValues:v9];
        if (buckets3)
        {
          break;
        }

        if (_os_feature_enabled_impl())
        {
          goto LABEL_8;
        }

LABEL_9:
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addQualifiers:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self addErrorCode:v9];
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self cleanEntries:v9];
        if (_os_feature_enabled_impl())
        {
          [(PLBatteryUIResponseTypeBatteryBreakdown *)self createPerAppBreakdown:v9];
        }

        if ((v6 & 0x7FFFFFFF) == ++v7)
        {
          return;
        }
      }

      if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption]== 2)
      {
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self normalizeForBucket:v9 with:v7];
      }

LABEL_8:
      [(PLBatteryUIResponseTypeBatteryBreakdown *)self addTotals:v9 with:v7];
      goto LABEL_9;
    }
  }
}

- (void)normalizeForBucket:(id)bucket with:(int)with
{
  bucketCopy = bucket;
  uiLevelDrainEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
  v7 = [uiLevelDrainEntries count];

  if (v7 <= with)
  {
    intValue = 0;
  }

  else
  {
    uiLevelDrainEntries2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self uiLevelDrainEntries];
    v9 = [uiLevelDrainEntries2 objectAtIndexedSubscript:with];
    intValue = [v9 intValue];
  }

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self normalizeBucket:bucketCopy to:intValue];
}

- (id)result
{
  v12[2] = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToDisplayNames:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDeletedAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDeletedAppClipBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setPluginBundleIDsToEntries:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setWebAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNonAppBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExchangeBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToReplacementBundleIDs:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToForegroundTimes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToBackgroundTimes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeIDToRootNodeEnergyKeys:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIntermediateRootNodes:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIsDynamicEnd:0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setDynamicEndOffset:0.0];
  v11[0] = @"PLBatteryUIBreakdownKey";
  buckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self buckets];
  reverseObjectEnumerator = [buckets reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v11[1] = @"PLBatteryUIDataDurationKey";
  v12[0] = allObjects;
  v6 = MEMORY[0x277CCABB0];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self dataDuration];
  v7 = [v6 numberWithDouble:?];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (_PLTimeIntervalRange)generateRange:(_PLTimeIntervalRange)result withDataRange:(_PLTimeIntervalRange)range
{
  if (range.location == 0.0 && range.length == 0.0)
  {
    location = result.location;
    goto LABEL_21;
  }

  v5 = result.location + result.length;
  if (result.location < range.location)
  {
    v6 = v5 == range.location;
    v7 = v5 < range.location;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && !v6)
  {
    v8 = range.location + range.length;
LABEL_14:
    if (result.location >= range.location)
    {
      location = result.location;
    }

    else
    {
      location = range.location;
    }

    if (v5 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    result.length = v9 - location;
    goto LABEL_21;
  }

  v8 = range.location + range.length;
  if (range.location < result.location && v8 > result.location)
  {
    goto LABEL_14;
  }

  location = 0.0;
  if (result.location != range.location || result.length <= 0.0)
  {
    result.length = 0.0;
    goto LABEL_21;
  }

  result.length = 0.0;
  if (range.length > 0.0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v10 = location;
  result.location = v10;
  return result;
}

- (void)addTotalEnergy:(id)energy
{
  v21 = *MEMORY[0x277D85DE8];
  energyCopy = energy;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [energyCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v16 + 1) + 8 * i) objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v10 doubleValue];
        v8 = v8 + v11;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    v12 = v8 * 100.0;
  }

  else
  {
    v12 = 0.0;
  }

  +[PLUtilities defaultBatteryEnergyCapacity];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.00f%% of Battery", v12 / v13];
  [energyCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIBatteryCyclesKey"];

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)filterFgBg:(id)bg filterArray:(id)array
{
  bgCopy = bg;
  arrayCopy = array;
  v7 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [bgCopy objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
  [v14 doubleValue];
  v16 = v15;

  v17 = 0;
  if (v16 <= 0.0 && v10 == 0.0 && v13 < 60.0)
  {
    if ([v7 isEqualToString:@"com.apple.findmy"])
    {
      v18 = [&unk_28714D628 objectAtIndexedSubscript:59];
      v19 = [bgCopy objectForKeyedSubscript:v18];
      [v19 doubleValue];
      v21 = v20;

      if (v21 > 0.0)
      {
        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypeBatteryBreakdown filterFgBg:filterArray:];
        }

        [arrayCopy addObject:bgCopy];
      }
    }

    v17 = 1;
  }

  return v17;
}

- (id)getRootNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  v8 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F318]];
  interval = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeEntriesForEntryKey:v8 withRange:location andTimeInterval:length, interval];

  return interval;
}

- (id)getQualificationNodeEntriesInRange:(_PLTimeIntervalRange)range withTimeInterval:(double)interval
{
  length = range.length;
  location = range.location;
  v8 = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5B8] andName:*MEMORY[0x277D3F2F0]];
  interval = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNodeEntriesForEntryKey:v8 withRange:location andTimeInterval:length, interval];

  return interval;
}

- (void)getStaticData
{
  rootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];

  if (!rootNodeBundleIDs)
  {
    getRootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeBundleIDs:getRootNodeBundleIDs];
  }

  nonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];

  if (!nonAppBundleIDs)
  {
    getNonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNonAppBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setNonAppBundleIDs:getNonAppBundleIDs];
  }

  exchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];

  if (!exchangeBundleIDs)
  {
    getExchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getExchangeBundleIDs];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setExchangeBundleIDs:getExchangeBundleIDs];
  }

  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (!bundleIDsToReplacementBundleIDs)
  {
    getBundleIDToReplacementBundleIDMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToReplacementBundleIDMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToReplacementBundleIDs:getBundleIDToReplacementBundleIDMap];
  }

  bundleIDsToForegroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];

  if (!bundleIDsToForegroundTimes)
  {
    getBundleIDToForegroundTimeMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToForegroundTimeMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToForegroundTimes:getBundleIDToForegroundTimeMap];
  }

  bundleIDsToBackgroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];

  if (!bundleIDsToBackgroundTimes)
  {
    getBundleIDToBackgroundTimeMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDToBackgroundTimeMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToBackgroundTimes:getBundleIDToBackgroundTimeMap];
  }

  bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];

  if (!bundleIDsToEnergyKeyForSlopAdjustment)
  {
    getBundleIDsToEnergyKeyForSlopAdjustmentMap = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBundleIDsToEnergyKeyForSlopAdjustmentMap];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBundleIDsToEnergyKeyForSlopAdjustment:getBundleIDsToEnergyKeyForSlopAdjustmentMap];
  }

  rootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeIDToRootNodeEnergyKeys];

  if (!rootNodeIDToRootNodeEnergyKeys)
  {
    getRootNodeIDToRootNodeEnergyKeys = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeIDToRootNodeEnergyKeys];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setRootNodeIDToRootNodeEnergyKeys:getRootNodeIDToRootNodeEnergyKeys];
  }

  intermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self intermediateRootNodes];

  if (!intermediateRootNodes)
  {
    getIntermediateRootNodes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getIntermediateRootNodes];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self setIntermediateRootNodes:getIntermediateRootNodes];
  }
}

- (void)addEntryTypes:(id)types
{
  v40 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  rootNodeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];

  if (rootNodeBundleIDs)
  {
    nonAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];

    if (nonAppBundleIDs)
    {
      webAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self webAppBundleIDs];

      if (webAppBundleIDs)
      {
        bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

        if (bundleIDsToDisplayNames)
        {
          [typesCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          obj = [typesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
          v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v9)
          {
            v10 = v9;
            v34 = *v36;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v36 != v34)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v35 + 1) + 8 * i);
                v13 = MEMORY[0x277CCABB0];
                v14 = [typesCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
                [v14 doubleValue];
                v16 = v15;
                v17 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v17 doubleValue];
                v19 = [v13 numberWithDouble:v16 + v18];
                [typesCopy setObject:v19 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];

                rootNodeBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self rootNodeBundleIDs];
                v21 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                LOBYTE(v17) = [rootNodeBundleIDs2 containsObject:v21];

                v22 = &unk_287146A38;
                if ((v17 & 1) == 0)
                {
                  nonAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nonAppBundleIDs];
                  v24 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v25 = [nonAppBundleIDs2 containsObject:v24];

                  v22 = &unk_287146A50;
                  if ((v25 & 1) == 0)
                  {
                    webAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self webAppBundleIDs];
                    v27 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v28 = [webAppBundleIDs2 containsObject:v27];

                    v22 = &unk_287146A68;
                    if ((v28 & 1) == 0)
                    {
                      bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
                      v30 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      v31 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:v30];

                      if (v31)
                      {
                        v22 = &unk_287146A20;
                      }

                      else
                      {
                        v22 = &unk_287146A80;
                      }
                    }
                  }
                }

                [v12 setObject:v22 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
              }

              v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
            }

            while (v10);
          }
        }

        else
        {
          obj = PLLogCommon();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
          }
        }
      }

      else
      {
        obj = PLLogCommon();
        if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
        }
      }
    }

    else
    {
      obj = PLLogCommon();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
      }
    }
  }

  else
  {
    obj = PLLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)addQualifiers:(id)qualifiers
{
  v235 = *MEMORY[0x277D85DE8];
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  qualifiersCopy = qualifiers;
  obj = [qualifiersCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v4 = [obj countByEnumeratingWithState:&v222 objects:v234 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v223;
    v7 = 0x277CBE000uLL;
    v8 = 0.33;
    selfCopy = self;
    v209 = *v223;
    do
    {
      v9 = 0;
      v210 = v5;
      do
      {
        if (*v223 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v222 + 1) + 8 * v9);
        array = [*(v7 + 2840) array];
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v12 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
        [v12 doubleValue];
        v14 = v13;

        v15 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v15 doubleValue];
        v17 = v16;

        if (v17 >= 1.0 || [v11 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
        {
          v18 = v8;
          v19 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v19 doubleValue];
          v21 = v20;

          v22 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v22 doubleValue];
          v24 = v23;

          v25 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          [v28 doubleValue];
          v30 = v29;

          [(PLBatteryUIResponseTypeBatteryBreakdown *)self bgLocationAudioTimeRuntimes:v10 bundleID:v11];
          v217 = v24;
          v31 = v21 + v24;
          v32 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
          [v32 doubleValue];
          v34 = v33;

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v227 = v34;
            v228 = 2048;
            v229 = v31;
            _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "adding AlwaysOnTimeInSecs=%f to totalRuntime=%f for AppQualifierPluggedIn calculation", buf, 0x16u);
          }

          [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
          v37 = v36;
          [MEMORY[0x277D3F058] defaultBatteryEnergyCapacity];
          if (v38 <= 0.0)
          {
            v39 = 0;
          }

          else
          {
            v38 = v14 / v38;
            v39 = v38 > dbl_25F023B30[v37 > 3600.0];
          }

          v40 = v31 + v34;
          if (v40 > 0.0)
          {
            v41 = v27 + v30;
            v38 = v41 / v40;
            if (v41 / v40 >= 0.8 && !v39)
            {
              v42 = PLLogCommon();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                v227 = v41;
                v228 = 2048;
                v229 = v40;
                _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "adding AppQualifierPluggedIn pluggedInSecs=%f, totalRuntime=%f", buf, 0x16u);
              }

              [array addObject:&unk_287146A98];
            }
          }

          if (v14 == 0.0)
          {
            [v10 setObject:&unk_287146A20 forKeyedSubscript:{@"PLBatteryUIAppAlwaysOnRuntimeKey", v38}];
            [v10 setObject:array forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];
            v8 = v18;
          }

          else
          {
            v43 = [&unk_28714D640 objectAtIndexedSubscript:{1, v38}];
            v44 = [v10 objectForKeyedSubscript:v43];
            [v44 doubleValue];
            v46 = v45;

            v47 = v46 / v14;
            v8 = v18;
            if (v46 / v14 > v18 && [(PLBatteryUIResponseTypeBatteryBreakdown *)self canSetQualifier:1 forBundleID:v11, v47])
            {
              [array addObject:&unk_287146AB0];
            }

            v48 = [&unk_28714D658 objectAtIndexedSubscript:{2, v47}];
            v49 = [v10 objectForKeyedSubscript:v48];
            [v49 doubleValue];
            v51 = v50;

            v52 = v14 - v51;
            v53 = v52 / v14;
            if (v52 / v14 > 0.5 && [(PLBatteryUIResponseTypeBatteryBreakdown *)self canSetQualifier:2 forBundleID:v11])
            {
              debugEnabled = [MEMORY[0x277D3F180] debugEnabled];
              if (v21 < 300.0 || (v55 = v21 / v217, v21 / v217 < v18))
              {
                if (debugEnabled)
                {
                  v67 = objc_opt_class();
                  v220[0] = MEMORY[0x277D85DD0];
                  v220[1] = 3221225472;
                  v220[2] = __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke_375;
                  v220[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v220[4] = v67;
                  v68 = v220;
                  if (addQualifiers__defaultOnce_373 != -1)
                  {
                    dispatch_once(&addQualifiers__defaultOnce_373, v68);
                  }

                  if (addQualifiers__classDebugEnabled_374 == 1)
                  {
                    v69 = MEMORY[0x277CCACA8];
                    v70 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
                    v71 = [MEMORY[0x277CCABB0] numberWithDouble:v217];
                    v72 = [v69 stringWithFormat:@"BGQualifier: Removing qualifier based on BGTime %@, FGTime %@", v70, v71];

                    v73 = MEMORY[0x277D3F178];
                    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                    lastPathComponent = [v74 lastPathComponent];
                    v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown addQualifiers:]"];
                    [v73 logMessage:v72 fromFile:lastPathComponent fromFunction:v76 fromLineNumber:563];

                    v77 = PLLogCommon();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v227 = *&v72;
                      _os_log_debug_impl(&dword_25EE51000, v77, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }
              }

              else
              {
                if (debugEnabled)
                {
                  v56 = objc_opt_class();
                  v221[0] = MEMORY[0x277D85DD0];
                  v221[1] = 3221225472;
                  v221[2] = __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke;
                  v221[3] = &__block_descriptor_40_e5_v8__0lu32l8;
                  v221[4] = v56;
                  v57 = v221;
                  if (addQualifiers__defaultOnce != -1)
                  {
                    dispatch_once(&addQualifiers__defaultOnce, v57);
                  }

                  if (addQualifiers__classDebugEnabled == 1)
                  {
                    v58 = MEMORY[0x277CCACA8];
                    v59 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
                    v60 = [MEMORY[0x277CCABB0] numberWithDouble:v217];
                    v61 = [v58 stringWithFormat:@"BGQualifier: Adding qualifier based on BGTime %@, FGTime %@", v59, v60];

                    v62 = MEMORY[0x277D3F178];
                    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                    lastPathComponent2 = [v63 lastPathComponent];
                    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown addQualifiers:]"];
                    [v62 logMessage:v61 fromFile:lastPathComponent2 fromFunction:v65 fromLineNumber:560];

                    v66 = PLLogCommon();
                    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v227 = *&v61;
                      _os_log_debug_impl(&dword_25EE51000, v66, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                    }
                  }
                }

                [array addObject:{&unk_287146AC8, v55}];
              }
            }

            if ([v11 isEqualToString:@"com.apple.findmy"])
            {
              v78 = [&unk_28714D670 objectAtIndexedSubscript:59];
              v79 = [v10 objectForKeyedSubscript:v78];
              [v79 doubleValue];
              v81 = v80;

              if (v81 / v14 > v18 && ([array containsObject:{&unk_287146AC8, v81 / v14}] & 1) == 0)
              {
                [array addObject:&unk_287146AC8];
              }

              v82 = PLLogCommon();
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v227 = *&array;
                _os_log_debug_impl(&dword_25EE51000, v82, OS_LOG_TYPE_DEBUG, "IT Qualifier: %@", buf, 0xCu);
              }
            }

            v214 = v9;
            v83 = [&unk_28714D688 objectAtIndexedSubscript:48];
            v84 = [v10 objectForKeyedSubscript:v83];
            [v84 doubleValue];
            v86 = v85;

            v87 = [&unk_28714D6A0 objectAtIndexedSubscript:12];
            v88 = [v10 objectForKeyedSubscript:v87];
            [v88 doubleValue];
            v90 = v86 + v89;

            v91 = [&unk_28714D6B8 objectAtIndexedSubscript:13];
            v92 = [v10 objectForKeyedSubscript:v91];
            [v92 doubleValue];
            v94 = v90 + v93;

            v95 = MEMORY[0x277CCACA8];
            v96 = [&unk_28714D6D0 objectAtIndexedSubscript:15];
            v97 = [&unk_28714D6E8 objectAtIndexedSubscript:2];
            [v95 stringWithFormat:@"%@-%@", v96, v97];
            v98 = v216 = v11;

            v99 = MEMORY[0x277CCACA8];
            v100 = [&unk_28714D700 objectAtIndexedSubscript:15];
            v101 = [&unk_28714D718 objectAtIndexedSubscript:7];
            v101 = [v99 stringWithFormat:@"%@-%@", v100, v101];

            v103 = MEMORY[0x277CCACA8];
            v104 = [&unk_28714D730 objectAtIndexedSubscript:15];
            v105 = [&unk_28714D748 objectAtIndexedSubscript:9];
            v105 = [v103 stringWithFormat:@"%@-%@", v104, v105];

            v107 = MEMORY[0x277CCACA8];
            v108 = [&unk_28714D760 objectAtIndexedSubscript:15];
            v109 = [&unk_28714D778 objectAtIndexedSubscript:52];
            v109 = [v107 stringWithFormat:@"%@-%@", v108, v109];

            v111 = MEMORY[0x277CCACA8];
            v112 = [&unk_28714D790 objectAtIndexedSubscript:15];
            v113 = [&unk_28714D7A8 objectAtIndexedSubscript:54];
            v113 = [v111 stringWithFormat:@"%@-%@", v112, v113];

            v218 = v98;
            v115 = v98;
            v11 = v216;
            v116 = [v10 objectForKeyedSubscript:v115];
            [v116 doubleValue];
            v118 = v94 + v117;

            v215 = v101;
            v119 = [v10 objectForKeyedSubscript:v101];
            [v119 doubleValue];
            v121 = v118 + v120;

            v213 = v105;
            v122 = [v10 objectForKeyedSubscript:v105];
            [v122 doubleValue];
            v124 = v121 + v123;

            v212 = v109;
            v125 = [v10 objectForKeyedSubscript:v109];
            [v125 doubleValue];
            v127 = v124 + v126;

            v128 = [v10 objectForKeyedSubscript:v113];
            [v128 doubleValue];
            v130 = v127 + v129;

            v131 = PLLogCommon();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v227 = *&v216;
              v228 = 2048;
              v229 = v130;
              _os_log_debug_impl(&dword_25EE51000, v131, OS_LOG_TYPE_DEBUG, "%@ locEnergy: %.3f", buf, 0x16u);
            }

            v132 = v130 / v14;
            v9 = v214;
            if (v130 / v14 > v18 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:3 forBundleID:v216, v132])
            {
              v133 = [&unk_28714D7C0 objectAtIndexedSubscript:15];
              v134 = [v10 objectForKeyedSubscript:v133];
              [v134 doubleValue];
              v136 = v135;

              v137 = PLLogCommon();
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v227 = *&v216;
                v228 = 2048;
                v229 = v136;
                _os_log_debug_impl(&dword_25EE51000, v137, OS_LOG_TYPE_DEBUG, "%@ bgLocEnergy: %.3f", buf, 0x16u);
              }

              if (v136 / v52 > v18 && [array containsObject:{&unk_287146AC8, v136 / v52}])
              {
                [array removeObject:&unk_287146AC8];
                v138 = &unk_287146AE0;
              }

              else
              {
                v138 = &unk_287146AF8;
              }

              [array addObject:v138];
            }

            v139 = [&unk_28714D7D8 objectAtIndexedSubscript:{17, v132}];
            v140 = [v10 objectForKeyedSubscript:v139];
            [v140 doubleValue];
            v142 = v141;

            v143 = v142 + 0.0;
            v144 = [v10 objectForKeyedSubscript:@"NotificationInfo"];

            if (v144)
            {
              v145 = [v10 objectForKeyedSubscript:@"NotificationInfo"];
              [v145 notificationEnergy];
              v143 = v143 + v146;
            }

            v147 = PLLogCommon();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v227 = v143;
              _os_log_debug_impl(&dword_25EE51000, v147, OS_LOG_TYPE_DEBUG, "Notification energy: %.3f", buf, 0xCu);
            }

            if (v143 > 0.0 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:9 forBundleID:v216])
            {
              +[PLUtilities defaultBatteryEnergyCapacity];
              v149 = v143 * 100.0 / v148;
              v150 = PLLogCommon();
              if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v227 = *&v216;
                v228 = 2048;
                v229 = v143;
                v230 = 2048;
                v231 = v149;
                _os_log_debug_impl(&dword_25EE51000, v150, OS_LOG_TYPE_DEBUG, "%@, energy: %.3f, batteryPercent %.3f", buf, 0x20u);
              }

              v151 = v143 / v14;
              if (v143 / v14 > v8 || (v151 = 1.0, v149 > 1.0))
              {
                [array addObject:{&unk_287146B10, v151}];
              }
            }

            v152 = [&unk_28714D7F0 objectAtIndexedSubscript:3];
            v153 = [v10 objectForKeyedSubscript:v152];
            [v153 doubleValue];
            v155 = v154;

            v156 = v155 / v14;
            if (v155 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:4 forBundleID:v216, v156])
            {
              [array addObject:&unk_287146B28];
            }

            v157 = [&unk_28714D808 objectAtIndexedSubscript:{4, v156}];
            v158 = [v10 objectForKeyedSubscript:v157];
            [v158 doubleValue];
            v160 = v159;

            v161 = v160 / v14;
            if (v160 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:5 forBundleID:v216, v161])
            {
              [array addObject:&unk_287146B40];
            }

            v162 = [&unk_28714D820 objectAtIndexedSubscript:{14, v161}];
            v163 = [v10 objectForKeyedSubscript:v162];
            [v163 doubleValue];
            v165 = v164;

            v166 = [&unk_28714D838 objectAtIndexedSubscript:15];
            v167 = [v10 objectForKeyedSubscript:v166];
            [v167 doubleValue];
            v169 = v168;

            v170 = [&unk_28714D850 objectAtIndexedSubscript:55];
            v171 = [v10 objectForKeyedSubscript:v170];
            [v171 doubleValue];
            v173 = v172;

            if ((v165 + v169 + v173) / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:7 forBundleID:v216])
            {
              [array addObject:&unk_287146B58];
            }

            v174 = [v10 objectForKeyedSubscript:@"WatchEnergy"];
            [v174 doubleValue];
            v176 = v175;

            if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy gizmoConnected])
            {
              v177 = v176 / v14;
              if (v176 / v14 > v8)
              {
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:10 forBundleID:v216, v177])
                {
                  [array addObject:&unk_287146B70];
                }
              }
            }

            v178 = [v10 objectForKeyedSubscript:{@"PosterEnergy", v177}];
            [v178 doubleValue];
            v180 = v179;

            v181 = v180 / v14;
            if (v180 / v14 > v8 && -[PLBatteryUIResponseTypeBatteryBreakdown canSetQualifier:forBundleID:](selfCopy, "canSetQualifier:forBundleID:", 14, v216, v181) || [v216 isEqualToString:{@"com.apple.NanoUniverse.AegirProxyApp", v181}])
            {
              v182 = PLLogCommon();
              if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138413058;
                v227 = *&v10;
                v228 = 2048;
                v229 = v180;
                v230 = 2048;
                v231 = v14;
                v232 = 2112;
                v233 = v216;
                _os_log_debug_impl(&dword_25EE51000, v182, OS_LOG_TYPE_DEBUG, "Adding Poster Qualifer: energyEntry=%@, posterEnergy=%f, energy=%f, bundleID=%@", buf, 0x2Au);
              }

              [array addObject:&unk_287146B88];
            }

            v183 = [v10 objectForKeyedSubscript:@"ChronoWidgetEnergy"];
            [v183 doubleValue];
            v185 = v184;

            v186 = v185 / v14;
            if (v185 / v14 > v8)
            {
              if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:12 forBundleID:v216, v186])
              {
                [array addObject:&unk_287146BA0];
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy getWidgetTypeForEnergyEntry:v10]== 2)
                {
                  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:16 forBundleID:v216])
                  {
                    [array removeObject:&unk_287146BA0];
                    [array addObject:&unk_287146BB8];
                  }
                }
              }
            }

            v187 = [&unk_28714D868 objectAtIndexedSubscript:{10, v186}];
            v188 = [v10 objectForKeyedSubscript:v187];
            [v188 doubleValue];
            v190 = v189;

            v191 = v190 / v14;
            if (v190 / v14 > v8 && [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:9 forBundleID:v216, v191])
            {
              [array addObject:&unk_287146B10];
            }

            v192 = [v10 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v191}];
            v193 = [v192 isEqualToString:@"com.apple.Home"];

            if (v193)
            {
              v195 = [v10 objectForKeyedSubscript:@"HomeKitEnergy"];
              [v195 doubleValue];
              v197 = v196;

              v194 = v197 / v14;
              if (v197 / v14 > v8)
              {
                if ([(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy canSetQualifier:13 forBundleID:v216, v194])
                {
                  [array addObject:&unk_287146BD0];
                }
              }
            }

            v194 = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy combineQualifiers:array, v194];
            if ([array containsObject:&unk_287146B58])
            {
              v199 = [array containsObject:&unk_287146AC8];
              if (v53 > 0.5 && v199 && ([v194 containsObject:&unk_287146A98] & 1) == 0)
              {
                v200 = [v194 arrayByAddingObject:&unk_287146AC8];

                v194 = v200;
              }
            }

            array2 = [MEMORY[0x277CBEB18] array];
            if ([v194 containsObject:&unk_287146A98])
            {
              [array2 addObject:&unk_287146A98];
            }

            if ([v194 count])
            {
              v202 = 0;
              do
              {
                v203 = [v194 objectAtIndexedSubscript:v202];
                intValue = [v203 intValue];

                if (intValue != 11)
                {
                  v205 = [v194 objectAtIndexedSubscript:v202];
                  [array2 addObject:v205];
                }

                if ([array2 count] == 2)
                {
                  break;
                }

                ++v202;
              }

              while ([v194 count] > v202);
            }

            [v10 setObject:array2 forKeyedSubscript:@"PLBatteryUIAppQualifiersKey"];

            self = selfCopy;
            v6 = v209;
            v5 = v210;
            v7 = 0x277CBE000;
          }
        }

        ++v9;
      }

      while (v9 != v5);
      v5 = [obj countByEnumeratingWithState:&v222 objects:v234 count:16];
    }

    while (v5);
  }

  v206 = *MEMORY[0x277D85DE8];
}

uint64_t __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualifiers__classDebugEnabled = result;
  return result;
}

uint64_t __57__PLBatteryUIResponseTypeBatteryBreakdown_addQualifiers___block_invoke_375(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  addQualifiers__classDebugEnabled_374 = result;
  return result;
}

- (void)applyStaticNameTransformation:(id)transformation
{
  v81 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (!bundleIDsToReplacementBundleIDs)
  {
    v63 = PLLogCommon();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }

    goto LABEL_50;
  }

  bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

  if (!bundleIDsToDisplayNames)
  {
    v63 = PLLogCommon();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }

LABEL_50:

    goto LABEL_51;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v65 = transformationCopy;
  obj = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v7 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (!v7)
  {
    goto LABEL_45;
  }

  v8 = v7;
  v9 = *v71;
  v67 = *MEMORY[0x277D0AB98];
  v10 = 0x277CCA000uLL;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v71 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v70 + 1) + 8 * i);
      v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v69 = v13;
      if ([v13 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
      {
        v14 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        v15 = *(v10 + 2992);
        [v14 doubleValue];
        v17 = [v15 numberWithDouble:-v16];
        [v12 setObject:v17 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

LABEL_10:
        goto LABEL_34;
      }

      if ([v13 isEqualToString:@"com.apple.PassbookUIService"])
      {
        [v12 setObject:&unk_28714B778 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      }

      else if (_os_feature_enabled_impl())
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v67, @"aod"];
        v19 = [v13 isEqualToString:v18];

        if (v19)
        {
          v20 = PLLogCommon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v75 = *&v13;
            v76 = 2112;
            v77 = *&v12;
            _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "processing aod entry with bundleID=%@, energyEntry=%@", buf, 0x16u);
          }

          v21 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v12 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v22 = *(v10 + 2992);
          v23 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v23 doubleValue];
          v24 = [v22 numberWithDouble:?];
          [v12 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];

          v25 = *(v10 + 2992);
          v26 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v26 doubleValue];
          v27 = [v25 numberWithDouble:?];
          [v12 setObject:v27 forKeyedSubscript:@"AlwaysOnEnergyBeforeClamp"];

          [v12 setObject:&unk_28714B778 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v66 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            v59 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            *buf = 138412802;
            v75 = *&v66;
            v76 = 2112;
            v77 = *&v59;
            v60 = v59;
            v78 = 2112;
            v79 = v13;
            _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "Subtracting foregroundPluggedInTime=%@ from alwaysOnRuntime=%@ for bundleID=%@", buf, 0x20u);
          }

          v29 = *(v10 + 2992);
          v30 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v30 doubleValue];
          v32 = v31;
          v33 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v33 doubleValue];
          v35 = v32 - v34;

          if (v35 >= 0.0)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0.0;
          }

          v37 = [v29 numberWithDouble:v36];
          [v12 setObject:v37 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v38 = PLLogCommon();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v61 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            v62 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
            *buf = 138412546;
            v75 = *&v61;
            v76 = 2112;
            v77 = *&v62;
            _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "After subtracting plugged in time, alwaysOnRuntime=%@, alwaysOnRuntimeOriginal=%@", buf, 0x16u);
          }

          v39 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v39 doubleValue];
          v41 = v40;

          v42 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v42 doubleValue];
          v44 = v43 / 3600.0;

          v45 = PLLogCommon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v75 = v41;
            v76 = 2048;
            v77 = v44;
            v78 = 2048;
            v79 = 0x4075E00000000000;
            _os_log_debug_impl(&dword_25EE51000, v45, OS_LOG_TYPE_DEBUG, "AODEnergy=%f, AODUnpluggedTime=%f, kAODModeledPowerUpperBound=%f", buf, 0x20u);
          }

          v13 = v69;
          if (v44 > 0.0)
          {
            v46 = v41 / v44;
            if (v41 / v44 > 350.0)
            {
              v47 = PLLogCommon();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
              }

              v48 = [*(v10 + 2992) numberWithDouble:v44 * 350.0];
              [v12 setObject:v48 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              v49 = PLLogCommon();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
              }
            }
          }

          v14 = [v12 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyValueKey", v46}];
          [v12 setObject:v14 forKeyedSubscript:@"AlwaysOnEnergy"];
          goto LABEL_10;
        }
      }

LABEL_34:
      bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
      v51 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v13];

      if (v51)
      {
        v52 = PLLogCommon();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v58 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          *buf = 138412546;
          v75 = *&v58;
          v76 = 2112;
          v77 = *&v51;
          _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
        }

        [v12 setObject:v51 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      }

      if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self hasHomeKit])
      {
        v53 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v54 = [v53 isEqualToString:@"HomeKit"];

        if (v54)
        {
          bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
          v56 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:@"com.apple.Home"];

          if (v56)
          {
            [v12 setObject:@"com.apple.Home" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          }

          v57 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v12 setObject:v57 forKeyedSubscript:@"HomeKitEnergy"];

          v10 = 0x277CCA000;
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  }

  while (v8);
LABEL_45:

  transformationCopy = v65;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self collapseEnergyEntries:v65];
LABEL_51:

  v64 = *MEMORY[0x277D85DE8];
}

- (void)applyDynamicNameTransformation:(id)transformation
{
  transformationCopy = transformation;
  v4 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformDeletedApps:v4];

  v5 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformPlugins:v5 withBucket:transformationCopy];

  v6 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self transformGizmoDaemons:v6];

  v7 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self reaccountExchangeEntries:v7];

  v8 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self reaccountBackupRestore:v8];

  v9 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self ongoingUpdateRestoreTransformations:v9];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self collapseEnergyEntries:transformationCopy];
}

- (void)applyDisplayNameTransformation:(id)transformation
{
  v24 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  bundleIDsToDisplayNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];

  if (bundleIDsToDisplayNames)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v17 = transformationCopy;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v17}];
          bundleIDsToDisplayNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
          v13 = [bundleIDsToDisplayNames2 objectForKeyedSubscript:v11];
          if (v13)
          {
            bundleIDsToDisplayNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToDisplayNames];
            v15 = [bundleIDsToDisplayNames3 objectForKeyedSubscript:v11];
            [v10 setObject:v15 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
          }

          else
          {
            [v10 setObject:v11 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
      transformationCopy = v17;
    }
  }

  else
  {
    obj = PLLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown addEntryTypes:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)filterEnergyEntries:(id)entries
{
  v20 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        intValue = [v11 intValue];

        if (intValue != 2 && intValue != 5)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [entriesCopy setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)filterEnergyEntriesWithRuntimes:(id)runtimes
{
  v48 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  array = [MEMORY[0x277CBEB18] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v40 = runtimesCopy;
  obj = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        if ([v11 intValue] == 1)
        {

LABEL_9:
          if (([v10 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"DeletedAppAndAppClip"))
          {
            v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;

            if (v15 < 60.0)
            {
              v16 = @"PLBatteryUIAppForegroundRuntimeKey";
              if (v15 > 0.0)
              {
                goto LABEL_16;
              }
            }
          }

          else if ([v10 isEqualToString:@"Flashlight"])
          {
            v29 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v29 doubleValue];
            v31 = v30;

            if (v31 < 60.0 && v31 > 0.0)
            {
              goto LABEL_16;
            }
          }

          else if ([v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
          {
            v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v32 doubleValue];
            v34 = v33;

            v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v35 doubleValue];
            v37 = v36;

            if (v34 < 60.0 && v37 > 2.0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }

        v12 = [v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

        if (v12)
        {
          goto LABEL_9;
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v17 doubleValue];
        v19 = v18;

        if (![(PLBatteryUIResponseTypeBatteryBreakdown *)self filterFgBg:v9 filterArray:array])
        {
          if (v19 > 0.0 && v19 < 60.0)
          {
            v21 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v19 * v23];
            [v9 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v9 setObject:&unk_287146BE8 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          }

          v25 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = v27 > 0.0 && v27 < 60.0;
          v16 = @"PLBatteryUIAppAlwaysOnRuntimeKey";
          if (!v28)
          {
            goto LABEL_17;
          }

LABEL_16:
          [v9 setObject:&unk_287146BE8 forKeyedSubscript:?];
LABEL_17:
          [array addObject:{v9, v16}];
        }

        ++v8;
      }

      while (v6 != v8);
      v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v6 = v38;
    }

    while (v38);
  }

  [v40 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v39 = *MEMORY[0x277D85DE8];
}

- (void)adjustEnergyValues:(id)values
{
  v68 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self isSlopAdjustmentEnabled])
  {
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self applySlopAdjustment:valuesCopy];
  }

  if ([(PLBatteryUIResponseTypeBatteryBreakdown *)self percentageOption]== 1)
  {
    v65 = 0;
    v4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getBatteryMaximumCapacityPercentWithError:&v65];
    obj = v65;
    if (obj)
    {
      v5 = PLLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustEnergyValues:];
      }
    }

    +[PLUtilities defaultBatteryEnergyCapacity];
    v7 = v6;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v8 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v9 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = v4 / 100.0 * v7;
      v12 = *v62;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v62 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v61 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v15 doubleValue];
          v17 = v16;

          if (v17 <= 2.0)
          {
            v15 = 0;
          }

          else
          {
            LODWORD(v15) = llround(v17 * 100.0 / v11);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          [v14 setObject:v18 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

          v19 = [MEMORY[0x277CCABB0] numberWithInt:v15];
          [v14 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        }

        v10 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v10);
    }

    goto LABEL_43;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [valuesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v20 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (!v20)
  {
LABEL_43:
    v22 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v21 = v20;
  v22 = 0;
  v23 = 0;
  v55 = *v58;
  do
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v58 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v57 + 1) + 8 * j);
      v26 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v26 doubleValue];
      v28 = v27;

      v29 = [v25 objectForKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];
      [v29 doubleValue];
      v31 = v28 - v30;

      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      v32 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
      [v32 doubleValue];
      v34 = v33;
      v35 = [valuesCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];
      [v35 doubleValue];
      v37 = v36;

      if (v28 <= 2.0)
      {
        v32 = 0;
      }

      else
      {
        v38 = v34 - v37;
        if (v34 - v37 < 0.0)
        {
          v38 = 0.0;
        }

        LODWORD(v32) = llround(v31 * 100.0 / v38);
      }

      v39 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
      [v25 setObject:v39 forKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];

      v40 = [MEMORY[0x277CCABB0] numberWithInt:v32];
      [v25 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

      v41 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
      [v41 doubleValue];
      v43 = v42;
      v44 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];
      [v44 doubleValue];
      v46 = v45;

      if (!v22)
      {
        goto LABEL_35;
      }

      v47 = v43 - v46;
      if (v43 - v46 < 0.0)
      {
        v47 = 0.0;
      }

      if (v47 < v31)
      {
LABEL_35:
        v48 = v25;

        v22 = v48;
      }

      v23 += v32;
    }

    v21 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  }

  while (v21);

  if (v23 >= 1 && v23 != 100)
  {
    v49 = MEMORY[0x277CCABB0];
    v50 = [v22 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v50 doubleValue];
    v52 = [v49 numberWithDouble:v51 + (100 - v23)];
    [v22 setObject:v52 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    if (v23 >= 0x65)
    {
      obj = PLLogCommon();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustEnergyValues:];
      }

      goto LABEL_44;
    }
  }

LABEL_45:

  v53 = *MEMORY[0x277D85DE8];
}

- (void)applySlopAdjustment:(id)adjustment
{
  v46 = *MEMORY[0x277D85DE8];
  adjustmentCopy = adjustment;
  v5 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
  [v5 doubleValue];
  v7 = v6;

  v34 = adjustmentCopy;
  v8 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
  }

  if (v10 > 0.0 && v7 <= v10)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v10];
    [adjustmentCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIExternalDrainRatio"];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
    v15 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v36;
      v19 = 0.0;
      *&v16 = 138412802;
      v32 = v16;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:{@"PLBatteryUIAppBundleIDKey", v32}];
          bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
          v24 = [v21 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v25 = [bundleIDsToEnergyKeyForSlopAdjustment objectForKey:v24];

          if (v25)
          {
            bundleIDsToEnergyKeyForSlopAdjustment2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
            v27 = [bundleIDsToEnergyKeyForSlopAdjustment2 objectForKeyedSubscript:v22];

            [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyToRemoveForSlopAdjustment:v21 withEnergyKey:v27 forBucket:v34];
            v29 = v28;
            v30 = PLLogCommon();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = v32;
              v40 = v22;
              v41 = 2112;
              v42 = v27;
              v43 = 2048;
              v44 = v29;
              _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "bundleIDKey=%@, energyKey=%@, energyToRemove=%f", buf, 0x20u);
            }

            v19 = v19 + v29;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v17);
    }

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
    }
  }

  else
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applySlopAdjustment:];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (double)getEnergyToRemoveForSlopAdjustment:(id)adjustment withEnergyKey:(id)key forBucket:(id)bucket
{
  v41 = *MEMORY[0x277D85DE8];
  adjustmentCopy = adjustment;
  keyCopy = key;
  bucketCopy = bucket;
  bundleIDsToEnergyKeyForSlopAdjustment = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToEnergyKeyForSlopAdjustment];
  v12 = [adjustmentCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v13 = [bundleIDsToEnergyKeyForSlopAdjustment objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = [adjustmentCopy objectForKeyedSubscript:keyCopy];
    [v15 doubleValue];
    v17 = v16;

    if (v17 > 0.0)
    {
      v18 = [adjustmentCopy objectForKeyedSubscript:keyCopy];
      [v18 doubleValue];
      v20 = v19;

      v21 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIExternalDrainRatio"];
      [v21 doubleValue];
      v23 = v22;

      if (v20 - v20 * v23 >= 0.0)
      {
        v24 = v20 - v20 * v23;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = PLLogCommon();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v33 = 134218752;
        v34 = v20;
        v35 = 2048;
        v36 = v23;
        v37 = 2048;
        v38 = v20 * v23;
        v39 = 2048;
        v40 = v24;
        _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "energyToAdjust=%f, adjustmentFactor=%f, adjustedEnergy=%f, energyToRemove=%f", &v33, 0x2Au);
      }

      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      [adjustmentCopy setObject:v26 forKeyedSubscript:@"PLBatteryUIAppEnergyToRemoveForPercentageAdjustmentKey"];

      v27 = MEMORY[0x277CCABB0];
      v28 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];
      [v28 doubleValue];
      v30 = [v27 numberWithDouble:v24 + v29];
      [bucketCopy setObject:v30 forKeyedSubscript:@"PLBatteryUITotalEnergyToRemoveForPercentageAdjustmentKey"];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v28 = PLLogCommon();
  v24 = 0.0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getEnergyToRemoveForSlopAdjustment:adjustmentCopy withEnergyKey:keyCopy forBucket:?];
  }

LABEL_12:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)adjustRuntimes:(id)runtimes
{
  v29 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  bundleIDsToForegroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];

  if (bundleIDsToForegroundTimes)
  {
    bundleIDsToBackgroundTimes = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];

    if (bundleIDsToBackgroundTimes)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v23 = runtimesCopy;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            if (v13)
            {
              bundleIDsToForegroundTimes2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];
              v15 = [bundleIDsToForegroundTimes2 objectForKeyedSubscript:v13];

              if (v15)
              {
                bundleIDsToForegroundTimes3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToForegroundTimes];
                v17 = [bundleIDsToForegroundTimes3 objectForKeyedSubscript:v13];
                [v12 setObject:v17 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
              }

              bundleIDsToBackgroundTimes2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];
              v19 = [bundleIDsToBackgroundTimes2 objectForKeyedSubscript:v13];

              if (v19)
              {
                bundleIDsToBackgroundTimes3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToBackgroundTimes];
                v21 = [bundleIDsToBackgroundTimes3 objectForKeyedSubscript:v13];
                [v12 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v9);
        runtimesCopy = v23;
      }
    }

    else
    {
      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown adjustRuntimes:];
      }
    }
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown adjustRuntimes:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)adjustExtensionBackgroundTimeWithEnergyEntries:(id)entries
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [entries objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v10 = v9;
        if (v9 && (([v9 isEqualToString:@"com.apple.store.Jolly.spotlightindex"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"com.apple.mobilemail.DiagnosticExtension")))
        {
          [v8 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v8 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addTotals:(id)totals
{
  v37 = *MEMORY[0x277D85DE8];
  totalsCopy = totals;
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
  [totalsCopy setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v31 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = MEMORY[0x277CCABB0];
        v9 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
        [v9 doubleValue];
        v11 = v10;
        v12 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v12 doubleValue];
        v14 = [v8 numberWithDouble:v11 + v13];
        [totalsCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];

        v15 = MEMORY[0x277CCABB0];
        v16 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        [v19 doubleValue];
        v21 = [v15 numberWithDouble:v18 + v20];
        [totalsCopy setObject:v21 forKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];

        v22 = MEMORY[0x277CCABB0];
        v23 = [totalsCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];
        [v23 doubleValue];
        v25 = v24;
        v26 = [v7 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v26 doubleValue];
        v28 = [v22 numberWithDouble:v25 + v27];
        [totalsCopy setObject:v28 forKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v5);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)addErrorCode:(id)code
{
  codeCopy = code;
  if (![(PLBatteryUIResponseTypeBatteryBreakdown *)self shouldShowBreakdown:?])
  {
    v4 = [codeCopy objectForKeyedSubscript:@"PLBatteryUIForegroundTimeKey"];
    [v4 doubleValue];
    if (v5 >= 60.0)
    {
    }

    else
    {
      v6 = [codeCopy objectForKeyedSubscript:@"PLBatteryUIBackgroundTimeKey"];
      [v6 doubleValue];
      v8 = v7;

      if (v8 < 60.0)
      {
        [codeCopy setObject:&unk_287146A50 forKeyedSubscript:@"PLBatteryUIErrorCodeKey"];
        v9 = MEMORY[0x277CBEBF8];
        v10 = @"PLBatteryUIAppArrayKey";
        goto LABEL_7;
      }
    }
  }

  v9 = &unk_287146A20;
  v10 = @"PLBatteryUIErrorCodeKey";
LABEL_7:
  [codeCopy setObject:v9 forKeyedSubscript:v10];
}

- (BOOL)shouldShowBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  lastBatteryEntry = [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastBatteryEntry];
  v6 = [lastBatteryEntry objectForKeyedSubscript:@"DesignCapacity"];
  [v6 doubleValue];
  v8 = v7;

  lastBatteryEntry2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastBatteryEntry];
  v10 = [lastBatteryEntry2 objectForKeyedSubscript:@"Voltage"];
  [v10 doubleValue];
  v12 = v11 / 1000.0;

  v13 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUITotalEnergyKey"];

  [v13 doubleValue];
  LOBYTE(breakdownCopy) = v14 > v8 * v12 * 0.001;

  return breakdownCopy;
}

- (void)cleanEntries:(id)entries
{
  v4 = [entries objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLBatteryUIResponseTypeBatteryBreakdown_cleanEntries___block_invoke;
  v5[3] = &unk_279A5C310;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __56__PLBatteryUIResponseTypeBatteryBreakdown_cleanEntries___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 removeObjectForKey:@"NotificationInfo"];
  v3 = [v5 objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) stringifyKeysForDict:v3];
    [v5 setObject:v4 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
  }
}

- (void)normalizeBucket:(id)bucket to:(int)to
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = [bucket objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v6)
  {
    v9 = 0.0;
LABEL_11:
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v34 + 1) + 8 * i) setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v15);
    }

    goto LABEL_19;
  }

  v7 = v6;
  v8 = *v39;
  v9 = 0.0;
  do
  {
    for (j = 0; j != v7; ++j)
    {
      if (*v39 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v38 + 1) + 8 * j) objectForKeyedSubscript:@"PLBatteryUIAppEnergyUsedKey"];
      [v11 doubleValue];
      v9 = v9 + v12;
    }

    v7 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v7);
  if (v9 <= 0.0)
  {
    goto LABEL_11;
  }

LABEL_19:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v31;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v30 + 1) + 8 * k);
        v24 = [v23 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyUsedKey", v30}];
        [v24 doubleValue];
        v26 = v25;

        LODWORD(v27) = llround(v26 / v9 * to);
        v28 = [MEMORY[0x277CCABB0] numberWithInt:v27];
        [v23 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      }

      v20 = [v18 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)createPerAppBreakdown:(id)breakdown
{
  breakdownCopy = breakdown;
  v4 = [breakdownCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_29];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke_2;
  v13 = &unk_279A5E4F0;
  v14 = v6;
  v15 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];
  [breakdownCopy setObject:v9 forKeyedSubscript:{@"PLBatteryUIPerAppBreakdownKey", v10, v11, v12, v13}];
  [breakdownCopy setObject:v8 forKeyedSubscript:@"PLBatteryUIAppBreakdownSortOrderKey"];
}

uint64_t __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

  [v8 doubleValue];
  v10 = v9;

  if (v7 > v10)
  {
    return -1;
  }

  else
  {
    return v7 < v10;
  }
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_createPerAppBreakdown___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];

  [*(a1 + 40) addObject:v4];
}

- (void)collapseEnergyEntries:(id)entries
{
  v24 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v11)
        {
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (v12)
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke;
            v16[3] = &unk_279A5C140;
            v17 = dictionary;
            v18 = v11;
            [v10 enumerateKeysAndObjectsUsingBlock:v16];
          }

          else
          {
            [dictionary setObject:v10 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  allValues = [dictionary allValues];
  v14 = [allValues mutableCopy];
  [entriesCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  v15 = *MEMORY[0x277D85DE8];
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"NotificationInfo"])
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 objectForKeyedSubscript:@"NotificationInfo"];

    v9 = v6;
    if (!v9 || v8)
    {
      [v8 combineWith:v9];
    }

    else
    {
      v10 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v10 setObject:v9 forKeyedSubscript:@"NotificationInfo"];
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([v5 isEqualToString:@"WidgetUpdateTypeToCount"])
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v11 objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];

    v9 = v6;
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_1();
    }

    if ([v8 count] || !objc_msgSend(v9, "count"))
    {
      v13 = [v8 mutableCopy];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_569;
      v25[3] = &unk_279A5E518;
      v14 = v13;
      v26 = v14;
      [v9 enumerateKeysAndObjectsUsingBlock:v25];
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_2();
      }

      v16 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v16 setObject:v14 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
    }

    else
    {
      v14 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v14 setObject:v9 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = MEMORY[0x277CCABB0];
    [v6 doubleValue];
    v19 = v18;
    v20 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v21 = [v20 objectForKeyedSubscript:v5];
    [v21 doubleValue];
    v23 = [v17 numberWithDouble:v19 + v22];
    v24 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v24 setObject:v23 forKeyedSubscript:v5];
  }

LABEL_20:
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_569(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = MEMORY[0x277CCABB0];
  if (v7)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v10 = [v8 numberWithInt:{objc_msgSend(v11, "intValue") + objc_msgSend(v9, "intValue")}];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

    v6 = v10;
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue")}];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
  }
}

- (id)combineQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  v4 = qualifiersCopy;
  if (qualifiersCopy && [qualifiersCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:v4];
    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B58))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146A98))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AE0] && objc_msgSend(v5, "containsObject:", &unk_287146A98))
    {
      [v5 removeObject:&unk_287146AE0];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146AB0))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146B58] && objc_msgSend(v5, "containsObject:", &unk_287146B28))
    {
      [v5 removeObject:&unk_287146B58];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B40))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146B40] && objc_msgSend(v5, "containsObject:", &unk_287146B28))
    {
      [v5 removeObject:&unk_287146B40];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B70))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146BD0))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    if ([v5 containsObject:&unk_287146AC8] && objc_msgSend(v5, "containsObject:", &unk_287146B10))
    {
      [v5 removeObject:&unk_287146AC8];
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (void)reaccountExchangeEntries:(id)entries
{
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  exchangeBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];

  if (exchangeBundleIDs)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v41 = entriesCopy;
    v7 = entriesCopy;
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v55;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v55 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v54 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v13)
          {
            v14 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v12 forKeyedSubscript:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v9);
    }

    v15 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v17 doubleValue];
      v19 = v18;

      if (v19 != 0.0)
      {
        v40 = v16;
        v52 = 0u;
        v53 = 0u;
        v51 = 0u;
        v50 = 0u;
        exchangeBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];
        v21 = [exchangeBundleIDs2 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v51;
          v24 = 0.0;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v51 != v23)
              {
                objc_enumerationMutation(exchangeBundleIDs2);
              }

              v26 = [dictionary objectForKeyedSubscript:*(*(&v50 + 1) + 8 * j)];
              v27 = v26;
              if (v26)
              {
                v28 = [v26 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v28 doubleValue];
                v30 = v29;

                if (v30 >= 0.0)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = 0.0;
                }

                v24 = v24 + v31;
              }
            }

            v22 = [exchangeBundleIDs2 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v22);
        }

        else
        {
          v24 = 0.0;
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        exchangeBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self exchangeBundleIDs];
        v33 = [exchangeBundleIDs3 countByEnumeratingWithState:&v46 objects:v58 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v47;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(exchangeBundleIDs3);
              }

              v37 = [dictionary objectForKeyedSubscript:*(*(&v46 + 1) + 8 * k)];
              v38 = v37;
              if (v37)
              {
                v42[0] = MEMORY[0x277D85DD0];
                v42[1] = 3221225472;
                v42[2] = __68__PLBatteryUIResponseTypeBatteryBreakdown_reaccountExchangeEntries___block_invoke;
                v42[3] = &unk_279A5C0F0;
                v43 = v37;
                v44 = v19;
                v45 = v24;
                [v43 enumerateKeysAndObjectsUsingBlock:v42];
              }
            }

            v34 = [exchangeBundleIDs3 countByEnumeratingWithState:&v46 objects:v58 count:16];
          }

          while (v34);
        }

        v16 = v40;
        [v7 removeObject:v40];
      }
    }

    entriesCopy = v41;
  }

  else
  {
    dictionary = PLLogCommon();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __68__PLBatteryUIResponseTypeBatteryBreakdown_reaccountExchangeEntries___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)ongoingUpdateRestoreEntryInitializer
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"DeviceSetup" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  [dictionary setObject:&unk_287146A50 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
  [dictionary setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

  return dictionary;
}

- (void)ongoingUpdateRestoreTransformations:(id)transformations
{
  v52 = *MEMORY[0x277D85DE8];
  transformationsCopy = transformations;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v5 = [transformationsCopy countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v5)
  {
    ongoingUpdateRestoreEntryInitializer = 0;
    goto LABEL_36;
  }

  v6 = v5;
  selfCopy = self;
  ongoingUpdateRestoreEntryInitializer = 0;
  v8 = *v42;
  v9 = 0.0;
  v38 = transformationsCopy;
  do
  {
    v10 = 0;
    do
    {
      if (*v42 != v8)
      {
        objc_enumerationMutation(transformationsCopy);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([v12 rangeOfString:@"Backup"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v12, "rangeOfString:", @"Restore") != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeBatteryBreakdown *)&v39 ongoingUpdateRestoreTransformations:v40];
        }

        [v11 setObject:@"DeviceSetup" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v23 = v11;

        v21 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v21 doubleValue];
        v9 = v24;
        ongoingUpdateRestoreEntryInitializer = v23;
        goto LABEL_18;
      }

      v13 = [&unk_28714D880 objectAtIndexedSubscript:16];
      v14 = [v11 objectForKeyedSubscript:v13];
      [v14 doubleValue];
      v16 = v15;

      if (v16 > 0.0)
      {
        v17 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v17 doubleValue];
        v19 = v18;

        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v27 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          *buf = 134218498;
          v46 = v16;
          v47 = 2048;
          v48 = v19;
          v49 = 2112;
          v50 = *&v27;
          _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "Ongoing Restore: energyEntryOngoingRestoreEnergy is %f and energy is %f for Bundle ID is %@", buf, 0x20u);
        }

        if (v16 <= v19)
        {
          v25 = [MEMORY[0x277CCABB0] numberWithDouble:v19 - v16];
          [v11 setObject:v25 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
          }

          v9 = v9 + v16;
          v21 = PLLogCommon();
          transformationsCopy = v38;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v46 = v9;
            _os_log_debug_impl(&dword_25EE51000, v21, OS_LOG_TYPE_DEBUG, "Ongoing Restore: Total ongoing restore energy is %f", buf, 0xCu);
          }
        }

        else
        {
          v21 = PLLogCommon();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v28 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            *buf = 138412802;
            v46 = *&v28;
            v47 = 2048;
            v48 = v16;
            v49 = 2048;
            v50 = v19;
            _os_log_error_impl(&dword_25EE51000, v21, OS_LOG_TYPE_ERROR, "Ongoing Restore: qualified ongoing restore energy for Bundle ID %@ is %f but total energy is %f", buf, 0x20u);
          }

          transformationsCopy = v38;
        }

LABEL_18:

        goto LABEL_19;
      }

      transformationsCopy = v38;
LABEL_19:

      ++v10;
    }

    while (v6 != v10);
    v29 = [transformationsCopy countByEnumeratingWithState:&v41 objects:v51 count:16];
    v6 = v29;
  }

  while (v29);
  if (v9 != 0.0)
  {
    if (!ongoingUpdateRestoreEntryInitializer)
    {
      ongoingUpdateRestoreEntryInitializer = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy ongoingUpdateRestoreEntryInitializer];
      [transformationsCopy addObject:ongoingUpdateRestoreEntryInitializer];
      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
      }
    }

    v31 = MEMORY[0x277CCABB0];
    v32 = [ongoingUpdateRestoreEntryInitializer objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v32 doubleValue];
    v34 = [v31 numberWithDouble:v9 + v33];
    [ongoingUpdateRestoreEntryInitializer setObject:v34 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

    v35 = PLLogCommon();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown ongoingUpdateRestoreTransformations:];
    }

    transformationsCopy = v38;
  }

LABEL_36:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)reaccountBackupRestore:(id)restore
{
  v44 = *MEMORY[0x277D85DE8];
  restoreCopy = restore;
  v4 = restoreCopy;
  if (restoreCopy && [restoreCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
      block[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v16;
      if (reaccountBackupRestore__defaultOnce != -1)
      {
        dispatch_once(&reaccountBackupRestore__defaultOnce, block);
      }

      if (reaccountBackupRestore__classDebugEnabled == 1)
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"backupEnergyEntry=%@, restoreEnergyEntry=%@", v14, v15];
        v18 = MEMORY[0x277D3F178];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
        lastPathComponent = [v19 lastPathComponent];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown reaccountBackupRestore:]"];
        [v18 logMessage:v17 fromFile:lastPathComponent fromFunction:v21 fromLineNumber:1407];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_601;
      v35[3] = &unk_279A5C118;
      v23 = v14;
      v36 = v23;
      v24 = v15;
      v37 = v24;
      [v23 enumerateKeysAndObjectsUsingBlock:v35];
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v25 = objc_opt_class();
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_2;
        v34[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v34[4] = v25;
        if (reaccountBackupRestore__defaultOnce_602 != -1)
        {
          dispatch_once(&reaccountBackupRestore__defaultOnce_602, v34);
        }

        if (reaccountBackupRestore__classDebugEnabled_603 == 1)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"combined backupEnergyEntry=%@", v23];
          v33 = MEMORY[0x277D3F178];
          v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
          lastPathComponent2 = [v27 lastPathComponent];
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown reaccountBackupRestore:]"];
          [v33 logMessage:v26 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:1421];

          v30 = v26;
          v31 = PLLogCommon();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      [v6 removeObject:v24];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestore__classDebugEnabled = result;
  return result;
}

void __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_601(uint64_t a1, void *a2, void *a3)
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

uint64_t __66__PLBatteryUIResponseTypeBatteryBreakdown_reaccountBackupRestore___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  reaccountBackupRestore__classDebugEnabled_603 = result;
  return result;
}

- (void)transformDeletedApps:(id)apps
{
  v52 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  deletedAppBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
  if ([deletedAppBundleIDs count])
  {
  }

  else
  {
    deletedAppClipBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
    v7 = [deletedAppClipBundleIDs count];

    if (!v7)
    {
      obj = PLLogCommon();
      if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:];
      }

      goto LABEL_39;
    }
  }

  deletedAppClipBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
  if ([deletedAppClipBundleIDs2 count])
  {
    deletedAppBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
    v10 = [deletedAppBundleIDs2 count];

    if (v10)
    {
      v11 = @"DeletedAppAndAppClip";
      goto LABEL_12;
    }
  }

  else
  {
  }

  deletedAppBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
  v13 = [deletedAppBundleIDs3 count];

  if (v13)
  {
    v11 = @"DeletedApp";
  }

  else
  {
    deletedAppClipBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
    v15 = [deletedAppClipBundleIDs3 count];

    v11 = @"DeletedAppClip";
    if (!v15)
    {
      v11 = 0;
    }
  }

LABEL_12:
  v40 = v11;
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = appsCopy;
  v17 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v17)
  {
    v18 = v17;
    v38 = appsCopy;
    v41 = *v46;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v46 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * v19);
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v21 = objc_opt_class();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __64__PLBatteryUIResponseTypeBatteryBreakdown_transformDeletedApps___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v21;
          if (transformDeletedApps__defaultOnce != -1)
          {
            dispatch_once(&transformDeletedApps__defaultOnce, block);
          }

          if (transformDeletedApps__classDebugEnabled == 1)
          {
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v20];
            v23 = MEMORY[0x277D3F178];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
            lastPathComponent = [v24 lastPathComponent];
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformDeletedApps:]"];
            [v23 logMessage:v22 fromFile:lastPathComponent fromFunction:v26 fromLineNumber:1447];

            v27 = PLLogCommon();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v50 = v22;
              _os_log_debug_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        deletedAppBundleIDs4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppBundleIDs];
        v29 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([deletedAppBundleIDs4 containsObject:v29])
        {
        }

        else
        {
          deletedAppClipBundleIDs4 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self deletedAppClipBundleIDs];
          v31 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v32 = [deletedAppClipBundleIDs4 containsObject:v31];

          if (!v32)
          {
            goto LABEL_32;
          }
        }

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryBreakdownService *)&v42 mapDeletedAppsWithEnergyEntries:v43];
        }

        [v20 setObject:v40 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_32:
        v34 = [v20 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v35 = [v34 containsString:@"Unspecified"];

        if (v35)
        {
          v36 = PLLogCommon();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEFAULT, "AppDeletion : Found an unspecified entry so refactoring", buf, 2u);
          }

          [v20 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        }

        ++v19;
      }

      while (v18 != v19);
      v18 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v18)
      {
        appsCopy = v38;
        break;
      }
    }
  }

LABEL_39:

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __64__PLBatteryUIResponseTypeBatteryBreakdown_transformDeletedApps___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformDeletedApps__classDebugEnabled = result;
  return result;
}

- (void)transformPlugins:(id)plugins withBucket:(id)bucket
{
  v118 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  bucketCopy = bucket;
  pluginBundleIDsToEntries = [(PLBatteryUIResponseTypeBatteryBreakdown *)self pluginBundleIDsToEntries];

  if (pluginBundleIDsToEntries)
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v8 = pluginsCopy;
    v9 = [v8 countByEnumeratingWithState:&v103 objects:v117 count:16];
    if (v9)
    {
      v10 = v9;
      v92 = pluginsCopy;
      v100 = *v104;
      v11 = 0x277D3F000uLL;
      v95 = *MEMORY[0x277D0AB98];
      v97 = v8;
      while (1)
      {
        v12 = 0;
        v98 = v10;
        do
        {
          if (*v104 != v100)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v103 + 1) + 8 * v12);
          if ([*(v11 + 384) debugEnabled])
          {
            v14 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v14;
            if (transformPlugins_withBucket__defaultOnce != -1)
            {
              dispatch_once(&transformPlugins_withBucket__defaultOnce, block);
            }

            if (transformPlugins_withBucket__classDebugEnabled == 1)
            {
              v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v13];
              v16 = MEMORY[0x277D3F178];
              v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
              lastPathComponent = [v17 lastPathComponent];
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:]"];
              [v16 logMessage:v15 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:1470];

              v20 = PLLogCommon();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v108 = v15;
                _os_log_debug_impl(&dword_25EE51000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v11 = 0x277D3F000uLL;
            }
          }

          pluginBundleIDsToEntries2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self pluginBundleIDsToEntries];
          v22 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v23 = [pluginBundleIDsToEntries2 objectForKeyedSubscript:v22];

          if (v23)
          {
            if ([*(v11 + 384) debugEnabled])
            {
              v24 = objc_opt_class();
              v101[0] = MEMORY[0x277D85DD0];
              v101[1] = 3221225472;
              v101[2] = __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke_615;
              v101[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v101[4] = v24;
              if (transformPlugins_withBucket__defaultOnce_613 != -1)
              {
                dispatch_once(&transformPlugins_withBucket__defaultOnce_613, v101);
              }

              if (transformPlugins_withBucket__classDebugEnabled_614 == 1)
              {
                v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
                v26 = MEMORY[0x277D3F178];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeBatteryBreakdown.m"];
                lastPathComponent2 = [v27 lastPathComponent];
                v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:]"];
                [v26 logMessage:v25 fromFile:lastPathComponent2 fromFunction:v29 fromLineNumber:1475];

                v30 = PLLogCommon();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v108 = v25;
                  _os_log_debug_impl(&dword_25EE51000, v30, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v10 = v98;
                v11 = 0x277D3F000;
              }
            }

            v31 = [v23 objectForKeyedSubscript:@"PluginId"];
            v32 = [v31 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

            if ((v32 & 1) == 0)
            {
              v33 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v34 = [v23 objectForKeyedSubscript:@"PluginParentApp"];
              if ([(__CFString *)v33 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                v35 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getEnergyEntry:v8 forBundleID:v34];
              }

              else
              {
                v35 = 0;
              }

              v36 = PLLogCommon();
              v99 = v34;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                v81 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                *buf = 138412546;
                v108 = v81;
                v109 = 2112;
                v110 = v99;
                _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                v34 = v99;
              }

              [(__CFString *)v13 setObject:v34 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v37 = [v23 objectForKeyedSubscript:@"PluginType"];
              v38 = [v37 isEqualToString:@"com.apple.watchkit"];

              if (v38)
              {
                v39 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [(__CFString *)v13 setObject:v39 forKeyedSubscript:@"WatchEnergy"];
                goto LABEL_30;
              }

              v47 = [v23 objectForKeyedSubscript:@"PluginType"];
              v48 = [v47 isEqualToString:@"com.apple.widgetkit-extension"];

              if (v48)
              {
                v49 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [(__CFString *)v13 setObject:v49 forKeyedSubscript:@"ChronoWidgetEnergy"];

                v50 = PLLogCommon();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v83 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v94 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [v94 doubleValue];
                  *buf = 138412546;
                  v108 = v83;
                  v109 = 2048;
                  v110 = v84;
                  _os_log_debug_impl(&dword_25EE51000, v50, OS_LOG_TYPE_DEBUG, "Widget Energy for %@ : %f", buf, 0x16u);
                }

                v51 = [(__CFString *)v13 objectForKeyedSubscript:@"ChronoWidgetEnergy"];
                [v51 doubleValue];
                v53 = v52;

                v40 = v35;
                if (v53 > 0.0)
                {
                  v54 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketStartKey"];
                  [v54 doubleValue];
                  v56 = v55;
                  v57 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketEndKey"];
                  [v57 doubleValue];
                  v59 = v58;
                  v60 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIBucketStartKey"];
                  [v60 doubleValue];
                  v62 = v59 - v61;

                  v39 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getWidgetUpdateTypeToCount:v33 inRange:v56, v62];
                  if ([v39 count])
                  {
                    [(__CFString *)v13 setObject:v39 forKeyedSubscript:@"WidgetUpdateTypeToCount"];
                  }

                  v8 = v97;
LABEL_30:
                  v40 = v35;
LABEL_31:
                }
              }

              else
              {
                v63 = [v23 objectForKeyedSubscript:@"PluginType"];
                v64 = [v63 isEqualToString:@"com.apple.posterkit.provider"];

                v8 = v97;
                v40 = v35;
                if (v64)
                {
                  v65 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [(__CFString *)v13 setObject:v65 forKeyedSubscript:@"PosterEnergy"];

                  v66 = PLLogCommon();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                  {
                    v85 = [(__CFString *)v13 objectForKeyedSubscript:@"PosterEnergy"];
                    *buf = 138412802;
                    v108 = v33;
                    v109 = 2112;
                    v110 = v85;
                    v111 = 2112;
                    v112 = v99;
                    _os_log_debug_impl(&dword_25EE51000, v66, OS_LOG_TYPE_DEBUG, "bundleID=%@, posterEnergy=%@, parentApp=%@", buf, 0x20u);
                  }

                  v8 = v97;
                  if (!v99)
                  {
                    v67 = PLLogCommon();
                    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                    {
                      v87 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
                      v89 = [bundleIDsToReplacementBundleIDs objectForKeyedSubscript:v95];
                      *buf = 138412546;
                      v108 = v87;
                      v109 = 2112;
                      v110 = v89;
                      _os_log_debug_impl(&dword_25EE51000, v67, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
                    }

                    bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
                    v69 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v95];
                    [(__CFString *)v13 setObject:v69 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

                    v8 = v97;
                  }

                  if (([(__CFString *)v33 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"]& 1) != 0)
                  {
                    v70 = 1;
                  }

                  else
                  {
                    v70 = [(__CFString *)v33 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosAmbientPosterProvider"];
                  }

                  v71 = PLLogCommon();
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    LODWORD(v108) = v70;
                    _os_log_debug_impl(&dword_25EE51000, v71, OS_LOG_TYPE_DEBUG, "isPhotosPoster=%d", buf, 8u);
                  }

                  if (v70)
                  {
                    v72 = PLLogCommon();
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                    {
                      v86 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                      *buf = 138412546;
                      v108 = v86;
                      v109 = 2112;
                      v110 = @"com.apple.mobileslideshow";
                      _os_log_debug_impl(&dword_25EE51000, v72, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                      v8 = v97;
                    }

                    [(__CFString *)v13 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v39 = PLLogCommon();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                  {
                    v73 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v93 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v93 doubleValue];
                    v75 = v74;
                    v76 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v76 doubleValue];
                    v78 = v77;
                    v79 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                    [v79 doubleValue];
                    *buf = 138413314;
                    v108 = v33;
                    v109 = 2112;
                    v110 = v73;
                    v111 = 2048;
                    v112 = v75;
                    v113 = 2048;
                    v114 = v78;
                    v115 = 2048;
                    v116 = v80;
                    _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "Mapping Poster %@ to %@ – energy:%f, foregroundRunTime:%f, bgRunTime:%f", buf, 0x34u);

                    v8 = v97;
                  }

                  goto LABEL_31;
                }
              }

              if ([(__CFString *)v33 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                v41 = PLLogCommon();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v82 = [(__CFString *)v13 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  *buf = 138412546;
                  v108 = v82;
                  v109 = 2112;
                  v110 = @"ContinuityCamera";
                  _os_log_debug_impl(&dword_25EE51000, v41, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);

                  v8 = v97;
                }

                [(__CFString *)v13 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                v42 = PLLogCommon();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v108 = v40;
                  v109 = 2112;
                  v110 = v13;
                  _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "continuityParentAppEnergyEntry=%@, energyEntry=%@", buf, 0x16u);
                }

                if (v40)
                {
                  v43 = [(__CFString *)v40 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                  [v43 doubleValue];
                  v45 = v44;

                  v8 = v97;
                  if (v45 > 0.0)
                  {
                    [(__CFString *)v40 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    [(__CFString *)v40 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                  }
                }

                v46 = PLLogCommon();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v108 = v13;
                  _os_log_debug_impl(&dword_25EE51000, v46, OS_LOG_TYPE_DEBUG, "After adjusting Continuity Camera extension energyEntry=%@", buf, 0xCu);
                }
              }

              v10 = v98;
              v11 = 0x277D3F000;
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v90 = [v8 countByEnumeratingWithState:&v103 objects:v117 count:16];
        v10 = v90;
        if (!v90)
        {
          pluginsCopy = v92;
          break;
        }
      }
    }
  }

  else
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown transformPlugins:withBucket:];
    }
  }

  v91 = *MEMORY[0x277D85DE8];
}

uint64_t __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withBucket__classDebugEnabled = result;
  return result;
}

uint64_t __71__PLBatteryUIResponseTypeBatteryBreakdown_transformPlugins_withBucket___block_invoke_615(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withBucket__classDebugEnabled_614 = result;
  return result;
}

- (void)transformGizmoDaemons:(id)daemons
{
  v79 = *MEMORY[0x277D85DE8];
  daemonsCopy = daemons;
  bundleIDsToReplacementBundleIDs = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];

  if (bundleIDsToReplacementBundleIDs)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v6 = daemonsCopy;
    v7 = [v6 countByEnumeratingWithState:&v67 objects:v78 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v68;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v67 + 1) + 8 * i);
          bundleIDsToReplacementBundleIDs2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
          v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v14 = [bundleIDsToReplacementBundleIDs2 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = PLLogCommon();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v17 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              *buf = 138412546;
              v75 = v17;
              v76 = 2112;
              v77 = v14;
              _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            [v11 setObject:v14 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v16 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v11 setObject:v16 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v67 objects:v78 count:16];
      }

      while (v8);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v63 + 1) + 8 * j);
          v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          if ([v24 hasSuffix:@"/watch"])
          {
            v25 = PLLogCommon();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v53 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v51 = [v24 substringWithRange:{0, objc_msgSend(v24, "length") - 6}];
              *buf = 138412546;
              v75 = v53;
              v76 = 2112;
              v77 = v51;
              _os_log_debug_impl(&dword_25EE51000, v25, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            v26 = [v24 substringWithRange:{0, objc_msgSend(v24, "length") - 6}];
            [v23 setObject:v26 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v27 = [v23 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v23 setObject:v27 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v20);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = v18;
    v29 = [v28 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v60;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v59 + 1) + 8 * k);
          v34 = [v33 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          if ([v34 hasSuffix:@".watchkitextension"])
          {
            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v54 = [v33 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v52 = [v34 substringWithRange:{0, objc_msgSend(v34, "length") - 18}];
              *buf = 138412546;
              v75 = v54;
              v76 = 2112;
              v77 = v52;
              _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            v36 = [v34 substringWithRange:{0, objc_msgSend(v34, "length") - 18}];
            [v33 setObject:v36 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

            v37 = [v33 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v33 setObject:v37 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v30);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = v28;
    v39 = [v38 countByEnumeratingWithState:&v55 objects:v71 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v56;
      do
      {
        for (m = 0; m != v40; ++m)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v55 + 1) + 8 * m);
          bundleIDsToReplacementBundleIDs3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self bundleIDsToReplacementBundleIDs];
          v45 = [v43 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v46 = [bundleIDsToReplacementBundleIDs3 objectForKeyedSubscript:v45];

          if (v46)
          {
            v47 = PLLogCommon();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              v49 = [v43 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              *buf = 138412546;
              v75 = v49;
              v76 = 2112;
              v77 = v46;
              _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "Static mapping: Changed %@ to %@", buf, 0x16u);
            }

            [v43 setObject:v46 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v48 = [v43 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v43 setObject:v48 forKeyedSubscript:@"WatchEnergy"];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v55 objects:v71 count:16];
      }

      while (v40);
    }
  }

  else
  {
    v38 = PLLogCommon();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeBatteryBreakdown applyStaticNameTransformation:];
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)transformCloudDocs:(id)docs
{
  v27 = *MEMORY[0x277D85DE8];
  docsCopy = docs;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [docsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = @"com.apple.clouddocs.";
    v8 = @".";
    do
    {
      v9 = 0;
      v21 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(docsCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if ([v11 hasPrefix:v7])
        {
          v12 = [v11 substringFromIndex:{-[__CFString length](v7, "length")}];
          v13 = [v12 rangeOfString:v8];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v6;
            v16 = v7;
            v17 = docsCopy;
            v18 = v8;
            v19 = [v12 substringFromIndex:v13 + v14];
            if (v19)
            {
              [v10 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            }

            v8 = v18;
            docsCopy = v17;
            v7 = v16;
            v6 = v15;
            v5 = v21;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [docsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSetQualifier:(int64_t)qualifier forBundleID:(id)d
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

  if (([dCopy isEqualToString:@"Backup & Restore"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Backup") & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"Restore") & 1) == 0 && !objc_msgSend(dCopy, "isEqualToString:", @"SoundRecognition"))
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

LABEL_42:
              LOBYTE(v10) = 1;
              goto LABEL_10;
            }

            v17 = [dCopy isEqualToString:@"com.apple.camera"];
            if ((qualifier != 10 || (v17 & 1) == 0) && ([dCopy isEqualToString:@"PoorCellCondition"] & 1) == 0 && (objc_msgSend(dCopy, "isEqualToString:", @"com.apple.Preferences") & 1) == 0)
            {
              goto LABEL_42;
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

- (int)computeNumberOfBuckets
{
  selfCopy = self;
  v3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
  start = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy start];
  [v3 timeIntervalSinceDate:start];
  v6 = v5;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy bucketSize];
  LODWORD(selfCopy) = llround(v6 / v7);

  return selfCopy;
}

- (void)enumerateBucketsUsingBlock:(id)block
{
  blockCopy = block;
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  if (computeNumberOfBuckets >= 1)
  {
    v5 = computeNumberOfBuckets;
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = 0.0;
      if (v6)
      {
        [(PLBatteryUIResponseTypeBatteryBreakdown *)self dynamicEndOffset];
        v8 = v9;
      }

      v10 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self end];
      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v12 = [v10 dateByAddingTimeInterval:-(v8 + v7 * v11)];

      [(PLBatteryUIResponseTypeBatteryBreakdown *)self bucketSize];
      v14 = [v12 dateByAddingTimeInterval:-v13];
      v15 = v12;
      [v14 timeIntervalSince1970];
      v17 = v16;
      [v15 timeIntervalSince1970];
      v19 = v18;

      blockCopy[2](blockCopy, v6, v14, v15, v17 + -1800.0, v19 - v17);
      v7 = v7 + 1.0;
      v6 = (v6 + 1);
    }

    while (v5 != v6);
  }
}

- (void)buildUtilityCache
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)buildBucketsForRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  computeNumberOfBuckets = [(PLBatteryUIResponseTypeBatteryBreakdown *)self computeNumberOfBuckets];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown buildBucketsForRange:];
  }

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:computeNumberOfBuckets];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self setBuckets:v8];

  [(PLBatteryUIResponseTypeBatteryBreakdown *)self initializeBucketsWithRange:location, length];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self prepareBucketsWithRange:location, length];
}

- (void)identifyBucket:(id)bucket withRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  bucketCopy = bucket;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastUpgradeTimestamp];
  if (location <= v7 && location + length >= v7)
  {
    v9 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeBatteryBreakdown *)self lastUpgradeTimestamp];
    v10 = [v9 numberWithDouble:?];
    [bucketCopy setObject:v10 forKeyedSubscript:@"PLBatteryUIHasUpgradeKey"];
  }
}

- (void)initializeBucketsWithRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getRootNodeEntriesInRange:range.location withTimeInterval:range.length, 3600.0];
  v7 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getQualificationNodeEntriesInRange:location withTimeInterval:length, 3600.0];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown initializeBucketsWithRange:v6];
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown initializeBucketsWithRange:v7];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke;
  v12[3] = &unk_279A5E540;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self enumerateBucketsUsingBlock:v12];
}

void __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke(uint64_t a1, int a2, double a3, double a4)
{
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) buildEnergyEntriesWithRootNodes:*(a1 + 40) andQualificationNodes:*(a1 + 48) andRange:?];
  v9 = [*v7 buildBucketWithEnergyEntries:v8 andRange:{a3, a4}];
  v10 = [*v7 buckets];
  [v10 setObject:v9 atIndexedSubscript:a2];

  v11 = *v7;
  v12 = [*v7 buckets];
  v13 = [v12 objectAtIndexedSubscript:a2];
  [v11 collapseEnergyEntries:v13];

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke_cold_1(v7);
  }
}

- (void)prepareBucketsWithRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getAppRuntimesInRange:?];
  v7 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self getNotificationEntriesInRange:location, length];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown prepareBucketsWithRange:v6];
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown prepareBucketsWithRange:v7];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke;
  v12[3] = &unk_279A5E540;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self enumerateBucketsUsingBlock:v12];
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke(uint64_t a1, int a2, void *a3, void *a4, double a5, double a6)
{
  v11 = a3;
  v12 = a4;
  v13 = (a1 + 32);
  v14 = [*(a1 + 32) buckets];
  v15 = [v14 objectAtIndexedSubscript:a2];
  v16 = [v15 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  v17 = [*(a1 + 32) processAppTimeEntries:*(a1 + 40) inRange:v16 withAppArray:{a5, a6}];

  v18 = PLLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_1((a1 + 32));
  }

  v19 = [*(a1 + 32) processNotificationEntries:*(a1 + 48) inRange:v17 withAppArray:{a5, a6}];

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_2(v13);
  }

  v21 = _os_feature_enabled_impl();
  v22 = MEMORY[0x277CCABB0];
  if (v21)
  {
    v23 = [v11 convertFromMonotonicToSystem];
    [v23 timeIntervalSince1970];
    v24 = [v22 numberWithDouble:?];
    v25 = [*v13 buckets];
    v26 = [v25 objectAtIndexedSubscript:a2];
    [v26 setObject:v24 forKeyedSubscript:@"PLBatteryUIBucketStartKey"];

    v27 = MEMORY[0x277CCABB0];
    v28 = [v12 convertFromMonotonicToSystem];
    [v28 timeIntervalSince1970];
    v30 = v29;
    [*v13 dynamicEndOffset];
    v32 = [v27 numberWithDouble:v30 + v31];
    v33 = [*v13 buckets];
    v34 = [v33 objectAtIndexedSubscript:a2];
    [v34 setObject:v32 forKeyedSubscript:@"PLBatteryUIBucketEndKey"];
  }

  else
  {
    [v11 timeIntervalSince1970];
    v35 = [v22 numberWithDouble:?];
    v36 = [*v13 buckets];
    v37 = [v36 objectAtIndexedSubscript:a2];
    [v37 setObject:v35 forKeyedSubscript:@"PLBatteryUIBucketStartKey"];

    v38 = MEMORY[0x277CCABB0];
    [v12 timeIntervalSince1970];
    v28 = [v38 numberWithDouble:?];
    v32 = [*v13 buckets];
    v33 = [v32 objectAtIndexedSubscript:a2];
    [v33 setObject:v28 forKeyedSubscript:@"PLBatteryUIBucketEndKey"];
  }

  v39 = [*v13 buckets];
  v40 = [v39 objectAtIndexedSubscript:a2];
  [v40 setObject:v19 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
}

- (id)buildBucketWithEnergyEntries:(id)entries andRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObject:entries forKey:@"PLBatteryUIAppArrayKey"];
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self identifyBucket:v7 withRange:location, length];

  return v7;
}

- (id)buildEnergyEntriesWithRootNodes:(id)nodes andQualificationNodes:(id)qualificationNodes andRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  qualificationNodesCopy = qualificationNodes;
  v10 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self processRootNodes:nodes inRange:location, length];
  v11 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self processQualificationNodes:qualificationNodesCopy inRange:location, length];

  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  v13 = [v12 mutableCopy];

  return v13;
}

- (id)processRootNodes:(id)nodes inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v87 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v9 = nodesCopy;
  v10 = [v9 countByEnumeratingWithState:&v80 objects:v86 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v81;
    v13 = location + length;
    v78 = *MEMORY[0x277D3F328];
    v75 = *MEMORY[0x277D3F330];
    v71 = *MEMORY[0x277D3F320];
    v70 = *MEMORY[0x277D0AB98];
    v72 = dictionary;
    v76 = *v81;
    v77 = v9;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v81 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v80 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        entryDate = [v15 entryDate];
        v18 = entryDate;
        if (entryDate)
        {
          [entryDate timeIntervalSince1970];
          if (location <= v19)
          {
            v20 = v19;

            if (v13 < v20)
            {
              goto LABEL_36;
            }

            v18 = [v15 objectForKeyedSubscript:v78];
            if (v18)
            {
              v21 = [dictionary objectForKeyedSubscript:v18];

              if (v21)
              {
                goto LABEL_13;
              }

              nodeIDsToNodeNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
              v23 = [nodeIDsToNodeNames objectForKeyedSubscript:v18];

              if (v23)
              {
                v24 = MEMORY[0x277CBEB38];
                nodeIDsToNodeNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                v26 = [nodeIDsToNodeNames2 objectForKeyedSubscript:v18];
                v27 = [v24 dictionaryWithObject:v26 forKey:@"PLBatteryUIAppBundleIDKey"];
                [dictionary setObject:v27 forKeyedSubscript:v18];

LABEL_13:
                v28 = [dictionary objectForKeyedSubscript:v18];
                v29 = [v15 objectForKeyedSubscript:v75];
                intValue = [v29 intValue];
                if ([&unk_28714D898 count] <= intValue)
                {
                  log = PLLogCommon();
                  v9 = v77;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    intValue2 = [v29 intValue];
                    v38 = [&unk_28714D8B0 count];
                    *buf = 67109376;
                    *v85 = intValue2;
                    *&v85[4] = 2048;
                    *&v85[6] = v38;
                    _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
                  }
                }

                else
                {
                  log = [&unk_28714D8C8 objectAtIndexedSubscript:{objc_msgSend(v29, "intValue")}];
                  v31 = [v15 objectForKeyedSubscript:v71];
                  if ([v29 intValue] == 58)
                  {
                    v32 = PLLogCommon();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                    {
                      intValue3 = [v29 intValue];
                      [v31 doubleValue];
                      *buf = 67109376;
                      *v85 = intValue3;
                      *&v85[4] = 2048;
                      *&v85[6] = v60;
                      _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

                    v33 = MEMORY[0x277CCABB0];
                    [v31 doubleValue];
                    v35 = [v33 numberWithDouble:{fmin(v34, 9000.0)}];

                    v36 = PLLogCommon();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_42;
                    }

                    goto LABEL_25;
                  }

                  if ([v29 intValue] == 59)
                  {
                    v39 = PLLogCommon();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
                      intValue4 = [v29 intValue];
                      [v31 doubleValue];
                      *buf = 67109376;
                      *v85 = intValue4;
                      *&v85[4] = 2048;
                      *&v85[6] = v62;
                      _os_log_debug_impl(&dword_25EE51000, v39, OS_LOG_TYPE_DEBUG, "before clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

                    v40 = MEMORY[0x277CCABB0];
                    [v31 doubleValue];
                    v35 = [v40 numberWithDouble:{fmin(v41, 5500.0)}];

                    v36 = PLLogCommon();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                    {
LABEL_42:
                      intValue5 = [v29 intValue];
                      [v35 doubleValue];
                      *buf = 67109376;
                      *v85 = intValue5;
                      *&v85[4] = 2048;
                      *&v85[6] = v64;
                      _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "after clamping for rootNodeID=%d, rootNodeEnergy=%f", buf, 0x12u);
                    }

LABEL_25:

                    v31 = v35;
                  }

                  nodeIDsToNodeNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                  v43 = [nodeIDsToNodeNames3 objectForKeyedSubscript:v18];

                  v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v70, @"aod"];
                  v74 = v43;
                  if (![v43 isEqualToString:?])
                  {
                    goto LABEL_31;
                  }

                  v44 = PLLogCommon();
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v85 = log;
                    _os_log_impl(&dword_25EE51000, v44, OS_LOG_TYPE_DEFAULT, "found AOD in root node %@", buf, 0xCu);
                  }

                  if ([v29 intValue] == 56 || objc_msgSend(v29, "intValue") == 57)
                  {
LABEL_31:
                    v45 = MEMORY[0x277CCABB0];
                    v46 = [v28 objectForKeyedSubscript:log];
                    [v46 doubleValue];
                    v48 = v47;
                    [v31 doubleValue];
                    v50 = [v45 numberWithDouble:v48 + v49 / 1000.0];
                    [v28 setObject:v50 forKeyedSubscript:log];

                    v51 = MEMORY[0x277CCABB0];
                    v52 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v52 doubleValue];
                    v54 = v53;
                    [v31 doubleValue];
                    v56 = [v51 numberWithDouble:v54 + v55 / 1000.0];
                    [v28 setObject:v56 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

                    self = selfCopy;
                    [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy addRNEForMetrics:v29 rootNodeEnergy:v31 energyEntry:v28];
                  }

                  else
                  {
                    v57 = PLLogCommon();
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                    {
                      [v31 doubleValue];
                      *buf = 138412546;
                      *v85 = log;
                      *&v85[8] = 2048;
                      *&v85[10] = v58 / 1000.0;
                      _os_log_impl(&dword_25EE51000, v57, OS_LOG_TYPE_DEFAULT, "Adjusting %@ root node energy of %f mWh", buf, 0x16u);
                    }
                  }

                  dictionary = v72;
                  v9 = v77;
                }
              }

              else
              {
                v9 = v77;
              }

              v12 = v76;
            }
          }
        }

LABEL_36:
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v11 != v14);
      v65 = [v9 countByEnumeratingWithState:&v80 objects:v86 count:16];
      v11 = v65;
    }

    while (v65);
  }

  allValues = [dictionary allValues];

  v67 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (id)processQualificationNodes:(id)nodes inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v83 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = nodesCopy;
  v10 = [v9 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v77;
    v13 = location + length;
    v74 = *MEMORY[0x277D3F328];
    v71 = *MEMORY[0x277D3F310];
    v67 = *MEMORY[0x277D3F308];
    v61 = *MEMORY[0x277D0AB98];
    v62 = *MEMORY[0x277D3F2F8];
    v72 = v9;
    v73 = dictionary;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v76 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        entryDate = [v15 entryDate];
        v18 = entryDate;
        if (entryDate)
        {
          [entryDate timeIntervalSince1970];
          if (location <= v19)
          {
            v20 = v19;

            if (v13 < v20)
            {
              goto LABEL_30;
            }

            v18 = [v15 objectForKeyedSubscript:v74];
            if (v18)
            {
              v21 = [dictionary objectForKeyedSubscript:v18];

              if (v21)
              {
                goto LABEL_13;
              }

              nodeIDsToNodeNames = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
              v23 = [nodeIDsToNodeNames objectForKeyedSubscript:v18];

              if (v23)
              {
                v24 = MEMORY[0x277CBEB38];
                nodeIDsToNodeNames2 = [(PLBatteryUIResponseTypeBatteryBreakdown *)self nodeIDsToNodeNames];
                v26 = [nodeIDsToNodeNames2 objectForKeyedSubscript:v18];
                v27 = [v24 dictionaryWithObject:v26 forKey:@"PLBatteryUIAppBundleIDKey"];
                [v73 setObject:v27 forKeyedSubscript:v18];

                dictionary = v73;
LABEL_13:
                v75 = [dictionary objectForKeyedSubscript:v18];
                v28 = [v15 objectForKeyedSubscript:v71];
                intValue = [v28 intValue];
                if ([&unk_28714D8E0 count] <= intValue)
                {
                  v30 = PLLogCommon();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    intValue2 = [v28 intValue];
                    v52 = [&unk_28714D8F8 count];
                    *buf = 67109376;
                    *v81 = intValue2;
                    *&v81[4] = 2048;
                    *&v81[6] = v52;
                    _os_log_error_impl(&dword_25EE51000, v30, OS_LOG_TYPE_ERROR, "rootNodeID=%d out of bounds=%lu", buf, 0x12u);
                  }
                }

                else
                {
                  v30 = [&unk_28714D910 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue")}];
                  v31 = [v15 objectForKeyedSubscript:v67];
                  intValue3 = [v31 intValue];
                  if ([&unk_28714D928 count] <= intValue3)
                  {
                    v33 = PLLogCommon();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      intValue4 = [v31 intValue];
                      v56 = [&unk_28714D940 count];
                      *buf = 67109376;
                      *v81 = intValue4;
                      *&v81[4] = 2048;
                      *&v81[6] = v56;
                      _os_log_error_impl(&dword_25EE51000, v33, OS_LOG_TYPE_ERROR, "qualificationID=%d out of bounds=%lu", buf, 0x12u);
                    }
                  }

                  else
                  {
                    v66 = v31;
                    v33 = [&unk_28714D958 objectAtIndexedSubscript:{objc_msgSend(v31, "intValue")}];
                    v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v33, v30];
                    v68 = [v15 objectForKeyedSubscript:v62];
                    nodeIDsToNodeNames3 = [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy nodeIDsToNodeNames];
                    v35 = [nodeIDsToNodeNames3 objectForKeyedSubscript:v18];

                    v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v61, @"aod"];
                    v64 = v35;
                    v69 = v28;
                    if (![v35 isEqualToString:?])
                    {
                      goto LABEL_20;
                    }

                    v36 = PLLogCommon();
                    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *v81 = v30;
                      _os_log_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEFAULT, "found AOD in qual for root node %@", buf, 0xCu);
                    }

                    if ([v28 intValue] == 56 || objc_msgSend(v28, "intValue") == 57)
                    {
LABEL_20:
                      v37 = MEMORY[0x277CCABB0];
                      v38 = [v75 objectForKeyedSubscript:v65];
                      [v38 doubleValue];
                      v40 = v39;
                      v41 = v68;
                      [v68 doubleValue];
                      v43 = [v37 numberWithDouble:v40 + v42 / 1000.0];
                      [v75 setObject:v43 forKeyedSubscript:v65];

                      v44 = MEMORY[0x277CCABB0];
                      v45 = [v75 objectForKeyedSubscript:v33];
                      [v45 doubleValue];
                      v47 = v46;
                      [v68 doubleValue];
                      v49 = [v44 numberWithDouble:v47 + v48 / 1000.0];
                      [v75 setObject:v49 forKeyedSubscript:v33];

                      v50 = v65;
                      v31 = v66;
                      [(PLBatteryUIResponseTypeBatteryBreakdown *)selfCopy addFgEnergyForMetrics:v69 qualificationID:v66 rootNodeQualificationEnergy:v68 energyEntry:v75];
                    }

                    else
                    {
                      v53 = PLLogCommon();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        [v68 doubleValue];
                        *buf = 138412546;
                        *v81 = v30;
                        *&v81[8] = 2048;
                        *&v81[10] = v54 / 1000.0;
                        _os_log_impl(&dword_25EE51000, v53, OS_LOG_TYPE_DEFAULT, "Adjusting %@ root node qual energy of %f mWh", buf, 0x16u);
                      }

                      v50 = v65;
                      v31 = v66;
                      v41 = v68;
                    }

                    v28 = v69;
                  }

                  self = selfCopy;
                }

                dictionary = v73;
              }

              v9 = v72;
            }
          }
        }

LABEL_30:
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v11 != v14);
      v57 = [v9 countByEnumeratingWithState:&v76 objects:v82 count:16];
      v11 = v57;
    }

    while (v57);
  }

  allValues = [dictionary allValues];

  v59 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (id)processAppTimeEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array
{
  length = range.length;
  location = range.location;
  v159 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  [MEMORY[0x277CBEB38] dictionary];
  v127 = v126 = self;
  [(PLBatteryUIResponseTypeBatteryBreakdown *)self initBackgroundLocationAudioTime];
  array = [MEMORY[0x277CBEB18] array];
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v11 = entriesCopy;
  v12 = [v11 countByEnumeratingWithState:&v150 objects:v158 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v151;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v151 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v150 + 1) + 8 * i);
        entryDate = [v16 entryDate];
        if (entryDate)
        {
          v18 = entryDate;
          [entryDate timeIntervalSince1970];
          v20 = v19;

          if (location <= v20 && v20 < location + length)
          {
            [array addObject:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v150 objects:v158 count:16];
    }

    while (v13);
  }

  v119 = v11;

  v130 = [MEMORY[0x277CBEB58] set];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v118 = array;
  obj = [MEMORY[0x277D3F190] summarizeAggregateEntries:array];
  v22 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
  if (v22)
  {
    v23 = v22;
    v123 = *v147;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v147 != v123)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v146 + 1) + 8 * j);
        v26 = [v25 objectForKeyedSubscript:@"BundleID"];
        [v130 addObject:v26];
        v27 = MEMORY[0x277CCABB0];
        v28 = [v25 objectForKeyedSubscript:@"ScreenOnTime"];
        [v28 doubleValue];
        v30 = v29;
        v31 = [v25 objectForKeyedSubscript:@"InCallScreenOnTime"];
        [v31 doubleValue];
        v33 = v30 + v32;
        v34 = [v25 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [v34 doubleValue];
        v36 = [v27 numberWithDouble:v33 + v35];
        [dictionary setObject:v36 forKeyedSubscript:v26];

        v37 = [v25 objectForKeyedSubscript:@"BackgroundTime"];
        [dictionary2 setObject:v37 forKeyedSubscript:v26];

        v38 = [v25 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [dictionary3 setObject:v38 forKeyedSubscript:v26];

        v39 = [v25 objectForKeyedSubscript:@"ScreenOnPluggedInTime"];
        [dictionary4 setObject:v39 forKeyedSubscript:v26];

        v40 = [v25 objectForKeyedSubscript:@"BackgroundPluggedInTime"];
        [v127 setObject:v40 forKeyedSubscript:v26];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)v126 populateBackgroundLocationAudioTime:v25 bundleID:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
    }

    while (v23);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  monotonicNow = [(PLBatteryUIResponseTypeBatteryBreakdown *)v126 monotonicNow];
  v42 = [(PLBatteryUIResponseTypeBatteryBreakdown *)v126 getNonAppRuntimesInRange:monotonicNow withNow:location, length];

  v121 = v42;
  v43 = [v42 countByEnumeratingWithState:&v142 objects:v156 count:16];
  if (v43)
  {
    v44 = v43;
    v124 = *v143;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v143 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v46 = *(*(&v142 + 1) + 8 * k);
        v47 = [v46 objectForKeyedSubscript:@"BundleID"];
        [v130 addObject:v47];

        v48 = MEMORY[0x277CCABB0];
        v49 = [v46 objectForKeyedSubscript:@"ScreenOnTime"];
        [v49 doubleValue];
        v51 = v50;
        v52 = [v46 objectForKeyedSubscript:@"InCallScreenOnTime"];
        [v52 doubleValue];
        v54 = v51 + v53;
        v55 = [v46 objectForKeyedSubscript:@"InCallBackgroundTime"];
        [v55 doubleValue];
        v57 = [v48 numberWithDouble:v54 + v56];
        v58 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary setObject:v57 forKeyedSubscript:v58];

        v59 = [v46 objectForKeyedSubscript:@"BackgroundTime"];
        v60 = [v46 objectForKeyedSubscript:@"BundleID"];
        [dictionary2 setObject:v59 forKeyedSubscript:v60];
      }

      v44 = [v121 countByEnumeratingWithState:&v142 objects:v156 count:16];
    }

    while (v44);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v61 = arrayCopy;
  v62 = [v61 countByEnumeratingWithState:&v138 objects:v155 count:16];
  v122 = v61;
  if (v62)
  {
    v63 = v62;
    v125 = *v139;
    do
    {
      for (m = 0; m != v63; ++m)
      {
        if (*v139 != v125)
        {
          objc_enumerationMutation(v61);
        }

        v65 = *(*(&v138 + 1) + 8 * m);
        v66 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v67 = [v130 containsObject:v66];

        if (v67)
        {
          v68 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          [v130 removeObject:v68];
        }

        v69 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v70 = MEMORY[0x277CCABB0];
        v71 = [dictionary objectForKeyedSubscript:v69];
        [v71 doubleValue];
        v72 = [v70 numberWithDouble:?];
        [v65 setObject:v72 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v73 = MEMORY[0x277CCABB0];
        v74 = [dictionary2 objectForKeyedSubscript:v69];
        [v74 doubleValue];
        v75 = [v73 numberWithDouble:?];
        [v65 setObject:v75 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v76 = MEMORY[0x277CCABB0];
        v77 = [dictionary3 objectForKeyedSubscript:v69];
        [v77 doubleValue];
        v78 = [v76 numberWithDouble:?];
        [v65 setObject:v78 forKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];

        v79 = MEMORY[0x277CCABB0];
        v80 = [dictionary4 objectForKeyedSubscript:v69];
        [v80 doubleValue];
        v81 = [v79 numberWithDouble:?];
        [v65 setObject:v81 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v82 = MEMORY[0x277CCABB0];
        v83 = [v127 objectForKeyedSubscript:v69];
        [v83 doubleValue];
        v84 = [v82 numberWithDouble:?];
        [v65 setObject:v84 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        if (_os_feature_enabled_impl() && [(PLBatteryUIResponseTypeBatteryBreakdown *)v126 excludeTimeOnCharger])
        {
          v85 = MEMORY[0x277CCABB0];
          v86 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v86 doubleValue];
          v88 = v87;
          v89 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v89 doubleValue];
          v91 = v88 - v90;

          if (v91 >= 0.0)
          {
            v92 = v91;
          }

          else
          {
            v92 = 0.0;
          }

          v93 = [v85 numberWithDouble:v92];
          [v65 setObject:v93 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

          v94 = MEMORY[0x277CCABB0];
          v61 = v122;
          v95 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          [v95 doubleValue];
          v97 = v96;
          v98 = [v65 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          [v98 doubleValue];
          v100 = v97 - v99;

          if (v100 >= 0.0)
          {
            v101 = v100;
          }

          else
          {
            v101 = 0.0;
          }

          v102 = [v94 numberWithDouble:v101];
          [v65 setObject:v102 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v138 objects:v155 count:16];
    }

    while (v63);
  }

  v103 = [v61 mutableCopy];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v131 = v130;
  v104 = [v131 countByEnumeratingWithState:&v134 objects:v154 count:16];
  if (v104)
  {
    v105 = v104;
    v106 = *v135;
    do
    {
      for (n = 0; n != v105; ++n)
      {
        if (*v135 != v106)
        {
          objc_enumerationMutation(v131);
        }

        v108 = *(*(&v134 + 1) + 8 * n);
        dictionary5 = [MEMORY[0x277CBEB38] dictionary];
        [dictionary5 setObject:v108 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        [dictionary5 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        v110 = [dictionary objectForKeyedSubscript:v108];
        [dictionary5 setObject:v110 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];

        v111 = [dictionary2 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v111 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

        v112 = [dictionary3 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v112 forKeyedSubscript:@"PLBatteryUIAppCallOffScreenTimeKey"];

        v113 = [dictionary4 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v113 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

        v114 = [v127 objectForKeyedSubscript:v108];
        [dictionary5 setObject:v114 forKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];

        [(PLBatteryUIResponseTypeBatteryBreakdown *)v126 bgLocationAudioTimeApps:dictionary5];
        [dictionary5 setObject:&unk_287146A20 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v103 addObject:dictionary5];
      }

      v105 = [v131 countByEnumeratingWithState:&v134 objects:v154 count:16];
    }

    while (v105);
  }

  v115 = *MEMORY[0x277D85DE8];

  return v103;
}

- (id)processNotificationEntries:(id)entries inRange:(_PLTimeIntervalRange)range withAppArray:(id)array
{
  length = range.length;
  location = range.location;
  v61 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10 = entriesCopy;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
  v46 = dictionary;
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    v14 = location + length;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        entryDate = [(PLBatteryBreakdownNotificationInfo *)v16 entryDate];
        v18 = entryDate;
        if (!entryDate)
        {
          goto LABEL_8;
        }

        [entryDate timeIntervalSince1970];
        if (location > v19)
        {
          goto LABEL_8;
        }

        v20 = v19;

        if (v14 >= v20)
        {
          v21 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
          if (v21)
          {
            v22 = v21;
            v23 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            if (![v23 intValue])
            {
              goto LABEL_16;
            }

            v24 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            if ([v24 intValue] == 3)
            {

LABEL_16:
LABEL_17:
              v18 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationBundleID"];
              if (v18)
              {
                v25 = [[PLBatteryBreakdownNotificationInfo alloc] initWithEntry:v16];
                if (v25)
                {
                  v26 = [dictionary objectForKeyedSubscript:v18];

                  if (v26)
                  {
                    v27 = [dictionary objectForKeyedSubscript:v18];
                    [v27 combineWith:v25];
                  }

                  else
                  {
                    [dictionary setObject:v25 forKeyedSubscript:v18];
                  }

                  v31 = PLLogCommon();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
LABEL_28:

                    goto LABEL_8;
                  }

                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  v59 = v25;
                  v32 = v31;
                  v33 = "notification: %@ -> %@";
                }

                else
                {
                  v31 = PLLogCommon();
                  if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_28;
                  }

                  *buf = 138412546;
                  v57 = v18;
                  v58 = 2112;
                  v59 = v16;
                  v32 = v31;
                  v33 = "failed to init notification info for %@ %@";
                }

                _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, v33, buf, 0x16u);
                goto LABEL_28;
              }

LABEL_8:

              goto LABEL_9;
            }

            v28 = [(PLBatteryBreakdownNotificationInfo *)v16 objectForKeyedSubscript:@"NotificationType"];
            intValue = [v28 intValue];

            v30 = intValue == -1;
            dictionary = v46;
            if (v30)
            {
              goto LABEL_17;
            }
          }
        }

LABEL_9:
        ++v15;
      }

      while (v12 != v15);
      v34 = [v10 countByEnumeratingWithState:&v51 objects:v60 count:16];
      v12 = v34;
    }

    while (v34);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = arrayCopy;
  v36 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v48;
LABEL_34:
    v39 = 0;
    while (1)
    {
      if (*v48 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v47 + 1) + 8 * v39);
      dictionary = v46;
      if (![v46 count])
      {
        break;
      }

      v41 = [v40 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      v42 = [v46 objectForKeyedSubscript:v41];
      if (v42)
      {
        [v40 setObject:v42 forKeyedSubscript:@"NotificationInfo"];
        [v46 removeObjectForKey:v41];
      }

      if (v37 == ++v39)
      {
        v37 = [v35 countByEnumeratingWithState:&v47 objects:v55 count:16];
        dictionary = v46;
        if (v37)
        {
          goto LABEL_34;
        }

        break;
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];

  return v35;
}

- (id)getWidgetUpdateTypeToCount:(id)count inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v23[2] = *MEMORY[0x277D85DE8];
  countCopy = count;
  v8 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"WidgetUpdates"];
  countCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@='%@'", @"bundleID", countCopy];
  0x40AC200000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%f", @"timeInterval", 0x40AC200000000000];
  responderService = [(PLBatteryUIResponseTypeBatteryBreakdown *)self responderService];
  storage = [responderService storage];
  v23[0] = countCopy;
  v23[1] = 0x40AC200000000000;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v14 = [storage entriesForKey:v8 inTimeRange:v13 withFilters:{location, length}];

  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__12;
  v21[3] = __Block_byref_object_dispose__12;
  v22 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__PLBatteryUIResponseTypeBatteryBreakdown_getWidgetUpdateTypeToCount_inRange___block_invoke;
  v19[3] = &unk_279A5E568;
  v19[4] = self;
  v19[5] = &v20;
  [v14 enumerateObjectsUsingBlock:v19];
  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getWidgetUpdateTypeToCount:countCopy inRange:v21];
  }

  v16 = *(v21[0] + 40);
  _Block_object_dispose(&v20, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __78__PLBatteryUIResponseTypeBatteryBreakdown_getWidgetUpdateTypeToCount_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = [v3 objectForKeyedSubscript:@"host"];
  v4 = [*(a1 + 32) getWidgetTypeForHostName:?];
  v5 = [v3 objectForKeyedSubscript:@"Count"];

  v6 = [v5 intValue];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithShort:v4];
  v9 = [v7 objectForKey:v8];

  v10 = MEMORY[0x277CCABB0];
  if (v9)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v10 numberWithInt:{objc_msgSend(v13, "intValue") + v6}];
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v17 = *(*(*(a1 + 40) + 8) + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithShort:v4];
    [v17 setObject:v12 forKeyedSubscript:v13];
  }
}

- (signed)getWidgetTypeForEnergyEntry:(id)entry
{
  entryCopy = entry;
  v4 = [entryCopy objectForKeyedSubscript:@"WidgetUpdateTypeToCount"];
  allValues = [v4 allValues];
  v6 = [allValues valueForKeyPath:@"@max.self"];

  v7 = [v4 allKeysForObject:v6];
  firstObject = [v7 firstObject];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeBatteryBreakdown getWidgetTypeForEnergyEntry:entryCopy];
  }

  if ([v7 containsObject:&unk_287146C00])
  {

    firstObject = &unk_287146C00;
  }

  if ([v6 intValue] < 1)
  {
    intValue = 0;
  }

  else
  {
    intValue = [firstObject intValue];
  }

  return intValue;
}

- (signed)getWidgetTypeForHostName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"Local"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"Remote-NotificationCenter"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)stringifyKeysForDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PLBatteryUIResponseTypeBatteryBreakdown_stringifyKeysForDict___block_invoke;
  v7[3] = &unk_279A5E518;
  v5 = v4;
  v8 = v5;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __64__PLBatteryUIResponseTypeBatteryBreakdown_stringifyKeysForDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 stringValue];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

- (int)getBatteryMaximumCapacityPercentWithError:(id *)error
{
  v4 = IOPSCopyPowerSourcesByType();
  v5 = v4;
  if (v4 && [v4 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"Maximum Capacity Percent"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:@"Maximum Capacity Percent"];
    intValue = [v9 intValue];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"noBatteryData" code:-1 userInfo:0];
    }

    intValue = -1;
  }

  return intValue;
}

- (void)configure:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)filterFgBg:filterArray:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEntryTypes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)addEntryTypes:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)applyStaticNameTransformation:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Before clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

- (void)applyStaticNameTransformation:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "After clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

- (void)applyStaticNameTransformation:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adjustEnergyValues:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)adjustEnergyValues:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applySlopAdjustment:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applySlopAdjustment:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)applySlopAdjustment:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getEnergyToRemoveForSlopAdjustment:(void *)a1 withEnergyKey:(uint64_t)a2 forBucket:.cold.1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v5 = [a1 objectForKeyedSubscript:a2];
  [v5 doubleValue];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)adjustRuntimes:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)adjustRuntimes:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__PLBatteryUIResponseTypeBatteryBreakdown_collapseEnergyEntries___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)ongoingUpdateRestoreTransformations:(_BYTE *)a1 .cold.1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)ongoingUpdateRestoreTransformations:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Ongoing Restore: After adjustments, energy in entry is %f");
}

- (void)ongoingUpdateRestoreTransformations:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)ongoingUpdateRestoreTransformations:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transformDeletedApps:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transformDeletedApps:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transformPlugins:withBucket:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)buildBucketsForRange:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initializeBucketsWithRange:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initializeBucketsWithRange:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__PLBatteryUIResponseTypeBatteryBreakdown_initializeBucketsWithRange___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)prepareBucketsWithRange:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareBucketsWithRange:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

void __67__PLBatteryUIResponseTypeBatteryBreakdown_prepareBucketsWithRange___block_invoke_cold_2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 buckets];
  [v1 count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getWidgetUpdateTypeToCount:(uint64_t)a1 inRange:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getWidgetTypeForEnergyEntry:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end