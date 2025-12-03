@interface MADAutoAssetPersisted
+ (BOOL)isConsideredMatchWithoutVersion:(id)version ofEntryFullEntryIDName:(id)name toSelectorPersistedEntryID:(id)d;
+ (id)entryFileIDForModule:(id)module fromFilename:(id)filename;
+ (id)persistedComponentSymbol:(id)symbol;
+ (id)persistedEntryStatusName:(int64_t)name;
+ (id)persistedOperationSymbol:(id)symbol;
+ (id)persistedStateFilename:(id)filename forFileID:(id)d ofEntryName:(id)name;
+ (int64_t)persistedEntryStatusValue:(id)value;
- (BOOL)_preExistingPersistedStateValid:(id)valid fromLocation:(id)location;
- (BOOL)_verifyEntryFileExists:(id)exists fromLocation:(id)location expectingExists:(BOOL)expectingExists;
- (BOOL)_verifyPersistedDirectoryExistsOrCreate:(id)create;
- (BOOL)persistedEntryAlreadyExists:(id)exists fromLocation:(id)location;
- (id)_contentsOfModulePersistedPath:(id)path fromLocation:(id)location;
- (id)_loadPersistedEntry:(id)entry forEntryName:(id)name withEntryStatus:(int64_t)status;
- (id)_summary;
- (id)_summaryLeader:(id)leader fromLocation:(id)location;
- (id)decodeFromLocation:(id)location ofEntryName:(id)name fromPersistedEntry:(id)entry decodingObjectForKey:(id)key ofClass:(Class)class allowingNilObject:(BOOL)object;
- (id)decodeFromLocation:(id)location ofEntryName:(id)name fromPersistedEntry:(id)entry decodingObjectForKey:(id)key ofClass:(Class)class withEncodeClasses:(id)classes allowingNilObject:(BOOL)object;
- (id)initForModule:(id)module ofModuleVersion:(id)version usingDispatchQueue:(id)queue loggingByName:(id)name withVersionMigrator:(id)migrator;
- (id)persistedEntry:(id)entry fromLocation:(id)location;
- (id)persistedEntryIDs:(id)ds;
- (id)persistedEntryIDs:(id)ds assetSelector:(id)selector;
- (id)persistedEntryIDs:(id)ds assetType:(id)type;
- (int64_t)_validateLoadedEntry:(id)entry fromLocation:(id)location forEntryName:(id)name loadedWithEntryStatus:(int64_t)status;
- (int64_t)persistedEntryCount:(id)count;
- (void)_persistStatusChange:(id)change ofEntryName:(id)name withEntrySummary:(id)summary currentStatus:(int64_t)status fromLocation:(id)location;
- (void)_persistTableOfContents:(id)contents forEntryName:(id)name withEntryStatus:(int64_t)status;
- (void)_removeEntriesMissingFromTableOfContents:(id)contents;
- (void)_removeEntryFile:(id)file reason:(id)reason fromLocation:(id)location;
- (void)flushPersistedStateCacheAndSetCachingBehaviour:(BOOL)behaviour;
- (void)loadPersistedState:(id)state;
- (void)removeAllPersistedEntries:(id)entries;
- (void)removePersistedEntry:(id)entry fromLocation:(id)location;
- (void)storePersistedEntry:(id)entry withEntrySummary:(id)summary fromLocation:(id)location;
@end

@implementation MADAutoAssetPersisted

- (id)initForModule:(id)module ofModuleVersion:(id)version usingDispatchQueue:(id)queue loggingByName:(id)name withVersionMigrator:(id)migrator
{
  moduleCopy = module;
  versionCopy = version;
  queueCopy = queue;
  nameCopy = name;
  migratorCopy = migrator;
  v49.receiver = self;
  v49.super_class = MADAutoAssetPersisted;
  v18 = [(MADAutoAssetPersisted *)&v49 init];
  if (v18)
  {
    v19 = [NSString alloc];
    if (nameCopy)
    {
      nameCopy = [v19 initWithFormat:@"AUTO-PERSISTED(%@)[%@]", moduleCopy, nameCopy];
    }

    else
    {
      nameCopy = [v19 initWithFormat:@"AUTO-PERSISTED(%@)", moduleCopy, v48];
    }

    logLeader = v18->_logLeader;
    v18->_logLeader = nameCopy;

    objc_storeStrong(&v18->_moduleName, module);
    objc_storeStrong(&v18->_moduleCurrentVersion, version);
    latestSafeSummary = v18->_latestSafeSummary;
    v18->_latestSafeSummary = @"INIT";

    objc_storeStrong(&v18->_persistedQueue, queue);
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
      v32 = [v29 initWithDispatchQueue:persistedQueue withPersistencePath:v31 forPolicyVersion:versionCopy issuingDefaultLevelLogging:0];
      persistedConfig = v18->_persistedConfig;
      v18->_persistedConfig = v32;

      v34 = [SUCorePersistedState alloc];
      v35 = v18->_persistedQueue;
      v36 = [MADAutoAssetPersisted persistedStateFilename:v18->_moduleName forFileID:@"TableOfContents" ofEntryName:0];
      v37 = [v34 initWithDispatchQueue:v35 withPersistencePath:v36 forPolicyVersion:versionCopy issuingDefaultLevelLogging:0];
    }

    else
    {
      v38 = [v29 initWithDispatchQueue:persistedQueue withPersistencePath:v31 forPolicyVersion:versionCopy];
      v39 = v18->_persistedConfig;
      v18->_persistedConfig = v38;

      v40 = [SUCorePersistedState alloc];
      v41 = v18->_persistedQueue;
      v36 = [MADAutoAssetPersisted persistedStateFilename:v18->_moduleName forFileID:@"TableOfContents" ofEntryName:0];
      v37 = [v40 initWithDispatchQueue:v41 withPersistencePath:v36 forPolicyVersion:versionCopy];
    }

    entryTableOfContents = v18->_entryTableOfContents;
    v18->_entryTableOfContents = v37;

    v43 = objc_alloc_init(NSMutableArray);
    currentEntryIDs = v18->_currentEntryIDs;
    v18->_currentEntryIDs = v43;

    v45 = objc_retainBlock(migratorCopy);
    moduleVersionMigrator = v18->_moduleVersionMigrator;
    v18->_moduleVersionMigrator = v45;
  }

  return v18;
}

- (void)loadPersistedState:(id)state
{
  stateCopy = state;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v61 = stateCopy;
  if ([(MADAutoAssetPersisted *)self _verifyPersistedDirectoryExistsOrCreate:stateCopy])
  {
    persistedConfig = [(MADAutoAssetPersisted *)self persistedConfig];
    [persistedConfig loadPersistedState];

    persistedConfig2 = [(MADAutoAssetPersisted *)self persistedConfig];
    v8 = [persistedConfig2 stringForKey:@"duplicatedModuleVersion"];

    v59 = v8;
    if (v8)
    {
      moduleCurrentVersion = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      if (([SUCore stringIsEqual:v8 to:moduleCurrentVersion]& 1) != 0)
      {
        persistedConfig3 = [(MADAutoAssetPersisted *)self persistedConfig];
        versionPolicyLayer = [persistedConfig3 versionPolicyLayer];
        moduleCurrentVersion2 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
        v13 = [SUCore stringIsEqual:versionPolicyLayer to:moduleCurrentVersion2];

        if (v13)
        {
          v14 = _MADLog(@"Auto");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:stateCopy];
            persistedConfig4 = [(MADAutoAssetPersisted *)self persistedConfig];
            versionPolicyLayer2 = [persistedConfig4 versionPolicyLayer];
            moduleCurrentVersion3 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
            *buf = 138543874;
            v72 = v15;
            v73 = 2114;
            v74 = versionPolicyLayer2;
            v75 = 2114;
            v76 = moduleCurrentVersion3;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ | persisted-state version(%{public}@) = current module version(%{public}@), processing persisted-state", buf, 0x20u);
          }

          entryTableOfContents = [(MADAutoAssetPersisted *)self entryTableOfContents];
          [entryTableOfContents loadPersistedState];

          entryTableOfContents2 = [(MADAutoAssetPersisted *)self entryTableOfContents];
          v21 = [entryTableOfContents2 objectForKey:@"currentEntries" ofClass:objc_opt_class()];

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
            [(MADAutoAssetPersisted *)self _removeEntriesMissingFromTableOfContents:stateCopy];
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
      v37 = [(MADAutoAssetPersisted *)self _summaryLeader:@"loadPersistedState" fromLocation:stateCopy];
      persistedConfig5 = [(MADAutoAssetPersisted *)self persistedConfig];
      versionPolicyLayer3 = [persistedConfig5 versionPolicyLayer];
      moduleCurrentVersion4 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      moduleCurrentVersion5 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
      *buf = 138544386;
      v72 = v37;
      v73 = 2114;
      v74 = versionPolicyLayer3;
      v75 = 2114;
      v76 = moduleCurrentVersion4;
      v77 = 2114;
      v78 = v59;
      v79 = 2114;
      v80 = moduleCurrentVersion5;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ | persisted-state version(%{public}@) != current module version(%{public}@) OR duplicatedModuleVersion(%{public}@) != current module version(%{public}@) | dropped stale persisted-state", buf, 0x34u);
    }

    persistedConfig6 = [(MADAutoAssetPersisted *)self persistedConfig];
    [persistedConfig6 removePersistedState];

    entryTableOfContents3 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [entryTableOfContents3 loadPersistedState];

    entryTableOfContents4 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    v45 = [entryTableOfContents4 objectForKey:@"currentEntries" ofClass:objc_opt_class()];

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
          moduleName = [(MADAutoAssetPersisted *)self moduleName];
          v53 = [MADAutoAssetPersisted persistedStateFilename:moduleName forFileID:@"Entry" ofEntryName:v50];

          [(MADAutoAssetPersisted *)self _removeEntryFile:v53 reason:@"persisted-version-mismatch" fromLocation:v61];
          objc_autoreleasePoolPop(v51);
        }

        v47 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v47);
    }

    entryTableOfContents5 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [entryTableOfContents5 removePersistedState];

    persistedConfig7 = [(MADAutoAssetPersisted *)self persistedConfig];
    [persistedConfig7 loadPersistedState];

    persistedConfig8 = [(MADAutoAssetPersisted *)self persistedConfig];
    moduleCurrentVersion6 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
    [persistedConfig8 persistString:moduleCurrentVersion6 forKey:@"duplicatedModuleVersion"];

    entryTableOfContents6 = [(MADAutoAssetPersisted *)self entryTableOfContents];
    [entryTableOfContents6 loadPersistedState];

    [(MADAutoAssetPersisted *)self _removeEntriesMissingFromTableOfContents:v61];
    goto LABEL_38;
  }

LABEL_40:
}

- (BOOL)persistedEntryAlreadyExists:(id)exists fromLocation:(id)location
{
  locationCopy = location;
  existsCopy = exists;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  v10 = [MADAutoAssetPersisted persistedStateFilename:moduleName forFileID:@"Entry" ofEntryName:existsCopy];

  lastPathComponent = [v10 lastPathComponent];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    if (lastPathComponent)
    {
      knownPersistedFiles = [(MADAutoAssetPersisted *)self knownPersistedFiles];
      v13 = [knownPersistedFiles objectForKey:lastPathComponent];

      if (v13)
      {
        goto LABEL_8;
      }
    }
  }

  v14 = [(MADAutoAssetPersisted *)self _verifyEntryFileExists:v10 fromLocation:locationCopy expectingExists:0];
  if ([(MADAutoAssetPersisted *)self cachingEnabled]&& lastPathComponent && v14)
  {
    knownPersistedFiles2 = [(MADAutoAssetPersisted *)self knownPersistedFiles];
    [knownPersistedFiles2 setObject:&__kCFBooleanTrue forKey:lastPathComponent];

LABEL_8:
    LOBYTE(v14) = 1;
  }

  return v14;
}

- (id)persistedEntry:(id)entry fromLocation:(id)location
{
  entryCopy = entry;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  if (entryCopy)
  {
    v9 = [(MADAutoAssetPersisted *)self _loadPersistedEntry:@"persistedEntry" forEntryName:entryCopy withEntryStatus:3];
  }

  else
  {
    v10 = _MADLog(@"Auto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntry" fromLocation:locationCopy];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | nil entryName provided by caller", &v13, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (void)storePersistedEntry:(id)entry withEntrySummary:(id)summary fromLocation:(id)location
{
  entryCopy = entry;
  summaryCopy = summary;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v12 = [(MADAutoAssetPersisted *)self persistedEntry:entryCopy fromLocation:locationCopy];
  if (!v12)
  {
    v14 = _MADLog(@"Auto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [(MADAutoAssetPersisted *)self _summaryLeader:@"storePersistedEntry" fromLocation:locationCopy];
      v18 = 138543874;
      v19 = v17;
      v20 = 2114;
      v21 = entryCopy;
      v22 = 2114;
      v23 = summaryCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}@ | unable to locate entry | %{public}@[%{public}@]", &v18, 0x20u);
    }

    goto LABEL_8;
  }

  [(MADAutoAssetPersisted *)self _persistStatusChange:v12 ofEntryName:entryCopy withEntrySummary:summaryCopy currentStatus:1 fromLocation:locationCopy];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    moduleName = [(MADAutoAssetPersisted *)self moduleName];
    v14 = [MADAutoAssetPersisted persistedStateFilename:moduleName forFileID:@"Entry" ofEntryName:entryCopy];

    lastPathComponent = [v14 lastPathComponent];
    if (lastPathComponent)
    {
      knownPersistedStates = [(MADAutoAssetPersisted *)self knownPersistedStates];
      [knownPersistedStates setObject:v12 forKey:lastPathComponent];
    }

LABEL_8:
  }
}

- (id)decodeFromLocation:(id)location ofEntryName:(id)name fromPersistedEntry:(id)entry decodingObjectForKey:(id)key ofClass:(Class)class allowingNilObject:(BOOL)object
{
  locationCopy = location;
  nameCopy = name;
  keyCopy = key;
  entryCopy = entry;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v19 = [entryCopy secureCodedObjectForKey:keyCopy ofClass:class];

  if (!v19 && !object)
  {
    v20 = _MADLog(@"Auto");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [(MADAutoAssetPersisted *)self _summaryLeader:@"decodeFromLocation" fromLocation:locationCopy];
      v23 = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = nameCopy;
      v27 = 2114;
      v28 = keyCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%{public}@ | unable to decode entry - dropped | %{public}@[key:%{public}@]", &v23, 0x20u);
    }

    [(MADAutoAssetPersisted *)self removePersistedEntry:nameCopy fromLocation:locationCopy];
  }

  return v19;
}

- (id)decodeFromLocation:(id)location ofEntryName:(id)name fromPersistedEntry:(id)entry decodingObjectForKey:(id)key ofClass:(Class)class withEncodeClasses:(id)classes allowingNilObject:(BOOL)object
{
  locationCopy = location;
  nameCopy = name;
  keyCopy = key;
  classesCopy = classes;
  entryCopy = entry;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v21 = [entryCopy secureCodedObjectForKey:keyCopy ofClass:class encodeClasses:classesCopy];

  if (!v21 && !object)
  {
    v22 = _MADLog(@"Auto");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [(MADAutoAssetPersisted *)self _summaryLeader:@"decodeFromLocation" fromLocation:locationCopy];
      v25 = 138543874;
      v26 = v23;
      v27 = 2114;
      v28 = nameCopy;
      v29 = 2114;
      v30 = keyCopy;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%{public}@ | unable to decode entry (specifying encode classes) - dropped | %{public}@[key:%{public}@]", &v25, 0x20u);
    }

    [(MADAutoAssetPersisted *)self removePersistedEntry:nameCopy fromLocation:locationCopy];
  }

  return v21;
}

- (void)removePersistedEntry:(id)entry fromLocation:(id)location
{
  entryCopy = entry;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  if (!entryCopy)
  {
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removePersistedEntry" fromLocation:locationCopy];
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

  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v10 = [currentEntryIDs count];

  if (!v10)
  {
LABEL_6:
    v17 = _MADLog(@"Auto");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removePersistedEntry" fromLocation:locationCopy];
      v28 = 138543618;
      v29 = v18;
      v30 = 2114;
      v31 = entryCopy;
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
    currentEntryIDs2 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v13 = [currentEntryIDs2 objectAtIndexedSubscript:v11];
    v14 = [SUCore stringIsEqual:entryCopy to:v13];

    if (v14)
    {
      break;
    }

    ++v11;
    currentEntryIDs3 = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v16 = [currentEntryIDs3 count];

    if (v11 >= v16)
    {
      goto LABEL_6;
    }
  }

  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  v23 = [MADAutoAssetPersisted persistedStateFilename:moduleName forFileID:@"Entry" ofEntryName:entryCopy];

  lastPathComponent = [v23 lastPathComponent];
  v25 = [(MADAutoAssetPersisted *)self persistedEntry:entryCopy fromLocation:locationCopy];
  currentEntryIDs4 = [(MADAutoAssetPersisted *)self currentEntryIDs];
  [currentEntryIDs4 removeObjectAtIndex:v11];

  [(MADAutoAssetPersisted *)self _persistStatusChange:v25 ofEntryName:entryCopy withEntrySummary:@"removing entry" currentStatus:4 fromLocation:locationCopy];
  [(MADAutoAssetPersisted *)self _removeEntryFile:v23 reason:@"requested-by-module" fromLocation:locationCopy];
  if ([(MADAutoAssetPersisted *)self cachingEnabled]&& lastPathComponent)
  {
    knownPersistedStates = [(MADAutoAssetPersisted *)self knownPersistedStates];
    [knownPersistedStates removeObjectForKey:lastPathComponent];
  }

  [(MADAutoAssetPersisted *)self _persistTableOfContents:@"removePersistedEntry" forEntryName:entryCopy withEntryStatus:4];

LABEL_12:
}

- (void)flushPersistedStateCacheAndSetCachingBehaviour:(BOOL)behaviour
{
  behaviourCopy = behaviour;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v6 = _MADLog(@"Auto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    logLeader = [(MADAutoAssetPersisted *)self logLeader];
    v8 = logLeader;
    v9 = @"disabling";
    if (behaviourCopy)
    {
      v9 = @"enabling";
    }

    v12 = 138543618;
    v13 = logLeader;
    v14 = 2114;
    v15 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ {flushPersistedStateCacheAndSetCachingBehaviour} | Flushing persisted state in memory cache and %{public}@ future caching", &v12, 0x16u);
  }

  knownPersistedFiles = [(MADAutoAssetPersisted *)self knownPersistedFiles];
  [knownPersistedFiles removeAllObjects];

  knownPersistedStates = [(MADAutoAssetPersisted *)self knownPersistedStates];
  [knownPersistedStates removeAllObjects];

  [(MADAutoAssetPersisted *)self setCachingEnabled:behaviourCopy];
}

- (void)removeAllPersistedEntries:(id)entries
{
  entriesCopy = entries;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v6 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v8 = [currentEntryIDs countByEnumeratingWithState:&v25 objects:v32 count:16];
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
          objc_enumerationMutation(currentEntryIDs);
        }

        if (*(*(&v25 + 1) + 8 * v11))
        {
          [v6 addObject:?];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [currentEntryIDs countByEnumeratingWithState:&v25 objects:v32 count:16];
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
        [(MADAutoAssetPersisted *)self removePersistedEntry:v17 fromLocation:entriesCopy, v21];
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
    v20 = [(MADAutoAssetPersisted *)self _summaryLeader:@"removeAllPersistedEntries" fromLocation:entriesCopy];
    *buf = 138543362;
    v30 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ | removed all entries from table-of-contents and from filesystem", buf, 0xCu);
  }
}

- (id)persistedEntryIDs:(id)ds
{
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v5 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v7 = [currentEntryIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(currentEntryIDs);
        }

        if (*(*(&v12 + 1) + 8 * i))
        {
          [v5 addObject:?];
        }
      }

      v8 = [currentEntryIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)persistedEntryIDs:(id)ds assetType:(id)type
{
  dsCopy = ds;
  typeCopy = type;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  if (typeCopy)
  {
    v9 = objc_alloc_init(NSMutableArray);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v11 = [currentEntryIDs countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(currentEntryIDs);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          if (!v15)
          {
            v18 = _MADLog(@"Auto");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetType:" fromLocation:dsCopy];
              _summary = [(MADAutoAssetPersisted *)self _summary];
              *buf = 138543618;
              v29 = v19;
              v30 = 2114;
              v31 = _summary;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ | corrupted current-entry-IDs | %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v16);
            goto LABEL_18;
          }

          if ([v15 hasPrefix:typeCopy])
          {
            [v9 addObject:v15];
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [currentEntryIDs countByEnumeratingWithState:&v23 objects:v27 count:16];
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
      v21 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetType:" fromLocation:dsCopy];
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

- (id)persistedEntryIDs:(id)ds assetSelector:(id)selector
{
  dsCopy = ds;
  selectorCopy = selector;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  assetType = [selectorCopy assetType];

  if (!assetType)
  {
    persistedEntryID = _MADLog(@"Auto");
    if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:dsCopy];
      summary = [selectorCopy summary];
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = summary;
      v17 = "%{public}@ | invalid asset-selector (no asset-type) | assetSelector:%{public}@";
      goto LABEL_8;
    }

LABEL_9:
    v18 = &__NSArray0__struct;
    goto LABEL_10;
  }

  assetSpecifier = [selectorCopy assetSpecifier];
  if (!assetSpecifier || (v11 = assetSpecifier, [selectorCopy assetSpecifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v12, @"MAAutoAsset-all-asset-specifiers"), v12, v11, v13))
  {
    persistedEntryID = _MADLog(@"Auto");
    if (os_log_type_enabled(persistedEntryID, OS_LOG_TYPE_ERROR))
    {
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:dsCopy];
      summary = [selectorCopy summary];
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = summary;
      v17 = "%{public}@ | invalid asset-selector (no asset-specifier) | assetSelector:%{public}@";
LABEL_8:
      _os_log_impl(&dword_0, persistedEntryID, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  persistedEntryID = [selectorCopy persistedEntryID];
  if (!persistedEntryID)
  {
    v23 = _MADLog(@"Auto");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:dsCopy];
      summary2 = [selectorCopy summary];
      *buf = 138543618;
      v45 = v24;
      v46 = 2114;
      v47 = summary2;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ | unable to form persisted-entry-ID | assetSelector:%{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  assetVersion = [selectorCopy assetVersion];

  if (assetVersion)
  {
    currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v22 = [currentEntryIDs containsObject:persistedEntryID];

    if (!v22)
    {
      goto LABEL_9;
    }

    v43 = persistedEntryID;
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
              v34 = [(MADAutoAssetPersisted *)self _summaryLeader:@"persistedEntryIDs:assetSelector:" fromLocation:dsCopy];
              _summary = [(MADAutoAssetPersisted *)self _summary];
              *buf = 138543618;
              v45 = v34;
              v46 = 2114;
              v47 = _summary;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%{public}@ | corrupted current-entry-IDs | %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v18 = &__NSArray0__struct;
            v32 = v36;
            goto LABEL_34;
          }

          if ([MADAutoAssetPersisted isConsideredMatchWithoutVersion:dsCopy ofEntryFullEntryIDName:v30 toSelectorPersistedEntryID:persistedEntryID])
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

+ (BOOL)isConsideredMatchWithoutVersion:(id)version ofEntryFullEntryIDName:(id)name toSelectorPersistedEntryID:(id)d
{
  versionCopy = version;
  nameCopy = name;
  dCopy = d;
  v24 = 0;
  v10 = [NSRegularExpression regularExpressionWithPattern:@"_[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+_[0-9]+$" options:17 error:&v24];
  v11 = v24;
  v12 = v11;
  if (!nameCopy || !dCopy)
  {
    v13 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v17 = @"N";
    if (nameCopy)
    {
      v18 = nameCopy;
    }

    else
    {
      v18 = @"N";
    }

    *buf = 138543874;
    v26 = versionCopy;
    v27 = 2114;
    if (dCopy)
    {
      v17 = dCopy;
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
      v13 = [v10 stringByReplacingMatchesInString:nameCopy options:0 range:0 withTemplate:{-[__CFString length](nameCopy, "length"), &stru_4BD3F0}];
      if (![SUCore stringIsEqual:v13 to:nameCopy])
      {
        v22 = [SUCore stringIsEqual:v13 to:dCopy];
        goto LABEL_17;
      }

      checkedDescription = _MADLog(@"Auto");
      if (!os_log_type_enabled(checkedDescription, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 138543618;
      v26 = versionCopy;
      v27 = 2114;
      v28 = nameCopy;
      v15 = "%{public}@ | MISSING asset-version | entryName:%{public}@";
      v16 = checkedDescription;
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
    v26 = versionCopy;
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
    checkedDescription = [v12 checkedDescription];
    *buf = 138543618;
    v26 = versionCopy;
    v27 = 2114;
    v28 = checkedDescription;
    v15 = "%{public}@ | invalid regex | regexError:%{public}@";
    v16 = v13;
    goto LABEL_6;
  }

LABEL_16:
  v22 = 0;
LABEL_17:

  return v22;
}

- (int64_t)persistedEntryCount:(id)count
{
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v6 = [currentEntryIDs count];

  return v6;
}

- (void)_persistTableOfContents:(id)contents forEntryName:(id)name withEntryStatus:(int64_t)status
{
  v6 = [(MADAutoAssetPersisted *)self persistedQueue:contents];
  dispatch_assert_queue_V2(v6);

  entryTableOfContents = [(MADAutoAssetPersisted *)self entryTableOfContents];
  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  [entryTableOfContents persistObject:currentEntryIDs forKey:@"currentEntries" shouldPersist:1];
}

- (id)_loadPersistedEntry:(id)entry forEntryName:(id)name withEntryStatus:(int64_t)status
{
  entryCopy = entry;
  nameCopy = name;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  v11 = [MADAutoAssetPersisted persistedStateFilename:moduleName forFileID:@"Entry" ofEntryName:nameCopy];

  lastPathComponent = [v11 lastPathComponent];
  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    if (lastPathComponent)
    {
      knownPersistedStates = [(MADAutoAssetPersisted *)self knownPersistedStates];
      v14 = [knownPersistedStates objectForKey:lastPathComponent];

      if (v14)
      {
        goto LABEL_49;
      }
    }
  }

  v66 = lastPathComponent;
  v67 = v11;
  v15 = [SUCorePersistedState alloc];
  v16 = objc_opt_respondsToSelector();

  v17 = [SUCorePersistedState alloc];
  persistedQueue2 = [(MADAutoAssetPersisted *)self persistedQueue];
  moduleName2 = [(MADAutoAssetPersisted *)self moduleName];
  v20 = nameCopy;
  v21 = moduleName2;
  v22 = v20;
  v23 = [MADAutoAssetPersisted persistedStateFilename:moduleName2 forFileID:@"Entry" ofEntryName:?];
  moduleCurrentVersion = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
  if (v16)
  {
    v25 = [v17 initWithDispatchQueue:persistedQueue2 withPersistencePath:v23 forPolicyVersion:moduleCurrentVersion issuingDefaultLevelLogging:0];
  }

  else
  {
    v25 = [v17 initWithDispatchQueue:persistedQueue2 withPersistencePath:v23 forPolicyVersion:moduleCurrentVersion];
  }

  v26 = v25;

  if (!v26)
  {
    knownPersistedStates2 = _MADLog(@"Auto");
    nameCopy = v22;
    lastPathComponent = v66;
    if (os_log_type_enabled(knownPersistedStates2, OS_LOG_TYPE_ERROR))
    {
      v33 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:entryCopy];
      v34 = [MADAutoAssetPersisted persistedEntryStatusName:status];
      *buf = 138544130;
      v70 = v33;
      v71 = 2114;
      v11 = v67;
      v72 = v67;
      v73 = 2114;
      v74 = v22;
      v75 = 2114;
      v76 = v34;
      _os_log_impl(&dword_0, knownPersistedStates2, OS_LOG_TYPE_ERROR, "%{public}@ | unable to create persisted-state for file:%{public}@ | %{public}@[%{public}@]", buf, 0x2Au);

      v14 = 0;
    }

    else
    {
      v14 = 0;
      v11 = v67;
    }

    goto LABEL_48;
  }

  nameCopy = v22;
  if ([v26 loadPersistedState])
  {
    v27 = [v26 stringForKey:@"entryStatus"];
    v28 = [MADAutoAssetPersisted persistedEntryStatusValue:v27];
    currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
    v30 = [currentEntryIDs containsObject:v22];

    if (!v30)
    {
      if (status != 3)
      {
        if (status == 2)
        {
          v43 = [(MADAutoAssetPersisted *)self _validateLoadedEntry:v26 fromLocation:entryCopy forEntryName:v22 loadedWithEntryStatus:[MADAutoAssetPersisted persistedEntryStatusValue:v27]];
          v11 = v67;
          lastPathComponent = v66;
          if (v43 == 2)
          {
            currentEntryIDs2 = [(MADAutoAssetPersisted *)self currentEntryIDs];

            if (currentEntryIDs2)
            {
              currentEntryIDs3 = [(MADAutoAssetPersisted *)self currentEntryIDs];
              [currentEntryIDs3 addObject:v22];

              [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:v22 withEntrySummary:@"loading persisted state" currentStatus:2 fromLocation:entryCopy];
              [(MADAutoAssetPersisted *)self _persistTableOfContents:entryCopy forEntryName:v22 withEntryStatus:2];
            }
          }

          else
          {
            v62 = v43;
            v63 = _MADLog(@"Auto");
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v64 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:entryCopy];
              v65 = [MADAutoAssetPersisted persistedEntryStatusName:v62];
              *buf = 138544130;
              v70 = v64;
              v71 = 2114;
              v72 = v67;
              v73 = 2114;
              v74 = nameCopy;
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
          v58 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:entryCopy];
          v59 = [MADAutoAssetPersisted persistedEntryStatusName:status];
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

      currentEntryIDs4 = [(MADAutoAssetPersisted *)self currentEntryIDs];
      [currentEntryIDs4 addObject:v22];

      [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:v22 withEntrySummary:@"table-of-contents place holder | no previously persisted entry" currentStatus:0 fromLocation:entryCopy];
      [(MADAutoAssetPersisted *)self _persistTableOfContents:entryCopy forEntryName:v22 withEntryStatus:0];
LABEL_42:
      v11 = v67;
      lastPathComponent = v66;
LABEL_43:

      v14 = v26;
      goto LABEL_44;
    }

    if (v27)
    {
      v31 = [(MADAutoAssetPersisted *)self _validateLoadedEntry:v26 fromLocation:entryCopy forEntryName:v22 loadedWithEntryStatus:[MADAutoAssetPersisted persistedEntryStatusValue:v27]];
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
    [(MADAutoAssetPersisted *)self _persistStatusChange:v26 ofEntryName:nameCopy withEntrySummary:v53 currentStatus:v31 fromLocation:entryCopy];

    v28 = v31;
    goto LABEL_33;
  }

  if (status == 3)
  {
    v35 = [SUCorePersistedState alloc];
    v36 = objc_opt_respondsToSelector();

    v37 = [SUCorePersistedState alloc];
    persistedQueue3 = [(MADAutoAssetPersisted *)self persistedQueue];
    moduleName3 = [(MADAutoAssetPersisted *)self moduleName];
    v40 = [MADAutoAssetPersisted persistedStateFilename:moduleName3 forFileID:@"Entry" ofEntryName:v22];
    moduleCurrentVersion2 = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
    if (v36)
    {
      v42 = [v37 initWithDispatchQueue:persistedQueue3 withPersistencePath:v40 forPolicyVersion:moduleCurrentVersion2 issuingDefaultLevelLogging:0];
    }

    else
    {
      v42 = [v37 initWithDispatchQueue:persistedQueue3 withPersistencePath:v40 forPolicyVersion:moduleCurrentVersion2];
    }

    v14 = v42;

    if (v14)
    {
      [v14 loadPersistedState];
      currentEntryIDs5 = [(MADAutoAssetPersisted *)self currentEntryIDs];
      nameCopy = v22;
      [currentEntryIDs5 addObject:v22];

      [(MADAutoAssetPersisted *)self _persistStatusChange:v14 ofEntryName:v22 withEntrySummary:@"table-of-contents place holder | no previously persisted ToC" currentStatus:0 fromLocation:entryCopy];
      [(MADAutoAssetPersisted *)self _persistTableOfContents:entryCopy forEntryName:v22 withEntryStatus:0];
      v11 = v67;
      lastPathComponent = v66;
      goto LABEL_44;
    }

    v26 = _MADLog(@"Auto");
    nameCopy = v22;
    v11 = v67;
    lastPathComponent = v66;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v54 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:entryCopy];
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
    lastPathComponent = v66;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_loadPersistedEntry" fromLocation:entryCopy];
      v48 = [MADAutoAssetPersisted persistedEntryStatusName:status];
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
  cachingEnabled = [(MADAutoAssetPersisted *)self cachingEnabled];
  if (v14 && cachingEnabled && lastPathComponent)
  {
    knownPersistedStates2 = [(MADAutoAssetPersisted *)self knownPersistedStates];
    [knownPersistedStates2 setObject:v14 forKey:lastPathComponent];
LABEL_48:
  }

LABEL_49:

  return v14;
}

- (void)_persistStatusChange:(id)change ofEntryName:(id)name withEntrySummary:(id)summary currentStatus:(int64_t)status fromLocation:(id)location
{
  changeCopy = change;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v11 = [MADAutoAssetPersisted persistedEntryStatusName:status];
  [changeCopy persistString:v11 forKey:@"entryStatus" shouldPersist:1];
}

- (int64_t)_validateLoadedEntry:(id)entry fromLocation:(id)location forEntryName:(id)name loadedWithEntryStatus:(int64_t)status
{
  v7 = [(MADAutoAssetPersisted *)self persistedQueue:entry];
  dispatch_assert_queue_V2(v7);

  if (status > 5)
  {
    return 2;
  }

  else
  {
    return qword_33BC58[status];
  }
}

- (BOOL)_preExistingPersistedStateValid:(id)valid fromLocation:(id)location
{
  locationCopy = location;
  validCopy = valid;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v9 = [(MADAutoAssetPersisted *)self _loadPersistedEntry:locationCopy forEntryName:validCopy withEntryStatus:2];

  return v9 != 0;
}

- (BOOL)_verifyPersistedDirectoryExistsOrCreate:(id)create
{
  createCopy = create;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v6 = +[NSFileManager defaultManager];
  v7 = [NSString alloc];
  v8 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  v10 = [v7 initWithFormat:@"%@/%@", v8, moduleName];

  if ([v6 fileExistsAtPath:v10])
  {
    v11 = _MADLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:createCopy];
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
      v16 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:createCopy];
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
    v18 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyPersistedDirectoryExistsOrCreate" fromLocation:createCopy];
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

- (BOOL)_verifyEntryFileExists:(id)exists fromLocation:(id)location expectingExists:(BOOL)expectingExists
{
  expectingExistsCopy = expectingExists;
  existsCopy = exists;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:existsCopy];
  if ((v12 & 1) == 0 && expectingExistsCopy)
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_verifyEntryFileExists" fromLocation:locationCopy];
      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = existsCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ | entry file in table-of-contents does not exist at path:%{public}@", &v16, 0x16u);
    }
  }

  return v12;
}

- (id)_contentsOfModulePersistedPath:(id)path fromLocation:(id)location
{
  pathCopy = path;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 contentsOfDirectoryAtPath:pathCopy error:&v16];
  v11 = v16;
  if (v11)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_contentsOfModulePersistedPath" fromLocation:locationCopy];
      *buf = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = pathCopy;
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
      v15 = [(MADAutoAssetPersisted *)self _summaryLeader:@"_contentsOfModulePersistedPath" fromLocation:locationCopy];
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = pathCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%{public}@ | empty persisted directory at path:%{public}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (void)_removeEntryFile:(id)file reason:(id)reason fromLocation:(id)location
{
  fileCopy = file;
  reasonCopy = reason;
  locationCopy = location;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v12 = +[NSFileManager defaultManager];
  v16 = 0;
  [v12 removeItemAtPath:fileCopy error:&v16];
  v13 = v16;
  if (v13)
  {
    lastPathComponent = _MADLog(@"Auto");
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      knownPersistedFiles = [(MADAutoAssetPersisted *)self _summaryLeader:@"_removeEntryFile" fromLocation:locationCopy];
      *buf = 138544130;
      v18 = knownPersistedFiles;
      v19 = 2114;
      v20 = reasonCopy;
      v21 = 2114;
      v22 = fileCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_0, lastPathComponent, OS_LOG_TYPE_ERROR, "%{public}@ | failed to remove %{public}@ entry from filesystem path:%{public}@, error:%{public}@", buf, 0x2Au);
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([(MADAutoAssetPersisted *)self cachingEnabled])
  {
    lastPathComponent = [fileCopy lastPathComponent];
    if (lastPathComponent)
    {
      knownPersistedFiles = [(MADAutoAssetPersisted *)self knownPersistedFiles];
      [knownPersistedFiles removeObjectForKey:lastPathComponent];
      goto LABEL_7;
    }

LABEL_8:
  }
}

- (void)_removeEntriesMissingFromTableOfContents:(id)contents
{
  contentsCopy = contents;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v6 = [NSString alloc];
  v7 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  v9 = [v6 initWithFormat:@"%@/%@", v7, moduleName];

  v42 = v9;
  v38 = contentsCopy;
  v10 = [(MADAutoAssetPersisted *)self _contentsOfModulePersistedPath:v9 fromLocation:contentsCopy];
  if (v10)
  {
    v11 = [NSString alloc];
    moduleName2 = [(MADAutoAssetPersisted *)self moduleName];
    v13 = [v11 initWithFormat:@"%@_%@", moduleName2, @"Config"];

    v14 = [NSString alloc];
    moduleName3 = [(MADAutoAssetPersisted *)self moduleName];
    v16 = [v14 initWithFormat:@"%@_%@", moduleName3, @"TableOfContents"];

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
          moduleName4 = [(MADAutoAssetPersisted *)self moduleName];
          v26 = [MADAutoAssetPersisted entryFileIDForModule:moduleName4 fromFilename:v23];

          v43 = [objc_alloc(p_weak_ivar_lyt[226]) initWithFormat:@"%@/%@", v42, v23];
          if (v26)
          {
            selfCopy = self;
            currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
            v29 = [currentEntryIDs containsObject:v26];

            v30 = _MADLog(@"Auto");
            v31 = v30;
            if (v29)
            {
              self = selfCopy;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(MADAutoAssetPersisted *)selfCopy _summaryLeader:@"_removeEntriesMissingFromTableOfContents" fromLocation:v38];
                *buf = 138543618;
                v49 = v32;
                v50 = 2114;
                v51 = v26;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ | valid entry in table-of-contents | %{public}@", buf, 0x16u);
              }

              p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
              goto LABEL_17;
            }

            self = selfCopy;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v36 = [(MADAutoAssetPersisted *)selfCopy _summaryLeader:@"_removeEntriesMissingFromTableOfContents" fromLocation:v38];
              *buf = 138543618;
              v49 = v36;
              v50 = 2114;
              v51 = v23;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@ | stale entry on filesystem (not in table-of-contents) for file:%{public}@", buf, 0x16u);
            }

            v35 = v43;
            [(MADAutoAssetPersisted *)selfCopy _removeEntryFile:v43 reason:@"stale-on-filesystem" fromLocation:v38];
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
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v4 = [NSString alloc];
  moduleName = [(MADAutoAssetPersisted *)self moduleName];
  moduleCurrentVersion = [(MADAutoAssetPersisted *)self moduleCurrentVersion];
  persistedConfig = [(MADAutoAssetPersisted *)self persistedConfig];
  if (persistedConfig)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v10 = [v4 initWithFormat:@"module:%@|version:%@|config:%@|entries:%ld", moduleName, moduleCurrentVersion, v8, objc_msgSend(currentEntryIDs, "count")];
  [(MADAutoAssetPersisted *)self setLatestSafeSummary:v10];

  return [(MADAutoAssetPersisted *)self latestSafeSummary];
}

- (id)_summaryLeader:(id)leader fromLocation:(id)location
{
  locationCopy = location;
  leaderCopy = leader;
  persistedQueue = [(MADAutoAssetPersisted *)self persistedQueue];
  dispatch_assert_queue_V2(persistedQueue);

  v9 = [NSString alloc];
  logLeader = [(MADAutoAssetPersisted *)self logLeader];
  currentEntryIDs = [(MADAutoAssetPersisted *)self currentEntryIDs];
  v12 = [currentEntryIDs count];
  _summary = [(MADAutoAssetPersisted *)self _summary];
  v14 = [v9 initWithFormat:@"{%@(%ld)%@:%@} [%@]", logLeader, v12, locationCopy, leaderCopy, _summary];

  return v14;
}

+ (id)persistedStateFilename:(id)filename forFileID:(id)d ofEntryName:(id)name
{
  nameCopy = name;
  dCopy = d;
  filenameCopy = filename;
  v10 = [NSString alloc];
  v11 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/persisted");
  v12 = v11;
  if (nameCopy)
  {
    nameCopy = [v10 initWithFormat:@"%@/%@/%@_%@_%@.state", v11, filenameCopy, filenameCopy, dCopy, nameCopy];
  }

  else
  {
    nameCopy = [v10 initWithFormat:@"%@/%@/%@_%@.state", v11, filenameCopy, filenameCopy, dCopy, v16];
  }

  v14 = nameCopy;

  return v14;
}

+ (id)entryFileIDForModule:(id)module fromFilename:(id)filename
{
  filenameCopy = filename;
  moduleCopy = module;
  v7 = [[NSString alloc] initWithFormat:@"%@_%@", moduleCopy, @"Entry"];

  v8 = [v7 length];
  v9 = [@".state" length] + v8 + 1;
  if ([filenameCopy length] > v9 && objc_msgSend(filenameCopy, "hasPrefix:", v7) && objc_msgSend(filenameCopy, "hasSuffix:", @".state"))
  {
    v10 = [filenameCopy substringWithRange:{objc_msgSend(v7, "length") + 1, objc_msgSend(filenameCopy, "length") - v9}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)persistedEntryStatusName:(int64_t)name
{
  if (name > 5)
  {
    return @"UNKNOWN_TYPE";
  }

  else
  {
    return *(&off_4B37C0 + name);
  }
}

+ (int64_t)persistedEntryStatusValue:(id)value
{
  valueCopy = value;
  if (([SUCore stringIsEqual:valueCopy to:@"CREATED"]& 1) != 0)
  {
    v4 = 0;
  }

  else if (([SUCore stringIsEqual:valueCopy to:@"STORED"]& 1) != 0)
  {
    v4 = 1;
  }

  else if (([SUCore stringIsEqual:valueCopy to:@"LOADED"]& 1) != 0)
  {
    v4 = 2;
  }

  else if (([SUCore stringIsEqual:valueCopy to:@"LOAD_OR_CREATE"]& 1) != 0)
  {
    v4 = 3;
  }

  else if ([SUCore stringIsEqual:valueCopy to:@"DELETED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (id)persistedOperationSymbol:(id)symbol
{
  symbolCopy = symbol;
  if (([SUCore stringIsEqual:symbolCopy to:@"CONFIG_LOAD"]& 1) != 0)
  {
    v4 = @"C_LOD";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"CONFIG_SET"]& 1) != 0)
  {
    v4 = @"C_SET";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"ENTRY_LOAD"]& 1) != 0)
  {
    v4 = @"E_LOD";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"ENTRY_ADD"]& 1) != 0)
  {
    v4 = @"E_ADD";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"ENTRY_REMOVE"]& 1) != 0)
  {
    v4 = @"E_RMV";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"ENTRY_MODIFY"]& 1) != 0)
  {
    v4 = @"E_MOD";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"ENTRY_INCREASED"]& 1) != 0)
  {
    v4 = @"E_INC";
  }

  else if ([SUCore stringIsEqual:symbolCopy to:@"ENTRY_DECREASED"])
  {
    v4 = @"E_DEC";
  }

  else
  {
    v4 = @"?";
  }

  return v4;
}

+ (id)persistedComponentSymbol:(id)symbol
{
  symbolCopy = symbol;
  if (([SUCore stringIsEqual:symbolCopy to:@"ACTIVE-JOBS"]& 1) != 0)
  {
    v4 = @"AJOBS";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"KNOWN_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"KDESC";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"DOWNLOADED_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"DDESC";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"JOB_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"JDESC";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"INVALID_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"IDESC";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-SCHEDULER"]& 1) != 0)
  {
    v4 = @"SCHED";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-LOCKER"]& 1) != 0)
  {
    v4 = @"LOCKR";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-STAGER"]& 1) != 0)
  {
    v4 = @"STAGR";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-STAGER-SET-LOOKUP-RESULTS"]& 1) != 0)
  {
    v4 = @"SSLUP";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-STAGER-TARGET-LOOKUP-RESULTS"]& 1) != 0)
  {
    v4 = @"STLUP";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"AUTO-STAGER-TARGET-AVAILABLE"]& 1) != 0)
  {
    v4 = @"STGAV";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"SET_CONFIGURATIONS"]& 1) != 0)
  {
    v4 = @"SCONF";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"SET_ATOMIC_INSTANCES"]& 1) != 0)
  {
    v4 = @"SATOM";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"SET_ACTIVE_JOB_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"SJOBS";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"SET_DOWNLOADED_DESCRIPTORS"]& 1) != 0)
  {
    v4 = @"SDESC";
  }

  else if (([SUCore stringIsEqual:symbolCopy to:@"SET_TARGETS"]& 1) != 0)
  {
    v4 = @"STARG";
  }

  else if ([SUCore stringIsEqual:symbolCopy to:@"SET_LOOKUP_RESULTS"])
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