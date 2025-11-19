@interface TRSetupWorkflow
- (TRSetupWorkflow)initWithNearbyDevice:(id)a3 presentingViewController:(id)a4;
- (void)_abortSetupWithErrorCode:(int64_t)a3 userInfo:(id)a4;
- (void)_performActivationOperation;
- (void)_performAuthenticationOperation;
- (void)_performCompletionOperation;
- (void)_performConfigurationOperation;
- (void)_performHandshakeOperation;
- (void)_performNetworkOperation;
- (void)_releaseHandlers;
- (void)cancel;
- (void)start;
@end

@implementation TRSetupWorkflow

- (TRSetupWorkflow)initWithNearbyDevice:(id)a3 presentingViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TRSetupWorkflow;
  v9 = [(TRSetupWorkflow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nearbyDevice, a3);
    objc_storeStrong(&v10->_presentingViewController, a4);
    v10->_state = 1;
    v11 = objc_alloc_init(TROperationQueue);
    operationQueue = v10->_operationQueue;
    v10->_operationQueue = v11;
  }

  return v10;
}

- (void)start
{
  if ([(TRSetupWorkflow *)self state]!= 1)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"TRSetupWorkflow is already started." userInfo:0];
    objc_exception_throw(v7);
  }

  [(TRSetupWorkflow *)self setState:2];
  v3 = [[TRSession alloc] initWithNearbyDevice:self->_nearbyDevice];
  [(TRSetupWorkflow *)self setSession:v3];

  objc_initWeak(&location, self);
  v4 = [(TRSetupWorkflow *)self session];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__TRSetupWorkflow_start__block_invoke;
  v10[3] = &unk_279DCEF68;
  objc_copyWeak(&v11, &location);
  [v4 setDisconnectHandler:v10];

  v5 = objc_alloc_init(TRNearbyDeviceScanner);
  v6 = [(TRSetupWorkflow *)self session];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __24__TRSetupWorkflow_start__block_invoke_2;
  v8[3] = &unk_279DCEF90;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [(TRNearbyDeviceScanner *)v5 openSession:v6 withCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __24__TRSetupWorkflow_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _abortSetupWithErrorCode:-9104 userInfo:0];
}

void __24__TRSetupWorkflow_start__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained state] != 2)
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_16;
    }

    v9 = TRLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[TRSetupWorkflow start]_block_invoke_2";
      _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "%s Workflow stopped", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!a2)
  {
    [*(a1 + 32) setSession:0];
    v10 = [v5 domain];
    if ([v10 isEqualToString:@"TRNearbyDeviceErrorDomain"])
    {
      v11 = [v5 code];

      if (v11 == -9100)
      {
        v17 = *MEMORY[0x277CCA7E8];
        v18 = v5;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v12 = WeakRetained;
        v13 = -9100;
LABEL_14:
        [v12 _abortSetupWithErrorCode:v13 userInfo:v9];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = *MEMORY[0x277CCA7E8];
    v16 = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = WeakRetained;
    v13 = -9104;
    goto LABEL_14;
  }

  v7 = [WeakRetained startedHandler];

  if (v7)
  {
    v8 = [WeakRetained startedHandler];
    v8[2]();
  }

  [WeakRetained _performHandshakeOperation];
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v8 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[TRSetupWorkflow cancel]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Cancelling setup workflow", &v6, 0xCu);
    }
  }

  v4 = [(TRSetupWorkflow *)self operationQueue];
  [v4 invalidate];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performHandshakeOperation
{
  v3 = [TRHandshakeOperation alloc];
  v4 = [(TRSetupWorkflow *)self session];
  v5 = [(TROperation *)v3 initWithSession:v4];

  [(TRHandshakeOperation *)v5 setProtocolVersion:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TRSetupWorkflow__performHandshakeOperation__block_invoke;
  v7[3] = &unk_279DCEBF8;
  v7[4] = self;
  [(TRHandshakeOperation *)v5 setCompletionBlock:v7];
  v6 = [(TRSetupWorkflow *)self operationQueue];
  [v6 addOperation:v5];
}

- (void)_performConfigurationOperation
{
  v3 = [(TRSetupWorkflow *)self configurationStageStartedHandler];

  if (v3)
  {
    v4 = [(TRSetupWorkflow *)self configurationStageStartedHandler];
    v4[2]();
  }

  v5 = [TRSetupConfigurationOperation alloc];
  v6 = [(TRSetupWorkflow *)self session];
  v7 = [(TROperation *)v5 initWithSession:v6];

  objc_initWeak(&location, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TRSetupWorkflow__performConfigurationOperation__block_invoke;
  v9[3] = &unk_279DCEFB8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(TRSetupConfigurationOperation *)v7 setCompletionBlock:v9];
  v8 = [(TRSetupWorkflow *)self operationQueue];
  [v8 addOperation:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __49__TRSetupWorkflow__performConfigurationOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  if (v2)
  {
    v3 = [WeakRetained result];
    v4 = [v3 objectForKey:@"TRSetupConfigurationOperationNeedsNetworkKey"];
    v5 = [v4 BOOLValue];

    v6 = [WeakRetained result];
    v7 = [v6 objectForKey:@"TRSetupConfigurationOperationUnauthenticatedServicesKey"];

    [*(a1 + 32) setUnauthenticatedAccountServices:v7];
    v8 = *(a1 + 32);
    if (v5)
    {
      [v8 _performNetworkOperation];
    }

    else
    {
      [v8 _performActivationOperation];
    }
  }

  else
  {
    v7 = [WeakRetained error];
    [*(a1 + 32) _abortSetupWithErrorCode:objc_msgSend(v7 userInfo:{"code"), 0}];
  }
}

- (void)_performNetworkOperation
{
  v3 = [TRNetworkOperation alloc];
  v4 = [(TRSetupWorkflow *)self session];
  v5 = [(TROperation *)v3 initWithSession:v4];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__TRSetupWorkflow__performNetworkOperation__block_invoke;
  v14[3] = &unk_279DCEFE0;
  v14[4] = self;
  [(TRNetworkOperation *)v5 setSendingWiFiInfoHandler:v14];
  objc_initWeak(&location, v5);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __43__TRSetupWorkflow__performNetworkOperation__block_invoke_2;
  v10 = &unk_279DCEFB8;
  objc_copyWeak(&v12, &location);
  v11 = self;
  [(TRNetworkOperation *)v5 setCompletionBlock:&v7];
  v6 = [(TRSetupWorkflow *)self operationQueue:v7];
  [v6 addOperation:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __43__TRSetupWorkflow__performNetworkOperation__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) networkStageStartedHandler];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void __43__TRSetupWorkflow__performNetworkOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  v3 = [v2 objectForKey:@"TRNetworkOperationHasNetworkKey"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [*(a1 + 32) _performActivationOperation];
  }

  else
  {
    v5 = [WeakRetained error];
    [*(a1 + 32) _abortSetupWithErrorCode:objc_msgSend(v5 userInfo:{"code"), 0}];
  }
}

- (void)_performActivationOperation
{
  v3 = [(TRSetupWorkflow *)self activationStageStartedHandler];

  if (v3)
  {
    v4 = [(TRSetupWorkflow *)self activationStageStartedHandler];
    v4[2]();
  }

  v5 = [TRActivationOperation alloc];
  v6 = [(TRSetupWorkflow *)self session];
  v7 = [(TROperation *)v5 initWithSession:v6];

  objc_initWeak(&location, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__TRSetupWorkflow__performActivationOperation__block_invoke;
  v9[3] = &unk_279DCEFB8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(TRActivationOperation *)v7 setCompletionBlock:v9];
  v8 = [(TRSetupWorkflow *)self operationQueue];
  [v8 addOperation:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__TRSetupWorkflow__performActivationOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  v3 = [v2 objectForKey:@"TRActivationOperationIsActivatedKey"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [*(a1 + 32) _performAuthenticationOperation];
  }

  else
  {
    v5 = [WeakRetained error];
    [*(a1 + 32) _abortSetupWithErrorCode:objc_msgSend(v5 userInfo:{"code"), 0}];
  }
}

- (void)_performAuthenticationOperation
{
  v3 = [TRAuthenticationOperation alloc];
  v4 = [(TRSetupWorkflow *)self session];
  v5 = [(TROperation *)v3 initWithSession:v4];

  v6 = [(TRSetupWorkflow *)self unauthenticatedAccountServices];
  [(TRAuthenticationOperation *)v5 setTargetedServices:v6];

  v7 = [(TRSetupWorkflow *)self presentingViewController];
  [(TRAuthenticationOperation *)v5 setPresentingViewController:v7];

  objc_initWeak(&location, v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__TRSetupWorkflow__performAuthenticationOperation__block_invoke;
  v9[3] = &unk_279DCEFB8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(TRAuthenticationOperation *)v5 setCompletionBlock:v9];
  v8 = [(TRSetupWorkflow *)self operationQueue];
  [v8 addOperation:v5];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __50__TRSetupWorkflow__performAuthenticationOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained result];
  if (v2)
  {
    [*(a1 + 32) _performCompletionOperation];
  }

  else
  {
    v3 = [WeakRetained error];
    [*(a1 + 32) _abortSetupWithErrorCode:objc_msgSend(v3 userInfo:{"code"), 0}];
  }
}

- (void)_performCompletionOperation
{
  v13 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[TRSetupWorkflow _performCompletionOperation]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Send Completion Request", buf, 0xCu);
    }
  }

  v4 = [TRCompletionOperation alloc];
  v5 = [(TRSetupWorkflow *)self session];
  v6 = [(TROperation *)v4 initWithSession:v5];

  [(TRCompletionOperation *)v6 setSuccess:1];
  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__TRSetupWorkflow__performCompletionOperation__block_invoke;
  v9[3] = &unk_279DCEF68;
  objc_copyWeak(&v10, buf);
  [(TRCompletionOperation *)v6 setCompletionBlock:v9];
  v7 = [(TRSetupWorkflow *)self operationQueue];
  [v7 addOperation:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__TRSetupWorkflow__performCompletionOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completionHandler];

  if (v1)
  {
    v2 = [WeakRetained completionHandler];
    v2[2]();
  }

  [WeakRetained _releaseHandlers];
  v3 = [WeakRetained session];
  [v3 setDisconnectHandler:0];

  v4 = [WeakRetained session];
  [v4 disconnect];

  [WeakRetained setSession:0];
}

- (void)_abortSetupWithErrorCode:(int64_t)a3 userInfo:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(TRSetupWorkflow *)self state]== 2)
  {
    [(TRSetupWorkflow *)self setState:3];
    if (_TRLogEnabled == 1)
    {
      v7 = TRLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v22 = "[TRSetupWorkflow _abortSetupWithErrorCode:userInfo:]";
        v23 = 2048;
        v24 = a3;
        _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Aborting setup with error code: %ld", buf, 0x16u);
      }
    }

    if (a3 == -10001)
    {
      [(TRSetupWorkflow *)self _releaseHandlers];
      v8 = -10001;
LABEL_15:
      v12 = [TRCompletionOperation alloc];
      v13 = [(TRSetupWorkflow *)self session];
      v14 = [(TROperation *)v12 initWithSession:v13];

      [(TRCompletionOperation *)v14 setSuccess:0];
      [(TRCompletionOperation *)v14 setErrorCode:v8];
      v15 = [(TRSetupWorkflow *)self session];
      [v15 setDisconnectHandler:0];
      [(TRSetupWorkflow *)self setSession:0];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __53__TRSetupWorkflow__abortSetupWithErrorCode_userInfo___block_invoke;
      v19[3] = &unk_279DCEBF8;
      v20 = v15;
      v16 = v15;
      [(TRCompletionOperation *)v14 setCompletionBlock:v19];
      v17 = [(TRSetupWorkflow *)self operationQueue];
      [v17 addOperation:v14];

      goto LABEL_16;
    }

    if (a3 == -11000)
    {
      v8 = -8003;
    }

    else
    {
      v8 = a3;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:v8 userInfo:v6];
    v10 = [(TRSetupWorkflow *)self failureHandler];

    if (v10)
    {
      v11 = [(TRSetupWorkflow *)self failureHandler];
      (v11)[2](v11, v9);
    }

    [(TRSetupWorkflow *)self _releaseHandlers];
    if ((a3 | 4) != 0xFFFFFFFFFFFFDC74)
    {
      goto LABEL_15;
    }

    [(TRSetupWorkflow *)self setSession:0];
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_releaseHandlers
{
  [(TRSetupWorkflow *)self setStartedHandler:0];
  [(TRSetupWorkflow *)self setConfigurationStageStartedHandler:0];
  [(TRSetupWorkflow *)self setNetworkStageStartedHandler:0];
  [(TRSetupWorkflow *)self setActivationStageStartedHandler:0];
  [(TRSetupWorkflow *)self setCompletionHandler:0];

  [(TRSetupWorkflow *)self setFailureHandler:0];
}

@end