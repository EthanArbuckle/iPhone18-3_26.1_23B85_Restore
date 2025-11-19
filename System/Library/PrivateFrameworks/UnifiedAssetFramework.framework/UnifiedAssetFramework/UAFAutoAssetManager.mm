@interface UAFAutoAssetManager
+ (BOOL)allowRemoves;
+ (BOOL)assetSetComplete:(id)a3;
+ (BOOL)assetSetEmpty:(id)a3;
+ (BOOL)autoAssetExistsWithEntries:(id)a3;
+ (BOOL)cacheDeleteStatusChange:(id)a3;
+ (BOOL)isLatestConsistencyToken:(id)a3;
+ (BOOL)releaseIncompatibleAssetSet:(id)a3 specifiers:(id)a4 configuration:(id)a5;
+ (BOOL)sendNotificationForAssetSet:(id)a3;
+ (BOOL)shouldCheckAssetSet:(id)a3 autoAssetSet:(id)a4 changed:(BOOL)a5 downloaded:(BOOL)a6 experiment:(id)a7 locked:(BOOL *)a8 userInitiated:(BOOL *)a9 removalNeeded:(BOOL *)a10;
+ (BOOL)shouldWaitForMobileAssetStart:(id)a3;
+ (id)_createXPCConnection;
+ (id)assetSetNamesFromUsages:(id)a3 configurationManager:(id)a4;
+ (id)atomicInstanceFromLockPath:(id)a3;
+ (id)autoAssetSetForStatus:(id)a3;
+ (id)backgroundNeedPolicy;
+ (id)completedAtomicInstance:(id)a3;
+ (id)completedAtomicInstances;
+ (id)configureAssetSet:(id)a3 specifiers:(id)a4 changed:(BOOL *)a5 downloaded:(BOOL *)a6 currentPolicy:(id *)a7;
+ (id)consistencyTokenFromConfig:(id)a3 atomicInstance:(id)a4 experiment:(id)a5;
+ (id)currentLockURLForAssetSet:(id)a3;
+ (id)defaultCheckPolicy;
+ (id)fileLockPolicy;
+ (id)findDiffBetweenOldAssetSetUsages:(id)a3 newAssetSetUsages:(id)a4 knownAssetSets:(id)a5 usedAssetSets:(id)a6 configurationManager:(id)a7;
+ (id)forceRemoveAutoAssetSet:(id)a3;
+ (id)getAutoAssetSet:(id)a3 specifiers:(id *)a4 addEntries:(BOOL)a5 configured:(BOOL *)a6 downloaded:(BOOL *)a7 currentPolicy:(id *)a8;
+ (id)getAutoSetEntries:(id)a3 specifiers:(id)a4;
+ (id)getConcurrentQueue;
+ (id)getCurrentSpecifiers:(id)a3 expectedAutoAssetType:(id)a4;
+ (id)getReason:(id)a3 operation:(id)a4;
+ (id)getSerialQueue;
+ (id)getSpecifiers:(id)a3 assetSetUsages:(id)a4 experiment:(id)a5;
+ (id)immediateNeedPolicy;
+ (id)latestAtomicInstanceForClients:(id)a3;
+ (id)latestAtomicInstanceForClients:(id)a3 OSSupported:(BOOL *)a4 error:(id *)a5;
+ (id)latestAtomicInstanceFromMA:(id)a3 error:(id *)a4;
+ (id)latestStatusForClients:(id)a3 error:(id *)a4;
+ (id)lockLatestAssetSet:(id)a3;
+ (id)manageAssetSet:(id)a3 specifiers:(id)a4 lockIfUnchanged:(BOOL)a5 userInitiated:(BOOL)a6 experiment:(id)a7;
+ (id)setLatestAtomicInstance:(id)a3 autoAssetSet:(id)a4 fallbackAlter:(BOOL)a5;
+ (id)sizeInBytesForConfig:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)spaceNeededForAssetSetUsages:(id)a3 key:(id)a4 configurationManager:(id)a5 error:(id *)a6;
+ (id)targetForAssetSet:(id)a3 specifiers:(id)a4 version:(id)a5 autoAssetSets:(id)a6;
+ (int)listenForUpdates:(id)a3 updateHandler:(id)a4;
+ (unint64_t)getDownloadStatusForAssetSet:(id)a3 configurationManager:(id)a4;
+ (unint64_t)getDownloadStatusFromAssetSetUsages:(id)a3 configurationManager:(id)a4;
+ (unint64_t)getDownloadStatusFromMAAutoAssetSetStatus:(id)a3 config:(id)a4;
+ (void)cacheAssetSetCompleteness:(id)a3 autoAssetSetStatus:(id)a4;
+ (void)cacheAssetSetCompleteness:(id)a3 complete:(BOOL)a4;
+ (void)conditionallyLockLatestAssetSet:(id)a3 newestInstance:(id)a4 checkAtomicError:(id)a5 completion:(id)a6;
+ (void)configureAutoAssetsFromNewSubscriptions:(id)a3 oldSubscriptions:(id)a4 configurationManager:(id)a5 lockIfUnchanged:(BOOL)a6 userInitiated:(BOOL)a7;
+ (void)eliminateAssetType:(id)a3;
+ (void)getDownloadStatusFromAssetSetUsages:(id)a3 configurationManager:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)invalidateAtomicInstance:(id)a3 assetSetName:(id)a4 queue:(id)a5 completion:(id)a6;
+ (void)lockLatestAssetSet:(id)a3 completion:(id)a4;
+ (void)logAtomicInstance:(id)a3 name:(id)a4 entries:(id)a5;
+ (void)observeAllAssetSets;
+ (void)observeAssetSet:(id)a3;
+ (void)observeAssetSetExperimentalNamespace:(id)a3;
+ (void)removeUnusedAutoAssetSets:(id)a3 usedAutoAssetSets:(id)a4;
+ (void)setBackgroundNeedPolicy:(id)a3 configuration:(id)a4;
+ (void)setMinimalSpecifiers:(id)a3;
+ (void)stageAssetSet:(id)a3 targets:(id)a4 platformAssetVersion:(id)a5;
+ (void)stageAssetsWithNewSubscriptions:(id)a3 oldSubscriptions:(id)a4 knownAutoAssetSets:(id)a5 usedAutoAssetSets:(id)a6 autoAssetSets:(id)a7;
+ (void)updateAutoAssetsFromAssetSetUsages:(id)a3 configurationManager:(id)a4 expensiveNetworking:(BOOL)a5 progress:(id)a6 requestId:(id)a7 completion:(id)a8;
+ (void)waitForMobileAssetStart:(id)a3 queue:(id)a4 completion:(id)a5;
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

+ (void)cacheAssetSetCompleteness:(id)a3 complete:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v5 = +[UAFAutoAssetManager completedAtomicInstances];
  if (!v4 || ([UAFAutoAssetManager latestAtomicInstanceForClients:v8], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = &stru_1F3B6B510;
  }

  v7 = v5;
  objc_sync_enter(v7);
  [v7 setObject:v6 forKeyedSubscript:v8];
  objc_sync_exit(v7);
}

+ (id)completedAtomicInstance:(id)a3
{
  v3 = a3;
  v4 = +[UAFAutoAssetManager completedAtomicInstances];
  objc_sync_enter(v4);
  v5 = [v4 objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  if (v5 && ![v5 isEqualToString:&stru_1F3B6B510])
  {
    v7 = [UAFAutoAssetManager latestAtomicInstanceForClients:v3];
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

+ (id)getSpecifiers:(id)a3 assetSetUsages:(id)a4 experiment:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v25 = a5;
  v9 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = v7;
  v10 = [v7 name];
  v26 = v8;
  v11 = [v8 objectForKeyedSubscript:v10];

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

        v15 = [v29 getAutoAssets:{*(*(&v36 + 1) + 8 * i), v25}];
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

  if (v25)
  {
    v22 = [v25 assetSpecifiers];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__UAFAutoAssetManager_getSpecifiers_assetSetUsages_experiment___block_invoke;
    v30[3] = &unk_1E7FFDC90;
    v31 = v9;
    [v22 enumerateKeysAndObjectsUsingBlock:v30];
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

+ (id)getCurrentSpecifiers:(id)a3 expectedAutoAssetType:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v5;
  v7 = [v5 configuredAssetEntries];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 assetSelector];
        v15 = [v14 assetType];
        v16 = [v15 isEqualToString:v6];

        if (v16)
        {
          v17 = [v13 assetSelector];
          v18 = [v17 assetSpecifier];
          [v28 addObject:v18];
        }

        else
        {
          v17 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v27 = [v13 assetSelector];
            v19 = [v27 assetType];
            v20 = [v13 assetSelector];
            v21 = [v20 assetSpecifier];
            v22 = [v26 assetSetIdentifier];
            *buf = v25;
            v34 = "+[UAFAutoAssetManager getCurrentSpecifiers:expectedAutoAssetType:]";
            v35 = 2114;
            v36 = v19;
            v37 = 2114;
            v38 = v21;
            v39 = 2114;
            v40 = v22;
            _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Unexpected auto asset type %{public}@ with specifier %{public}@ in auto asset set %{public}@", buf, 0x2Au);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)getAutoSetEntries:(id)a3 specifiers:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
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
        v13 = [v5 autoAssetType];
        v14 = [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:v13 autoAssetSpecifier:v12];

        v15 = objc_alloc(MEMORY[0x1E69B1920]);
        v16 = [v5 autoAssetType];
        v17 = [v15 initForAssetType:v16 withAssetSpecifier:v12 assetLockedInhibitsRemoval:v14];

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

+ (BOOL)cacheDeleteStatusChange:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [v3 configuredAssetEntries];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v25 = v3;
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
        v9 = [v8 assetSelector];
        v10 = [v9 assetType];
        v11 = [v8 assetSelector];
        v12 = [v11 assetSpecifier];
        v13 = [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:v10 autoAssetSpecifier:v12];

        if (v13 != [v8 assetLockedInhibitsRemoval])
        {
          v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
          v3 = v25;
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

            v18 = [v8 assetSelector];
            v19 = [v18 assetType];
            v20 = [v8 assetSelector];
            v21 = [v20 assetSpecifier];
            v22 = [v25 assetSetIdentifier];
            *buf = 136316418;
            v32 = "+[UAFAutoAssetManager cacheDeleteStatusChange:]";
            v33 = 2114;
            v34 = v16;
            v35 = 2114;
            v36 = v17;
            v37 = 2114;
            v38 = v19;
            v39 = 2114;
            v40 = v21;
            v41 = 2114;
            v42 = v22;
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
    v3 = v25;
  }

  else
  {
    v14 = 1;
  }

LABEL_20:

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)getAutoAssetSet:(id)a3 specifiers:(id *)a4 addEntries:(BOOL)a5 configured:(BOOL *)a6 downloaded:(BOOL *)a7 currentPolicy:(id *)a8
{
  v11 = a5;
  v116 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v93 = a6;
  *a6 = 0;
  *a7 = 0;
  v14 = *a4;
  v92 = a4;
  if (v11)
  {
    v15 = [UAFAutoAssetManager getAutoSetEntries:v13 specifiers:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E69B1918]);
  v17 = [v13 name];
  v18 = +[UAFAutoAssetManager getConcurrentQueue];
  v105 = 0;
  v19 = [v16 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v17 comprisedOfEntries:v15 completingFromQueue:v18 error:&v105];
  v20 = v105;

  if (v20)
  {
    v21 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [v13 name];
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

  if (!v11)
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
    if (a8)
    {
      *a8 = [v30 schedulerPolicy];
    }

    v32 = [v30 schedulerPolicy];
    if (v32)
    {
      v33 = v32;
      v34 = [v30 schedulerPolicy];
      v35 = [v34 blockCheckDownload];

      if (v35)
      {
        v36 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v91 assetSetIdentifier];
          *buf = 136315394;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = v37;
          _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ currently has downloads blocked", buf, 0x16u);
        }

        v19 = v91;
        v22 = v91;
        goto LABEL_76;
      }
    }

    v39 = [v13 autoAssetType];
    v40 = [UAFAutoAssetManager getCurrentSpecifiers:v30 expectedAutoAssetType:v39];

    v41 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v84 = [v91 assetSetIdentifier];
      v85 = [v40 allObjects];
      *buf = 136315650;
      v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
      v110 = 2114;
      v111 = v84;
      v112 = 2114;
      v113 = v85;
      _os_log_debug_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_DEBUG, "%s Auto asset set %{public}@ has specifiers %{public}@", buf, 0x20u);
    }

    v90 = v15;
    if ([v40 isEqualToSet:v14])
    {
      v42 = [UAFAutoAssetManager cacheDeleteStatusChange:v30];
      *v93 = v42;
      v19 = v91;
      if (!v42)
      {
LABEL_34:
        v89 = v30;
        v43 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v91 assetSetIdentifier];
          v45 = [v14 allObjects];
          v46 = [v40 allObjects];
          *buf = 136315906;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = v44;
          v112 = 2114;
          v113 = v45;
          v114 = 2114;
          v115 = v46;
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
        v88 = v13;

        v54 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v91 assetSetIdentifier];
          v56 = [v47 allObjects];
          *buf = 136315650;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = v55;
          v112 = 2114;
          v113 = v56;
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
          v65 = [v91 assetSetIdentifier];
          v66 = [v57 allObjects];
          *buf = 136315650;
          v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
          v110 = 2114;
          v111 = v65;
          v112 = 2114;
          v113 = v66;
          _os_log_impl(&dword_1BCF2C000, v64, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ extra specifiers: %{public}@", buf, 0x20u);
        }

        v14 = v87;
        v13 = v88;
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
          *v92 = v86;
          v68 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = [v91 assetSetIdentifier];
            v70 = [v57 allObjects];
            *buf = 136315650;
            v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
            v110 = 2114;
            v111 = v69;
            v112 = 2114;
            v113 = v70;
            _os_log_impl(&dword_1BCF2C000, v68, OS_LOG_TYPE_DEFAULT, "%s Inhibiting removal of the following specifiers for %{public}@: %{public}@", buf, 0x20u);

            v30 = v89;
            v19 = v91;
          }

          v71 = v86;
          if ([v58 isEqualToSet:v86])
          {
            v72 = [UAFAutoAssetManager cacheDeleteStatusChange:v30];
            *v93 = v72;
            if (v72)
            {
              v73 = UAFGetLogCategory(&UAFLogContextMAConfig);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = [v19 assetSetIdentifier];
                v75 = [v58 allObjects];
                *buf = 136315650;
                v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
                v110 = 2114;
                v111 = v74;
                v112 = 2114;
                v113 = v75;
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
      if (!*v93)
      {
        goto LABEL_34;
      }
    }

    *a7 = [v30 vendingAtomicInstanceForConfiguredEntries];
    v47 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v78 = [v19 assetSetIdentifier];
      v79 = v14;
      if (*a7)
      {
        v80 = @"downloaded";
      }

      else
      {
        v80 = @"not downloaded";
      }

      v81 = [v79 allObjects];
      *buf = 136315906;
      v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
      v110 = 2114;
      v111 = v78;
      v112 = 2114;
      v113 = v80;
      v14 = v79;
      v114 = 2114;
      v115 = v81;
      _os_log_impl(&dword_1BCF2C000, v47, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is %{public}@ and has expected specifiers %{public}@", buf, 0x2Au);

      v19 = v91;
    }

    goto LABEL_75;
  }

  *v93 = 1;
  v25 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    [v19 assetSetIdentifier];
    v27 = v26 = v19;
    v28 = [v14 allObjects];
    *buf = 136315650;
    v109 = "+[UAFAutoAssetManager getAutoAssetSet:specifiers:addEntries:configured:downloaded:currentPolicy:]";
    v110 = 2114;
    v111 = v27;
    v112 = 2114;
    v113 = v28;
    _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ created with specifiers %{public}@", buf, 0x20u);

    v19 = v26;
  }

  v22 = v19;
  v20 = 0;
LABEL_9:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)getReason:(id)a3 operation:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [v7 autoAssetSetClientName];
  v9 = [v7 clientDomainName];
  v10 = [v7 assetSetIdentifier];

  v11 = [v5 stringWithFormat:@"%@ in %@ %@ %@", v8, v9, v6, v10];

  return v11;
}

+ (id)configureAssetSet:(id)a3 specifiers:(id)a4 changed:(BOOL *)a5 downloaded:(BOOL *)a6 currentPolicy:(id *)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a3;
  *a5 = 0;
  v52 = 0;
  v51 = a4;
  v12 = a4;
  v13 = [UAFAutoAssetManager getAutoAssetSet:v11 specifiers:&v51 addEntries:0 configured:&v52 downloaded:a6 currentPolicy:a7];
  v14 = v51;

  if (!v13 || v52 != 1)
  {
    v17 = +[UAFAutoAssetManager immediateNeedPolicy];
    [v17 setAllowCheckDownloadOverExpensive:{objc_msgSend(v11, "enableExpensiveCellular")}];
    if (a7)
    {
      v18 = v17;
      *a7 = v17;
    }

    if (v13)
    {
      v19 = [UAFAutoAssetManager getAutoSetEntries:v11 specifiers:v14];
      v20 = MEMORY[0x1E696AEC0];
      v21 = [v11 name];
      v22 = [v20 stringWithFormat:@"Update to %@", v21];
      v23 = [v13 alterEntriesRepresentingAtomicSync:v22 toBeComprisedOfEntries:v19 withNeedPolicy:v17];

      v24 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v25 = v24;
      if (v23)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v43 = [v11 name];
          v44 = [v11 autoAssetType];
          v45 = [v14 allObjects];
          *buf = 136316162;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = v43;
          v57 = 2114;
          v58 = v44;
          v59 = 2114;
          *v60 = v45;
          *&v60[8] = 2114;
          *&v60[10] = v23;
          _os_log_error_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_ERROR, "%s Could not alter auto asset set %{public}@ with type %{public}@ specifiers %{public}@: %{public}@", buf, 0x34u);
        }
      }

      else
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v49 = [v11 name];
          v30 = [v11 autoAssetType];
          v48 = [v11 enableExpensiveCellular];
          v31 = [v14 allObjects];
          *buf = 136316162;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = v49;
          v57 = 2114;
          v58 = v30;
          v59 = 1024;
          *v60 = v48;
          *&v60[4] = 2114;
          *&v60[6] = v31;
          v32 = v31;
          _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Altered auto asset set %{public}@ with type %{public}@ with expensive cellular: %d and specifiers %{public}@", buf, 0x30u);
        }

        v33 = [UAFAutoAssetManager getReason:v13 operation:@"does need"];
        v34 = [v13 needForAtomicSync:v33 withNeedPolicy:v17];

        if (!v34)
        {
          *a5 = 1;
          [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v13 entries:v19 isEliminating:0 reason:@"altered"];
          v16 = v13;
          goto LABEL_25;
        }

        v35 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v46 = [v11 name];
          *buf = 136315650;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = v46;
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
    v13 = [UAFAutoAssetManager getAutoAssetSet:v11 specifiers:&v50 addEntries:1 configured:&v52 downloaded:a6 currentPolicy:a7];
    v26 = v50;

    if (v52)
    {
      v27 = [UAFAutoAssetManager getReason:v13 operation:@"does need"];
      v28 = [v13 needForAtomicSync:v27 withNeedPolicy:v17];

      if (!v28)
      {
        *a5 = 1;
        v38 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v11 name];
          v40 = [v17 allowCheckDownloadOverExpensive];
          *buf = 136315650;
          v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
          v55 = 2114;
          v56 = v39;
          v57 = 1024;
          LODWORD(v58) = v40;
          _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ newly created with expensive cellular policy: %d", buf, 0x1Cu);
        }

        v41 = [v13 autoAssetEntries];
        [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v13 entries:v41 isEliminating:0 reason:@"created"];

        v13 = v13;
        v14 = v26;
        v16 = v13;
        goto LABEL_28;
      }

      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v47 = [v11 name];
        *buf = 136315650;
        v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
        v55 = 2114;
        v56 = v47;
        v57 = 2114;
        v58 = v28;
        _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Could not indicate need for newly created asset set %{public}@ : %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v29 = [v11 name];
      *buf = 136315394;
      v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
      v55 = 2114;
      v56 = v29;
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
    v42 = [v11 name];
    *buf = 136315394;
    v54 = "+[UAFAutoAssetManager configureAssetSet:specifiers:changed:downloaded:currentPolicy:]";
    v55 = 2114;
    v56 = v42;
    _os_log_debug_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEBUG, "%s Auto asset set %{public}@ already defined and properly configured", buf, 0x16u);
  }

  v13 = v13;
  v16 = v13;
LABEL_29:

  v36 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (void)eliminateAssetType:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E69B18F8];
  v5 = [v3 autoAssetType];
  v6 = [v4 eliminateAllForAssetTypeSync:v5];

  v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 autoAssetType];
      v10 = [v3 name];
      v12 = 136315906;
      v13 = "+[UAFAutoAssetManager eliminateAssetType:]";
      v14 = 2114;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to eliminate auto asset type %{public}@ of auto asset set %{public}@: %{public}@", &v12, 0x2Au);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v3 autoAssetType];
    v10 = [v3 name];
    v12 = 136315650;
    v13 = "+[UAFAutoAssetManager eliminateAssetType:]";
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Eliminated auto asset type %{public}@ for auto asset set %{public}@", &v12, 0x20u);
    goto LABEL_6;
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)invalidateAtomicInstance:(id)a3 assetSetName:(id)a4 queue:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = +[UAFAutoAssetManager getConcurrentQueue];
  }

  v29 = 0;
  v13 = [UAFAutoAssetManager latestStatusForClients:v10 error:&v29];
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
      v35 = v10;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Could not get short term status for asset set %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (v13)
  {
    v17 = [v13 latestDownloadedAtomicInstance];
    v18 = [v17 isEqualToString:v9];

    if (v18)
    {
      v19 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A588];
      v31 = @"Cannot invalidate latest atomic instance";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v15 = [v19 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v20];

LABEL_7:
      v12[2](v12, v15);
      goto LABEL_17;
    }
  }

  v28 = 0;
  v21 = [objc_alloc(MEMORY[0x1E69B1918]) initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v10 comprisedOfEntries:0 completingFromQueue:v11 error:&v28];
  v15 = v28;
  if (v15)
  {
    v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v33 = "+[UAFAutoAssetManager invalidateAtomicInstance:assetSetName:queue:completion:]";
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      v37 = v15;
      _os_log_error_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_ERROR, "%s Could not construct auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v12[2](v12, v15);
  }

  else
  {
    v23 = [UAFAutoAssetManager getReason:v21 operation:@"locking latest version of"];
    v24 = MEMORY[0x1E69B1918];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__UAFAutoAssetManager_invalidateAtomicInstance_assetSetName_queue_completion___block_invoke;
    v26[3] = &unk_1E7FFD580;
    v27 = v12;
    [v24 endAtomicLocks:v23 usingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v10 ofAtomicInstance:v9 removingLockCount:-1 completion:v26];
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
}

+ (void)setMinimalSpecifiers:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v4);

  v5 = +[UAFConfigurationManager defaultManager];
  v6 = [v5 getAssetSet:v3];

  v7 = [v6 metadataAsset];

  if (v7)
  {
    v8 = [v6 getAutoAssets:0];
    v9 = [v6 metadataAsset];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v17 = 136315394;
        v18 = "+[UAFAutoAssetManager setMinimalSpecifiers:]";
        v19 = 2114;
        v20 = v3;
        _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Configuring asset set %{public}@ for minimal specifiers", &v17, 0x16u);
      }

      v13 = MEMORY[0x1E695DFD8];
      v11 = [v6 metadataAsset];
      v14 = [v13 setWithObject:v11];
      v15 = [UAFAutoAssetManager manageAssetSet:v6 specifiers:v14 lockIfUnchanged:0 userInitiated:1 experiment:0];
    }

    else if (v12)
    {
      v17 = 136315394;
      v18 = "+[UAFAutoAssetManager setMinimalSpecifiers:]";
      v19 = 2114;
      v20 = v3;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Asset set configuration error %{public}@ metadata asset defined but not found", &v17, 0x16u);
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
      v20 = v3;
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ has no metadata asset, skipping", &v17, 0x16u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (id)setLatestAtomicInstance:(id)a3 autoAssetSet:(id)a4 fallbackAlter:(BOOL)a5
{
  v5 = a5;
  v93 = *MEMORY[0x1E69E9840];
  v71 = a3;
  v7 = a4;
  v8 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = [UAFAutoAssetManager getReason:v7 operation:@"locking latest version of"];
  v79 = 0;
  v69 = v7;
  v11 = [v7 currentSetStatusSync:&v79];
  v12 = v79;
  v13 = v12;
  v70 = v11;
  if (!v11 || v12)
  {
    v35 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v54 = [v7 assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = v54;
      v86 = 2114;
      v87 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v34 = v13;
    goto LABEL_37;
  }

  v67 = v5;
  v68 = v9;
  v14 = [v7 assetSetIdentifier];
  [UAFAutoAssetManager cacheAssetSetCompleteness:v14 autoAssetSetStatus:v11];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v15 = [v11 currentLockUsage];
  v16 = [v15 objectForKeyedSubscript:v10];

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
      v22 = [v70 currentLockUsage];
      v23 = [v22 objectForKeyedSubscript:v10];
      v24 = [v23 objectForKeyedSubscript:v21];
      v25 = [v24 integerValue];

      if ([v21 isEqualToString:v71])
      {
        if (v25 < 2)
        {
          continue;
        }

        --v25;
      }

      v26 = MEMORY[0x1E69B1918];
      v27 = [v69 assetSetIdentifier];
      v28 = [v26 endAtomicLocksSync:v10 usingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v27 ofAtomicInstance:v21 removingLockCount:v25];

      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v31 = [v69 assetSetIdentifier];
          *buf = 136316162;
          v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
          v84 = 2114;
          v85 = v21;
          v86 = 2114;
          v87 = v31;
          v88 = 2114;
          v89 = v10;
          v90 = 2114;
          v91 = v28;
          _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s Could not decrement locks for atomic instance %{public}@ in auto asset set %{public}@ with reason %{public}@: %{public}@", buf, 0x34u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v69 assetSetIdentifier];
        *buf = 136316162;
        v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
        v84 = 2114;
        v85 = v21;
        v86 = 2114;
        v87 = v32;
        v88 = 2114;
        v89 = v10;
        v90 = 2048;
        v91 = v25;
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
    v55 = [v69 assetSetIdentifier];
    *buf = 136315906;
    v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
    v84 = 2114;
    v85 = v71;
    v86 = 2114;
    v87 = v55;
    v88 = 2114;
    v89 = v10;
    _os_log_debug_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEBUG, "%s Updated locks to reflect latest atomic instance of %{public}@ for auto asset set %{public}@ with reason %{public}@", buf, 0x2Au);
  }

  v13 = 0;
  v9 = v68;
  if (v71)
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
      v65 = [v69 assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = v65;
      v86 = 2114;
      v87 = v38;
      _os_log_error_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v34 = v38;
    goto LABEL_36;
  }

  v40 = [v36 currentLockUsage];
  v41 = [v40 count];

  if (v41)
  {
    v42 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v69 assetSetIdentifier];
      *buf = 136315394;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = v43;
      _os_log_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_DEFAULT, "%s Could not eliminate unneeded auto asset %{public}@ as there are current locks", buf, 0x16u);
    }

    v44 = [v36 currentLockUsage];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __74__UAFAutoAssetManager_setLatestAtomicInstance_autoAssetSet_fallbackAlter___block_invoke;
    v72[3] = &unk_1E7FFE050;
    v45 = v69;
    v73 = v45;
    [v44 enumerateKeysAndObjectsUsingBlock:v72];

    v46 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v80[0] = *MEMORY[0x1E696A588];
    v80[1] = v47;
    v81[0] = @"Could not eliminate as there are current locks";
    v81[1] = @"Could not eliminate as there are current locks";
    v80[2] = @"currentLockUsage";
    v48 = [v36 currentLockUsage];
    v81[2] = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:3];
    v50 = [v46 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v49];

    if (v67)
    {
      v51 = [v45 assetSetIdentifier];
      [UAFAutoAssetManager setMinimalSpecifiers:v51];
    }

    v34 = v50;

LABEL_36:
  }

  else
  {
    v56 = [UAFAutoAssetManager getReason:v69 operation:@"should eliminate"];
    v57 = MEMORY[0x1E69B1918];
    v58 = [v69 assetSetIdentifier];
    v34 = [v57 eliminateAtomicSync:v56 usingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:v58 awaitingUnlocked:1];

    v59 = [v69 autoAssetEntries];
    [UAFAutoAssetHistory persistAssetSetInfoConfiguring:v69 entries:v59 isEliminating:1 reason:@"eliminated"];

    [UAFAutoAssetHistory persistAssetSetInfoLocked:0 atomicEntries:0 autoAssetSet:v69 isEliminating:1 reason:@"eliminated"];
    v60 = [v69 assetSetIdentifier];
    [UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:v60];

    v61 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v62 = v61;
    if (!v34)
    {
      v13 = 0;
      v9 = v68;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v69 assetSetIdentifier];
        *buf = 136315394;
        v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
        v84 = 2114;
        v85 = v63;
        _os_log_impl(&dword_1BCF2C000, v62, OS_LOG_TYPE_DEFAULT, "%s Eliminated unneeded auto asset %{public}@", buf, 0x16u);
      }

      v64 = [v69 assetSetIdentifier];
      [UAFAssetSetObserver sendUAFNotificationForAssetSet:v64 forRoot:0];

      goto LABEL_22;
    }

    v13 = 0;
    v9 = v68;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v66 = [v69 assetSetIdentifier];
      *buf = 136315650;
      v83 = "+[UAFAutoAssetManager setLatestAtomicInstance:autoAssetSet:fallbackAlter:]";
      v84 = 2114;
      v85 = v66;
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

+ (void)logAtomicInstance:(id)a3 name:(id)a4 entries:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[UAFAutoAssetManager getConcurrentQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UAFAutoAssetManager_logAtomicInstance_name_entries___block_invoke;
  block[3] = &unk_1E7FFDEA0;
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v9;
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

+ (void)lockLatestAssetSet:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UAFAutoAssetManager getSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__UAFAutoAssetManager_lockLatestAssetSet_completion___block_invoke;
  v10[3] = &unk_1E7FFD5A8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
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

+ (id)lockLatestAssetSet:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [UAFAutoAssetManager getReason:v3 operation:@"locking latest version of"];
  v5 = +[UAFAutoAssetManager fileLockPolicy];
  v6 = [v3 assetSetIdentifier];
  v39 = 0;
  v7 = [UAFAutoAssetManager latestStatusForClients:v6 error:&v39];
  v29 = v39;

  if (v7)
  {
    v8 = [v7 latestDownloadedAtomicInstance];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v37 = 0;
  v38 = 0;
  v30 = v4;
  v10 = [v3 lockAtomicSync:v4 forAtomicInstance:0 withNeedPolicy:v5 withTimeout:0 lockedAtomicEntries:&v38 error:&v37];
  v11 = v38;
  v12 = v37;
  objc_autoreleasePoolPop(v9);
  v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = [v3 assetSetIdentifier];
      *buf = 136315650;
      v41 = "+[UAFAutoAssetManager lockLatestAssetSet:]";
      v42 = 2114;
      v43 = v28;
      v44 = 2114;
      v45 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to lock auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v15 = [v12 domain];
    if ([v15 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v16 = [v12 code];

      if (v16 == 6538)
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
    v35 = v3;
    v36 = v11;
    dispatch_async(v25, v34);

    v24 = v12;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v3 assetSetIdentifier];
    *buf = 136315650;
    v41 = "+[UAFAutoAssetManager lockLatestAssetSet:]";
    v42 = 2114;
    v43 = v18;
    v44 = 2114;
    v45 = v10;
    _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Locked auto asset set %{public}@ with atomic instance %{public}@", buf, 0x20u);
  }

  if (v10 && !v8)
  {
    goto LABEL_16;
  }

  v20 = 0;
  if (!v10 || !v8)
  {
    goto LABEL_17;
  }

  if ([v10 isEqualToString:v8])
  {
    v20 = 0;
  }

  else
  {
LABEL_16:
    v19 = [v3 assetSetIdentifier];
    [UAFAssetSetObserver sendUAFNotificationForAssetSet:v19 forRoot:0];

    [UAFAutoAssetHistory persistAssetSetInfoLocked:v10 atomicEntries:v11 autoAssetSet:v3 isEliminating:0 reason:@"locked"];
    v20 = 1;
  }

LABEL_17:
  v21 = [v3 assetSetIdentifier];
  [UAFAutoAssetManager logAtomicInstance:v10 name:v21 entries:v11];

  v22 = [UAFAutoAssetManager setLatestAtomicInstance:v10 autoAssetSet:v3 fallbackAlter:1];
  if (v20)
  {
    v23 = +[UAFInstrumentationProvider getSerialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__UAFAutoAssetManager_lockLatestAssetSet___block_invoke_400;
    block[3] = &unk_1E7FFD098;
    v32 = v3;
    v33 = v11;
    dispatch_async(v23, block);
  }

  v24 = v22;
LABEL_22:

  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (BOOL)sendNotificationForAssetSet:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B1928] notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:a3];
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

+ (int)listenForUpdates:(id)a3 updateHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
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

      v13 = [MEMORY[0x1E69B1928] notifyRegistrationName:*(*(&v25 + 1) + 8 * v12) forAssetSetIdentifier:{v5, v21}];
      v14 = [v13 UTF8String];
      v15 = +[UAFAutoAssetManager getConcurrentQueue];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __54__UAFAutoAssetManager_listenForUpdates_updateHandler___block_invoke;
      handler[3] = &unk_1E7FFD9C0;
      v16 = v13;
      v23 = v16;
      v24 = v6;
      v17 = notify_register_dispatch(v14, &out_token, v15, handler);

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

+ (void)observeAssetSet:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 name];
  [UAFAutoAssetManager observeAssetSetExperimentalNamespace:v3];

  if (qword_1ED7D1268 != -1)
  {
    dispatch_once(&qword_1ED7D1268, &__block_literal_global_413);
  }

  v5 = [qword_1ED7D1270 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "+[UAFAutoAssetManager observeAssetSet:]";
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Already watching for updates to auto asset set %{public}@ to perform auto asset lock maintenance", buf, 0x16u);
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__UAFAutoAssetManager_observeAssetSet___block_invoke_414;
    v12[3] = &unk_1E7FFCFD0;
    v7 = v4;
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

+ (void)observeAssetSetExperimentalNamespace:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[UAFCommonUtilities isTrialAvailable])
  {
    v4 = [v3 name];
    v5 = [v3 experimentalAssets];
    v6 = [v5 trialNamespace];

    if (v4 && v6)
    {
      if (qword_1ED7D1278 != -1)
      {
        dispatch_once(&qword_1ED7D1278, &__block_literal_global_423);
      }

      v7 = [qword_1ED7D1280 objectForKeyedSubscript:v4];

      if (v7)
      {
        v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v25 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]";
          v26 = 2114;
          v27 = v4;
          _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Already watching for updates to experimental assets for asset set %{public}@", buf, 0x16u);
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __60__UAFAutoAssetManager_observeAssetSetExperimentalNamespace___block_invoke_424;
        v21 = &unk_1E7FFEC00;
        v9 = v4;
        v22 = v9;
        v10 = v6;
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
    v4 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "+[UAFAutoAssetManager observeAssetSetExperimentalNamespace:]";
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", buf, 0xCu);
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

+ (id)latestAtomicInstanceFromMA:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [UAFAutoAssetManager getReason:v5 operation:@"checking"];
  v18 = 0;
  v8 = [v5 checkAtomicSync:v7 forAtomicInstance:0 withTimeout:0 discoveredAtomicEntries:0 error:&v18];
  v9 = v18;

  objc_autoreleasePoolPop(v6);
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  v11 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      v13 = [v5 assetSetIdentifier];
      *buf = 136315650;
      v20 = "+[UAFAutoAssetManager latestAtomicInstanceFromMA:error:]";
      v21 = 2114;
      v22 = v13;
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
      v15 = [v5 assetSetIdentifier];
      *buf = 136315650;
      v20 = "+[UAFAutoAssetManager latestAtomicInstanceFromMA:error:]";
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ does not yet have assets: %{public}@", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)latestStatusForClients:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v23 = 0;
  v7 = [objc_alloc(MEMORY[0x1E69B1918]) initLockerUsingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:v5 error:&v23];
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
      v17 = [v12 latestDownloadedAtomicInstance];
      v10 = [v7 endAtomicLockSync:v11 ofAtomicInstance:v17];

      if (!v10)
      {
        goto LABEL_19;
      }

      v16 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v12 latestDownloadedAtomicInstance];
        *buf = 136315906;
        v25 = "+[UAFAutoAssetManager latestStatusForClients:error:]";
        v26 = 2114;
        v27 = v5;
        v28 = 2114;
        v29 = v18;
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
        v27 = v5;
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
      v27 = v5;
      v28 = 2114;
      v29 = v10;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v12 = 0;
  }

LABEL_19:

  objc_autoreleasePoolPop(v6);
  if (a4)
  {
    v19 = v10;
    *a4 = v10;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)latestAtomicInstanceForClients:(id)a3 OSSupported:(BOOL *)a4 error:(id *)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = a3;
  *a4 = 1;
  v8 = [v7 name];
  v54 = a5;
  v9 = [UAFAutoAssetManager latestStatusForClients:v8 error:a5];

  if (!v9)
  {
    v37 = 0;
    goto LABEL_44;
  }

  v10 = [v7 metadataAsset];

  if (!v10)
  {
    goto LABEL_34;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = [v7 assets];
  v51 = [v11 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (!v51)
  {
    goto LABEL_33;
  }

  v52 = *v68;
  v53 = v7;
  v55 = v9;
  v50 = v11;
  v48 = a4;
  do
  {
    for (i = 0; i != v51; ++i)
    {
      if (*v68 != v52)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v67 + 1) + 8 * i);
      v14 = [v7 metadataAsset];
      v15 = [v13 name];
      v16 = [v14 isEqualToString:v15];

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
        v19 = [v9 latestDowloadedAtomicInstanceEntries];
        v20 = [v19 countByEnumeratingWithState:&v59 objects:v81 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v59 + 1) + 8 * v23);
          v25 = [v24 fullAssetSelector];
          v26 = [v25 assetSpecifier];
          v27 = [v18 isEqualToString:v26];

          if (v27)
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v59 objects:v81 count:16];
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
              v11 = v50;
              goto LABEL_31;
            }

            goto LABEL_11;
          }
        }

        v28 = [v24 localContentURL];
        if (!v28)
        {
          goto LABEL_36;
        }

        v29 = v28;
        v30 = [v24 localContentURL];
        v31 = [v30 scheme];

        if (v31)
        {
LABEL_36:
          v38 = UAFGetLogCategory(&UAFLogContextMAConfig);
          v9 = v55;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v42 = [v53 metadataAsset];
            v43 = [v53 name];
            v44 = [v24 localContentURL];
            *buf = 136315906;
            v72 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:OSSupported:error:]";
            v73 = 2114;
            v74 = v42;
            v75 = 2114;
            v76 = v43;
            v77 = 2112;
            v78 = v44;
            _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, "%s Failed to get a valid URL for metadata asset %{public}@ in asset set %{public}@ at location %@", buf, 0x2Au);
          }

          v37 = [v55 latestDownloadedAtomicInstance];
        }

        else
        {
          v32 = MEMORY[0x1E695DFF8];
          v33 = [v24 localContentURL];
          v34 = [v33 absoluteString];
          v35 = [v32 fileURLWithPath:v34 isDirectory:1];

          v36 = [UAFAssetSetMetadata fromAssetDir:v35 error:v54];
          v9 = v55;
          if (!*v54)
          {

            if (!v36)
            {
              goto LABEL_28;
            }

            v7 = v53;
            *v48 = [v36 OSSupported:v53];
            v37 = [v55 latestDownloadedAtomicInstance];

            goto LABEL_44;
          }

          v39 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v45 = [v53 metadataAsset];
            v46 = [v53 name];
            v47 = *v54;
            *buf = 136316162;
            v72 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:OSSupported:error:]";
            v73 = 2114;
            v74 = v45;
            v75 = 2114;
            v76 = v46;
            v77 = 2112;
            v78 = v35;
            v79 = 2114;
            v80 = v47;
            _os_log_error_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_ERROR, "%s Failed to load asset set metadata from asset %{public}@ in asset set %{public}@ at location %@: %{public}@", buf, 0x34u);
          }

          v37 = [v55 latestDownloadedAtomicInstance];

          v19 = v36;
        }

        v7 = v53;
        goto LABEL_44;
      }

LABEL_31:
      v7 = v53;
    }

    v51 = [v11 countByEnumeratingWithState:&v67 objects:v83 count:16];
  }

  while (v51);
LABEL_33:

LABEL_34:
  v37 = [v9 latestDownloadedAtomicInstance];
LABEL_44:

  v40 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)consistencyTokenFromConfig:(id)a3 atomicInstance:(id)a4 experiment:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [UAFPreinstalledAssetsCache summary:v9];
  v11 = [UAFAssetSetConsistencyToken alloc];
  v12 = [v9 name];

  v13 = [(UAFAssetSetConsistencyToken *)v11 initWithUUID:0 assetSetName:v12 atomicInstance:v8 experiment:v7 preinstalledAssetsSummary:v10];

  return v13;
}

+ (BOOL)isLatestConsistencyToken:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 assetSetName];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = +[UAFConfigurationManager defaultManager];
    v7 = [v3 assetSetName];
    v8 = [v6 getAssetSet:v7];

    if (v8)
    {
      v9 = [v8 name];
      v10 = [UAFAutoAssetManager latestAtomicInstanceForClients:v9];

      v11 = [v8 experimentalAssets];

      if (v11)
      {
        v12 = [UAFAssetSetExperiment alloc];
        v13 = [v8 experimentalAssets];
        v14 = [(UAFAssetSetExperiment *)v12 initWithConfiguration:v13 uuid:0];
      }

      else
      {
        v14 = 0;
      }

      v17 = [UAFAutoAssetManager consistencyTokenFromConfig:v8 atomicInstance:v10 experiment:v14];
      v16 = [v3 hasIdenticalAssets:v17];
    }

    else
    {
      v10 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = [v3 assetSetName];
        v21 = 136315394;
        v22 = "+[UAFAutoAssetManager isLatestConsistencyToken:]";
        v23 = 2114;
        v24 = v20;
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
      v24 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Consistency token  has no asset set name: %{public}@", &v21, 0x16u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)assetSetEmpty:(id)a3
{
  v3 = a3;
  v4 = [v3 newerAtomicInstanceDiscovered];
  if (v4)
  {
    v5 = [v3 newerDiscoveredAtomicEntries];
    v6 = [v5 count] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldCheckAssetSet:(id)a3 autoAssetSet:(id)a4 changed:(BOOL)a5 downloaded:(BOOL)a6 experiment:(id)a7 locked:(BOOL *)a8 userInitiated:(BOOL *)a9 removalNeeded:(BOOL *)a10
{
  v12 = a6;
  v13 = a5;
  v85 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  *a8 = 0;
  if (v13)
  {
    v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [v16 assetSetIdentifier];
      v20 = v19 = v17;
      *buf = 136315394;
      v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
      v79 = 2114;
      v80 = v20;
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ has had its configuration changed", buf, 0x16u);

      v17 = v19;
    }
  }

  v75 = 0;
  v21 = [UAFAutoAssetManager latestAtomicInstanceFromMA:v16 error:&v75];
  v22 = v75;
  v23 = v22;
  v65 = v21;
  if (!v21)
  {
    v74 = v22;
    v27 = [v16 currentSetStatusSync:&v74];
    v26 = v74;

    if (!v27 || v26)
    {
      v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v56 = [v16 assetSetIdentifier];
        *buf = 136315650;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = v56;
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
          v31 = [v16 assetSetIdentifier];
          v32 = [v27 newerAtomicInstanceDiscovered];
          v33 = [v27 catalogCachedAssetSetID];
          *buf = 136315906;
          v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
          v79 = 2114;
          v80 = v31;
          v81 = 2114;
          v82 = v32;
          v83 = 2114;
          v84 = v33;
          _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is desired but newest published atomic instance %{public}@ from catalog %{public}@ contains no assets", buf, 0x2Au);
        }

        goto LABEL_52;
      }

      if (v30)
      {
        v56 = [v16 assetSetIdentifier];
        *buf = 136315394;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = v56;
        _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is desired but no atomic instance is available", buf, 0x16u);
        goto LABEL_50;
      }
    }

    LOBYTE(v13) = 1;
LABEL_52:

    goto LABEL_53;
  }

  v62 = v12;
  v73 = 0;
  v72 = v22;
  v24 = [UAFAutoAssetManager latestAtomicInstanceForClients:v15 OSSupported:&v73 error:&v72];
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
    v35 = [v15 name];
    *buf = 136315650;
    v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
    v79 = 2114;
    v80 = v35;
    v81 = 2114;
    v82 = v21;
    _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ has atomic instance %{public}@, but is not available to clients, locking latest instance", buf, 0x20u);
  }

  v26 = [UAFAutoAssetManager lockLatestAssetSet:v16];

  v36 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v15 name];
    *buf = 136315650;
    v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
    v79 = 2114;
    v80 = v37;
    v81 = 2114;
    v82 = v26;
    _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ locking complete with error: %{public}@", buf, 0x20u);
  }

  v38 = 1;
  if (!v26)
  {
    *a8 = 1;
    v71 = 0;
    v39 = [UAFAutoAssetManager latestAtomicInstanceForClients:v15 OSSupported:&v73 error:&v71];
    v26 = v71;
    v21 = v65;
LABEL_19:
    if (v73)
    {
      v40 = [UAFAutoAssetManager consistencyTokenFromConfig:v15 atomicInstance:v64 experiment:v17];
      v66 = v26;
      v41 = [UAFExpiredAssets assetsExpired:v40 error:&v66];
      v42 = v66;

      if (v41)
      {
        v43 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v15 name];
          *buf = 136315906;
          v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
          v79 = 2114;
          v80 = v44;
          v81 = 2114;
          v82 = v21;
          v83 = 2114;
          v84 = v40;
          _os_log_impl(&dword_1BCF2C000, v43, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is configured, has atomic instance %{public}@, is available to clients, and current OS supported but current assets %{public}@ are marked as expired", buf, 0x2Au);
        }

        v38 = 1;
        *a9 = 1;
      }

      else
      {
        v38 = 1;
        if (v62 && !v13)
        {
          v57 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [v15 name];
            *buf = 136315650;
            v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
            v79 = 2114;
            v80 = v58;
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
      v61 = v17;
      v63 = v16;
      v45 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v15 name];
        *buf = 136315650;
        v78 = "+[UAFAutoAssetManager shouldCheckAssetSet:autoAssetSet:changed:downloaded:experiment:locked:userInitiated:removalNeeded:]";
        v79 = 2114;
        v80 = v46;
        v81 = 2114;
        v82 = v21;
        _os_log_impl(&dword_1BCF2C000, v45, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ is configured, has atomic instance %{public}@, and is available to clients but current OS is not supported", buf, 0x20u);
      }

      v38 = 1;
      *a10 = 1;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v47 = [v15 assets];
      v48 = [v47 countByEnumeratingWithState:&v67 objects:v76 count:16];
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
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v67 + 1) + 8 * i);
            v53 = [v15 metadataAsset];
            v54 = [v52 name];
            if ([v53 isEqualToString:v54])
            {
            }

            else
            {
              v55 = [v52 ignoreOSCompatibility];

              if (v55)
              {
                *a10 = 0;
                goto LABEL_40;
              }
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (v49)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:

      v16 = v63;
      *a9 = 1;
      v17 = v61;
    }
  }

  LOBYTE(v13) = v38;
LABEL_53:

  v59 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (void)setBackgroundNeedPolicy:(id)a3 configuration:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 assetSetIdentifier];
    v16 = 136315394;
    v17 = "+[UAFAutoAssetManager setBackgroundNeedPolicy:configuration:]";
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Setting need policy for asset set '%{public}@' to not user initiated", &v16, 0x16u);
  }

  v9 = +[UAFAutoAssetManager backgroundNeedPolicy];
  v10 = [v6 enableExpensiveCellular];

  [v9 setAllowCheckDownloadOverExpensive:v10];
  v11 = [UAFAutoAssetManager getReason:v5 operation:@"discretionary"];
  v12 = [v5 needForAtomicSync:v11 withNeedPolicy:v9];

  if (v12)
  {
    v13 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [v5 assetSetIdentifier];
      v16 = 136315650;
      v17 = "+[UAFAutoAssetManager setBackgroundNeedPolicy:configuration:]";
      v18 = 2114;
      v19 = v15;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Could not set discretionary policy for asset set %{public}@ : %{public}@", &v16, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)releaseIncompatibleAssetSet:(id)a3 specifiers:(id)a4 configuration:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 assetSetIdentifier];
    *buf = 136315394;
    v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
    v30 = 2114;
    v31 = v11;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Asset set %{public}@ incompatible with current OS, removing", buf, 0x16u);
  }

  v12 = [v7 assetSetIdentifier];
  v13 = [UAFAutoAssetManager removeAutoAssetSet:v12 fallbackAlter:0];

  if (v13 && [v13 code] != 6551)
  {
    v14 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 assetSetIdentifier];
      *buf = 136315394;
      v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Attempting force remove of asset set '%{public}@'", buf, 0x16u);
    }

    v16 = [v7 assetSetIdentifier];
    v17 = [UAFAutoAssetManager forceRemoveAutoAssetSet:v16];

    if (v17)
    {
      v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = [v7 assetSetIdentifier];
        *buf = 136315650;
        v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
        v30 = 2114;
        v31 = v26;
        v32 = 2112;
        v33 = v17;
        _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Force remove of asset set '%{public}@' failed: %@", buf, 0x20u);
      }
    }
  }

  v19 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v7 assetSetIdentifier];
    *buf = 136315394;
    v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
    v30 = 2114;
    v31 = v20;
    _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Removal of incompatible asset set %{public}@ complete, reconfiguring", buf, 0x16u);
  }

  v27 = 0;
  v21 = [UAFAutoAssetManager configureAssetSet:v8 specifiers:v9 changed:&v27 + 1 downloaded:&v27 currentPolicy:0];

  if (!v21)
  {
    v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [0 assetSetIdentifier];
      *buf = 136315394;
      v29 = "+[UAFAutoAssetManager releaseIncompatibleAssetSet:specifiers:configuration:]";
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Reconfiguration of %{public}@ produced no autoAssetSet", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v21 != 0;
}

+ (id)manageAssetSet:(id)a3 specifiers:(id)a4 lockIfUnchanged:(BOOL)a5 userInitiated:(BOOL)a6 experiment:(id)a7
{
  v9 = a5;
  v47[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v41 = a6;
  v13 = a7;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v14 = [UAFAutoAssetManager configureAssetSet:v11 specifiers:v12 changed:&v40 downloaded:&v39 currentPolicy:&v38];
  v15 = v38;
  if (!v14)
  {
    goto LABEL_10;
  }

  v16 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v11 name];
    *buf = 136315394;
    v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
    v44 = 2114;
    v45 = v17;
    _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Managing auto asset set %{public}@", buf, 0x16u);
  }

  [UAFAutoAssetManager observeAssetSet:v11];
  v37 = 0;
  v18 = [UAFAutoAssetManager shouldCheckAssetSet:v11 autoAssetSet:v14 changed:v40 downloaded:v39 experiment:v13 locked:&v37 + 1 userInitiated:&v41 removalNeeded:&v37];
  v19 = [v11 name];
  [UAFAutoAssetManager cacheAssetSetCompleteness:v19 complete:!v18];

  if (v18)
  {
    if (v37 != 1 || [UAFAutoAssetManager releaseIncompatibleAssetSet:v14 specifiers:v12 configuration:v11])
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
        v23 = [v11 name];
        v24 = [v11 enableExpensiveCellular];
        *buf = 136315906;
        v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
        v44 = 2114;
        v45 = v23;
        v46 = 1024;
        LODWORD(v47[0]) = v24;
        WORD2(v47[0]) = 1024;
        *(v47 + 6) = v41;
        _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Checking auto asset set %{public}@ with cellular: %d user initiated: %d", buf, 0x22u);
      }

      v25 = +[UAFAutoAssetManager defaultCheckPolicy];
      [v25 setUserInitiated:v41];
      [v25 setAllowCheckDownloadOverExpensive:{objc_msgSend(v11, "enableExpensiveCellular")}];
      v26 = [UAFAutoAssetManager getReason:v20 operation:@"checking"];
      [v20 checkAtomic:v26 forAtomicInstance:0 awaitingDownload:1 withNeedPolicy:v25 withTimeout:-2 completion:v21];

      v27 = v20;
      goto LABEL_21;
    }

LABEL_10:
    v27 = 0;
    goto LABEL_21;
  }

  if (v9 && (v37 & 0x100) == 0)
  {
    v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v11 name];
      *buf = 136315394;
      v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
      v44 = 2114;
      v45 = v29;
      _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Locking latest instance of auto asset set %{public}@ although it is unchanged", buf, 0x16u);
    }

    v30 = [UAFAutoAssetManager lockLatestAssetSet:v14];
    v31 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v11 name];
      *buf = 136315650;
      v43 = "+[UAFAutoAssetManager manageAssetSet:specifiers:lockIfUnchanged:userInitiated:experiment:]";
      v44 = 2114;
      v45 = v32;
      v46 = 2114;
      v47[0] = v30;
      _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Auto asset set %{public}@ locking complete with error: %{public}@", buf, 0x20u);
    }
  }

  if ([v15 userInitiated])
  {
    [UAFAutoAssetManager setBackgroundNeedPolicy:v14 configuration:v11];
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

+ (id)targetForAssetSet:(id)a3 specifiers:(id)a4 version:(id)a5 autoAssetSets:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [UAFAutoAssetManager getAutoSetEntries:v9 specifiers:v10];
  v14 = [v9 name];
  v15 = [v12 objectForKey:v14];

  if (v15)
  {
    v16 = 0;
    goto LABEL_3;
  }

  v29 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v9 name];
    *buf = 136315394;
    v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
    v56 = 2114;
    v57 = v30;
    _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s AutoAssetSet %{public}@ not previously initialized. Creating a new one for staging.", buf, 0x16u);
  }

  v31 = objc_alloc(MEMORY[0x1E69B1918]);
  v32 = [v9 name];
  v33 = +[UAFAutoAssetManager getConcurrentQueue];
  v53 = 0;
  v34 = [v31 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v32 comprisedOfEntries:v13 completingFromQueue:v33 error:&v53];
  v16 = v53;

  v15 = v34;
  if (!v34 || v16)
  {
    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v46 = [v34 assetSetIdentifier];
      *buf = 136315650;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = v46;
      v58 = 2114;
      v59 = v16;
      v47 = "%s Could not create auto asset set %{public}@ : %{public}@";
      goto LABEL_31;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if (v12)
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
      v46 = [v9 name];
      *buf = 136315650;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = v46;
      v58 = 2114;
      v59 = v16;
      v47 = "%s Could not determine status for set %{public}@ : %{public}@";
LABEL_31:
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, v47, buf, 0x20u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v44 = [v43 domain];
  if (([v44 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_26;
  }

  v45 = [v16 code];

  if (v45 != 6301)
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
    v18 = [UAFPlatform maxVersionFromVersionString:v11];
    v19 = [v17 initForMinTargetOSVersion:v11 toMaxTargetOSVersion:v18 asEntriesWhenTargeting:v13];

    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [v9 name];
      v21 = v50 = v15;
      [v19 minTargetOSVersion];
      v51 = v11;
      v23 = v22 = v10;
      v24 = [v19 maxTargetOSVersion];
      v25 = [v9 autoAssetType];
      [v22 allObjects];
      v49 = v16;
      v26 = v9;
      v28 = v27 = v13;
      *buf = 136316418;
      v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
      v56 = 2114;
      v57 = v21;
      v58 = 2114;
      v59 = v23;
      v60 = 2114;
      v61 = v24;
      v62 = 2114;
      v63 = v25;
      v64 = 2114;
      v65 = v28;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Staging asset set %{public}@ for OS versions %{public}@ through %{public}@ with type %{public}@ and entries %{public}@", buf, 0x3Eu);

      v13 = v27;
      v9 = v26;
      v16 = v49;

      v10 = v22;
      v11 = v51;

      v15 = v50;
    }

    goto LABEL_17;
  }

  v40 = UAFGetLogCategory(&UAFLogContextMAConfig);
  v13 = v35;
  v16 = v39;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v48 = [v9 name];
    *buf = 136315650;
    v55 = "+[UAFAutoAssetManager targetForAssetSet:specifiers:version:autoAssetSets:]";
    v56 = 2114;
    v57 = v48;
    v58 = 2114;
    v59 = v39;
    _os_log_error_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_ERROR, "%s Could not indicate lack of need in this OS for asset set %{public}@ : %{public}@", buf, 0x20u);
  }

  v19 = 0;
LABEL_17:

  v41 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (void)stageAssetSet:(id)a3 targets:(id)a4 platformAssetVersion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x1E69B1918]);
  v11 = +[UAFAutoAssetManager getConcurrentQueue];
  v19 = 0;
  v12 = [v10 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v7 comprisedOfEntries:0 completingFromQueue:v11 error:&v19];
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
    v13 = [v12 assetSetForStagingSync:v17 asEntriesWhenTargeting:v8];

    if (!v13)
    {
      [UAFStagingLogManager logTargets:v8 withAssetSetName:v7 withPlatformAssetVersion:v9];
      goto LABEL_10;
    }

    v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFAutoAssetManager stageAssetSet:targets:platformAssetVersion:]";
      v22 = 2114;
      v23 = v7;
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
      v23 = v7;
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

+ (void)stageAssetsWithNewSubscriptions:(id)a3 oldSubscriptions:(id)a4 knownAutoAssetSets:(id)a5 usedAutoAssetSets:(id)a6 autoAssetSets:(id)a7
{
  v87 = *MEMORY[0x1E69E9840];
  v57 = a3;
  v11 = a4;
  v12 = a5;
  v61 = a6;
  v60 = a7;
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
      v56 = v11;
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
          v22 = [v21 applySubscriptions:v57];
          v23 = v22;
          if (v11)
          {
            v24 = [v21 applySubscriptions:v11];
            v25 = v23;
            v26 = [objc_opt_class() findDiffBetweenOldAssetSetUsages:v24 newAssetSetUsages:v23 knownAssetSets:v12 usedAssetSets:v61 configurationManager:v21];
            v27 = [v26 allObjects];
          }

          else
          {
            v25 = v22;
            v27 = [v21 getAllAssetSets];
          }

          v59 = v20;
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          obj = v27;
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
                v30 = [v29 autoAssetType];

                if (v30)
                {
                  if (v12)
                  {
                    v31 = [v29 name];
                    [v12 addObject:v31];
                  }

                  v32 = [v29 name];
                  v33 = [v21 getPrestage:v32];

                  if (v33)
                  {
                    v34 = [v33 mergeAssetSetUsages:v25];

                    v25 = v34;
                  }

                  v35 = [*(v19 + 2544) getSpecifiers:v29 assetSetUsages:v25 experiment:0];
                  if ([v35 count])
                  {
                    if (v61)
                    {
                      v36 = [v29 name];
                      [v61 addObject:v36];
                    }

                    v37 = [*(v19 + 2544) targetForAssetSet:v29 specifiers:v35 version:v65 autoAssetSets:v60];
                    if (v37)
                    {
                      v38 = v12;
                      v39 = v62;
                      if (!v62)
                      {
                        v39 = objc_opt_new();
                      }

                      v40 = [v29 name];
                      v41 = [v39 objectForKeyedSubscript:v40];

                      if (!v41)
                      {
                        v42 = objc_opt_new();
                        v43 = [v29 name];
                        [v39 setObject:v42 forKeyedSubscript:v43];
                      }

                      v44 = [v29 name];
                      v62 = v39;
                      v45 = [v39 objectForKeyedSubscript:v44];
                      [v45 addObject:v37];

                      v12 = v38;
                      v19 = 0x1E7FFC000;
                    }

                    else
                    {
                      v44 = UAFGetLogCategory(&UAFLogContextMAConfig);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        v47 = [v29 name];
                        *buf = 136315650;
                        v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                        v81 = 2114;
                        v82 = v47;
                        v83 = 2114;
                        v84 = v65;
                        _os_log_impl(&dword_1BCF2C000, v44, OS_LOG_TYPE_DEFAULT, "%s Failed to generate target for Asset set %{public}@ for OS version %{public}@", buf, 0x20u);
                      }
                    }

LABEL_38:
                  }

                  else
                  {
                    v37 = UAFGetLogCategory(&UAFLogContextMAConfig);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      v44 = [v29 name];
                      *buf = 136315650;
                      v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                      v81 = 2114;
                      v82 = v44;
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
                  v46 = [v29 name];
                  *buf = 136315650;
                  v80 = "+[UAFAutoAssetManager stageAssetsWithNewSubscriptions:oldSubscriptions:knownAutoAssetSets:usedAutoAssetSets:autoAssetSets:]";
                  v81 = 2114;
                  v82 = v46;
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
          v11 = v56;
        }

        while (v59 + 1 != v58);
        v58 = [v55 countByEnumeratingWithState:&v75 objects:v86 count:16];
        if (!v58)
        {
          v15 = v52;
          v14 = v53;
          if (v62)
          {
            v48 = [*(v19 + 2544) getSerialQueue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __123__UAFAutoAssetManager_stageAssetsWithNewSubscriptions_oldSubscriptions_knownAutoAssetSets_usedAutoAssetSets_autoAssetSets___block_invoke;
            block[3] = &unk_1E7FFD098;
            v69 = v62;
            v70 = v52;
            v49 = v62;
            dispatch_async(v48, block);

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

+ (id)forceRemoveAutoAssetSet:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69B1918]);
  v5 = +[UAFAutoAssetManager getConcurrentQueue];
  v19 = 0;
  v6 = [v4 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v3 comprisedOfEntries:0 completingFromQueue:v5 error:&v19];
  v7 = v19;

  if (v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "+[UAFAutoAssetManager forceRemoveAutoAssetSet:]";
      v22 = 2114;
      v23 = v3;
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
      v12 = [v6 assetSetIdentifier];
      *buf = 136315394;
      v21 = "+[UAFAutoAssetManager forceRemoveAutoAssetSet:]";
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Forcibly eliminating auto asset %{public}@ using awaitingUnlocked:NO", buf, 0x16u);
    }

    v13 = MEMORY[0x1E69B1918];
    v14 = [v6 assetSetIdentifier];
    v9 = [v13 eliminateAtomicSync:v10 usingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:v14 awaitingUnlocked:0];

    v15 = [v6 assetSetIdentifier];
    [UAFStagingLogManager deleteLoggedTargetsForEliminatedAssetSet:v15];

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      [UAFAssetSetObserver sendUAFNotificationForAssetSet:v3 forRoot:0];
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)removeUnusedAutoAssetSets:(id)a3 usedAutoAssetSets:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (+[UAFAutoAssetManager allowRemoves])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
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
          if (([v6 containsObject:{v12, v15}] & 1) == 0)
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

+ (id)findDiffBetweenOldAssetSetUsages:(id)a3 newAssetSetUsages:(id)a4 knownAssetSets:(id)a5 usedAssetSets:(id)a6 configurationManager:(id)a7
{
  v56 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v42 = a6;
  v44 = a7;
  v38 = objc_opt_new();
  v39 = v11;
  v14 = [UAFAssetSetManager getComparableUsages:v11];
  v41 = v12;
  v15 = [UAFAssetSetManager getComparableUsages:v12];
  v16 = MEMORY[0x1E695DFA8];
  v43 = v14;
  v17 = [v14 allKeys];
  v18 = [v16 setWithArray:v17];

  v19 = [v15 allKeys];
  [v18 addObjectsFromArray:v19];

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
    v23 = v13;
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
        v28 = [v44 getAssetSet:v25];
        if (!v28)
        {
          v29 = 0;
LABEL_16:
          v31 = 0;
          goto LABEL_17;
        }

        if (v13)
        {
          [v13 addObject:v25];
        }

        v29 = [UAFAutoAssetManager getSpecifiers:v28 assetSetUsages:v41 experiment:0];
        v30 = [v29 count];
        if (v42 && v30)
        {
          [v42 addObject:v25];
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

        v13 = v23;
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
      v33 = [v44 baseURLs];
      v34 = [v33 description];
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

+ (void)configureAutoAssetsFromNewSubscriptions:(id)a3 oldSubscriptions:(id)a4 configurationManager:(id)a5 lockIfUnchanged:(BOOL)a6 userInitiated:(BOOL)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "+[UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:oldSubscriptions:configurationManager:lockIfUnchanged:userInitiated:]";
    _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Configuring MobileAsset from asset set usages", buf, 0xCu);
  }

  if (!v14)
  {
    v14 = +[UAFConfigurationManager defaultManager];
  }

  v16 = +[UAFAutoAssetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __131__UAFAutoAssetManager_configureAutoAssetsFromNewSubscriptions_oldSubscriptions_configurationManager_lockIfUnchanged_userInitiated___block_invoke;
  block[3] = &unk_1E7FFEC50;
  v22 = v14;
  v23 = v12;
  v24 = v13;
  v25 = a1;
  v26 = a6;
  v27 = a7;
  v17 = v13;
  v18 = v12;
  v19 = v14;
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
  v2 = [[UAFXPCConnection alloc] initWithDefaultService];

  return v2;
}

+ (id)currentLockURLForAssetSet:(id)a3
{
  v3 = MEMORY[0x1E69B1938];
  v4 = a3;
  v5 = [[v3 alloc] init:@"com.apple.UnifiedAssetFramework" assetSetIdentifier:v4 assetSetAtomicInstance:@"latest"];

  v6 = MEMORY[0x1E695DFF8];
  v7 = [v5 shortTermLockFileName];
  v8 = [v6 fileURLWithPath:v7];

  return v8;
}

+ (id)atomicInstanceFromLockPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"atomic_instance_" withString:&stru_1F3B6B510];
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
      v15 = v3;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s Could not parse atomic instance from '%{public}@': uuid: '%{public}@'", &v12, 0x20u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)latestAtomicInstanceForClients:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [UAFAutoAssetManager currentLockURLForAssetSet:v3];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v14 = 0;
  v7 = [v5 destinationOfSymbolicLinkAtPath:v6 error:&v14];
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
      v18 = v3;
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
      v11 = [v4 path];
      *buf = 136315906;
      v16 = "+[UAFAutoAssetManager latestAtomicInstanceForClients:]";
      v17 = 2114;
      v18 = v3;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s No destination for current lock for asset set '%{public}@' at path '%{public}@': %{public}@", buf, 0x2Au);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (void)conditionallyLockLatestAssetSet:(id)a3 newestInstance:(id)a4 checkAtomicError:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 assetSetIdentifier];
  v14 = [UAFAutoAssetManager latestAtomicInstanceForClients:v13];

  if (v10)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = !v15;
  if (v10 && v14)
  {
    v16 = [v10 isEqualToString:v14];
  }

  if (!v11)
  {
LABEL_20:
    v21 = 0;
    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v17 = [v11 domain];
  if (([v17 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_20;
  }

  v18 = v16 ^ 1;
  v19 = [v11 code];

  if (v19 == 6205 && (v18 |= v14 == 0, !v10) && v14)
  {
    v33 = 0;
    v20 = [UAFAutoAssetManager latestAtomicInstanceFromMA:v9 error:&v33];
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
      v12[2](v12, v21);
      goto LABEL_27;
    }
  }

LABEL_23:
  v22 = UAFGetLogCategory(&UAFLogContextMAConfig);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v9 assetSetIdentifier];
    *buf = 136315906;
    v35 = "+[UAFAutoAssetManager conditionallyLockLatestAssetSet:newestInstance:checkAtomicError:completion:]";
    v36 = 2114;
    v37 = v23;
    v38 = 2114;
    v39 = v10;
    v40 = 2114;
    v41 = v14;
    _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Discovered newer instance of %{public}@: %{public}@ vs %{public}@, XPC'ing to UAF service to lock", buf, 0x2Au);
  }

  v24 = +[UAFAutoAssetManager _createXPCConnection];
  v25 = [v9 assetSetIdentifier];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __98__UAFAutoAssetManager_conditionallyLockLatestAssetSet_newestInstance_checkAtomicError_completion___block_invoke;
  v29[3] = &unk_1E7FFD648;
  v30 = v9;
  v31 = v24;
  v32 = v12;
  v26 = v24;
  [v26 lockLatestAtomicInstance:v25 completion:v29];

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

+ (void)updateAutoAssetsFromAssetSetUsages:(id)a3 configurationManager:(id)a4 expensiveNetworking:(BOOL)a5 progress:(id)a6 requestId:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (!v14)
  {
    v14 = +[UAFConfigurationManager defaultManager];
  }

  v18 = [[UAFAutoAssetProgress alloc] initWithAssetSetUsages:v13 configurationManager:v14 internalProgressWithStatus:v15];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __129__UAFAutoAssetManager_updateAutoAssetsFromAssetSetUsages_configurationManager_expensiveNetworking_progress_requestId_completion___block_invoke;
  v37[3] = &unk_1E7FFEC78;
  v19 = v16;
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
  v31 = v13;
  v36 = a5;
  v32 = v14;
  v33 = v20;
  v34 = v21;
  v35 = v17;
  v23 = v17;
  v24 = v21;
  v25 = v20;
  v26 = v14;
  v27 = v13;
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

+ (unint64_t)getDownloadStatusFromMAAutoAssetSetStatus:(id)a3 config:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 latestDownloadedAtomicInstance];

  if (v7)
  {
    if (![v5 vendingAtomicInstanceForConfiguredEntries])
    {
      v12 = 1;
      goto LABEL_19;
    }

    buf[0] = 0;
    v40 = 0;
    v8 = [UAFAutoAssetManager latestAtomicInstanceForClients:v6 OSSupported:buf error:&v40];
    if (v8)
    {
      v9 = v40;
      v10 = [v5 latestDownloadedAtomicInstance];
      if ([v10 isEqualToString:v8])
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

    v13 = [v5 availableForUseError];
    v14 = [v13 domain];
    if ([v14 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
    {
      v15 = [v5 availableForUseError];
      v16 = [v15 code];

      if (v16 == 6538)
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

  if ([UAFAutoAssetManager assetSetEmpty:v5])
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

LABEL_19:
  v17 = [v5 availableForUseError];
  v18 = [v17 domain];
  if ([v18 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    v19 = [v5 availableForUseError];
    v20 = [v19 code];

    if (v20 == 6209)
    {
      v21 = [v5 availableForUseError];
      goto LABEL_26;
    }
  }

  else
  {
  }

  v22 = [v5 newerVersionError];
  v23 = [v22 domain];
  if (([v23 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] & 1) == 0)
  {

    goto LABEL_31;
  }

  v24 = [v5 newerVersionError];
  v25 = [v24 code];

  if (v25 != 6209)
  {
    goto LABEL_31;
  }

  v21 = [v5 newerVersionError];
LABEL_26:
  v26 = v21;
  if (v21)
  {
    v27 = [v21 userInfo];
    v28 = [v27 objectForKeyedSubscript:@"DownloadSpaceDetails"];

    v29 = [v28 objectForKeyedSubscript:@"TotalRequiredSpaceForSetDownload"];
    v30 = [v28 objectForKeyedSubscript:@"StillNeededSpaceForSetDownload"];
    v31 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = [v29 integerValue];
      v38 = [v30 integerValue];
      v39 = [v5 assetSetIdentifier];
      *buf = 136315906;
      v42 = "+[UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:config:]";
      v43 = 2048;
      v44 = v37;
      v45 = 2048;
      v46 = v38;
      v47 = 2114;
      v48 = v39;
      _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s Out of Space condition encountered (total: %lld, needed: %lld) for the set %{public}@", buf, 0x2Au);
    }

    v12 = 5;
    goto LABEL_35;
  }

LABEL_31:
  v32 = [v5 downloadProgress];

  if (v32)
  {
    v33 = [v5 downloadProgress];
    v34 = [v33 isStalled];

    if (v34)
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

+ (void)cacheAssetSetCompleteness:(id)a3 autoAssetSetStatus:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[UAFConfigurationManager defaultManager];
  v8 = [v7 getAssetSet:v5];

  if (v8)
  {
    [UAFAutoAssetManager cacheAssetSetCompleteness:v5 complete:[UAFAutoAssetManager getDownloadStatusFromMAAutoAssetSetStatus:v6 config:v8]== 4];
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "+[UAFAutoAssetManager cacheAssetSetCompleteness:autoAssetSetStatus:]";
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Could not get configuration for for asset set %{public}@ to cache set completeness", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)assetSetNamesFromUsages:(id)a3 configurationManager:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[UAFConfigurationManager defaultManager];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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
        v15 = [v6 getAssetSet:{v14, v21, v22}];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 autoAssetType];

          if (v17)
          {
            if (!v11)
            {
              v11 = objc_opt_new();
            }

            v18 = [v16 name];
            [v11 addObject:v18];
          }

          else
          {
            v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              v27 = "+[UAFAutoAssetManager assetSetNamesFromUsages:configurationManager:]";
              v28 = 2114;
              v29 = v14;
              _os_log_debug_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEBUG, "%s No auto asset type defined for %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = "+[UAFAutoAssetManager assetSetNamesFromUsages:configurationManager:]";
            v28 = 2114;
            v29 = v14;
            _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Could not get configuration for for asset set %{public}@", buf, 0x16u);
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

+ (id)autoAssetSetForStatus:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E69B1918]);
  v5 = +[UAFAutoAssetManager getConcurrentQueue];
  v12 = 0;
  v6 = [v4 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v3 comprisedOfEntries:0 completingFromQueue:v5 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "+[UAFAutoAssetManager autoAssetSetForStatus:]";
      v15 = 2114;
      v16 = v3;
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

+ (unint64_t)getDownloadStatusForAssetSet:(id)a3 configurationManager:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[UAFConfigurationManager defaultManager];
  }

  v7 = [v6 getAssetSet:v5];
  v8 = [UAFAutoAssetManager autoAssetSetForStatus:v5];
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
      v21 = v5;
      v22 = 2114;
      v23 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, "%s Could not get status of auto asset set %{public}@: %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)assetSetComplete:(id)a3
{
  v3 = a3;
  v4 = [UAFAutoAssetManager completedAtomicInstance:v3];
  v5 = v4;
  if (v4)
  {
    LODWORD(v6) = [v4 isEqualToString:&stru_1F3B6B510] ^ 1;
  }

  else
  {
    v7 = +[UAFConfigurationManager defaultManager];
    v6 = [UAFAutoAssetManager getDownloadStatusForAssetSet:v3 configurationManager:v7];

    LOBYTE(v6) = v6 == 4;
  }

  return v6;
}

+ (unint64_t)getDownloadStatusFromAssetSetUsages:(id)a3 configurationManager:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if (!v6)
  {
    v6 = +[UAFConfigurationManager defaultManager];
  }

  v19 = v5;
  v8 = [UAFAutoAssetManager assetSetNamesFromUsages:v5 configurationManager:v6];
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
        v14 = [UAFAutoAssetManager getDownloadStatusForAssetSet:v13 configurationManager:v6];
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

+ (void)getDownloadStatusFromAssetSetUsages:(id)a3 configurationManager:(id)a4 queue:(id)a5 completion:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = a6;
  if (!v11)
  {
    v11 = +[UAFAutoAssetManager getConcurrentQueue];
  }

  queue = v11;
  v12 = objc_opt_new();
  v13 = dispatch_group_create();
  if (!v10)
  {
    v10 = +[UAFConfigurationManager defaultManager];
  }

  v29 = v9;
  [UAFAutoAssetManager assetSetNamesFromUsages:v9 configurationManager:v10, v26];
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
        v19 = [v10 getAssetSet:v18];
        [UAFAutoAssetManager autoAssetSetForStatus:v18];
        v21 = v20 = v10;
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

        v10 = v20;
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

+ (BOOL)shouldWaitForMobileAssetStart:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"] && objc_msgSend(v4, "code") == 6108)
    {
      v6 = [v4 localizedDescription];
      if (v6)
      {
        v7 = [v4 localizedDescription];
        v8 = [v7 containsString:@"AtomicEntry in locked set-status for secure grafted/mounted auto-asset where required content is missing"];
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

+ (void)waitForMobileAssetStart:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69B1918];
  v9 = a4;
  v10 = a3;
  v16 = 0;
  v11 = [[v8 alloc] initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v10 comprisedOfEntries:0 completingFromQueue:v9 error:&v16];

  v12 = v16;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__UAFAutoAssetManager_waitForMobileAssetStart_queue_completion___block_invoke;
  v14[3] = &unk_1E7FFED40;
  v15 = v7;
  v13 = v7;
  [v11 currentSetStatus:v14];
}

+ (BOOL)autoAssetExistsWithEntries:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v20 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69B1918]) initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v3 comprisedOfEntries:0 error:&v20];
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
      v24 = v3;
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
        v26 = v3;
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
        v24 = v3;
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

+ (id)spaceNeededForAssetSetUsages:(id)a3 key:(id)a4 configurationManager:(id)a5 error:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30 = a4;
  v9 = a5;
  if (!v9)
  {
    v9 = +[UAFConfigurationManager defaultManager];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
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
        v17 = [v9 getAssetSet:{v16, v27}];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 autoAssetType];

          if (v19)
          {
            v20 = [objc_opt_class() sizeInBytesForConfig:v18 key:v30 error:a6];
            v21 = [v20 unsignedLongLongValue];
            v22 = v14;
            v23 = UAFGetLogCategory(v14);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v37 = "+[UAFAutoAssetManager spaceNeededForAssetSetUsages:key:configurationManager:error:]";
              v38 = 2114;
              v39 = v16;
              v40 = 2048;
              v41 = v21;
              v42 = 2114;
              v43 = v30;
              _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Configured asset name %{public}@ with size %llu for key %{public}@", buf, 0x2Au);
            }

            v31 += v21;
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

+ (id)sizeInBytesForConfig:(id)a3 key:(id)a4 error:(id *)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x1E69B1918]);
  v45 = v7;
  v10 = [v7 name];
  v11 = +[UAFAutoAssetManager getConcurrentQueue];
  v61 = 0;
  v12 = [v9 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:v10 comprisedOfEntries:0 completingFromQueue:v11 error:&v61];
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

    v15 = [v45 name];
    *buf = 136315650;
    v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
    v64 = 2114;
    v65 = v15;
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
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v42 = [v45 name];
      *buf = 136315650;
      v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
      v64 = 2114;
      v65 = v42;
      v66 = 2114;
      v67 = v13;
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v43 = a5;
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
    v47 = v8;
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
        v24 = [v14 latestDowloadedAtomicInstanceEntries];
        v25 = [v24 countByEnumeratingWithState:&v52 objects:v70 count:16];
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
                objc_enumerationMutation(v24);
              }

              v30 = *(*(&v52 + 1) + 8 * j);
              v31 = [v23 fullAssetSelector];
              v32 = [v30 fullAssetSelector];
              v33 = [v31 isEqual:v32];

              if (v33)
              {

                v21 = v27;
                v24 = UAFGetLogCategory(v27);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = [v23 assetID];
                  *buf = 136315394;
                  v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
                  v64 = 2114;
                  v65 = v34;
                  _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Newer asset entry %{public}@ skipped due to having a latest downloaded entry", buf, 0x16u);
                }

                v8 = v47;
                v14 = v48;
                v20 = v51;
                goto LABEL_29;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v52 objects:v70 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v14 = v48;
          v20 = v51;
          v21 = v27;
          v8 = v47;
        }

LABEL_29:

        v35 = [v23 assetAttributes];
        v36 = [v35 objectForKey:v8];

        if (v36)
        {
          v37 = [v36 unsignedLongLongValue];
          v38 = UAFGetLogCategory(v21);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v23 assetID];
            *buf = 136315906;
            v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
            v64 = 2114;
            v65 = v39;
            v66 = 2048;
            v67 = v37;
            v68 = 2114;
            v69 = v8;
            _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, "%s Newer asset entry %{public}@ has download size %llu for key %{public}@", buf, 0x2Au);
          }

          v20 += v37;
        }

        else
        {
          v40 = UAFGetLogCategory(v21);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = [v45 autoAssetType];
            *buf = 136315650;
            v63 = "+[UAFAutoAssetManager sizeInBytesForConfig:key:error:]";
            v64 = 2114;
            v65 = v41;
            v66 = 2114;
            v67 = v8;
            _os_log_error_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_ERROR, "%s Newer asset entry %{public}@ missing download size metadata for key %{public}@", buf, 0x20u);
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v50);
  }

  if (v43)
  {
    *v43 = 0;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v20];
  v13 = 0;
  v12 = v44;
LABEL_9:

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

@end