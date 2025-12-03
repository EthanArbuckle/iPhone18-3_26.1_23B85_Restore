@interface PBFApplicationStateMonitor
- (BOOL)isForeground;
- (NSOrderedSet)applicationStateStack;
- (PBFApplicationStateContext)currentApplicationContext;
- (PBFApplicationStateMonitor)init;
- (void)_fireStateTrackingObserverSelector:(SEL)selector block:(id)block;
- (void)_updateApplicationContextIfNeeded;
- (void)addMonitorObserver:(id)observer;
- (void)invalidate;
- (void)pushState:(id)state;
- (void)removeMonitorObserver:(id)observer;
- (void)setCurrentApplicationContext:(id)context;
- (void)state:(id)state didUpdateComponents:(id)components;
- (void)stateWasInvalidated:(id)invalidated;
@end

@implementation PBFApplicationStateMonitor

- (PBFApplicationStateMonitor)init
{
  v16.receiver = self;
  v16.super_class = PBFApplicationStateMonitor;
  v2 = [(PBFApplicationStateMonitor *)&v16 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v2->_invalidationFlag;
    v2->_invalidationFlag = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateTrackingObservers = v2->_stateTrackingObservers;
    v2->_stateTrackingObservers = weakObjectsHashTable;

    v7 = [[PBFApplicationStateNode alloc] initWithDescription:@"Application Node"];
    rootNode = v2->_rootNode;
    v2->_rootNode = v7;

    stateDescription = [(PBFApplicationStateNode *)v2->_rootNode stateDescription];
    v10 = [MEMORY[0x277CBEB98] set];
    v11 = [PBFApplicationStateContext contextWithForegroundStateDescription:stateDescription posterUUIDs:v10];
    currentApplicationContext = v2->_currentApplicationContext;
    v2->_currentApplicationContext = v11;

    v13 = [MEMORY[0x277CBEB40] orderedSetWithObject:v2->_rootNode];
    applicationStateStack = v2->_applicationStateStack;
    v2->_applicationStateStack = v13;
  }

  return v2;
}

- (BOOL)isForeground
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableOrderedSet *)selfCopy->_applicationStateStack count]> 1;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSOrderedSet)applicationStateStack
{
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v3 = objc_opt_new();
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v3 = [(NSMutableOrderedSet *)selfCopy->_applicationStateStack copy];
    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (PBFApplicationStateContext)currentApplicationContext
{
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v3 = selfCopy->_currentApplicationContext;
    objc_sync_exit(selfCopy);
  }

  return v3;
}

- (void)setCurrentApplicationContext:(id)context
{
  v12 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(PBFApplicationStateContext *)selfCopy->_currentApplicationContext isEqual:contextCopy])
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      objc_storeStrong(&selfCopy->_currentApplicationContext, context);
      objc_sync_exit(selfCopy);

      v7 = PBFLogApplicationState();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = contextCopy;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Updating currentApplicationContext: %{public}@", buf, 0xCu);
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__PBFApplicationStateMonitor_setCurrentApplicationContext___block_invoke;
      v8[3] = &unk_2782C9B20;
      v8[4] = selfCopy;
      v9 = contextCopy;
      [(PBFApplicationStateMonitor *)selfCopy _fireStateTrackingObserverSelector:sel_applicationStateMonitor_contextDidUpdate_ block:v8];
    }
  }
}

- (void)pushState:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (stateCopy && (getFlag & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (([(NSMutableOrderedSet *)selfCopy->_applicationStateStack containsObject:stateCopy]& 1) != 0)
    {
      objc_sync_exit(selfCopy);
    }

    else
    {
      v7 = PBFLogApplicationState();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        lastObject = [(NSMutableOrderedSet *)selfCopy->_applicationStateStack lastObject];
        stateDescription = [lastObject stateDescription];
        *buf = 138543618;
        v13 = stateCopy;
        v14 = 2114;
        v15 = stateDescription;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Pushing state %{public}@ foreground; moving %{public}@ background", buf, 0x16u);
      }

      [stateCopy addStateObserver:selfCopy];
      [(NSMutableOrderedSet *)selfCopy->_applicationStateStack addObject:stateCopy];
      [(PBFApplicationStateMonitor *)selfCopy _updateApplicationContextIfNeeded];
      objc_sync_exit(selfCopy);

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__PBFApplicationStateMonitor_pushState___block_invoke;
      v10[3] = &unk_2782C9B20;
      v10[4] = selfCopy;
      v11 = stateCopy;
      [(PBFApplicationStateMonitor *)selfCopy _fireStateTrackingObserverSelector:sel_applicationStateMonitor_didPushNewState_ block:v10];
    }
  }
}

- (void)addMonitorObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_stateTrackingObservers addObject:observerCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)removeMonitorObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_stateTrackingObservers removeObject:observerCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_stateTrackingObservers removeAllObjects];
    stateTrackingObservers = selfCopy->_stateTrackingObservers;
    selfCopy->_stateTrackingObservers = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableOrderedSet *)selfCopy->_applicationStateStack copy];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v8++) cancel];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(NSMutableOrderedSet *)selfCopy->_applicationStateStack removeAllObjects];
    applicationStateStack = selfCopy->_applicationStateStack;
    selfCopy->_applicationStateStack = 0;

    objc_sync_exit(selfCopy);
  }
}

- (void)state:(id)state didUpdateComponents:(id)components
{
  stateCopy = state;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    [(PBFApplicationStateMonitor *)self _updateApplicationContextIfNeeded];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__PBFApplicationStateMonitor_state_didUpdateComponents___block_invoke;
    v6[3] = &unk_2782C9B20;
    v6[4] = self;
    v7 = stateCopy;
    [(PBFApplicationStateMonitor *)self _fireStateTrackingObserverSelector:sel_applicationStateMonitor_stateDidUpdate_ block:v6];
  }
}

- (void)stateWasInvalidated:(id)invalidated
{
  v15 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && self->_rootNode != invalidatedCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (([(NSMutableOrderedSet *)selfCopy->_applicationStateStack containsObject:invalidatedCopy]& 1) != 0)
    {
      [(NSMutableOrderedSet *)selfCopy->_applicationStateStack removeObject:invalidatedCopy];
      v6 = PBFLogApplicationState();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        lastObject = [(NSMutableOrderedSet *)selfCopy->_applicationStateStack lastObject];
        stateDescription = [lastObject stateDescription];
        *buf = 138543618;
        v12 = invalidatedCopy;
        v13 = 2114;
        v14 = stateDescription;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating state %{public}@ foreground; moving %{public}@ background", buf, 0x16u);
      }

      [(PBFApplicationStateMonitor *)selfCopy _updateApplicationContextIfNeeded];
      objc_sync_exit(selfCopy);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__PBFApplicationStateMonitor_stateWasInvalidated___block_invoke;
      v9[3] = &unk_2782C9B20;
      v9[4] = selfCopy;
      v10 = invalidatedCopy;
      [(PBFApplicationStateMonitor *)selfCopy _fireStateTrackingObserverSelector:sel_applicationStateMonitor_didPopState_ block:v9];
    }

    else
    {
      objc_sync_exit(selfCopy);
    }
  }
}

- (void)_updateApplicationContextIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    applicationStateStack = [(PBFApplicationStateMonitor *)self applicationStateStack];
    lastObject = [applicationStateStack lastObject];

    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    components = [lastObject components];
    v7 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(components);
          }

          posterUUID = [*(*(&v14 + 1) + 8 * v10) posterUUID];
          [v5 bs_safeAddObject:posterUUID];

          ++v10;
        }

        while (v8 != v10);
        v8 = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    stateDescription = [lastObject stateDescription];
    v13 = [PBFApplicationStateContext contextWithForegroundStateDescription:stateDescription posterUUIDs:v5];

    [(PBFApplicationStateMonitor *)self setCurrentApplicationContext:v13];
  }
}

- (void)_fireStateTrackingObserverSelector:(SEL)selector block:(id)block
{
  blockCopy = block;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allObjects = [(NSHashTable *)selfCopy->_stateTrackingObservers allObjects];
    objc_sync_exit(selfCopy);

    if ([allObjects count])
    {
      v10 = NSStringFromSelector(a2);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __71__PBFApplicationStateMonitor__fireStateTrackingObserverSelector_block___block_invoke;
      v11[3] = &unk_2782C9B48;
      v12 = allObjects;
      selectorCopy = selector;
      v13 = blockCopy;
      PBFDispatchAsyncWithString(v10, QOS_CLASS_USER_INITIATED, v11);
    }
  }
}

void __71__PBFApplicationStateMonitor__fireStateTrackingObserverSelector_block___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_respondsToSelector())
        {
          (*(*(a1 + 40) + 16))(*(a1 + 40));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end