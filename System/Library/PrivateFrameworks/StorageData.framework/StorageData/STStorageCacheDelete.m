@interface STStorageCacheDelete
+ (id)sharedMonitor;
- (STStorageCacheDelete)init;
- (id)cacheDeleteDict;
- (int64_t)totalPurgeable;
- (uint64_t)refreshPurgeableSpace;
- (void)dealloc;
- (void)refreshPurgeableSpace;
- (void)startMonitor;
@end

@implementation STStorageCacheDelete

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken_0 != -1)
  {
    +[STStorageCacheDelete sharedMonitor];
  }

  v3 = sharedMonitor__monitor;

  return v3;
}

uint64_t __37__STStorageCacheDelete_sharedMonitor__block_invoke()
{
  sharedMonitor__monitor = objc_alloc_init(STStorageCacheDelete);

  return MEMORY[0x2821F96F8]();
}

- (STStorageCacheDelete)init
{
  v11.receiver = self;
  v11.super_class = STStorageCacheDelete;
  v2 = [(STStorageCacheDelete *)&v11 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__STStorageCacheDelete_init__block_invoke;
    block[3] = &unk_279D1CE88;
    v4 = v2;
    v10 = v4;
    dispatch_async(v3, block);

    v5 = dispatch_get_global_queue(9, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__STStorageCacheDelete_init__block_invoke_2;
    v7[3] = &unk_279D1D388;
    v8 = v4;
    notify_register_dispatch("CACHE_DELETE_PURGEABLE_UPDATED", v4 + 2, v5, v7);

    notify_suspend(v4[2]);
  }

  return v2;
}

void __28__STStorageCacheDelete_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) refreshPurgeableSpace];
  v1 = MEMORY[0x277D85CD0];

  dispatch_async(v1, &__block_literal_global_4);
}

void __28__STStorageCacheDelete_init__block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"STStoragePurgeableChangedNotification" object:0];
}

- (void)dealloc
{
  cdNotifyToken = self->_cdNotifyToken;
  if (cdNotifyToken)
  {
    notify_cancel(cdNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = STStorageCacheDelete;
  [(STStorageCacheDelete *)&v4 dealloc];
}

- (void)startMonitor
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__STStorageCacheDelete_startMonitor__block_invoke;
  block[3] = &unk_279D1CE88;
  block[4] = self;
  dispatch_async(v3, block);

  notify_resume(self->_cdNotifyToken);
}

- (void)refreshPurgeableSpace
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_ptr;
  v24 = getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_ptr;
  if (!getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_ptr)
  {
    v4 = CacheDeleteLibrary();
    v22[3] = dlsym(v4, "CacheDeleteCopyPurgeableSpaceWithInfo");
    getCacheDeleteCopyPurgeableSpaceWithInfoSymbolLoc_ptr = v22[3];
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    [STStorageCacheDelete refreshPurgeableSpace];
    goto LABEL_15;
  }

  v5 = v3(&unk_287C8E8A8);
  v6 = v5;
  v7 = MEMORY[0x277CBEC10];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = v8;

  v10 = [v9 objectForKey:@"CACHE_DELETE_TOTAL_PURGEABLE"];
  v11 = [v10 objectForKey:@"/private/var"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v12 = getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_ptr;
  v24 = getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_ptr;
  if (!getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_ptr)
  {
    v13 = CacheDeleteLibrary();
    v22[3] = dlsym(v13, "CacheDeleteCopyItemizedPurgeableSpaceWithInfo");
    getCacheDeleteCopyItemizedPurgeableSpaceWithInfoSymbolLoc_ptr = v22[3];
    v12 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v12)
  {
LABEL_15:
    v20 = [STStorageCacheDelete refreshPurgeableSpace];
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(v20);
  }

  v14 = v12(&unk_287C8E8D0);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16;

  os_unfair_lock_lock(&self->_updateLock);
  v18 = [v11 longLongValue];
  itemsDict = self->_itemsDict;
  self->_totalPurgeable = v18;
  self->_itemsDict = v17;

  os_unfair_lock_unlock(&self->_updateLock);
  self->_inited = 1;
}

- (id)cacheDeleteDict
{
  while (!self->_inited)
  {
    usleep(0x186A0u);
  }

  os_unfair_lock_lock(&self->_updateLock);
  v3 = self->_itemsDict;
  os_unfair_lock_unlock(&self->_updateLock);

  return v3;
}

- (int64_t)totalPurgeable
{
  while (!self->_inited)
  {
    usleep(0x186A0u);
  }

  os_unfair_lock_lock(&self->_updateLock);
  totalPurgeable = self->_totalPurgeable;
  os_unfair_lock_unlock(&self->_updateLock);
  return totalPurgeable;
}

- (uint64_t)refreshPurgeableSpace
{
  dlerror();
  v0 = abort_report_np();
  return +[(STStorageMediaMonitor *)v0];
}

@end