@interface SFDeviceSetupWHAService
- (SFDeviceSetupWHAService)init;
- (void)_cleanup;
- (void)_handleInfoExchange:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceSetupWHAService

- (SFDeviceSetupWHAService)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupWHAService;
  v2 = [(SFDeviceSetupWHAService *)&v7 init];
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
    [(SFDeviceSetupWHAService *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupWHAService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupWHAService;
    [(SFDeviceSetupWHAService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupWHAService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupWHAService_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupWHAService_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 10) = CFPrefs_GetInt64() != 0;
  return [*(a1 + 32) _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupWHAService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupWHAService_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceSetupWHAService_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    [v2 _handleSessionEnded:?];
    v2 = *(a1 + 32);
  }

  [*(v2 + 16) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v5 = *(a1 + 32);
  v6 = v5[7];
  if (v6)
  {
    (*(v6 + 16))(v5[7], 20, 0);
    v5 = *(a1 + 32);
  }

  return [v5 _cleanup];
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHAService _sfServiceStart];
  }

  [(SFService *)self->_sfService invalidate];
  v3 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v3;

  [(SFService *)self->_sfService setDeviceActionType:13];
  [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.WHASetup"];
  [(SFService *)self->_sfService setLabel:@"WHASetup"];
  [(SFService *)self->_sfService setNeedsSetup:1];
  [(SFService *)self->_sfService setPairSetupACL:&unk_1F1D7D628];
  [(SFService *)self->_sfService setPinType:1];
  [(SFService *)self->_sfService setSessionFlags:1];
  [(SFService *)self->_sfService setTouchRemoteEnabled:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke;
  v9[3] = &unk_1E788CA68;
  v9[4] = self;
  [(SFService *)self->_sfService setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_2;
  v8[3] = &unk_1E788CA90;
  v8[4] = self;
  [(SFService *)self->_sfService setSessionEndedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_3;
  v7[3] = &unk_1E788CA40;
  v7[4] = self;
  [(SFService *)self->_sfService setReceivedRequestHandler:v7];
  v5 = self->_sfService;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_4;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

void __42__SFDeviceSetupWHAService__sfServiceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 56);
  if (v3)
  {
    if (v5)
    {
      v8 = @"eo";
      v9[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      (*(v5 + 16))(v5, 30, v6);
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 10, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceSetupWHAService <= 60 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupWHAService *)v5 _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupWHAService _handleSessionStarted:v5];
    }

    objc_storeStrong(&self->_sfSession, a3);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__SFDeviceSetupWHAService__handleSessionStarted___block_invoke;
    v11[3] = &unk_1E788B4F8;
    v11[4] = self;
    [v5 registerRequestID:@"_info" options:0 handler:v11];
    if (self->_prefCDPEnabled)
    {
      v6 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v6;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:v5];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v8 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_2());
    objc_setAssociatedObject(v5, "hmDeviceSetup", v8, 0x301);
    v9 = [v5 trSession];
    [v8 registerMessageHandlersForSession:v9];

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, 0);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_14;
  }

  object = v4;
  if (v4 && gLogCategory_SFDeviceSetupWHAService <= 30)
  {
    if (gLogCategory_SFDeviceSetupWHAService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    v11 = [(SFSession *)sfSession peer];
    LogPrintF();
  }

LABEL_7:
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  objc_setAssociatedObject(object, "hmDeviceSetup", 0, 0x301);
  v7 = objc_getAssociatedObject(object, "finished");
  if (v7)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 100, 0);
    }

    objc_setAssociatedObject(object, "finished", 0, 0x301);
  }

  v9 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  v10 = self->_progressHandler;
  if (v10)
  {
    v10[2](v10, 32, 0);
  }

  v4 = object;
LABEL_14:
}

- (void)_handleInfoExchange:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHAService _handleInfoExchange:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = SFMyAltDSID();
  v10 = [v9 UTF8String];

  if (v10)
  {
    v11 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v12 = v11;
    if (v11)
    {
      [v11 bytes];
      strlen(v10);
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SipHash()];
      [v8 setObject:v13 forKeyedSubscript:@"adh"];
    }
  }

  v14 = 16;
  if (!self->_prefCDPEnabled)
  {
    v14 = 0;
  }

  if (self->_needsCDPRepair)
  {
    v15 = v14 | 0x200;
  }

  else
  {
    v15 = v14;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
  [v8 setObject:v16 forKeyedSubscript:@"ff"];

  v17 = 0;
  if (self->_prefCDPEnabled)
  {
    v18 = objc_alloc_init(getCDPStateControllerClass_1());
    v20 = 0;
    if ([v18 isManateeAvailable:&v20])
    {
      v17 = 0;
    }

    else
    {
      v17 = 0x20000;
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17];
  [v8 setObject:v19 forKeyedSubscript:@"dpf"];

  if (gLogCategory_SFDeviceSetupWHAService <= 30 && (gLogCategory_SFDeviceSetupWHAService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupWHAService _handleInfoExchange:responseHandler:];
  }

  (*(v7 + 2))(v7, 0, 0, v8);
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

@end