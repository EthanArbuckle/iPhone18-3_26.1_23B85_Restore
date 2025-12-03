@interface SBCaptureApplicationLaunchAssertionManager
+ (SBCaptureApplicationLaunchAssertionManager)sharedInstance;
- (SBCaptureApplicationLaunchAssertionManager)init;
- (id)acquireCaptureApplicationLaunchAssertionForBundleIdentifier:(id)identifier reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_clearAssertionTimerForBundleIdentifier:(id)identifier;
- (void)_notifyObserversAssertionDidUpdateForBundleIdentifier:(id)identifier;
- (void)_queue_addObserver:(id)observer;
- (void)_queue_removeObserver:(id)observer;
- (void)_startAssertionTimerForBundleIdentifier:(id)identifier;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SBCaptureApplicationLaunchAssertionManager

+ (SBCaptureApplicationLaunchAssertionManager)sharedInstance
{
  if (sharedInstance_onceToken_49 != -1)
  {
    +[SBCaptureApplicationLaunchAssertionManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_25;

  return v3;
}

void __60__SBCaptureApplicationLaunchAssertionManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance_25;
  sharedInstance___sharedInstance_25 = v0;
}

- (SBCaptureApplicationLaunchAssertionManager)init
{
  v10.receiver = self;
  v10.super_class = SBCaptureApplicationLaunchAssertionManager;
  v2 = [(SBCaptureApplicationLaunchAssertionManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    launchAssertionsPerBundleIdentifier = v2->_launchAssertionsPerBundleIdentifier;
    v2->_launchAssertionsPerBundleIdentifier = v3;

    v5 = objc_opt_new();
    assertionTimersByBundleIdentifier = v2->_assertionTimersByBundleIdentifier;
    v2->_assertionTimersByBundleIdentifier = v5;

    Serial = BSDispatchQueueCreateSerial();
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = Serial;
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_assertionTimersByBundleIdentifier allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_assertionTimersByBundleIdentifier removeAllObjects];
  observerQueue = self->_observerQueue;
  self->_observerQueue = 0;

  v9.receiver = self;
  v9.super_class = SBCaptureApplicationLaunchAssertionManager;
  [(SBCaptureApplicationLaunchAssertionManager *)&v9 dealloc];
}

- (id)acquireCaptureApplicationLaunchAssertionForBundleIdentifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [SBCaptureApplicationLaunchAssertion alloc];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __113__SBCaptureApplicationLaunchAssertionManager_acquireCaptureApplicationLaunchAssertionForBundleIdentifier_reason___block_invoke;
  v16 = &unk_2783C03D8;
  objc_copyWeak(&v17, &location);
  v10 = [(SBCaptureApplicationLaunchAssertion *)v9 initWithIdentifier:uUID bundleIdentifier:identifierCopy reason:reasonCopy invalidationHandler:&v13];
  v11 = [(SBCaptureApplicationLaunchAssertionManager *)self launchAssertionsPerBundleIdentifier:v13];
  [v11 setObject:v10 forKey:identifierCopy];

  [(SBCaptureApplicationLaunchAssertionManager *)self _notifyObserversAssertionDidUpdateForBundleIdentifier:identifierCopy];
  [(SBCaptureApplicationLaunchAssertionManager *)self _startAssertionTimerForBundleIdentifier:identifierCopy];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);

  return v10;
}

void __113__SBCaptureApplicationLaunchAssertionManager_acquireCaptureApplicationLaunchAssertionForBundleIdentifier_reason___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 bundleIdentifier];
    v6 = SBLogCaptureApplication();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Capture application launch assertion for %@ is invalidated", &v8, 0xCu);
    }

    v7 = [WeakRetained launchAssertionsPerBundleIdentifier];
    [v7 removeObjectForKey:v5];

    [WeakRetained _notifyObserversAssertionDidUpdateForBundleIdentifier:v5];
    [WeakRetained _clearAssertionTimerForBundleIdentifier:v5];
  }
}

- (void)_startAssertionTimerForBundleIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = SBLogCaptureApplication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = identifierCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling an assertion lifecycle timer for capture application launch (%@)", buf, 0xCu);
  }

  [(SBCaptureApplicationLaunchAssertionManager *)self _clearAssertionTimerForBundleIdentifier:identifierCopy];
  objc_initWeak(buf, self);
  v6 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:identifierCopy];
  [(NSMutableDictionary *)self->_assertionTimersByBundleIdentifier setObject:v6 forKey:identifierCopy];
  v7 = +[SBCaptureApplicationCenter captureApplicationSettings];
  [v7 launchAssertionTimeOutDurationInSeconds];
  v9 = v8;
  v10 = MEMORY[0x277D85CD0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__SBCaptureApplicationLaunchAssertionManager__startAssertionTimerForBundleIdentifier___block_invoke;
  v11[3] = &unk_2783A9918;
  objc_copyWeak(&v12, buf);
  [v6 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v11 queue:v9 handler:0.05];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __86__SBCaptureApplicationLaunchAssertionManager__startAssertionTimerForBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = SBLogCaptureApplication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 identifier];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Launch assertion timed out for capture application launch (%@), invalidating assertion", &v11, 0xCu);
  }

  v7 = [v3 identifier];
  v8 = [WeakRetained assertionForBundleIdentifier:v7];
  v9 = v8;
  if (v8)
  {
    [v8 invalidate];
  }

  else
  {
    v10 = SBLogCaptureApplication();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__SBCaptureApplicationLaunchAssertionManager__startAssertionTimerForBundleIdentifier___block_invoke_cold_1(v7, v10);
    }
  }
}

- (void)_clearAssertionTimerForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_assertionTimersByBundleIdentifier objectForKey:identifierCopy];
  v6 = v5;
  if (v5)
  {
    [v5 invalidate];
    [(NSMutableDictionary *)self->_assertionTimersByBundleIdentifier removeObjectForKey:identifierCopy];
  }

  else
  {
    v7 = SBLogCaptureApplication();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBCaptureApplicationLaunchAssertionManager *)identifierCopy _clearAssertionTimerForBundleIdentifier:v7];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBCaptureApplicationLaunchAssertionManager_addObserver___block_invoke;
  block[3] = &unk_2783A9CE8;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__SBCaptureApplicationLaunchAssertionManager_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_addObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  objc_initWeak(&location, self);
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SBCaptureApplicationLaunchAssertionManager_removeObserver___block_invoke;
  block[3] = &unk_2783A9CE8;
  objc_copyWeak(&v9, &location);
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__SBCaptureApplicationLaunchAssertionManager_removeObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_removeObserver:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_queue_addObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssert();
  v4 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)_queue_removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssert();
  v4 = observerCopy;
  if (observerCopy)
  {
    v5 = [(NSHashTable *)self->_observers count];
    v4 = observerCopy;
    if (v5)
    {
      v6 = [(NSHashTable *)self->_observers containsObject:observerCopy];
      v4 = observerCopy;
      if (v6)
      {
        [(NSHashTable *)self->_observers removeObject:observerCopy];
        v4 = observerCopy;
      }
    }
  }
}

- (void)_notifyObserversAssertionDidUpdateForBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  allObjects = [v5 allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 captureApplicationLaunchAssertionManager:self didUpdateAssertionForBundleIdentifier:identifierCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBCaptureApplicationLaunchAssertionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SBCaptureApplicationLaunchAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __84__SBCaptureApplicationLaunchAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) launchAssertionsPerBundleIdentifier];
  v2 = [v1 appendObject:v3 withName:@"launchAssertionsPerBundleIdentifier"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBCaptureApplicationLaunchAssertionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

void __86__SBCaptureApplicationLaunchAssertionManager__startAssertionTimerForBundleIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Launch assertion for %@ can't be found to invalidate", &v2, 0xCu);
}

- (void)_clearAssertionTimerForBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Can't clear the launch assertion timer for %@, no timer found", &v2, 0xCu);
}

@end