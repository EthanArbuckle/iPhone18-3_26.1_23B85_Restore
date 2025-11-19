@interface ICKeyedSharedInstanceManager
- (ICKeyedSharedInstanceManager)initWithInstantiationHandler:(id)a3;
- (id)sharedInstanceForKey:(id)a3;
- (void)decrementUsageCountForKey:(id)a3;
- (void)incrementUsageCountForKey:(id)a3;
@end

@implementation ICKeyedSharedInstanceManager

- (void)decrementUsageCountForKey:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_usageCounts objectForKey:v10];
  v6 = [v5 unsignedIntegerValue];

  v7 = v6 - 1;
  if (v6 == 1)
  {
    v9 = [(NSMutableDictionary *)self->_stronglyHeldSharedInstances objectForKey:v10];
    [(NSMutableDictionary *)self->_stronglyHeldSharedInstances removeObjectForKey:v10];
    [(NSMapTable *)self->_weaklyHeldSharedInstances setObject:v9 forKey:v10];
    [(NSMutableDictionary *)self->_usageCounts removeObjectForKey:v10];
  }

  else
  {
    usageCounts = self->_usageCounts;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)usageCounts setObject:v9 forKey:v10];
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementUsageCountForKey:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_usageCounts objectForKey:v10];
  v6 = [v5 unsignedIntegerValue];

  if (!v6)
  {
    v7 = [(NSMapTable *)self->_weaklyHeldSharedInstances objectForKey:v10];
    [(NSMapTable *)self->_weaklyHeldSharedInstances removeObjectForKey:v10];
    [(NSMutableDictionary *)self->_stronglyHeldSharedInstances setObject:v7 forKey:v10];
  }

  usageCounts = self->_usageCounts;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 1];
  [(NSMutableDictionary *)usageCounts setObject:v9 forKey:v10];

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)sharedInstanceForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)self->_stronglyHeldSharedInstances objectForKey:v4];
  if (v6 || ([(NSMapTable *)self->_weaklyHeldSharedInstances objectForKey:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(self->_instantiationHandler + 2))();
    [(NSMapTable *)self->_weaklyHeldSharedInstances setObject:v7 forKey:v4];
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (ICKeyedSharedInstanceManager)initWithInstantiationHandler:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICKeyedSharedInstanceManager;
  v5 = [(ICKeyedSharedInstanceManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 copy];
    instantiationHandler = v6->_instantiationHandler;
    v6->_instantiationHandler = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stronglyHeldSharedInstances = v6->_stronglyHeldSharedInstances;
    v6->_stronglyHeldSharedInstances = v9;

    v11 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    weaklyHeldSharedInstances = v6->_weaklyHeldSharedInstances;
    v6->_weaklyHeldSharedInstances = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    usageCounts = v6->_usageCounts;
    v6->_usageCounts = v13;
  }

  return v6;
}

@end