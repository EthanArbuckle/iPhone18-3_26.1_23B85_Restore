@interface MADAutoAssetPersisted
+ (BOOL)isConsideredMatchWithoutVersion:(id)a3 ofEntryFullEntryIDName:(id)a4 toSelectorPersistedEntryID:(id)a5;
+ (id)entryFileIDForModule:(id)a3 fromFilename:(id)a4;
+ (id)persistedComponentSymbol:(id)a3;
+ (id)persistedEntryStatusName:(int64_t)a3;
+ (id)persistedOperationSymbol:(id)a3;
+ (id)persistedStateFilename:(id)a3 forFileID:(id)a4 ofEntryName:(id)a5;
+ (int64_t)persistedEntryStatusValue:(id)a3;
- (BOOL)_preExistingPersistedStateValid:(id)a3 fromLocation:(id)a4;
- (BOOL)_verifyEntryFileExists:(id)a3 fromLocation:(id)a4 expectingExists:(BOOL)a5;
- (BOOL)_verifyPersistedDirectoryExistsOrCreate:(id)a3;
- (BOOL)persistedEntryAlreadyExists:(id)a3 fromLocation:(id)a4;
- (id)_contentsOfModulePersistedPath:(id)a3 fromLocation:(id)a4;
- (id)_loadPersistedEntry:(id)a3 forEntryName:(id)a4 withEntryStatus:(int64_t)a5;
- (id)_summary;
- (id)_summaryLeader:(id)a3 fromLocation:(id)a4;
- (id)decodeFromLocation:(id)a3 ofEntryName:(id)a4 fromPersistedEntry:(id)a5 decodingObjectForKey:(id)a6 ofClass:(Class)a7 allowingNilObject:(BOOL)a8;
- (id)decodeFromLocation:(id)a3 ofEntryName:(id)a4 fromPersistedEntry:(id)a5 decodingObjectForKey:(id)a6 ofClass:(Class)a7 withEncodeClasses:(id)a8 allowingNilObject:(BOOL)a9;
- (id)initForModule:(id)a3 ofModuleVersion:(id)a4 usingDispatchQueue:(id)a5 loggingByName:(id)a6 withVersionMigrator:(id)a7;
- (id)persistedEntry:(id)a3 fromLocation:(id)a4;
- (id)persistedEntryIDs:(id)a3;
- (id)persistedEntryIDs:(id)a3 assetSelector:(id)a4;
- (id)persistedEntryIDs:(id)a3 assetType:(id)a4;
- (int64_t)_validateLoadedEntry:(id)a3 fromLocation:(id)a4 forEntryName:(id)a5 loadedWithEntryStatus:(int64_t)a6;
- (int64_t)persistedEntryCount:(id)a3;
- (void)_persistStatusChange:(id)a3 ofEntryName:(id)a4 withEntrySummary:(id)a5 currentStatus:(int64_t)a6 fromLocation:(id)a7;
- (void)_persistTableOfContents:(id)a3 forEntryName:(id)a4 withEntryStatus:(int64_t)a5;
- (void)_removeEntriesMissingFromTableOfContents:(id)a3;
- (void)_removeEntryFile:(id)a3 reason:(id)a4 fromLocation:(id)a5;
- (void)flushPersistedStateCacheAndSetCachingBehaviour:(BOOL)a3;
- (void)loadPersistedState:(id)a3;
- (void)removeAllPersistedEntries:(id)a3;
- (void)removePersistedEntry:(id)a3 fromLocation:(id)a4;
- (void)storePersistedEntry:(id)a3 withEntrySummary:(id)a4 fromLocation:(id)a5;
@end

@implementation MADAutoAssetPersisted

- (id)initForModule:(id)a3 ofModuleVersion:(id)a4 usingDispatchQueue:(id)a5 loggingByName:(id)a6 withVersionMigrator:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v49.receiver = self;
  v49.super_class = MADAutoAssetPersisted;
  v18 = [(MADAutoAssetPersisted *)&v49 init];
  if (v18)
  {
    v19 = [NSString alloc];
    if (v16)
    {
      v20 = [v19 initWithFormat:@"AUTO-PERSISTED(%@)[%@]", v13, v16];
    }

    else
    {
      v20 = [v19 initWithFormat:@"AUTO-PERSISTED(%@)", v13, v48];
    }

    logLeader = v18->_logLeader;
    v18->_logLeader = v20;

    objc_storeStrong(&v18->_moduleName, a3);
    objc_storeStrong(&v18->_moduleCurrentVersion, a4);
    latestSafeSummary = v18->_latestSafeSummary;
    v18->_latestSafeSummary = @"INIT";

    objc_storeStrong(&v18->_persistedQueue, a5);
    v23 = objc_alloc_init(NSCache);
    knownPersistedFiles = v18->_knownPersistedFiles;
    v18->_knownPersistedFiles = v23;

    v25 = objc_alloc_init(NSCache);
    knownPersistedStates = v18->_knownPersistedStates;
    v18->_knownPersistedStates = v25;

    v18->_cachingEnabled = 0;
    v27 = [SUCorePersistedState alloc];
    v28 = objc_opt_respondsToSelector();

    v29 = [SUCorePersistedState alloc];
    persistedQueue = v18->_persistedQueue;
    v31 = [MADAutoAssetPersisted persistedStateFilename:v18->_moduleName forFileID:@"Config" ofEntryName:0];
    if (v28)
    {
      v32 = [v29 initWithDispatchQueue:persistedQueue withPersistencePath:v31 forPolicyVersion:v14 issuingDefaultLevelLogging:0];
      persistedConfig = v18->_persistedConfig;
      v18->_persistedConfig = v32;

      v34 = [SUCorePersistedState alloc];
      v35 = v18->_persistedQueue;
      v36 = [MADAutoAssetPersisted persistedStateFilename:v18->_moduleName forFileID:@"TableOfContents" ofEntryName:0];
      v37 = [v34 initWithDispatchQueue:v35 withPersistencePath:v36 forPolicyVersion:v14 issuingDefaultLevelLogging:0];
    }

    else
    {
      v38 = [v29 initWithDispatchQueue:persistedQueue withPersistencePath:v31 forPolicyVersion:v14];
      v39 = v18->_persistedConfig;
      v18->_persistedConfig = v38;

      v40 = [SUCorePersistedState alloc];
      v41 = v18->_persistedQueue;
      v36 = [MADAutoAssetPersisted persistedStateFilename:v18->_moduleName forFileID:@"TableOfContents" ofEntryName:0];
      v37 = [v40 initWithDispatchQueue:v41 withPersistencePath:v36 forPolicyVersion:v14];
    }

    entryTableOfContents = v18->_entryTableOfContents;
    v18->_entryTableOfContents = v37;

    v43 = objc_alloc_init(NSMutableArray);
    currentEntryIDs = v18->_currentEntryIDs;
    v18->_currentEntryIDs = v43;

    v45 = objc_retainBlock(v17);
    moduleVersionMigrator = v18->_moduleVersionMigrator;
    v18->_moduleVersionMigrator = v45;
  }

  return v18;
}

- (void)loadPersistedState:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v5);

  v61 = v4;
  if ([(MADAutoAssetPersisted *)self _verifyPersistedDirectoryExistsOrCreate:v4])
  {
    v6 = [(MADAutoAssetPersisted *)self persistedConfig];
    [v6 loadPersistedState];

    v7 = [(MADAutoAssetPersisted *)self persistedConfig];
    v8 = [v7 stringForKey:@"duplicatedModuleVersion"];

    v59 = v8;
    if (v8)
    {
      v9 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      if (([SUCore stringIsEqual:v8 to:v9]& 1) != 0)
      {
        v10 = [(MADAutoAssetPersisted *)self persistedConfig];
        v11 = [v10 versionPolicyLayer];
        v12 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
        v13 = [SUCore stringIsEqual:v11 to:v12];

        if (v13)
        {
          v14 = _MADLog(@"Auto");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:v4];
            v16 = [(MADAutoAssetPersisted *)self persistedConfig];
            v17 = [v16 versionPolicyLayer];
            v18 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
            *buf = 138543874;
            v72 = v15;
            v73 = 2114;
            v74 = v17;
            v75 = 2114;
            v76 = v18;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | persisted-state version(%{public}@) = current module version(%{public}@), processing persisted-state", buf, 0x20u);
          }

          v19 = [(MADAutoAssetPersisted *)self entryTableOfContents];
          [v19 loadPersistedState];

          v20 = [(MADAutoAssetPersisted *)self entryTableOfContents];
          v21 = [v20 objectForKey:@"currentEntries" ofClass:objc_opt_class()];

          v22 = objc_alloc_init(NSMutableArray);
          [(MADAutoAssetPersisted *)self setCurrentEntryIDs:0];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v66 objects:v81 count:16];
          if (!v24)
          {

            [(MADAutoAssetPersisted *)self setCurrentEntryIDs:v22];
            [(MADAutoAssetPersisted *)self _removeEntriesMissingFromTableOfContents:v4];
            goto LABEL_39;
          }

          v25 = v24;
          v26 = 0;
          v27 = *v67;
          v28 = v23;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v67 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v30 = *(*(&v66 + 1) + 8 * i);
              v31 = objc_autoreleasePoolPush();
              if (v30)
              {
                if ([v22 containsObject:v30])
                {
                  v32 = _MADLog(@"Auto");
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    v33 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:v61];
                    *buf = 138543618;
                    v72 = v33;
                    v73 = 2114;
                    v74 = v30;
                    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ | duplicate entry dropped | %{public}@", buf, 0x16u);
                  }

                  v26 = 1;
                  v23 = v28;
                }

                else if ([(MADAutoAssetPersisted *)self _preExistingPersistedStateValid:v30 fromLocation:@"loadPersistedState"])
                {
                  [v22 addObject:v30];
                }

                else
                {
                  v26 = 1;
                }
              }

              else
              {
                v34 = _MADLog(@"Auto");
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:v61];
                  *buf = 138543618;
                  v72 = v35;
                  v73 = 2114;
                  v74 = 0;
                  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@ | nil entryFileID encountered on previousEntries | %{public}@", buf, 0x16u);

                  v23 = v28;
                }
              }

              objc_autoreleasePoolPop(v31);
            }

            v25 = [v23 countByEnumeratingWithState:&v66 objects:v81 count:16];
          }

          while (v25);

          [(MADAutoAssetPersisted *)self setCurrentEntryIDs:v22];
          [(MADAutoAssetPersisted *)self _removeEntriesMissingFromTableOfContents:v61];
          if ((v26 & 1) == 0)
          {
            goto LABEL_39;
          }

LABEL_38:
          [(MADAutoAssetPersisted *)self _persistTableOfContents:@"loadPersistedState" forEntryName:@"ALL-LOADED-AND-VALIDATED" withEntryStatus:2];
LABEL_39:

          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    v36 = _MADLog(@"Auto");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:v4];
      v38 = [(MADAutoAssetPersisted *)self persistedConfig];
      v39 = [v38 versionPolicyLayer];
      v40 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      v41 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      *buf = 138544386;
      v72 = v37;
      v73 = 2114;
      v74 = v39;
      v75 = 2114;
      v76 = v40;
      v77 = 2114;
      v78 = v59;
      v79 = 2114;
      v80 = v41;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ | persisted-state version(%{public}@) != current module version(%{public}@) OR duplicatedModuleVersion(%{public}@) != current module version(%{public}@) | dropped stale persisted-state", buf, 0x34u);
    }

    v42 = [(MADAutoAssetPersisted *)self persistedConfig];
    [v42 removePersistedState];

    v43 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [v43 loadPersistedState];

    v44 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    v45 = [v44 objectForKey:@"currentEntries" ofClass:objc_opt_class()];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v45;
    v46 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v63;
      do
      {
        for (j = 0; j != v47; j = j + 1)
        {
          if (*v63 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = *(*(&v62 + 1) + 8 * j);
          v51 = objc_autoreleasePoolPush();
          v52 = [(MADAutoAssetPersisted *)self moduleName];
          v53 = [MADAutoAssetPersisted persistedStateFilename:v52 forFileID:@"Entry" ofEntryName:v50];

          [(MADAutoAssetPersisted *)self _removeEntryFile:v53 reason:@"persisted-version-mismatch" fromLocation:v61];
          objc_autoreleasePoolPop(v51);
        }

        v47 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v47);
    }

    v54 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [v54 removePersistedState];

    v55 = [(MADAutoAssetPersisted *)self persistedConfig];
    [v55 loadPersistedState];

    v56 = [(MADAutoAssetPersisted *)self persistedConfig];
    v57 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
    [v56 persistString:v57 forKey:@"duplicatedModuleVersion"];

    v58 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [v58 loadPersistedState];

    [(MADAutoAssetPersisted *)self _removeEntriesMissingFromTableOfContents:v61];
    goto LABEL_38;
  }

LABEL_40:
}

- (BOOL)persistedEntryAlreadyExists:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetPersisted *)self moduleName];
  v10 = [MADAutoAssetPersisted persistedStateFilename:v9 forFileID:@"Entry" ofEntryName:v7];

  v11 = [v10 lastPathComponent];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    if (v11)
    {
      v12 = [(MADAutoAssetPersisted *)self knownPersistedFiles];
      v13 = [v12 objectForKey:v11];

      if (v13)
      {
        goto LABEL_8;
      }
    }
  }

  v14 = [(MADAutoAssetPersisted *)self _verifyEntryFileExists:v10 fromLocation:v6 expectingExists:0];
  if ([(MADAutoAssetPersisted *)self cachingEnabled]&& v11 && v14)
  {
    v15 = [(MADAutoAssetPersisted *)self knownPersistedFiles];
    [v15 setObject:&__kCFBooleanTrue forKey:v11];

LABEL_8:
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (id)persistedEntry:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  if (v6)
  {
    v9 = [(MADAutoAssetPersisted *)self _loadPersistedEntry:@"persistedEntry" forEntryName:v6 withEntryStatus:3];
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntry" fromLocation:v7];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | nil entryName provided by caller", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)storePersistedEntry:(id)a3 withEntrySummary:(id)a4 fromLocation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(MADAutoAssetPersisted *)self persistedEntry:v8 fromLocation:v10];
  if (!v12)
  {
    v14 = _MADLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [(MADAutoAssetPersisted *)self _summaryLeader:@"storePersistedEntry" fromLocation:v10];
      v18 = 138543874;
      v19 = v17;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}@ | unable to locate entry | %{public}@[%{public}@]", &v18, 0x20u);
    }

    goto LABEL_8;
  }

  [(MADAutoAssetPersisted *)self _persistStatusChange:v12 ofEntryName:v8 withEntrySummary:v9 currentStatus:1 fromLocation:v10];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    v13 = [(MADAutoAssetPersisted *)self moduleName];
    v14 = [MADAutoAssetPersisted persistedStateFilename:v13 forFileID:@"Entry" ofEntryName:v8];

    v15 = [v14 lastPathComponent];
    if (v15)
    {
      v16 = [(MADAutoAssetPersisted *)self knownPersistedStates];
      [v16 setObject:v12 forKey:v15];
    }

LABEL_8:
  }
}

- (id)decodeFromLocation:(id)a3 ofEntryName:(id)a4 fromPersistedEntry:(id)a5 decodingObjectForKey:(id)a6 ofClass:(Class)a7 allowingNilObject:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a5;
  v18 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v18);

  v19 = [v17 secureCodedObjectForKey:v16 ofClass:a7];

  if (!v19 && !a8)
  {
    v20 = _MADLog(@"Auto");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(MADAutoAssetPersisted *)self _summaryLeader:@"decodeFromLocation" fromLocation:v14];
      v23 = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = v15;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ | unable to decode entry - dropped | %{public}@[key:%{public}@]", &v23, 0x20u);
    }

    [(MADAutoAssetPersisted *)self removePersistedEntry:v15 fromLocation:v14];
  }

  return v19;
}

- (id)decodeFromLocation:(id)a3 ofEntryName:(id)a4 fromPersistedEntry:(id)a5 decodingObjectForKey:(id)a6 ofClass:(Class)a7 withEncodeClasses:(id)a8 allowingNilObject:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v19 = a5;
  v20 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v20);

  v21 = [v19 secureCodedObjectForKey:v17 ofClass:a7 encodeClasses:v18];

  if (!v21 && !a9)
  {
    v22 = _MADLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(MADAutoAssetPersisted *)self _summaryLeader:@"decodeFromLocation" fromLocation:v15];
      v25 = 138543874;
      v26 = v23;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ | unable to decode entry (specifying encode classes) - dropped | %{public}@[key:%{public}@]", &v25, 0x20u);
    }

    [(MADAutoAssetPersisted *)self removePersistedEntry:v16 fromLocation:v15];
  }

  return v21;
}

- (void)removePersistedEntry:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removePersistedEntry" fromLocation:v7];
      v28 = 138543362;
      v29 = v18;
      v19 = "%{public}@ | nil entryName provided";
      v20 = v17;
      v21 = 12;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v9 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v10 = [v9 count];

  if (!v10)
  {
LABEL_6:
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removePersistedEntry" fromLocation:v7];
      v28 = 138543618;
      v29 = v18;
      v30 = 2114;
      v31 = v6;
      v19 = "%{public}@ | table-of-contents missing entry | %{public}@";
      v20 = v17;
      v21 = 22;
LABEL_10:
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, v19, &v28, v21);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = 0;
  while (1)
  {
    v12 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v13 = [v12 objectAtIndexedSubscript:v11];
    v14 = [SUCore stringIsEqual:v6 to:v13];

    if (v14)
    {
      break;
    }

    ++v11;
    v15 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v16 = [v15 count];

    if (v11 >= v16)
    {
      goto LABEL_6;
    }
  }

  v22 = [(MADAutoAssetPersisted *)self moduleName];
  v23 = [MADAutoAssetPersisted persistedStateFilename:v22 forFileID:@"Entry" ofEntryName:v6];

  v24 = [v23 lastPathComponent];
  v25 = [(MADAutoAssetPersisted *)self persistedEntry:v6 fromLocation:v7];
  v26 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  [v26 removeObjectAtIndex:v11];

  [(MADAutoAssetPersisted *)self _persistStatusChange:v25 ofEntryName:v6 withEntrySummary:@"removing entry" currentStatus:4 fromLocation:v7];
  [(MADAutoAssetPersisted *)self _removeEntryFile:v23 reason:@"requested-by-module" fromLocation:v7];
  if ([(MADAutoAssetPersisted *)self cachingEnabled]&& v24)
  {
    v27 = [(MADAutoAssetPersisted *)self knownPersistedStates];
    [v27 removeObjectForKey:v24];
  }

  [(MADAutoAssetPersisted *)self _persistTableOfContents:@"removePersistedEntry" forEntryName:v6 withEntryStatus:4];

LABEL_12:
}

- (void)flushPersistedStateCacheAndSetCachingBehaviour:(BOOL)a3
{
  v3 = a3;
  v5 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MADLog(@"Auto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(MADAutoAssetPersisted *)self logLeader];
    v8 = v7;
    v9 = @"disabling";
    if (v3)
    {
      v9 = @"enabling";
    }

    v12 = 138543618;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ {flushPersistedStateCacheAndSetCachingBehaviour} | Flushing persisted state in memory cache and %{public}@ future caching", &v12, 0x16u);
  }

  v10 = [(MADAutoAssetPersisted *)self knownPersistedFiles];
  [v10 removeAllObjects];

  v11 = [(MADAutoAssetPersisted *)self knownPersistedStates];
  [v11 removeAllObjects];

  [(MADAutoAssetPersisted *)self setCachingEnabled:v3];
}

- (void)removeAllPersistedEntries:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v25 + 1) + 8 * v11))
        {
          [v6 addObject:?];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        [(MADAutoAssetPersisted *)self removePersistedEntry:v17 fromLocation:v4, v21];
        objc_autoreleasePoolPop(v18);
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v14);
  }

  v19 = _MADLog(@"Auto");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removeAllPersistedEntries" fromLocation:v4];
    *buf = 138543362;
    v30 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ | removed all entries from table-of-contents and from filesystem", buf, 0xCu);
  }
}

- (id)persistedEntryIDs:(id)a3
{
  v4 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v12 + 1) + 8 * i))
        {
          [v5 addObject:?];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)persistedEntryIDs:(id)a3 assetType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  if (v7)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if (!v15)
          {
            v18 = _MADLog(@"Auto");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetType:" fromLocation:v6];
              v20 = [(MADAutoAssetPersisted *)self _summary];
              *buf = 138543618;
              v29 = v19;
              v30 = 2114;
              v31 = v20;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ | corrupted current-entry-IDs | %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            goto LABEL_18;
          }

          if ([v15 hasPrefix:v7])
          {
            [v9 addObject:v15];
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = v9;
    v17 = v9;
  }

  else
  {
    v9 = _MADLog(@"Auto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetType:" fromLocation:v6];
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@ | invalid asset-selector (no asset-type) | assetType:%{public}@", buf, 0x16u);
    }

LABEL_18:
    v17 = &__NSArray0__struct;
  }

  return v17;
}

- (id)persistedEntryIDs:(id)a3 assetSelector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 assetType];

  if (!v9)
  {
    v14 = _MADLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:v6];
      v16 = [v7 summary];
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = v16;
      v17 = "%{public}@ | invalid asset-selector (no asset-type) | assetSelector:%{public}@";
      goto LABEL_8;
    }

LABEL_9:
    v18 = &__NSArray0__struct;
    goto LABEL_10;
  }

  v10 = [v7 assetSpecifier];
  if (!v10 || (v11 = v10, [v7 assetSpecifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v12, @"MAAutoAsset-all-asset-specifiers"), v12, v11, v13))
  {
    v14 = _MADLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:v6];
      v16 = [v7 summary];
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = v16;
      v17 = "%{public}@ | invalid asset-selector (no asset-specifier) | assetSelector:%{public}@";
LABEL_8:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = [v7 persistedEntryID];
  if (!v14)
  {
    v23 = _MADLog(@"Auto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:v6];
      v25 = [v7 summary];
      *buf = 138543618;
      v45 = v24;
      v46 = 2114;
      v47 = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ | unable to form persisted-entry-ID | assetSelector:%{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v20 = [v7 assetVersion];

  if (v20)
  {
    v21 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v22 = [v21 containsObject:v14];

    if (!v22)
    {
      goto LABEL_9;
    }

    v43 = v14;
    v18 = [NSArray arrayWithObjects:&v43 count:1];
  }

  else
  {
    v36 = objc_alloc_init(NSMutableArray);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v26 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v39;
      while (2)
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v38 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          if (!v30)
          {
            v33 = _MADLog(@"Auto");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:v6];
              v35 = [(MADAutoAssetPersisted *)self _summary];
              *buf = 138543618;
              v45 = v34;
              v46 = 2114;
              v47 = v35;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ | corrupted current-entry-IDs | %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v18 = &__NSArray0__struct;
            v32 = v36;
            goto LABEL_34;
          }

          if ([MADAutoAssetPersisted isConsideredMatchWithoutVersion:v6 ofEntryFullEntryIDName:v30 toSelectorPersistedEntryID:v14])
          {
            [v36 addObject:v30];
          }

          objc_autoreleasePoolPop(v31);
        }

        v27 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    v32 = v36;
    v18 = v36;
LABEL_34:
  }

LABEL_10:

  return v18;
}

+ (BOOL)isConsideredMatchWithoutVersion:(id)a3 ofEntryFullEntryIDName:(id)a4 toSelectorPersistedEntryID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v24 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"_[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+_[0-9]+$" options:17 error:&v24];
  v11 = v24;
  v12 = v11;
  if (!v8 || !v9)
  {
    v13 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v17 = @"N";
    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = @"N";
    }

    *buf = 138543874;
    v26 = v7;
    v27 = 2114;
    if (v9)
    {
      v17 = v9;
    }

    v28 = v18;
    v29 = 2114;
    v30 = v17;
    v19 = "%{public}@ | MISSING param | entryName:%{public}@ | selectorPersistedEntryID:%{public}@";
    v20 = v13;
    v21 = 32;
    goto LABEL_15;
  }

  if (!v11)
  {
    if (v10)
    {
      v13 = [v10 stringByReplacingMatchesInString:v8 options:0 range:0 withTemplate:{-[__CFString length](v8, "length"), &stru_4BD3F0}];
      if (![SUCore stringIsEqual:v13 to:v8])
      {
        v22 = [SUCore stringIsEqual:v13 to:v9];
        goto LABEL_17;
      }

      v14 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 138543618;
      v26 = v7;
      v27 = 2114;
      v28 = v8;
      v15 = "%{public}@ | MISSING asset-version | entryName:%{public}@";
      v16 = v14;
LABEL_6:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
LABEL_7:

      goto LABEL_16;
    }

    v13 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138543362;
    v26 = v7;
    v19 = "%{public}@ | nil regex (no regexError)";
    v20 = v13;
    v21 = 12;
LABEL_15:
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_16;
  }

  v13 = _MADLog(@"Auto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [v12 checkedDescription];
    *buf = 138543618;
    v26 = v7;
    v27 = 2114;
    v28 = v14;
    v15 = "%{public}@ | invalid regex | regexError:%{public}@";
    v16 = v13;
    goto LABEL_6;
  }

LABEL_16:
  v22 = 0;
LABEL_17:

  return v22;
}

- (int64_t)persistedEntryCount:(id)a3
{
  v4 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v6 = [v5 count];

  return v6;
}

- (void)_persistTableOfContents:(id)a3 forEntryName:(id)a4 withEntryStatus:(int64_t)a5
{
  v6 = [(MADAutoAssetPersisted *)self persistedQueue:a3];
  dispatch_assert_queue_V2(v6);

  v8 = [(MADAutoAssetPersisted *)self entryTableOfContents];
  v7 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  [v8 persistObject:v7 forKey:@"currentEntries" shouldPersist:1];
}

- (id)_loadPersistedEntry:(id)a3 forEntryName:(id)a4 withEntryStatus:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(MADAutoAssetPersisted *)self moduleName];
  v11 = [MADAutoAssetPersisted persistedStateFilename:v10 forFileID:@"Entry" ofEntryName:v8];

  v12 = [v11 lastPathComponent];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    if (v12)
    {
      v13 = [(MADAutoAssetPersisted *)self knownPersistedStates];
      v14 = [v13 objectForKey:v12];

      if (v14)
      {
        goto LABEL_49;
      }
    }
  }

  v66 = v12;
  v67 = v11;
  v15 = [SUCorePersistedState alloc];
  v16 = objc_opt_respondsToSelector();

  v17 = [SUCorePersistedState alloc];
  v18 = [(MADAutoAssetPersisted *)self persistedQueue];
  v19 = [(MADAutoAssetPersisted *)self moduleName];
  v20 = v8;
  v21 = v19;
  v22 = v20;
  v23 = [MADAutoAssetPersisted persistedStateFilename:v19 forFileID:@"Entry" ofEntryName:?];
  v24 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
  if (v16)
  {
    v25 = [v17 initWithDispatchQueue:v18 withPersistencePath:v23 forPolicyVersion:v24 issuingDefaultLevelLogging:0];
  }

  else
  {
    v25 = [v17 initWithDispatchQueue:v18 withPersistencePath:v23 forPolicyVersion:v24];
  }

  v26 = v25;

  if (!v26)
  {
    v32 = _MADLog(@"Auto");
    v8 = v22;
    v12 = v66;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:v7];
      v34 = [MADAutoAssetPersisted persistedEntryStatusName:a5];
      *buf = 138544130;
      v70 = v33;
      v71 = 2114;
      v11 = v67;
      v72 = v67;
      v73 = 2114;
      v74 = v22;
      v75 = 2114;
      v76 = v34;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ | unable to create persisted-state for file:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);

      v14 = 0;
    }

    else
    {
      v14 = 0;
      v11 = v67;
    }

    goto LABEL_48;
  }

  v8 = v22;
  if ([v26 loadPersistedState])
  {
    v27 = [v26 stringForKey:@"entryStatus"];
    v28 = [MADAutoAssetPersisted persistedEntryStatusValue:v27];
    v29 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v30 = [v29 containsObject:v22];

    if (!v30)
    {
      if (a5 != 3)
      {
        if (a5 == 2)
        {
          v43 = [(MADAutoAssetPersisted *)self _validateLoadedEntry:v26 fromLocation:v7 forEntryName:v22 loadedWithEntryStatus:[MADAutoAssetPersisted persistedEntryStatusValue:v27]];
          v11 = v67;
          v12 = v66;
          if (v43 == 2)
          {
            v44 = [(MADAutoAssetPersisted *)self currentEntryIDs];

            if (v44)
            {
              v45 = [(MADAutoAssetPersisted *)self currentEntryIDs];
              [v45 addObject:v22];

              [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:v22 withEntrySummary:@"loading persisted state" currentStatus:2 fromLocation:v7];
              [(MADAutoAssetPersisted *)self _persistTableOfContents:v7 forEntryName:v22 withEntryStatus:2];
            }
          }

          else
          {
            v62 = v43;
            v63 = _MADLog(@"Auto");
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v64 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:v7];
              v65 = [MADAutoAssetPersisted persistedEntryStatusName:v62];
              *buf = 138544130;
              v70 = v64;
              v71 = 2114;
              v72 = v67;
              v73 = 2114;
              v74 = v8;
              v75 = 2114;
              v76 = v65;
              _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%{public}@ | entry not in table-of-contents (when not loading persisted state) for path:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);
            }

            v26 = 0;
          }

          goto LABEL_43;
        }

        v57 = _MADLog(@"Auto");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:v7];
          v59 = [MADAutoAssetPersisted persistedEntryStatusName:a5];
          *buf = 138544130;
          v70 = v58;
          v71 = 2114;
          v72 = v67;
          v73 = 2114;
          v74 = v22;
          v75 = 2114;
          v76 = v59;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "%{public}@ | entry not in table-of-contents for path:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);
        }

        goto LABEL_41;
      }

      v56 = [(MADAutoAssetPersisted *)self currentEntryIDs];
      [v56 addObject:v22];

      [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:v22 withEntrySummary:@"table-of-contents place holder | no previously persisted entry" currentStatus:0 fromLocation:v7];
      [(MADAutoAssetPersisted *)self _persistTableOfContents:v7 forEntryName:v22 withEntryStatus:0];
LABEL_42:
      v11 = v67;
      v12 = v66;
LABEL_43:

      v14 = v26;
      goto LABEL_44;
    }

    if (v27)
    {
      v31 = [(MADAutoAssetPersisted *)self _validateLoadedEntry:v26 fromLocation:v7 forEntryName:v22 loadedWithEntryStatus:[MADAutoAssetPersisted persistedEntryStatusValue:v27]];
      if (v31 == v28)
      {
LABEL_33:
        if ((v28 | 2) != 2)
        {
LABEL_41:

          v26 = 0;
          goto LABEL_42;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v28 = 0;
      v31 = 2;
    }

    v50 = [NSString alloc];
    v51 = [MADAutoAssetPersisted persistedEntryStatusName:v28];
    v52 = [MADAutoAssetPersisted persistedEntryStatusName:v31];
    v53 = [v50 initWithFormat:@"changing entry status | %@ >-> %@", v51, v52];
    [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:v8 withEntrySummary:v53 currentStatus:v31 fromLocation:v7];

    v28 = v31;
    goto LABEL_33;
  }

  if (a5 == 3)
  {
    v35 = [SUCorePersistedState alloc];
    v36 = objc_opt_respondsToSelector();

    v37 = [SUCorePersistedState alloc];
    v38 = [(MADAutoAssetPersisted *)self persistedQueue];
    v39 = [(MADAutoAssetPersisted *)self moduleName];
    v40 = [MADAutoAssetPersisted persistedStateFilename:v39 forFileID:@"Entry" ofEntryName:v22];
    v41 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
    if (v36)
    {
      v42 = [v37 initWithDispatchQueue:v38 withPersistencePath:v40 forPolicyVersion:v41 issuingDefaultLevelLogging:0];
    }

    else
    {
      v42 = [v37 initWithDispatchQueue:v38 withPersistencePath:v40 forPolicyVersion:v41];
    }

    v14 = v42;

    if (v14)
    {
      [v14 loadPersistedState];
      v49 = [(MADAutoAssetPersisted *)self currentEntryIDs];
      v8 = v22;
      [v49 addObject:v22];

      [(MADAutoAssetPersisted *)self _persistStatusChange:v14 ofEntryName:v22 withEntrySummary:@"table-of-contents place holder | no previously persisted ToC" currentStatus:0 fromLocation:v7];
      [(MADAutoAssetPersisted *)self _persistTableOfContents:v7 forEntryName:v22 withEntryStatus:0];
      v11 = v67;
      v12 = v66;
      goto LABEL_44;
    }

    v26 = _MADLog(@"Auto");
    v8 = v22;
    v11 = v67;
    v12 = v66;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v54 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:v7];
      v55 = [MADAutoAssetPersisted persistedEntryStatusName:3];
      *buf = 138544130;
      v70 = v54;
      v71 = 2114;
      v72 = v67;
      v73 = 2114;
      v74 = v22;
      v75 = 2114;
      v76 = v55;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%{public}@ | unable to create persisted-state for new entry file:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);
    }
  }

  else
  {
    v46 = _MADLog(@"Auto");
    v11 = v67;
    v12 = v66;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:v7];
      v48 = [MADAutoAssetPersisted persistedEntryStatusName:a5];
      *buf = 138544130;
      v70 = v47;
      v71 = 2114;
      v72 = v67;
      v73 = 2114;
      v74 = v22;
      v75 = 2114;
      v76 = v48;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%{public}@ | entry not on filesystem at path:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);
    }
  }

  v14 = 0;
LABEL_44:
  v60 = [(MADAutoAssetPersisted *)self cachingEnabled];
  if (v14 && v60 && v12)
  {
    v32 = [(MADAutoAssetPersisted *)self knownPersistedStates];
    [v32 setObject:v14 forKey:v12];
LABEL_48:
  }

LABEL_49:

  return v14;
}

- (void)_persistStatusChange:(id)a3 ofEntryName:(id)a4 withEntrySummary:(id)a5 currentStatus:(int64_t)a6 fromLocation:(id)a7
{
  v9 = a3;
  v10 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [MADAutoAssetPersisted persistedEntryStatusName:a6];
  [v9 persistString:v11 forKey:@"entryStatus" shouldPersist:1];
}

- (int64_t)_validateLoadedEntry:(id)a3 fromLocation:(id)a4 forEntryName:(id)a5 loadedWithEntryStatus:(int64_t)a6
{
  v7 = [(MADAutoAssetPersisted *)self persistedQueue:a3];
  dispatch_assert_queue_V2(v7);

  if (a6 > 5)
  {
    return 2;
  }

  else
  {
    return qword_33BC58[a6];
  }
}

- (BOOL)_preExistingPersistedStateValid:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(MADAutoAssetPersisted *)self _loadPersistedEntry:v6 forEntryName:v7 withEntryStatus:2];

  return v9 != 0;
}

- (BOOL)_verifyPersistedDirectoryExistsOrCreate:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSFileManager defaultManager];
  v7 = [NSString alloc];
  v8 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v9 = [(MADAutoAssetPersisted *)self moduleName];
  v10 = [v7 initWithFormat:@"%@/%@", v8, v9];

  if ([v6 fileExistsAtPath:v10])
  {
    v11 = _MADLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:v4];
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ | pre-existing persisted directory for modulePersistedPath:%{public}@", buf, 0x16u);
    }

LABEL_8:
    v17 = 1;
    goto LABEL_12;
  }

  v20 = 0;
  v13 = [v6 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v20];
  v11 = v20;
  v14 = _MADLog(@"Auto");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:v4];
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ | created persisted directory for modulePersistedPath:%{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:v4];
    *buf = 138543874;
    v22 = v18;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ | unable to create persisted directory for modulePersistedPath:%{public}@, error:%{public}@", buf, 0x20u);
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (BOOL)_verifyEntryFileExists:(id)a3 fromLocation:(id)a4 expectingExists:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v8];
  if ((v12 & 1) == 0 && v5)
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyEntryFileExists" fromLocation:v9];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | entry file in table-of-contents does not exist at path:%{public}@", &v16, 0x16u);
    }
  }

  return v12;
}

- (id)_contentsOfModulePersistedPath:(id)a3 fromLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 contentsOfDirectoryAtPath:v6 error:&v16];
  v11 = v16;
  if (v11)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_contentsOfModulePersistedPath" fromLocation:v7];
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ | unable to determine directory contents at path:%{public}@, error:%{public}@", buf, 0x20u);
    }

LABEL_5:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_contentsOfModulePersistedPath" fromLocation:v7];
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | empty persisted directory at path:%{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (void)_removeEntryFile:(id)a3 reason:(id)a4 fromLocation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v11);

  v12 = +[NSFileManager defaultManager];
  v16 = 0;
  [v12 removeItemAtPath:v8 error:&v16];
  v13 = v16;
  if (v13)
  {
    v14 = _MADLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_removeEntryFile" fromLocation:v10];
      *buf = 138544130;
      v18 = v15;
      v19 = 2114;
      v20 = v9;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}@ | failed to remove %{public}@ entry from filesystem path:%{public}@, error:%{public}@", buf, 0x2Au);
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    v14 = [v8 lastPathComponent];
    if (v14)
    {
      v15 = [(MADAutoAssetPersisted *)self knownPersistedFiles];
      [v15 removeObjectForKey:v14];
      goto LABEL_7;
    }

LABEL_8:
  }
}

- (void)_removeEntriesMissingFromTableOfContents:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSString alloc];
  v7 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v8 = [(MADAutoAssetPersisted *)self moduleName];
  v9 = [v6 initWithFormat:@"%@/%@", v7, v8];

  v42 = v9;
  v38 = v4;
  v10 = [(MADAutoAssetPersisted *)self _contentsOfModulePersistedPath:v9 fromLocation:v4];
  if (v10)
  {
    v11 = [NSString alloc];
    v12 = [(MADAutoAssetPersisted *)self moduleName];
    v13 = [v11 initWithFormat:@"%@_%@", v12, @"Config"];

    v14 = [NSString alloc];
    v15 = [(MADAutoAssetPersisted *)self moduleName];
    v16 = [v14 initWithFormat:@"%@_%@", v15, @"TableOfContents"];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v10;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v21 = *v45;
    v40 = v16;
    v41 = v13;
    v39 = v17;
    while (1)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        if (([v23 hasPrefix:v13] & 1) == 0 && (objc_msgSend(v23, "hasPrefix:", v16) & 1) == 0)
        {
          v25 = [(MADAutoAssetPersisted *)self moduleName];
          v26 = [MADAutoAssetPersisted entryFileIDForModule:v25 fromFilename:v23];

          v43 = [objc_alloc(p_weak_ivar_lyt[226]) initWithFormat:@"%@/%@", v42, v23];
          if (v26)
          {
            v27 = self;
            v28 = [(MADAutoAssetPersisted *)self currentEntryIDs];
            v29 = [v28 containsObject:v26];

            v30 = _MADLog(@"Auto");
            v31 = v30;
            if (v29)
            {
              self = v27;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(MADAutoAssetPersisted *)v27 _summaryLeader:@"_removeEntriesMissingFromTableOfContents" fromLocation:v38];
                *buf = 138543618;
                v49 = v32;
                v50 = 2114;
                v51 = v26;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ | valid entry in table-of-contents | %{public}@", buf, 0x16u);
              }

              p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
              goto LABEL_17;
            }

            self = v27;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v36 = [(MADAutoAssetPersisted *)v27 _summaryLeader:@"_removeEntriesMissingFromTableOfContents" fromLocation:v38];
              *buf = 138543618;
              v49 = v36;
              v50 = 2114;
              v51 = v23;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@ | stale entry on filesystem (not in table-of-contents) for file:%{public}@", buf, 0x16u);
            }

            v35 = v43;
            [(MADAutoAssetPersisted *)v27 _removeEntryFile:v43 reason:@"stale-on-filesystem" fromLocation:v38];
            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            v16 = v40;
          }

          else
          {
            v33 = _MADLog(@"Auto");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_removeEntriesMissingFromTableOfContents" fromLocation:v38];
              *buf = 138543618;
              v49 = v34;
              v50 = 2114;
              v51 = v23;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ | unable to form entryFileID for file:%{public}@", buf, 0x16u);

              p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
            }

LABEL_17:
            v16 = v40;
            v35 = v43;
          }

          v13 = v41;
          v17 = v39;
        }

        objc_autoreleasePoolPop(v24);
      }

      v19 = [v17 countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (!v19)
      {
LABEL_24:

        v10 = v37;
        break;
      }
    }
  }
}

- (id)_summary
{
  v3 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [NSString alloc];
  v5 = [(MADAutoAssetPersisted *)self moduleName];
  v6 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
  v7 = [(MADAutoAssetPersisted *)self persistedConfig];
  if (v7)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v9 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v10 = [v4 initWithFormat:@"module:%@|version:%@|config:%@|entries:%ld", v5, v6, v8, objc_msgSend(v9, "count")];
  [(MADAutoAssetPersisted *)self setLatestSafeSummary:v10];

  return [(MADAutoAssetPersisted *)self latestSafeSummary];
}

- (id)_summaryLeader:(id)a3 fromLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [NSString alloc];
  v10 = [(MADAutoAssetPersisted *)self logLeader];
  v11 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v12 = [v11 count];
  v13 = [(MADAutoAssetPersisted *)self _summary];
  v14 = [v9 initWithFormat:@"{%@(%ld)%@:%@} [%@]", v10, v12, v6, v7, v13];

  return v14;
}

+ (id)persistedStateFilename:(id)a3 forFileID:(id)a4 ofEntryName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSString alloc];
  v11 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v12 = v11;
  if (v7)
  {
    v13 = [v10 initWithFormat:@"%@/%@/%@_%@_%@.state", v11, v9, v9, v8, v7];
  }

  else
  {
    v13 = [v10 initWithFormat:@"%@/%@/%@_%@.state", v11, v9, v9, v8, v16];
  }

  v14 = v13;

  return v14;
}

+ (id)entryFileIDForModule:(id)a3 fromFilename:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@_%@", v6, @"Entry"];

  v8 = [v7 length];
  v9 = [@".state" length] + v8 + 1;
  if ([v5 length] > v9 && objc_msgSend(v5, "hasPrefix:", v7) && objc_msgSend(v5, "hasSuffix:", @".state"))
  {
    v10 = [v5 substringWithRange:{objc_msgSend(v7, "length") + 1, objc_msgSend(v5, "length") - v9}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)persistedEntryStatusName:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"UNKNOWN_TYPE";
  }

  else
  {
    return *(&off_4B37C0 + a3);
  }
}

+ (int64_t)persistedEntryStatusValue:(id)a3
{
  v3 = a3;
  if (([SUCore stringIsEqual:v3 to:@"CREATED"]& 1) != 0)
  {
    v4 = 0;
  }

  else if (([SUCore stringIsEqual:v3 to:@"STORED"]& 1) != 0)
  {
    v4 = 1;
  }

  else if (([SUCore stringIsEqual:v3 to:@"LOADED"]& 1) != 0)
  {
    v4 = 2;
  }

  else if (([SUCore stringIsEqual:v3 to:@"LOAD_OR_CREATE"]& 1) != 0)
  {
    v4 = 3;
  }

  else if ([SUCore stringIsEqual:v3 to:@"DELETED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (id)persistedOperationSymbol:(id)a3
{
  v3 = a3;
  if (([SUCore stringIsEqual:v3 to:@"CONFIG_LOAD"]& 1) != 0)
  {
    v4 = @"C_LOD";
  }

  else if (([SUCore stringIsEqual:v3 to:@"CONFIG_SET"]& 1) != 0)
  {
    v4 = @"C_SET";
  }

  else if (([SUCore stringIsEqual:v3 to:@"ENTRY_LOAD"]& 1) != 0)
  {
    v4 = @"E_LOD";
  }

  else if (([SUCore stringIsEqual:v3 to:@"ENTRY_ADD"]& 1) != 0)
  {
    v4 = @"E_ADD";
  }

  else if (([SUCore stringIsEqual:v3 to:@"ENTRY_REMOVE"]& 1) != 0)
  {
    v4 = @"E_RMV";
  }

  else if (([SUCore stringIsEqual:v3 to:@"ENTRY_MODIFY"]& 1) != 0)
  {
    v4 = @"E_MOD";
  }

  else if (([SUCore stringIsEqual:v3 to:@"ENTRY_INCREASED"]& 1) != 0)
  {
    v4 = @"E_INC";
  }

  else if ([SUCore stringIsEqual:v3 to:@"ENTRY_DECREASED"])
  {
    v4 = @"E_DEC";
  }

  else
  {
    v4 = @"?";
  }

  return v4;
}

+ (id)persistedComponentSymbol:(id)a3
{
  v3 = a3;
  if (([SUCore stringIsEqual:v3 to:@"ACTIVE-JOBS"]& 1) != 0)
  {
    v4 = @"AJOBS";
  }

  else if (([SUCore stringIsEqual:v3 to:@"KNOWN_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"KDESC";
  }

  else if (([SUCore stringIsEqual:v3 to:@"DOWNLOADED_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"DDESC";
  }

  else if (([SUCore stringIsEqual:v3 to:@"JOB_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"JDESC";
  }

  else if (([SUCore stringIsEqual:v3 to:@"INVALID_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"IDESC";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-SCHEDULER"]& 1) != 0)
  {
    v4 = @"SCHED";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-LOCKER"]& 1) != 0)
  {
    v4 = @"LOCKR";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-STAGER"]& 1) != 0)
  {
    v4 = @"STAGR";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-STAGER-SET-LOOKUP-RESULTS"]& 1) != 0)
  {
    v4 = @"SSLUP";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-STAGER-TARGET-LOOKUP-RESULTS"]& 1) != 0)
  {
    v4 = @"STLUP";
  }

  else if (([SUCore stringIsEqual:v3 to:@"AUTO-STAGER-TARGET-AVAILABLE"]& 1) != 0)
  {
    v4 = @"STGAV";
  }

  else if (([SUCore stringIsEqual:v3 to:@"SET_CONFIGURATIONS"]& 1) != 0)
  {
    v4 = @"SCONF";
  }

  else if (([SUCore stringIsEqual:v3 to:@"SET_ATOMIC_INSTANCES"]& 1) != 0)
  {
    v4 = @"SATOM";
  }

  else if (([SUCore stringIsEqual:v3 to:@"SET_ACTIVE_JOB_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"SJOBS";
  }

  else if (([SUCore stringIsEqual:v3 to:@"SET_DOWNLOADED_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"SDESC";
  }

  else if (([SUCore stringIsEqual:v3 to:@"SET_TARGETS"]& 1) != 0)
  {
    v4 = @"STARG";
  }

  else if ([SUCore stringIsEqual:v3 to:@"SET_LOOKUP_RESULTS"])
  {
    v4 = @"SLKUP";
  }

  else
  {
    v4 = @"?????";
  }

  return v4;
}

@end