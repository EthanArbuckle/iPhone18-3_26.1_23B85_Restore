@interface PBFApplicationStateNode
- (NSSet)components;
- (NSString)description;
- (PBFApplicationStateNode)initWithDescription:(id)description;
- (void)_componentsDidUpdate;
- (void)addStateObserver:(id)observer;
- (void)cancel;
- (void)dealloc;
- (void)removeStateObserver:(id)observer;
- (void)setComponents:(id)components;
- (void)updateByAddingComponent:(id)component;
- (void)updateByRemovingComponent:(id)component;
@end

@implementation PBFApplicationStateNode

- (PBFApplicationStateNode)initWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [PBFApplicationStateNode initWithDescription:a2];
  }

  v6 = descriptionCopy;
  v17.receiver = self;
  v17.super_class = PBFApplicationStateNode;
  v7 = [(PBFApplicationStateNode *)&v17 init];
  if (v7)
  {
    v8 = [v6 copy];
    stateDescription = v7->_stateDescription;
    v7->_stateDescription = v8;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = uUID;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_components copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setComponents:(id)components
{
  v17 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSSet *)selfCopy->_components isEqualToSet:componentsCopy])
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = [componentsCopy copy];
    components = selfCopy->_components;
    selfCopy->_components = v6;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v8 = componentsCopy;
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

          [*(*(&v12 + 1) + 8 * v11++) setDelegate:{selfCopy, v12}];
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    objc_sync_exit(selfCopy);
    [(PBFApplicationStateNode *)selfCopy _componentsDidUpdate];
  }
}

- (void)updateByAddingComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    v12 = componentCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSSet *)selfCopy->_components containsObject:v12])
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      [v12 setDelegate:selfCopy];
      v6 = [(NSSet *)selfCopy->_components mutableCopy];
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
      components = selfCopy->_components;
      selfCopy->_components = v10;

      objc_sync_exit(selfCopy);
      [(PBFApplicationStateNode *)selfCopy _componentsDidUpdate];
    }

    componentCopy = v12;
  }
}

- (void)updateByRemovingComponent:(id)component
{
  componentCopy = component;
  if (componentCopy)
  {
    v9 = componentCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSSet *)selfCopy->_components containsObject:v9])
    {
      [v9 setDelegate:0];
      v6 = [(NSSet *)selfCopy->_components mutableCopy];
      [v6 removeObject:v9];
      v7 = [v6 copy];
      components = selfCopy->_components;
      selfCopy->_components = v7;

      objc_sync_exit(selfCopy);
      [(PBFApplicationStateNode *)selfCopy _componentsDidUpdate];
    }

    else
    {
      objc_sync_exit(selfCopy);
    }

    componentCopy = v9;
  }
}

- (void)addStateObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)removeStateObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  objc_sync_exit(v4);
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_stateDescription withName:@"description"];
  components = [(PBFApplicationStateNode *)self components];
  allObjects = [components allObjects];
  v6 = [v3 appendObject:allObjects withName:@"components" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_observers;
  objc_sync_enter(v3);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  objc_sync_exit(v3);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = allObjects;
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