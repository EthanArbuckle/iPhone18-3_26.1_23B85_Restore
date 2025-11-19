@interface SFDeviceSetupSessioniOS
- (BOOL)_allowAllOTCSenders;
- (SFDeviceSetupSessioniOS)init;
- (int)_runCoreCDPSetup;
- (int)_runDependentSetup;
- (int)_runESIMSetup;
- (int)_runPreAuthPairSetup;
- (int)_runResume;
- (int)_runWalletSetup;
- (uint64_t)_handleSetupActionSoftwareUpdate;
- (uint64_t)_sendConfigInfo;
- (void)_cleanup;
- (void)_completedWithError:(id)a3;
- (void)_handleBuddyProgress:(id)a3;
- (void)_handleSetupActionRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSetupActionSoftwareUpdate;
- (void)_handleSetupPeerSuspended;
- (void)_handleSetupResumeFoundDevice:(id)a3;
- (void)_presentOneTimeCodeProxCard:(id)a3;
- (void)_receivedConfigResponse:(id)a3;
- (void)_receivedObject:(id)a3 flags:(unsigned int)a4;
- (void)_registerOneTimeCodeDetection:(id)a3;
- (void)_run;
- (void)_runOTCSetup;
- (void)_runSFSessionActivated;
- (void)_runSFSessionStart;
- (void)_sendConfigInfo;
- (void)_sendPreAuthInfo;
- (void)_startBuddySession;
- (void)activate;
- (void)dealloc;
- (void)didComplete;
- (void)didRequestPresentationForProxCard:(id)a3;
- (void)invalidate;
- (void)proximitySetupCompletedWithResult:(id)a3;
- (void)sendAppEvent:(id)a3;
- (void)setPairFlags:(unsigned int)a3;
- (void)tryPIN:(id)a3;
@end

@implementation SFDeviceSetupSessioniOS

- (SFDeviceSetupSessioniOS)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupSessioniOS;
  v2 = [(SFDeviceSetupSessioniOS *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_pairFlags = 0;
    if (CFPrefs_GetInt64())
    {
      v3->_pairFlags |= 0x100u;
    }
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupSessioniOS *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupSessioniOS *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupSessioniOS;
    [(SFDeviceSetupSessioniOS *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  receivedObjectHandler = self->_receivedObjectHandler;
  self->_receivedObjectHandler = 0;
}

- (void)setPairFlags:(unsigned int)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SFDeviceSetupSessioniOS_setPairFlags___block_invoke;
  v4[3] = &unk_1E788D970;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __40__SFDeviceSetupSessioniOS_setPairFlags___block_invoke(uint64_t result)
{
  *(*(result + 32) + 184) = *(result + 40);
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 184) |= 0x80000u;
    *(*(result + 32) + 37) = 1;
    return [*(result + 32) _run];
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SFDeviceSetupSessioniOS_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SFDeviceSetupSessioniOS_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupSessioniOS_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  *(*(a1 + 32) + 104) = CFPrefs_GetInt64() != 0;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __35__SFDeviceSetupSessioniOS_activate__block_invoke_cold_2();
  }

  v2 = *(a1 + 32);
  RandomBytes();
  v3 = *(a1 + 32);
  v4 = v3[29];
  if (v4)
  {
    (*(v4 + 16))(v3[29], 10, 0);
    v3 = *(a1 + 32);
  }

  return [v3 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFDeviceSetupSessioniOS_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFDeviceSetupSessioniOS_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 35) & 1) == 0 && gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __37__SFDeviceSetupSessioniOS_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 35) = 1;
  [*(*(a1 + 32) + 24) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(*(a1 + 32) + 144) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  *(v6 + 136) = 0;

  v8 = *(*(a1 + 32) + 96);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 endPlanTransferForEndPoint:1];
    v11 = *(a1 + 32);
    v12 = *(v11 + 96);
    *(v11 + 96) = 0;
  }

  [*(*(a1 + 32) + 168) invalidate];
  v13 = *(a1 + 32);
  v14 = *(v13 + 168);
  *(v13 + 168) = 0;

  [*(*(a1 + 32) + 80) invalidate];
  v15 = *(a1 + 32);
  v16 = *(v15 + 80);
  *(v15 + 80) = 0;

  *(*(a1 + 32) + 88) = 0;
  v17 = *(a1 + 32);
  v18 = v17[27];
  if (v18)
  {
    (*(v18 + 16))(v17[27]);
    v17 = *(a1 + 32);
  }

  return [v17 _cleanup];
}

- (void)_completedWithError:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = v4;
  if (v5)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _completedWithError:];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v17 = @"eo";
      v18[0] = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      progressHandler[2](progressHandler, 20, v7);
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _completedWithError:];
    }

    v8 = self->_progressHandler;
    if (v8)
    {
      v8[2](v8, 20, 0);
    }
  }

  v15[0] = @"errDomain";
  v9 = [v5 domain];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v15[1] = @"errCode";
  v16[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "code")}];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  SFMetricsLog(@"com.apple.sharing.iOSSetup", v13);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

void __31__SFDeviceSetupSessioniOS__run__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 38) = 0;
  *(*(a1 + 32) + 36) = 1;
  v6 = v3;
  if (v3)
  {
    [*(a1 + 32) _completedWithError:v3];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __31__SFDeviceSetupSessioniOS__run__block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    v5 = v4[29];
    if (v5)
    {
      (*(v5 + 16))(v4[29], 70, 0);
      v4 = *(a1 + 32);
    }

    [v4 _run];
  }
}

- (void)_runSFSessionStart
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _runSFSessionStart];
  }

  [(SFSession *)self->_sfSession invalidate];
  v3 = objc_alloc_init(SFSession);
  sfSession = self->_sfSession;
  self->_sfSession = v3;

  [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
  [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
  [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.iOSSetup"];
  [(SFSession *)self->_sfSession setSessionFlags:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke;
  v10[3] = &unk_1E788B238;
  v10[4] = self;
  [(SFSession *)self->_sfSession setErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2;
  v9[3] = &unk_1E788B198;
  v9[4] = self;
  [(SFSession *)self->_sfSession setInterruptionHandler:v9];
  [(SFSession *)self->_sfSession setInvalidationHandler:&__block_literal_global_53];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_4;
  v8[3] = &unk_1E788CFD0;
  v8[4] = self;
  [(SFSession *)self->_sfSession setPromptForPINHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_5;
  v7[3] = &unk_1E788CFF8;
  v7[4] = self;
  [(SFSession *)self->_sfSession setReceivedObjectHandler:v7];
  v5 = self->_sfSession;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6;
  v6[3] = &unk_1E788B238;
  v6[4] = self;
  [(SFSession *)v5 activateWithCompletion:v6];
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_cold_1();
      v3 = v5;
    }
  }

  [*(a1 + 32) _completedWithError:v3];
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = NSErrorWithOSStatusF();
  [v2 _completedWithError:v3];
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_3()
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_3_cold_1();
  }
}

uint64_t __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_4(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  result = *(*(a1 + 32) + 240);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 90)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __45__SFDeviceSetupSessioniOS__runSFSessionStart__block_invoke_6_cold_1();
        v4 = v6;
      }
    }

    [*(a1 + 32) _completedWithError:v4];
  }

  else
  {
    [*(a1 + 32) _runSFSessionActivated];
  }
}

- (void)_runSFSessionActivated
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _runSFSessionActivated];
  }

  self->_sfSessionActivated = 1;
  sfSession = self->_sfSession;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SFDeviceSetupSessioniOS__runSFSessionActivated__block_invoke;
  v4[3] = &unk_1E788B4F8;
  v4[4] = self;
  [(SFSession *)sfSession registerRequestID:@"_sa" options:&unk_1F1D7D4C0 handler:v4];
  [(SFDeviceSetupSessioniOS *)self _run];
}

- (int)_runPreAuthPairSetup
{
  preAuthPairSetupState = self->_preAuthPairSetupState;
  if (preAuthPairSetupState != 4)
  {
    if (preAuthPairSetupState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_preAuthPairSetupState;
          }

          v6 = self->_preAuthPairSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runPreAuthPairSetup];
      }

      self->_preAuthPairSetupState = 1;
      [(SFSession *)self->_sfSession setFixedPIN:@"public"];
      sfSession = self->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke;
      v7[3] = &unk_1E788B238;
      v7[4] = self;
      [(SFSession *)sfSession pairSetupWithFlags:24 completion:v7];
    }
  }

  return self->_preAuthPairSetupState;
}

void __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 80) setFixedPIN:0];
  if (v3)
  {
    *(*(a1 + 32) + 40) = 3;
    [*(a1 + 32) _completedWithError:v3];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __47__SFDeviceSetupSessioniOS__runPreAuthPairSetup__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 40) = 4;
    [*(a1 + 32) _run];
  }
}

- (int)_runESIMSetup
{
  eSIMSetupState = self->_eSIMSetupState;
  if (!eSIMSetupState)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _runESIMSetup];
    }

    v5 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_alloc(getCoreTelephonyClientClass()) initWithQueue:self->_dispatchQueue];
      if (v7)
      {
        v8 = v7;
        objc_storeStrong(&self->_eSIMClient, v7);
        v9 = [v8 bootstrapPlanTransferForEndpoint:1 usingMessageSession:v6];
        self->_eSIMSetupState = 4;

        return self->_eSIMSetupState;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupSessioniOS _runESIMSetup];
        }

        eSIMSetupState = 2;
        self->_eSIMSetupState = 2;
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runESIMSetup];
      }

      eSIMSetupState = 2;
      self->_eSIMSetupState = 2;
    }
  }

  return eSIMSetupState;
}

- (void)_runOTCSetup
{
  if (!self->_eSIMClient)
  {
    v3 = [objc_alloc(getCoreTelephonyClientClass()) initWithQueue:self->_dispatchQueue];
    eSIMClient = self->_eSIMClient;
    self->_eSIMClient = v3;
  }

  objc_initWeak(&location, self);
  v5 = self->_eSIMClient;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke;
  v6[3] = &unk_1E788FE60;
  objc_copyWeak(&v7, &location);
  [(CoreTelephonyClient *)v5 carrierOneTimeCodeSendersWithCompletion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      if (([WeakRetained _allowAllOTCSenders] & 1) != 0 || objc_msgSend(v8, "count"))
      {
        [v7 _registerOneTimeCodeDetection:v8];
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __39__SFDeviceSetupSessioniOS__runOTCSetup__block_invoke_cold_2();
    }
  }
}

- (BOOL)_allowAllOTCSenders
{
  v2 = IsAppleInternalBuild();
  if (v2)
  {
    CFPreferencesSynchronize(@"com.apple.Sharing", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AllowAllOTCSenders", @"com.apple.Sharing", &keyExistsAndHasValidFormat);
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)AppBooleanValue _allowAllOTCSenders];
    }

    if (AppBooleanValue)
    {
      v4 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v4 = 1;
    }

    LOBYTE(v2) = !v4;
  }

  return v2;
}

- (void)_registerOneTimeCodeDetection:(id)a3
{
  v4 = a3;
  if (self->_oneTimeCodeAccelerator)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _registerOneTimeCodeDetection:];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = objc_alloc(getIMOneTimeCodeAcceleratorClass[0]());
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke;
    v8[3] = &unk_1E788FE88;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    v6 = [v5 initWithBlockForUpdates:v8];
    oneTimeCodeAccelerator = self->_oneTimeCodeAccelerator;
    self->_oneTimeCodeAccelerator = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v4 = _LogCategory_Initialize(), v3 = v9, v4))
    {
      __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_1();
      v3 = v9;
    }
  }

  v5 = [v3 firstObject];
  v6 = [v5 objectForKeyedSubscript:@"code"];
  if ([v6 length])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = [v5 objectForKeyedSubscript:@"handle"];
      if (([*(a1 + 32) containsObject:v8] & 1) != 0 || objc_msgSend(WeakRetained, "_allowAllOTCSenders"))
      {
        [WeakRetained _presentOneTimeCodeProxCard:v6];
      }

      else if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_2();
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      __57__SFDeviceSetupSessioniOS__registerOneTimeCodeDetection___block_invoke_cold_3();
    }
  }
}

- (void)_presentOneTimeCodeProxCard:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _presentOneTimeCodeProxCard:v4];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v8 = @"oneTimeCode";
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    progressHandler[2](progressHandler, 1100, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (int)_runDependentSetup
{
  result = self->_dependentSetupState;
  if (!result)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _runDependentSetup];
    }

    v4 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v4)
    {
      v5 = v4;
      self->_dependentSetupState = 1;
      v6 = [objc_alloc(getPRXCardContentViewControllerClass()) initWithNibName:0 bundle:0];
      v7 = [objc_alloc(getPASUIGuardianViewPresenterClass()) initWithSharingViewController:v6];
      dependentSetupSession = self->_dependentSetupSession;
      self->_dependentSetupSession = v7;

      v9 = self->_dependentSetupSession;
      if (objc_opt_respondsToSelector())
      {
        [(PASUIGuardianViewPresenter *)self->_dependentSetupSession setDelegate:self];
      }

      v10 = self->_dependentSetupSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke;
      v11[3] = &unk_1E788FEB0;
      v11[4] = self;
      [(PASUIGuardianViewPresenter *)v10 activateWithTemplateMessageSession:v5 completion:v11];

      return self->_dependentSetupState;
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runDependentSetup];
      }

      result = 2;
      self->_dependentSetupState = 2;
    }
  }

  return result;
}

void __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 192);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke_2;
    v10 = &unk_1E788A658;
    v11 = v5;
    v12 = v3;
    dispatch_async(v6, &v7);
    [*(a1 + 32) _startBuddySession];
  }
}

void __45__SFDeviceSetupSessioniOS__runDependentSetup__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 232);
  v5 = @"viewController";
  v6[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  (*(v2 + 16))(v2, 2000, v3);

  v4 = *MEMORY[0x1E69E9840];
}

- (int)_runCoreCDPSetup
{
  cdpState = self->_cdpState;
  if (cdpState != 4 && cdpState != 2)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_cdpState;
          }

          v13 = self->_cdpState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runCoreCDPSetup];
      }

      self->_cdpState = 1;
      v5 = [(SFSession *)self->_sfSession messageSessionTemplate];
      if (v5)
      {
        v6 = objc_alloc_init(getCDPContextClass_0());
        cdpContext = self->_cdpContext;
        self->_cdpContext = v6;

        [(CDPContext *)self->_cdpContext setSharingChannel:v5];
        v8 = [objc_alloc(getCDPStateControllerClass_0()) initWithContext:self->_cdpContext];
        cdpController = self->_cdpController;
        self->_cdpController = v8;

        v10 = self->_cdpController;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke;
        v14[3] = &unk_1E788C170;
        v14[4] = self;
        [(CDPStateController *)v10 startCircleApplicationApprovalServer:v14];
      }

      else
      {
        self->_cdpState = 3;
        v11 = NSErrorWithOSStatusF();
        [(SFDeviceSetupSessioniOS *)self _completedWithError:v11];
      }
    }
  }

  return self->_cdpState;
}

void __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v12 = a2;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2_cold_1(a1);
  }

  *(*(a1 + 40) + 128) = 4;
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (int)_runWalletSetup
{
  walletClientState = self->_walletClientState;
  if (!walletClientState)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _runWalletSetup];
    }

    v5 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc_init(getPKProximitySetupSourceClientClass[0]());
      if (v7)
      {
        walletClient = self->_walletClient;
        self->_walletClient = v7;
        v9 = v7;

        [(PKProximitySetupSourceClient *)v9 startWithSession:v6];
        self->_walletClientState = 4;

        return self->_walletClientState;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupSessioniOS _runWalletSetup];
        }

        walletClientState = 2;
        self->_walletClientState = 2;
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runWalletSetup];
      }

      walletClientState = 2;
      self->_walletClientState = 2;
    }
  }

  return walletClientState;
}

- (int)_runResume
{
  resumeState = self->_resumeState;
  if (resumeState != 4)
  {
    if (resumeState)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_resumeState;
          }

          v6 = self->_resumeState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _runResume];
      }

      self->_resumeState = 1;
      sfSession = self->_sfSession;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__SFDeviceSetupSessioniOS__runResume__block_invoke;
      v7[3] = &unk_1E788B548;
      v7[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_sa" options:0 request:&unk_1F1D7D4E8 responseHandler:v7];
    }
  }

  return self->_resumeState;
}

void __37__SFDeviceSetupSessioniOS__runResume__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v12)
  {
    v9 = 3;
  }

  else
  {
    v9 = 4;
  }

  *(*(a1 + 32) + 72) = v9;
  v10 = _Block_copy(*(*(a1 + 32) + 232));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 97, 0);
  }

  [*(a1 + 32) _run];
}

- (void)_sendConfigInfo
{
  v18 = 0;
  if (self->_sfSession)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _sendConfigInfo];
    }

    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setObject:&unk_1F1D7CF70 forKeyedSubscript:@"op"];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"dn"];
    fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
    if (!fileTransferSessionTemplate)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69C6B90]);
      v6 = self->_fileTransferSessionTemplate;
      self->_fileTransferSessionTemplate = v5;

      [(RPFileTransferSession *)self->_fileTransferSessionTemplate setFlags:418];
      [(RPFileTransferSession *)self->_fileTransferSessionTemplate prepareTemplateAndReturnError:0];
      fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
    }

    v7 = [(RPFileTransferSession *)fileTransferSessionTemplate selfPublicKey];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"ftPK"];
    }

    v8 = objc_alloc_init(getACAccountStoreClass_5());
    v9 = [v8 aa_primaryAppleAccount];
    v10 = [v9 username];
    if ([v10 length])
    {
      [v3 setObject:v10 forKeyedSubscript:@"icn"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _sendConfigInfo];
    }

    v11 = [MEMORY[0x1E695DF58] preferredLanguages];
    v12 = [v11 firstObject];

    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"lang"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _sendConfigInfo];
    }

    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = [v13 localeIdentifier];

    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"locale"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _sendConfigInfo];
    }

    v15 = WiFiCopyCurrentNetworkInfoEx();
    v16 = v15;
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"ssid"];

      if (v17)
      {
        [v3 setObject:v17 forKeyedSubscript:@"wifiSSID"];
      }

      else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _sendConfigInfo];
      }

      v14 = [v16 objectForKeyedSubscript:@"password"];

      if (v14)
      {
        [v3 setObject:v14 forKeyedSubscript:@"wifiPW"];
      }

      else
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupSessioniOS _sendConfigInfo];
        }

        v14 = 0;
      }
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)&v18 _sendConfigInfo];
    }

    [(SFSession *)self->_sfSession sendWithFlags:1 object:v3];
  }

  else
  {
    [gLogCategory_SFDeviceSetupSessioniOS _sendConfigInfo];
  }
}

- (void)_receivedConfigResponse:(id)a3
{
  v8 = a3;
  CFDataGetTypeID();
  v4 = CFDictionaryGetTypedValue();
  if (v4)
  {
    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setPeerPublicKey:v4];
  }

  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    v6 = [(RPFileTransferSession *)self->_fileTransferSessionTemplate targetID];

    [(RPFileTransferSession *)self->_fileTransferSessionTemplate setTargetID:v5];
    if (!v6)
    {
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 420, 0);
      }
    }
  }
}

- (void)_sendPreAuthInfo
{
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:&unk_1F1D7CF88 forKeyedSubscript:@"op"];
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  if (AccessibilityLibrary_sLib_0 && dlsym(AccessibilityLibrary_sLib_0, "_AXSCopySettingsDataBlobForBuddy"))
  {
    v3 = softLink_AXSCopySettingsDataBlobForBuddy();
    if (v3)
    {
      [v10 setObject:v3 forKeyedSubscript:@"axSt"];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _sendPreAuthInfo];
    }
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:SFDeviceClassCodeGet()];
  [v10 setObject:v4 forKeyedSubscript:@"dclass"];

  v5 = [MEMORY[0x1E695DF58] preferredLanguages];
  if (v5)
  {
    [v10 setObject:v5 forKeyedSubscript:@"langs"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  v6 = [v5 firstObject];
  if (v6)
  {
    [v10 setObject:v6 forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [v7 localeIdentifier];

  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  v9 = GestaltCopyAnswer();

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"model"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupSessioniOS > 60)
    {
      goto LABEL_34;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize())
    {
      [SFDeviceSetupSessioniOS _sendPreAuthInfo];
    }
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

LABEL_34:
  [(SFSession *)self->_sfSession sendWithFlags:self->_preAuthPairSetupState == 4 object:v10];
}

- (void)_startBuddySession
{
  if (!self->_buddySession)
  {
    v8[7] = v2;
    v8[8] = v3;
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _startBuddySession];
    }

    v5 = objc_alloc_init(getBYDeviceSetupSourceSessionClass());
    buddySession = self->_buddySession;
    self->_buddySession = v5;

    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupSessioniOS *)self _startBuddySession];
    }

    [(BYDeviceSetupSourceSession *)self->_buddySession setFileTransferSessionTemplate:self->_fileTransferSessionTemplate];
    v7 = [(SFSession *)self->_sfSession messageSessionTemplate];
    [(BYDeviceSetupSourceSession *)self->_buddySession setMessageSession:v7];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke;
    v8[3] = &unk_1E788FED8;
    v8[4] = self;
    [(BYDeviceSetupSourceSession *)self->_buddySession setProgressHandler:v8];
    [(BYDeviceSetupSourceSession *)self->_buddySession activate];
    self->_buddyConfigured = 1;
  }
}

void __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__SFDeviceSetupSessioniOS__startBuddySession__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_handleBuddyProgress:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_buddySession)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _handleBuddyProgress:];
    }

    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _handleBuddyProgress:];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 242, v4);
      }

      self->_buddyComplete = 1;
      if (self->_dependentSetupState == 1)
      {
        self->_dependentSetupState = 4;
        self->_eSIMSetupState = 2;
        self->_cdpState = 2;
      }

      [(SFDeviceSetupSessioniOS *)self _run];
      goto LABEL_24;
    }

    CFErrorGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _handleBuddyProgress:];
      }

      [(SFDeviceSetupSessioniOS *)self _completedWithError:v6];
    }

    else
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      CFDictionaryGetDouble();
      v10 = v9;
      CFDictionaryGetDouble();
      v12 = v11;
      if (Int64Ranged == 2)
      {
        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v17 = self->_progressHandler;
        if (!v17)
        {
          goto LABEL_23;
        }

        v18[0] = @"progress";
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        v18[1] = @"remainSecs";
        v19[0] = v14;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v19[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
        v17[2](v17, 310, v16);
      }

      else
      {
        if (Int64Ranged != 1)
        {
          goto LABEL_23;
        }

        if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = self->_progressHandler;
        if (!v13)
        {
          goto LABEL_23;
        }

        v20[0] = @"progress";
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
        v20[1] = @"remainSecs";
        v21[0] = v14;
        v15 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
        v21[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
        v13[2](v13, 300, v16);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleBuddyProgress:];
  }

LABEL_24:

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSetupActionRequest:(id)a3 responseHandler:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  if (Int64Ranged <= 3)
  {
    switch(Int64Ranged)
    {
      case 1:
        progressHandler = self->_progressHandler;
        if (!progressHandler)
        {
          goto LABEL_31;
        }

        v10 = *(progressHandler + 2);
        goto LABEL_30;
      case 2:
        v15 = self->_progressHandler;
        if (!v15)
        {
          goto LABEL_31;
        }

        v10 = *(v15 + 2);
        goto LABEL_30;
      case 3:
        v9 = self->_progressHandler;
        if (!v9)
        {
          goto LABEL_31;
        }

        v10 = *(v9 + 2);
        goto LABEL_30;
    }
  }

  else
  {
    if (Int64Ranged <= 8)
    {
      if (Int64Ranged != 4)
      {
        if (Int64Ranged == 5)
        {
          [(SFDeviceSetupSessioniOS *)self _handleSetupActionSoftwareUpdate];
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v13 = self->_progressHandler;
      if (!v13)
      {
        goto LABEL_31;
      }

      v10 = *(v13 + 2);
LABEL_30:
      v10();
      goto LABEL_31;
    }

    if (Int64Ranged == 9)
    {
      v14 = self->_progressHandler;
      if (!v14)
      {
        goto LABEL_31;
      }

      v10 = *(v14 + 2);
      goto LABEL_30;
    }

    if (Int64Ranged == 10)
    {
      v11 = self->_progressHandler;
      if (!v11)
      {
        goto LABEL_31;
      }

      v10 = *(v11 + 2);
      goto LABEL_30;
    }
  }

LABEL_20:
  if (gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupActionRequest:Int64Ranged responseHandler:?];
  }

  [v7 setObject:&unk_1F1D7CFA0 forKeyedSubscript:@"er"];
LABEL_31:
  (*(v6 + 2))(v6, 0, 0, v7);
}

- (void)_handleSetupActionSoftwareUpdate
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_13();
  }
}

void __59__SFDeviceSetupSessioniOS__handleSetupActionSoftwareUpdate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    v9 = v8;
    v10 = v11;
    LogPrintF();
  }

  [*(a1 + 32) _handleSetupPeerSuspended];
}

- (void)_handleSetupPeerSuspended
{
  *&self->_buddyConfigured = 0;
  fileTransferSessionTemplate = self->_fileTransferSessionTemplate;
  self->_fileTransferSessionTemplate = 0;

  self->_pairSetupDone = 0;
  peerDevice = self->_peerDevice;
  self->_peerDevice = 0;

  self->_sfSessionActivated = 0;
  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupPeerSuspended];
  }

  v6 = objc_alloc_init(SFDeviceDiscovery);
  resumeDiscovery = self->_resumeDiscovery;
  self->_resumeDiscovery = v6;
  v8 = v6;

  [(SFDeviceDiscovery *)v8 setDiscoveryFlags:512];
  [(SFDeviceDiscovery *)v8 setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceDiscovery *)v8 setPurpose:@"iOSSetupResume"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke;
  v10[3] = &unk_1E788FF00;
  v10[4] = v8;
  v10[5] = self;
  [(SFDeviceDiscovery *)v8 setDeviceFoundHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2;
  v9[3] = &unk_1E788B520;
  v9[4] = v8;
  v9[5] = self;
  [(SFDeviceDiscovery *)v8 activateWithCompletion:v9];
}

void *__52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[7])
  {
    return [result _handleSetupResumeFoundDevice:a2];
  }

  return result;
}

void __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 56) && gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    v6 = v3;
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      __52__SFDeviceSetupSessioniOS__handleSetupPeerSuspended__block_invoke_2_cold_1();
      v4 = v6;
    }
  }
}

- (void)_handleSetupResumeFoundDevice:(id)a3
{
  v10 = a3;
  if (([v10 deviceFlags] & 0x100) != 0)
  {
    v5 = [v10 bleDevice];
    v6 = [v5 advertisementFields];
    CFDataGetTypeID();
    v7 = CFDictionaryGetTypedValue();

    if ([v7 isEqual:self->_resumeAuthTag])
    {
      if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupSessioniOS _handleSetupResumeFoundDevice:];
      }

      objc_storeStrong(&self->_peerDevice, a3);
      [(SFDeviceDiscovery *)self->_resumeDiscovery invalidate];
      resumeDiscovery = self->_resumeDiscovery;
      self->_resumeDiscovery = 0;

      [(SFDeviceSetupSessioniOS *)self _run];
    }

    else if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      resumeAuthTag = self->_resumeAuthTag;
      LogPrintF();
    }
  }

  else if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS _handleSetupResumeFoundDevice:];
  }
}

- (void)_receivedObject:(id)a3 flags:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  v12 = v6;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v7 = _LogCategory_Initialize(), v6 = v12, v7))
    {
      [SFDeviceSetupSessioniOS _receivedObject:v6 flags:?];
    }
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged == 2)
  {
    if ((v4 & 1) == 0)
    {
      [SFDeviceSetupSessioniOS _receivedObject:? flags:?];
      goto LABEL_21;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _receivedObject:flags:];
    }

    [(SFDeviceSetupSessioniOS *)self _receivedConfigResponse:v12];
    receivedObjectHandler = self->_receivedObjectHandler;
    if (receivedObjectHandler)
    {
      (receivedObjectHandler)[2](receivedObjectHandler, v12);
    }

    self->_configResponseReceived = 1;
    goto LABEL_20;
  }

  if (Int64Ranged == 5)
  {
    v9 = v12;
    if (v4)
    {
      goto LABEL_22;
    }

    [SFDeviceSetupSessioniOS _receivedObject:flags:];
    goto LABEL_21;
  }

  v9 = v12;
  if (Int64Ranged == 4)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupSessioniOS _receivedObject:flags:];
    }

    self->_preAuthResponseReceived = 1;
LABEL_20:
    [(SFDeviceSetupSessioniOS *)self _run];
LABEL_21:
    v9 = v12;
    goto LABEL_22;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 60)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1 || (v11 = _LogCategory_Initialize(), v9 = v12, v11))
    {
      [SFDeviceSetupSessioniOS _receivedObject:flags:];
      goto LABEL_21;
    }
  }

LABEL_22:
}

- (void)sendAppEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  *(v2 + 12) = v3 + 1;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __40__SFDeviceSetupSessioniOS_sendAppEvent___block_invoke_cold_1();
  }

  v5 = [*(a1 + 40) mutableCopy];
  [v5 setObject:&unk_1F1D7CFD0 forKeyedSubscript:@"op"];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v4 forKeyedSubscript:@"appID"];

  [*(*(a1 + 32) + 80) sendWithFlags:1 object:v5];
}

- (void)tryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 80) && gLogCategory_SFDeviceSetupSessioniOS <= 60 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __34__SFDeviceSetupSessioniOS_tryPIN___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 pairSetupTryPIN:v2];
}

- (void)didComplete
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS didComplete];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v4 = *(progressHandler + 2);

    v4();
  }
}

- (void)didRequestPresentationForProxCard:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gLogCategory_SFDeviceSetupSessioniOS <= 30 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupSessioniOS didRequestPresentationForProxCard:];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v8 = @"viewController";
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    progressHandler[2](progressHandler, 1000, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)proximitySetupCompletedWithResult:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) accountType];
  if (!v3)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS > 50 || gLogCategory_SFDeviceSetupSessioniOS == -1 && !_LogCategory_Initialize())
    {
LABEL_15:
      v4 = 4;
      goto LABEL_16;
    }

    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_2(v2, &v8);
    v7 = v8;
    goto LABEL_23;
  }

  if (v3 != 2)
  {
    if (v3 != 1)
    {
      goto LABEL_17;
    }

    if (gLogCategory_SFDeviceSetupSessioniOS > 50 || gLogCategory_SFDeviceSetupSessioniOS == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_15;
    }

    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_3(v2, &v8);
    v7 = v8;
LABEL_23:
    v4 = 4;
    goto LABEL_24;
  }

  if (gLogCategory_SFDeviceSetupSessioniOS <= 90 && (gLogCategory_SFDeviceSetupSessioniOS != -1 || _LogCategory_Initialize()))
  {
    __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_1(v2, &v8);
    v7 = v8;
    v4 = 7;
LABEL_24:

    goto LABEL_16;
  }

  v4 = 7;
LABEL_16:
  *(*(a1 + 40) + 152) = v4;
  (*(*(*(a1 + 40) + 232) + 16))();
LABEL_17:
  v5 = *(a1 + 40);

  return [v5 _run];
}

uint64_t __43__SFDeviceSetupSessioniOS__runCoreCDPSetup__block_invoke_2_cold_1(uint64_t a1)
{
  *(a1 + 48);
  v2 = *(a1 + 32);
  return LogPrintF();
}

- (uint64_t)_sendConfigInfo
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return OUTLINED_FUNCTION_1_16();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return OUTLINED_FUNCTION_1_16();
    }
  }

  return result;
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.1(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788FF20[a2 & 0xF];
  }

  return LogPrintF();
}

- (uint64_t)_handleSetupActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 <= 0xA)
  {
    v2 = off_1E788FF78[a2 & 0xF];
  }

  return LogPrintF();
}

- (uint64_t)_handleSetupActionSoftwareUpdate
{
  v3 = *a1;
  v4 = *a2;
  return LogPrintF();
}

- (uint64_t)_receivedObject:flags:.cold.2()
{
  if (gLogCategory_SFDeviceSetupSessioniOS <= 50)
  {
    if (gLogCategory_SFDeviceSetupSessioniOS != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

- (uint64_t)_receivedObject:(uint64_t)result flags:.cold.4(uint64_t result)
{
  if (result <= 50)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_1(id *a1, uint64_t *a2)
{
  *a2 = [*a1 error];
  return LogPrintF();
}

void __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_2(id *a1, uint64_t *a2)
{
  *a2 = [*a1 authResults];
  v4 = [*a1 familyMember];
  LogPrintF();
}

void __61__SFDeviceSetupSessioniOS_proximitySetupCompletedWithResult___block_invoke_cold_3(id *a1, uint64_t *a2)
{
  *a2 = [*a1 authResults];
  v4 = [*a1 personalAccount];
  LogPrintF();
}

@end