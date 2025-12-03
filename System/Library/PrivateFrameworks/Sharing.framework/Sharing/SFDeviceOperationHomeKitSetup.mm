@interface SFDeviceOperationHomeKitSetup
- (BOOL)_isOwnerOfHome:(id)home;
- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error;
- (SFDeviceOperationHomeKitSetup)init;
- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group;
- (id)_mediaSystemForAccessory:(id)accessory;
- (id)_normalizedString:(id)string;
- (id)_runHomeKitAutoSelectHome:(BOOL)home;
- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions;
- (id)findTVs;
- (void)_cleanup;
- (void)_completeWithError:(id)error;
- (void)_removeAccessoryIfNeeded;
- (void)_removeSimilarRoomNames:(id)names home:(id)home;
- (void)_restoreHomeApp;
- (void)_run;
- (void)_runHomeKitAddAccessory;
- (void)_runHomeKitAddAppData;
- (void)_runHomeKitAddHome;
- (void)_runHomeKitAssignRoom;
- (void)_runHomeKitDeviceSetup;
- (void)_runHomeKitSelectRoom;
- (void)_runHomeKitSetupRoom:(BOOL)room;
- (void)_runHomeKitUpdateAppleTVAudioDestination;
- (void)_runInit;
- (void)_runPersonalRequestsStart;
- (void)_runUpdateUserListeningHistoryStart;
- (void)_startTimeout:(double)timeout;
- (void)_updateAccount;
- (void)_updateHomeStats;
- (void)activate;
- (void)homeAppInstallChoice:(BOOL)choice;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
- (void)reselectHome;
- (void)resume;
- (void)selectHome:(id)home;
- (void)selectRoom:(id)room;
@end

@implementation SFDeviceOperationHomeKitSetup

- (SFDeviceOperationHomeKitSetup)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceOperationHomeKitSetup;
  v2 = [(SFDeviceOperationHomeKitSetup *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_timeoutInSeconds = 300.0;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceOperationHomeKitSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceOperationHomeKitSetup_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __41__SFDeviceOperationHomeKitSetup_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceOperationHomeKitSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __43__SFDeviceOperationHomeKitSetup_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF();
  [v1 _completeWithError:v2];
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  pauseHandler = self->_pauseHandler;
  self->_pauseHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;

  promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
  self->_promptToInstallHomeAppHandler = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  self->_active = 0;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  homeKitHomeManager = self->_homeKitHomeManager;
  self->_homeKitHomeManager = 0;

  [(HMAccessoryBrowser *)self->_homeKitBrowser stopSearchingForNewAccessories];
  homeKitBrowser = self->_homeKitBrowser;
  self->_homeKitBrowser = 0;

  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation cancel];
  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:0];
  homeKitAccessory = self->_homeKitAccessory;
  self->_homeKitAccessory = 0;

  homeKitSelectedHome = self->_homeKitSelectedHome;
  self->_homeKitSelectedHome = 0;

  homeKitSelectedRoom = self->_homeKitSelectedRoom;
  self->_homeKitSelectedRoom = 0;
}

- (void)_removeAccessoryIfNeeded
{
  if (self->_homeKitAddedAccessory)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    homeKitAccessory = self->_homeKitAccessory;

    [(HMHome *)homeKitSelectedHome removeAccessory:homeKitAccessory completionHandler:&__block_literal_global_44];
  }
}

void __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      v6 = v2;
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_1();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    v6 = 0;
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_2();
      goto LABEL_13;
    }
  }
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  v13 = errorCopy;
  if (self->_homeKitHomeManager && self->_isCLIMode && self->_hdsutilHKToken)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _completeWithError:];
    }

    [(HMHomeManager *)self->_homeKitHomeManager _endActiveAssertion:self->_hdsutilHKToken];
    errorCopy = v13;
  }

  if (self->_active)
  {
    if (errorCopy)
    {
      self->_state = 3;
      [(SFDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
      if ([v13 code] == -6723)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _completeWithError:];
        }
      }

      else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _completeWithError:];
      }
    }

    else
    {
      mach_absolute_time();
      startTicks = self->_startTicks;
      UpTicksToSecondsF();
      v7 = v6;
      if (gLogCategory_SFDeviceOperationHomeKitSetup >= 31)
      {
        self->_metricNonUserSeconds = v6 + self->_metricNonUserSeconds;
        self->_state = 4;
        goto LABEL_26;
      }

      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        [SFDeviceOperationHomeKitSetup _completeWithError:];
      }

      v8 = gLogCategory_SFDeviceOperationHomeKitSetup;
      metricNonUserSeconds = v7 + self->_metricNonUserSeconds;
      self->_metricNonUserSeconds = metricNonUserSeconds;
      self->_state = 4;
      if (v8 <= 30)
      {
        if (v8 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          metricNonUserSeconds = self->_metricNonUserSeconds;
        }

        v11 = metricNonUserSeconds;
        metricUserSeconds = self->_metricUserSeconds;
        LogPrintF();
      }
    }
  }

LABEL_26:
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v13);
  }

  [(SFDeviceOperationHomeKitSetup *)self _cleanup:*&v11];
}

- (void)homeAppInstallChoice:(BOOL)choice
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke;
  v4[3] = &unk_1E788B700;
  v4[4] = self;
  choiceCopy = choice;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke_cold_1(v2);
    }

    *(*(v2 + 32) + 72) = 1;
    if (*(v2 + 40) == 1)
    {
      [*(v2 + 32) _restoreHomeApp];
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)resume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceOperationHomeKitSetup_resume__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SFDeviceOperationHomeKitSetup_resume__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup >= 31)
    {
      *(v2 + 9) = 0;
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        __39__SFDeviceOperationHomeKitSetup_resume__block_invoke_cold_1();
      }

      v4 = gLogCategory_SFDeviceOperationHomeKitSetup;
      *(*(v3 + 32) + 9) = 0;
      if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
      {
        __39__SFDeviceOperationHomeKitSetup_resume__block_invoke_cold_2();
      }
    }

    *(*(v3 + 32) + 16) = mach_absolute_time();
    [*(v3 + 32) _startTimeout:*(*(v3 + 32) + 384)];
    v5 = *(v3 + 32);

    return [v5 _run];
  }

  return result;
}

- (void)selectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_1();
    }

    mach_absolute_time();
    v2 = *(*(a1 + 32) + 16);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 248) = v3 + *(*(a1 + 32) + 248);
    if ([*(a1 + 32) _isOwnerOfHome:*(a1 + 40)])
    {
      objc_storeStrong((*(a1 + 32) + 208), *(a1 + 40));
      *(*(a1 + 32) + 16) = mach_absolute_time();
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_2();
      }

      [*(a1 + 32) _startTimeout:*(*(a1 + 32) + 384)];
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v16 = NSErrorWithOSStatusF();
      v5 = [v16 userInfo];
      v6 = [v5 mutableCopy];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v9 = v8;

      v10 = [*(a1 + 40) name];
      [v9 setObject:v10 forKeyedSubscript:@"SFErrorKeyHomeName"];

      v11 = [*(a1 + 40) owner];
      v12 = [v11 name];
      [v9 setObject:v12 forKeyedSubscript:@"SFErrorKeyHomeOwnerAccount"];

      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v14 = [v16 domain];
      v15 = [v13 initWithDomain:v14 code:objc_msgSend(v16 userInfo:{"code"), v9}];

      [*(a1 + 32) _completeWithError:v15];
    }
  }
}

- (void)reselectHome
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 96) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)selectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_1(v2);
    }

    mach_absolute_time();
    v3 = *(*(v2 + 32) + 16);
    UpTicksToSecondsF();
    *(*(v2 + 32) + 248) = v4 + *(*(v2 + 32) + 248);
    *(*(v2 + 32) + 16) = mach_absolute_time();
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_2();
    }

    objc_storeStrong((*(v2 + 32) + 216), *(v2 + 40));
    [*(v2 + 32) _startTimeout:*(*(v2 + 32) + 384)];
    v5 = *(v2 + 32);

    return [v5 _run];
  }

  return result;
}

- (void)_startTimeout:(double)timeout
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v6 = timeoutTimer;
    dispatch_source_cancel(v6);
    v7 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v9 = self->_timeoutTimer;
  self->_timeoutTimer = v8;

  v10 = self->_timeoutTimer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SFDeviceOperationHomeKitSetup__startTimeout___block_invoke;
  v11[3] = &unk_1E788B260;
  v11[4] = self;
  *&v11[5] = timeout;
  dispatch_source_set_event_handler(v10, v11);
  SFDispatchTimerSet(self->_timeoutTimer, timeout, -1.0, -4.0);
  dispatch_resume(self->_timeoutTimer);
}

void __47__SFDeviceOperationHomeKitSetup__startTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32) - 10;
  if (v2 > 0x24)
  {
    v3 = "HomeKitSetupUnknownState?";
  }

  else
  {
    v3 = off_1E788F478[v2];
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 40);
    LogPrintF();
  }

  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = *(a1 + 32);
  v10 = NSErrorWithOSStatusF();
  [v8 _completeWithError:{v10, v3}];
}

- (void)_run
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A768];
  v4 = *MEMORY[0x1E696A578];
  state = self->_state;
  while (2)
  {
    switch(state)
    {
      case 0:
        self->_state = 10;
        [(SFDeviceOperationHomeKitSetup *)self _runInit];
        goto LABEL_121;
      case 10:
        if (self->_homeKitHomeManagerReady)
        {
          v6 = 11;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 11:
        v6 = 12;
        goto LABEL_120;
      case 12:
        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 5)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          SFMetricsLog(@"com.apple.sharing.HomeResetRequired", MEMORY[0x1E695E0F8]);
          v18 = MEMORY[0x1E696ABC0];
          v38 = v4;
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v20 = v19;
          v21 = @"?";
          if (v19)
          {
            v21 = v19;
          }

          v39[0] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
          v23 = 301024;
          v24 = v18;
          v25 = v3;
LABEL_112:
          v31 = [v24 errorWithDomain:v25 code:v23 userInfo:v22];
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v31];

          goto LABEL_121;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 2)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          SFMetricsLog(@"com.apple.sharing.HomeKitKeychainNotEnabled", MEMORY[0x1E695E0F8]);
          v28 = MEMORY[0x1E696ABC0];
          v36 = v4;
          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v20 = v29;
          v30 = @"?";
          if (v29)
          {
            v30 = v29;
          }

          v37 = v30;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v24 = v28;
          v25 = v3;
          v23 = 301011;
          goto LABEL_112;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager isDataSyncInProgress])
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(SFDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else if ([(HMHomeManager *)self->_homeKitHomeManager status])
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(SFDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          v6 = 13;
LABEL_120:
          self->_state = v6;
        }

LABEL_121:
        v32 = self->_state == state;
        state = self->_state;
        if (!v32)
        {
          continue;
        }

        v34 = *MEMORY[0x1E69E9840];
        return;
      case 13:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_66;
        }

        v6 = 14;
        goto LABEL_120;
      case 14:
        if (!self->_promptToInstallHomeAppHandler)
        {
          goto LABEL_48;
        }

        v11 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.Home"];
        appState = [v11 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          goto LABEL_48;
        }

        self->_state = 15;
        promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
        goto LABEL_40;
      case 15:
        if (self->_homeAppInstallUserDidChoose)
        {
LABEL_48:
          v6 = 16;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 16:
        v16 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:0];
        homeKitSelectedHome = self->_homeKitSelectedHome;
        self->_homeKitSelectedHome = v16;

        if (!self->_homeKitSelectedHome)
        {
          goto LABEL_121;
        }

        goto LABEL_74;
      case 17:
        if (self->_homeKitSelectedHome)
        {
          goto LABEL_74;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 18:
        if (self->_homeKitSelectedHome)
        {
LABEL_74:
          v6 = 19;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 19:
        [(SFDeviceOperationHomeKitSetup *)self _updateHomeStats];
        self->_state = 20;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitSelectRoom];
        goto LABEL_121;
      case 20:
        if (self->_reselectHome)
        {
          self->_reselectHome = 0;
          v14 = self->_homeKitSelectedHome;
          self->_homeKitSelectedHome = 0;

          self->_state = 17;
          v15 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:1];
          goto LABEL_121;
        }

        if (self->_homeKitSelectedRoom || self->_homeKitSelectedRoomName)
        {
          v6 = 21;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 21:
        if (!self->_pauseAfterUserInput || !self->_pauseHandler)
        {
          goto LABEL_66;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v8 = timeoutTimer;
          dispatch_source_cancel(v8);
          v9 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        self->_paused = 1;
        self->_state = 22;
        promptToInstallHomeAppHandler = self->_pauseHandler;
LABEL_40:
        promptToInstallHomeAppHandler[2]();
        goto LABEL_121;
      case 22:
        if (!self->_paused)
        {
LABEL_66:
          v6 = 23;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 23:
        self->_state = 24;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
        goto LABEL_121;
      case 24:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 25:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_91;
        }

        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddAccessory];
        goto LABEL_121;
      case 26:
        if (self->_homeKitAddedAccessory)
        {
          v6 = 27;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 27:
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitSetupRoom:0];
        goto LABEL_121;
      case 28:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 29:
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAssignRoom];
        goto LABEL_121;
      case 30:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 31:
        if (self->_stereoRole)
        {
          v6 = 34;
        }

        else if (self->_tvAudioInput)
        {
LABEL_119:
          v6 = 37;
        }

        else if (self->_appDataSelf)
        {
          v6 = 32;
        }

        else
        {
LABEL_87:
          v6 = 40;
        }

        goto LABEL_120;
      case 32:
        self->_state = 33;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddAppData];
        goto LABEL_121;
      case 33:
        if (self->_homeKitAddedAppData)
        {
          goto LABEL_87;
        }

        goto LABEL_121;
      case 34:
        v35 = 0;
        v26 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitConfigureStereoPairAndReturnError:&v35];
        v27 = v35;
        if (v27)
        {
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v27];
        }

        else
        {
          if (v26)
          {
            v33 = 35;
          }

          else
          {
            v33 = 36;
          }

          self->_state = v33;
        }

        goto LABEL_121;
      case 35:
        if (!self->_configuredStereoPair)
        {
          goto LABEL_121;
        }

        v6 = 36;
        goto LABEL_120;
      case 36:
        goto LABEL_119;
      case 37:
        if (!self->_tvAudioInput)
        {
          goto LABEL_57;
        }

        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitUpdateAppleTVAudioDestination];
        v6 = 38;
        goto LABEL_120;
      case 38:
        if (!self->_configuredTVAudio)
        {
          goto LABEL_121;
        }

LABEL_57:
        v6 = 39;
        goto LABEL_120;
      case 39:
        goto LABEL_87;
      case 40:
        self->_state = 41;
        [(SFDeviceOperationHomeKitSetup *)self _runPersonalRequestsStart];
        goto LABEL_121;
      case 41:
        if (!self->_personalRequestsDone)
        {
          goto LABEL_121;
        }

        v6 = 42;
        goto LABEL_120;
      case 42:
        self->_state = 43;
        [(SFDeviceOperationHomeKitSetup *)self _runUpdateUserListeningHistoryStart];
        goto LABEL_121;
      case 43:
        if (!self->_userListeningHistoryDone)
        {
          goto LABEL_121;
        }

        if (self->_psgHomePods && self->_psgStereoPairs)
        {
          v6 = 44;
        }

        else
        {
LABEL_91:
          v6 = 46;
        }

        goto LABEL_120;
      case 44:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_91;
      case 45:
        if (!self->_createUpdatePSGDone)
        {
          goto LABEL_121;
        }

        goto LABEL_91;
      case 46:
        [(SFDeviceOperationHomeKitSetup *)self _completeWithError:0];
        goto LABEL_121;
      default:
        goto LABEL_121;
    }
  }
}

- (void)_runInit
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runInit];
  }

  self->_startTicks = mach_absolute_time();
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runInit];
  }

  [(SFDeviceOperationHomeKitSetup *)self _startTimeout:self->_timeoutInSeconds];
  v3 = objc_alloc_init(getTROperationQueueClass_0());
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = v3;

  if (self->_isCLIMode)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runInit];
    }

    defaultConfiguration = [(objc_class *)getHMMutableHomeManagerConfigurationClass() defaultConfiguration];
    v6 = [defaultConfiguration mutableCopy];
    [v6 setAdaptive:1];
    v7 = [objc_alloc(getHMHomeManagerClass_0()) initWithConfiguration:v6];
    homeKitHomeManager = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v7;

    v9 = [(HMHomeManager *)self->_homeKitHomeManager _beginActiveAssertionWithReason:@"tvsetuputil Started"];
    hdsutilHKToken = self->_hdsutilHKToken;
    self->_hdsutilHKToken = v9;
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runInit];
    }

    v11 = objc_alloc_init(getHMHomeManagerClass_0());
    defaultConfiguration = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v11;
  }

  v12 = self->_homeKitHomeManager;

  [(HMHomeManager *)v12 setDelegate:self];
}

- (void)_runHomeKitDeviceSetup
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
  }

  if (!self->_keyExchangeOnly)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }

    v3 = objc_alloc_init(getHMAccessoryBrowserClass());
    homeKitBrowser = self->_homeKitBrowser;
    self->_homeKitBrowser = v3;

    [(HMAccessoryBrowser *)self->_homeKitBrowser setDelegate:self];
    [(HMAccessoryBrowser *)self->_homeKitBrowser startSearchingForNewAccessories];
  }

  v5 = self->_trSession;
  if (v5)
  {
    sessionID = self->_sessionID;
    v7 = objc_alloc(getHMDeviceSetupOperationClass());
    if (sessionID)
    {
      v8 = [v7 initWithSession:v5 sessionIdentifier:self->_sessionID];
      homeKitDeviceSetupOperation = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v8;

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceOperationHomeKitSetup *)&self->_sessionID _runHomeKitDeviceSetup];
      }
    }

    else
    {
      v11 = [v7 initWithSession:v5];
      v12 = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v11;

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
      }
    }

    if (self->_userInteractive)
    {
      v13 = 33;
    }

    else
    {
      v13 = 9;
    }

    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setQualityOfService:v13];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke;
    v14[3] = &unk_1E788B198;
    v14[4] = self;
    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:v14];
    [(TROperationQueue *)self->_trOperationQueue addOperation:self->_homeKitDeviceSetupOperation];
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }
  }

  else
  {
    v10 = NSErrorWithOSStatusF();
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v10];
  }
}

void __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = *(v3 + 24);
  UpTicksToSecondsF();
  *(*v2 + 256) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_1(v2);
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = [*(*v2 + 80) accessory];
    v7 = *(*v2 + 88);
    *(*v2 + 88) = v6;

    v8 = *v2;
    if (*(*v2 + 88))
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
        {
          v9 = _LogCategory_Initialize();
          v8 = *v2;
          if (!v9)
          {
            goto LABEL_14;
          }

          v11 = *(v8 + 88);
        }

        LogPrintF();
        v8 = *v2;
      }

LABEL_14:
      *(v8 + 32) = 25;
      v10 = *v2;

      [v10 _run];
      return;
    }

    v12 = NSErrorWithOSStatusF();
    [v8 _completeWithError:v12];
  }
}

- (id)_runHomeKitAutoSelectHome:(BOOL)home
{
  v37 = *MEMORY[0x1E69E9840];
  homes = [(HMHomeManager *)self->_homeKitHomeManager homes];
  v6 = homes;
  if (!home)
  {
    if (![homes count])
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
      }

      [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddHome];
LABEL_47:
      firstObject = 0;
      goto LABEL_48;
    }

    if ([v6 count] == 1)
    {
      firstObject = [v6 firstObject];
      if (firstObject && [(SFDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject])
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
        }

        goto LABEL_48;
      }
    }
  }

  v8 = &unk_1EB3AF000;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v6];
  }

  if (self->_promptForHomeHandler)
  {
    currentHome = [(HMHomeManager *)self->_homeKitHomeManager currentHome];
    uniqueIdentifier = [currentHome uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v31 = v6;
        v14 = 0;
        v15 = *v33;
LABEL_22:
        v16 = 0;
        v17 = v14;
        v14 += v13;
        while (1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v11);
          }

          uniqueIdentifier2 = [*(*(&v32 + 1) + 8 * v16) uniqueIdentifier];
          v19 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

          if (v19)
          {
            break;
          }

          ++v17;
          if (v13 == ++v16)
          {
            v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v13)
            {
              goto LABEL_22;
            }

            break;
          }
        }

        v6 = v31;
        v8 = &unk_1EB3AF000;
      }
    }

    v20 = v8[338];
    if (v20 <= 30 && (v20 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v22 = timeoutTimer;
      dispatch_source_cancel(v22);
      v23 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    v26 = v25;
    v27 = v8[338];
    if (v27 <= 30 && (v27 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_metricNonUserSeconds = v26 + self->_metricNonUserSeconds;
    self->_startTicks = mach_absolute_time();
    v28 = v8[338];
    if (v28 <= 30 && (v28 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_state = 17;
    (*(self->_promptForHomeHandler + 2))();

    goto LABEL_47;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
  }

  firstObject = [v6 firstObject];
LABEL_48:

  v29 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)_runHomeKitAddHome
{
  self->_state = 18;
  homeKitHomeManager = self->_homeKitHomeManager;
  v4 = SFLocalizedStringForKey(@"MY_HOME");
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke;
  v5[3] = &unk_1E788F368;
  v5[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v4 completionHandler:v5];
}

void __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2;
  block[3] = &unk_1E788BD88;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _completeWithError:?];
    }

    else if (*(a1 + 48))
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 208), *(a1 + 48));
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v5 = NSErrorWithOSStatusF();
      [v1 _completeWithError:v5];
    }
  }
}

- (void)_runHomeKitSelectRoom
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = self->_homeKitSelectedHome;
  v52 = v3;
  selfCopy = self;
  if (*&self->_promptForRoomHandler == 0)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    roomForEntireHome = [(HMHome *)v3 roomForEntireHome];
    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = roomForEntireHome;

    if (!self->_homeKitSelectedRoom)
    {
      v43 = NSErrorWithOSStatusF();
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v43];
    }
  }

  else
  {
    v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    rooms = [(HMHome *)v3 rooms];
    v5 = [rooms countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v5)
    {
      v6 = *v80;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v80 != v6)
          {
            objc_enumerationMutation(rooms);
          }

          name = [*(*(&v79 + 1) + 8 * i) name];
          if (name && ([v59 containsObject:name] & 1) == 0)
          {
            [v59 addObject:name];
          }
        }

        v5 = [rooms countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v5);
    }

    [v59 sortUsingSelector:?];
    v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v9 = [&unk_1F1D7D898 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v9)
    {
      v10 = 0;
      v53 = 0;
      v11 = *v76;
      do
      {
        v12 = 0;
        v56 = v10;
        v13 = 10 - v10;
        do
        {
          if (*v76 != v11)
          {
            objc_enumerationMutation(&unk_1F1D7D898);
          }

          v14 = SFLocalizedStringForKey(*(*(&v75 + 1) + 8 * v12));
          if (v14)
          {
            v15 = [(SFDeviceOperationHomeKitSetup *)selfCopy _normalizedString:v14];
            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v74[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke;
            v74[3] = &unk_1E788F390;
            v74[4] = v15;
            if ([v59 indexOfObjectPassingTest:v74] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v54 addObject:v14];
              if (v13 == v12)
              {
                v16 = v14;

                v53 = v16;
              }
            }
          }

          ++v12;
        }

        while (v9 != v12);
        v17 = [&unk_1F1D7D898 countByEnumeratingWithState:&v75 objects:v84 count:16];
        v10 = v56 + v9;
        v9 = v17;
      }

      while (v17);
    }

    else
    {
      v53 = 0;
    }

    [(SFDeviceOperationHomeKitSetup *)selfCopy _removeSimilarRoomNames:v54 home:v52];
    [v54 sortUsingSelector:sel_localizedStandardCompare_];
    v51 = [v59 arrayByAddingObjectsFromArray:v54];
    timeoutTimer = selfCopy->_timeoutTimer;
    if (timeoutTimer)
    {
      v19 = timeoutTimer;
      dispatch_source_cancel(v19);
      v20 = selfCopy->_timeoutTimer;
      selfCopy->_timeoutTimer = 0;
    }

    mach_absolute_time();
    startTicks = selfCopy->_startTicks;
    UpTicksToSecondsF();
    v23 = v22;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    selfCopy->_metricNonUserSeconds = v23 + selfCopy->_metricNonUserSeconds;
    v24 = mach_absolute_time();
    v25 = selfCopy;
    selfCopy->_startTicks = v24;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v26 = _LogCategory_Initialize(), v25 = selfCopy, v26))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
        v25 = selfCopy;
      }
    }

    if (v25->_promptForRoomHandler && v25->_promptForRoomHandlerDetailed && gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    v50 = [v59 count];
    v27 = selfCopy;
    if (selfCopy->_promptForRoomHandlerDetailed)
    {
      v28 = dispatch_group_create();
      v57 = objc_opt_new();
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__10;
      v72 = __Block_byref_object_dispose__10;
      v73 = 0;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v54;
      v29 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
      if (v29)
      {
        v30 = *v65;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v65 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v64 + 1) + 8 * j);
            dispatch_group_enter(v28);
            homeKitHomeManager = selfCopy->_homeKitHomeManager;
            homeKitSelectedHome = selfCopy->_homeKitSelectedHome;
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v60[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264;
            v60[3] = &unk_1E788F3B8;
            v60[4] = v32;
            v63 = &v68;
            v61 = v57;
            v62 = v28;
            [(HMHomeManager *)homeKitHomeManager checkName:v32 inHome:homeKitSelectedHome withValidationOptions:4 completionHandler:v60];
          }

          v29 = [obj countByEnumeratingWithState:&v64 objects:v83 count:16];
        }

        while (v29);
      }

      v35 = dispatch_time(0, 30000000000);
      dispatch_group_wait(v28, v35);
      if ([v59 count] || objc_msgSend(v57, "count") || !v69[5])
      {
        [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
        v37 = v36 = v52;
        if (!v50)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            v47 = v53;
            LogPrintF();
          }

          if (v53)
          {
            [v57 indexOfObject:?];
          }

          v38 = [MEMORY[0x1E696AC88] indexPathForRow:v47 inSection:?];

          v37 = v38;
          v36 = v52;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v48 = obj;
          v49 = v37;
          v47 = v59;
          LogPrintF();
        }

        promptForRoomHandlerDetailed = selfCopy->_promptForRoomHandlerDetailed;
        v40 = [(HMHome *)v36 name:v47];
        promptForRoomHandlerDetailed[2](promptForRoomHandlerDetailed, v40, v59, v57, v37);
      }

      else
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v69[5]];
      }

      _Block_object_dispose(&v68, 8);
    }

    else
    {
      if (!v50)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v44 = _LogCategory_Initialize(), v27 = selfCopy, v44))
          {
            [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
            v27 = selfCopy;
          }
        }

        if (v53)
        {
          [v51 indexOfObject:?];
          v27 = selfCopy;
        }
      }

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v45 = _LogCategory_Initialize(), v27 = selfCopy, v45))
        {
          LogPrintF();
          v27 = selfCopy;
        }
      }

      (*(v27->_promptForRoomHandler + 2))(v27->_promptForRoomHandler, v51);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

BOOL __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 caseInsensitiveCompare:*(a1 + 32)];
  if (!v5)
  {
    *a4 = 1;
  }

  return v5 == 0;
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (v9 | v7)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 32);
      LogPrintF();
    }

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }
  }

  else if (a2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264_cold_1(a1);
    }

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_runHomeKitAddAccessory
{
  v26 = *MEMORY[0x1E69E9840];
  self->_state = 26;
  uniqueIdentifier = [(HMAccessory *)self->_homeKitAccessory uniqueIdentifier];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v5 = [accessories countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(accessories);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      uniqueIdentifier2 = [v9 uniqueIdentifier];
      v11 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [accessories countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_15;
    }

    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitAccessory = self->_homeKitAccessory;
    self->_homeKitAccessory = v12;
    identifier = v12;

    self->_homeKitAddedAccessory = 1;
  }

  else
  {
LABEL_9:

LABEL_15:
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    pairedPeer = [(SFDeviceOperationHomeKitSetup *)self pairedPeer];
    identifier = [pairedPeer identifier];

    if (identifier)
    {
      v16 = self->_homeKitAccessory;
      if (objc_opt_respondsToSelector())
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
        }

        [(HMAccessory *)self->_homeKitAccessory setPeerIdentifier:identifier];
      }
    }

    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    v18 = self->_homeKitAccessory;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke;
    v20[3] = &unk_1E788B238;
    v20[4] = self;
    [(HMHome *)homeKitSelectedHome addAccessory:v18 completionHandler:v20];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 264) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_2();
    }

    [*(*(a1 + 32) + 64) stopSearchingForNewAccessories];
    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;

    if (*(a1 + 40))
    {
      v8 = *v2;

      return [v8 _completeWithError:?];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_3();
      }

      *(*v2 + 156) = 1;
      [*v2 _updateAccount];
      v9 = *v2;

      return [v9 _run];
    }
  }

  return result;
}

- (void)_runHomeKitSetupRoom:(BOOL)room
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = self->_homeKitSelectedRoom;
  if (v5)
  {
    v6 = v5;
LABEL_3:
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSetupRoom:];
    }

    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = v6;
    v8 = v6;

    self->_state = 29;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
    v11 = [rooms countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
LABEL_10:
      v14 = 0;
      while (1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(rooms);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        name = [v15 name];
        v17 = [name isEqual:self->_homeKitSelectedRoomName];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [rooms countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v12)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v6 = v15;

      if (v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_16:
    }

    v8 = self->_homeKitSelectedRoomName;
    if (v8)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitSetupRoom:?];
      }

      self->_state = 28;
      homeKitSelectedHome = self->_homeKitSelectedHome;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke;
      v20[3] = &unk_1E788F408;
      v20[4] = self;
      roomCopy = room;
      [(HMHome *)homeKitSelectedHome addRoomWithName:v8 completionHandler:v20];
    }

    else
    {
      v19 = NSErrorWithOSStatusF();
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v19];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2;
  v11[3] = &unk_1E788F3E0;
  v11[4] = v7;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 || (v6 = *(a1 + 48)) == 0)
    {
      if ([v3 code] == 1 && (*(a1 + 56) & 1) == 0)
      {
        v8 = dispatch_time(0, 2000000000);
        v9 = *(*(a1 + 32) + 192);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3;
        block[3] = &unk_1E788A658;
        v10 = *(a1 + 40);
        v11 = *(a1 + 32);
        v14 = v10;
        v15 = v11;
        dispatch_after(v8, v9, block);
      }

      else
      {
        v4 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v5 = *(a1 + 32);

          [v5 _completeWithError:?];
        }

        else
        {
          v12 = NSErrorWithOSStatusF();
          [v4 _completeWithError:v12];
        }
      }
    }

    else
    {
      objc_storeStrong((v1 + 104), v6);
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_1();
      }

      *(*(a1 + 32) + 32) = 29;
      v7 = *(a1 + 32);

      [v7 _run];
    }
  }
}

uint64_t __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3_cold_1(a1);
  }

  [*(a1 + 40) _runHomeKitSetupRoom:1];
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)_runHomeKitAssignRoom
{
  name = [*(self + 104) name];
  LogPrintF();
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 272) = v4;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_1(a1 + 32);
  }

  result = *v2;
  if (*(*v2 + 8) == 1)
  {
    if (*(a1 + 40))
    {

      return [result _completeWithError:?];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_2();
      }

      *(*v2 + 32) = 31;
      v6 = *v2;

      return [v6 _run];
    }
  }

  return result;
}

- (void)_runHomeKitAddAppData
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runHomeKitAddAppData];
  }

  homeKitAccessory = self->_homeKitAccessory;
  if (homeKitAccessory)
  {
    applicationData = [(HMAccessory *)homeKitAccessory applicationData];
    appDataSelf = self->_appDataSelf;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke;
    v10[3] = &unk_1E788F430;
    v11 = applicationData;
    v6 = applicationData;
    [(NSDictionary *)appDataSelf enumerateKeysAndObjectsUsingBlock:v10];
    v7 = self->_homeKitAccessory;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2;
    v9[3] = &unk_1E788B238;
    v9[4] = self;
    [(HMAccessory *)v7 updateApplicationData:v6 completionHandler:v9];
  }

  else
  {
    v8 = NSErrorWithOSStatusF();
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v8];
  }
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v2 = *(v1 + 40), v4))
        {
          LogPrintF();
          v2 = *(v1 + 40);
        }
      }

      v5 = *(v1 + 32);

      return [v5 _completeWithError:v2];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3_cold_1();
      }

      *(*(v1 + 32) + 112) = 1;
      v3 = *(v1 + 32);

      return [v3 _run];
    }
  }

  return result;
}

- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = self->_stereoCounterpart;
  if (!v5 || (self->_stereoRole & 0xFFFFFFFE) != 2)
  {
    goto LABEL_18;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
  }

  if (!self->_homeKitAccessory)
  {
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  HMMediaSystemBuilderClass = getHMMediaSystemBuilderClass();
  homeKitAccessory = self->_homeKitAccessory;
  v37[0] = v5;
  v37[1] = homeKitAccessory;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  LOBYTE(HMMediaSystemBuilderClass) = [(objc_class *)HMMediaSystemBuilderClass isStereoPairingSupportedForAccessories:v8];

  if ((HMMediaSystemBuilderClass & 1) == 0)
  {
    if (error)
    {
LABEL_17:
      NSErrorWithOSStatusF();
      *error = v16 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  v9 = self->_homeKitSelectedHome;
  if (v9)
  {
    v10 = self->_homeKitSelectedRoomName;
    if (v10)
    {
      v11 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:v9];
      v12 = v11;
      if (v11)
      {
        [v11 setName:v10];
        mediaProfile = [(HMAccessory *)self->_homeKitAccessory mediaProfile];
        if (mediaProfile)
        {
          stereoRole = self->_stereoRole;
          HMMediaSystemRoleClass = getHMMediaSystemRoleClass();
          if (stereoRole == 2)
          {
            [(objc_class *)HMMediaSystemRoleClass leftRole];
          }

          else
          {
            [(objc_class *)HMMediaSystemRoleClass rightRole];
          }
          v19 = ;
          v32 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile role:v19];
          v33 = v19;
          if (v32)
          {
            mediaProfile2 = [(HMAccessory *)v5 mediaProfile];
            if (mediaProfile2)
            {
              v20 = self->_stereoRole;
              v21 = getHMMediaSystemRoleClass();
              if (v20 == 2)
              {
                [(objc_class *)v21 rightRole];
              }

              else
              {
                [(objc_class *)v21 leftRole];
              }
              v30 = ;
              v22 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile2 role:v30];
              v16 = v22 != 0;
              if (v22)
              {
                if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
                {
                  if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v23 = v22, v24 = _LogCategory_Initialize(), v22 = v23, v24))
                  {
                    v29 = v22;
                    [SFDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
                    v22 = v29;
                  }
                }

                v25 = v32;
                v36[0] = v32;
                v36[1] = v22;
                v26 = v22;
                v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
                [v12 setComponents:v27];

                v34[0] = MEMORY[0x1E69E9820];
                v34[1] = 3221225472;
                v34[2] = __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke;
                v34[3] = &unk_1E788F458;
                v34[4] = self;
                v35 = v12;
                [v35 commitWithCompletionHandler:v34];

                v22 = v26;
              }

              else
              {
                v25 = v32;
                if (error)
                {
                  v28 = NSErrorWithOSStatusF();
                  v22 = 0;
                  *error = v28;
                }
              }
            }

            else
            {
              if (error)
              {
                NSErrorWithOSStatusF();
                *error = v16 = 0;
              }

              else
              {
                v16 = 0;
              }

              v25 = v32;
            }
          }

          else
          {
            if (error)
            {
              NSErrorWithOSStatusF();
              *error = v16 = 0;
            }

            else
            {
              v16 = 0;
            }

            v25 = 0;
          }
        }

        else if (error)
        {
          NSErrorWithOSStatusF();
          *error = v16 = 0;
        }

        else
        {
          v16 = 0;
        }
      }

      else if (error)
      {
        NSErrorWithOSStatusF();
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }
    }

    else if (error)
    {
      NSErrorWithOSStatusF();
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (error)
  {
    NSErrorWithOSStatusF();
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 192);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2;
    v11[3] = &unk_1E788B9C0;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v6;
    v15 = *(a1 + 40);
    dispatch_async(v8, v11);
  }
}

void __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v2 = *(a1 + 32), v6))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    v7 = *(a1 + 40);

    [v7 _completeWithError:v2];
    return;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v3 = *(a1 + 48);
      }

      v4 = [v3 uniqueIdentifier];
      v9 = [*(a1 + 56) name];
      LogPrintF();
    }

LABEL_20:
    *(*(a1 + 40) + 113) = 1;
    objc_storeStrong((*(a1 + 40) + 120), *(a1 + 48));
    v8 = *(a1 + 40);

    [v8 _run];
    return;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 40);
  v10 = NSErrorWithOSStatusF();
  [v5 _completeWithError:v10];
}

- (void)_runHomeKitUpdateAppleTVAudioDestination
{
  self->_odeonStartTicks = mach_absolute_time();
  audioDestinationController = [(HMAccessory *)self->_tvAudioInput audioDestinationController];
  if (audioDestinationController)
  {
    v4 = 88;
    if (self->_configuredStereoPair)
    {
      v4 = 120;
    }

    v5 = *(&self->super.isa + v4);
    if (v5)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke;
      v7[3] = &unk_1E788B520;
      v7[4] = self;
      v8 = audioDestinationController;
      [v8 updateDestination:v5 options:2 completionHandler:v7];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 115 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
      }

      v6 = NSErrorWithOSStatusF();
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v6];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 115 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
    }

    v5 = NSErrorWithOSStatusF();
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v5];
  }
}

void __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  mach_absolute_time();
  v4 = *(*(a1 + 32) + 136);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 392) = v5;
  v6 = *(a1 + 32);
  if (*(v6 + 8) == 1)
  {
    v7 = *(v6 + 192);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2;
    block[3] = &unk_1E788BD88;
    block[4] = v6;
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

uint64_t __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 136);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 392) = v4;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v5 = *(a1 + 40), v8))
      {
        LogPrintF();
        v5 = *(a1 + 40);
      }
    }

    v9 = *v2;

    return [v9 _completeWithError:v5];
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(a1, a1 + 32);
    }

    *(*v2 + 56) = 1;
    v6 = *v2;

    return [v6 _run];
  }
}

- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group
{
  v34 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  groupCopy = group;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  settings = [groupCopy settings];
  v9 = [settings countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(settings);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        keyPath = [v13 keyPath];
        v15 = [keyPath isEqual:pathCopy];

        if (v15)
        {
          v20 = v13;
          goto LABEL_19;
        }
      }

      v10 = [settings countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  settings = [groupCopy groups];
  v16 = [settings countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_11:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(settings);
      }

      v20 = [(SFDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:pathCopy group:*(*(&v24 + 1) + 8 * v19)];
      if (v20)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [settings countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v21 = v20;
  }

  else
  {
LABEL_17:
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_runUpdateUserListeningHistoryStart
{
  v3 = self->_homeKitAccessory;
  if (v3)
  {
    v4 = self->_homeKitSelectedHome;
    owner = [(HMHome *)self->_homeKitSelectedHome owner];
    if (owner)
    {
      owner2 = [(HMHome *)v4 owner];
      v7 = [owner2 userSettingsForHome:v4];
      settings = [v7 settings];

      rootGroup = [settings rootGroup];
      v10 = [(SFDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];

      if (v10 && ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
      {
        v13 = [owner userListeningHistoryUpdateControlForHome:v4];
        v14 = [v13 mutableCopy];
        if (v14)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
          }

          [v14 addAccessory:v3];
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke;
          v16[3] = &unk_1E788B238;
          v16[4] = self;
          [owner updateUserListeningHistoryUpdateControl:v14 forHome:v4 completionHandler:v16];
        }

        else
        {
          v15 = NSErrorWithOSStatusF();
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v15];
        }
      }

      else
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 50 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
        }

        self->_userListeningHistoryDone = 1;
      }
    }

    else
    {
      settings = NSErrorWithOSStatusF();
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:settings];
    }
  }

  else
  {
    v4 = NSErrorWithOSStatusF();
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v4];
  }
}

void __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 288) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF();
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      return [v9 _completeWithError:v6];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_2();
      }

      *(*v2 + 129) = 1;
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)_runPersonalRequestsStart
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_personalRequestsEnabled)
  {
    v28 = self->_homeKitAccessory;
    if (v28)
    {
      v3 = self->_homeKitSelectedHome;
      owner = [(HMHome *)self->_homeKitSelectedHome owner];
      v5 = owner;
      if (owner)
      {
        v6 = [owner assistantAccessControlForHome:v3];
        v7 = [v6 mutableCopy];
        if (v7)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _runPersonalRequestsStart];
          }

          [v7 setEnabled:1];
          if (_os_feature_enabled_impl())
          {
            v23 = v7;
            v24 = v6;
            v25 = v5;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v26 = v3;
            obj = [(HMHome *)v3 accessories];
            v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v31;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v31 != v10)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v12 = *(*(&v30 + 1) + 8 * i);
                  category = [v12 category];
                  categoryType = [category categoryType];
                  v15 = getHMAccessoryCategoryTypeHomePod_0();
                  if ([categoryType isEqualToString:v15])
                  {
                    uniqueIdentifier = [v12 uniqueIdentifier];
                    uniqueIdentifier2 = [(HMAccessory *)v28 uniqueIdentifier];
                    v18 = [uniqueIdentifier isEqual:uniqueIdentifier2];

                    if (!v18)
                    {

                      v5 = v25;
                      v3 = v26;
                      v7 = v23;
                      v6 = v24;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v9);
            }

            if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceOperationHomeKitSetup _runPersonalRequestsStart];
            }

            v7 = v23;
            [v23 setAllowUnauthenticatedRequests:1];
            v5 = v25;
            v3 = v26;
            v6 = v24;
          }

LABEL_31:
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          [v7 addAccessory:v28];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke;
          v29[3] = &unk_1E788B238;
          v29[4] = self;
          [v5 updateAssistantAccessControl:v7 forHome:v3 completionHandler:v29];
        }

        else
        {
          v21 = NSErrorWithOSStatusF();
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v21];
        }
      }

      else
      {
        v20 = NSErrorWithOSStatusF();
        [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v20];
      }
    }

    else
    {
      v19 = NSErrorWithOSStatusF();
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v19];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runPersonalRequestsStart];
    }

    self->_personalRequestsDone = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 280) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF();
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      return [v9 _completeWithError:v6];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_2();
      }

      *(*v2 + 128) = 1;
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke_cold_1(v2);
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke_cold_1();
    }

    *(*(v2 + 32) + 157) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke;
  v5[3] = &unk_1E788B260;
  v5[4] = self;
  v5[5] = status;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke_cold_1(v2);
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions
{
  v61 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_homeKitSelectedRoom;
  versionsCopy = versions;
  if (v5)
  {
    v6 = v5;
    goto LABEL_3;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v10 = [rooms countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (!v10)
  {
    goto LABEL_79;
  }

  v11 = *v56;
LABEL_7:
  v12 = 0;
  while (1)
  {
    if (*v56 != v11)
    {
      objc_enumerationMutation(rooms);
    }

    v13 = *(*(&v55 + 1) + 8 * v12);
    name = [v13 name];
    v15 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v15)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [rooms countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (!v10)
      {
LABEL_79:

        goto LABEL_80;
      }

      goto LABEL_7;
    }
  }

  v6 = v13;

  if (v6)
  {
    versions = versionsCopy;
LABEL_3:
    v7 = self->_iTunesAccountID;
    if (v7)
    {
      v8 = v7;
      v49 = SFNormalizeEmailAddress(v7, 1);
    }

    else
    {
      v49 = 0;
    }

    selfCopy = self;
    v46 = v6;
    v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    accessories = [(HMRoom *)v6 accessories];
    v17 = [accessories countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v17)
    {
LABEL_78:

      v10 = [v47 copy];
      rooms = v46;
      goto LABEL_79;
    }

    v18 = v17;
    v19 = *v52;
LABEL_17:
    v20 = 0;
    while (1)
    {
      if (*v52 != v19)
      {
        objc_enumerationMutation(accessories);
      }

      v21 = *(*(&v51 + 1) + 8 * v20);
      category = [v21 category];
      categoryType = [category categoryType];
      v24 = getHMAccessoryCategoryTypeHomePod_0();
      v25 = [categoryType isEqual:v24];

      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = [(SFDeviceOperationHomeKitSetup *)selfCopy _mediaSystemForAccessory:v21];
      if (!v26)
      {
        break;
      }

LABEL_22:

LABEL_23:
      if (v18 == ++v20)
      {
        v41 = [accessories countByEnumeratingWithState:&v51 objects:v59 count:16];
        v18 = v41;
        if (!v41)
        {
          goto LABEL_78;
        }

        goto LABEL_17;
      }
    }

    if (([v21 supportedStereoPairVersions] & versions) == 0)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }

      goto LABEL_22;
    }

    if (([(objc_class *)getHMMediaSystemBuilderClass() supportsMediaSystem:v21]& 1) == 0)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      goto LABEL_22;
    }

    remoteLoginHandler = [v21 remoteLoginHandler];
    loggedInAccount = [remoteLoginHandler loggedInAccount];
    username = [loggedInAccount username];

    remoteLoginHandler2 = [v21 remoteLoginHandler];

    if (remoteLoginHandler2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    remoteLoginHandler3 = [v21 remoteLoginHandler];
    loggedInAccount2 = [remoteLoginHandler3 loggedInAccount];

    if (loggedInAccount2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    remoteLoginHandler4 = [v21 remoteLoginHandler];
    loggedInAccount3 = [remoteLoginHandler4 loggedInAccount];
    username2 = [loggedInAccount3 username];

    if (username2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    if (username)
    {
      v36 = SFNormalizeEmailAddress(username, 1);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = v49;
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      if ((v49 == 0) == (v37 != 0))
      {

LABEL_69:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v44 = v39;
          v45 = v37;
          LogPrintF();
        }

        goto LABEL_73;
      }

      v40 = [v37 isEqual:v38];

      if ((v40 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    [v47 addObject:v21];
LABEL_73:

    versions = versionsCopy;
    goto LABEL_22;
  }

  v10 = 0;
LABEL_80:
  v42 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)findTVs
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_homeKitSelectedRoom;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    v27 = v4;
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    accessories = [(HMRoom *)v4 accessories];
    v6 = [accessories countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(accessories);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          category = [v10 category];
          categoryType = [category categoryType];
          v13 = getHMAccessoryCategoryTypeAppleTV();
          v14 = [categoryType isEqual:v13];

          if (v14)
          {
            audioDestinationController = [v10 audioDestinationController];

            if (audioDestinationController)
            {
              audioDestinationController2 = [v10 audioDestinationController];
              destination = [audioDestinationController2 destination];

              if (destination)
              {
                if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                {
                  [SFDeviceOperationHomeKitSetup findTVs];
                }
              }

              else
              {
                [v28 addObject:v10];
              }
            }

            else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceOperationHomeKitSetup findTVs];
            }
          }
        }

        v7 = [accessories countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v7);
    }

    v18 = [v28 copy];
    rooms = v27;
    goto LABEL_24;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v18 = [rooms countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v18)
  {
LABEL_24:

    goto LABEL_25;
  }

  v22 = *v34;
LABEL_30:
  v23 = 0;
  while (1)
  {
    if (*v34 != v22)
    {
      objc_enumerationMutation(rooms);
    }

    v24 = *(*(&v33 + 1) + 8 * v23);
    name = [v24 name];
    v26 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v26)
    {
      break;
    }

    if (v18 == ++v23)
    {
      v18 = [rooms countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  v4 = v24;

  if (v4)
  {
    goto LABEL_3;
  }

  v18 = 0;
LABEL_25:
  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)_isOwnerOfHome:(id)home
{
  homeCopy = home;
  currentUser = [homeCopy currentUser];
  if (currentUser)
  {
    v5 = [homeCopy homeAccessControlForUser:currentUser];
    isOwner = [v5 isOwner];
  }

  else
  {
    isOwner = 0;
  }

  return isOwner;
}

- (id)_mediaSystemForAccessory:(id)accessory
{
  v36 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  home = [accessoryCopy home];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mediaSystems = [home mediaSystems];
  v24 = [mediaSystems countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v7 = *v31;
    v22 = home;
    v23 = accessoryCopy;
    v25 = mediaSystems;
    v21 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        components = [v9 components];
        v11 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(components);
              }

              mediaProfile = [*(*(&v26 + 1) + 8 * j) mediaProfile];
              accessory = [mediaProfile accessory];
              uniqueIdentifier2 = [accessory uniqueIdentifier];

              if ([uniqueIdentifier2 isEqual:uniqueIdentifier])
              {
                v18 = v9;

                home = v22;
                accessoryCopy = v23;
                mediaSystems = v25;
                goto LABEL_19;
              }
            }

            v12 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        mediaSystems = v25;
        v7 = v21;
      }

      v18 = 0;
      home = v22;
      accessoryCopy = v23;
      v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_normalizedString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy stringByReplacingOccurrencesOfString:@"[ ]+" withString:@" " options:1024 range:{0, objc_msgSend(stringCopy, "length")}];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (void)_removeSimilarRoomNames:(id)names home:(id)home
{
  v76 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  homeCopy = home;
  name = [homeCopy name];
  v8 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name];

  if (v8)
  {
    v9 = [namesCopy count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v52 = v8;
      v53 = namesCopy;
      do
      {
        v12 = [namesCopy objectAtIndexedSubscript:v11];
        v13 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:v12];

        if ([v13 caseInsensitiveCompare:v8])
        {
          v54 = v10;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          actionSets = [homeCopy actionSets];
          v15 = [actionSets countByEnumeratingWithState:&v68 objects:v75 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v69;
LABEL_7:
            v18 = 0;
            while (1)
            {
              if (*v69 != v17)
              {
                objc_enumerationMutation(actionSets);
              }

              v19 = *(*(&v68 + 1) + 8 * v18);
              name2 = [v19 name];
              v21 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name2];

              if (v21)
              {
                if (![v13 caseInsensitiveCompare:v21])
                {
                  break;
                }
              }

              if (v16 == ++v18)
              {
                v16 = [actionSets countByEnumeratingWithState:&v68 objects:v75 count:16];
                if (v16)
                {
                  goto LABEL_7;
                }

                goto LABEL_14;
              }
            }

            name3 = [v19 name];

            if (!name3)
            {
              goto LABEL_18;
            }

            v23 = "ActionSet";
          }

          else
          {
LABEL_14:

LABEL_18:
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            serviceGroups = [homeCopy serviceGroups];
            v25 = [serviceGroups countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v65;
LABEL_20:
              v28 = 0;
              while (1)
              {
                if (*v65 != v27)
                {
                  objc_enumerationMutation(serviceGroups);
                }

                v29 = *(*(&v64 + 1) + 8 * v28);
                name4 = [v29 name];
                v31 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name4];

                if (v31)
                {
                  if (![v13 caseInsensitiveCompare:v31])
                  {
                    break;
                  }
                }

                if (v26 == ++v28)
                {
                  v26 = [serviceGroups countByEnumeratingWithState:&v64 objects:v74 count:16];
                  if (v26)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_27;
                }
              }

              name3 = [v29 name];

              if (!name3)
              {
                goto LABEL_30;
              }

              v23 = "ServiceGroup";
            }

            else
            {
LABEL_27:

LABEL_30:
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              triggers = [homeCopy triggers];
              v33 = [triggers countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v61;
LABEL_32:
                v36 = 0;
                while (1)
                {
                  if (*v61 != v35)
                  {
                    objc_enumerationMutation(triggers);
                  }

                  v37 = *(*(&v60 + 1) + 8 * v36);
                  name5 = [v37 name];
                  v39 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name5];

                  if (v39)
                  {
                    if (![v13 caseInsensitiveCompare:v39])
                    {
                      break;
                    }
                  }

                  if (v34 == ++v36)
                  {
                    v34 = [triggers countByEnumeratingWithState:&v60 objects:v73 count:16];
                    if (v34)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_39;
                  }
                }

                name3 = [v37 name];

                if (!name3)
                {
                  goto LABEL_42;
                }

                v23 = "Trigger";
              }

              else
              {
LABEL_39:

LABEL_42:
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                zones = [homeCopy zones];
                v41 = [zones countByEnumeratingWithState:&v56 objects:v72 count:16];
                if (!v41)
                {
LABEL_51:

LABEL_62:
                  ++v11;
                  v8 = v52;
                  namesCopy = v53;
                  v10 = v54;
                  goto LABEL_60;
                }

                v42 = v41;
                v43 = *v57;
LABEL_44:
                v44 = 0;
                while (1)
                {
                  if (*v57 != v43)
                  {
                    objc_enumerationMutation(zones);
                  }

                  v45 = *(*(&v56 + 1) + 8 * v44);
                  name6 = [v45 name];
                  v47 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name6];

                  if (v47)
                  {
                    if (![v13 caseInsensitiveCompare:v47])
                    {
                      break;
                    }
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [zones countByEnumeratingWithState:&v56 objects:v72 count:16];
                    if (v42)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_51;
                  }
                }

                name3 = [v45 name];

                if (!name3)
                {
                  goto LABEL_62;
                }

                v23 = "Zone";
              }
            }
          }

          v8 = v52;
          namesCopy = v53;
          v10 = v54;
        }

        else
        {
          name3 = v8;
          v23 = "Home";
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v50 = name3;
          v51 = v23;
          v49 = v13;
          LogPrintF();
        }

        [namesCopy removeObjectAtIndex:{v11, v49, v50, v51}];
        --v10;

LABEL_60:
      }

      while (v11 < v10);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)_restoreHomeApp
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHomeKitSetup _restoreHomeApp];
  }

  v3 = [objc_alloc(getASDSystemAppRequestClass()) initWithBundleID:@"com.apple.Home"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke;
  v5[3] = &unk_1E788B520;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 startWithErrorHandler:v5];
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2;
  v6[3] = &unk_1E788A658;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1)
      {
LABEL_4:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v2 = *(a1 + 32);
        goto LABEL_4;
      }
    }
  }

  else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(a1);
  }
}

- (void)_updateHomeStats
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v4 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        category = [*(*(&v16 + 1) + 8 * i) category];
        categoryType = [category categoryType];
        v10 = getHMAccessoryCategoryTypeHomePod_0();
        v11 = [categoryType isEqual:v10];

        if (v11)
        {
          self->_hasHomePod = 1;
          goto LABEL_11;
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationHomeKitSetup *)self _updateHomeStats];
  }

  users = [(HMHome *)self->_homeKitSelectedHome users];
  v13 = [users count];

  self->_hasMultipleUsers = v13 != 0;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      hasMultipleUsers = self->_hasMultipleUsers;
    }

    LogPrintF();
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_updateAccount
{
  username = [self username];
  LogPrintF();
}

void __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup > 90)
    {
      goto LABEL_11;
    }

    v8 = v3;
    if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
    {
      v7 = _LogCategory_Initialize();
      v4 = v8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 32) username];
    LogPrintF();
LABEL_5:

    v4 = v8;
    goto LABEL_11;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    v8 = 0;
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(a1, &v9);
      v5 = v9;
      goto LABEL_5;
    }
  }

LABEL_11:
}

void __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(*a2 + 176) name];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  v3 = [v2 username];
  LogPrintF();
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleID];
  LogPrintF();
}

void __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(a1 + 32) username];
  v5 = [*(a1 + 40) loggedInAccount];
  v4 = [v5 username];
  LogPrintF();
}

@end