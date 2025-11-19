@interface SFDeviceSetupServiceiOS
- (SFDeviceSetupServiceiOS)init;
- (int)_runResumeIfNeeded;
- (void)_cleanup;
- (void)_handleAppEventReceived:(id)a3;
- (void)_handleConfigRequestReceived:(id)a3;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionSecured:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleSetupActionRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSetupActionResume;
- (void)_handleSetupActionSuspend;
- (void)_invalidated;
- (void)_run;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)sendObject:(id)a3;
@end

@implementation SFDeviceSetupServiceiOS

- (SFDeviceSetupServiceiOS)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupServiceiOS;
  v2 = [(SFDeviceSetupServiceiOS *)&v7 init];
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
    [(SFDeviceSetupServiceiOS *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupServiceiOS *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupServiceiOS;
    [(SFDeviceSetupServiceiOS *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  showPINHandler = self->_showPINHandler;
  self->_showPINHandler = 0;

  showPINHandlerEx = self->_showPINHandlerEx;
  self->_showPINHandlerEx = 0;

  hidePINHandler = self->_hidePINHandler;
  self->_hidePINHandler = 0;

  progressHandlerEx = self->_progressHandlerEx;
  self->_progressHandlerEx = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupServiceiOS_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupServiceiOS_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupServiceiOS_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 9) = CFPrefs_GetInt64() != 0;
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    v3 = objc_alloc_init(SFClient);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(*(a1 + 32) + 32) preventExitForLocaleReason:@"iOSSetup"];
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupServiceiOS_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupServiceiOS_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 10) & 1) == 0 && gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceSetupServiceiOS_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 10) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    [v2 _handleSessionEnded:?];
    v2 = *(a1 + 32);
  }

  [*(v2 + 32) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  [*(*(a1 + 32) + 64) invalidate];
  *(*(a1 + 32) + 72) = 0;
  v5 = *(a1 + 32);

  return [v5 _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _invalidated];
    }

    if (!self->_sfService)
    {
      completionHandler = self->_completionHandler;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, 0);
      }

      [(SFDeviceSetupServiceiOS *)self _cleanup];
      self->_invalidateDone = 1;
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupServiceiOS _invalidated];
      }
    }
  }
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

- (int)_runResumeIfNeeded
{
  resumeState = self->_resumeState;
  if (resumeState)
  {
    return resumeState;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69994A8]);
  [v4 setAccessGroup:@"com.apple.Sharing"];
  [v4 setAccessibleType:7];
  [v4 setIdentifier:@"SetupResumeKey"];
  [v4 setSyncType:1];
  [v4 setType:@"SetupResumeKey"];
  v5 = objc_alloc_init(MEMORY[0x1E69994B0]);
  v17 = 0;
  v6 = [v5 copyItemMatchingItem:v4 flags:1 error:&v17];
  v7 = v17;
  v8 = v7;
  if (!v6)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _runResumeIfNeeded];
    }

    resumeState = 2;
    self->_resumeState = 2;

    goto LABEL_21;
  }

  v16 = v7;
  v9 = [v5 removeItemMatchingItem:v6 error:&v16];
  v10 = v16;

  if ((v9 & 1) == 0 && gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _runResumeIfNeeded];
  }

  v11 = [v6 secrets];
  v12 = CFDictionaryGetCFDataOfLength();

  if (!v12)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _runResumeIfNeeded];
    }

    resumeState = 2;
    self->_resumeState = 2;

LABEL_21:
    return resumeState;
  }

  v13 = [v6 secrets];
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();

  if (v14)
  {
    objc_storeStrong(&self->_resumeAuthTag, v12);
    objc_storeStrong(&self->_resumePassword, v14);
    self->_resumeState = 4;
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupServiceiOS *)&self->_resumePassword _runResumeIfNeeded];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _runResumeIfNeeded];
    }

    self->_resumeState = 2;
  }

  if (v14)
  {
    return self->_resumeState;
  }

  else
  {
    return 2;
  }
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _sfServiceStart];
  }

  [(SFService *)self->_sfService invalidate];
  v3 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v3;

  if (self->_advertiseFast)
  {
    [(SFService *)self->_sfService setAdvertiseRate:50];
  }

  [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.iOSSetup"];
  [(SFService *)self->_sfService setNeedsSetup:1];
  [(SFService *)self->_sfService setDeviceActionType:9];
  [(SFService *)self->_sfService setSessionFlags:1];
  if (self->_resumeAuthTag)
  {
    [(SFService *)self->_sfService setAuthTagOverride:?];
    [(SFService *)self->_sfService setSessionFlags:[(SFService *)self->_sfService sessionFlags]| 0x80];
  }

  [(SFService *)self->_sfService setInterruptionHandler:&__block_literal_global_50];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2;
  v13[3] = &unk_1E788B198;
  v13[4] = self;
  [(SFService *)self->_sfService setInvalidationHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3;
  v12[3] = &unk_1E788B238;
  v12[4] = self;
  [(SFService *)self->_sfService setPairSetupCompletionHandler:v12];
  [(SFService *)self->_sfService setPeerDisconnectedHandler:&__block_literal_global_185_0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5;
  v11[3] = &unk_1E788FA78;
  v11[4] = self;
  [(SFService *)self->_sfService setShowPINHandlerEx:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_6;
  v10[3] = &unk_1E788FAA0;
  v10[4] = self;
  [(SFService *)self->_sfService setReceivedObjectHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7;
  v9[3] = &unk_1E788CA68;
  v9[4] = self;
  [(SFService *)self->_sfService setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8;
  v8[3] = &unk_1E788CA90;
  v8[4] = self;
  [(SFService *)self->_sfService setSessionEndedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9;
  v7[3] = &unk_1E788CA68;
  v7[4] = self;
  [(SFService *)self->_sfService setSessionSecuredHandler:v7];
  v5 = self->_sfService;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke()
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_cold_1();
  }
}

uint64_t __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v7 = v3;
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_3_cold_1();
        v4 = v7;
      }
    }

    *(*(a1 + 32) + 24) = 0;
    v6 = *(*(a1 + 32) + 136);
    if (v6)
    {
      (*(v6 + 16))(v6, v4);
      v4 = v7;
    }
  }
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v6 = _LogCategory_Initialize(), v5 = v10, v6))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_5_cold_1();
      v5 = v10;
    }
  }

  *(*(a1 + 32) + 24) = 1;
  v7 = *(a1 + 32);
  v8 = *(v7 + 120);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v10);
  }

  else
  {
    v9 = *(v7 + 128);
    if (!v9)
    {
      goto LABEL_9;
    }

    (*(v9 + 16))(v9, v5);
  }

  v5 = v10;
LABEL_9:
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7(uint64_t a1, void *a2)
{
  v7 = a2;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7_cold_1(v7);
  }

  v3 = *(a1 + 32);
  if (!v3[2])
  {
    v4 = [v7 peer];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v3 = *(a1 + 32);
  }

  [v3 _handleSessionStarted:v7];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8_cold_1(v10);
  }

  v6 = *(*(a1 + 32) + 16);
  v7 = [v10 peer];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }

  [*(a1 + 32) _handleSessionEnded:v10];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9_cold_1(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _handleSessionSecured:v3];
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10_cold_1();
    }

    [*(a1 + 32) _completed:NSErrorToOSStatus()];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_10_cold_2();
    }

    *(*(a1 + 32) + 72) = 1;
    [*(a1 + 32) _run];
  }
}

- (void)sendObject:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_sfService)
  {
    v5 = v4;
    if (self->_peer)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
      {
        if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
        {
          [SFDeviceSetupServiceiOS sendObject:v5];
          v5 = v8;
        }
      }

      v7 = [v5 mutableCopy];
      [v7 setObject:&unk_1F1D7CF28 forKeyedSubscript:@"op"];
      [(SFService *)self->_sfService sendToPeer:self->_peer flags:1 object:v7];
    }

    else
    {
      [SFDeviceSetupServiceiOS sendObject:?];
    }
  }

  else
  {
    [SFDeviceSetupServiceiOS sendObject:];
  }
}

- (void)_handleSessionStarted:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  p_sfSession = &self->_sfSession;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupServiceiOS *)v5 _handleSessionStarted:?];
    }

    goto LABEL_33;
  }

  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _handleSessionStarted:v5];
  }

  objc_storeStrong(&self->_sfSession, a3);
  resumePassword = self->_resumePassword;
  if (resumePassword)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || (v9 = _LogCategory_Initialize(), resumePassword = self->_resumePassword, v9))
      {
        v15 = resumePassword;
        LogPrintF();
        resumePassword = self->_resumePassword;
      }
    }

    v8 = *p_sfSession;
  }

  else
  {
    if ([*p_sfSession sharingSourceVersion] < 0x89A260)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupServiceiOS _handleSessionStarted:?];
      }

      goto LABEL_25;
    }

    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _handleSessionStarted:];
    }

    v8 = *p_sfSession;
    resumePassword = @"public";
  }

  [v8 setFixedPIN:{resumePassword, v15}];
LABEL_25:
  v10 = [v5 messageSessionTemplate];
  if (v10)
  {
    sfSession = self->_sfSession;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__SFDeviceSetupServiceiOS__handleSessionStarted___block_invoke;
    v16[3] = &unk_1E788B4F8;
    v16[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D498 handler:v16];
    progressHandlerEx = self->_progressHandlerEx;
    if (progressHandlerEx)
    {
      v17 = @"mst";
      v18[0] = v10;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      progressHandlerEx[2](progressHandlerEx, 31, v13);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }

  else if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _handleSessionStarted:];
  }

LABEL_33:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession == v4)
  {
    v12 = v4;
    if (v4 && gLogCategory_SFDeviceSetupServiceiOSCore <= 30)
    {
      if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
      {
LABEL_5:
        v11 = [(SFSession *)sfSession peer];
        LogPrintF();

        goto LABEL_7;
      }

      if (_LogCategory_Initialize())
      {
        sfSession = self->_sfSession;
        goto LABEL_5;
      }
    }

LABEL_7:
    v6 = _Block_copy(self->_progressHandlerEx);
    v7 = v6;
    if (self->_suspendPending)
    {
      self->_suspendPending = 0;
      if (v6)
      {
        (*(v6 + 2))(v6, 98, 0);
LABEL_11:
        v7[2](v7, 32, 0);
      }
    }

    else if (v6)
    {
      goto LABEL_11;
    }

    resumeAuthTag = self->_resumeAuthTag;
    self->_resumeAuthTag = 0;

    resumePassword = self->_resumePassword;
    self->_resumePassword = 0;

    v10 = self->_sfSession;
    self->_sfSession = 0;

    [(SFService *)self->_sfService setAuthTagOverride:0];
    [(SFService *)self->_sfService setNeedsSetup:1];

    v4 = v12;
  }
}

- (void)_handleSessionSecured:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFSession *)self->_sfSession fixedPIN];

  if (v5)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _handleSessionSecured:];
    }

    [(SFSession *)self->_sfSession setFixedPIN:0];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _handleSessionSecured:];
    }

    if (self->_progressHandlerEx)
    {
      v6 = [v4 messageSessionTemplate];
      v7 = v6;
      if (v6)
      {
        progressHandlerEx = self->_progressHandlerEx;
        v11 = @"mst";
        v12[0] = v6;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
        progressHandlerEx[2](progressHandlerEx, 33, v9);
      }

      else if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupServiceiOS _handleSessionSecured:];
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleConfigRequestReceived:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v14 = objc_alloc_init(v4);
  fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
  if (!fileTransferSessionTemplate)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69C6B90]);
    v8 = self->_fileTransferSessionTemplate;
    self->_fileTransferSessionTemplate = v7;

    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setFlags:291];
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate prepareTemplateAndReturnError:0];
  }

  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();

  if (v9)
  {
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setPeerPublicKey:v9];
  }

  v10 = [(RPFileTransferSession *)self->_fileTransferSessionTemplate selfPublicKey];
  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"ftPK"];
  }

  v11 = [(RPFileTransferSession *)self->_fileTransferSessionTemplate targetID];
  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:@"ftTID"];
  }

  if (!fileTransferSessionTemplate)
  {
    v12 = _Block_copy(self->_progressHandlerEx);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 420, 0);
    }
  }

  [(SFDeviceSetupServiceiOS *)self sendObject:v14];
}

- (void)_handleAppEventReceived:(id)a3
{
  v6 = a3;
  CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _handleAppEventReceived:];
  }

  receivedObjectHandler = self->_receivedObjectHandler;
  v5 = v6;
  if (receivedObjectHandler)
  {
    receivedObjectHandler[2](receivedObjectHandler, v6);
    v5 = v6;
  }
}

- (void)_handleSetupActionRequest:(id)a3 responseHandler:(id)a4
{
  v10 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 30 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupServiceiOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  if (Int64Ranged == 7)
  {
    [(SFDeviceSetupServiceiOS *)self _handleSetupActionResume];
  }

  else if (Int64Ranged == 6)
  {
    [(SFDeviceSetupServiceiOS *)self _handleSetupActionSuspend];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupServiceiOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
    }

    [v8 setObject:&unk_1F1D7CF40 forKeyedSubscript:@"er"];
  }

  (*(v7 + 2))(v7, 0, 0, v8);
}

- (void)_handleSetupActionSuspend
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 90 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)_handleSetupActionResume
{
  v2 = _Block_copy(self->_progressHandlerEx);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 97, 0);
    v2 = v3;
  }
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_7_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_8_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __42__SFDeviceSetupServiceiOS__sfServiceStart__block_invoke_9_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (uint64_t)_receivedObject:flags:.cold.2()
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_receivedObject:flags:.cold.3()
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 50)
  {
    if (gLogCategory_SFDeviceSetupServiceiOSCore != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)sendObject:(uint64_t)result .cold.2(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16();
    }
  }

  return result;
}

- (void)sendObject:.cold.3()
{
  if (gLogCategory_SFDeviceSetupServiceiOSCore <= 60 && (gLogCategory_SFDeviceSetupServiceiOSCore != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1_16();
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.1(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788FAC0[a2 & 0xF];
  }

  return LogPrintF();
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788FB18[a2 & 0xF];
  }

  return LogPrintF();
}

@end