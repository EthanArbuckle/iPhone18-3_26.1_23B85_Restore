@interface SWActiveSystemActivityRegistry
+ (id)sharedRegistry;
- (SWActiveSystemActivityRegistry)init;
- (id)description;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)notifyObserversWithBlock:(uint64_t)a1;
- (void)registerActiveSystemActivity:(id)a3;
- (void)removeObserver:(id)a3;
- (void)unregisterInactiveSystemActivity:(id)a3;
@end

@implementation SWActiveSystemActivityRegistry

+ (id)sharedRegistry
{
  if (qword_280D3F8F8 != -1)
  {
    dispatch_once(&qword_280D3F8F8, &__block_literal_global_259);
  }

  v3 = qword_280D3F8F0;

  return v3;
}

uint64_t __48__SWActiveSystemActivityRegistry_sharedRegistry__block_invoke()
{
  qword_280D3F8F0 = objc_alloc_init(SWActiveSystemActivityRegistry);

  return MEMORY[0x2821F96F8]();
}

- (SWActiveSystemActivityRegistry)init
{
  v13.receiver = self;
  v13.super_class = SWActiveSystemActivityRegistry;
  v2 = [(SWActiveSystemActivityRegistry *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = v4;

    if (os_variant_has_internal_diagnostics())
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      lock_activeSystemActivities = v3->_lock_activeSystemActivities;
      v3->_lock_activeSystemActivities = v6;
    }

    objc_initWeak(&location, v3);
    objc_copyWeak(&v11, &location);
    v8 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureHandler = v3->_stateCaptureHandler;
    v3->_stateCaptureHandler = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __38__SWActiveSystemActivityRegistry_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureHandler invalidate];
  v3.receiver = self;
  v3.super_class = SWActiveSystemActivityRegistry;
  [(SWActiveSystemActivityRegistry *)&v3 dealloc];
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SWActiveSystemActivityRegistry_description__block_invoke;
  v10[3] = &unk_279D43148;
  v4 = v3;
  v11 = v4;
  v12 = self;
  [v4 appendProem:self block:v10];
  if ([(NSHashTable *)self->_lock_activeSystemActivities count])
  {
    lock_activeSystemActivities = self->_lock_activeSystemActivities;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__SWActiveSystemActivityRegistry_description__block_invoke_2;
    v8[3] = &unk_279D43170;
    v9 = v4;
    [v9 appendCollection:lock_activeSystemActivities withName:@"activities" itemBlock:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = [v4 description];

  return v6;
}

- (void)registerActiveSystemActivity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_activeSystemActivitiesCount = self->_lock_activeSystemActivitiesCount;
  self->_lock_activeSystemActivitiesCount = lock_activeSystemActivitiesCount + 1;
  [(NSHashTable *)self->_lock_activeSystemActivities addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (!lock_activeSystemActivitiesCount)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__SWActiveSystemActivityRegistry_registerActiveSystemActivity___block_invoke;
    v6[3] = &unk_279D43198;
    v6[4] = self;
    [(SWActiveSystemActivityRegistry *)self notifyObserversWithBlock:v6];
  }
}

- (void)notifyObserversWithBlock:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 40));
    v4 = [*(a1 + 24) allObjects];
    os_unfair_lock_unlock((a1 + 40));
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v10 + 1) + 8 * v8++));
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterInactiveSystemActivity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_lock_activeSystemActivitiesCount - 1;
  self->_lock_activeSystemActivitiesCount = v5;
  [(NSHashTable *)self->_lock_activeSystemActivities removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__SWActiveSystemActivityRegistry_unregisterInactiveSystemActivity___block_invoke;
    v6[3] = &unk_279D43198;
    v6[4] = self;
    [(SWActiveSystemActivityRegistry *)self notifyObserversWithBlock:v6];
  }
}

- (void)addObserver:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!v11)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 764;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65D634);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v11];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a3;
  if (!v11)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != nil"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"SWSystemSleepMonitor.m";
      v20 = 1024;
      v21 = 771;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C65D814);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v11];
  os_unfair_lock_unlock(&self->_lock);
  v5 = *MEMORY[0x277D85DE8];
}

@end