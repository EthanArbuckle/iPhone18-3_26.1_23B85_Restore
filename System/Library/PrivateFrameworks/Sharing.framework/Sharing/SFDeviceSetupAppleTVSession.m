@interface SFDeviceSetupAppleTVSession
- (BOOL)_shouldSkipHomeKitSetup;
- (BOOL)_verifyiCloudMatch:(unint64_t)a3 error:(id *)a4;
- (SFDeviceSetupAppleTVSession)init;
- (id)_videoSubscriberAccountData;
- (int)_runAppleIDSetup;
- (int)_runBasicConfig;
- (int)_runCDPSetup;
- (int)_runCaptiveJoin;
- (int)_runCaptivePrompt;
- (int)_runFinish:(BOOL)a3;
- (int)_runHomeKitHH2Check;
- (int)_runHomeKitSetup;
- (int)_runHomeKitUserInput;
- (int)_runPairSetupWithFlags:(unsigned int)a3;
- (int)_runPreAuth;
- (int)_runPreflightHomeKit;
- (int)_runPreflightWiFi;
- (int)_runPreflightiTunes;
- (int)_runSFSessionStart;
- (int)_runTRActivation;
- (int)_runTRAuthentication;
- (int)_runTRCompletion;
- (int)_runTRNetwork;
- (int)_runTRSessionStart;
- (int)_runTRSetupConfiguration;
- (int)_runTVLatencySetup;
- (int)_runWiFiSetup;
- (uint64_t)_runHomeKitSetup;
- (uint64_t)_runTRSessionStart;
- (void)_cleanup;
- (void)_homeKitUpdateiCloudSwitchState:(BOOL)a3;
- (void)_reportError:(id)a3 label:(id)a4;
- (void)_reportErrorMetrics:(id)a3 errorLabel:(id)a4 isFatal:(BOOL)a5;
- (void)_reportMainMetrics:(id)a3 errorLabel:(id)a4 userWaitSeconds:(double)a5;
- (void)_run;
- (void)_runAppleIDSetupRequest;
- (void)_runAppleIDSetupResponse:(id)a3 error:(id)a4;
- (void)_runBasicConfigRequest;
- (void)_runBasicConfigResponse:(id)a3 error:(id)a4;
- (void)_runPreAuthRequest;
- (void)_runPreAuthResponse:(id)a3 error:(id)a4;
- (void)_runTRSessionStart;
- (void)_runTVLatencySetupEnded:(int)a3;
- (void)_runTVLatencySetupEstimate;
- (void)_runTVLatencySetupProgressEvent:(unint64_t)a3 info:(id)a4;
- (void)_runTVLatencySetupRequest;
- (void)_setNumberOfDevicesOnAccount:(id)a3;
- (void)activate;
- (void)captiveConfirmed;
- (void)dealloc;
- (void)homeKitSelectHome:(id)a3;
- (void)homeKitSelectRoom:(id)a3;
- (void)homeiCloudEnable;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)a3;
- (void)switchToManualAuth;
@end

@implementation SFDeviceSetupAppleTVSession

- (SFDeviceSetupAppleTVSession)init
{
  v10.receiver = self;
  v10.super_class = SFDeviceSetupAppleTVSession;
  v2 = [(SFDeviceSetupAppleTVSession *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_proxSetupActiveToken = -1;
    v6 = objc_opt_new();
    sessionID = v3->_sessionID;
    v3->_sessionID = v6;

    *&v3->_numberOfAppleTVsOnAccount = -1;
    v8 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupAppleTVSession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupAppleTVSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupAppleTVSession;
    [(SFDeviceSetupAppleTVSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  v32 = *MEMORY[0x1E69E9840];
  proxSetupActiveToken = self->_proxSetupActiveToken;
  if (proxSetupActiveToken != -1)
  {
    notify_set_state(proxSetupActiveToken, 0);
    notify_post("com.apple.sharing.wha-prox-setup");
    notify_cancel(self->_proxSetupActiveToken);
    self->_proxSetupActiveToken = -1;
  }

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_trOperations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        [v12 cancel];
        [v12 setCompletionBlock:0];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = 0;

  [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
  captiveJoin = self->_captiveJoin;
  self->_captiveJoin = 0;

  [(TRSession *)self->_trSession setDisconnectHandler:0];
  [(TRSession *)self->_trSession disconnect];
  trSession = self->_trSession;
  self->_trSession = 0;

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v21 = self->_progressHandler;
  }

  else
  {
    v21 = 0;
  }

  self->_progressHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForHomeiCloudHandler = self->_promptForHomeiCloudHandler;
  self->_promptForHomeiCloudHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;

  v26 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceSetupAppleTVSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__SFDeviceSetupAppleTVSession_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __39__SFDeviceSetupAppleTVSession_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = [(objc_class *)getHMHomeManagerConfigurationClass_0() defaultPrivateConfiguration];
  v3 = [objc_alloc(getHMHomeManagerClass_1()) initWithHomeMangerConfiguration:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  *(v4 + 192) = v3;

  notify_register_check("com.apple.sharing.wha-prox-setup", (*(a1 + 32) + 20));
  notify_set_state(*(*(a1 + 32) + 20), 1uLL);
  notify_post("com.apple.sharing.wha-prox-setup");
  *(*(a1 + 32) + 124) = _os_feature_enabled_impl();
  *(*(a1 + 32) + 96) = CFPrefs_GetInt64() != 0;
  *(*(a1 + 32) + 153) = CFPrefs_GetInt64() != 0;
  *(*(a1 + 32) + 154) = CFPrefs_GetInt64() != 0;
  v6 = *(a1 + 32);
  if (*(v6 + 154) == 1)
  {
    *(v6 + 153) = 1;
  }

  *(*(a1 + 32) + 400) = CFPrefs_GetInt64() != 0;
  *(*(a1 + 32) + 24) = CFPrefs_GetInt64() != 0;
  v7 = *(a1 + 32);
  v8 = v7[67];
  if (v8)
  {
    (*(v8 + 16))(v7[67], 10, 0);
    v7 = *(a1 + 32);
  }

  [v7 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  [*(a1 + 32) _runFinish:1];
  v2 = *(a1 + 32);

  return [v2 _cleanup];
}

- (void)homeiCloudEnable
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 152) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)homeKitSelectHome:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceSetupAppleTVSession_homeKitSelectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)captiveConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 200) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)switchToManualAuth
{
  if (self->_pairSetupState == 1)
  {
    self->_pairSetupState = 0;
    [(SFDeviceSetupAppleTVSession *)self _runPairSetupWithFlags:0];
  }
}

- (void)homeKitSelectRoom:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceSetupAppleTVSession_homeKitSelectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairSetupTryPIN:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SFDeviceSetupAppleTVSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportError:(id)a3 label:(id)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    v26 = v9;
    v27 = v8;
    LogPrintF();
  }

  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    v10 = *MEMORY[0x1E69E9858];
    v26 = v9;
    v27 = v8;
    FPrintF();
  }

  if (self->_userWaitSeconds == 0.0)
  {
    mach_absolute_time();
    startUserWaitTicks = self->_startUserWaitTicks;
    UpTicksToSecondsF();
    self->_userWaitSeconds = v12;
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v32 = @"eo";
    v14 = v8;
    if (!v8)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A768];
      v30 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v4 = v17;
      v18 = @"?";
      if (v17)
      {
        v18 = v17;
      }

      v31 = v18;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:{1, v26, v27}];
      v14 = [v15 errorWithDomain:v16 code:-6700 userInfo:v5];
    }

    v33[0] = v14;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:{1, v26, v27}];
    progressHandler[2](progressHandler, 30, v19);

    if (!v8)
    {
    }
  }

  if (!self->_metricsReported)
  {
    self->_metricsReported = 1;
    [(SFDeviceSetupAppleTVSession *)self _reportMainMetrics:v8 errorLabel:v9 userWaitSeconds:self->_userWaitSeconds];
    [(SFDeviceSetupAppleTVSession *)self _reportErrorMetrics:v8 errorLabel:v9 isFatal:[(SFDeviceSetupAppleTVSession *)self _isPreflightError:v8]^ 1];
  }

  v29[0] = v9;
  v28[0] = @"label";
  v28[1] = @"errDomain";
  v20 = [v8 domain];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"?";
  }

  v29[1] = v22;
  v28[2] = @"errCode";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
  v29[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
  SFMetricsLog(@"com.apple.sharing.AppleTVSetupResult", v24);

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldSkipHomeKitSetup
{
  v3 = [(HMHomeManager *)self->_homeManager hasOptedToHH2];
  if (v3)
  {
    LOBYTE(v3) = (self->_peerFeatureFlags & 0x800) == 0;
  }

  return v3;
}

- (int)_runPreflightWiFi
{
  preflightWiFiState = self->_preflightWiFiState;
  if (preflightWiFiState == 4 || preflightWiFiState == 2)
  {
    return self->_preflightWiFiState;
  }

  if (!preflightWiFiState)
  {
    if (self->_isCLIMode && IsAppleInternalBuild())
    {
      v7 = *MEMORY[0x1E69E9858];
      FPrintF();
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreflightWiFi];
    }

    v8 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (!v9 && !SFDeviceIsVirtualMachine())
    {
      v12 = NSErrorWithOSStatusF();
      [(SFDeviceSetupAppleTVSession *)self _reportError:v12 label:@"PreflightWiFi"];

      v5 = 3;
      self->_preflightWiFiState = 3;
LABEL_58:

      return v5;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (CFDictionaryGetInt64())
    {
      v11 = NSErrorWithOSStatusF();
      if (v11)
      {
        self->_preflightWiFiState = 3;
        [(SFDeviceSetupAppleTVSession *)self _reportError:v11 label:@"PreflightWiFi"];
      }
    }

    else
    {
      v11 = 0;
    }

    self->_wifiIsCaptive = CFDictionaryGetInt64() != 0;
    if (gLogCategory_SFDeviceSetupAppleTVSession > 30)
    {
      goto LABEL_31;
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      wifiIsCaptive = self->_wifiIsCaptive;
    }

    LogPrintF();
LABEL_31:
    if (Int64Ranged > 4)
    {
      if (Int64Ranged > 6)
      {
        switch(Int64Ranged)
        {
          case 7:
            v14 = "UnshareableEAPShareBlockedByProfile";
            goto LABEL_57;
          case 8:
            v14 = "UnshareableThirdPartySource";
            goto LABEL_57;
          case 9:
            v14 = "NetworkRequiresOneTimePassword";
            goto LABEL_57;
        }

LABEL_56:
        v14 = "?";
        goto LABEL_57;
      }

      if (Int64Ranged != 5)
      {
        v14 = "UnsupportedProfileBased";
        goto LABEL_57;
      }
    }

    else
    {
      if (Int64Ranged > 2)
      {
        if (Int64Ranged == 3)
        {
          v14 = "UnshareableCarrier";
        }

        else
        {
          v14 = "UnshareableUnsupportedEAP";
        }

        goto LABEL_57;
      }

      if (Int64Ranged >= 2)
      {
        if (Int64Ranged == 2)
        {
          v14 = "UnshareableMDM";
LABEL_57:
          v20 = v14;
          v16 = NSErrorWithOSStatusF();

          self->_preflightWiFiState = 3;
          [(SFDeviceSetupAppleTVSession *)self _reportError:v16 label:@"PreflightWiFi", v20];
          v5 = self->_preflightWiFiState;

          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    if (!SFDeviceIsVirtualMachine())
    {
      v15 = [v8 objectForKeyedSubscript:@"password"];
      if (v15 || ([v8 objectForKeyedSubscript:@"open"], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v17 = [v8 objectForKeyedSubscript:@"enterprise"];

        if (!v17)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceSetupAppleTVSession _runPreflightWiFi];
          }

          self->_preflightWiFiState = 3;
          v18 = NSErrorWithOSStatusF();
          [(SFDeviceSetupAppleTVSession *)self _reportError:v18 label:@"PreflightWiFi"];

          v5 = self->_preflightWiFiState;
          goto LABEL_58;
        }
      }
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreflightWiFi];
    }

    self->_preflightWiFiState = 4;

    return self->_preflightWiFiState;
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_preflightWiFiState;
      }

      v13 = self->_preflightWiFiState;
    }

    LogPrintF();
  }

  return self->_preflightWiFiState;
}

- (int)_runPreflightiTunes
{
  preflightiTunesState = self->_preflightiTunesState;
  if (preflightiTunesState != 4 && preflightiTunesState != 2)
  {
    if (preflightiTunesState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_preflightiTunesState;
          }

          v12 = self->_preflightiTunesState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runPreflightiTunes];
      }

      self->_preflightiTunesState = 1;
      v6 = [(objc_class *)getSSAccountStoreClass_1() defaultStore];
      v7 = [v6 activeAccount];

      if (v7)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupAppleTVSession _runPreflightiTunes];
        }

        v8 = [v7 accountName];
        iTunesUserID = self->_iTunesUserID;
        self->_iTunesUserID = v8;

        v10 = 4;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupAppleTVSession _runPreflightiTunes];
        }

        v10 = 2;
      }

      self->_preflightiTunesState = v10;
    }
  }

  return self->_preflightiTunesState;
}

- (int)_runHomeKitHH2Check
{
  result = self->_homeKitHH2CheckState;
  if (!result)
  {
    v4 = [(HMHomeManager *)self->_homeManager hasOptedToHH2];
    IsVirtualMachine = SFDeviceIsVirtualMachine();
    peerFeatureFlags = self->_peerFeatureFlags;
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (((v4 | IsVirtualMachine) & 1) != 0 || (peerFeatureFlags & 0x800) == 0)
    {
      result = 4;
      self->_homeKitHH2CheckState = 4;
    }

    else
    {
      self->_homeKitHH2CheckState = 3;
      v7 = NSErrorWithOSStatusF();
      [(SFDeviceSetupAppleTVSession *)self _reportError:v7 label:@"HomeKitHH2Check"];

      return self->_homeKitHH2CheckState;
    }
  }

  return result;
}

- (int)_runPreflightHomeKit
{
  preflightHomeKitState = self->_preflightHomeKitState;
  HIDWORD(v5) = preflightHomeKitState;
  LODWORD(v5) = preflightHomeKitState;
  v4 = v5 >> 1;
  if ((v4 - 1) < 2)
  {
    return self->_preflightHomeKitState;
  }

  if (v4 == 5)
  {
    if (self->_homeiCloudEnabled)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runPreflightHomeKit];
      }

      [(SFDeviceSetupAppleTVSession *)self _homeKitUpdateiCloudSwitchState:1];
      self->_preflightHomeKitState = 4;
      return self->_preflightHomeKitState;
    }

    if (preflightHomeKitState == 2 || preflightHomeKitState == 4)
    {
      return self->_preflightHomeKitState;
    }

    goto LABEL_23;
  }

  if (v4)
  {
LABEL_23:
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_preflightHomeKitState;
        }

        v12 = self->_preflightHomeKitState;
      }

      LogPrintF();
    }

    return self->_preflightHomeKitState;
  }

  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    v6 = *MEMORY[0x1E69E9858];
    FPrintF();
  }

  v7 = objc_alloc_init(getACAccountStoreClass_4());
  v8 = [v7 aa_primaryAppleAccount];
  v9 = v8;
  if (!v8)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreflightHomeKit];
    }

    v10 = 2;
    self->_preflightHomeKitState = 2;
    goto LABEL_30;
  }

  if ([v8 isEnabledForDataclass:*MEMORY[0x1E6959B10]])
  {
    goto LABEL_37;
  }

  if (!self->_promptForHomeiCloudHandler)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreflightHomeKit];
    }

    [(SFDeviceSetupAppleTVSession *)self _homeKitUpdateiCloudSwitchState:1];
LABEL_37:
    self->_preflightHomeKitState = 4;

    return self->_preflightHomeKitState;
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runPreflightHomeKit];
  }

  self->_preflightHomeKitState = 10;
  (*(self->_promptForHomeiCloudHandler + 2))();
  v10 = self->_preflightHomeKitState;
LABEL_30:

  return v10;
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_sfSessionState;
          }

          v11 = self->_sfSessionState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runSFSessionStart];
      }

      self->_sfSessionState = 1;
      [(SFSession *)self->_sfSession invalidate];
      v6 = objc_alloc_init(SFSession);
      sfSession = self->_sfSession;
      self->_sfSession = v6;

      [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)self->_sfSession setLabel:@"AppleTVSetup"];
      [(SFSession *)self->_sfSession setPairSetupACL:&unk_1F1D7D3F8];
      [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_sfSession setServiceIdentifier:@"com.apple.sharing.AppleTVSetup"];
      [(SFSession *)self->_sfSession setSessionFlags:4097];
      [(SFSession *)self->_sfSession setTouchRemoteEnabled:1];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke;
      v16[3] = &unk_1E788B238;
      v16[4] = self;
      [(SFSession *)self->_sfSession setErrorHandler:v16];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_2;
      v15[3] = &unk_1E788B198;
      v15[4] = self;
      [(SFSession *)self->_sfSession setInterruptionHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_3;
      v14[3] = &unk_1E788B198;
      v14[4] = self;
      [(SFSession *)self->_sfSession setInvalidationHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4;
      v13[3] = &unk_1E788CFD0;
      v13[4] = self;
      [(SFSession *)self->_sfSession setPromptForPINHandler:v13];
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 35, 0);
      }

      v9 = self->_sfSession;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_5;
      v12[3] = &unk_1E788B238;
      v12[4] = self;
      [(SFSession *)v9 activateWithCompletion:v12];
    }
  }

  return self->_sfSessionState;
}

void __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v10 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [v1 _reportError:v8 label:@"SFSessionInterruption"];

  v9 = *MEMORY[0x1E69E9840];
}

void __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0 && *(v1 + 56))
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E696A768];
    v10 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v5 = v4;
    v6 = @"?";
    if (v4)
    {
      v6 = v4;
    }

    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v2 errorWithDomain:v3 code:-6736 userInfo:v7];
    [v1 _reportError:v8 label:@"SFSessionInvalidation"];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    v11 = &unk_1A998FA8B;
    v12 = a3;
    v10 = a2;
    LogPrintF();
  }

  v6 = *(a1 + 32);
  if (*(v6 + 497) == 1)
  {
    v7 = IsAppleInternalBuild();
    v6 = *(a1 + 32);
    if (v7)
    {
      if (*(v6 + 584))
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4_cold_1();
        }

        [*(*(a1 + 32) + 56) pairSetupTryPIN:{*(*(a1 + 32) + 584), v10, v11, v12}];
        v6 = *(a1 + 32);
      }
    }
  }

  result = *(v6 + 560);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

uint64_t __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 64) = 3;
    return [*(a1 + 32) _reportError:a2 label:@"SFSessionActivate"];
  }

  else
  {
    *(v2 + 64) = 4;
    return [*(a1 + 32) _run];
  }
}

- (int)_runPreAuth
{
  preAuthState = self->_preAuthState;
  if (preAuthState != 4 && preAuthState != 2)
  {
    if (preAuthState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_preAuthState;
          }

          v7 = self->_preAuthState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runPreAuth];
      }

      self->_preAuthState = 1;
      [(SFDeviceSetupAppleTVSession *)self _runPreAuthRequest];
    }
  }

  return self->_preAuthState;
}

- (void)_runPreAuthRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runPreAuthRequest];
  }

  v6 = [MEMORY[0x1E695DF58] preferredLanguages];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"langs"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runPreAuthRequest];
  }

  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [v7 localeIdentifier];

  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runPreAuthRequest];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:softLink_AXSVoiceOverTouchEnabled()];
  [v3 setObject:v9 forKeyedSubscript:@"voe"];

  v10 = MEMORY[0x1E696AD98];
  softLink_AXSVoiceOverTouchSpeakingRate();
  v11 = [v10 numberWithFloat:?];
  [v3 setObject:v11 forKeyedSubscript:@"vosr"];

  v12 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "touchAccommodationsHoldDurationEnabled")}];
  [v3 setObject:v13 forKeyedSubscript:@"taHE"];

  v14 = MEMORY[0x1E696AD98];
  [v12 touchAccommodationsHoldDuration];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:@"taHD"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "touchAccommodationsIgnoreRepeatEnabled")}];
  [v3 setObject:v16 forKeyedSubscript:@"taIRE"];

  v17 = MEMORY[0x1E696AD98];
  [v12 touchAccommodationsIgnoreRepeatDuration];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"taIRD"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "touchAccommodationsTapActivationMethod")}];
  [v3 setObject:v19 forKeyedSubscript:@"taTAM"];

  v20 = MEMORY[0x1E696AD98];
  [v12 touchAccommodationsTapActivationTimeout];
  v21 = [v20 numberWithDouble:?];
  [v3 setObject:v21 forKeyedSubscript:@"taTAT"];

  v22 = MEMORY[0x1E696AD98];
  [v12 voiceOverDoubleTapInterval];
  v23 = [v22 numberWithDouble:?];
  [v3 setObject:v23 forKeyedSubscript:@"vodti"];

  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthRequest];
    }

    [v3 setObject:self->_forcedPasscode forKeyedSubscript:@"forcedPin"];
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isCLIMode"];
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:SFDeviceClassCodeGet()];
  [v3 setObject:v24 forKeyedSubscript:@"dclass"];

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runPreAuthRequest];
  }

  sfSession = self->_sfSession;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__SFDeviceSetupAppleTVSession__runPreAuthRequest__block_invoke;
  v26[3] = &unk_1E788B548;
  v26[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_pa" options:&unk_1F1D7D420 request:v3 responseHandler:v26];
}

- (void)_runPreAuthResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || v7)
  {
    self->_preAuthState = 3;
    if (v7)
    {
      [(SFDeviceSetupAppleTVSession *)self _reportError:v7 label:@"PreAuth"];
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"PreAuth"];
    }
  }

  else
  {
    v13 = 0;
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:error:];
    }

    self->_peerFeatureFlags = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      objc_storeStrong(&self->_appleTVModelNumber, v9);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();

    if (v11)
    {
      objc_storeStrong(&self->_appleTVModel, v11);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();

    if (v12)
    {
      objc_storeStrong(&self->_appleTVBuild, v12);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    self->_preAuthState = 4;
    [(SFDeviceSetupAppleTVSession *)self _run];
  }
}

- (int)_runPairSetupWithFlags:(unsigned int)a3
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4 && pairSetupState != 2)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          v12 = self->_pairSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v7 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      self->_pairSetupState = 1;
      v8 = mach_absolute_time();
      if (self->_isCLIMode && self->_forcedPasscode)
      {
        [(SFSession *)self->_sfSession setIsCLIMode:1];
        [(SFSession *)self->_sfSession setForcedPasscode:self->_forcedPasscode];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke;
      v13[3] = &unk_1E788F738;
      v13[4] = self;
      v13[5] = v8;
      [(SFSession *)sfSession pairSetupWithFlags:a3 | 0x80008 completion:v13];
    }
  }

  return self->_pairSetupState;
}

void __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v8 = v3;
    mach_absolute_time();
    v4 = *(a1 + 40);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 88) = v5;
    if (v8)
    {
      *(*(a1 + 32) + 80) = 3;
      [*(a1 + 32) _reportError:v8 label:@"PairSetup"];
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke_cold_1();
      }

      *(*(a1 + 32) + 80) = 4;
      v6 = *(a1 + 32);
      v7 = v6[67];
      if (v7)
      {
        (*(v7 + 16))(v6[67], 70, 0);
        v6 = *(a1 + 32);
      }

      [v6 _run];
    }

    v3 = v8;
  }
}

- (int)_runHomeKitUserInput
{
  homeKitUserInputState = self->_homeKitUserInputState;
  if (homeKitUserInputState != 4)
  {
    if (homeKitUserInputState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_homeKitUserInputState;
          }

          v9 = self->_homeKitUserInputState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v4 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runHomeKitUserInput];
      }

      self->_homeKitUserInputState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 230, 0);
      }

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetupOperation = self->_homeKitSetupOperation;
      self->_homeKitSetupOperation = v6;

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setUserInteractive:1];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPauseAfterUserInput:1];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTimeoutInSeconds:120.0];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setIsCLIMode:self->_isCLIMode];
      if (self->_promptForHomeHandler)
      {
        [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForHomeHandler:?];
      }

      if (self->_promptForRoomHandler)
      {
        [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForRoomHandler:?];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke;
      v11[3] = &unk_1E788B198;
      v11[4] = self;
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPauseHandler:v11];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_2;
      v10[3] = &unk_1E788B238;
      v10[4] = self;
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v10];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation activate];
    }
  }

  return self->_homeKitUserInputState;
}

uint64_t __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) homeKitSelectedRoomName];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 168) = 4;
  v5 = *(a1 + 32);

  return [v5 _run];
}

void __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 160))
  {
    if (!v3)
    {
      v3 = NSErrorWithOSStatusF();
      v4 = *(a1 + 32);
    }

    v5 = v3;
    *(v4 + 168) = 3;
    [*(a1 + 32) _reportError:v3 label:@"HomeKitUserInput"];
    v3 = v5;
  }
}

- (int)_runBasicConfig
{
  basicConfigState = self->_basicConfigState;
  if (basicConfigState != 4 && basicConfigState != 2)
  {
    if (basicConfigState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_basicConfigState;
          }

          v7 = self->_basicConfigState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runBasicConfig];
      }

      self->_basicConfigState = 1;
      self->_startUserWaitTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 80, 0);
      }

      [(SFDeviceSetupAppleTVSession *)self _runBasicConfigRequest];
    }
  }

  return self->_basicConfigState;
}

- (void)_runBasicConfigRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = SFDeviceSetupDeviceInfo();
  v48 = v4;
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v6 = [v5 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE68]] == 1;

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [v3 setObject:v7 forKeyedSubscript:@"eca"];

  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v9 = [v8 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]];

  if ((v9 - 1) <= 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9 == 1];
    [v3 setObject:v10 forKeyedSubscript:@"dsub"];
  }

  v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v12 = [v11 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD88]];

  if ((v12 - 1) <= 1)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12 == 1];
    [v3 setObject:v13 forKeyedSubscript:@"aasub"];
  }

  v14 = SFDeviceSetupHomeKitInfo(self->_homeManager);
  if ([(SFDeviceSetupAppleTVSession *)self _shouldSkipHomeKitSetup])
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }

    v15 = [v14 objectForKeyedSubscript:@"hkcuis"];
    if ([v15 count])
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
      }

      v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:@"hkcuis"];
      [v3 setObject:v16 forKeyedSubscript:@"hkin"];
    }
  }

  else if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"hkin"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[objc_class locationServicesEnabled](getCLLocationManagerClass_0(), "locationServicesEnabled")}];
  [v3 setObject:v17 forKeyedSubscript:@"lsEn"];

  v18 = SFDeviceSetupAppleTVLocationAuthorizationInfo();
  v47 = v18;
  if (v18)
  {
    [v3 setObject:v18 forKeyedSubscript:@"lsAI"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v19 = [MEMORY[0x1E695DF58] preferredLanguages];
  v20 = [v19 firstObject];

  if (v20)
  {
    [v3 setObject:v20 forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  if (_os_feature_enabled_impl())
  {
    v21 = [MEMORY[0x1E695DF58] preferredLanguages];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"langs"];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }

    v50 = 0;
    CFArrayGetTypeID();
    v22 = CFPrefs_CopyTypedValue();
    v23 = v22;
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"kbs"];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  v24 = [MEMORY[0x1E695DF58] currentLocale];
  v25 = [v24 localeIdentifier];

  if (v25)
  {
    [v3 setObject:v25 forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v26 = [MEMORY[0x1E695DF58] currentLocale];
  v27 = [v26 objectForKey:*MEMORY[0x1E695D9F0]];

  if (v27)
  {
    [v3 setObject:v27 forKeyedSubscript:@"tempUnit"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  OBBundleClass = getOBBundleClass();
  v29 = [(objc_class *)OBBundleClass bundleWithIdentifier:getOBPrivacyPrivacyPaneIdentifier()];
  v30 = [v29 privacyFlow];
  v31 = [v30 contentVersion];

  if (v31)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v31];
    [v3 setObject:v32 forKeyedSubscript:@"pfcv"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v33 = [(objc_class *)getAFPreferencesClass_0() sharedPreferences];
  v34 = v33;
  if (v33)
  {
    v35 = SFDeviceSetupSiriInfo(v33);
    if (v35)
    {
      [v3 addEntriesFromDictionary:v35];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v36 = [MEMORY[0x1E695DF00] date];
  [v3 setObject:v36 forKeyedSubscript:@"time"];

  v37 = *MEMORY[0x1E695E890];
  if (CFPreferencesGetAppBooleanValue(@"AppleICUForce12HourTime", *MEMORY[0x1E695E890], 0))
  {
    v38 = 12;
  }

  else if (CFPreferencesGetAppBooleanValue(@"AppleICUForce24HourTime", v37, 0))
  {
    v38 = 24;
  }

  else
  {
    v38 = 0;
  }

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  [v3 setObject:v39 forKeyedSubscript:@"timeCycle"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:softLinkTMIsAutomaticTimeEnabled() != 0];
  [v3 setObject:v40 forKeyedSubscript:@"timeAuto"];

  v41 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v42 = [v41 name];

  if (v42)
  {
    [v3 setObject:v42 forKeyedSubscript:@"tz"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  v43 = [MEMORY[0x1E696AD98] numberWithBool:softLinkTMIsAutomaticTimeZoneEnabled() != 0];
  [v3 setObject:v43 forKeyedSubscript:@"tzAuto"];

  v44 = [(SFDeviceSetupAppleTVSession *)self _videoSubscriberAccountData];
  if (v44)
  {
    [v3 setObject:v44 forKeyedSubscript:@"vsad"];
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  sfSession = self->_sfSession;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __53__SFDeviceSetupAppleTVSession__runBasicConfigRequest__block_invoke;
  v49[3] = &unk_1E788B548;
  v49[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_bc" options:0 request:v3 responseHandler:v49];
}

- (void)_runBasicConfigResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v12 = 0;
  if (v6 && !v7)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigResponse:error:];
    }

    v11 = 0;
    v9 = [(SFDeviceSetupAppleTVSession *)self _verifyiCloudMatch:CFDictionaryGetInt64() error:&v11];
    v10 = v11;
    self->_iCloudAccountMatches = v9;
    if (v10 && gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigResponse:error:];
    }

    self->_basicConfigState = 4;
    [(SFDeviceSetupAppleTVSession *)self _run];
    goto LABEL_14;
  }

  self->_basicConfigState = 3;
  if (!v7)
  {
    v10 = NSErrorWithOSStatusF();
    [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"BasicConfig"];
LABEL_14:

    goto LABEL_15;
  }

  [(SFDeviceSetupAppleTVSession *)self _reportError:v7 label:@"BasicConfig"];
LABEL_15:
}

- (int)_runTRSessionStart
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    v3 = *MEMORY[0x1E69E9858];
    FPrintF();
  }

  trSessionState = self->_trSessionState;
  if (trSessionState != 4 && trSessionState != 2)
  {
    if (!trSessionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRSessionStart];
      }

      self->_trSessionState = 1;
      v6 = objc_alloc_init(getTROperationQueueClass_2());
      trOperationQueue = self->_trOperationQueue;
      self->_trOperationQueue = v6;

      if (self->_trOperationQueue)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        trOperations = self->_trOperations;
        self->_trOperations = v8;

        if (self->_useSFSession || self->_isCLIMode)
        {
          v10 = [(SFSession *)self->_sfSession trSession];
          trSession = self->_trSession;
          self->_trSession = v10;

          if (self->_trSession)
          {
            if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceSetupAppleTVSession _runTRSessionStart];
            }

            self->_trSessionState = 4;
            goto LABEL_29;
          }

          [gLogCategory_SFDeviceSetupAppleTVSession _runTRSessionStart];
          goto LABEL_35;
        }

        v12 = self->_peerDevice;
        if (v12)
        {
          v13 = v12;
          v14 = [objc_alloc(getTRNearbyDeviceClass()) initWithRepresentedDevice:v12 supportedService:1];
          if (v14)
          {
            v15 = [objc_alloc(getTRSessionClass()) initWithNearbyDevice:v14];
            v16 = self->_trSession;
            self->_trSession = v15;

            if (self->_trSession)
            {
              v17 = objc_alloc_init(getTRNearbyDeviceScannerClass());
              if (v17)
              {
                v18 = v17;
                v19 = self->_trSession;
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v32[2] = __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke;
                v32[3] = &unk_1E788C170;
                v32[4] = self;
                [v17 openSession:v19 withCompletion:v32];

                goto LABEL_29;
              }

              [(SFDeviceSetupAppleTVSession *)v14 _runTRSessionStart];
              goto LABEL_45;
            }

            if (gLogCategory_SFDeviceSetupAppleTVSession > 90 || gLogCategory_SFDeviceSetupAppleTVSession == -1 && !_LogCategory_Initialize())
            {
LABEL_43:

LABEL_45:
              v22 = -6700;
              goto LABEL_46;
            }
          }

          else if (gLogCategory_SFDeviceSetupAppleTVSession > 90 || gLogCategory_SFDeviceSetupAppleTVSession == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_43;
          }

          [SFDeviceSetupAppleTVSession _runTRSessionStart];
          goto LABEL_43;
        }

        [(SFDeviceSetupAppleTVSession *)&v33 _runTRSessionStart];
      }

      else
      {
        [(SFDeviceSetupAppleTVSession *)&v33 _runTRSessionStart];
      }

LABEL_35:
      v22 = v33;
LABEL_46:
      self->_trSessionState = 3;
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A768];
      v25 = v22;
      v34 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v27 = v26;
      v28 = @"?";
      if (v26)
      {
        v28 = v26;
      }

      v35[0] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v30 = [v23 errorWithDomain:v24 code:v25 userInfo:v29];
      [(SFDeviceSetupAppleTVSession *)self _reportError:v30 label:@"TRSessionStart"];

      goto LABEL_29;
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_29;
        }

        v31 = self->_trSessionState;
      }

      LogPrintF();
    }
  }

LABEL_29:
  result = self->_trSessionState;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 504);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 208))
  {
    v2 = result;
    if (*(result + 48) == 1)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2_cold_1();
      }

      *(*(v2 + 32) + 204) = 4;
      v3 = *(v2 + 32);

      return [v3 _run];
    }

    else
    {
      *(v1 + 204) = 3;
      v4 = *(result + 32);
      v5 = *(v2 + 40);

      return [v4 _reportError:v5 label:@"TRSessionOpen"];
    }
  }

  return result;
}

- (int)_runTRSetupConfiguration
{
  trSetupConfigurationState = self->_trSetupConfigurationState;
  if (trSetupConfigurationState != 4 && trSetupConfigurationState != 2)
  {
    if (trSetupConfigurationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trSetupConfigurationState;
          }

          v9 = self->_trSetupConfigurationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRSetupConfiguration];
      }

      self->_trSetupConfigurationState = 1;
      self->_trSetupConfigurationStartTicks = mach_absolute_time();
      v6 = [objc_alloc(getTRSetupConfigurationOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v6];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = self;
      v11 = v6;
      v7 = v6;
      [v7 setCompletionBlock:v10];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v7];
    }
  }

  return self->_trSetupConfigurationState;
}

void __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 240);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 248) = v4;
    v9 = [*(a1 + 40) result];
    if (v9)
    {
      getTRSetupConfigurationOperationNeedsNetworkKey();
      *(*v1 + 256) = CFDictionaryGetInt64() != 0;
      getTRSetupConfigurationOperationUnauthenticatedServicesKey();
      CFSetGetTypeID();
      v5 = CFDictionaryGetTypedValue();
      v6 = *(*v1 + 33);
      *(*v1 + 33) = v5;

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 58) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 232) = 3;
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) error];
      [v7 _reportError:v8 label:@"TRSetupConfig"];
    }
  }
}

- (int)_runTRNetwork
{
  trNetworkState = self->_trNetworkState;
  if (trNetworkState != 4 && trNetworkState != 2)
  {
    if (trNetworkState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trNetworkState;
          }

          v9 = self->_trNetworkState;
        }

        LogPrintF();
      }
    }

    else if (self->_trNeedsNetwork)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRNetwork];
      }

      self->_trNetworkState = 1;
      self->_trNetworkStartTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 200, 0);
      }

      v7 = [objc_alloc(getTRNetworkOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v7];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = self;
      v11 = v7;
      v8 = v7;
      [v8 setCompletionBlock:v10];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v8];
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRNetwork];
      }

      self->_trNetworkState = 2;
    }
  }

  return self->_trNetworkState;
}

void __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 304);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 328) = v4;
    v6 = [*(a1 + 40) result];
    getTRNetworkOperationHasNetworkKey();
    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 74) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 296) = 3;
      v5 = [*(a1 + 40) error];
      if (!v5)
      {
        v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301021 userInfo:0];
      }

      [*v1 _reportError:v5 label:@"TRNetwork"];
    }
  }
}

- (int)_runWiFiSetup
{
  if (SFDeviceIsVirtualMachine())
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runWiFiSetup];
    }

    self->_wifiSetupState = 2;
  }

  else
  {
    wifiSetupState = self->_wifiSetupState;
    if (wifiSetupState != 4)
    {
      if (wifiSetupState)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
          {
            if (!_LogCategory_Initialize())
            {
              return self->_wifiSetupState;
            }

            v9 = self->_wifiSetupState;
          }

          LogPrintF();
        }
      }

      else
      {
        if (self->_isCLIMode && IsAppleInternalBuild())
        {
          v4 = *MEMORY[0x1E69E9858];
          FPrintF();
        }

        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupAppleTVSession _runWiFiSetup];
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
        if (self->_prefBonjourTest && (self->_peerFeatureFlags & 0x80) != 0)
        {
          [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSetupFlags:[(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setupFlags]| 1];
        }

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSfSession:self->_sfSession];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipReachability:self->_doCaptiveJoin];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRetryScansCount:2];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRetryJoinsCount:2];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke;
        v10[3] = &unk_1E788B238;
        v10[4] = self;
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setCompletionHandler:v10];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation activate];
      }
    }
  }

  return self->_wifiSetupState;
}

void __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 312);
  if (v7)
  {
    v13 = v3;
    if (v3)
    {
      *(v4 + 320) = 3;
      if ([v3 code] == 301009 || objc_msgSend(v13, "code") == 301000)
      {
        [*v5 _reportError:v13 label:@"WiFiSetup"];
      }

      else
      {
        v11 = *MEMORY[0x1E696A768];
        if ([v13 code] != -71157)
        {
          [v13 code];
        }

        v12 = NSErrorNestedF();
        [*v5 _reportError:v12 label:@"WiFiSetup"];
      }
    }

    else
    {
      [v7 metricTotalSeconds];
      *(*v5 + 41) = v8;
      [*(*v5 + 39) metricWiFiSetupSeconds];
      *(*v5 + 42) = v9;
      [*(*v5 + 39) metricBonjourTestSeconds];
      *(*v5 + 43) = v10;
      *(*v5 + 125) = [*(*v5 + 39) bonjourTestState];
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 80) = 4;
      [*v5 _run];
    }

    v3 = v13;
  }
}

- (int)_runCaptivePrompt
{
  captivePromptState = self->_captivePromptState;
  if (captivePromptState > 1)
  {
    if (captivePromptState == 2 || captivePromptState == 4)
    {
      return self->_captivePromptState;
    }
  }

  else
  {
    if (!captivePromptState)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v6 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (self->_wifiIsCaptive)
      {
        if (self->_promptForCaptiveNetworkHandler)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceSetupAppleTVSession _runCaptivePrompt];
          }

          self->_captivePromptState = 1;
          (*(self->_promptForCaptiveNetworkHandler + 2))();
          return self->_captivePromptState;
        }

        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupAppleTVSession _runCaptivePrompt];
        }
      }

      else if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runCaptivePrompt];
      }

      v4 = 2;
LABEL_39:
      self->_captivePromptState = v4;
      return self->_captivePromptState;
    }

    if (captivePromptState == 1)
    {
      if (self->_doCaptiveJoin)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceSetupAppleTVSession _runCaptivePrompt];
        }

        v4 = 4;
        goto LABEL_39;
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runCaptivePrompt];
      }

      return self->_captivePromptState;
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_captivePromptState;
      }

      v7 = self->_captivePromptState;
    }

    LogPrintF();
  }

  return self->_captivePromptState;
}

- (int)_runCaptiveJoin
{
  captiveJoinState = self->_captiveJoinState;
  if (captiveJoinState != 4)
  {
    if (captiveJoinState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_captiveJoinState;
          }

          v8 = self->_captiveJoinState;
        }

        LogPrintF();
      }
    }

    else if (self->_doCaptiveJoin)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v4 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runCaptiveJoin];
      }

      self->_captiveJoinState = 1;
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
      v5 = objc_alloc_init(SFDeviceOperationCNJSetup);
      captiveJoin = self->_captiveJoin;
      self->_captiveJoin = v5;

      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setSfSession:self->_sfSession];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setIsSetup:1];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setPresentingViewController:self->_presentingViewController];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = self;
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setCompletionHandler:v9];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin activate];
    }

    else
    {
      self->_captiveJoinState = 2;
    }
  }

  return self->_captiveJoinState;
}

void __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 504);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = NSErrorWithOSStatusF();
    *(*(a1 + 40) + 280) = 3;
    [*(a1 + 40) _reportError:v4 label:@"Captive Join"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2_cold_1();
    }

    [*(*(a1 + 40) + 272) metricTotalSeconds];
    *(*(a1 + 40) + 288) = v2;
    *(*(a1 + 40) + 280) = 4;
    v3 = *(a1 + 40);

    [v3 _run];
  }
}

- (int)_runTRActivation
{
  trActivationState = self->_trActivationState;
  if (trActivationState != 4 && trActivationState != 2)
  {
    if (trActivationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trActivationState;
          }

          v10 = self->_trActivationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRActivation];
      }

      self->_trActivationState = 1;
      self->_trActivationStartTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 210, 0);
      }

      v7 = [objc_alloc(getTRActivationOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v7];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke;
      v11[3] = &unk_1E788A658;
      v11[4] = self;
      v12 = v7;
      v8 = v7;
      [v8 setCompletionBlock:v11];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v8];
    }
  }

  return self->_trActivationState;
}

void __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 360);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 368) = v4;
    v6 = [*(a1 + 40) result];
    getTRActivationOperationIsActivatedKey();
    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 89) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 356) = 3;
      v5 = [*(a1 + 40) error];
      if (!v5)
      {
        v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301003 userInfo:0];
      }

      [*v1 _reportError:v5 label:@"TRActivation"];
    }
  }
}

- (int)_runTRAuthentication
{
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4 && trAuthenticationState != 2)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trAuthenticationState;
          }

          v10 = self->_trAuthenticationState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRAuthentication];
      }

      self->_trAuthenticationState = 1;
      self->_trAuthenticationStartTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 220, 0);
      }

      v7 = [objc_alloc(getTRAuthenticationOperationClass_1()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v7];
      [v7 setTargetedServices:self->_trUnauthServices];
      if (self->_presentingViewController)
      {
        [v7 setPresentingViewController:?];
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke;
      v11[3] = &unk_1E788A658;
      v11[4] = self;
      v12 = v7;
      v8 = v7;
      [v8 setCompletionBlock:v11];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v8];
    }
  }

  return self->_trAuthenticationState;
}

void __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 384);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 392) = v4;
    v6 = [*(a1 + 40) result];
    if (v6)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 94) = 4;
      [*v1 _run];
    }

    else
    {
      v5 = [*(a1 + 40) error];
      *(*(a1 + 32) + 376) = 3;
      [*(a1 + 32) _reportError:v5 label:@"TRAuth"];
    }
  }
}

- (int)_runAppleIDSetup
{
  appleIDSetupState = self->_appleIDSetupState;
  if (appleIDSetupState != 4)
  {
    if (appleIDSetupState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_appleIDSetupState;
          }

          v7 = self->_appleIDSetupState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v4 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runAppleIDSetup];
      }

      self->_appleIDSetupState = 1;
      self->_appleIDSetupStartTicks = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 224, 0);
      }

      [(SFDeviceSetupAppleTVSession *)self _runAppleIDSetupRequest];
    }
  }

  return self->_appleIDSetupState;
}

- (void)_runAppleIDSetupRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runAppleIDSetupRequest];
    }

    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isCLIMode"];
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runAppleIDSetupRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFDeviceSetupAppleTVSession__runAppleIDSetupRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_appleIDSetup" options:MEMORY[0x1E695E0F8] request:v3 responseHandler:v5];
}

- (void)_runAppleIDSetupResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  Int64 = CFDictionaryGetInt64();
  if (v6 && !v7 && Int64)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runAppleIDSetupResponse:error:];
    }

    v9 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v9)
    {
      v10 = objc_alloc_init(getAISSetupContextClass_0[0]());
      v11 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E698C218]];
      [v10 setRequiredServiceTypes:v11];

      v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E698C238], *MEMORY[0x1E698C228], 0}];
      [v10 setDesiredServiceTypes:v12];

      [v10 setShouldBackgroundDesiredServices:1];
      [v10 setLocalRole:1];
      [v10 setRemoteRole:3];
      [v10 setMessageSessionTemplate:v9];
      [v10 setIsPreEstablishedClient:1];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke;
      aBlock[3] = &unk_1E788F7F0;
      aBlock[4] = self;
      v13 = _Block_copy(aBlock);
      if (self->_presentingViewController)
      {
        v14 = [objc_alloc(getAISSetupViewControllerClass[0]()) initWithContext:v10];
        [v14 setReportHandler:v13];
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          v18 = v14;
          presentingViewController = self->_presentingViewController;
          LogPrintF();
        }

        v15 = [(UIViewController *)self->_presentingViewController navigationController:v18];
        v16 = self->_presentingViewController;
        getUINavigationControllerClass[0]();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = self->_presentingViewController;

          v15 = v17;
        }

        if (v15)
        {
          [v15 pushViewController:v14 animated:1];
        }

        else
        {
          [(UIViewController *)self->_presentingViewController presentViewController:v14 animated:1 completion:0];
        }
      }

      else
      {
        v14 = objc_alloc_init(getAISSetupControllerClass_0[0]());
        [v14 setupWithContext:v10 completionHandler:v13];
      }
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runAppleIDSetupResponse:error:];
      }

      self->_appleIDSetupState = 3;
      [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"AppleIDSetup"];
    }

    goto LABEL_29;
  }

  self->_appleIDSetupState = 3;
  if (!v7)
  {
    v9 = NSErrorWithOSStatusF();
    [(SFDeviceSetupAppleTVSession *)self _reportError:v9 label:@"AppleIDSetup"];
LABEL_29:

    goto LABEL_30;
  }

  [(SFDeviceSetupAppleTVSession *)self _reportError:v7 label:@"AppleIDSetup"];
LABEL_30:
}

void __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 504);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2;
  block[3] = &unk_1E788BD88;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2(void *a1)
{
  mach_absolute_time();
  v2 = a1 + 4;
  v3 = *(a1[4] + 136);
  UpTicksToSecondsF();
  *(a1[4] + 144) = v4;
  if (a1[5])
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2_cold_1((a1 + 4));
    }

    *(*v2 + 128) = 4;
    v5 = *v2;

    return [v5 _run];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2_cold_2(a1);
    }

    *(a1[4] + 128) = 3;
    v7 = a1[4];
    v8 = a1[6];

    return [v7 _reportError:v8 label:@"AppleIDSetup"];
  }
}

- (int)_runCDPSetup
{
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_cdpState;
          }

          v9 = self->_cdpState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v4 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runCDPSetup];
      }

      self->_cdpState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationCDPSetup);
      cdpSetupOperation = self->_cdpSetupOperation;
      self->_cdpSetupOperation = v6;

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setSfSession:self->_sfSession];
      if (self->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setPresentingViewController:?];
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke;
      v10[3] = &unk_1E788B238;
      v10[4] = self;
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setCompletionHandler:v10];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation activate];
    }
  }

  return self->_cdpState;
}

void __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 104);
  if (v7)
  {
    v9 = v3;
    if (v3)
    {
      *(v4 + 120) = 3;
      [*v5 _reportError:v3 label:@"CDPSetup"];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 14) = v8;
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 30) = 4;
      [*v5 _run];
    }

    v3 = v9;
  }
}

- (int)_runHomeKitSetup
{
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState == 4 || homeKitSetupState == 2)
  {
    return self->_homeKitSetupState;
  }

  if (homeKitSetupState)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_homeKitSetupState;
        }

        v13 = self->_homeKitSetupState;
      }

      LogPrintF();
    }
  }

  else
  {
    if ([(SFDeviceSetupAppleTVSession *)self _shouldSkipHomeKitSetup])
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runHomeKitSetup];
      }

LABEL_37:
      result = 2;
      self->_homeKitSetupState = 2;
      return result;
    }

    if (!self->_iCloudAccountMatches && ![(NSSet *)self->_trUnauthServices containsObject:&unk_1F1D7CEF8])
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceSetupAppleTVSession *)&self->_iCloudAccountMatches _runHomeKitSetup];
      }

      goto LABEL_37;
    }

    if (self->_isCLIMode && IsAppleInternalBuild())
    {
      v6 = *MEMORY[0x1E69E9858];
      FPrintF();
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runHomeKitSetup];
    }

    self->_homeKitSetupState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 234, 0);
    }

    homeKitSetupOperation = self->_homeKitSetupOperation;
    v9 = homeKitSetupOperation;
    if (!homeKitSetupOperation)
    {
      v10 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      v11 = self->_homeKitSetupOperation;
      self->_homeKitSetupOperation = v10;

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setUserInteractive:0];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setKeyExchangeOnly:1];
      v9 = self->_homeKitSetupOperation;
    }

    [(SFDeviceOperationHomeKitSetup *)v9 setPauseHandler:0];
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTrSession:self->_trSession];
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTimeoutInSeconds:60.0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke;
    v14[3] = &unk_1E788B238;
    v14[4] = self;
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v14];
    v12 = self->_homeKitSetupOperation;
    if (homeKitSetupOperation)
    {
      [(SFDeviceOperationHomeKitSetup *)v12 resume];
    }

    else
    {
      [(SFDeviceOperationHomeKitSetup *)v12 activate];
    }
  }

  return self->_homeKitSetupState;
}

void __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = *(v5 + 160);
  if (v6)
  {
    v16 = v3;
    [v6 metricNonUserSeconds];
    *(*v4 + 22) = v7;
    v8 = *v4;
    v9 = [*(*v4 + 20) homeKitHomeManager];
    v10 = [v9 homes];
    [v8 _setNumberOfDevicesOnAccount:v10];

    v11 = *v4;
    if (v16)
    {
      if (*(v11 + 154) == 1)
      {
        *(v11 + 43) = 3;
        [*v4 _reportError:v16 label:@"HomeKitSetup"];
LABEL_14:
        v3 = v16;
        goto LABEL_15;
      }

      [v11 _reportErrorMetrics:? errorLabel:? isFatal:?];
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke_cold_1();
      }

      v14 = *v4;
      v15 = 2;
    }

    else
    {
      v12 = [*(v11 + 20) homeKitSelectedRoomName];
      v13 = *(*v4 + 23);
      *(*v4 + 23) = v12;

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke_cold_2(v4);
      }

      v14 = *v4;
      v15 = 4;
    }

    v14[43] = v15;
    [*v4 _run];
    goto LABEL_14;
  }

LABEL_15:
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
      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupEstimate];
      return self->_tvLatencySetupState;
    }
  }

  else
  {
    if (!tvLatencySetupState)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v4 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupRequest];
      return self->_tvLatencySetupState;
    }

    if (tvLatencySetupState == 2)
    {
      return self->_tvLatencySetupState;
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_tvLatencySetupState;
      }

      v6 = self->_tvLatencySetupState;
    }

    LogPrintF();
  }

  return self->_tvLatencySetupState;
}

- (void)_runTVLatencySetupRequest
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runTVLatencySetupRequest];
  }

  [(SFDeviceSetupAppleTVSession *)self _reportProgress:260 info:0];
  self->_tvLatencySetupState = 10;
  sfSession = self->_sfSession;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke;
  v4[3] = &unk_1E788B548;
  v4[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_tvlS" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v4];
}

void __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke_cold_1();
    }

    v9 = 2;
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke_cold_2();
    }

    v9 = 11;
  }

  *(*(a1 + 32) + 416) = v9;
  [*(a1 + 32) _run];
}

- (void)_runTVLatencySetupEstimate
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runTVLatencySetupEstimate];
  }

  self->_tvLatencySetupState = 12;
  v3 = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (v3)
  {
    v4 = [objc_alloc(getTVLAudioLatencyEstimatorClass_0()) initWithMessageSession:v3];
    objc_storeStrong(&self->_tvLatencyEstimator, v4);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke;
    v10 = &unk_1E788B598;
    v11 = self;
    v12 = v4;
    v5 = v4;
    [v5 setProgressEventHandler:&v7];
    [v5 activate];
    [v5 estimate];
  }

  else
  {
    v6 = NSErrorWithOSStatusF();
    [(SFDeviceSetupAppleTVSession *)self _reportError:v6 label:@"TVLatencySetup"];
    self->_tvLatencySetupState = 3;
  }
}

void __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 504);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke_2;
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

uint64_t __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke_2(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 408))
  {
    return [*(result + 40) _runTVLatencySetupProgressEvent:*(result + 56) info:*(result + 48)];
  }

  return result;
}

- (void)_runTVLatencySetupProgressEvent:(unint64_t)a3 info:(id)a4
{
  v6 = a4;
  v16 = v6;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v7 = _LogCategory_Initialize(), v6 = v16, v7))
    {
      v14 = a3;
      v15 = v6;
      LogPrintF();
      v6 = v16;
    }
  }

  if (a3 > 1)
  {
    switch(a3)
    {
      case 2uLL:
        v8 = self;
        v9 = 274;
        break;
      case 3uLL:
        [(SFDeviceSetupAppleTVSession *)self _reportProgress:272 info:v16];
        v12 = self;
        v13 = 4;
        goto LABEL_16;
      case 4uLL:
        v8 = self;
        v9 = 276;
        break;
      default:
        goto LABEL_20;
    }

    [(SFDeviceSetupAppleTVSession *)v8 _reportProgress:v9 info:v16, v14, v15];
    v12 = self;
    v13 = 2;
LABEL_16:
    [(SFDeviceSetupAppleTVSession *)v12 _runTVLatencySetupEnded:v13, v14, v15];
    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_20;
    }

    v10 = self;
    v11 = 277;
  }

  else
  {
    v10 = self;
    v11 = 270;
  }

  [(SFDeviceSetupAppleTVSession *)v10 _reportProgress:v11 info:v16, v14, v15];
LABEL_19:
  v6 = v16;
LABEL_20:
}

- (void)_runTVLatencySetupEnded:(int)a3
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runTVLatencySetupEnded:a3];
  }

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  if (self->_tvLatencySetupState == 12)
  {
    self->_tvLatencySetupState = a3;

    [(SFDeviceSetupAppleTVSession *)self _run];
  }
}

- (int)_runTRCompletion
{
  trCompletionState = self->_trCompletionState;
  if (trCompletionState != 4 && trCompletionState != 2)
  {
    if (trCompletionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_trCompletionState;
          }

          v9 = self->_trCompletionState;
        }

        LogPrintF();
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runTRCompletion];
      }

      self->_trCompletionState = 1;
      self->_trCompletionStartTicks = mach_absolute_time();
      v6 = [objc_alloc(getTRCompletionOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v6];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = self;
      v11 = v6;
      v7 = v6;
      [v7 setCompletionBlock:v10];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v7];
    }
  }

  return self->_trCompletionState;
}

void __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    v3 = *(*(a1 + 32) + 424);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 432) = v4;
    v6 = [*(a1 + 40) result];
    if (v6)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 105) = 4;
      [*v1 _run];
    }

    else
    {
      v5 = [*(a1 + 40) error];
      *(*(a1 + 32) + 420) = 3;
      [*(a1 + 32) _reportError:v5 label:@"TRCompletion"];
    }
  }
}

- (int)_runFinish:(BOOL)a3
{
  result = self->_finishState;
  if (!result)
  {
    if (!a3)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        v5 = *MEMORY[0x1E69E9858];
        FPrintF();
      }

      if (self->_userWaitSeconds == 0.0)
      {
        mach_absolute_time();
        startUserWaitTicks = self->_startUserWaitTicks;
        UpTicksToSecondsF();
        self->_userWaitSeconds = v7;
      }

      v8 = *MEMORY[0x1E695E4D0];
      CFPrefs_SetValue();
      notify_post("com.apple.Sharing.prefsChanged");
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runFinish:];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 96, 0);
      }
    }

    self->_finishState = 4;
    if (!self->_metricsReported)
    {
      self->_metricsReported = 1;
      [(SFDeviceSetupAppleTVSession *)self _reportMainMetrics:0 errorLabel:@"NoErr" userWaitSeconds:self->_userWaitSeconds];
    }

    [(SFDeviceSetupAppleTVSession *)self _cleanup];
    return self->_finishState;
  }

  return result;
}

- (void)_homeKitUpdateiCloudSwitchState:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  dispatch_async(dispatchQueue, block);
}

void __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_cold_1(a1);
  }

  v2 = [objc_alloc(getHMHomeManagerClass_1()) initWithOptions:0];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2;
  v5[3] = &unk_1E788F818;
  v7 = v3;
  v6 = v2;
  v4 = v2;
  [v4 updateiCloudSwitchState:v3 completionHandler:v5];
}

void __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90)
    {
      v7 = v3;
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_1(a1);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    v7 = 0;
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_2(a1);
      goto LABEL_13;
    }
  }
}

- (id)_videoSubscriberAccountData
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v2 = [(objc_class *)getVSAccountSerializationCenterClass() defaultSerializationCenter];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke;
    v9[3] = &unk_1E788F860;
    v11 = &v12;
    v4 = v3;
    v10 = v4;
    v5 = [v2 exportDataWithCompletionHandler:v9];
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v4, v6) && gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke_cold_2();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_verifyiCloudMatch:(unint64_t)a3 error:(id *)a4
{
  v7 = SFMyAltDSID();
  v8 = [v7 UTF8String];

  if (v8)
  {
    v9 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v10 = v9;
    if (v9)
    {
      [v9 bytes];
      strlen(v8);
      if (SipHash() == a3)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_5;
      }
    }

    v12 = NSErrorWithOSStatusF();
  }

  else
  {
    v12 = NSErrorWithOSStatusF();
    v10 = 0;
  }

  v11 = v12 != 0;
  if (a4 && v12)
  {
    v14 = v12;
    *a4 = v12;
    v11 = 1;
  }

LABEL_5:

  return !v11;
}

- (void)_reportMainMetrics:(id)a3 errorLabel:(id)a4 userWaitSeconds:(double)a5
{
  v42[12] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 code];
  v11 = [v8 domain];
  v12 = [v8 underlyingErrors];
  v13 = [v12 firstObject];
  v38 = [v13 code];

  v14 = [v8 underlyingErrors];
  v15 = [v14 firstObject];
  v16 = [v15 domain];
  v17 = v16;
  v18 = @"NoUnderlyingError";
  if (v16)
  {
    v18 = v16;
  }

  v40 = v18;

  v19 = [(NSUUID *)self->_sessionID UUIDString];
  v41[0] = @"AppleTVModel";
  v41[1] = @"AppleTVSetupDeviceBuild";
  appleTVBuild = self->_appleTVBuild;
  appleTVModel = self->_appleTVModel;
  if (!appleTVModel)
  {
    appleTVModel = @"Unknown";
  }

  if (!appleTVBuild)
  {
    appleTVBuild = @"Unknown";
  }

  v42[0] = appleTVModel;
  v42[1] = appleTVBuild;
  v41[2] = @"errorCode";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v23 = v22;
  if (v11)
  {
    v24 = v11;
  }

  else
  {
    v24 = @"Unknown";
  }

  v42[2] = v22;
  v42[3] = v24;
  v41[3] = @"errorDomain";
  v41[4] = @"errorLabel";
  v39 = v9;
  if (v9)
  {
    v25 = v9;
  }

  else
  {
    v25 = @"Unknown";
  }

  v42[4] = v25;
  v41[5] = @"isPreFlightLabel";
  v26 = MEMORY[0x1E696AD98];
  if (v8)
  {
    v27 = [(SFDeviceSetupAppleTVSession *)self _isPreflightError:v8];
  }

  else
  {
    v27 = 0;
  }

  v28 = [v26 numberWithInt:v27];
  v42[5] = v28;
  v41[6] = @"numberOfAppleTVsOnAccount";
  v29 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfAppleTVsOnAccount];
  v42[6] = v29;
  v41[7] = @"numberOfHomePodsOnAccount";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfAppleTVsOnAccount];
  v31 = v30;
  if (v19)
  {
    v32 = v19;
  }

  else
  {
    v32 = @"Unknown";
  }

  v42[7] = v30;
  v42[8] = v32;
  v41[8] = @"sessionIdentifier";
  v41[9] = @"underlyingErrorCode";
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  v42[9] = v33;
  v42[10] = v40;
  v41[10] = @"underlyingErrorDomain";
  v41[11] = @"userWaitTimeMs";
  v34 = a5 * 1000.0;
  if (a5 == 0.0)
  {
    v34 = 0.0;
  }

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v34];
  v42[11] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:12];

  SFMetricsLog(@"com.apple.tvos.tvsetup.main", v36);
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _reportMainMetrics:errorLabel:userWaitSeconds:];
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)_reportErrorMetrics:(id)a3 errorLabel:(id)a4 isFatal:(BOOL)a5
{
  v46 = a5;
  v56[14] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 code];
  v10 = [v7 domain];
  v11 = [v7 underlyingErrors];
  v12 = [v11 firstObject];

  v47 = [v12 code];
  v13 = [v12 domain];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"NoUnderlyingError";
  }

  v54 = v15;

  v49 = v12;
  v16 = [v12 underlyingErrors];
  v17 = [v16 firstObject];

  v45 = [v17 code];
  v18 = [v17 domain];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"NoUnderlyingError";
  }

  v53 = v20;

  v21 = [v17 underlyingErrors];
  v22 = [v21 firstObject];

  v44 = [v22 code];
  v48 = v22;
  v23 = [v22 domain];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"NoUnderlyingError";
  }

  v52 = v25;

  v26 = [(NSUUID *)self->_sessionID UUIDString];
  v55[0] = @"AppleTVModel";
  v55[1] = @"AppleTVSetupDeviceBuild";
  appleTVBuild = self->_appleTVBuild;
  appleTVModel = self->_appleTVModel;
  if (!appleTVModel)
  {
    appleTVModel = @"Unknown";
  }

  if (!appleTVBuild)
  {
    appleTVBuild = @"Unknown";
  }

  v56[0] = appleTVModel;
  v56[1] = appleTVBuild;
  v55[2] = @"errorCode";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v30 = v29;
  v50 = v10;
  v51 = v8;
  if (v10)
  {
    v31 = v10;
  }

  else
  {
    v31 = @"Unknown";
  }

  v56[2] = v29;
  v56[3] = v31;
  v55[3] = @"errorDomain";
  v55[4] = @"errorLabel";
  if (v8)
  {
    v32 = v8;
  }

  else
  {
    v32 = @"Unknown";
  }

  v56[4] = v32;
  v55[5] = @"isFatalError";
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v46];
  v56[5] = v33;
  v55[6] = @"isPreFlight";
  v34 = MEMORY[0x1E696AD98];
  if (v7)
  {
    v35 = [(SFDeviceSetupAppleTVSession *)self _isPreflightError:v7];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v34 numberWithInt:v35];
  v37 = v36;
  if (v26)
  {
    v38 = v26;
  }

  else
  {
    v38 = @"Unknown";
  }

  v56[6] = v36;
  v56[7] = v38;
  v55[7] = @"sessionIdentifier";
  v55[8] = @"underlyingErrorCode1";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
  v56[8] = v39;
  v56[9] = v54;
  v55[9] = @"underlyingErrorDomain1";
  v55[10] = @"underlyingErrorCode2";
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
  v56[10] = v40;
  v56[11] = v53;
  v55[11] = @"underlyingErrorDomain2";
  v55[12] = @"underlyingErrorCode3";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:v44];
  v55[13] = @"underlyingErrorDomain3";
  v56[12] = v41;
  v56[13] = v52;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:14];

  SFMetricsLog(@"com.apple.tvos.tvsetup.errors", v42);
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _reportErrorMetrics:errorLabel:isFatal:];
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_setNumberOfDevicesOnAccount:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *&self->_numberOfAppleTVsOnAccount = 0;
  obj = v4;
  if (v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v24 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      p_numberOfAppleTVsOnAccount = &self->_numberOfAppleTVsOnAccount;
      p_numberOfHomePodsOnAccount = &self->_numberOfHomePodsOnAccount;
      v23 = *v31;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v7;
          v8 = *(*(&v30 + 1) + 8 * v7);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = [v8 accessories];
          v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v27;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v27 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v26 + 1) + 8 * i) category];
                v15 = [v14 categoryType];

                v16 = getHMAccessoryCategoryTypeHomePod_1();
                v17 = [v15 isEqualToString:v16];

                v18 = p_numberOfHomePodsOnAccount;
                if ((v17 & 1) != 0 || (getHMAccessoryCategoryTypeAppleTV_0(), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v15 isEqualToString:v19], v19, v18 = p_numberOfAppleTVsOnAccount, v20))
                {
                  ++*v18;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v11);
          }

          v7 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    v45 = [(SFSession *)self->_sfSession identifier];
    LogPrintF();
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = [(SFDeviceSetupAppleTVSession *)self _runPreflightWiFi];
    if (v3 == 4 || v3 == 2)
    {
      v5 = [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
      if (v5 == 4 || v5 == 2)
      {
        if (self->_appleIDSetupEnabled || ((v7 = [(SFDeviceSetupAppleTVSession *)self _runPreflightiTunes], v7 != 4) ? (v8 = v7 == 2) : (v8 = 1), v8))
        {
          v9 = [(SFDeviceSetupAppleTVSession *)self _runPreflightHomeKit];
          if (v9 == 4 || v9 == 2)
          {
            if (!self->_useSFSession && !self->_isCLIMode)
            {
              goto LABEL_61;
            }

            v11 = [(SFDeviceSetupAppleTVSession *)self _runSFSessionStart];
            if (v11 == 4 || v11 == 2)
            {
              v13 = [(SFDeviceSetupAppleTVSession *)self _runPreAuth];
              if (v13 == 4 || v13 == 2)
              {
                v15 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitHH2Check];
                if (v15 == 4 || v15 == 2)
                {
                  v17 = [(SFDeviceSetupAppleTVSession *)self _runPairSetupWithFlags:0];
                  if (v17 == 4 || v17 == 2)
                  {
                    if (!self->_homeKitDoFullSetup && !self->_isCLIMode || ((v19 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitUserInput], v19 != 4) ? (v20 = v19 == 2) : (v20 = 1), v20))
                    {
                      v21 = [(SFDeviceSetupAppleTVSession *)self _runBasicConfig];
                      if (v21 == 4 || v21 == 2)
                      {
LABEL_61:
                        v23 = [(SFDeviceSetupAppleTVSession *)self _runTRSessionStart];
                        if (v23 == 4 || v23 == 2)
                        {
                          v25 = [(SFDeviceSetupAppleTVSession *)self _runTRSetupConfiguration];
                          if (v25 == 4 || v25 == 2)
                          {
                            v27 = v25;
                            if (!SFDeviceIsVirtualMachine())
                            {
                              v27 = [(SFDeviceSetupAppleTVSession *)self _runWiFiSetup];
                            }

                            if (v27 == 4 || v27 == 2)
                            {
                              if (!self->_doCaptiveJoin || ((v29 = [(SFDeviceSetupAppleTVSession *)self _runCaptiveJoin], v29 != 4) ? (v30 = v29 == 2) : (v30 = 1), v30))
                              {
                                v31 = [(SFDeviceSetupAppleTVSession *)self _runTRActivation];
                                if (v31 == 4 || v31 == 2)
                                {
                                  if (self->_appleIDSetupEnabled && (self->_peerFeatureFlags & 0x8000) != 0)
                                  {
                                    v37 = [(SFDeviceSetupAppleTVSession *)self _runAppleIDSetup];
                                    if (v37 != 2 && v37 != 4)
                                    {
                                      return;
                                    }
                                  }

                                  else
                                  {
                                    v33 = [(SFDeviceSetupAppleTVSession *)self _runTRAuthentication];
                                    if (v33 != 4 && v33 != 2)
                                    {
                                      return;
                                    }

                                    if (self->_cdpEnabled && (self->_peerFeatureFlags & 0x10) != 0)
                                    {
                                      v35 = [(SFDeviceSetupAppleTVSession *)self _runCDPSetup];
                                      if (v35 != 4 && v35 != 2)
                                      {
                                        return;
                                      }
                                    }
                                  }

                                  if ((!self->_useSFSession || !self->_homeKitDoKeyExchange && !self->_homeKitDoFullSetup) && !self->_isCLIMode || ((v39 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitSetup], v39 != 4) ? (v40 = v39 == 2) : (v40 = 1), v40))
                                  {
                                    if (!self->_tvLatencyEnabled || (self->_peerFeatureFlags & 0x40) == 0 || ((v41 = [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetup], v41 != 4) ? (v42 = v41 == 2) : (v42 = 1), v42))
                                    {
                                      v43 = [(SFDeviceSetupAppleTVSession *)self _runTRCompletion];
                                      if (v43 == 4 || v43 == 2)
                                      {

                                        [(SFDeviceSetupAppleTVSession *)self _runFinish:0];
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runTRSessionStart
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (uint64_t)_runTRSessionStart
{
  v1 = result;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 90)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = -6700;
  return result;
}

uint64_t __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2_cold_1(uint64_t a1)
{
  *(*a1 + 256);
  v3 = *(*a1 + 264);
  v2 = *(*a1 + 248);
  return LogPrintF();
}

uint64_t __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(*a1 + 500);
  if (v1 <= 7)
  {
    v2 = off_1E788F880[v1];
  }

  v5 = *(*a1 + 336);
  v6 = *(*a1 + 344);
  v4 = *(*a1 + 328);
  return LogPrintF();
}

- (uint64_t)_runHomeKitSetup
{
  *a1;
  v3 = *a2;
  return LogPrintF();
}

- (uint64_t)_runTVLatencySetupEnded:(unsigned int)a1 .cold.1(unsigned int a1)
{
  if (a1 <= 7)
  {
    v1 = off_1E788F880[a1];
  }

  return LogPrintF();
}

uint64_t __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_1(uint64_t a1)
{
  *(a1 + 40);
  [*(a1 + 32) status];
  return LogPrintF();
}

@end