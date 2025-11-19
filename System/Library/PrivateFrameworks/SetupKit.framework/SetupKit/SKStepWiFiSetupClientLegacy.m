@interface SKStepWiFiSetupClientLegacy
- (BOOL)_runInit;
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepWiFiSetupClientLegacy)init;
- (void)_completeWithError:(id)a3;
- (void)_invalidateCore;
- (void)_invalidated;
- (void)_run;
- (void)_runInternetReachabilityStart;
- (void)_runWiFiSetupStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)a3;
@end

@implementation SKStepWiFiSetupClientLegacy

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_runWiFiSetupStart
{
  v45[1] = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2171;
  v42 = __Block_byref_object_dispose__2172;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke;
  v37[3] = &unk_279BB8670;
  v37[4] = self;
  v37[5] = &v38;
  v33 = MEMORY[0x26676A4C0](v37, a2);
  self->_stepDone = 0;
  stepError = self->_stepError;
  self->_stepError = 0;

  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = self->_wifiInterface;
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277D02B18]);
    objc_storeStrong(&self->_wifiInterface, v4);
    [(CWFInterface *)v4 activate];
  }

  v5 = [(CWFInterface *)v4 currentKnownNetworkProfile];
  if (!v5)
  {
    v21 = *MEMORY[0x277CCA590];
    v22 = NSErrorF_safe();
    v10 = v39[5];
    v39[5] = v22;
    goto LABEL_21;
  }

  v6 = [(CWFInterface *)v4 channel];
  v7 = [v6 channel];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    [v34 setObject:v8 forKeyedSubscript:@"_wiCh"];
  }

  v9 = [v5 SSID];
  v10 = v9;
  if (!v9)
  {
    v23 = *MEMORY[0x277CCA590];
    v24 = NSErrorF_safe();
    v11 = v39[5];
    v39[5] = v24;
    goto LABEL_20;
  }

  v36 = 0;
  MEMORY[0x266769F90](v9, &v36);
  v11 = v36;
  if (v11)
  {
    [v34 setObject:v11 forKeyedSubscript:@"_wiPW"];
  }

  v12 = [v5 networkName];
  if (!v12)
  {
    v25 = *MEMORY[0x277CCA590];
    v26 = NSErrorF_safe();
    v13 = v39[5];
    v39[5] = v26;
    goto LABEL_19;
  }

  [v34 setObject:v12 forKeyedSubscript:@"_wiSS"];
  v13 = self->_skMessaging;
  if (!v13)
  {
    v27 = *MEMORY[0x277CCA590];
    v28 = NSErrorF_safe();
    v19 = v39[5];
    v39[5] = v28;
    goto LABEL_18;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_13:
      v15 = CUPrintNSObject();
      v16 = v15;
      v17 = "yes";
      if (!v11)
      {
        v17 = "no";
      }

      v31 = v7;
      v32 = v17;
      v30 = v15;
      LogPrintF();

      goto LABEL_17;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v29 = self->_ucat;
      goto LABEL_13;
    }
  }

LABEL_17:
  v44 = @"timeoutSeconds";
  v45[0] = &unk_28776E240;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:{1, v30, v31, v32}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke_43;
  v35[3] = &unk_279BB86A0;
  v35[4] = self;
  [(CUMessaging *)v13 sendRequestID:@"_wiSU" requestMessage:v34 options:v19 responseHandler:v35];
LABEL_18:

LABEL_19:
LABEL_20:

LABEL_21:
  v33[2](v33);

  _Block_object_dispose(&v38, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(*(v2 + 8) + 40))
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = **(v3 + 96);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(v3 + 96);
      v6 = _LogCategory_Initialize();
      v3 = *(a1 + 32);
      v2 = *(a1 + 40);
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = *(v3 + 96);
      v9 = *(*(v2 + 8) + 40);
    }

    v10 = CUPrintNSError();
    LogPrintF();

    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);

  objc_storeStrong((v3 + 80), v7);
}

void __49__SKStepWiFiSetupClientLegacy__runWiFiSetupStart__block_invoke_43(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v6 = a4;
  if ((*(*(a1 + 32) + 48) & 1) == 0)
  {
    mach_absolute_time();
    v7 = *(*(a1 + 32) + 64);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 160) = v8;
    v9 = v20;
    v10 = *(a1 + 32);
    v11 = **(v10 + 96);
    if (v9 && !v6)
    {
      if (v11 <= 30)
      {
        if (v11 == -1)
        {
          v15 = *(v10 + 96);
          v16 = _LogCategory_Initialize();
          v10 = *(a1 + 32);
          if (!v16)
          {
            goto LABEL_16;
          }

          v18 = *(v10 + 96);
        }

        v19 = *(v10 + 160);
        LogPrintF();
        v10 = *(a1 + 32);
      }

LABEL_16:
      *(v10 + 72) = 1;
LABEL_17:
      [*(a1 + 32) _run];

      goto LABEL_18;
    }

    if (v11 <= 90)
    {
      if (v11 == -1)
      {
        v12 = *(v10 + 96);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v17 = *(*(a1 + 32) + 96);
      }

      v19 = CUPrintNSError();
      LogPrintF();
    }

LABEL_11:
    v13 = v6;
    if (!v6)
    {
      v14 = *MEMORY[0x277CCA590];
      v13 = NSErrorF_safe();
    }

    objc_storeStrong((*(a1 + 32) + 80), v13);
    if (!v6)
    {
    }

    goto LABEL_17;
  }

LABEL_18:
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
    v11[2] = __60__SKStepWiFiSetupClientLegacy__runInternetReachabilityStart__block_invoke;
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

void __60__SKStepWiFiSetupClientLegacy__runInternetReachabilityStart__block_invoke(uint64_t a1, void *a2)
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
      v9 = *(v8 + 80);
      *(v8 + 80) = v7;

      v10 = **(*(a1 + 40) + 96);
      if (v10 <= 90)
      {
        if (v10 == -1)
        {
          v12 = *(*(a1 + 40) + 96);
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v13 = *(*(a1 + 40) + 96);
        }

        v15 = CUPrintNSError();
        LogPrintF();
      }
    }

    else
    {
      v11 = **(*(a1 + 40) + 96);
      if (v11 <= 30)
      {
        if (v11 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          v14 = *(*(a1 + 40) + 96);
        }

        LogPrintF();
      }
    }

LABEL_12:
    *(*(a1 + 40) + 72) = 1;
    [*(a1 + 40) _run];
    v3 = v16;
  }
}

- (BOOL)_runInit
{
  self->_startTicks = mach_absolute_time();
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v3;
  v5 = v3;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SKStepWiFiSetupClientLegacy__runInit__block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = v5;
  v7[5] = self;
  dispatch_source_set_event_handler(v5, v7);
  CUDispatchTimerSet();
  dispatch_activate(self->_timeoutTimer);

  return 1;
}

uint64_t __39__SKStepWiFiSetupClientLegacy__runInit__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 != *(result + 88))
  {
    return result;
  }

  v4 = **(result + 96);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(result + 96);
      v6 = _LogCategory_Initialize();
      result = *(a1 + 40);
      if (!v6)
      {
        goto LABEL_6;
      }

      v11 = *(result + 96);
    }

    LogPrintF();
    result = *(a1 + 40);
  }

LABEL_6:
  if (!*(result + 80))
  {
    v7 = *MEMORY[0x277CCA590];
    v8 = NSErrorF_safe();
    v9 = *(a1 + 40);
    v10 = *(v9 + 80);
    *(v9 + 80) = v8;

    result = *(a1 + 40);
  }

  return [result _run];
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    v3 = *MEMORY[0x277CCA590];
    while (1)
    {
      runState = self->_runState;
      if (runState <= 12)
      {
        if (runState)
        {
          if (runState == 11)
          {
            self->_runState = 12;
            [(SKStepWiFiSetupClientLegacy *)self _runInternetReachabilityStart];
            goto LABEL_28;
          }

          if (runState == 12)
          {
            if (self->_stepError)
            {
              goto LABEL_13;
            }

            if (self->_stepDone)
            {
              v5 = 13;
              goto LABEL_27;
            }
          }
        }

        else
        {
          self->_runState = 10;
          if ([(SKStepWiFiSetupClientLegacy *)self _runInit])
          {
            v5 = self->_runState + 1;
            goto LABEL_27;
          }
        }
      }

      else if (runState > 14)
      {
        if (runState == 15)
        {
          v9 = self;
          stepError = 0;
LABEL_23:
          [(SKStepWiFiSetupClientLegacy *)v9 _completeWithError:stepError, v15, v16];
          goto LABEL_28;
        }

        if (runState == 16)
        {
          stepError = self->_stepError;
          if (!stepError)
          {
            v7 = NSErrorF_safe();
            v8 = self->_stepError;
            self->_stepError = v7;

            stepError = self->_stepError;
          }

          v9 = self;
          goto LABEL_23;
        }
      }

      else
      {
        if (runState == 13)
        {
          self->_runState = 14;
          [(SKStepWiFiSetupClientLegacy *)self _runWiFiSetupStart];
          goto LABEL_28;
        }

        if (self->_stepError)
        {
LABEL_13:
          self->_runState = 16;
          goto LABEL_28;
        }

        if (self->_stepDone)
        {
          v5 = 15;
LABEL_27:
          self->_runState = v5;
        }
      }

LABEL_28:
      v10 = self->_runState;
      if (v10 == runState)
      {
        return;
      }

      var0 = self->_ucat->var0;
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (_LogCategory_Initialize())
          {
            ucat = self->_ucat;
            v10 = self->_runState;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          if (runState < 0x11 && ((0x1F8FFu >> runState) & 1) != 0)
          {
            v12 = off_279BB86C0[runState];
          }

          else if (runState <= 9)
          {
            v12 = "?";
          }

          else
          {
            v12 = "User";
          }

          if (v10 < 0x11 && ((0x1F8FFu >> v10) & 1) != 0)
          {
            v13 = off_279BB86C0[v10];
          }

          else if (v10 <= 9)
          {
            v13 = "?";
          }

          else
          {
            v13 = "User";
          }

          v15 = v12;
          v16 = v13;
          LogPrintF();
        }
      }
    }
  }
}

- (void)_completeWithError:(id)a3
{
  v17 = a3;
  if (v17)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  self->_runState = v4;
  mach_absolute_time();
  startTicks = self->_startTicks;
  UpTicksToSecondsF();
  v7 = v6;
  self->_metricTotalSeconds = v6;
  var0 = self->_ucat->var0;
  if (!v17)
  {
    if (var0 > 30)
    {
      goto LABEL_14;
    }

    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v14 = self->_ucat;
    }

    v15 = v7;
    LogPrintF();
    goto LABEL_14;
  }

  if (var0 > 60)
  {
    goto LABEL_14;
  }

  if (var0 != -1)
  {
    goto LABEL_7;
  }

  v9 = self->_ucat;
  if (_LogCategory_Initialize())
  {
    v10 = self->_ucat;
LABEL_7:
    v16 = CUPrintNSError();
    v15 = v7;
    LogPrintF();
  }

LABEL_14:
  [(SKStepWiFiSetupClientLegacy *)self _invalidateCore:*&v15];
  v12 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v12)
  {
    (v12)[2](v12, v17);
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

- (void)_invalidateCore
{
  [(CUBonjourBrowser *)self->_bonjourBrowser invalidate];
  bonjourBrowser = self->_bonjourBrowser;
  self->_bonjourBrowser = 0;

  bonjourTimer = self->_bonjourTimer;
  if (bonjourTimer)
  {
    v5 = bonjourTimer;
    dispatch_source_cancel(v5);
    v6 = self->_bonjourTimer;
    self->_bonjourTimer = 0;
  }

  [(CUReachabilityMonitor *)self->_internetReachabilityMonitor invalidate];
  internetReachabilityMonitor = self->_internetReachabilityMonitor;
  self->_internetReachabilityMonitor = 0;

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v9 = timeoutTimer;
    dispatch_source_cancel(v9);
    v10 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(CWFInterface *)self->_wifiInterface invalidate];
  wifiInterface = self->_wifiInterface;
  self->_wifiInterface = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SKStepWiFiSetupClientLegacy_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SKStepWiFiSetupClientLegacy_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if (*(v5 + 48))
  {
    return result;
  }

  v12 = v1;
  v6 = result;
  *(v5 + 48) = 1;
  v7 = *(result + 32);
  v8 = *v7[12];
  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = *(v6 + 32);
      if (!v9)
      {
        goto LABEL_6;
      }

      v11 = v7[12];
    }

    LogPrintF();
    v7 = *(v6 + 32);
  }

LABEL_6:
  [v7 _invalidateCore];
  v10 = *(v6 + 32);

  return [v10 _invalidated];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKStepWiFiSetupClientLegacy_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SKStepWiFiSetupClientLegacy_activate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 96);
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
      v7 = *(v2 + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v2 + 32) = 1;
  v5 = *(a1 + 32);

  return [v5 _run];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
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
  v4.super_class = SKStepWiFiSetupClientLegacy;
  [(SKStepWiFiSetupClientLegacy *)&v4 dealloc];
}

- (SKStepWiFiSetupClientLegacy)init
{
  v6.receiver = self;
  v6.super_class = SKStepWiFiSetupClientLegacy;
  v2 = [(SKStepWiFiSetupClientLegacy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v3->_ucat = &gLogCategory_SKStepWiFiSetupClientLegacy;
    v4 = v3;
  }

  return v3;
}

@end