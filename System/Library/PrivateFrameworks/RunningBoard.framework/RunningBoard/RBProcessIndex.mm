@interface RBProcessIndex
+ (RBProcessIndex)indexWithCapacity:(unint64_t)capacity;
+ (id)index;
- (BOOL)addProcess:(id)process existingProcess:(id *)existingProcess;
- (BOOL)containsIdentifier:(id)identifier;
- (BOOL)containsIdentity:(id)identity;
- (BOOL)containsInstance:(id)instance;
- (BOOL)containsProcess:(id)process;
- (BOOL)removeProcess:(id)process;
- (id)allProcesses;
- (id)processForIdentifier:(id)identifier;
- (id)processForIdentity:(id)identity;
- (id)processForInstance:(id)instance;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_lock_removeProcess:(id *)process;
- (void)initWithCapacity:(void *)capacity;
- (void)removeAllObjects;
@end

@implementation RBProcessIndex

- (id)allProcesses
{
  os_unfair_lock_lock_with_options();
  objectEnumerator = [(NSMutableOrderedSet *)self->_processes objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

+ (id)index
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (RBProcessIndex)indexWithCapacity:(unint64_t)capacity
{
  v3 = [[RBProcessIndex alloc] initWithCapacity:capacity];

  return v3;
}

- (BOOL)addProcess:(id)process existingProcess:(id *)existingProcess
{
  v27 = *MEMORY[0x277D85DE8];
  processCopy = process;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableOrderedSet *)self->_processes containsObject:processCopy];
  if ((v7 & 1) == 0)
  {
    identity = [processCopy identity];
    instance = [processCopy instance];
    v10 = [MEMORY[0x277D46F50] identifierForIdentifier:processCopy];
    v11 = [(NSMutableDictionary *)self->_processByIdentifier objectForKey:v10];
    if (!processCopy)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    if (!identity)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    if (!instance)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    if (!v10)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    v12 = v11;
    v13 = rbs_ttl_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = v12;
      _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "Existing process in RBProcessIndex is: %{public}@", &v21, 0xCu);
    }

    if (v12)
    {
      pidversion = [v12 pidversion];
      if (pidversion == [processCopy pidversion])
      {
        v15 = rbs_ttl_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v21 = 138543874;
          v22 = v12;
          v23 = 2114;
          v24 = processCopy;
          v25 = 2114;
          v26 = v10;
          _os_log_fault_impl(&dword_262485000, v15, OS_LOG_TYPE_FAULT, "cannot map existing process %{public}@ and new process %{public}@ which have the same identifier: %{public}@", &v21, 0x20u);
        }
      }

      else
      {
        v16 = rbs_process_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138543618;
          v22 = v12;
          v23 = 2114;
          v24 = processCopy;
          _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "replacing %{public}@ which appears to have been exec'd into %{public}@", &v21, 0x16u);
        }

        if (existingProcess)
        {
          v17 = v12;
          *existingProcess = v12;
        }
      }
    }

    [(NSMutableOrderedSet *)self->_processes insertObject:processCopy atIndex:0];
    [(NSMutableDictionary *)self->_processByIdentity setObject:processCopy forKey:identity];
    [(NSMutableDictionary *)self->_processByInstance setObject:processCopy forKey:instance];
    [(NSMutableDictionary *)self->_processByIdentifier setObject:processCopy forKey:v10];
    if (self->_capacity && [(NSMutableOrderedSet *)self->_processes count]> self->_capacity)
    {
      lastObject = [(NSMutableOrderedSet *)self->_processes lastObject];
      [(RBProcessIndex *)&self->super.isa _lock_removeProcess:lastObject];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v19 = *MEMORY[0x277D85DE8];
  return v7 ^ 1;
}

- (void)_lock_removeProcess:(id *)process
{
  v3 = a2;
  if (process && v3)
  {
    v10 = v3;
    instance = [v3 instance];
    identity = [v10 identity];
    v6 = [MEMORY[0x277D46F50] identifierForIdentifier:v10];
    [process[3] removeObject:v10];
    v7 = [process[5] objectForKey:instance];
    if (v7 == v10)
    {
      [process[5] removeObjectForKey:instance];
    }

    v8 = [process[6] objectForKey:v6];

    if (v8 == v10)
    {
      [process[6] removeObjectForKey:v6];
    }

    v9 = [process[4] objectForKey:identity];

    if (v9 == v10)
    {
      [process[4] removeObjectForKey:identity];
    }

    v3 = v10;
  }
}

- (BOOL)removeProcess:(id)process
{
  processCopy = process;
  if (processCopy)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSMutableOrderedSet *)self->_processes containsObject:processCopy];
    if (v5)
    {
      [(RBProcessIndex *)&self->super.isa _lock_removeProcess:processCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)containsProcess:(id)process
{
  instance = [process instance];
  LOBYTE(self) = [(RBProcessIndex *)self containsInstance:instance];

  return self;
}

- (BOOL)containsInstance:(id)instance
{
  v3 = [(RBProcessIndex *)self processForInstance:instance];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsIdentifier:(id)identifier
{
  v3 = [(RBProcessIndex *)self processForIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsIdentity:(id)identity
{
  v3 = [(RBProcessIndex *)self processForIdentity:identity];
  v4 = v3 != 0;

  return v4;
}

- (id)processForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  if (identifierCopy)
  {
    processByIdentifier = self->_processByIdentifier;
    v6 = [MEMORY[0x277D46F50] identifierForIdentifier:identifierCopy];
    v7 = [(NSMutableDictionary *)processByIdentifier objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)processForInstance:(id)instance
{
  instanceCopy = instance;
  os_unfair_lock_lock_with_options();
  if (instanceCopy)
  {
    v5 = [(NSMutableDictionary *)self->_processByInstance objectForKey:instanceCopy];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)processForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock_with_options();
  if (identityCopy)
  {
    v5 = [(NSMutableDictionary *)self->_processByIdentity objectForKey:identityCopy];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  [(NSMutableOrderedSet *)self->_processes removeAllObjects];
  [(NSMutableDictionary *)self->_processByIdentity removeAllObjects];
  [(NSMutableDictionary *)self->_processByInstance removeAllObjects];
  [(NSMutableDictionary *)self->_processByIdentifier removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  allProcesses = [(RBProcessIndex *)self allProcesses];
  v9 = [allProcesses countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)initWithCapacity:(void *)capacity
{
  if (!capacity)
  {
    return 0;
  }

  v14.receiver = capacity;
  v14.super_class = RBProcessIndex;
  v3 = objc_msgSendSuper2(&v14, sel_init);
  v4 = v3;
  if (v3)
  {
    *(v3 + 2) = 0;
    v3[2] = a2;
    v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v6 = v4[3];
    v4[3] = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v4[4];
    v4[4] = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = v4[5];
    v4[5] = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = v4[6];
    v4[6] = v11;
  }

  return v4;
}

@end