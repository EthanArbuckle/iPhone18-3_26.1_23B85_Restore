@interface SFDeviceSetupAppleTVService
- (SFDeviceSetupAppleTVService)init;
- (void)_activate;
- (void)_cleanup;
- (void)_handleAppleIDSetupRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleBasicConfigRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4;
- (void)_handlePreAuthRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleTVLatencyProgressEvent:(unint64_t)a3 info:(id)a4;
- (void)_handleTVLatencyRequest:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceSetupAppleTVService

- (SFDeviceSetupAppleTVService)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupAppleTVService;
  v2 = [(SFDeviceSetupAppleTVService *)&v7 init];
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
    [(SFDeviceSetupAppleTVService *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupAppleTVService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupAppleTVService;
    [(SFDeviceSetupAppleTVService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(SFClient *)self->_preventExitForLocaleClient invalidate];
  preventExitForLocaleClient = self->_preventExitForLocaleClient;
  self->_preventExitForLocaleClient = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceSetupAppleTVService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _activate];
  }

  self->_activateCalled = 1;
  self->_advertiseFast = CFPrefs_GetInt64() != 0;
  self->_prefCDPEnabled = CFPrefs_GetInt64() != 0;
  if (_os_feature_enabled_impl())
  {
    self->_prefAppleIDSetupEnabled = 1;
  }

  self->_prefTVLatency = CFPrefs_GetInt64() != 0;
  self->_prefHH2Enabled = CFPrefs_GetInt64() != 0;
  if (!self->_preventExitForLocaleClient)
  {
    v3 = objc_alloc_init(SFClient);
    preventExitForLocaleClient = self->_preventExitForLocaleClient;
    self->_preventExitForLocaleClient = v3;

    [(SFClient *)self->_preventExitForLocaleClient preventExitForLocaleReason:@"AppleTVSetup"];
  }

  [(SFDeviceSetupAppleTVService *)self _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupAppleTVService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _invalidate];
  }

  self->_invalidateCalled = 1;
  if (self->_sfSession)
  {
    [(SFDeviceSetupAppleTVService *)self _handleSessionEnded:?];
  }

  [(SFService *)self->_sfService invalidate];
  sfService = self->_sfService;
  self->_sfService = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(SFDeviceSetupAppleTVService *)self _cleanup];
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _sfServiceStart];
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
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.AppleTVSetup"];
  [(SFService *)self->_sfService setLabel:@"AppleTVSetup"];
  [(SFService *)self->_sfService setNeedsSetup:1];
  [(SFService *)self->_sfService setDeviceActionType:1];
  [(SFService *)self->_sfService setPairSetupACL:&unk_1F1D7D308];
  [(SFService *)self->_sfService setPinType:1];
  [(SFService *)self->_sfService setSessionFlags:1];
  [(SFService *)self->_sfService setTouchRemoteEnabled:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke;
  v8[3] = &unk_1E788CA68;
  v8[4] = self;
  [(SFService *)self->_sfService setSessionStartedHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_2;
  v7[3] = &unk_1E788CA90;
  v7[4] = self;
  [(SFService *)self->_sfService setSessionEndedHandler:v7];
  v5 = self->_sfService;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_3;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFService *)v5 activateWithCompletion:v6];
}

void __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 104);
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
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFDeviceSetupAppleTVService _handleSessionStarted:sfSession, v5];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleSessionStarted:v5];
    }

    objc_storeStrong(&self->_sfSession, a3);
    v7 = self->_sfSession;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke;
    v35[3] = &unk_1E788B4F8;
    v35[4] = self;
    [(SFSession *)v7 registerRequestID:@"_pa" options:&unk_1F1D7D330 handler:v35];
    v8 = self->_sfSession;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_2;
    v34[3] = &unk_1E788B4F8;
    v34[4] = self;
    [(SFSession *)v8 registerRequestID:@"_bc" options:&unk_1F1D7D358 handler:v34];
    if (self->_prefCDPEnabled)
    {
      v9 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v9;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:v5];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    if (self->_prefAppleIDSetupEnabled)
    {
      v11 = self->_sfSession;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_3;
      v33[3] = &unk_1E788B4F8;
      v33[4] = self;
      [(SFSession *)v11 registerRequestID:@"_appleIDSetup" options:&unk_1F1D7D380 handler:v33];
    }

    v12 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_1());
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v12;

    v14 = self->_homeKitSetupHandler;
    v15 = [(SFSession *)self->_sfSession trSession];
    [(HMDeviceSetupOperationHandler *)v14 registerMessageHandlersForSession:v15];

    v16 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v16)
    {
      v17 = [objc_alloc(getTVLAudioLatencyEstimatorClass()) initWithMessageSession:v16];
      objc_storeStrong(&self->_tvLatencyEstimator, v17);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_4;
      v31[3] = &unk_1E788B598;
      v31[4] = self;
      v32 = v17;
      v18 = v17;
      [v18 setProgressEventHandler:v31];
    }

    v19 = self->_sfSession;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_6;
    v30[3] = &unk_1E788B4F8;
    v30[4] = self;
    [(SFSession *)v19 registerRequestID:@"_tvlS" options:&unk_1F1D7D3A8 handler:v30];
    v20 = objc_alloc_init(SFDeviceOperationHandlerWiFiSetup);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v20;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:v5];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    v22 = objc_alloc_init(SFDeviceOperationHandlerCNJSetup);
    captiveNetworkHandler = self->_captiveNetworkHandler;
    self->_captiveNetworkHandler = v22;

    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:v5];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    v24 = self->_sfSession;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_7;
    v29[3] = &unk_1E788B4F8;
    v29[4] = self;
    [(SFSession *)v24 registerRequestID:@"_finish" options:&unk_1F1D7D3D0 handler:v29];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v36 = @"trSession";
      v26 = [v5 trSession];
      v37[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      progressHandler[2](progressHandler, 31, v27);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_5;
  v10[3] = &unk_1E788B570;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v14 = a2;
  v9 = v5;
  dispatch_async(v6, v10);
}

uint64_t __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_5(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 56))
  {
    return [*(result + 40) _handleTVLatencyProgressEvent:*(result + 56) info:*(result + 48)];
  }

  return result;
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_9;
  }

  v14 = v4;
  if (v4 && gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1)
    {
LABEL_5:
      v13 = [(SFSession *)sfSession peer];
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
  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  self->_tvLatencyFinalReported = 0;
  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  v11 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  progressHandler = self->_progressHandler;
  v4 = v14;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 32, 0);
    v4 = v14;
  }

LABEL_9:
}

- (void)_handlePreAuthRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 40, v6);
  }

  v10 = 16;
  if (!self->_prefCDPEnabled)
  {
    v10 = 0;
  }

  if (self->_prefAppleIDSetupEnabled)
  {
    v10 |= 0x8000uLL;
  }

  if (self->_prefTVLatency)
  {
    v10 |= 0x40uLL;
  }

  if (self->_prefHH2Enabled)
  {
    v10 |= 0x800uLL;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10 | 0x2000];
  [v8 setObject:v11 forKeyedSubscript:@"ff"];

  LOBYTE(v11) = CFDictionaryGetInt64Ranged();
  v12 = [(SFSession *)self->_sfSession peerDevice];
  [v12 setDeviceClassCode:v11];

  Int64 = CFDictionaryGetInt64();
  v14 = Int64 != 0;
  v15 = Int64;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  self->_isCLIMode = v14;
  [(SFService *)self->_sfService setIsCLIMode:v15 != 0];
  if (v15)
  {
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
    }

    self->_forcedPasscode = v16;
    [(SFService *)self->_sfService setForcedPin:v16];
  }

  v17 = GestaltCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v17 forKeyedSubscript:@"mdN"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  v18 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v18 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  v19 = MGCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v19 forKeyedSubscript:@"osBuild"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVService > 90)
    {
      goto LABEL_40;
    }

    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize())
    {
      [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

LABEL_40:
  (*(v7 + 2))(v7, 0, 0, v8);
}

- (void)_handleBasicConfigRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleBasicConfigRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  [v9 addEntriesFromDictionary:v6];
  if (self->_isCLIMode)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v9 setObject:v10 forKeyedSubscript:@"isCLIMode"];

    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleBasicConfigRequest:responseHandler:];
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 80, v9);
  }

  v12 = SFMyAltDSID();
  v13 = [v12 UTF8String];

  if (v13)
  {
    v14 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v15 = v14;
    if (v14)
    {
      [v14 bytes];
      strlen(v13);
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SipHash()];
      [v8 setObject:v16 forKeyedSubscript:@"adh"];
    }
  }

  CFDateGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  v18 = gLogCategory_SFDeviceSetupAppleTVService;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    v18 = gLogCategory_SFDeviceSetupAppleTVService;
  }

  if (v17)
  {
    if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleBasicConfigRequest:responseHandler:];
    }

    TMSourceProxBuddy = getTMSourceProxBuddy();
    [v17 timeIntervalSinceReferenceDate];
    softLinkTMSetSourceTime(TMSourceProxBuddy, v20, 10.0);
    v18 = gLogCategory_SFDeviceSetupAppleTVService;
  }

  if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleBasicConfigRequest:responseHandler:];
  }

  (*(v7 + 2))(v7, 0, 0, v8);
}

- (void)_handleAppleIDSetupRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  [v9 addEntriesFromDictionary:v6];
  if (self->_isCLIMode)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v9 setObject:v10 forKeyedSubscript:@"isCLIMode"];

    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:responseHandler:];
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 224, v9);
  }

  v12 = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (v12)
  {
    v13 = objc_alloc_init(getAISSetupContextClass[0]());
    v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E698C218]];
    [v13 setRequiredServiceTypes:v14];

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E698C238], *MEMORY[0x1E698C228], 0}];
    [v13 setDesiredServiceTypes:v15];

    [v13 setShouldBackgroundDesiredServices:1];
    [v13 setLocalRole:1];
    [v13 setRemoteRole:4];
    [v13 setMessageSessionTemplate:v12];
    v16 = _Block_copy(self->_appleIDSetupReportHandler);
    v17 = objc_alloc_init(getAISSetupControllerClass[0]());
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__SFDeviceSetupAppleTVService__handleAppleIDSetupRequest_responseHandler___block_invoke;
    v20[3] = &unk_1E788F7C8;
    v21 = v16;
    v18 = v16;
    [v17 setupWithContext:v13 completionHandler:v20];
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"dn"];
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:responseHandler:];
    }

    (*(v7 + 2))(v7, 0, 0, v8);
  }

  else
  {
    v19 = NSErrorWithOSStatusF();
    if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:responseHandler:];
    }

    (*(v7 + 2))(v7, v19, 0, 0);
  }
}

void __74__SFDeviceSetupAppleTVService__handleAppleIDSetupRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_handleTVLatencyRequest:(id)a3 responseHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleTVLatencyRequest:responseHandler:];
  }

  v7 = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (v7)
  {
    v8 = self->_tvLatencyEstimator;
    if (v8)
    {
      if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVService _handleTVLatencyRequest:responseHandler:];
      }

      [(TVLAudioLatencyEstimator *)v8 activate];
      [(SFDeviceSetupAppleTVService *)self _reportProgress:260 info:v10];
      if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVService _handleTVLatencyRequest:responseHandler:];
      }

      (*(v6 + 2))(v6, 0, 0, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v9 = NSErrorWithOSStatusF();
      if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVService _handleTVLatencyRequest:responseHandler:];
      }

      (*(v6 + 2))(v6, v9, 0, 0);
    }
  }

  else
  {
    v8 = NSErrorWithOSStatusF();
    if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleTVLatencyRequest:responseHandler:];
    }

    (*(v6 + 2))(v6, v8, 0, 0);
  }
}

- (void)_handleTVLatencyProgressEvent:(unint64_t)a3 info:(id)a4
{
  v6 = a4;
  v7 = v6;
  v12 = v6;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (v6 = _LogCategory_Initialize(), v7 = v12, v6))
    {
      v10 = a3;
      v11 = v7;
      v6 = LogPrintF();
    }
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_18;
      }

      v8 = self;
      v9 = 277;
    }

    else
    {
      v8 = self;
      v9 = 270;
    }

    goto LABEL_17;
  }

  if (a3 == 2)
  {
    v8 = self;
    v9 = 274;
LABEL_17:
    v6 = [(SFDeviceSetupAppleTVService *)v8 _reportProgress:v9 info:v12, v10, v11];
    goto LABEL_18;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      goto LABEL_18;
    }

    v8 = self;
    v9 = 276;
    goto LABEL_17;
  }

  if (!self->_tvLatencyFinalReported)
  {
    v6 = [(SFDeviceSetupAppleTVService *)self _reportProgress:272 info:v12];
    self->_tvLatencyFinalReported = 1;
  }

LABEL_18:

  MEMORY[0x1EEE66C30](v6);
}

- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleFinishRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_tvLatencyEstimator && !self->_tvLatencyFinalReported)
  {
    [(SFDeviceSetupAppleTVService *)self _reportProgress:272 info:MEMORY[0x1E695E0F8]];
    self->_tvLatencyFinalReported = 1;
  }

  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleFinishRequest:responseHandler:];
  }

  (*(v7 + 2))(v7, 0, 0, v8);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFDeviceSetupAppleTVService__handleFinishRequest_responseHandler___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __68__SFDeviceSetupAppleTVService__handleFinishRequest_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 10) & 1) == 0)
  {
    result = *(v1 + 104);
    if (result)
    {
      return (*(result + 16))(result, 96, 0);
    }
  }

  return result;
}

- (void)_handleSessionStarted:(void *)a3 .cold.1(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v6 = [a4 peer];
    LogPrintF();
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

@end