@interface SFDeviceRepairService
- (BOOL)_localDeviceSupportsAppleIDSetup;
- (SFDeviceRepairService)init;
- (id)_whenLastProblemWasRecorded;
- (unint64_t)_lastProblemRecorded;
- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleGetProblemsRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_invalidate;
- (void)_recordNewProblem:(unint64_t)a3;
- (void)_registerAppleIDSetupIfNecessary;
- (void)_registerCDPAndTouchRemoteIfNecessary;
- (void)_repairMetricsDailyPush;
- (void)_repairMetricsNewProblemFlags:(unint64_t)a3;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidateWithFlags:(unsigned int)a3;
- (void)setProblemFlags:(unint64_t)a3;
@end

@implementation SFDeviceRepairService

- (SFDeviceRepairService)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceRepairService;
  v2 = [(SFDeviceRepairService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDeviceRepairService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  if (!self->_repairMetricsTimer)
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService activate];
    }

    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    repairMetricsTimer = self->_repairMetricsTimer;
    self->_repairMetricsTimer = v4;

    v6 = self->_repairMetricsTimer;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __33__SFDeviceRepairService_activate__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    dispatch_source_set_event_handler(v6, v7);
    SFDispatchTimerSet(self->_repairMetricsTimer, 86400.0, 86400.0, -5.0);
    dispatch_resume(self->_repairMetricsTimer);
  }
}

uint64_t __33__SFDeviceRepairService_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    __33__SFDeviceRepairService_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 56) = CFPrefs_GetInt64() != 0;
  *(*(a1 + 32) + 8) = 1;
  return [*(a1 + 32) _sfServiceStart];
}

- (void)setProblemFlags:(unint64_t)a3
{
  if ([(SFDeviceRepairService *)self _lastProblemRecorded]!= a3)
  {
    [(SFDeviceRepairService *)self _repairMetricsNewProblemFlags:a3];
    [(SFDeviceRepairService *)self _recordNewProblem:a3];
  }

  self->_problemFlags = a3;
  if (a3)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  [(SFService *)self->_sfService setDeviceActionType:v5];
  [(SFService *)self->_sfService setProblemFlags:a3];
  sfService = self->_sfService;

  [(SFService *)sfService setNeedsSetup:a3 != 0];
}

- (void)invalidateWithFlags:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SFDeviceRepairService_invalidateWithFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __45__SFDeviceRepairService_invalidateWithFlags___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 9) & 1) == 0)
  {
    v1 = result;
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __45__SFDeviceRepairService_invalidateWithFlags___block_invoke_cold_1(v1);
    }

    *(*(v1 + 32) + 9) = 1;
    v2 = *(v1 + 40);
    *(*(v1 + 32) + 12) = v2;
    v3 = *(v1 + 32);
    if ((v2 & 1) != 0 && v3[3])
    {
      if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
      {
        __45__SFDeviceRepairService_invalidateWithFlags___block_invoke_cold_2();
      }

      [*(*(v1 + 32) + 16) setNeedsSetup:0];
      result = [*(*(v1 + 32) + 16) deviceActionType];
      if (result)
      {
        v4 = *(*(v1 + 32) + 16);

        return [v4 setDeviceActionType:0];
      }
    }

    else
    {

      return [v3 _invalidate];
    }
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFDeviceRepairService *)self _handleSessionEnded:self->_sfSession];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 20, 0);
      v5 = self->_progressHandler;
    }

    else
    {
      v5 = 0;
    }

    self->_progressHandler = 0;

    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _invalidate];
    }
  }
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _sfServiceStart];
  }

  [(SFService *)self->_sfService invalidate];
  v3 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v3;

  [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.Repair"];
  [(SFService *)self->_sfService setLabel:@"TTF"];
  [(SFService *)self->_sfService setNeedsSetup:self->_problemFlags != 0];
  if (self->_problemFlags)
  {
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  [(SFService *)self->_sfService setDeviceActionType:v5];
  [(SFService *)self->_sfService setOverrideScreenOff:1];
  [(SFService *)self->_sfService setPairSetupDisabled:1];
  [(SFService *)self->_sfService setProblemFlags:self->_problemFlags];
  [(SFService *)self->_sfService setSessionFlags:33];
  [(SFService *)self->_sfService setOverrideScreenOff:1];
  [(SFService *)self->_sfService setTouchRemoteEnabled:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke;
  v9[3] = &unk_1E788CA68;
  v9[4] = self;
  [(SFService *)self->_sfService setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke_2;
  v8[3] = &unk_1E788CA90;
  v8[4] = self;
  [(SFService *)self->_sfService setSessionEndedHandler:v8];
  v6 = self->_sfService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFDeviceRepairService__sfServiceStart__block_invoke_3;
  v7[3] = &unk_1E788B238;
  v7[4] = self;
  [(SFService *)v6 activateWithCompletion:v7];
}

void __40__SFDeviceRepairService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __40__SFDeviceRepairService__sfServiceStart__block_invoke_3_cold_1();
    }

    v4 = *(*(a1 + 32) + 160);
    if (v4)
    {
      v7 = @"eo";
      v8[0] = v3;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      (*(v4 + 16))(v4, 30, v5);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_repairMetricsDailyPush
{
  v18[2] = *MEMORY[0x1E69E9840];
  problemFlags = self->_problemFlags;
  NSAppendPrintF();
  v3 = 0;
  v17[0] = @"rawflags";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{self->_problemFlags, problemFlags, &unk_1A998F80E}];
  v17[1] = @"problemFlags";
  v18[0] = v4;
  v5 = &stru_1F1D30528;
  if (v3)
  {
    v5 = v3;
  }

  v18[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v7 = [v6 mutableCopy];

  v8 = [(SFDeviceRepairService *)self _whenLastProblemWasRecorded];
  if (v8)
  {
    v9 = self->_problemFlags;
    v10 = MEMORY[0x1E696AD98];
    v11 = [MEMORY[0x1E695DF00] now];
    [v11 timeIntervalSinceDate:v8];
    v12 = [v10 numberWithDouble:?];
    if (v9)
    {
      v13 = @"timeInBad";
    }

    else
    {
      v13 = @"timeInGood";
    }

    [v7 setObject:v12 forKeyedSubscript:v13];
  }

  v14 = [v7 copy];
  SFMetricsLog(@"com.apple.sharing.ServiceProblemFlagsDaily", v14);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_repairMetricsNewProblemFlags:(unint64_t)a3
{
  v30[6] = *MEMORY[0x1E69E9840];
  v5 = [(SFDeviceRepairService *)self _lastProblemRecorded];
  NSAppendPrintF();
  v6 = 0;
  problemFlags = self->_problemFlags;
  NSAppendPrintF();
  v7 = 0;
  NSAppendPrintF();
  v8 = 0;
  v29[0] = @"flags";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{a3, v5, &unk_1A998F80E}];
  v10 = v9;
  v28 = v6;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v30[0] = v9;
  v30[1] = v11;
  v29[1] = @"problemFlags";
  v29[2] = @"prevFlags";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_problemFlags];
  v13 = v12;
  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_1F1D30528;
  }

  v30[2] = v12;
  v30[3] = v14;
  v29[3] = @"prevFlagsStr";
  v29[4] = @"lastProblem";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v16 = v15;
  v29[5] = @"lastProblemStr";
  if (v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = &stru_1F1D30528;
  }

  v30[4] = v15;
  v30[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];
  v19 = [v18 mutableCopy];

  v20 = [(SFDeviceRepairService *)self _whenLastProblemWasRecorded];
  if (v20)
  {
    if (a3 && !v5)
    {
      v21 = @"timeInGood";
LABEL_17:
      v22 = MEMORY[0x1E696AD98];
      v23 = [MEMORY[0x1E695DF00] now];
      [v23 timeIntervalSinceDate:v20];
      v24 = [v22 numberWithDouble:?];
      [v19 setObject:v24 forKeyedSubscript:v21];

      goto LABEL_18;
    }

    if (!a3 && v5)
    {
      v21 = @"timeInBad";
      goto LABEL_17;
    }
  }

LABEL_18:
  v25 = [v19 copy];
  SFMetricsLog(@"com.apple.sharing.ServiceProblemFlags", v25);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_recordNewProblem:(unint64_t)a3
{
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E695DF00] now];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [v8 setObject:v6 forKey:@"lastProblemTimeIntervalSince1970"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v8 setObject:v7 forKey:@"lastProblemFlags"];
}

- (unint64_t)_lastProblemRecorded
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"lastProblemFlags"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_whenLastProblemWasRecorded
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"lastProblemTimeIntervalSince1970"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceRepairService <= 60 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceRepairService *)v5 _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionStarted:v5];
    }

    v6 = mach_absolute_time();
    problemFlags = self->_problemFlags;
    self->_startTicks = v6;
    self->_startProblemFlags = problemFlags;
    objc_storeStrong(&self->_sfSession, a3);
    v8 = WiFiManagerClientCreate();
    self->_wifiManager = v8;
    if (v8)
    {
      WiFiManagerClientDisable();
    }

    else if (gLogCategory_SFDeviceRepairService <= 60 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionStarted:];
    }

    sfSession = self->_sfSession;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __47__SFDeviceRepairService__handleSessionStarted___block_invoke;
    v20[3] = &unk_1E788B4F8;
    v20[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_getprob" options:0 handler:v20];
    v10 = objc_alloc_init(SFDeviceOperationHandlerWiFiSetup);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v10;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:v5];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    if (SFDeviceClassCodeGet() == 4)
    {
      v12 = objc_alloc_init(SFDeviceOperationHandlerCNJSetup);
      captiveNetworkHandler = self->_captiveNetworkHandler;
      self->_captiveNetworkHandler = v12;

      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:v5];
      [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    }

    v14 = self->_sfSession;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__SFDeviceRepairService__handleSessionStarted___block_invoke_2;
    v19[3] = &unk_1E788B4F8;
    v19[4] = self;
    [(SFSession *)v14 registerRequestID:@"_finish" options:0 handler:v19];
    v15 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_0());
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v15;

    v17 = self->_homeKitSetupHandler;
    v18 = [(SFSession *)self->_sfSession trSession];
    [(HMDeviceSetupOperationHandler *)v17 registerMessageHandlersForSession:v18];
  }
}

- (void)_registerCDPAndTouchRemoteIfNecessary
{
  if (![(SFDeviceRepairService *)self _shouldRunAppleIDSetup])
  {
    if (self->_prefCDPEnabled)
    {
      v3 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v3;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setFailIfCDPNotEnabled:1];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:self->_sfSession];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v5 = objc_alloc_init(SFTouchRemoteAccountServicesHandlerConfiguration);
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setDispatchQueue:self->_dispatchQueue];
    v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1D7D8B0];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setSupportedTRAccountServices:v6];

    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setIsPrimaryAppleAccount:1];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldActivateStoreAccount:SFDeviceClassCodeGet() == 4];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldSuppressStoreSignInDialogs:1];
    [(SFTouchRemoteAccountServicesHandlerConfiguration *)v5 setShouldIgnoreStoreAccountConversion:1];
    v7 = [[SFTouchRemoteAccountServicesHandler alloc] initWithConfiguration:v5];
    touchRemoteHandler = self->_touchRemoteHandler;
    self->_touchRemoteHandler = v7;

    v9 = self->_touchRemoteHandler;
    v10 = [(SFSession *)self->_sfSession trSession];
    v12 = 0;
    LOBYTE(v9) = [(SFTouchRemoteAccountServicesHandler *)v9 activateWithSession:v10 error:&v12];
    v11 = v12;

    if ((v9 & 1) == 0 && gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _registerCDPAndTouchRemoteIfNecessary];
    }
  }
}

- (BOOL)_localDeviceSupportsAppleIDSetup
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = SFDeviceClassCodeGet() == 6;
  }

  return v2;
}

- (void)_registerAppleIDSetupIfNecessary
{
  if ([(SFDeviceRepairService *)self _shouldRunAppleIDSetup])
  {
    if (self->_altDSID)
    {
      v3 = [(SFSession *)self->_sfSession messageSessionTemplate];

      if (v3)
      {
        v6 = objc_alloc_init(getAISRepairControllerClass[0]());
        v4 = [objc_alloc(getAISRepairContextClass[0]()) initWithAltDSID:self->_altDSID];
        v5 = [(SFSession *)self->_sfSession messageSessionTemplate];
        [v4 setMessageSessionTemplate:v5];

        [v4 setRemoteRole:4];
        if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceRepairService _registerAppleIDSetupIfNecessary];
        }

        [v6 repairWithContext:v4 completionHandler:&__block_literal_global_46];
      }

      else if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairService _registerAppleIDSetupIfNecessary];
      }
    }

    else if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _registerAppleIDSetupIfNecessary];
    }
  }
}

void __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (v4)
  {
    if (gLogCategory_SFDeviceRepairService <= 90 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke_cold_1();
    }
  }

  else if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    __57__SFDeviceRepairService__registerAppleIDSetupIfNecessary__block_invoke_cold_2();
  }
}

- (void)_handleSessionEnded:(id)a3
{
  v29[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_22;
  }

  if (v4 && gLogCategory_SFDeviceRepairService <= 30)
  {
    if (gLogCategory_SFDeviceRepairService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    v25 = [(SFSession *)sfSession peer];
    LogPrintF();
  }

LABEL_7:
  problemFlags = self->_problemFlags;
  NSAppendPrintF();
  v6 = 0;
  startProblemFlags = self->_startProblemFlags;
  NSAppendPrintF();
  v7 = 0;
  v28[0] = @"flags";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{self->_problemFlags, startProblemFlags, &unk_1A998F80E}];
  v9 = v8;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v29[0] = v8;
  v29[1] = v10;
  v28[1] = @"problemFlags";
  v28[2] = @"startFlags";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startProblemFlags];
  v12 = v11;
  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v29[2] = v11;
  v29[3] = v13;
  v28[3] = @"startFlagsStr";
  v28[4] = @"totalMs";
  v14 = MEMORY[0x1E696AD98];
  mach_absolute_time();
  startTicks = self->_startTicks;
  v16 = [v14 numberWithUnsignedLongLong:UpTicksToMilliseconds()];
  v29[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:5];
  SFMetricsLog(@"com.apple.sharing.RepairPerformed", v17);

  [(SFSession *)self->_sfSession deregisterRequestID:@"_getprob"];
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  if (self->_wifiManager)
  {
    WiFiManagerClientEnable();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  [(SFTouchRemoteAccountServicesHandler *)self->_touchRemoteHandler invalidate];
  touchRemoteHandler = self->_touchRemoteHandler;
  self->_touchRemoteHandler = 0;

  v23 = self->_sfSession;
  self->_sfSession = 0;

  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleSessionEnded:];
    }

    [(SFDeviceRepairService *)self _invalidate];
  }

LABEL_22:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleGetProblemsRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _handleGetProblemsRequest:responseHandler:];
  }

  v8 = [v6 objectForKeyedSubscript:@"ff"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_peerFeatureFlags = [v8 unsignedLongLongValue];
  }

  [(SFDeviceRepairService *)self _registerAppleIDSetupIfNecessary];
  [(SFDeviceRepairService *)self _registerCDPAndTouchRemoteIfNecessary];
  problemFlags = self->_problemFlags;
  v28 = v8;
  if (SFDeviceClassCodeGet() == 4 || SFDeviceClassCodeGet() == 6)
  {
    if (CNUserInteractionIsRequired())
    {
      if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairService _handleGetProblemsRequest:responseHandler:];
      }

      problemFlags |= 0x200000uLL;
    }

    v10 = 0x2000;
  }

  else
  {
    v10 = 0;
  }

  if ([(SFDeviceRepairService *)self _localDeviceSupportsAppleIDSetup])
  {
    v11 = v10 | 0x8000;
  }

  else
  {
    v11 = v10;
  }

  if (!self->_akAccountManager)
  {
    v12 = [getAKAccountManagerClass[0]() sharedInstance];
    akAccountManager = self->_akAccountManager;
    self->_akAccountManager = v12;
  }

  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v15 = [(objc_class *)getACAccountStoreClass_3() defaultStore];
    v16 = self->_accountStore;
    self->_accountStore = v15;

    accountStore = self->_accountStore;
  }

  v17 = [(ACAccountStore *)accountStore aa_primaryAppleAccount];
  v18 = [v17 aa_altDSID];

  v19 = [(AKAccountManager *)self->_akAccountManager authKitAccountWithAltDSID:v18];
  v20 = [(AKAccountManager *)self->_akAccountManager continuationTokenForAccount:v19];
  if ((SFDeviceClassCodeGet() == 4 || SFDeviceClassCodeGet() == 6) && !v20)
  {
    if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairService _handleGetProblemsRequest:responseHandler:];
    }

    problemFlags |= 2uLL;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:problemFlags];
  [v21 setObject:v22 forKeyedSubscript:@"dpf"];

  [v21 setObject:@"1945.10.6" forKeyedSubscript:@"shv"];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
  [v21 setObject:v23 forKeyedSubscript:@"ff"];

  v24 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v25 = CFDictionaryGetTypedValue();
  if (v25)
  {
    [v21 setObject:v25 forKeyedSubscript:@"wifiSSID"];
  }

  v26 = softLinkIDSCopyLocalDeviceUniqueID();
  if (v26)
  {
    [v21 setObject:v26 forKeyedSubscript:@"idsID"];
  }

  v29 = 0;
  v27 = GestaltCopyAnswer();
  if (v27)
  {
    [v21 setObject:v27 forKeyedSubscript:@"osBuild"];
  }

  else
  {
    if (gLogCategory_SFDeviceRepairService > 60)
    {
      goto LABEL_41;
    }

    if (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize())
    {
      [SFDeviceRepairService _handleGetProblemsRequest:? responseHandler:?];
    }
  }

  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _handleGetProblemsRequest:responseHandler:];
  }

LABEL_41:
  (*(v7 + 2))(v7, 0, 0, v21);
}

- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairService _handleFinishRequest:responseHandler:];
  }

  (*(v7 + 2))(v7, 0, 0, MEMORY[0x1E695E0F8]);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 9) & 1) == 0)
  {
    v1 = result;
    if (SFDeviceClassCodeGet() == 4)
    {
      if (gLogCategory_SFDeviceRepairService <= 30 && (gLogCategory_SFDeviceRepairService != -1 || _LogCategory_Initialize()))
      {
        __62__SFDeviceRepairService__handleFinishRequest_responseHandler___block_invoke_cold_1();
      }

      v2 = [objc_alloc(getFLFollowUpControllerClass()) initWithClientIdentifier:0];
      [v2 clearPendingFollowUpItems:0];
    }

    result = *(*(v1 + 32) + 160);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
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