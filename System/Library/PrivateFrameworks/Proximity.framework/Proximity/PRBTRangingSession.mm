@interface PRBTRangingSession
- (PRBTRangingSession)initWithDelegate:(id)delegate queue:(id)queue;
- (PRBTRangingSessionDelegate)delegate;
- (id)remoteObject;
- (id)synchronousRemoteObject;
- (void)connectToDaemon;
- (void)didConnectDevice:(id)device error:(id)error;
- (void)didFailWithError:(id)error;
- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error;
- (void)didReceiveNewBTRSSI:(id)i;
- (void)didStartRangingOnDevice:(id)device withError:(id)error;
- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error;
- (void)fetchTxPower:(id)power isUT:(id)t;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidate;
- (void)startOwnerRanging:(id)ranging;
- (void)startUTRanging:(id)ranging;
- (void)stopOwnerRanging:(id)ranging;
- (void)stopUTRanging:(id)ranging;
@end

@implementation PRBTRangingSession

- (PRBTRangingSession)initWithDelegate:(id)delegate queue:(id)queue
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PRBTRangingSession.mm" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PRBTRangingSession.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PRBTRangingSession;
  v10 = [(PRRangingDevice *)&v16 init];
  if (v10)
  {
    v11 = os_log_create("com.apple.nearbyd", "client");
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeStrong(&v10->_sessionQueue, queue);
    [(PRBTRangingSession *)v10 connectToDaemon];
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
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.BTRanging" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = self->_connection;
  v6 = PRMakeBTRangingClientXPCInterface();
  [(NSXPCConnection *)v5 setExportedInterface:v6];

  v7 = self->_connection;
  v8 = [[PRBTRangingClientExportedObject alloc] initWithRangingClient:self];
  [(NSXPCConnection *)v7 setExportedObject:v8];

  v9 = self->_connection;
  v10 = PRMakeBTRangingServerXPCInterface();
  [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

  [(NSXPCConnection *)self->_connection _setQueue:self->_sessionQueue];
  objc_initWeak(&location, self);
  v11 = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__PRBTRangingSession_connectToDaemon__block_invoke;
  v18[3] = &unk_2788F3C40;
  objc_copyWeak(&v19, &location);
  [(NSXPCConnection *)v11 setInterruptionHandler:v18];
  v12 = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__PRBTRangingSession_connectToDaemon__block_invoke_2;
  v16[3] = &unk_2788F3C40;
  objc_copyWeak(&v17, &location);
  [(NSXPCConnection *)v12 setInvalidationHandler:v16];
  [(NSXPCConnection *)self->_connection resume];
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v15.receiver = self;
  v15.super_class = PRBTRangingSession;
  clientInfo = [(PRRangingDevice *)&v15 clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __37__PRBTRangingSession_connectToDaemon__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInterruption];
}

void __37__PRBTRangingSession_connectToDaemon__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleInvalidation];
}

- (void)handleInterruption
{
  v16 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInterrup.isa, a2);
  v3 = self->_logger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSXPCConnection *)self->_connection debugDescription];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_230EB5000, v3, OS_LOG_TYPE_DEFAULT, "connection was interrupted: %@", buf, 0xCu);
  }

  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v11.receiver = self;
  v11.super_class = PRBTRangingSession;
  clientInfo = [(PRRangingDevice *)&v11 clientInfo];
  [remoteObject connectWithClientInfo:clientInfo];

  v12 = *MEMORY[0x277CCA450];
  v13 = @"Generic companion ranging error.";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v8 = PRErrorWithCodeAndUserInfo(301, v7);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFailWithError:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleInvalidation
{
  v8 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_DaemonInvalida.isa, a2);
  v3 = self->_logger;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSXPCConnection *)self->_connection debugDescription];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_230EB5000, v3, OS_LOG_TYPE_DEFAULT, "connection was invalidated: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)remoteObject
{
  connection = self->_connection;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__PRBTRangingSession_remoteObject__block_invoke;
  v5[3] = &unk_2788F4108;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __34__PRBTRangingSession_remoteObject__block_invoke(uint64_t a1, void *a2)
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
  v5[2] = __45__PRBTRangingSession_synchronousRemoteObject__block_invoke;
  v5[3] = &unk_2788F4108;
  v5[4] = self;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __45__PRBTRangingSession_synchronousRemoteObject__block_invoke(uint64_t a1, void *a2)
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

- (void)didFetchTxPower:(id)power fromDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  powerCopy = power;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didFetchTxPower:powerCopy fromDevice:deviceCopy withError:errorCopy];
}

- (void)didConnectDevice:(id)device error:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didConnectDevice:deviceCopy error:errorCopy];
}

- (void)didStartRangingOnDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didStartRangingOnDevice:deviceCopy withError:errorCopy];
}

- (void)didStopOwnerRangingOnDevice:(id)device withError:(id)error
{
  errorCopy = error;
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didStopOwnerRangingOnDevice:deviceCopy withError:errorCopy];
}

- (void)didReceiveNewBTRSSI:(id)i
{
  iCopy = i;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didReceiveNewBTRSSI:iCopy];
}

- (void)fetchTxPower:(id)power isUT:(id)t
{
  powerCopy = power;
  tCopy = t;
  objc_initWeak(&location, self);
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__PRBTRangingSession_fetchTxPower_isUT___block_invoke;
  v9[3] = &unk_2788F4090;
  objc_copyWeak(&v10, &location);
  [remoteObject fetchTxPower:powerCopy isUT:tCopy reply:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __40__PRBTRangingSession_fetchTxPower_isUT___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)startUTRanging:(id)ranging
{
  rangingCopy = ranging;
  objc_initWeak(&location, self);
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__PRBTRangingSession_startUTRanging___block_invoke;
  v6[3] = &unk_2788F4090;
  objc_copyWeak(&v7, &location);
  [remoteObject startUTRanging:rangingCopy reply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __37__PRBTRangingSession_startUTRanging___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)stopUTRanging:(id)ranging
{
  rangingCopy = ranging;
  objc_initWeak(&location, self);
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PRBTRangingSession_stopUTRanging___block_invoke;
  v6[3] = &unk_2788F4090;
  objc_copyWeak(&v7, &location);
  [remoteObject stopUTRanging:rangingCopy reply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __36__PRBTRangingSession_stopUTRanging___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)startOwnerRanging:(id)ranging
{
  rangingCopy = ranging;
  objc_initWeak(&location, self);
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PRBTRangingSession_startOwnerRanging___block_invoke;
  v6[3] = &unk_2788F4090;
  objc_copyWeak(&v7, &location);
  [remoteObject startOwnerRanging:rangingCopy reply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __40__PRBTRangingSession_startOwnerRanging___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)stopOwnerRanging:(id)ranging
{
  rangingCopy = ranging;
  objc_initWeak(&location, self);
  remoteObject = [(PRBTRangingSession *)self remoteObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PRBTRangingSession_stopOwnerRanging___block_invoke;
  v6[3] = &unk_2788F4090;
  objc_copyWeak(&v7, &location);
  [remoteObject stopOwnerRanging:rangingCopy reply:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__PRBTRangingSession_stopOwnerRanging___block_invoke(uint64_t a1, char a2, void *a3)
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

- (PRBTRangingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end