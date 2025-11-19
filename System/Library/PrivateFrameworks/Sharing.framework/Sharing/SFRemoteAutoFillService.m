@interface SFRemoteAutoFillService
- (BOOL)needsSetup;
- (SFRemoteAutoFillService)init;
- (id)description;
- (id)urlForVisualScanning;
- (int)_readyForAutoFillRequest;
- (unint64_t)discoveredDevices;
- (void)_activateWithCompletion:(id)a3;
- (void)_activated;
- (void)_bluetoothAddressChanged;
- (void)_cleanup;
- (void)_completedWithError:(id)a3;
- (void)_discoveryChanged:(id)a3;
- (void)_discoveryFound:(id)a3;
- (void)_discoveryLost:(id)a3;
- (void)_discoveryStart;
- (void)_serviceHandleReceivedContextRequest:(id)a3 handler:(id)a4;
- (void)_serviceHandleReceivedCredentialRequest:(id)a3 handler:(id)a4;
- (void)_serviceHandleReceivedRequest:(id)a3 handler:(id)a4;
- (void)_serviceHidePIN;
- (void)_serviceSessionEnded:(id)a3 withError:(id)a4;
- (void)_serviceSessionStarted:(id)a3;
- (void)_serviceStart;
- (void)_systemMonitorStart;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setBundleID:(id)a3;
- (void)setFixedPIN:(id)a3;
- (void)setShowPINHandlerEx:(id)a3;
- (void)setUrlString:(id)a3;
- (void)startRequestingAutoFill;
- (void)stopRequestingAutoFill;
- (void)updateURLForVisualScanning;
@end

@implementation SFRemoteAutoFillService

- (SFRemoteAutoFillService)init
{
  v6.receiver = self;
  v6.super_class = SFRemoteAutoFillService;
  v2 = [(SFRemoteAutoFillService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFRemoteAutoFillService *)v3 description];
  }

  else
  {
    [(SFRemoteAutoFillService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFRemoteAutoFillService;
    [(SFRemoteAutoFillService *)&v5 dealloc];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"SFRemoteAutoFillService"];
  if (self->_activateCalled)
  {
    v4 = @", activated";
  }

  else
  {
    if (!self->_invalidateCalled)
    {
      goto LABEL_6;
    }

    v4 = @", invalidated";
  }

  [v3 appendString:v4];
LABEL_6:
  if (self->_receivedUsername)
  {
    [v3 appendString:{@", username"}];
  }

  if (self->_receivedPassword)
  {
    [v3 appendString:{@", password"}];
  }

  if (self->_service)
  {
    v5 = "active";
  }

  else
  {
    v5 = "inactive";
  }

  [v3 appendFormat:@", service: %s", v5];

  return v3;
}

- (void)_cleanup
{
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  discoveredDevicesChanged = self->_discoveredDevicesChanged;
  self->_discoveredDevicesChanged = 0;

  self->_discoveryState = 0;
  errorHandler = self->_errorHandler;
  self->_errorHandler = 0;

  receivedCredentialsHandler = self->_receivedCredentialsHandler;
  self->_receivedCredentialsHandler = 0;

  receivedPassword = self->_receivedPassword;
  self->_receivedPassword = 0;

  receivedUsername = self->_receivedUsername;
  self->_receivedUsername = 0;

  self->_requestingAutoFill = 0;
  self->_serviceState = 0;
  systemBTAddress = self->_systemBTAddress;
  self->_systemBTAddress = 0;

  self->_systemMonitorState = 0;
  urlForVisualScanning = self->_urlForVisualScanning;
  self->_urlForVisualScanning = 0;

  [(NSMutableDictionary *)self->_devices removeAllObjects];
  devices = self->_devices;
  self->_devices = 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFRemoteAutoFillService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = 0;
  if (CFPrefs_GetInt64() || self->_unitTesting)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _activateWithCompletion:];
    }

    self->_activateCalled = 1;
    v5 = _Block_copy(v4);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v5;

    [(SFRemoteAutoFillService *)self _systemMonitorStart];
    [(SFRemoteAutoFillService *)self _serviceStart];
    [(SFRemoteAutoFillService *)self _discoveryStart];
  }

  else
  {
    [(SFRemoteAutoFillService *)&v8 _activateWithCompletion:v4, &v9, v10];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_activated
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFRemoteAutoFillService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFRemoteAutoFillService_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 48) & 1) == 0 && gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __37__SFRemoteAutoFillService_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 48) = 1;
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(*(a1 + 32) + 80) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  [*(*(a1 + 32) + 96) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  [*(*(a1 + 32) + 112) invalidate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = 0;

  v10 = *(a1 + 32);

  return [v10 _cleanup];
}

- (void)startRequestingAutoFill
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A768];
  v7 = a1;
  *a2 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v9 = v8;
  v10 = @"?";
  if (v8)
  {
    v10 = v8;
  }

  *a3 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a2 count:1];
  v12 = [v5 errorWithDomain:v6 code:v7 userInfo:v11];
  LogPrintF();
}

- (void)stopRequestingAutoFill
{
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService stopRequestingAutoFill];
  }

  v3 = [(SFSession *)self->_session peer];
  if (v3)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService stopRequestingAutoFill];
    }

    [(SFService *)self->_service sendToPeer:v3 flags:0 object:&unk_1F1D7D290];
  }

  [(SFService *)self->_service setNeedsSetup:0];
  self->_requestingAutoFill = 0;
}

- (id)urlForVisualScanning
{
  [(SFRemoteAutoFillService *)self updateURLForVisualScanning];
  urlForVisualScanning = self->_urlForVisualScanning;

  return urlForVisualScanning;
}

- (void)updateURLForVisualScanning
{
  v1 = [a1 absoluteString];
  LogPrintF();
}

uint64_t __53__SFRemoteAutoFillService_updateURLForVisualScanning__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 264);
  if (result)
  {
    return (*(result + 16))(result, *(v1 + 128));
  }

  return result;
}

- (unint64_t)discoveredDevices
{
  result = self->_devices;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (void)setBundleID:(id)a3
{
  v5 = a3;
  if ([(SFService *)self->_service needsSetup])
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService setBundleID:];
    }

    if (self->_errorHandler)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39__SFRemoteAutoFillService_setBundleID___block_invoke;
      block[3] = &unk_1E788B198;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    objc_storeStrong(&v7->_bundleID, a3);
    objc_sync_exit(v7);
  }
}

void __39__SFRemoteAutoFillService_setBundleID___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = NSErrorWithOSStatusF();
  (*(v1 + 16))(v1, v2);
}

- (void)setFixedPIN:(id)a3
{
  v7 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_fixedPIN, a3);
  service = v5->_service;
  if (service)
  {
    [(SFService *)service setFixedPIN:v5->_fixedPIN];
  }

  [(SFRemoteAutoFillService *)v5 updateURLForVisualScanning];
  objc_sync_exit(v5);
}

- (void)setShowPINHandlerEx:(id)a3
{
  aBlock = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = _Block_copy(aBlock);
  showPINHandlerEx = v4->_showPINHandlerEx;
  v4->_showPINHandlerEx = v5;

  service = v4->_service;
  if (service)
  {
    [(SFService *)service setShowPINHandlerEx:v4->_showPINHandlerEx];
  }

  objc_sync_exit(v4);
}

- (void)setUrlString:(id)a3
{
  v5 = a3;
  if ([(SFService *)self->_service needsSetup])
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService setUrlString:];
    }

    if (self->_errorHandler)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__SFRemoteAutoFillService_setUrlString___block_invoke;
      block[3] = &unk_1E788B198;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    objc_storeStrong(&v7->_urlString, a3);
    objc_sync_exit(v7);
  }
}

void __40__SFRemoteAutoFillService_setUrlString___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = NSErrorWithOSStatusF();
  (*(v1 + 16))(v1, v2);
}

- (void)_completedWithError:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
      {
        [SFRemoteAutoFillService _completedWithError:];
        v4 = v8;
      }
    }

    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      errorHandler[2](errorHandler, v4);
      v4 = v8;
    }
  }

  receivedCredentialsHandler = self->_receivedCredentialsHandler;
  if (receivedCredentialsHandler)
  {
    (receivedCredentialsHandler)[2](receivedCredentialsHandler, self->_receivedUsername, self->_receivedPassword, v8);
    v4 = v8;
  }
}

- (void)_discoveryStart
{
  if (!self->_discovery)
  {
    v14[5] = v5;
    v14[6] = v4;
    v14[11] = v2;
    v14[12] = v3;
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _discoveryStart];
    }

    self->_discoveryState = 1;
    v7 = objc_alloc_init(SFDeviceDiscovery);
    discovery = self->_discovery;
    self->_discovery = v7;

    [(SFDeviceDiscovery *)self->_discovery setChangeFlags:13];
    [(SFDeviceDiscovery *)self->_discovery setDiscoveryFlags:8208];
    [(SFDeviceDiscovery *)self->_discovery setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)self->_discovery setFastScanMode:1];
    [(SFDeviceDiscovery *)self->_discovery setPurpose:@"SFRemoteAutoFillService"];
    [(SFDeviceDiscovery *)self->_discovery setRssiThreshold:-60];
    [(SFDeviceDiscovery *)self->_discovery setScanRate:40];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke;
    v14[3] = &unk_1E788C9B0;
    v14[4] = self;
    [(SFDeviceDiscovery *)self->_discovery setDeviceFoundHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_2;
    v13[3] = &unk_1E788C9B0;
    v13[4] = self;
    [(SFDeviceDiscovery *)self->_discovery setDeviceLostHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_3;
    v12[3] = &unk_1E788C9D8;
    v12[4] = self;
    [(SFDeviceDiscovery *)self->_discovery setDeviceChangedHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(SFDeviceDiscovery *)self->_discovery setInterruptionHandler:v11];
    [(SFDeviceDiscovery *)self->_discovery setInvalidationHandler:&__block_literal_global_15];
    v9 = self->_discovery;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFDeviceDiscovery *)v9 activateWithCompletion:v10];
  }
}

void __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __42__SFRemoteAutoFillService__discoveryStart__block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = NSErrorWithOSStatusF();
  [v2 _completedWithError:v3];
}

void __42__SFRemoteAutoFillService__discoveryStart__block_invoke_5()
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __42__SFRemoteAutoFillService__discoveryStart__block_invoke_5_cold_1();
  }
}

void __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_3();
    }

    v3 = *(a1 + 32);
    v4 = 4;
    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_2();
    }

    v3 = *(a1 + 32);
    v4 = 2;
LABEL_11:
    *(v3 + 32) = v4;
    [*(a1 + 32) _activated];
    goto LABEL_16;
  }

  if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __42__SFRemoteAutoFillService__discoveryStart__block_invoke_6_cold_1();
  }

  *(*(a1 + 32) + 32) = 3;
  v5 = *(a1 + 32);
  v6 = NSErrorWithOSStatusF();
  [v5 _completedWithError:v6];

LABEL_16:
}

- (void)_serviceStart
{
  if (!self->_service)
  {
    v15[5] = v5;
    v15[6] = v4;
    v15[11] = v2;
    v15[12] = v3;
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceStart];
    }

    self->_serviceState = 1;
    v7 = objc_alloc_init(SFService);
    service = self->_service;
    self->_service = v7;

    [(SFService *)self->_service setAdvertiseRate:50];
    [(SFService *)self->_service setDeviceActionType:19];
    [(SFService *)self->_service setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_service setFixedPIN:self->_fixedPIN];
    [(SFService *)self->_service setIdentifier:@"com.apple.sharing.RemoteAutoFill"];
    [(SFService *)self->_service setLabel:@"SFRemoteAutoFillService"];
    [(SFService *)self->_service setNeedsSetup:0];
    [(SFService *)self->_service setPinType:1];
    [(SFService *)self->_service setSessionFlags:20];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke;
    v15[3] = &unk_1E788B198;
    v15[4] = self;
    [(SFService *)self->_service setHidePINHandler:v15];
    [(SFService *)self->_service setInvalidationHandler:&__block_literal_global_218];
    if (self->_showPINHandlerEx)
    {
      [(SFService *)self->_service setShowPINHandlerEx:?];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_3;
    v14[3] = &unk_1E788B198;
    v14[4] = self;
    [(SFService *)self->_service setInterruptionHandler:v14];
    [(SFService *)self->_service setPeerDisconnectedHandler:&__block_literal_global_223];
    [(SFService *)self->_service setReceivedObjectHandler:&__block_literal_global_227];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_6;
    v13[3] = &unk_1E788CA40;
    v13[4] = self;
    [(SFService *)self->_service setReceivedRequestHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_7;
    v12[3] = &unk_1E788CA68;
    v12[4] = self;
    [(SFService *)self->_service setSessionStartedHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_8;
    v11[3] = &unk_1E788CA90;
    v11[4] = self;
    [(SFService *)self->_service setSessionEndedHandler:v11];
    [(SFService *)self->_service setSessionSecuredHandler:&__block_literal_global_234];
    v9 = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__SFRemoteAutoFillService__serviceStart__block_invoke_10;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFService *)v9 activateWithCompletion:v10];
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_2()
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __40__SFRemoteAutoFillService__serviceStart__block_invoke_2_cold_1();
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF();
  [v1 _completedWithError:v2];
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v5 = a4;
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __40__SFRemoteAutoFillService__serviceStart__block_invoke_8_cold_1(v6);
  }

  [*(a1 + 32) _serviceSessionEnded:v6 withError:v5];
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFRemoteAutoFillService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFRemoteAutoFillService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __40__SFRemoteAutoFillService__serviceStart__block_invoke_9_cold_1(v3);
      v3 = v5;
    }
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_10(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!v7)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_3();
    }

    v3 = *(a1 + 32);
    v4 = 4;
    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 136) == 1)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_2();
    }

    v3 = *(a1 + 32);
    v4 = 2;
LABEL_11:
    *(v3 + 88) = v4;
    [*(a1 + 32) _activated];
    goto LABEL_16;
  }

  if (gLogCategory_SFRemoteAutoFillService <= 90 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __40__SFRemoteAutoFillService__serviceStart__block_invoke_10_cold_1();
  }

  *(*(a1 + 32) + 88) = 3;
  v5 = *(a1 + 32);
  v6 = NSErrorWithOSStatusF();
  [v5 _completedWithError:v6];

LABEL_16:
}

- (void)_serviceHandleReceivedContextRequest:(id)a3 handler:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService _serviceHandleReceivedContextRequest:handler:];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  appIconData = self->_appIconData;
  if (appIconData)
  {
    [v7 setObject:appIconData forKeyedSubscript:@"aid"];
  }

  associatedDomains = self->_associatedDomains;
  if (associatedDomains)
  {
    [v8 setObject:associatedDomains forKeyedSubscript:@"ass"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v8 setObject:bundleID forKeyedSubscript:@"bid"];
  }

  localizedAppName = self->_localizedAppName;
  if (localizedAppName)
  {
    [v8 setObject:localizedAppName forKeyedSubscript:@"lan"];
  }

  unlocalizedAppName = self->_unlocalizedAppName;
  if (unlocalizedAppName)
  {
    [v8 setObject:unlocalizedAppName forKeyedSubscript:@"uan"];
  }

  urlString = self->_urlString;
  if (urlString)
  {
    [v8 setObject:urlString forKeyedSubscript:@"url"];
  }

  if (self->_bundleID || self->_urlString)
  {
    v15 = 0;
  }

  else
  {
    v15 = NSErrorWithOSStatusF();
  }

  v6[2](v6, 1, v15, v8);
}

- (void)_serviceHandleReceivedCredentialRequest:(id)a3 handler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:handler:];
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (v7)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:handler:];
    }

    objc_storeStrong(&self->_receivedUsername, v7);
  }

  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();

  if (v8)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceHandleReceivedCredentialRequest:handler:];
    }

    objc_storeStrong(&self->_receivedPassword, v8);
  }

  if (self->_receivedUsername || self->_receivedPassword)
  {
    v9 = 0;
  }

  else
  {
    v9 = NSErrorWithOSStatusF();
  }

  v6[2](v6, 1, v9, MEMORY[0x1E695E0F8]);
  [(SFRemoteAutoFillService *)self _completedWithError:v9];
}

- (void)_serviceHandleReceivedRequest:(id)a3 handler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = 0;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService _serviceHandleReceivedRequest:Int64Ranged handler:?];
  }

  if (Int64Ranged == 3)
  {
    [(SFRemoteAutoFillService *)self _serviceHandleReceivedCredentialRequest:v6 handler:v7];
  }

  else if (Int64Ranged == 1)
  {
    [(SFRemoteAutoFillService *)self _serviceHandleReceivedContextRequest:v6 handler:v7];
  }

  else
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceHandleReceivedRequest:Int64Ranged handler:?];
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A768];
    v18 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v12 = v11;
    v13 = @"?";
    if (v11)
    {
      v13 = v11;
    }

    v19[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v9 errorWithDomain:v10 code:-6735 userInfo:v14];
    (*(v7 + 2))(v7, 0, v15, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_serviceHidePIN
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  hidePINHandler = self->_hidePINHandler;
  if (hidePINHandler)
  {
    v4 = *(hidePINHandler + 2);

    v4();
  }

  else if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    [SFRemoteAutoFillService _serviceHidePIN];
  }
}

- (void)_serviceSessionEnded:(id)a3 withError:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  if (self->_session == v12)
  {
    if (v12)
    {
      if (gLogCategory_SFRemoteAutoFillService <= 30)
      {
        if (gLogCategory_SFRemoteAutoFillService != -1 || (v8 = _LogCategory_Initialize(), v7 = v12, v8))
        {
          [SFRemoteAutoFillService _serviceSessionEnded:v7 withError:?];
        }
      }
    }

    sessionEndedHandler = self->_sessionEndedHandler;
    if (sessionEndedHandler)
    {
      v10 = [(SFSession *)v12 peer];
      sessionEndedHandler[2](sessionEndedHandler, v10);
    }

    session = self->_session;
    self->_session = 0;

    if (self->_requestingAutoFill)
    {
      [(SFService *)self->_service setNeedsSetup:1];
    }
  }
}

- (void)_serviceSessionStarted:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_session)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 60)
    {
      v10 = v5;
      if (gLogCategory_SFRemoteAutoFillService != -1 || (v7 = _LogCategory_Initialize(), v6 = v10, v7))
      {
        [(SFRemoteAutoFillService *)v6 _serviceSessionStarted:?];
LABEL_13:
        v6 = v10;
      }
    }
  }

  else
  {
    v10 = v5;
    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      [SFRemoteAutoFillService _serviceSessionStarted:v10];
    }

    objc_storeStrong(&self->_session, a3);
    sessionStartedHandler = self->_sessionStartedHandler;
    if (sessionStartedHandler)
    {
      v9 = [v10 peer];
      sessionStartedHandler[2](sessionStartedHandler, v9);
    }

    v6 = v10;
    if (self->_requestingAutoFill)
    {
      [(SFService *)self->_service setNeedsSetup:0];
      goto LABEL_13;
    }
  }
}

- (void)_systemMonitorStart
{
  if (!self->_systemMonitor)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    self->_systemMonitorState = 1;
    v7 = objc_alloc_init(MEMORY[0x1E6999540]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v7;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(CUSystemMonitor *)self->_systemMonitor setBluetoothAddressChangedHandler:v11];
    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:self->_dispatchQueue];
    [(CUSystemMonitor *)self->_systemMonitor setInvalidationHandler:&__block_literal_global_282];
    v9 = self->_systemMonitor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3;
    v10[3] = &unk_1E788B198;
    v10[4] = self;
    [(CUSystemMonitor *)v9 activateWithCompletion:v10];
  }
}

void __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_2()
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_2_cold_1();
  }
}

uint64_t __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3(uint64_t a1)
{
  if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3_cold_1();
  }

  *(*(a1 + 32) + 120) = 4;
  v2 = [*(*(a1 + 32) + 112) bluetoothAddressData];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  v5 = *(*(a1 + 32) + 104);
  if (v5)
  {
    if (gLogCategory_SFRemoteAutoFillService > 10)
    {
      goto LABEL_13;
    }

    if (gLogCategory_SFRemoteAutoFillService != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(*(a1 + 32) + 104);
LABEL_7:
      v8 = v5;
      LogPrintF();
    }
  }

  else if (gLogCategory_SFRemoteAutoFillService <= 60 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    __46__SFRemoteAutoFillService__systemMonitorStart__block_invoke_3_cold_2();
  }

LABEL_13:
  [*(a1 + 32) updateURLForVisualScanning];
  v6 = *(a1 + 32);

  return [v6 _activated];
}

- (BOOL)needsSetup
{
  service = self->_service;
  if (service)
  {
    LOBYTE(service) = [(SFService *)service needsSetup];
  }

  return service;
}

- (int)_readyForAutoFillRequest
{
  if (!self->_activateCalled)
  {
    return -6709;
  }

  if (self->_invalidateCalled)
  {
    return -6724;
  }

  discoveryState = self->_discoveryState;
  v3 = discoveryState == 4 || discoveryState == 2;
  if (v3 && self->_discovery)
  {
    serviceState = self->_serviceState;
    v5 = serviceState == 4 || serviceState == 2;
    if (v5 && self->_service)
    {
      return 0;
    }

    if (gLogCategory_SFRemoteAutoFillService > 60 || gLogCategory_SFRemoteAutoFillService == -1 && !_LogCategory_Initialize())
    {
      return -6745;
    }
  }

  else if (gLogCategory_SFRemoteAutoFillService > 60 || gLogCategory_SFRemoteAutoFillService == -1 && !_LogCategory_Initialize())
  {
    return -6745;
  }

  LogPrintF();
  return -6745;
}

- (void)_discoveryFound:(id)a3
{
  v11 = a3;
  v4 = [v11 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_discovery && v4 && [v11 deviceActionType] == 22)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 10 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      v10 = v11;
      LogPrintF();
    }

    devices = self->_devices;
    if (!devices)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = self->_devices;
      self->_devices = v6;

      devices = self->_devices;
    }

    [(NSMutableDictionary *)devices setObject:v11 forKeyedSubscript:v4, v10];
    if (self->_discoveredDevicesChanged)
    {
      [(NSMutableDictionary *)self->_devices count];
      v8 = OUTLINED_FUNCTION_3_5();
      v9(v8);
    }
  }
}

- (void)_discoveryLost:(id)a3
{
  v8 = a3;
  v4 = [v8 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4 && self->_discovery && [v8 deviceActionType] == 22)
  {
    if (gLogCategory_SFRemoteAutoFillService <= 10 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      v7 = v8;
      LogPrintF();
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:v4, v7];
    if (self->_discoveredDevicesChanged)
    {
      [(NSMutableDictionary *)self->_devices count];
      v5 = OUTLINED_FUNCTION_3_5();
      v6(v5);
    }
  }
}

- (void)_discoveryChanged:(id)a3
{
  v5 = a3;
  v4 = [v5 identifier];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v4 && self->_discovery && [v5 deviceActionType] == 22)
  {
    [(NSMutableDictionary *)self->_devices setObject:v5 forKeyedSubscript:v4];
  }
}

- (void)_bluetoothAddressChanged
{
  systemMonitor = self->_systemMonitor;
  if (systemMonitor)
  {
    v4 = [(CUSystemMonitor *)systemMonitor bluetoothAddressData];
    systemBTAddress = self->_systemBTAddress;
    self->_systemBTAddress = v4;

    if (gLogCategory_SFRemoteAutoFillService <= 30 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
    {
      v6 = self->_systemBTAddress;
      LogPrintF();
    }

    [(SFRemoteAutoFillService *)self updateURLForVisualScanning];
  }
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(_DWORD *a1, uint64_t a2, void *a3, __CFString **a4)
{
  if (gLogCategory_SFRemoteAutoFillService <= 50 && (gLogCategory_SFRemoteAutoFillService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *a1 = -6735;
  if (a2)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A768];
    *a3 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    *a4 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6735 userInfo:v13];
    (*(a2 + 16))(a2, v14);
  }
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_8_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __40__SFRemoteAutoFillService__serviceStart__block_invoke_9_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (uint64_t)_serviceHandleReceivedRequest:(uint64_t)result handler:(unsigned int *)a2 .cold.1(uint64_t result, unsigned int *a2)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v3 = *a2;
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_serviceHandleReceivedRequest:(unsigned __int8)a1 handler:(char)a2 .cold.2(unsigned __int8 a1, char a2)
{
  if (a1 <= 5u)
  {
    v2 = off_1E788CAD0[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_serviceHandleReceivedRequest:(unsigned __int8)a1 handler:(char)a2 .cold.3(unsigned __int8 a1, char a2)
{
  if (a1 <= 5u)
  {
    v2 = off_1E788CB00[a2 & 7];
  }

  return LogPrintF();
}

- (void)_serviceSessionEnded:(void *)a1 withError:.cold.1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (void)_serviceSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF();
}

- (void)_serviceSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

@end