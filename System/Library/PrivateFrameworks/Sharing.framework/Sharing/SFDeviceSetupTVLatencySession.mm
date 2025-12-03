@interface SFDeviceSetupTVLatencySession
- (SFDeviceSetupTVLatencySession)init;
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
- (void)_runTVLatencySetupEstimate;
- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info;
- (void)_runTVLatencySetupRequest;
- (void)activate;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)tryAgain;
@end

@implementation SFDeviceSetupTVLatencySession

- (SFDeviceSetupTVLatencySession)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceSetupTVLatencySession;
  v2 = [(SFDeviceSetupTVLatencySession *)&v8 init];
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

- (void)_cleanup
{
  v8 = self->_tvLatencyEstimator;
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  [(TVLAudioLatencyEstimator *)v8 invalidate];
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
  block[2] = __41__SFDeviceSetupTVLatencySession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencySession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceSetupTVLatencySession_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 32) = mach_absolute_time();
  v2 = *(a1 + 32);
  v3 = v2[11];
  if (v3)
  {
    (*(v3 + 16))(v2[11], 10, 0);
    v2 = *(a1 + 32);
  }

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    __43__SFDeviceSetupTVLatencySession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)_reportError:(id)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 60 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _reportError:];
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
  v7[2] = __49__SFDeviceSetupTVLatencySession_pairSetupTryPIN___block_invoke;
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
  block[2] = __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceSetupTVLatencySession_tryAgain__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 56);

  return [v2 estimate];
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVLatencySession _runSFSessionStart];
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
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke;
      v15[3] = &unk_1E788B238;
      v15[4] = self;
      [(SFSession *)self->_sfSession setErrorHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_2;
      v14[3] = &unk_1E788B198;
      v14[4] = self;
      [(SFSession *)self->_sfSession setInterruptionHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_3;
      v13[3] = &unk_1E788B198;
      v13[4] = self;
      [(SFSession *)self->_sfSession setInvalidationHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_4;
      v12[3] = &unk_1E788B198;
      v12[4] = self;
      [(SFSession *)self->_sfSession setSessionStartedHandler:v12];
      v7 = _Block_copy(self->_promptForPINHandler);
      if (v7)
      {
        [(SFSession *)self->_sfSession setPromptForPINHandler:v7];
      }

      v8 = self->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_5;
      v11[3] = &unk_1E788B238;
      v11[4] = self;
      [(SFSession *)v8 activateWithCompletion:v11];
    }
  }

  return self->_sfSessionState;
}

_BYTE *__51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {
    return [result _reportError:a2];
  }

  return result;
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[16] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _reportError:v2];
  }
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[16] & 1) == 0)
  {
    v2 = NSErrorWithOSStatusF();
    [v1 _reportError:v2];
  }
}

uint64_t __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_4(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 16) & 1) == 0 && *(v1 + 48) == 1)
  {
    *(v1 + 48) = 4;
    return [*(result + 32) _run];
  }

  return result;
}

void __51__SFDeviceSetupTVLatencySession__runSFSessionStart__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 16) & 1) == 0)
  {
    v5 = v3;
    if (v3)
    {
      *(v4 + 48) = 3;
      [*(a1 + 32) _reportError:v3];
    }

    else
    {
      [v4 _runSFSessionActivated];
    }

    v3 = v5;
  }
}

- (void)_runSFSessionActivated
{
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _runSFSessionActivated];
  }

  sfSession = self->_sfSession;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFDeviceSetupTVLatencySession__runSFSessionActivated__block_invoke;
  v4[3] = &unk_1E788B4F8;
  v4[4] = self;
  [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D600 handler:v4];
  [(SFDeviceSetupTVLatencySession *)self _run];
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVLatencySession _runPairVerify:];
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
      v13[2] = __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke;
      v13[3] = &unk_1E788B520;
      v13[4] = self;
      v13[5] = v8;
      [(SFSession *)sfSession pairVerifyWithFlags:8 completion:v13];
    }
  }

  return self->_pairVerifyState;
}

void __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v6 = v3;
    if (v3)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke_cold_1(a1);
      }

      *(*(a1 + 32) + 24) = 2;
    }

    else
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        __48__SFDeviceSetupTVLatencySession__runPairVerify___block_invoke_cold_2(a1);
      }

      *(*(a1 + 32) + 24) = 4;
      *(*(a1 + 32) + 28) = 1;
      v4 = *(a1 + 32);
      v5 = v4[11];
      if (!v5)
      {
        goto LABEL_13;
      }

      (*(v5 + 16))(v4[11], 70, 0);
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
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
      v8[2] = __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:8 completion:v8];
    }
  }

  return self->_pairSetupState;
}

void __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke(uint64_t a1, void *a2)
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
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
    {
      __46__SFDeviceSetupTVLatencySession__runPairSetup__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 28) = 1;
    *(*(a1 + 32) + 20) = 4;
    v4 = *(a1 + 32);
    v5 = v4[11];
    if (v5)
    {
      (*(v5 + 16))(v4[11], 70, 0);
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
      [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupEstimate];
      return self->_tvLatencySetupState;
    }

    goto LABEL_8;
  }

  if (!tvLatencySetupState)
  {
    [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetupRequest];
    return self->_tvLatencySetupState;
  }

  if (tvLatencySetupState != 2)
  {
LABEL_8:
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
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
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _runTVLatencySetupRequest];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 260, 0);
  }

  self->_tvLatencySetupState = 10;
  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_tvlS" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v5];
}

void __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
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
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
    {
      __58__SFDeviceSetupTVLatencySession__runTVLatencySetupRequest__block_invoke_cold_1();
    }

    v9 = (a1 + 32);
    v13 = 11;
  }

  *(*v9 + 16) = v13;
  [*v9 _run];
}

- (void)_runTVLatencySetupEstimate
{
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _runTVLatencySetupEstimate];
  }

  self->_tvLatencySetupState = 12;
  messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v4 = [objc_alloc(getTVLAudioLatencyEstimatorClass_2()) initWithMessageSession:messageSessionTemplate];
    objc_storeStrong(&self->_tvLatencyEstimator, v4);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke;
    v10 = &unk_1E788B598;
    selfCopy = self;
    v12 = v4;
    v5 = v4;
    [v5 setProgressEventHandler:&v7];
    [v5 activate];
    [v5 estimate];
  }

  else
  {
    v6 = NSErrorWithOSStatusF();
    [(SFDeviceSetupTVLatencySession *)self _reportError:v6];

    self->_tvLatencySetupState = 3;
  }
}

void __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke_2;
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

uint64_t __59__SFDeviceSetupTVLatencySession__runTVLatencySetupEstimate__block_invoke_2(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 56))
  {
    return [*(result + 40) _runTVLatencySetupProgressEvent:*(result + 56) info:*(result + 48)];
  }

  return result;
}

- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
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
      v9 = 277;
      goto LABEL_23;
    }

    v6 = _Block_copy(self->_progressHandler);
    v7 = v6;
    if (v6)
    {
      v8 = v6[2];
      v9 = 270;
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
      v9 = 274;
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
    v9 = 276;
    goto LABEL_23;
  }

  v10 = _Block_copy(self->_progressHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 272, infoCopy);
  }

  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;
  v13 = tvLatencyEstimator;

  [(TVLAudioLatencyEstimator *)v13 invalidate];
  if (self->_tvLatencySetupState == 12)
  {
    self->_tvLatencySetupState = 4;
    [(SFDeviceSetupTVLatencySession *)self _run];
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30)
      {
        if (gLogCategory_SFDeviceSetupTVLatencySession == -1)
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
      if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupTVLatencySession _runFinish];
      }

      self->_finishState = 1;
      sfSession = self->_sfSession;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __43__SFDeviceSetupTVLatencySession__runFinish__block_invoke;
      v8[3] = &unk_1E788B548;
      v8[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_finish" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v8];
    }
  }

  return self->_finishState;
}

void __43__SFDeviceSetupTVLatencySession__runFinish__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
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
  if (gLogCategory_SFDeviceSetupTVLatencySession <= 30 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencySession _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  if (Int64Ranged == 1)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 400, requestCopy);
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencySession <= 60 && (gLogCategory_SFDeviceSetupTVLatencySession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencySession _handleSetupActionRequest:Int64Ranged responseHandler:?];
    }

    [v7 setObject:&unk_1F1D7D030 forKeyedSubscript:@"er"];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(SFDeviceSetupTVLatencySession *)self _runSFSessionStart];
    if (_runSFSessionStart == 4 || _runSFSessionStart == 2)
    {
      v5 = [(SFDeviceSetupTVLatencySession *)self _runPairVerify:0];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_sessionSecured || ((v7 = [(SFDeviceSetupTVLatencySession *)self _runPairVerify:1], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          if (self->_sessionSecured || ((v9 = [(SFDeviceSetupTVLatencySession *)self _runPairSetup], v9 != 4) ? (v10 = v9 == 2) : (v10 = 1), v10))
          {
            _runTVLatencySetup = [(SFDeviceSetupTVLatencySession *)self _runTVLatencySetup];
            if (_runTVLatencySetup == 4 || _runTVLatencySetup == 2)
            {
              _runFinish = [(SFDeviceSetupTVLatencySession *)self _runFinish];
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
    v2 = off_1E78900E0[a2 & 0xF];
  }

  return LogPrintF();
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E7890138[a2 & 0xF];
  }

  return LogPrintF();
}

@end