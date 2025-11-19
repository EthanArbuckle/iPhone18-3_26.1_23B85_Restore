@interface RBProcessIndex
+ (RBProcessIndex)indexWithCapacity:(unint64_t)a3;
+ (id)index;
- (BOOL)addProcess:(id)a3 existingProcess:(id *)a4;
- (BOOL)containsIdentifier:(id)a3;
- (BOOL)containsIdentity:(id)a3;
- (BOOL)containsInstance:(id)a3;
- (BOOL)containsProcess:(id)a3;
- (BOOL)removeProcess:(id)a3;
- (id)allProcesses;
- (id)processForIdentifier:(id)a3;
- (id)processForIdentity:(id)a3;
- (id)processForInstance:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_lock_removeProcess:(id *)a1;
- (void)initWithCapacity:(void *)a1;
- (void)removeAllObjects;
@end

@implementation RBProcessIndex

- (id)allProcesses
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableOrderedSet *)self->_processes objectEnumerator];
  v4 = [v3 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

+ (id)index
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (RBProcessIndex)indexWithCapacity:(unint64_t)a3
{
  v3 = [[RBProcessIndex alloc] initWithCapacity:a3];

  return v3;
}

- (BOOL)addProcess:(id)a3 existingProcess:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v7 = [(NSMutableOrderedSet *)self->_processes containsObject:v6];
  if ((v7 & 1) == 0)
  {
    v8 = [v6 identity];
    v9 = [v6 instance];
    v10 = [MEMORY[0x277D46F50] identifierForIdentifier:v6];
    v11 = [(NSMutableDictionary *)self->_processByIdentifier objectForKey:v10];
    if (!v6)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    if (!v8)
    {
      [RBProcessIndex addProcess:existingProcess:];
    }

    if (!v9)
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
      v14 = [v12 pidversion];
      if (v14 == [v6 pidversion])
      {
        v15 = rbs_ttl_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v21 = 138543874;
          v22 = v12;
          v23 = 2114;
          v24 = v6;
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
          v24 = v6;
          _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "replacing %{public}@ which appears to have been exec'd into %{public}@", &v21, 0x16u);
        }

        if (a4)
        {
          v17 = v12;
          *a4 = v12;
        }
      }
    }

    [(NSMutableOrderedSet *)self->_processes insertObject:v6 atIndex:0];
    [(NSMutableDictionary *)self->_processByIdentity setObject:v6 forKey:v8];
    [(NSMutableDictionary *)self->_processByInstance setObject:v6 forKey:v9];
    [(NSMutableDictionary *)self->_processByIdentifier setObject:v6 forKey:v10];
    if (self->_capacity && [(NSMutableOrderedSet *)self->_processes count]> self->_capacity)
    {
      v18 = [(NSMutableOrderedSet *)self->_processes lastObject];
      [(RBProcessIndex *)&self->super.isa _lock_removeProcess:v18];
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v19 = *MEMORY[0x277D85DE8];
  return v7 ^ 1;
}

- (void)_lock_removeProcess:(id *)a1
{
  v3 = a2;
  if (a1 && v3)
  {
    v10 = v3;
    v4 = [v3 instance];
    v5 = [v10 identity];
    v6 = [MEMORY[0x277D46F50] identifierForIdentifier:v10];
    [a1[3] removeObject:v10];
    v7 = [a1[5] objectForKey:v4];
    if (v7 == v10)
    {
      [a1[5] removeObjectForKey:v4];
    }

    v8 = [a1[6] objectForKey:v6];

    if (v8 == v10)
    {
      [a1[6] removeObjectForKey:v6];
    }

    v9 = [a1[4] objectForKey:v5];

    if (v9 == v10)
    {
      [a1[4] removeObjectForKey:v5];
    }

    v3 = v10;
  }
}

- (BOOL)removeProcess:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [(NSMutableOrderedSet *)self->_processes containsObject:v4];
    if (v5)
    {
      [(RBProcessIndex *)&self->super.isa _lock_removeProcess:v4];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)containsProcess:(id)a3
{
  v4 = [a3 instance];
  LOBYTE(self) = [(RBProcessIndex *)self containsInstance:v4];

  return self;
}

- (BOOL)containsInstance:(id)a3
{
  v3 = [(RBProcessIndex *)self processForInstance:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsIdentifier:(id)a3
{
  v3 = [(RBProcessIndex *)self processForIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)containsIdentity:(id)a3
{
  v3 = [(RBProcessIndex *)self processForIdentity:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)processForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (v4)
  {
    processByIdentifier = self->_processByIdentifier;
    v6 = [MEMORY[0x277D46F50] identifierForIdentifier:v4];
    v7 = [(NSMutableDictionary *)processByIdentifier objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)processForInstance:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_processByInstance objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)processForIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_processByIdentity objectForKey:v4];
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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(RBProcessIndex *)self allProcesses];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)initWithCapacity:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
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