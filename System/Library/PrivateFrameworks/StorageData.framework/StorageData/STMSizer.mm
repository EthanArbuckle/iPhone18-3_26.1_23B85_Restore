@interface STMSizer
+ (id)containersWithClass:(unint64_t)a3;
+ (id)listOfUsedPathsInOverrides:(id)a3;
+ (id)sharedAppSizer;
- (STMSizer)initWithPrefsKey:(id)a3;
- (id)addContainer:(id)a3;
- (id)addContainers:(id)a3;
- (id)cachePathOfContainer:(id)a3;
- (id)cacheSizeForContainer:(id)a3;
- (id)containersForApp:(id)a3;
- (id)pathOfContainer:(id)a3;
- (id)sizeForContainer:(id)a3;
- (id)sizeForURL:(id)a3;
- (id)updatedCacheSizeForContainer:(id)a3;
- (id)updatedSizeForContainer:(id)a3;
- (id)updatedSizeForURL:(id)a3;
- (void)_asyncProcessPendingEvents:(id)a3;
- (void)addApp:(id)a3;
- (void)addApps:(id)a3;
- (void)dealloc;
- (void)flushCacheAsynchronously;
- (void)processEvents:(id)a3;
- (void)processPendingEvents;
- (void)reloadAppContainer:(id)a3;
- (void)setEvent:(id)a3 forItem:(id)a4;
- (void)setRootPaths:(id)a3;
- (void)startSizer;
- (void)stopSizer;
@end

@implementation STMSizer

+ (id)sharedAppSizer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__STMSizer_Apps__sharedAppSizer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedAppSizer_onceToken != -1)
  {
    dispatch_once(&sharedAppSizer_onceToken, block);
  }

  v2 = sharedAppSizer__gSizer;

  return v2;
}

void __32__STMSizer_Apps__sharedAppSizer__block_invoke(uint64_t a1)
{
  v2 = [[STMSizer alloc] initWithPrefsKey:@"AppSizes"];
  v3 = sharedAppSizer__gSizer;
  sharedAppSizer__gSizer = v2;

  v7 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/private/var/containers/", @"/private/var/mobile/Containers/", @"/private/var/PersonaVolumes", 0}];
  v4 = *(a1 + 32);
  v5 = +[STAppOverrides overrides];
  v6 = [v4 listOfUsedPathsInOverrides:v5];
  [v7 addObjectsFromArray:v6];

  [sharedAppSizer__gSizer setRootPaths:v7];
}

- (id)containersForApp:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  if ([v3 userVisible])
  {
    v5 = [v3 appContainer];
    if (v5)
    {
      [v4 addObject:v5];
    }

    v6 = [v3 dataContainers];
    if ([v6 count])
    {
      [v4 addObjectsFromArray:v6];
    }

    v7 = [v3 sharedContainers];

    if ([v7 count])
    {
      [v4 addObjectsFromArray:v7];
    }
  }

  return v4;
}

- (void)addApp:(id)a3
{
  v5 = [(STMSizer *)self containersForApp:a3];
  v4 = [(STMSizer *)self addContainers:v5];
}

- (void)addApps:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{4 * objc_msgSend(v4, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(STMSizer *)self containersForApp:*(*(&v31 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v12 = [STContainer containersWithClass:4 personaUniqueString:0];
  if ([v12 count])
  {
    [v5 addObjectsFromArray:v12];
  }

  v25 = v12;
  v13 = [(STMSizer *)self addContainers:v5];
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v27 + 1) + 8 * j) itemPath];
        if ([v19 length])
        {
          v20 = MEMORY[0x277CBEBC0];
          v21 = [v19 stringByAppendingPathComponent:@"Library/Caches/"];
          v22 = [v20 fileURLWithPath:v21];

          if (v22)
          {
            [v26 addObject:v22];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = [(STMSizer *)self addURLs:v26 usingFastSizingIfPossible:1];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)reloadAppContainer:(id)a3
{
  v7 = [a3 appContainer];
  v4 = [v7 url];
  v5 = [v4 path];

  if ([v5 length])
  {
    v6 = [[STMSizeCacheEntry alloc] initWithContainer:v7];
    [(STMSizeCache *)self addItem:v6];
    [(STMSizeCacheEntry *)v6 calculateSize];
  }
}

+ (id)listOfUsedPathsInOverrides:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) includeFsPaths];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 allObjects];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (STMSizer)initWithPrefsKey:(id)a3
{
  v16.receiver = self;
  v16.super_class = STMSizer;
  v3 = [(STMSizeCache *)&v16 initWithPrefsKey:a3];
  v4 = v3;
  if (v3)
  {
    v3->_pendingEventsLock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    pendingEventsByPath = v4->_pendingEventsByPath;
    v4->_pendingEventsByPath = v5;

    if (!_gSharedFSQueue)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);
      v9 = dispatch_queue_create("fsevtQ", v8);
      v10 = _gSharedFSQueue;
      _gSharedFSQueue = v9;

      v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);
      v13 = dispatch_queue_create("updateQ", v12);
      v14 = _gSharedUpdateQueue;
      _gSharedUpdateQueue = v13;
    }
  }

  return v4;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  fsStream = v2->_fsStream;
  if (fsStream)
  {
    FSEventStreamGetLatestEventId(v2->_fsStream);
    STLog(1, @"Stop <FSEventStream: %p> at #%llu", v4, v5, v6, v7, v8, v9, fsStream);
    FSEventStreamStop(v2->_fsStream);
    FSEventStreamInvalidate(v2->_fsStream);
    FSEventStreamRelease(v2->_fsStream);
    v2->_fsStream = 0;
  }

  objc_sync_exit(v2);

  v10 = dispatch_semaphore_create(0);
  v11 = _gSharedUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__STMSizer_dealloc__block_invoke;
  block[3] = &unk_279D1CE88;
  v15 = v10;
  v12 = v10;
  dispatch_async(v11, block);
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);

  v13.receiver = v2;
  v13.super_class = STMSizer;
  [(STMSizeCache *)&v13 dealloc];
}

- (void)setRootPaths:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 count];
  STLog(1, @"Recreating FSEventStream, -setRootPaths called with %ld paths", v7, v8, v9, v10, v11, v12, v6);
  streamRunning = v5->_streamRunning;
  fsStream = v5->_fsStream;
  if (fsStream)
  {
    FSEventStreamGetLatestEventId(v5->_fsStream);
    STLog(1, @"Stop <FSEventStream: %p> at #%llu", v21, v22, v23, v24, v25, v26, fsStream);
    FSEventStreamStop(v5->_fsStream);
    FSEventStreamInvalidate(v5->_fsStream);
    FSEventStreamRelease(v5->_fsStream);
    v5->_fsStream = 0;
    v5->_streamRunning = 0;
  }

  else
  {
    STLog(1, @"\tNo FSEventStream to stop", v13, v14, v15, v16, v17, v18, v51);
  }

  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v28 = v4;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v29)
  {
    v30 = *v54;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = STMakeDirPath(*(*(&v53 + 1) + 8 * i));
        [v27 addObject:v32];
      }

      v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v29);
  }

  objc_storeStrong(&v5->_rootPaths, v27);
  if ([v27 count])
  {
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = v5;
    v33 = [(STMSizeCache *)v5 cacheEventID];
    v34 = *MEMORY[0x277CBECE8];
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = -1;
    }

    v36 = FSEventStreamCreate(*MEMORY[0x277CBECE8], _FSEventStreamCallback, &context, v27, v35, 1.0, 0x10u);
    v5->_fsStream = v36;
    [(STMSizeCache *)v5 cacheEventID];
    STLog(1, @"\tNew <FSEventStream: %p> at #%llu", v37, v38, v39, v40, v41, v42, v36);
    FSEventStreamSetDispatchQueue(v5->_fsStream, _gSharedFSQueue);
    if (streamRunning)
    {
      v43 = v5->_fsStream;
      [(STMSizeCache *)v5 cacheEventID];
      STLog(1, @"Starting <FSEventStream: %p> at #%llu", v44, v45, v46, v47, v48, v49, v43);
      FSEventStreamStart(v5->_fsStream);
      v5->_streamRunning = 1;
    }
  }

  objc_sync_exit(v5);
  v50 = *MEMORY[0x277D85DE8];
}

- (void)startSizer
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  fsStream = obj->_fsStream;
  if (fsStream)
  {
    FSEventStreamGetLatestEventId(obj->_fsStream);
    STLog(1, @"Starting <FSEventStream: %p> at #%llu", v4, v5, v6, v7, v8, v9, fsStream);
    FSEventStreamStart(obj->_fsStream);
    v2 = obj;
    obj->_streamRunning = 1;
  }

  objc_sync_exit(v2);
}

- (void)stopSizer
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  fsStream = obj->_fsStream;
  if (fsStream)
  {
    FSEventStreamGetLatestEventId(obj->_fsStream);
    STLog(1, @"Stop <FSEventStream: %p> at #%llu", v4, v5, v6, v7, v8, v9, fsStream);
    FSEventStreamStop(obj->_fsStream);
    v2 = obj;
    obj->_streamRunning = 0;
  }

  objc_sync_exit(v2);
}

- (void)processPendingEvents
{
  if ([(NSMutableDictionary *)self->_pendingEventsByPath count])
  {
    os_unfair_lock_lock(&self->_pendingEventsLock);
    v5 = [(NSMutableDictionary *)self->_pendingEventsByPath copy];
    v3 = [MEMORY[0x277CBEB38] dictionary];
    pendingEventsByPath = self->_pendingEventsByPath;
    self->_pendingEventsByPath = v3;

    os_unfair_lock_unlock(&self->_pendingEventsLock);
    [(STMSizeCache *)self updateLastCacheEventID:[(STMSizeCache *)self processCacheEvents:v5]];
  }
}

- (void)_asyncProcessPendingEvents:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__STMSizer__asyncProcessPendingEvents___block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(_gSharedUpdateQueue, block);
}

- (void)setEvent:(id)a3 forItem:(id)a4
{
  v10 = a3;
  v6 = [a4 itemPath];
  v7 = [v10 evtID];
  v8 = [(NSMutableDictionary *)self->_pendingEventsByPath objectForKey:v6];
  v9 = v8;
  if (!v8 || [v8 evtID] <= v7)
  {
    [(NSMutableDictionary *)self->_pendingEventsByPath setObject:v10 forKey:v6];
  }
}

- (void)processEvents:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_pendingEventsLock);
  v5 = [v4 count];
  STLog(1, @"Processing %ld STMSizeCacheEvent", v6, v7, v8, v9, v10, v11, v5);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = [v16 path];
        if ([v16 flags])
        {
          v18 = [(STMSizeCache *)self itemsContainedByPath:v17];
          v19 = @"FSEvents triggering deep rescan at %@, invalidating %lu cache entries";
LABEL_10:
          [v18 count];
          STLog(4, v19, v20, v21, v22, v23, v24, v25, v17);
          goto LABEL_11;
        }

        v18 = [(STMSizeCache *)self itemsContainingPath:v17];
        v19 = @"FSEvent at %@ is invalidating %lu cache entries containing it";
        if ([v18 count] >= 0xB)
        {
          goto LABEL_10;
        }

LABEL_11:
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v26 = v18;
        v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v35;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v35 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [(STMSizer *)self setEvent:v16 forItem:*(*(&v34 + 1) + 8 * j)];
            }

            v28 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v28);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_pendingEventsLock);
  if ([(NSMutableDictionary *)self->_pendingEventsByPath count])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__STMSizer_processEvents___block_invoke;
    block[3] = &unk_279D1CE88;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __26__STMSizer_processEvents___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__asyncProcessPendingEvents_ object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:sel__asyncProcessPendingEvents_ withObject:0 afterDelay:0.1];
}

- (void)flushCacheAsynchronously
{
  if (self->_streamRunning)
  {
    FSEventStreamFlushAsync(self->_fsStream);
    STLog(1, @"Flushing <FSEventStream: %p> asynchronously, latest event id passed: %llu", v3, v4, v5, v6, v7, v8, self->_fsStream);
  }
}

- (id)sizeForURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(STMSizeCache *)self sizeOfItemForPath:v4];

  return v5;
}

- (id)updatedSizeForURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(STMSizeCache *)self updatedSizeOfItemForPath:v4];

  return v5;
}

- (id)pathOfContainer:(id)a3
{
  v3 = [a3 url];
  v4 = [v3 path];

  return v4;
}

- (id)cachePathOfContainer:(id)a3
{
  v3 = [(STMSizer *)self pathOfContainer:a3];
  v4 = [v3 stringByAppendingPathComponent:@"Library/Caches/"];

  return v4;
}

- (id)addContainer:(id)a3
{
  v4 = a3;
  v5 = [(STMSizer *)self pathOfContainer:v4];
  if ([v5 length])
  {
    v6 = [[STMSizeCacheEntry alloc] initWithContainer:v4];
    [(STMSizeCache *)self addItem:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)addContainers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(STMSizer *)self addContainer:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)sizeForContainer:(id)a3
{
  v4 = [(STMSizer *)self pathOfContainer:a3];
  v5 = [(STMSizeCache *)self sizeOfItemForPath:v4];

  return v5;
}

- (id)updatedSizeForContainer:(id)a3
{
  v4 = [(STMSizer *)self pathOfContainer:a3];
  v5 = [(STMSizeCache *)self updatedSizeOfItemForPath:v4];

  return v5;
}

- (id)cacheSizeForContainer:(id)a3
{
  v4 = [(STMSizer *)self cachePathOfContainer:a3];
  v5 = [(STMSizeCache *)self sizeOfItemForPath:v4];

  return v5;
}

- (id)updatedCacheSizeForContainer:(id)a3
{
  v4 = [(STMSizer *)self cachePathOfContainer:a3];
  v5 = [(STMSizeCache *)self updatedSizeOfItemForPath:v4];

  return v5;
}

+ (id)containersWithClass:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [STContainer containersWithClass:7 personaUniqueString:0];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        if ([v11 length])
        {
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end