@interface PBFApplicationStateMonitor
- (BOOL)isForeground;
- (NSOrderedSet)applicationStateStack;
- (PBFApplicationStateContext)currentApplicationContext;
- (PBFApplicationStateMonitor)init;
- (void)_fireStateTrackingObserverSelector:(SEL)a3 block:(id)a4;
- (void)_updateApplicationContextIfNeeded;
- (void)addMonitorObserver:(id)a3;
- (void)invalidate;
- (void)pushState:(id)a3;
- (void)removeMonitorObserver:(id)a3;
- (void)setCurrentApplicationContext:(id)a3;
- (void)state:(id)a3 didUpdateComponents:(id)a4;
- (void)stateWasInvalidated:(id)a3;
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

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateTrackingObservers = v2->_stateTrackingObservers;
    v2->_stateTrackingObservers = v5;

    v7 = [[PBFApplicationStateNode alloc] initWithDescription:@"Application Node"];
    rootNode = v2->_rootNode;
    v2->_rootNode = v7;

    v9 = [(PBFApplicationStateNode *)v2->_rootNode stateDescription];
    v10 = [MEMORY[0x277CBEB98] set];
    v11 = [PBFApplicationStateContext contextWithForegroundStateDescription:v9 posterUUIDs:v10];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableOrderedSet *)v2->_applicationStateStack count]> 1;
  objc_sync_exit(v2);

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
    v4 = self;
    objc_sync_enter(v4);
    v3 = [(NSMutableOrderedSet *)v4->_applicationStateStack copy];
    objc_sync_exit(v4);
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
    v4 = self;
    objc_sync_enter(v4);
    v3 = v4->_currentApplicationContext;
    objc_sync_exit(v4);
  }

  return v3;
}

- (void)setCurrentApplicationContext:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v6 = self;
    objc_sync_enter(v6);
    if ([(PBFApplicationStateContext *)v6->_currentApplicationContext isEqual:v5])
    {
      objc_sync_exit(v6);
    }

    else
    {
      objc_storeStrong(&v6->_currentApplicationContext, a3);
      objc_sync_exit(v6);

      v7 = PBFLogApplicationState();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Updating currentApplicationContext: %{public}@", buf, 0xCu);
      }

      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__PBFApplicationStateMonitor_setCurrentApplicationContext___block_invoke;
      v8[3] = &unk_2782C9B20;
      v8[4] = v6;
      v9 = v5;
      [(PBFApplicationStateMonitor *)v6 _fireStateTrackingObserverSelector:sel_applicationStateMonitor_contextDidUpdate_ block:v8];
    }
  }
}

- (void)pushState:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (v4 && (v5 & 1) == 0)
  {
    v6 = self;
    objc_sync_enter(v6);
    if (([(NSMutableOrderedSet *)v6->_applicationStateStack containsObject:v4]& 1) != 0)
    {
      objc_sync_exit(v6);
    }

    else
    {
      v7 = PBFLogApplicationState();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(NSMutableOrderedSet *)v6->_applicationStateStack lastObject];
        v9 = [v8 stateDescription];
        *buf = 138543618;
        v13 = v4;
        v14 = 2114;
        v15 = v9;
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "Pushing state %{public}@ foreground; moving %{public}@ background", buf, 0x16u);
      }

      [v4 addStateObserver:v6];
      [(NSMutableOrderedSet *)v6->_applicationStateStack addObject:v4];
      [(PBFApplicationStateMonitor *)v6 _updateApplicationContextIfNeeded];
      objc_sync_exit(v6);

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __40__PBFApplicationStateMonitor_pushState___block_invoke;
      v10[3] = &unk_2782C9B20;
      v10[4] = v6;
      v11 = v4;
      [(PBFApplicationStateMonitor *)v6 _fireStateTrackingObserverSelector:sel_applicationStateMonitor_didPushNewState_ block:v10];
    }
  }
}

- (void)addMonitorObserver:(id)a3
{
  v5 = a3;
  if (v5 && ([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self;
    objc_sync_enter(v4);
    [(NSHashTable *)v4->_stateTrackingObservers addObject:v5];
    objc_sync_exit(v4);
  }
}

- (void)removeMonitorObserver:(id)a3
{
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self;
    objc_sync_enter(v4);
    [(NSHashTable *)v4->_stateTrackingObservers removeObject:v5];
    objc_sync_exit(v4);
  }
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    v3 = self;
    objc_sync_enter(v3);
    [(NSHashTable *)v3->_stateTrackingObservers removeAllObjects];
    stateTrackingObservers = v3->_stateTrackingObservers;
    v3->_stateTrackingObservers = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [(NSMutableOrderedSet *)v3->_applicationStateStack copy];
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

    [(NSMutableOrderedSet *)v3->_applicationStateStack removeAllObjects];
    applicationStateStack = v3->_applicationStateStack;
    v3->_applicationStateStack = 0;

    objc_sync_exit(v3);
  }
}

- (void)state:(id)a3 didUpdateComponents:(id)a4
{
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    [(PBFApplicationStateMonitor *)self _updateApplicationContextIfNeeded];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__PBFApplicationStateMonitor_state_didUpdateComponents___block_invoke;
    v6[3] = &unk_2782C9B20;
    v6[4] = self;
    v7 = v5;
    [(PBFApplicationStateMonitor *)self _fireStateTrackingObserverSelector:sel_applicationStateMonitor_stateDidUpdate_ block:v6];
  }
}

- (void)stateWasInvalidated:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0 && self->_rootNode != v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if (([(NSMutableOrderedSet *)v5->_applicationStateStack containsObject:v4]& 1) != 0)
    {
      [(NSMutableOrderedSet *)v5->_applicationStateStack removeObject:v4];
      v6 = PBFLogApplicationState();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(NSMutableOrderedSet *)v5->_applicationStateStack lastObject];
        v8 = [v7 stateDescription];
        *buf = 138543618;
        v12 = v4;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating state %{public}@ foreground; moving %{public}@ background", buf, 0x16u);
      }

      [(PBFApplicationStateMonitor *)v5 _updateApplicationContextIfNeeded];
      objc_sync_exit(v5);

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__PBFApplicationStateMonitor_stateWasInvalidated___block_invoke;
      v9[3] = &unk_2782C9B20;
      v9[4] = v5;
      v10 = v4;
      [(PBFApplicationStateMonitor *)v5 _fireStateTrackingObserverSelector:sel_applicationStateMonitor_didPopState_ block:v9];
    }

    else
    {
      objc_sync_exit(v5);
    }
  }
}

- (void)_updateApplicationContextIfNeeded
{
  v19 = *MEMORY[0x277D85DE8];
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v3 = [(PBFApplicationStateMonitor *)self applicationStateStack];
    v4 = [v3 lastObject];

    v5 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 components];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) posterUUID];
          [v5 bs_safeAddObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v4 stateDescription];
    v13 = [PBFApplicationStateContext contextWithForegroundStateDescription:v12 posterUUIDs:v5];

    [(PBFApplicationStateMonitor *)self setCurrentApplicationContext:v13];
  }
}

- (void)_fireStateTrackingObserverSelector:(SEL)a3 block:(id)a4
{
  v7 = a4;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSHashTable *)v8->_stateTrackingObservers allObjects];
    objc_sync_exit(v8);

    if ([v9 count])
    {
      v10 = NSStringFromSelector(a2);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __71__PBFApplicationStateMonitor__fireStateTrackingObserverSelector_block___block_invoke;
      v11[3] = &unk_2782C9B48;
      v12 = v9;
      v14 = a3;
      v13 = v7;
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