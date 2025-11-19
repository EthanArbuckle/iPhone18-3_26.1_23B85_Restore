@interface PCUserDefaultsBroadcaster
+ (id)sharedInstance;
- (BOOL)isWeakReferenceHashTableEmpty:(id)a3;
- (PCUserDefaultsBroadcaster)init;
- (id)observersForUserDefault:(id)a3;
- (void)addObserver:(id)a3 ofUserDefaults:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3 forUserDefault:(id)a4 fromObservers:(id)a5;
- (void)removeObserver:(id)a3 ofUserDefaults:(id)a4;
- (void)removeObserversForUserDefault:(id)a3;
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

- (void)addObserver:(id)a3 ofUserDefaults:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a4);
        }

        [-[PCUserDefaultsBroadcaster observersForUserDefault:](self observersForUserDefault:{*(*(&v10 + 1) + 8 * v9++)), "addObject:", a3}];
      }

      while (v7 != v9);
      v7 = [a4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (void)removeObserver:(id)a3 ofUserDefaults:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_userDefaultsBroadcasted objectForKey:v10];
        if (v11)
        {
          [(PCUserDefaultsBroadcaster *)self removeObserver:a3 forUserDefault:v10 fromObservers:v11];
        }
      }

      v7 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_sync_exit(self);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v8 = [-[NSMutableDictionary objectForKey:](self->_userDefaultsBroadcasted objectForKey:{a3), "copy"}];
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

        [*(*(&v12 + 1) + 8 * v11++) userDefaultDidChange:a3];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)observersForUserDefault:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_userDefaultsBroadcasted objectForKey:?];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_userDefaultsBroadcasted setObject:v5 forKey:a3];
    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  return v5;
}

- (void)removeObserver:(id)a3 forUserDefault:(id)a4 fromObservers:(id)a5
{
  [a5 removeObject:a3];
  if ([(PCUserDefaultsBroadcaster *)self isWeakReferenceHashTableEmpty:a5])
  {

    [(PCUserDefaultsBroadcaster *)self removeObserversForUserDefault:a4];
  }
}

- (BOOL)isWeakReferenceHashTableEmpty:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  if ([a3 count])
  {
    return [objc_msgSend(a3 "objectEnumerator")] == 0;
  }

  return 1;
}

- (void)removeObserversForUserDefault:(id)a3
{
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  userDefaultsBroadcasted = self->_userDefaultsBroadcasted;

  [(NSMutableDictionary *)userDefaultsBroadcasted removeObjectForKey:a3];
}

@end