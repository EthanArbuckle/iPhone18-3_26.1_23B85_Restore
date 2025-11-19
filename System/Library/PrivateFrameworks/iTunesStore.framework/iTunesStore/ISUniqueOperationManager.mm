@interface ISUniqueOperationManager
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (ISUniqueOperationManager)init;
- (id)_activeContext;
- (id)_contextForOperation:(id)a3;
- (id)lockWithIdentifier:(id)a3;
- (id)predecessorForKey:(id)a3 operation:(id)a4;
- (void)checkInOperation:(id)a3;
- (void)checkOutOperation:(id)a3;
- (void)dealloc;
- (void)setPredecessorIfNeeded:(id)a3 forKey:(id)a4;
- (void)uniqueOperationFinished:(id)a3 forKey:(id)a4;
@end

@implementation ISUniqueOperationManager

+ (id)sharedInstance
{
  pthread_mutex_lock(&__SharedInstanceLock_0);
  v3 = __SharedInstance_0;
  if (!__SharedInstance_0)
  {
    v3 = objc_alloc_init(a1);
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

+ (void)setSharedInstance:(id)a3
{
  pthread_mutex_lock(&__SharedInstanceLock_0);
  if (__SharedInstance_0 != a3)
  {

    __SharedInstance_0 = a3;
  }

  pthread_mutex_unlock(&__SharedInstanceLock_0);
}

- (void)checkInOperation:(id)a3
{
  [(NSLock *)self->_lock lock];
  [-[ISUniqueOperationManager _activeContext](self "_activeContext")];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)checkOutOperation:(id)a3
{
  [(NSLock *)self->_lock lock];
  v5 = [(ISUniqueOperationManager *)self _contextForOperation:a3];
  if (v5)
  {
    v6 = v5;
    [(ISUniqueOperationContext *)v5 removeOperation:a3];
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

- (id)lockWithIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  lockPool = self->_lockPool;
  if (!lockPool)
  {
    lockPool = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_lockPool = lockPool;
  }

  v6 = [(NSMutableDictionary *)lockPool objectForKey:a3];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [v6 setName:a3];
    [(NSMutableDictionary *)self->_lockPool setObject:v6 forKey:a3];
    v7 = v6;
  }

  [(NSLock *)self->_lock unlock];
  return v6;
}

- (id)predecessorForKey:(id)a3 operation:(id)a4
{
  [(NSLock *)self->_lock lock];
  v7 = [-[ISUniqueOperationManager _contextForOperation:](self _contextForOperation:{a4), "uniqueOperationForKey:", a3}];
  [(NSLock *)self->_lock unlock];
  return v7;
}

- (void)setPredecessorIfNeeded:(id)a3 forKey:(id)a4
{
  [(NSLock *)self->_lock lock];
  v7 = [(ISUniqueOperationManager *)self _contextForOperation:a3];
  if (![v7 uniqueOperationForKey:a4])
  {
    [v7 setUniqueOperation:a3 forKey:a4];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)uniqueOperationFinished:(id)a3 forKey:(id)a4
{
  [(NSLock *)self->_lock lock];
  v7 = [(ISUniqueOperationManager *)self _contextForOperation:a3];
  if ([v7 uniqueOperationForKey:a4] == a3)
  {
    [v7 setUniqueOperation:0 forKey:a4];
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

- (id)_contextForOperation:(id)a3
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
      if ([v9 containsOperation:a3])
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