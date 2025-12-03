@interface ICKeyedSharedInstanceManager
- (ICKeyedSharedInstanceManager)initWithInstantiationHandler:(id)handler;
- (id)sharedInstanceForKey:(id)key;
- (void)decrementUsageCountForKey:(id)key;
- (void)incrementUsageCountForKey:(id)key;
@end

@implementation ICKeyedSharedInstanceManager

- (void)decrementUsageCountForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_usageCounts objectForKey:keyCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = unsignedIntegerValue - 1;
  if (unsignedIntegerValue == 1)
  {
    v9 = [(NSMutableDictionary *)self->_stronglyHeldSharedInstances objectForKey:keyCopy];
    [(NSMutableDictionary *)self->_stronglyHeldSharedInstances removeObjectForKey:keyCopy];
    [(NSMapTable *)self->_weaklyHeldSharedInstances setObject:v9 forKey:keyCopy];
    [(NSMutableDictionary *)self->_usageCounts removeObjectForKey:keyCopy];
  }

  else
  {
    usageCounts = self->_usageCounts;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [(NSMutableDictionary *)usageCounts setObject:v9 forKey:keyCopy];
  }

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)incrementUsageCountForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSMutableDictionary *)self->_usageCounts objectForKey:keyCopy];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    v7 = [(NSMapTable *)self->_weaklyHeldSharedInstances objectForKey:keyCopy];
    [(NSMapTable *)self->_weaklyHeldSharedInstances removeObjectForKey:keyCopy];
    [(NSMutableDictionary *)self->_stronglyHeldSharedInstances setObject:v7 forKey:keyCopy];
  }

  usageCounts = self->_usageCounts;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)usageCounts setObject:v9 forKey:keyCopy];

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

- (id)sharedInstanceForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMutableDictionary *)self->_stronglyHeldSharedInstances objectForKey:keyCopy];
  if (v6 || ([(NSMapTable *)self->_weaklyHeldSharedInstances objectForKey:keyCopy], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(self->_instantiationHandler + 2))();
    [(NSMapTable *)self->_weaklyHeldSharedInstances setObject:v7 forKey:keyCopy];
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (ICKeyedSharedInstanceManager)initWithInstantiationHandler:(id)handler
{
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = ICKeyedSharedInstanceManager;
  v5 = [(ICKeyedSharedInstanceManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [handlerCopy copy];
    instantiationHandler = v6->_instantiationHandler;
    v6->_instantiationHandler = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stronglyHeldSharedInstances = v6->_stronglyHeldSharedInstances;
    v6->_stronglyHeldSharedInstances = v9;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    weaklyHeldSharedInstances = v6->_weaklyHeldSharedInstances;
    v6->_weaklyHeldSharedInstances = strongToWeakObjectsMapTable;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    usageCounts = v6->_usageCounts;
    v6->_usageCounts = v13;
  }

  return v6;
}

@end