@interface PLStorageCache
+ (id)sharedStorageCache;
+ (void)syncAndDispatchForEntryCache:(id)cache forEntryKey:(id)key withBlock:(id)block;
- (NSDate)lastCacheFlushDate;
- (PLStorageCache)init;
- (id)cachedEntryForEntryKey:(id)key withEntryID:(int64_t)d;
- (id)connectionForKey:(id)key;
- (id)getEntryFromDBForEntryKey:(id)key withMatchingKeyToValue:(id)value;
- (id)getQueryForAggregateEntryKey:(id)key withMatchingKeyToValue:(id)value;
- (id)lastEntryCacheForEntryKey:(id)key withSubEntryKey:(id)entryKey;
- (id)matchingPairs:(id)pairs;
- (id)stagingEntryCacheForEntryKey:(id)key;
- (id)stagingEntryCacheForEntryKey:(id)key withComparisons:(id)comparisons isSingleton:(BOOL)singleton;
- (id)stagingEntryCacheForEntryKey:(id)key withID:(int64_t)d;
- (id)stagingEntryCacheForEntryKey:(id)key withIDLessThan:(int64_t)than;
- (id)stagingEntryCacheIDsForEntryKey:(id)key;
- (int)limitOfType:(id)type forEntryKey:(id)key;
- (int64_t)addToStagingEntryCache:(id)cache;
- (int64_t)entryIDForNewEntry:(id)entry;
- (int64_t)stagingEntryCacheSizeForEntryKey:(id)key;
- (void)addToLastEntryCache:(id)cache;
- (void)addToLastEntryCacheSubKey:(id)key;
- (void)addToStagingAggregateEntryCache:(id)cache;
- (void)clearLastEntryCacheForEntryKey:(id)key;
- (void)dumpEntryCache:(id)cache;
- (void)dumpLastEntryCache;
- (void)dumpStagingEntryCache;
- (void)enumerateEntryCache:(id)cache withBlock:(id)block;
- (void)enumerateStagingEntryCacheForEntryKey:(id)key withBlock:(id)block;
- (void)enumerateStagingEntryCacheWithBlock:(id)block;
- (void)flushStagingAggregateEntryCacheToDatabase;
- (void)flushStagingEntryCacheToDatabase;
- (void)insertIntoStagingEntryCache:(id)cache;
- (void)lastEntryCachePruneToDate:(id)date;
- (void)logFullLastEntryCacheForEntryKey:(id)key;
- (void)logSizeOfEntryCache:(id)cache;
- (void)logSizeOfLastEntryCache;
- (void)logSizeOfStagingEntryCache;
- (void)logStagingEntryCacheForEntryKey:(id)key;
- (void)setLastCacheFlushDate:(id)date;
- (void)setNextEntryIDForEntryKey:(id)key toEntryID:(int64_t)d;
- (void)updateStagingEntryCacheWithEntry:(id)entry withBlock:(id)block;
@end

@implementation PLStorageCache

+ (id)sharedStorageCache
{
  if (sharedStorageCache_onceToken != -1)
  {
    +[PLStorageCache sharedStorageCache];
  }

  v3 = sharedStorageCache_sharedStorageCache;

  return v3;
}

- (void)flushStagingEntryCacheToDatabase
{
  v74 = *MEMORY[0x1E69E9840];
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke;
    v72[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v72[4] = v3;
    if (flushStagingEntryCacheToDatabase_defaultOnce != -1)
    {
      dispatch_once(&flushStagingEntryCacheToDatabase_defaultOnce, v72);
    }

    if (flushStagingEntryCacheToDatabase_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flushStagingEntryCacheToDatabase: start"];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]"];
      [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:518];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__3;
  v70 = __Block_byref_object_dispose__3;
  monotonicDate = [MEMORY[0x1E695DF00] monotonicDate];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v9 = v67[5];
  lastCacheFlushDate = [(PLStorageCache *)self lastCacheFlushDate];
  [v9 timeIntervalSinceDate:lastCacheFlushDate];
  v12 = v11;

  v65[3] = v12;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  stagingEntryCacheSize = [(PLStorageCache *)self stagingEntryCacheSize];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_179;
  block[3] = &unk_1E85195E0;
  v59 = @"MinCacheSizeLimit";
  v60 = 200;
  if (flushStagingEntryCacheToDatabase_defaultOnce_178 != -1)
  {
    dispatch_once(&flushStagingEntryCacheToDatabase_defaultOnce_178, block);
  }

  v14 = flushStagingEntryCacheToDatabase_objectForKey;

  v64 = stagingEntryCacheSize >= v14;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__3;
  v57 = 0;
  if (+[PLUtilities isPowerlogHelperd])
  {
    v15 = objc_opt_new();
    v16 = v53[5];
    v53[5] = v15;
  }

  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  objc_sync_enter(stagingEntryCache);
  stagingEntryCache2 = [(PLStorageCache *)self stagingEntryCache];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2;
  v51[3] = &unk_1E8519658;
  v51[4] = self;
  v51[5] = &v61;
  v51[6] = v65;
  v51[7] = &v52;
  v51[8] = &v66;
  [stagingEntryCache2 enumerateKeysAndObjectsUsingBlock:v51];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  countWarnings = [(PLStorageCache *)self countWarnings];
  obj = [countWarnings allKeys];

  v19 = [obj countByEnumeratingWithState:&v47 objects:v73 count:16];
  if (v19)
  {
    v20 = *v48;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v47 + 1) + 8 * i);
        stagingEntryCache3 = [(PLStorageCache *)self stagingEntryCache];
        v24 = [stagingEntryCache3 objectForKeyedSubscript:v22];

        if (!v24)
        {
          countWarnings2 = [(PLStorageCache *)self countWarnings];
          v26 = [countWarnings2 objectForKeyedSubscript:v22];
          intValue = [v26 intValue];

          LODWORD(countWarnings2) = [(PLStorageCache *)self limitOfType:@"WarningLimit" forEntryKey:v22];
          countSafetyDrop = [(PLStorageCache *)self countSafetyDrop];
          v29 = [countSafetyDrop objectForKeyedSubscript:v22];
          intValue2 = [v29 intValue];

          v31 = [(PLStorageCache *)self limitOfType:@"SafetyDropLimit" forEntryKey:v22];
          if (intValue >= countWarnings2)
          {
            v32 = *(v62 + 24);
            if (intValue2 < v31)
            {
              if (!*(v62 + 24))
              {
                continue;
              }

              countWarnings3 = [MEMORY[0x1E696AD98] numberWithInt:(intValue2 + 1)];
              countSafetyDrop2 = [(PLStorageCache *)self countSafetyDrop];
              [countSafetyDrop2 setObject:countWarnings3 forKeyedSubscript:v22];

              goto LABEL_24;
            }

            if (!*(v62 + 24))
            {
              continue;
            }
          }

          countSafetyDrop3 = [(PLStorageCache *)self countSafetyDrop];
          [countSafetyDrop3 removeObjectForKey:v22];

          countWarnings3 = [(PLStorageCache *)self countWarnings];
          [countWarnings3 removeObjectForKey:v22];
LABEL_24:

          continue;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v47 objects:v73 count:16];
    }

    while (v19);
  }

  stagingEntryCache4 = [(PLStorageCache *)self stagingEntryCache];
  [stagingEntryCache4 removeAllObjects];

  [(PLStorageCache *)self setStagingEntryCacheSize:0];
  objc_sync_exit(stagingEntryCache);

  [(PLStorageCache *)self setLastCacheFlushDate:v67[5]];
  if (+[PLDefaults debugEnabled])
  {
    v37 = objc_opt_class();
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_3_241;
    v46[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v46[4] = v37;
    if (flushStagingEntryCacheToDatabase_defaultOnce_239 != -1)
    {
      dispatch_once(&flushStagingEntryCacheToDatabase_defaultOnce_239, v46);
    }

    if (flushStagingEntryCacheToDatabase_classDebugEnabled_240 == 1)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"flushStagingEntryCacheToDatabase: end"];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent2 = [v39 lastPathComponent];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]"];
      [PLCoreStorage logMessage:v38 fromFile:lastPathComponent2 fromFunction:v41 fromLineNumber:709];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  _Block_object_dispose(&v52, 8);

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(&v66, 8);

  v43 = *MEMORY[0x1E69E9840];
}

- (NSDate)lastCacheFlushDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastCacheFlushDate = selfCopy->_lastCacheFlushDate;
  if (!lastCacheFlushDate)
  {
    v4 = +[PowerlogCore sharedCore];
    launchDate = [v4 launchDate];
    v6 = selfCopy->_lastCacheFlushDate;
    selfCopy->_lastCacheFlushDate = launchDate;

    lastCacheFlushDate = selfCopy->_lastCacheFlushDate;
  }

  v7 = lastCacheFlushDate;
  objc_sync_exit(selfCopy);

  return v7;
}

void __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v119[7] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v90 = a1;
  if (+[PLDefaults debugEnabled])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_3;
    v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v117[4] = v8;
    if (ArrayReserved_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce, v117);
    }

    if (ArrayReserved_block_invoke_4_classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entryKey=%@", v5];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
      [PLCoreStorage logMessage:v9 fromFile:v11 fromFunction:v12 fromLineNumber:534];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = *(a1 + 32);
  v14 = (a1 + 32);
  v88 = [v15 connectionForKey:v5];
  v16 = [*v14 countWarnings];
  v17 = [v16 objectForKeyedSubscript:v5];
  v18 = [v17 intValue];

  v19 = [*v14 limitOfType:@"WarningLimit" forEntryKey:v5];
  v20 = v19;
  if (*(*(*(v90 + 40) + 8) + 24) != 1)
  {
    v35 = 4 * (v18 >= v19);
    goto LABEL_35;
  }

  v21 = [v6 count];
  v22 = *(*(*(v90 + 48) + 8) + 24);
  v23 = [*(v90 + 32) limitOfType:@"RateLimit" forEntryKey:v5];
  v24 = [*(v90 + 32) countSafetyDrop];
  v25 = [v24 objectForKeyedSubscript:v5];
  v26 = [v25 intValue];

  v27 = [*(v90 + 32) limitOfType:@"SafetyDropLimit" forEntryKey:v5];
  if (v21 / v22 > v23)
  {
    if (+[PLDefaults debugEnabled])
    {
      v28 = *(v90 + 32);
      v29 = objc_opt_class();
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_185;
      v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v116[4] = v29;
      if (ArrayReserved_block_invoke_4_defaultOnce_183 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_183, v116);
      }

      if (ArrayReserved_block_invoke_4_classDebugEnabled_184 == 1)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rate exceeds threshold"];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        v32 = [v31 lastPathComponent];
        v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
        [PLCoreStorage logMessage:v30 fromFile:v32 fromFunction:v33 fromLineNumber:552];

        v34 = PLLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (v18 < v20)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithInt:(v18 + 1)];
    v37 = [*(v90 + 32) countWarnings];
    [v37 setObject:v36 forKeyedSubscript:v5];

    v38 = [*(v90 + 32) countSafetyDrop];
    [v38 removeObjectForKey:v5];

    goto LABEL_35;
  }

  v39 = v27;
  v40 = [*(v90 + 32) countWarnings];
  v41 = [v40 objectForKeyedSubscript:v5];
  if (!v41 || v18 <= v20)
  {

    goto LABEL_34;
  }

  if (v26 >= v39)
  {
LABEL_34:
    v51 = [*(v90 + 32) countWarnings];
    [v51 removeObjectForKey:v5];

    v52 = [*(v90 + 32) countSafetyDrop];
    [v52 removeObjectForKey:v5];

    v35 = 0;
    goto LABEL_35;
  }

  if (+[PLDefaults debugEnabled])
  {
    v42 = *(v90 + 32);
    v43 = objc_opt_class();
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_191;
    v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v115[4] = v43;
    if (ArrayReserved_block_invoke_4_defaultOnce_189 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_189, v115);
    }

    if (ArrayReserved_block_invoke_4_classDebugEnabled_190 == 1)
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"safety drop"];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v46 = [v45 lastPathComponent];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
      [PLCoreStorage logMessage:v44 fromFile:v46 fromFunction:v47 fromLineNumber:570];

      v48 = PLLogCommon();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v49 = [MEMORY[0x1E696AD98] numberWithInt:(v26 + 1)];
  v50 = [*(v90 + 32) countSafetyDrop];
  [v50 setObject:v49 forKeyedSubscript:v5];

  v35 = 3;
LABEL_35:
  if (+[PLDefaults debugEnabled])
  {
    v53 = *(v90 + 32);
    v54 = objc_opt_class();
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_197;
    v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v114[4] = v54;
    if (ArrayReserved_block_invoke_4_defaultOnce_195 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_195, v114);
    }

    if (ArrayReserved_block_invoke_4_classDebugEnabled_196 == 1)
    {
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"state=%i", v35];
      v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v57 = [v56 lastPathComponent];
      v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
      [PLCoreStorage logMessage:v55 fromFile:v57 fromFunction:v58 fromLineNumber:587];

      v59 = PLLogCommon();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v60 = *(v90 + 32);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_201;
  v97[3] = &unk_1E8519608;
  v97[4] = v60;
  v101 = &v106;
  v61 = v88;
  v98 = v61;
  v105 = v35;
  v62 = *(v90 + 40);
  v102 = &v110;
  v103 = v62;
  v63 = v6;
  v99 = v63;
  v64 = v5;
  v65 = *(v90 + 56);
  v100 = v64;
  v104 = v65;
  [v60 enumerateEntryCache:v63 withBlock:v97];
  v66 = objc_opt_class();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_233;
  block[3] = &unk_1E8519630;
  v95 = @"LogCacheSize";
  v96 = v66;
  if (ArrayReserved_block_invoke_4_defaultOnce_231 != -1)
  {
    dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_231, block);
  }

  v67 = ArrayReserved_block_invoke_4_classDebugEnabled_232;

  if (v67)
  {
    v68 = *(v90 + 32);
    v69 = objc_opt_class();
    v70 = @"RateLimit";
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2_237;
    v91[3] = &unk_1E8519630;
    v92 = v70;
    v93 = v69;
    if (ArrayReserved_block_invoke_4_defaultOnce_235 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_4_defaultOnce_235, v91);
    }

    v71 = ArrayReserved_block_invoke_4_classDebugEnabled_236;

    if (((v35 < 2u) & (v71 ^ 1)) == 0)
    {
      v72 = [*(v90 + 32) countWarnings];
      v73 = [v72 objectForKeyedSubscript:v64];
      v74 = [v73 intValue];

      v75 = [*(v90 + 32) countSafetyDrop];
      v76 = [v75 objectForKeyedSubscript:v64];
      v77 = [v76 intValue];

      v78 = *(*(*(v90 + 64) + 8) + 40);
      v118[0] = @"timestampEnd";
      v118[1] = @"EntryKey";
      v119[0] = v78;
      v119[1] = v64;
      v118[2] = @"InsertCount";
      v89 = [MEMORY[0x1E696AD98] numberWithInt:*(v111 + 6)];
      v119[2] = v89;
      v118[3] = @"UpdateCount";
      v79 = [MEMORY[0x1E696AD98] numberWithInt:*(v107 + 6)];
      v119[3] = v79;
      v118[4] = @"State";
      v80 = [MEMORY[0x1E696AD98] numberWithShort:v35];
      v119[4] = v80;
      v118[5] = @"WarningCount";
      v81 = [MEMORY[0x1E696AD98] numberWithInt:v74];
      v119[5] = v81;
      v118[6] = @"SafetyDropCount";
      v82 = [MEMORY[0x1E696AD98] numberWithInt:v77];
      v119[6] = v82;
      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:7];
      v84 = [*(v90 + 32) lastCacheFlushDate];
      v85 = [PLStorageOperator eventIntervalCacheSizeWithPayload:v83 withEntryDate:v84];

      [v85 setEntryID:0x8000000000000000];
      [v61 writeEntry:v85];
    }
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

  objc_autoreleasePoolPop(context);
  v86 = *MEMORY[0x1E69E9840];
}

void __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_201(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2_202;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (ArrayReserved_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce, block);
    }

    if (ArrayReserved_block_invoke_5_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", v3];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:593];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = objc_autoreleasePoolPush();
  if ([v3 existsInDB])
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    if (+[PLUtilities isPowerlogHelperd])
    {
      if (+[PLDefaults debugEnabled])
      {
        v12 = *(a1 + 32);
        v13 = objc_opt_class();
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_205;
        v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v52[4] = v13;
        if (ArrayReserved_block_invoke_5_defaultOnce_203 != -1)
        {
          dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_203, v52);
        }

        if (ArrayReserved_block_invoke_5_classDebugEnabled_204 == 1)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"powerlogHelperd update: %@", v3];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v16 = [v15 lastPathComponent];
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
          [PLCoreStorage logMessage:v14 fromFile:v16 fromFunction:v17 fromLineNumber:599];

          v18 = PLLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }
    }

    else if (!+[PLUtilities isPerfPowerMetricd])
    {
      if (+[PLDefaults debugEnabled])
      {
        v31 = *(a1 + 32);
        v32 = objc_opt_class();
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_211;
        v51[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v51[4] = v32;
        if (ArrayReserved_block_invoke_5_defaultOnce_209 != -1)
        {
          dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_209, v51);
        }

        if (ArrayReserved_block_invoke_5_classDebugEnabled_210 == 1)
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updateEntry: entry=%@", v3];
          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v35 = [v34 lastPathComponent];
          v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
          [PLCoreStorage logMessage:v33 fromFile:v35 fromFunction:v36 fromLineNumber:601];

          v37 = PLLogCommon();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [*(a1 + 40) updateEntry:v3];
    }
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    if (*(a1 + 96) >= 2)
    {
      if (*(*(*(a1 + 80) + 8) + 24) == 1)
      {
        v19 = *(*(*(a1 + 72) + 8) + 24);
        if (v19)
        {
          v20 = *(*(*(a1 + 64) + 8) + 24) + v19;
          if ([*(a1 + 48) count] != v20)
          {
            v21 = *(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 72) + 8) + 24);
            if (v21 != [*(a1 + 48) count] >> 1)
            {
              [*(a1 + 32) setNextEntryIDForEntryKey:*(a1 + 56) toEntryID:{objc_msgSend(v3, "entryID")}];
              [*(a1 + 32) setNextEntryIDForEntryKey:*(a1 + 56) toEntryID:{objc_msgSend(v3, "entryID")}];
              goto LABEL_50;
            }
          }
        }
      }

      [*(a1 + 40) writeEntry:v3];
    }

    if (+[PLUtilities isPowerlogHelperd])
    {
      if (+[PLDefaults debugEnabled])
      {
        v22 = *(a1 + 32);
        v23 = objc_opt_class();
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_217;
        v50[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v50[4] = v23;
        if (ArrayReserved_block_invoke_5_defaultOnce_215 != -1)
        {
          dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_215, v50);
        }

        if (ArrayReserved_block_invoke_5_classDebugEnabled_216 == 1)
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"powerlogHelperd: %@", v3];
          v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
          [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:630];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v29 = *(*(*(a1 + 88) + 8) + 40);
      v30 = [v3 serialized];
      [v29 addObject:v30];
    }

    else if (!+[PLUtilities isPerfPowerMetricd])
    {
      if (+[PLDefaults debugEnabled])
      {
        v38 = *(a1 + 32);
        v39 = objc_opt_class();
        v45 = MEMORY[0x1E69E9820];
        v46 = 3221225472;
        v47 = __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_223;
        v48 = &__block_descriptor_40_e5_v8__0lu32l8;
        v49 = v39;
        if (ArrayReserved_block_invoke_5_defaultOnce_221 != -1)
        {
          dispatch_once(&ArrayReserved_block_invoke_5_defaultOnce_221, &v45);
        }

        if (ArrayReserved_block_invoke_5_classDebugEnabled_222 == 1)
        {
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeEntry: entry=%@", v3, v45, v46, v47, v48, v49];
          v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v42 = [v41 lastPathComponent];
          v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingEntryCacheToDatabase]_block_invoke_2"];
          [PLCoreStorage logMessage:v40 fromFile:v42 fromFunction:v43 fromLineNumber:633];

          v44 = PLLogCommon();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      [*(a1 + 40) writeEntry:v3];
    }
  }

LABEL_50:
  objc_autoreleasePoolPop(v11);
}

- (void)flushStagingAggregateEntryCacheToDatabase
{
  v56 = *MEMORY[0x1E69E9840];
  obj = [(PLStorageCache *)self stagingAggregateEntryCache];
  objc_sync_enter(obj);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  stagingAggregateEntryCache = [(PLStorageCache *)self stagingAggregateEntryCache];
  allKeys = [stagingAggregateEntryCache allKeys];

  v30 = allKeys;
  v32 = [allKeys countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v32)
  {
    v31 = *v49;
    do
    {
      v33 = 0;
      do
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v48 + 1) + 8 * v33);
        if (+[PLDefaults debugEnabled])
        {
          v4 = objc_opt_class();
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __59__PLStorageCache_flushStagingAggregateEntryCacheToDatabase__block_invoke;
          v45[3] = &unk_1E8519630;
          v46 = @"aggregate";
          v47 = v4;
          if (flushStagingAggregateEntryCacheToDatabase_defaultOnce != -1)
          {
            dispatch_once(&flushStagingAggregateEntryCacheToDatabase_defaultOnce, v45);
          }

          v5 = flushStagingAggregateEntryCacheToDatabase_classDebugEnabled;

          if (v5)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"entryKey=%@", v36];
            v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
            lastPathComponent = [v7 lastPathComponent];
            v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingAggregateEntryCacheToDatabase]"];
            [PLCoreStorage logMessage:v6 fromFile:lastPathComponent fromFunction:v9 fromLineNumber:725];

            v10 = PLLogCommon();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v54 = v6;
              _os_log_debug_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        v35 = [(PLStorageCache *)self connectionForKey:v36];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        stagingAggregateEntryCache2 = [(PLStorageCache *)self stagingAggregateEntryCache];
        v12 = [stagingAggregateEntryCache2 objectForKeyedSubscript:v36];
        allKeys2 = [v12 allKeys];

        v13 = [allKeys2 countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v13)
        {
          v14 = *v42;
          do
          {
            v15 = 0;
            do
            {
              if (*v42 != v14)
              {
                objc_enumerationMutation(allKeys2);
              }

              v16 = *(*(&v41 + 1) + 8 * v15);
              v17 = objc_autoreleasePoolPush();
              if (+[PLDefaults debugEnabled])
              {
                v18 = objc_opt_class();
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __59__PLStorageCache_flushStagingAggregateEntryCacheToDatabase__block_invoke_250;
                block[3] = &unk_1E8519630;
                v39 = @"aggregate";
                v40 = v18;
                if (flushStagingAggregateEntryCacheToDatabase_defaultOnce_248 != -1)
                {
                  dispatch_once(&flushStagingAggregateEntryCacheToDatabase_defaultOnce_248, block);
                }

                v19 = flushStagingAggregateEntryCacheToDatabase_classDebugEnabled_249;

                if (v19)
                {
                  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"matchingKeyToValue=%@", v16];
                  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
                  lastPathComponent2 = [v21 lastPathComponent];
                  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache flushStagingAggregateEntryCacheToDatabase]"];
                  [PLCoreStorage logMessage:v20 fromFile:lastPathComponent2 fromFunction:v23 fromLineNumber:730];

                  v24 = PLLogCommon();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v54 = v20;
                    _os_log_debug_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                  }
                }
              }

              v25 = [(PLStorageCache *)self getQueryForAggregateEntryKey:v36 withMatchingKeyToValue:v16];
              v26 = [v35 performQuery:v25];

              objc_autoreleasePoolPop(v17);
              ++v15;
            }

            while (v13 != v15);
            v13 = [allKeys2 countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v13);
        }

        stagingAggregateEntryCache3 = [(PLStorageCache *)self stagingAggregateEntryCache];
        [stagingAggregateEntryCache3 removeObjectForKey:v36];

        ++v33;
      }

      while (v33 != v32);
      v32 = [v30 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v32);
  }

  objc_sync_exit(obj);
  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __36__PLStorageCache_sharedStorageCache__block_invoke()
{
  sharedStorageCache_sharedStorageCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)syncAndDispatchForEntryCache:(id)cache forEntryKey:(id)key withBlock:(id)block
{
  cacheCopy = cache;
  blockCopy = block;
  v9 = [PLCoreStorage storageQueueNameForEntryKey:key];
  v10 = [PLUtilities workQueueForKey:v9];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__PLStorageCache_syncAndDispatchForEntryCache_forEntryKey_withBlock___block_invoke;
  v13[3] = &unk_1E8519400;
  v14 = cacheCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = cacheCopy;
  [PLUtilities dispatchSyncIfNotCallerQueue:v10 withBlock:v13];
}

void __69__PLStorageCache_syncAndDispatchForEntryCache_forEntryKey_withBlock___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  (*(*(a1 + 40) + 16))();
  objc_sync_exit(obj);
}

- (PLStorageCache)init
{
  v16.receiver = self;
  v16.super_class = PLStorageCache;
  v2 = [(PLStorageCache *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheContent = v2->_cacheContent;
    v2->_cacheContent = v3;

    v5 = objc_opt_new();
    lastEntryCache = v2->_lastEntryCache;
    v2->_lastEntryCache = v5;

    v7 = objc_opt_new();
    stagingEntryCache = v2->_stagingEntryCache;
    v2->_stagingEntryCache = v7;

    v9 = objc_opt_new();
    stagingAggregateEntryCache = v2->_stagingAggregateEntryCache;
    v2->_stagingAggregateEntryCache = v9;

    v2->_lastEntryCacheSize = 0;
    v2->_stagingEntryCacheSize = 0;
    v11 = objc_opt_new();
    countWarnings = v2->_countWarnings;
    v2->_countWarnings = v11;

    v13 = objc_opt_new();
    countSafetyDrop = v2->_countSafetyDrop;
    v2->_countSafetyDrop = v13;
  }

  return v2;
}

- (id)connectionForKey:(id)key
{
  keyCopy = key;
  if ([PPSEntryKey PPSEnabled:keyCopy])
  {
    v4 = +[PPSCoreStorage sharedSQLStorage];
    v5 = [v4 connectionForKey:keyCopy];
  }

  else
  {
    v5 = +[PLSQLiteConnection sharedSQLiteConnection];
  }

  return v5;
}

- (void)logSizeOfStagingEntryCache
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stagingEntryCacheSize=%ld", -[PLStorageCache stagingEntryCacheSize](self, "stagingEntryCacheSize")];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache logSizeOfStagingEntryCache]"];
  [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:74];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  [(PLStorageCache *)self logSizeOfEntryCache:stagingEntryCache];
}

- (void)logSizeOfLastEntryCache
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastEntryCacheSize=%ld", -[PLStorageCache lastEntryCacheSize](self, "lastEntryCacheSize")];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache logSizeOfLastEntryCache]"];
  [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:79];

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  [(PLStorageCache *)self logSizeOfEntryCache:lastEntryCache];
}

- (void)logFullLastEntryCacheForEntryKey:(id)key
{
  v4 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  v7 = [lastEntryCache objectForKeyedSubscript:keyCopy];

  v8 = [v4 stringWithFormat:@"%@", v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache logFullLastEntryCacheForEntryKey:]"];
  [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:84];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }
}

- (void)logStagingEntryCacheForEntryKey:(id)key
{
  v4 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v7 = [stagingEntryCache objectForKeyedSubscript:keyCopy];

  v8 = [v4 stringWithFormat:@"%@", v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache logStagingEntryCacheForEntryKey:]"];
  [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:88];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }
}

- (void)dumpStagingEntryCache
{
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  [(PLStorageCache *)self dumpEntryCache:stagingEntryCache];
}

- (void)dumpLastEntryCache
{
  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  [(PLStorageCache *)self dumpEntryCache:lastEntryCache];
}

- (void)logSizeOfEntryCache:(id)cache
{
  cacheCopy = cache;
  objc_sync_enter(cacheCopy);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = objc_opt_new();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__PLStorageCache_logSizeOfEntryCache___block_invoke;
  v9[3] = &unk_1E8519428;
  v9[4] = &v14;
  v9[5] = &v10;
  [cacheCopy enumerateKeysAndObjectsUsingBlock:v9];
  [v15[5] appendFormat:@"-----\ntotalCount %ld", v11[3]];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tempStorage count:\n%@", v15[5]];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache logSizeOfEntryCache:]"];
  [PLCoreStorage logMessage:v4 fromFile:lastPathComponent fromFunction:v7 fromLineNumber:114];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  objc_sync_exit(cacheCopy);
}

void __38__PLStorageCache_logSizeOfEntryCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [v5 count];
  }

  else
  {
    v6 = 1;
  }

  [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%@ %ld\n", v7, v6];
  *(*(*(a1 + 40) + 8) + 24) += v6;
}

- (void)dumpEntryCache:(id)cache
{
  cacheCopy = cache;
  [(PLStorageCache *)self logSizeOfEntryCache:cacheCopy];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"EntryCache DUMP!"];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache dumpEntryCache:]"];
  [PLCoreStorage logMessage:v5 fromFile:lastPathComponent fromFunction:v8 fromLineNumber:120];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
  }

  v10 = cacheCopy;
  objc_sync_enter(v10);
  [v10 removeAllObjects];
  objc_sync_exit(v10);
}

- (void)enumerateEntryCache:(id)cache withBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  blockCopy = block;
  v21 = 0;
  allKeys = [cacheCopy allKeys];
  v8 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [cacheCopy objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v13), v17}];
      blockCopy[2](blockCopy, v14, &v21);
      v15 = v21;

      if (v15)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)cachedEntryForEntryKey:(id)key withEntryID:(int64_t)d
{
  keyCopy = key;
  v7 = [(PLStorageCache *)self lastEntryCacheForEntryKey:keyCopy];
  v8 = v7;
  if (!v7 || [v7 entryID] != d)
  {
    v9 = [(PLStorageCache *)self stagingEntryCacheForEntryKey:keyCopy withID:d];

    v8 = v9;
  }

  v10 = v8;

  return v10;
}

- (void)clearLastEntryCacheForEntryKey:(id)key
{
  keyCopy = key;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PLStorageCache_clearLastEntryCacheForEntryKey___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (clearLastEntryCacheForEntryKey__defaultOnce != -1)
    {
      dispatch_once(&clearLastEntryCacheForEntryKey__defaultOnce, block);
    }

    if (clearLastEntryCacheForEntryKey__classDebugEnabled == 1)
    {
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin: entryKey=%@", keyCopy];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache clearLastEntryCacheForEntryKey:]"];
      [PLCoreStorage logMessage:keyCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:149];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  objc_sync_enter(lastEntryCache);
  if (+[PLDefaults debugEnabled])
  {
    v12 = objc_opt_class();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__PLStorageCache_clearLastEntryCacheForEntryKey___block_invoke_55;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v12;
    if (clearLastEntryCacheForEntryKey__defaultOnce_53 != -1)
    {
      dispatch_once(&clearLastEntryCacheForEntryKey__defaultOnce_53, v19);
    }

    if (clearLastEntryCacheForEntryKey__classDebugEnabled_54 == 1)
    {
      keyCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in @synchronized: entryKey=%@", keyCopy];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache clearLastEntryCacheForEntryKey:]"];
      [PLCoreStorage logMessage:keyCopy2 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:152];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  lastEntryCache2 = [(PLStorageCache *)self lastEntryCache];
  [lastEntryCache2 removeObjectForKey:keyCopy];

  objc_sync_exit(lastEntryCache);
}

BOOL __49__PLStorageCache_clearLastEntryCacheForEntryKey___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearLastEntryCacheForEntryKey__classDebugEnabled = result;
  return result;
}

BOOL __49__PLStorageCache_clearLastEntryCacheForEntryKey___block_invoke_55(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  clearLastEntryCacheForEntryKey__classDebugEnabled_54 = result;
  return result;
}

- (void)lastEntryCachePruneToDate:(id)date
{
  dateCopy = date;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (lastEntryCachePruneToDate__defaultOnce != -1)
    {
      dispatch_once(&lastEntryCachePruneToDate__defaultOnce, block);
    }

    if (lastEntryCachePruneToDate__classDebugEnabled == 1)
    {
      dateCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"begin: date=%@", dateCopy];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache lastEntryCachePruneToDate:]"];
      [PLCoreStorage logMessage:dateCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:158];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  objc_sync_enter(lastEntryCache);
  if (+[PLDefaults debugEnabled])
  {
    v12 = objc_opt_class();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_64;
    v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v26[4] = v12;
    if (lastEntryCachePruneToDate__defaultOnce_62 != -1)
    {
      dispatch_once(&lastEntryCachePruneToDate__defaultOnce_62, v26);
    }

    if (lastEntryCachePruneToDate__classDebugEnabled_63 == 1)
    {
      dateCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"in @synchronized: date=%@", dateCopy];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent2 = [v14 lastPathComponent];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache lastEntryCachePruneToDate:]"];
      [PLCoreStorage logMessage:dateCopy2 fromFile:lastPathComponent2 fromFunction:v16 fromLineNumber:161];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v18 = objc_opt_new();
  lastEntryCache2 = [(PLStorageCache *)self lastEntryCache];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_69;
  v23[3] = &unk_1E8519478;
  v20 = dateCopy;
  v24 = v20;
  v21 = v18;
  v25 = v21;
  [lastEntryCache2 enumerateKeysAndObjectsUsingBlock:v23];

  lastEntryCache3 = [(PLStorageCache *)self lastEntryCache];
  [lastEntryCache3 removeObjectsForKeys:v21];

  objc_sync_exit(lastEntryCache);
}

BOOL __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  lastEntryCachePruneToDate__classDebugEnabled = result;
  return result;
}

BOOL __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_64(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  lastEntryCachePruneToDate__classDebugEnabled_63 = result;
  return result;
}

void __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_69(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [PLEntryDefinition subEntryKeyKeyForEntryKey:v5];

  if (v7)
  {
    v8 = objc_opt_new();
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_2;
    v15 = &unk_1E8519450;
    v16 = *(a1 + 32);
    v9 = v8;
    v17 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v12];
    [v6 removeObjectsForKeys:{v9, v12, v13, v14, v15}];
    if (![v6 count])
    {
      [*(a1 + 40) addObject:v5];
    }
  }

  else
  {
    v10 = [v6 entryDate];
    v11 = [v10 compare:*(a1 + 32)];

    if (v11 == -1)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

void __44__PLStorageCache_lastEntryCachePruneToDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 entryDate];
  v6 = [v5 compare:*(a1 + 32)];

  if (v6 == -1)
  {
    [*(a1 + 40) addObject:v7];
  }
}

- (void)addToLastEntryCacheSubKey:(id)key
{
  keyCopy = key;
  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  entryKey = [keyCopy entryKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PLStorageCache_addToLastEntryCacheSubKey___block_invoke;
  v8[3] = &unk_1E8519100;
  v9 = keyCopy;
  selfCopy = self;
  v7 = keyCopy;
  [PLStorageCache syncAndDispatchForEntryCache:lastEntryCache forEntryKey:entryKey withBlock:v8];
}

void __44__PLStorageCache_addToLastEntryCacheSubKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subEntryKey];

  if (v2)
  {
    v3 = [*(a1 + 40) lastEntryCache];
    v4 = [*(a1 + 32) entryKey];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = objc_opt_new();
      v7 = [*(a1 + 40) lastEntryCache];
      v8 = [*(a1 + 32) entryKey];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    v9 = [*(a1 + 40) lastEntryCache];
    v10 = [*(a1 + 32) entryKey];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = [*(a1 + 32) subEntryKey];
    v13 = [v11 objectForKeyedSubscript:v12];

    v14 = [v13 entryID];
    if (v14 <= [*(a1 + 32) entryID])
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) lastEntryCache];
      v17 = [*(a1 + 32) entryKey];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = [*(a1 + 32) subEntryKey];
      [v18 setObject:v15 forKeyedSubscript:v19];

      v20 = *(a1 + 40);
      v21 = objc_opt_class();
      block = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __44__PLStorageCache_addToLastEntryCacheSubKey___block_invoke_2;
      v36 = &__block_descriptor_40_e5_v8__0lu32l8;
      v37 = v21;
      if (ArrayReserved_block_invoke_defaultOnce != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_defaultOnce, &block);
      }

      if (ArrayReserved_block_invoke_classDebugEnabled == 1)
      {
        v22 = [*(a1 + 32) entryKey];
        v23 = [v22 isEqualToString:@"PLStorageOperator_EventPoint_PLLog"];

        if ((v23 & 1) == 0)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [*(a1 + 32) entryKey];
          v26 = [*(a1 + 32) subEntryKey];
          v27 = [*(a1 + 32) entryID];
          v28 = [v24 stringWithFormat:@"LastEntryCache added %@.%@ %lld", v25, v26, v27, block, v34, v35, v36, v37];

          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v30 = [v29 lastPathComponent];
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToLastEntryCacheSubKey:]_block_invoke"];
          [PLCoreStorage logMessage:v28 fromFile:v30 fromFunction:v31 fromLineNumber:197];

          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }
    }

    if (!v13)
    {
      [*(a1 + 40) setLastEntryCacheSize:{objc_msgSend(*(a1 + 40), "lastEntryCacheSize") + 1}];
    }
  }
}

BOOL __44__PLStorageCache_addToLastEntryCacheSubKey___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_classDebugEnabled = result;
  return result;
}

- (void)addToLastEntryCache:(id)cache
{
  cacheCopy = cache;
  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  entryKey = [cacheCopy entryKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__PLStorageCache_addToLastEntryCache___block_invoke;
  v8[3] = &unk_1E8519100;
  v9 = cacheCopy;
  selfCopy = self;
  v7 = cacheCopy;
  [PLStorageCache syncAndDispatchForEntryCache:lastEntryCache forEntryKey:entryKey withBlock:v8];
}

void __38__PLStorageCache_addToLastEntryCache___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subEntryKey];

  v3 = [*(a1 + 40) lastEntryCache];
  v4 = [*(a1 + 32) entryKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v2)
  {

    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = [*(a1 + 40) lastEntryCache];
      v9 = [*(a1 + 32) entryKey];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    v10 = [*(a1 + 40) lastEntryCache];
    v11 = [*(a1 + 32) entryKey];
    v12 = [v10 objectForKeyedSubscript:v11];
    v6 = [v12 objectForKeyedSubscript:@"__LastEntry__"];

    v13 = [v6 entryID];
    if (v13 <= [*(a1 + 32) entryID])
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) lastEntryCache];
      v16 = [*(a1 + 32) entryKey];
      v17 = [v15 objectForKeyedSubscript:v16];
      [v17 setObject:v14 forKeyedSubscript:@"__LastEntry__"];

      v18 = *(a1 + 40);
      v19 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__PLStorageCache_addToLastEntryCache___block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v19;
      if (ArrayReserved_block_invoke_2_defaultOnce != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_2_defaultOnce, block);
      }

      if (ArrayReserved_block_invoke_2_classDebugEnabled == 1)
      {
        v20 = [*(a1 + 32) entryKey];
        v21 = [v20 isEqualToString:@"PLStorageOperator_EventPoint_PLLog"];

        if ((v21 & 1) == 0)
        {
          v22 = MEMORY[0x1E696AEC0];
          v23 = [*(a1 + 32) entryKey];
          v24 = [v22 stringWithFormat:@"LastEntryCache added %@ %lld", v23, objc_msgSend(*(a1 + 32), "entryID")];

          v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToLastEntryCache:]_block_invoke"];
          [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:217];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

LABEL_18:
        }
      }
    }
  }

  else
  {

    v29 = [v6 entryID];
    if (v29 <= [*(a1 + 32) entryID])
    {
      v30 = *(a1 + 32);
      v31 = [*(a1 + 40) lastEntryCache];
      v32 = [*(a1 + 32) entryKey];
      [v31 setObject:v30 forKeyedSubscript:v32];

      v33 = *(a1 + 40);
      v34 = objc_opt_class();
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __38__PLStorageCache_addToLastEntryCache___block_invoke_87;
      v46 = &__block_descriptor_40_e5_v8__0lu32l8;
      v47 = v34;
      if (ArrayReserved_block_invoke_2_defaultOnce_85 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_2_defaultOnce_85, &v43);
      }

      if (ArrayReserved_block_invoke_2_classDebugEnabled_86 == 1)
      {
        v35 = [*(a1 + 32) entryKey];
        v36 = [v35 isEqualToString:@"PLStorageOperator_EventPoint_PLLog"];

        if ((v36 & 1) == 0)
        {
          v37 = MEMORY[0x1E696AEC0];
          v38 = [*(a1 + 32) entryKey];
          v39 = [*(a1 + 32) entryID];
          v24 = [v37 stringWithFormat:@"LastEntryCache added %@ %lld", v38, v39, v43, v44, v45, v46, v47];

          v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
          v41 = [v40 lastPathComponent];
          v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToLastEntryCache:]_block_invoke_2"];
          [PLCoreStorage logMessage:v24 fromFile:v41 fromFunction:v42 fromLineNumber:228];

          v28 = PLLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }

          goto LABEL_18;
        }
      }
    }
  }

  if (!v6)
  {
    [*(a1 + 40) setLastEntryCacheSize:{objc_msgSend(*(a1 + 40), "lastEntryCacheSize") + 1}];
  }
}

BOOL __38__PLStorageCache_addToLastEntryCache___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_2_classDebugEnabled = result;
  return result;
}

BOOL __38__PLStorageCache_addToLastEntryCache___block_invoke_87(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_2_classDebugEnabled_86 = result;
  return result;
}

- (id)lastEntryCacheForEntryKey:(id)key withSubEntryKey:(id)entryKey
{
  keyCopy = key;
  entryKeyCopy = entryKey;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  lastEntryCache = [(PLStorageCache *)self lastEntryCache];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__PLStorageCache_lastEntryCacheForEntryKey_withSubEntryKey___block_invoke;
  v13[3] = &unk_1E85194A0;
  v16 = &v17;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = entryKeyCopy;
  v15 = v10;
  [PLStorageCache syncAndDispatchForEntryCache:lastEntryCache forEntryKey:v9 withBlock:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __60__PLStorageCache_lastEntryCacheForEntryKey_withSubEntryKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastEntryCache];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [PLEntryDefinition subEntryKeyKeyForEntryKey:*(a1 + 40)];
  if (v6)
  {
    v11 = v6;
    if (*(a1 + 48))
    {
      v7 = *(a1 + 48);
    }

    else
    {
      v7 = @"__LastEntry__";
    }

    v8 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v6 = v11;
  }
}

- (id)stagingEntryCacheIDsForEntryKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = [MEMORY[0x1E695DFA8] set];
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLStorageCache_stagingEntryCacheIDsForEntryKey___block_invoke;
  v9[3] = &unk_1E8519128;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  v11 = &v12;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v6 withBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__PLStorageCache_stagingEntryCacheIDsForEntryKey___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) stagingEntryCache];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 allValues];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(*(a1 + 48) + 8) + 40);
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v13 + 1) + 8 * v9), "entryID", v13)}];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)stagingEntryCacheSizeForEntryKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PLStorageCache_stagingEntryCacheSizeForEntryKey___block_invoke;
  v9[3] = &unk_1E85194C8;
  v11 = &v12;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v6 withBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__PLStorageCache_stagingEntryCacheSizeForEntryKey___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) stagingEntryCache];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count];
}

- (id)stagingEntryCacheForEntryKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__PLStorageCache_stagingEntryCacheForEntryKey___block_invoke;
  v9[3] = &unk_1E85194C8;
  v11 = &v12;
  v9[4] = self;
  v6 = keyCopy;
  v10 = v6;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v6 withBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__PLStorageCache_stagingEntryCacheForEntryKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) stagingEntryCache];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)stagingEntryCacheForEntryKey:(id)key withID:(int64_t)d
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PLStorageCache_stagingEntryCacheForEntryKey_withID___block_invoke;
  v11[3] = &unk_1E85194F0;
  v13 = &v15;
  v11[4] = self;
  v8 = keyCopy;
  v12 = v8;
  dCopy = d;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v8 withBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __54__PLStorageCache_stagingEntryCacheForEntryKey_withID___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) stagingEntryCache];
  v2 = [v7 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)stagingEntryCacheForEntryKey:(id)key withIDLessThan:(int64_t)than
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__PLStorageCache_stagingEntryCacheForEntryKey_withIDLessThan___block_invoke;
  v11[3] = &unk_1E8519540;
  v11[4] = self;
  v8 = keyCopy;
  v13 = &v15;
  thanCopy = than;
  v12 = v8;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v8 withBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __62__PLStorageCache_stagingEntryCacheForEntryKey_withIDLessThan___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [v2 stagingEntryCache];
  v4 = [v3 objectForKeyedSubscript:a1[5]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__PLStorageCache_stagingEntryCacheForEntryKey_withIDLessThan___block_invoke_2;
  v6[3] = &unk_1E8519518;
  v5 = a1[7];
  v6[4] = a1[6];
  v6[5] = v5;
  [v2 enumerateEntryCache:v4 withBlock:v6];
}

void __62__PLStorageCache_stagingEntryCacheForEntryKey_withIDLessThan___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 entryID] < *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)stagingEntryCacheForEntryKey:(id)key withComparisons:(id)comparisons isSingleton:(BOOL)singleton
{
  keyCopy = key;
  comparisonsCopy = comparisons;
  v10 = objc_opt_new();
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__PLStorageCache_stagingEntryCacheForEntryKey_withComparisons_isSingleton___block_invoke;
  v18[3] = &unk_1E8519590;
  v18[4] = self;
  v19 = keyCopy;
  v20 = comparisonsCopy;
  v12 = v10;
  v21 = v12;
  singletonCopy = singleton;
  v13 = comparisonsCopy;
  v14 = keyCopy;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:v14 withBlock:v18];

  v15 = v21;
  v16 = v12;

  return v12;
}

void __75__PLStorageCache_stagingEntryCacheForEntryKey_withComparisons_isSingleton___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PLStorageCache_stagingEntryCacheForEntryKey_withComparisons_isSingleton___block_invoke_2;
  v4[3] = &unk_1E8519568;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 enumerateStagingEntryCacheForEntryKey:v3 withBlock:v4];
}

void __75__PLStorageCache_stagingEntryCacheForEntryKey_withComparisons_isSingleton___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 && [v4 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = a1;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v6)
    {
LABEL_27:

      goto LABEL_28;
    }

    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 comparisonOperation] == 6)
        {
          v11 = [v10 key];
          v12 = [v3 objectForKeyedSubscript:v11];

          if (v12)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v13 = [v10 comparisonOperation];
          v14 = [v10 key];
          v15 = [v3 objectForKeyedSubscript:v14];
          v16 = v15;
          if (v13 == 7)
          {

            if (!v16)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v17 = [v10 value];
            v18 = [v16 plCompare:v17];

            if ((![v10 hasEqualComparisonComponent] || v18) && (!objc_msgSend(v10, "hasGreaterThanComparisonComponent") || v18 != 1) && (!objc_msgSend(v10, "hasLessThanComparisonComponent") || v18 != -1) && (objc_msgSend(v10, "comparisonOperation") != 1 || !v18))
            {
              goto LABEL_27;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);

    v19 = *(v21 + 40);
  }

  else
  {
    v19 = *(a1 + 40);
  }

  [v19 addObject:v3];
LABEL_28:

  v20 = *MEMORY[0x1E69E9840];
}

- (int64_t)entryIDForNewEntry:(id)entry
{
  entryCopy = entry;
  entryKey = [entryCopy entryKey];
  v6 = [(PLStorageCache *)self lastEntryCacheForEntryKey:entryKey];

  v7 = &off_1D86FA000;
  if (+[PLDefaults debugEnabled])
  {
    v8 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLStorageCache_entryIDForNewEntry___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v8;
    if (entryIDForNewEntry__defaultOnce != -1)
    {
      dispatch_once(&entryIDForNewEntry__defaultOnce, block);
    }

    if (entryIDForNewEntry__classDebugEnabled == 1)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"lastEntry=%@", v6];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
      [PLCoreStorage logMessage:v9 fromFile:lastPathComponent fromFunction:v12 fromLineNumber:367];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }

      v7 = &off_1D86FA000;
    }
  }

  if (!v6)
  {
    v22 = MEMORY[0x1E696AEC0];
    entryKey2 = [entryCopy entryKey];
    v24 = [v22 stringWithFormat:@"SELECT seq + 1 AS nextSeq FROM SQLITE_SEQUENCE where name='%@'", entryKey2];;

    entryKey3 = [entryCopy entryKey];
    v26 = [(PLStorageCache *)self connectionForKey:entryKey3];
    v57 = v24;
    v21 = [v26 performQuery:v24];

    if (+[PLDefaults debugEnabled])
    {
      v27 = objc_opt_class();
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __37__PLStorageCache_entryIDForNewEntry___block_invoke_100;
      v59[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v59[4] = v27;
      if (entryIDForNewEntry__defaultOnce_98 != -1)
      {
        dispatch_once(&entryIDForNewEntry__defaultOnce_98, v59);
      }

      if (entryIDForNewEntry__classDebugEnabled_99 == 1)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"result=%@", v21];
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent2 = [v29 lastPathComponent];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
        [PLCoreStorage logMessage:v28 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:371];

        v32 = PLLogCommon();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    lastObject = [v21 lastObject];
    v34 = [lastObject objectForKeyedSubscript:@"nextSeq"];
    longLongValue = [v34 longLongValue];

    if (longLongValue <= 1 && +[PLDefaults debugEnabled])
    {
      v35 = MEMORY[0x1E696AEC0];
      entryKey4 = [entryCopy entryKey];
      v56 = [v35 stringWithFormat:@"failed entryID Query! %@ %@", entryKey4, v21];

      v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent3 = [v37 lastPathComponent];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
      [PLCoreStorage logMessage:v56 fromFile:lastPathComponent3 fromFunction:v39 fromLineNumber:374];

      v40 = PLLogCommon();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }

    goto LABEL_26;
  }

  longLongValue = [v6 entryID] + 1;
  if (longLongValue <= 1 && +[PLDefaults debugEnabled])
  {
    v15 = MEMORY[0x1E696AEC0];
    entryKey5 = [entryCopy entryKey];
    v17 = [v15 stringWithFormat:@"failed entryID cache! %@", entryKey5];

    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
    lastPathComponent4 = [v18 lastPathComponent];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
    [PLCoreStorage logMessage:v17 fromFile:lastPathComponent4 fromFunction:v20 fromLineNumber:378];

    v21 = PLLogCommon();
    v57 = v17;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }

    v7 = &off_1D86FA000;
LABEL_26:
  }

  if (+[PLDefaults debugEnabled])
  {
    v41 = objc_opt_class();
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = *(v7 + 230);
    v58[2] = __37__PLStorageCache_entryIDForNewEntry___block_invoke_115;
    v58[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v58[4] = v41;
    if (entryIDForNewEntry__defaultOnce_113 != -1)
    {
      dispatch_once(&entryIDForNewEntry__defaultOnce_113, v58);
    }

    if (entryIDForNewEntry__classDebugEnabled_114 == 1)
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before MAX(): entryID=%llu", longLongValue];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent5 = [v43 lastPathComponent];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
      [PLCoreStorage logMessage:v42 fromFile:lastPathComponent5 fromFunction:v45 fromLineNumber:381];

      v46 = PLLogCommon();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (longLongValue <= 1 && +[PLDefaults debugEnabled])
  {
    v47 = MEMORY[0x1E696AEC0];
    entryKey6 = [entryCopy entryKey];
    v49 = [v47 stringWithFormat:@"EntryID is 1! %@", entryKey6];

    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
    lastPathComponent6 = [v50 lastPathComponent];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache entryIDForNewEntry:]"];
    [PLCoreStorage logMessage:v49 fromFile:lastPathComponent6 fromFunction:v52 fromLineNumber:384];

    v53 = PLLogCommon();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  if (longLongValue <= 1)
  {
    v54 = 1;
  }

  else
  {
    v54 = longLongValue;
  }

  return v54;
}

BOOL __37__PLStorageCache_entryIDForNewEntry___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  entryIDForNewEntry__classDebugEnabled = result;
  return result;
}

BOOL __37__PLStorageCache_entryIDForNewEntry___block_invoke_100(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  entryIDForNewEntry__classDebugEnabled_99 = result;
  return result;
}

BOOL __37__PLStorageCache_entryIDForNewEntry___block_invoke_115(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  entryIDForNewEntry__classDebugEnabled_114 = result;
  return result;
}

- (void)setNextEntryIDForEntryKey:(id)key toEntryID:(int64_t)d
{
  v6 = MEMORY[0x1E696AEC0];
  keyCopy = key;
  keyCopy = [v6 stringWithFormat:@"UPDATE SQLITE_SEQUENCE SET seq = %lld WHERE name = '%@'", d, keyCopy];
  v8 = [(PLStorageCache *)self connectionForKey:keyCopy];

  v9 = [v8 performQuery:keyCopy];
}

- (int64_t)addToStagingEntryCache:(id)cache
{
  cacheCopy = cache;
  v5 = cacheCopy;
  if (!cacheCopy)
  {
LABEL_11:
    entryID = -1;
    goto LABEL_12;
  }

  if (([cacheCopy writeToDB] & 1) == 0)
  {
    if (+[PLDefaults debugEnabled])
    {
      v10 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__PLStorageCache_addToStagingEntryCache___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v10;
      if (addToStagingEntryCache__defaultOnce != -1)
      {
        dispatch_once(&addToStagingEntryCache__defaultOnce, block);
      }

      if (addToStagingEntryCache__classDebugEnabled == 1)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeToDB=NO entry=%@", v5];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent = [v12 lastPathComponent];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingEntryCache:]"];
        [PLCoreStorage logMessage:v11 fromFile:lastPathComponent fromFunction:v14 fromLineNumber:397];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    goto LABEL_11;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v6 = v5;
  v25 = v6;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  entryKey = [v21[5] entryKey];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __41__PLStorageCache_addToStagingEntryCache___block_invoke_128;
  v17[3] = &unk_1E8519128;
  v17[4] = self;
  v18 = v6;
  v19 = &v20;
  [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:entryKey withBlock:v17];

  entryID = [v21[5] entryID];
  _Block_object_dispose(&v20, 8);

LABEL_12:
  return entryID;
}

BOOL __41__PLStorageCache_addToStagingEntryCache___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  addToStagingEntryCache__classDebugEnabled = result;
  return result;
}

void __41__PLStorageCache_addToStagingEntryCache___block_invoke_128(uint64_t a1)
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PLStorageCache_addToStagingEntryCache___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (ArrayReserved_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce, block);
    }

    if (ArrayReserved_block_invoke_3_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inside syncAndDispatch: entry=%@", *(a1 + 40)];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingEntryCache:]_block_invoke"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:402];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (+[PLDefaults debugEnabled])
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __41__PLStorageCache_addToStagingEntryCache___block_invoke_134;
    v44[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v44[4] = v10;
    if (ArrayReserved_block_invoke_3_defaultOnce_132 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce_132, v44);
    }

    if (ArrayReserved_block_invoke_3_classDebugEnabled_133 == 1)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"before entryIDForNewEntry: entryBlock.entryID=%llu", objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "entryID")];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingEntryCache:]_block_invoke_2"];
      [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:405];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([*(*(*(a1 + 48) + 8) + 40) entryID] <= 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) setEntryID:{objc_msgSend(*(a1 + 32), "entryIDForNewEntry:", *(*(*(a1 + 48) + 8) + 40))}];
  }

  if (+[PLDefaults debugEnabled])
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __41__PLStorageCache_addToStagingEntryCache___block_invoke_141;
    v43[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v43[4] = v17;
    if (ArrayReserved_block_invoke_3_defaultOnce_139 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce_139, v43);
    }

    if (ArrayReserved_block_invoke_3_classDebugEnabled_140 == 1)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"after entryIDForNewEntry: entryBlock.entryID=%llu", objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "entryID")];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingEntryCache:]_block_invoke_2"];
      [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:409];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v23 = *(a1 + 32);
  v24 = [*(*(*(a1 + 48) + 8) + 40) entryKey];
  v25 = [v23 stagingEntryCacheForEntryKey:v24 withID:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "entryID")}];

  if (v25)
  {
    v26 = [*(*(*(a1 + 48) + 8) + 40) entryKey];
    v27 = [v26 isEqualToString:@"PLStorageOperator_EventPoint_PLLog"];

    if ((v27 & 1) == 0 && +[PLDefaults debugEnabled])
    {
      v28 = *(a1 + 32);
      v29 = objc_opt_class();
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __41__PLStorageCache_addToStagingEntryCache___block_invoke_147;
      v41 = &__block_descriptor_40_e5_v8__0lu32l8;
      v42 = v29;
      if (ArrayReserved_block_invoke_3_defaultOnce_145 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_3_defaultOnce_145, &v38);
      }

      if (ArrayReserved_block_invoke_3_classDebugEnabled_146 == 1)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = [*(*(*(a1 + 48) + 8) + 40) entryKey];
        v32 = [*(*(*(a1 + 48) + 8) + 40) entryID];
        v33 = [v30 stringWithFormat:@"addToStagingEntryCache:: entryKey=%@, entryID=%llu already exists in cache", v31, v32, v38, v39, v40, v41, v42];

        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        v35 = [v34 lastPathComponent];
        v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingEntryCache:]_block_invoke_2"];
        [PLCoreStorage logMessage:v33 fromFile:v35 fromFunction:v36 fromLineNumber:414];

        v37 = PLLogCommon();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }

  else
  {
    [*(a1 + 32) insertIntoStagingEntryCache:*(*(*(a1 + 48) + 8) + 40)];
    if (([*(*(*(a1 + 48) + 8) + 40) existsInDB] & 1) == 0)
    {
      [*(a1 + 32) addToLastEntryCache:*(*(*(a1 + 48) + 8) + 40)];
      [*(a1 + 32) addToLastEntryCacheSubKey:*(*(*(a1 + 48) + 8) + 40)];
    }
  }
}

BOOL __41__PLStorageCache_addToStagingEntryCache___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled = result;
  return result;
}

BOOL __41__PLStorageCache_addToStagingEntryCache___block_invoke_134(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled_133 = result;
  return result;
}

BOOL __41__PLStorageCache_addToStagingEntryCache___block_invoke_141(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled_140 = result;
  return result;
}

BOOL __41__PLStorageCache_addToStagingEntryCache___block_invoke_147(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_3_classDebugEnabled_146 = result;
  return result;
}

- (void)insertIntoStagingEntryCache:(id)cache
{
  v54 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  if (cacheCopy)
  {
    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __46__PLStorageCache_insertIntoStagingEntryCache___block_invoke;
      v52[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v52[4] = v5;
      if (insertIntoStagingEntryCache__defaultOnce != -1)
      {
        dispatch_once(&insertIntoStagingEntryCache__defaultOnce, v52);
      }

      if (insertIntoStagingEntryCache__classDebugEnabled == 1)
      {
        cacheCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", cacheCopy];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache insertIntoStagingEntryCache:]"];
        [PLCoreStorage logMessage:cacheCopy fromFile:lastPathComponent fromFunction:v9 fromLineNumber:436];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
    entryKey = [cacheCopy entryKey];
    v13 = [stagingEntryCache objectForKeyedSubscript:entryKey];
    v14 = v13 == 0;

    if (v14)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      stagingEntryCache2 = [(PLStorageCache *)self stagingEntryCache];
      entryKey2 = [cacheCopy entryKey];
      [stagingEntryCache2 setObject:dictionary forKeyedSubscript:entryKey2];

      if (+[PLPlatform isiOS])
      {
        if (+[PLPlatform internalBuild])
        {
          cacheContent = [(PLStorageCache *)self cacheContent];
          objc_sync_enter(cacheContent);
          cacheContent2 = [(PLStorageCache *)self cacheContent];
          entryKey3 = [cacheCopy entryKey];
          [cacheContent2 setObject:&unk_1F5405A60 forKeyedSubscript:entryKey3];

          objc_sync_exit(cacheContent);
        }
      }
    }

    stagingEntryCache3 = [(PLStorageCache *)self stagingEntryCache];
    entryKey4 = [cacheCopy entryKey];
    v23 = [stagingEntryCache3 objectForKeyedSubscript:entryKey4];
    v24 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(cacheCopy, "entryID")}];
    [v23 setObject:cacheCopy forKeyedSubscript:v24];

    [(PLStorageCache *)self setStagingEntryCacheSize:[(PLStorageCache *)self stagingEntryCacheSize]+ 1];
    if (+[PLPlatform isiOS](PLPlatform, "isiOS") && +[PLPlatform internalBuild])
    {
      cacheContent3 = [(PLStorageCache *)self cacheContent];
      objc_sync_enter(cacheContent3);
      cacheContent4 = [(PLStorageCache *)self cacheContent];
      entryKey5 = [cacheCopy entryKey];
      v28 = [cacheContent4 objectForKeyedSubscript:entryKey5];
      intValue = [v28 intValue];

      v30 = [MEMORY[0x1E696AD98] numberWithInt:(intValue + 1)];
      cacheContent5 = [(PLStorageCache *)self cacheContent];
      entryKey6 = [cacheCopy entryKey];
      [cacheContent5 setObject:v30 forKeyedSubscript:entryKey6];

      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        entryKey7 = [cacheCopy entryKey];
        [(PLStorageCache *)entryKey7 insertIntoStagingEntryCache:buf, intValue + 1, v33];
      }

      objc_sync_exit(cacheContent3);
    }

    block = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __46__PLStorageCache_insertIntoStagingEntryCache___block_invoke_160;
    v50 = &unk_1E85190B8;
    v51 = @"PLStorageCache_Debug";
    if (insertIntoStagingEntryCache__defaultOnce_159 != -1)
    {
      dispatch_once(&insertIntoStagingEntryCache__defaultOnce_159, &block);
    }

    v35 = insertIntoStagingEntryCache__objectForKey;

    if (v35)
    {
      entryKey8 = [cacheCopy entryKey];
      v37 = [entryKey8 isEqualToString:@"PLStorageOperator_EventPoint_PLLog"];

      if ((v37 & 1) == 0)
      {
        v38 = MEMORY[0x1E696AEC0];
        entryKey9 = [cacheCopy entryKey];
        entryID = [cacheCopy entryID];
        v41 = [v38 stringWithFormat:@"stagingCache added %@ %lld", entryKey9, entryID, block, v48, v49, v50];

        v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent2 = [v42 lastPathComponent];
        v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache insertIntoStagingEntryCache:]"];
        [PLCoreStorage logMessage:v41 fromFile:lastPathComponent2 fromFunction:v44 fromLineNumber:461];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

BOOL __46__PLStorageCache_insertIntoStagingEntryCache___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  insertIntoStagingEntryCache__classDebugEnabled = result;
  return result;
}

BOOL __46__PLStorageCache_insertIntoStagingEntryCache___block_invoke_160(uint64_t a1)
{
  result = [PLDefaults BOOLForKey:*(a1 + 32)];
  insertIntoStagingEntryCache__objectForKey = result;
  return result;
}

- (void)updateStagingEntryCacheWithEntry:(id)entry withBlock:(id)block
{
  entryCopy = entry;
  blockCopy = block;
  if (entryCopy)
  {
    if (+[PLDefaults debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (updateStagingEntryCacheWithEntry_withBlock__defaultOnce != -1)
      {
        dispatch_once(&updateStagingEntryCacheWithEntry_withBlock__defaultOnce, block);
      }

      if (updateStagingEntryCacheWithEntry_withBlock__classDebugEnabled == 1)
      {
        entryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"entry=%@", entryCopy];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent = [v10 lastPathComponent];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache updateStagingEntryCacheWithEntry:withBlock:]"];
        [PLCoreStorage logMessage:entryCopy fromFile:lastPathComponent fromFunction:v12 fromLineNumber:468];

        v13 = PLLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if ([entryCopy writeToDB])
    {
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__3;
      v26[4] = __Block_byref_object_dispose__3;
      v14 = entryCopy;
      v27 = v14;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3032000000;
      v24[3] = __Block_byref_object_copy__167;
      v24[4] = __Block_byref_object_dispose__168;
      v25 = MEMORY[0x1DA71B0D0](blockCopy);
      stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
      entryKey = [v14 entryKey];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke_169;
      v23[3] = &unk_1E85195B8;
      v23[4] = self;
      v23[5] = v24;
      v23[6] = v26;
      [PLStorageCache syncAndDispatchForEntryCache:stagingEntryCache forEntryKey:entryKey withBlock:v23];

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v26, 8);
    }

    else if (+[PLDefaults debugEnabled])
    {
      v17 = objc_opt_class();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke_166;
      v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v28[4] = v17;
      if (updateStagingEntryCacheWithEntry_withBlock__defaultOnce_164 != -1)
      {
        dispatch_once(&updateStagingEntryCacheWithEntry_withBlock__defaultOnce_164, v28);
      }

      if (updateStagingEntryCacheWithEntry_withBlock__classDebugEnabled_165 == 1)
      {
        entryCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"writeToDB=NO entry=%@", entryCopy];
        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        lastPathComponent2 = [v19 lastPathComponent];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache updateStagingEntryCacheWithEntry:withBlock:]"];
        [PLCoreStorage logMessage:entryCopy2 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:471];

        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }
  }
}

BOOL __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateStagingEntryCacheWithEntry_withBlock__classDebugEnabled = result;
  return result;
}

BOOL __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke_166(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  updateStagingEntryCacheWithEntry_withBlock__classDebugEnabled_165 = result;
  return result;
}

void __61__PLStorageCache_updateStagingEntryCacheWithEntry_withBlock___block_invoke_169(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) stagingEntryCache];
  v4 = [*(*(*(a1 + 48) + 8) + 40) entryKey];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "entryID")}];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = *(a1 + 32);
    v9 = *(*(*(a1 + 48) + 8) + 40);

    [v8 insertIntoStagingEntryCache:v9];
  }
}

- (int)limitOfType:(id)type forEntryKey:(id)key
{
  typeCopy = type;
  keyCopy = key;
  v7 = [PLDefaults objectForKey:keyCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 objectForKeyedSubscript:typeCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 objectForKeyedSubscript:typeCopy];
    intValue = [v9 intValue];
  }

  else
  {
    intValue = [PLEntryDefinition limitOfType:typeCopy forEntryKey:keyCopy];
  }

  return intValue;
}

- (void)setLastCacheFlushDate:(id)date
{
  dateCopy = date;
  obj = self;
  objc_sync_enter(obj);
  lastCacheFlushDate = obj->_lastCacheFlushDate;
  obj->_lastCacheFlushDate = dateCopy;

  objc_sync_exit(obj);
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushStagingEntryCacheToDatabase_classDebugEnabled = result;
  return result;
}

int64_t __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_179(uint64_t a1)
{
  result = [PLDefaults longForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  flushStagingEntryCacheToDatabase_objectForKey = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_3(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_185(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_184 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_191(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_190 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_197(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_196 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2_202(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_205(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_204 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_211(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_210 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_217(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_216 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_223(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_5_classDebugEnabled_222 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_233(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_232 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_2_237(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_4_classDebugEnabled_236 = result;
  return result;
}

BOOL __50__PLStorageCache_flushStagingEntryCacheToDatabase__block_invoke_3_241(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  flushStagingEntryCacheToDatabase_classDebugEnabled_240 = result;
  return result;
}

- (void)enumerateStagingEntryCacheForEntryKey:(id)key withBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v8 = [stagingEntryCache objectForKeyedSubscript:keyCopy];

  [(PLStorageCache *)self enumerateEntryCache:v8 withBlock:blockCopy];
}

- (void)enumerateStagingEntryCacheWithBlock:(id)block
{
  blockCopy = block;
  stagingEntryCache = [(PLStorageCache *)self stagingEntryCache];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PLStorageCache_enumerateStagingEntryCacheWithBlock___block_invoke;
  v7[3] = &unk_1E8519680;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [stagingEntryCache enumerateKeysAndObjectsUsingBlock:v7];
}

BOOL __59__PLStorageCache_flushStagingAggregateEntryCacheToDatabase__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  flushStagingAggregateEntryCacheToDatabase_classDebugEnabled = result;
  return result;
}

BOOL __59__PLStorageCache_flushStagingAggregateEntryCacheToDatabase__block_invoke_250(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  flushStagingAggregateEntryCacheToDatabase_classDebugEnabled_249 = result;
  return result;
}

- (void)addToStagingAggregateEntryCache:(id)cache
{
  cacheCopy = cache;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke;
    block[3] = &unk_1E8519630;
    v18 = @"aggregate";
    v19 = v5;
    if (addToStagingAggregateEntryCache__defaultOnce != -1)
    {
      dispatch_once(&addToStagingAggregateEntryCache__defaultOnce, block);
    }

    v6 = addToStagingAggregateEntryCache__classDebugEnabled;

    if (v6 == 1)
    {
      cacheCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"aggregateEntry=%@", cacheCopy];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      lastPathComponent = [v8 lastPathComponent];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingAggregateEntryCache:]"];
      [PLCoreStorage logMessage:cacheCopy fromFile:lastPathComponent fromFunction:v10 fromLineNumber:741];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  stagingAggregateEntryCache = [(PLStorageCache *)self stagingAggregateEntryCache];
  entryKey = [cacheCopy entryKey];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_257;
  v15[3] = &unk_1E8519100;
  v15[4] = self;
  v16 = cacheCopy;
  v14 = cacheCopy;
  [PLStorageCache syncAndDispatchForEntryCache:stagingAggregateEntryCache forEntryKey:entryKey withBlock:v15];
}

BOOL __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  addToStagingAggregateEntryCache__classDebugEnabled = result;
  return result;
}

void __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_257(uint64_t a1)
{
  v2 = [*(a1 + 32) stagingAggregateEntryCache];
  v3 = [*(a1 + 40) entryKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [*(a1 + 32) stagingAggregateEntryCache];
    v6 = [*(a1 + 40) entryKey];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  v7 = [*(a1 + 40) matchingKeyToValue];
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [*(a1 + 40) matchingKeyToValue];
    [v4 setObject:v8 forKeyedSubscript:v9];
  }

  v10 = [*(a1 + 40) aggregateKey];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (+[PLDefaults debugEnabled])
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_2;
    block[3] = &unk_1E8519630;
    v46 = @"aggregate";
    v47 = v13;
    if (ArrayReserved_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_6_defaultOnce, block);
    }

    v14 = ArrayReserved_block_invoke_6_classDebugEnabled;

    if (v14 == 1)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existingAggregateEntry=%@", v11];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
      v17 = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingAggregateEntryCache:]_block_invoke"];
      [PLCoreStorage logMessage:v15 fromFile:v17 fromFunction:v18 fromLineNumber:758];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v20 = +[PLDefaults debugEnabled];
  if (v11)
  {
    if (v20)
    {
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_263;
      v42[3] = &unk_1E8519630;
      v43 = @"aggregate";
      v44 = v22;
      if (ArrayReserved_block_invoke_6_defaultOnce_261 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_6_defaultOnce_261, v42);
      }

      v23 = ArrayReserved_block_invoke_6_classDebugEnabled_262;

      if (v23 == 1)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hit"];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingAggregateEntryCache:]_block_invoke_2"];
        [PLCoreStorage logMessage:v24 fromFile:v26 fromFunction:v27 fromLineNumber:762];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    [*(a1 + 40) aggregateValue];
    [v11 updateWithValue:?];
  }

  else
  {
    if (v20)
    {
      v29 = *(a1 + 32);
      v30 = objc_opt_class();
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_270;
      v39[3] = &unk_1E8519630;
      v40 = @"aggregate";
      v41 = v30;
      if (ArrayReserved_block_invoke_6_defaultOnce_268 != -1)
      {
        dispatch_once(&ArrayReserved_block_invoke_6_defaultOnce_268, v39);
      }

      v31 = ArrayReserved_block_invoke_6_classDebugEnabled_269;

      if (v31 == 1)
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"miss"];
        v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
        v34 = [v33 lastPathComponent];
        v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLStorageCache addToStagingAggregateEntryCache:]_block_invoke_2"];
        [PLCoreStorage logMessage:v32 fromFile:v34 fromFunction:v35 fromLineNumber:767];

        v36 = PLLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v37 = *(a1 + 40);
    v38 = [v37 aggregateKey];
    [v8 setObject:v37 forKeyedSubscript:v38];
  }
}

BOOL __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_6_classDebugEnabled = result;
  return result;
}

BOOL __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_263(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_6_classDebugEnabled_262 = result;
  return result;
}

BOOL __50__PLStorageCache_addToStagingAggregateEntryCache___block_invoke_270(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  ArrayReserved_block_invoke_6_classDebugEnabled_269 = result;
  return result;
}

- (id)getQueryForAggregateEntryKey:(id)key withMatchingKeyToValue:(id)value
{
  v67 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v8 = [(PLStorageCache *)self getEntryFromDBForEntryKey:keyCopy withMatchingKeyToValue:valueCopy];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    v11 = [v8 objectForKeyedSubscript:@"ID"];
  }

  else
  {
    v11 = @"NULL";
  }

  [array addObject:@"ID"];
  v50 = v11;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v11];
  [array2 addObject:v12];

  allKeys = [valueCopy allKeys];
  v14 = [allKeys componentsJoinedByString:{@", "}];
  [array addObject:v14];

  allValues = [valueCopy allValues];
  v16 = [allValues componentsJoinedByString:{@", "}];
  [array2 addObject:v16];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  stagingAggregateEntryCache = [(PLStorageCache *)self stagingAggregateEntryCache];
  v52 = keyCopy;
  v18 = [stagingAggregateEntryCache objectForKeyedSubscript:keyCopy];
  v51 = valueCopy;
  v19 = [v18 objectForKeyedSubscript:valueCopy];
  allValues2 = [v19 allValues];

  v21 = 0x1E696A000uLL;
  v56 = [allValues2 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v56)
  {
    v55 = *v61;
    v54 = v8;
    v53 = allValues2;
    do
    {
      v22 = 0;
      do
      {
        if (*v61 != v55)
        {
          objc_enumerationMutation(allValues2);
        }

        v23 = *(*(&v60 + 1) + 8 * v22);
        if (+[PLDefaults debugEnabled])
        {
          v24 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __70__PLStorageCache_getQueryForAggregateEntryKey_withMatchingKeyToValue___block_invoke;
          block[3] = &unk_1E8519630;
          v58 = @"aggregate";
          v59 = v24;
          if (getQueryForAggregateEntryKey_withMatchingKeyToValue__defaultOnce != -1)
          {
            dispatch_once(&getQueryForAggregateEntryKey_withMatchingKeyToValue__defaultOnce, block);
          }

          v25 = getQueryForAggregateEntryKey_withMatchingKeyToValue__classDebugEnabled;

          if (v25 == 1)
          {
            v26 = array2;
            v27 = array;
            [*(v21 + 3776) stringWithFormat:@"aggregateEntry=%@", v23];
            v29 = v28 = v21;
            v30 = [*(v28 + 3776) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLStorageCache.m"];
            lastPathComponent = [v30 lastPathComponent];
            v32 = v28;
            v33 = [*(v28 + 3776) stringWithUTF8String:"-[PLStorageCache getQueryForAggregateEntryKey:withMatchingKeyToValue:]"];
            [PLCoreStorage logMessage:v29 fromFile:lastPathComponent fromFunction:v33 fromLineNumber:791];

            v34 = PLLogCommon();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v29;
              _os_log_debug_impl(&dword_1D8611000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            array = v27;
            array2 = v26;
            v8 = v54;
            v21 = v32;
            allValues2 = v53;
          }
        }

        if (v8)
        {
          aggregateKey = [v23 aggregateKey];
          v36 = [v8 objectForKeyedSubscript:aggregateKey];

          if (v36)
          {
            aggregateKey2 = [v23 aggregateKey];
            v38 = [v8 objectForKeyedSubscript:aggregateKey2];
            [v38 doubleValue];
            [v23 updateWithValue:?];
          }
        }

        aggregateKey3 = [v23 aggregateKey];
        [array addObject:aggregateKey3];

        v40 = *(v21 + 3776);
        [v23 aggregateValue];
        v42 = [v40 stringWithFormat:@"%f", v41];
        [array2 addObject:v42];

        ++v22;
      }

      while (v56 != v22);
      v56 = [allValues2 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v56);
  }

  v43 = *(v21 + 3776);
  [array componentsJoinedByString:{@", "}];
  v45 = v44 = array2;
  v46 = [v44 componentsJoinedByString:{@", "}];
  v47 = [v43 stringWithFormat:@"                          INSERT OR REPLACE INTO '%@'                           (%@)                           VALUES (%@)", v52, v45, v46];;

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

BOOL __70__PLStorageCache_getQueryForAggregateEntryKey_withMatchingKeyToValue___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  getQueryForAggregateEntryKey_withMatchingKeyToValue__classDebugEnabled = result;
  return result;
}

- (id)getEntryFromDBForEntryKey:(id)key withMatchingKeyToValue:(id)value
{
  keyCopy = key;
  v7 = [(PLStorageCache *)self matchingPairs:value];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * FROM '%@' WHERE %@", keyCopy, v7];
  v9 = [(PLStorageCache *)self connectionForKey:keyCopy];
  v10 = [v9 performQuery:v8];

  if ([v10 count] == 1)
  {
    firstObject = [v10 firstObject];
    v12 = [PLEntry entryWithEntryKey:keyCopy withData:firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)matchingPairs:(id)pairs
{
  v22 = *MEMORY[0x1E69E9840];
  pairsCopy = pairs;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = pairsCopy;
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
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v11 stringWithFormat:@"%@=%@", v10, v12, v17];
        [array addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [array componentsJoinedByString:@" AND "];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)insertIntoStagingEntryCache:(int)a3 .cold.2(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Flush cache cacheContent inserting %@ %d", buf, 0x12u);
}

@end