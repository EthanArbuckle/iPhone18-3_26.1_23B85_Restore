@interface RCKeyValueStore
+ (id)persistenceQueue;
- (BOOL)BOOLValueForKey:(id)a3;
- (BOOL)containsObjectForKey:(id)a3;
- (NSDictionary)asDictionary;
- (RCKeyValueStore)init;
- (RCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 migrator:(id)a7;
- (id)_dictionary;
- (id)_initializeStoreDirectoryWithName:(id)a3;
- (id)_loadFromDisk;
- (id)allKeys;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3;
- (void)_clearStore;
- (void)_loadFromDisk;
- (void)_logCacheStatus;
- (void)_queueSave;
- (void)_saveAsyncWithCompletionHandler:(id)a3;
- (void)addAllEntriesToDictionary:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)saveWithCompletionHandler:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjects:(id)a3 forKeys:(id)a4;
- (void)setOptionBackupEnabled:(BOOL)a3;
- (void)updateObjectsForKeys:(id)a3 withBlock:(id)a4;
@end

@implementation RCKeyValueStore

- (id)_loadFromDisk
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(RCKeyValueStore *)self storeDirectory];
  v4 = [(RCKeyValueStore *)self name];
  v5 = [v3 stringByAppendingPathComponent:v4];

  Current = CFAbsoluteTimeGetCurrent();
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  v8 = v7;
  if (v7)
  {
    -[RCKeyValueStore setStoreSize:](self, "setStoreSize:", [v7 length]);
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0;
    v10 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:&v45];
    v11 = v45;
    v12 = [v10 objectForKey:@"data"];
    [v9 addEntriesFromDictionary:v12];
    v13 = [v10 objectForKey:@"version"];
    v14 = [v13 unsignedIntegerValue];

    v15 = [v10 objectForKey:@"clientVersion"];
    v40 = [v15 unsignedIntegerValue];

    v16 = CFAbsoluteTimeGetCurrent();
    v17 = RCSharedLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v34 = [(RCKeyValueStore *)self name];
      *buf = 138412546;
      v48 = v34;
      v49 = 2048;
      v50 = (v16 - Current) * 1000.0;
      _os_log_debug_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEBUG, "Loaded %@ cache in %f ms", buf, 0x16u);
    }

    if (v14 == 1)
    {
      if (v40 == [(RCKeyValueStore *)self clientVersion])
      {
        v18 = v9;
      }

      else
      {
        v39 = v12;
        if ([(RCKeyValueStore *)self _shouldMigrateOnUpgrade])
        {
          v19 = [(RCKeyValueStore *)self migrator];

          if (!v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [RCKeyValueStore _loadFromDisk];
          }
        }

        if (-[RCKeyValueStore _shouldMigrateOnUpgrade](self, "_shouldMigrateOnUpgrade") && (-[RCKeyValueStore migrator](self, "migrator"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 keyValueStore:self canMigrateFromVersion:v40], v20, v21))
        {
          v35 = v11;
          v36 = v10;
          v37 = v8;
          v38 = v5;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v22 = [v9 allKeys];
          v23 = [v22 copy];

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
                v29 = [v9 objectForKey:v28];
                v30 = [(RCKeyValueStore *)self migrator];
                v31 = [v30 keyValueStore:self migrateObject:v29 forKey:v28 fromVersion:v40];

                if (v31)
                {
                  [v9 setObject:v31 forKey:v28];
                }

                else
                {
                  [v9 removeObjectForKey:v28];
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v25);
          }

          v18 = v9;
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
  v2 = [(RCKeyValueStore *)self objectsByKey];
  v3 = [v2 allKeys];

  return v3;
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

- (RCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 migrator:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v29.receiver = self;
  v29.super_class = RCKeyValueStore;
  v16 = [(RCKeyValueStore *)&v29 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_name, a3);
    v17->_clientVersion = a5;
    v17->_optionsMask = a6;
    v18 = [(RCKeyValueStore *)v17 _initializeStoreDirectoryWithName:v14];
    storeDirectory = v17->_storeDirectory;
    v17->_storeDirectory = v18;

    objc_storeStrong(&v17->_migrator, a7);
    v20 = objc_alloc_init(RCMutexLock);
    writeLock = v17->_writeLock;
    v17->_writeLock = v20;

    v22 = MEMORY[0x277CBEB38];
    v23 = [(RCKeyValueStore *)v17 _loadFromDisk];
    v24 = [v22 dictionaryWithDictionary:v23];
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

- (BOOL)containsObjectForKey:(id)a3
{
  v3 = [(RCKeyValueStore *)self objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [(RCKeyValueStore *)self objectsByKey];
      v9 = [v8 objectForKey:v7];

      if (v9 != v6)
      {
        v10 = [(RCKeyValueStore *)self writeLock];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __36__RCKeyValueStore_setObject_forKey___block_invoke;
        v11[3] = &unk_27822FE40;
        v11[4] = self;
        v12 = v6;
        v13 = v7;
        [v10 performWithLockSync:v11];
      }

      [(RCKeyValueStore *)self _queueSave];
    }

    else
    {
      [(RCKeyValueStore *)self removeObjectForKey:v7];
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

- (void)setObjects:(id)a3 forKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v7];
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

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RCKeyValueStore *)self writeLock];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __44__RCKeyValueStore_addEntriesFromDictionary___block_invoke;
    v9 = &unk_27822F130;
    v10 = self;
    v11 = v4;
    [v5 performWithLockSync:&v6];

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

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(RCKeyValueStore *)self objectsByKey];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(RCKeyValueStore *)self writeLock];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __38__RCKeyValueStore_removeObjectForKey___block_invoke;
    v11 = &unk_27822F130;
    v12 = self;
    v13 = v4;
    [v7 performWithLockSync:&v8];

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

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(RCKeyValueStore *)self writeLock];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __40__RCKeyValueStore_removeObjectsForKeys___block_invoke;
    v9 = &unk_27822F130;
    v10 = self;
    v11 = v4;
    [v5 performWithLockSync:&v6];

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
  v3 = [(RCKeyValueStore *)self writeLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__RCKeyValueStore_removeAllObjects__block_invoke;
  v4[3] = &unk_27822F2B0;
  v4[4] = self;
  [v3 performWithLockSync:v4];

  [(RCKeyValueStore *)self _queueSave];
}

uint64_t __35__RCKeyValueStore_removeAllObjects__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectsByKey];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setNeedSave:1];
}

- (void)updateObjectsForKeys:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v7 && v8)
  {
    v9 = [(RCKeyValueStore *)self writeLock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__RCKeyValueStore_updateObjectsForKeys_withBlock___block_invoke;
    v10[3] = &unk_27822FE68;
    v11 = v6;
    v12 = self;
    v13 = v7;
    [v9 performWithLockSync:v10];

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

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(RCKeyValueStore *)self objectsByKey];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)objectsForKeys:(id)a3
{
  v4 = a3;
  v5 = [(RCKeyValueStore *)self objectsByKey];
  v6 = [v5 rc_subdictionaryForKeys:v4];

  return v6;
}

- (BOOL)BOOLValueForKey:(id)a3
{
  v3 = [(RCKeyValueStore *)self objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addAllEntriesToDictionary:(id)a3
{
  v4 = a3;
  v5 = [(RCKeyValueStore *)self objectsByKey];
  [v4 addEntriesFromDictionary:v5];
}

- (NSDictionary)asDictionary
{
  v2 = [(RCKeyValueStore *)self objectsByKey];
  v3 = [v2 copy];

  return v3;
}

- (void)saveWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RCKeyValueStore *)self saveThrottler];
  [v5 tickleWithCompletion:v4];
}

- (id)_dictionary
{
  v3 = [(RCKeyValueStore *)self writeLock];
  [v3 lock];

  v4 = [(RCKeyValueStore *)self objectsByKey];
  v5 = [v4 copy];

  v6 = [(RCKeyValueStore *)self writeLock];
  [v6 unlock];

  return v5;
}

- (void)_saveAsyncWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() persistenceQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RCKeyValueStore__saveAsyncWithCompletionHandler___block_invoke;
  v7[3] = &unk_27822F1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
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
  v4 = vcvts_n_f32_u64(a1, 0x14uLL);
  v5 = [a2 name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&dword_2179FC000, a3, OS_LOG_TYPE_DEBUG, "Cache Status:\n* Cache name:\t\t%@\n* Total size (MB):\t%2.4f\n*", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queueSave
{
  v2 = [(RCKeyValueStore *)self saveThrottler];
  [v2 tickle];
}

- (id)_initializeStoreDirectoryWithName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v7 = [v6 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RCKeyValueStore _initializeStoreDirectoryWithName:v8];
    }
  }

  return v3;
}

- (void)_clearStore
{
  v3 = [(RCKeyValueStore *)self storeDirectory];
  v4 = [(RCKeyValueStore *)self name];
  v6 = [v3 stringByAppendingPathComponent:v4];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  [v5 removeItemAtPath:v6 error:0];

  [(RCKeyValueStore *)self setStoreSize:0];
}

- (void)setOptionBackupEnabled:(BOOL)a3
{
  v5 = [(RCKeyValueStore *)self writeLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__RCKeyValueStore_setOptionBackupEnabled___block_invoke;
  v6[3] = &unk_27822FE90;
  v7 = a3;
  v6[4] = self;
  [v5 performWithLockSync:v6];
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