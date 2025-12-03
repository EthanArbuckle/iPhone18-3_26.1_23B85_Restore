@interface SBRecentAppLayoutsPersister
- (SBRecentAppLayoutsPersister)initWithPersistenceURL:(id)l layoutAttributesProvider:(id)provider;
- (id)_scheduledPersistTimer;
- (void)_enqueueDiskWrite;
- (void)_loadRecents;
- (void)_queue_writeCompressedProtobufRepresentationToDisk:(id)disk;
- (void)setRecents:(id)recents;
- (void)syncToDiskSoonIfDirty;
- (void)syncToDiskSynchronously;
@end

@implementation SBRecentAppLayoutsPersister

- (id)_scheduledPersistTimer
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__persistTimerExpired_ selector:0 userInfo:0 repeats:10.0];
  [v2 setTolerance:5.0];

  return v2;
}

- (SBRecentAppLayoutsPersister)initWithPersistenceURL:(id)l layoutAttributesProvider:(id)provider
{
  lCopy = l;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = SBRecentAppLayoutsPersister;
  v8 = [(SBRecentAppLayoutsPersister *)&v16 init];
  if (v8)
  {
    BSDispatchQueueAssertMain();
    v9 = dispatch_queue_create("com.apple.springboard.SBRecentAppLayoutsPersistence.IOQueue", 0);
    ioQueue = v8->_ioQueue;
    v8->_ioQueue = v9;

    v11 = [lCopy copy];
    persistenceURL = v8->_persistenceURL;
    v8->_persistenceURL = v11;

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [(NSURL *)v8->_persistenceURL path];
    v8->_initializedNewStoreOnDisk = [defaultManager fileExistsAtPath:path] ^ 1;

    objc_storeWeak(&v8->_layoutAttributesProvider, providerCopy);
    [(SBRecentAppLayoutsPersister *)v8 _loadRecents];
  }

  return v8;
}

- (void)setRecents:(id)recents
{
  recentsCopy = recents;
  BSDispatchQueueAssertMain();
  if (![(NSArray *)self->_recents isEqualToArray:recentsCopy])
  {
    v4 = [recentsCopy copy];
    recents = self->_recents;
    self->_recents = v4;

    if (!self->_persistTimer)
    {
      _scheduledPersistTimer = [(SBRecentAppLayoutsPersister *)self _scheduledPersistTimer];
      persistTimer = self->_persistTimer;
      self->_persistTimer = _scheduledPersistTimer;
    }
  }
}

- (void)syncToDiskSoonIfDirty
{
  BSDispatchQueueAssertMain();
  if (self->_persistTimer)
  {

    [(SBRecentAppLayoutsPersister *)self _enqueueDiskWrite];
  }
}

- (void)syncToDiskSynchronously
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_persistTimer invalidate];
  persistTimer = self->_persistTimer;
  self->_persistTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributesProvider);
  recents = self->_recents;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__SBRecentAppLayoutsPersister_syncToDiskSynchronously__block_invoke;
  v12[3] = &unk_2783AE218;
  v13 = WeakRetained;
  v6 = WeakRetained;
  v7 = [(NSArray *)recents bs_map:v12];
  ioQueue = self->_ioQueue;
  v11 = v7;
  v9 = v7;
  v10 = BSDispatchBlockCreateWithQualityOfService();
  dispatch_sync(ioQueue, v10);
}

id __54__SBRecentAppLayoutsPersister_syncToDiskSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layoutAttributesMapForAppLayout:v4 displayOrdinal:0 orientation:0];
  v6 = [*(a1 + 32) layoutAttributesEntriesForAppLayout:v4];
  v7 = [v4 protobufRepresentationWithLayoutAttributesMap:v5 layoutAttributesEntries:v6];

  return v7;
}

- (void)_loadRecents
{
  v49 = *MEMORY[0x277D85DE8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__SBRecentAppLayoutsPersister__loadRecents__block_invoke;
  v41[3] = &unk_2783A8BC8;
  v41[4] = self;
  v41[5] = a2;
  v3 = MEMORY[0x223D6F7F0](v41);
  selfCopy = self;
  persistenceURL = self->_persistenceURL;
  v40 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:persistenceURL options:0 error:&v40];
  v7 = v40;
  if (v6)
  {
    v39 = 0;
    v8 = [v6 decompressedDataUsingAlgorithm:0 error:&v39];
    v9 = v39;
    v10 = v9;
    if (v8)
    {
      v30 = v9;
      v32 = v7;
      v33 = v3;
      v31 = v8;
      v11 = [objc_alloc(MEMORY[0x277D43170]) initWithData:v8];
      v12 = objc_alloc_init(SBPBAppLayoutList);
      v29 = v11;
      [(SBPBAppLayoutList *)v12 readFrom:v11];
      array = [MEMORY[0x277CBEB18] array];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = v12;
      obj = [(SBPBAppLayoutList *)v12 applayouts];
      v14 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v36;
        do
        {
          v17 = 0;
          do
          {
            if (*v36 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v35 + 1) + 8 * v17);
            WeakRetained = objc_loadWeakRetained(&selfCopy->_layoutAttributesProvider);
            v20 = [SBAppLayout appLayoutWithProtobufRepresentation:v18 layoutAttributesProvider:WeakRetained];

            if (v20)
            {
              [array addObject:v20];
            }

            else
            {
              v21 = SBLogAppSwitcher();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v22 = _SBFLoggingMethodProem();
                *buf = 138543618;
                v44 = v22;
                v45 = 2114;
                v46 = v18;
                _os_log_error_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Couldn't derive app layout from Protobuf representation: %{public}@", buf, 0x16u);
              }
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v15);
      }

      [(SBRecentAppLayoutsPersister *)selfCopy setRecents:array];
      v3 = v33;
      v8 = v31;
      v7 = v32;
      v10 = v30;
    }

    else
    {
      v24 = SBLogAppSwitcher();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v27 = _SBFLoggingMethodProem();
        *buf = 138543618;
        v44 = v27;
        v45 = 2114;
        v46 = v10;
        _os_log_error_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Error decompressing recents: %{public}@", buf, 0x16u);
      }

      v3[2](v3);
    }
  }

  else
  {
    v23 = SBLogAppSwitcher();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = _SBFLoggingMethodProem();
      v26 = selfCopy->_persistenceURL;
      *buf = 138543874;
      v44 = v25;
      v45 = 2114;
      v46 = v26;
      v47 = 2114;
      v48 = v7;
      _os_log_error_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Error reading recents from %{public}@: %{public}@", buf, 0x20u);
    }

    v3[2](v3);
  }
}

void __43__SBRecentAppLayoutsPersister__loadRecents__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = SBLogAppSwitcher();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = _SBFLoggingMethodProem();
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "%{public}@ Using empty switcher model to recover from error with persisted switcher model", buf, 0xCu);
  }

  [*(a1 + 32) setRecents:MEMORY[0x277CBEBF8]];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(*(a1 + 32) + 16);
  v13 = 0;
  v6 = [v4 removeItemAtURL:v5 error:&v13];
  v7 = v13;

  v8 = SBLogAppSwitcher();
  v9 = v8;
  if (!v6)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v10 = _SBFLoggingMethodProem();
    v12 = *(*(a1 + 32) + 16);
    *buf = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = v7;
    _os_log_error_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Error removing faulty switcher model from %{public}@: %{public}@", buf, 0x20u);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = _SBFLoggingMethodProem();
    v11 = *(*(a1 + 32) + 16);
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "%{public}@ Removed faulty switcher model from %{public}@", buf, 0x16u);
LABEL_6:
  }

LABEL_8:
}

- (void)_enqueueDiskWrite
{
  BSDispatchQueueAssertMain();
  [(NSTimer *)self->_persistTimer invalidate];
  persistTimer = self->_persistTimer;
  self->_persistTimer = 0;

  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributesProvider);
  recents = self->_recents;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SBRecentAppLayoutsPersister__enqueueDiskWrite__block_invoke;
  v12[3] = &unk_2783AE218;
  v13 = WeakRetained;
  v6 = WeakRetained;
  v7 = [(NSArray *)recents bs_map:v12];
  ioQueue = self->_ioQueue;
  v11 = v7;
  v9 = v7;
  v10 = BSDispatchBlockCreateWithQualityOfService();
  dispatch_async(ioQueue, v10);
}

id __48__SBRecentAppLayoutsPersister__enqueueDiskWrite__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 layoutAttributesMapForAppLayout:v4 displayOrdinal:0 orientation:0];
  v6 = [*(a1 + 32) layoutAttributesEntriesForAppLayout:v4];
  v7 = [v4 protobufRepresentationWithLayoutAttributesMap:v5 layoutAttributesEntries:v6];

  return v7;
}

- (void)_queue_writeCompressedProtobufRepresentationToDisk:(id)disk
{
  v27 = *MEMORY[0x277D85DE8];
  ioQueue = self->_ioQueue;
  diskCopy = disk;
  dispatch_assert_queue_V2(ioQueue);
  v6 = objc_alloc_init(SBPBAppLayoutList);
  v7 = [diskCopy mutableCopy];

  [(SBPBAppLayoutList *)v6 setApplayouts:v7];
  v8 = objc_alloc_init(MEMORY[0x277D43178]);
  [(SBPBAppLayoutList *)v6 writeTo:v8];
  immutableData = [v8 immutableData];
  v20 = 0;
  v10 = [immutableData compressedDataUsingAlgorithm:0 error:&v20];
  v11 = v20;
  if (v10)
  {
    persistenceURL = self->_persistenceURL;
    v19 = 0;
    v13 = [v10 writeToURL:persistenceURL options:268435457 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = SBLogAppSwitcher();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = _SBFLoggingMethodProem();
        v18 = self->_persistenceURL;
        *buf = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        v25 = 2112;
        v26 = v14;
        _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Error writing recents to %@: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = SBLogAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = _SBFLoggingMethodProem();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error compressing data: %@", buf, 0x16u);
    }
  }
}

@end