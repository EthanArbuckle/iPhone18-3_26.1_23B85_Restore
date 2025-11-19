@interface SCLSuppressSchoolModeAssertionManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SCLSuppressSchoolModeAssertionManager)initWithTargetQueue:(id)a3;
- (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3;
- (unint64_t)status;
- (void)addObserver:(id)a3;
- (void)clientDidAcquireAssertion:(id)a3;
- (void)clientDidInvalidate:(id)a3;
- (void)dealloc;
- (void)performObserverBlock:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SCLSuppressSchoolModeAssertionManager

- (SCLSuppressSchoolModeAssertionManager)initWithTargetQueue:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = SCLSuppressSchoolModeAssertionManager;
  v6 = [(SCLSuppressSchoolModeAssertionManager *)&v21 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    clients = v6->_clients;
    v6->_clients = v7;

    v9 = [MEMORY[0x277CBEB58] set];
    acquiredClients = v6->_acquiredClients;
    v6->_acquiredClients = v9;

    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v11;

    v13 = dispatch_queue_create_with_target_V2("SCLSuppressSchoolModeAssertionManager", 0, v5);
    queue = v6->_queue;
    v6->_queue = v13;

    objc_storeStrong(&v6->_targetQueue, a3);
    v15 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:0x2876232C8];
    listener = v6->_listener;
    v6->_listener = v15;

    [(NSXPCListener *)v6->_listener _setQueue:v6->_queue];
    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_initWeak(&location, v6);
    v17 = v6->_queue;
    objc_copyWeak(&v19, &location);
    v6->_stateHandle = os_state_add_handler();
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v6;
}

uint64_t __61__SCLSuppressSchoolModeAssertionManager_initWithTargetQueue___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _stateDataWithHints:a2];

  return v4;
}

- (void)dealloc
{
  stateHandle = self->_stateHandle;
  os_state_remove_handler();
  [(NSXPCListener *)self->_listener invalidate];
  v4.receiver = self;
  v4.super_class = SCLSuppressSchoolModeAssertionManager;
  [(SCLSuppressSchoolModeAssertionManager *)&v4 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [[SCLSuppressSchoolModeAssertionClient alloc] initWithConnection:v5];
  [(SCLSuppressSchoolModeAssertionClient *)v6 setDelegate:self];
  v7 = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  [v7 addObject:v6];

  v8 = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  [v5 _setQueue:v8];

  [v5 resume];
  return 1;
}

- (void)clientDidAcquireAssertion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v7 = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  [v7 addObject:v4];

  v8 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v9 = scl_framework_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Acquired suppression assertion for %@", buf, 0xCu);
  }

  if (v6 != v8)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__SCLSuppressSchoolModeAssertionManager_clientDidAcquireAssertion___block_invoke;
    v11[3] = &unk_279B6CB30;
    v11[4] = self;
    v11[5] = v8;
    [(SCLSuppressSchoolModeAssertionManager *)self performObserverBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clientDidInvalidate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v7 = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  [v7 removeObject:v4];

  v8 = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  [v8 removeObject:v4];

  v9 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v10 = scl_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_264829000, v10, OS_LOG_TYPE_DEFAULT, "Relinquished suppression assertion for %@", buf, 0xCu);
  }

  if (v6 != v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SCLSuppressSchoolModeAssertionManager_clientDidInvalidate___block_invoke;
    v12[3] = &unk_279B6CB30;
    v12[4] = self;
    v12[5] = v9;
    [(SCLSuppressSchoolModeAssertionManager *)self performObserverBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)status
{
  v3 = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  [v6 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  [v6 removeObject:v4];
}

- (void)performObserverBlock:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  v7 = [v6 allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v4[2](v4, *(*(&v14 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)a3
{
  v4 = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v6 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v7 = @"active";
  if (v6 != 1)
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"inactive";
  }

  v9 = [v5 appendObject:v8 withName:@"status"];
  v10 = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  v11 = [v10 allObjects];
  [v5 appendArraySection:v11 withName:@"clients" skipIfEmpty:0];

  v12 = [v5 build];
  v13 = SCLSStateDataWithTitleDescriptionAndHints(@"SCLSuppressSchoolModeAssertionManager", v12);

  return v13;
}

@end