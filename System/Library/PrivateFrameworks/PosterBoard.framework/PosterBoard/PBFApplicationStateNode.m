@interface PBFApplicationStateNode
- (NSSet)components;
- (NSString)description;
- (PBFApplicationStateNode)initWithDescription:(id)a3;
- (void)_componentsDidUpdate;
- (void)addStateObserver:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)removeStateObserver:(id)a3;
- (void)setComponents:(id)a3;
- (void)updateByAddingComponent:(id)a3;
- (void)updateByRemovingComponent:(id)a3;
@end

@implementation PBFApplicationStateNode

- (PBFApplicationStateNode)initWithDescription:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PBFApplicationStateNode initWithDescription:a2];
  }

  v6 = v5;
  v17.receiver = self;
  v17.super_class = PBFApplicationStateNode;
  v7 = [(PBFApplicationStateNode *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    stateDescription = v7->_stateDescription;
    v7->_stateDescription = v8;

    v10 = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v12;

    v14 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    observerNotificationScheduled = v7->_observerNotificationScheduled;
    v7->_observerNotificationScheduled = v14;
  }

  return v7;
}

- (void)dealloc
{
  [(PBFApplicationStateNode *)self cancel];
  v3.receiver = self;
  v3.super_class = PBFApplicationStateNode;
  [(PBFApplicationStateNode *)&v3 dealloc];
}

- (NSSet)components
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->_components copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setComponents:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSSet *)v5->_components isEqualToSet:v4])
  {
    objc_sync_exit(v5);
  }

  else
  {
    v6 = [v4 copy];
    components = v5->_components;
    v5->_components = v6;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = v4;
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

          [*(*(&v12 + 1) + 8 * v11++) setDelegate:{v5, v12}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v5);
    [(PBFApplicationStateNode *)v5 _componentsDidUpdate];
  }
}

- (void)updateByAddingComponent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if ([(NSSet *)v5->_components containsObject:v12])
    {
      objc_sync_exit(v5);
    }

    else
    {
      [v12 setDelegate:v5];
      v6 = [(NSSet *)v5->_components mutableCopy];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = objc_opt_new();
      }

      v9 = v8;

      [v9 addObject:v12];
      v10 = [v9 copy];
      components = v5->_components;
      v5->_components = v10;

      objc_sync_exit(v5);
      [(PBFApplicationStateNode *)v5 _componentsDidUpdate];
    }

    v4 = v12;
  }
}

- (void)updateByRemovingComponent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    if ([(NSSet *)v5->_components containsObject:v9])
    {
      [v9 setDelegate:0];
      v6 = [(NSSet *)v5->_components mutableCopy];
      [v6 removeObject:v9];
      v7 = [v6 copy];
      components = v5->_components;
      v5->_components = v7;

      objc_sync_exit(v5);
      [(PBFApplicationStateNode *)v5 _componentsDidUpdate];
    }

    else
    {
      objc_sync_exit(v5);
    }

    v4 = v9;
  }
}

- (void)addStateObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeStateObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_stateDescription withName:@"description"];
  v4 = [(PBFApplicationStateNode *)self components];
  v5 = [v4 allObjects];
  v6 = [v3 appendObject:v5 withName:@"components" skipIfNil:1];

  v7 = [v3 build];

  return v7;
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_observers;
  objc_sync_enter(v3);
  v4 = [(NSHashTable *)self->_observers allObjects];
  objc_sync_exit(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) stateWasInvalidated:{self, v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_componentsDidUpdate
{
  if ([(BSAtomicFlag *)self->_observerNotificationScheduled setFlag:1])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFApplicationStateNode _componentsDidUpdate]"];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__PBFApplicationStateNode__componentsDidUpdate__block_invoke;
    v4[3] = &unk_2782C5888;
    v4[4] = self;
    PBFDispatchAsyncWithString(v3, QOS_CLASS_DEFAULT, v4);
  }
}

void __47__PBFApplicationStateNode__componentsDidUpdate__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) setFlag:0];
  v2 = *(*(a1 + 32) + 16);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 16) allObjects];
  objc_sync_exit(v2);

  v4 = [*(a1 + 32) components];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) state:*(a1 + 32) didUpdateComponents:{v4, v9}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)initWithDescription:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"stateDescription"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFApplicationStateMonitoring.m";
    v9 = 1024;
    v10 = 143;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end