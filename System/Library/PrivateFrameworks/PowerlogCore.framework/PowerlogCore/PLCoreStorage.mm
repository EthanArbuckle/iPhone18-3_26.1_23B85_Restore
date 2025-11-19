@interface PLCoreStorage
+ (id)additionalTables;
+ (id)allOperatorTablesToTrimConditionsForTrimDate:(id)a3;
+ (id)storageQueueNameForClass:(Class)a3;
+ (id)storageQueueNameForEntryKey:(id)a3;
+ (void)logMessage:(id)a3 fromFile:(id)a4 fromFunction:(id)a5 fromLineNumber:(int64_t)a6;
- (BOOL)flushCachesIfRequiredForEntryKey:(id)a3;
- (BOOL)registerDailyTasks;
- (BOOL)registerDailyTasks_XPCActivity;
- (BOOL)setFileProtectionForPath:(id)a3 withLevel:(id)a4;
- (BOOL)storageLocked;
- (PLCoreStorage)init;
- (id)aggregateEntriesForKey:(id)a3 withBucketLength:(double)a4 inTimeIntervalRange:(_PLTimeIntervalRange)a5;
- (id)entriesForKey:(id)a3 before:(BOOL)a4 timeInterval:(double)a5 count:(int64_t)a6 withFilters:(id)a7;
- (id)entriesForKey:(id)a3 inTimeRange:(_PLTimeIntervalRange)a4 withCountOfEntriesBefore:(int64_t)a5 withCountOfEntriesAfter:(int64_t)a6 withFilters:(id)a7;
- (id)entriesForKey:(id)a3 inTimeRange:(_PLTimeIntervalRange)a4 withFilters:(id)a5;
- (id)entriesForKey:(id)a3 startingFromRowID:(int64_t)a4 count:(int64_t)a5 withFilters:(id)a6;
- (id)entriesForKey:(id)a3 withComparisons:(id)a4;
- (id)entriesForKey:(id)a3 withProperties:(id)a4;
- (id)entriesForKey:(id)a3 withQuery:(id)a4;
- (id)entryForKey:(id)a3 withID:(int64_t)a4;
- (id)firstEntryForKey:(id)a3;
- (id)lastEntriesForKey:(id)a3 count:(int64_t)a4 withFilters:(id)a5;
- (id)lastEntryForKey:(id)a3;
- (id)lastEntryForKey:(id)a3 withFilters:(id)a4;
- (id)lastEntryForKey:(id)a3 withIDLessThan:(int64_t)a4;
- (id)lastEntryForKey:(id)a3 withSubEntryKey:(id)a4;
- (int64_t)blockingWriteEntry:(id)a3 withCompletionBlock:(id)a4;
- (int64_t)countOfEntriesForKey:(id)a3;
- (int64_t)generalEntryCacheSizeLimit;
- (int64_t)writeEntry:(id)a3;
- (signed)verifySchemaVersionOfTable:(id)a3 matchesExpectedVersion:(double)a4;
- (void)_updateEntry:(id)a3 withBlock:(id)a4;
- (void)addAggdModeKeys;
- (void)applyContainerPOSIXPermissions;
- (void)attemptToSendTaskingStartNotification;
- (void)blockingFlushQueues:(id)a3 withTimeout:(int)a4;
- (void)checkCacheSizeForFlush;
- (void)cleanupQuarantine;
- (void)cleanupTmp;
- (void)configureCacheFlush;
- (void)copyUpgradePowerlogsAtPath:(id)a3 toPath:(id)a4;
- (void)dailyTasks;
- (void)dealloc;
- (void)deleteAllEntriesForKey:(id)a3 beforeTimestamp:(id)a4 withFilters:(id)a5;
- (void)deleteEntry:(id)a3;
- (void)deleteEntryForKey:(id)a3 WithRowID:(int64_t)a4;
- (void)dispatchAsyncForEntryKey:(id)a3 withBlock:(id)a4;
- (void)dispatchSyncForEntryKey:(id)a3 withBlock:(id)a4;
- (void)flushCachesWithReason:(id)a3;
- (void)handleSchemaMismatchForTable:(id)a3 expectedVersion:(double)a4 schemaMatch:(signed __int16)a5;
- (void)init;
- (void)initOperatorDependancies;
- (void)loadDynamicValuesIntoEntry:(id)a3;
- (void)logMessage:(id)a3 fromFile:(id)a4 fromFunction:(id)a5 fromLineNumber:(int64_t)a6;
- (void)processEntriesForKey:(id)a3 withProperties:(id)a4 withBlock:(id)a5;
- (void)removeErroneousQualificationEntries;
- (void)removeOldPowerlogFiles;
- (void)reportPerfStats;
- (void)setAllNullValuesForEntryKey:(id)a3 forKey:(id)a4 toValue:(id)a5 withFilters:(id)a6;
- (void)setupCompositeIndexOnTable:(id)a3 withColumns:(id)a4;
- (void)setupStorageForEntryKey:(id)a3;
- (void)setupStorageForOperator:(id)a3;
- (void)setupStorageForOperatorClass:(Class)a3;
- (void)setupStorageForOperatorName:(id)a3;
- (void)setupStorageVersions;
- (void)setupTableName:(id)a3 withEntryKeyConfig:(id)a4 withKeyOrder:(id)a5 isDynamic:(BOOL)a6 withShouldIndexFKID:(BOOL)a7;
- (void)startStorage;
- (void)stopStorage;
- (void)updateEntry:(id)a3 withBlock:(id)a4;
- (void)writeAggregateEntry:(id)a3;
- (void)writeEntries:(id)a3 withCompletionBlock:(id)a4;
- (void)writeEntry:(id)a3 withCompletionBlock:(id)a4;
- (void)writeProportionateAggregateEntry:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5;
@end

@implementation PLCoreStorage

- (BOOL)storageLocked
{
  if (storageLocked_onceToken != -1)
  {
    [PLCoreStorage storageLocked];
  }

  if (!+[PLPlatform internalBuild])
  {
    return storageLocked_storageLocked;
  }

  v2 = storageLocked_storageLocked;

  return [PLDefaults BOOLForKey:@"PLStorageLocked" ifNotSet:v2];
}

- (void)checkCacheSizeForFlush
{
  v3 = +[PLStorageCache sharedStorageCache];
  v4 = [v3 stagingEntryCacheSize];
  v5 = [(PLCoreStorage *)self generalEntryCacheSizeLimit];

  if (v4 > v5)
  {
    v6 = [PLUtilities workQueueForKey:@"CacheSizeFlush"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLCoreStorage_checkCacheSizeForFlush__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (int64_t)generalEntryCacheSizeLimit
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PLCoreStorage_generalEntryCacheSizeLimit__block_invoke;
  v4[3] = &unk_1E85195E0;
  v5 = @"generalEntryCacheSize";
  v6 = 500;
  if (generalEntryCacheSizeLimit_defaultOnce != -1)
  {
    dispatch_once(&generalEntryCacheSizeLimit_defaultOnce, v4);
  }

  v2 = generalEntryCacheSizeLimit_objectForKey;

  return v2;
}

+ (id)storageQueueNameForClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v4 = @"storageQueue.shared";
  }

  else
  {
    v5 = NSStringFromClass(a3);
    v4 = [v5 stringByAppendingString:@".storageQueue"];
  }

  return v4;
}

+ (id)storageQueueNameForEntryKey:(id)a3
{
  v3 = [PLEntryKey operatorClassForEntryKey:a3];

  return [(objc_class *)v3 storageQueueName];
}

- (BOOL)setFileProtectionForPath:(id)a3 withLevel:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AC08];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultManager];
  v13 = *MEMORY[0x1E696A3A0];
  v14[0] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = 0;
  LOBYTE(a3) = [v8 setAttributes:v9 ofItemAtPath:v7 error:&v12];

  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

void __30__PLCoreStorage_storageLocked__block_invoke()
{
  v0 = MKBGetDeviceLockState();
  v1 = MKBDeviceUnlockedSinceBoot();
  v2 = v1;
  v4 = v0 == 1 && v1 == 0;
  storageLocked_storageLocked = v4;
  if (+[PLDefaults debugEnabled])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keybag lockstate=%d unlockedSinceBoot=%d", v0, v2];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    v7 = [v6 lastPathComponent];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage storageLocked]_block_invoke"];
    [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:152];

    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }
}

- (PLCoreStorage)init
{
  v127[3] = *MEMORY[0x1E69E9840];
  v117.receiver = self;
  v117.super_class = PLCoreStorage;
  v2 = [(PLCoreStorage *)&v117 init];
  if (!v2)
  {
    goto LABEL_62;
  }

  v3 = time(0);
  srand(v3);
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21__PLCoreStorage_init__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (init_defaultOnce_0 != -1)
    {
      dispatch_once(&init_defaultOnce_0, block);
    }

    if (init_classDebugEnabled_0 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"seeded random number generator, seed =%i", v3];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage init]"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:171];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_get_global_queue(9, 0);
  v12 = dispatch_queue_create_with_target_V2("com.apple.powerlog.storage.background", v10, v11);
  backgroundQueue = v2->_backgroundQueue;
  v2->_backgroundQueue = v12;

  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_get_global_queue(17, 0);
  v16 = dispatch_queue_create_with_target_V2("com.apple.powerlog.storage.utility", v14, v15);
  utilityQueue = v2->_utilityQueue;
  v2->_utilityQueue = v16;

  v18 = +[PLUtilities containerPath];
  v19 = [v18 stringByAppendingString:@"/Library/BatteryLife/"];
  v127[0] = v19;
  v20 = +[PLUtilities containerPath];
  v21 = [v20 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  v127[1] = v21;
  v127[2] = @"/tmp/powerlog/";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:3];

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v112 objects:v126 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v113;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v113 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [PLUtilities createAndChownDirectory:*(*(&v112 + 1) + 8 * i)];
      }

      v25 = [v23 countByEnumeratingWithState:&v112 objects:v126 count:16];
    }

    while (v25);
  }

  v28 = +[PLUtilities containerPath];
  v29 = [v28 stringByAppendingString:@"/Library/BatteryLife/"];
  [(PLCoreStorage *)v2 setFileProtectionForPath:v29 withLevel:*MEMORY[0x1E696A3A8]];

  v30 = +[PLUtilities containerPath];
  v31 = [v30 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
  v125 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v109;
    v37 = *MEMORY[0x1E696A388];
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v109 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(PLCoreStorage *)v2 setFileProtectionForPath:*(*(&v108 + 1) + 8 * j) withLevel:v37];
      }

      v35 = [v33 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v35);
  }

  v39 = [MEMORY[0x1E696AC08] defaultManager];
  v40 = +[PLUtilities containerPath];
  v41 = [v40 stringByAppendingString:@"/Library/BatteryLife/CrashReporter/"];
  [v39 removeItemAtPath:v41 error:0];

  *&v2->_storageLocked = 1;
  if (![(PLCoreStorage *)v2 storageLocked])
  {
    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd]&& _os_feature_enabled_impl())
    {
      [(PLCoreStorage *)v2 applyContainerPOSIXPermissions];
    }

    v54 = PLLogCommon();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v54, OS_LOG_TYPE_DEFAULT, "KEYBAG: Unlocked", buf, 2u);
    }

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v71 = [PLSQLiteConnection alloc];
      v72 = +[PLUtilities containerPath];
      v73 = [v72 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
      v74 = [(PLSQLiteConnection *)v71 initWithFilePath:v73];
      connection = v2->_connection;
      v2->_connection = v74;

      if (v2->_connection)
      {
        [PLDefaults setObject:0 forKey:@"PLNoConnectionRestartCount" saveToDisk:1];
      }

      else
      {
        [PLDefaults doubleForKey:@"PLNoConnectionRestartCount" ifNotSet:0.0];
        v88 = [MEMORY[0x1E696AD98] numberWithInt:(v87 + 1)];
        [PLDefaults setObject:v88 forKey:@"PLNoConnectionRestartCount" saveToDisk:1];

        v89 = PLLogCommon();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          [PLCoreStorage init];
        }

        v90 = [PLDefaults objectForKey:@"PLNoConnectionRestartCount" ifNotSet:&unk_1F5405B98];
        v91 = [v90 intValue];

        if (v91 >= 4)
        {
          v92 = PLLogCommon();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            [PLCoreStorage init];
          }

          v93 = [MEMORY[0x1E696AC08] defaultManager];
          v94 = MEMORY[0x1E695DFF8];
          v95 = +[PLUtilities containerPath];
          v96 = [v95 stringByAppendingString:@"/Library"];
          v97 = [v94 fileURLWithPath:v96];
          v101 = 0;
          v98 = [v93 removeItemAtURL:v97 error:&v101];
          v99 = v101;

          if ((v98 & 1) == 0)
          {
            v100 = PLLogCommon();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
            {
              [PLCoreStorage init];
            }
          }

          [PLUtilities exitWithReason:1010];
        }
      }

      goto LABEL_55;
    }

    v55 = +[PLUtilities isPowerexceptionsd];
    v56 = +[PLUtilities containerPath];
    v57 = [v56 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];

    if (v55)
    {
      v58 = [[PLSQLiteConnection alloc] initWithFilePath:v57 withFlags:&unk_1F540B758];
      v59 = v2->_connection;
      v2->_connection = v58;

      v60 = PLLogCommon();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
LABEL_54:

LABEL_55:
        if (!v2->_connection)
        {
          v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no connection to DB"];
          v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          v80 = [v79 lastPathComponent];
          v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage init]"];
          [PLCoreStorage logMessage:v78 fromFile:v80 fromFunction:v81 fromLineNumber:314];

          v82 = PLLogCommon();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          [PLUtilities exitWithReason:101];
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (+[PLPlatform internalBuild])
      {
        v61 = [PLDefaults objectForKey:@"BUI_DEMO_PATH" forApplicationID:@"com.apple.powerlogd" synchronize:1];
        v62 = v61;
        if (v61)
        {
          v63 = MEMORY[0x1E696AEC0];
          v64 = [v61 pathExtension];
          v65 = [v63 stringWithFormat:@".%@", v64];
          v66 = [v65 isEqualToString:@".PLSQL"];

          v67 = [MEMORY[0x1E696AC08] defaultManager];
          v68 = [v67 fileExistsAtPath:v62];

          v69 = PLLogCommon();
          v70 = v69;
          if (v66 && v68)
          {
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              [PLCoreStorage init];
            }

            v70 = v57;
            v57 = v62;
          }

          else if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v119 = v62;
            v120 = 1024;
            v121 = v66;
            v122 = 1024;
            v123 = v68;
            _os_log_error_impl(&dword_1D8611000, v70, OS_LOG_TYPE_ERROR, "PLCoreStorage: Unable to load '%@'. Resorting to main DB... (hasDBExt = %d, fileExists = %d)", buf, 0x18u);
          }
        }
      }

      v76 = [[PLSQLiteConnection alloc] initWithFilePath:v57 withFlags:&unk_1F540B770];
      v77 = v2->_connection;
      v2->_connection = v76;

      v60 = PLLogCommon();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_54;
      }
    }

    [(PLCoreStorage *)&v2->_connection init];
    goto LABEL_54;
  }

  v42 = PLLogCommon();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v42, OS_LOG_TYPE_DEFAULT, "KEYBAG: Locked", buf, 2u);
  }

  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __21__PLCoreStorage_init__block_invoke_64;
  v106[3] = &unk_1E85190B8;
  v43 = v2;
  v107 = v43;
  v44 = MEMORY[0x1DA71B0D0](v106);
  v45 = [PLUtilities workQueueForClass:objc_opt_class()];
  v46 = [PLCFNotificationOperatorComposition alloc];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __21__PLCoreStorage_init__block_invoke_69;
  v104[3] = &unk_1E8519980;
  v47 = v44;
  v105 = v47;
  v48 = [(PLCFNotificationOperatorComposition *)v46 initWithWorkQueue:v45 forNotification:@"com.apple.mobile.keybagd.first_unlock" requireState:0 withBlock:v104];
  keybagFirstUnlockNotification = v43->_keybagFirstUnlockNotification;
  v43->_keybagFirstUnlockNotification = v48;

  v50 = [PLCFNotificationOperatorComposition alloc];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __21__PLCoreStorage_init__block_invoke_74;
  v102[3] = &unk_1E8519980;
  v103 = v47;
  v51 = v47;
  v52 = [(PLCFNotificationOperatorComposition *)v50 initWithWorkQueue:v45 forNotification:@"com.apple.mobile.keybagd.lock_status" requireState:0 withBlock:v102];
  keybagLockStatusNotification = v43->_keybagLockStatusNotification;
  v43->_keybagLockStatusNotification = v52;

LABEL_59:
  v83 = objc_opt_new();
  safeCopyInProgress = v2->_safeCopyInProgress;
  v2->_safeCopyInProgress = v83;

  if (init_onceToken != -1)
  {
    [PLCoreStorage init];
  }

LABEL_62:
  v85 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL __21__PLCoreStorage_init__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_0 = result;
  return result;
}

void __21__PLCoreStorage_init__block_invoke_64(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__PLCoreStorage_init__block_invoke_2;
  block[3] = &unk_1E85190B8;
  v2 = *(a1 + 32);
  if (kPLTaskingEndNotification_block_invoke_onceToken != -1)
  {
    dispatch_once(&kPLTaskingEndNotification_block_invoke_onceToken, block);
  }
}

uint64_t __21__PLCoreStorage_init__block_invoke_2(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: Unlock notification!", v4, 2u);
  }

  [*(a1 + 32) logPreUnlockState:0];
  return [PLUtilities exitWithReason:1];
}

uint64_t __21__PLCoreStorage_init__block_invoke_69(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: First unlock notification", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __21__PLCoreStorage_init__block_invoke_74(uint64_t a1)
{
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "KEYBAG: Lock status notification", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __21__PLCoreStorage_init__block_invoke_112()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5405BE0;
  v3[1] = &unk_1F5405BF8;
  v4[0] = @"BLOB";
  v4[1] = @"INTEGER";
  v3[2] = &unk_1F5405C10;
  v3[3] = &unk_1F5405C28;
  v4[2] = @"TEXT";
  v4[3] = @"REAL";
  v3[4] = &unk_1F5405C40;
  v3[5] = &unk_1F5405C58;
  v4[4] = @"INTEGER";
  v4[5] = @"INTEGER";
  v3[6] = &unk_1F5405C70;
  v3[7] = &unk_1F5405C88;
  v4[6] = @"INTEGER";
  v4[7] = @"REAL";
  v3[8] = &unk_1F5405CA0;
  v4[8] = @"BLOB";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:9];
  v1 = PLVTypeToPLSQLiteType;
  PLVTypeToPLSQLiteType = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3 = +[PLArchiveManager sharedInstance];
    [v3 setEnabled:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = PLCoreStorage;
  [(PLCoreStorage *)&v6 dealloc];
}

- (void)setupStorageVersions
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = +[PowerlogCore sharedCore];
  v4 = [v3 storage];
  v5 = [v4 storageLocked];

  if ((v5 & 1) != 0 || +[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    goto LABEL_10;
  }

  v6 = [(PLCoreStorage *)self connection];
  v7 = [v6 tableExistsForTableName:@"PLCoreStorage_schemaVersions"];

  if ((v7 & 1) == 0)
  {
    v18[0] = @"column-name";
    v18[1] = @"type";
    v19[0] = @"tableName";
    v19[1] = @"TEXT";
    v20[0] = &unk_1F540C7E8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v20[1] = v9;
    v16[0] = @"column-name";
    v16[1] = @"type";
    v17[0] = @"schemaVersion";
    v17[1] = @"REAL";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v20[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];

    v12 = [(PLCoreStorage *)self connection];
    [v12 createTableName:@"PLCoreStorage_schemaVersions" withColumns:v11];

    v13 = [(PLCoreStorage *)self connection];
    [v13 setSchemaVersion:@"PLCoreStorage_schemaVersions" forTableName:1.08];

    v14 = [(PLCoreStorage *)self connection];
    [v14 createIndexOnTable:@"PLCoreStorage_schemaVersions" forColumn:@"tableName"];

    goto LABEL_10;
  }

  if (![(PLCoreStorage *)self verifySchemaVersionOfTable:@"PLCoreStorage_schemaVersions" matchesExpectedVersion:1.08])
  {
LABEL_10:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *MEMORY[0x1E69E9840];

  [(PLCoreStorage *)self handleSchemaMismatchForTable:@"PLCoreStorage_schemaVersions" expectedVersion:2 schemaMatch:1.08];
}

- (void)startStorage
{
  if (+[PLUtilities PreUnlockTelemetryEnabled](PLUtilities, "PreUnlockTelemetryEnabled") || (+[PowerlogCore sharedCore](PowerlogCore, "sharedCore"), v3 = objc_claimAutoreleasedReturnValue(), [v3 storage], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "storageLocked"), v4, v3, (v5 & 1) == 0))
  {
    v6 = objc_autoreleasePoolPush();
    [(PLCoreStorage *)self setupStorageVersions];
    v7 = [PLUtilities workQueueForClass:objc_opt_class()];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__PLCoreStorage_startStorage__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_async_and_wait(v7, block);

    v8 = +[PLTimeManager sharedInstance];
    v9 = [(PLCoreStorage *)self storageOperator];
    [v8 setStorageOperator:v9];

    v10 = +[PLTimeManager sharedInstance];
    [v10 initializeTimeOffsets];

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities shouldLogPreUnlockTelemetry](PLUtilities, "shouldLogPreUnlockTelemetry") && !+[PLUtilities isPowerexceptionsd](PLUtilities, "isPowerexceptionsd") && !+[PLUtilities isPerfPowerMetricd])
    {
      [(PLCoreStorage *)self cleanupTmp];
      [(PLCoreStorage *)self removeOldPowerlogFiles];
      if ([PLDefaults BOOLForKey:@"removedIDIndex" ifNotSet:0])
      {
        v11 = [(PLCoreStorage *)self connection];
        [v11 removeIDIndexes];

        [PLDefaults setObject:MEMORY[0x1E695E118] forKey:@"removedIDIndex" saveToDisk:1];
      }

      [(PLCoreStorage *)self registerDailyTasks];
      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [PLD_ManagedPreferencePath stringByAppendingString:@"/com.apple.powerlogd.plist"];
      v14 = [v12 fileExistsAtPath:v13];

      v15 = [PLKQueue alloc];
      v16 = PLD_ManagedPreferencePath;
      v17 = [PLUtilities workQueueForKey:@"profileDefaultsKQueue"];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __29__PLCoreStorage_startStorage__block_invoke_2;
      v21[3] = &unk_1E85199A8;
      v22 = v14;
      v21[4] = self;
      v18 = [(PLKQueue *)v15 initWithPath:v16 withDispatchQueue:v17 withBlock:v21];

      [(PLCoreStorage *)self setProfileDefaultsKQueue:v18];
      v19 = [(PLCoreStorage *)self profileDefaultsKQueue];
      [v19 setEnabled:1];

      [(PLCoreStorage *)self addAggdModeKeys];
      v20 = [PLUtilities workQueueForClass:objc_opt_class()];
      [PLDefaults registerEPLNotificationWithQueue:v20];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __29__PLCoreStorage_startStorage__block_invoke(uint64_t a1)
{
  [PLEntryKey setupEntryObjectsForOperatorClass:objc_opt_class()];
  v2 = +[(PLOperator *)PLStorageOperator];
  [*(a1 + 32) setStorageOperator:v2];

  v3 = *(a1 + 32);
  v4 = [v3 storageOperator];
  [v3 setupStorageForOperator:v4];
}

void __29__PLCoreStorage_startStorage__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [PLD_ManagedPreferencePath stringByAppendingString:@"/com.apple.powerlogd.plist"];
  v4 = [v2 fileExistsAtPath:v3];

  if (*(a1 + 40) != v4)
  {
    if (+[PLDefaults debugEnabled])
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __29__PLCoreStorage_startStorage__block_invoke_3;
      v16 = &unk_1E8519630;
      v17 = @"profileDefaults";
      v18 = v6;
      if (kPLTaskingEndNotification_block_invoke_2_defaultOnce != -1)
      {
        dispatch_once(&kPLTaskingEndNotification_block_invoke_2_defaultOnce, &v13);
      }

      v7 = kPLTaskingEndNotification_block_invoke_2_classDebugEnabled;

      if (v7 == 1)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** WARNING *** SystemDebugProfile installed/uninstalled, bouncing powerlogd", v13, v14, v15, v16];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage startStorage]_block_invoke_2"];
        [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:419];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [PLUtilities exitWithReason:3, v13, v14, v15, v16];
  }
}

BOOL __29__PLCoreStorage_startStorage__block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_2_classDebugEnabled = result;
  return result;
}

- (void)addAggdModeKeys
{
  +[PLDefaults fullMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults fullMode])
  {
    AnalyticsSendEventLazy();
  }

  +[PLDefaults liteMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults liteMode])
  {
    AnalyticsSendEventLazy();
  }

  +[PLDefaults taskMode];
  PLADClientAddValueForScalarKey();
  if (+[PLDefaults taskMode])
  {

    AnalyticsSendEventLazy();
  }
}

- (void)stopStorage
{
  v3 = +[PLSubmissions sharedInstance];
  [v3 stopDRTasking];

  if (_os_feature_enabled_impl() && +[PLPlatform internalBuild])
  {
    +[PPSSignpostController unregisterDataCollectionActivity];
  }

  v4 = +[PLRapidController sharedInstance];
  [v4 stopDRTasking];

  v5 = +[PPSSafeguardController sharedInstance];
  [v5 unregisterDataCollectionActivity];

  [(PLCoreStorage *)self blockingFlushCachesWithReason:@"stopStorage"];
}

- (void)configureCacheFlush
{
  v3 = [PLCFNotificationOperatorComposition alloc];
  v4 = [PLUtilities workQueueForClass:objc_opt_class()];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke;
  v20[3] = &unk_1E8519090;
  v20[4] = self;
  v5 = [(PLCFNotificationOperatorComposition *)v3 initWithWorkQueue:v4 forNotification:@"com.apple.powerlogd.flushCaches" requireState:0 withBlock:v20];

  [(PLCoreStorage *)self setFlushCachesCFNotification:v5];
  v6 = [PLCFNotificationOperatorComposition alloc];
  v7 = [PLUtilities workQueueForClass:objc_opt_class()];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_2;
  v19[3] = &unk_1E8519090;
  v19[4] = self;
  v8 = [(PLCFNotificationOperatorComposition *)v6 initWithWorkQueue:v7 forNotification:@"com.apple.powerlogd.blockingFlushCaches" requireState:0 withBlock:v19];

  [(PLCoreStorage *)self setBlockingFlushCachesCFNotification:v8];
  v9 = [PLXPCResponderOperatorComposition alloc];
  backgroundQueue = self->_backgroundQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_3;
  v18[3] = &unk_1E85199F0;
  v18[4] = self;
  v11 = [(PLXPCResponderOperatorComposition *)v9 initWithWorkQueue:backgroundQueue withRegistration:&unk_1F540C888 withBlock:v18];
  [(PLCoreStorage *)self setXPCFlushCacheResponder:v11];
  if ([PLDefaults BOOLForKey:@"CacheFlushTimerEnabled" ifNotSet:1])
  {
    v12 = [PLTimer alloc];
    v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:30.0];
    v14 = [PLDefaults longForKey:@"flushCachesInterval" ifNotSet:900];
    v15 = [PLUtilities workQueueForKey:@"CacheFlushTimer"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_4;
    v17[3] = &unk_1E8519A18;
    v17[4] = self;
    v16 = [(PLTimer *)v12 initWithFireDate:v13 withInterval:1 withTolerance:0 repeats:v15 withUserInfo:v17 withQueue:v14 withBlock:0.0];

    [(PLCoreStorage *)self setFlushCachesTimer:v16];
  }
}

void __36__PLCoreStorage_configureCacheFlush__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) blockingFlushCachesWithReason:@"CFNotification"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlogd.blockingFlushCaches.complete", 0, 0, 4u);
}

void __36__PLCoreStorage_configureCacheFlush__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [PLUtilities workQueueForClass:objc_opt_class()];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PLCoreStorage_configureCacheFlush__block_invoke_5;
  block[3] = &unk_1E85190B8;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

- (void)initOperatorDependancies
{
  v63[6] = *MEMORY[0x1E69E9840];
  [(PLCoreStorage *)self setStorageReady:1];
  if (+[PLUtilities shouldLogPreUnlockTelemetry])
  {
    [(PLCoreStorage *)self logPreUnlockState:1];
    v3 = *MEMORY[0x1E69E9840];

    [(PLCoreStorage *)self configureCacheFlush];
    return;
  }

  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    [(PLCoreStorage *)self removeErroneousQualificationEntries];
    v58 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C8D8 withBlock:&__block_literal_global_295];
    [(PLCoreStorage *)self setSafeFileResponder:v58];
    v4 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C900 withBlock:&__block_literal_global_329];
    [(PLCoreStorage *)self setBlPathResponder:v4];
    v5 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C928 withBlock:&__block_literal_global_338];
    [(PLCoreStorage *)self setArchivesResponder:v5];
    v6 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C950 withBlock:&__block_literal_global_350];
    [(PLCoreStorage *)self setQuarantineResponder:v6];
    v7 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C978 withBlock:&__block_literal_global_362];
    [(PLCoreStorage *)self setQuarantineCopyResponder:v7];
    v8 = [[PLXPCResponderOperatorComposition alloc] initWithWorkQueue:self->_backgroundQueue withRegistration:&unk_1F540C9A0 withBlock:&__block_literal_global_371];
    [(PLCoreStorage *)self setBatteryUIPlistsResponder:v8];
    v9 = [PLXPCResponderOperatorComposition alloc];
    backgroundQueue = self->_backgroundQueue;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __41__PLCoreStorage_initOperatorDependancies__block_invoke_7;
    v61[3] = &unk_1E85199F0;
    v61[4] = self;
    v11 = [(PLXPCResponderOperatorComposition *)v9 initWithWorkQueue:backgroundQueue withRegistration:&unk_1F540C9C8 withBlock:v61];
    [(PLCoreStorage *)self setUpgradeLogsResponder:v11];
    v12 = +[PLSubmissions sharedInstance];
    v13 = [(PLCoreStorage *)self storageOperator];
    [v12 setStorageOperator:v13];

    v14 = +[PLArchiveManager sharedInstance];
    [v14 setEnabled:1];
  }

  v15 = [(PLCoreStorage *)self storageLocked];
  v16 = +[PLDefaults fullMode];
  if (v15)
  {
    if (v16)
    {
      v17 = kPLStorageModeLockedFull;
      goto LABEL_17;
    }

    v18 = +[PLDefaults taskMode];
    v17 = kPLStorageModeLockedLite;
    v19 = kPLStorageModeLockedTask;
LABEL_15:
    if (v18)
    {
      v17 = v19;
    }

    goto LABEL_17;
  }

  if (!v16)
  {
    v18 = +[PLDefaults taskMode];
    v17 = kPLStorageModeLite;
    v19 = kPLStorageModeTask;
    goto LABEL_15;
  }

  v17 = kPLStorageModeFull;
LABEL_17:
  v20 = *v17;
  v21 = 0x1E8518000;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    if ([PLDefaults objectExistsForKey:@"PLUUID"])
    {
      v22 = [PLDefaults objectForKey:@"PLUUID" synchronize:1];
      [(PLCoreStorage *)self setUuid:v22];
    }

    else
    {
      v23 = [MEMORY[0x1E696AFB0] UUID];
      v24 = [v23 UUIDString];
      [(PLCoreStorage *)self setUuid:v24];

      v22 = [(PLCoreStorage *)self uuid];
      [PLDefaults setObject:v22 forKey:@"PLUUID" saveToDisk:1];
    }

    v25 = [PLDefaults longForKey:@"PLExitReasonKey" ifNotSet:-1];
    [PLDefaults setObject:0 forKey:@"PLExitReasonKey" saveToDisk:1];
    v59 = [(PLCoreStorage *)self storageOperator];
    v62[0] = @"Mode";
    v62[1] = @"Version";
    v57 = v20;
    v63[0] = v20;
    v63[1] = &unk_1F540A3A0;
    v62[2] = @"PID";
    v26 = MEMORY[0x1E696AD98];
    v56 = [MEMORY[0x1E696AE30] processInfo];
    [v26 numberWithInt:{objc_msgSend(v56, "processIdentifier")}];
    v28 = v27 = 0x1E696A000;
    v63[2] = v28;
    v62[3] = @"ProcessName";
    v29 = [MEMORY[0x1E696AE30] processInfo];
    v30 = [v29 processName];
    v63[3] = v30;
    v62[4] = @"ExitReason";
    v31 = [MEMORY[0x1E696AD98] numberWithLong:v25];
    v63[4] = v31;
    v62[5] = @"DefaultsEnabled";
    v32 = [PLDefaults BOOLForKey:@"logDefaultsToDB" ifNotSet:0];
    if (v32)
    {
      v27 = +[PLDefaults allDefaultsEnabled];
      [v27 description];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v33 = ;
    v63[5] = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:6];
    [v59 logEventForwardConfiguration:v34];

    if (v32)
    {

      v33 = v27;
    }

    v35 = +[PLSubmissions sharedInstance];
    [v35 taskingModeSafeguard];

    v36 = +[PLSubmissions sharedInstance];
    [v36 taskingModeSetup];

    v20 = v57;
    v21 = 0x1E8518000uLL;
    if (_os_feature_enabled_impl() && +[PLPlatform internalBuild])
    {
      +[PPSSignpostController registerDataCollectionActivity];
    }
  }

  v37 = +[PLRapidController sharedInstance];
  [v37 registerDataCollectionActivity];

  if ([*(v21 + 2352) internalBuild] && _os_feature_enabled_impl())
  {
    v38 = +[PPSSafeguardController sharedInstance];
    [v38 registerDataCollectionActivity];
  }

  [(PLCoreStorage *)self configureCacheFlush];
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v39 = [MEMORY[0x1E69DF068] sharedManager];
    [v39 registerUserSwitchStakeHolder:self];
  }

  v40 = objc_autoreleasePoolPush();
  v41 = MEMORY[0x1E695DFF8];
  v42 = +[PLUtilities containerPath];
  v43 = [v41 fileURLWithPath:v42];

  v44 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v45 = *MEMORY[0x1E695DB80];
  v60 = 0;
  v46 = [v43 setResourceValue:v44 forKey:v45 error:&v60];
  v47 = v60;

  if ((v46 & 1) == 0)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = [v43 lastPathComponent];
    v50 = [v48 stringWithFormat:@"Error excluding %@ from backup %@", v49, v47];

    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    v52 = [v51 lastPathComponent];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage initOperatorDependancies]"];
    [PLCoreStorage logMessage:v50 fromFile:v52 fromFunction:v53 fromLineNumber:837];

    v54 = PLLogCommon();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  objc_autoreleasePoolPop(v40);
  v55 = *MEMORY[0x1E69E9840];
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Received safe log file request from %d, %@", a2, a3];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
  v10 = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage initOperatorDependancies]_block_invoke"];
  [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:531];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v8;
    _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v13 = [v7 mutableCopy];
  v14 = +[PLFileStats logStartDate];
  v15 = [v14 convertFromMonotonicToSystem];

  v16 = +[PLFileStats logEndDate];
  v17 = [v16 convertFromMonotonicToSystem];

  v18 = [v13 objectForKeyedSubscript:@"clean"];
  if (v18)
  {
    v19 = v18;
    v20 = [v13 objectForKeyedSubscript:@"folder"];

    if (v20)
    {
      v21 = [v13 objectForKeyedSubscript:@"folder"];
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      buf[0] = 0;
      if ([v22 fileExistsAtPath:v21 isDirectory:buf] && buf[0] == 1)
      {
        v60 = v7;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v23 = [v22 contentsOfDirectoryAtPath:v21 error:0];
        v24 = [v23 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v63;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v63 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = [v21 stringByAppendingString:*(*(&v62 + 1) + 8 * i)];
              [v22 removeItemAtPath:v28 error:0];
            }

            v25 = [v23 countByEnumeratingWithState:&v62 objects:v70 count:16];
          }

          while (v25);
        }

        v7 = v60;
      }

      v29 = v7;
      v68[0] = @"path";
      v30 = [v13 objectForKeyedSubscript:@"folder"];
      v69[0] = v30;
      v68[1] = @"startDate";
      v31 = v15;
      if (!v15)
      {
        v31 = [MEMORY[0x1E695DFB0] null];
      }

      v69[1] = v31;
      v68[2] = @"endDate";
      v32 = v17;
      if (!v17)
      {
        v32 = [MEMORY[0x1E695DFB0] null];
      }

      v69[2] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:3];
      if (v17)
      {
        if (v15)
        {
LABEL_21:

          v7 = v29;
          goto LABEL_34;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_21;
    }
  }

  v34 = [v13 objectForKeyedSubscript:@"path"];

  if (v34)
  {
    v35 = +[PLSubmissions sharedInstance];
    [v35 generatePLLSubmissionWithPayload:v13];
LABEL_24:

    goto LABEL_28;
  }

  v61 = v7;
  v36 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:v15 endDate:v17];
  v37 = [v13 objectForKeyedSubscript:@"folder"];

  if (!v37)
  {
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/"];
    [v13 setObject:@"/tmp/powerlog/" forKeyedSubscript:@"folder"];
  }

  v38 = MEMORY[0x1E696AEC0];
  v39 = [v13 objectForKeyedSubscript:@"folder"];
  v40 = +[PLUtilities shortUUIDString];
  v41 = [v38 stringWithFormat:@"%@powerlog_%@_%@.PLSQL", v39, v36, v40];
  [v13 setObject:v41 forKeyedSubscript:@"path"];

  v42 = +[PLSubmissions sharedInstance];
  [v42 generatePLLSubmissionWithPayload:v13];

  v7 = v61;
  if (!v37)
  {
    v49 = [v13 objectForKeyedSubscript:@"path"];
    v35 = [v49 lastPathComponent];

    v50 = [v13 objectForKeyedSubscript:@"path"];
    v51 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v35];
    LOBYTE(v49) = [PLUtilities moveItemAtPath:v50 toPath:v51 withName:v35 error:0];

    if ((v49 & 1) == 0)
    {
      v52 = [MEMORY[0x1E696AC08] defaultManager];
      v53 = [v13 objectForKeyedSubscript:@"path"];
      v54 = [v13 objectForKeyedSubscript:@"path"];
      v55 = [v54 lastPathComponent];
      v56 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v55];
      [v52 moveItemAtPath:v53 toPath:v56 error:0];
    }

    v57 = [v13 objectForKeyedSubscript:@"path"];
    v58 = [v57 lastPathComponent];
    v59 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v58];
    [v13 setObject:v59 forKeyedSubscript:@"path"];

    v7 = v61;
    goto LABEL_24;
  }

LABEL_28:
  v43 = MEMORY[0x1E695DFF8];
  v44 = [v13 objectForKeyedSubscript:@"path"];
  v45 = [v43 URLWithString:v44];
  [PPSFileUtilities markAsPurgeable:v45 urgency:512 startDate:0];

  v66[0] = @"path";
  v21 = [v13 objectForKeyedSubscript:@"path"];
  v67[0] = v21;
  v66[1] = @"startDate";
  v22 = v15;
  if (!v15)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v67[1] = v22;
  v66[2] = @"endDate";
  v46 = v17;
  if (!v17)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v67[2] = v46;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:3];
  if (v17)
  {
    if (v15)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v15)
  {
LABEL_34:
  }

LABEL_35:

  v47 = *MEMORY[0x1E69E9840];

  return v33;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_327()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"BLPath";
  v0 = +[PLUtilities containerPath];
  v1 = [v0 stringByAppendingString:@"/Library/BatteryLife/"];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = [a5 mutableCopy];
  v6 = [v5 objectForKeyedSubscript:@"folder"];

  if (!v6)
  {
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/"];
    [v5 setObject:@"/tmp/powerlog/" forKeyedSubscript:@"folder"];
  }

  v47 = [MEMORY[0x1E695DF00] monotonicDate];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = +[PLArchiveManager archiveEntriesFinished];
  v7 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:@"disallow_resyncs"];
        if (![v12 BOOLValue])
        {

LABEL_12:
          v14 = [v5 objectForKeyedSubscript:@"folder"];
          v15 = [v11 compressedPath];
          v16 = [v15 lastPathComponent];
          v17 = [v14 stringByAppendingString:v16];

          v18 = [MEMORY[0x1E696AC08] defaultManager];
          v19 = [v11 compressedPath];
          [v18 copyItemAtPath:v19 toPath:v17 error:0];

          v20 = [MEMORY[0x1E695DFF8] URLWithString:v17];
          [PPSFileUtilities markAsPurgeable:v20 urgency:512 startDate:0];

          [v11 setSyncedOffDate:v47];
          continue;
        }

        v13 = [v11 syncedOff];

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v8);
  }

  if (!v43)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obja = +[PLArchiveManager allArchivePaths];
    v21 = [obja countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      v24 = @"folder";
      v25 = 0x1E696A000uLL;
      v44 = v5;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(obja);
          }

          v27 = *(*(&v48 + 1) + 8 * j);
          v28 = [v5 objectForKeyedSubscript:v24];
          v29 = [v27 lastPathComponent];
          v30 = [v28 stringByAppendingString:v29];

          v31 = [*(v25 + 3080) defaultManager];
          LODWORD(v29) = [v31 fileExistsAtPath:v30];

          if (v29)
          {
            v32 = [v27 lastPathComponent];
            v33 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v32];
            [PLUtilities moveItemAtPath:v30 toPath:v33 withName:v32 error:0];
            [MEMORY[0x1E695DFF8] URLWithString:v33];
            v34 = v22;
            v35 = v23;
            v36 = v24;
            v38 = v37 = v25;
            [PPSFileUtilities markAsPurgeable:v38 urgency:512 startDate:0];

            v25 = v37;
            v24 = v36;
            v23 = v35;
            v22 = v34;
            v5 = v44;
          }
        }

        v22 = [obja countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v22);
    }

    [v5 setObject:@"/var/mobile/Library/Logs/CrashReporter/" forKeyedSubscript:@"folder"];
  }

  v56 = @"folder";
  v39 = [v5 objectForKeyedSubscript:?];
  v57 = v39;
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0x1E8518000uLL;
  v8 = +[PLUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v10 = [v6 contentsOfDirectoryAtPath:v9 error:0];

  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [*(v7 + 2584) containerPath];
        v17 = [v16 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
        v18 = [v17 stringByAppendingString:v15];

        v19 = [v5 objectForKeyedSubscript:@"folder"];

        if (v19)
        {
          v20 = [v5 objectForKeyedSubscript:@"folder"];
          v21 = [v20 stringByAppendingString:v15];

          v22 = [MEMORY[0x1E696AC08] defaultManager];
          v23 = [v5 objectForKeyedSubscript:@"folder"];
          v24 = [v23 stringByAppendingString:v15];
          [v22 moveItemAtPath:v18 toPath:v24 error:0];
        }

        else
        {
          v21 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingString:v15];
          [*(v7 + 2584) moveItemAtPath:v18 toPath:v21 withName:v15 error:0];
        }

        v25 = [MEMORY[0x1E695DFF8] URLWithString:v21];
        [PPSFileUtilities markAsPurgeable:v25 urgency:512 startDate:0];

        v7 = 0x1E8518000;
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  v36 = @"folder";
  v26 = [v5 objectForKeyedSubscript:?];
  if (v26)
  {
    v27 = [v5 objectForKeyedSubscript:@"folder"];
  }

  else
  {
    v27 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v37 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  if (v26)
  {
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a5;
  v6 = [v5 objectForKeyedSubscript:@"folder"];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"folder"];
  }

  else
  {
    v7 = @"/var/mobile/Library/Logs/CrashReporter/";
  }

  v8 = +[PLUtilities containerPath];
  v9 = [v8 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  [PLUtilities PLCopyItemsFromPath:v9 toPath:v7];

  v13 = @"folder";
  v14[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9 && ([v9 objectForKeyedSubscript:@"folder"], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = +[PLUtilities containerPath];
    v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/Debug/"];

    v14 = [v10 objectForKeyedSubscript:@"folder"];
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v15 contentsOfDirectoryAtPath:v13 error:0];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __41__PLCoreStorage_initOperatorDependancies__block_invoke_6;
    v27 = &unk_1E8519A60;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v17 = v15;
    v18 = v14;
    v19 = v13;
    [v16 enumerateObjectsUsingBlock:&v24];
    v31 = @"folder";
    v20 = [v10 objectForKeyedSubscript:{@"folder", v24, v25, v26, v27}];
    v32[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __41__PLCoreStorage_initOperatorDependancies__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 stringByAppendingString:v4];
  v5 = [*(a1 + 40) stringByAppendingString:v4];

  [*(a1 + 48) copyItemAtPath:v7 toPath:v5 error:0];
  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [PPSFileUtilities markAsPurgeable:v6 urgency:512 startDate:0];
}

id __41__PLCoreStorage_initOperatorDependancies__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = [a5 mutableCopy];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __41__PLCoreStorage_initOperatorDependancies__block_invoke_7_cold_1();
  }

  if (v6 && ([v6 objectForKeyedSubscript:@"folder"], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = *(a1 + 32);
    v10 = +[PLUtilities containerPath];
    v11 = [v10 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
    v12 = [v6 objectForKeyedSubscript:@"folder"];
    [v9 copyUpgradePowerlogsAtPath:v11 toPath:v12];

    v13 = *(a1 + 32);
    v14 = +[PLUtilities containerPath];
    v15 = [v14 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
    v16 = [v6 objectForKeyedSubscript:@"folder"];
    [v13 copyUpgradePowerlogsAtPath:v15 toPath:v16];

    v21 = @"folder";
    v17 = [v6 objectForKeyedSubscript:@"folder"];
    v22[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F8];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)copyUpgradePowerlogsAtPath:(id)a3 toPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 contentsOfDirectoryAtPath:v5 error:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke;
  v12[3] = &unk_1E8519A60;
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [v8 enumerateObjectsUsingBlock:v12];
}

void __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] stringByAppendingPathComponent:v3];
  v5 = [a1[5] contentsOfDirectoryAtPath:v4 error:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2;
  v8[3] = &unk_1E8519A60;
  v9 = v4;
  v10 = v3;
  v11 = a1[6];
  v6 = v3;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 stringByAppendingPathComponent:v4];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"UpgradeLogs", *(a1 + 40), v4];

  v7 = [*(a1 + 48) stringByAppendingPathComponent:v6];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2_cold_1();
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v14 = 0;
  v10 = [v9 copyItemAtPath:v5 toPath:v7 error:&v14];
  v11 = v14;

  if (v10)
  {
    v12 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    [PPSFileUtilities markAsPurgeable:v12 urgency:512 startDate:0];
  }

  else
  {
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&dword_1D8611000, v12, OS_LOG_TYPE_ERROR, "Failed to copy upgrade logs at path: %@ to path: %@ with error: %@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeOldPowerlogFiles
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtPath:@"/var/mobile/Library/BatteryLife" error:0];
}

- (BOOL)registerDailyTasks
{
  if (+[PLUtilities isLiteModeDaemon](PLUtilities, "isLiteModeDaemon") || (v3 = +[PLUtilities isFullModeDaemon]))
  {
    [PLDefaults doubleForKey:@"dbDailyTasksInterval" ifNotSet:-1.0];
    v5 = v4;
    v6 = +[PLDefaults debugEnabled];
    if (v5 <= 0.0)
    {
      if (v6)
      {
        v18 = objc_opt_class();
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_430;
        v30[3] = &unk_1E8519630;
        v31 = @"DailyTasks";
        v32 = v18;
        if (registerDailyTasks_defaultOnce_428 != -1)
        {
          dispatch_once(&registerDailyTasks_defaultOnce_428, v30);
        }

        v19 = registerDailyTasks_classDebugEnabled_429;

        if (v19 == 1)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setting up dailyTaskNotification dbDailyTasksInterval=%f", *&v5];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          v22 = [v21 lastPathComponent];
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]"];
          [PLCoreStorage logMessage:v20 fromFile:v22 fromFunction:v23 fromLineNumber:893];

          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v25 = [PLNSNotificationOperatorComposition alloc];
      utilityQueue = self->_utilityQueue;
      v27 = *MEMORY[0x1E695D810];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_435;
      v29[3] = &unk_1E8519090;
      v29[4] = self;
      v17 = [(PLNSNotificationOperatorComposition *)v25 initWithWorkQueue:utilityQueue forNotification:v27 withBlock:v29];
      [(PLCoreStorage *)self setDailyTaskNotification:v17];
    }

    else
    {
      if (v6)
      {
        v7 = objc_opt_class();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke;
        block[3] = &unk_1E8519630;
        v35 = @"DailyTasks";
        v36 = v7;
        if (registerDailyTasks_defaultOnce != -1)
        {
          dispatch_once(&registerDailyTasks_defaultOnce, block);
        }

        v8 = registerDailyTasks_classDebugEnabled;

        if (v8 == 1)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Setting up dailyTaskTimer with dbDailyTasksInterval=%f", *&v5];
          v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          v11 = [v10 lastPathComponent];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]"];
          [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:884];

          v13 = PLLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v14 = [PLTimer alloc];
      v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v5];
      v16 = self->_utilityQueue;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __35__PLCoreStorage_registerDailyTasks__block_invoke_424;
      v33[3] = &unk_1E8519A18;
      v33[4] = self;
      v17 = [(PLTimer *)v14 initWithFireDate:v15 withInterval:1 withTolerance:0 repeats:v16 withUserInfo:v33 withQueue:v5 withBlock:0.0];

      [(PLCoreStorage *)self setDailyTaskTimer:v17];
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  registerDailyTasks_classDebugEnabled = result;
  return result;
}

uint64_t __35__PLCoreStorage_registerDailyTasks__block_invoke_424(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__PLCoreStorage_registerDailyTasks__block_invoke_2;
    v14 = &unk_1E8519630;
    v15 = @"DailyTasks";
    v16 = v3;
    if (kPLTaskingEndNotification_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_3_defaultOnce, &v11);
    }

    v4 = kPLTaskingEndNotification_block_invoke_3_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DailyTasks timer!", v11, v12, v13, v14];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]_block_invoke"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:887];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_3_classDebugEnabled = result;
  return result;
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_430(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  registerDailyTasks_classDebugEnabled_429 = result;
  return result;
}

uint64_t __35__PLCoreStorage_registerDailyTasks__block_invoke_435(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __35__PLCoreStorage_registerDailyTasks__block_invoke_2_436;
    v14 = &unk_1E8519630;
    v15 = @"DailyTasks";
    v16 = v3;
    if (kPLTaskingEndNotification_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_4_defaultOnce, &v11);
    }

    v4 = kPLTaskingEndNotification_block_invoke_4_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DailyTasks notification!", v11, v12, v13, v14];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage registerDailyTasks]_block_invoke"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:896];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

BOOL __35__PLCoreStorage_registerDailyTasks__block_invoke_2_436(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_4_classDebugEnabled = result;
  return result;
}

- (void)dailyTasks
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "DailyTasks fire!", buf, 2u);
  }

  v4 = [(PLCoreStorage *)self connection];
  [v4 removeEmptyOldTables];

  [(PLCoreStorage *)self cleanupTmp];
  [(PLCoreStorage *)self cleanupQuarantine];
  v5 = +[PLSubmissions sharedInstance];
  [v5 generateOTASubmissionAndSendTaskingEndSubmission:1];

  v6 = +[PLDefaults fullMode];
  v7 = @"com.apple.powerlogd.litemodesize";
  if (v6)
  {
    v7 = @"com.apple.powerlogd.fullmodesize";
  }

  v8 = v7;
  v9 = +[PLUtilities containerPath];
  v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  [PLFileStats fileSizeAtPath:v10];
  PLADClientAddValueForScalarKey();

  v11 = +[PLDefaults fullMode];
  v12 = @"litemode";
  if (v11)
  {
    v12 = @"fullmode";
  }

  v13 = v12;
  AnalyticsSendEventLazy();
  v14 = +[PLArchiveManager lastArchivePath];
  if (v14)
  {
    [(__CFString *)v8 stringByAppendingString:@".compressed"];
    [PLFileStats fileSizeAtPath:v14];
    PLADClientAddValueForScalarKey();
    v17 = v13;
    v18 = v14;
    AnalyticsSendEventLazy();
  }

  v15 = PLLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "DailyTasks reporting perf stats to CA", buf, 2u);
  }

  [(PLCoreStorage *)self reportPerfStats];
  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "DailyTasks done!", buf, 2u);
  }
}

id __27__PLCoreStorage_dailyTasks__block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = *(a1 + 32);
  v8[0] = @"mode";
  v8[1] = @"size";
  v1 = MEMORY[0x1E696AD98];
  v2 = +[PLUtilities containerPath];
  v3 = [v2 stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v4 = [v1 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v3)}];
  v8[2] = @"compressed";
  v9[1] = v4;
  v9[2] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __27__PLCoreStorage_dailyTasks__block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v6[0] = @"mode";
  v6[1] = @"size";
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v1)}];
  v6[2] = @"compressed";
  v7[1] = v2;
  v7[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)applyContainerPOSIXPermissions
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

id __47__PLCoreStorage_applyContainerPOSIXPermissions__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  [v2 setObject:v3 forKeyedSubscript:@"DidSetPermissions"];

  return v2;
}

- (void)reportPerfStats
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [&unk_1F540B788 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v15;
    *&v3 = 138412290;
    v12 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(&unk_1F540B788);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [PLUtilities getPerfStatsForProcess:v7, v12];
        v9 = v8;
        if (v8)
        {
          v13 = v8;
          AnalyticsSendEventLazy();
          v10 = v13;
        }

        else
        {
          v10 = PLLogCommon();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v19 = v7;
            _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "DailyTasks perf stats not available for %@", buf, 0xCu);
          }
        }
      }

      v4 = [&unk_1F540B788 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)cleanupTmp
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSTemporaryDirectory();
  v59 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v59];
  v5 = v59;

  v44 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v41 = *MEMORY[0x1E696A308];
    v9 = @".PLSQL";
    do
    {
      v10 = 0;
      v47 = v7;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * v10);
        if (([v11 hasSuffix:v9] & 1) != 0 || (objc_msgSend(v11, "hasSuffix:", @".PLSQL-shm") & 1) != 0 || objc_msgSend(v11, "hasSuffix:", @".PLSQL-wal"))
        {
          if ([v11 hasPrefix:@"PLSafeFileInprogress_"])
          {
            v12 = [v11 stringByReplacingOccurrencesOfString:@"PLSafeFileInprogress_" withString:&stru_1F539D228];
            v13 = [v12 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F539D228];

            v14 = [(PLCoreStorage *)self safeCopyInProgress];
            v15 = [v14 containsObject:v13];

            if ((v15 & 1) == 0)
            {
              [v44 addObject:v11];
            }
          }

          else
          {
            v16 = v8;
            v17 = v9;
            v18 = [MEMORY[0x1E696AC08] defaultManager];
            v19 = MEMORY[0x1E696AEC0];
            v20 = NSTemporaryDirectory();
            v21 = [v19 stringWithFormat:@"%@/%@", v20, v11];
            v54 = v5;
            v13 = [v18 attributesOfItemAtPath:v21 error:&v54];
            v22 = v54;

            v23 = [v13 objectForKeyedSubscript:v41];
            [v23 timeIntervalSinceNow];
            if (v24 < -7200.0)
            {
              [v44 addObject:v11];
            }

            v5 = v22;
            v9 = v17;
            v8 = v16;
            v7 = v47;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v7);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = v44;
  v25 = [v45 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v48 = *v51;
    do
    {
      v27 = 0;
      v28 = v5;
      v43 = v26;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v29 = *(*(&v50 + 1) + 8 * v27);
        v30 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = MEMORY[0x1E696AEC0];
        v32 = NSTemporaryDirectory();
        v33 = [v31 stringWithFormat:@"%@/%@", v32, v29];
        v49 = v28;
        v34 = [v30 removeItemAtPath:v33 error:&v49];
        v5 = v49;

        if ((v34 & 1) == 0)
        {
          v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to remove file %@ %@", v29, v5];
          v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          v37 = [v36 lastPathComponent];
          v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage cleanupTmp]"];
          [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1050];

          v39 = PLLogCommon();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = v35;
            _os_log_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v26 = v43;
        }

        ++v27;
        v28 = v5;
      }

      while (v26 != v27);
      v26 = [v45 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v26);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)cleanupQuarantine
{
  v51 = *MEMORY[0x1E69E9840];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[PLUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
  v5 = [v2 contentsOfDirectoryAtPath:v4 error:0];

  v6 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v46;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        v11 = +[PLUtilities containerPath];
        v12 = [v11 stringByAppendingString:@"/Library/BatteryLife/Quarantine/"];
        v13 = [v12 stringByAppendingString:v10];

        v14 = [MEMORY[0x1E696AC08] defaultManager];
        v15 = [v14 attributesOfItemAtPath:v13 error:0];

        v16 = [v15 fileModificationDate];
        v17 = [MEMORY[0x1E695DF00] date];
        [v17 timeIntervalSinceDate:v16];
        v19 = v18;

        if (v19 > 604800.0)
        {
          v20 = [MEMORY[0x1E696AC08] defaultManager];
          [v20 removeItemAtPath:v13 error:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v7);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = +[PLUtilities containerPath];
  v23 = [v22 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
  v24 = [v21 contentsOfDirectoryAtPath:v23 error:0];

  v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * v28);
        v30 = +[PLUtilities containerPath];
        v31 = [v30 stringByAppendingString:@"/Library/PerfPowerTelemetry/Quarantine/"];
        v32 = [v31 stringByAppendingString:v29];

        v33 = [MEMORY[0x1E696AC08] defaultManager];
        v34 = [v33 attributesOfItemAtPath:v32 error:0];

        v35 = [v34 fileModificationDate];
        v36 = [MEMORY[0x1E695DF00] date];
        [v36 timeIntervalSinceDate:v35];
        v38 = v37;

        if (v38 > 604800.0)
        {
          v39 = [MEMORY[0x1E696AC08] defaultManager];
          [v39 removeItemAtPath:v32 error:0];
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v26);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)handleSchemaMismatchForTable:(id)a3 expectedVersion:(double)a4 schemaMatch:(signed __int16)a5
{
  v211[3] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [(PLCoreStorage *)self connection];
  [v9 schemaVersionForTable:v8];
  v11 = v10;

  if (v11 != a4)
  {
    v12 = [(PLCoreStorage *)self storageOperator];
    v211[0] = v8;
    v210[0] = @"TableName";
    v210[1] = @"PreviousVersion";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v211[1] = v13;
    v210[2] = @"CurrentVersion";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v211[2] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v211 forKeys:v210 count:3];
    [v12 logEventForwardSchemaChange:v15];
  }

  v16 = 0;
  if (v7 <= 65533)
  {
    if (!v7)
    {
      if (+[PLDefaults debugEnabled])
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! Do not call handleSchemaMismatchForTable with PLSchemaVersionSame"];
        v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v86 = [v85 lastPathComponent];
        v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
        [PLCoreStorage logMessage:v17 fromFile:v86 fromFunction:v87 fromLineNumber:1094];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
LABEL_72:
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

LABEL_73:

        v16 = 0;
        goto LABEL_113;
      }

LABEL_74:
      v16 = 0;
      goto LABEL_114;
    }

    if (v7 == 65533)
    {
      if (+[PLDefaults debugEnabled])
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! Do not call handleSchemaMismatchForTable with PLSchemaVersionNone"];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
        [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:1098];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

    goto LABEL_99;
  }

  v156 = self;
  if (v7 == 65534)
  {
    v88 = [(PLCoreStorage *)self connection];
    v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE '%@' RENAME TO 'PLOLD_%@_%f'", v8, v8, *&v11];;
    v90 = [v88 performQuery:v89];

    v91 = [(PLCoreStorage *)self connection];
    LODWORD(v89) = [v91 tableExistsForTableName:v8];

    if (v89)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to move %@", v8];
      goto LABEL_103;
    }

    v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Dynamic", v8];
    v93 = [(PLCoreStorage *)self connection];
    v94 = [v93 tableExistsForTableName:v92];

    if (!v94)
    {
      goto LABEL_80;
    }

    v95 = [(PLCoreStorage *)self connection];
    v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE '%@' RENAME TO 'PLOLD_%@_%f'", v92, v92, *&v11];;
    v97 = [v95 performQuery:v96];

    v98 = [(PLCoreStorage *)self connection];
    LODWORD(v96) = [v98 tableExistsForTableName:v92];

    if (v96)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to move %@", v92];
      v7 = 3;
    }

    else
    {
LABEL_80:
      v155 = v92;
      v147 = v8;
      v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name LIKE %@_Array_%% AND name NOT LIKE PLOLD_%@_Array_%%", v8, v8];;
      v100 = [(PLCoreStorage *)self connection];
      v153 = v99;
      v101 = [v100 performQuery:v99];

      v191 = 0u;
      v192 = 0u;
      v189 = 0u;
      v190 = 0u;
      v102 = v101;
      v103 = [v102 countByEnumeratingWithState:&v189 objects:v209 count:16];
      v158 = v102;
      if (!v103)
      {
        goto LABEL_88;
      }

      v104 = v103;
      v105 = *v190;
      do
      {
        for (i = 0; i != v104; ++i)
        {
          if (*v190 != v105)
          {
            objc_enumerationMutation(v158);
          }

          v107 = *(*(&v189 + 1) + 8 * i);
          v108 = [(PLCoreStorage *)self connection];
          v109 = MEMORY[0x1E696AEC0];
          v110 = [v107 objectForKeyedSubscript:@"name"];
          v111 = [v107 objectForKeyedSubscript:@"name"];
          v112 = [v109 stringWithFormat:@"ALTER TABLE '%@' RENAME TO 'PLOLD_%@_%f'", v110, v111, *&v11];;
          v113 = [v108 performQuery:v112];

          self = v156;
          v114 = [(PLCoreStorage *)v156 connection];
          v115 = [v107 objectForKeyedSubscript:@"name"];
          LOBYTE(v108) = [v114 tableExistsForTableName:v115];

          if (v108)
          {
            v132 = MEMORY[0x1E696AEC0];
            v119 = [v107 objectForKeyedSubscript:@"name"];
            v16 = [v132 stringWithFormat:@"unable to move %@", v119];
            v7 = 3;
            v130 = v158;
            v131 = v158;
            v8 = v147;
            v92 = v155;
            goto LABEL_97;
          }
        }

        v102 = v158;
        v104 = [v158 countByEnumeratingWithState:&v189 objects:v209 count:16];
      }

      while (v104);
LABEL_88:
      v116 = ;
      v117 = [(PLCoreStorage *)self connection];
      v150 = v116;
      v118 = [v117 performQuery:v116];

      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v119 = v118;
      v120 = [v119 countByEnumeratingWithState:&v185 objects:v208 count:16];
      if (v120)
      {
        v121 = v120;
        v122 = *v186;
        do
        {
          for (j = 0; j != v121; ++j)
          {
            if (*v186 != v122)
            {
              objc_enumerationMutation(v119);
            }

            v124 = *(*(&v185 + 1) + 8 * j);
            v125 = [(PLCoreStorage *)self connection];
            v126 = MEMORY[0x1E696AEC0];
            v127 = [v124 objectForKeyedSubscript:@"name"];
            v128 = [v126 stringWithFormat:@"DROP INDEX %@", v127];;
            v129 = [v125 performQuery:v128];

            self = v156;
          }

          v121 = [v119 countByEnumeratingWithState:&v185 objects:v208 count:16];
        }

        while (v121);
      }

      v8 = v147;
      [(PLCoreStorage *)self setupStorageForEntryKey:v147];
      v16 = 0;
      v7 = 65534;
      v92 = v155;
      v130 = v158;
      v131 = v150;
LABEL_97:
    }

LABEL_99:
    if ((v7 - 1) > 2)
    {
      goto LABEL_114;
    }

    if (v7 == 1)
    {

      v133 = 0;
      v16 = @"Previous Version Newer";
      v134 = 1;
      goto LABEL_105;
    }

    if (v7 == 2)
    {

      v16 = @"New File Required";
      v133 = 1;
      v134 = 2;
LABEL_105:
      v135 = [(PLCoreStorage *)self storageOperator];
      v201[0] = @"TableName";
      v201[1] = @"CurrentVersion";
      v202[0] = v16;
      v202[1] = &unk_1F5405CB8;
      v201[2] = @"PreviousVersion";
      v202[2] = &unk_1F5405CB8;
      v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v202 forKeys:v201 count:3];
      [v135 logEventForwardSchemaChange:v136];

      v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ERROR! PLSQLversion mismatch on %@! expectedVersion=%f schemaMatch=%d error=%@", v8, *&a4, v134, v16];
      v138 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v139 = [v138 lastPathComponent];
      v140 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
      [PLCoreStorage logMessage:v137 fromFile:v139 fromFunction:v140 fromLineNumber:1211];

      v141 = PLLogCommon();
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v142 = PLLogCommon();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v194 = v8;
        v195 = 2048;
        v196 = a4;
        v197 = 1024;
        v198 = v134;
        v199 = 2112;
        v200 = v16;
        _os_log_error_impl(&dword_1D8611000, v142, OS_LOG_TYPE_ERROR, "SQL mismatch on %@ (expected=%f schemaMatch=%d error=%@)", buf, 0x26u);
      }

      v17 = [(PLCoreStorage *)self connection];
      if (v133)
      {
        v143 = 1008;
      }

      else
      {
        v143 = 1007;
      }

      [PLUtilities exitWithReason:v143 connection:v17];
      goto LABEL_113;
    }

LABEL_103:
    v133 = 0;
    v134 = 3;
    goto LABEL_105;
  }

  v22 = [(PLCoreStorage *)self connection];
  v157 = [v22 tableInfo:v8];

  [PLEntryDefinition definitionForEntryKey:v8];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v154 = v184 = 0u;
  obj = [PLEntryDefinition allKeysForEntryDefinition:?];
  v151 = [obj countByEnumeratingWithState:&v181 objects:v207 count:16];
  if (!v151)
  {
    goto LABEL_44;
  }

  v148 = *v182;
  do
  {
    v23 = 0;
    do
    {
      if (*v182 != v148)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v181 + 1) + 8 * v23);
      v25 = [PLEntryDefinition keyConfigsForEntryDefinition:v154];
      v26 = [v25 objectForKey:v24];
      v27 = [v26 objectForKeyedSubscript:@"Type"];
      v28 = [v27 shortValue];

      if (v28)
      {
        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v29 = v157;
        v30 = [v29 countByEnumeratingWithState:&v174 objects:v206 count:16];
        if (v30)
        {
          v31 = *v175;
          while (2)
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v175 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [*(*(&v174 + 1) + 8 * k) objectForKeyedSubscript:@"name"];
              v34 = [v33 isEqualToString:v24];

              if (v34)
              {
                LOBYTE(v30) = 1;
                goto LABEL_26;
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v174 objects:v206 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        if (+[PLDefaults debugEnabled])
        {
          v35 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke_561;
          block[3] = &unk_1E8519630;
          v172 = @"schemaMismatch";
          v173 = v35;
          if (handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce_559 != -1)
          {
            dispatch_once(&handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce_559, block);
          }

          v36 = handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled_560;

          if (v36 == 1)
          {
            v37 = MEMORY[0x1E696AEC0];
            v38 = NSStringFromBOOL();
            v39 = [v37 stringWithFormat:@"%@ key=%@ existsInTable=%@", v8, v24, v38];

            v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v41 = [v40 lastPathComponent];
            v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
            [PLCoreStorage logMessage:v39 fromFile:v41 fromFunction:v42 fromLineNumber:1163];

            v43 = PLLogCommon();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v194 = v39;
              _os_log_debug_impl(&dword_1D8611000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        if ((v30 & 1) == 0)
        {
          v44 = MEMORY[0x1E696AEC0];
          v45 = PLVTypeToPLSQLiteType;
          v46 = [PLEntryDefinition keyConfigsForEntryDefinition:v154];
          v47 = [v46 objectForKey:v24];
          v48 = [v47 objectForKeyedSubscript:@"Type"];
          v49 = [v45 objectForKeyedSubscript:v48];
          v50 = [v44 stringWithFormat:@"ALTER TABLE '%@' ADD COLUMN '%@' %@", v8, v24, v49];;

          v51 = [(PLCoreStorage *)v156 connection];
          v52 = [v51 performQuery:v50];
LABEL_41:
        }
      }

      else if (+[PLDefaults debugEnabled])
      {
        v53 = objc_opt_class();
        v178[0] = MEMORY[0x1E69E9820];
        v178[1] = 3221225472;
        v178[2] = __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke;
        v178[3] = &unk_1E8519630;
        v179 = @"schemaMismatch";
        v180 = v53;
        if (handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce != -1)
        {
          dispatch_once(&handleSchemaMismatchForTable_expectedVersion_schemaMatch__defaultOnce, v178);
        }

        v54 = handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled;

        if (v54 == 1)
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ key=%@ skip arrays", v8, v24];
          v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
          v56 = [v55 lastPathComponent];
          v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage handleSchemaMismatchForTable:expectedVersion:schemaMatch:]"];
          [PLCoreStorage logMessage:v50 fromFile:v56 fromFunction:v57 fromLineNumber:1151];

          v51 = PLLogCommon();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v194 = v50;
            _os_log_debug_impl(&dword_1D8611000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          goto LABEL_41;
        }
      }

      ++v23;
    }

    while (v23 != v151);
    v151 = [obj countByEnumeratingWithState:&v181 objects:v207 count:16];
  }

  while (v151);
LABEL_44:

  v58 = [PLEntryDefinition overridesEntryDateForEntryKey:v8];
  v59 = MEMORY[0x1E695E0F8];
  if (v58)
  {
    v59 = &unk_1F540CA18;
  }

  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  obja = v59;
  v149 = [obja allKeys];
  v60 = [v149 countByEnumeratingWithState:&v167 objects:v205 count:16];
  if (v60)
  {
    v61 = v60;
    v152 = *v168;
    do
    {
      for (m = 0; m != v61; ++m)
      {
        if (*v168 != v152)
        {
          objc_enumerationMutation(v149);
        }

        v63 = *(*(&v167 + 1) + 8 * m);
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v64 = v157;
        v65 = [v64 countByEnumeratingWithState:&v163 objects:v204 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v164;
LABEL_53:
          v68 = 0;
          while (1)
          {
            if (*v164 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = [*(*(&v163 + 1) + 8 * v68) objectForKeyedSubscript:@"name"];
            v70 = [v69 isEqualToString:v63];

            if (v70)
            {
              break;
            }

            if (v66 == ++v68)
            {
              v66 = [v64 countByEnumeratingWithState:&v163 objects:v204 count:16];
              if (v66)
              {
                goto LABEL_53;
              }

              goto LABEL_59;
            }
          }
        }

        else
        {
LABEL_59:

          v71 = MEMORY[0x1E696AEC0];
          v72 = PLVTypeToPLSQLiteType;
          v73 = [obja objectForKeyedSubscript:v63];
          v74 = [v72 objectForKeyedSubscript:v73];
          v64 = [v71 stringWithFormat:@"ALTER TABLE '%@' ADD COLUMN '%@' %@", v8, v63, v74];;

          v75 = [(PLCoreStorage *)v156 connection];
          v76 = [v75 performQuery:v64];
        }
      }

      v61 = [v149 countByEnumeratingWithState:&v167 objects:v205 count:16];
    }

    while (v61);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v77 = [PLEntryDefinition allIndexKeysForEntryKey:v8];
  v78 = [v77 countByEnumeratingWithState:&v159 objects:v203 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v160;
    do
    {
      for (n = 0; n != v79; ++n)
      {
        if (*v160 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v159 + 1) + 8 * n);
        v83 = [(PLCoreStorage *)v156 connection];
        [v83 createIndexOnTable:v8 forColumn:v82];
      }

      v79 = [v77 countByEnumeratingWithState:&v159 objects:v203 count:16];
    }

    while (v79);
  }

  v84 = [(PLCoreStorage *)v156 connection];
  [v84 setSchemaVersion:v8 forTableName:a4];

  v16 = 0;
  v17 = v157;
LABEL_113:

LABEL_114:
  v144 = *MEMORY[0x1E69E9840];
}

BOOL __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled = result;
  return result;
}

BOOL __74__PLCoreStorage_handleSchemaMismatchForTable_expectedVersion_schemaMatch___block_invoke_561(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  handleSchemaMismatchForTable_expectedVersion_schemaMatch__classDebugEnabled_560 = result;
  return result;
}

- (signed)verifySchemaVersionOfTable:(id)a3 matchesExpectedVersion:(double)a4
{
  v6 = a3;
  v7 = [(PLCoreStorage *)self connection];
  v8 = [v7 tableExistsForTableName:v6];

  if (v8)
  {
    v9 = [(PLCoreStorage *)self connection];
    [v9 schemaVersionForTable:v6];
    v11 = v10;

    if (v11 == 0.0)
    {
      v12 = -2;
    }

    else if (v11 == a4)
    {
      v12 = 0;
    }

    else if (v11 >= a4)
    {
      if (v11 <= a4)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }
    }

    else if (a4 == v11)
    {
      v12 = -1;
    }

    else
    {
      v12 = -2;
    }
  }

  else
  {
    v12 = -3;
    v11 = 0.0;
  }

  if (+[PLDefaults debugEnabled])
  {
    v13 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __67__PLCoreStorage_verifySchemaVersionOfTable_matchesExpectedVersion___block_invoke;
    v24 = &unk_1E8519630;
    v25 = @"schemaMismatch";
    v26 = v13;
    if (verifySchemaVersionOfTable_matchesExpectedVersion__defaultOnce != -1)
    {
      dispatch_once(&verifySchemaVersionOfTable_matchesExpectedVersion__defaultOnce, &block);
    }

    v14 = verifySchemaVersionOfTable_matchesExpectedVersion__classDebugEnabled;

    if (v14 == 1)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ expectedVersion=%f schemaVersion=%f schemaMatch=%d", v6, *&a4, *&v11, v12, block, v22, v23, v24];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage verifySchemaVersionOfTable:matchesExpectedVersion:]"];
      [PLCoreStorage logMessage:v15 fromFile:v17 fromFunction:v18 fromLineNumber:1253];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  return v12;
}

BOOL __67__PLCoreStorage_verifySchemaVersionOfTable_matchesExpectedVersion___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  verifySchemaVersionOfTable_matchesExpectedVersion__classDebugEnabled = result;
  return result;
}

- (void)setupTableName:(id)a3 withEntryKeyConfig:(id)a4 withKeyOrder:(id)a5 isDynamic:(BOOL)a6 withShouldIndexFKID:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v94 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = objc_opt_new();
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = v16;
  v71 = v13;
  v66 = self;
  v67 = v12;
  v65 = v16;
  if (v8)
  {
    if (v7)
    {
      [v16 addObject:@"FK_ID"];
    }

    [v15 addObject:&unk_1F540CA40];
    v18 = &unk_1F540CA68;
  }

  else
  {
    v20 = [PLEntryDefinition allIndexKeysForEntryKey:v12];
    [v17 addObjectsFromArray:v20];

    [v17 removeObject:@"FK_ID"];
    [v15 addObject:&unk_1F540CA40];
    if ([PLEntryDefinition isAggregateForEntryKey:v12])
    {
      [v15 addObject:&unk_1F540CA90];
      [v15 addObject:&unk_1F540CAB8];
      [v17 addObject:@"timestamp"];
      [v17 addObject:@"timeInterval"];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v21 = [PLEntryDefinition allAggregatePrimaryKeysForEntryKey:v12];
      v22 = [v21 countByEnumeratingWithState:&v83 objects:v93 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v84;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v84 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [v17 addObject:*(*(&v83 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v83 objects:v93 count:16];
        }

        while (v23);
      }

      v19 = v15;

      v13 = v71;
      goto LABEL_15;
    }

    if ([PLEntryDefinition overridesEntryDateForEntryKey:v12])
    {
      [v15 addObject:&unk_1F540CAE0];
      v18 = &unk_1F540CB08;
    }

    else
    {
      v18 = &unk_1F540CB30;
    }
  }

  v19 = v15;
  [v15 addObject:v18];
LABEL_15:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v14;
  v70 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (!v70)
  {
    goto LABEL_33;
  }

  v69 = *v80;
  do
  {
    for (j = 0; j != v70; ++j)
    {
      if (*v80 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v79 + 1) + 8 * j);
      v28 = [v13 objectForKey:v27];
      v29 = [v28 objectForKeyedSubscript:@"Type"];
      if ([v29 shortValue])
      {

LABEL_22:
        v88[0] = @"column-name";
        v88[1] = @"type";
        v89[0] = v27;
        v30 = PLVTypeToPLSQLiteType;
        v31 = [v13 objectForKey:v27];
        v32 = [v31 objectForKeyedSubscript:@"Type"];
        v33 = [v30 objectForKeyedSubscript:v32];
        v89[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
        [v19 addObject:v34];

        goto LABEL_31;
      }

      v35 = [v13 objectForKey:v27];
      v36 = [v35 objectForKeyedSubscript:@"TypeArraySize"];

      if (!v36)
      {
        goto LABEL_22;
      }

      v37 = [v13 objectForKey:v27];
      v38 = [v37 objectForKeyedSubscript:@"TypeArrayValue"];

      v39 = PLVTypeToPLSQLiteType;
      if (v38)
      {
        v40 = [v13 objectForKey:v27];
        v41 = [v40 objectForKeyedSubscript:@"TypeArrayValue"];
        v31 = [v39 objectForKeyedSubscript:v41];
      }

      else
      {
        v31 = [PLVTypeToPLSQLiteType objectForKeyedSubscript:&unk_1F5405C10];
      }

      for (k = 0; ; k = (k + 1))
      {
        v43 = [v71 objectForKey:v27];
        v44 = [v43 objectForKeyedSubscript:@"TypeArraySize"];
        v45 = [v44 intValue];

        if (k >= v45)
        {
          break;
        }

        v90[0] = @"column-name";
        v46 = [v27 stringByAppendingFormat:@"_%d", k];
        v90[1] = @"type";
        v91[0] = v46;
        v91[1] = v31;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
        [v19 addObject:v47];
      }

      v13 = v71;
LABEL_31:
    }

    v70 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
  }

  while (v70);
LABEL_33:

  v48 = v19;
  if (+[PLDefaults debugEnabled])
  {
    v49 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__PLCoreStorage_setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID___block_invoke;
    block[3] = &unk_1E8519630;
    v77 = @"setupTable";
    v78 = v49;
    if (setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__defaultOnce != -1)
    {
      dispatch_once(&setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__defaultOnce, block);
    }

    v50 = setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__classDebugEnabled;

    if (v50 == 1)
    {
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tableName=%@ tableSchemaColumns=%@", v67, v19];
      v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v53 = [v52 lastPathComponent];
      v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage setupTableName:withEntryKeyConfig:withKeyOrder:isDynamic:withShouldIndexFKID:]"];
      [PLCoreStorage logMessage:v51 fromFile:v53 fromFunction:v54 fromLineNumber:1305];

      v55 = PLLogCommon();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v13 = v71;
    }
  }

  v56 = [(PLCoreStorage *)v66 connection];
  [v56 createTableName:v67 withColumns:v19];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v57 = v65;
  v58 = [v57 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v73;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v73 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v72 + 1) + 8 * m);
        v63 = [(PLCoreStorage *)v66 connection];
        [v63 createIndexOnTable:v67 forColumn:v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v59);
  }

  v64 = *MEMORY[0x1E69E9840];
}

BOOL __94__PLCoreStorage_setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  setupTableName_withEntryKeyConfig_withKeyOrder_isDynamic_withShouldIndexFKID__classDebugEnabled = result;
  return result;
}

- (void)setupCompositeIndexOnTable:(id)a3 withColumns:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PLCoreStorage *)self connection];
  [v8 createCompositeIndexOnTable:v7 forColumns:v6];
}

- (void)setupStorageForEntryKey:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v45 = a3;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v3 = [PLEntryDefinition definitionForEntryKey:v45];
    v43 = [PLEntryDefinition keyConfigsForEntryKey:v45];
    if (v43)
    {
      [PLEntryDefinition schemaVersionForEntryKey:v45];
      v5 = v4;
      v6 = [(PLCoreStorage *)self verifySchemaVersionOfTable:v45 matchesExpectedVersion:?];
      if (v5 > 0.0 && v6 == -3)
      {
        if (+[PLDefaults debugEnabled])
        {
          v8 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __41__PLCoreStorage_setupStorageForEntryKey___block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v8;
          if (setupStorageForEntryKey__defaultOnce != -1)
          {
            dispatch_once(&setupStorageForEntryKey__defaultOnce, block);
          }

          if (setupStorageForEntryKey__classDebugEnabled == 1)
          {
            v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No table for %@", v45];
            v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v11 = [v10 lastPathComponent];
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage setupStorageForEntryKey:]"];
            [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:1347];

            v13 = PLLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }
        }

        v14 = [(PLCoreStorage *)self connection];
        [v14 setSchemaVersion:v45 forTableName:v5];

        v15 = [PLEntryDefinition sortedKeysFromEntryDefinition:v3];
        [(PLCoreStorage *)self setupTableName:v45 withEntryKeyConfig:v43 withKeyOrder:v15 isDynamic:0 withShouldIndexFKID:0];
        if ([PLEntryDefinition hasArrayKeysForEntryKey:v45])
        {
          v41 = v15;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v16 = v3;
          obj = [PLEntryDefinition arrayKeysForEntryDefinition:v3];
          v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v47;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v47 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v46 + 1) + 8 * i);
                v22 = [v43 objectForKeyedSubscript:v21];
                v23 = [v22 objectForKeyedSubscript:@"TypeArrayValue"];
                v24 = [v23 shortValue];

                v25 = [PLEntryDefinition allIndexKeysForEntryDefinition:v16];
                v26 = [v25 containsObject:@"FK_ID"];

                [(PLCoreStorage *)self setupArrayForTableName:v45 forColumnNamed:v21 withValueType:v24 withShouldIndexFKID:v26];
              }

              v18 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
            }

            while (v18);
          }

          v3 = v16;
          v15 = v41;
        }

        if ([PLEntryDefinition hasDynamicKeysForEntryDefinition:v3])
        {
          v27 = [PLEntryKey dynamicEntryKeyForEntryKey:v45];
          v28 = [PLEntryDefinition dynamicKeyConfigsForEntryDefinition:v3];
          v29 = [v28 mutableCopy];

          v30 = [v29 objectForKeyedSubscript:@"key"];

          if (v30)
          {
            v31 = [v29 objectForKeyedSubscript:@"key"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v33 = [v29 objectForKeyedSubscript:@"key"];
              [v29 addEntriesFromDictionary:v33];

              [v29 removeObjectForKey:@"key"];
            }
          }

          else
          {
            v34 = +[PLEntryDefinition sharedInstance];
            v35 = [v34 commonTypeDict_StringFormat];
            [v29 setObject:v35 forKeyedSubscript:@"key"];
          }

          v36 = [v29 allKeys];
          v37 = [v36 sortedArrayUsingSelector:sel_compare_];

          v38 = [PLEntryDefinition allIndexKeysForEntryDefinition:v3];
          v39 = [v38 containsObject:@"FK_ID"];

          [(PLCoreStorage *)self setupTableName:v27 withEntryKeyConfig:v29 withKeyOrder:v37 isDynamic:1 withShouldIndexFKID:v39];
        }
      }

      else if (v6)
      {
        [(PLCoreStorage *)self handleSchemaMismatchForTable:v45 expectedVersion:v6 schemaMatch:v5];
      }
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

BOOL __41__PLCoreStorage_setupStorageForEntryKey___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setupStorageForEntryKey__classDebugEnabled = result;
  return result;
}

- (void)setupStorageForOperator:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") && !+[PLUtilities isPowerlogHelperd])
  {
    v5 = [PLEntryKey entryKeysForOperator:v4];
    if ([v5 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v12 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setupStorageForOperatorName:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!+[PLUtilities isPowerlogHelperd])
  {
    v5 = [PLEntryKey entryKeysForOperatorName:v4];
    if ([v5 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v12 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setupStorageForOperatorClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
  {
    v5 = [PLEntryKey entryKeysForOperatorClass:a3];
    if ([v5 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 copy];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [(PLCoreStorage *)self setupStorageForEntryKey:*(*(&v12 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)flushCachesWithReason:(id)a3
{
  v59[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"Cache Size"] && (+[PLStorageCache sharedStorageCache](PLStorageCache, "sharedStorageCache"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "stagingEntryCacheSize"), v7 = -[PLCoreStorage generalEntryCacheSizeLimit](self, "generalEntryCacheSizeLimit"), v5, v6 <= v7))
  {
    if (+[PLDefaults debugEnabled])
    {
      v38 = objc_opt_class();
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke;
      v53[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v53[4] = v38;
      if (flushCachesWithReason__defaultOnce != -1)
      {
        dispatch_once(&flushCachesWithReason__defaultOnce, v53);
      }

      if (flushCachesWithReason__classDebugEnabled == 1)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache size is fine!"];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v40 = [v39 lastPathComponent];
        v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesWithReason:]"];
        [PLCoreStorage logMessage:v33 fromFile:v40 fromFunction:v41 fromLineNumber:1435];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    if (+[PLPlatform isiOS](PLPlatform, "isiOS") && +[PLPlatform internalBuild])
    {
      v59[0] = v4;
      v58[0] = @"Reason";
      v58[1] = @"Size";
      v8 = MEMORY[0x1E696AD98];
      v9 = +[PLStorageCache sharedStorageCache];
      v10 = [v8 numberWithLong:{objc_msgSend(v9, "stagingEntryCacheSize")}];
      v59[1] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v12 = [PLStorageOperator eventPointCacheFlushWithPayload:v11];

      v13 = +[PLStorageCache sharedStorageCache];
      [v13 addToStagingEntryCache:v12];
    }

    if ([v4 length])
    {
      v48 = MEMORY[0x1E69E9820];
      v49 = 3221225472;
      v50 = __39__PLCoreStorage_flushCachesWithReason___block_invoke_667;
      v51 = &unk_1E8519A88;
      v52 = v4;
      AnalyticsSendEventLazy();
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v55 = v4;
      v56 = 2080;
      label = dispatch_queue_get_label(0);
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Flush cache start with Reason: %@ on Queue:%s", buf, 0x16u);
    }

    if (([v4 isEqualToString:@"Timer"] & 1) == 0)
    {
      v15 = MEMORY[0x1E695DF00];
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke_669;
      v45[3] = &unk_1E85195E0;
      v46 = @"flushCachesInterval";
      v47 = 900;
      if (flushCachesWithReason__defaultOnce_668 != -1)
      {
        dispatch_once(&flushCachesWithReason__defaultOnce_668, v45);
      }

      v16 = flushCachesWithReason__objectForKey;

      v17 = [v15 dateWithTimeIntervalSinceNow:v16];
      v18 = [(PLCoreStorage *)self flushCachesTimer];
      [v18 setFireDate:v17];
    }

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      v19 = os_transaction_create();
      v20 = objc_autoreleasePoolPush();
      v21 = [(PLCoreStorage *)self connection];
      [v21 beginTransaction];

      v22 = +[PLStorageCache sharedStorageCache];
      [v22 flushStagingEntryCacheToDatabase];

      v23 = [(PLCoreStorage *)self connection];
      [v23 endTransaction];

      objc_autoreleasePoolPop(v20);
      v24 = objc_autoreleasePoolPush();
      v25 = [(PLCoreStorage *)self connection];
      [v25 beginTransaction];

      v26 = +[PLStorageCache sharedStorageCache];
      [v26 flushStagingAggregateEntryCacheToDatabase];

      v27 = [(PLCoreStorage *)self connection];
      [v27 endTransaction];

      objc_autoreleasePoolPop(v24);
      v28 = dispatch_time(0, 60000000000);
      v29 = +[PLUtilities transactionWorkQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__PLCoreStorage_flushCachesWithReason___block_invoke_2;
      block[3] = &unk_1E85190B8;
      v44 = v19;
      v30 = v19;
      dispatch_after(v28, v29, block);

      v31 = +[PLStorageCache sharedStorageCache];
      v32 = [MEMORY[0x1E695DF00] monotonicDateWithTimeIntervalSinceNow:-3600.0];
      [v31 lastEntryCachePruneToDate:v32];
    }

    if (+[PLDefaults debugEnabled])
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Flush cache done with Reason: %@ on Queue:%s", v4, dispatch_queue_get_label(0)];
      v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v35 = [v34 lastPathComponent];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesWithReason:]"];
      [PLCoreStorage logMessage:v33 fromFile:v35 fromFunction:v36 fromLineNumber:1482];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

LABEL_20:
    }
  }

  v42 = *MEMORY[0x1E69E9840];
}

BOOL __39__PLCoreStorage_flushCachesWithReason___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushCachesWithReason__classDebugEnabled = result;
  return result;
}

id __39__PLCoreStorage_flushCachesWithReason___block_invoke_667(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"Reason";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

int64_t __39__PLCoreStorage_flushCachesWithReason___block_invoke_669(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  flushCachesWithReason__objectForKey = result;
  return result;
}

BOOL __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushCachesWithReason_timeout__classDebugEnabled = result;
  return result;
}

BOOL __55__PLCoreStorage_blockingFlushCachesWithReason_timeout___block_invoke_694(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushCachesWithReason_timeout__classDebugEnabled_693 = result;
  return result;
}

- (void)blockingFlushQueues:(id)a3 withTimeout:(int)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = &unk_1E8519630;
  v7 = @"blockingFlush";
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke;
    v60[3] = &unk_1E8519630;
    v61 = @"blockingFlush";
    v62 = v8;
    if (blockingFlushQueues_withTimeout__defaultOnce != -1)
    {
      dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce, v60);
    }

    v9 = blockingFlushQueues_withTimeout__classDebugEnabled;

    if (v9 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin for queueNames=%@", v5];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:1557];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = dispatch_semaphore_create(0);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v16 = v5;
  v43 = v16;
  v45 = [v16 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v45)
  {
    v44 = *v57;
    v42 = v15;
    do
    {
      v17 = 0;
      do
      {
        if (*v57 != v44)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v56 + 1) + 8 * v17);
        if (+[PLDefaults debugEnabled])
        {
          v19 = objc_opt_class();
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_703;
          v53[3] = v6;
          v54 = v7;
          v55 = v19;
          if (blockingFlushQueues_withTimeout__defaultOnce_701 != -1)
          {
            dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce_701, v53);
          }

          v20 = blockingFlushQueues_withTimeout__classDebugEnabled_702;

          if (v20 == 1)
          {
            v21 = v6;
            v22 = v7;
            v23 = self;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"waiting: %@", v18];
            v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v26 = [v25 lastPathComponent];
            v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
            [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:1561];

            v28 = PLLogCommon();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v64 = v24;
              _os_log_debug_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            self = v23;
            v7 = v22;
            v6 = v21;
            v15 = v42;
            v16 = v43;
          }
        }

        v29 = [PLUtilities workQueueForKey:v18];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_707;
        block[3] = &unk_1E8519AF8;
        v50 = v15;
        v51 = self;
        v52 = v18;
        dispatch_async(v29, block);

        ++v17;
      }

      while (v45 != v17);
      v45 = [v16 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v45);
  }

  if ([v16 count])
  {
    v30 = 0;
    do
    {
      v31 = dispatch_time(0, 1000000000 * a4);
      dispatch_semaphore_wait(v15, v31);
      ++v30;
    }

    while ([v16 count] > v30);
  }

  if (+[PLDefaults debugEnabled])
  {
    v32 = objc_opt_class();
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_713;
    v46[3] = v6;
    v47 = v7;
    v48 = v32;
    if (blockingFlushQueues_withTimeout__defaultOnce_711 != -1)
    {
      dispatch_once(&blockingFlushQueues_withTimeout__defaultOnce_711, v46);
    }

    v33 = blockingFlushQueues_withTimeout__classDebugEnabled_712;

    if (v33 == 1)
    {
      v34 = v15;
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"end for queueNames=%@", v16];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]"];
      [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1575];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v15 = v34;
      v16 = v43;
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled = result;
  return result;
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_703(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled_702 = result;
  return result;
}

void __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_707(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 40);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_2;
    block[3] = &unk_1E8519630;
    v11 = @"blockingFlush";
    v12 = v3;
    if (kPLTaskingEndNotification_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLTaskingEndNotification_block_invoke_5_defaultOnce, block);
    }

    v4 = kPLTaskingEndNotification_block_invoke_5_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"finished: %@", *(a1 + 48)];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage blockingFlushQueues:withTimeout:]_block_invoke"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:1566];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_5_classDebugEnabled = result;
  return result;
}

BOOL __49__PLCoreStorage_blockingFlushQueues_withTimeout___block_invoke_713(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  blockingFlushQueues_withTimeout__classDebugEnabled_712 = result;
  return result;
}

- (BOOL)flushCachesIfRequiredForEntryKey:(id)a3
{
  v4 = a3;
  v5 = +[PLStorageCache sharedStorageCache];
  v6 = [v5 stagingEntryCacheSizeForEntryKey:v4];

  if (v6 >= 1)
  {
    if (+[PLDefaults debugEnabled])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cache dump for query entryKey=%@ cacheSize=%ld", v4, v6];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage flushCachesIfRequiredForEntryKey:]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:1582];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Query EntryKey %@", v4];
    [(PLCoreStorage *)self flushCachesWithReason:v12];
  }

  return v6 > 0;
}

- (void)dispatchAsyncForEntryKey:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() storageQueueNameForEntryKey:v6];

  v8 = [PLUtilities workQueueForKey:v7];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLCoreStorage_dispatchAsyncForEntryKey_withBlock___block_invoke;
  block[3] = &unk_1E8519B20;
  v11 = v5;
  v9 = v5;
  dispatch_async(v8, block);
}

void __52__PLCoreStorage_dispatchAsyncForEntryKey_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)dispatchSyncForEntryKey:(id)a3 withBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() storageQueueNameForEntryKey:v6];

  v8 = [PLUtilities workQueueForKey:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PLCoreStorage_dispatchSyncForEntryKey_withBlock___block_invoke;
  v10[3] = &unk_1E8519B20;
  v11 = v5;
  v9 = v5;
  [PLUtilities dispatchSyncIfNotCallerQueue:v8 withBlock:v10];
}

void __51__PLCoreStorage_dispatchSyncForEntryKey_withBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

int64_t __43__PLCoreStorage_generalEntryCacheSizeLimit__block_invoke(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  generalEntryCacheSizeLimit_objectForKey = result;
  return result;
}

- (void)writeEntries:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = v6;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__732;
    v16[4] = __Block_byref_object_dispose__733;
    v17 = MEMORY[0x1DA71B0D0](v7);
    v8 = [v19[5] objectAtIndexedSubscript:0];
    v9 = [v8 entryKey];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PLCoreStorage_writeEntries_withCompletionBlock___block_invoke;
    v15[3] = &unk_1E85195B8;
    v15[4] = self;
    v15[5] = &v18;
    v15[6] = v16;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:v9 withBlock:v15];

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v18, 8);
  }

  else if (+[PLDefaults debugEnabled])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeEntries: ERROR, no entries to write"];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    v12 = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntries:withCompletionBlock:]"];
    [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:1621];

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }
}

uint64_t __50__PLCoreStorage_writeEntries_withCompletionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = +[PLStorageCache sharedStorageCache];
        [v8 addToStagingEntryCache:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) checkCacheSizeForFlush];
  result = *(*(*(a1 + 48) + 8) + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (int64_t)writeEntry:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __28__PLCoreStorage_writeEntry___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0lu32l8;
    v18 = v5;
    if (writeEntry__defaultOnce != -1)
    {
      dispatch_once(&writeEntry__defaultOnce, &block);
    }

    if (writeEntry__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", v4, block, v15, v16, v17, v18];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntry:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:1641];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = +[PLStorageCache sharedStorageCache];
  v12 = [v11 addToStagingEntryCache:v4];

  [(PLCoreStorage *)self checkCacheSizeForFlush];
  return v12;
}

BOOL __28__PLCoreStorage_writeEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeEntry__classDebugEnabled = result;
  return result;
}

- (void)writeEntry:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (writeEntry_withCompletionBlock__defaultOnce != -1)
    {
      dispatch_once(&writeEntry_withCompletionBlock__defaultOnce, block);
    }

    if (writeEntry_withCompletionBlock__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", v6];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeEntry:withCompletionBlock:]"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:1651];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = v6;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__732;
    v16[4] = __Block_byref_object_dispose__733;
    v17 = MEMORY[0x1DA71B0D0](v7);
    v14 = [v19[5] entryKey];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke_737;
    v15[3] = &unk_1E8519B48;
    v15[4] = self;
    v15[5] = &v18;
    v15[6] = v16;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:v14 withBlock:v15];

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v18, 8);
  }
}

BOOL __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  writeEntry_withCompletionBlock__classDebugEnabled = result;
  return result;
}

void __48__PLCoreStorage_writeEntry_withCompletionBlock___block_invoke_737(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) writeEntry:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (int64_t)blockingWriteEntry:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PLCoreStorage *)self writeEntry:v6];
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)_updateEntry:(id)a3 withBlock:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = +[PLStorageCache sharedStorageCache];
    [v8 updateStagingEntryCacheWithEntry:v7 withBlock:v6];

    [(PLCoreStorage *)self checkCacheSizeForFlush];
  }
}

- (void)updateEntry:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__4;
  v13[4] = __Block_byref_object_dispose__4;
  v8 = v6;
  v14 = v8;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__732;
  v11[4] = __Block_byref_object_dispose__733;
  v12 = MEMORY[0x1DA71B0D0](v7);
  v9 = [v8 entryKey];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__PLCoreStorage_updateEntry_withBlock___block_invoke;
  v10[3] = &unk_1E8519B48;
  v10[4] = self;
  v10[5] = v13;
  v10[6] = v11;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v9 withBlock:v10];

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

- (void)writeProportionateAggregateEntry:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5
{
  v102 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 timeIntervalSinceDate:v9];
  if (v11 <= 0.0)
  {
    v52 = self;
LABEL_28:
    [(PLCoreStorage *)v52 writeAggregateEntry:v8];
    goto LABEL_43;
  }

  v12 = v11;
  v13 = [v8 entryKey];
  v14 = [PLEntryDefinition isAggregateWallClockBucket:v13];

  v15 = +[PLTimeManager sharedInstance];
  v83 = self;
  v16 = v14;
  v17 = [v15 bucketTimeStampForDate:v10 withTimeReference:v14 withBucketInterval:3600];

  v18 = +[PLTimeManager sharedInstance];
  v19 = v83;
  v20 = [v18 bucketTimeStampForDate:v9 withTimeReference:v16 withBucketInterval:3600];

  v87 = v8;
  v82 = v9;
  if (+[PLDefaults debugEnabled])
  {
    v21 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke;
    block[3] = &unk_1E8519630;
    v99 = @"writeAggregateEntry";
    v100 = v21;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce, block);
    }

    v22 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled;

    if (v22 == 1)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Split Entry: startDate: %@, endDate: %@", v9, v10];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:1717];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v8 = v87;
      v9 = v82;
      v19 = v83;
    }
  }

  v28 = v17;
  v29 = v20;
  if (+[PLDefaults debugEnabled])
  {
    v30 = objc_opt_class();
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_746;
    v95[3] = &unk_1E8519630;
    v96 = @"writeAggregateEntry";
    v97 = v30;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_744 != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_744, v95);
    }

    v31 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_745;

    if (v31 == 1)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v20];
      v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v28];
      v35 = [v32 stringWithFormat:@"Split Entry: startHourBoundary: %@, endHourBoundary: %@", v33, v34];

      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1718];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v82;
      v19 = v83;
    }
  }

  v40 = ((v28 - v29) / 3600.0);
  if (+[PLDefaults debugEnabled])
  {
    v41 = objc_opt_class();
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_752;
    v92[3] = &unk_1E8519630;
    v93 = @"writeAggregateEntry";
    v94 = v41;
    if (writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_750 != -1)
    {
      dispatch_once(&writeProportionateAggregateEntry_withStartDate_withEndDate__defaultOnce_750, v92);
    }

    v42 = writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_751;

    if (v42 == 1)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Split Entry: numberOfIntermediateHourTicks = %d", v40];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v44 = [v43 lastPathComponent];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeProportionateAggregateEntry:withStartDate:withEndDate:]"];
      [PLCoreStorage logMessage:v40 fromFile:v44 fromFunction:v45 fromLineNumber:1720];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v9 = v82;
      v19 = v83;
      LODWORD(v40) = ((v28 - v29) / 3600.0);
    }
  }

  if (!v40)
  {
    v52 = v19;
    goto LABEL_28;
  }

  [v9 timeIntervalSince1970];
  v48 = v47;
  [v10 timeIntervalSince1970];
  v50 = v49;
  v86 = [v8 copy];
  v51 = [v8 copy];
  if (v40 == 1)
  {
    v85 = 0;
  }

  else
  {
    v85 = [v8 copy];
  }

  v53 = MEMORY[0x1E695DFA8];
  v54 = [v8 entryDefinition];
  v55 = [PLEntryDefinition allAggregateKeysForEntryDefinition:v54];
  v56 = [v53 setWithArray:v55];

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v56;
  v57 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = v50 - v28;
    v60 = (v29 - v48 + 3600.0) / v12;
    v61 = v59 / v12;
    v62 = *v89;
    v63 = 3600.0 / v12;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v89 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v88 + 1) + 8 * i);
        v66 = MEMORY[0x1E696AD98];
        v67 = [v87 objectForKeyedSubscript:v65];
        [v67 doubleValue];
        v69 = [v66 numberWithDouble:v60 * v68];
        [v86 setObject:v69 forKeyedSubscript:v65];

        v70 = MEMORY[0x1E696AD98];
        v71 = [v87 objectForKeyedSubscript:v65];
        [v71 doubleValue];
        v73 = [v70 numberWithDouble:v61 * v72];
        [v51 setObject:v73 forKeyedSubscript:v65];

        if (v40 != 1)
        {
          v74 = MEMORY[0x1E696AD98];
          v75 = [v87 objectForKeyedSubscript:v65];
          [v75 doubleValue];
          v77 = [v74 numberWithDouble:v63 * v76];
          [v85 setObject:v77 forKeyedSubscript:v65];
        }
      }

      v58 = [obj countByEnumeratingWithState:&v88 objects:v101 count:16];
    }

    while (v58);
  }

  v9 = v82;
  [v86 setEntryDate:v82];
  [v51 setEntryDate:v10];
  [(PLCoreStorage *)v83 writeAggregateEntry:v86];
  [(PLCoreStorage *)v83 writeAggregateEntry:v51];
  if (v40 != 1)
  {
    v78 = 1;
    do
    {
      v79 = [v85 copy];
      v80 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v29 + v78 * 3600.0];
      [v79 setEntryDate:v80];

      [(PLCoreStorage *)v83 writeAggregateEntry:v79];
      ++v78;
    }

    while (v40 != v78);
  }

  v8 = v87;
LABEL_43:

  v81 = *MEMORY[0x1E69E9840];
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled = result;
  return result;
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_746(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_745 = result;
  return result;
}

BOOL __76__PLCoreStorage_writeProportionateAggregateEntry_withStartDate_withEndDate___block_invoke_752(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeProportionateAggregateEntry_withStartDate_withEndDate__classDebugEnabled_751 = result;
  return result;
}

- (void)writeAggregateEntry:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke;
    block[3] = &unk_1E8519630;
    v18 = @"writeAggregateEntry";
    v19 = v5;
    if (writeAggregateEntry__defaultOnce != -1)
    {
      dispatch_once(&writeAggregateEntry__defaultOnce, block);
    }

    v6 = writeAggregateEntry__classDebugEnabled;

    if (v6 == 1)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", v4];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v9 = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]"];
      [PLCoreStorage logMessage:v7 fromFile:v9 fromFunction:v10 fromLineNumber:1771];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v12 = [v4 entryKey];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_756;
  v14[3] = &unk_1E8519100;
  v15 = v4;
  v16 = self;
  v13 = v4;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v12 withBlock:v14];
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  writeAggregateEntry__classDebugEnabled = result;
  return result;
}

void __37__PLCoreStorage_writeAggregateEntry___block_invoke_756(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) entryKey];
  v4 = [PLEntryDefinition isAggregateWallClockBucket:v3];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v5 = [*(a1 + 32) entryDefinition];
  v6 = [PLEntryDefinition aggregateBucketDefinitionsForEntryDefinition:v5];

  obj = v6;
  v80 = [v6 countByEnumeratingWithState:&v107 objects:v115 count:16];
  if (v80)
  {
    v78 = v4;
    v79 = *v108;
    v75 = v93;
    v76 = v104;
    v83 = v2;
    v82 = a1;
    do
    {
      v7 = 0;
      do
      {
        if (*v108 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v7;
        v8 = *(*(&v107 + 1) + 8 * v7);
        if (+[PLDefaults debugEnabled])
        {
          v9 = *(a1 + 40);
          v10 = objc_opt_class();
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 3221225472;
          v104[0] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_2;
          v104[1] = &unk_1E8519630;
          v105 = @"writeAggregateEntry";
          v106 = v10;
          if (kPLTaskingEndNotification_block_invoke_6_defaultOnce != -1)
          {
            dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce, v103);
          }

          v11 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled;

          if (v11 == 1)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bucketIntervalNumber=%@", v8, v75, v76];
            v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v14 = [v13 lastPathComponent];
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke"];
            [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:1779];

            v16 = PLLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v114 = v12;
              _os_log_debug_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        [v8 doubleValue];
        v18 = v17;
        v19 = +[PLTimeManager sharedInstance];
        v20 = [*(a1 + 32) entryDate];
        v21 = [v19 bucketTimeStampForDate:v20 withTimeReference:v78 withBucketInterval:v18];

        v22 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
        [v2 setObject:v22 forKeyedSubscript:@"timestamp"];

        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
        [v2 setObject:v23 forKeyedSubscript:@"timeInterval"];

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v24 = [*(a1 + 32) entryDefinition];
        v25 = [PLEntryDefinition allAggregatePrimaryKeysForEntryDefinition:v24];

        v26 = [v25 countByEnumeratingWithState:&v99 objects:v112 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v100;
          do
          {
            v29 = 0;
            do
            {
              if (*v100 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v99 + 1) + 8 * v29);
              if (+[PLDefaults debugEnabled])
              {
                v31 = *(a1 + 40);
                v32 = objc_opt_class();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_762;
                block[3] = &unk_1E8519630;
                v97 = @"writeAggregateEntry";
                v98 = v32;
                if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_760 != -1)
                {
                  dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_760, block);
                }

                v33 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_761;

                if (v33 == 1)
                {
                  v34 = v25;
                  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryKey=%@", v30];
                  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
                  v37 = [v36 lastPathComponent];
                  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
                  [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:1791];

                  v39 = PLLogCommon();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v114 = v35;
                    _os_log_debug_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v2 = v83;
                  v25 = v34;
                  a1 = v82;
                }
              }

              v40 = [*(a1 + 32) objectForKeyedSubscript:v30];
              [v2 setObject:v40 forKeyedSubscript:v30];

              ++v29;
            }

            while (v27 != v29);
            v27 = [v25 countByEnumeratingWithState:&v99 objects:v112 count:16];
          }

          while (v27);
        }

        if (+[PLDefaults debugEnabled])
        {
          v41 = *(a1 + 40);
          v42 = objc_opt_class();
          v92[0] = MEMORY[0x1E69E9820];
          v92[1] = 3221225472;
          v93[0] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_769;
          v93[1] = &unk_1E8519630;
          v94 = @"writeAggregateEntry";
          v95 = v42;
          if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_767 != -1)
          {
            dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_767, v92);
          }

          v43 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_768;

          if (v43 == 1)
          {
            v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"matchingKeyToValue=%@", v2];
            v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
            v46 = [v45 lastPathComponent];
            v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
            [PLCoreStorage logMessage:v44 fromFile:v46 fromFunction:v47 fromLineNumber:1795];

            v48 = PLLogCommon();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v114 = v44;
              _os_log_debug_impl(&dword_1D8611000, v48, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v49 = MEMORY[0x1E695DFA8];
        v50 = [*(a1 + 32) entryDefinition];
        v51 = [PLEntryDefinition allAggregateKeysForEntryDefinition:v50];
        v52 = [v49 setWithArray:v51];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v53 = v52;
        v54 = [v53 countByEnumeratingWithState:&v88 objects:v111 count:16];
        if (v54)
        {
          v55 = v54;
          v84 = *v89;
          do
          {
            v56 = 0;
            do
            {
              if (*v89 != v84)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v88 + 1) + 8 * v56);
              if (+[PLDefaults debugEnabled])
              {
                v58 = *(a1 + 40);
                v59 = objc_opt_class();
                v85[0] = MEMORY[0x1E69E9820];
                v85[1] = 3221225472;
                v85[2] = __37__PLCoreStorage_writeAggregateEntry___block_invoke_775;
                v85[3] = &unk_1E8519630;
                v86 = @"writeAggregateEntry";
                v87 = v59;
                if (kPLTaskingEndNotification_block_invoke_6_defaultOnce_773 != -1)
                {
                  dispatch_once(&kPLTaskingEndNotification_block_invoke_6_defaultOnce_773, v85);
                }

                v60 = kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_774;

                if (v60 == 1)
                {
                  v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregateKey=%@", v57];
                  v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
                  v63 = [v62 lastPathComponent];
                  v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage writeAggregateEntry:]_block_invoke_2"];
                  [PLCoreStorage logMessage:v61 fromFile:v63 fromFunction:v64 fromLineNumber:1800];

                  v65 = PLLogCommon();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v114 = v61;
                    _os_log_debug_impl(&dword_1D8611000, v65, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }

                  v2 = v83;
                }
              }

              v66 = objc_opt_new();
              v67 = [*(a1 + 32) entryKey];
              [v66 setEntryKey:v67];

              v68 = [v2 mutableCopy];
              [v66 setMatchingKeyToValue:v68];

              v69 = [v53 mutableCopy];
              [v69 removeObject:v57];
              v70 = [v69 allObjects];
              [v66 setOtherAggregateKeys:v70];

              [v66 setAggregateKey:v57];
              v71 = [*(a1 + 32) objectForKeyedSubscript:v57];
              [v71 doubleValue];
              [v66 setAggregateValue:?];

              v72 = [*(a1 + 32) entryDefinition];
              [v66 setAggregateFunction:{+[PLEntryDefinition aggregateFunctionForEntryDefinition:forKey:](PLEntryDefinition, "aggregateFunctionForEntryDefinition:forKey:", v72, v57)}];

              v73 = +[PLStorageCache sharedStorageCache];
              [v73 addToStagingAggregateEntryCache:v66];

              ++v56;
            }

            while (v55 != v56);
            v55 = [v53 countByEnumeratingWithState:&v88 objects:v111 count:16];
          }

          while (v55);
        }

        v7 = v81 + 1;
      }

      while (v81 + 1 != v80);
      v80 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
    }

    while (v80);
  }

  v74 = *MEMORY[0x1E69E9840];
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_762(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_761 = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_769(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_768 = result;
  return result;
}

BOOL __37__PLCoreStorage_writeAggregateEntry___block_invoke_775(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLTaskingEndNotification_block_invoke_6_classDebugEnabled_774 = result;
  return result;
}

- (void)setAllNullValuesForEntryKey:(id)a3 forKey:(id)a4 toValue:(id)a5 withFilters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__4;
  v34 = __Block_byref_object_dispose__4;
  v14 = v10;
  v35 = v14;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__4;
  v28 = __Block_byref_object_dispose__4;
  v15 = v11;
  v29 = v15;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  v16 = v12;
  v23 = v16;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v17 = v13;
  v21 = v17;
  [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v25[5]];
  v18 = v31[5];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLCoreStorage_setAllNullValuesForEntryKey_forKey_toValue_withFilters___block_invoke;
  v19[3] = &unk_1E8519B70;
  v19[4] = self;
  v19[5] = &v30;
  v19[6] = &v24;
  v19[7] = v22;
  v19[8] = v20;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v18 withBlock:v19];
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
}

void __72__PLCoreStorage_setAllNullValuesForEntryKey_forKey_toValue_withFilters___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 setAllNullValuesForEntryKey:*(*(*(a1 + 40) + 8) + 40) forKey:*(*(*(a1 + 48) + 8) + 40) toValue:*(*(*(a1 + 56) + 8) + 40) withFilters:*(*(*(a1 + 64) + 8) + 40)];
}

- (void)loadDynamicValuesIntoEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 entryKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PLCoreStorage_loadDynamicValuesIntoEntry___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:v5 withBlock:v7];
}

void __44__PLCoreStorage_loadDynamicValuesIntoEntry___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 loadDynamicValuesIntoEntry:*(a1 + 40)];

  v3 = [*(a1 + 32) connection];
  [v3 loadArrayValuesIntoEntry:*(a1 + 40)];
}

- (void)deleteEntry:(id)a3
{
  v4 = a3;
  v6 = [v4 entryKey];
  v5 = [v4 entryID];

  [(PLCoreStorage *)self deleteEntryForKey:v6 WithRowID:v5];
}

- (void)deleteEntryForKey:(id)a3 WithRowID:(int64_t)a4
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v6 = a3;
  v16 = v6;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = a4;
  [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v6];
  v7 = +[PLStorageCache sharedStorageCache];
  [v7 clearLastEntryCacheForEntryKey:v6];

  v8 = v12[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__PLCoreStorage_deleteEntryForKey_WithRowID___block_invoke;
  v9[3] = &unk_1E8519B48;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = v10;
  [(PLCoreStorage *)self dispatchAsyncForEntryKey:v8 withBlock:v9];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
}

void __45__PLCoreStorage_deleteEntryForKey_WithRowID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  [v2 deleteEntryForKey:*(*(*(a1 + 40) + 8) + 40) withRowID:*(*(*(a1 + 48) + 8) + 24)];
}

- (void)deleteAllEntriesForKey:(id)a3 beforeTimestamp:(id)a4 withFilters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4;
    v23 = __Block_byref_object_dispose__4;
    v11 = v8;
    v24 = v11;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__4;
    v17[4] = __Block_byref_object_dispose__4;
    v18 = v9;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__4;
    v15[4] = __Block_byref_object_dispose__4;
    v16 = v10;
    [(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v11];
    v12 = +[PLStorageCache sharedStorageCache];
    [v12 clearLastEntryCacheForEntryKey:v11];

    v13 = v20[5];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__PLCoreStorage_deleteAllEntriesForKey_beforeTimestamp_withFilters___block_invoke;
    v14[3] = &unk_1E8519B98;
    v14[4] = self;
    v14[5] = v17;
    v14[6] = v15;
    v14[7] = &v19;
    [(PLCoreStorage *)self dispatchAsyncForEntryKey:v13 withBlock:v14];
    _Block_object_dispose(v15, 8);

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v19, 8);
  }
}

void __68__PLCoreStorage_deleteAllEntriesForKey_beforeTimestamp_withFilters___block_invoke(uint64_t a1)
{
  v7 = objc_opt_new();
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    [v2 timeIntervalSince1970];
    v5 = [v3 stringWithFormat:@"timestamp < %f", v4];
    [v7 addObject:v5];
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v7 addObjectsFromArray:?];
  }

  if (![v7 count])
  {

    v7 = 0;
  }

  v6 = [*(a1 + 32) connection];
  [v6 deleteAllEntriesForKey:*(*(*(a1 + 56) + 8) + 40) withFilters:*(*(*(a1 + 48) + 8) + 40)];
}

- (int64_t)countOfEntriesForKey:(id)a3
{
  v4 = a3;
  v5 = +[PLStorageCache sharedStorageCache];
  v6 = [v5 stagingEntryCacheSizeForEntryKey:v4];

  v7 = [(PLCoreStorage *)self connection];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(ID) AS count FROM %@", v4];;

  v9 = [v7 performQuery:v8];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v10 objectForKeyedSubscript:@"count"];
    v6 += [v11 longValue];
  }

  return v6;
}

- (void)processEntriesForKey:(id)a3 withProperties:(id)a4 withBlock:(id)a5
{
  v73 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v39 = a4;
  v7 = a5;
  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke;
    block[3] = &unk_1E85195E0;
    v66 = @"processEntriesBatchSize";
    v67 = 10;
    if (processEntriesForKey_withProperties_withBlock__defaultOnce != -1)
    {
      dispatch_once(&processEntriesForKey_withProperties_withBlock__defaultOnce, block);
    }

    v8 = processEntriesForKey_withProperties_withBlock__objectForKey;

    v9 = [v39 objectForKeyedSubscript:@"__NOCACHEDUMP__"];
    if (!v9 || ([v39 objectForKeyedSubscript:@"__NOCACHEDUMP__"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, (v11 & 1) == 0))
    {
      if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v38]&& +[PLDefaults debugEnabled])
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for properties: %@", v39];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage processEntriesForKey:withProperties:withBlock:]"];
        [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:1915];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = __Block_byref_object_copy__4;
    v63[4] = __Block_byref_object_dispose__4;
    v17 = v38;
    v64 = v17;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x3032000000;
    v61[3] = __Block_byref_object_copy__4;
    v61[4] = __Block_byref_object_dispose__4;
    v62 = v39;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__4;
    v59 = __Block_byref_object_dispose__4;
    v60 = [MEMORY[0x1E695DF70] array];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke_798;
    v54[3] = &unk_1E8519B98;
    v54[4] = self;
    v54[5] = v63;
    v54[6] = v61;
    v54[7] = &v55;
    [(PLCoreStorage *)self dispatchSyncForEntryKey:v17 withBlock:v54];
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = 0;
    while (1)
    {
      v20 = v19;
      if ([v56[5] count] <= v19)
      {
        break;
      }

      v21 = [v56[5] count];
      if (v21 >= v8 + v19)
      {
        v19 += v8;
      }

      else
      {
        v19 = v21;
      }

      v22 = [v56[5] subarrayWithRange:{v20, v19 - v20}];
      [v18 addObject:v22];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v18;
    v23 = [obj countByEnumeratingWithState:&v50 objects:v72 count:16];
    if (v23)
    {
      v41 = *v51;
      do
      {
        v24 = 0;
        v43 = v23;
        do
        {
          if (*v51 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v50 + 1) + 8 * v24);
          context = objc_autoreleasePoolPush();
          v26 = MEMORY[0x1E696AEC0];
          v27 = [v25 componentsJoinedByString:{@", "}];
          v45 = [v26 stringWithFormat:@"ID IN (%@)", v27];

          v71[0] = MEMORY[0x1E695E118];
          v70[0] = @"__NOCACHEDUMP__";
          v70[1] = @"where";
          v69 = v45;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
          v71[1] = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];

          v30 = [(PLCoreStorage *)self entriesForKey:v17 withProperties:v29];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v31 = v30;
          v32 = [v31 countByEnumeratingWithState:&v46 objects:v68 count:16];
          if (v32)
          {
            v33 = *v47;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v47 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                v35 = *(*(&v46 + 1) + 8 * i);
                v36 = objc_autoreleasePoolPush();
                v7[2](v7, v35);
                objc_autoreleasePoolPop(v36);
              }

              v32 = [v31 countByEnumeratingWithState:&v46 objects:v68 count:16];
            }

            while (v32);
          }

          objc_autoreleasePoolPop(context);
          ++v24;
        }

        while (v24 != v43);
        v23 = [obj countByEnumeratingWithState:&v50 objects:v72 count:16];
      }

      while (v23);
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(v61, 8);

    _Block_object_dispose(v63, 8);
  }

  v37 = *MEMORY[0x1E69E9840];
}

int64_t __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  processEntriesForKey_withProperties_withBlock__objectForKey = result;
  return result;
}

void __63__PLCoreStorage_processEntriesForKey_withProperties_withBlock___block_invoke_798(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithFormat:@"SELECT ID FROM '%@' ", *(*(*(a1 + 40) + 8) + 40)];
  v3 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:@"where"];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 componentsJoinedByString:@" AND "];
    [v2 appendFormat:@"WHERE %@ ", v5];
  }

  [v2 appendString:@";"];
  v6 = [*(a1 + 32) connection];
  v7 = [v6 performQuery:v2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(*(a1 + 56) + 8) + 40);
        v14 = [*(*(&v16 + 1) + 8 * v12) objectForKeyedSubscript:@"ID"];
        [v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)entriesForKey:(id)a3 withProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"__NOCACHEDUMP__"];
  if (!v8 || (v9 = v8, [v7 objectForKeyedSubscript:@"__NOCACHEDUMP__"], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, v9, (v11 & 1) == 0))
  {
    if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v6]&& +[PLDefaults debugEnabled])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for properties: %@", v7];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v14 = [v13 lastPathComponent];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:withProperties:]"];
      [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:1979];

      v16 = PLLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v17 = os_transaction_create();
  v18 = objc_autoreleasePoolPush();
  v19 = +[PLStorageCache sharedStorageCache];
  v20 = [v19 connectionForKey:v6];
  v21 = [v20 entriesForKey:v6 withProperties:v7];

  objc_autoreleasePoolPop(v18);
  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [PLCoreStorage entriesForKey:withProperties:];
  }

  v23 = dispatch_time(0, 1000000000 * [PLDefaults longForKey:@"kPLXPCTransactionEndDelay" ifNotSet:60]);
  v24 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PLCoreStorage_entriesForKey_withProperties___block_invoke;
  block[3] = &unk_1E85190B8;
  v28 = v17;
  v25 = v17;
  dispatch_after(v23, v24, block);

  return v21;
}

- (id)entriesForKey:(id)a3 withComparisons:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v32 = self;
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    v9 = +[PLStorageCache sharedStorageCache];
    v10 = [v9 stagingEntryCacheIDsForEntryKey:v6];

    v11 = +[PLStorageCache sharedStorageCache];
    v12 = [v11 stagingEntryCacheForEntryKey:v6 withComparisons:v7 isSingleton:0];

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    v14 = PLLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PLCoreStorage entriesForKey:withComparisons:];
    }

    v15 = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v33 + 1) + 8 * i) sqlWhereClause];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v18);
    }

    if ([v10 count])
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = [v10 allObjects];
      v24 = [v23 componentsJoinedByString:{@", "}];
      v25 = [v22 stringWithFormat:@"ID NOT IN (%@)", v24];
      [v15 addObject:v25];
    }

    v37[0] = @"where";
    v37[1] = @"__NOCACHEDUMP__";
    v38[0] = v15;
    v38[1] = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v27 = [(PLCoreStorage *)v32 entriesForKey:v6 withProperties:v26];

    v28 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
    [v28 addObjectsFromArray:v27];
    v29 = [v28 sortedArrayUsingComparator:&__block_literal_global_833];
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t __47__PLCoreStorage_entriesForKey_withComparisons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithLongLong:{objc_msgSend(a2, "entryID")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 entryID];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (id)entriesForKey:(id)a3 withQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PLCoreStorage *)self flushCachesIfRequiredForEntryKey:v6]&& +[PLDefaults debugEnabled])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache dumped for query: %@", v7];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
    v10 = [v9 lastPathComponent];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:withQuery:]"];
    [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:2036];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__PLCoreStorage_entriesForKey_withQuery___block_invoke;
  v17[3] = &unk_1E85194A0;
  v20 = &v21;
  v17[4] = self;
  v13 = v6;
  v18 = v13;
  v14 = v7;
  v19 = v14;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:v13 withBlock:v17];
  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __41__PLCoreStorage_entriesForKey_withQuery___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) connection];
  v2 = [v5 entriesForKey:*(a1 + 40) withQuery:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)entriesForKey:(id)a3 inTimeRange:(_PLTimeIntervalRange)a4 withFilters:(id)a5
{
  location = a4.location;
  v20[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF70];
  v9 = MEMORY[0x1E696AEC0];
  v10 = a4.location + a4.length;
  v11 = a5;
  v12 = a3;
  v13 = [v9 stringWithFormat:@"timestamp BETWEEN %f AND %f", *&location, *&v10];
  v14 = [v8 arrayWithObject:v13];

  [v14 addObjectsFromArray:v11];
  v19[0] = @"where";
  v19[1] = @"order by";
  v20[0] = v14;
  v20[1] = &unk_1F540CBA8;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16 = [(PLCoreStorage *)self entriesForKey:v12 withProperties:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)entriesForKey:(id)a3 inTimeRange:(_PLTimeIntervalRange)a4 withCountOfEntriesBefore:(int64_t)a5 withCountOfEntriesAfter:(int64_t)a6 withFilters:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = MEMORY[0x1E695DF70];
  v14 = a7;
  v15 = a3;
  v16 = [(PLCoreStorage *)self entriesForKey:v15 inTimeRange:v14 withFilters:location, length];
  v17 = [v13 arrayWithArray:v16];

  if ([v17 count])
  {
    v18 = [v17 firstObject];
    v19 = [v18 entryID];

    v20 = [v17 lastObject];
    v21 = [v20 entryID];

    if (+[PLDefaults debugEnabled])
    {
      v22 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke;
      block[3] = &unk_1E8519630;
      v37 = @"query";
      v38 = v22;
      if (entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__defaultOnce != -1)
      {
        dispatch_once(&entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__defaultOnce, block);
      }

      v23 = entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__classDebugEnabled;

      if (v23 == 1)
      {
        v34 = v21;
        v35 = a6;
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"first=%lld last=%lld", v19, v21];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage entriesForKey:inTimeRange:withCountOfEntriesBefore:withCountOfEntriesAfter:withFilters:]"];
        [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:2061];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }

        v21 = v34;
        a6 = v35;
      }
    }

    v29 = [(PLCoreStorage *)self entriesForKey:v15 startingFromRowID:v19 + 1 count:a5 withFilters:v14];
    [v17 addObjectsFromArray:v29];

    v30 = [(PLCoreStorage *)self entriesForKey:v15 startingFromRowID:v21 - 1 count:-a6 withFilters:v14];
  }

  else
  {
    v31 = [(PLCoreStorage *)self entriesForKey:v15 before:1 timeInterval:a5 count:v14 withFilters:location];
    [v17 addObjectsFromArray:v31];

    v30 = [(PLCoreStorage *)self entriesForKey:v15 before:0 timeInterval:a6 count:v14 withFilters:location + length];
  }

  v32 = v30;

  [v17 addObjectsFromArray:v32];
  [v17 sortUsingComparator:&__block_literal_global_856];

  return v17;
}

BOOL __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters__classDebugEnabled = result;
  return result;
}

uint64_t __104__PLCoreStorage_entriesForKey_inTimeRange_withCountOfEntriesBefore_withCountOfEntriesAfter_withFilters___block_invoke_853(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 entryID];
  if (v6 <= [v5 entryID])
  {
    v8 = [v4 entryID];
    v7 = v8 < [v5 entryID];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)entriesForKey:(id)a3 before:(BOOL)a4 timeInterval:(double)a5 count:(int64_t)a6 withFilters:(id)a7
{
  v9 = a4;
  v28[3] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = @">=";
  if (v9)
  {
    v15 = @"<=";
    v16 = MEMORY[0x1E695E118];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp %@ %f", v15, *&a5];
  [v14 addObject:v17];

  [v14 addObjectsFromArray:v12];
  v28[0] = v14;
  v27[0] = @"where";
  v27[1] = @"order by";
  v25 = @"timestamp";
  v26 = v16;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v28[1] = v18;
  v27[2] = @"limit";
  if (a6 >= 0)
  {
    v19 = a6;
  }

  else
  {
    v19 = -a6;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:v19];
  v28[2] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v22 = [(PLCoreStorage *)self entriesForKey:v13 withProperties:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)entryForKey:(id)a3 withID:(int64_t)a4
{
  v6 = a3;
  v7 = +[PLStorageCache sharedStorageCache];
  v8 = [v7 cachedEntryForEntryKey:v6 withEntryID:a4];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(PLCoreStorage *)self entriesForKey:v6 startingFromRowID:a4 count:1 withFilters:0];
    v9 = 0;
    if ([v10 count] == 1)
    {
      v9 = [v10 firstObject];
    }
  }

  return v9;
}

- (id)entriesForKey:(id)a3 startingFromRowID:(int64_t)a4 count:(int64_t)a5 withFilters:(id)a6
{
  v32[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x1E695E118];
  v13 = MEMORY[0x1E695E110];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [v14 mutableCopy];
  if (a5 > 0)
  {
    v12 = v13;
  }

  v16 = @"<=";
  if (a5 > 0)
  {
    v16 = @">=";
  }

  if (!a5)
  {
    v16 = @"==";
  }

  if (a5 < 0)
  {
    a5 = -a5;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID %@ %lld", v16, a4];
  [v15 addObject:v17];

  v32[0] = v15;
  v31[0] = @"where";
  v31[1] = @"order by";
  v29 = @"timestamp";
  v30 = v12;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v32[1] = v18;
  v31[2] = @"limit";
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  v32[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  if ([v15 count] >= 2)
  {
    v21 = [v15 firstObject];
    v22 = [v21 isEqualToString:@"__NOCACHEDUMP__"];

    if (v22)
    {
      [v15 removeObjectAtIndex:0];
      v23 = [v20 mutableCopy];
      [v23 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"__NOCACHEDUMP__"];
      [v23 setObject:v15 forKeyedSubscript:@"where"];

      v20 = v23;
    }
  }

  v24 = [(PLCoreStorage *)self entriesForKey:v10 withProperties:v20];
  if ([v12 isEqual:MEMORY[0x1E695E110]])
  {
    v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_876];
  }

  else
  {
    v25 = v24;
  }

  v26 = v25;

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

uint64_t __67__PLCoreStorage_entriesForKey_startingFromRowID_count_withFilters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 entryID];
  if (v6 <= [v5 entryID])
  {
    v8 = [v4 entryID];
    v7 = v8 < [v5 entryID];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)firstEntryForKey:(id)a3
{
  if (a3)
  {
    v3 = [(PLCoreStorage *)self entriesForKey:a3 withProperties:&unk_1F540CBF8];
    if ([v3 count])
    {
      v4 = [v3 firstObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lastEntryForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[PLStorageCache sharedStorageCache];
    v6 = [v5 lastEntryCacheForEntryKey:v4];

    if (!v6)
    {
      v6 = [(PLCoreStorage *)self lastEntryForKey:v4 withFilters:&unk_1F540B7A0];
      if (v6)
      {
        v7 = +[PLStorageCache sharedStorageCache];
        [v7 addToLastEntryCache:v6];

        v8 = +[PLStorageCache sharedStorageCache];
        [v8 addToLastEntryCacheSubKey:v6];
      }
    }

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)lastEntryForKey:(id)a3 withSubEntryKey:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[PLStorageCache sharedStorageCache];
    v9 = [v8 lastEntryCacheForEntryKey:v6 withSubEntryKey:v7];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [PLEntryDefinition subEntryKeyKeyForEntryKey:v6];
      v18[0] = @"__NOCACHEDUMP__";
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", v11, v7];
      v18[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

      v14 = [(PLCoreStorage *)self lastEntryForKey:v6 withFilters:v13];
      if (v14)
      {
        v15 = +[PLStorageCache sharedStorageCache];
        [v15 addToLastEntryCacheSubKey:v14];
      }

      v10 = v14;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

BOOL __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  lastEntryForKey_withComparisons_isSingleton__classDebugEnabled = result;
  return result;
}

BOOL __61__PLCoreStorage_lastEntryForKey_withComparisons_isSingleton___block_invoke_899(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  lastEntryForKey_withComparisons_isSingleton__classDebugEnabled_898 = result;
  return result;
}

- (id)lastEntryForKey:(id)a3 withIDLessThan:(int64_t)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[PLStorageCache sharedStorageCache];
    v8 = [v7 lastEntryCacheForEntryKey:v6];

    if ([v8 entryID] > a4)
    {
      v9 = +[PLStorageCache sharedStorageCache];
      v10 = [v9 stagingEntryCacheForEntryKey:v6 withIDLessThan:a4];

      if ([v10 entryID] <= a4)
      {
        v8 = v10;
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID < %lld", a4];
        v15[0] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        v8 = [(PLCoreStorage *)self lastEntryForKey:v6 withFilters:v12];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)lastEntryForKey:(id)a3 withFilters:(id)a4
{
  v4 = [(PLCoreStorage *)self lastEntriesForKey:a3 count:1 withFilters:a4];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lastEntriesForKey:(id)a3 count:(int64_t)a4 withFilters:(id)a5
{
  v23[4] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    if (!v8)
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v10 = a3;
    if ([v9 count] && (objc_msgSend(v9, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"__NOCACHEDUMP__"), v11, v12))
    {
      v13 = [v9 mutableCopy];
      [v13 removeObjectAtIndex:0];

      v14 = 1;
      v9 = v13;
    }

    else
    {
      v14 = 0;
    }

    v22[0] = @"where";
    v22[1] = @"order by";
    v23[0] = v9;
    v23[1] = &unk_1F540CC20;
    v22[2] = @"limit";
    if (a4 >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = -a4;
    }

    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v15];
    v23[2] = v16;
    v22[3] = @"__NOCACHEDUMP__";
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v23[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];

    v19 = [(PLCoreStorage *)self entriesForKey:v10 withProperties:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)removeErroneousQualificationEntries
{
  v2 = [(PLCoreStorage *)self connection];
  v3 = [v2 performQuery:@"DELETE FROM PLAccountingOperator_EventInterval_QualificationEvents WHERE QualificationID = 13;"];

  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_INFO, "Performed query to remove qualificationID = 13 from DB", v5, 2u);
  }
}

- (id)aggregateEntriesForKey:(id)a3 withBucketLength:(double)a4 inTimeIntervalRange:(_PLTimeIntervalRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke;
  v23[3] = &unk_1E8519BE0;
  v26 = location;
  v27 = length;
  v28 = a4;
  v25 = &v29;
  v23[4] = self;
  v10 = v9;
  v24 = v10;
  [(PLCoreStorage *)self dispatchSyncForEntryKey:v10 withBlock:v23];
  if (+[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke_2;
    block[3] = &unk_1E8519630;
    v21 = @"aggregate";
    v22 = v11;
    if (aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__defaultOnce != -1)
    {
      dispatch_once(&aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__defaultOnce, block);
    }

    v12 = aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__classDebugEnabled;

    if (v12 == 1)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entryResults=%@", v30[5]];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLCoreStorage.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLCoreStorage aggregateEntriesForKey:withBucketLength:inTimeIntervalRange:]"];
      [PLCoreStorage logMessage:v13 fromFile:v15 fromFunction:v16 fromLineNumber:2321];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v18 = v30[5];

  _Block_object_dispose(&v29, 8);

  return v18;
}

void __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp + timeInterval AS timestampEnd"];
  [v2 addObject:v3];
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timestamp <= %f AND %f <= timestampEnd", *(a1 + 56) + *(a1 + 64), *(a1 + 56)];
  [v4 addObject:v5];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"timeInterval = %f", *(a1 + 72)];
  [v4 addObject:v6];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14[0] = @"where";
  v14[1] = @"select";
  v15[0] = v4;
  v15[1] = v2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v10 = [v7 entriesForKey:v8 withProperties:v9];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *MEMORY[0x1E69E9840];
}

BOOL __77__PLCoreStorage_aggregateEntriesForKey_withBucketLength_inTimeIntervalRange___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  aggregateEntriesForKey_withBucketLength_inTimeIntervalRange__classDebugEnabled = result;
  return result;
}

+ (id)allOperatorTablesToTrimConditionsForTrimDate:(id)a3
{
  v78[2] = *MEMORY[0x1E69E9840];
  v56 = a3;
  v3 = +[PowerlogCore sharedCore];
  v4 = [v3 agents];
  v78[0] = v4;
  v5 = +[PowerlogCore sharedCore];
  v6 = [v5 services];
  v78[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];

  v8 = +[PowerlogCore sharedCore];
  v9 = [v8 storage];
  v10 = [v9 storageOperator];
  v77 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v12 = [v11 mutableCopy];

  if (!+[PLPlatform isHomePod])
  {
    v13 = +[PowerlogCore sharedCore];
    v14 = [v13 accounting];
    [v12 addObject:v14];
  }

  v15 = +[PowerlogCore sharedCore];
  v16 = [v15 agents];
  v17 = [v16 allOperators];
  [v12 addObjectsFromArray:v17];

  v18 = +[PowerlogCore sharedCore];
  v19 = [v18 services];
  v20 = [v19 allOperators];
  v52 = v12;
  [v12 addObjectsFromArray:v20];

  v21 = [MEMORY[0x1E695DF90] dictionary];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v7;
  v22 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v22)
  {
    v23 = v22;
    v54 = *v70;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v70 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v25 = [*(*(&v69 + 1) + 8 * i) tablesToTrimConditionsForTrimDate:v56];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v66;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v66 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v65 + 1) + 8 * j);
              v31 = [v21 objectForKeyedSubscript:v30];

              if (!v31)
              {
                v32 = [MEMORY[0x1E695DF70] array];
                [v21 setObject:v32 forKeyedSubscript:v30];
              }

              v33 = [v21 objectForKeyedSubscript:v30];
              v34 = [v25 objectForKeyedSubscript:v30];
              [v33 addObject:v34];
            }

            v27 = [v25 countByEnumeratingWithState:&v65 objects:v75 count:16];
          }

          while (v27);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v23);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = v52;
  v55 = [v50 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v55)
  {
    v53 = *v62;
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v62 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v36 = [*(*(&v61 + 1) + 8 * k) tablesToTrimConditionsForTrimDate:v56];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v37 = [v36 allKeys];
        v38 = [v37 countByEnumeratingWithState:&v57 objects:v73 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v58;
          do
          {
            for (m = 0; m != v39; ++m)
            {
              if (*v58 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v57 + 1) + 8 * m);
              v43 = [v21 objectForKeyedSubscript:v42];

              if (!v43)
              {
                v44 = [MEMORY[0x1E695DF70] array];
                [v21 setObject:v44 forKeyedSubscript:v42];
              }

              v45 = [v21 objectForKeyedSubscript:v42];
              v46 = [v36 objectForKeyedSubscript:v42];
              [v45 addObject:v46];
            }

            v39 = [v37 countByEnumeratingWithState:&v57 objects:v73 count:16];
          }

          while (v39);
        }
      }

      v55 = [v50 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v55);
  }

  v47 = [PPSSQLStorage trimConditionsForPLSQLWithTrimDate:v56];
  [v21 addEntriesFromDictionary:v47];

  v48 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)logMessage:(id)a3 fromFile:(id)a4 fromFunction:(id)a5 fromLineNumber:(int64_t)a6
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(PLCoreStorage *)self storageOperator];
  v17[0] = @"message";
  v17[1] = @"file";
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v10;
  v17[2] = @"function";
  v17[3] = @"line";
  v14 = [MEMORY[0x1E696AD98] numberWithLong:a6];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  [v13 logEventPointPLLog:v15];
  v16 = *MEMORY[0x1E69E9840];
}

+ (void)logMessage:(id)a3 fromFile:(id)a4 fromFunction:(id)a5 fromLineNumber:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke;
  block[3] = &unk_1E85199A8;
  v23 = @"PLLogToSyslogOnly";
  v24 = 0;
  if (logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce != -1)
  {
    dispatch_once(&logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce, block);
  }

  v12 = logMessage_fromFile_fromFunction_fromLineNumber__objectForKey;

  if (v12 != 1)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke_2;
    v19 = &unk_1E85199A8;
    v20 = @"PLLogToSyslog";
    v21 = 0;
    if (logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce_948 != -1)
    {
      dispatch_once(&logMessage_fromFile_fromFunction_fromLineNumber__defaultOnce_948, &v16);
    }

    v13 = logMessage_fromFile_fromFunction_fromLineNumber__objectForKey_949;

    if (v13 == 1)
    {
      NSLog(&stru_1F53A2A28.isa, v11, v9, v16, v17, v18, v19);
    }

    if (+[PowerlogCore sharedCoreStarted])
    {
      v14 = +[PowerlogCore sharedCore];
      v15 = [v14 storage];
      [v15 logMessage:v9 fromFile:v10 fromFunction:v11 fromLineNumber:a6];

      goto LABEL_12;
    }

    if (!+[PLDefaults debugEnabled])
    {
      goto LABEL_12;
    }
  }

  NSLog(&stru_1F53A2A28.isa, v11, v9);
LABEL_12:
}

BOOL __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_fromFile_fromFunction_fromLineNumber__objectForKey = result;
  return result;
}

BOOL __65__PLCoreStorage_logMessage_fromFile_fromFunction_fromLineNumber___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_fromFile_fromFunction_fromLineNumber__objectForKey_949 = result;
  return result;
}

+ (id)additionalTables
{
  if (+[PLDefaults taskMode])
  {
    v2 = _additionalTables == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = [PLDefaults objectForKey:@"PLTaskingTables" ifNotSet:0];
    v4 = _additionalTables;
    _additionalTables = v3;

    if (!_additionalTables)
    {
      v5 = PLOSAPreferencesGetValue();
      v6 = _additionalTables;
      _additionalTables = v5;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = _additionalTables;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)attemptToSendTaskingStartNotification
{
  v3 = +[PLSubmissions sharedInstance];
  v4 = [v3 taskingStarted];

  if (v4)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Tasking started, send out notification to inform clients.", v7, 2u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"kPLTaskingStartNotification" object:self];

    notify_post("kPLTaskingStartNotificationGlobal");
  }
}

- (BOOL)registerDailyTasks_XPCActivity
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[PLUtilities isLiteModeDaemon](PLUtilities, "isLiteModeDaemon") || (v3 = +[PLUtilities isFullModeDaemon]))
  {
    [PLDefaults doubleForKey:@"dbDailyTasksInterval" ifNotSet:*MEMORY[0x1E69E9CC0]];
    v5 = v4;
    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v5;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Setting up dailyTasks XPC activity with dbDailyTasksInterval = %f", buf, 0xCu);
    }

    v7 = *MEMORY[0x1E69E9C50];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_39;
    handler[3] = &unk_1E8519F60;
    v12 = v5;
    handler[4] = self;
    v11 = &__block_literal_global_18;
    xpc_activity_register("com.apple.powerlogd.dailyTasks", v7, handler);

    LOBYTE(v3) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke(uint64_t a1, void *a2, xpc_activity_state_t a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v16[0] = &unk_1F5405D00;
  v16[1] = &unk_1F5405D18;
  v17[0] = @"RUN";
  v17[1] = @"DONE";
  v16[2] = &unk_1F5405D30;
  v16[3] = &unk_1F5405D48;
  v17[2] = @"WAIT";
  v17[3] = @"DEFER";
  v16[4] = &unk_1F5405D60;
  v17[4] = @"CONTINUE";
  v4 = MEMORY[0x1E695DF20];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v17 forKeys:v16 count:5];
  v7 = xpc_activity_set_state(v5, a3);

  v8 = PLLogCommon();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithLong:a3];
      v11 = [v6 objectForKeyedSubscript:v10];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: set XPC activity state to %@", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_cold_1(a3, v6, v9);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_39(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    if ((*(*(a1 + 40) + 16))())
    {
      if (xpc_activity_should_defer(v3))
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        [*(a1 + 32) dailyTasks];
        v13 = +[PLSubmissions sharedInstance];
        v14 = [v13 workQueue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_41;
        v15[3] = &unk_1E8519F38;
        v17 = *(a1 + 40);
        v16 = v3;
        dispatch_async(v14, v15);
      }
    }
  }

  else if (!state)
  {
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Check in for XPC activity...", buf, 2u);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x1E69E9D88], 1);
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9CB0], *(a1 + 48));
    xpc_dictionary_set_string(v6, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
    v7 = *MEMORY[0x1E69E9CC8];
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9C68], 22 * *MEMORY[0x1E69E9CC8]);
    xpc_dictionary_set_int64(v6, *MEMORY[0x1E69E9C98], 2 * v7);
    v8 = xpc_activity_copy_criteria(v3);
    v9 = v8;
    if (v8 && xpc_equal(v8, v6))
    {
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Existing criteria found { %@ }", buf, 0xCu);
      }
    }

    else
    {
      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "registerDailyTasks: Existing criteria not found, setting default criteria { %@ }...", buf, 0xCu);
      }

      xpc_activity_set_criteria(v3, v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 filePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1D8611000, v2, v3, "PLCoreStorage: Active DB Path = %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__PLCoreStorage_initOperatorDependancies__block_invoke_7_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__PLCoreStorage_copyUpgradePowerlogsAtPath_toPath___block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_1D8611000, v0, v1, "Copying upgrade log at path: %@ to path: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)entriesForKey:withProperties:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_1D8611000, v0, v1, "Callers of entriesForKey %@ withProperties %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)entriesForKey:withComparisons:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)entriesForKey:withComparisons:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "Entries found in cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)entriesForKey:withComparisons:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __62__PLCoreStorage_XPCScheduling__registerDailyTasks_XPCActivity__block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithLong:a1];
  v6 = [a2 objectForKeyedSubscript:v5];
  v8 = 138412290;
  v9 = v6;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "registerDailyTasks: failed to set XPC activity state to %@", &v8, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end