@interface PCUserDefaultsBroadcaster
+ (id)sharedInstance;
- (BOOL)isWeakReferenceHashTableEmpty:(id)empty;
- (PCUserDefaultsBroadcaster)init;
- (id)observersForUserDefault:(id)default;
- (void)addObserver:(id)observer ofUserDefaults:(id)defaults;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeObserver:(id)observer forUserDefault:(id)default fromObservers:(id)observers;
- (void)removeObserver:(id)observer ofUserDefaults:(id)defaults;
- (void)removeObserversForUserDefault:(id)default;
@end

@implementation PCUserDefaultsBroadcaster

+ (id)sharedInstance
{
  if (sharedInstance_predicate != -1)
  {
    +[PCUserDefaultsBroadcaster sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

PCUserDefaultsBroadcaster *__43__PCUserDefaultsBroadcaster_sharedInstance__block_invoke()
{
  result = objc_alloc_init(PCUserDefaultsBroadcaster);
  sharedInstance_sharedInstance = result;
  return result;
}

- (PCUserDefaultsBroadcaster)init
{
  v4.receiver = self;
  v4.super_class = PCUserDefaultsBroadcaster;
  v2 = [(PCUserDefaultsBroadcaster *)&v4 init];
  if (v2)
  {
    v2->_userDefaultsBroadcasted = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCUserDefaultsBroadcaster;
  [(PCUserDefaultsBroadcaster *)&v3 dealloc];
}

- (void)addObserver:(id)observer ofUserDefaults:(id)defaults
{
  v15 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [defaults countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(defaults);
        }

        [-[PCUserDefaultsBroadcaster observersForUserDefault:](self observersForUserDefault:{*(*(&v10 + 1) + 8 * v9++)), "addObject:", observer}];
      }

      while (v7 != v9);
      v7 = [defaults countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (void)removeObserver:(id)observer ofUserDefaults:(id)defaults
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [defaults countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(defaults);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_userDefaultsBroadcasted objectForKey:v10];
        if (v11)
        {
          [(PCUserDefaultsBroadcaster *)self removeObserver:observer forUserDefault:v10 fromObservers:v11];
        }
      }

      v7 = [defaults countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v8 = [-[NSMutableDictionary objectForKey:](self->_userDefaultsBroadcasted objectForKey:{path), "copy"}];
  objc_sync_exit(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) userDefaultDidChange:path];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)observersForUserDefault:(id)default
{
  weakObjectsHashTable = [(NSMutableDictionary *)self->_userDefaultsBroadcasted objectForKey:?];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_userDefaultsBroadcasted setObject:weakObjectsHashTable forKey:default];
    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  return weakObjectsHashTable;
}

- (void)removeObserver:(id)observer forUserDefault:(id)default fromObservers:(id)observers
{
  [observers removeObject:observer];
  if ([(PCUserDefaultsBroadcaster *)self isWeakReferenceHashTableEmpty:observers])
  {

    [(PCUserDefaultsBroadcaster *)self removeObserversForUserDefault:default];
  }
}

- (BOOL)isWeakReferenceHashTableEmpty:(id)empty
{
  if (!empty)
  {
    return 1;
  }

  if ([empty count])
  {
    return [objc_msgSend(empty "objectEnumerator")] == 0;
  }

  return 1;
}

- (void)removeObserversForUserDefault:(id)default
{
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  userDefaultsBroadcasted = self->_userDefaultsBroadcasted;

  [(NSMutableDictionary *)userDefaultsBroadcasted removeObjectForKey:default];
}

@end