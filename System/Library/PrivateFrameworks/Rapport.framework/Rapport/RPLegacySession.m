@interface RPLegacySession
- (RPLegacySession)init;
- (int)_runMobileDeviceStart;
- (int)_runPairVerify;
- (void)_activateWithCompletion:(id)a3;
- (void)_cleanup;
- (void)_invalidate;
- (void)_invalidated;
- (void)_pairSetupTryPIN:(id)a3;
- (void)_run;
- (void)_sendQueuedMessages;
- (void)_unpairWithCompletion:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)a3;
- (void)pairSetupWithFlags:(unsigned int)a3 completion:(id)a4;
- (void)pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4;
- (void)requestSystemInfoWithCompletion:(id)a3;
- (void)sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6;
- (void)unpairWithCompletion:(id)a3;
@end

@implementation RPLegacySession

- (RPLegacySession)init
{
  v5.receiver = self;
  v5.super_class = RPLegacySession;
  v2 = [(RPLegacySession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
  }

  return v3;
}

- (void)dealloc
{
  [(RPLegacySession *)self _cleanup];
  v3.receiver = self;
  v3.super_class = RPLegacySession;
  [(RPLegacySession *)&v3 dealloc];
}

- (void)_cleanup
{
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RPLegacySession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v15 = a3;
  if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
  {
    [RPLegacySession _activateWithCompletion:];
  }

  if (!self->_invalidateCalled && !self->_activateCalled)
  {
    serviceType = self->_serviceType;
    if (serviceType)
    {
      self->_activateCalled = 1;
      if ([(NSString *)serviceType isEqual:@"RPLegacyServiceTypeMobileDevice"])
      {
        v5 = [(RPDevice *)self->_peerDevice mobileDevice];
        if (v5)
        {
          v6 = v5;
        }

        else
        {
          v6 = [(RPDevice *)self->_peerDevice pairedPeer];
          v11 = [v6 info];
          v12 = [v11 objectForKeyedSubscript:@"udid"];

          if (!v12)
          {
            goto LABEL_11;
          }

          v13 = objc_alloc_init(MEMORY[0x1E69994C8]);
          [v13 setUdid:v12];
          [(RPDevice *)self->_peerDevice setMobileDevice:v13];

          if (!v13)
          {
            goto LABEL_12;
          }

          v6 = v13;
        }

        self->_mdEnabled = 1;
LABEL_11:

LABEL_12:
        [(RPLegacySession *)self _run];
        v7 = 0;
LABEL_20:
        v8 = v15;
        goto LABEL_21;
      }

      v14 = self->_serviceType;
    }
  }

  v7 = RPErrorF();
  v8 = v15;
  if (v7)
  {
    if (gLogCategory_RPLegacySupport <= 60)
    {
      if (gLogCategory_RPLegacySupport != -1 || (v9 = _LogCategory_Initialize(), v8 = v15, v9))
      {
        [RPLegacySession _activateWithCompletion:];
        v8 = v15;
      }
    }

    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      errorHandler[2](errorHandler, v7);
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v8)
  {
    v15[2](v15, v7);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__RPLegacySession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  self->_invalidateCalled = 1;
  [(CUMobileDeviceSession *)self->_mdSession invalidate];

  [(RPLegacySession *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPLegacySupport <= 60 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      [RPLegacySession _invalidated];
    }

    if (!self->_mdSession)
    {
      invalidationHandler = self->_invalidationHandler;
      if (invalidationHandler)
      {
        invalidationHandler[2]();
      }

      [(RPLegacySession *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacySession _invalidated];
      }
    }
  }
}

- (int)_runMobileDeviceStart
{
  mdState = self->_mdState;
  if (mdState != 4 && mdState != 2)
  {
    if (mdState)
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_mdState;
          }

          v9 = self->_mdState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacySession _runMobileDeviceStart];
      }

      self->_mdState = 1;
      v5 = objc_alloc_init(MEMORY[0x1E69994D8]);
      mdSession = self->_mdSession;
      self->_mdSession = v5;

      [(CUMobileDeviceSession *)self->_mdSession setDispatchQueue:self->_dispatchQueue];
      v7 = [(RPDevice *)self->_peerDevice mobileDevice];
      [(CUMobileDeviceSession *)self->_mdSession setPeerDevice:v7];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __40__RPLegacySession__runMobileDeviceStart__block_invoke;
      v10[3] = &unk_1E7C92CE8;
      v10[4] = self;
      [(CUMobileDeviceSession *)self->_mdSession setInvalidationHandler:v10];
      [(CUMobileDeviceSession *)self->_mdSession setPromptForPINHandler:self->_promptForPINHandler];
      [(CUMobileDeviceSession *)self->_mdSession activate];
      self->_mdState = 4;
    }
  }

  return self->_mdState;
}

_BYTE *__40__RPLegacySession__runMobileDeviceStart__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = *(a1 + 32);
  if (result[9] == 1)
  {

    return [result _invalidated];
  }

  return result;
}

- (int)_runPairVerify
{
  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4 && pairVerifyState != 2)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_RPLegacySupport <= 30)
      {
        if (gLogCategory_RPLegacySupport == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          v6 = self->_pairVerifyState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
      {
        [RPLegacySession _runPairVerify];
      }

      self->_pairVerifyState = 1;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __33__RPLegacySession__runPairVerify__block_invoke;
      v7[3] = &unk_1E7C92D58;
      v7[4] = self;
      [(RPLegacySession *)self pairVerifyWithFlags:8 completion:v7];
    }
  }

  return self->_pairVerifyState;
}

void __33__RPLegacySession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (!v3)
  {
    if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
    {
      __33__RPLegacySession__runPairVerify__block_invoke_cold_2();
    }

    *(*(a1 + 32) + 28) = 4;
    [*(a1 + 32) _run];
    goto LABEL_11;
  }

  v4 = v3;
  if (gLogCategory_RPLegacySupport <= 30)
  {
    if (gLogCategory_RPLegacySupport != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      __33__RPLegacySession__runPairVerify__block_invoke_cold_1();
      v4 = v7;
    }
  }

  *(*(a1 + 32) + 28) = 3;
  v6 = *(*(a1 + 32) + 88);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
LABEL_11:
    v4 = v7;
  }
}

- (void)pairSetupWithFlags:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__RPLegacySession_pairSetupWithFlags_completion___block_invoke;
  block[3] = &unk_1E7C92EC0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __50__RPLegacySession__pairSetupWithFlags_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)pairSetupTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__RPLegacySession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_pairSetupTryPIN:(id)a3
{
  if (self->_mdEnabled)
  {
    [(CUMobileDeviceSession *)self->_mdSession pairSetupTryPIN:a3];
  }
}

- (void)pairVerifyWithFlags:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__RPLegacySession_pairVerifyWithFlags_completion___block_invoke;
  block[3] = &unk_1E7C92EC0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __51__RPLegacySession__pairVerifyWithFlags_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)unpairWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__RPLegacySession_unpairWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_unpairWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mdEnabled && (mdSession = self->_mdSession) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__RPLegacySession__unpairWithCompletion___block_invoke;
    v8[3] = &unk_1E7C92DA8;
    v9 = v4;
    [(CUMobileDeviceSession *)mdSession unpairWithCompletion:v8];
  }

  else
  {
    v7 = RPErrorF();
    (v5)[2](v5, v7);
  }
}

- (void)sendRequestID:(id)a3 options:(id)a4 request:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RPLegacySession_sendRequestID_options_request_responseHandler___block_invoke;
  block[3] = &unk_1E7C94AA8;
  v20 = v12;
  v21 = v11;
  v23 = self;
  v24 = v13;
  v22 = v10;
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  dispatch_async(dispatchQueue, block);
}

void __65__RPLegacySession_sendRequestID_options_request_responseHandler___block_invoke(uint64_t a1)
{
  v6 = objc_alloc_init(RPLegacySessionMessage);
  [(RPLegacySessionMessage *)v6 setMessage:*(a1 + 32)];
  [(RPLegacySessionMessage *)v6 setOptions:*(a1 + 40)];
  [(RPLegacySessionMessage *)v6 setRequestID:*(a1 + 48)];
  [(RPLegacySessionMessage *)v6 setResponseHandler:*(a1 + 64)];
  v2 = *(*(a1 + 56) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 56);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 56) + 16);
  }

  [v2 addObject:v6];
  [*(a1 + 56) _sendQueuedMessages];
}

- (void)_sendQueuedMessages
{
  if (self->_messagingReady)
  {
    v3 = [(NSMutableArray *)self->_messageSendQueue firstObject];
    if (v3)
    {
      v4 = v3;
      do
      {
        [(NSMutableArray *)self->_messageSendQueue removeObjectAtIndex:0];
        [(RPLegacySession *)self _sendMessage:v4];

        v4 = [(NSMutableArray *)self->_messageSendQueue firstObject];
      }

      while (v4);
    }
  }
}

- (void)requestSystemInfoWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__RPLegacySession_requestSystemInfoWithCompletion___block_invoke;
  v6[3] = &unk_1E7C93780;
  v7 = v4;
  v5 = v4;
  [(RPLegacySession *)self sendRequestID:@"_systemInfo" options:&unk_1F2EEC9B8 request:MEMORY[0x1E695E0F8] responseHandler:v6];
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    if (!self->_mdEnabled || ((v3 = [(RPLegacySession *)self _runMobileDeviceStart], v3 != 4) ? (v4 = v3 == 2) : (v4 = 1), v4))
    {
      if ((self->_securityFlags & 2) != 0 || ((v5 = [(RPLegacySession *)self _runPairVerify], v5 != 4) ? (v6 = v5 == 2) : (v6 = 1), v6))
      {
        if (gLogCategory_RPLegacySupport <= 30 && (gLogCategory_RPLegacySupport != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        self->_messagingReady = 1;

        [(RPLegacySession *)self _sendQueuedMessages];
      }
    }
  }
}

@end