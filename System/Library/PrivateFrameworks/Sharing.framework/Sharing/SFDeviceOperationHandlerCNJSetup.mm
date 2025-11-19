@interface SFDeviceOperationHandlerCNJSetup
- (SFDeviceOperationHandlerCNJSetup)init;
- (void)_handleCaptiveJoinRequestWithResponseHandler:(id)a3 reachabilityError:(id)a4;
- (void)_runReachability:(id)a3 responseHandler:(id)a4;
- (void)_updateCaptiveState;
- (void)activate;
- (void)invalidate;
- (void)reset;
@end

@implementation SFDeviceOperationHandlerCNJSetup

- (SFDeviceOperationHandlerCNJSetup)init
{
  v5.receiver = self;
  v5.super_class = SFDeviceOperationHandlerCNJSetup;
  v2 = [(SFDeviceOperationHandlerCNJSetup *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_cnsNotifyToken = -1;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 80))
  {
    return __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_2(gLogCategory_SFDeviceOperationCNJ);
  }

  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_1();
  }

  v2 = *MEMORY[0x1E6993938];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_2;
  handler[3] = &unk_1E788CB60;
  handler[4] = v3;
  notify_register_dispatch(v2, (v3 + 32), v4, handler);
  [*(a1 + 32) _updateCaptiveState];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_3;
  v8[3] = &unk_1E788B4F8;
  v8[4] = v5;
  return [v6 registerRequestID:@"_cnj" options:0 handler:v8];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCNJSetup_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  *(*(a1 + 32) + 72) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(*(a1 + 32) + 32) = -1;
    v2 = *(a1 + 32);
  }

  [*(v2 + 80) deregisterRequestID:@"_cnj"];
  [*(*(a1 + 32) + 80) deregisterRequestID:@"_cnjExtIO"];
  [*(*(a1 + 32) + 8) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = 0;

    v8 = *(a1 + 32);
  }

  v13 = *(v8 + 64);
  if (v13)
  {

    nw_path_monitor_cancel(v13);
  }
}

- (void)_updateCaptiveState
{
  if (!self->_invalidateCalled)
  {
    if (self->_reachabilityDone || !CNUserInteractionIsRequired())
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerCNJSetup _updateCaptiveState];
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerCNJSetup _updateCaptiveState];
      }

      self->_reachabilityDone = 1;
      if (self->_responseHandler)
      {
        if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHandlerCNJSetup _updateCaptiveState];
        }

        responseHandler = self->_responseHandler;

        [(SFDeviceOperationHandlerCNJSetup *)self _handleCaptiveJoinRequestWithResponseHandler:responseHandler];
      }
    }
  }
}

- (void)_runReachability:(id)a3 responseHandler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCNJSetup _runReachability:responseHandler:];
  }

  if (self->_reachabilityDone)
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerCNJSetup _runReachability:responseHandler:];
    }

    [(SFDeviceOperationHandlerCNJSetup *)self _handleCaptiveJoinRequestWithResponseHandler:v6];
  }

  else
  {
    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerCNJSetup _runReachability:responseHandler:];
    }

    v7 = _Block_copy(v6);
    responseHandler = self->_responseHandler;
    self->_responseHandler = v7;

    if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHandlerCNJSetup _runReachability:responseHandler:];
    }

    (*(v6 + 2))(v6, 0, 0, 0);
  }
}

- (void)_handleCaptiveJoinRequestWithResponseHandler:(id)a3 reachabilityError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCNJSetup _handleCaptiveJoinRequestWithResponseHandler:reachabilityError:];
  }

  v8 = objc_alloc_init(getSKSetupCaptiveNetworkJoinServerClass());
  cnjServer = self->_cnjServer;
  self->_cnjServer = v8;

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke;
  v19[3] = &unk_1E788FD70;
  objc_copyWeak(&v20, &location);
  [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setSendDataHandler:v19];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2;
  v16 = &unk_1E788FDC0;
  objc_copyWeak(&v18, &location);
  v17 = self;
  [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setEventHandler:&v13];
  v10 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"A2A772B2-84C1-447A-B978-5793FF08E513" keyLength:32, v13, v14, v15, v16];
  if (v10)
  {
    [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer setPskData:v10];
    [(SFSession *)self->_sfSession registerForExternalIO:self->_cnjServer];
    [(SKSetupCaptiveNetworkJoinServer *)self->_cnjServer activate];
    v11 = objc_opt_new();
    if (v7)
    {
      v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
      [v11 setObject:v12 forKeyedSubscript:@"re"];
    }

    (*(v6 + 2))(v6, 0, 0, v11);
  }

  else
  {
    v11 = NSErrorWithOSStatusF();
    (*(v6 + 2))(v6, v11, 0, 0);
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained sfSession];
  [v4 sendExternalIO:v3];
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_2_cold_1();
  }

  if ([v3 eventType] == 202)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_3;
    block[3] = &unk_1E788B198;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  if ([v3 eventType] == 203 || (*(*(a1 + 32) + 48) & 1) == 0 && objc_msgSend(v3, "eventType") == 30)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 dispatchQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4;
    v8[3] = &unk_1E788B4D0;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_async(v7, v8);

    objc_destroyWeak(&v9);
  }
}

void __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __99__SFDeviceOperationHandlerCNJSetup__handleCaptiveJoinRequestWithResponseHandler_reachabilityError___block_invoke_4_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reset];
}

- (void)reset
{
  [(SFDeviceOperationHandlerCNJSetup *)self invalidate];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCNJ <= 30 && (gLogCategory_SFDeviceOperationCNJ != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceOperationHandlerCNJSetup_reset__block_invoke_cold_1();
  }

  WiFiDisassociateAndForget();
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(*(a1 + 32) + 16) = 0;
  *(*(a1 + 32) + 36) = 0;
  *(*(a1 + 32) + 48) = 0;
  v4 = *(a1 + 32);

  return [v4 activate];
}

uint64_t __44__SFDeviceOperationHandlerCNJSetup_activate__block_invoke_cold_2(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

@end