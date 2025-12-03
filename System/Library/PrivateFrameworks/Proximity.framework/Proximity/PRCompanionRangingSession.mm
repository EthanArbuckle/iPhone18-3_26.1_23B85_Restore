@interface PRCompanionRangingSession
- (BOOL)startCompanionRanging:(id)ranging options:(id)options error:(id *)error;
- (BOOL)stopCompanionRanging:(id)ranging error:(id *)error;
- (PRCompanionRangingSession)initWithDelegate:(id)delegate queue:(id)queue;
- (PRGenericRangingSessionDelegate)delegate;
- (id)remoteObject;
- (id)synchronousRemoteObject;
- (void)configureForCompanionRanging:(id)ranging options:(id)options;
- (void)connectToDaemon;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidate;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)recordUsageOfCompanionRanging:(id)ranging usageParameters:(id)parameters;
- (void)remoteDevice:(id)device didChangeState:(int64_t)state;
@end

@implementation PRCompanionRangingSession

- (PRCompanionRangingSession)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v9 = queueCopy;
  if (delegateCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRCompanionRangingSession initWithDelegate:a2 queue:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRCompanionRangingSession initWithDelegate:a2 queue:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = PRCompanionRangingSession;
  v10 = [(PRRangingDevice *)&v14 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.nearbyd", "client");
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeStrong(&v10->_sessionQueue, queue);
    [(PRCompanionRangingSession *)v10 connectToDaemon];
  }

  return v10;
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
  NSLog(&cfstr_Connecttodaemo.isa, a2);
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.companion" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = PRMakeRangingClientXPCInterface();
  [(NSXPCConnection *)v5 setExportedInterface:v6];

  v7 = self->_connection;
  v8 = [[PRRangingClientExportedObject alloc] initWithRangingClient:self];
  [(NSXPCConnection *)v7 setExportedObject:v8];

  v9 = self->_connection;
  v10 = PRMakeCompanionRangingServerXPCInterface();
  [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

  [(NSXPCConnection *)self->_connection _setQueue:self->_sessionQueue];
  objc_initWeak(&location, self);
  v11 = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__PRCompanionRangingSession_connectToDaemon__block_invoke;
  v18[3] = &unk_2788F3B38;
  objc_copyWeak(&v19, &location);
  [(NSXPCConnection *)v11 setInterruptionHandler:v18];
  v12 = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__PRCompanionRangingSession_connectToDaemon__block_invoke_2;
  v16[3] = &unk_2788F3B38;
  objc_copyWeak(&v17, &location);
  [(NSXPCConnection *)v12 setInvalidationHandler:v16];
  [(NSXPCConnection *)self->_connection resume];
  remoteObject = [(PRCompanionRangingSession *)self remoteObject];
  v15.receiver = self;
  v15.super_class = PRCompanionRangingSession;
  clientInfo = [(PRRangingDevice *)&v15 clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __44__PRCompanionRangingSession_connectToDaemon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInterruption];
}

void __44__PRCompanionRangingSession_connectToDaemon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInvalidation];
}

- (void)handleInterruption
{
  v14 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInterrup.isa, a2);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was interrupted: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277CCA450];
  v11 = @"Daemon connection interrupted.";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = PRErrorWithCodeAndUserInfo(999, v7);
  [(PRCompanionRangingSession *)self didFailWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidation
{
  v14 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInvalida.isa, a2);
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = logger;
    v6 = [(NSXPCConnection *)connection debugDescription];
    *buf = 138412290;
    v13 = v6;
    _os_log_impl(&dword_230EB5000, v5, OS_LOG_TYPE_DEFAULT, "connection was invalidated: %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277CCA450];
  v11 = @"Daemon connection invalidated.";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = PRErrorWithCodeAndUserInfo(999, v7);
  [(PRCompanionRangingSession *)self didFailWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)remoteObject
{
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__PRCompanionRangingSession_remoteObject__block_invoke;
  v5[3] = &unk_2788F3B60;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __41__PRCompanionRangingSession_remoteObject__block_invoke(uint64_t a1, void *a2)
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
  v5[2] = __52__PRCompanionRangingSession_synchronousRemoteObject__block_invoke;
  v5[3] = &unk_2788F3B60;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __52__PRCompanionRangingSession_synchronousRemoteObject__block_invoke(uint64_t a1, void *a2)
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

- (void)configureForCompanionRanging:(id)ranging options:(id)options
{
  rangingCopy = ranging;
  optionsCopy = options;
  objc_initWeak(&location, self);
  remoteObject = [(PRCompanionRangingSession *)self remoteObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PRCompanionRangingSession_configureForCompanionRanging_options___block_invoke;
  v9[3] = &unk_2788F3AE8;
  objc_copyWeak(&v10, &location);
  [remoteObject configureForCompanionRanging:rangingCopy options:optionsCopy reply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __66__PRCompanionRangingSession_configureForCompanionRanging_options___block_invoke(uint64_t a1, char a2, void *a3)
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

- (BOOL)startCompanionRanging:(id)ranging options:(id)options error:(id *)error
{
  rangingCopy = ranging;
  optionsCopy = options;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  synchronousRemoteObject = [(PRCompanionRangingSession *)self synchronousRemoteObject];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__PRCompanionRangingSession_startCompanionRanging_options_error___block_invoke;
  v13[3] = &unk_2788F3CE0;
  v13[4] = &v14;
  v13[5] = &v20;
  [synchronousRemoteObject startCompanionRanging:rangingCopy options:optionsCopy reply:v13];

  if (error)
  {
    *error = v15[5];
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __65__PRCompanionRangingSession_startCompanionRanging_options_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)stopCompanionRanging:(id)ranging error:(id *)error
{
  rangingCopy = ranging;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  synchronousRemoteObject = [(PRCompanionRangingSession *)self synchronousRemoteObject];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__PRCompanionRangingSession_stopCompanionRanging_error___block_invoke;
  v10[3] = &unk_2788F3CE0;
  v10[4] = &v11;
  v10[5] = &v17;
  [synchronousRemoteObject stopCompanionRanging:rangingCopy reply:v10];

  if (error)
  {
    *error = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __56__PRCompanionRangingSession_stopCompanionRanging_error___block_invoke(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)recordUsageOfCompanionRanging:(id)ranging usageParameters:(id)parameters
{
  parametersCopy = parameters;
  rangingCopy = ranging;
  remoteObject = [(PRCompanionRangingSession *)self remoteObject];
  [remoteObject recordUsageOfCompanionRanging:rangingCopy usageParameters:parametersCopy];
}

- (PRGenericRangingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(uint64_t)a1 queue:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRCompanionRangingSession.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)initWithDelegate:(uint64_t)a1 queue:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRCompanionRangingSession.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
}

@end