@interface SASSystemState
+ (id)sharedSystemState;
- (BOOL)_deviceIsUnlocked;
- (BOOL)_mapsAppIsVisibleOnLockscreen;
- (BOOL)callHangUpEnabled;
- (BOOL)carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(BOOL)a3;
- (BOOL)carPlaySupportsEnhancedSiriCharacteristic:(unint64_t)a3;
- (BOOL)deviceIsBlocked;
- (BOOL)deviceIsPasscodeLocked;
- (BOOL)deviceScreenIsOn;
- (BOOL)hasRingingCall;
- (BOOL)hasUnlockedSinceBoot;
- (BOOL)isCallAudioRouteAllowed;
- (BOOL)isConnectedToBluetoothVehicle;
- (BOOL)isConnectedToEyesFreeDevice;
- (BOOL)isGuestConnected;
- (BOOL)isInActiveCall;
- (BOOL)isWirelessSplitterOn;
- (BOOL)siriInCallEnabled;
- (BOOL)siriIsEnabled;
- (BOOL)siriIsSupported;
- (CGSize)carPlayPrimaryScreenPhysicalSize;
- (SASLockStateMonitor)lockStateMonitor;
- (SASSystemState)init;
- (id)_initForTesting;
- (id)currentSpokenLanguageCode;
- (int64_t)_carPlayTransportTypeFromConfiguration:(id)a3;
- (unint64_t)carDNDStatus;
- (void)_fetchOEMAppContext;
- (void)_fetchVehicleInformation;
- (void)_updateAccessibilityState;
- (void)_updateCarPlayConnectionState;
- (void)_updateEnhancedVoiceTriggerMode;
- (void)_voiceTriggerModeChanged:(id)a3;
- (void)addStateChangeListener:(id)a3;
- (void)callObserver:(id)a3 callChanged:(id)a4;
- (void)monitorCarSessions;
- (void)registerForGameMonitoring;
- (void)removeStateChangeListener:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)a3;
- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)a3;
@end

@implementation SASSystemState

void __22__SASSystemState_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MEMORY[0x1E698D0A0];
    v11 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[SASSystemState init]_block_invoke";
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #modes DisplayTransition called transition=%@", &v16, 0x16u);
    }

    v12 = [v9 transitionReasons];
    if ([v12 containsObject:*MEMORY[0x1E69D4360]])
    {
      [*(a1 + 32) setLiftToWakeDetected:1];
      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[SASSystemState init]_block_invoke";
        _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #modes Device went through liftToWake transition setLiftToWake:YES", &v16, 0xCu);
      }
    }

    else
    {
      v14 = *v10;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[SASSystemState init]_block_invoke";
        _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #modes Device went to sleep or went through another transition setLiftToWake:NO", &v16, 0xCu);
      }

      [*(a1 + 32) setLiftToWakeDetected:0];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)siriIsEnabled
{
  v3 = [MEMORY[0x1E698D1C0] sharedPreferences];
  -[SASSystemState setEnabled:](self, "setEnabled:", [v3 assistantIsEnabled]);

  return [(SASSystemState *)self enabled];
}

- (BOOL)isInActiveCall
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(NSMutableSet *)self->_activeCalls count];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSystemState isInActiveCall]";
    v8 = 2048;
    v9 = v2;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver activeCalls:%lu", &v6, 0x16u);
  }

  result = v2 != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)deviceIsPasscodeLocked
{
  v2 = [(SASSystemState *)self lockStateMonitor];
  v3 = ([v2 lockState] >> 1) & 1;

  return v3;
}

- (SASLockStateMonitor)lockStateMonitor
{
  lockStateMonitor = self->_lockStateMonitor;
  if (!lockStateMonitor)
  {
    v4 = objc_alloc_init(SASLockStateMonitor);
    v5 = self->_lockStateMonitor;
    self->_lockStateMonitor = v4;

    lockStateMonitor = self->_lockStateMonitor;
  }

  return lockStateMonitor;
}

- (unint64_t)carDNDStatus
{
  if (![MEMORY[0x1E6993950] isAutomaticDNDAvailable])
  {
    return 1;
  }

  v3 = [(SASSystemState *)self carAutomaticDNDStatus];
  v4 = [v3 cachedAutomaticDNDActiveState];

  return v4;
}

- (BOOL)isConnectedToEyesFreeDevice
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x1E698F468] sharedInstance];
  v3 = [v2 connectedDevices];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) ac_isEyesFree])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)siriIsSupported
{
  v2 = [(SASSystemState *)self currentSpokenLanguageCode];
  if (v2 && (AFPreferencesLanguageIsSupported() & 1) != 0 || ([MEMORY[0x1E698D1C0] sharedPreferences], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isCurrentLocaleNativelySupported"), v3, v4))
  {
    v5 = AFAssistantCapable();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasUnlockedSinceBoot
{
  v2 = [(SASSystemState *)self lockStateMonitor];
  v3 = [v2 hasUnlockedSinceBoot];

  return v3;
}

- (id)currentSpokenLanguageCode
{
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 languageCode];

  if (!v3)
  {
    v4 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v3 = [v4 bestSupportedLanguageCodeForLanguageCode:0];
  }

  return v3;
}

- (BOOL)deviceIsBlocked
{
  v2 = [(SASSystemState *)self lockStateMonitor];
  v3 = [v2 isBlocked];

  return v3;
}

+ (id)sharedSystemState
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SASSystemState_sharedSystemState__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSystemState_onceToken != -1)
  {
    dispatch_once(&sharedSystemState_onceToken, block);
  }

  v2 = sharedSystemState_sharedSystemState;

  return v2;
}

- (BOOL)deviceScreenIsOn
{
  v2 = [(SASSystemState *)self lockStateMonitor];
  v3 = [v2 isScreenOn];

  return v3;
}

uint64_t __35__SASSystemState_sharedSystemState__block_invoke(uint64_t a1)
{
  sharedSystemState_sharedSystemState = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initForTesting
{
  v3.receiver = self;
  v3.super_class = SASSystemState;
  return [(SASSystemState *)&v3 init];
}

- (SASSystemState)init
{
  v34.receiver = self;
  v34.super_class = SASSystemState;
  v2 = [(SASSystemState *)&v34 init];
  v3 = v2;
  if (v2)
  {
    v2->_carPlayConnectionState = 0;
    *&v2->_supportsCarPlayVehicleData = 0;
    [(SASSystemState *)v2 _updateAccessibilityState];
    [(SASSystemState *)v3 monitorCarSessions];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _HomeButtonTripleClickEnabled, *MEMORY[0x1E69E4F48], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    [(SASSystemState *)v3 setListeners:v5];

    v6 = objc_alloc_init(SASCallRouteObserver);
    callRouteObserver = v3->_callRouteObserver;
    v3->_callRouteObserver = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeCalls = v3->_activeCalls;
    v3->_activeCalls = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695AF00]);
    callObserver = v3->_callObserver;
    v3->_callObserver = v10;

    [(CXCallObserver *)v3->_callObserver setDelegate:v3 queue:0];
    if ([MEMORY[0x1E698D258] saeAvailable])
    {
      [(SASSystemState *)v3 setGameState:0];
      [(SASSystemState *)v3 registerForGameMonitoring];
    }

    [(SASSystemState *)v3 setLiftToWakeDetected:0];
    v12 = [MEMORY[0x1E699FAF0] configurationForDefaultMainDisplayMonitor];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __22__SASSystemState_init__block_invoke;
    aBlock[3] = &unk_1E82F45F0;
    v13 = v3;
    v33 = v13;
    v14 = _Block_copy(aBlock);
    [v12 setTransitionHandler:v14];
    v15 = [MEMORY[0x1E699FAE8] monitorWithConfiguration:v12];
    displayLayoutMonitor = v13->_displayLayoutMonitor;
    v13->_displayLayoutMonitor = v15;

    v17 = dispatch_queue_create("com.apple.siri.ActivationService.SystemState", 0);
    v18 = [objc_alloc(MEMORY[0x1E698D1A8]) initWithName:@"com.apple.bluetooth.WirelessSplitterOn" options:1 queue:v17 delegate:0];
    observerWirelessSplitter = v13->_observerWirelessSplitter;
    v13->_observerWirelessSplitter = v18;

    v20 = [objc_alloc(MEMORY[0x1E698D1A8]) initWithName:@"com.apple.bluetooth.GuestConnected" options:1 queue:v17 delegate:0];
    observerBluetoothGuestConnected = v13->_observerBluetoothGuestConnected;
    v13->_observerBluetoothGuestConnected = v20;

    v22 = objc_alloc(MEMORY[0x1E698D1A8]);
    v23 = [v22 initWithName:*MEMORY[0x1E69AED00] options:1 queue:v17 delegate:0];
    remoteWebcamModeEnabled = v13->_remoteWebcamModeEnabled;
    v13->_remoteWebcamModeEnabled = v23;

    objc_initWeak(&location, v13);
    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__SASSystemState_init__block_invoke_185;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v30, &location);
    dispatch_async(v25, block);

    v26 = [MEMORY[0x1E6985E88] registerRestrictionEnforcer:v13 machServiceName:@"com.apple.siri.assessment-mode-restriction"];
    restrictionEnforcer = v13->_restrictionEnforcer;
    v13->_restrictionEnforcer = v26;

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __22__SASSystemState_init__block_invoke_185(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [v2 isActive];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __22__SASSystemState_init__block_invoke_2;
  v4[3] = &unk_1E82F3A58;
  objc_copyWeak(&v5, (a1 + 32));
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
}

uint64_t __22__SASSystemState_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([WeakRetained didAssessmentModeRecieveInitialStateUpdate] & 1) == 0)
    {
      [v4 setIsAssessmentModeActive:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)addStateChangeListener:(id)a3
{
  v4 = a3;
  v5 = [(SASSystemState *)self listeners];
  [v5 addObject:v4];
}

- (void)removeStateChangeListener:(id)a3
{
  v4 = a3;
  v5 = [(SASSystemState *)self listeners];
  [v5 removeObject:v4];
}

- (BOOL)_deviceIsUnlocked
{
  v2 = [(SASSystemState *)self lockStateMonitor];
  v3 = [v2 lockState] == 0;

  return v3;
}

- (void)callObserver:(id)a3 callChanged:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 hasEnded];
  v7 = *MEMORY[0x1E698D0A0];
  v8 = os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = [v5 UUID];
      *buf = 136315394;
      v29 = "[SASSystemState callObserver:callChanged:]";
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver Ended:%@", buf, 0x16u);
    }

    activeCalls = self->_activeCalls;
    v12 = [v5 UUID];
    [(NSMutableSet *)activeCalls removeObject:v12];
  }

  else
  {
    if (v8)
    {
      v13 = v7;
      v14 = [v5 UUID];
      *buf = 136315394;
      v29 = "[SASSystemState callObserver:callChanged:]";
      v30 = 2112;
      v31 = v14;
      _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver Changed:%@", buf, 0x16u);
    }

    v15 = self->_activeCalls;
    v12 = [v5 UUID];
    [(NSMutableSet *)v15 addObject:v12];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [(SASSystemState *)self listeners];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        if (objc_opt_respondsToSelector())
        {
          [v21 callStateChangedToIsActive:-[SASSystemState isInActiveCall](self isOutgoing:{"isInActiveCall"), objc_msgSend(v5, "isOutgoing")}];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  if ([(NSMutableSet *)self->_activeCalls count]== 1)
  {
    [(SASCallRouteObserver *)self->_callRouteObserver startObserving];
  }

  else if (![(NSMutableSet *)self->_activeCalls count])
  {
    [(SASCallRouteObserver *)self->_callRouteObserver stopObserving];
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasRingingCall
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CXCallObserver *)self->_callObserver calls];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if (([v6 hasConnected] & 1) == 0 && !objc_msgSend(v6, "hasEnded"))
        {
          LODWORD(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    *buf = 136315394;
    v16 = "[SASSystemState hasRingingCall]";
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s CXCallObserver hasRingingCall:%@", buf, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)isCallAudioRouteAllowed
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(SASCallRouteObserver *)self->_callRouteObserver isCallAudioRouteAllowed];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v7 = 136315394;
    v8 = "[SASSystemState isCallAudioRouteAllowed]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (BOOL)isWirelessSplitterOn
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(AFNotifyObserver *)self->_observerWirelessSplitter state];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSystemState isWirelessSplitterOn]";
    v8 = 1024;
    v9 = v2 != 0;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %i", &v6, 0x12u);
  }

  result = v2 != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isGuestConnected
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(AFNotifyObserver *)self->_observerBluetoothGuestConnected state];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SASSystemState isGuestConnected]";
    v8 = 1024;
    v9 = v2 != 0;
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s %i", &v6, 0x12u);
  }

  result = v2 != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)registerForGameMonitoring
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E96A0];
  v4 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__SASSystemState_registerForGameMonitoring__block_invoke;
  handler[3] = &unk_1E82F4618;
  objc_copyWeak(&v6, &location);
  handler[4] = self;
  notify_register_dispatch("com.apple.system.console_mode_model_manager_assertion_changed", &self->_gameMonitorNotifyToken, v3, handler);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__SASSystemState_registerForGameMonitoring__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    if (!notify_get_state(a2, &state64))
    {
      v5 = [WeakRetained gameState];
      if (state64 <= 2)
      {
        [WeakRetained setGameState:?];
      }

      v6 = [WeakRetained gameState];
      if (v6 != v5)
      {
        v7 = v6;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [*(a1 + 32) listeners];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * v12);
              if (objc_opt_respondsToSelector())
              {
                [v13 gameStateDidChange:v7];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
          }

          while (v10);
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)carDNDActiveOrEyesFreeAndShouldHaveFullScreenPresentation:(BOOL)a3
{
  if ([(SASSystemState *)self isConnectedToEyesFreeDevice]|| a3 || [(SASSystemState *)self carDNDActive]|| (v5 = [(SASSystemState *)self _internalAlwaysEyesFreeEnabled]))
  {
    if ([(SASSystemState *)self _deviceIsUnlocked])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = ![(SASSystemState *)self _mapsAppIsVisibleOnLockscreen];
    }
  }

  return v5;
}

- (BOOL)_mapsAppIsVisibleOnLockscreen
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(SASSystemState *)self displayLayoutMonitor];
  v3 = [v2 currentLayout];
  v4 = [v3 elements];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:@"com.apple.Maps"];

          if (v11)
          {
            if ([v9 layoutRole] == 6)
            {
              v12 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)monitorCarSessions
{
  if ([MEMORY[0x1E6993950] isAutomaticDNDAvailable])
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 addObserver:self selector:sel__pairedVehiclesDidChange_ name:*MEMORY[0x1E6993948] object:0];

    [(SASSystemState *)self setCurrentCarPlaySupportedOEMAppIdList:0];
    v4 = objc_alloc_init(MEMORY[0x1E6993968]);
    [(SASSystemState *)self setCarPlaySessionStatus:v4];

    v5 = [(SASSystemState *)self carPlaySessionStatus];
    [v5 addSessionObserver:self];

    v6 = objc_alloc_init(MEMORY[0x1E6993950]);
    [(SASSystemState *)self setCarAutomaticDNDStatus:v6];

    v7 = [(SASSystemState *)self carAutomaticDNDStatus];
    [v7 fetchAutomaticDNDAssertionWithReply:0];

    v8 = objc_alloc_init(MEMORY[0x1E6993978]);
    [(SASSystemState *)self setCarFeatureAvailability:v8];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:self selector:sel__voiceTriggerModeChanged_ name:*MEMORY[0x1E6993940] object:0];
  }
}

- (void)_updateCarPlayConnectionState
{
  v3 = [(SASSystemState *)self carPlaySessionStatus];
  v4 = [v3 currentSession];
  v5 = [v4 MFiCertificateSerialNumber];

  if (v5)
  {
    v6[5] = MEMORY[0x1E69E9820];
    v6[6] = 3221225472;
    v6[7] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke;
    v6[8] = &unk_1E82F4668;
    v6[9] = self;
    CRIsPairedWithCertificateSerialNumber();
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke_3;
    v6[3] = &unk_1E82F3A08;
    v6[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __47__SASSystemState__updateCarPlayConnectionState__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__SASSystemState__updateCarPlayConnectionState__block_invoke_2;
  v2[3] = &unk_1E82F4640;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __47__SASSystemState__updateCarPlayConnectionState__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return [v2 _setCarPlayConnectionState:v3];
}

- (void)_fetchVehicleInformation
{
  v3 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  v4 = [v3 configuration];

  v5 = [v4 vehicleName];
  vehicleName = self->_vehicleName;
  self->_vehicleName = v5;

  v7 = [v4 vehicleModelName];
  vehicleModel = self->_vehicleModel;
  self->_vehicleModel = v7;

  v9 = [v4 vehicleManufacturer];
  vehicleManufacturer = self->_vehicleManufacturer;
  self->_vehicleManufacturer = v9;

  self->_rightHandDrive = [v4 rightHandDrive];
  v11 = [v4 supportsSiriZLL];
  if ([v4 supportsSiriZLLButton])
  {
    v11 |= 2uLL;
  }

  if ([v4 supportsSiriMixable])
  {
    v12 = v11 | 4;
  }

  else
  {
    v12 = v11;
  }

  if ([v4 supportsVehicleData])
  {
    self->_supportsCarPlayVehicleData = 1;
    v13 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
    self->_carOwnsMainAudio = [v13 carOwnsMainAudio];
  }

  self->_carPlayEnhancedSiriCharacteristics = v12;
  self->_carPlayTransportType = [(SASSystemState *)self _carPlayTransportTypeFromConfiguration:v4];
  [(SASSystemState *)self _updateEnhancedVoiceTriggerMode];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1C81A3BAB;
  v20 = *MEMORY[0x1E695F060];
  v14 = [v4 screens];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__SASSystemState__fetchVehicleInformation__block_invoke;
  v15[3] = &unk_1E82F4690;
  v15[4] = &v16;
  [v14 enumerateObjectsUsingBlock:v15];

  self->_carPlayPrimaryScreenPhysicalSize = v17[2];
  _Block_object_dispose(&v16, 8);
}

void __42__SASSystemState__fetchVehicleInformation__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (![v9 screenType])
  {
    [v9 physicalSize];
    v6 = *(*(a1 + 32) + 8);
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    *a4 = 1;
  }
}

- (void)_updateEnhancedVoiceTriggerMode
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  v4 = [(CRFeatureAvailability *)self->_carFeatureAvailability deviceSupportedCarPlayFeatures];
  if (!v3)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
      v6 = "%s #CarPlay CARSession is currently nil, setting mode to be not applicable.";
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if ((v4 & 2) == 0)
  {
    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
      v6 = "%s #CarPlay Enhanced Siri is not supported, setting mode to be not applicable.";
LABEL_7:
      _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_INFO, v6, &v13, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [v3 voiceTriggerMode];
  switch(v9)
  {
    case 2:
      v12 = *MEMORY[0x1E698D0A0];
      v7 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        v7 = 1;
        _os_log_impl(&dword_1C8137000, v12, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is activity detection", &v13, 0xCu);
      }

      break;
    case 1:
      v11 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is trigger detection", &v13, 0xCu);
      }

      v7 = 2;
      break;
    case -1:
      v10 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
      {
        v13 = 136315138;
        v14 = "[SASSystemState _updateEnhancedVoiceTriggerMode]";
        _os_log_impl(&dword_1C8137000, v10, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode is disabled", &v13, 0xCu);
      }

      v7 = 3;
      break;
    default:
      goto LABEL_10;
  }

LABEL_9:
  self->_carPlayEnhancedVoiceTriggerMode = v7;
LABEL_10:

  v8 = *MEMORY[0x1E69E9840];
}

- (int64_t)_carPlayTransportTypeFromConfiguration:(id)a3
{
  v3 = a3;
  if ([v3 supportsVehicleData])
  {
    v4 = 3;
  }

  else
  {
    v5 = [v3 transportType];
    if (v5 > 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = qword_1C818FB18[v5];
    }
  }

  return v4;
}

- (void)_fetchOEMAppContext
{
  v3 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6993970]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__SASSystemState__fetchOEMAppContext__block_invoke;
    v6[3] = &unk_1E82F46B8;
    v6[4] = self;
    [v4 fetchApplicationBundleIdentifiersForCarIntents:v6];
  }

  else
  {
    currentCarPlaySupportedOEMAppIdList = self->_currentCarPlaySupportedOEMAppIdList;
    self->_currentCarPlaySupportedOEMAppIdList = MEMORY[0x1E695E0F0];
  }
}

void __37__SASSystemState__fetchOEMAppContext__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E698D0A0];
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [v5 allObjects];
    [v8 setCurrentCarPlaySupportedOEMAppIdList:v9];
  }

  else
  {
    v10 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      __37__SASSystemState__fetchOEMAppContext__block_invoke_cold_1(v6, v10);
    }
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 currentCarPlaySupportedOEMAppIdList];
    v16 = 136315394;
    v17 = "[SASSystemState _fetchOEMAppContext]_block_invoke";
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_INFO, "%s #CarPlay supported OEM apps: %@", &v16, 0x16u);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)carPlaySupportsEnhancedSiriCharacteristic:(unint64_t)a3
{
  v4 = [(SASSystemState *)self carPlayEnhancedSiriCharacteristics];

  return SASCarPlayEnhancedSiriCharacteristicsContainsCharacteristic(v4, a3);
}

- (void)sessionDidConnect:(id)a3
{
  [(SASSystemState *)self _updateCarPlayConnectionState];
  [(SASSystemState *)self _fetchVehicleInformation];

  [(SASSystemState *)self _fetchOEMAppContext];
}

- (void)_voiceTriggerModeChanged:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SASSystemState _voiceTriggerModeChanged:]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_INFO, "%s #CarPlay Enhanced Siri voice trigger mode changed", &v6, 0xCu);
  }

  [(SASSystemState *)self _updateEnhancedVoiceTriggerMode];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sessionDidDisconnect:(id)a3
{
  [(SASSystemState *)self _updateCarPlayConnectionState];
  [(SASSystemState *)self _fetchVehicleInformation];

  [(SASSystemState *)self _fetchOEMAppContext];
}

- (void)_updateAccessibilityState
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AXSTripleClickCopyOptions();
  -[SASSystemState setAccessibilityShortcutEnabled:](self, "setAccessibilityShortcutEnabled:", [v3 count] != 0);

  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (self->_accessibilityShortcutEnabled)
    {
      v5 = @"YES";
    }

    v7 = 136315394;
    v8 = "[SASSystemState _updateAccessibilityState]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s Enabled:%@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isConnectedToBluetoothVehicle
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [MEMORY[0x1E698F468] sharedInstance];
  v3 = [v2 connectedDevices];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) ac_isBluetoothVehicle])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)siriInCallEnabled
{
  v2 = AFSupportsSiriInCall();
  if (v2)
  {
    v3 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v4 = [v3 siriInCallEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (BOOL)callHangUpEnabled
{
  if ((AFSupportsSiriInCall() & 1) != 0 || !AFSupportsCallHangUp())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69E1478] sharedPreferences];
  v3 = [v2 canUseVoiceTriggerDuringPhoneCall];

  return v3;
}

- (void)shouldBeginRestrictingForAssessmentModeWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke;
  block[3] = &unk_1E82F3D30;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDidAssessmentModeRecieveInitialStateUpdate:1];
    [v3 setIsAssessmentModeActive:1];
    v4 = dispatch_group_create();
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v3 listeners];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v4);
            v15[0] = MEMORY[0x1E69E9820];
            v15[1] = 3221225472;
            v15[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2;
            v15[3] = &unk_1E82F46E0;
            v17 = v22;
            v16 = v4;
            [v9 assessmentModeChangedToIsActive:1 completion:v15];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v6);
    }

    v10 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_3;
    block[3] = &unk_1E82F4708;
    v14 = v22;
    v13 = *(a1 + 32);
    dispatch_group_notify(v4, v10, block);

    _Block_object_dispose(v22, 8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __72__SASSystemState_shouldBeginRestrictingForAssessmentModeWithCompletion___block_invoke_3(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(v1 + 16);
    v3 = *MEMORY[0x1E69E9840];
    v4 = *(a1 + 32);

    v2(v4, 0);
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E698D280];
    v11 = *MEMORY[0x1E696A278];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to deactivate assistant"];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v5 errorWithDomain:v6 code:0 userInfo:v8];
    (*(v1 + 16))(v1, v9);

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)shouldEndRestrictingForAssessmentModeWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SASSystemState_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke;
  block[3] = &unk_1E82F3D30;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__SASSystemState_shouldEndRestrictingForAssessmentModeWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setDidAssessmentModeRecieveInitialStateUpdate:1];
    [v3 setIsAssessmentModeActive:0];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 listeners];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 assessmentModeChangedToIsActive:0 completion:0];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (CGSize)carPlayPrimaryScreenPhysicalSize
{
  width = self->_carPlayPrimaryScreenPhysicalSize.width;
  height = self->_carPlayPrimaryScreenPhysicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __37__SASSystemState__fetchOEMAppContext__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SASSystemState _fetchOEMAppContext]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #CarPlay failed to lookup car intent extensions: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end