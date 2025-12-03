@interface SFDeviceOperationWiFiSetup
- (SFDeviceOperationWiFiSetup)init;
- (id)createRequestFromWiFiConfig;
- (uint64_t)_activate2;
- (void)_activate;
- (void)_activate2;
- (void)_bonjourTestFoundDevice:(id)device;
- (void)_bonjourTestStart;
- (void)_bonjourTestTimeout;
- (void)_complete:(id)_complete;
- (void)_setupResponse:(id)response inResponse:(id)inResponse;
- (void)activate;
- (void)invalidate;
@end

@implementation SFDeviceOperationWiFiSetup

- (SFDeviceOperationWiFiSetup)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceOperationWiFiSetup;
  v2 = [(SFDeviceOperationWiFiSetup *)&v7 init];
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
  block[2] = __38__SFDeviceOperationWiFiSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _activate];
  }

  self->_startTicks = mach_absolute_time();
  v15 = 0;
  self->_reachabilityEnabled = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v15)
  {
    v4 = 1;
  }

  else
  {
    v4 = Int64 == 0;
  }

  v5 = !v4;
  self->_forceFailScanWiFi = v5;
  v6 = CFPrefs_GetInt64();
  if (v15)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  v8 = !v7;
  self->_forceFailJoinWiFi = v8;
  v9 = WiFiCopyCurrentNetworkInfoEx();
  if (!v9)
  {
    v13 = NSErrorWithOSStatusF();
    [(SFDeviceOperationWiFiSetup *)self _complete:v13, v15];

    goto LABEL_33;
  }

  skipLocalReachability = self->_skipLocalReachability;
  if (self->_reachabilityEnabled)
  {
    if (!self->_skipLocalReachability)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate];
      }

      v11 = objc_alloc_init(MEMORY[0x1E6999510]);
      reachabilityMonitor = self->_reachabilityMonitor;
      self->_reachabilityMonitor = v11;

      [(CUReachabilityMonitor *)self->_reachabilityMonitor setDispatchQueue:self->_dispatchQueue];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setTimeout:100.0];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __39__SFDeviceOperationWiFiSetup__activate__block_invoke;
      v14[3] = &unk_1E788B238;
      v14[4] = self;
      [(CUReachabilityMonitor *)self->_reachabilityMonitor setCompletionHandler:v14];
      [(CUReachabilityMonitor *)self->_reachabilityMonitor activate];
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (self->_skipLocalReachability)
  {
LABEL_25:
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup _activate];
    }
  }

  if (!self->_reachabilityEnabled && gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _activate];
  }

  [(SFDeviceOperationWiFiSetup *)self _activate2];
LABEL_33:
}

void __39__SFDeviceOperationWiFiSetup__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 32) & 1) == 0)
  {
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
    v8 = v3;

    if (v8)
    {
      v6 = *MEMORY[0x1E696A768];
      v7 = NSErrorNestedF();
      [*(a1 + 32) _complete:v7];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceOperationWiFiSetup__activate__block_invoke_cold_1();
      }

      [*(a1 + 32) _activate2];
    }

    v3 = v8;
  }
}

- (void)_activate2
{
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _activate2];
  }

  v41 = 0;
  createRequestFromWiFiConfig = [(SFDeviceOperationWiFiSetup *)self createRequestFromWiFiConfig];
  if (!createRequestFromWiFiConfig)
  {
    v7 = WiFiCopyCurrentNetworkInfoEx();
    if (v7)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFStringGetTypeID();
      v6 = CFDictionaryGetTypedValue();
      if (!v6)
      {
        v32 = NSErrorWithOSStatusF();

        v5 = 0;
        goto LABEL_80;
      }

      [v4 setObject:v6 forKeyedSubscript:@"wifiSSID"];
      v8 = [v7 objectForKeyedSubscript:@"password"];
      if (v8 || ([v7 objectForKeyedSubscript:@"open"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {

LABEL_14:
        Int64Ranged = CFDictionaryGetInt64Ranged();
        if (Int64Ranged >= 1)
        {
          if (self->_forceFailScanWiFi)
          {
            v10 = 100;
          }

          else
          {
            v10 = Int64Ranged;
          }

          v11 = [MEMORY[0x1E696AD98] numberWithInt:v10];
          [v4 setObject:v11 forKeyedSubscript:@"wifiCh"];
        }

        if (CFDictionaryGetInt64())
        {
          [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiDirected"];
        }

        if (CFDictionaryGetInt64())
        {
          v12 = [v7 objectForKeyedSubscript:@"eapConfig"];
          if (v12)
          {
            [v4 setObject:v12 forKeyedSubscript:@"wifiEAPConfig"];
          }

          v13 = [v7 objectForKeyedSubscript:@"eapTrustExceptions"];

          if (v13)
          {
            [v4 setObject:v13 forKeyedSubscript:@"wifiEAPTE"];
          }
        }

        Int64 = CFDictionaryGetInt64();
        if (Int64)
        {
          [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiHN"];
        }

        CFStringGetTypeID();
        v15 = CFDictionaryGetTypedValue();
        v16 = v15;
        if (v15)
        {
          if (self->_forceFailJoinWiFi)
          {
            v17 = &stru_1F1D30528;
          }

          else
          {
            v17 = v15;
          }

          [v4 setObject:v17 forKeyedSubscript:@"wifiPW"];
          v18 = "no";
          v5 = v16;
        }

        else
        {
          CFDataGetTypeID();
          v5 = CFDictionaryGetTypedValue();
          if (v5)
          {
            [v4 setObject:v5 forKeyedSubscript:@"wifiPSK"];
            v18 = "yes";
          }

          else
          {
            v18 = "no";
          }
        }

        if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
        {
          v21 = "yes";
          if (v16)
          {
            v22 = "yes";
          }

          else
          {
            v22 = "no";
          }

          if (!Int64)
          {
            v21 = "no";
          }

          v33 = v6;
          v35 = Int64Ranged;
          v37 = v18;
          v38 = v21;
          v36 = v22;
          LogPrintF();
        }

        goto LABEL_56;
      }

      v20 = [v7 objectForKeyedSubscript:@"enterprise"];

      if (v20)
      {
        goto LABEL_14;
      }

      if (gLogCategory_SFDeviceOperationWiFiSetup <= 90 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate2];
      }

      v34 = v41;
      v19 = NSErrorWithOSStatusF();
    }

    else
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationWiFiSetup _activate2];
      }

      v34 = v41;
      v19 = NSErrorWithOSStatusF();
      v6 = 0;
      v4 = 0;
    }

    [(SFDeviceOperationWiFiSetup *)self _complete:v19, v34];

    v5 = 0;
LABEL_70:
    v32 = 0;
    goto LABEL_71;
  }

  v4 = createRequestFromWiFiConfig;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _activate2];
  }

  v5 = 0;
  v6 = 0;
LABEL_56:
  if (self->_repairFlags)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v4 setObject:v23 forKeyedSubscript:@"rpFl"];
  }

  if (self->_setupFlags)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v4 setObject:v24 forKeyedSubscript:@"suFl"];
  }

  if (self->_skipReachability)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiSR"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)self _activate2];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_operationType, v33, v35, v36, v37, v38}];
  [v4 setObject:v25 forKeyedSubscript:@"wifiOT"];

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)self _activate2];
  }

  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_retryJoinsCount];
  [v4 setObject:v26 forKeyedSubscript:@"wifiJC"];

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_retryScansCount];
  [v4 setObject:v27 forKeyedSubscript:@"wifiRC"];

  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"wifiRS"];
  sfSession = self->_sfSession;
  if (sfSession)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __40__SFDeviceOperationWiFiSetup__activate2__block_invoke;
    v40[3] = &unk_1E788B548;
    v40[4] = self;
    [(SFSession *)sfSession sendRequestID:@"_ws" options:0 request:v4 responseHandler:v40];
    v29 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v29;

    v31 = self->_timeoutTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__SFDeviceOperationWiFiSetup__activate2__block_invoke_2;
    handler[3] = &unk_1E788B198;
    handler[4] = self;
    dispatch_source_set_event_handler(v31, handler);
    SFDispatchTimerSet(self->_timeoutTimer, 100.0, -1.0, -4.0);
    dispatch_resume(self->_timeoutTimer);
    goto LABEL_70;
  }

  v32 = NSErrorWithOSStatusF();
LABEL_80:
  if (v32)
  {
    [(SFDeviceOperationWiFiSetup *)self _complete:v32];
  }

LABEL_71:
}

_BYTE *__40__SFDeviceOperationWiFiSetup__activate2__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _setupResponse:a2 inResponse:?];
  }

  return result;
}

void __40__SFDeviceOperationWiFiSetup__activate2__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[32] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _complete:v2];
  }
}

- (id)createRequestFromWiFiConfig
{
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  CFStringGetTypeID();
  v4 = CFPrefs_CopyTypedValue();
  v5 = objc_opt_new();
  if (v3 && v4)
  {
    preferredWiFiConfiguration = v3;
    v7 = v4;
  }

  else
  {
    preferredWiFiConfiguration = self->_preferredWiFiConfiguration;
    if (!preferredWiFiConfiguration)
    {
      v9 = 0;
      goto LABEL_22;
    }

    CFStringGetTypeID();
    preferredWiFiConfiguration = CFDictionaryGetTypedValue();
    v8 = self->_preferredWiFiConfiguration;
    CFStringGetTypeID();
    v7 = CFDictionaryGetTypedValue();
  }

  v9 = v7;
  v10 = 0;
  if (!preferredWiFiConfiguration || !v7)
  {
    goto LABEL_23;
  }

  if (![preferredWiFiConfiguration length])
  {
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  [v5 setObject:preferredWiFiConfiguration forKeyedSubscript:@"wifiSSID"];
  if ([(__CFString *)v9 length])
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup createRequestFromWiFiConfig];
    }

    if (self->_forceFailJoinWiFi)
    {
      v11 = &stru_1F1D30528;
    }

    else
    {
      v11 = v9;
    }

    [v5 setObject:v11 forKeyedSubscript:@"wifiPW"];
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup createRequestFromWiFiConfig];
  }

  v10 = v5;
LABEL_23:

  return v10;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SFDeviceOperationWiFiSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __40__SFDeviceOperationWiFiSetup_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = NSErrorWithOSStatusF();
  [v6 _complete:v7];
}

- (void)_bonjourTestStart
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  RandomBytes();
  v3 = NSStringWithMACAddress();
  objc_storeStrong(&self->_bonjourTestID, v3);
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationWiFiSetup *)&self->_bonjourTestID _bonjourTestStart];
  }

  self->_bonjourTestState = 1;
  self->_startBonjourTestTicks = mach_absolute_time();
  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  v4 = objc_alloc_init(MEMORY[0x1E6999470]);
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = v4;

  [(CUBonjourBrowser *)self->_bonjourBrowser setChangeFlags:0xFFFFFFFFLL];
  [(CUBonjourBrowser *)self->_bonjourBrowser setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourBrowser *)self->_bonjourBrowser setDomain:@"local."];
  [(CUBonjourBrowser *)self->_bonjourBrowser setLabel:@"SFDeviceOperationWiFi"];
  [(CUBonjourBrowser *)self->_bonjourBrowser setServiceType:@"_bonjourtest._tcp"];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke;
  v15[3] = &unk_1E788F5A8;
  v15[4] = self;
  [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceFoundHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_2;
  v14[3] = &unk_1E788F5D0;
  v14[4] = self;
  [(CUBonjourBrowser *)self->_bonjourBrowser setDeviceChangedHandler:v14];
  [(CUBonjourBrowser *)self->_bonjourBrowser activate];
  v18 = @"bjtID";
  v19[0] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  sfSession = self->_sfSession;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_3;
  v13[3] = &unk_1E788B548;
  v13[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_bjtS" options:0 request:v6 responseHandler:v13];
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  bonjourTimer = self->_bonjourTimer;
  self->_bonjourTimer = v8;

  v10 = self->_bonjourTimer;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_4;
  v12[3] = &unk_1E788B198;
  v12[4] = self;
  dispatch_source_set_event_handler(v10, v12);
  SFDispatchTimerSet(self->_bonjourTimer, 16.0, -1.0, 1.0);
  dispatch_resume(self->_bonjourTimer);

  v11 = *MEMORY[0x1E69E9840];
}

void *__47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _bonjourTestFoundDevice:a2];
  }

  return result;
}

void *__47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[1])
  {
    return [result _bonjourTestFoundDevice:a2];
  }

  return result;
}

void __47__SFDeviceOperationWiFiSetup__bonjourTestStart__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 32) & 1) == 0 && gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_bonjourTestFoundDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  v6 = [txtDictionary objectForKeyedSubscript:@"rpBA"];

  if ([v6 isEqual:self->_bonjourTestID])
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationWiFiSetup _bonjourTestFoundDevice:];
    }

    self->_bonjourTestState = 4;
    bonjourTimer = self->_bonjourTimer;
    if (bonjourTimer)
    {
      v8 = bonjourTimer;
      dispatch_source_cancel(v8);
      v9 = self->_bonjourTimer;
      self->_bonjourTimer = 0;
    }

    [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
    bonjourBrowser = self->_bonjourBrowser;
    self->_bonjourBrowser = 0;

    sfSession = self->_sfSession;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__SFDeviceOperationWiFiSetup__bonjourTestFoundDevice___block_invoke;
    v12[3] = &unk_1E788B548;
    v12[4] = self;
    [(SFSession *)sfSession sendRequestID:@"_bjtD" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v12];
  }

  else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _bonjourTestFoundDevice:];
  }
}

void __54__SFDeviceOperationWiFiSetup__bonjourTestFoundDevice___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  if ((*(*(a1 + 32) + 32) & 1) == 0)
  {
    mach_absolute_time();
    v7 = *(*(a1 + 32) + 56);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 112) = v8;
    if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
    {
      v10 = *(*(a1 + 32) + 112);
      LogPrintF();
      [*(a1 + 32) _complete:{0, v10, v6, v13}];
    }

    else
    {
      [*(a1 + 32) _complete:{0, v9, v11, v12}];
    }
  }
}

- (void)_bonjourTestTimeout
{
  if (self->_invalidateCalled)
  {
    return;
  }

  mach_absolute_time();
  startBonjourTestTicks = self->_startBonjourTestTicks;
  UpTicksToSecondsF();
  self->_metricBonjourTestSeconds = v5;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 90)
  {
    if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      metricBonjourTestSeconds = self->_metricBonjourTestSeconds;
    }

    LogPrintF();
  }

LABEL_6:
  self->_bonjourTestState = 3;

  [(SFDeviceOperationWiFiSetup *)self _complete:0];
}

- (void)_complete:(id)_complete
{
  _completeCopy = _complete;
  bonjourTimer = self->_bonjourTimer;
  v16 = _completeCopy;
  if (bonjourTimer)
  {
    v6 = bonjourTimer;
    dispatch_source_cancel(v6);
    v7 = self->_bonjourTimer;
    self->_bonjourTimer = 0;

    _completeCopy = v16;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v9 = timeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    _completeCopy = v16;
  }

  if (self->_completionHandler)
  {
    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    self->_metricTotalSeconds = v12;
    if (v16)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_16;
          }

          metricTotalSeconds = self->_metricTotalSeconds;
        }

        goto LABEL_12;
      }
    }

    else if (gLogCategory_SFDeviceOperationWiFiSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationWiFiSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_16;
        }

        v15 = self->_metricTotalSeconds;
      }

LABEL_12:
      LogPrintF();
    }

LABEL_16:
    (*(self->_completionHandler + 2))(self->_completionHandler, v16);
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    _completeCopy = v16;
  }
}

- (void)_setupResponse:(id)response inResponse:(id)inResponse
{
  responseCopy = response;
  inResponseCopy = inResponse;
  mach_absolute_time();
  startTicks = self->_startTicks;
  UpTicksToSecondsF();
  self->_metricWiFiSetupSeconds = v9;
  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _setupResponse:inResponse:];
  }

  if (responseCopy)
  {
    v10 = responseCopy;
LABEL_12:
    [(SFDeviceOperationWiFiSetup *)self _complete:v10];

    goto LABEL_13;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  if (Int64Ranged)
  {
    [v13 UTF8String];
    v10 = NSErrorF();
  }

  else
  {
    v10 = 0;
  }

  CFArrayGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  self->_wiFiRetryMetrics = v14;

  if (v10)
  {
    goto LABEL_12;
  }

  if ((self->_setupFlags & 1) == 0)
  {
    v10 = 0;
    goto LABEL_12;
  }

  if (gLogCategory_SFDeviceOperationWiFiSetup <= 30 && (gLogCategory_SFDeviceOperationWiFiSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationWiFiSetup _setupResponse:? inResponse:?];
  }

  [(SFDeviceOperationWiFiSetup *)self _bonjourTestStart];
LABEL_13:
}

- (uint64_t)_activate2
{
  v2 = *(self + 152);
  v3 = *(self + 144);
  return LogPrintF();
}

@end