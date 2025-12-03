@interface SBScreenWakeAnimationController
+ (double)_animationSpeedForBacklightChangeSource:(int64_t)source isWake:(BOOL)wake;
+ (double)backlightFadeDurationForSource:(int64_t)source isWake:(BOOL)wake;
+ (id)sharedInstance;
- (BOOL)interruptSleepAnimationIfNeeded;
- (BOOL)isWakeAnimationInProgressForSource:(int64_t)source;
- (SBScreenWakeAnimationController)init;
- (SBScreenWakeAnimationControllerDelegate)delegate;
- (id)_animationSettingsForBacklightChangeSource:(int64_t)source isWake:(BOOL)wake;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_cleanupAnimationWhenInterruptingWaking:(BOOL)waking force:(BOOL)force;
- (void)_handleAnimationCompletionIfNecessaryForWaking:(BOOL)waking force:(BOOL)force;
- (void)_runCompletionHandlerForWake:(BOOL)wake reason:(id)reason;
- (void)_setInteractionEventsIgnored:(BOOL)ignored;
- (void)_setLastBacklightChangeSource:(int64_t)source;
- (void)_startWakeAnimationsForWaking:(BOOL)waking animationSettings:(id)settings;
- (void)_startWakeFromUnblankNotification;
- (void)_startWakeIfNecessary;
- (void)_updateWakeEffectsForWake:(BOOL)wake animated:(BOOL)animated completion:(id)completion;
- (void)dealloc;
- (void)prepareToWakeForSource:(int64_t)source timeAlpha:(double)alpha statusBarAlpha:(double)barAlpha target:(id)target dateView:(id)view completion:(id)completion;
- (void)setScreenWakeTemporarilyDisabled:(BOOL)disabled forReason:(id)reason;
- (void)sleepForSource:(int64_t)source completion:(id)completion;
- (void)sleepForSource:(int64_t)source target:(id)target completion:(id)completion;
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
  isSleepAnimationInProgress = [(SBScreenWakeAnimationController *)self isSleepAnimationInProgress];
  if (isSleepAnimationInProgress)
  {
    [(SBScreenWakeAnimationController *)self _cleanupAnimationWhenInterruptingWaking:0];
  }

  return isSleepAnimationInProgress;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];
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

+ (double)backlightFadeDurationForSource:(int64_t)source isWake:(BOOL)wake
{
  wakeCopy = wake;
  rootSettings = [MEMORY[0x277D65FB8] rootSettings];
  [objc_opt_class() _animationSpeedForBacklightChangeSource:source isWake:wakeCopy];
  v8 = v7;
  [rootSettings backlightFadeDuration];
  v10 = v9 / v8;

  return v10;
}

+ (double)_animationSpeedForBacklightChangeSource:(int64_t)source isWake:(BOOL)wake
{
  wakeCopy = wake;
  rootSettings = [MEMORY[0x277D65FB8] rootSettings];
  v7 = rootSettings;
  if (source == 47)
  {
    [rootSettings speedMultiplierForMagicKeyboardExtended];
  }

  else
  {
    v8 = 1.0;
    if (source != 20)
    {
      goto LABEL_6;
    }

    [rootSettings speedMultiplierForLiftToWake];
  }

  v8 = v9;
LABEL_6:
  if (wakeCopy)
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

    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

    statusBarManager = [embeddedDisplayWindowScene statusBarManager];
    objc_storeWeak(&v2->_statusBarManager, statusBarManager);
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBScreenWakeAnimationController;
  [(SBScreenWakeAnimationController *)&v4 dealloc];
}

- (BOOL)isWakeAnimationInProgressForSource:(int64_t)source
{
  isWakeAnimationInProgress = [(SBScreenWakeAnimationController *)self isWakeAnimationInProgress];
  if (isWakeAnimationInProgress)
  {
    LOBYTE(isWakeAnimationInProgress) = self->_lastBacklightChangeSource == source;
  }

  return isWakeAnimationInProgress;
}

- (id)_animationSettingsForBacklightChangeSource:(int64_t)source isWake:(BOOL)wake
{
  wakeCopy = wake;
  rootSettings = [MEMORY[0x277D65FB8] rootSettings];
  [objc_opt_class() _animationSpeedForBacklightChangeSource:source isWake:wakeCopy];
  v8 = v7;
  contentWakeSettings = [rootSettings contentWakeSettings];
  [contentWakeSettings setSpeed:v8];

  awakeWallpaperFilterSettings = [rootSettings awakeWallpaperFilterSettings];
  [awakeWallpaperFilterSettings setSpeed:v8];

  sleepWallpaperFilterSettings = [rootSettings sleepWallpaperFilterSettings];
  [sleepWallpaperFilterSettings setSpeed:v8];

  return rootSettings;
}

- (void)_setInteractionEventsIgnored:(BOOL)ignored
{
  if (self->_ignoringInteractionEvents != ignored)
  {
    self->_ignoringInteractionEvents = ignored;
    if (ignored)
    {
      [SBApp beginIgnoringInteractionEventsForReason:@"lift-to-wake"];
    }

    else
    {
      [SBApp endIgnoringInteractionEventsForReason:@"lift-to-wake"];
    }
  }
}

- (void)prepareToWakeForSource:(int64_t)source timeAlpha:(double)alpha statusBarAlpha:(double)barAlpha target:(id)target dateView:(id)view completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  completionCopy = completion;
  v17 = SBLogScreenWake();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = SBSBacklightChangeSourceDescription(source);
    *buf = 138543874;
    v44 = v18;
    v45 = 2048;
    alphaCopy = alpha;
    v47 = 2048;
    barAlphaCopy = barAlpha;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "prepareToWakeForSource: %{public}@ timeAlpha: %.2f statusBarAlpha: %.2f", buf, 0x20u);
  }

  objc_storeStrong(&self->_target, target);
  self->_preparingToAnimateWake = 1;
  interruptSleepAnimationIfNeeded = [(SBScreenWakeAnimationController *)self interruptSleepAnimationIfNeeded];
  [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:1 reason:@"prepareToWake cleanup previous handler"];
  v20 = MEMORY[0x277CF0BA0];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __110__SBScreenWakeAnimationController_prepareToWakeForSource_timeAlpha_statusBarAlpha_target_dateView_completion___block_invoke;
  v40[3] = &unk_2783B9A48;
  v40[4] = self;
  v21 = completionCopy;
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

  [(SBScreenWakeAnimationController *)self _setLastBacklightChangeSource:source, v35, v36, v37, v38];
  self->_finalTimeAlpha = alpha;
  self->_finalStatusBarAlpha = barAlpha;
  if (!interruptSleepAnimationIfNeeded)
  {
    [(SBScreenWakeAnimationController *)self _setRelevantLockScreenViewsHidden:1];
    v26 = SBLogStatusBarish();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [SBScreenWakeAnimationController prepareToWakeForSource:v26 timeAlpha:? statusBarAlpha:? target:? dateView:? completion:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_statusBarManager);
    assertionManager = [WeakRetained assertionManager];

    v29 = [assertionManager newSettingsAssertionWithStatusBarHidden:1 atLevel:9 reason:@"screenFadeAnimationController"];
    statusBarAssertion = self->_statusBarAssertion;
    self->_statusBarAssertion = v29;

    [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion acquire];
  }

  v31 = +[SBBacklightController sharedInstance];
  v32 = v31;
  if (!interruptSleepAnimationIfNeeded)
  {
    -[SBScreenWakeAnimationController _updateWakeEffectsForWake:animated:completion:](self, "_updateWakeEffectsForWake:animated:completion:", [v31 backlightState] == 3, 0, 0);
  }

  *&self->_animatingForWake = 0;
  [(SBScreenWakeAnimationController *)self _setInteractionEventsIgnored:source == 20];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__startWakeFromUnblankNotification name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];
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

- (void)_updateWakeEffectsForWake:(BOOL)wake animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  wakeCopy = wake;
  completionCopy = completion;
  v8 = +[SBWallpaperController sharedInstance];
  posterHandlesWakeAnimation = [v8 posterHandlesWakeAnimation];

  target = self->_target;
  if (posterHandlesWakeAnimation)
  {
    [(SBFScreenWakeAnimationTarget *)target removeAllWakeEffects];
  }

  else
  {
    [(SBFScreenWakeAnimationTarget *)target updateWakeEffectsForWake:wakeCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)_cleanupAnimationWhenInterruptingWaking:(BOOL)waking force:(BOOL)force
{
  *&self->_animatingWallpaper = 0;
  self->_animatingBacklight = 0;
  [(SBScreenWakeAnimationController *)self _handleAnimationCompletionIfNecessaryForWaking:waking force:force];
}

- (void)_setLastBacklightChangeSource:(int64_t)source
{
  if (self->_lastBacklightChangeSource != source)
  {
    self->_lastBacklightChangeSource = source;
  }
}

- (void)_startWakeAnimationsForWaking:(BOOL)waking animationSettings:(id)settings
{
  wakingCopy = waking;
  v34 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = SBLogScreenWake();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v33 = wakingCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_startWakeAnimationsForWaking: %{BOOL}d", buf, 8u);
  }

  v8 = self->_animationToken + 1;
  self->_animationToken = v8;
  v9 = +[SBBacklightController sharedInstance];
  if (wakingCopy)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  delegate = [(SBScreenWakeAnimationController *)self delegate];
  v12 = delegate;
  if (delegate)
  {
    v10 = [delegate targetBacklightStateForSource:self->_lastBacklightChangeSource isWake:wakingCopy];
  }

  lastBacklightChangeSource = self->_lastBacklightChangeSource;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__SBScreenWakeAnimationController__startWakeAnimationsForWaking_animationSettings___block_invoke;
  v28[3] = &unk_2783A97D8;
  v31 = wakingCopy;
  v14 = v9;
  v29 = v14;
  selfCopy = self;
  [v14 setBacklightState:v10 source:lastBacklightChangeSource animated:1 completion:v28];
  if (!wakingCopy)
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
  contentWakeSettings = [settingsCopy contentWakeSettings];
  bSAnimationSettings = [contentWakeSettings BSAnimationSettings];
  v20 = [v17 factoryWithSettings:bSAnimationSettings];

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

- (void)setScreenWakeTemporarilyDisabled:(BOOL)disabled forReason:(id)reason
{
  temporaryDisabledReasons = self->_temporaryDisabledReasons;
  if (disabled)
  {
    [(NSMutableSet *)temporaryDisabledReasons addObject:reason];
  }

  else
  {
    [(NSMutableSet *)temporaryDisabledReasons removeObject:reason];
  }
}

- (void)sleepForSource:(int64_t)source target:(id)target completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  completionCopy = completion;
  objc_storeStrong(&self->_target, target);
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
    [(SBScreenWakeAnimationController *)self sleepForSource:source completion:completionCopy];
  }
}

- (void)sleepForSource:(int64_t)source completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  isWakeAnimationInProgress = [(SBScreenWakeAnimationController *)self isWakeAnimationInProgress];
  v8 = SBLogScreenWake();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = SBSBacklightChangeSourceDescription(source);
    *buf = 138543618;
    v18 = v9;
    v19 = 1024;
    v20 = isWakeAnimationInProgress;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "sleepForSource:%{public}@ reversingWake:%{BOOL}u", buf, 0x12u);
  }

  if (isWakeAnimationInProgress)
  {
    self->_waitingForScreenUnblank = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:@"SBBacklightPreFadeBacklightActivationCompleteNotification" object:0];

    [(SBScreenWakeAnimationController *)self _cleanupAnimationWhenInterruptingWaking:1];
  }

  [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:0 reason:@"sleepForSource cleanup previous handler"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SBScreenWakeAnimationController_sleepForSource_completion___block_invoke;
  v15[3] = &unk_2783A9348;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = [v15 copy];
  sleepCompletionBlock = self->_sleepCompletionBlock;
  self->_sleepCompletionBlock = v12;

  self->_finalTimeAlpha = 0.0;
  *&self->_preparingToAnimateWake = 0;
  self->_animatingForSleep = 1;
  [(SBScreenWakeAnimationController *)self _setLastBacklightChangeSource:source];
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

- (void)_handleAnimationCompletionIfNecessaryForWaking:(BOOL)waking force:(BOOL)force
{
  wakingCopy = waking;
  v20 = *MEMORY[0x277D85DE8];
  v6 = !self->_animatingBacklight && !self->_animatingWallpaper && !self->_animatingContent && (!self->_waitingForScreenUnblank || force);
  v7 = !self->_preparingToAnimateWake && !self->_animatingForWake && !self->_animatingForSleep && !self->_waitingForScreenUnblank;
  *&self->_animatingForWake = 0;
  if (v6)
  {
    v8 = SBLogScreenWake();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109376;
      v15 = wakingCopy;
      v16 = 1024;
      LODWORD(v17) = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "_handleAnimationCompletionIfNecessaryForWaking:%{BOOL}u invoking callback (cleanupTarget:%{BOOL}u)", &v14, 0xEu);
    }

    [(SBScreenWakeAnimationController *)self _runCompletionHandlerForWake:wakingCopy reason:@"animation complete"];
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
    v15 = wakingCopy;
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

- (void)_runCompletionHandlerForWake:(BOOL)wake reason:(id)reason
{
  wakeCopy = wake;
  v15 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (wakeCopy)
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
        v14 = reasonCopy;
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
      v14 = reasonCopy;
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
  succinctDescriptionBuilder = [(SBScreenWakeAnimationController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBScreenWakeAnimationController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBScreenWakeAnimationController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBScreenWakeAnimationController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
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