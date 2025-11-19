@interface SBScreenLongevityController
+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3;
- (BOOL)_hasCameraAttributions;
- (BOOL)_isAutoLockSetToNever;
- (BOOL)_isValidCurrentTimer:(id)a3;
- (BOOL)_shouldEnable;
- (BOOL)isAdaptiveDimmingEnabled;
- (BOOL)isUnderAutoDimThreshold;
- (SBScreenLongevityController)init;
- (id)faceStreamAwarenessConfiguration;
- (void)_beginMonitoringAttentionAwarenessFeaturesEnablement;
- (void)_checkFaceAttentionAwareness;
- (void)_clientDidResetForUserAttention:(id)a3;
- (void)_dim;
- (void)_endMonitoringAttentionAwarenessFeaturesEnablement;
- (void)_mediaNowPlayingChanged;
- (void)_observeDefaults;
- (void)_screenBacklightStateChanged;
- (void)_startDimTimer;
- (void)_toggleBacklightAdaptiveDimming:(BOOL)a3;
- (void)_undim;
- (void)_updateCachedDefaults;
- (void)activityDidChangeForSensorActivityDataProvider:(id)a3;
- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6;
- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4;
- (void)dealloc;
- (void)dimTimerDidExpireForTimer:(id)a3;
- (void)evaluateEnablement;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)resetTimerForReason:(id)a3;
- (void)setAdaptiveDimmingEnabled:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)streamerClientDidResetForUserAttention:(id)a3;
@end

@implementation SBScreenLongevityController

+ (id)_sharedInstanceCreateIfNeeded:(BOOL)a3
{
  if (a3 && _sharedInstanceCreateIfNeeded__onceToken_2 != -1)
  {
    +[SBScreenLongevityController _sharedInstanceCreateIfNeeded:];
  }

  v4 = _sharedInstanceCreateIfNeeded__controller_0;

  return v4;
}

void __61__SBScreenLongevityController__sharedInstanceCreateIfNeeded___block_invoke()
{
  v0 = objc_alloc_init(SBScreenLongevityController);
  v1 = _sharedInstanceCreateIfNeeded__controller_0;
  _sharedInstanceCreateIfNeeded__controller_0 = v0;
}

- (SBScreenLongevityController)init
{
  v23.receiver = self;
  v23.super_class = SBScreenLongevityController;
  v2 = [(SBScreenLongevityController *)&v23 init];
  if (v2)
  {
    v3 = [SBApp sensorActivityDataProvider];
    [v3 addObserver:v2];

    v4 = +[SBScreenLongevityDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v4;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    [(SBScreenLongevityController *)v2 _observeDefaults];
    v2->_attentionAwarenessFeatureMonitoringToken = 0;
    [(SBScreenLongevityController *)v2 _beginMonitoringAttentionAwarenessFeaturesEnablement];
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    [v6 registerObserver:v2];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__mediaNowPlayingChanged name:@"SBMediaNowPlayingChangedNotification" object:0];
    [v7 addObserver:v2 selector:sel__screenBacklightStateChanged name:@"SBBlankScreenStateChangeNotification" object:0];
    v8 = objc_alloc_init(MEMORY[0x277CEF768]);
    idleTouchAwarenessConfiguration = v2->_idleTouchAwarenessConfiguration;
    v2->_idleTouchAwarenessConfiguration = v8;

    [(AWAttentionAwarenessConfiguration *)v2->_idleTouchAwarenessConfiguration setIdentifier:@"screen-longevity-idle-touch"];
    [(AWAttentionAwarenessConfiguration *)v2->_idleTouchAwarenessConfiguration setEventMask:94];
    v10 = v2->_idleTouchAwarenessConfiguration;
    [(SBScreenLongevitySettings *)v2->_settings touchAttentionLostTimeout];
    [(AWAttentionAwarenessConfiguration *)v10 setAttentionLostTimeout:?];
    v11 = objc_alloc_init(SBAttentionAwarenessClient);
    idleTouchAwarenessClient = v2->_idleTouchAwarenessClient;
    v2->_idleTouchAwarenessClient = v11;

    [(SBAttentionAwarenessClient *)v2->_idleTouchAwarenessClient setDelegate:v2];
    [(SBAttentionAwarenessClient *)v2->_idleTouchAwarenessClient setConfiguration:v2->_idleTouchAwarenessConfiguration];
    [(SBAttentionAwarenessClient *)v2->_idleTouchAwarenessClient setEnabled:0];
    v13 = objc_alloc_init(MEMORY[0x277CFD390]);
    brightnessSystemClient = v2->_brightnessSystemClient;
    v2->_brightnessSystemClient = v13;

    objc_initWeak(&location, v2);
    v15 = v2->_brightnessSystemClient;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __35__SBScreenLongevityController_init__block_invoke;
    v20 = &unk_2783B4EE8;
    objc_copyWeak(&v21, &location);
    [(BrightnessSystemClient *)v15 registerNotificationBlock:&v17 forProperties:&unk_28336F138];
    v2->_enabled = 0;
    [(SBScreenLongevityController *)v2 evaluateEnablement:v17];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__SBScreenLongevityController_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBScreenLongevityController_init__block_invoke_2;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __35__SBScreenLongevityController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained evaluateEnablement];
}

- (void)dealloc
{
  [(SBScreenLongevityController *)self setEnabled:0];
  idleTouchAwarenessClient = self->_idleTouchAwarenessClient;
  if (idleTouchAwarenessClient)
  {
    [(SBAttentionAwarenessClient *)idleTouchAwarenessClient invalidate];
    v4 = self->_idleTouchAwarenessClient;
    self->_idleTouchAwarenessClient = 0;
  }

  faceStreamAwarenessClient = self->_faceStreamAwarenessClient;
  if (faceStreamAwarenessClient)
  {
    [(SBAttentionAwarenessStreamerClient *)faceStreamAwarenessClient invalidate];
    v6 = self->_faceStreamAwarenessClient;
    self->_faceStreamAwarenessClient = 0;
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  v8 = [SBApp sensorActivityDataProvider];
  [v8 removeObserver:self];

  [(PTSettings *)self->_settings removeKeyObserver:self];
  [(BSDefaultObserver *)self->_defaultsObserver invalidate];
  v9 = [MEMORY[0x277D262A0] sharedConnection];
  [v9 unregisterObserver:self];

  [(SBScreenLongevityController *)self _endMonitoringAttentionAwarenessFeaturesEnablement];
  v10.receiver = self;
  v10.super_class = SBScreenLongevityController;
  [(SBScreenLongevityController *)&v10 dealloc];
}

- (void)evaluateEnablement
{
  v3 = [(SBScreenLongevityController *)self _shouldEnable];

  [(SBScreenLongevityController *)self setEnabled:v3];
}

- (void)setEnabled:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    v4 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      enabled = self->_enabled;
      *buf = 67109120;
      v10 = enabled;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "set enabled -> %{BOOL}u", buf, 8u);
    }

    if (![(SBScreenLongevitySettings *)self->_settings noOpButLogOnEnablementUpdate])
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:self->_enabled];
      faceStreamAwarenessClient = self->_faceStreamAwarenessClient;
      if (faceStreamAwarenessClient)
      {
        [(SBAttentionAwarenessStreamerClient *)faceStreamAwarenessClient invalidate];
        v7 = self->_faceStreamAwarenessClient;
        self->_faceStreamAwarenessClient = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__SBScreenLongevityController_setEnabled___block_invoke;
      block[3] = &unk_2783A8C18;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __42__SBScreenLongevityController_setEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 28) == 1)
  {
    if ([*(v2 + 64) isValid])
    {
      v3 = SBLogScreenLongevityController();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __42__SBScreenLongevityController_setEnabled___block_invoke_cold_4();
      }

      [*(*(a1 + 32) + 64) invalidate];
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = 0;
LABEL_25:

      return;
    }

    v8 = objc_opt_new();
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    [*(*(a1 + 32) + 64) setDelegate:?];
    v11 = *(*(a1 + 32) + 64);

    [v11 start];
  }

  else
  {
    v6 = [v2 _isDimmed];
    v7 = *(a1 + 32);
    if (v6)
    {
      if ([*(v7 + 72) isValid])
      {
        [*(*(a1 + 32) + 72) invalidate];
      }

      else
      {
        v14 = SBLogScreenLongevityController();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __42__SBScreenLongevityController_setEnabled___block_invoke_cold_3();
        }
      }

      [*(a1 + 32) _undim];
    }

    else
    {
      if ([*(v7 + 64) isValid])
      {
        [*(*(a1 + 32) + 64) invalidate];
        v12 = *(a1 + 32);
        v13 = *(v12 + 64);
        *(v12 + 64) = 0;
      }

      else
      {
        v15 = SBLogScreenLongevityController();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __42__SBScreenLongevityController_setEnabled___block_invoke_cold_1();
        }
      }

      if ([*(*(a1 + 32) + 72) isValid])
      {
        v16 = SBLogScreenLongevityController();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __42__SBScreenLongevityController_setEnabled___block_invoke_cold_2();
        }

        [*(*(a1 + 32) + 72) invalidate];
        v17 = *(a1 + 32);
        v5 = *(v17 + 72);
        *(v17 + 72) = 0;
        goto LABEL_25;
      }
    }
  }
}

- (void)resetTimerForReason:(id)a3
{
  if (self->_enabled)
  {
    [(SBScreenLongevityController *)self _clientDidResetForUserAttention:a3];
  }
}

- (BOOL)_shouldEnable
{
  v44 = *MEMORY[0x277D85DE8];
  if (![(SBScreenLongevitySettings *)self->_settings overrideEnablement])
  {
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v5 isAutoDimAllowed];

    v7 = _AXSAttentionAwarenessFeaturesEnabled();
    v8 = [(SBScreenLongevityController *)self _hasCameraAttributions];
    v9 = [(SBScreenLongevityController *)self _isAutoLockSetToNever];
    v10 = [(SBScreenLongevitySettings *)self->_settings ignoreAutoLockSetToNever];
    v4 = +[SBMediaController sharedInstance];
    v23 = [v4 isPlaying];
    v11 = [v4 playingMediaType];
    v12 = v11;
    if (v11)
    {
      v22 = [v11 isEqual:*MEMORY[0x277D27CB8]] ^ 1;
    }

    else
    {
      v22 = 0;
    }

    v13 = v7 == 0;
    v14 = +[SBIdleTimerService sharedInstance];
    v21 = [v14 isDisabledByMediaPlayback];

    v15 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    v20 = [v15 isIdleTimerDisabled];

    v16 = [(SBScreenLongevityController *)self isUnderAutoDimThreshold];
    v17 = v16;
    v3 = 0;
    if (!v13 && (v6 & 1) != 0 && !v8 && (v9 || v10))
    {
      if ((v23 & ~v22 | v21))
      {
        v3 = 0;
      }

      else
      {
        v3 = v20 & !v16;
      }
    }

    if (self->_enabled != v3 || [(SBScreenLongevitySettings *)self->_settings noisyLogging])
    {
      v18 = SBLogScreenLongevityController();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67111424;
        v25 = v3;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        v29 = v8;
        v30 = 1024;
        v31 = v9;
        v32 = 1024;
        v33 = v10;
        v34 = 1024;
        v35 = v23;
        v36 = 1024;
        v37 = v22;
        v38 = 1024;
        v39 = v21;
        v40 = 1024;
        v41 = v20;
        v42 = 1024;
        v43 = v17;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "shouldEnable=%{BOOL}u, isDeviceAllowedByManagedConfiguration=%{BOOL}u, isCameraInUse=%{BOOL}u, isAutoLockDisabled=%{BOOL}u, shouldIgnoreAutoLockDisable=%{BOOL}u, isMediaNowPlaying=%{BOOL}u, isProbablyAudioOnly=%{BOOL}u, isIdleTimerDisabledByMediaPlayback=%{BOOL}u, isIdleTimerOffForAnyReason=%{BOOL}u isAutoDimThresholdPassed=%{BOOL}u", buf, 0x3Eu);
      }
    }

    goto LABEL_20;
  }

  v3 = [(SBScreenLongevitySettings *)self->_settings enablement];
  if (self->_enabled != v3 || [(SBScreenLongevitySettings *)self->_settings noisyLogging])
  {
    v4 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = v3;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "shouldEnable=%{BOOL}u from override", buf, 8u);
    }

LABEL_20:
  }

  return v3;
}

- (void)_mediaNowPlayingChanged
{
  v3 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Media now playing state changed", v4, 2u);
  }

  [(SBScreenLongevityController *)self evaluateEnablement];
}

- (void)_screenBacklightStateChanged
{
  v3 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Screen backlight state changed", v4, 2u);
  }

  [(SBScreenLongevityController *)self evaluateEnablement];
}

- (void)_beginMonitoringAttentionAwarenessFeaturesEnablement
{
  p_attentionAwarenessFeatureMonitoringToken = &self->_attentionAwarenessFeatureMonitoringToken;
  if (!self->_attentionAwarenessFeatureMonitoringToken)
  {
    objc_initWeak(&location, self);
    v3 = [*MEMORY[0x277D81C58] UTF8String];
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__SBScreenLongevityController__beginMonitoringAttentionAwarenessFeaturesEnablement__block_invoke;
    v6[3] = &unk_2783C4DD8;
    objc_copyWeak(&v7, &location);
    notify_register_dispatch(v3, p_attentionAwarenessFeatureMonitoringToken, v4, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __83__SBScreenLongevityController__beginMonitoringAttentionAwarenessFeaturesEnablement__block_invoke(uint64_t a1)
{
  v2 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Attention awarenesss feature enablement changed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained evaluateEnablement];
}

- (void)_endMonitoringAttentionAwarenessFeaturesEnablement
{
  attentionAwarenessFeatureMonitoringToken = self->_attentionAwarenessFeatureMonitoringToken;
  if (attentionAwarenessFeatureMonitoringToken)
  {
    notify_cancel(attentionAwarenessFeatureMonitoringToken);
    self->_attentionAwarenessFeatureMonitoringToken = 0;
  }
}

- (BOOL)_hasCameraAttributions
{
  v2 = [SBApp sensorActivityDataProvider];
  v3 = [v2 activeCameraAndMicrophoneActivityAttributions];
  v4 = [v3 bs_filter:&__block_literal_global_25_7];

  LOBYTE(v2) = [v4 count] != 0;
  return v2;
}

- (BOOL)_isAutoLockSetToNever
{
  v2 = +[SBIdleTimerGlobalStateMonitor sharedInstance];
  v3 = [v2 autoLockTimeout];

  LOBYTE(v2) = [v3 intValue] == 0x7FFFFFFF;
  return v2;
}

- (void)_dim
{
  if (self->_enabled)
  {
    [(SBScreenLongevityController *)self _toggleBacklightAdaptiveDimming:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SBScreenLongevityController__dim__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __35__SBScreenLongevityController__dim__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) isValid])
  {
    [*(*(a1 + 32) + 64) invalidate];
    v2 = *(a1 + 32);
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
  }
}

- (void)_undim
{
  [(SBScreenLongevityController *)self _toggleBacklightAdaptiveDimming:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SBScreenLongevityController__undim__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__SBScreenLongevityController__undim__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) isValid])
  {
    [*(*(a1 + 32) + 72) invalidate];
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;
  }
}

- (void)_toggleBacklightAdaptiveDimming:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v5 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Back light adaptive dimming enable -> %u", v6, 8u);
  }

  [(SBScreenLongevityController *)self setAdaptiveDimmingEnabled:v3];
}

- (void)_checkFaceAttentionAwareness
{
  faceStreamAwarenessClient = self->_faceStreamAwarenessClient;
  if (faceStreamAwarenessClient)
  {
    [(SBAttentionAwarenessStreamerClient *)faceStreamAwarenessClient invalidate];
    v4 = self->_faceStreamAwarenessClient;
    self->_faceStreamAwarenessClient = 0;
  }

  v5 = objc_alloc_init(SBAttentionAwarenessStreamerClient);
  v6 = self->_faceStreamAwarenessClient;
  self->_faceStreamAwarenessClient = v5;

  [(SBAttentionAwarenessStreamerClient *)self->_faceStreamAwarenessClient setDelegate:self];
  v7 = self->_faceStreamAwarenessClient;
  v8 = [(SBScreenLongevityController *)self faceStreamAwarenessConfiguration];
  [(SBAttentionAwarenessStreamerClient *)v7 setConfiguration:v8];

  v9 = self->_faceStreamAwarenessClient;

  [(SBAttentionAwarenessStreamerClient *)v9 resume];
}

- (id)faceStreamAwarenessConfiguration
{
  faceStreamAwarenessConfiguration = self->_faceStreamAwarenessConfiguration;
  if (!faceStreamAwarenessConfiguration)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEF768]);
    v5 = self->_faceStreamAwarenessConfiguration;
    self->_faceStreamAwarenessConfiguration = v4;

    [(AWAttentionAwarenessConfiguration *)self->_faceStreamAwarenessConfiguration setContinuousFaceDetectMode:1];
    [(AWAttentionAwarenessConfiguration *)self->_faceStreamAwarenessConfiguration setUnityStream:1];
    [(AWAttentionAwarenessConfiguration *)self->_faceStreamAwarenessConfiguration setIdentifier:@"screen-longevity-face-stream"];
    faceStreamAwarenessConfiguration = self->_faceStreamAwarenessConfiguration;
  }

  return faceStreamAwarenessConfiguration;
}

- (void)_observeDefaults
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 screenLongevityDefaults];

  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dimInterval"];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v7 = MEMORY[0x277D85CD0];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __47__SBScreenLongevityController__observeDefaults__block_invoke;
  v13 = &unk_2783A8C68;
  objc_copyWeak(&v14, &location);
  v8 = [v4 observeDefaults:v6 onQueue:MEMORY[0x277D85CD0] withBlock:&v10];
  defaultsObserver = self->_defaultsObserver;
  self->_defaultsObserver = v8;

  [(SBScreenLongevityController *)self _updateCachedDefaults:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __47__SBScreenLongevityController__observeDefaults__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCachedDefaults];
}

- (void)_updateCachedDefaults
{
  v3 = +[SBDefaults localDefaults];
  v5 = [v3 screenLongevityDefaults];

  settings = self->_settings;
  [v5 dimInterval];
  [(SBScreenLongevitySettings *)settings setDimInterval:?];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_settings == a3)
  {
    v10 = v6;
    if (([v6 isEqualToString:@"ignoreAutoLockSetToNever"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"overrideEnablement") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"enablement"))
    {
      [(SBScreenLongevityController *)self evaluateEnablement];
LABEL_6:
      v7 = v10;
      goto LABEL_7;
    }

    v8 = [v10 isEqualToString:@"touchAttentionLostTimeout"];
    v7 = v10;
    if (v8)
    {
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:0];
      idleTouchAwarenessConfiguration = self->_idleTouchAwarenessConfiguration;
      [(SBScreenLongevitySettings *)self->_settings touchAttentionLostTimeout];
      [(AWAttentionAwarenessConfiguration *)idleTouchAwarenessConfiguration setAttentionLostTimeout:?];
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setConfiguration:self->_idleTouchAwarenessConfiguration];
      [(SBAttentionAwarenessClient *)self->_idleTouchAwarenessClient setEnabled:1];
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)a3
{
  v4 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Sensor activity updated", v5, 2u);
  }

  [(SBScreenLongevityController *)self evaluateEnablement];
}

- (void)_startDimTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SBScreenLongevityController__startDimTimer__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __45__SBScreenLongevityController__startDimTimer__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) isValid];
  if ((result & 1) == 0)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    [*(*(a1 + 32) + 64) setDelegate:?];
    v6 = *(*(a1 + 32) + 64);

    return [v6 start];
  }

  return result;
}

- (void)client:(id)a3 attentionLostTimeoutDidExpire:(double)a4 forConfigurationGeneration:(unint64_t)a5 withAssociatedObject:(id)a6
{
  v9 = a3;
  v8 = a6;
  if (self->_enabled && self->_idleTouchAwarenessClient == v9)
  {
    [(SBScreenLongevityController *)self _startDimTimer];
  }
}

- (void)_clientDidResetForUserAttention:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Reset for user attention: %@", buf, 0xCu);
  }

  if ([(SBScreenLongevityController *)self _isDimmed])
  {
    [(SBScreenLongevityController *)self _undim];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SBScreenLongevityController__clientDidResetForUserAttention___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__SBScreenLongevityController__clientDidResetForUserAttention___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    if (![v2 isValid])
    {
      goto LABEL_7;
    }

    [*(*(a1 + 32) + 64) elapsedTime];
    if (v3 <= 1.0)
    {
      goto LABEL_7;
    }

    v2 = *(*(a1 + 32) + 64);
  }

  if ([v2 isValid])
  {
    [*(*(a1 + 32) + 64) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;
  }

LABEL_7:
  if ([*(*(a1 + 32) + 72) isValid])
  {
    [*(*(a1 + 32) + 72) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }
}

- (void)clientDidResetForUserAttention:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (self->_enabled && self->_idleTouchAwarenessClient == v9)
  {
    v7 = [(SBAttentionAwarenessClient *)v9 configuration];
    v8 = [v7 identifier];
    [(SBScreenLongevityController *)self _clientDidResetForUserAttention:v8];
  }
}

- (void)streamerClientDidResetForUserAttention:(id)a3
{
  v4 = a3;
  if (self->_enabled && self->_faceStreamAwarenessClient == v4)
  {
    v7 = v4;
    v5 = [(SBAttentionAwarenessStreamerClient *)v4 configuration];
    v6 = [v5 identifier];
    [(SBScreenLongevityController *)self _clientDidResetForUserAttention:v6];

    [(SBScreenLongevityController *)self _startDimTimer];
    v4 = v7;
  }
}

- (void)dimTimerDidExpireForTimer:(id)a3
{
  if (![(SBScreenLongevityController *)self _isDimmed])
  {
    [(SBScreenLongevityController *)self _dim];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SBScreenLongevityController_dimTimerDidExpireForTimer___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __57__SBScreenLongevityController_dimTimerDidExpireForTimer___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) isValid])
  {
    v2 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Dim timer remains valid after expire", buf, 2u);
    }

    [*(*(a1 + 32) + 64) invalidate];
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  if ([*(*(a1 + 32) + 72) isValid])
  {
    v5 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__SBScreenLongevityController_dimTimerDidExpireForTimer___block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 72) invalidate];
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = 0;
  }

  if (!*(*(a1 + 32) + 72))
  {
    v8 = SBLogScreenLongevityController();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Start undim timer", buf, 2u);
    }

    objc_initWeak(buf, *(a1 + 32));
    [*(*(a1 + 32) + 72) invalidate];
    v9 = *(a1 + 32);
    v10 = *(v9 + 72);
    *(v9 + 72) = 0;

    v11 = MEMORY[0x277CBEBB8];
    [*(*(a1 + 32) + 8) undimFaceDetectionInterval];
    v13 = v12;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__SBScreenLongevityController_dimTimerDidExpireForTimer___block_invoke_48;
    v17[3] = &unk_2783AA438;
    objc_copyWeak(&v18, buf);
    v14 = [v11 scheduledTimerWithTimeInterval:1 repeats:v17 block:v13];
    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __57__SBScreenLongevityController_dimTimerDidExpireForTimer___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [WeakRetained _isValidCurrentTimer:v3];

  if (a1)
  {
    [WeakRetained _checkFaceAttentionAwareness];
  }
}

- (BOOL)_isValidCurrentTimer:(id)a3
{
  if (self->_undimTimer == a3)
  {
    return [a3 isValid];
  }

  else
  {
    return 0;
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = SBLogScreenLongevityController();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Management configuration profile settings updated", v6, 2u);
  }

  [(SBScreenLongevityController *)self evaluateEnablement];
}

- (void)setAdaptiveDimmingEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:a3];
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  settings = self->_settings;
  if (v3)
  {
    [(SBScreenLongevitySettings *)settings dimmingAnimationLength];
  }

  else
  {
    [(SBScreenLongevitySettings *)settings undimmingAnimationLength];
  }

  *&v7 = v7;
  v8 = [v5 initWithFloat:v7];
  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"AmbientAdaptiveDimmingEnable", v8, @"AmbientAdaptiveDimmingPeriod", 0}];
  [(BrightnessSystemClient *)self->_brightnessSystemClient setProperty:v9 forKey:@"AmbientAdaptiveDimming"];
}

- (BOOL)isAdaptiveDimmingEnabled
{
  v2 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"AmbientAdaptiveDimming"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"AmbientAdaptiveDimmingEnable"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isUnderAutoDimThreshold
{
  v2 = [(BrightnessSystemClient *)self->_brightnessSystemClient copyPropertyForKey:@"CBBrightnessIsUnderAutoDimThreshold"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end