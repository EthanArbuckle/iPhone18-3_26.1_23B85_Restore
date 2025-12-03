@interface PRGenericRangingSession
- (BOOL)startP2PRanging:(id)ranging error:(id *)error;
- (BOOL)stopP2PRanging:(id)ranging error:(id *)error;
- (PRGenericRangingSession)initWithDelegate:(id)delegate queue:(id)queue;
- (PRGenericRangingSessionDelegate)delegate;
- (id)remoteObject;
- (id)synchronousRemoteObject;
- (void)configureForP2PRanging:(id)ranging options:(id)options;
- (void)connectToDaemon;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidate;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)remoteDevice:(id)device didChangeState:(int64_t)state;
@end

@implementation PRGenericRangingSession

- (PRGenericRangingSession)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (!delegateCopy)
  {
    [PRGenericRangingSession initWithDelegate:a2 queue:self];
  }

  v15.receiver = self;
  v15.super_class = PRGenericRangingSession;
  v9 = [(PRRangingDevice *)&v15 init];
  if (v9)
  {
    v10 = os_log_create("com.apple.nearbyd", "client");
    logger = v9->_logger;
    v9->_logger = v10;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v12 = dispatch_queue_create("com.apple.nearbyd.daemonSession", 0);
    }

    sessionQueue = v9->_sessionQueue;
    v9->_sessionQueue = v12;

    [(PRGenericRangingSession *)v9 connectToDaemon];
  }

  return v9;
}

- (void)invalidate
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }
}

- (void)connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.ranging" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = PRMakeRangingClientXPCInterface();
  [(NSXPCConnection *)v5 setExportedInterface:v6];

  v7 = self->_connection;
  v8 = [[PRRangingClientExportedObject alloc] initWithRangingClient:self];
  [(NSXPCConnection *)v7 setExportedObject:v8];

  v9 = self->_connection;
  v10 = PRMakeRangingServerXPCInterface();
  [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

  [(NSXPCConnection *)self->_connection _setQueue:self->_sessionQueue];
  objc_initWeak(&location, self);
  v11 = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__PRGenericRangingSession_connectToDaemon__block_invoke;
  v18[3] = &unk_2788F3B38;
  objc_copyWeak(&v19, &location);
  [(NSXPCConnection *)v11 setInterruptionHandler:v18];
  v12 = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__PRGenericRangingSession_connectToDaemon__block_invoke_2;
  v16[3] = &unk_2788F3B38;
  objc_copyWeak(&v17, &location);
  [(NSXPCConnection *)v12 setInvalidationHandler:v16];
  [(NSXPCConnection *)self->_connection resume];
  remoteObject = [(PRGenericRangingSession *)self remoteObject];
  v15.receiver = self;
  v15.super_class = PRGenericRangingSession;
  clientInfo = [(PRRangingDevice *)&v15 clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __42__PRGenericRangingSession_connectToDaemon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInterruption];
}

void __42__PRGenericRangingSession_connectToDaemon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInvalidation];
}

- (void)handleInterruption
{
  v13 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInterrup.isa, a2);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was interrupted: %@", buf, 0xCu);
  }

  remoteObject = [(PRGenericRangingSession *)self remoteObject];
  v10.receiver = self;
  v10.super_class = PRGenericRangingSession;
  clientInfo = [(PRRangingDevice *)&v10 clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidation
{
  v10 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInvalida.isa, a2);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was invalidated: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)remoteObject
{
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PRGenericRangingSession_remoteObject__block_invoke;
  v5[3] = &unk_2788F3B60;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __39__PRGenericRangingSession_remoteObject__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v3);
  v4 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_230EB5000, v4, OS_LOG_TYPE_DEFAULT, "Error getting remote object proxy %@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)synchronousRemoteObject
{
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PRGenericRangingSession_synchronousRemoteObject__block_invoke;
  v5[3] = &unk_2788F3B60;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __50__PRGenericRangingSession_synchronousRemoteObject__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  NSLog(&cfstr_Synchronousrem.isa, v3);
  v4 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_230EB5000, v4, OS_LOG_TYPE_DEFAULT, "Error getting synchronous remote object proxy %@", buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFailWithError:errorCopy];
}

- (void)didReceiveNewSolutions:(id)solutions
{
  solutionsCopy = solutions;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didReceiveNewSolutions:solutionsCopy];
  }
}

- (void)remoteDevice:(id)device didChangeState:(int64_t)state
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteDevice:deviceCopy didChangeState:state];
  }
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained rangingRequestDidUpdateStatus:status];
  }
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained rangingServiceDidUpdateState:state cause:cause];
  }
}

- (void)configureForP2PRanging:(id)ranging options:(id)options
{
  rangingCopy = ranging;
  optionsCopy = options;
  objc_initWeak(&location, self);
  remoteObject = [(PRGenericRangingSession *)self remoteObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__PRGenericRangingSession_configureForP2PRanging_options___block_invoke;
  v9[3] = &unk_2788F3AE8;
  objc_copyWeak(&v10, &location);
  [remoteObject configureForP2PRanging:rangingCopy options:optionsCopy reply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __58__PRGenericRangingSession_configureForP2PRanging_options___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v9 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained(WeakRetained + 5);
      [v8 didFailWithError:v9];
    }

    v5 = v9;
  }
}

- (BOOL)startP2PRanging:(id)ranging error:(id *)error
{
  rangingCopy = ranging;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  synchronousRemoteObject = [(PRGenericRangingSession *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__PRGenericRangingSession_startP2PRanging_error___block_invoke;
  v10[3] = &unk_2788F3CE0;
  v10[4] = &v11;
  v10[5] = &v17;
  [synchronousRemoteObject startP2PRanging:rangingCopy reply:v10];

  if (error)
  {
    *error = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __49__PRGenericRangingSession_startP2PRanging_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)stopP2PRanging:(id)ranging error:(id *)error
{
  rangingCopy = ranging;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  synchronousRemoteObject = [(PRGenericRangingSession *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PRGenericRangingSession_stopP2PRanging_error___block_invoke;
  v10[3] = &unk_2788F3CE0;
  v10[4] = &v11;
  v10[5] = &v17;
  [synchronousRemoteObject stopP2PRanging:rangingCopy reply:v10];

  if (error)
  {
    *error = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __48__PRGenericRangingSession_stopP2PRanging_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (PRGenericRangingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(uint64_t)a1 queue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRGenericRangingSession.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

@end