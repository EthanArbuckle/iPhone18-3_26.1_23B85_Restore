@interface SFDeviceSetupTVColorCalibratorSession
- (SFDeviceSetupTVColorCalibratorSession)init;
- (int)_runFinish;
- (int)_runPairSetup;
- (int)_runPairVerify:(BOOL)verify;
- (int)_runSFSessionStart;
- (int)_runTVLatencySetup;
- (void)_cleanup;
- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler;
- (void)_reportError:(id)error;
- (void)_run;
- (void)_runSFSessionActivated;
- (void)_runTVColorCalibratorProgressEvent:(unint64_t)event info:(id)info;
- (void)_runTVColorCalibratorSetup;
- (void)_runTVLatencySetupRequest;
- (void)activate;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)tryAgain;
@end

@implementation SFDeviceSetupTVColorCalibratorSession

- (SFDeviceSetupTVColorCalibratorSession)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupTVColorCalibratorSession;
  v2 = [(SFDeviceSetupTVColorCalibratorSession *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_cleanup
{
  v8 = self->_tvColorCalibrator;
  tvColorCalibrator = self->_tvColorCalibrator;
  self->_tvColorCalibrator = 0;

  [(TVLDisplayColorCalibrator *)v8 invalidate];
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v6 = self->_progressHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_progressHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFDeviceSetupTVColorCalibratorSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __49__SFDeviceSetupTVColorCalibratorSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    __49__SFDeviceSetupTVColorCalibratorSession_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 32) = mach_absolute_time();
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (v3)
  {
    (*(v3 + 16))(v2[10], 10, 0);
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFDeviceSetupTVColorCalibratorSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __51__SFDeviceSetupTVColorCalibratorSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    __51__SFDeviceSetupTVColorCalibratorSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)_reportError:(id)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 60 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _reportError:];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v28 = @"eo";
    v8 = errorCopy;
    if (!errorCopy)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A768];
      v26 = *MEMORY[0x1E696A578];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v3 = v11;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = @"?";
      }

      v27 = v12;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v8 = [v9 errorWithDomain:v10 code:-6700 userInfo:v4];
    }

    v29[0] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    progressHandler[2](progressHandler, 30, v13);

    if (!errorCopy)
    {
    }
  }

  v24[0] = @"errCode";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v25[0] = v14;
  v24[1] = @"errDomain";
  domain = [errorCopy domain];
  v16 = domain;
  if (domain)
  {
    v17 = domain;
  }

  else
  {
    v17 = @"?";
  }

  v25[1] = v17;
  v25[2] = MEMORY[0x1E695E110];
  v24[2] = @"success";
  v24[3] = @"totalMs";
  v18 = MEMORY[0x1E696AD98];
  mach_absolute_time();
  startTicks = self->_startTicks;
  v20 = [v18 numberWithUnsignedLongLong:UpTicksToMilliseconds()];
  v25[3] = v20;
  v24[4] = @"triggerMs";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_triggerMs];
  v25[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:5];
  SFMetricsLog(@"com.apple.sharing.TVLatencyResult", v22);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SFDeviceSetupTVColorCalibratorSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)tryAgain
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFDeviceSetupTVColorCalibratorSession_tryAgain__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __49__SFDeviceSetupTVColorCalibratorSession_tryAgain__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    __49__SFDeviceSetupTVColorCalibratorSession_tryAgain__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 56);

  return [v2 calibrate];
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVColorCalibratorSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_sfSessionState;
          }

          v10 = self->_sfSessionState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVColorCalibratorSession _runSFSessionStart];
      }

      self->_sfSessionState = 1;
      [(SFSession *)self->_sfSession invalidate];
      v5 = objc_alloc_init(SFSession);
      sfSession = self->_sfSession;
      self->_sfSession = v5;

      [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)self->_sfSession setLabel:@"TVLatency"];
      [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.AppleTVSetup"];
      [(SFSession *)self->_sfSession setSessionFlags:33];
      objc_initWeak(&location, self);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke;
      v19[3] = &unk_1E788B4A8;
      objc_copyWeak(&v20, &location);
      [(SFSession *)self->_sfSession setErrorHandler:v19];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_2;
      v17[3] = &unk_1E788B4D0;
      objc_copyWeak(&v18, &location);
      [(SFSession *)self->_sfSession setInterruptionHandler:v17];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_3;
      v15[3] = &unk_1E788B4D0;
      objc_copyWeak(&v16, &location);
      [(SFSession *)self->_sfSession setInvalidationHandler:v15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_4;
      v13[3] = &unk_1E788B4D0;
      objc_copyWeak(&v14, &location);
      [(SFSession *)self->_sfSession setSessionStartedHandler:v13];
      v7 = _Block_copy(self->_promptForPINHandler);
      if (v7)
      {
        [(SFSession *)self->_sfSession setPromptForPINHandler:v7];
      }

      v8 = self->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_5;
      v11[3] = &unk_1E788B4A8;
      objc_copyWeak(&v12, &location);
      [(SFSession *)v8 activateWithCompletion:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  return self->_sfSessionState;
}

void __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    [WeakRetained _reportError:v5];
  }
}

void __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    v3 = WeakRetained;
    v2 = NSErrorWithOSStatusF();
    [v3 _reportError:v2];

    WeakRetained = v3;
  }
}

void __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[16] & 1) == 0)
  {
    v3 = WeakRetained;
    v2 = NSErrorWithOSStatusF();
    [v3 _reportError:v2];

    WeakRetained = v3;
  }
}

void __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[4] & 1) == 0 && WeakRetained[12] == 1)
  {
    WeakRetained[12] = 4;
    v2 = WeakRetained;
    [WeakRetained _run];
    WeakRetained = v2;
  }
}

void __59__SFDeviceSetupTVColorCalibratorSession__runSFSessionStart__block_invoke_5(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 16) & 1) == 0)
  {
    if (v5)
    {
      *(WeakRetained + 12) = 3;
      [WeakRetained _reportError:?];
    }

    else
    {
      [WeakRetained _runSFSessionActivated];
    }
  }
}

- (void)_runSFSessionActivated
{
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _runSFSessionActivated];
  }

  sfSession = self->_sfSession;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SFDeviceSetupTVColorCalibratorSession__runSFSessionActivated__block_invoke;
  v4[3] = &unk_1E788B4F8;
  v4[4] = self;
  [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D240 handler:v4];
  [(SFDeviceSetupTVColorCalibratorSession *)self _run];
}

- (int)_runPairVerify:(BOOL)verify
{
  if (verify && ([(SFSession *)self->_sfSession sessionFlags]& 0x400) == 0)
  {
    [(SFSession *)self->_sfSession setSessionFlags:[(SFSession *)self->_sfSession sessionFlags]| 0x400];
    self->_pairVerifyState = 0;
  }

  pairVerifyState = self->_pairVerifyState;
  if (pairVerifyState != 4 && pairVerifyState != 2)
  {
    if (pairVerifyState)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVColorCalibratorSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairVerifyState;
          }

          v12 = self->_pairVerifyState;
        }

        LogPrintF();
      }
    }

    else
    {
      sessionFlags = [(SFSession *)self->_sfSession sessionFlags];
      v7 = @"CUPairing";
      if ((sessionFlags & 0x400) == 0)
      {
        v7 = @"HomeKit";
      }

      v8 = v7;
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVColorCalibratorSession _runPairVerify:];
      }

      self->_pairVerifyState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __56__SFDeviceSetupTVColorCalibratorSession__runPairVerify___block_invoke;
      v13[3] = &unk_1E788B520;
      v13[4] = self;
      v13[5] = v8;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v13];
    }
  }

  return self->_pairVerifyState;
}

void __56__SFDeviceSetupTVColorCalibratorSession__runPairVerify___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v6 = v3;
    if (v3)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
      {
        __56__SFDeviceSetupTVColorCalibratorSession__runPairVerify___block_invoke_cold_1(a1);
      }

      *(*(a1 + 32) + 24) = 2;
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
      {
        __56__SFDeviceSetupTVColorCalibratorSession__runPairVerify___block_invoke_cold_2(a1);
      }

      *(*(a1 + 32) + 24) = 4;
      *(*(a1 + 32) + 28) = 1;
      v4 = *(a1 + 32);
      v5 = v4[10];
      if (!v5)
      {
        goto LABEL_13;
      }

      (*(v5 + 16))(v4[10], 70, 0);
    }

    v4 = *(a1 + 32);
LABEL_13:
    [v4 _run];
    v3 = v6;
  }
}

- (int)_runPairSetup
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVColorCalibratorSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          v7 = self->_pairSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      self->_pairSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __54__SFDeviceSetupTVColorCalibratorSession__runPairSetup__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v8];
    }
  }

  return self->_pairSetupState;
}

void __54__SFDeviceSetupTVColorCalibratorSession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    *(*(a1 + 32) + 20) = 3;
    [*(a1 + 32) _reportError:v3];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
    {
      __54__SFDeviceSetupTVColorCalibratorSession__runPairSetup__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 28) = 1;
    *(*(a1 + 32) + 20) = 4;
    v4 = *(a1 + 32);
    v5 = v4[10];
    if (v5)
    {
      (*(v5 + 16))(v4[10], 70, 0);
      v4 = *(a1 + 32);
    }

    [v4 _run];
  }
}

- (int)_runTVLatencySetup
{
  tvLatencySetupState = self->_tvLatencySetupState;
  if (tvLatencySetupState > 3)
  {
    if (tvLatencySetupState == 4)
    {
      return self->_tvLatencySetupState;
    }

    if (tvLatencySetupState == 11)
    {
      [(SFDeviceSetupTVColorCalibratorSession *)self _runTVColorCalibratorSetup];
      return self->_tvLatencySetupState;
    }

    goto LABEL_8;
  }

  if (!tvLatencySetupState)
  {
    [(SFDeviceSetupTVColorCalibratorSession *)self _runTVLatencySetupRequest];
    return self->_tvLatencySetupState;
  }

  if (tvLatencySetupState != 2)
  {
LABEL_8:
    if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_tvLatencySetupState;
        }

        v5 = self->_tvLatencySetupState;
      }

      LogPrintF();
    }
  }

  return self->_tvLatencySetupState;
}

- (void)_runTVLatencySetupRequest
{
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _runTVLatencySetupRequest];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 278, 0);
  }

  self->_tvLatencySetupState = 10;
  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__SFDeviceSetupTVColorCalibratorSession__runTVLatencySetupRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_tvlS" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v5];
}

void __66__SFDeviceSetupTVColorCalibratorSession__runTVLatencySetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v14)
  {
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v11 = *MEMORY[0x1E696A768];
    v12 = NSErrorNestedF();
    [v10 _reportError:v12];

    v13 = 3;
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
    {
      __66__SFDeviceSetupTVColorCalibratorSession__runTVLatencySetupRequest__block_invoke_cold_1();
    }

    v9 = (a1 + 32);
    v13 = 11;
  }

  *(*v9 + 13) = v13;
  [*v9 _run];
}

- (void)_runTVColorCalibratorSetup
{
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _runTVColorCalibratorSetup];
  }

  self->_tvLatencySetupState = 12;
  messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v4 = [objc_alloc(getTVLDisplayColorCalibratorClass()) initWithMessageSession:messageSessionTemplate];
    objc_storeStrong(&self->_tvColorCalibrator, v4);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __67__SFDeviceSetupTVColorCalibratorSession__runTVColorCalibratorSetup__block_invoke;
    v10 = &unk_1E788B598;
    selfCopy = self;
    v12 = v4;
    v5 = v4;
    [v5 setProgressEventHandler:&v7];
    [v5 activate];
    [v5 calibrate];
  }

  else
  {
    v6 = NSErrorWithOSStatusF();
    [(SFDeviceSetupTVColorCalibratorSession *)self _reportError:v6];

    self->_tvLatencySetupState = 3;
  }
}

void __67__SFDeviceSetupTVColorCalibratorSession__runTVColorCalibratorSetup__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__SFDeviceSetupTVColorCalibratorSession__runTVColorCalibratorSetup__block_invoke_2;
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

uint64_t __67__SFDeviceSetupTVColorCalibratorSession__runTVColorCalibratorSetup__block_invoke_2(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 56))
  {
    return [*(result + 40) _runTVColorCalibratorProgressEvent:*(result + 56) info:*(result + 48)];
  }

  return result;
}

- (void)_runTVColorCalibratorProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (event <= 1)
  {
    if (event)
    {
      if (event != 1)
      {
        goto LABEL_25;
      }

      v6 = _Block_copy(self->_progressHandler);
      v7 = v6;
      if (!v6)
      {
        goto LABEL_24;
      }

      v8 = v6[2];
      v9 = 279;
      goto LABEL_23;
    }

    v6 = _Block_copy(self->_progressHandler);
    v7 = v6;
    if (v6)
    {
      v8 = v6[2];
      v9 = 278;
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (event == 2)
  {
    v6 = _Block_copy(self->_progressHandler);
    v7 = v6;
    if (v6)
    {
      v8 = v6[2];
      v9 = 280;
LABEL_23:
      v8(v6, v9);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (event != 3)
  {
    if (event != 4)
    {
      goto LABEL_25;
    }

    v6 = _Block_copy(self->_progressHandler);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_24;
    }

    v8 = v6[2];
    v9 = 281;
    goto LABEL_23;
  }

  v10 = _Block_copy(self->_progressHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 282, infoCopy);
  }

  tvColorCalibrator = self->_tvColorCalibrator;
  self->_tvColorCalibrator = 0;
  v13 = tvColorCalibrator;

  [(TVLDisplayColorCalibrator *)v13 invalidate];
  if (self->_tvLatencySetupState == 12)
  {
    self->_tvLatencySetupState = 4;
    [(SFDeviceSetupTVColorCalibratorSession *)self _run];
  }

LABEL_25:
}

- (int)_runFinish
{
  finishState = self->_finishState;
  if (finishState != 4 && finishState != 2)
  {
    if (finishState)
    {
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVColorCalibratorSession == -1)
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
      if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVColorCalibratorSession _runFinish];
      }

      self->_finishState = 1;
      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __51__SFDeviceSetupTVColorCalibratorSession__runFinish__block_invoke;
      v8[3] = &unk_1E788B548;
      v8[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_finish" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v8];
    }
  }

  return self->_finishState;
}

void __51__SFDeviceSetupTVColorCalibratorSession__runFinish__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    v9 = v8;
    v10 = v11;
    LogPrintF();
  }

  *(*(a1 + 32) + 12) = 4;
  [*(a1 + 32) _run];
}

- (void)_handleSetupActionRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 30 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  if (Int64Ranged == 7)
  {
    progressHandler = self->_progressHandler;
    if (!progressHandler)
    {
      goto LABEL_15;
    }

    v10 = *(progressHandler + 2);
    goto LABEL_10;
  }

  if (Int64Ranged == 1)
  {
    v9 = self->_progressHandler;
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = *(v9 + 2);
LABEL_10:
    v10();
    goto LABEL_15;
  }

  if (gLogCategory_SFDeviceSetupTVColorCalibratorSession <= 60 && (gLogCategory_SFDeviceSetupTVColorCalibratorSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVColorCalibratorSession _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  [v7 setObject:&unk_1F1D7CC10 forKeyedSubscript:@"er"];
LABEL_15:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(SFDeviceSetupTVColorCalibratorSession *)self _runSFSessionStart];
    if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
    {
      v5 = [(SFDeviceSetupTVColorCalibratorSession *)self _runPairVerify:0];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceSetupTVColorCalibratorSession *)self _runPairVerify:1], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          if (self->_sessionSecured || ((v9 = [(SFDeviceSetupTVColorCalibratorSession *)self _runPairSetup], v9 != 4) ? (v10 = v9 == 2) : (v10 = 1), v10))
          {
            _runTVLatencySetup = [(SFDeviceSetupTVColorCalibratorSession *)self _runTVLatencySetup];
            if (_runTVLatencySetup == 4 || _runTVLatencySetup == 2)
            {
              _runFinish = [(SFDeviceSetupTVColorCalibratorSession *)self _runFinish];
              if (_runFinish == 4 || _runFinish == 2)
              {
                v15 = _Block_copy(self->_progressHandler);
                if (v15)
                {
                  v16 = v15;
                  (*(v15 + 2))(v15, 96, 0);
                  v15 = v16;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.1(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788B5D8[a2 & 0xF];
  }

  return LogPrintF();
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788B630[a2 & 0xF];
  }

  return LogPrintF();
}

@end