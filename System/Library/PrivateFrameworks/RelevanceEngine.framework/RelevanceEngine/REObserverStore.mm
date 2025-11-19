@interface REObserverStore
- (NSArray)allObservers;
- (REObserverStore)initWithFunctionsOptions:(unint64_t)a3;
- (unint64_t)count;
- (void)addObserver:(id)a3;
- (void)enumerateObserversWithBlock:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation REObserverStore

- (REObserverStore)initWithFunctionsOptions:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = REObserverStore;
  v4 = [(REObserverStore *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:a3];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_observers count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)allObservers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enumerateObserversWithBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v17 = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(REObserverStore *)self allObservers];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v4[2](v4, v10, &v17);
        objc_autoreleasePoolPop(v11);
        if (v17)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end