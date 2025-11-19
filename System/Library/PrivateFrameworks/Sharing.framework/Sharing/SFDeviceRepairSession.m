@interface SFDeviceRepairSession
- (BOOL)_remotePeerNeedsAppleIDRepair;
- (SFDeviceRepairSession)init;
- (int)_runAppleIDSetupRepair;
- (int)_runCDPSetup;
- (int)_runCaptiveJoin;
- (int)_runFinish;
- (int)_runGetProblems;
- (int)_runHomeKitSetup;
- (int)_runPairVerify;
- (int)_runPreflightWiFiEarly;
- (int)_runPreflightWiFiFull;
- (int)_runSFSessionStart;
- (int)_runTRAuthentication;
- (int)_runTRSessionStart;
- (int)_runWiFiSetup;
- (void)_cleanup;
- (void)_reportRepairResultMetrics:(id)a3;
- (void)_run;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceRepairSession

- (SFDeviceRepairSession)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceRepairSession;
  v2 = [(SFDeviceRepairSession *)&v7 init];
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
    [(SFDeviceRepairSession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceRepairSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceRepairSession;
    [(SFDeviceRepairSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = 0;

  [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
  captiveJoin = self->_captiveJoin;
  self->_captiveJoin = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  appleIDRepairController = self->_appleIDRepairController;
  self->_appleIDRepairController = 0;

  [(SFSession *)self->_sfSession setInvalidationHandler:0];
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    progressHandler = self->_progressHandler;
  }

  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDeviceRepairSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__SFDeviceRepairSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __33__SFDeviceRepairSession_activate__block_invoke_cold_1(a1);
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 16) = mach_absolute_time();
  *(*(a1 + 32) + 64) = [*(*(a1 + 32) + 344) problemFlags];
  *(*(a1 + 32) + 112) = CFPrefs_GetInt64() != 0;
  v2 = *(a1 + 32);
  v3 = v2[46];
  if (v3)
  {
    (*(v3 + 16))(v2[46], 10, 0);
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceRepairSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceRepairSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0 && gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceRepairSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 9) = 1;
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)_reportRepairResultMetrics:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFDeviceRepairSession <= 40 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceRepairSession _reportRepairResultMetrics:];
  }

  v3 = [v4 dict];
  SFMetricsLog(@"com.apple.sharing.RepairResult", v3);
}

- (BOOL)_remotePeerNeedsAppleIDRepair
{
  if (_os_feature_enabled_impl())
  {
    v3 = BYTE1(self->_peerFeatureFlags) >> 7;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  if ((self->_problemFlags & 0x20006) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = (self->_repairFlags >> 3) & 1;
    if ((self->_repairFlags & 6) != 0)
    {
      LOBYTE(v4) = 1;
    }
  }

  return v3 & v4;
}

- (int)_runPreflightWiFiEarly
{
  preflightWiFiEarlyState = self->_preflightWiFiEarlyState;
  if (!preflightWiFiEarlyState)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runPreflightWiFiEarly];
    }

    v4 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v5)
    {
      v6 = v5;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runPreflightWiFiEarly];
      }

      self->_preflightWiFiEarlyState = 4;

      return self->_preflightWiFiEarlyState;
    }

    else
    {
      v7 = NSErrorWithOSStatusF();
      self->_preflightWiFiEarlyState = 3;
      [(SFDeviceRepairSession *)self _reportError:v7 isPreflight:1];
      preflightWiFiEarlyState = self->_preflightWiFiEarlyState;
    }
  }

  return preflightWiFiEarlyState;
}

- (int)_runPreflightWiFiFull
{
  preflightWiFiState = self->_preflightWiFiState;
  if (preflightWiFiState == 4 || preflightWiFiState == 2)
  {
    return self->_preflightWiFiState;
  }

  if (preflightWiFiState)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_preflightWiFiState;
        }

        v15 = self->_preflightWiFiState;
      }

      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runPreflightWiFiFull];
    }

    v6 = WiFiCopyCurrentNetworkInfoEx();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    CFStringGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    if (!v8)
    {
      v13 = NSErrorWithOSStatusF();
      self->_preflightWiFiState = 3;
      [(SFDeviceRepairSession *)self _reportError:v13 isPreflight:1];
      v5 = self->_preflightWiFiState;
      goto LABEL_23;
    }

    if (CFDictionaryGetInt64())
    {
      if (Int64Ranged != 1)
      {
        v23 = Int64Ranged;
        v9 = NSPrintF();
        if (v9)
        {
          goto LABEL_18;
        }
      }

      v10 = [(SFDevice *)self->_peerDevice bleDevice];
      v11 = [v10 advertisementData];
      if ([v11 length])
      {
        v12 = [(SFDevice *)self->_peerDevice osVersion];

        if (v12 <= 0xA)
        {
          v23 = [(SFDevice *)self->_peerDevice osVersion];
          v9 = NSPrintF();
          if (v9)
          {
LABEL_18:
            v13 = v9;
            v24 = v9;
            v14 = NSErrorWithOSStatusF();
            self->_preflightWiFiState = 3;
            [(SFDeviceRepairSession *)self _reportError:v14 isPreflight:1, v24];
            v5 = self->_preflightWiFiState;

LABEL_23:
LABEL_45:

            return v5;
          }
        }
      }

      else
      {
      }
    }

    if (CFPrefs_GetInt64() && [v8 isEqual:{@"AppleWiFi", v23}])
    {
      goto LABEL_44;
    }

    wifiIsCaptive = CFDictionaryGetInt64() != 0;
    self->_wifiIsCaptive = wifiIsCaptive;
    peerFeatureFlags = self->_peerFeatureFlags;
    if (gLogCategory_SFDeviceRepairSession <= 30)
    {
      if (gLogCategory_SFDeviceRepairSession != -1 || (v18 = _LogCategory_Initialize(), wifiIsCaptive = self->_wifiIsCaptive, v18))
      {
        LogPrintF();
        wifiIsCaptive = self->_wifiIsCaptive;
      }
    }

    if (wifiIsCaptive && (peerFeatureFlags & 0x2000) == 0)
    {
LABEL_44:
      v21 = NSErrorWithOSStatusF();
      self->_preflightWiFiState = 3;
      [(SFDeviceRepairSession *)self _reportError:v21 isPreflight:1];
      v5 = self->_preflightWiFiState;

      goto LABEL_45;
    }

    v20 = (peerFeatureFlags & 0x2000) == 0 || Int64Ranged != 5;
    if (Int64Ranged >= 2 && v20)
    {
      CUWiFiShareableStatusToString(Int64Ranged);
      goto LABEL_44;
    }

    if ((_os_feature_enabled_impl() || [(NSString *)self->_peerSSID isEqualToString:v8]) && ((self->_problemFlags & 0x200000) != 0 || (self->_repairFlags & 0x20) != 0))
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runPreflightWiFiFull];
      }

      self->_wifiSetupState = 2;
    }

    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runPreflightWiFiFull];
    }

    self->_preflightWiFiState = 4;
  }

  return self->_preflightWiFiState;
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_sfSessionState;
          }

          v9 = self->_sfSessionState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runSFSessionStart];
      }

      self->_sfSessionState = 1;
      [(SFSession *)self->_sfSession invalidate];
      v5 = objc_alloc_init(SFSession);
      sfSession = self->_sfSession;
      self->_sfSession = v5;

      [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)self->_sfSession setLabel:@"Repair"];
      [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.Repair"];
      [(SFSession *)self->_sfSession setSessionFlags:4129];
      [(SFSession *)self->_sfSession setTouchRemoteEnabled:1];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke;
      v14[3] = &unk_1E788B238;
      v14[4] = self;
      [(SFSession *)self->_sfSession setErrorHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_2;
      v13[3] = &unk_1E788B198;
      v13[4] = self;
      [(SFSession *)self->_sfSession setInterruptionHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_3;
      v12[3] = &unk_1E788B198;
      v12[4] = self;
      [(SFSession *)self->_sfSession setInvalidationHandler:v12];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_4;
      v11[3] = &unk_1E788B198;
      v11[4] = self;
      [(SFSession *)self->_sfSession setSessionStartedHandler:v11];
      v7 = self->_sfSession;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_5;
      v10[3] = &unk_1E788B238;
      v10[4] = self;
      [(SFSession *)v7 activateWithCompletion:v10];
    }
  }

  return self->_sfSessionState;
}

_BYTE *__43__SFDeviceRepairSession__runSFSessionStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[9] & 1) == 0)
  {
    return [result _reportError:a2 isPreflight:1];
  }

  return result;
}

void __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _reportError:v2 isPreflight:0];
  }
}

void __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[9] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _reportError:v2 isPreflight:0];
  }
}

uint64_t __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 9) & 1) == 0 && *(v1 + 40) == 1)
  {
    *(v1 + 40) = 4;
    return [*(result + 32) _run];
  }

  return result;
}

uint64_t __43__SFDeviceRepairSession__runSFSessionStart__block_invoke_5(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    if ((*(v2 + 9) & 1) == 0)
    {
      *(v2 + 40) = 3;
      return [*(result + 32) _reportError:a2 isPreflight:0];
    }
  }

  return result;
}

- (int)_runPairVerify
{
  pairVerifyState = self->_pairVerifyState;
  if ((pairVerifyState | 2) == 2)
  {
    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]& 0xFFFFFBFFLL];
    self->_pairVerifyState = 0;
    pairVerifyType = self->_pairVerifyType;
    if (pairVerifyType != 1)
    {
LABEL_10:
      v6 = "?";
      if (pairVerifyType == 1)
      {
        v6 = "CUPairing";
      }

      if (pairVerifyType)
      {
        v7 = v6;
      }

      else
      {
        v7 = "HomeKit";
      }

      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runPairVerify];
      }

      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__SFDeviceRepairSession__runPairVerify__block_invoke;
      v12[3] = &unk_1E788F738;
      v12[4] = self;
      v12[5] = v7;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v12];
      return self->_pairVerifyState;
    }

    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]| 0x400];
    pairVerifyState = self->_pairVerifyState;
  }

  if (pairVerifyState == 4 || pairVerifyState == 2)
  {
    return self->_pairVerifyState;
  }

  if (!pairVerifyState)
  {
    pairVerifyType = self->_pairVerifyType;
    goto LABEL_10;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_pairVerifyState;
      }

      v11 = self->_pairVerifyState;
    }

    LogPrintF();
  }

  return self->_pairVerifyState;
}

void __39__SFDeviceRepairSession__runPairVerify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = a1 + 32;
  if ((*(*(a1 + 32) + 9) & 1) == 0)
  {
    v11 = v3;
    if (v3)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_1(a1);
      }

      v5 = *v4;
      v6 = *(*v4 + 80);
      if (v6 == 1)
      {
        *(v5 + 72) = 3;
        v7 = *v4;
        v8 = NSErrorWithOSStatusF();
        [v7 _reportError:v8 isPreflight:{0, v11}];

LABEL_19:
        v3 = v11;
        goto LABEL_20;
      }

      *(v5 + 80) = v6 + 1;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_2(a1 + 32);
      }

      *(*v4 + 72) = 2;
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceRepairSession__runPairVerify__block_invoke_cold_3(a1);
      }

      *(*v4 + 72) = 4;
      *(*v4 + 88) = 1;
      v9 = *v4;
      v10 = *(*v4 + 368);
      if (!v10)
      {
        goto LABEL_18;
      }

      (*(v10 + 16))(*(*v4 + 368), 70, 0);
    }

    v9 = *v4;
LABEL_18:
    [v9 _run];
    goto LABEL_19;
  }

LABEL_20:
}

- (int)_runGetProblems
{
  v14[1] = *MEMORY[0x1E69E9840];
  getProblemsState = self->_getProblemsState;
  if (getProblemsState != 4 && getProblemsState != 2)
  {
    if (getProblemsState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_17;
          }

          v11 = self->_getProblemsState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runGetProblems];
      }

      self->_getProblemsState = 1;
      if (_os_feature_enabled_impl())
      {
        v5 = 0x8000;
      }

      else
      {
        v5 = 0;
      }

      v13 = @"ff";
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
      v14[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

      sfSession = self->_sfSession;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __40__SFDeviceRepairSession__runGetProblems__block_invoke;
      v12[3] = &unk_1E788B548;
      v12[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_getprob" options:0 request:v7 responseHandler:v12];
    }
  }

LABEL_17:
  result = self->_getProblemsState;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __40__SFDeviceRepairSession__runGetProblems__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v19 = a3;
  v8 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  if (CFDictionaryGetInt64Ranged())
  {
    v9 = NSErrorWithOSStatusF();
    if (v9)
    {
      v7 = v9;
LABEL_2:
      *(*(a1 + 32) + 92) = 3;
      [*(a1 + 32) _reportError:v7 isPreflight:0];

      goto LABEL_10;
    }
  }

  Int64 = CFDictionaryGetInt64();
  v12 = *(a1 + 32);
  v11 = (a1 + 32);
  *(v12 + 96) = Int64;
  *(*v11 + 6) = CFDictionaryGetInt64();
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  v14 = *(*v11 + 41);
  *(*v11 + 41) = v13;

  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  v16 = *(*v11 + 7);
  *(*v11 + 7) = v15;

  CFStringGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  v18 = *(*v11 + 13);
  *(*v11 + 13) = v17;

  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __40__SFDeviceRepairSession__runGetProblems__block_invoke_cold_1(v11);
  }

  *(*v11 + 23) = 4;
  [*v11 _run];
LABEL_10:
}

- (int)_runWiFiSetup
{
  if (SFDeviceIsVirtualMachine())
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runWiFiSetup];
    }

    self->_wifiSetupState = 2;
  }

  else
  {
    wifiSetupState = self->_wifiSetupState;
    if (wifiSetupState != 4 && wifiSetupState != 2)
    {
      if (wifiSetupState)
      {
        if (gLogCategory_SFDeviceRepairSession <= 30)
        {
          if (gLogCategory_SFDeviceRepairSession == -1)
          {
            if (!_LogCategory_Initialize())
            {
              return self->_wifiSetupState;
            }

            v16 = self->_wifiSetupState;
          }

          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceRepairSession _runWiFiSetup];
        }

        self->_wifiSetupState = 1;
        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 200, 0);
        }

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
        v6 = objc_alloc_init(SFDeviceOperationWiFiSetup);
        wifiSetupOperation = self->_wifiSetupOperation;
        self->_wifiSetupOperation = v6;

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setDispatchQueue:self->_dispatchQueue];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRepairFlags:self->_repairFlags];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSfSession:self->_sfSession];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipLocalReachability:self->_wifiIsCaptive];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipReachability:self->_wifiIsCaptive];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setOperationType:self->_operationType];
        if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
        {
          [(SFDeviceRepairSession *)&self->_operationType _runWiFiSetup];
        }

        preferredWiFiConfiguration = self->_preferredWiFiConfiguration;
        if (preferredWiFiConfiguration && [(NSDictionary *)preferredWiFiConfiguration count])
        {
          if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceRepairSession _runWiFiSetup];
          }

          v18 = 0;
          v9 = self->_preferredWiFiConfiguration;
          CFStringGetTypeID();
          v10 = CFDictionaryGetTypedValue();
          v11 = self->_preferredWiFiConfiguration;
          CFStringGetTypeID();
          v12 = CFDictionaryGetTypedValue();
          v13 = v12;
          if (v10 && v12)
          {
            if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceRepairSession _runWiFiSetup];
            }

            [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setPreferredWiFiConfiguration:self->_preferredWiFiConfiguration];
          }

          else
          {
            v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v18 userInfo:0];
            if (gLogCategory_SFDeviceRepairSession <= 60 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceRepairSession _runWiFiSetup];
            }
          }
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __38__SFDeviceRepairSession__runWiFiSetup__block_invoke;
        v17[3] = &unk_1E788B238;
        v17[4] = self;
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setCompletionHandler:v17];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation activate];
      }
    }
  }

  return self->_wifiSetupState;
}

void __38__SFDeviceRepairSession__runWiFiSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v5 = v7;
  if ((*(v7 + 9) & 1) == 0)
  {
    v9 = v3;
    if (v3)
    {
      *(v5 + 192) = 3;
      [*v6 _reportError:v3 isPreflight:0];
    }

    else
    {
      [*(v5 + 184) metricTotalSeconds];
      *(*v6 + 25) = v8;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __38__SFDeviceRepairSession__runWiFiSetup__block_invoke_cold_1(v6);
      }

      *(*v6 + 48) = 4;
      [*v6 _run];
    }

    v4 = v9;
  }
}

- (int)_runCaptiveJoin
{
  captiveJoinState = self->_captiveJoinState;
  if (captiveJoinState != 4)
  {
    if (captiveJoinState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_captiveJoinState;
          }

          v7 = self->_captiveJoinState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runCaptiveJoin];
      }

      self->_captiveJoinState = 1;
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
      v4 = objc_alloc_init(SFDeviceOperationCNJSetup);
      captiveJoin = self->_captiveJoin;
      self->_captiveJoin = v4;

      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setSfSession:self->_sfSession];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setPresentingViewController:self->_presentingViewController];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setCompletionHandler:v8];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin activate];
    }
  }

  return self->_captiveJoinState;
}

void __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 320);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_SFDeviceRepairSession <= 60)
    {
      if (gLogCategory_SFDeviceRepairSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 32);
      }

      LogPrintF();
    }

LABEL_12:
    v5 = NSErrorWithOSStatusF();
    *(*(a1 + 40) + 224) = 3;
    [*(a1 + 40) _reportError:v5 isPreflight:0];

    return;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __40__SFDeviceRepairSession__runCaptiveJoin__block_invoke_2_cold_1();
  }

  [*(*(a1 + 40) + 216) metricTotalSeconds];
  *(*(a1 + 40) + 232) = v2;
  *(*(a1 + 40) + 224) = 4;
  v3 = *(a1 + 40);

  [v3 _run];
}

- (int)_runTRSessionStart
{
  trSessionState = self->_trSessionState;
  if (trSessionState == 4 || trSessionState == 2)
  {
    return self->_trSessionState;
  }

  if (!trSessionState)
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceRepairSession _runTRSessionStart];
    }

    self->_trSessionState = 1;
    v5 = objc_alloc_init(getTROperationQueueClass_1());
    trOperationQueue = self->_trOperationQueue;
    self->_trOperationQueue = v5;

    if (self->_trOperationQueue)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      trOperations = self->_trOperations;
      self->_trOperations = v7;

      v9 = [(SFSession *)self->_sfSession trSession];
      trSession = self->_trSession;
      self->_trSession = v9;

      if (self->_trSession)
      {
        if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceRepairSession _runTRSessionStart];
        }

        self->_trSessionState = 4;
        return self->_trSessionState;
      }

      if (gLogCategory_SFDeviceRepairSession > 90 || gLogCategory_SFDeviceRepairSession == -1 && !_LogCategory_Initialize())
      {
LABEL_29:
        self->_trSessionState = 3;
        v12 = NSErrorWithOSStatusF();
        [(SFDeviceRepairSession *)self _reportError:v12 isPreflight:0];

        return self->_trSessionState;
      }
    }

    else if (gLogCategory_SFDeviceRepairSession > 90 || gLogCategory_SFDeviceRepairSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_29;
    }

    [SFDeviceRepairSession _runTRSessionStart];
    goto LABEL_29;
  }

  if (gLogCategory_SFDeviceRepairSession <= 30)
  {
    if (gLogCategory_SFDeviceRepairSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_trSessionState;
      }

      v13 = self->_trSessionState;
    }

    LogPrintF();
  }

  return self->_trSessionState;
}

- (int)_runTRAuthentication
{
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4 && trAuthenticationState != 2)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trAuthenticationState;
          }

          v15 = self->_trAuthenticationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runTRAuthentication];
      }

      self->_trAuthenticationState = 1;
      self->_trAuthenticationStartTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 220, 0);
      }

      v6 = [objc_alloc(getTRAuthenticationOperationClass_0()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v6];
      v18 = 0;
      Int64 = CFPrefs_GetInt64();
      v8 = [(SFDeviceRepairSession *)self disableSilentAuth];
      if (Int64)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      [v6 setShouldForceInteractiveAuth:v9];
      [v6 setShouldIgnoreAuthFailures:0];
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v11 = v10;
      problemFlags = self->_problemFlags;
      if ((problemFlags & 2) != 0 || (self->_repairFlags & 2) != 0)
      {
        [v10 addObject:&unk_1F1D7CEC8];
        problemFlags = self->_problemFlags;
      }

      if ((problemFlags & 4) != 0 || (self->_repairFlags & 4) != 0)
      {
        [v11 addObject:&unk_1F1D7CEE0];
      }

      [v6 setTargetedServices:v11];
      if (self->_presentingViewController)
      {
        [v6 setPresentingViewController:?];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SFDeviceRepairSession__runTRAuthentication__block_invoke;
      v16[3] = &unk_1E788A658;
      v16[4] = self;
      v17 = v6;
      v13 = v6;
      [v13 setCompletionBlock:v16];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v13];
    }
  }

  return self->_trAuthenticationState;
}

void __45__SFDeviceRepairSession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 320);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 248))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 280);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 288) = v4;
    v8 = [*(a1 + 40) result];
    getTRAuthenticationOperationUnauthenticatedServicesKey_0();
    CFSetGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (v8 && ![v5 count])
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 68) = 4;
      [*v1 _run];
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 60 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __45__SFDeviceRepairSession__runTRAuthentication__block_invoke_2_cold_2();
      }

      v6 = [*(a1 + 40) error];
      if (!v6)
      {
        getTRAuthenticationOperationErrorKey_0();
        CFErrorGetTypeID();
        v6 = CFDictionaryGetTypedValue();
        if (!v6)
        {
          v6 = NSErrorWithOSStatusF();
        }
      }

      v7 = v6;
      *(*v1 + 68) = 3;
      [*v1 _reportError:v6 isPreflight:0];
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
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
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
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runCDPSetup];
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
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setIsRepair:1];
      if (self->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setPresentingViewController:?];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__SFDeviceRepairSession__runCDPSetup__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = self;
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation activate];
    }
  }

  return self->_cdpState;
}

void __37__SFDeviceRepairSession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 120);
  if (v7)
  {
    v9 = v3;
    if (v3)
    {
      *(v4 + 136) = 3;
      [*v5 _reportError:v3 isPreflight:0];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 16) = v8;
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __37__SFDeviceRepairSession__runCDPSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 34) = 4;
      [*v5 _run];
    }

    v3 = v9;
  }
}

- (int)_runAppleIDSetupRepair
{
  appleIDSetupState = self->_appleIDSetupState;
  if (appleIDSetupState != 4)
  {
    if (appleIDSetupState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceRepairSession *)self _runAppleIDSetupRepair];
      }
    }

    else
    {
      v4 = self->_altDSID;
      if (!v4 || ([(SFSession *)self->_sfSession messageSessionTemplate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
      {
        self->_appleIDSetupState = 3;
        v14 = NSErrorWithOSStatusF();
        [(SFDeviceRepairSession *)self _reportError:v14 isPreflight:0];

        v13 = self->_appleIDSetupState;
        return v13;
      }

      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runAppleIDSetupRepair];
      }

      self->_appleIDSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 224, 0);
      }

      v7 = mach_absolute_time();
      v8 = [objc_alloc(getAISRepairContextClass_0[0]()) initWithAltDSID:v4];
      v9 = [(SFSession *)self->_sfSession messageSessionTemplate];
      [v8 setMessageSessionTemplate:v9];

      [v8 setRemoteRole:3];
      v10 = objc_alloc_init(getAISRepairControllerClass_0[0]());
      appleIDRepairController = self->_appleIDRepairController;
      self->_appleIDRepairController = v10;

      v12 = self->_appleIDRepairController;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke;
      v16[3] = &unk_1E788F760;
      v16[4] = self;
      v16[5] = v7;
      [(AISRepairController *)v12 repairWithContext:v8 completionHandler:v16];
    }
  }

  return self->_appleIDSetupState;
}

void __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 320);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2;
  v12[3] = &unk_1E788B570;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

uint64_t __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2(void *a1)
{
  if (a1[4])
  {
    *(a1[5] + 160) = 3;
    v3 = a1[4];
    v2 = a1[5];

    return [v2 _reportError:v3 isPreflight:0];
  }

  else
  {
    if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
    {
      __47__SFDeviceRepairSession__runAppleIDSetupRepair__block_invoke_2_cold_1(a1);
    }

    mach_absolute_time();
    v5 = a1[7];
    UpTicksToSecondsF();
    *(a1[5] + 152) = v6;
    *(a1[5] + 160) = 4;
    v7 = a1[5];

    return [v7 _run];
  }
}

- (int)_runHomeKitSetup
{
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState != 4)
  {
    if (homeKitSetupState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_homeKitSetupState;
          }

          v9 = self->_homeKitSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runHomeKitSetup];
      }

      self->_homeKitSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 234, 0);
      }

      v5 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetupOperation = self->_homeKitSetupOperation;
      self->_homeKitSetupOperation = v5;

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setKeyExchangeOnly:1];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setUserInteractive:0];
      v7 = [(SFSession *)self->_sfSession trSession];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTrSession:v7];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke;
      v10[3] = &unk_1E788B238;
      v10[4] = self;
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v10];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation activate];
    }
  }

  return self->_homeKitSetupState;
}

void __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 168))
  {
    v6 = v3;
    if (v3)
    {
      *(v5 + 176) = 3;
      [*(a1 + 32) _reportError:v3 isPreflight:0];
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        __41__SFDeviceRepairSession__runHomeKitSetup__block_invoke_cold_1();
      }

      *(*(a1 + 32) + 176) = 4;
      [*(a1 + 32) _run];
    }

    v4 = v6;
  }
}

- (int)_runFinish
{
  finishState = self->_finishState;
  if (finishState != 4 && finishState != 2)
  {
    if (finishState)
    {
      if (gLogCategory_SFDeviceRepairSession <= 30)
      {
        if (gLogCategory_SFDeviceRepairSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_finishState;
          }

          v7 = self->_finishState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceRepairSession _runFinish];
      }

      self->_finishState = 1;
      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __35__SFDeviceRepairSession__runFinish__block_invoke;
      v8[3] = &unk_1E788B548;
      v8[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_finish" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v8];
    }
  }

  return self->_finishState;
}

void __35__SFDeviceRepairSession__runFinish__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    goto LABEL_2;
  }

  if (CFDictionaryGetInt64Ranged())
  {
    v10 = NSErrorWithOSStatusF();
    if (v10)
    {
      v7 = v10;
LABEL_2:
      *(*(a1 + 32) + 296) = 3;
      [*(a1 + 32) _reportError:v7 isPreflight:0];
      goto LABEL_12;
    }
  }

  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceRepairSession__runFinish__block_invoke_cold_1();
  }

  v7 = objc_alloc_init(SFRepairResultMetrics);
  [(SFRepairResultMetrics *)v7 setProblemFlags:*(*(a1 + 32) + 96)];
  [(SFRepairResultMetrics *)v7 setPeerProblemFlags:*(*(a1 + 32) + 64)];
  [(SFRepairResultMetrics *)v7 setForceWiFi:*(*(a1 + 32) + 304) & 1];
  mach_absolute_time();
  v11 = *(*(a1 + 32) + 16);
  [(SFRepairResultMetrics *)v7 setTotalMs:UpTicksToMilliseconds()];
  [(SFRepairResultMetrics *)v7 setTriggerMs:*(*(a1 + 32) + 376)];
  v12 = [*(*(a1 + 32) + 344) model];
  [(SFRepairResultMetrics *)v7 setPeerModel:v12];

  [(SFRepairResultMetrics *)v7 setPeerBuild:*(*(a1 + 32) + 104)];
  [(SFRepairResultMetrics *)v7 setHasView:*(*(a1 + 32) + 360) != 0];
  [*(a1 + 32) _reportRepairResultMetrics:v7];
  v13 = objc_alloc_init(SFClient);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__SFDeviceRepairSession__runFinish__block_invoke_2;
  v17[3] = &unk_1E788B238;
  v14 = v13;
  v18 = v14;
  [(SFClient *)v14 reenableProxCardType:10 completion:v17];
  v15 = *(a1 + 32);
  v16 = v15[46];
  if (v16)
  {
    (*(v16 + 16))(v15[46], 96, 0);
    v15 = *(a1 + 32);
  }

  [v15 _cleanup];

LABEL_12:
}

void __35__SFDeviceRepairSession__runFinish__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFDeviceRepairSession <= 30 && (gLogCategory_SFDeviceRepairSession != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceRepairSession__runFinish__block_invoke_2_cold_1();
  }

  [*(a1 + 32) invalidate];
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = [(SFDeviceRepairSession *)self _runPreflightWiFiEarly];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(SFDeviceRepairSession *)self _runSFSessionStart];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceRepairSession *)self _runPairVerify], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          v9 = [(SFDeviceRepairSession *)self _runGetProblems];
          if (v9 == 4 || v9 == 2)
          {
            if ((self->_problemFlags & 0x10) == 0 && (self->_repairFlags & 1) == 0 || ((v11 = [(SFDeviceRepairSession *)self _runPreflightWiFiFull], v11 != 4) ? (v12 = v11 == 2) : (v12 = 1), v12 && ((v13 = [(SFDeviceRepairSession *)self _runWiFiSetup], v13 != 4) ? (v14 = v13 == 2) : (v14 = 1), v14 && (!self->_presentingViewController || (self->_problemFlags & 0x200000) == 0 && (self->_repairFlags & 0x20) == 0 || ((v15 = [(SFDeviceRepairSession *)self _runCaptiveJoin], v15 != 4) ? (v16 = v15 == 2) : (v16 = 1), v16)))))
            {
              if ([(SFDeviceRepairSession *)self _remotePeerNeedsAppleIDRepair])
              {
                v17 = [(SFDeviceRepairSession *)self _runAppleIDSetupRepair];
                if (v17 != 2 && v17 != 4)
                {
                  return;
                }
              }

              else
              {
                if ((self->_problemFlags & 6) != 0 || (self->_repairFlags & 6) != 0)
                {
                  v19 = [(SFDeviceRepairSession *)self _runTRSessionStart];
                  if (v19 != 4 && v19 != 2)
                  {
                    return;
                  }

                  v21 = [(SFDeviceRepairSession *)self _runTRAuthentication];
                  if (v21 != 4 && v21 != 2)
                  {
                    return;
                  }
                }

                if (self->_cdpEnabled && ((self->_problemFlags & 0x20000) != 0 || (self->_repairFlags & 8) != 0))
                {
                  v23 = [(SFDeviceRepairSession *)self _runCDPSetup];
                  if (v23 != 4 && v23 != 2)
                  {
                    return;
                  }
                }
              }

              if ((self->_problemFlags & 8) == 0 && (self->_repairFlags & 0x10) == 0 || ((v25 = [(SFDeviceRepairSession *)self _runHomeKitSetup], v25 != 4) ? (v26 = v25 == 2) : (v26 = 1), v26))
              {
                if ((self->_problemFlags & 0x100) == 0)
                {

                  [(SFDeviceRepairSession *)self _runFinish];
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __40__SFDeviceRepairSession__runGetProblems__block_invoke_cold_1(uint64_t a1)
{
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 104);
  v3 = *(*a1 + 328);
  v2 = *(*a1 + 96);
  return LogPrintF();
}

@end