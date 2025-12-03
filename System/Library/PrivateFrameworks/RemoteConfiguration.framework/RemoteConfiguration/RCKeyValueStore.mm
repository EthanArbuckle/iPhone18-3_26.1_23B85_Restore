@interface RCKeyValueStore
+ (id)persistenceQueue;
- (BOOL)BOOLValueForKey:(id)key;
- (BOOL)containsObjectForKey:(id)key;
- (NSDictionary)asDictionary;
- (RCKeyValueStore)init;
- (RCKeyValueStore)initWithName:(id)name directory:(id)directory version:(unint64_t)version options:(unint64_t)options migrator:(id)migrator;
- (id)_dictionary;
- (id)_initializeStoreDirectoryWithName:(id)name;
- (id)_loadFromDisk;
- (id)allKeys;
- (id)objectForKey:(id)key;
- (id)objectsForKeys:(id)keys;
- (void)_clearStore;
- (void)_loadFromDisk;
- (void)_logCacheStatus;
- (void)_queueSave;
- (void)_saveAsyncWithCompletionHandler:(id)handler;
- (void)addAllEntriesToDictionary:(id)dictionary;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)saveWithCompletionHandler:(id)handler;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObjects:(id)objects forKeys:(id)keys;
- (void)setOptionBackupEnabled:(BOOL)enabled;
- (void)updateObjectsForKeys:(id)keys withBlock:(id)block;
@end

@implementation RCKeyValueStore

- (id)_loadFromDisk
{
  v51 = *MEMORY[0x277D85DE8];
  storeDirectory = [(RCKeyValueStore *)self storeDirectory];
  name = [(RCKeyValueStore *)self name];
  v5 = [storeDirectory stringByAppendingPathComponent:name];

  Current = CFAbsoluteTimeGetCurrent();
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  v8 = v7;
  if (v7)
  {
    -[RCKeyValueStore setStoreSize:](self, "setStoreSize:", [v7 length]);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v45];
    v11 = v45;
    v12 = [v10 objectForKey:@"data"];
    [dictionary addEntriesFromDictionary:v12];
    v13 = [v10 objectForKey:@"version"];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    v15 = [v10 objectForKey:@"clientVersion"];
    unsignedIntegerValue2 = [v15 unsignedIntegerValue];

    v16 = CFAbsoluteTimeGetCurrent();
    v17 = RCSharedLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      name2 = [(RCKeyValueStore *)self name];
      *buf = 138412546;
      v48 = name2;
      v49 = 2048;
      v50 = (v16 - Current) * 1000.0;
      _os_log_debug_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEBUG, "Loaded %@ cache in %f ms", buf, 0x16u);
    }

    if (unsignedIntegerValue == 1)
    {
      if (unsignedIntegerValue2 == [(RCKeyValueStore *)self clientVersion])
      {
        v18 = dictionary;
      }

      else
      {
        v39 = v12;
        if ([(RCKeyValueStore *)self _shouldMigrateOnUpgrade])
        {
          migrator = [(RCKeyValueStore *)self migrator];

          if (!migrator && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [RCKeyValueStore _loadFromDisk];
          }
        }

        if (-[RCKeyValueStore _shouldMigrateOnUpgrade](self, "_shouldMigrateOnUpgrade") && (-[RCKeyValueStore migrator](self, "migrator"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 keyValueStore:self canMigrateFromVersion:unsignedIntegerValue2], v20, v21))
        {
          v35 = v11;
          v36 = v10;
          v37 = v8;
          v38 = v5;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          allKeys = [dictionary allKeys];
          v23 = [allKeys copy];

          v24 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v42;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v42 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v41 + 1) + 8 * i);
                v29 = [dictionary objectForKey:v28];
                migrator2 = [(RCKeyValueStore *)self migrator];
                v31 = [migrator2 keyValueStore:self migrateObject:v29 forKey:v28 fromVersion:unsignedIntegerValue2];

                if (v31)
                {
                  [dictionary setObject:v31 forKey:v28];
                }

                else
                {
                  [dictionary removeObjectForKey:v28];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v25);
          }

          v18 = dictionary;
          v8 = v37;
          v5 = v38;
          v11 = v35;
          v10 = v36;
        }

        else
        {
          [(RCKeyValueStore *)self _clearStore];
          v18 = 0;
        }

        v12 = v39;
      }
    }

    else
    {
      [(RCKeyValueStore *)self _clearStore];
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)allKeys
{
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  allKeys = [objectsByKey allKeys];

  return allKeys;
}

+ (id)persistenceQueue
{
  if (persistenceQueue_onceToken != -1)
  {
    +[RCKeyValueStore persistenceQueue];
  }

  v3 = persistenceQueue_s_persistenceQueue;

  return v3;
}

void __35__RCKeyValueStore_persistenceQueue__block_invoke()
{
  v2 = [@"com.apple.remoteconfiguration." stringByAppendingString:@"persistenceQueue"];
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = persistenceQueue_s_persistenceQueue;
  persistenceQueue_s_persistenceQueue = v0;

  [persistenceQueue_s_persistenceQueue setQualityOfService:9];
  [persistenceQueue_s_persistenceQueue setMaxConcurrentOperationCount:1];
  [persistenceQueue_s_persistenceQueue setName:v2];
}

- (RCKeyValueStore)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[RCKeyValueStore init]";
    v10 = 2080;
    v11 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Persistence/RCKeyValueStore.m";
    v12 = 1024;
    v13 = 74;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[RCKeyValueStore init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (RCKeyValueStore)initWithName:(id)name directory:(id)directory version:(unint64_t)version options:(unint64_t)options migrator:(id)migrator
{
  nameCopy = name;
  directoryCopy = directory;
  migratorCopy = migrator;
  v29.receiver = self;
  v29.super_class = RCKeyValueStore;
  v16 = [(RCKeyValueStore *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, name);
    v17->_clientVersion = version;
    v17->_optionsMask = options;
    v18 = [(RCKeyValueStore *)v17 _initializeStoreDirectoryWithName:directoryCopy];
    storeDirectory = v17->_storeDirectory;
    v17->_storeDirectory = v18;

    objc_storeStrong(&v17->_migrator, migrator);
    v20 = objc_alloc_init(RCMutexLock);
    writeLock = v17->_writeLock;
    v17->_writeLock = v20;

    v22 = MEMORY[0x277CBEB38];
    _loadFromDisk = [(RCKeyValueStore *)v17 _loadFromDisk];
    v24 = [v22 dictionaryWithDictionary:_loadFromDisk];
    objectsByKey = v17->_objectsByKey;
    v17->_objectsByKey = v24;

    v17->_needSave = 1;
    v26 = [[RCTimedOperationThrottler alloc] initWithDelegate:v17];
    [(RCTimedOperationThrottler *)v26 setCooldownTime:1.0];
    saveThrottler = v17->_saveThrottler;
    v17->_saveThrottler = v26;
  }

  return v17;
}

- (BOOL)containsObjectForKey:(id)key
{
  v3 = [(RCKeyValueStore *)self objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    if (objectCopy)
    {
      objectsByKey = [(RCKeyValueStore *)self objectsByKey];
      v9 = [objectsByKey objectForKey:keyCopy];

      if (v9 != objectCopy)
      {
        writeLock = [(RCKeyValueStore *)self writeLock];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __36__RCKeyValueStore_setObject_forKey___block_invoke;
        v11[3] = &unk_27822FE40;
        v11[4] = self;
        v12 = objectCopy;
        v13 = keyCopy;
        [writeLock performWithLockSync:v11];
      }

      [(RCKeyValueStore *)self _queueSave];
    }

    else
    {
      [(RCKeyValueStore *)self removeObjectForKey:keyCopy];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCKeyValueStore setObject:forKey:];
  }
}

uint64_t __36__RCKeyValueStore_setObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)setObjects:(id)objects forKeys:(id)keys
{
  objectsCopy = objects;
  keysCopy = keys;
  v8 = keysCopy;
  if (objectsCopy)
  {
    if (keysCopy)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:objectsCopy forKeys:keysCopy];
      [(RCKeyValueStore *)self addEntriesFromDictionary:v9];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCKeyValueStore setObjects:forKeys:];
  }

  if (!v8)
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCKeyValueStore setObjects:forKeys:];
    }
  }

LABEL_9:
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    writeLock = [(RCKeyValueStore *)self writeLock];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __44__RCKeyValueStore_addEntriesFromDictionary___block_invoke;
    v9 = &unk_27822F130;
    selfCopy = self;
    v11 = dictionaryCopy;
    [writeLock performWithLockSync:&v6];

    [(RCKeyValueStore *)self _queueSave:v6];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCKeyValueStore addEntriesFromDictionary:];
  }
}

uint64_t __44__RCKeyValueStore_addEntriesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 addEntriesFromDictionary:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  v6 = [objectsByKey objectForKey:keyCopy];

  if (v6)
  {
    writeLock = [(RCKeyValueStore *)self writeLock];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __38__RCKeyValueStore_removeObjectForKey___block_invoke;
    v11 = &unk_27822F130;
    selfCopy = self;
    v13 = keyCopy;
    [writeLock performWithLockSync:&v8];

    [(RCKeyValueStore *)self _queueSave:v8];
  }
}

uint64_t __38__RCKeyValueStore_removeObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    writeLock = [(RCKeyValueStore *)self writeLock];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __40__RCKeyValueStore_removeObjectsForKeys___block_invoke;
    v9 = &unk_27822F130;
    selfCopy = self;
    v11 = keysCopy;
    [writeLock performWithLockSync:&v6];

    [(RCKeyValueStore *)self _queueSave:v6];
  }
}

uint64_t __40__RCKeyValueStore_removeObjectsForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 removeObjectsForKeys:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)removeAllObjects
{
  writeLock = [(RCKeyValueStore *)self writeLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__RCKeyValueStore_removeAllObjects__block_invoke;
  v4[3] = &unk_27822F2B0;
  v4[4] = self;
  [writeLock performWithLockSync:v4];

  [(RCKeyValueStore *)self _queueSave];
}

uint64_t __35__RCKeyValueStore_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)updateObjectsForKeys:(id)keys withBlock:(id)block
{
  keysCopy = keys;
  blockCopy = block;
  v8 = [keysCopy count];
  if (blockCopy && v8)
  {
    writeLock = [(RCKeyValueStore *)self writeLock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__RCKeyValueStore_updateObjectsForKeys_withBlock___block_invoke;
    v10[3] = &unk_27822FE68;
    v11 = keysCopy;
    selfCopy = self;
    v13 = blockCopy;
    [writeLock performWithLockSync:v10];

    [(RCKeyValueStore *)self _queueSave];
  }
}

uint64_t __50__RCKeyValueStore_updateObjectsForKeys_withBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 40) objectsByKey];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          v10 = (*(*(a1 + 48) + 16))();
          v11 = [*(a1 + 40) objectsByKey];
          [v11 setObject:v10 forKey:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  result = [*(a1 + 40) setNeedSave:1];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  v6 = [objectsByKey objectForKey:keyCopy];

  return v6;
}

- (id)objectsForKeys:(id)keys
{
  keysCopy = keys;
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  v6 = [objectsByKey rc_subdictionaryForKeys:keysCopy];

  return v6;
}

- (BOOL)BOOLValueForKey:(id)key
{
  v3 = [(RCKeyValueStore *)self objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addAllEntriesToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  [dictionaryCopy addEntriesFromDictionary:objectsByKey];
}

- (NSDictionary)asDictionary
{
  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  v3 = [objectsByKey copy];

  return v3;
}

- (void)saveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  saveThrottler = [(RCKeyValueStore *)self saveThrottler];
  [saveThrottler tickleWithCompletion:handlerCopy];
}

- (id)_dictionary
{
  writeLock = [(RCKeyValueStore *)self writeLock];
  [writeLock lock];

  objectsByKey = [(RCKeyValueStore *)self objectsByKey];
  v5 = [objectsByKey copy];

  writeLock2 = [(RCKeyValueStore *)self writeLock];
  [writeLock2 unlock];

  return v5;
}

- (void)_saveAsyncWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  persistenceQueue = [objc_opt_class() persistenceQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke;
  v7[3] = &unk_27822F1A8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [persistenceQueue addOperationWithBlock:v7];
}

void __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) _persistOnlyInMemoryEnabled])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_2;
    v28[3] = &unk_27822F2D8;
    v29 = *(a1 + 40);
    __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_2(v28);
    v3 = v29;
    goto LABEL_24;
  }

  v4 = [*v2 writeLock];
  [v4 lock];

  if ([*v2 needSave])
  {
    v5 = [*v2 objectsByKey];
    v3 = [v5 copy];
  }

  else
  {
    v3 = 0;
  }

  [*v2 setNeedSave:0];
  v6 = [*v2 writeLock];
  [v6 unlock];

  if (v3)
  {
    v7 = [*v2 storeDirectory];
    v8 = [*v2 name];
    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = [MEMORY[0x277CBEB38] dictionary];
    [v10 setObject:&unk_2829A16B8 forKeyedSubscript:@"version"];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*v2, "clientVersion")}];
    [v10 setObject:v11 forKeyedSubscript:@"clientVersion"];

    [v10 setObject:v3 forKeyedSubscript:@"data"];
    v27 = 0;
    v12 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v27];
    v13 = v27;
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_1(v2, v13);
      }

      v14 = RCSharedLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_2(v2, v13, v14);
      }
    }

    else
    {
      if (!v12)
      {
LABEL_21:

        goto LABEL_22;
      }

      [*v2 setStoreSize:{objc_msgSend(v12, "length")}];
      Current = CFAbsoluteTimeGetCurrent();
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
      [v12 writeToURL:v14 atomically:1];
      v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*v2, "_isBackupEnabled") ^ 1}];
      v17 = *MEMORY[0x277CBE878];
      v26 = 0;
      v18 = [v14 setResourceValue:v16 forKey:v17 error:&v26];
      v25 = v26;

      if ((v18 & 1) == 0)
      {
        v19 = RCSharedLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_3();
        }
      }

      v20 = CFAbsoluteTimeGetCurrent();
      v21 = RCSharedLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v24 = [*v2 name];
        *buf = 138412546;
        v31 = v24;
        v32 = 2048;
        v33 = v20 - Current;
        _os_log_debug_impl(&dword_2179FC000, v21, OS_LOG_TYPE_DEBUG, "Saved %@ cache in %f ms", buf, 0x16u);
      }

      [*v2 _logCacheStatus];
    }

    goto LABEL_21;
  }

LABEL_22:
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))();
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_logCacheStatus
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = vcvts_n_f32_u64(self, 0x14uLL);
  name = [a2 name];
  v7 = 138412546;
  v8 = name;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&dword_2179FC000, a3, OS_LOG_TYPE_DEBUG, "Cache Status:\n* Cache name:\t\t%@\n* Total size (MB):\t%2.4f\n*", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queueSave
{
  saveThrottler = [(RCKeyValueStore *)self saveThrottler];
  [saveThrottler tickle];
}

- (id)_initializeStoreDirectoryWithName:(id)name
{
  nameCopy = name;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:nameCopy];

  if ((v5 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v7 = [defaultManager2 createDirectoryAtPath:nameCopy withIntermediateDirectories:1 attributes:0 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCKeyValueStore _initializeStoreDirectoryWithName:v8];
    }
  }

  return nameCopy;
}

- (void)_clearStore
{
  storeDirectory = [(RCKeyValueStore *)self storeDirectory];
  name = [(RCKeyValueStore *)self name];
  v6 = [storeDirectory stringByAppendingPathComponent:name];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtPath:v6 error:0];

  [(RCKeyValueStore *)self setStoreSize:0];
}

- (void)setOptionBackupEnabled:(BOOL)enabled
{
  writeLock = [(RCKeyValueStore *)self writeLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__RCKeyValueStore_setOptionBackupEnabled___block_invoke;
  v6[3] = &unk_27822FE90;
  enabledCopy = enabled;
  v6[4] = self;
  [writeLock performWithLockSync:v6];
}

- (void)setObject:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "key", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObjects:forKeys:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "objects", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setObjects:forKeys:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "keys", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEntriesFromDictionary:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "otherDictionary", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadFromDisk
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"must have a migrator in order to migrate between KVS client versions"];
  v2 = 136315906;
  v3 = "[RCKeyValueStore _loadFromDisk]";
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/Persistence/RCKeyValueStore.m";
  v6 = 1024;
  v7 = 330;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

void __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_1(id *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [*a1 name];
  v13 = a2;
  v6 = [v4 initWithFormat:@"failed to serialize %@ key-value store plist with error: %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v7, "*** Assertion failure: %s %s:%d %{public}@", v8, v9, v10, v11, v5, v13, 2u);

  v12 = *MEMORY[0x277D85DE8];
}

void __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_2(id *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*a1 name];
  OUTLINED_FUNCTION_4();
  v8 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "failed to serialize %{public}@ key-value store plist with error: %{public}@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke_cold_3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = v0;
  _os_log_error_impl(&dword_2179FC000, v1, OS_LOG_TYPE_ERROR, "Failed to set backup status for %{public}@ -- %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initializeStoreDirectoryWithName:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"failed to create cache directory with error: %@"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v2, "*** Assertion failure: %s %s:%d %{public}@", v3, v4, v5, v6, a1, v9, 2u);

  v7 = *MEMORY[0x277D85DE8];
}

@end