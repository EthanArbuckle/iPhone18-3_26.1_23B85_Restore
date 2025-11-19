@interface SBLockScreenDeviceMotionEffectController
+ (id)sharedInstance;
- (SBLockScreenDeviceMotionEffectController)init;
- (id)_acquireBacklightChangeSourceDeviceMotionDisableAssertion;
- (id)_acquireCoverSheetNotVisibleDeviceMotionDisableAssertion;
- (id)_acquireDisableAssertionForReason:(id)a3 optimizationEnabled:(BOOL)a4;
- (id)_acquireLowPowerDeviceMotionDisableAssertion;
- (id)_acquireNoUserPresenceDeviceMotionDisableAssertion;
- (id)_acquireReducedMotionDeviceMotionDisableAssertion;
- (id)_acquireWallpaperObscuredDeviceMotionDisableAssertion;
- (void)_updateClientWantsMotionEventState;
- (void)_updateLockScreenForSensitiveUI;
- (void)_updatePerformanceOptimizationState;
- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5;
- (void)dealloc;
- (void)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4;
- (void)deviceMotionControllerDidUpdateDeviceMotionSettings:(id)a3;
- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5;
- (void)setCoverSheetVisible:(BOOL)a3;
- (void)setMotionUpdateInterval:(double)a3;
- (void)setPosterClientDeviceMotionMode:(unint64_t)a3;
- (void)setPosterClientWantsMotionEvents:(BOOL)a3;
- (void)setUserPresenceDetected:(BOOL)a3;
- (void)setWallpaperObscured:(BOOL)a3;
- (void)setWallpaperVisible:(BOOL)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
@end

@implementation SBLockScreenDeviceMotionEffectController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[SBLockScreenDeviceMotionEffectController sharedInstance];
  }

  v3 = sharedInstance___shared_0;

  return v3;
}

void __58__SBLockScreenDeviceMotionEffectController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBLockScreenDeviceMotionEffectController);
  v1 = sharedInstance___shared_0;
  sharedInstance___shared_0 = v0;
}

- (SBLockScreenDeviceMotionEffectController)init
{
  v36.receiver = self;
  v36.super_class = SBLockScreenDeviceMotionEffectController;
  v2 = [(SBLockScreenDeviceMotionEffectController *)&v36 init];
  if (v2 && SBFAreMotionEffectsAvailable())
  {
    v3 = +[SBBacklightController sharedInstance];
    backlightController = v2->_backlightController;
    v2->_backlightController = v3;

    [(SBBacklightController *)v2->_backlightController addObserver:v2];
    v5 = +[SBDefaults localDefaults];
    v6 = [v5 miscellaneousDefaults];
    miscellaneousDefaults = v2->_miscellaneousDefaults;
    v2->_miscellaneousDefaults = v6;

    objc_initWeak(&location, v2);
    v8 = v2->_miscellaneousDefaults;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sensitiveUIEnabled"];
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __48__SBLockScreenDeviceMotionEffectController_init__block_invoke;
    v33 = &unk_2783A8C68;
    objc_copyWeak(&v34, &location);
    v12 = [(SBMiscellaneousDefaults *)v8 observeDefault:v9 onQueue:v10 withBlock:&v30];
    defaultObserverToken = v2->_defaultObserverToken;
    v2->_defaultObserverToken = v12;

    v14 = objc_alloc_init(MEMORY[0x277D65FF0]);
    lockScreenDefaults = v2->_lockScreenDefaults;
    v2->_lockScreenDefaults = v14;

    v16 = dispatch_queue_create("com.apple.SpringBoardFramework.SBLockScreenDeviceMotionEffectController.queue", 0);
    performanceOptimizationUpdateQueue = v2->_performanceOptimizationUpdateQueue;
    v2->_performanceOptimizationUpdateQueue = v16;

    v18 = [SBDeviceMotionEffectDomain rootSettings:v30];
    deviceMotionEffectPrototypeSettings = v2->_deviceMotionEffectPrototypeSettings;
    v2->_deviceMotionEffectPrototypeSettings = v18;

    [(PTSettings *)v2->_deviceMotionEffectPrototypeSettings addKeyPathObserver:v2];
    v20 = objc_alloc_init(MEMORY[0x277D3EA68]);
    posterDeviceMotionController = v2->_posterDeviceMotionController;
    v2->_posterDeviceMotionController = v20;

    [(PRUISDeviceMotionController *)v2->_posterDeviceMotionController setDelegate:v2];
    v22 = [MEMORY[0x277D0AAA0] sharedInstance];
    displayLayoutPublisher = v2->_displayLayoutPublisher;
    v2->_displayLayoutPublisher = v22;

    v24 = [MEMORY[0x277D3EA70] sharedInstance];
    deviceMotionDisableAssertionManager = v2->_deviceMotionDisableAssertionManager;
    v2->_deviceMotionDisableAssertionManager = v24;

    [(PRUISDeviceMotionDisablementAssertionManager *)v2->_deviceMotionDisableAssertionManager addObserver:v2];
    v26 = +[SBWallpaperController sharedInstance];
    LOBYTE(v8) = [v26 posterHasRequestedDeviceMotionEvents];

    if (v8)
    {
      [(FBSDisplayLayoutPublishing *)v2->_displayLayoutPublisher addObserver:v2];
    }

    else
    {
      v27 = [(SBLockScreenDeviceMotionEffectController *)v2 _acquirePosterClientDeviceMotionDisableAssertion];
      posterDeviceMotionDisableAssertion = v2->_posterDeviceMotionDisableAssertion;
      v2->_posterDeviceMotionDisableAssertion = v27;
    }

    [(SBLockScreenDeviceMotionEffectController *)v2 setUserPresenceDetected:1];
    [(SBLockScreenDeviceMotionEffectController *)v2 setWallpaperVisible:0];
    [(SBLockScreenDeviceMotionEffectController *)v2 setPosterClientWantsMotionEvents:0];
    [(SBLockScreenDeviceMotionEffectController *)v2 _updatePerformanceOptimizationState];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __48__SBLockScreenDeviceMotionEffectController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLockScreenForSensitiveUI];
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_defaultObserverToken invalidate];
  [(FBSDisplayLayoutPublishing *)self->_displayLayoutPublisher removeObserver:self];
  [(PRUISDeviceMotionController *)self->_posterDeviceMotionController invalidate];
  v3.receiver = self;
  v3.super_class = SBLockScreenDeviceMotionEffectController;
  [(SBLockScreenDeviceMotionEffectController *)&v3 dealloc];
}

- (void)setWallpaperVisible:(BOOL)a3
{
  if (self->_wallpaperVisible == a3)
  {
    return;
  }

  self->_wallpaperVisible = a3;
  wallpaperNotVisibleDeviceMotionDisableAssertion = self->_wallpaperNotVisibleDeviceMotionDisableAssertion;
  if (a3)
  {
    if (wallpaperNotVisibleDeviceMotionDisableAssertion)
    {
      [(BSInvalidatable *)wallpaperNotVisibleDeviceMotionDisableAssertion invalidate];
      v6 = 0;
LABEL_7:
      v7 = self->_wallpaperNotVisibleDeviceMotionDisableAssertion;
      self->_wallpaperNotVisibleDeviceMotionDisableAssertion = v6;
    }
  }

  else if (!wallpaperNotVisibleDeviceMotionDisableAssertion)
  {
    v6 = [(SBLockScreenDeviceMotionEffectController *)self _acquireWallpaperNotVisibleDeviceMotionDisableAssertion];
    goto LABEL_7;
  }

  [(SBLockScreenDeviceMotionEffectController *)self _updateClientWantsMotionEventState];
}

- (void)setWallpaperObscured:(BOOL)a3
{
  if (self->_wallpaperObscured != a3)
  {
    self->_wallpaperObscured = a3;
    wallpaperObscuredDeviceMotionDisableAssertion = self->_wallpaperObscuredDeviceMotionDisableAssertion;
    if (a3)
    {
      if (wallpaperObscuredDeviceMotionDisableAssertion)
      {
        return;
      }

      v5 = [(SBLockScreenDeviceMotionEffectController *)self _acquireWallpaperObscuredDeviceMotionDisableAssertion];
    }

    else
    {
      if (!wallpaperObscuredDeviceMotionDisableAssertion)
      {
        return;
      }

      [(BSInvalidatable *)wallpaperObscuredDeviceMotionDisableAssertion invalidate];
      v5 = 0;
    }

    v6 = self->_wallpaperObscuredDeviceMotionDisableAssertion;
    self->_wallpaperObscuredDeviceMotionDisableAssertion = v5;
  }
}

- (void)setPosterClientWantsMotionEvents:(BOOL)a3
{
  if (self->_posterClientWantsMotionEvents != a3)
  {
    self->_posterClientWantsMotionEvents = a3;
    posterDeviceMotionDisableAssertion = self->_posterDeviceMotionDisableAssertion;
    if (a3)
    {
      if (posterDeviceMotionDisableAssertion)
      {
        [(BSInvalidatable *)posterDeviceMotionDisableAssertion invalidate];
        v5 = self->_posterDeviceMotionDisableAssertion;
        self->_posterDeviceMotionDisableAssertion = 0;
      }

      displayLayoutPublisher = self->_displayLayoutPublisher;

      [(FBSDisplayLayoutPublishing *)displayLayoutPublisher addObserver:self];
    }

    else
    {
      if (!posterDeviceMotionDisableAssertion)
      {
        v7 = [(SBLockScreenDeviceMotionEffectController *)self _acquirePosterClientDeviceMotionDisableAssertion];
        v8 = self->_posterDeviceMotionDisableAssertion;
        self->_posterDeviceMotionDisableAssertion = v7;
      }

      v9 = self->_displayLayoutPublisher;

      [(FBSDisplayLayoutPublishing *)v9 removeObserver:self];
    }
  }
}

- (void)setPosterClientDeviceMotionMode:(unint64_t)a3
{
  if (self->_posterClientDeviceMotionMode != a3)
  {
    v8 = v3;
    self->_posterClientDeviceMotionMode = a3;
    if (a3 != 2)
    {
      a3 = a3 == 1;
    }

    [(PRUISDeviceMotionController *)self->_posterDeviceMotionController setDeviceMotionMode:a3, v4, v8, v5];

    [(SBLockScreenDeviceMotionEffectController *)self _updateClientWantsMotionEventState];
  }
}

- (void)setMotionUpdateInterval:(double)a3
{
  if (self->_motionUpdateInterval != a3)
  {
    self->_motionUpdateInterval = a3;
    [(PRUISDeviceMotionController *)self->_posterDeviceMotionController updateMotionUpdateInterval:2 reason:?];
  }
}

- (void)setUserPresenceDetected:(BOOL)a3
{
  if (self->_userPresenceDetected != a3)
  {
    self->_userPresenceDetected = a3;
    userPresenceDisableAssertion = self->_userPresenceDisableAssertion;
    if (a3)
    {
      if (!userPresenceDisableAssertion)
      {
        return;
      }

      [(BSInvalidatable *)userPresenceDisableAssertion invalidate];
      v5 = 0;
    }

    else
    {
      if (userPresenceDisableAssertion)
      {
        return;
      }

      v5 = [(SBLockScreenDeviceMotionEffectController *)self _acquireNoUserPresenceDeviceMotionDisableAssertion];
    }

    v6 = self->_userPresenceDisableAssertion;
    self->_userPresenceDisableAssertion = v5;
  }
}

- (void)setCoverSheetVisible:(BOOL)a3
{
  if (self->_coverSheetVisible != a3)
  {
    self->_coverSheetVisible = a3;
    coverSheetNotVisibleDisableAssertion = self->_coverSheetNotVisibleDisableAssertion;
    if (a3)
    {
      if (!coverSheetNotVisibleDisableAssertion)
      {
        return;
      }

      [(BSInvalidatable *)coverSheetNotVisibleDisableAssertion invalidate];
      v5 = 0;
    }

    else
    {
      if (coverSheetNotVisibleDisableAssertion)
      {
        return;
      }

      v5 = [(SBLockScreenDeviceMotionEffectController *)self _acquireCoverSheetNotVisibleDeviceMotionDisableAssertion];
    }

    v6 = self->_coverSheetNotVisibleDisableAssertion;
    self->_coverSheetNotVisibleDisableAssertion = v5;
  }
}

- (void)backlightController:(id)a3 didTransitionToBacklightState:(int64_t)a4 source:(int64_t)a5
{
  if (SBBacklightStateIsActive(a4) == a4)
  {
    if ((a5 > 0x2F || ((1 << a5) & 0x80E7E01122FCLL) == 0) && !self->_backlightChangeSourceDisableAssertion)
    {
      v12 = [(SBLockScreenDeviceMotionEffectController *)self _acquireBacklightChangeSourceDeviceMotionDisableAssertion];
      backlightChangeSourceDisableAssertion = self->_backlightChangeSourceDisableAssertion;
      self->_backlightChangeSourceDisableAssertion = v12;

      v14 = SBLogDeviceMotionEffect();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SBLockScreenDeviceMotionEffectController backlightController:a5 didTransitionToBacklightState:v14 source:?];
      }
    }

    backlightDeviceMotionDisableAssertion = self->_backlightDeviceMotionDisableAssertion;
    if (backlightDeviceMotionDisableAssertion)
    {
      [(BSInvalidatable *)backlightDeviceMotionDisableAssertion invalidate];
      v8 = self->_backlightDeviceMotionDisableAssertion;
      self->_backlightDeviceMotionDisableAssertion = 0;
LABEL_10:
    }
  }

  else
  {
    if (!self->_backlightDeviceMotionDisableAssertion)
    {
      v9 = [(SBLockScreenDeviceMotionEffectController *)self _acquireBacklightDeviceMotionDisableAssertion];
      v10 = self->_backlightDeviceMotionDisableAssertion;
      self->_backlightDeviceMotionDisableAssertion = v9;
    }

    v11 = self->_backlightChangeSourceDisableAssertion;
    if (v11)
    {
      [(BSInvalidatable *)v11 invalidate];
      v8 = self->_backlightChangeSourceDisableAssertion;
      self->_backlightChangeSourceDisableAssertion = 0;
      goto LABEL_10;
    }
  }

  [(SBLockScreenDeviceMotionEffectController *)self _updateClientWantsMotionEventState];
}

- (void)deviceMotionController:(uint64_t)a3 didUpdateMotionWithRotation:(_OWORD *)a4
{
  v6 = [a1[22] deviceMotionSettings];
  if ([v6 hasSignificantMotion] & 1) != 0 || (objc_msgSend(a1, "_isPerformanceOptimizationDisabled"))
  {

LABEL_4:
    v7 = +[SBWallpaperController sharedInstance];
    v8 = a4[1];
    v10[0] = *a4;
    v10[1] = v8;
    [v7 updateWallpaperAnimationWithRotation:v10];

    return;
  }

  v9 = [a1[19] optimizingSignificantMotion];

  if ((v9 & 1) == 0)
  {
    goto LABEL_4;
  }
}

- (void)deviceMotionControllerDidUpdateDeviceMotionSettings:(id)a3
{
  objc_initWeak(&location, self);
  performanceOptimizationUpdateQueue = self->_performanceOptimizationUpdateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__SBLockScreenDeviceMotionEffectController_deviceMotionControllerDidUpdateDeviceMotionSettings___block_invoke;
  v5[3] = &unk_2783A8C68;
  objc_copyWeak(&v6, &location);
  dispatch_async(performanceOptimizationUpdateQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __96__SBLockScreenDeviceMotionEffectController_deviceMotionControllerDidUpdateDeviceMotionSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePerformanceOptimizationState];
}

- (void)_updateClientWantsMotionEventState
{
  v4 = +[SBWallpaperController sharedInstance];
  v3 = ([v4 posterHasRequestedDeviceMotionEvents] & 1) != 0 || objc_msgSend(v4, "posterDeviceMotionMode") != 0;
  [(SBLockScreenDeviceMotionEffectController *)self setPosterClientWantsMotionEvents:v3];
}

- (void)_updateLockScreenForSensitiveUI
{
  v3 = [(SBLockScreenDeviceMotionEffectController *)self _isSensitiveUIEnabled];
  sensitiveUIDeviceMotionDisableAssertion = self->_sensitiveUIDeviceMotionDisableAssertion;
  if (v3)
  {
    if (!sensitiveUIDeviceMotionDisableAssertion)
    {
      return;
    }

    [(BSInvalidatable *)sensitiveUIDeviceMotionDisableAssertion invalidate];
    v5 = 0;
  }

  else
  {
    if (sensitiveUIDeviceMotionDisableAssertion)
    {
      return;
    }

    v5 = [(SBLockScreenDeviceMotionEffectController *)self _acquireSensitiveUIDeviceMotionDisableAssertion];
  }

  v6 = self->_sensitiveUIDeviceMotionDisableAssertion;
  self->_sensitiveUIDeviceMotionDisableAssertion = v5;
}

- (void)_updatePerformanceOptimizationState
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = [(SBLockScreenDeviceMotionEffectController *)self _isPerformanceOptimizationDisabled];
  [(SBLockScreenDeviceMotionEffectController *)self _updateLockScreenForSensitiveUI];
  v37 = v3;
  v4 = !v3;
  v5 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingReducedMotion]&& !v3;
  v6 = [(PRUISDeviceMotionController *)self->_posterDeviceMotionController deviceMotionSettings];
  v7 = [v6 isReducedMotionEnabled];

  v8 = [(PRUISDeviceMotionController *)self->_posterDeviceMotionController deviceMotionSettings];
  v9 = [v8 shouldIgnoreReducedMotionChange];

  reducedMotionDeviceMotionDisableAssertion = self->_reducedMotionDeviceMotionDisableAssertion;
  v35 = v7;
  v36 = v5;
  v11 = v5 != 1 || v7 == 0;
  if (v11 || (v9 & 1) != 0)
  {
    if (reducedMotionDeviceMotionDisableAssertion)
    {
      [(BSInvalidatable *)reducedMotionDeviceMotionDisableAssertion invalidate];
      v12 = 0;
      goto LABEL_10;
    }
  }

  else if (!reducedMotionDeviceMotionDisableAssertion)
  {
    v12 = [(SBLockScreenDeviceMotionEffectController *)self _acquireReducedMotionDeviceMotionDisableAssertion];
LABEL_10:
    v13 = self->_reducedMotionDeviceMotionDisableAssertion;
    self->_reducedMotionDeviceMotionDisableAssertion = v12;
  }

  v14 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingLowPower]& v4;
  v15 = [(PRUISDeviceMotionController *)self->_posterDeviceMotionController deviceMotionSettings];
  v16 = [v15 isLowPowerModeEnabled];

  lowPowerDeviceMotionDisableAssertion = self->_lowPowerDeviceMotionDisableAssertion;
  if (v14 == 1 && v16)
  {
    if (!lowPowerDeviceMotionDisableAssertion)
    {
      v18 = [(SBLockScreenDeviceMotionEffectController *)self _acquireLowPowerDeviceMotionDisableAssertion];
LABEL_17:
      v19 = self->_lowPowerDeviceMotionDisableAssertion;
      self->_lowPowerDeviceMotionDisableAssertion = v18;
    }
  }

  else if (lowPowerDeviceMotionDisableAssertion)
  {
    [(BSInvalidatable *)lowPowerDeviceMotionDisableAssertion invalidate];
    v18 = 0;
    goto LABEL_17;
  }

  v20 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingWallpaperObscured]& v4;
  v21 = [(SBLockScreenDeviceMotionEffectController *)self isWallpaperObscured];
  wallpaperObscuredDeviceMotionDisableAssertion = self->_wallpaperObscuredDeviceMotionDisableAssertion;
  if (v20 == 1 && v21)
  {
    if (!wallpaperObscuredDeviceMotionDisableAssertion)
    {
      v23 = [(SBLockScreenDeviceMotionEffectController *)self _acquireWallpaperObscuredDeviceMotionDisableAssertion];
LABEL_24:
      v24 = self->_wallpaperObscuredDeviceMotionDisableAssertion;
      self->_wallpaperObscuredDeviceMotionDisableAssertion = v23;
    }
  }

  else if (wallpaperObscuredDeviceMotionDisableAssertion)
  {
    [(BSInvalidatable *)wallpaperObscuredDeviceMotionDisableAssertion invalidate];
    v23 = 0;
    goto LABEL_24;
  }

  v25 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingUserPresence]& v4;
  v26 = [(SBLockScreenDeviceMotionEffectController *)self isUserPresenceDetected];
  userPresenceDisableAssertion = self->_userPresenceDisableAssertion;
  if (v25 != 1 || v26)
  {
    if (!userPresenceDisableAssertion)
    {
      goto LABEL_32;
    }

    [(BSInvalidatable *)userPresenceDisableAssertion invalidate];
    v28 = 0;
  }

  else
  {
    if (userPresenceDisableAssertion)
    {
      goto LABEL_32;
    }

    v28 = [(SBLockScreenDeviceMotionEffectController *)self _acquireNoUserPresenceDeviceMotionDisableAssertion];
  }

  v29 = self->_userPresenceDisableAssertion;
  self->_userPresenceDisableAssertion = v28;

LABEL_32:
  v30 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingSignificantMotion];
  v31 = [(PRUISDeviceMotionController *)self->_posterDeviceMotionController deviceMotionSettings];
  v32 = [v31 hasSignificantMotion];

  v33 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingBacklightChangeSource];
  v34 = SBLogDeviceMotionEffect();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111936;
    v39 = v37;
    v40 = 1024;
    v41 = v36;
    v42 = 1024;
    v43 = v35;
    v44 = 1024;
    v45 = v14;
    v46 = 1024;
    v47 = v16;
    v48 = 1024;
    v49 = v20;
    v50 = 1024;
    v51 = v21;
    v52 = 1024;
    v53 = v25;
    v54 = 1024;
    v55 = v26;
    v56 = 1024;
    v57 = v30;
    v58 = 1024;
    v59 = v32;
    v60 = 1024;
    v61 = v33;
    _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Device Motion Effect performance optimization settings have changed. areAllPerformanceOptimizationsDisabled: %{BOOL}u, Reduced Motion(OptimizationEnabled: %{BOOL}u, ReducedMotionSetting: %{BOOL}u), Low Power Mode(OptimizationEnabled: %{BOOL}u, LowPowerModeSetting: %{BOOL}u), Wallpaper Obscured(OptimizationEnabled: %{BOOL}u, isWallpaperObscured: %{BOOL}u), User Presence(OptimizationEnabled: %{BOOL}u, isUserPresenceDetected: %{BOOL}u), Significant Motion (OptimizationEnabled: %{BOOL}u, hasSignificantMotion: %{BOOL}u), Backlight Change Source(OptimizationEnabled: %{BOOL}u)", buf, 0x4Au);
  }
}

- (id)_acquireReducedMotionDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingReducedMotion];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"ReduceMotionDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireLowPowerDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingLowPower];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"LowPowerDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireWallpaperObscuredDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingWallpaperObscured];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"WallpaperObscuredDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireBacklightChangeSourceDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingBacklightChangeSource];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"BacklightChangeSourceDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireNoUserPresenceDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingUserPresence];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"NoUserPresenceDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireCoverSheetNotVisibleDeviceMotionDisableAssertion
{
  v3 = [(SBDeviceMotionEffectSettings *)self->_deviceMotionEffectPrototypeSettings optimizingWallpaperObscured];

  return [(SBLockScreenDeviceMotionEffectController *)self _acquireDisableAssertionForReason:@"CoverSheetNotVisibleDidDisableMotionEvents" optimizationEnabled:v3];
}

- (id)_acquireDisableAssertionForReason:(id)a3 optimizationEnabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0;
  if (![(SBLockScreenDeviceMotionEffectController *)self _isPerformanceOptimizationDisabled]&& v4)
  {
    v7 = [(PRUISDeviceMotionDisablementAssertionManager *)self->_deviceMotionDisableAssertionManager acquireDeviceMotionDisablementAssertionForReason:v6];
  }

  return v7;
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  objc_initWeak(&location, self);
  performanceOptimizationUpdateQueue = self->_performanceOptimizationUpdateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBLockScreenDeviceMotionEffectController_settings_changedValueForKeyPath___block_invoke;
  v6[3] = &unk_2783A8C68;
  objc_copyWeak(&v7, &location);
  dispatch_async(performanceOptimizationUpdateQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __76__SBLockScreenDeviceMotionEffectController_settings_changedValueForKeyPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = SBLogDeviceMotionEffect();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Device Motion Effect settings have changed.", v3, 2u);
  }

  [WeakRetained _updatePerformanceOptimizationState];
}

void __103__SBLockScreenDeviceMotionEffectController_deviceMotionDisableAssertionManager_didDisableDeviceMotion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[SBWallpaperController sharedInstance];
  v3 = v2;
  if (v1 == 1)
  {
    [v2 hostDidEndDeviceMotionEventGeneration];
  }

  else
  {
    [v2 hostWillStartDeviceMotionEventGeneration];
  }
}

- (void)publisher:(id)a3 didUpdateLayout:(id)a4 withTransition:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__27;
  v28 = __Block_byref_object_dispose__27;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__27;
  v22 = __Block_byref_object_dispose__27;
  v23 = 0;
  v11 = [v9 elements];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__SBLockScreenDeviceMotionEffectController_publisher_didUpdateLayout_withTransition___block_invoke;
  v17[3] = &unk_2783B05D8;
  v17[4] = &v18;
  v17[5] = &v24;
  [v11 enumerateObjectsWithOptions:2 usingBlock:v17];

  v12 = v25[5];
  if (v12)
  {
    v13 = v12 == v19[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = SBLogDeviceMotionEffect();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v19[5] identifier];
    *buf = 138412546;
    v31 = v16;
    v32 = 1024;
    v33 = v14;
    _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBLockScreenDeviceMotionEffectController: Highest element in layout: %@, isCoverSheetVisible: %{BOOL}u", buf, 0x12u);
  }

  [(SBLockScreenDeviceMotionEffectController *)self setCoverSheetVisible:v14];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void __85__SBLockScreenDeviceMotionEffectController_publisher_didUpdateLayout_withTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  v13 = v7;
  if (!v10)
  {
    objc_storeStrong(v9, a2);
    v7 = v13;
  }

  v11 = [v7 identifier];
  v12 = [v11 rangeOfString:*MEMORY[0x277D0ABA0] options:1];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  if (*(*(*(a1 + 40) + 8) + 40) && *(*(*(a1 + 32) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)backlightController:(uint64_t)a1 didTransitionToBacklightState:(NSObject *)a2 source:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = SBSBacklightChangeSourceDescription(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Backlight change source disabled device motion effect: %@", &v4, 0xCu);
}

@end