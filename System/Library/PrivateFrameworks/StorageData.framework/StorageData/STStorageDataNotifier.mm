@interface STStorageDataNotifier
+ (id)sharedNotifier;
- (STStorageDataNotifier)init;
- (void)_notify:(id)_notify;
- (void)notify:(id)notify forBundleIDs:(id)ds;
@end

@implementation STStorageDataNotifier

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[STStorageDataNotifier sharedNotifier];
  }

  v3 = sharedNotifier__notifier;

  return v3;
}

uint64_t __39__STStorageDataNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier__notifier = objc_alloc_init(STStorageDataNotifier);

  return MEMORY[0x2821F96F8]();
}

- (STStorageDataNotifier)init
{
  v6.receiver = self;
  v6.super_class = STStorageDataNotifier;
  v2 = [(STStorageDataNotifier *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_changesLock._os_unfair_lock_opaque = 0;
    changes = v2->_changes;
    v2->_changes = 0;
  }

  return v3;
}

- (void)_notify:(id)_notify
{
  _notifyCopy = _notify;
  STLog(1, @"STStorageNotification: _notify: %@", v5, v6, v7, v8, v9, v10, _notifyCopy);
  os_unfair_lock_lock(&self->_changesLock);
  v11 = [(NSMutableDictionary *)self->_changes objectForKey:_notifyCopy];
  if (v11)
  {
    [(NSMutableDictionary *)self->_changes removeObjectForKey:_notifyCopy];
  }

  os_unfair_lock_unlock(&self->_changesLock);
  v12 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__STStorageDataNotifier__notify___block_invoke;
  block[3] = &unk_279D1D2E0;
  v16 = v11;
  v17 = _notifyCopy;
  selfCopy = self;
  v13 = _notifyCopy;
  v14 = v11;
  dispatch_async(v12, block);
}

void __33__STStorageDataNotifier__notify___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*(a1 + 32) forKey:@"APPS"];
  }

  else
  {
    v3 = 0;
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 40) object:*(a1 + 48) userInfo:v3];
}

- (void)notify:(id)notify forBundleIDs:(id)ds
{
  notifyCopy = notify;
  dsCopy = ds;
  if (dsCopy)
  {
    os_unfair_lock_lock(&self->_changesLock);
    v8 = [(NSMutableDictionary *)self->_changes objectForKey:notifyCopy];
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB58] setWithCapacity:4];
    }

    [v8 addObjectsFromArray:dsCopy];
    [(NSMutableDictionary *)self->_changes setObject:v8 forKey:notifyCopy];
    os_unfair_lock_unlock(&self->_changesLock);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__STStorageDataNotifier_notify_forBundleIDs___block_invoke;
  v10[3] = &unk_279D1CEB0;
  v10[4] = self;
  v11 = notifyCopy;
  v9 = notifyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __45__STStorageDataNotifier_notify_forBundleIDs___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__notify_ object:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performSelector:sel__notify_ withObject:v3 afterDelay:0.1];
}

@end