@interface HDSPSleepLockScreenAssertionManager
- (BOOL)hasLockScreenConnection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (HDSPEnvironment)environment;
- (HDSPSleepLockScreenAssertionManager)initWithEnvironment:(id)environment;
- (HDSPSleepLockScreenAssertionManagerDelegate)delegate;
- (NSXPCConnection)connection;
- (void)_withLock:(id)lock;
- (void)connect;
- (void)didDismissWithReason:(int64_t)reason;
- (void)invalidateAssertion;
- (void)sendLockScreenState:(int64_t)state userInfo:(id)info;
- (void)setConnection:(id)connection;
- (void)takeAssertionIfNeeded;
@end

@implementation HDSPSleepLockScreenAssertionManager

- (HDSPSleepLockScreenAssertionManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v9.receiver = self;
  v9.super_class = HDSPSleepLockScreenAssertionManager;
  v5 = [(HDSPSleepLockScreenAssertionManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v6->_connectionLock._os_unfair_lock_opaque = 0;
    v7 = v6;
  }

  return v6;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_connectionLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_connectionLock);
}

- (void)takeAssertionIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  lockScreenAssertion = self->_lockScreenAssertion;
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lockScreenAssertion)
  {
    if (v5)
    {
      *buf = 138543362;
      v22 = objc_opt_class();
      v6 = v22;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] lock screen assertion already taken", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 138543362;
      v22 = objc_opt_class();
      v7 = v22;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] taking lock screen assertion", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    assertionManager = [WeakRetained assertionManager];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [assertionManager takeIndefiniteAssertionWithIdentifier:v11 type:1];

    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSXPCListener *)anonymousListener setDelegate:self];
    [(NSXPCListener *)anonymousListener resume];
    listener = self->_listener;
    self->_listener = anonymousListener;
    v14 = anonymousListener;

    v4 = [objc_alloc(MEMORY[0x277D66C18]) initWithServiceName:@"com.apple.SleepLockScreen" viewControllerClassName:@"SleepLockScreen.LockScreenViewController"];
    endpoint = [(NSXPCListener *)v14 endpoint];
    _endpoint = [endpoint _endpoint];
    [v4 setXpcEndpoint:_endpoint];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__HDSPSleepLockScreenAssertionManager_takeAssertionIfNeeded__block_invoke;
    v20[3] = &unk_279C7BFB0;
    v20[4] = self;
    v17 = [MEMORY[0x277D66B28] acquireRemoteContentAssertionWithDefinition:v4 errorHandler:v20];
    v18 = self->_lockScreenAssertion;
    self->_lockScreenAssertion = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __60__HDSPSleepLockScreenAssertionManager_takeAssertionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqual:*MEMORY[0x277CF0B18]])
  {
    v5 = [v3 code];

    if (v5 == 5)
    {
      v6 = HKSPLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v11 = 138543362;
        v12 = objc_opt_class();
        v8 = v12;
        _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidated lock screen assertion", &v11, 0xCu);
LABEL_9:

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v3;
    v8 = v12;
    _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] error acquiring lock screen assertion: %{public}@", &v11, 0x16u);
    goto LABEL_9;
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)sendLockScreenState:(int64_t)state userInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_lockScreenAssertion)
  {
    infoCopy = info;
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKSPSleepLockScreenState();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending state: %@", &v14, 0x16u);
    }

    connection = [(HDSPSleepLockScreenAssertionManager *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    [remoteObjectProxy setLockScreenState:state userInfo:infoCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertion
{
  v16 = *MEMORY[0x277D85DE8];
  lockScreenAssertion = self->_lockScreenAssertion;
  WeakRetained = HKSPLogForCategory();
  v5 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (lockScreenAssertion)
  {
    if (v5)
    {
      v14 = 138543362;
      v15 = objc_opt_class();
      v6 = v15;
      _os_log_impl(&dword_269B11000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating lock screen assertion", &v14, 0xCu);
    }

    [(SBSLockScreenRemoteContentAssertion *)self->_lockScreenAssertion invalidate];
    v7 = self->_lockScreenAssertion;
    self->_lockScreenAssertion = 0;

    [(NSXPCListener *)self->_listener invalidate];
    listener = self->_listener;
    self->_listener = 0;

    WeakRetained = objc_loadWeakRetained(&self->_environment);
    assertionManager = [WeakRetained assertionManager];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [assertionManager releaseAssertionWithIdentifier:v11];
  }

  else if (v5)
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    v12 = v15;
    _os_log_impl(&dword_269B11000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[%{public}@] lock screen assertion already invalidated", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] lock screen service did connect", &v7, 0xCu);
  }

  delegate = [(HDSPSleepLockScreenAssertionManager *)self delegate];
  [delegate lockScreenDidConnect];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didDismissWithReason:(int64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  if (reason > 4)
  {
    if (reason > 6)
    {
      if (reason == 7)
      {
        v3 = HKSPLogForCategory();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v7 = 138543362;
        v8 = objc_opt_class();
        v4 = v8;
        v5 = "[%{public}@] lock screen service did dismiss due to lock screen dismissal";
        goto LABEL_26;
      }

      if (reason != 8)
      {
        goto LABEL_29;
      }

      v3 = HKSPLogForCategory();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      v5 = "[%{public}@] lock screen service did dismiss due to tap";
    }

    else if (reason == 5)
    {
      v3 = HKSPLogForCategory();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      v5 = "[%{public}@] lock screen service did dismiss due to camera launch";
    }

    else
    {
      v3 = HKSPLogForCategory();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      v5 = "[%{public}@] lock screen service did dismiss due to assertion invalidation";
    }

LABEL_26:
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, v5, &v7, 0xCu);
    goto LABEL_27;
  }

  if (reason > 2)
  {
    if (reason == 3)
    {
      v3 = HKSPLogForCategory();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      v5 = "[%{public}@] lock screen service did dismiss due to home gesture";
    }

    else
    {
      v3 = HKSPLogForCategory();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      v5 = "[%{public}@] lock screen service did dismiss due to notification";
    }

    goto LABEL_26;
  }

  if (reason < 2)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_error_impl(&dword_269B11000, v3, OS_LOG_TYPE_ERROR, "[%{public}@] lock screen service did dismiss due to error", &v7, 0xCu);
LABEL_27:
    }

LABEL_28:

    goto LABEL_29;
  }

  if (reason == 2)
  {
    v3 = HKSPLogForCategory();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    v5 = "[%{public}@] lock screen service did dismiss due to dismiss button";
    goto LABEL_26;
  }

LABEL_29:
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287AB1470];
  [connectionCopy setRemoteObjectInterface:v8];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9EC50];
  [connectionCopy setExportedInterface:v9];
  [connectionCopy setExportedObject:self];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__HDSPSleepLockScreenAssertionManager_listener_shouldAcceptNewConnection___block_invoke;
  v18[3] = &unk_279C7B108;
  v18[4] = self;
  [connectionCopy setInterruptionHandler:v18];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __74__HDSPSleepLockScreenAssertionManager_listener_shouldAcceptNewConnection___block_invoke_310;
  v14 = &unk_279C7BFD8;
  selfCopy = self;
  objc_copyWeak(&v16, &location);
  [connectionCopy setInvalidationHandler:&v11];
  [connectionCopy resume];
  [(HDSPSleepLockScreenAssertionManager *)self setConnection:connectionCopy];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return 1;
}

void __74__HDSPSleepLockScreenAssertionManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] interruption handler", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __74__HDSPSleepLockScreenAssertionManager_listener_shouldAcceptNewConnection___block_invoke_310(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HKSPLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidation handler", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setConnection:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HDSPSleepLockScreenAssertionManager_setConnection___block_invoke;
  v6[3] = &unk_279C7B2D0;
  v6[4] = self;
  v7 = connectionCopy;
  v5 = connectionCopy;
  [(HDSPSleepLockScreenAssertionManager *)self _withLock:v6];
}

- (NSXPCConnection)connection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSPSleepLockScreenAssertionManager_connection__block_invoke;
  v4[3] = &unk_279C7B678;
  v4[4] = self;
  v4[5] = &v5;
  [(HDSPSleepLockScreenAssertionManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (BOOL)hasLockScreenConnection
{
  connection = [(HDSPSleepLockScreenAssertionManager *)self connection];
  v3 = connection != 0;

  return v3;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepLockScreenAssertionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end