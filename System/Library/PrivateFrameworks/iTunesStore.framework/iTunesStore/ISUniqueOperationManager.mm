@interface ISUniqueOperationManager
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (ISUniqueOperationManager)init;
- (id)_activeContext;
- (id)_contextForOperation:(id)operation;
- (id)lockWithIdentifier:(id)identifier;
- (id)predecessorForKey:(id)key operation:(id)operation;
- (void)checkInOperation:(id)operation;
- (void)checkOutOperation:(id)operation;
- (void)dealloc;
- (void)setPredecessorIfNeeded:(id)needed forKey:(id)key;
- (void)uniqueOperationFinished:(id)finished forKey:(id)key;
@end

@implementation ISUniqueOperationManager

+ (id)sharedInstance
{
  pthread_mutex_lock(&__SharedInstanceLock_0);
  v3 = __SharedInstance_0;
  if (!__SharedInstance_0)
  {
    v3 = objc_alloc_init(self);
    __SharedInstance_0 = v3;
  }

  v4 = v3;
  pthread_mutex_unlock(&__SharedInstanceLock_0);
  return v4;
}

- (ISUniqueOperationManager)init
{
  v4.receiver = self;
  v4.super_class = ISUniqueOperationManager;
  v2 = [(ISUniqueOperationManager *)&v4 init];
  if (v2)
  {
    v2->_contexts = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISUniqueOperationManager;
  [(ISUniqueOperationManager *)&v3 dealloc];
}

+ (void)setSharedInstance:(id)instance
{
  pthread_mutex_lock(&__SharedInstanceLock_0);
  if (__SharedInstance_0 != instance)
  {

    __SharedInstance_0 = instance;
  }

  pthread_mutex_unlock(&__SharedInstanceLock_0);
}

- (void)checkInOperation:(id)operation
{
  [(NSLock *)self->_lock lock];
  [-[ISUniqueOperationManager _activeContext](self "_activeContext")];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)checkOutOperation:(id)operation
{
  [(NSLock *)self->_lock lock];
  v5 = [(ISUniqueOperationManager *)self _contextForOperation:operation];
  if (v5)
  {
    v6 = v5;
    [(ISUniqueOperationContext *)v5 removeOperation:operation];
    if (![(ISUniqueOperationContext *)v6 countOfOperations])
    {
      activeContext = self->_activeContext;
      if (activeContext == v6)
      {

        self->_activeContext = 0;
      }

      [(NSMutableArray *)self->_contexts removeObject:v6];
    }
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)lockWithIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  lockPool = self->_lockPool;
  if (!lockPool)
  {
    lockPool = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_lockPool = lockPool;
  }

  v6 = [(NSMutableDictionary *)lockPool objectForKey:identifier];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [v6 setName:identifier];
    [(NSMutableDictionary *)self->_lockPool setObject:v6 forKey:identifier];
    v7 = v6;
  }

  [(NSLock *)self->_lock unlock];
  return v6;
}

- (id)predecessorForKey:(id)key operation:(id)operation
{
  [(NSLock *)self->_lock lock];
  v7 = [-[ISUniqueOperationManager _contextForOperation:](self _contextForOperation:{operation), "uniqueOperationForKey:", key}];
  [(NSLock *)self->_lock unlock];
  return v7;
}

- (void)setPredecessorIfNeeded:(id)needed forKey:(id)key
{
  [(NSLock *)self->_lock lock];
  v7 = [(ISUniqueOperationManager *)self _contextForOperation:needed];
  if (![v7 uniqueOperationForKey:key])
  {
    [v7 setUniqueOperation:needed forKey:key];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)uniqueOperationFinished:(id)finished forKey:(id)key
{
  [(NSLock *)self->_lock lock];
  v7 = [(ISUniqueOperationManager *)self _contextForOperation:finished];
  if ([v7 uniqueOperationForKey:key] == finished)
  {
    [v7 setUniqueOperation:0 forKey:key];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)_activeContext
{
  result = self->_activeContext;
  if (!result)
  {
    v4 = objc_alloc_init(ISUniqueOperationContext);
    self->_activeContext = v4;
    [(NSMutableArray *)self->_contexts addObject:v4];
    return self->_activeContext;
  }

  return result;
}

- (id)_contextForOperation:(id)operation
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contexts = self->_contexts;
  v5 = [(NSMutableArray *)contexts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(contexts);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 containsOperation:operation])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)contexts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end