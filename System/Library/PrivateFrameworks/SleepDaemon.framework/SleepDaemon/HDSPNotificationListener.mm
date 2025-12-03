@interface HDSPNotificationListener
- (HDSPEnvironment)environment;
- (HDSPNotificationListener)initWithEnvironment:(id)environment;
- (void)_handleNotificationWithName:(id)name completion:(id)completion;
- (void)_registerForStream:(id)stream;
- (void)_withLock:(id)lock;
- (void)addObserver:(id)observer;
- (void)registerForLaunchNotificationWithName:(const char *)name key:(id)key;
- (void)removeObserver:(id)observer;
- (void)startListening;
- (void)unregisterForLaunchNotificationWithName:(const char *)name key:(id)key;
@end

@implementation HDSPNotificationListener

- (HDSPNotificationListener)initWithEnvironment:(id)environment
{
  v23 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = HDSPNotificationListener;
  v5 = [(HDSPNotificationListener *)&v18 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v20 = v7;
      v21 = 2048;
      v22 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v11 = [v9 initWithCallbackScheduler:defaultCallbackScheduler];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    launchNotificationRegistrations = v5->_launchNotificationRegistrations;
    v5->_launchNotificationRegistrations = v13;

    v5->_launchNotificationRegistrationLock._os_unfair_lock_opaque = 0;
    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_launchNotificationRegistrationLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_launchNotificationRegistrationLock);
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(HKSPObserverSet *)self->_observers addObserver:?];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(HKSPObserverSet *)self->_observers removeObserver:?];
  }
}

- (void)registerForLaunchNotificationWithName:(const char *)name key:(id)key
{
  keyCopy = key;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__HDSPNotificationListener_registerForLaunchNotificationWithName_key___block_invoke;
  v12 = &unk_279C7D3C8;
  nameCopy = name;
  selfCopy = self;
  v7 = keyCopy;
  v14 = v7;
  v15 = &v17;
  [(HDSPNotificationListener *)self _withLock:&v9];
  if (*(v18 + 24) == 1)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "Notification", name);
    [@"com.apple.notifyd.matching" UTF8String];
    xpc_set_event();
  }

  _Block_object_dispose(&v17, 8);
}

void __70__HDSPNotificationListener_registerForLaunchNotificationWithName_key___block_invoke(void *a1)
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1[7]];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:?];
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    [*(a1[4] + 32) setObject:v2 forKeyedSubscript:v3];
  }

  [v2 addObject:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 count] == 1;
}

- (void)unregisterForLaunchNotificationWithName:(const char *)name key:(id)key
{
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __72__HDSPNotificationListener_unregisterForLaunchNotificationWithName_key___block_invoke;
  v11 = &unk_279C7D3C8;
  nameCopy = name;
  selfCopy = self;
  v7 = keyCopy;
  v13 = v7;
  v14 = &v16;
  [(HDSPNotificationListener *)self _withLock:&v8];
  if (*(v17 + 24) == 1)
  {
    [@"com.apple.notifyd.matching" UTF8String];
    xpc_set_event();
  }

  _Block_object_dispose(&v16, 8);
}

void __72__HDSPNotificationListener_unregisterForLaunchNotificationWithName_key___block_invoke(void *a1)
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1[7]];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:v3];
  [v2 removeObject:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 count] == 0;
}

- (void)startListening
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] startListening", &v6, 0xCu);
  }

  [(HDSPNotificationListener *)self _registerForStream:@"com.apple.distnoted.matching"];
  [(HDSPNotificationListener *)self _registerForStream:@"com.apple.notifyd.matching"];
  [(HDSPNotificationListener *)self _registerForStream:@"com.apple.alarm"];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_registerForStream:(id)stream
{
  streamCopy = stream;
  uTF8String = [stream UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__HDSPNotificationListener__registerForStream___block_invoke;
  handler[3] = &unk_279C7D3F0;
  handler[4] = self;
  xpc_set_event_stream_handler(uTF8String, MEMORY[0x277D85CD0], handler);
}

void __47__HDSPNotificationListener__registerForStream___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithCString:xpc_dictionary_get_string(xdict encoding:{*MEMORY[0x277D86430]), 1}];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v15 = objc_opt_class();
    v16 = 2114;
    v17 = v3;
    v6 = v15;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] received notification %{public}@, taking assertion", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v8 = [WeakRetained assertionManager];
  [v8 takeAssertionWithIdentifier:v3 type:2];

  v9 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__HDSPNotificationListener__registerForStream___block_invoke_306;
  v12[3] = &unk_279C7B2D0;
  v12[4] = v9;
  v13 = v3;
  v10 = v3;
  [v9 _handleNotificationWithName:v10 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HDSPNotificationListener__registerForStream___block_invoke_306(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v2 = [WeakRetained assertionManager];
  [v2 releaseAssertionWithIdentifier:*(a1 + 40)];
}

- (void)_handleNotificationWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HDSPNotificationListener__handleNotificationWithName_completion___block_invoke;
  v11[3] = &unk_279C7D468;
  v11[4] = self;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  [WeakRetained performWhenEnvironmentIsReady:v11];
}

void __67__HDSPNotificationListener__handleNotificationWithName_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HDSPNotificationListener__handleNotificationWithName_completion___block_invoke_2;
  v9[3] = &unk_279C7D418;
  v9[4] = v3;
  v10 = v2;
  v5 = [v4 enumerateObserversWithFutureBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HDSPNotificationListener__handleNotificationWithName_completion___block_invoke_3;
  v7[3] = &unk_279C7D440;
  v8 = *(a1 + 48);
  v6 = [v5 addCompletionBlock:v7];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end