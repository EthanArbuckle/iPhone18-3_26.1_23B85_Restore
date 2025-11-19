@interface SFDeviceOperationCDPSetup
- (SFDeviceOperationCDPSetup)init;
- (int)_runCDPApprovalServerStart;
- (int)_runCDPSetupRequest;
- (void)_activate;
- (void)_complete:(id)a3;
- (void)_run;
- (void)activate;
- (void)invalidate;
- (void)uiController:(id)a3 didPresentRootViewController:(id)a4;
@end

@implementation SFDeviceOperationCDPSetup

- (SFDeviceOperationCDPSetup)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceOperationCDPSetup;
  v2 = [(SFDeviceOperationCDPSetup *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceOperationCDPSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationCDPSetup _activate];
  }

  self->_startTicks = mach_absolute_time();
  if (self->_sfSession)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v3;

    v5 = self->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __38__SFDeviceOperationCDPSetup__activate__block_invoke;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    SFDispatchTimerSet(self->_timeoutTimer, 180.0, -1.0, -10.0);
    dispatch_activate(self->_timeoutTimer);
    [(SFDeviceOperationCDPSetup *)self _run];
  }

  else
  {
    v6 = NSErrorWithOSStatusF();
    [(SFDeviceOperationCDPSetup *)self _complete:v6];
  }
}

void __38__SFDeviceOperationCDPSetup__activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[36] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _complete:v2];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceOperationCDPSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__SFDeviceOperationCDPSetup_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 36) = 1;
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF();
  [v1 _complete:v2];
}

- (void)_complete:(id)a3
{
  v14 = a3;
  v4 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v4)
  {
    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    self->_metricSeconds = metricSeconds;
    if (!v14)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup > 30)
      {
        goto LABEL_11;
      }

      if (gLogCategory_SFDeviceOperationCDPSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        metricSeconds = self->_metricSeconds;
      }

      v13 = metricSeconds;
      LogPrintF();
      goto LABEL_11;
    }

    if (gLogCategory_SFDeviceOperationCDPSetup <= 60 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationCDPSetup _complete:];
    }
  }

LABEL_11:
  [(CDPStateController *)self->_cdpController invalidate];
  cdpController = self->_cdpController;
  self->_cdpController = 0;

  cdpContext = self->_cdpContext;
  self->_cdpContext = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v11 = timeoutTimer;
    dispatch_source_cancel(v11);
    v12 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  if (v4)
  {
    v4[2](v4, v14);
  }
}

- (int)_runCDPApprovalServerStart
{
  cdpApprovalServerState = self->_cdpApprovalServerState;
  if (cdpApprovalServerState != 4 && cdpApprovalServerState != 2)
  {
    if (cdpApprovalServerState)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_cdpApprovalServerState;
          }

          v21 = self->_cdpApprovalServerState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationCDPSetup _runCDPApprovalServerStart];
      }

      self->_cdpApprovalServerState = 1;
      v5 = [(SFSession *)self->_sfSession messageSessionTemplate];
      if (v5)
      {
        v6 = v5;
        v7 = [(objc_class *)getACAccountStoreClass_2() defaultStore];
        v8 = [v7 aa_primaryAppleAccount];
        v9 = objc_alloc_init(getCDPContextClass());
        cdpContext = self->_cdpContext;
        self->_cdpContext = v9;

        v11 = [v8 username];
        [(CDPContext *)self->_cdpContext setAppleID:v11];

        v12 = MEMORY[0x1E696AD98];
        v13 = [v8 aa_personID];
        v14 = [v12 numberWithLongLong:{objc_msgSend(v13, "longLongValue")}];
        [(CDPContext *)self->_cdpContext setDsid:v14];

        [(CDPContext *)self->_cdpContext setSharingChannel:v6];
        [(CDPContext *)self->_cdpContext set_skipEscrowFetches:self->_skipEscrowFetches];
        v15 = [objc_alloc(getCDPStateControllerClass()) initWithContext:self->_cdpContext];
        cdpController = self->_cdpController;
        self->_cdpController = v15;

        v17 = self->_presentingViewController;
        if (v17)
        {
          v18 = [objc_alloc(getCDPUIControllerClass()) initWithPresentingViewController:v17];
          [v18 setDelegate:self];
          [v18 setForceInlinePresentation:1];
          [(CDPStateController *)self->_cdpController setUiProvider:v18];
        }

        v19 = self->_cdpController;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke;
        v22[3] = &unk_1E788C170;
        v22[4] = self;
        [(CDPStateController *)v19 startCircleApplicationApprovalServer:v22];
      }

      else
      {
        self->_cdpApprovalServerState = 3;
        v6 = NSErrorWithOSStatusF();
        [(SFDeviceOperationCDPSetup *)self _complete:v6];
      }
    }
  }

  return self->_cdpApprovalServerState;
}

void __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2(uint64_t result)
{
  if ((*(*(result + 32) + 36) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
    {
      __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2_cold_1(v2);
    }

    *(*(v2 + 32) + 8) = 4;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (int)_runCDPSetupRequest
{
  v13[1] = *MEMORY[0x1E69E9840];
  cdpSetupRequestState = self->_cdpSetupRequestState;
  if (cdpSetupRequestState != 4 && cdpSetupRequestState != 2)
  {
    if (cdpSetupRequestState)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_14;
          }

          v10 = self->_cdpSetupRequestState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationCDPSetup _runCDPSetupRequest];
      }

      v12 = @"cdpRepair";
      v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRepair];
      v13[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

      sfSession = self->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke;
      v11[3] = &unk_1E788B548;
      v11[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_cdpSetup" options:0 request:v6 responseHandler:v11];
    }
  }

LABEL_14:
  result = self->_cdpSetupRequestState;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 36) & 1) == 0)
  {
    v9 = v11;
    if (v11)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
      {
        if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v10 = _LogCategory_Initialize(), v9 = v11, v10))
        {
          __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke_cold_1();
          v9 = v11;
        }
      }

      [*(a1 + 32) _complete:v9];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceOperationCDPSetup__runCDPSetupRequest__block_invoke_cold_2();
      }

      *(*(a1 + 32) + 32) = 4;
      [*(a1 + 32) _run];
    }
  }
}

- (void)uiController:(id)a3 didPresentRootViewController:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationCDPSetup uiController:didPresentRootViewController:];
  }
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && self->_completionHandler)
  {
    v3 = [(SFDeviceOperationCDPSetup *)self _runCDPApprovalServerStart];
    if (v3 == 4 || v3 == 2)
    {
      if (self->_skipSetupRequest || ((v5 = [(SFDeviceOperationCDPSetup *)self _runCDPSetupRequest], v5 != 4) ? (v6 = v5 == 2) : (v6 = 1), v6))
      {

        [(SFDeviceOperationCDPSetup *)self _complete:0];
      }
    }
  }
}

uint64_t __55__SFDeviceOperationCDPSetup__runCDPApprovalServerStart__block_invoke_2_cold_1(uint64_t a1)
{
  *(a1 + 48);
  v2 = *(a1 + 40);
  return LogPrintF();
}

@end