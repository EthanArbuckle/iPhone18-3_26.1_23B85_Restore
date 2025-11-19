@interface SBBackgroundMultitaskingManager
+ (id)sharedInstance;
- (SBBackgroundMultitaskingManager)init;
- (id)_createBackgroundFetchTaskForAppInfo:(id)a3;
- (void)_appProcessStateDidChange:(id)a3;
- (void)_backgroundTaskFinished:(id)a3 forAppInfo:(id)a4;
@end

@implementation SBBackgroundMultitaskingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_60 != -1)
  {
    +[SBBackgroundMultitaskingManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_30;

  return v3;
}

uint64_t __49__SBBackgroundMultitaskingManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBBackgroundMultitaskingManager);
  v1 = sharedInstance___sharedInstance_30;
  sharedInstance___sharedInstance_30 = v0;

  return kdebug_trace();
}

- (SBBackgroundMultitaskingManager)init
{
  v8.receiver = self;
  v8.super_class = SBBackgroundMultitaskingManager;
  v2 = [(SBBackgroundMultitaskingManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_appToBackgroundTasks = v3->_lock_appToBackgroundTasks;
    v3->_lock_appToBackgroundTasks = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__appProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:0];
  }

  return v3;
}

- (void)_appProcessStateDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  v5 = [v4 processState];
  if ([v5 visibility] == 2)
  {
    os_unfair_lock_lock(&self->_lock);
    lock_appToBackgroundTasks = self->_lock_appToBackgroundTasks;
    v7 = [v4 info];
    v8 = [v7 processIdentity];
    v9 = [(NSMutableDictionary *)lock_appToBackgroundTasks objectForKey:v8];
    v10 = [v9 copy];

    os_unfair_lock_unlock(&self->_lock);
    memset(v13, 0, sizeof(v13));
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:v13 objects:v14 count:16];
    if (v12)
    {
      [(SBBackgroundMultitaskingManager *)v13 _appProcessStateDidChange:v11, v12, v14];
    }
  }
}

- (void)_backgroundTaskFinished:(id)a3 forAppInfo:(id)a4
{
  v12 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_appToBackgroundTasks = self->_lock_appToBackgroundTasks;
  v8 = [v12 processIdentity];
  v9 = [(NSMutableDictionary *)lock_appToBackgroundTasks objectForKey:v8];

  [v9 removeObjectIdenticalTo:v6];
  if (![v9 count])
  {
    v10 = self->_lock_appToBackgroundTasks;
    v11 = [v12 processIdentity];
    [(NSMutableDictionary *)v10 removeObjectForKey:v11];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_createBackgroundFetchTaskForAppInfo:(id)a3
{
  v4 = a3;
  v5 = [SBBackgroundFetchTask alloc];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __72__SBBackgroundMultitaskingManager__createBackgroundFetchTaskForAppInfo___block_invoke;
  v17 = &unk_2783C4578;
  v18 = self;
  v6 = v4;
  v19 = v6;
  v7 = [(SBBackgroundFetchTask *)&v5->super.isa initForAppInfo:v6 withCompletion:&v14];
  os_unfair_lock_lock(&self->_lock);
  lock_appToBackgroundTasks = self->_lock_appToBackgroundTasks;
  v9 = [v6 processIdentity];
  v10 = [(NSMutableDictionary *)lock_appToBackgroundTasks objectForKey:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_lock_appToBackgroundTasks;
    v12 = [v6 processIdentity];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
  }

  [v10 addObject:v7];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (uint64_t)_appProcessStateDidChange:(uint64_t)a3 .cold.1(uint64_t a1, id obj, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 16);
  do
  {
    v9 = 0;
    do
    {
      if (**(a1 + 16) != v8)
      {
        objc_enumerationMutation(obj);
      }

      [(SBBackgroundFetchTask *)*(*(a1 + 8) + 8 * v9++) finishWithResult:?];
    }

    while (a3 != v9);
    result = [obj countByEnumeratingWithState:a1 objects:a4 count:16];
    a3 = result;
  }

  while (result);
  return result;
}

@end