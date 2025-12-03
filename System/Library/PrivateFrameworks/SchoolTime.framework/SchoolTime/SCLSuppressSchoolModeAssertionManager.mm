@interface SCLSuppressSchoolModeAssertionManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SCLSuppressSchoolModeAssertionManager)initWithTargetQueue:(id)queue;
- (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)hints;
- (unint64_t)status;
- (void)addObserver:(id)observer;
- (void)clientDidAcquireAssertion:(id)assertion;
- (void)clientDidInvalidate:(id)invalidate;
- (void)dealloc;
- (void)performObserverBlock:(id)block;
- (void)removeObserver:(id)observer;
@end

@implementation SCLSuppressSchoolModeAssertionManager

- (SCLSuppressSchoolModeAssertionManager)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
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

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    v13 = dispatch_queue_create_with_target_V2("SCLSuppressSchoolModeAssertionManager", 0, queueCopy);
    queue = v6->_queue;
    v6->_queue = v13;

    objc_storeStrong(&v6->_targetQueue, queue);
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [[SCLSuppressSchoolModeAssertionClient alloc] initWithConnection:connectionCopy];
  [(SCLSuppressSchoolModeAssertionClient *)v6 setDelegate:self];
  clients = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  [clients addObject:v6];

  queue = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  [connectionCopy _setQueue:queue];

  [connectionCopy resume];
  return 1;
}

- (void)clientDidAcquireAssertion:(id)assertion
{
  v14 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  queue = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  status = [(SCLSuppressSchoolModeAssertionManager *)self status];
  acquiredClients = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  [acquiredClients addObject:assertionCopy];

  status2 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v9 = scl_framework_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = assertionCopy;
    _os_log_impl(&dword_264829000, v9, OS_LOG_TYPE_DEFAULT, "Acquired suppression assertion for %@", buf, 0xCu);
  }

  if (status != status2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__SCLSuppressSchoolModeAssertionManager_clientDidAcquireAssertion___block_invoke;
    v11[3] = &unk_279B6CB30;
    v11[4] = self;
    v11[5] = status2;
    [(SCLSuppressSchoolModeAssertionManager *)self performObserverBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)clientDidInvalidate:(id)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  queue = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  status = [(SCLSuppressSchoolModeAssertionManager *)self status];
  acquiredClients = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  [acquiredClients removeObject:invalidateCopy];

  clients = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  [clients removeObject:invalidateCopy];

  status2 = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v10 = scl_framework_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = invalidateCopy;
    _os_log_impl(&dword_264829000, v10, OS_LOG_TYPE_DEFAULT, "Relinquished suppression assertion for %@", buf, 0xCu);
  }

  if (status != status2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SCLSuppressSchoolModeAssertionManager_clientDidInvalidate___block_invoke;
    v12[3] = &unk_279B6CB30;
    v12[4] = self;
    v12[5] = status2;
    [(SCLSuppressSchoolModeAssertionManager *)self performObserverBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)status
{
  targetQueue = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  acquiredClients = [(SCLSuppressSchoolModeAssertionManager *)self acquiredClients];
  v5 = [acquiredClients count] != 0;

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  targetQueue = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  observers = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  targetQueue = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  observers = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  [observers removeObject:observerCopy];
}

- (void)performObserverBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  targetQueue = [(SCLSuppressSchoolModeAssertionManager *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  observers = [(SCLSuppressSchoolModeAssertionManager *)self observers];
  allObjects = [observers allObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = allObjects;
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

        blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)_stateDataWithHints:(os_state_hints_s *)hints
{
  queue = [(SCLSuppressSchoolModeAssertionManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = [MEMORY[0x277CF0C00] builderWithObject:self];
  status = [(SCLSuppressSchoolModeAssertionManager *)self status];
  v7 = @"active";
  if (status != 1)
  {
    v7 = 0;
  }

  if (status)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"inactive";
  }

  v9 = [v5 appendObject:v8 withName:@"status"];
  clients = [(SCLSuppressSchoolModeAssertionManager *)self clients];
  allObjects = [clients allObjects];
  [v5 appendArraySection:allObjects withName:@"clients" skipIfEmpty:0];

  build = [v5 build];
  v13 = SCLSStateDataWithTitleDescriptionAndHints(@"SCLSuppressSchoolModeAssertionManager", build);

  return v13;
}

@end