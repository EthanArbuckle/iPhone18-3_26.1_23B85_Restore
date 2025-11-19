@interface SFPINPairSession
- (SFPINPairSession)init;
- (uint64_t)_activate;
- (void)_activate;
- (void)_cleanup;
- (void)_clientHeartbeatSend;
- (void)_clientPairSetup:(id)a3 start:(BOOL)a4;
- (void)_clientPairVerify:(id)a3 start:(BOOL)a4;
- (void)_clientRun;
- (void)_clientSFSessionStart;
- (void)_clientTryPIN:(id)a3;
- (void)_handleServerRequest:(id)a3;
- (void)_hearbeatTimer;
- (void)_invalidate;
- (void)activate;
- (void)clientTryPIN:(id)a3;
- (void)dealloc;
- (void)handleServerHeartbeat:(id)a3;
- (void)handleServerPairSetup:(id)a3 reset:(BOOL)a4;
- (void)handleServerPairVerify:(id)a3 reset:(BOOL)a4;
- (void)handleServerRequest:(id)a3;
- (void)invalidate;
@end

@implementation SFPINPairSession

- (SFPINPairSession)init
{
  v7.receiver = self;
  v7.super_class = SFPINPairSession;
  v2 = [(SFPINPairSession *)&v7 init];
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
    v7 = [SFRemoteAutoFillService dealloc];
    [(SFPINPairSession *)v7 activate];
  }

  else
  {
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    promptForPINHandler = self->_promptForPINHandler;
    self->_promptForPINHandler = 0;

    showPINHandler = self->_showPINHandler;
    self->_showPINHandler = 0;

    hidePINHandler = self->_hidePINHandler;
    self->_hidePINHandler = 0;

    v9.receiver = self;
    v9.super_class = SFPINPairSession;
    [(SFPINPairSession *)&v9 dealloc];
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SFPINPairSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)self _activate];
  }

  self->_activateCalled = 1;
  self->_startTicks = mach_absolute_time();
  if (!self->_transaction)
  {
    v3 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v3;

    if (!self->_transaction && gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _activate];
    }
  }

  if (!self->_heartbeatTimer)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _activate];
    }

    self->_heartbeatLastTicks = mach_absolute_time();
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    heartbeatTimer = self->_heartbeatTimer;
    self->_heartbeatTimer = v5;

    v7 = self->_heartbeatTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__SFPINPairSession__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    SFDispatchTimerSet(self->_heartbeatTimer, 1.0, 1.0, -4.0);
    dispatch_resume(self->_heartbeatTimer);
  }

  if (self->_peerDevice)
  {
    [(SFPINPairSession *)self _clientRun];
  }

  else if (!self->_sfService)
  {
    [(SFPINPairSession *)self _activate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SFPINPairSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _invalidate];
  }

  self->_invalidateCalled = 1;
  heartbeatTimer = self->_heartbeatTimer;
  if (heartbeatTimer)
  {
    v4 = heartbeatTimer;
    dispatch_source_cancel(v4);
    v5 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }

  [(SFPINPairSession *)self _cleanup];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, 0);
    v7 = self->_completionHandler;
  }

  else
  {
    v7 = 0;
  }

  self->_completionHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  transaction = self->_transaction;
  self->_transaction = 0;
}

- (void)_cleanup
{
  self->_pairSetupDone = 0;
  pairSetupSession = self->_pairSetupSession;
  if (pairSetupSession)
  {
    CFRelease(pairSetupSession);
    self->_pairSetupSession = 0;
  }

  self->_pairVerifyDone = 0;
  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  self->_sfSessionActivated = 0;
}

- (void)_hearbeatTimer
{
  mach_absolute_time();
  heartbeatLastTicks = self->_heartbeatLastTicks;
  v4 = UpTicksToMilliseconds();
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _hearbeatTimer];
  }

  if (self->_pairSetupWaitingForUser || v4 >> 3 < 0x753)
  {
    if (self->_sfSessionActivated)
    {

      [(SFPINPairSession *)self _clientHeartbeatSend];
    }
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _hearbeatTimer];
    }

    heartbeatTimer = self->_heartbeatTimer;
    if (heartbeatTimer)
    {
      v6 = heartbeatTimer;
      dispatch_source_cancel(v6);
      v7 = self->_heartbeatTimer;
      self->_heartbeatTimer = 0;
    }

    [(SFPINPairSession *)self _completed:4294960574];
  }
}

- (void)_clientRun
{
  v8[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_clientStarted)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientRun];
    }

    [(SFPINPairSession *)self _cleanup];
    UUIDGet();
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:16];
    clientSessionUUID = self->_clientSessionUUID;
    self->_clientSessionUUID = v3;

    self->_clientStarted = 1;
  }

  if (!self->_sfSession)
  {
    [(SFPINPairSession *)self _clientSFSessionStart];
    goto LABEL_29;
  }

  if (self->_sfSessionActivated)
  {
    pairVerifyDone = self->_pairVerifyDone;
    if (self->_pairVerifySession)
    {
      if (!self->_pairVerifyDone)
      {
        if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
        {
          [SFPINPairSession _clientRun];
        }

        goto LABEL_29;
      }
    }

    else if (!self->_pairVerifyDone)
    {
      [(SFPINPairSession *)self _clientPairVerify:0 start:1];
      goto LABEL_29;
    }

    pairSetupDone = self->_pairSetupDone;
    if (self->_pairSetupSession)
    {
      if (!self->_pairSetupDone && gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
      {
        [SFPINPairSession _clientRun];
      }
    }

    else if (!self->_pairSetupDone)
    {
      [(SFPINPairSession *)self _clientPairSetup:0 start:1];
    }
  }

  else if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _clientRun];
  }

LABEL_29:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_clientHeartbeatSend
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (self->_heartbeatSending)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientHeartbeatSend];
    }
  }

  else
  {
    self->_heartbeatSending = 1;
    v3 = objc_alloc_init(SFRequestMessage);
    v8[0] = @"op";
    v8[1] = @"sid";
    clientSessionUUID = self->_clientSessionUUID;
    v9[0] = &unk_1F1D7D078;
    v9[1] = clientSessionUUID;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [(SFMessage *)v3 setHeaderFields:v5];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__SFPINPairSession__clientHeartbeatSend__block_invoke;
    v7[3] = &unk_1E78902C0;
    v7[4] = self;
    [(SFRequestMessage *)v3 setResponseHandler:v7];
    [(SFSession *)self->_sfSession sendRequest:v3];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __40__SFPINPairSession__clientHeartbeatSend__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *(*(a1 + 32) + 32) = mach_absolute_time();
  *(*(a1 + 32) + 48) = 0;
}

- (void)_clientSFSessionStart
{
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _clientSFSessionStart];
  }

  [(SFSession *)self->_sfSession invalidate];
  v3 = objc_alloc_init(SFSession);
  sfSession = self->_sfSession;
  self->_sfSession = v3;

  [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
  [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.PINPair"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke;
  v8[3] = &unk_1E788B238;
  v8[4] = self;
  [(SFSession *)self->_sfSession setErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke_2;
  v7[3] = &unk_1E788B198;
  v7[4] = self;
  [(SFSession *)self->_sfSession setInterruptionHandler:v7];
  [(SFSession *)self->_sfSession setInvalidationHandler:&__block_literal_global_61];
  v5 = self->_sfSession;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SFPINPairSession__clientSFSessionStart__block_invoke_4;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFSession *)v5 activateWithCompletion:v6];
}

void __41__SFPINPairSession__clientSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFPINPairSession <= 90 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    __41__SFPINPairSession__clientSFSessionStart__block_invoke_cold_1();
  }

  [*(a1 + 32) _completed:NSErrorToOSStatus()];
}

uint64_t __41__SFPINPairSession__clientSFSessionStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    __41__SFPINPairSession__clientSFSessionStart__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _completed:4294960534];
}

void __41__SFPINPairSession__clientSFSessionStart__block_invoke_3()
{
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    __41__SFPINPairSession__clientSFSessionStart__block_invoke_3_cold_1();
  }
}

void __41__SFPINPairSession__clientSFSessionStart__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFPINPairSession <= 90 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFPINPairSession__clientSFSessionStart__block_invoke_4_cold_1();
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      __41__SFPINPairSession__clientSFSessionStart__block_invoke_4_cold_2();
    }

    *(*(a1 + 32) + 88) = 1;
    [*(a1 + 32) _clientRun];
  }
}

- (void)_clientPairVerify:(id)a3 start:(BOOL)a4
{
  v4 = a4;
  v31[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  Int64Ranged = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  if (v4)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairVerify:start:];
    }

    p_pairVerifySession = &self->_pairVerifySession;
    pairVerifySession = self->_pairVerifySession;
    if (pairVerifySession)
    {
      CFRelease(pairVerifySession);
      *p_pairVerifySession = 0;
    }

    v9 = PairingSessionCreate();
    Int64Ranged = v9;
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_34;
    }

    v20 = self->_pairVerifySession;
    PairingSessionSetFlags();
    v21 = self->_pairVerifySession;
    PairingSessionSetLogging();
    if ([(SFDevice *)self->_peerDevice osVersion]>= 9)
    {
      v22 = *p_pairVerifySession;
      PairingSessionSetACL();
    }
  }

  else
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairVerify:start:];
    }

    if (!self->_pairVerifySession)
    {
      v10 = 0;
      v11 = 0;
      v9 = 4294960551;
LABEL_54:
      Int64Ranged = v9;
      goto LABEL_34;
    }
  }

  if (v6)
  {
    v12 = [v6 headerFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if (Int64Ranged)
    {
      if (gLogCategory_SFPINPairSession <= 30)
      {
        if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
        {
          [SFPINPairSession _clientPairVerify:start:];
        }

        goto LABEL_51;
      }

LABEL_52:
      v11 = 0;
      v10 = 0;
      goto LABEL_40;
    }

    v13 = [v6 headerFields];
    CFDataGetTypeID();
    v10 = CFDictionaryGetTypedValue();

    if (!v10)
    {
      Int64Ranged = -6762;
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
        {
          [SFPINPairSession _clientPairVerify:start:];
        }

LABEL_51:
        v11 = 0;
        v10 = 0;
        goto LABEL_33;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = self->_pairVerifySession;
  [v10 bytes];
  [v10 length];
  v15 = PairingSessionExchange();
  Int64Ranged = v15;
  if (v26 && !v15)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairVerify:start:];
    }

    [(SFPINPairSession *)self _completed:0];
    goto LABEL_27;
  }

  if (v15)
  {
LABEL_27:
    v11 = 0;
    goto LABEL_33;
  }

  if (!v28)
  {
    v11 = 0;
    v9 = 4294960534;
    goto LABEL_54;
  }

  v11 = objc_alloc_init(SFRequestMessage);
  v16 = &unk_1F1D7D0A8;
  if (v4)
  {
    v16 = &unk_1F1D7D090;
  }

  v31[0] = v16;
  v30[0] = @"op";
  v30[1] = @"pd";
  v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v28 length:v27 freeWhenDone:1];
  v30[2] = @"sid";
  clientSessionUUID = self->_clientSessionUUID;
  v31[1] = v17;
  v31[2] = clientSessionUUID;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [(SFMessage *)v11 setHeaderFields:v19];

  v28 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __44__SFPINPairSession__clientPairVerify_start___block_invoke;
  v25[3] = &unk_1E78902C0;
  v25[4] = self;
  [(SFRequestMessage *)v11 setResponseHandler:v25];
  [(SFSession *)self->_sfSession sendRequest:v11];
LABEL_33:
  v9 = Int64Ranged;
  if (!Int64Ranged)
  {
    goto LABEL_41;
  }

LABEL_34:
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_40;
      }

      v9 = Int64Ranged;
    }

    v24 = v9;
    LogPrintF();
  }

LABEL_40:
  self->_pairVerifyDone = 1;
  [(SFPINPairSession *)self _clientRun];
LABEL_41:
  if (v28)
  {
    free(v28);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __44__SFPINPairSession__clientPairVerify_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    v6 = v5;
    v7 = v8;
    LogPrintF();
  }

  if (v8 || !v5)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      __44__SFPINPairSession__clientPairVerify_start___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 65) = 1;
    [*(a1 + 32) _clientRun];
  }

  else
  {
    [*(a1 + 32) _clientPairVerify:v5 start:0];
  }
}

- (void)_clientPairSetup:(id)a3 start:(BOOL)a4
{
  v4 = a4;
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  Int64Ranged = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (v4)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairSetup:start:];
    }

    v31 = 0;
    v33 = 0u;
    v32 = 0u;
    v29 = 0u;
    v28[5] = self;
    v30 = _clientPairSetupPromptForPIN;
    p_pairSetupSession = &self->_pairSetupSession;
    pairSetupSession = self->_pairSetupSession;
    if (pairSetupSession)
    {
      CFRelease(pairSetupSession);
      *p_pairSetupSession = 0;
    }

    v9 = PairingSessionCreate();
    Int64Ranged = v9;
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      goto LABEL_38;
    }

    v13 = self->_pairSetupSession;
    PairingSessionSetFlags();
    v14 = self->_pairSetupSession;
    PairingSessionSetLogging();
    if ([(SFDevice *)self->_peerDevice osVersion]>= 9)
    {
      v15 = *p_pairSetupSession;
      PairingSessionSetACL();
    }
  }

  else
  {
    if (!self->_pairSetupSession)
    {
      v11 = 0;
      v12 = 0;
      v10 = 4294960551;
      goto LABEL_58;
    }

    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairSetup:start:];
    }
  }

  if (!v6)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v16 = [v6 headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v10 = Int64Ranged;
  if (Int64Ranged)
  {
    if (gLogCategory_SFPINPairSession > 60)
    {
      goto LABEL_52;
    }

    if (gLogCategory_SFPINPairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_61;
      }

      v10 = Int64Ranged;
    }

    v26 = v10;
    LogPrintF();
LABEL_61:
    v12 = 0;
    v11 = 0;
    goto LABEL_37;
  }

  v17 = [v6 headerFields];
  CFDataGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  if (!v11)
  {
    v10 = 4294960534;
    Int64Ranged = -6762;
    if (gLogCategory_SFPINPairSession <= 60)
    {
      if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
      {
        [SFPINPairSession _clientPairSetup:start:];
      }

      goto LABEL_61;
    }

LABEL_52:
    v12 = 0;
    v11 = 0;
LABEL_42:
    [(SFPINPairSession *)self _completed:v10, v26];
    goto LABEL_43;
  }

LABEL_24:
  v18 = self->_pairSetupSession;
  [v11 bytes];
  [v11 length];
  v19 = PairingSessionExchange();
  Int64Ranged = v19;
  if (v34 && !v19)
  {
    if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      [SFPINPairSession _clientPairSetup:start:];
    }

    [(SFPINPairSession *)self _completed:Int64Ranged];
    goto LABEL_30;
  }

  if (v19 != -6771)
  {
    if (v19)
    {
LABEL_30:
      v12 = 0;
      goto LABEL_37;
    }

    if (v36)
    {
      v12 = objc_alloc_init(SFRequestMessage);
      v20 = &unk_1F1D7D0D8;
      if (v4)
      {
        v20 = &unk_1F1D7D0C0;
      }

      v39[0] = v20;
      v38[0] = @"op";
      v38[1] = @"pd";
      v21 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v36 length:v35 freeWhenDone:1];
      v38[2] = @"sid";
      clientSessionUUID = self->_clientSessionUUID;
      v39[1] = v21;
      v39[2] = clientSessionUUID;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
      [(SFMessage *)v12 setHeaderFields:v23];

      v36 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __43__SFPINPairSession__clientPairSetup_start___block_invoke;
      v28[3] = &unk_1E78902C0;
      v28[4] = self;
      [(SFRequestMessage *)v12 setResponseHandler:v28];
      [(SFSession *)self->_sfSession sendRequest:v12];
LABEL_37:
      v10 = Int64Ranged;
      if (!Int64Ranged)
      {
        goto LABEL_43;
      }

LABEL_38:
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || (v24 = _LogCategory_Initialize(), v10 = Int64Ranged, v24))
        {
          v27 = v10;
          LogPrintF();
          [(SFPINPairSession *)self _completed:Int64Ranged, v27];
          goto LABEL_43;
        }
      }

      goto LABEL_42;
    }

    v12 = 0;
    v10 = 4294960534;
LABEL_58:
    Int64Ranged = v10;
    goto LABEL_38;
  }

  Int64Ranged = 0;
  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
    {
      [SFPINPairSession _clientPairSetup:start:];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_43:
  if (v36)
  {
    free(v36);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __43__SFPINPairSession__clientPairSetup_start___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v6 || !v5)
  {
    if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      __43__SFPINPairSession__clientPairSetup_start___block_invoke_cold_1();
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    [*(a1 + 32) _clientPairSetup:v5 start:0];
  }
}

- (void)clientTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SFPINPairSession_clientTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_clientTryPIN:(id)a3
{
  v6 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _clientTryPIN:];
  }

  self->_pairSetupWaitingForUser = 0;
  if (self->_pairSetupSession)
  {
    [v6 UTF8String];
    v4 = PairingSessionSetSetupCode();
    if (!v4)
    {
      [(SFPINPairSession *)self _clientPairSetup:0 start:0];
      goto LABEL_7;
    }

    v5 = v4;
  }

  else
  {
    v5 = 4294960551;
  }

  [(SFPINPairSession *)self _clientTryPIN:v5];
LABEL_7:
}

- (void)handleServerRequest:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFPINPairSession_handleServerRequest___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleServerRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 headerFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [(SFPINPairSession *)Int64Ranged _handleServerRequest:?];
  }

  if (Int64Ranged > 2u)
  {
    if (Int64Ranged != 3)
    {
      if (Int64Ranged == 4)
      {
        v7 = self;
        v8 = v4;
        v9 = 1;
        goto LABEL_15;
      }

      if (Int64Ranged == 5)
      {
        v7 = self;
        v8 = v4;
        v9 = 0;
LABEL_15:
        [(SFPINPairSession *)v7 handleServerPairSetup:v8 reset:v9];
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    v10 = self;
    v11 = v4;
    v12 = 0;
LABEL_13:
    [(SFPINPairSession *)v10 handleServerPairVerify:v11 reset:v12];
    goto LABEL_20;
  }

  if (Int64Ranged == 1)
  {
    [(SFPINPairSession *)self handleServerHeartbeat:v4];
    goto LABEL_20;
  }

  if (Int64Ranged == 2)
  {
    v10 = self;
    v11 = v4;
    v12 = 1;
    goto LABEL_13;
  }

LABEL_17:
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    [SFPINPairSession _handleServerRequest:];
  }

LABEL_20:
}

- (void)handleServerHeartbeat:(id)a3
{
  v4 = a3;
  self->_heartbeatLastTicks = mach_absolute_time();
  v5 = [[SFResponseMessage alloc] initWithRequestMessage:v4];

  [(SFService *)self->_sfService sendResponse:v5];
}

- (void)handleServerPairVerify:(id)a3 reset:(BOOL)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21 = 0;
  p_pairVerifySession = &self->_pairVerifySession;
  pairVerifySession = self->_pairVerifySession;
  if (a4)
  {
    if (pairVerifySession)
    {
      CFRelease(pairVerifySession);
      *p_pairVerifySession = 0;
    }
  }

  else if (pairVerifySession)
  {
    goto LABEL_11;
  }

  v21 = PairingSessionCreate();
  if (v21)
  {
    v9 = 0;
    v10 = 0;
LABEL_7:
    if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_21;
  }

  v11 = *p_pairVerifySession;
  PairingSessionSetFlags();
  v12 = *p_pairVerifySession;
  PairingSessionSetLogging();
LABEL_11:
  v13 = [v6 headerFields];
  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  if (!v10)
  {
    v9 = 0;
    if (([SFPINPairSession handleServerPairVerify:? reset:?]& 1) != 0)
    {
      v10 = 0;
      goto LABEL_21;
    }

    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  v14 = *p_pairVerifySession;
  [v10 bytes];
  [v10 length];
  v21 = PairingSessionExchange();
  v9 = [[SFResponseMessage alloc] initWithRequestMessage:v6];
  v15 = v21;
  if (!v21)
  {
    v21 = -6762;
    goto LABEL_7;
  }

  if (gLogCategory_SFPINPairSession <= 30)
  {
    if (gLogCategory_SFPINPairSession != -1 || (v16 = _LogCategory_Initialize(), v15 = v21, v16))
    {
      v20 = v15;
      LogPrintF();
      v15 = v21;
    }
  }

  v22 = @"err";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:{v15, v20}];
  v23[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  [(SFMessage *)v9 setHeaderFields:v18];

  [(SFService *)self->_sfService sendResponse:v9];
  v21 = 0;
LABEL_21:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)handleServerPairSetup:(id)a3 reset:(BOOL)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  p_pairSetupSession = &self->_pairSetupSession;
  pairSetupSession = self->_pairSetupSession;
  if (a4 || !pairSetupSession)
  {
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24[0] = self;
    v24[1] = _handleServerPairSetupShowPIN;
    v24[2] = _handleServerPairSetupHidePIN;
    if (pairSetupSession)
    {
      CFRelease(pairSetupSession);
      *p_pairSetupSession = 0;
    }

    v31 = PairingSessionCreate();
    if (v31)
    {
      v9 = 0;
      v10 = 0;
LABEL_7:
      if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_23;
    }

    v11 = *p_pairSetupSession;
    PairingSessionSetFlags();
    v12 = *p_pairSetupSession;
    PairingSessionSetLogging();
    v13 = *p_pairSetupSession;
    PairingSessionSetACL();
  }

  v14 = [v6 headerFields];
  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();

  if (v10)
  {
    v15 = *p_pairSetupSession;
    [v10 bytes];
    [v10 length];
    v31 = PairingSessionExchange();
    v9 = [[SFResponseMessage alloc] initWithRequestMessage:v6];
    v16 = v31;
    if (v31)
    {
      if (gLogCategory_SFPINPairSession <= 60)
      {
        if (gLogCategory_SFPINPairSession != -1 || (v19 = _LogCategory_Initialize(), v16 = v31, v19))
        {
          v23 = v16;
          LogPrintF();
          v16 = v31;
        }
      }

      v34 = @"err";
      v20 = [MEMORY[0x1E696AD98] numberWithInt:{v16, v23}];
      v35[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      [(SFMessage *)v9 setHeaderFields:v21];
    }

    else
    {
      if (!v30)
      {
        v31 = -6762;
        goto LABEL_7;
      }

      v32 = @"pd";
      v17 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v30 length:v29 freeWhenDone:1];
      v33 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [(SFMessage *)v9 setHeaderFields:v18];

      v30 = 0;
    }

    [(SFService *)self->_sfService sendResponse:v9];
    v31 = 0;
    goto LABEL_23;
  }

  if (([SFPINPairSession handleServerPairSetup:v24 reset:?]& 1) != 0)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_23;
  }

  v10 = v24[0];
  v9 = 0;
  if (v31)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v30)
  {
    free(v30);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_activate
{
  if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return [a1 _completed:4294960591];
}

- (uint64_t)_clientTryPIN:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  if (gLogCategory_SFPINPairSession <= 60 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return [a1 _completed:a2];
}

- (uint64_t)_handleServerRequest:(unsigned __int8)a1 .cold.1(unsigned __int8 a1, char a2)
{
  if (a1 <= 5u)
  {
    v2 = off_1E78902E0[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_handleServerRequest:(uint64_t)result .cold.2(uint64_t result)
{
  if (gLogCategory_SFPINPairSession > 90)
  {
    return result;
  }

  v1 = result;
  if (gLogCategory_SFPINPairSession == -1)
  {
    result = _LogCategory_Initialize();
    if (!result)
    {
      goto LABEL_5;
    }

    v2 = *v1;
  }

  result = LogPrintF();
LABEL_5:
  if (*v1 && gLogCategory_SFPINPairSession <= 60)
  {
    if (gLogCategory_SFPINPairSession != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)handleServerPairVerify:(unsigned int *)a1 reset:.cold.1(unsigned int *a1)
{
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession != -1)
  {
LABEL_3:
    LogPrintF();
    return 0;
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    v3 = *a1;
    goto LABEL_3;
  }

  return result;
}

- (uint64_t)handleServerPairVerify:(_DWORD *)a1 reset:.cold.2(_DWORD *a1)
{
  *a1 = -6762;
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession != -1 || (result = _LogCategory_Initialize(), result))
  {
    LogPrintF();
    return 0;
  }

  return result;
}

- (uint64_t)handleServerPairSetup:(uint64_t)a3 reset:(void *)a4 .cold.1(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_6;
    }

    v8 = *a1;
  }

  LogPrintF();
LABEL_6:
  result = 0;
  *a4 = a3;
  return result;
}

- (uint64_t)handleServerPairSetup:(_DWORD *)a1 reset:(void *)a2 .cold.2(_DWORD *a1, void *a2)
{
  *a1 = -6762;
  if (gLogCategory_SFPINPairSession > 60)
  {
    return 1;
  }

  if (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize())
  {
    LogPrintF();
  }

  result = 0;
  *a2 = 0;
  return result;
}

@end