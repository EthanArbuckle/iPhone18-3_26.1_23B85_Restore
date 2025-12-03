@interface SBSPhysicalButtonTargetMonitor
- (SBSPhysicalButtonTargetMonitor)init;
- (id)startObservingPresenceOfPhysicalButtonTargets:(id)targets;
- (void)_addObserver:(id)observer;
- (void)_notifyObserversOfPresenceOfPhysicalButtonTargets:(unint64_t)targets;
- (void)_removeObserver:(id)observer;
- (void)dealloc;
@end

@implementation SBSPhysicalButtonTargetMonitor

- (SBSPhysicalButtonTargetMonitor)init
{
  v7.receiver = self;
  v7.super_class = SBSPhysicalButtonTargetMonitor;
  v2 = [(SBSPhysicalButtonTargetMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x1E695DF70] array];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = array;
  }

  return v3;
}

- (id)startObservingPresenceOfPhysicalButtonTargets:(id)targets
{
  targetsCopy = targets;
  objc_initWeak(&location, self);
  v6 = [_SBSPhysicalButtonTargetMonitorObserver alloc];
  v7 = NSStringFromSelector(a2);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__SBSPhysicalButtonTargetMonitor_startObservingPresenceOfPhysicalButtonTargets___block_invoke;
  v13 = &unk_1E735F278;
  objc_copyWeak(&v14, &location);
  v8 = [(BSSimpleAssertion *)v6 initWithIdentifier:@"_SBSPhysicalButtonTargetMonitorObserver" forReason:v7 invalidationBlock:&v10];

  [(_SBSPhysicalButtonTargetMonitorObserver *)v8 setObservationHandler:targetsCopy, v10, v11, v12, v13];
  [(SBSPhysicalButtonTargetMonitor *)self _addObserver:v8];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __80__SBSPhysicalButtonTargetMonitor_startObservingPresenceOfPhysicalButtonTargets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeObserver:v3];
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Deallocated SBSPhysicalButtonTargetMonitor while observers were still attached."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBSPhysicalButtonTargetMonitor.m";
    v16 = 1024;
    v17 = 58;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  lock_targets = self->_lock_targets;
  if ([(NSMutableArray *)self->_lock_observers count])
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_alloc_init(SBSPhysicalButtonTargetMonitorClient);
    objc_storeStrong(&self->_lock_client, v6);
  }

  [(NSMutableArray *)self->_lock_observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__SBSPhysicalButtonTargetMonitor__addObserver___block_invoke;
    v8[3] = &unk_1E735F5F0;
    objc_copyWeak(&v9, &location);
    [(SBSPhysicalButtonTargetMonitorClient *)v6 startObservingPresenceOfPhysicalButtonTargets:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    observationHandler = [observerCopy observationHandler];
    observationHandler[2](observationHandler, lock_targets);
  }
}

void __47__SBSPhysicalButtonTargetMonitor__addObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfPresenceOfPhysicalButtonTargets:a2];
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_lock_observers removeObject:observerCopy];

  if ([(NSMutableArray *)self->_lock_observers count])
  {
    v6 = 0;
  }

  else
  {
    v6 = self->_lock_client;
    lock_client = self->_lock_client;
    self->_lock_client = 0;

    self->_lock_targets = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(SBSPhysicalButtonTargetMonitorClient *)v6 invalidate];
}

- (void)_notifyObserversOfPresenceOfPhysicalButtonTargets:(unint64_t)targets
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  self->_lock_targets = targets;
  v5 = self->_lock_observers;
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        observationHandler = [*(*(&v12 + 1) + 8 * v10) observationHandler];
        observationHandler[2](observationHandler, targets);

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end