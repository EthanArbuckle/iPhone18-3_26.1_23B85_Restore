@interface SFDeviceSetupWHASession
- (BOOL)_verifyiCloudMatch:(unint64_t)a3 error:(id *)a4;
- (SFDeviceSetupWHASession)init;
- (int)_runCDPSetup;
- (int)_runFinish;
- (int)_runHomeKitSetup;
- (int)_runInfoExchange;
- (int)_runPairSetup;
- (int)_runPairVerify;
- (int)_runSFSessionStart;
- (int)_runTRAuthentication;
- (int)_runTRSessionStart;
- (int)_runTRSetupConfiguration;
- (void)_cleanup;
- (void)_reportError:(id)a3;
- (void)_run;
- (void)_runInfoExchangeRequest;
- (void)_runInfoExchangeResponse:(id)a3 error:(id)a4;
- (void)activate;
- (void)dealloc;
- (void)homeKitSelectHome:(id)a3;
- (void)homeKitSelectRoom:(id)a3;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)a3;
@end

@implementation SFDeviceSetupWHASession

- (SFDeviceSetupWHASession)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupWHASession;
  v2 = [(SFDeviceSetupWHASession *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupWHASession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupWHASession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupWHASession;
    [(SFDeviceSetupWHASession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  v27 = *MEMORY[0x1E69E9840];
  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_trOperations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        [v9 cancel];
        [v9 setCompletionBlock:0];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup invalidate];
  homeKitSetup = self->_homeKitSetup;
  self->_homeKitSetup = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v16 = self->_progressHandler;
  }

  else
  {
    v16 = 0;
  }

  self->_progressHandler = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;

  v21 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupWHASession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupWHASession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupWHASession_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 120) = CFPrefs_GetInt64() != 0;
  *(*(a1 + 32) + 164) = CFPrefs_GetInt64() != 0;
  v2 = *(a1 + 32);
  v3 = v2[25];
  if (v3)
  {
    (*(v3 + 16))(v2[25], 10, 0);
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupWHASession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupWHASession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceSetupWHASession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)homeKitSelectHome:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupWHASession_homeKitSelectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)homeKitSelectRoom:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupWHASession_homeKitSelectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairSetupTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SFDeviceSetupWHASession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportError:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHASession _reportError:];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v17 = @"eo";
    v8 = v6;
    if (!v6)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v15 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v11;
      v12 = @"?";
      if (v11)
      {
        v12 = v11;
      }

      v16 = v12;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v8 = [v9 errorWithDomain:v10 code:-6700 userInfo:v4];
    }

    v18[0] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    progressHandler[2](progressHandler, 30, v13);

    if (!v6)
    {
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_sfSessionState;
          }

          v8 = self->_sfSessionState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runSFSessionStart];
      }

      self->_sfSessionState = 1;
      [(SFSession *)self->_sfSession invalidate];
      v4 = objc_alloc_init(SFSession);
      sfSession = self->_sfSession;
      self->_sfSession = v4;

      [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)self->_sfSession setLabel:@"WHASetup"];
      [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.WHASetup"];
      [(SFSession *)self->_sfSession setSessionFlags:1];
      [(SFSession *)self->_sfSession setTouchRemoteEnabled:1];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke;
      v12[3] = &unk_1E788B238;
      v12[4] = self;
      [(SFSession *)self->_sfSession setErrorHandler:v12];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_2;
      v11[3] = &unk_1E788B198;
      v11[4] = self;
      [(SFSession *)self->_sfSession setInterruptionHandler:v11];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_3;
      v10[3] = &unk_1E788B198;
      v10[4] = self;
      [(SFSession *)self->_sfSession setInvalidationHandler:v10];
      if (self->_promptForPINHandler)
      {
        [(SFSession *)self->_sfSession setPromptForPINHandler:?];
      }

      v6 = self->_sfSession;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_4;
      v9[3] = &unk_1E788B238;
      v9[4] = self;
      [(SFSession *)v6 activateWithCompletion:v9];
    }
  }

  return self->_sfSessionState;
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupWHASession <= 60)
  {
    if (gLogCategory_SFDeviceSetupWHASession != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _reportError:v3];
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v10 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [v1 _reportError:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v5 = v4;
    v6 = @"?";
    if (v4)
    {
      v6 = v4;
    }

    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v2 errorWithDomain:v3 code:-6736 userInfo:v7];
    [v1 _reportError:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __45__SFDeviceSetupWHASession__runSFSessionStart__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 24) = 3;
    return [*(a1 + 32) _reportError:a2];
  }

  else
  {
    *(v2 + 24) = 4;
    return [*(a1 + 32) _run];
  }
}

- (int)_runPairVerify
{
  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          v7 = self->_pairVerifyState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __41__SFDeviceSetupWHASession__runPairVerify__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v8];
    }
  }

  return self->_pairVerifyState;
}

void __41__SFDeviceSetupWHASession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      __41__SFDeviceSetupWHASession__runPairVerify__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v3 = a1 + 32;
    *(v4 + 32) = 2;
    goto LABEL_11;
  }

  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceSetupWHASession__runPairVerify__block_invoke_cold_2();
  }

  v5 = *(a1 + 32);
  v3 = a1 + 32;
  *(v5 + 28) = 1;
  *(*v3 + 32) = 4;
  v6 = *v3;
  v7 = *(*v3 + 200);
  if (v7)
  {
    (*(v7 + 16))(*(*v3 + 200), 70, 0);
LABEL_11:
    v6 = *v3;
  }

  [v6 _run];
}

- (int)_runPairSetup
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          v7 = self->_pairSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_pairSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__SFDeviceSetupWHASession__runPairSetup__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v8];
    }
  }

  return self->_pairSetupState;
}

void __40__SFDeviceSetupWHASession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    *(v4 + 36) = 3;
    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    *(v4 + 28) = 1;
    *(*(a1 + 32) + 36) = 4;
    v5 = *(a1 + 32);
    v6 = v5[25];
    if (v6)
    {
      (*(v6 + 16))(v5[25], 70, 0);
      v5 = *(a1 + 32);
    }

    [v5 _run];
  }
}

- (int)_runInfoExchange
{
  infoExchangeState = self->_infoExchangeState;
  if (infoExchangeState != 4 && infoExchangeState != 2)
  {
    if (infoExchangeState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_infoExchangeState;
          }

          v6 = self->_infoExchangeState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runInfoExchange];
      }

      self->_infoExchangeState = 1;
      [(SFDeviceSetupWHASession *)self _runInfoExchangeRequest];
    }
  }

  return self->_infoExchangeState;
}

- (void)_runInfoExchangeRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHASession _runInfoExchangeRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SFDeviceSetupWHASession__runInfoExchangeRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_info" options:0 request:v3 responseHandler:v5];
}

- (void)_runInfoExchangeResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v12 = 0;
  if (v6 && !v7)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHASession _runInfoExchangeResponse:error:];
    }

    v11 = 0;
    v9 = [(SFDeviceSetupWHASession *)self _verifyiCloudMatch:CFDictionaryGetInt64() error:&v11];
    v10 = v11;
    if (v9)
    {
      self->_peerFeatureFlags = CFDictionaryGetInt64();
      self->_peerProblemsFlags = CFDictionaryGetInt64();
      self->_infoExchangeState = 4;
      [(SFDeviceSetupWHASession *)self _run];
LABEL_13:

      goto LABEL_14;
    }

    self->_infoExchangeState = 3;
LABEL_12:
    [(SFDeviceSetupWHASession *)self _reportError:v10];
    goto LABEL_13;
  }

  self->_infoExchangeState = 3;
  if (!v7)
  {
    v10 = NSErrorWithOSStatusF();
    goto LABEL_12;
  }

  [(SFDeviceSetupWHASession *)self _reportError:v7];
LABEL_14:
}

- (int)_runTRSessionStart
{
  v21[1] = *MEMORY[0x1E69E9840];
  trSessionState = self->_trSessionState;
  if (trSessionState == 4)
  {
    goto LABEL_13;
  }

  if (!trSessionState)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHASession _runTRSessionStart];
    }

    self->_trSessionState = 1;
    v4 = [(SFSession *)self->_sfSession trSession];
    trSession = self->_trSession;
    self->_trSession = v4;

    if (self->_trSession)
    {
      v6 = objc_alloc_init(getTROperationQueueClass_3());
      trOperationQueue = self->_trOperationQueue;
      self->_trOperationQueue = v6;

      if (self->_trOperationQueue)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        trOperations = self->_trOperations;
        self->_trOperations = v8;

        self->_trSessionState = 4;
        goto LABEL_13;
      }

      if (gLogCategory_SFDeviceSetupWHASession > 90 || gLogCategory_SFDeviceSetupWHASession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_22;
      }
    }

    else if (gLogCategory_SFDeviceSetupWHASession > 90 || gLogCategory_SFDeviceSetupWHASession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_22;
    }

    [SFDeviceSetupWHASession _runTRSessionStart];
LABEL_22:
    self->_trSessionState = 3;
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A768];
    v20 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    v21[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v18 = [v12 errorWithDomain:v13 code:-6700 userInfo:v17];
    [(SFDeviceSetupWHASession *)self _reportError:v18];

    goto LABEL_13;
  }

  if (gLogCategory_SFDeviceSetupWHASession <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHASession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v19 = self->_trSessionState;
    }

    LogPrintF();
  }

LABEL_13:
  result = self->_trSessionState;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)_runTRSetupConfiguration
{
  trSetupConfigurationState = self->_trSetupConfigurationState;
  if (trSetupConfigurationState != 4)
  {
    if (trSetupConfigurationState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trSetupConfigurationState;
          }

          v7 = self->_trSetupConfigurationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runTRSetupConfiguration];
      }

      self->_trSetupConfigurationState = 1;
      v4 = [objc_alloc(getTRSetupConfigurationOperationClass_0()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v4];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke;
      v8[3] = &unk_1E788A658;
      v8[4] = self;
      v9 = v4;
      v5 = v4;
      [v5 setCompletionBlock:v8];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v5];
    }
  }

  return self->_trSetupConfigurationState;
}

void __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 176);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 72))
  {
    v6 = [*(a1 + 40) result];
    if (v6)
    {
      getTRSetupConfigurationOperationUnauthenticatedServicesKey_0();
      CFSetGetTypeID();
      v3 = CFDictionaryGetTypedValue();
      v4 = *(*v1 + 13);
      *(*v1 + 13) = v3;

      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 25) = 4;
      [*v1 _run];
    }

    else
    {
      v5 = [*(a1 + 40) error];
      if (gLogCategory_SFDeviceSetupWHASession <= 60 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupWHASession__runTRSetupConfiguration__block_invoke_2_cold_2();
      }

      *(*v1 + 25) = 3;
      [*v1 _reportError:v5];
    }
  }
}

- (int)_runTRAuthentication
{
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trAuthenticationState;
          }

          v7 = self->_trAuthenticationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runTRAuthentication];
      }

      self->_trAuthenticationState = 1;
      v4 = [objc_alloc(getTRAuthenticationOperationClass_2()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v4];
      [v4 setTargetedServices:self->_trUnauthServices];
      if (self->_presentingViewController)
      {
        [v4 setPresentingViewController:?];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke;
      v8[3] = &unk_1E788A658;
      v8[4] = self;
      v9 = v4;
      v5 = v4;
      [v5 setCompletionBlock:v8];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v5];
    }
  }

  return self->_trAuthenticationState;
}

void __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 176);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 72))
  {
    v3 = [*(a1 + 40) result];
    if (v3)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2_cold_1();
      }

      *(*(a1 + 32) + 116) = 4;
      [*(a1 + 32) _run];
    }

    else
    {
      v2 = [*(a1 + 40) error];
      if (gLogCategory_SFDeviceSetupWHASession <= 60 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupWHASession__runTRAuthentication__block_invoke_2_cold_2();
      }

      *(*(a1 + 32) + 116) = 3;
      [*(a1 + 32) _reportError:v2];
    }
  }
}

- (int)_runCDPSetup
{
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_cdpState;
          }

          v8 = self->_cdpState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runCDPSetup];
      }

      self->_cdpState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
      v5 = objc_alloc_init(SFDeviceOperationCDPSetup);
      cdpSetupOperation = self->_cdpSetupOperation;
      self->_cdpSetupOperation = v5;

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setSfSession:self->_sfSession];
      if (self->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setPresentingViewController:?];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = self;
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation activate];
    }
  }

  return self->_cdpState;
}

void __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 128);
  if (v7)
  {
    v11 = v3;
    if (v3)
    {
      *(v4 + 144) = 3;
      v8 = *v5;
      v9 = SFNestedErrorF();
      [v8 _reportError:v9];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 17) = v10;
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceSetupWHASession__runCDPSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 36) = 4;
      [*v5 _run];
    }

    v3 = v11;
  }
}

- (int)_runHomeKitSetup
{
  homeKitState = self->_homeKitState;
  if (homeKitState != 4)
  {
    if (homeKitState)
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30)
      {
        if (gLogCategory_SFDeviceSetupWHASession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_homeKitState;
          }

          v7 = self->_homeKitState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupWHASession _runHomeKitSetup];
      }

      self->_homeKitState = 1;
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup invalidate];
      v4 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetup = self->_homeKitSetup;
      self->_homeKitSetup = v4;

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setUserInteractive:1];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setTrSession:self->_trSession];
      if (self->_homeKitDoFullSetup)
      {
        if (self->_promptForHomeHandler)
        {
          [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setPromptForHomeHandler:?];
        }

        if (self->_promptForRoomHandler)
        {
          [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setPromptForRoomHandler:?];
        }
      }

      else
      {
        [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setKeyExchangeOnly:1];
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFDeviceSetupWHASession__runHomeKitSetup__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup setCompletionHandler:v8];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetup activate];
    }
  }

  return self->_homeKitState;
}

void __43__SFDeviceSetupWHASession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    v13 = v3;
    if (v3)
    {
      if ((*(v4 + 49) & 2) == 0)
      {
        *(v4 + 160) = 3;
        [*(a1 + 32) _reportError:v3];
LABEL_16:
        v3 = v13;
        goto LABEL_17;
      }

      if (gLogCategory_SFDeviceSetupWHASession > 90)
      {
        goto LABEL_14;
      }

      if (gLogCategory_SFDeviceSetupWHASession == -1)
      {
        v10 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v10)
        {
          goto LABEL_14;
        }

        v5 = *(v4 + 152);
      }

      [v5 metricNonUserSeconds];
      v12 = v13;
      v11 = v7;
      LogPrintF();
      v4 = *(a1 + 32);
LABEL_14:
      v9 = 2;
      goto LABEL_15;
    }

    if (gLogCategory_SFDeviceSetupWHASession <= 30)
    {
      if (gLogCategory_SFDeviceSetupWHASession == -1)
      {
        v8 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v8)
        {
          goto LABEL_12;
        }

        v5 = *(v4 + 152);
      }

      [v5 metricNonUserSeconds];
      v11 = v6;
      LogPrintF();
      v4 = *(a1 + 32);
    }

LABEL_12:
    v9 = 4;
LABEL_15:
    *(v4 + 160) = v9;
    [*(a1 + 32) _run];
    goto LABEL_16;
  }

LABEL_17:
}

- (int)_runFinish
{
  result = self->_finishState;
  if (!result)
  {
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHASession _runFinish];
    }

    self->_finishState = 1;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:&unk_1F1D7D048 forKeyedSubscript:@"op"];
    sfSession = self->_sfSession;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__SFDeviceSetupWHASession__runFinish__block_invoke;
    v6[3] = &unk_1E788D070;
    v6[4] = self;
    [(SFSession *)sfSession sendRequestWithFlags:1 object:v4 responseHandler:v6];
    self->_finishState = 4;

    return self->_finishState;
  }

  return result;
}

void __37__SFDeviceSetupWHASession__runFinish__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    goto LABEL_19;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (!Int64Ranged)
  {
    goto LABEL_20;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A768];
  v11 = Int64Ranged;
  v17 = *MEMORY[0x1E696A578];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v13 = v12;
  v14 = @"?";
  if (v12)
  {
    v14 = v12;
  }

  v18[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v6 = [v9 errorWithDomain:v10 code:v11 userInfo:v15];

  if (v6)
  {
LABEL_19:
    if (gLogCategory_SFDeviceSetupWHASession <= 50 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      __37__SFDeviceSetupWHASession__runFinish__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 168) = 3;
    [*(a1 + 32) _reportError:v6];
  }

  else
  {
LABEL_20:
    if (gLogCategory_SFDeviceSetupWHASession <= 30 && (gLogCategory_SFDeviceSetupWHASession != -1 || _LogCategory_Initialize()))
    {
      __37__SFDeviceSetupWHASession__runFinish__block_invoke_cold_2();
    }

    [*(a1 + 32) _cleanup];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)_verifyiCloudMatch:(unint64_t)a3 error:(id *)a4
{
  v7 = SFMyAltDSID();
  v8 = [v7 UTF8String];

  if (v8)
  {
    v9 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v10 = v9;
    if (v9)
    {
      [v9 bytes];
      strlen(v8);
      if (SipHash() == a3)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_5;
      }
    }

    v12 = NSErrorWithOSStatusF();
  }

  else
  {
    v12 = NSErrorWithOSStatusF();
    v10 = 0;
  }

  v11 = v12 != 0;
  if (a4 && v12)
  {
    v14 = v12;
    *a4 = v12;
    v11 = 1;
  }

LABEL_5:

  return !v11;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = [(SFDeviceSetupWHASession *)self _runSFSessionStart];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(SFDeviceSetupWHASession *)self _runPairVerify];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceSetupWHASession *)self _runPairSetup], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          v9 = [(SFDeviceSetupWHASession *)self _runInfoExchange];
          if (v9 == 4 || v9 == 2)
          {
            v11 = [(SFDeviceSetupWHASession *)self _runTRSessionStart];
            if (v11 == 4 || v11 == 2)
            {
              if (!self->_trSetupConfigurationEnabled || ((v13 = [(SFDeviceSetupWHASession *)self _runTRSetupConfiguration], v13 != 4) ? (v14 = v13 == 2) : (v14 = 1), v14))
              {
                if (!self->_trAuthenticationEnabled || ((v15 = [(SFDeviceSetupWHASession *)self _runTRAuthentication], v15 != 4) ? (v16 = v15 == 2) : (v16 = 1), v16))
                {
                  v17 = [(SFDeviceSetupWHASession *)self _runHomeKitSetup];
                  if (v17 == 4 || v17 == 2)
                  {
                    if (!self->_cdpEnabled || (self->_peerProblemsFlags & 0x20000) == 0 || ((v19 = [(SFDeviceSetupWHASession *)self _runCDPSetup], v19 != 4) ? (v20 = v19 == 2) : (v20 = 1), v20))
                    {

                      [(SFDeviceSetupWHASession *)self _runFinish];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end