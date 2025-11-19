@interface SBScreenWakeAnimationController
+ (double)_animationSpeedForBacklightChangeSource:(int64_t)a3 isWake:(BOOL)a4;
+ (double)backlightFadeDurationForSource:(int64_t)a3 isWake:(BOOL)a4;
+ (id)sharedInstance;
- (BOOL)interruptSleepAnimationIfNeeded;
- (BOOL)isWakeAnimationInProgressForSource:(int64_t)a3;
- (SBScreenWakeAnimationController)init;
- (SBScreenWakeAnimationControllerDelegate)delegate;
- (id)_animationSettingsForBacklightChangeSource:(int64_t)a3 isWake:(BOOL)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_cleanupAnimationWhenInterruptingWaking:(BOOL)a3 force:(BOOL)a4;
- (void)_handleAnimationCompletionIfNecessaryForWaking:(BOOL)a3 force:(BOOL)a4;
- (void)_runCompletionHandlerForWake:(BOOL)a3 reason:(id)a4;
- (void)_setInteractionEventsIgnored:(BOOL)a3;
- (void)_setLastBacklightChangeSource:(int64_t)a3;
- (void)_startWakeAnimationsForWaking:(BOOL)a3 animationSettings:(id)a4;
- (void)_startWakeFromUnblankNotification;
- (void)_startWakeIfNecessary;
- (void)_updateWakeEffectsForWake:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)dealloc;
- (void)prepareToWakeForSource:(int64_t)a3 timeAlpha:(double)a4 statusBarAlpha:(double)a5 target:(id)a6 dateView:(id)a7 completion:(id)a8;
- (void)setScreenWakeTemporarilyDisabled:(BOOL)a3 forReason:(id)a4;
- (void)sleepForSource:(int64_t)a3 completion:(id)a4;
- (void)sleepForSource:(int64_t)a3 target:(id)a4 completion:(id)a5;
@end

@implementation SBScreenWakeAnimationController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_31 != -1)
  {
    +[SBScreenWakeAnimationController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_16;

  return v3;
}

- (BOOL)interruptSleepAnimationIfNeeded
{
  v3 = [(SBScreenWakeAnimationController *)self isSleepAnimationInProgress];
  if (v3)
  {
    [(SBScreenWakeAnimationController *)self _cleanupAnimationWhenInterruptingWaking:0];
  }

  return v3;
}

- (void)_startWakeFromUnblankNotification
{
  v3 = SBLogScreenWake();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "_startWakeFromUnblankNotification", v4, 2u);
  }

  [(SBScreenWakeAnimationController *)self _startWakeIfNecessary];
}

- (void)_startWakeIfNecessary
{
  if (self->_waitingForScreenUnblank)
  {
    v3 = SBLogScreenWake();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "no longer waiting for screen unblank", v6, 2u);
    }

    self->_waitingForScreenUnblank = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];
  }

  if (self->_preparingToAnimateWake)
  {
    *&self->_preparingToAnimateWake = 256;
    v5 = [(SBScreenWakeAnimationController *)self _animationSettingsForBacklightChangeSource:self->_lastBacklightChangeSource isWake:1];
    [(SBScreenWakeAnimationController *)self _startWakeAnimationsForWaking:1 animationSettings:v5];
  }

  else
  {
    [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:1 reason:@"_startWakeIfNecessary not preparing to animate wake"];
  }
}

- (SBScreenWakeAnimationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __49__SBScreenWakeAnimationController_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBScreenWakeAnimationController);
  v1 = sharedInstance___sharedInstance_16;
  sharedInstance___sharedInstance_16 = v0;

  return kdebug_trace();
}

+ (double)backlightFadeDurationForSource:(int64_t)a3 isWake:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277D65FB8] rootSettings];
  [objc_opt_class() _animationSpeedForBacklightChangeSource:a3 isWake:v4];
  v8 = v7;
  [v6 backlightFadeDuration];
  v10 = v9 / v8;

  return v10;
}

+ (double)_animationSpeedForBacklightChangeSource:(int64_t)a3 isWake:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277D65FB8] rootSettings];
  v7 = v6;
  if (a3 == 47)
  {
    [v6 speedMultiplierForMagicKeyboardExtended];
  }

  else
  {
    v8 = 1.0;
    if (a3 != 20)
    {
      goto LABEL_6;
    }

    [v6 speedMultiplierForLiftToWake];
  }

  v8 = v9;
LABEL_6:
  if (v4)
  {
    [v7 speedMultiplierForWake];
    v8 = v8 * v10;
  }

  return v8;
}

- (SBScreenWakeAnimationController)init
{
  v9.receiver = self;
  v9.super_class = SBScreenWakeAnimationController;
  v2 = [(SBScreenWakeAnimationController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    temporaryDisabledReasons = v2->_temporaryDisabledReasons;
    v2->_temporaryDisabledReasons = v3;

    v5 = [SBApp windowSceneManager];
    v6 = [v5 embeddedDisplayWindowScene];

    v7 = [v6 statusBarManager];
    objc_storeWeak(&v2->_statusBarManager, v7);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBScreenWakeAnimationController;
  [(SBScreenWakeAnimationController *)&v4 dealloc];
}

- (BOOL)isWakeAnimationInProgressForSource:(int64_t)a3
{
  v5 = [(SBScreenWakeAnimationController *)self isWakeAnimationInProgress];
  if (v5)
  {
    LOBYTE(v5) = self->_lastBacklightChangeSource == a3;
  }

  return v5;
}

- (id)_animationSettingsForBacklightChangeSource:(int64_t)a3 isWake:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277D65FB8] rootSettings];
  [objc_opt_class() _animationSpeedForBacklightChangeSource:a3 isWake:v4];
  v8 = v7;
  v9 = [v6 contentWakeSettings];
  [v9 setSpeed:v8];

  v10 = [v6 awakeWallpaperFilterSettings];
  [v10 setSpeed:v8];

  v11 = [v6 sleepWallpaperFilterSettings];
  [v11 setSpeed:v8];

  return v6;
}

- (void)_setInteractionEventsIgnored:(BOOL)a3
{
  if (self->_ignoringInteractionEvents != a3)
  {
    self->_ignoringInteractionEvents = a3;
    if (a3)
    {
      [SBApp beginIgnoringInteractionEventsForReason:@"lift-to-wake"];
    }

    else
    {
      [SBApp endIgnoringInteractionEventsForReason:@"lift-to-wake"];
    }
  }
}

- (void)prepareToWakeForSource:(int64_t)a3 timeAlpha:(double)a4 statusBarAlpha:(double)a5 target:(id)a6 dateView:(id)a7 completion:(id)a8
{
  v49 = *MEMORY[0x277D85DE8];
  v15 = a6;
  v16 = a8;
  v17 = SBLogScreenWake();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = SBSBacklightChangeSourceDescription(a3);
    *buf = 138543874;
    v44 = v18;
    v45 = 2048;
    v46 = a4;
    v47 = 2048;
    v48 = a5;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "prepareToWakeForSource: %{public}@ timeAlpha: %.2f statusBarAlpha: %.2f", buf, 0x20u);
  }

  objc_storeStrong(&self->_target, a6);
  self->_preparingToAnimateWake = 1;
  v19 = [(SBScreenWakeAnimationController *)self interruptSleepAnimationIfNeeded];
  [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:1 reason:@"prepareToWake cleanup previous handler"];
  v20 = MEMORY[0x277CF0BA0];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke;
  v40[3] = &unk_2783B9A48;
  v40[4] = self;
  v21 = v16;
  v41 = v21;
  v42 = a2;
  v22 = [v20 sentinelWithQueue:MEMORY[0x277D85CD0] signalHandler:v40];
  v35 = MEMORY[0x277D85DD0];
  v36 = 3221225472;
  v37 = __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke_2;
  v38 = &unk_2783A8C18;
  v23 = v22;
  v39 = v23;
  v24 = [&v35 copy];
  wakeCompletionBlock = self->_wakeCompletionBlock;
  self->_wakeCompletionBlock = v24;

  [(SBScreenWakeAnimationController *)self _setLastBacklightChangeSource:a3, v35, v36, v37, v38];
  self->_finalTimeAlpha = a4;
  self->_finalStatusBarAlpha = a5;
  if (!v19)
  {
    [(SBScreenWakeAnimationController *)self _setRelevantLockScreenViewsHidden:1];
    v26 = SBLogStatusBarish();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [SBScreenWakeAnimationController prepareToWakeForSource:v26 timeAlpha:? statusBarAlpha:? target:? dateView:? completion:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_statusBarManager);
    v28 = [WeakRetained assertionManager];

    v29 = [v28 newSettingsAssertionWithStatusBarHidden:1 atLevel:9 reason:@"screenFadeAnimationController"];
    statusBarAssertion = self->_statusBarAssertion;
    self->_statusBarAssertion = v29;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion acquire];
  }

  v31 = +[SBBacklightController sharedInstance];
  v32 = v31;
  if (!v19)
  {
    -[SBScreenWakeAnimationController _updateWakeEffectsForWake:animated:completion:](self, "_updateWakeEffectsForWake:animated:completion:", [v31 backlightState] == 3, 0, 0);
  }

  *&self->_animatingForWake = 0;
  [(SBScreenWakeAnimationController *)self _setInteractionEventsIgnored:a3 == 20];
  if ([v32 screenIsOn])
  {
    [(SBScreenWakeAnimationController *)self _startWakeIfNecessary];
  }

  else
  {
    v33 = SBLogScreenWake();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "now waiting for screen unblank", buf, 2u);
    }

    self->_waitingForScreenUnblank = 1;
    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:self selector:sel__startWakeFromUnblankNotification name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];
  }
}

void __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) _setInteractionEventsIgnored:0];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = +[SBPlatformController sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5 && [v6 isFailed])
  {
    __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke_cold_1(a1, (a1 + 32));
  }
}

uint64_t __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogScreenWake();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, " inside _wakeCompletionBlock", v5, 2u);
  }

  v3 = [MEMORY[0x277D66010] sharedInstance];
  [v3 wakeDidEnd];

  return [*(a1 + 32) signal];
}

- (void)_updateWakeEffectsForWake:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v11 = a5;
  v8 = +[SBWallpaperController sharedInstance];
  v9 = [v8 posterHandlesWakeAnimation];

  target = self->_target;
  if (v9)
  {
    [(SBFScreenWakeAnimationTarget *)target removeAllWakeEffects];
  }

  else
  {
    [(SBFScreenWakeAnimationTarget *)target updateWakeEffectsForWake:v6 animated:v5 completion:v11];
  }
}

- (void)_cleanupAnimationWhenInterruptingWaking:(BOOL)a3 force:(BOOL)a4
{
  *&self->_animatingWallpaper = 0;
  self->_animatingBacklight = 0;
  [(SBScreenWakeAnimationController *)self _handleAnimationCompletionIfNecessaryForWaking:a3 force:a4];
}

- (void)_setLastBacklightChangeSource:(int64_t)a3
{
  if (self->_lastBacklightChangeSource != a3)
  {
    self->_lastBacklightChangeSource = a3;
  }
}

- (void)_startWakeAnimationsForWaking:(BOOL)a3 animationSettings:(id)a4
{
  v4 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogScreenWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = v4;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_startWakeAnimationsForWaking: %{BOOL}d", buf, 8u);
  }

  v8 = self->_animationToken + 1;
  self->_animationToken = v8;
  v9 = +[SBBacklightController sharedInstance];
  if (v4)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  v11 = [(SBScreenWakeAnimationController *)self delegate];
  v12 = v11;
  if (v11)
  {
    v10 = [v11 targetBacklightStateForSource:self->_lastBacklightChangeSource isWake:v4];
  }

  lastBacklightChangeSource = self->_lastBacklightChangeSource;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke;
  v28[3] = &unk_2783A97D8;
  v31 = v4;
  v14 = v9;
  v29 = v14;
  v30 = self;
  [v14 setBacklightState:v10 source:lastBacklightChangeSource animated:1 completion:v28];
  if (!v4)
  {
    if ([v14 backlightState] != 3)
    {
      v16 = 0;
      *&self->_animatingContent = 256;
      goto LABEL_15;
    }

    self->_finalTimeAlpha = 1.0;
  }

  self->_animatingBacklight = 0;
  v15 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_HANDLE_WAKE", " enableTelemetry=YES  isAnimation=YES ", buf, 2u);
  }

  kdebug_trace();
  v16 = 1;
  self->_animatingContent = 1;
  v17 = MEMORY[0x277CF0D38];
  v18 = [v6 contentWakeSettings];
  v19 = [v18 BSAnimationSettings];
  v20 = [v17 factoryWithSettings:v19];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50;
  v27[3] = &unk_2783A8C18;
  v27[4] = self;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_2;
  v24[3] = &unk_2783B9A98;
  v25 = v8;
  v24[4] = self;
  v26 = 1;
  [MEMORY[0x277CF0D38] animateWithFactory:v20 options:6 actions:v27 completion:v24];

LABEL_15:
  self->_animatingWallpaper = 1;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_57;
  v21[3] = &unk_2783B9A98;
  v22 = v8;
  v21[4] = self;
  v23 = v16;
  [(SBScreenWakeAnimationController *)self _updateWakeEffectsForWake:v16 animated:1 completion:v21];
}

uint64_t __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    v1 = result;
    result = [*(result + 32) screenIsOn];
    if ((result & 1) == 0)
    {
      *(*(v1 + 40) + 82) = 0;
      v2 = *(v1 + 40);

      return [v2 _cleanupAnimationWhenInterruptingWaking:0 force:1];
    }
  }

  return result;
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50(uint64_t a1)
{
  v1 = a1 + 32;
  [*(a1 + 32) _setRelevantLockScreenViewsHidden:0];
  v2 = +[SBLockScreenManager sharedInstance];
  v3 = [v2 isLockScreenDisabledForAssertion];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*v1 + 104));
    v5 = [WeakRetained statusBar];

    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50_cold_2(v5, v6);
    }

    v7 = *(*v1 + 96);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_52;
    v13[3] = &unk_2783B9A70;
    v14 = v5;
    v8 = v5;
    [v7 modifySettingsWithBlock:v13];
  }

  else
  {
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50_cold_1(v1, v9);
    }

    v10 = *v1;
    v11 = *(*v1 + 96);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_55;
    v12[3] = &unk_2783B9A70;
    v12[4] = v10;
    [v11 modifySettingsWithBlock:v12];
  }
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_52(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 alpha];
  v5 = [v2 numberWithDouble:?];
  [v4 setAlpha:v5];
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_55(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*(a1 + 32) + 32);
  v4 = a2;
  v5 = [v2 numberWithDouble:v3];
  [v4 setAlpha:v5];
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_2(uint64_t a1)
{
  v2 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_21ED4E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SB_LOCKSCREEN_HANDLE_WAKE", " enableTelemetry=YES  isAnimation=YES ", v6, 2u);
  }

  kdebug_trace();
  v3 = *(a1 + 32);
  if (*(a1 + 40) == *(v3 + 56))
  {
    *(v3 + 81) = 0;
    [*(a1 + 32) _setInteractionEventsIgnored:0];
    [*(a1 + 32) _handleAnimationCompletionIfNecessaryForWaking:*(a1 + 44)];
    [*(*(a1 + 32) + 96) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = 0;
  }
}

uint64_t __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_57(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) == *(v1 + 56))
  {
    *(v1 + 80) = 0;
    return [*(result + 32) _handleAnimationCompletionIfNecessaryForWaking:*(result + 44)];
  }

  return result;
}

- (void)setScreenWakeTemporarilyDisabled:(BOOL)a3 forReason:(id)a4
{
  temporaryDisabledReasons = self->_temporaryDisabledReasons;
  if (a3)
  {
    [(NSMutableSet *)temporaryDisabledReasons addObject:a4];
  }

  else
  {
    [(NSMutableSet *)temporaryDisabledReasons removeObject:a4];
  }
}

- (void)sleepForSource:(int64_t)a3 target:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_target, a4);
  if ([(NSMutableSet *)self->_temporaryDisabledReasons count])
  {
    v11 = SBLogBacklight();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      temporaryDisabledReasons = self->_temporaryDisabledReasons;
      v13 = 138543362;
      v14 = temporaryDisabledReasons;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Should not turn the screen off due to outstanding reasons: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    [(SBScreenWakeAnimationController *)self sleepForSource:a3 completion:v10];
  }
}

- (void)sleepForSource:(int64_t)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SBScreenWakeAnimationController *)self isWakeAnimationInProgress];
  v8 = SBLogScreenWake();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = SBSBacklightChangeSourceDescription(a3);
    *buf = 138543618;
    v18 = v9;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "sleepForSource:%{public}@ reversingWake:%{BOOL}u", buf, 0x12u);
  }

  if (v7)
  {
    self->_waitingForScreenUnblank = 0;
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:self name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];

    [(SBScreenWakeAnimationController *)self _cleanupAnimationWhenInterruptingWaking:1];
  }

  [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:0 reason:@"sleepForSource cleanup previous handler"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SBScreenWakeAnimationController_sleepForSource_completion___block_invoke;
  v15[3] = &unk_2783A9348;
  v16 = v6;
  v11 = v6;
  v12 = [v15 copy];
  sleepCompletionBlock = self->_sleepCompletionBlock;
  self->_sleepCompletionBlock = v12;

  self->_finalTimeAlpha = 0.0;
  *&self->_preparingToAnimateWake = 0;
  self->_animatingForSleep = 1;
  [(SBScreenWakeAnimationController *)self _setLastBacklightChangeSource:a3];
  v14 = [(SBScreenWakeAnimationController *)self _animationSettingsForBacklightChangeSource:self->_lastBacklightChangeSource isWake:0];
  [(SBScreenWakeAnimationController *)self _startWakeAnimationsForWaking:0 animationSettings:v14];
}

uint64_t __61__SBScreenWakeAnimationController_sleepForSource_completion___block_invoke(uint64_t a1)
{
  v2 = SBLogScreenWake();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, " inside _sleepCompletionBlock", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleAnimationCompletionIfNecessaryForWaking:(BOOL)a3 force:(BOOL)a4
{
  v4 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v6 = !self->_animatingBacklight && !self->_animatingWallpaper && !self->_animatingContent && (!self->_waitingForScreenUnblank || a4);
  v7 = !self->_preparingToAnimateWake && !self->_animatingForWake && !self->_animatingForSleep && !self->_waitingForScreenUnblank;
  *&self->_animatingForWake = 0;
  if (v6)
  {
    v8 = SBLogScreenWake();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = v4;
      v16 = 1024;
      LODWORD(v17) = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "_handleAnimationCompletionIfNecessaryForWaking:%{BOOL}u invoking callback (cleanupTarget:%{BOOL}u)", &v14, 0xEu);
    }

    [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:v4 reason:@"animation complete"];
    [(SBScreenWakeAnimationController *)self _setRelevantLockScreenViewsHidden:0];
    if (!v7)
    {
      return;
    }

LABEL_25:
    target = self->_target;
    self->_target = 0;

    return;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = v9;
  if (self->_animatingBacklight)
  {
    [v9 addObject:@"animatingBacklight"];
  }

  if (self->_animatingWallpaper)
  {
    [v10 addObject:@"animatingWallpaper"];
  }

  if (self->_animatingContent)
  {
    [v10 addObject:@"animatingContent"];
  }

  if (self->_waitingForScreenUnblank)
  {
    [v10 addObject:@"waitingForScreenUnblank"];
  }

  v11 = SBLogScreenWake();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 componentsJoinedByString:{@", "}];
    v14 = 67109634;
    v15 = v4;
    v16 = 2114;
    v17 = v12;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "_handleAnimationCompletionIfNecessaryForWaking:%{BOOL}u skipping callback because:(%{public}@) (cleanupTarget:%{BOOL}u)", &v14, 0x18u);
  }

  if (v7)
  {
    goto LABEL_25;
  }
}

- (void)_runCompletionHandlerForWake:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v4)
  {
    if (self->_wakeCompletionBlock)
    {
      if (self->_insideWakeCompletionBlock)
      {
        [SBScreenWakeAnimationController _runCompletionHandlerForWake:reason:];
      }

      v7 = SBLogScreenWake();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v6;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, " invoking _wakeCompletionBlock reason:%{public}@", &v13, 0xCu);
      }

      self->_insideWakeCompletionBlock = 1;
      (*(self->_wakeCompletionBlock + 2))();
      self->_insideWakeCompletionBlock = 0;
      wakeCompletionBlock = self->_wakeCompletionBlock;
      self->_wakeCompletionBlock = 0;

      statusBarAssertion = self->_statusBarAssertion;
      p_statusBarAssertion = &self->_statusBarAssertion;
      [(SBWindowSceneStatusBarSettingsAssertion *)statusBarAssertion invalidate];
LABEL_14:
      v12 = *p_statusBarAssertion;
      *p_statusBarAssertion = 0;
    }
  }

  else if (self->_sleepCompletionBlock)
  {
    if (self->_insideSleepCompletionBlock)
    {
      [SBScreenWakeAnimationController _runCompletionHandlerForWake:reason:];
    }

    v11 = SBLogScreenWake();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, " invoking _sleepCompletionBlock reason:%{public}@", &v13, 0xCu);
    }

    self->_insideSleepCompletionBlock = 1;
    (*(self->_sleepCompletionBlock + 2))();
    self->_insideSleepCompletionBlock = 0;
    p_statusBarAssertion = &self->_sleepCompletionBlock;
    goto LABEL_14;
  }
}

- (id)succinctDescription
{
  v2 = [(SBScreenWakeAnimationController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBScreenWakeAnimationController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBScreenWakeAnimationController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBScreenWakeAnimationController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __73__SBScreenWakeAnimationController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 48) withName:@"isPreparingToAnimateWake"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 49) withName:@"isAnimatingForWake"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 50) withName:@"isAnimatingForSleep"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 51) withName:@"insideWakeCompletionBlock"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 52) withName:@"insideSleepCompletionBlock"];
  v7 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 56) withName:@"animationToken"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 80) withName:@"isAnimatingWallpaper"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 82) withName:@"isAnimatingBacklight"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 81) withName:@"isAnimatingContent"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"wakeEffectTarget"];
}

- (void)prepareToWakeForSource:(os_log_t)log timeAlpha:statusBarAlpha:target:dateView:completion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[SBScreenWakeAnimationController prepareToWakeForSource:timeAlpha:statusBarAlpha:target:dateView:completion:]";
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "%s: setting status bar alpha: 0", &v1, 0xCu);
}

void __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"SBScreenWakeAnimationController.m" lineNumber:192 description:@"Wake animation completion block failed to fire organically"];
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 32);
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[SBScreenWakeAnimationController] _startFadeAnimationsForFadeIn: setting status bar alpha: %f", &v3, 0xCu);
}

void __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke_50_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 alpha];
  v4 = 134217984;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[SBScreenWakeAnimationController] _startFadeAnimationsForFadeIn: setting status bar alpha: %f", &v4, 0xCu);
}

- (void)_runCompletionHandlerForWake:reason:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenWakeAnimationController _runCompletionHandlerForWake:reason:]"];
  [v1 handleFailureInFunction:v0 file:@"SBScreenWakeAnimationController.m" lineNumber:481 description:@"really shouldn't invoke the sleep block from inside the sleep block"];
}

- (void)_runCompletionHandlerForWake:reason:.cold.2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenWakeAnimationController _runCompletionHandlerForWake:reason:]"];
  [v1 handleFailureInFunction:v0 file:@"SBScreenWakeAnimationController.m" lineNumber:469 description:@"really shouldn't invoke the wake block from inside the wake block"];
}

@end