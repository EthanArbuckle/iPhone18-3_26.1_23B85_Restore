@interface SKStepWiFiSetupServerLegacy
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiSetupServerLegacy)init;
- (void)_activate;
- (void)_completeWithError:(id)error;
- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler;
- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler;
- (void)_handleRequestWiFiSetup:(id)setup responseHandler:(id)handler;
- (void)_invalidated;
- (void)_run;
- (void)_runInternetReachabilityStart;
- (void)_runScanResults:(id)results error:(id)error channel:(int)channel;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation SKStepWiFiSetupServerLegacy

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_runInternetReachabilityStart
{
  var0 = self->_ucat->var0;
  if (self->_internetReachabilityEnabled)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_9:
    self->_stepDone = 0;
    stepError = self->_stepError;
    self->_stepError = 0;

    [(CUReachabilityMonitor *)self->_internetReachabilityMonitor invalidate];
    v5 = objc_alloc_init(MEMORY[0x277D02900]);
    internetReachabilityMonitor = self->_internetReachabilityMonitor;
    self->_internetReachabilityMonitor = v5;
    v7 = v5;

    [(CUReachabilityMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    [(CUReachabilityMonitor *)v7 setTimeout:20.0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__SKStepWiFiSetupServerLegacy__runInternetReachabilityStart__block_invoke;
    v11[3] = &unk_279BB8838;
    v11[4] = v7;
    v11[5] = self;
    [(CUReachabilityMonitor *)v7 setCompletionHandler:v11];
    [(CUReachabilityMonitor *)v7 activate];

    return;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v10 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_11:
  self->_stepDone = 1;
  v8 = self->_stepError;
  self->_stepError = 0;
}

void __60__SKStepWiFiSetupServerLegacy__runInternetReachabilityStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(v4 + 40);
  if (*(a1 + 32) == v5)
  {
    *(v4 + 40) = 0;
    v16 = v3;

    if (v16)
    {
      v6 = *MEMORY[0x277CCA590];
      v7 = NSErrorNestedF();
      v8 = *(a1 + 40);
      v9 = *(v8 + 104);
      *(v8 + 104) = v7;

      v10 = **(*(a1 + 40) + 112);
      if (v10 <= 90)
      {
        if (v10 == -1)
        {
          v12 = *(*(a1 + 40) + 112);
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v13 = *(*(a1 + 40) + 112);
        }

        v15 = CUPrintNSError();
        LogPrintF();
      }
    }

    else
    {
      v11 = **(*(a1 + 40) + 112);
      if (v11 <= 30)
      {
        if (v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v14 = *(*(a1 + 40) + 112);
        }

        LogPrintF();
      }
    }

LABEL_12:
    *(*(a1 + 40) + 96) = 1;
    [*(a1 + 40) _run];
    v3 = v16;
  }
}

void __45__SKStepWiFiSetupServerLegacy__runJoinStart___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = **(v2 + 112);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v5 = *(v2 + 112);
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(v2 + 112);
      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    v4 = *(a1 + 48);
    v11 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 32);
  }

LABEL_7:
  *(v2 + 96) = 1;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = (*(a1 + 32) + 104);

  objc_storeStrong(v8, v7);
}

uint64_t __45__SKStepWiFiSetupServerLegacy__runJoinStart___block_invoke_2(uint64_t result, int a2)
{
  v3 = *(result + 32);
  if (*(v3 + 48))
  {
    return result;
  }

  v4 = result;
  v5 = **(v3 + 112);
  if (a2)
  {
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        v7 = *(*(v4 + 32) + 112);
      }

      v6 = *(v4 + 40);
      v15 = CUPrintErrorCode();
      LogPrintF();
    }
  }

  else if (v5 <= 30)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v13 = *(*(v4 + 32) + 112);
    }

    v14 = *(v4 + 40);
    LogPrintF();
  }

LABEL_12:
  *(*(v4 + 32) + 96) = 1;
  v8 = *MEMORY[0x277CCA590];
  v9 = NSErrorF_safe();
  v10 = *(v4 + 32);
  v11 = *(v10 + 104);
  *(v10 + 104) = v9;

  v12 = *(v4 + 32);

  return [v12 _run];
}

- (void)_runScanResults:(id)results error:(id)error channel:(int)channel
{
  resultsCopy = results;
  errorCopy = error;
  firstObject = [resultsCopy firstObject];
  if (!errorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          ucat = self->_ucat;
          if (!_LogCategory_Initialize())
          {
            goto LABEL_13;
          }

          v18 = self->_ucat;
        }

        [resultsCopy count];
        LogPrintF();
      }

LABEL_13:
      v16 = firstObject;
      errorCopy = 0;
      scanResult = self->_scanResult;
      self->_scanResult = v16;
      goto LABEL_14;
    }

    v10 = *MEMORY[0x277CCA590];
    errorCopy = NSErrorF_safe();
  }

  v11 = self->_ucat->var0;
  if (v11 > 90)
  {
    goto LABEL_15;
  }

  if (v11 == -1)
  {
    v13 = self->_ucat;
    if (!_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    v14 = self->_ucat;
  }

  scanResult = CUPrintNSError();
  LogPrintF();
LABEL_14:

LABEL_15:
  self->_stepDone = 1;
  stepError = self->_stepError;
  self->_stepError = errorCopy;

  [(SKStepWiFiSetupServerLegacy *)self _run];
}

void __45__SKStepWiFiSetupServerLegacy__runScanStart___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  v2 = *(a1 + 32);
  v3 = **(v2 + 112);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v5 = *(v2 + 112);
      v6 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(v2 + 112);
      v10 = *(*(*(a1 + 40) + 8) + 40);
    }

    v4 = *(a1 + 48);
    v11 = CUPrintNSError();
    LogPrintF();

    v2 = *(a1 + 32);
  }

LABEL_7:
  *(v2 + 96) = 1;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = (*(a1 + 32) + 104);

  objc_storeStrong(v8, v7);
}

void __45__SKStepWiFiSetupServerLegacy__runScanStart___block_invoke_101(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((v4[48] & 1) == 0)
  {
    if (a2)
    {
      v6 = *MEMORY[0x277CCA590];
      v7 = NSErrorF_safe();
      v4 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [v4 _runScanResults:a3 error:v7 channel:*(a1 + 40)];
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      switch(runState)
      {
        case 0:
          if (self->_responseHandler)
          {
            if (self->_wifiChannel < 1)
            {
              goto LABEL_42;
            }

            v5 = 11;
            goto LABEL_45;
          }

          goto LABEL_46;
        case 3:
          stepError = self->_stepError;
          if (!stepError)
          {
            v12 = NSErrorF_safe();
            v13 = self->_stepError;
            self->_stepError = v12;

            stepError = self->_stepError;
          }

          selfCopy2 = self;
          goto LABEL_22;
        case 4:
          selfCopy2 = self;
          stepError = 0;
LABEL_22:
          [(SKStepWiFiSetupServerLegacy *)selfCopy2 _completeWithError:stepError, v27, v28];
          goto LABEL_46;
        case 11:
          self->_runState = 12;
          wifiChannel = self->_wifiChannel;
          selfCopy5 = self;
          goto LABEL_27;
        case 12:
          if (self->_scanResult)
          {
            v5 = 13;
            goto LABEL_45;
          }

          if (self->_stepDone)
          {
            goto LABEL_42;
          }

          var0 = self->_ucat->var0;
          if (var0 > 30)
          {
            goto LABEL_46;
          }

          if (var0 == -1)
          {
            goto LABEL_72;
          }

          v15 = 12;
          goto LABEL_70;
        case 13:
          self->_runState = 14;
          v6 = self->_wifiChannel;
          selfCopy6 = self;
          goto LABEL_29;
        case 14:
          if (self->_stepDone)
          {
            if (!self->_stepError)
            {
              goto LABEL_25;
            }

LABEL_42:
            v5 = 15;
            goto LABEL_45;
          }

          v17 = self->_ucat->var0;
          if (v17 > 30)
          {
            goto LABEL_46;
          }

          if (v17 != -1)
          {
            v15 = 14;
            goto LABEL_70;
          }

          goto LABEL_72;
        case 15:
          self->_runState = 16;
          selfCopy5 = self;
          wifiChannel = 0;
LABEL_27:
          [(SKStepWiFiSetupServerLegacy *)selfCopy5 _runScanStart:wifiChannel, v27];
          goto LABEL_46;
        case 16:
          if (self->_scanResult)
          {
            v5 = 17;
            goto LABEL_45;
          }

          if (self->_stepDone)
          {
            goto LABEL_44;
          }

          v24 = self->_ucat->var0;
          if (v24 > 30)
          {
            goto LABEL_46;
          }

          if (v24 == -1)
          {
            goto LABEL_72;
          }

          v15 = 16;
          goto LABEL_70;
        case 17:
          self->_runState = 18;
          selfCopy6 = self;
          v6 = 0;
LABEL_29:
          [(SKStepWiFiSetupServerLegacy *)selfCopy6 _runJoinStart:v6, v27];
          goto LABEL_46;
        case 18:
          if (self->_stepDone)
          {
            if (self->_stepError)
            {
              goto LABEL_44;
            }

LABEL_25:
            v5 = 19;
            goto LABEL_45;
          }

          v14 = self->_ucat->var0;
          if (v14 > 30)
          {
            goto LABEL_46;
          }

          if (v14 != -1)
          {
            v15 = 18;
            goto LABEL_70;
          }

          goto LABEL_72;
        case 19:
          self->_runState = 20;
          [(SKStepWiFiSetupServerLegacy *)self _runInternetReachabilityStart];
          goto LABEL_46;
        case 20:
          if (!self->_stepDone)
          {
            v16 = self->_ucat->var0;
            if (v16 > 30)
            {
              goto LABEL_46;
            }

            if (v16 != -1)
            {
              v15 = 20;
              goto LABEL_70;
            }

LABEL_72:
            if (!_LogCategory_Initialize())
            {
              goto LABEL_46;
            }

            ucat = self->_ucat;
            v15 = self->_runState;
            if (v15 < 0x15)
            {
LABEL_70:
              if (((0x1FF8FFu >> v15) & 1) == 0)
              {
                goto LABEL_74;
              }

              v25 = off_279BB8598[v15];
            }

            else
            {
LABEL_74:
              if (v15 <= 9)
              {
                v25 = "?";
              }

              else
              {
                v25 = "User";
              }
            }

            v27 = v25;
            LogPrintF();
            goto LABEL_46;
          }

          if (self->_stepError)
          {
LABEL_44:
            v5 = 3;
          }

          else
          {
            v5 = 4;
          }

LABEL_45:
          self->_runState = v5;
LABEL_46:
          v18 = self->_runState;
          if (v18 == runState)
          {
            return;
          }

          v19 = self->_ucat->var0;
          if (v19 > 30)
          {
            continue;
          }

          if (v19 != -1)
          {
            goto LABEL_49;
          }

          if (_LogCategory_Initialize())
          {
            v22 = self->_ucat;
            v18 = self->_runState;
LABEL_49:
            if (runState < 0x15 && ((0x1FF8FFu >> runState) & 1) != 0)
            {
              v20 = off_279BB8598[runState];
            }

            else if (runState <= 9)
            {
              v20 = "?";
            }

            else
            {
              v20 = "User";
            }

            if (v18 < 0x15 && ((0x1FF8FFu >> v18) & 1) != 0)
            {
              v21 = off_279BB8598[v18];
            }

            else if (v18 <= 9)
            {
              v21 = "?";
            }

            else
            {
              v21 = "User";
            }

            v27 = v20;
            v28 = v21;
            LogPrintF();
          }

          break;
        default:
          goto LABEL_46;
      }
    }
  }
}

- (void)_handleRequestWiFiSetup:(id)setup responseHandler:(id)handler
{
  setupCopy = setup;
  handlerCopy = handler;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1748;
  v40 = __Block_byref_object_dispose__1749;
  v41 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__SKStepWiFiSetupServerLegacy__handleRequestWiFiSetup_responseHandler___block_invoke;
  v33[3] = &unk_279BB8500;
  v35 = &v36;
  v33[4] = self;
  v8 = handlerCopy;
  v34 = v8;
  v9 = MEMORY[0x26676A4C0](v33);
  if (self->_runState)
  {
    goto LABEL_9;
  }

  self->_wifiChannel = CFDictionaryGetInt64Ranged();
  self->_wifiDirected = CFDictionaryGetInt64() != 0;
  v10 = [setupCopy objectForKeyedSubscript:@"_wiEC"];
  wifiEAPConfig = self->_wifiEAPConfig;
  self->_wifiEAPConfig = v10;

  v12 = [setupCopy objectForKeyedSubscript:@"_wiET"];
  wifiEAPTrustExceptions = self->_wifiEAPTrustExceptions;
  self->_wifiEAPTrustExceptions = v12;

  self->_wifiHomeNetwork = CFDictionaryGetInt64() != 0;
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  wifiPassword = self->_wifiPassword;
  self->_wifiPassword = v14;

  CFDataGetTypeID();
  v16 = CFDictionaryGetTypedValue();
  wifiPSK = self->_wifiPSK;
  self->_wifiPSK = v16;

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  v19 = self->_wifiPassword;
  self->_wifiPassword = v18;

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();
  wifiSSID = self->_wifiSSID;
  self->_wifiSSID = v20;

  if (!self->_wifiSSID)
  {
LABEL_9:
    v27 = *MEMORY[0x277CCA590];
    v28 = NSErrorF_safe();
    v29 = v37[5];
    v37[5] = v28;

    goto LABEL_8;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v30 = self->_ucat;
      v31 = self->_wifiSSID;
    }

    v23 = CUPrintNSObject();
    self->_wifiPassword;
    self->_wifiPSK;
    self->_wifiHomeNetwork;
    wifiChannel = self->_wifiChannel;
    LogPrintF();
  }

LABEL_7:
  v25 = MEMORY[0x26676A4C0](v8);
  responseHandler = self->_responseHandler;
  self->_responseHandler = v25;

  [(SKStepWiFiSetupServerLegacy *)self _run];
LABEL_8:
  v9[2](v9);

  _Block_object_dispose(&v36, 8);
}

uint64_t __71__SKStepWiFiSetupServerLegacy__handleRequestWiFiSetup_responseHandler___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 112);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 112);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 112);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(a1[5] + 16);
  v8 = *(*(v2 + 8) + 40);

  return v7();
}

- (void)_handleRequestBonjourTestDone:(id)done responseHandler:(id)handler
{
  doneCopy = done;
  handlerCopy = handler;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v14 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v13 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = 0;

  bonjourTimeoutTimer = self->_bonjourTimeoutTimer;
  if (bonjourTimeoutTimer)
  {
    v11 = bonjourTimeoutTimer;
    dispatch_source_cancel(v11);
    v12 = self->_bonjourTimeoutTimer;
    self->_bonjourTimeoutTimer = 0;
  }

  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_50_1827);
}

- (void)_handleRequestBonjourTestStart:(id)start responseHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  handlerCopy = handler;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v25 = CUPrintNSObjectOneLine();
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v23 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (!v10)
  {
    v11 = NSErrorWithOSStatusF();
    v20 = self->_ucat->var0;
    if (v20 <= 90)
    {
      if (v20 == -1)
      {
        v21 = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v24 = self->_ucat;
      }

      v26 = CUPrintNSError();
      LogPrintF();
    }

LABEL_13:
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v11, &__block_literal_global_34_1833);
    goto LABEL_14;
  }

  [(CUBonjourAdvertiser *)self->_bonjourAdvertiser invalidate];
  v11 = objc_alloc_init(MEMORY[0x277D02840]);
  bonjourAdvertiser = self->_bonjourAdvertiser;
  self->_bonjourAdvertiser = v11;

  [(CUBonjourAdvertiser *)v11 setDispatchQueue:self->_dispatchQueue];
  [(CUBonjourAdvertiser *)v11 setDomain:@"local."];
  [(CUBonjourAdvertiser *)v11 setLabel:@"WiFiSetup"];
  [(CUBonjourAdvertiser *)v11 setName:v10];
  [(CUBonjourAdvertiser *)v11 setPort:9];
  [(CUBonjourAdvertiser *)v11 setServiceType:@"_bonjourtest._tcp"];
  v28 = @"bjID";
  v29[0] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [(CUBonjourAdvertiser *)v11 setTxtDictionary:v13];

  [(CUBonjourAdvertiser *)v11 activate];
  bonjourTimeoutTimer = self->_bonjourTimeoutTimer;
  if (bonjourTimeoutTimer)
  {
    v15 = bonjourTimeoutTimer;
    dispatch_source_cancel(v15);
    v16 = self->_bonjourTimeoutTimer;
    self->_bonjourTimeoutTimer = 0;
  }

  v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v18 = self->_bonjourTimeoutTimer;
  self->_bonjourTimeoutTimer = v17;
  v19 = v17;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __78__SKStepWiFiSetupServerLegacy__handleRequestBonjourTestStart_responseHandler___block_invoke_2;
  handler[3] = &unk_279BB8648;
  handler[4] = v19;
  handler[5] = self;
  dispatch_source_set_event_handler(v19, handler);
  CUDispatchTimerSet();
  dispatch_activate(v19);
  (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEC10], 0, 0, &__block_literal_global_47_1838);

LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
}

void __78__SKStepWiFiSetupServerLegacy__handleRequestBonjourTestStart_responseHandler___block_invoke_2(uint64_t a1)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v5 + 24);
  if (v6 != v7)
  {
    return;
  }

  v17 = v2;
  v18 = v1;
  if (v6)
  {
    v9 = v7;
    dispatch_source_cancel(v9);
    v10 = *(a1 + 40);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;

    v5 = *(a1 + 40);
  }

  v12 = **(v5 + 112);
  if (v12 <= 90)
  {
    if (v12 == -1)
    {
      v13 = _LogCategory_Initialize();
      v5 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_8;
      }

      v16 = *(v5 + 112);
    }

    LogPrintF();
    v5 = *(a1 + 40);
  }

LABEL_8:
  [*(v5 + 16) invalidate];
  v14 = *(a1 + 40);
  v15 = *(v14 + 16);
  *(v14 + 16) = 0;
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  self->_runState = 0;
  mach_absolute_time();
  startTicks = self->_startTicks;
  UpTicksToSecondsF();
  self->_metricTotalSeconds = v6;
  var0 = self->_ucat->var0;
  if (!errorCopy)
  {
    if (var0 > 30)
    {
      goto LABEL_11;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v15 = self->_ucat;
      metricTotalSeconds = self->_metricTotalSeconds;
    }

    LogPrintF();
    goto LABEL_11;
  }

  if (var0 > 90)
  {
    goto LABEL_11;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  v8 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v9 = self->_ucat;
    v10 = self->_metricTotalSeconds;
LABEL_4:
    v17 = CUPrintNSError();
    LogPrintF();
  }

LABEL_11:
  v12 = MEMORY[0x26676A4C0](self->_responseHandler);
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;

  if (v12)
  {
    if (errorCopy)
    {
      v14 = 0;
    }

    else
    {
      v14 = MEMORY[0x277CBEC10];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__SKStepWiFiSetupServerLegacy__completeWithError___block_invoke;
    v18[3] = &unk_279BB8838;
    v18[4] = self;
    v19 = errorCopy;
    (v12)[2](v12, v14, 0, v19, v18);
  }
}

void __50__SKStepWiFiSetupServerLegacy__completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 192));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = v5;
    }

    (v3)[2](v3, v4);
  }
}

- (void)_invalidated
{
  if (!self->_invalidateCalled || self->_invalidateDone)
  {
    return;
  }

  v8 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v8)
  {
    v4 = *MEMORY[0x277CCA590];
    v5 = NSErrorF_safe();
    v8[2](v8, v5);
  }

  self->_invalidateDone = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_10:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SKStepWiFiSetupServerLegacy_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __41__SKStepWiFiSetupServerLegacy_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    return;
  }

  *(v2 + 48) = 1;
  v4 = *(a1 + 32);
  v5 = **(v4 + 112);
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v20 = *(v4 + 112);
    }

    LogPrintF();
    v4 = *(a1 + 32);
  }

LABEL_6:
  v21 = MEMORY[0x26676A4C0](*(v4 + 64));
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  if (v21)
  {
    v9 = *MEMORY[0x277CCA590];
    v10 = NSErrorF_safe();
    (*(v21 + 2))(v21, 0, 0, v10, &__block_literal_global_1855);
  }

  [*(*(a1 + 32) + 16) invalidate];
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  *(v11 + 16) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  if (v14)
  {
    v15 = v14;
    dispatch_source_cancel(v15);
    v16 = *(a1 + 32);
    v17 = *(v16 + 24);
    *(v16 + 24) = 0;

    v13 = *(a1 + 32);
  }

  [*(v13 + 40) invalidate];
  v18 = *(a1 + 32);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;

  [*(*(a1 + 32) + 200) deregisterRequestID:@"_bjTS" completionHandler:&__block_literal_global_19_1857];
  [*(*(a1 + 32) + 200) deregisterRequestID:@"_bjTD" completionHandler:&__block_literal_global_21_1859];
  [*(*(a1 + 32) + 200) deregisterRequestID:@"_wiSU" completionHandler:&__block_literal_global_23_1861];
  [*(a1 + 32) _invalidated];
}

- (void)_activate
{
  self->_startTicks = mach_absolute_time();
  skMessaging = self->_skMessaging;
  if (skMessaging)
  {
    self->_internetReachabilityEnabled = 1;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke;
    v12[3] = &unk_279BB8810;
    v12[4] = skMessaging;
    v12[5] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke_2;
    v11[3] = &unk_279BB8838;
    v11[4] = skMessaging;
    v11[5] = self;
    v4 = skMessaging;
    [(CUMessaging *)v4 registerRequestID:@"_bjTS" options:0 requestHandler:v12 completionHandler:v11];
    v9[5] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke_3;
    v10[3] = &unk_279BB8810;
    v10[4] = v4;
    v10[5] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke_4;
    v9[3] = &unk_279BB8838;
    v9[4] = v4;
    [(CUMessaging *)v4 registerRequestID:@"_bjTD" options:0 requestHandler:v10 completionHandler:v9];
    v7[5] = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke_5;
    v8[3] = &unk_279BB8810;
    v8[4] = v4;
    v8[5] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SKStepWiFiSetupServerLegacy__activate__block_invoke_6;
    v7[3] = &unk_279BB8838;
    v7[4] = v4;
    [(CUMessaging *)v4 registerRequestID:@"_wiSU" options:0 requestHandler:v8 completionHandler:v7];
  }

  else
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    [(SKStepWiFiSetupServerLegacy *)self _completeWithError:v6];
  }
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[25])
  {
    return [result _handleRequestBonjourTestStart:a3 responseHandler:a5];
  }

  return result;
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke_2(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[25])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[25])
  {
    return [result _handleRequestBonjourTestDone:a3 responseHandler:a5];
  }

  return result;
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke_4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[25])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[25])
  {
    return [result _handleRequestWiFiSetup:a3 responseHandler:a5];
  }

  return result;
}

void *__40__SKStepWiFiSetupServerLegacy__activate__block_invoke_6(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[25])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKStepWiFiSetupServerLegacy_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SKStepWiFiSetupServerLegacy_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[14];
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v6 = v2[14];
      goto LABEL_3;
    }
  }

LABEL_5:

  return [v2 _activate];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (NSString)description
{
  v4 = [objc_opt_class() description];
  v2 = NSPrintF();

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SKStepWiFiSetupServerLegacy;
  [(SKStepWiFiSetupServerLegacy *)&v4 dealloc];
}

- (SKStepWiFiSetupServerLegacy)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiSetupServerLegacy;
  v2 = [(SKStepWiFiSetupServerLegacy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_SKStepWiFiSetupServerLegacy;
    v4 = v3;
  }

  return v3;
}

@end