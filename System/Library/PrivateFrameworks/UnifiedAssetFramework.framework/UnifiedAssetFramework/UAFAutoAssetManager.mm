@interface UAFAutoAssetManager
+ (BOOL)allowRemoves;
+ (BOOL)assetSetComplete:(id)complete;
+ (BOOL)assetSetEmpty:(id)empty;
+ (BOOL)autoAssetExistsWithEntries:(id)entries;
+ (BOOL)cacheDeleteStatusChange:(id)change;
+ (BOOL)isLatestConsistencyToken:(id)token;
+ (BOOL)releaseIncompatibleAssetSet:(id)set specifiers:(id)specifiers configuration:(id)configuration;
+ (BOOL)sendNotificationForAssetSet:(id)set;
+ (BOOL)shouldCheckAssetSet:(id)set autoAssetSet:(id)assetSet changed:(BOOL)changed downloaded:(BOOL)downloaded experiment:(id)experiment locked:(BOOL *)locked userInitiated:(BOOL *)initiated removalNeeded:(BOOL *)self0;
+ (BOOL)shouldWaitForMobileAssetStart:(id)start;
+ (id)_createXPCConnection;
+ (id)assetSetNamesFromUsages:(id)usages configurationManager:(id)manager;
+ (id)atomicInstanceFromLockPath:(id)path;
+ (id)autoAssetSetForStatus:(id)status;
+ (id)backgroundNeedPolicy;
+ (id)completedAtomicInstance:(id)instance;
+ (id)completedAtomicInstances;
+ (id)configureAssetSet:(id)set specifiers:(id)specifiers changed:(BOOL *)changed downloaded:(BOOL *)downloaded currentPolicy:(id *)policy;
+ (id)consistencyTokenFromConfig:(id)config atomicInstance:(id)instance experiment:(id)experiment;
+ (id)currentLockURLForAssetSet:(id)set;
+ (id)defaultCheckPolicy;
+ (id)fileLockPolicy;
+ (id)findDiffBetweenOldAssetSetUsages:(id)usages newAssetSetUsages:(id)setUsages knownAssetSets:(id)sets usedAssetSets:(id)assetSets configurationManager:(id)manager;
+ (id)forceRemoveAutoAssetSet:(id)set;
+ (id)getAutoAssetSet:(id)set specifiers:(id *)specifiers addEntries:(BOOL)entries configured:(BOOL *)configured downloaded:(BOOL *)downloaded currentPolicy:(id *)policy;
+ (id)getAutoSetEntries:(id)entries specifiers:(id)specifiers;
+ (id)getConcurrentQueue;
+ (id)getCurrentSpecifiers:(id)specifiers expectedAutoAssetType:(id)type;
+ (id)getReason:(id)reason operation:(id)operation;
+ (id)getSerialQueue;
+ (id)getSpecifiers:(id)specifiers assetSetUsages:(id)usages experiment:(id)experiment;
+ (id)immediateNeedPolicy;
+ (id)latestAtomicInstanceForClients:(id)clients;
+ (id)latestAtomicInstanceForClients:(id)clients OSSupported:(BOOL *)supported error:(id *)error;
+ (id)latestAtomicInstanceFromMA:(id)a error:(id *)error;
+ (id)latestStatusForClients:(id)clients error:(id *)error;
+ (id)lockLatestAssetSet:(id)set;
+ (id)manageAssetSet:(id)set specifiers:(id)specifiers lockIfUnchanged:(BOOL)unchanged userInitiated:(BOOL)initiated experiment:(id)experiment;
+ (id)setLatestAtomicInstance:(id)instance autoAssetSet:(id)set fallbackAlter:(BOOL)alter;
+ (id)sizeInBytesForConfig:(id)config key:(id)key error:(id *)error;
+ (id)spaceNeededForAssetSetUsages:(id)usages key:(id)key configurationManager:(id)manager error:(id *)error;
+ (id)targetForAssetSet:(id)set specifiers:(id)specifiers version:(id)version autoAssetSets:(id)sets;
+ (int)listenForUpdates:(id)updates updateHandler:(id)handler;
+ (unint64_t)getDownloadStatusForAssetSet:(id)set configurationManager:(id)manager;
+ (unint64_t)getDownloadStatusFromAssetSetUsages:(id)usages configurationManager:(id)manager;
+ (unint64_t)getDownloadStatusFromMAAutoAssetSetStatus:(id)status config:(id)config;
+ (void)cacheAssetSetCompleteness:(id)completeness autoAssetSetStatus:(id)status;
+ (void)cacheAssetSetCompleteness:(id)completeness complete:(BOOL)complete;
+ (void)conditionallyLockLatestAssetSet:(id)set newestInstance:(id)instance checkAtomicError:(id)error completion:(id)completion;
+ (void)configureAutoAssetsFromNewSubscriptions:(id)subscriptions oldSubscriptions:(id)oldSubscriptions configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged userInitiated:(BOOL)initiated;
+ (void)eliminateAssetType:(id)type;
+ (void)getDownloadStatusFromAssetSetUsages:(id)usages configurationManager:(id)manager queue:(id)queue completion:(id)completion;
+ (void)invalidateAtomicInstance:(id)instance assetSetName:(id)name queue:(id)queue completion:(id)completion;
+ (void)lockLatestAssetSet:(id)set completion:(id)completion;
+ (void)logAtomicInstance:(id)instance name:(id)name entries:(id)entries;
+ (void)observeAllAssetSets;
+ (void)observeAssetSet:(id)set;
+ (void)observeAssetSetExperimentalNamespace:(id)namespace;
+ (void)removeUnusedAutoAssetSets:(id)sets usedAutoAssetSets:(id)assetSets;
+ (void)setBackgroundNeedPolicy:(id)policy configuration:(id)configuration;
+ (void)setMinimalSpecifiers:(id)specifiers;
+ (void)stageAssetSet:(id)set targets:(id)targets platformAssetVersion:(id)version;
+ (void)stageAssetsWithNewSubscriptions:(id)subscriptions oldSubscriptions:(id)oldSubscriptions knownAutoAssetSets:(id)sets usedAutoAssetSets:(id)assetSets autoAssetSets:(id)autoAssetSets;
+ (void)updateAutoAssetsFromAssetSetUsages:(id)usages configurationManager:(id)manager expensiveNetworking:(BOOL)networking progress:(id)progress requestId:(id)id completion:(id)completion;
+ (void)waitForMobileAssetStart:(id)start queue:(id)queue completion:(id)completion;
@end

@implementation UAFAutoAssetManager

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_18 != -1)
  {
    dispatch_once(&_MergedGlobals_18, &__block_literal_global_19);
  }

  v3 = qword_1ED7D1240;

  return v3;
}

+ (id)getSerialQueue
{
  if (qword_1ED7D1248 != -1)
  {
    dispatch_once(&qword_1ED7D1248, &__block_literal_global_337);
  }

  v3 = qword_1ED7D1250;

  return v3;
}

void __42__UAFAutoAssetManager_observeAllAssetSets__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = +[UAFConfigurationManager defaultManager];
  v1 = [v0 getAllAssetSets];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [UAFAutoAssetManager observeAssetSet:*(*(&v8 + 1) + 8 * v6++), v8];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __41__UAFAutoAssetManager_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAutoAssetManager.Concurrent", v2);
  v1 = qword_1ED7D1240;
  qword_1ED7D1240 = v0;
}

void __37__UAFAutoAssetManager_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAutoAssetManager.Serial", v2);
  v1 = qword_1ED7D1250;
  qword_1ED7D1250 = v0;
}

+ (id)completedAtomicInstances
{
  if (qword_1ED7D1258 != -1)
  {
    dispatch_once(&qword_1ED7D1258, &__block_literal_global_340);
  }

  v3 = qword_1ED7D1260;

  return v3;
}

void __47__UAFAutoAssetManager_completedAtomicInstances__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED7D1260;
  qword_1ED7D1260 = v0;
}

+ (void)cacheAssetSetCompleteness:(id)completeness complete:(BOOL)complete
{
  completeCopy = complete;
  completenessCopy = completeness;
  v5 = +[UAFAutoAssetManager completedAtomicInstances];
  if (!completeCopy || ([UAFAutoAssetManager latestAtomicInstanceForClients:completenessCopy], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = &stru_1F3B6B510;
  }

  v7 = v5;
  objc_sync_enter(v7);
  [v7 setObject:v6 forKeyedSubscript:completenessCopy];
  objc_sync_exit(v7);
}

+ (id)completedAtomicInstance:(id)instance
{
  instanceCopy = instance;
  v4 = +[UAFAutoAssetManager completedAtomicInstances];
  objc_sync_enter(v4);
  v5 = [v4 objectForKeyedSubscript:instanceCopy];
  objc_sync_exit(v4);

  if (v5 && ![v5 isEqualToString:&stru_1F3B6B510])
  {
    v7 = [UAFAutoAssetManager latestAtomicInstanceForClients:instanceCopy];
    if (v7 && [v5 isEqualToString:v7])
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

+ (BOOL)allowRemoves
{
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v2 = +[UAFAssetSetManager defaults];
    v3 = [v2 BOOLForKey:@"InhibitRemoval"] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

+ (id)getSpecifiers:(id)specifiers assetSetUsages:(id)usages experiment:(id)experiment
{
  v42 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  usagesCopy = usages;
  experimentCopy = experiment;
  v9 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = specifiersCopy;
  name = [specifiersCopy name];
  v26 = usagesCopy;
  v11 = [usagesCopy objectForKeyedSubscript:name];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v28 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [v29 getAutoAssets:{*(*(&v36 + 1) + 8 * i), experimentCopy}];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v33;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [v15 objectForKeyedSubscript:*(*(&v32 + 1) + 8 * j)];
              v21 = [v20 objectForKeyedSubscript:@"AssetSpecifier"];
              [v9 addObject:v21];
            }

            v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v17);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  if (experimentCopy)
  {
    assetSpecifiers = [experimentCopy assetSpecifiers];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__UAFAutoAssetManager_getSpecifiers_assetSetUsages_experiment___block_invoke;
    v30[3] = &unk_1E7FFDC90;
    v31 = v9;
    [assetSpecifiers enumerateKeysAndObjectsUsingBlock:v30];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

void __63__UAFAutoAssetManager_getSpecifiers_assetSetUsages_experiment___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) containsObject:a2])
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)getCurrentSpecifiers:(id)specifiers expectedAutoAssetType:(id)type
{
  v42 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  typeCopy = type;
  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = specifiersCopy;
  configuredAssetEntries = [specifiersCopy configuredAssetEntries];
  v8 = [configuredAssetEntries countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v30;
    *&v9 = 136315906;
    v25 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(configuredAssetEntries);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        assetSelector = [v13 assetSelector];
        assetType = [assetSelector assetType];
        v16 = [assetType isEqualToString:typeCopy];

        if (v16)
        {
          assetSelector2 = [v13 assetSelector];
          assetSpecifier = [assetSelector2 assetSpecifier];
          [v28 addObject:assetSpecifier];
        }

        else
        {
          assetSelector2 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(assetSelector2, OS_LOG_TYPE_ERROR))
          {
            assetSelector3 = [v13 assetSelector];
            assetType2 = [assetSelector3 assetType];
            assetSelector4 = [v13 assetSelector];
            assetSpecifier2 = [assetSelector4 assetSpecifier];
            assetSetIdentifier = [v26 assetSetIdentifier];
            *buf = v25;
            v34 = "+[UAFAutoAssetManager getCurrentSpecifiers:expectedAutoAssetType:]";
            v35 = 2114;
            v36 = assetType2;
            v37 = 2114;
            v38 = assetSpecifier2;
            v39 = 2114;
            v40 = assetSetIdentifier;
            _os_log_error_impl(&dword_1BCF2C000, assetSelector2, OS_LOG_TYPE_ERROR, "%s Unexpected auto asset type %{public}@ with specifier %{public}@ in auto asset set %{public}@", buf, 0x2Au);
          }
        }
      }

      v10 = [configuredAssetEntries countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)getAutoSetEntries:(id)entries specifiers:(id)specifiers
{
  v26 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  specifiersCopy = specifiers;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = specifiersCopy;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        autoAssetType = [entriesCopy autoAssetType];
        v14 = [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:autoAssetType autoAssetSpecifier:v12];

        v15 = objc_alloc(MEMORY[0x1E69B1920]);
        autoAssetType2 = [entriesCopy autoAssetType];
        v17 = [v15 initForAssetType:autoAssetType2 withAssetSpecifier:v12 assetLockedInhibitsRemoval:v14];

        [v7 addObject:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)immediateNeedPolicy
{
  v2 = +[UAFAutoAssetManager backgroundNeedPolicy];
  [v2 setUserInitiated:1];
  [v2 setAllowCheckDownloadOverCellular:1];

  return v2;
}

+ (id)backgroundNeedPolicy
{
  v2 = objc_opt_new();
  [v2 setAllowCheckDownloadOnBattery:1];
  [v2 setAllowCheckDownloadOverCellular:1];

  return v2;
}

+ (id)defaultCheckPolicy
{
  v2 = objc_opt_new();
  [v2 setUserInitiated:1];
  [v2 setAllowCheckDownloadOnBattery:1];
  [v2 setAllowCheckDownloadOverCellular:1];

  return v2;
}

+ (id)fileLockPolicy
{
  v2 = objc_opt_new();
  [v2 setSupportingShortTermLocks:1];

  return v2;
}

+ (BOOL)cacheDeleteStatusChange:(id)change
{
  v44 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [changeCopy configuredAssetEntries];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v25 = changeCopy;
    v6 = *v28;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        assetSelector = [v8 assetSelector];
        assetType = [assetSelector assetType];
        assetSelector2 = [v8 assetSelector];
        assetSpecifier = [assetSelector2 assetSpecifier];
        v13 = [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:assetType autoAssetSpecifier:assetSpecifier];

        if (v13 != [v8 assetLockedInhibitsRemoval])
        {
          v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
          changeCopy = v25;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            if ([v8 assetLockedInhibitsRemoval])
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            if (v13)
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            assetSelector3 = [v8 assetSelector];
            assetType2 = [assetSelector3 assetType];
            assetSelector4 = [v8 assetSelector];
            assetSpecifier2 = [assetSelector4 assetSpecifier];
            assetSetIdentifier = [v25 assetSetIdentifier];
            *buf = 136316418;
            v32 = "+[UAFAutoAssetManager cacheDeleteStatusChange:]";
            v33 = 2114;
            v34 = v16;
            v35 = 2114;
            v36 = v17;
            v37 = 2114;
            v38 = assetType2;
            v39 = 2114;
            v40 = assetSpecifier2;
            v41 = 2114;
            v42 = assetSetIdentifier;
            _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s assetLockedInhibitsRemoval value %{public}@ doesn't match desired value %{public}@ for asset type %{public}@ and specifier %{public}@ in asset set %{public}@", buf, 0x3Eu);
          }

          v14 = 0;
          goto LABEL_20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v14 = 1;
    changeCopy = v25;
  }

  else
  {
    v14 = 1;
  }

LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)getAutoAssetSet:(id)set specifiers:(id *)specifiers addEntries:(BOOL)entries configured:(BOOL *)configured downloaded:(BOOL *)downloaded currentPolicy:(id *)policy
{
  entriesCopy = entries;
  v116 = *MEMORY[0x1E69E9840];
  setCopy = set;
  configuredCopy = configured;
  *configured = 0;
  *downloaded = 0;
  v14 = *specifiers;
  specifiersCopy = specifiers;
  if (entriesCopy)
  {
    v15 = [UAFAutoAssetManager getAutoSetEntries:setCopy specifiers:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E69B1918]);
  name = [setCopy name];
  v18 = +[UAFAutoAssetManager getConcurrentQueue];
  v105 = 0;
  v19 = [v16 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:name comprisedOfEntries:v15 completingFromQueue:v18 error:&v105];
  v20 = v105;

  if (v20)
  {
    v21 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [setCopy name];
      v77 = v76 = v19;
      *buf = 136315650;
      v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
      v110 = 2114;
      v111 = v77;
      v112 = 2114;
      v113 = v20;
      _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);

      v19 = v76;
    }

    goto LABEL_8;
  }

  if (!v19)
  {
    v20 = 0;
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  if (!entriesCopy)
  {
    v29 = objc_autoreleasePoolPush();
    v104 = 0;
    v30 = [v19 currentSetStatusSync:&v104];
    v31 = v104;
    v20 = v31;
    if (!v30 || v31)
    {
      v38 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [v19 assetSetIdentifier];
        v83 = v82 = v19;
        *buf = 136315650;
        v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
        v110 = 2114;
        v111 = v83;
        v112 = 2114;
        v113 = v20;
        _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);

        v19 = v82;
      }

      objc_autoreleasePoolPop(v29);
      v22 = 0;
      goto LABEL_76;
    }

    v91 = v19;
    objc_autoreleasePoolPop(v29);
    if (policy)
    {
      *policy = [v30 schedulerPolicy];
    }

    schedulerPolicy = [v30 schedulerPolicy];
    if (schedulerPolicy)
    {
      v33 = schedulerPolicy;
      schedulerPolicy2 = [v30 schedulerPolicy];
      blockCheckDownload = [schedulerPolicy2 blockCheckDownload];

      if (blockCheckDownload)
      {
        v36 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          assetSetIdentifier = [v91 assetSetIdentifier];
          *buf = 136315394;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = assetSetIdentifier;
          _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ currently has downloads blocked", buf, 0x16u);
        }

        v19 = v91;
        v22 = v91;
        goto LABEL_76;
      }
    }

    autoAssetType = [setCopy autoAssetType];
    v40 = [UAFAutoAssetManager getCurrentSpecifiers:v30 expectedAutoAssetType:autoAssetType];

    v41 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      assetSetIdentifier2 = [v91 assetSetIdentifier];
      allObjects = [v40 allObjects];
      *buf = 136315650;
      v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
      v110 = 2114;
      v111 = assetSetIdentifier2;
      v112 = 2114;
      v113 = allObjects;
      _os_log_debug_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_DEBUG, "%s Auto asset set %{public}@ has specifiers %{public}@", buf, 0x20u);
    }

    v90 = v15;
    if ([v40 isEqualToSet:v14])
    {
      v42 = [UAFAutoAssetManager cacheDeleteStatusChange:v30];
      *configuredCopy = v42;
      v19 = v91;
      if (!v42)
      {
LABEL_34:
        v89 = v30;
        v43 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          assetSetIdentifier3 = [v91 assetSetIdentifier];
          allObjects2 = [v14 allObjects];
          allObjects3 = [v40 allObjects];
          *buf = 136315906;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = assetSetIdentifier3;
          v112 = 2114;
          v113 = allObjects2;
          v114 = 2114;
          v115 = allObjects3;
          _os_log_impl(&dword_1BCF2C000, v43, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ does not have expected specifiers %{public}@, has %{public}@", buf, 0x2Au);
        }

        v47 = [MEMORY[0x1E695DFA8] set];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v48 = v14;
        v49 = [v48 countByEnumeratingWithState:&v100 objects:v107 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v101;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v101 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v100 + 1) + 8 * i);
              if (([v40 containsObject:v53] & 1) == 0)
              {
                [v47 addObject:v53];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v100 objects:v107 count:16];
          }

          while (v50);
        }

        v87 = v14;
        v88 = setCopy;

        v54 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          assetSetIdentifier4 = [v91 assetSetIdentifier];
          allObjects4 = [v47 allObjects];
          *buf = 136315650;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = assetSetIdentifier4;
          v112 = 2114;
          v113 = allObjects4;
          _os_log_impl(&dword_1BCF2C000, v54, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ missing specifiers: %{public}@", buf, 0x20u);
        }

        v57 = [MEMORY[0x1E695DFA8] set];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v58 = v40;
        v59 = [v58 countByEnumeratingWithState:&v96 objects:v106 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = *v97;
          do
          {
            for (j = 0; j != v60; ++j)
            {
              if (*v97 != v61)
              {
                objc_enumerationMutation(v58);
              }

              v63 = *(*(&v96 + 1) + 8 * j);
              if (([v48 containsObject:v63] & 1) == 0)
              {
                [v57 addObject:v63];
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v96 objects:v106 count:16];
          }

          while (v60);
        }

        v64 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          assetSetIdentifier5 = [v91 assetSetIdentifier];
          allObjects5 = [v57 allObjects];
          *buf = 136315650;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = assetSetIdentifier5;
          v112 = 2114;
          v113 = allObjects5;
          _os_log_impl(&dword_1BCF2C000, v64, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ extra specifiers: %{public}@", buf, 0x20u);
        }

        v14 = v87;
        setCopy = v88;
        v19 = v91;
        v30 = v89;
        if ([v57 count] && !+[UAFAutoAssetManager allowRemoves](UAFAutoAssetManager, "allowRemoves"))
        {
          v67 = [MEMORY[0x1E695DFA8] setWithSet:v58];
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = __97__UAFAutoAssetManager_getAutoAssetSet_specifiers_addEntries_configured_downloaded_currentPolicy___block_invoke;
          v94[3] = &unk_1E7FFEBB0;
          v86 = v67;
          v95 = v86;
          [v48 enumerateObjectsUsingBlock:v94];
          *specifiersCopy = v86;
          v68 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            assetSetIdentifier6 = [v91 assetSetIdentifier];
            allObjects6 = [v57 allObjects];
            *buf = 136315650;
            v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
            v110 = 2114;
            v111 = assetSetIdentifier6;
            v112 = 2114;
            v113 = allObjects6;
            _os_log_impl(&dword_1BCF2C000, v68, OS_LOG_TYPE_DEFAULT, "%s Inhibiting removal of the following specifiers for %{public}@: %{public}@", buf, 0x20u);

            v30 = v89;
            v19 = v91;
          }

          v71 = v86;
          if ([v58 isEqualToSet:v86])
          {
            v72 = [UAFAutoAssetManager cacheDeleteStatusChange:v30];
            *configuredCopy = v72;
            if (v72)
            {
              v73 = UAFGetLogCategory(&UAFLogContextMAConfig);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                assetSetIdentifier7 = [v19 assetSetIdentifier];
                allObjects7 = [v58 allObjects];
                *buf = 136315650;
                v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
                v110 = 2114;
                v111 = assetSetIdentifier7;
                v112 = 2114;
                v113 = allObjects7;
                _os_log_impl(&dword_1BCF2C000, v73, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ has expected specifiers after inhibiting removal %{public}@", buf, 0x20u);

                v19 = v91;
              }

              v71 = v86;
            }
          }
        }

LABEL_75:
        v22 = v19;

        v15 = v90;
LABEL_76:

        goto LABEL_9;
      }
    }

    else
    {
      v19 = v91;
      if (!*configuredCopy)
      {
        goto LABEL_34;
      }
    }

    *downloaded = [v30 vendingAtomicInstanceForConfiguredEntries];
    v47 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier8 = [v19 assetSetIdentifier];
      v79 = v14;
      if (*downloaded)
      {
        v80 = @"downloaded";
      }

      else
      {
        v80 = @"not downloaded";
      }

      allObjects8 = [v79 allObjects];
      *buf = 136315906;
      v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
      v110 = 2114;
      v111 = assetSetIdentifier8;
      v112 = 2114;
      v113 = v80;
      v14 = v79;
      v114 = 2114;
      v115 = allObjects8;
      _os_log_impl(&dword_1BCF2C000, v47, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is %{public}@ and has expected specifiers %{public}@", buf, 0x2Au);

      v19 = v91;
    }

    goto LABEL_75;
  }

  *configuredCopy = 1;
  v25 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v19 assetSetIdentifier];
    v27 = v26 = v19;
    allObjects9 = [v14 allObjects];
    *buf = 136315650;
    v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
    v110 = 2114;
    v111 = v27;
    v112 = 2114;
    v113 = allObjects9;
    _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ created with specifiers %{public}@", buf, 0x20u);

    v19 = v26;
  }

  v22 = v19;
  v20 = 0;
LABEL_9:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)getReason:(id)reason operation:(id)operation
{
  v5 = MEMORY[0x1E696AEC0];
  operationCopy = operation;
  reasonCopy = reason;
  autoAssetSetClientName = [reasonCopy autoAssetSetClientName];
  clientDomainName = [reasonCopy clientDomainName];
  assetSetIdentifier = [reasonCopy assetSetIdentifier];

  v11 = [v5 stringWithFormat:@"%@ in %@ %@ %@", autoAssetSetClientName, clientDomainName, operationCopy, assetSetIdentifier];

  return v11;
}

+ (id)configureAssetSet:(id)set specifiers:(id)specifiers changed:(BOOL *)changed downloaded:(BOOL *)downloaded currentPolicy:(id *)policy
{
  v61 = *MEMORY[0x1E69E9840];
  setCopy = set;
  *changed = 0;
  v52 = 0;
  specifiersCopy = specifiers;
  specifiersCopy2 = specifiers;
  v13 = [UAFAutoAssetManager getAutoAssetSet:setCopy specifiers:&specifiersCopy addEntries:0 configured:&v52 downloaded:downloaded currentPolicy:policy];
  v14 = specifiersCopy;

  if (!v13 || v52 != 1)
  {
    v17 = +[UAFAutoAssetManager immediateNeedPolicy];
    [v17 setAllowCheckDownloadOverExpensive:{objc_msgSend(setCopy, "enableExpensiveCellular")}];
    if (policy)
    {
      v18 = v17;
      *policy = v17;
    }

    if (v13)
    {
      v19 = [UAFAutoAssetManager getAutoSetEntries:setCopy specifiers:v14];
      v20 = MEMORY[0x1E696AEC0];
      name = [setCopy name];
      v22 = [v20 stringWithFormat:@"Update to %@", name];
      v23 = [v13 alterEntriesRepresentingAtomicSync:v22 toBeComprisedOfEntries:v19 withNeedPolicy:v17];

      v24 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v25 = v24;
      if (v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          name2 = [setCopy name];
          autoAssetType = [setCopy autoAssetType];
          allObjects = [v14 allObjects];
          *buf = 136316162;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = name2;
          v57 = 2114;
          v58 = autoAssetType;
          v59 = 2114;
          *v60 = allObjects;
          *&v60[8] = 2114;
          *&v60[10] = v23;
          _os_log_error_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_ERROR, "%s Could not alter auto asset set %{public}@ with type %{public}@ specifiers %{public}@: %{public}@", buf, 0x34u);
        }
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [setCopy name];
          autoAssetType2 = [setCopy autoAssetType];
          enableExpensiveCellular = [setCopy enableExpensiveCellular];
          allObjects2 = [v14 allObjects];
          *buf = 136316162;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = name3;
          v57 = 2114;
          v58 = autoAssetType2;
          v59 = 1024;
          *v60 = enableExpensiveCellular;
          *&v60[4] = 2114;
          *&v60[6] = allObjects2;
          v32 = allObjects2;
          _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Altered auto asset set %{public}@ with type %{public}@ with expensive cellular: %d and specifiers %{public}@", buf, 0x30u);
        }

        v33 = [UAFAutoAssetManager getReason:v13 operation:@"does need"];
        v34 = [v13 needForAtomicSync:v33 withNeedPolicy:v17];

        if (!v34)
        {
          *changed = 1;
          [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v13 entries:v19 isEliminating:0 reason:@"altered"];
          v16 = v13;
          goto LABEL_25;
        }

        v35 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          name4 = [setCopy name];
          *buf = 136315650;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = name4;
          v57 = 2114;
          v58 = v34;
          _os_log_error_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_ERROR, "%s Could not indicate need for newly created asset set %{public}@ : %{public}@", buf, 0x20u);
        }
      }

      v16 = 0;
LABEL_25:

LABEL_28:
      goto LABEL_29;
    }

    v50 = v14;
    v13 = [UAFAutoAssetManager getAutoAssetSet:setCopy specifiers:&v50 addEntries:1 configured:&v52 downloaded:downloaded currentPolicy:policy];
    v26 = v50;

    if (v52)
    {
      v27 = [UAFAutoAssetManager getReason:v13 operation:@"does need"];
      v28 = [v13 needForAtomicSync:v27 withNeedPolicy:v17];

      if (!v28)
      {
        *changed = 1;
        v38 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          name5 = [setCopy name];
          allowCheckDownloadOverExpensive = [v17 allowCheckDownloadOverExpensive];
          *buf = 136315650;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = name5;
          v57 = 1024;
          LODWORD(v58) = allowCheckDownloadOverExpensive;
          _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ newly created with expensive cellular policy: %d", buf, 0x1Cu);
        }

        autoAssetEntries = [v13 autoAssetEntries];
        [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v13 entries:autoAssetEntries isEliminating:0 reason:@"created"];

        v13 = v13;
        v14 = v26;
        v16 = v13;
        goto LABEL_28;
      }

      name7 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(name7, OS_LOG_TYPE_ERROR))
      {
        name6 = [setCopy name];
        *buf = 136315650;
        v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
        v55 = 2114;
        v56 = name6;
        v57 = 2114;
        v58 = v28;
        _os_log_error_impl(&dword_1BCF2C000, name7, OS_LOG_TYPE_ERROR, "%s Could not indicate need for newly created asset set %{public}@ : %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      name7 = [setCopy name];
      *buf = 136315394;
      v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
      v55 = 2114;
      v56 = name7;
      _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s Auto asset set %{public}@ could not be created", buf, 0x16u);
    }

LABEL_27:
    v16 = 0;
    v14 = v26;
    goto LABEL_28;
  }

  v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    name8 = [setCopy name];
    *buf = 136315394;
    v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
    v55 = 2114;
    v56 = name8;
    _os_log_debug_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEBUG, "%s Auto asset set %{public}@ already defined and properly configured", buf, 0x16u);
  }

  v13 = v13;
  v16 = v13;
LABEL_29:

  v36 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)eliminateAssetType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = MEMORY[0x1E69B18F8];
  autoAssetType = [typeCopy autoAssetType];
  v6 = [v4 eliminateAllForAssetTypeSync:autoAssetType];

  v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      autoAssetType2 = [typeCopy autoAssetType];
      name = [typeCopy name];
      v12 = 136315906;
      v13 = "+[UAFAutoAssetManager eliminateAssetType:]";
      v14 = 2114;
      v15 = autoAssetType2;
      v16 = 2114;
      v17 = name;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to eliminate auto asset type %{public}@ of auto asset set %{public}@: %{public}@", &v12, 0x2Au);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    autoAssetType2 = [typeCopy autoAssetType];
    name = [typeCopy name];
    v12 = 136315650;
    v13 = "+[UAFAutoAssetManager eliminateAssetType:]";
    v14 = 2114;
    v15 = autoAssetType2;
    v16 = 2114;
    v17 = name;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Eliminated auto asset type %{public}@ for auto asset set %{public}@", &v12, 0x20u);
    goto LABEL_6;
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)invalidateAtomicInstance:(id)instance assetSetName:(id)name queue:(id)queue completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  nameCopy = name;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAutoAssetManager getConcurrentQueue];
  }

  v29 = 0;
  v13 = [UAFAutoAssetManager latestStatusForClients:nameCopy error:&v29];
  v14 = v29;
  if (v14)
  {
    v15 = v14;
    v16 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "+[UAFAutoAssetManager invalidateAtomicInstance:assetSetName:queue:completion:]";
      v34 = 2114;
      v35 = nameCopy;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Could not get short term status for asset set %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (v13)
  {
    latestDownloadedAtomicInstance = [v13 latestDownloadedAtomicInstance];
    v18 = [latestDownloadedAtomicInstance isEqualToString:instanceCopy];

    if (v18)
    {
      v19 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A588];
      v31 = @"Cannot invalidate latest atomic instance";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v15 = [v19 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v20];

LABEL_7:
      completionCopy[2](completionCopy, v15);
      goto LABEL_17;
    }
  }

  v28 = 0;
  v21 = [objc_alloc(MEMORY[0x1E69B1918]) initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:nameCopy comprisedOfEntries:0 completingFromQueue:queueCopy error:&v28];
  v15 = v28;
  if (v15)
  {
    v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "+[UAFAutoAssetManager invalidateAtomicInstance:assetSetName:queue:completion:]";
      v34 = 2114;
      v35 = nameCopy;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s Could not construct auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, v15);
  }

  else
  {
    v23 = [UAFAutoAssetManager getReason:v21 operation:@"locking latest version of"];
    v24 = MEMORY[0x1E69B1918];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__UAFAutoAssetManager_invalidateAtomicInstance_assetSetName_queue_completion___block_invoke;
    v26[3] = &unk_1E7FFD580;
    v27 = completionCopy;
    [v24 endAtomicLocks:v23 usingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:nameCopy ofAtomicInstance:instanceCopy removingLockCount:-1 completion:v26];
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
}

+ (void)setMinimalSpecifiers:(id)specifiers
{
  v21 = *MEMORY[0x1E69E9840];
  specifiersCopy = specifiers;
  v4 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[UAFConfigurationManager defaultManager];
  v6 = [v5 getAssetSet:specifiersCopy];

  metadataAsset = [v6 metadataAsset];

  if (metadataAsset)
  {
    v8 = [v6 getAutoAssets:0];
    metadataAsset2 = [v6 metadataAsset];
    v10 = [v8 objectForKeyedSubscript:metadataAsset2];

    metadataAsset3 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v12 = os_log_type_enabled(metadataAsset3, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v17 = 136315394;
        v18 = "+[UAFAutoAssetManager setMinimalSpecifiers:]";
        v19 = 2114;
        v20 = specifiersCopy;
        _os_log_impl(&dword_1BCF2C000, metadataAsset3, OS_LOG_TYPE_DEFAULT, "%s Configuring asset set %{public}@ for minimal specifiers", &v17, 0x16u);
      }

      v13 = MEMORY[0x1E695DFD8];
      metadataAsset3 = [v6 metadataAsset];
      v14 = [v13 setWithObject:metadataAsset3];
      v15 = [UAFAutoAssetManager manageAssetSet:v6 specifiers:v14 lockIfUnchanged:0 userInitiated:1 experiment:0];
    }

    else if (v12)
    {
      v17 = 136315394;
      v18 = "+[UAFAutoAssetManager setMinimalSpecifiers:]";
      v19 = 2114;
      v20 = specifiersCopy;
      _os_log_impl(&dword_1BCF2C000, metadataAsset3, OS_LOG_TYPE_DEFAULT, "%s Asset set configuration error %{public}@ metadata asset defined but not found", &v17, 0x16u);
    }
  }

  else
  {
    v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315394;
      v18 = "+[UAFAutoAssetManager setMinimalSpecifiers:]";
      v19 = 2114;
      v20 = specifiersCopy;
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ has no metadata asset, skipping", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)setLatestAtomicInstance:(id)instance autoAssetSet:(id)set fallbackAlter:(BOOL)alter
{
  alterCopy = alter;
  v93 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  setCopy = set;
  v8 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = [UAFAutoAssetManager getReason:setCopy operation:@"locking latest version of"];
  v79 = 0;
  v69 = setCopy;
  v11 = [setCopy currentSetStatusSync:&v79];
  v12 = v79;
  v13 = v12;
  v70 = v11;
  if (!v11 || v12)
  {
    v35 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier = [setCopy assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = assetSetIdentifier;
      v86 = 2114;
      v87 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v34 = v13;
    goto LABEL_37;
  }

  v67 = alterCopy;
  v68 = v9;
  assetSetIdentifier2 = [setCopy assetSetIdentifier];
  [UAFAutoAssetManager cacheAssetSetCompleteness:assetSetIdentifier2 autoAssetSetStatus:v11];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  currentLockUsage = [v11 currentLockUsage];
  v16 = [currentLockUsage objectForKeyedSubscript:v10];

  v17 = [v16 countByEnumeratingWithState:&v75 objects:v92 count:16];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  v19 = *v76;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v76 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v75 + 1) + 8 * i);
      currentLockUsage2 = [v70 currentLockUsage];
      v23 = [currentLockUsage2 objectForKeyedSubscript:v10];
      v24 = [v23 objectForKeyedSubscript:v21];
      integerValue = [v24 integerValue];

      if ([v21 isEqualToString:instanceCopy])
      {
        if (integerValue < 2)
        {
          continue;
        }

        --integerValue;
      }

      v26 = MEMORY[0x1E69B1918];
      assetSetIdentifier3 = [v69 assetSetIdentifier];
      v28 = [v26 endAtomicLocksSync:v10 usingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:assetSetIdentifier3 ofAtomicInstance:v21 removingLockCount:integerValue];

      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          assetSetIdentifier4 = [v69 assetSetIdentifier];
          *buf = 136316162;
          v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
          v84 = 2114;
          v85 = v21;
          v86 = 2114;
          v87 = assetSetIdentifier4;
          v88 = 2114;
          v89 = v10;
          v90 = 2114;
          v91 = v28;
          _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s Could not decrement locks for atomic instance %{public}@ in auto asset set %{public}@ with reason %{public}@: %{public}@", buf, 0x34u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        assetSetIdentifier5 = [v69 assetSetIdentifier];
        *buf = 136316162;
        v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
        v84 = 2114;
        v85 = v21;
        v86 = 2114;
        v87 = assetSetIdentifier5;
        v88 = 2114;
        v89 = v10;
        v90 = 2048;
        v91 = integerValue;
        _os_log_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_DEFAULT, "%s Decrement locks for atomic instance %{public}@ in auto asset set %{public}@ with reason %{public}@ lockCount: %ld", buf, 0x34u);
      }
    }

    v18 = [v16 countByEnumeratingWithState:&v75 objects:v92 count:16];
  }

  while (v18);
LABEL_19:

  v33 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    assetSetIdentifier6 = [v69 assetSetIdentifier];
    *buf = 136315906;
    v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
    v84 = 2114;
    v85 = instanceCopy;
    v86 = 2114;
    v87 = assetSetIdentifier6;
    v88 = 2114;
    v89 = v10;
    _os_log_debug_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEBUG, "%s Updated locks to reflect latest atomic instance of %{public}@ for auto asset set %{public}@ with reason %{public}@", buf, 0x2Au);
  }

  v13 = 0;
  v9 = v68;
  if (instanceCopy)
  {
LABEL_22:
    v34 = 0;
    goto LABEL_37;
  }

  v74 = 0;
  v36 = [v69 currentSetStatusSync:&v74];
  v37 = v74;
  if (v37)
  {
    v38 = v37;
    v39 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier7 = [v69 assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = assetSetIdentifier7;
      v86 = 2114;
      v87 = v38;
      _os_log_error_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v34 = v38;
    goto LABEL_36;
  }

  currentLockUsage3 = [v36 currentLockUsage];
  v41 = [currentLockUsage3 count];

  if (v41)
  {
    v42 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier8 = [v69 assetSetIdentifier];
      *buf = 136315394;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = assetSetIdentifier8;
      _os_log_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_DEFAULT, "%s Could not eliminate unneeded auto asset %{public}@ as there are current locks", buf, 0x16u);
    }

    currentLockUsage4 = [v36 currentLockUsage];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __74__UAFAutoAssetManager_setLatestAtomicInstance_autoAssetSet_fallbackAlter___block_invoke;
    v72[3] = &unk_1E7FFE050;
    v45 = v69;
    v73 = v45;
    [currentLockUsage4 enumerateKeysAndObjectsUsingBlock:v72];

    v46 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v80[0] = *MEMORY[0x1E696A588];
    v80[1] = v47;
    v81[0] = @"Could not eliminate as there are current locks";
    v81[1] = @"Could not eliminate as there are current locks";
    v80[2] = @"currentLockUsage";
    currentLockUsage5 = [v36 currentLockUsage];
    v81[2] = currentLockUsage5;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
    v50 = [v46 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v49];

    if (v67)
    {
      assetSetIdentifier9 = [v45 assetSetIdentifier];
      [UAFAutoAssetManager setMinimalSpecifiers:assetSetIdentifier9];
    }

    v34 = v50;

LABEL_36:
  }

  else
  {
    v56 = [UAFAutoAssetManager getReason:v69 operation:@"should eliminate"];
    v57 = MEMORY[0x1E69B1918];
    assetSetIdentifier10 = [v69 assetSetIdentifier];
    v34 = [v57 eliminateAtomicSync:v56 usingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:assetSetIdentifier10 awaitingUnlocked:1];

    autoAssetEntries = [v69 autoAssetEntries];
    [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v69 entries:autoAssetEntries isEliminating:1 reason:@"eliminated"];

    [UAFAutoAssetHistory persistAssetSetInfoLocked:0 atomicEntries:0 autoAssetSet:v69 isEliminating:1 reason:@"eliminated"];
    assetSetIdentifier11 = [v69 assetSetIdentifier];
    [UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:assetSetIdentifier11];

    v61 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v62 = v61;
    if (!v34)
    {
      v13 = 0;
      v9 = v68;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        assetSetIdentifier12 = [v69 assetSetIdentifier];
        *buf = 136315394;
        v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
        v84 = 2114;
        v85 = assetSetIdentifier12;
        _os_log_impl(&dword_1BCF2C000, v62, OS_LOG_TYPE_DEFAULT, "%s Eliminated unneeded auto asset %{public}@", buf, 0x16u);
      }

      assetSetIdentifier13 = [v69 assetSetIdentifier];
      [UAFAssetSetObserver sendUAFNotificationForAssetSet:assetSetIdentifier13 forRoot:0];

      goto LABEL_22;
    }

    v13 = 0;
    v9 = v68;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier14 = [v69 assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = assetSetIdentifier14;
      v86 = 2114;
      v87 = v34;
      _os_log_error_impl(&dword_1BCF2C000, v62, OS_LOG_TYPE_ERROR, "%s Could not eliminate unneeded auto asset %{public}@ : %{public}@", buf, 0x20u);
    }
  }

LABEL_37:

  objc_autoreleasePoolPop(v9);
  v52 = *MEMORY[0x1E69E9840];

  return v34;
}

void __74__UAFAutoAssetManager_setLatestAtomicInstance_autoAssetSet_fallbackAlter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) assetSetIdentifier];
    v10 = 136315906;
    v11 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ Lock reason: %@, locks: %@", &v10, 0x2Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)logAtomicInstance:(id)instance name:(id)name entries:(id)entries
{
  instanceCopy = instance;
  nameCopy = name;
  entriesCopy = entries;
  v10 = +[UAFAutoAssetManager getConcurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UAFAutoAssetManager_logAtomicInstance_name_entries___block_invoke;
  block[3] = &unk_1E7FFDEA0;
  v15 = entriesCopy;
  v16 = nameCopy;
  v17 = instanceCopy;
  v11 = instanceCopy;
  v12 = nameCopy;
  v13 = entriesCopy;
  dispatch_async(v10, block);
}

void __54__UAFAutoAssetManager_logAtomicInstance_name_entries___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = &stru_1F3B6B510;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v15 + 1) + 8 * v8) summary];
        v7 = [(__CFString *)v9 stringByAppendingFormat:@"%@\n", v10];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F3B6B510;
  }

  v11 = UAFGetLogCategory(&UAFLogContextLargeMessage);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    *buf = 136315906;
    v20 = "+[UAFAutoAssetManager logAtomicInstance:name:entries:]_block_invoke";
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ atomic instance %{public}@ contains:\n%{public}@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)lockLatestAssetSet:(id)set completion:(id)completion
{
  setCopy = set;
  completionCopy = completion;
  v7 = +[UAFAutoAssetManager getSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__UAFAutoAssetManager_lockLatestAssetSet_completion___block_invoke;
  v10[3] = &unk_1E7FFD5A8;
  v11 = setCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = setCopy;
  dispatch_async(v7, v10);
}

void __53__UAFAutoAssetManager_lockLatestAssetSet_completion___block_invoke(uint64_t a1)
{
  v2 = [UAFAutoAssetManager lockLatestAssetSet:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v3 = +[UAFAutoAssetManager getConcurrentQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53__UAFAutoAssetManager_lockLatestAssetSet_completion___block_invoke_2;
    v4[3] = &unk_1E7FFD940;
    v6 = *(a1 + 40);
    v5 = v2;
    dispatch_async(v3, v4);
  }
}

+ (id)lockLatestAssetSet:(id)set
{
  v46 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = [UAFAutoAssetManager getReason:setCopy operation:@"locking latest version of"];
  v5 = +[UAFAutoAssetManager fileLockPolicy];
  assetSetIdentifier = [setCopy assetSetIdentifier];
  v39 = 0;
  v7 = [UAFAutoAssetManager latestStatusForClients:assetSetIdentifier error:&v39];
  v29 = v39;

  if (v7)
  {
    latestDownloadedAtomicInstance = [v7 latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v37 = 0;
  v38 = 0;
  v30 = v4;
  v10 = [setCopy lockAtomicSync:v4 forAtomicInstance:0 withNeedPolicy:v5 withTimeout:0 lockedAtomicEntries:&v38 error:&v37];
  v11 = v38;
  v12 = v37;
  objc_autoreleasePoolPop(v9);
  v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier2 = [setCopy assetSetIdentifier];
      *buf = 136315650;
      v41 = "+[UAFAutoAssetManager lockLatestAssetSet:]";
      v42 = 2114;
      v43 = assetSetIdentifier2;
      v44 = 2114;
      v45 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to lock auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    domain = [v12 domain];
    if ([domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      code = [v12 code];

      if (code == 6538)
      {
        v17 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v41 = "+[UAFAutoAssetManager lockLatestAssetSet:]";
          v42 = 2114;
          v43 = v12;
          _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Encountered device locked error, scheduling activity for class A unlock: %{public}@", buf, 0x16u);
        }

        [UAFXPCActivity registerOnBootUAFActivityWithLockAssertion:1];
      }
    }

    else
    {
    }

    v25 = +[UAFInstrumentationProvider getSerialQueue];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __42__UAFAutoAssetManager_lockLatestAssetSet___block_invoke;
    v34[3] = &unk_1E7FFD098;
    v35 = setCopy;
    v36 = v11;
    dispatch_async(v25, v34);

    v24 = v12;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    assetSetIdentifier3 = [setCopy assetSetIdentifier];
    *buf = 136315650;
    v41 = "+[UAFAutoAssetManager lockLatestAssetSet:]";
    v42 = 2114;
    v43 = assetSetIdentifier3;
    v44 = 2114;
    v45 = v10;
    _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Locked auto asset set %{public}@ with atomic instance %{public}@", buf, 0x20u);
  }

  if (v10 && !latestDownloadedAtomicInstance)
  {
    goto LABEL_16;
  }

  v20 = 0;
  if (!v10 || !latestDownloadedAtomicInstance)
  {
    goto LABEL_17;
  }

  if ([v10 isEqualToString:latestDownloadedAtomicInstance])
  {
    v20 = 0;
  }

  else
  {
LABEL_16:
    assetSetIdentifier4 = [setCopy assetSetIdentifier];
    [UAFAssetSetObserver sendUAFNotificationForAssetSet:assetSetIdentifier4 forRoot:0];

    [UAFAutoAssetHistory persistAssetSetInfoLocked:v10 atomicEntries:v11 autoAssetSet:setCopy isEliminating:0 reason:@"locked"];
    v20 = 1;
  }

LABEL_17:
  assetSetIdentifier5 = [setCopy assetSetIdentifier];
  [UAFAutoAssetManager logAtomicInstance:v10 name:assetSetIdentifier5 entries:v11];

  v22 = [UAFAutoAssetManager setLatestAtomicInstance:v10 autoAssetSet:setCopy fallbackAlter:1];
  if (v20)
  {
    v23 = +[UAFInstrumentationProvider getSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__UAFAutoAssetManager_lockLatestAssetSet___block_invoke_400;
    block[3] = &unk_1E7FFD098;
    v32 = setCopy;
    v33 = v11;
    dispatch_async(v23, block);
  }

  v24 = v22;
LABEL_22:

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (BOOL)sendNotificationForAssetSet:(id)set
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B1928] notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:set];
  v4 = notify_post([v3 UTF8String]);
  if (v4)
  {
    v5 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = "+[UAFAutoAssetManager sendNotificationForAssetSet:]";
      v10 = 2112;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s notify_post to %@ failed: %lu", &v8, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4 == 0;
}

+ (int)listenForUpdates:(id)updates updateHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  handlerCopy = handler;
  v7 = -1;
  out_token = -1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [&unk_1F3B732A8 countByEnumeratingWithState:&v25 objects:v36 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 136315650;
    v21 = v9;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(&unk_1F3B732A8);
      }

      v13 = [MEMORY[0x1E69B1928] notifyRegistrationName:*(*(&v25 + 1) + 8 * v12) forAssetSetIdentifier:{updatesCopy, v21}];
      uTF8String = [v13 UTF8String];
      v15 = +[UAFAutoAssetManager getConcurrentQueue];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__UAFAutoAssetManager_listenForUpdates_updateHandler___block_invoke;
      handler[3] = &unk_1E7FFD9C0;
      v16 = v13;
      v23 = v16;
      v24 = handlerCopy;
      v17 = notify_register_dispatch(uTF8String, &out_token, v15, handler);

      if (v17)
      {
        v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v21;
          v31 = "+[UAFAutoAssetManager listenForUpdates:updateHandler:]";
          v32 = 2112;
          v33 = v16;
          v34 = 2048;
          v35 = v17;
          _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s notify_register_dispatch for %@ failed: %lu", buf, 0x20u);
        }

        v7 = out_token;
      }

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [&unk_1F3B732A8 countByEnumeratingWithState:&v25 objects:v36 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        v7 = out_token;
        break;
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __54__UAFAutoAssetManager_listenForUpdates_updateHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "+[UAFAutoAssetManager listenForUpdates:updateHandler:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Received notification for %{public}@", &v6, 0x16u);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)observeAssetSet:(id)set
{
  v18 = *MEMORY[0x1E69E9840];
  setCopy = set;
  name = [setCopy name];
  [UAFAutoAssetManager observeAssetSetExperimentalNamespace:setCopy];

  if (qword_1ED7D1268 != -1)
  {
    dispatch_once(&qword_1ED7D1268, &__block_literal_global_413);
  }

  v5 = [qword_1ED7D1270 objectForKeyedSubscript:name];

  if (v5)
  {
    v6 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "+[UAFAutoAssetManager observeAssetSet:]";
      v16 = 2114;
      v17 = name;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Already watching for updates to auto asset set %{public}@ to perform auto asset lock maintenance", buf, 0x16u);
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__UAFAutoAssetManager_observeAssetSet___block_invoke_414;
    v12[3] = &unk_1E7FFCFD0;
    v7 = name;
    v13 = v7;
    v8 = [UAFAutoAssetManager listenForUpdates:v7 updateHandler:v12];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    [qword_1ED7D1270 setObject:v9 forKeyedSubscript:v7];

    v10 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "+[UAFAutoAssetManager observeAssetSet:]";
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Watching for updates to auto asset set %{public}@ to perform auto asset lock maintenance", buf, 0x16u);
    }

    v6 = v13;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __39__UAFAutoAssetManager_observeAssetSet___block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED7D1270;
  qword_1ED7D1270 = v0;
}

void __39__UAFAutoAssetManager_observeAssetSet___block_invoke_414(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69B1918]);
  v3 = *(a1 + 32);
  v4 = +[UAFAutoAssetManager getConcurrentQueue];
  v18 = 0;
  v5 = [v2 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v3 comprisedOfEntries:0 completingFromQueue:v4 error:&v18];
  v6 = v18;

  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v20 = "+[UAFAutoAssetManager observeAssetSet:]_block_invoke";
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ for updating: %{public}@", buf, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v5)
  {
    v9 = os_transaction_create();
    if (v9)
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        description = os_transaction_get_description();
        timestamp = os_transaction_get_timestamp();
        v14 = [v5 assetSetIdentifier];
        *buf = 136315906;
        v20 = "+[UAFAutoAssetManager observeAssetSet:]_block_invoke";
        v21 = 2080;
        v22 = description;
        v23 = 2048;
        v24 = timestamp;
        v25 = 2112;
        v26 = v14;
        _os_log_debug_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEBUG, "%s Creating transaction %s from %llu to lock latest for asset set %@", buf, 0x2Au);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__UAFAutoAssetManager_observeAssetSet___block_invoke_416;
    v15[3] = &unk_1E7FFEBD8;
    v16 = v9;
    v17 = v5;
    v7 = v9;
    [UAFAutoAssetManager lockLatestAssetSet:v17 completion:v15];

    goto LABEL_10;
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
}

void __39__UAFAutoAssetManager_observeAssetSet___block_invoke_416(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      description = os_transaction_get_description();
      v6 = *(a1 + 32);
      timestamp = os_transaction_get_timestamp();
      v8 = [*(a1 + 40) assetSetIdentifier];
      v9 = 136315906;
      v10 = "+[UAFAutoAssetManager observeAssetSet:]_block_invoke";
      v11 = 2080;
      v12 = description;
      v13 = 2048;
      v14 = timestamp;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEBUG, "%s Completing transaction %s from %llu to lock latest for asset set %@", &v9, 0x2Au);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (void)observeAllAssetSets
{
  v2 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_async(v2, &__block_literal_global_420);
}

+ (void)observeAssetSetExperimentalNamespace:(id)namespace
{
  v30 = *MEMORY[0x1E69E9840];
  namespaceCopy = namespace;
  if (+[UAFCommonUtilities isTrialAvailable])
  {
    name = [namespaceCopy name];
    experimentalAssets = [namespaceCopy experimentalAssets];
    trialNamespace = [experimentalAssets trialNamespace];

    if (name && trialNamespace)
    {
      if (qword_1ED7D1278 != -1)
      {
        dispatch_once(&qword_1ED7D1278, &__block_literal_global_423);
      }

      v7 = [qword_1ED7D1280 objectForKeyedSubscript:name];

      if (v7)
      {
        v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]";
          v26 = 2114;
          v27 = name;
          _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Already watching for updates to experimental assets for asset set %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __60__UAFAutoAssetManager_observeAssetSetExperimentalNamespace___block_invoke_424;
        v21 = &unk_1E7FFEC00;
        v9 = name;
        v22 = v9;
        v10 = trialNamespace;
        v23 = v10;
        v11 = MEMORY[0x1BFB33950](&v18);
        v12 = MEMORY[0x1E69DB530];
        v13 = [UAFAssetSetManager getSerialQueue:v18];
        v14 = [v12 registerUpdateForNamespaceName:v10 queue:v13 usingBlock:v11];

        if (v14)
        {
          [qword_1ED7D1280 setObject:v14 forKeyedSubscript:v9];
        }

        else
        {
          v15 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v25 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]";
            v26 = 2114;
            v27 = v9;
            v28 = 2114;
            v29 = v10;
            _os_log_fault_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_FAULT, "%s Error registering update handler from %{public}@ for namespace %{public}@", buf, 0x20u);
          }

          v16 = UAFGetLogCategory(&UAFLogContextClient);
          UAFFaultCapture(v16, kUAFABCNotifyRegisterFailure, @"trial", 0);
        }

        v8 = v22;
      }
    }
  }

  else
  {
    name = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]";
      _os_log_error_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __60__UAFAutoAssetManager_observeAssetSetExperimentalNamespace___block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED7D1280;
  qword_1ED7D1280 = v0;
}

void __60__UAFAutoAssetManager_observeAssetSetExperimentalNamespace___block_invoke_424(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 136315650;
    v9 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Update notification from %{public}@ for namespace %{public}@", &v8, 0x20u);
  }

  v5 = +[UAFSubscriptionStoreManager writeManager];
  v6 = +[UAFConfigurationManager defaultManager];
  [UAFAssetSetManager configureAssetDelivery:v5 configurationManager:v6 lockIfUnchanged:0 oldSubscriptions:0 newSubscriptions:0 userInitiated:0];

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)latestAtomicInstanceFromMA:(id)a error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  aCopy = a;
  v6 = objc_autoreleasePoolPush();
  v7 = [UAFAutoAssetManager getReason:aCopy operation:@"checking"];
  v18 = 0;
  v8 = [aCopy checkAtomicSync:v7 forAtomicInstance:0 withTimeout:0 discoveredAtomicEntries:0 error:&v18];
  v9 = v18;

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  v11 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      assetSetIdentifier = [aCopy assetSetIdentifier];
      *buf = 136315650;
      v20 = "+[UAFAutoAssetManager latestAtomicInstanceFromMA:error:]";
      v21 = 2114;
      v22 = assetSetIdentifier;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is available and has atomic instance %{public}@", buf, 0x20u);
    }

    v14 = v8;
  }

  else
  {
    if (v12)
    {
      assetSetIdentifier2 = [aCopy assetSetIdentifier];
      *buf = 136315650;
      v20 = "+[UAFAutoAssetManager latestAtomicInstanceFromMA:error:]";
      v21 = 2114;
      v22 = assetSetIdentifier2;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ does not yet have assets: %{public}@", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)latestStatusForClients:(id)clients error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  clientsCopy = clients;
  v6 = objc_autoreleasePoolPush();
  v23 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69B1918]) initLockerUsingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:clientsCopy error:&v23];
  v8 = v23;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = [UAFAutoAssetManager getReason:v7 operation:@"file locking latest version of"];
    v22 = 0;
    v12 = [v7 lockAtomicSync:v11 forAtomicInstance:0 error:&v22];
    v13 = v22;
    if (v12)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      latestDownloadedAtomicInstance = [v12 latestDownloadedAtomicInstance];
      v10 = [v7 endAtomicLockSync:v11 ofAtomicInstance:latestDownloadedAtomicInstance];

      if (!v10)
      {
        goto LABEL_19;
      }

      v16 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        latestDownloadedAtomicInstance2 = [v12 latestDownloadedAtomicInstance];
        *buf = 136315906;
        v25 = "+[UAFAutoAssetManager latestStatusForClients:error:]";
        v26 = 2114;
        v27 = clientsCopy;
        v28 = 2114;
        v29 = latestDownloadedAtomicInstance2;
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Could not end lock of auto asset set %{public}@ atomic instance %{public}@ : %{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v10 = v13;
      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v25 = "+[UAFAutoAssetManager latestStatusForClients:error:]";
        v26 = 2114;
        v27 = clientsCopy;
        v28 = 2114;
        v29 = v10;
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not lock auto asset set %{public}@ : %{public}@", buf, 0x20u);
      }

      v16 = v12;
      v12 = 0;
    }
  }

  else
  {
    v10 = v8;
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v25 = "+[UAFAutoAssetManager latestStatusForClients:error:]";
      v26 = 2114;
      v27 = clientsCopy;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v12 = 0;
  }

LABEL_19:

  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v19 = v10;
    *error = v10;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)latestAtomicInstanceForClients:(id)clients OSSupported:(BOOL *)supported error:(id *)error
{
  v84 = *MEMORY[0x1E69E9840];
  clientsCopy = clients;
  *supported = 1;
  name = [clientsCopy name];
  errorCopy = error;
  v9 = [UAFAutoAssetManager latestStatusForClients:name error:error];

  if (!v9)
  {
    latestDownloadedAtomicInstance = 0;
    goto LABEL_44;
  }

  metadataAsset = [clientsCopy metadataAsset];

  if (!metadataAsset)
  {
    goto LABEL_34;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  assets = [clientsCopy assets];
  v51 = [assets countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (!v51)
  {
    goto LABEL_33;
  }

  v52 = *v68;
  v53 = clientsCopy;
  v55 = v9;
  v50 = assets;
  supportedCopy = supported;
  do
  {
    for (i = 0; i != v51; ++i)
    {
      if (*v68 != v52)
      {
        objc_enumerationMutation(assets);
      }

      v13 = *(*(&v67 + 1) + 8 * i);
      metadataAsset2 = [clientsCopy metadataAsset];
      name2 = [v13 name];
      v16 = [metadataAsset2 isEqualToString:name2];

      if (v16)
      {
        v49 = i;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = [v13 expansions];
        v58 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
        if (!v58)
        {
          goto LABEL_30;
        }

        v57 = *v64;
LABEL_11:
        v17 = 0;
LABEL_12:
        if (*v64 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v18 = [*(*(&v63 + 1) + 8 * v17) getAutoAssetSpecifier:0];
        if (!v18)
        {
          goto LABEL_28;
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        latestDowloadedAtomicInstanceEntries = [v9 latestDowloadedAtomicInstanceEntries];
        v20 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v59 objects:v81 count:16];
        if (!v20)
        {
          goto LABEL_23;
        }

        v21 = v20;
        v22 = *v60;
LABEL_17:
        v23 = 0;
        while (1)
        {
          if (*v60 != v22)
          {
            objc_enumerationMutation(latestDowloadedAtomicInstanceEntries);
          }

          v24 = *(*(&v59 + 1) + 8 * v23);
          fullAssetSelector = [v24 fullAssetSelector];
          assetSpecifier = [fullAssetSelector assetSpecifier];
          v27 = [v18 isEqualToString:assetSpecifier];

          if (v27)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v59 objects:v81 count:16];
            if (v21)
            {
              goto LABEL_17;
            }

LABEL_23:

            v9 = v55;
LABEL_28:

            if (++v17 != v58)
            {
              goto LABEL_12;
            }

            v58 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
            if (!v58)
            {
LABEL_30:

              i = v49;
              assets = v50;
              goto LABEL_31;
            }

            goto LABEL_11;
          }
        }

        localContentURL = [v24 localContentURL];
        if (!localContentURL)
        {
          goto LABEL_36;
        }

        v29 = localContentURL;
        localContentURL2 = [v24 localContentURL];
        scheme = [localContentURL2 scheme];

        if (scheme)
        {
LABEL_36:
          v38 = UAFGetLogCategory(&UAFLogContextMAConfig);
          v9 = v55;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            metadataAsset3 = [v53 metadataAsset];
            name3 = [v53 name];
            localContentURL3 = [v24 localContentURL];
            *buf = 136315906;
            v72 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:OSSupported:error:]";
            v73 = 2114;
            v74 = metadataAsset3;
            v75 = 2114;
            v76 = name3;
            v77 = 2112;
            v78 = localContentURL3;
            _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, "%s Failed to get a valid URL for metadata asset %{public}@ in asset set %{public}@ at location %@", buf, 0x2Au);
          }

          latestDownloadedAtomicInstance = [v55 latestDownloadedAtomicInstance];
        }

        else
        {
          v32 = MEMORY[0x1E695DFF8];
          localContentURL4 = [v24 localContentURL];
          absoluteString = [localContentURL4 absoluteString];
          v35 = [v32 fileURLWithPath:absoluteString isDirectory:1];

          v36 = [UAFAssetSetMetadata fromAssetDir:v35 error:errorCopy];
          v9 = v55;
          if (!*errorCopy)
          {

            if (!v36)
            {
              goto LABEL_28;
            }

            clientsCopy = v53;
            *supportedCopy = [v36 OSSupported:v53];
            latestDownloadedAtomicInstance = [v55 latestDownloadedAtomicInstance];

            goto LABEL_44;
          }

          v39 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            metadataAsset4 = [v53 metadataAsset];
            name4 = [v53 name];
            v47 = *errorCopy;
            *buf = 136316162;
            v72 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:OSSupported:error:]";
            v73 = 2114;
            v74 = metadataAsset4;
            v75 = 2114;
            v76 = name4;
            v77 = 2112;
            v78 = v35;
            v79 = 2114;
            v80 = v47;
            _os_log_error_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_ERROR, "%s Failed to load asset set metadata from asset %{public}@ in asset set %{public}@ at location %@: %{public}@", buf, 0x34u);
          }

          latestDownloadedAtomicInstance = [v55 latestDownloadedAtomicInstance];

          latestDowloadedAtomicInstanceEntries = v36;
        }

        clientsCopy = v53;
        goto LABEL_44;
      }

LABEL_31:
      clientsCopy = v53;
    }

    v51 = [assets countByEnumeratingWithState:&v67 objects:v83 count:16];
  }

  while (v51);
LABEL_33:

LABEL_34:
  latestDownloadedAtomicInstance = [v9 latestDownloadedAtomicInstance];
LABEL_44:

  v40 = *MEMORY[0x1E69E9840];

  return latestDownloadedAtomicInstance;
}

+ (id)consistencyTokenFromConfig:(id)config atomicInstance:(id)instance experiment:(id)experiment
{
  experimentCopy = experiment;
  instanceCopy = instance;
  configCopy = config;
  v10 = [UAFPreinstalledAssetsCache summary:configCopy];
  v11 = [UAFAssetSetConsistencyToken alloc];
  name = [configCopy name];

  v13 = [(UAFAssetSetConsistencyToken *)v11 initWithUUID:0 assetSetName:name atomicInstance:instanceCopy experiment:experimentCopy preinstalledAssetsSummary:v10];

  return v13;
}

+ (BOOL)isLatestConsistencyToken:(id)token
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  assetSetName = [tokenCopy assetSetName];

  if (assetSetName)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[UAFConfigurationManager defaultManager];
    assetSetName2 = [tokenCopy assetSetName];
    v8 = [v6 getAssetSet:assetSetName2];

    if (v8)
    {
      name = [v8 name];
      v10 = [UAFAutoAssetManager latestAtomicInstanceForClients:name];

      experimentalAssets = [v8 experimentalAssets];

      if (experimentalAssets)
      {
        v12 = [UAFAssetSetExperiment alloc];
        experimentalAssets2 = [v8 experimentalAssets];
        v14 = [(UAFAssetSetExperiment *)v12 initWithConfiguration:experimentalAssets2 uuid:0];
      }

      else
      {
        v14 = 0;
      }

      v17 = [UAFAutoAssetManager consistencyTokenFromConfig:v8 atomicInstance:v10 experiment:v14];
      v16 = [tokenCopy hasIdenticalAssets:v17];
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        assetSetName3 = [tokenCopy assetSetName];
        v21 = 136315394;
        v22 = "+[UAFAutoAssetManager isLatestConsistencyToken:]";
        v23 = 2114;
        v24 = assetSetName3;
        _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Asset set %{public}@ has no configuration", &v21, 0x16u);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "+[UAFAutoAssetManager isLatestConsistencyToken:]";
      v23 = 2114;
      v24 = tokenCopy;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Consistency token  has no asset set name: %{public}@", &v21, 0x16u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)assetSetEmpty:(id)empty
{
  emptyCopy = empty;
  newerAtomicInstanceDiscovered = [emptyCopy newerAtomicInstanceDiscovered];
  if (newerAtomicInstanceDiscovered)
  {
    newerDiscoveredAtomicEntries = [emptyCopy newerDiscoveredAtomicEntries];
    v6 = [newerDiscoveredAtomicEntries count] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldCheckAssetSet:(id)set autoAssetSet:(id)assetSet changed:(BOOL)changed downloaded:(BOOL)downloaded experiment:(id)experiment locked:(BOOL *)locked userInitiated:(BOOL *)initiated removalNeeded:(BOOL *)self0
{
  downloadedCopy = downloaded;
  changedCopy = changed;
  v85 = *MEMORY[0x1E69E9840];
  setCopy = set;
  assetSetCopy = assetSet;
  experimentCopy = experiment;
  *locked = 0;
  if (changedCopy)
  {
    v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [assetSetCopy assetSetIdentifier];
      v20 = v19 = experimentCopy;
      *buf = 136315394;
      v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
      v79 = 2114;
      v80 = v20;
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ has had its configuration changed", buf, 0x16u);

      experimentCopy = v19;
    }
  }

  v75 = 0;
  v21 = [UAFAutoAssetManager latestAtomicInstanceFromMA:assetSetCopy error:&v75];
  v22 = v75;
  v23 = v22;
  v65 = v21;
  if (!v21)
  {
    v74 = v22;
    v27 = [assetSetCopy currentSetStatusSync:&v74];
    v26 = v74;

    if (!v27 || v26)
    {
      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        assetSetIdentifier = [assetSetCopy assetSetIdentifier];
        *buf = 136315650;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = assetSetIdentifier;
        v81 = 2114;
        v82 = v26;
        _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
LABEL_50:
      }
    }

    else
    {
      v28 = [UAFAutoAssetManager assetSetEmpty:v27];
      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          assetSetIdentifier2 = [assetSetCopy assetSetIdentifier];
          newerAtomicInstanceDiscovered = [v27 newerAtomicInstanceDiscovered];
          catalogCachedAssetSetID = [v27 catalogCachedAssetSetID];
          *buf = 136315906;
          v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
          v79 = 2114;
          v80 = assetSetIdentifier2;
          v81 = 2114;
          v82 = newerAtomicInstanceDiscovered;
          v83 = 2114;
          v84 = catalogCachedAssetSetID;
          _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is desired but newest published atomic instance %{public}@ from catalog %{public}@ contains no assets", buf, 0x2Au);
        }

        goto LABEL_52;
      }

      if (v30)
      {
        assetSetIdentifier = [assetSetCopy assetSetIdentifier];
        *buf = 136315394;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = assetSetIdentifier;
        _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is desired but no atomic instance is available", buf, 0x16u);
        goto LABEL_50;
      }
    }

    LOBYTE(changedCopy) = 1;
LABEL_52:

    goto LABEL_53;
  }

  v62 = downloadedCopy;
  v73 = 0;
  v72 = v22;
  v24 = [UAFAutoAssetManager latestAtomicInstanceForClients:setCopy OSSupported:&v73 error:&v72];
  v25 = v72;

  v64 = v24;
  if ([v21 isEqualToString:v24])
  {
    v26 = v25;
    goto LABEL_19;
  }

  v34 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    name = [setCopy name];
    *buf = 136315650;
    v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
    v79 = 2114;
    v80 = name;
    v81 = 2114;
    v82 = v21;
    _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ has atomic instance %{public}@, but is not available to clients, locking latest instance", buf, 0x20u);
  }

  v26 = [UAFAutoAssetManager lockLatestAssetSet:assetSetCopy];

  v36 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [setCopy name];
    *buf = 136315650;
    v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
    v79 = 2114;
    v80 = name2;
    v81 = 2114;
    v82 = v26;
    _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ locking complete with error: %{public}@", buf, 0x20u);
  }

  v38 = 1;
  if (!v26)
  {
    *locked = 1;
    v71 = 0;
    v39 = [UAFAutoAssetManager latestAtomicInstanceForClients:setCopy OSSupported:&v73 error:&v71];
    v26 = v71;
    v21 = v65;
LABEL_19:
    if (v73)
    {
      v40 = [UAFAutoAssetManager consistencyTokenFromConfig:setCopy atomicInstance:v64 experiment:experimentCopy];
      v66 = v26;
      v41 = [UAFExpiredAssets assetsExpired:v40 error:&v66];
      v42 = v66;

      if (v41)
      {
        v43 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [setCopy name];
          *buf = 136315906;
          v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
          v79 = 2114;
          v80 = name3;
          v81 = 2114;
          v82 = v21;
          v83 = 2114;
          v84 = v40;
          _os_log_impl(&dword_1BCF2C000, v43, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is configured, has atomic instance %{public}@, is available to clients, and current OS supported but current assets %{public}@ are marked as expired", buf, 0x2Au);
        }

        v38 = 1;
        *initiated = 1;
      }

      else
      {
        v38 = 1;
        if (v62 && !changedCopy)
        {
          v57 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            name4 = [setCopy name];
            *buf = 136315650;
            v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
            v79 = 2114;
            v80 = name4;
            v81 = 2114;
            v82 = v65;
            _os_log_impl(&dword_1BCF2C000, v57, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is configured, has atomic instance %{public}@, and is available to clients, no further management needed", buf, 0x20u);
          }

          v38 = 0;
        }
      }

      v26 = v42;
    }

    else
    {
      v61 = experimentCopy;
      v63 = assetSetCopy;
      v45 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        name5 = [setCopy name];
        *buf = 136315650;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = name5;
        v81 = 2114;
        v82 = v21;
        _os_log_impl(&dword_1BCF2C000, v45, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is configured, has atomic instance %{public}@, and is available to clients but current OS is not supported", buf, 0x20u);
      }

      v38 = 1;
      *needed = 1;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      assets = [setCopy assets];
      v48 = [assets countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v68;
        while (2)
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v68 != v50)
            {
              objc_enumerationMutation(assets);
            }

            v52 = *(*(&v67 + 1) + 8 * i);
            metadataAsset = [setCopy metadataAsset];
            name6 = [v52 name];
            if ([metadataAsset isEqualToString:name6])
            {
            }

            else
            {
              ignoreOSCompatibility = [v52 ignoreOSCompatibility];

              if (ignoreOSCompatibility)
              {
                *needed = 0;
                goto LABEL_40;
              }
            }
          }

          v49 = [assets countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v49)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:

      assetSetCopy = v63;
      *initiated = 1;
      experimentCopy = v61;
    }
  }

  LOBYTE(changedCopy) = v38;
LABEL_53:

  v59 = *MEMORY[0x1E69E9840];
  return changedCopy;
}

+ (void)setBackgroundNeedPolicy:(id)policy configuration:(id)configuration
{
  v22 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  configurationCopy = configuration;
  v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    assetSetIdentifier = [policyCopy assetSetIdentifier];
    v16 = 136315394;
    v17 = "+[UAFAutoAssetManager setBackgroundNeedPolicy:configuration:]";
    v18 = 2114;
    v19 = assetSetIdentifier;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Setting need policy for asset set '%{public}@' to not user initiated", &v16, 0x16u);
  }

  v9 = +[UAFAutoAssetManager backgroundNeedPolicy];
  enableExpensiveCellular = [configurationCopy enableExpensiveCellular];

  [v9 setAllowCheckDownloadOverExpensive:enableExpensiveCellular];
  v11 = [UAFAutoAssetManager getReason:policyCopy operation:@"discretionary"];
  v12 = [policyCopy needForAtomicSync:v11 withNeedPolicy:v9];

  if (v12)
  {
    v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier2 = [policyCopy assetSetIdentifier];
      v16 = 136315650;
      v17 = "+[UAFAutoAssetManager setBackgroundNeedPolicy:configuration:]";
      v18 = 2114;
      v19 = assetSetIdentifier2;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Could not set discretionary policy for asset set %{public}@ : %{public}@", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)releaseIncompatibleAssetSet:(id)set specifiers:(id)specifiers configuration:(id)configuration
{
  v34 = *MEMORY[0x1E69E9840];
  setCopy = set;
  configurationCopy = configuration;
  specifiersCopy = specifiers;
  v10 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    assetSetIdentifier = [setCopy assetSetIdentifier];
    *buf = 136315394;
    v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
    v30 = 2114;
    v31 = assetSetIdentifier;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ incompatible with current OS, removing", buf, 0x16u);
  }

  assetSetIdentifier2 = [setCopy assetSetIdentifier];
  v13 = [UAFAutoAssetManager removeAutoAssetSet:assetSetIdentifier2 fallbackAlter:0];

  if (v13 && [v13 code] != 6551)
  {
    v14 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier3 = [setCopy assetSetIdentifier];
      *buf = 136315394;
      v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
      v30 = 2114;
      v31 = assetSetIdentifier3;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Attempting force remove of asset set '%{public}@'", buf, 0x16u);
    }

    assetSetIdentifier4 = [setCopy assetSetIdentifier];
    v17 = [UAFAutoAssetManager forceRemoveAutoAssetSet:assetSetIdentifier4];

    if (v17)
    {
      v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        assetSetIdentifier5 = [setCopy assetSetIdentifier];
        *buf = 136315650;
        v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
        v30 = 2114;
        v31 = assetSetIdentifier5;
        v32 = 2112;
        v33 = v17;
        _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Force remove of asset set '%{public}@' failed: %@", buf, 0x20u);
      }
    }
  }

  v19 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    assetSetIdentifier6 = [setCopy assetSetIdentifier];
    *buf = 136315394;
    v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
    v30 = 2114;
    v31 = assetSetIdentifier6;
    _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Removal of incompatible asset set %{public}@ complete, reconfiguring", buf, 0x16u);
  }

  v27 = 0;
  v21 = [UAFAutoAssetManager configureAssetSet:configurationCopy specifiers:specifiersCopy changed:&v27 + 1 downloaded:&v27 currentPolicy:0];

  if (!v21)
  {
    v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier7 = [0 assetSetIdentifier];
      *buf = 136315394;
      v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
      v30 = 2114;
      v31 = assetSetIdentifier7;
      _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Reconfiguration of %{public}@ produced no autoAssetSet", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21 != 0;
}

+ (id)manageAssetSet:(id)set specifiers:(id)specifiers lockIfUnchanged:(BOOL)unchanged userInitiated:(BOOL)initiated experiment:(id)experiment
{
  unchangedCopy = unchanged;
  v47[2] = *MEMORY[0x1E69E9840];
  setCopy = set;
  specifiersCopy = specifiers;
  initiatedCopy = initiated;
  experimentCopy = experiment;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v14 = [UAFAutoAssetManager configureAssetSet:setCopy specifiers:specifiersCopy changed:&v40 downloaded:&v39 currentPolicy:&v38];
  v15 = v38;
  if (!v14)
  {
    goto LABEL_10;
  }

  v16 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    name = [setCopy name];
    *buf = 136315394;
    v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
    v44 = 2114;
    v45 = name;
    _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Managing auto asset set %{public}@", buf, 0x16u);
  }

  [UAFAutoAssetManager observeAssetSet:setCopy];
  v37 = 0;
  v18 = [UAFAutoAssetManager shouldCheckAssetSet:setCopy autoAssetSet:v14 changed:v40 downloaded:v39 experiment:experimentCopy locked:&v37 + 1 userInitiated:&initiatedCopy removalNeeded:&v37];
  name2 = [setCopy name];
  [UAFAutoAssetManager cacheAssetSetCompleteness:name2 complete:!v18];

  if (v18)
  {
    if (v37 != 1 || [UAFAutoAssetManager releaseIncompatibleAssetSet:v14 specifiers:specifiersCopy configuration:setCopy])
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __90__UAFAutoAssetManager_manageAssetSet_specifiers_lockIfUnchanged_userInitiated_experiment___block_invoke;
      v35[3] = &unk_1E7FFEC28;
      v20 = v14;
      v36 = v20;
      v21 = MEMORY[0x1BFB33950](v35);
      v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [setCopy name];
        enableExpensiveCellular = [setCopy enableExpensiveCellular];
        *buf = 136315906;
        v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
        v44 = 2114;
        v45 = name3;
        v46 = 1024;
        LODWORD(v47[0]) = enableExpensiveCellular;
        WORD2(v47[0]) = 1024;
        *(v47 + 6) = initiatedCopy;
        _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Checking auto asset set %{public}@ with cellular: %d user initiated: %d", buf, 0x22u);
      }

      v25 = +[UAFAutoAssetManager defaultCheckPolicy];
      [v25 setUserInitiated:initiatedCopy];
      [v25 setAllowCheckDownloadOverExpensive:{objc_msgSend(setCopy, "enableExpensiveCellular")}];
      v26 = [UAFAutoAssetManager getReason:v20 operation:@"checking"];
      [v20 checkAtomic:v26 forAtomicInstance:0 awaitingDownload:1 withNeedPolicy:v25 withTimeout:-2 completion:v21];

      v27 = v20;
      goto LABEL_21;
    }

LABEL_10:
    v27 = 0;
    goto LABEL_21;
  }

  if (unchangedCopy && (v37 & 0x100) == 0)
  {
    v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      name4 = [setCopy name];
      *buf = 136315394;
      v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
      v44 = 2114;
      v45 = name4;
      _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Locking latest instance of auto asset set %{public}@ although it is unchanged", buf, 0x16u);
    }

    v30 = [UAFAutoAssetManager lockLatestAssetSet:v14];
    v31 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      name5 = [setCopy name];
      *buf = 136315650;
      v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
      v44 = 2114;
      v45 = name5;
      v46 = 2114;
      v47[0] = v30;
      _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ locking complete with error: %{public}@", buf, 0x20u);
    }
  }

  if ([v15 userInitiated])
  {
    [UAFAutoAssetManager setBackgroundNeedPolicy:v14 configuration:setCopy];
  }

  v27 = v14;
LABEL_21:

  v33 = *MEMORY[0x1E69E9840];

  return v27;
}

void __90__UAFAutoAssetManager_manageAssetSet_specifiers_lockIfUnchanged_userInitiated_experiment___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) assetSetIdentifier];
      *buf = 136315394;
      v21 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]_block_invoke_2";
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Checked auto asset set %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = [*(a1 + 32) assetSetIdentifier];
    *buf = 136315650;
    v21 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]_block_invoke";
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v9;
    _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Could not check auto asset set %{public}@: %{public}@", buf, 0x20u);
  }

  v11 = [v9 domain];
  if (![v11 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
LABEL_9:

    goto LABEL_10;
  }

  v12 = [v9 code];

  if (v12 != 6205)
  {
    v13 = +[UAFInstrumentationProvider getSerialQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__UAFAutoAssetManager_manageAssetSet_specifiers_lockIfUnchanged_userInitiated_experiment___block_invoke_437;
    v17[3] = &unk_1E7FFD098;
    v18 = *(a1 + 32);
    v19 = v8;
    dispatch_async(v13, v17);

    v11 = v18;
    goto LABEL_9;
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)targetForAssetSet:(id)set specifiers:(id)specifiers version:(id)version autoAssetSets:(id)sets
{
  v66 = *MEMORY[0x1E69E9840];
  setCopy = set;
  specifiersCopy = specifiers;
  versionCopy = version;
  setsCopy = sets;
  v13 = [UAFAutoAssetManager getAutoSetEntries:setCopy specifiers:specifiersCopy];
  name = [setCopy name];
  v15 = [setsCopy objectForKey:name];

  if (v15)
  {
    v16 = 0;
    goto LABEL_3;
  }

  v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [setCopy name];
    *buf = 136315394;
    v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
    v56 = 2114;
    v57 = name2;
    _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s AutoAssetSet %{public}@ not previously initialized. Creating a new one for staging.", buf, 0x16u);
  }

  v31 = objc_alloc(MEMORY[0x1E69B1918]);
  name3 = [setCopy name];
  v33 = +[UAFAutoAssetManager getConcurrentQueue];
  v53 = 0;
  v34 = [v31 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:name3 comprisedOfEntries:v13 completingFromQueue:v33 error:&v53];
  v16 = v53;

  v15 = v34;
  if (!v34 || v16)
  {
    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier = [v34 assetSetIdentifier];
      *buf = 136315650;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = assetSetIdentifier;
      v58 = 2114;
      v59 = v16;
      v47 = "%s Could not create auto asset set %{public}@ : %{public}@";
      goto LABEL_31;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if (setsCopy)
  {
    v35 = v13;
    v36 = 0;
    goto LABEL_11;
  }

  v52 = 0;
  v20 = [v34 currentSetStatusSync:&v52];
  v43 = v52;
  v16 = v43;
  if (!v43)
  {
LABEL_26:
    if (v20)
    {
      goto LABEL_27;
    }

    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      assetSetIdentifier = [setCopy name];
      *buf = 136315650;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = assetSetIdentifier;
      v58 = 2114;
      v59 = v16;
      v47 = "%s Could not determine status for set %{public}@ : %{public}@";
LABEL_31:
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, v47, buf, 0x20u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  domain = [v43 domain];
  if (([domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_26;
  }

  code = [v16 code];

  if (code != 6301)
  {
    goto LABEL_26;
  }

  v36 = v16;
  v35 = v13;

LABEL_11:
  v37 = v36;
  v20 = +[UAFAutoAssetManager backgroundNeedPolicy];
  [v20 setBlockCheckDownload:1];
  v38 = [UAFAutoAssetManager getReason:v15 operation:@"will in another OS need"];
  v39 = [v15 needForAtomicSync:v38 withNeedPolicy:v20];

  if (!v39)
  {
    v13 = v35;
    v16 = 0;
LABEL_27:

LABEL_3:
    v17 = objc_alloc(MEMORY[0x1E69B1940]);
    v18 = [UAFPlatform maxVersionFromVersionString:versionCopy];
    v19 = [v17 initForMinTargetOSVersion:versionCopy toMaxTargetOSVersion:v18 asEntriesWhenTargeting:v13];

    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [setCopy name];
      v21 = v50 = v15;
      [v19 minTargetOSVersion];
      v51 = versionCopy;
      v23 = v22 = specifiersCopy;
      maxTargetOSVersion = [v19 maxTargetOSVersion];
      autoAssetType = [setCopy autoAssetType];
      [v22 allObjects];
      v49 = v16;
      v26 = setCopy;
      v28 = v27 = v13;
      *buf = 136316418;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = v21;
      v58 = 2114;
      v59 = v23;
      v60 = 2114;
      v61 = maxTargetOSVersion;
      v62 = 2114;
      v63 = autoAssetType;
      v64 = 2114;
      v65 = v28;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Staging asset set %{public}@ for OS versions %{public}@ through %{public}@ with type %{public}@ and entries %{public}@", buf, 0x3Eu);

      v13 = v27;
      setCopy = v26;
      v16 = v49;

      specifiersCopy = v22;
      versionCopy = v51;

      v15 = v50;
    }

    goto LABEL_17;
  }

  v40 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v13 = v35;
  v16 = v39;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    name4 = [setCopy name];
    *buf = 136315650;
    v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
    v56 = 2114;
    v57 = name4;
    v58 = 2114;
    v59 = v39;
    _os_log_error_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_ERROR, "%s Could not indicate lack of need in this OS for asset set %{public}@ : %{public}@", buf, 0x20u);
  }

  v19 = 0;
LABEL_17:

  v41 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (void)stageAssetSet:(id)set targets:(id)targets platformAssetVersion:(id)version
{
  v26 = *MEMORY[0x1E69E9840];
  setCopy = set;
  targetsCopy = targets;
  versionCopy = version;
  v10 = objc_alloc(MEMORY[0x1E69B1918]);
  v11 = +[UAFAutoAssetManager getConcurrentQueue];
  v19 = 0;
  v12 = [v10 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:setCopy comprisedOfEntries:0 completingFromQueue:v11 error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v17 = [UAFAutoAssetManager getReason:v12 operation:@"will in another OS need"];
    v13 = [v12 assetSetForStagingSync:v17 asEntriesWhenTargeting:targetsCopy];

    if (!v13)
    {
      [UAFStagingLogManager logTargets:targetsCopy withAssetSetName:setCopy withPlatformAssetVersion:versionCopy];
      goto LABEL_10;
    }

    v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFAutoAssetManager stageAssetSet:targets:platformAssetVersion:]";
      v22 = 2114;
      v23 = setCopy;
      v24 = 2114;
      v25 = v13;
      v16 = "%s Could not stage asset set %{public}@ with error: %{public}@";
      goto LABEL_13;
    }
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFAutoAssetManager stageAssetSet:targets:platformAssetVersion:]";
      v22 = 2114;
      v23 = setCopy;
      v24 = 2114;
      v25 = v13;
      v16 = "%s Could not get auto asset set %{public}@ : %{public}@";
LABEL_13:
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);
    }
  }

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
}

+ (void)stageAssetsWithNewSubscriptions:(id)subscriptions oldSubscriptions:(id)oldSubscriptions knownAutoAssetSets:(id)sets usedAutoAssetSets:(id)assetSets autoAssetSets:(id)autoAssetSets
{
  v87 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  oldSubscriptionsCopy = oldSubscriptions;
  setsCopy = sets;
  assetSetsCopy = assetSets;
  autoAssetSetsCopy = autoAssetSets;
  v13 = +[UAFAssetSetManager sharedManager];
  v14 = [v13 retrieveAssetSet:@"com.apple.siri.uaf.platform" usages:0];

  if (v14)
  {
    v15 = [UAFPlatform platformAssetVersion:v14];
    v16 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
      v81 = 2114;
      v82 = v15;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Staging with platform asset version %{public}@", buf, 0x16u);
    }

    v17 = [UAFPlatform configurationManagers:v14];
    v18 = v17;
    if (v17)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v58 = [v17 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (!v58)
      {
        goto LABEL_48;
      }

      v52 = v15;
      v53 = v14;
      v62 = 0;
      v54 = *v76;
      v19 = 0x1E7FFC000uLL;
      v55 = v18;
      v56 = oldSubscriptionsCopy;
      while (1)
      {
        v20 = 0;
        do
        {
          if (*v76 != v54)
          {
            objc_enumerationMutation(v18);
          }

          v65 = *(*(&v75 + 1) + 8 * v20);
          v21 = [v18 objectForKeyedSubscript:?];
          v22 = [v21 applySubscriptions:subscriptionsCopy];
          v23 = v22;
          if (oldSubscriptionsCopy)
          {
            v24 = [v21 applySubscriptions:oldSubscriptionsCopy];
            v25 = v23;
            v26 = [objc_opt_class() findDiffBetweenOldAssetSetUsages:v24 newAssetSetUsages:v23 knownAssetSets:setsCopy usedAssetSets:assetSetsCopy configurationManager:v21];
            allObjects = [v26 allObjects];
          }

          else
          {
            v25 = v22;
            allObjects = [v21 getAllAssetSets];
          }

          v59 = v20;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          obj = allObjects;
          v67 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
          if (v67)
          {
            v66 = *v72;
            v64 = v21;
            do
            {
              for (i = 0; i != v67; ++i)
              {
                if (*v72 != v66)
                {
                  objc_enumerationMutation(obj);
                }

                v29 = *(*(&v71 + 1) + 8 * i);
                autoAssetType = [v29 autoAssetType];

                if (autoAssetType)
                {
                  if (setsCopy)
                  {
                    name = [v29 name];
                    [setsCopy addObject:name];
                  }

                  name2 = [v29 name];
                  v33 = [v21 getPrestage:name2];

                  if (v33)
                  {
                    v34 = [v33 mergeAssetSetUsages:v25];

                    v25 = v34;
                  }

                  v35 = [*(v19 + 2544) getSpecifiers:v29 assetSetUsages:v25 experiment:0];
                  if ([v35 count])
                  {
                    if (assetSetsCopy)
                    {
                      name3 = [v29 name];
                      [assetSetsCopy addObject:name3];
                    }

                    v37 = [*(v19 + 2544) targetForAssetSet:v29 specifiers:v35 version:v65 autoAssetSets:autoAssetSetsCopy];
                    if (v37)
                    {
                      v38 = setsCopy;
                      v39 = v62;
                      if (!v62)
                      {
                        v39 = objc_opt_new();
                      }

                      name4 = [v29 name];
                      v41 = [v39 objectForKeyedSubscript:name4];

                      if (!v41)
                      {
                        v42 = objc_opt_new();
                        name5 = [v29 name];
                        [v39 setObject:v42 forKeyedSubscript:name5];
                      }

                      name6 = [v29 name];
                      v62 = v39;
                      v45 = [v39 objectForKeyedSubscript:name6];
                      [v45 addObject:v37];

                      setsCopy = v38;
                      v19 = 0x1E7FFC000;
                    }

                    else
                    {
                      name6 = UAFGetLogCategory(&UAFLogContextMAConfig);
                      if (os_log_type_enabled(name6, OS_LOG_TYPE_DEFAULT))
                      {
                        name7 = [v29 name];
                        *buf = 136315650;
                        v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                        v81 = 2114;
                        v82 = name7;
                        v83 = 2114;
                        v84 = v65;
                        _os_log_impl(&dword_1BCF2C000, name6, OS_LOG_TYPE_DEFAULT, "%s Failed to generate target for Asset set %{public}@ for OS version %{public}@", buf, 0x20u);
                      }
                    }

LABEL_38:
                  }

                  else
                  {
                    v37 = UAFGetLogCategory(&UAFLogContextMAConfig);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      name6 = [v29 name];
                      *buf = 136315650;
                      v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                      v81 = 2114;
                      v82 = name6;
                      v83 = 2114;
                      v84 = v65;
                      _os_log_impl(&dword_1BCF2C000, v37, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ should not have any entries for OS version %{public}@", buf, 0x20u);
                      goto LABEL_38;
                    }
                  }

                  v21 = v64;
                  goto LABEL_40;
                }

                v33 = UAFGetLogCategory(&UAFLogContextMAConfig);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  name8 = [v29 name];
                  *buf = 136315650;
                  v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                  v81 = 2114;
                  v82 = name8;
                  v83 = 2114;
                  v84 = v65;
                  _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s No auto asset type defined for %{public}@ for OS version %{public}@", buf, 0x20u);
                }

LABEL_40:
              }

              v67 = [obj countByEnumeratingWithState:&v71 objects:v85 count:16];
            }

            while (v67);
          }

          v20 = v59 + 1;
          v18 = v55;
          oldSubscriptionsCopy = v56;
        }

        while (v59 + 1 != v58);
        v58 = [v55 countByEnumeratingWithState:&v75 objects:v86 count:16];
        if (!v58)
        {
          v15 = v52;
          v14 = v53;
          if (v62)
          {
            getSerialQueue = [*(v19 + 2544) getSerialQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __123__UAFAutoAssetManager_stageAssetsWithNewSubscriptions_oldSubscriptions_knownAutoAssetSets_usedAutoAssetSets_autoAssetSets___block_invoke;
            block[3] = &unk_1E7FFD098;
            v69 = v62;
            v70 = v52;
            v49 = v62;
            dispatch_async(getSerialQueue, block);

            goto LABEL_53;
          }

LABEL_48:
          v49 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
            v50 = "%s No staging targets for other OS versions";
            goto LABEL_52;
          }

          goto LABEL_53;
        }
      }
    }

    v49 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
      v50 = "%s No version -> configuration managers available when attempting to staging assets";
LABEL_52:
      _os_log_impl(&dword_1BCF2C000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, 0xCu);
    }

LABEL_53:
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s No platform assets available when attempting to staging assets", buf, 0xCu);
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

void __123__UAFAutoAssetManager_stageAssetsWithNewSubscriptions_oldSubscriptions_knownAutoAssetSets_usedAutoAssetSets_autoAssetSets___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:{v7, v12}];
        [UAFAutoAssetManager stageAssetSet:v7 targets:v8 platformAssetVersion:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v4);
  }

  v9 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) count];
    *buf = 136315394;
    v17 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]_block_invoke";
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Staging completed for %lu targets", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)forceRemoveAutoAssetSet:(id)set
{
  v26 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v4 = objc_alloc(MEMORY[0x1E69B1918]);
  v5 = +[UAFAutoAssetManager getConcurrentQueue];
  v19 = 0;
  v6 = [v4 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:setCopy comprisedOfEntries:0 completingFromQueue:v5 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFAutoAssetManager forceRemoveAutoAssetSet:]";
      v22 = 2114;
      v23 = setCopy;
      v24 = 2114;
      v25 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v9 = v7;
  }

  else
  {
    v10 = [UAFAutoAssetManager getReason:v6 operation:@"should eliminate"];
    v11 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      assetSetIdentifier = [v6 assetSetIdentifier];
      *buf = 136315394;
      v21 = "+[UAFAutoAssetManager forceRemoveAutoAssetSet:]";
      v22 = 2114;
      v23 = assetSetIdentifier;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Forcibly eliminating auto asset %{public}@ using awaitingUnlocked:NO", buf, 0x16u);
    }

    v13 = MEMORY[0x1E69B1918];
    assetSetIdentifier2 = [v6 assetSetIdentifier];
    v9 = [v13 eliminateAtomicSync:v10 usingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:assetSetIdentifier2 awaitingUnlocked:0];

    assetSetIdentifier3 = [v6 assetSetIdentifier];
    [UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:assetSetIdentifier3];

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      [UAFAssetSetObserver sendUAFNotificationForAssetSet:setCopy forRoot:0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)removeUnusedAutoAssetSets:(id)sets usedAutoAssetSets:(id)assetSets
{
  v22 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  assetSetsCopy = assetSets;
  if (+[UAFAutoAssetManager allowRemoves])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = setsCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if (([assetSetsCopy containsObject:{v12, v15}] & 1) == 0)
          {
            v13 = [UAFAutoAssetManager removeAutoAssetSet:v12 fallbackAlter:1];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "+[UAFAutoAssetManager removeUnusedAutoAssetSets:usedAutoAssetSets:]";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Denying removal of unused asset sets due to inhibiting asset removal", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)findDiffBetweenOldAssetSetUsages:(id)usages newAssetSetUsages:(id)setUsages knownAssetSets:(id)sets usedAssetSets:(id)assetSets configurationManager:(id)manager
{
  v56 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  setUsagesCopy = setUsages;
  setsCopy = sets;
  assetSetsCopy = assetSets;
  managerCopy = manager;
  v38 = objc_opt_new();
  v39 = usagesCopy;
  v14 = [UAFAssetSetManager getComparableUsages:usagesCopy];
  v41 = setUsagesCopy;
  v15 = [UAFAssetSetManager getComparableUsages:setUsagesCopy];
  v16 = MEMORY[0x1E695DFA8];
  v43 = v14;
  allKeys = [v14 allKeys];
  v18 = [v16 setWithArray:allKeys];

  allKeys2 = [v15 allKeys];
  [v18 addObjectsFromArray:allKeys2];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v18;
  v20 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    v23 = setsCopy;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v45 + 1) + 8 * i);
        v26 = [v43 objectForKeyedSubscript:v25];
        v27 = [v15 objectForKeyedSubscript:v25];
        v28 = [managerCopy getAssetSet:v25];
        if (!v28)
        {
          v29 = 0;
LABEL_16:
          v31 = 0;
          goto LABEL_17;
        }

        if (setsCopy)
        {
          [setsCopy addObject:v25];
        }

        v29 = [UAFAutoAssetManager getSpecifiers:v28 assetSetUsages:v41 experiment:0];
        v30 = [v29 count];
        if (assetSetsCopy && v30)
        {
          [assetSetsCopy addObject:v25];
        }

        if ([v26 isEqual:v27])
        {
          goto LABEL_16;
        }

        v31 = [UAFAutoAssetManager getSpecifiers:v28 assetSetUsages:v39 experiment:0];
        if (([v31 isEqual:v29] & 1) == 0)
        {
          [v38 addObject:v28];
        }

LABEL_17:

        setsCopy = v23;
      }

      v21 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v21);
  }

  if ([v38 count])
  {
    v32 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      baseURLs = [managerCopy baseURLs];
      v34 = [baseURLs description];
      v35 = [v38 description];
      *buf = 136315650;
      v50 = "+[UAFAutoAssetManager findDiffBetweenOldAssetSetUsages:newAssetSetUsages:knownAssetSets:usedAssetSets:configurationManager:]";
      v51 = 2114;
      v52 = v34;
      v53 = 2114;
      v54 = v35;
      _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_DEFAULT, "%s Configuration manager: %{public}@: Need to configure following asset sets: %{public}@", buf, 0x20u);
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v38;
}

+ (void)configureAutoAssetsFromNewSubscriptions:(id)subscriptions oldSubscriptions:(id)oldSubscriptions configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged userInitiated:(BOOL)initiated
{
  v30 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  oldSubscriptionsCopy = oldSubscriptions;
  managerCopy = manager;
  v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]";
    _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Configuring MobileAsset from asset set usages", buf, 0xCu);
  }

  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v16 = +[UAFAutoAssetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131__UAFAutoAssetManager_configureAutoAssetsFromNewSubscriptions_oldSubscriptions_configurationManager_lockIfUnchanged_userInitiated___block_invoke;
  block[3] = &unk_1E7FFEC50;
  v22 = managerCopy;
  v23 = subscriptionsCopy;
  v24 = oldSubscriptionsCopy;
  selfCopy = self;
  unchangedCopy = unchanged;
  initiatedCopy = initiated;
  v17 = oldSubscriptionsCopy;
  v18 = subscriptionsCopy;
  v19 = managerCopy;
  dispatch_sync(v16, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __131__UAFAutoAssetManager_configureAutoAssetsFromNewSubscriptions_oldSubscriptions_configurationManager_lockIfUnchanged_userInitiated___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v38 = objc_opt_new();
  v4 = [*(a1 + 32) applySubscriptions:*(a1 + 40)];
  v5 = *(a1 + 32);
  v39 = a1;
  v40 = v3;
  if (*(a1 + 48))
  {
    v6 = [v5 applySubscriptions:?];
    v7 = *(a1 + 56);
    v8 = [objc_opt_class() findDiffBetweenOldAssetSetUsages:v6 newAssetSetUsages:v4 knownAssetSets:v2 usedAssetSets:v3 configurationManager:*(a1 + 32)];
    v9 = [v8 allObjects];
  }

  else
  {
    v9 = [v5 getAllAssetSets];
  }

  v10 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    v14 = &UAFLogContextMAConfig;
    do
    {
      v15 = 0;
      v41 = v12;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        v17 = [v16 autoAssetType];

        if (v17)
        {
          v18 = [v16 name];
          [v10 addObject:v18];

          v19 = [v16 experimentalAssets];

          if (v19)
          {
            v20 = [UAFAssetSetExperiment alloc];
            v21 = [v16 experimentalAssets];
            v22 = [(UAFAssetSetExperiment *)v20 initWithConfiguration:v21 uuid:0];
          }

          else
          {
            v21 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v16 name];
              *buf = 136315394;
              v48 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]_block_invoke";
              v49 = 2114;
              v50 = v24;
              _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s No experimental assets for asset set %{public}@", buf, 0x16u);
            }

            v22 = 0;
          }

          v23 = [UAFAutoAssetManager getSpecifiers:v16 assetSetUsages:v4 experiment:v22];
          if ([v23 count])
          {
            if (![v16 subjectToAppleIntelligenceWaitlist] || +[UAFCommonUtilities gmsAllowsAssets](UAFCommonUtilities, "gmsAllowsAssets"))
            {
              v25 = v13;
              v26 = v14;
              v27 = v4;
              v28 = v10;
              v29 = [v16 name];
              [v40 addObject:v29];

              v30 = [UAFAutoAssetManager manageAssetSet:v16 specifiers:v23 lockIfUnchanged:*(v39 + 64) userInitiated:*(v39 + 65) experiment:v22];
              if (v30 && [v23 count])
              {
                v31 = [v16 name];
                [v38 setObject:v30 forKeyedSubscript:v31];
              }

              v32 = [v16 name];
              [UAFAutoAssetInstance clear:v32 path:0];

              v10 = v28;
              v4 = v27;
              v14 = v26;
              v13 = v25;
              v12 = v41;
              goto LABEL_29;
            }

            v30 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v16 name];
              *buf = 136315394;
              v48 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]_block_invoke";
              v49 = 2114;
              v50 = v33;
              v34 = v30;
              v35 = "%s Asset set %{public}@ is not allowed on this device";
LABEL_28:
              _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
            }
          }

          else
          {
            v30 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v33 = [v16 name];
              *buf = 136315394;
              v48 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]_block_invoke";
              v49 = 2114;
              v50 = v33;
              v34 = v30;
              v35 = "%s Asset set %{public}@ should not have any entries";
              goto LABEL_28;
            }
          }

LABEL_29:

          goto LABEL_30;
        }

        v23 = UAFGetLogCategory(v14);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        v22 = [v16 name];
        *buf = 136315394;
        v48 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]_block_invoke";
        v49 = 2114;
        v50 = v22;
        _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s No auto asset type defined for %{public}@", buf, 0x16u);
LABEL_30:

LABEL_31:
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v12);
  }

  [UAFAutoAssetManager stageAssetsWithNewSubscriptions:*(v39 + 40) oldSubscriptions:*(v39 + 48) knownAutoAssetSets:v10 usedAutoAssetSets:v40 autoAssetSets:v38];
  [UAFAutoAssetManager removeUnusedAutoAssetSets:v10 usedAutoAssetSets:v40];
  v36 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v48 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Finished configuring MobileAsset from asset set usages", buf, 0xCu);
  }

  v37 = *MEMORY[0x1E69E9840];
}

+ (id)_createXPCConnection
{
  initWithDefaultService = [[UAFXPCConnection alloc] initWithDefaultService];

  return initWithDefaultService;
}

+ (id)currentLockURLForAssetSet:(id)set
{
  v3 = MEMORY[0x1E69B1938];
  setCopy = set;
  v5 = [[v3 alloc] init:@"com.apple.UnifiedAssetFramework" assetSetIdentifier:setCopy assetSetAtomicInstance:@"latest"];

  v6 = MEMORY[0x1E695DFF8];
  shortTermLockFileName = [v5 shortTermLockFileName];
  v8 = [v6 fileURLWithPath:shortTermLockFileName];

  return v8;
}

+ (id)atomicInstanceFromLockPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  lastPathComponent = [pathCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v6 = [stringByDeletingPathExtension stringByReplacingOccurrencesOfString:@"atomic_instance_" withString:&stru_1F3B6B510];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "+[UAFAutoAssetManager atomicInstanceFromLockPath:]";
      v14 = 2114;
      v15 = pathCopy;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Could not parse atomic instance from '%{public}@': uuid: '%{public}@'", &v12, 0x20u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)latestAtomicInstanceForClients:(id)clients
{
  v23 = *MEMORY[0x1E69E9840];
  clientsCopy = clients;
  v4 = [UAFAutoAssetManager currentLockURLForAssetSet:clientsCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v14 = 0;
  v7 = [defaultManager destinationOfSymbolicLinkAtPath:path error:&v14];
  v8 = v14;

  if (v7)
  {
    v9 = [UAFAutoAssetManager atomicInstanceFromLockPath:v7];
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:]";
      v17 = 2114;
      v18 = clientsCopy;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Latest atomic instance for '%{public}@': %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v4 path];
      *buf = 136315906;
      v16 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:]";
      v17 = 2114;
      v18 = clientsCopy;
      v19 = 2114;
      v20 = path2;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s No destination for current lock for asset set '%{public}@' at path '%{public}@': %{public}@", buf, 0x2Au);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)conditionallyLockLatestAssetSet:(id)set newestInstance:(id)instance checkAtomicError:(id)error completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  setCopy = set;
  instanceCopy = instance;
  errorCopy = error;
  completionCopy = completion;
  assetSetIdentifier = [setCopy assetSetIdentifier];
  v14 = [UAFAutoAssetManager latestAtomicInstanceForClients:assetSetIdentifier];

  if (instanceCopy)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = !v15;
  if (instanceCopy && v14)
  {
    v16 = [instanceCopy isEqualToString:v14];
  }

  if (!errorCopy)
  {
LABEL_20:
    v21 = 0;
    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  domain = [errorCopy domain];
  if (([domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_20;
  }

  v18 = v16 ^ 1;
  code = [errorCopy code];

  if (code == 6205 && (v18 |= v14 == 0, !instanceCopy) && v14)
  {
    v33 = 0;
    v20 = [UAFAutoAssetManager latestAtomicInstanceFromMA:setCopy error:&v33];
    v21 = v33;
    if (v20 && ([v14 isEqualToString:v20] & 1) == 0)
    {
      v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v35 = "+[UAFAutoAssetManager conditionallyLockLatestAssetSet:newestInstance:checkAtomicError:completion:]";
        v36 = 2114;
        v37 = v20;
        v38 = 2114;
        v39 = v14;
        _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Newer instance discovered from MA than is available to clients: %{public}@, client instance: %{public}@", buf, 0x20u);
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v21 = 0;
    if ((v18 & 1) == 0)
    {
LABEL_26:
      completionCopy[2](completionCopy, v21);
      goto LABEL_27;
    }
  }

LABEL_23:
  v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    assetSetIdentifier2 = [setCopy assetSetIdentifier];
    *buf = 136315906;
    v35 = "+[UAFAutoAssetManager conditionallyLockLatestAssetSet:newestInstance:checkAtomicError:completion:]";
    v36 = 2114;
    v37 = assetSetIdentifier2;
    v38 = 2114;
    v39 = instanceCopy;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Discovered newer instance of %{public}@: %{public}@ vs %{public}@, XPC'ing to UAF service to lock", buf, 0x2Au);
  }

  v24 = +[UAFAutoAssetManager _createXPCConnection];
  assetSetIdentifier3 = [setCopy assetSetIdentifier];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __98__UAFAutoAssetManager_conditionallyLockLatestAssetSet_newestInstance_checkAtomicError_completion___block_invoke;
  v29[3] = &unk_1E7FFD648;
  v30 = setCopy;
  v31 = v24;
  v32 = completionCopy;
  v26 = v24;
  [v26 lockLatestAtomicInstance:assetSetIdentifier3 completion:v29];

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
}

void __98__UAFAutoAssetManager_conditionallyLockLatestAssetSet_newestInstance_checkAtomicError_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) assetSetIdentifier];
      v7 = 136315650;
      v8 = "+[UAFAutoAssetManager conditionallyLockLatestAssetSet:newestInstance:checkAtomicError:completion:]_block_invoke";
      v9 = 2114;
      v10 = v5;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Could not lock latest instance of %{public}@: %{public}@", &v7, 0x20u);
    }
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)updateAutoAssetsFromAssetSetUsages:(id)usages configurationManager:(id)manager expensiveNetworking:(BOOL)networking progress:(id)progress requestId:(id)id completion:(id)completion
{
  usagesCopy = usages;
  managerCopy = manager;
  progressCopy = progress;
  idCopy = id;
  completionCopy = completion;
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v18 = [[UAFAutoAssetProgress alloc] initWithAssetSetUsages:usagesCopy configurationManager:managerCopy internalProgressWithStatus:progressCopy];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke;
  v37[3] = &unk_1E7FFEC78;
  v19 = idCopy;
  v38 = v19;
  v20 = v18;
  v39 = v20;
  v21 = MEMORY[0x1BFB33950](v37);
  v22 = +[UAFAutoAssetManager getConcurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_452;
  block[3] = &unk_1E7FFECF0;
  v30 = v19;
  v31 = usagesCopy;
  networkingCopy = networking;
  v32 = managerCopy;
  v33 = v20;
  v34 = v21;
  v35 = completionCopy;
  v23 = completionCopy;
  v24 = v21;
  v25 = v20;
  v26 = managerCopy;
  v27 = usagesCopy;
  v28 = v19;
  dispatch_async(v22, block);
}

void __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 assetSetIdentifier];
      v11 = 136315906;
      v12 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
      v13 = 2114;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@: Error while getting progress about %{public}@: %{public}@", &v11, 0x2Au);
    }
  }

  else
  {
    [*(a1 + 40) progress:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_452(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 32);
    *buf = 136315394;
    *&buf[4] = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v30;
    _os_log_debug_impl(&dword_1BCF2C000, v1, OS_LOG_TYPE_DEBUG, "%s Starting new request: %{public}@", buf, 0x16u);
  }

  group = dispatch_group_create();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *(a1 + 40);
  v34 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
  if (v34)
  {
    v33 = *v54;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v53 + 1) + 8 * i);
        v4 = [*(a1 + 48) getAssetSet:v3];
        v5 = v4;
        if (v4)
        {
          v6 = [v4 autoAssetType];
          v7 = v6 == 0;

          if (!v7)
          {
            v8 = objc_alloc(MEMORY[0x1E69B1918]);
            v9 = [v5 name];
            v10 = +[UAFAutoAssetManager getConcurrentQueue];
            v52 = 0;
            v11 = [v8 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v9 comprisedOfEntries:0 completingFromQueue:v10 error:&v52];
            v12 = v52;

            if (v12)
            {
              v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                v14 = *(a1 + 32);
                v15 = [v5 name];
                *buf = 136315906;
                *&buf[4] = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
                *&buf[12] = 2114;
                *&buf[14] = v14;
                *&buf[22] = 2114;
                v66 = v15;
                LOWORD(v67) = 2114;
                *(&v67 + 2) = v12;
                _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not initialize auto asset set %{public}@ for updating: %{public}@", buf, 0x2Au);
              }

              goto LABEL_23;
            }

            if (v11)
            {
              v18 = +[UAFAutoAssetManager defaultCheckPolicy];
              [v18 setUserInitiated:1];
              [v18 setAllowCheckDownloadOverExpensive:{objc_msgSend(v5, "enableExpensiveCellular")}];
              if (*(a1 + 80) == 1)
              {
                [v18 setAllowCheckDownloadOverExpensive:1];
              }

              dispatch_group_enter(group);
              v50[0] = 0;
              v50[1] = v50;
              v50[2] = 0x2020000000;
              v51 = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3042000000;
              v66 = __Block_byref_object_copy__10;
              *&v67 = __Block_byref_object_dispose__10;
              *(&v67 + 1) = 0;
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_453;
              v41[3] = &unk_1E7FFECC8;
              v42 = *(a1 + 32);
              v19 = v11;
              v43 = v19;
              v48 = v50;
              v44 = *(a1 + 56);
              v45 = group;
              v49 = buf;
              v13 = v18;
              v46 = v13;
              v47 = *(a1 + 64);
              v20 = MEMORY[0x1BFB33950](v41);
              objc_storeWeak((*&buf[8] + 40), v20);
              v21 = UAFGetLogCategory(&UAFLogContextMAConfig);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(a1 + 32);
                v23 = [v19 assetSetIdentifier];
                v24 = [v13 allowCheckDownloadOverExpensive];
                *v57 = 136315906;
                v58 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke_2";
                v59 = 2114;
                v60 = v22;
                v61 = 2114;
                v62 = v23;
                v63 = 1024;
                v64 = v24;
                _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Checking %{public}@ with expensive: %d", v57, 0x26u);
              }

              v25 = *(a1 + 56);
              v26 = [v19 assetSetIdentifier];
              [v25 started:v26];

              v27 = [UAFAutoAssetManager getReason:v19 operation:@"checking"];
              [v19 checkAtomic:v27 forAtomicInstance:0 awaitingDownload:1 withNeedPolicy:v13 withTimeout:-2 reportingProgress:*(a1 + 64) completion:v20];

              _Block_object_dispose(buf, 8);
              objc_destroyWeak(&v67 + 1);

              _Block_object_dispose(v50, 8);
LABEL_23:
            }

            goto LABEL_25;
          }

          v12 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(a1 + 32);
            *buf = 136315650;
            *&buf[4] = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v17;
            *&buf[22] = 2114;
            v66 = v3;
            _os_log_debug_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEBUG, "%s %{public}@: No auto asset type defined for %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v12 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 32);
            *buf = 136315650;
            *&buf[4] = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v16;
            *&buf[22] = 2114;
            v66 = v3;
            _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not get configuration for asset set %{public}@", buf, 0x20u);
          }
        }

LABEL_25:
      }

      v34 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
    }

    while (v34);
  }

  v28 = +[UAFAutoAssetManager getConcurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_464;
  block[3] = &unk_1E7FFE810;
  v37 = *(a1 + 56);
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  v40 = *(a1 + 72);
  dispatch_group_notify(group, v28, block);

  v29 = *MEMORY[0x1E69E9840];
}

void __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_453(uint64_t a1, void *a2, void *a3, void *a4)
{
  v89 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    v21 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = [*(a1 + 40) assetSetIdentifier];
      *buf = 136315650;
      v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
      v79 = 2114;
      v80 = v22;
      v81 = 2114;
      v82 = v23;
      _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s %{public}@: @Checked %{public}@", buf, 0x20u);
    }

    goto LABEL_36;
  }

  v11 = [v9 domain];
  if (![v11 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {

    goto LABEL_13;
  }

  v12 = [v10 code];

  if (v12 != 6115)
  {
LABEL_13:
    v24 = [v10 domain];
    if ([v24 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] && objc_msgSend(v10, "code") == 6107)
    {
      v25 = [v10 userInfo];

      if (v25)
      {
        v26 = [v10 userInfo];
        v27 = [v26 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if (v27 && ([v27 domain], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", @"com.apple.MobileAssetError.Download"), v28, v29))
        {
          v30 = [v27 code];
          v31 = UAFGetLogCategory(&UAFLogContextMAConfig);
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          switch(v30)
          {
            case 'V':
              if (v32)
              {
                v63 = *(a1 + 32);
                v64 = [*(a1 + 40) assetSetIdentifier];
                *buf = 136315906;
                v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
                v79 = 2114;
                v80 = v63;
                v81 = 2114;
                v82 = v64;
                v83 = 2114;
                v84 = v10;
                _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Downgrade condition encountered for %{public}@: %{public}@", buf, 0x2Au);
              }

              if (+[UAFCommonUtilities isInternalInstall])
              {
                v35 = 8;
              }

              else
              {
                v35 = 7;
              }

              break;
            case ',':
              if (v32)
              {
                v61 = *(a1 + 32);
                v62 = [*(a1 + 40) assetSetIdentifier];
                *buf = 136315906;
                v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
                v79 = 2114;
                v80 = v61;
                v81 = 2114;
                v82 = v62;
                v83 = 2114;
                v84 = v10;
                _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Not Found condition encountered for %{public}@: %{public}@", buf, 0x2Au);
              }

              v35 = 4;
              break;
            case '%':
              if (v32)
              {
                v33 = *(a1 + 32);
                v34 = [*(a1 + 40) assetSetIdentifier];
                *buf = 136315650;
                v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
                v79 = 2114;
                v80 = v33;
                v81 = 2114;
                v82 = v34;
                _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Out of space condition encountered for %{public}@", buf, 0x20u);
              }

              v35 = 5;
              break;
            default:
              if (v32)
              {
                v65 = *(a1 + 32);
                v66 = [*(a1 + 40) assetSetIdentifier];
                *buf = 136315906;
                v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
                v79 = 2114;
                v80 = v65;
                v81 = 2114;
                v82 = v66;
                v83 = 2114;
                v84 = v10;
                _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Network related error condition encountered for %{public}@: %{public}@", buf, 0x2Au);
              }

              v35 = 7;
              break;
          }
        }

        else
        {
          v51 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(a1 + 32);
            v53 = [*(a1 + 40) assetSetIdentifier];
            *buf = 136315906;
            v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
            v79 = 2114;
            v80 = v52;
            v81 = 2114;
            v82 = v53;
            v83 = 2114;
            v84 = v10;
            _os_log_impl(&dword_1BCF2C000, v51, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Error condition encountered for %{public}@: %{public}@", buf, 0x2Au);
          }

          v35 = 6;
        }

        goto LABEL_38;
      }
    }

    else
    {
    }

    v36 = [v10 domain];
    if ([v36 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v37 = [v10 code];

      if (v37 == 6209)
      {
        v38 = [v10 userInfo];
        v39 = [v38 objectForKeyedSubscript:@"DownloadSpaceDetails"];

        v40 = [v39 objectForKeyedSubscript:@"TotalRequiredSpaceForSetDownload"];
        v41 = [v39 objectForKeyedSubscript:@"StillNeededSpaceForSetDownload"];
        v42 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v70 = *(a1 + 32);
          v69 = [v40 integerValue];
          v59 = [v41 integerValue];
          v60 = [*(a1 + 40) assetSetIdentifier];
          *buf = 136316418;
          v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
          v79 = 2114;
          v80 = v70;
          v81 = 2048;
          v82 = v69;
          v83 = 2048;
          v84 = v59;
          v85 = 2114;
          v86 = v60;
          v87 = 2114;
          v88 = v10;
          _os_log_error_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_ERROR, "%s %{public}@: Out of Space condition encountered (total: %lld, needed: %lld) for the set %{public}@: %{public}@", buf, 0x3Eu);
        }

        v35 = 5;
        goto LABEL_38;
      }
    }

    else
    {
    }

    v21 = [v10 domain];
    if ([v21 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v43 = [v10 code];

      if (v43 == 6551)
      {
        v44 = [v10 domain];
        if (![v44 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
        {

LABEL_47:
          v54 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v67 = *(a1 + 32);
            v68 = [*(a1 + 40) assetSetIdentifier];
            *buf = 136315906;
            v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
            v79 = 2114;
            v80 = v67;
            v81 = 2114;
            v82 = v68;
            v83 = 2114;
            v84 = v10;
            _os_log_error_impl(&dword_1BCF2C000, v54, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not check auto asset set %{public}@: %{public}@", buf, 0x2Au);
          }

          v35 = 6;
          goto LABEL_38;
        }

        v45 = [v10 code];

        if (v45 != 6205)
        {
          goto LABEL_47;
        }
      }

LABEL_37:
      v35 = 4;
LABEL_38:
      v46 = *(a1 + 40);
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_463;
      v71[3] = &unk_1E7FFECA0;
      v72 = v10;
      v76 = v35;
      v73 = *(a1 + 48);
      v74 = *(a1 + 40);
      v75 = *(a1 + 56);
      [UAFAutoAssetManager conditionallyLockLatestAssetSet:v46 newestInstance:v7 checkAtomicError:v72 completion:v71];

      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_37;
  }

  v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) assetSetIdentifier];
    *buf = 136315650;
    v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
    v79 = 2114;
    v80 = v14;
    v81 = 2114;
    v82 = v15;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Checking %{public}@ was cancelled, retrying", buf, 0x20u);
  }

  if (++*(*(*(a1 + 80) + 8) + 24) < 3)
  {
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 88) + 8) + 40));
    if (WeakRetained)
    {
      v49 = *(a1 + 40);
      v50 = [UAFAutoAssetManager getReason:v49 operation:@"checking"];
      [v49 checkAtomic:v50 forAtomicInstance:0 awaitingDownload:1 withNeedPolicy:*(a1 + 64) withTimeout:-2 reportingProgress:*(a1 + 72) completion:WeakRetained];
    }

    else
    {
      v55 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(a1 + 32);
        *buf = 136315394;
        v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
        v79 = 2114;
        v80 = v56;
        _os_log_impl(&dword_1BCF2C000, v55, OS_LOG_TYPE_DEFAULT, "%s %{public}@: No strong completion routine, exiting retry cycle", buf, 0x16u);
      }

      v57 = *(a1 + 48);
      v58 = [*(a1 + 40) assetSetIdentifier];
      [v57 finished:v58 withStatus:6 withError:v10];

      dispatch_group_leave(*(a1 + 56));
    }
  }

  else
  {
    v16 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) assetSetIdentifier];
      *buf = 136315650;
      v78 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke";
      v79 = 2114;
      v80 = v17;
      v81 = 2114;
      v82 = v18;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Retry count exceeded for %{public}@", buf, 0x20u);
    }

    v19 = *(a1 + 48);
    v20 = [*(a1 + 40) assetSetIdentifier];
    [v19 finished:v20 withStatus:6 withError:v10];

    dispatch_group_leave(*(a1 + 56));
  }

LABEL_39:

  v47 = *MEMORY[0x1E69E9840];
}

void __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_463(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 64);
  if (v4 == 4)
  {
    v5 = v10;

    v4 = *(a1 + 64);
    v3 = v5;
  }

  if (v10)
  {
    v6 = [v10 domain];
    if ([v6 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v7 = [v10 code];

      if (v7 == 6538)
      {
        v4 = 9;
      }

      else
      {
        v4 = 6;
      }
    }

    else
    {

      v4 = 6;
    }
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) assetSetIdentifier];
  [v8 finished:v9 withStatus:v4 withError:v3];

  dispatch_group_leave(*(a1 + 56));
}

void __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_464(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_2;
  v3[3] = &unk_1E7FFD620;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 updateFinished:v3];
}

uint64_t __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) allKeys];
    v7 = 136315650;
    v8 = "+[UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:configurationManager:expensiveNetworking:progress:requestId:completion:]_block_invoke_2";
    v9 = 2114;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Updates asset sets %{public}@ complete", &v7, 0x20u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (unint64_t)getDownloadStatusFromMAAutoAssetSetStatus:(id)status config:(id)config
{
  v49 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  configCopy = config;
  latestDownloadedAtomicInstance = [statusCopy latestDownloadedAtomicInstance];

  if (latestDownloadedAtomicInstance)
  {
    if (![statusCopy vendingAtomicInstanceForConfiguredEntries])
    {
      v12 = 1;
      goto LABEL_19;
    }

    buf[0] = 0;
    v40 = 0;
    v8 = [UAFAutoAssetManager latestAtomicInstanceForClients:configCopy OSSupported:buf error:&v40];
    if (v8)
    {
      v9 = v40;
      latestDownloadedAtomicInstance2 = [statusCopy latestDownloadedAtomicInstance];
      if ([latestDownloadedAtomicInstance2 isEqualToString:v8])
      {
        v11 = buf[0];

        if (v11 == 1 && !v9)
        {
          v12 = 4;
LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    availableForUseError = [statusCopy availableForUseError];
    domain = [availableForUseError domain];
    if ([domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      availableForUseError2 = [statusCopy availableForUseError];
      code = [availableForUseError2 code];

      if (code == 6538)
      {
        v12 = 9;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {

      v12 = 1;
    }

    goto LABEL_18;
  }

  if ([UAFAutoAssetManager assetSetEmpty:statusCopy])
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

LABEL_19:
  availableForUseError3 = [statusCopy availableForUseError];
  domain2 = [availableForUseError3 domain];
  if ([domain2 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    availableForUseError4 = [statusCopy availableForUseError];
    code2 = [availableForUseError4 code];

    if (code2 == 6209)
    {
      availableForUseError5 = [statusCopy availableForUseError];
      goto LABEL_26;
    }
  }

  else
  {
  }

  newerVersionError = [statusCopy newerVersionError];
  domain3 = [newerVersionError domain];
  if (([domain3 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_31;
  }

  newerVersionError2 = [statusCopy newerVersionError];
  code3 = [newerVersionError2 code];

  if (code3 != 6209)
  {
    goto LABEL_31;
  }

  availableForUseError5 = [statusCopy newerVersionError];
LABEL_26:
  v26 = availableForUseError5;
  if (availableForUseError5)
  {
    userInfo = [availableForUseError5 userInfo];
    v28 = [userInfo objectForKeyedSubscript:@"DownloadSpaceDetails"];

    v29 = [v28 objectForKeyedSubscript:@"TotalRequiredSpaceForSetDownload"];
    v30 = [v28 objectForKeyedSubscript:@"StillNeededSpaceForSetDownload"];
    v31 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      integerValue = [v29 integerValue];
      integerValue2 = [v30 integerValue];
      assetSetIdentifier = [statusCopy assetSetIdentifier];
      *buf = 136315906;
      v42 = "+[UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:config:]";
      v43 = 2048;
      v44 = integerValue;
      v45 = 2048;
      v46 = integerValue2;
      v47 = 2114;
      v48 = assetSetIdentifier;
      _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s Out of Space condition encountered (total: %lld, needed: %lld) for the set %{public}@", buf, 0x2Au);
    }

    v12 = 5;
    goto LABEL_35;
  }

LABEL_31:
  downloadProgress = [statusCopy downloadProgress];

  if (downloadProgress)
  {
    downloadProgress2 = [statusCopy downloadProgress];
    isStalled = [downloadProgress2 isStalled];

    if (isStalled)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

LABEL_35:

  v35 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (void)cacheAssetSetCompleteness:(id)completeness autoAssetSetStatus:(id)status
{
  v15 = *MEMORY[0x1E69E9840];
  completenessCopy = completeness;
  statusCopy = status;
  v7 = +[UAFConfigurationManager defaultManager];
  v8 = [v7 getAssetSet:completenessCopy];

  if (v8)
  {
    [UAFAutoAssetManager cacheAssetSetCompleteness:completenessCopy complete:[UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:statusCopy config:v8]== 4];
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[UAFAutoAssetManager cacheAssetSetCompleteness:autoAssetSetStatus:]";
      v13 = 2114;
      v14 = completenessCopy;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not get configuration for for asset set %{public}@ to cache set completeness", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)assetSetNamesFromUsages:(id)usages configurationManager:(id)manager
{
  v31 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = usagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = *v23;
    *&v9 = 136315394;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [managerCopy getAssetSet:{v14, v21, v22}];
        v16 = v15;
        if (v15)
        {
          autoAssetType = [v15 autoAssetType];

          if (autoAssetType)
          {
            if (!v11)
            {
              v11 = objc_opt_new();
            }

            name = [v16 name];
            [v11 addObject:name];
          }

          else
          {
            name = UAFGetLogCategory(&UAFLogContextMAConfig);
            if (os_log_type_enabled(name, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              v27 = "+[UAFAutoAssetManager assetSetNamesFromUsages:configurationManager:]";
              v28 = 2114;
              v29 = v14;
              _os_log_debug_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_DEBUG, "%s No auto asset type defined for %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          name = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = "+[UAFAutoAssetManager assetSetNamesFromUsages:configurationManager:]";
            v28 = 2114;
            v29 = v14;
            _os_log_error_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_ERROR, "%s Could not get configuration for for asset set %{public}@", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)autoAssetSetForStatus:(id)status
{
  v19 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v4 = objc_alloc(MEMORY[0x1E69B1918]);
  v5 = +[UAFAutoAssetManager getConcurrentQueue];
  v12 = 0;
  v6 = [v4 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:statusCopy comprisedOfEntries:0 completingFromQueue:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[UAFAutoAssetManager autoAssetSetForStatus:]";
      v15 = 2114;
      v16 = statusCopy;
      v17 = 2114;
      v18 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ for status: %{public}@", buf, 0x20u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (unint64_t)getDownloadStatusForAssetSet:(id)set configurationManager:(id)manager
{
  v24 = *MEMORY[0x1E69E9840];
  setCopy = set;
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v7 = [managerCopy getAssetSet:setCopy];
  v8 = [UAFAutoAssetManager autoAssetSetForStatus:setCopy];
  v17 = 0;
  v9 = [v8 currentSetStatusSync:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:v9 config:v7];
  }

  else
  {
    v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "+[UAFAutoAssetManager getDownloadStatusForAssetSet:configurationManager:]";
      v20 = 2114;
      v21 = setCopy;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)assetSetComplete:(id)complete
{
  completeCopy = complete;
  v4 = [UAFAutoAssetManager completedAtomicInstance:completeCopy];
  v5 = v4;
  if (v4)
  {
    LODWORD(v6) = [v4 isEqualToString:&stru_1F3B6B510] ^ 1;
  }

  else
  {
    v7 = +[UAFConfigurationManager defaultManager];
    v6 = [UAFAutoAssetManager getDownloadStatusForAssetSet:completeCopy configurationManager:v7];

    LOBYTE(v6) = v6 == 4;
  }

  return v6;
}

+ (unint64_t)getDownloadStatusFromAssetSetUsages:(id)usages configurationManager:(id)manager
{
  v25 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  managerCopy = manager;
  v7 = objc_opt_new();
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v19 = usagesCopy;
  v8 = [UAFAutoAssetManager assetSetNamesFromUsages:usagesCopy configurationManager:managerCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [UAFAutoAssetManager getDownloadStatusForAssetSet:v13 configurationManager:managerCopy];
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v7 setObject:v15 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v16 = [UAFAssetSetManager coalesceDownloadStatus:v7];

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)getDownloadStatusFromAssetSetUsages:(id)usages configurationManager:(id)manager queue:(id)queue completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  managerCopy = manager;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAutoAssetManager getConcurrentQueue];
  }

  queue = queueCopy;
  v12 = objc_opt_new();
  v13 = dispatch_group_create();
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v29 = usagesCopy;
  [UAFAutoAssetManager assetSetNamesFromUsages:usagesCopy configurationManager:managerCopy, completionCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v19 = [managerCopy getAssetSet:v18];
        [UAFAutoAssetManager autoAssetSetForStatus:v18];
        v21 = v20 = managerCopy;
        dispatch_group_enter(v13);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __97__UAFAutoAssetManager_getDownloadStatusFromAssetSetUsages_configurationManager_queue_completion___block_invoke;
        v34[3] = &unk_1E7FFED18;
        v34[4] = v18;
        v35 = v13;
        v36 = v19;
        v37 = v12;
        v22 = v19;
        [v21 currentSetStatus:v34];

        managerCopy = v20;
      }

      v15 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v15);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UAFAutoAssetManager_getDownloadStatusFromAssetSetUsages_configurationManager_queue_completion___block_invoke_465;
  block[3] = &unk_1E7FFD5A8;
  v32 = v12;
  v33 = v27;
  v23 = v27;
  v24 = v12;
  dispatch_group_notify(v13, queue, block);

  v25 = *MEMORY[0x1E69E9840];
}

void __97__UAFAutoAssetManager_getDownloadStatusFromAssetSetUsages_configurationManager_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v11 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 136315650;
      v15 = "+[UAFAutoAssetManager getDownloadStatusFromAssetSetUsages:configurationManager:queue:completion:]_block_invoke";
      v16 = 2114;
      v17 = v13;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@: %{public}@", &v14, 0x20u);
    }
  }

  else
  {
    v8 = [UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:v5 config:*(a1 + 48)];
    v9 = *(a1 + 56);
    objc_sync_enter(v9);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    [*(a1 + 56) setObject:v10 forKeyedSubscript:*(a1 + 32)];

    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __97__UAFAutoAssetManager_getDownloadStatusFromAssetSetUsages_configurationManager_queue_completion___block_invoke_465(uint64_t a1)
{
  [UAFAssetSetManager coalesceDownloadStatus:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (BOOL)shouldWaitForMobileAssetStart:(id)start
{
  startCopy = start;
  v4 = startCopy;
  if (startCopy)
  {
    domain = [startCopy domain];
    if ([domain isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] && objc_msgSend(v4, "code") == 6108)
    {
      localizedDescription = [v4 localizedDescription];
      if (localizedDescription)
      {
        localizedDescription2 = [v4 localizedDescription];
        v8 = [localizedDescription2 containsString:@"AtomicEntry in locked set-status for secure grafted/mounted auto-asset where required content is missing"];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)waitForMobileAssetStart:(id)start queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E69B1918];
  queueCopy = queue;
  startCopy = start;
  v16 = 0;
  v11 = [[v8 alloc] initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:startCopy comprisedOfEntries:0 completingFromQueue:queueCopy error:&v16];

  v12 = v16;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__UAFAutoAssetManager_waitForMobileAssetStart_queue_completion___block_invoke;
  v14[3] = &unk_1E7FFED40;
  v15 = completionCopy;
  v13 = completionCopy;
  [v11 currentSetStatus:v14];
}

+ (BOOL)autoAssetExistsWithEntries:(id)entries
{
  v29 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69B1918]) initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:entriesCopy comprisedOfEntries:0 error:&v20];
  v5 = v20;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v11 = v5;
    v9 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "+[UAFAutoAssetManager autoAssetExistsWithEntries:]";
      v23 = 2114;
      v24 = entriesCopy;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [UAFAutoAssetManager getReason:v4 operation:@"checking"];
    v18 = 0;
    v19 = 0;
    v9 = [v4 checkAtomicSync:v8 forAtomicInstance:0 withTimeout:0 discoveredAtomicEntries:&v19 error:&v18];
    v10 = v19;
    v11 = v18;

    v12 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v13 = v12;
    if (v9)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 count];
        *buf = 136315906;
        v22 = "+[UAFAutoAssetManager autoAssetExistsWithEntries:]";
        v23 = 2112;
        v24 = v9;
        v25 = 2114;
        v26 = entriesCopy;
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Found existing instance %@ of auto asset set %{public}@ with %lu entries", buf, 0x2Au);
      }

      v7 = [v10 count] != 0;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v22 = "+[UAFAutoAssetManager autoAssetExistsWithEntries:]";
        v23 = 2114;
        v24 = entriesCopy;
        v25 = 2114;
        v26 = v11;
        _os_log_debug_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEBUG, "%s Auto asset set %{public}@ does not exist with entries: %{public}@", buf, 0x20u);
      }

      v7 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (id)spaceNeededForAssetSetUsages:(id)usages key:(id)key configurationManager:(id)manager error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  keyCopy = key;
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = +[UAFConfigurationManager defaultManager];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = usagesCopy;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v10)
  {
    v12 = v10;
    v31 = 0;
    v13 = *v33;
    v14 = &UAFLogContextMAConfig;
    *&v11 = 136315394;
    v27 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [managerCopy getAssetSet:{v16, v27}];
        v18 = v17;
        if (v17)
        {
          autoAssetType = [v17 autoAssetType];

          if (autoAssetType)
          {
            v20 = [objc_opt_class() sizeInBytesForConfig:v18 key:keyCopy error:error];
            unsignedLongLongValue = [v20 unsignedLongLongValue];
            v22 = v14;
            v23 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v37 = "+[UAFAutoAssetManager spaceNeededForAssetSetUsages:key:configurationManager:error:]";
              v38 = 2114;
              v39 = v16;
              v40 = 2048;
              v41 = unsignedLongLongValue;
              v42 = 2114;
              v43 = keyCopy;
              _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Configured asset name %{public}@ with size %llu for key %{public}@", buf, 0x2Au);
            }

            v31 += unsignedLongLongValue;
            v14 = v22;
          }

          else
          {
            v20 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v27;
              v37 = "+[UAFAutoAssetManager spaceNeededForAssetSetUsages:key:configurationManager:error:]";
              v38 = 2114;
              v39 = v16;
              _os_log_debug_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEBUG, "%s No auto asset type defined for %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v20 = UAFGetLogCategory(v14);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v27;
            v37 = "+[UAFAutoAssetManager spaceNeededForAssetSetUsages:key:configurationManager:error:]";
            v38 = 2114;
            v39 = v16;
            _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s Could get not get configuration for for asset set %{public}@", buf, 0x16u);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v12);
  }

  else
  {
    v31 = 0;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v31];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)sizeInBytesForConfig:(id)config key:(id)key error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  configCopy = config;
  keyCopy = key;
  v9 = objc_alloc(MEMORY[0x1E69B1918]);
  v45 = configCopy;
  name = [configCopy name];
  v11 = +[UAFAutoAssetManager getConcurrentQueue];
  v61 = 0;
  v12 = [v9 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:name comprisedOfEntries:0 completingFromQueue:v11 error:&v61];
  v13 = v61;

  if (v13)
  {
    v14 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }

    name2 = [v45 name];
    *buf = 136315650;
    v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
    v64 = 2114;
    v65 = name2;
    v66 = 2114;
    v67 = v13;
    _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
LABEL_7:

    goto LABEL_8;
  }

  v60 = 0;
  v14 = [v12 currentSetStatusSync:&v60];
  v16 = v60;
  if (v16)
  {
    v13 = v16;
    name2 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(name2, OS_LOG_TYPE_ERROR))
    {
      name3 = [v45 name];
      *buf = 136315650;
      v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
      v64 = 2114;
      v65 = name3;
      v66 = 2114;
      v67 = v13;
      _os_log_error_impl(&dword_1BCF2C000, name2, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  errorCopy = error;
  v44 = v12;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v14 newerDiscoveredAtomicEntries];
  v50 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
  v20 = 0;
  if (v50)
  {
    v49 = *v57;
    v21 = &UAFLogContextClient;
    v47 = keyCopy;
    v48 = v14;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v57 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v56 + 1) + 8 * i);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        latestDowloadedAtomicInstanceEntries = [v14 latestDowloadedAtomicInstanceEntries];
        v25 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v52 objects:v70 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = v21;
          v51 = v20;
          v28 = *v53;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(latestDowloadedAtomicInstanceEntries);
              }

              v30 = *(*(&v52 + 1) + 8 * j);
              fullAssetSelector = [v23 fullAssetSelector];
              fullAssetSelector2 = [v30 fullAssetSelector];
              v33 = [fullAssetSelector isEqual:fullAssetSelector2];

              if (v33)
              {

                v21 = v27;
                latestDowloadedAtomicInstanceEntries = UAFGetLogCategory(v27);
                if (os_log_type_enabled(latestDowloadedAtomicInstanceEntries, OS_LOG_TYPE_DEFAULT))
                {
                  assetID = [v23 assetID];
                  *buf = 136315394;
                  v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
                  v64 = 2114;
                  v65 = assetID;
                  _os_log_impl(&dword_1BCF2C000, latestDowloadedAtomicInstanceEntries, OS_LOG_TYPE_DEFAULT, "%s Newer asset entry %{public}@ skipped due to having a latest downloaded entry", buf, 0x16u);
                }

                keyCopy = v47;
                v14 = v48;
                v20 = v51;
                goto LABEL_29;
              }
            }

            v26 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v52 objects:v70 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v14 = v48;
          v20 = v51;
          v21 = v27;
          keyCopy = v47;
        }

LABEL_29:

        assetAttributes = [v23 assetAttributes];
        v36 = [assetAttributes objectForKey:keyCopy];

        if (v36)
        {
          unsignedLongLongValue = [v36 unsignedLongLongValue];
          v38 = UAFGetLogCategory(v21);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            assetID2 = [v23 assetID];
            *buf = 136315906;
            v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
            v64 = 2114;
            v65 = assetID2;
            v66 = 2048;
            v67 = unsignedLongLongValue;
            v68 = 2114;
            v69 = keyCopy;
            _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, "%s Newer asset entry %{public}@ has download size %llu for key %{public}@", buf, 0x2Au);
          }

          v20 += unsignedLongLongValue;
        }

        else
        {
          v40 = UAFGetLogCategory(v21);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            autoAssetType = [v45 autoAssetType];
            *buf = 136315650;
            v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
            v64 = 2114;
            v65 = autoAssetType;
            v66 = 2114;
            v67 = keyCopy;
            _os_log_error_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_ERROR, "%s Newer asset entry %{public}@ missing download size metadata for key %{public}@", buf, 0x20u);
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v50);
  }

  if (errorCopy)
  {
    *errorCopy = 0;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
  v13 = 0;
  v12 = v44;
LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end