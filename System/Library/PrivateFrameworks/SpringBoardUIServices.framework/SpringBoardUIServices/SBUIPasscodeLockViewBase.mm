@interface SBUIPasscodeLockViewBase
- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)proudLockConfiguration;
- (BOOL)_canRecognizeBiometricAuthentication;
- (BOOL)_effectivelyHasProudLockShowingBiometricStates;
- (BOOL)_isBoundsPortraitOriented;
- (BOOL)_proudLockShowingBiometricStates;
- (BOOL)_setAuthenticationViewTypeToFaceIDWithWatch;
- (BOOL)_supportsProudLock;
- (BOOL)becomeFirstResponder;
- (BOOL)canPeformBiometricAuthentication;
- (BOOL)hasBiometricAuthenticationCapabilityEnabled;
- (BOOL)isBiometricLockedOut;
- (BOOL)resignFirstResponder;
- (SBUIPasscodeLockViewBase)initWithFrame:(CGRect)frame;
- (SBUIPasscodeLockViewDelegate)delegate;
- (double)_biometricViewAlphaFromPasscodeLockViewState:(int64_t)state;
- (double)_luminanceBoostFromDisplayBrightness;
- (double)_luminanceBoostFromLegibility;
- (double)_numberPadOffsetFromTopOfScreen:(id)screen;
- (double)passcodeBiometricAuthenticationViewNumberPadAncillaryButtonOffsetFromTopOfScreen:(id)screen;
- (double)passcodeBiometricAuthenticationViewSideButtonsOffsetFromCenter:(id)center;
- (id)_defaultStatusText;
- (id)_deviceSpecificTemperatureStringForTemperatureState:(unint64_t)state;
- (id)_proudLockContainerViewControllerToUpdate;
- (unint64_t)_statusStateForLockoutState:(unint64_t)state;
- (void)_advanceToPasscodeForMatchFailure:(BOOL)failure;
- (void)_advanceToPasscodeTimerFired;
- (void)_applyProudLockContainerViewControllerConfiguration;
- (void)_armAdvanceToPasscodeTimer;
- (void)_clearBrightnessChangeTimer;
- (void)_evaluateBiometricMatchingState;
- (void)_evaluateLuminance;
- (void)_evaluateMatchingAndHandleBiometricAuthenticationIfNeeded;
- (void)_handleBiometricAuthentication;
- (void)_handleNonPasscodeAuthenticationAndUpdateProudLock;
- (void)_luminanceBoostDidChange;
- (void)_noteScreenBrightnessDidChange;
- (void)_notifyDelegatePasscodeEnteredViaMesa;
- (void)_overrideBiometricMatchingEnabled:(BOOL)enabled forReason:(id)reason;
- (void)_playAuthenticationFeedbackForSuccess:(BOOL)success jiggleLock:(BOOL)lock;
- (void)_resetForFailedBiometricAttempt;
- (void)_resetForFailedPasscode:(BOOL)passcode;
- (void)_resetProudLockAndTitleTextForFailedBiometricAttempt;
- (void)_screenBrightnessReallyDidChange;
- (void)_sendDelegateKeypadKeyDown;
- (void)_sendDelegateKeypadKeyUp;
- (void)_setBiometricMatchingState:(unint64_t)state;
- (void)_setLegibilitySettings:(id)settings;
- (void)_setLuminosityBoost:(double)boost;
- (void)_setPasscodeLockViewState:(int64_t)state animated:(BOOL)animated;
- (void)_setStatusState:(unint64_t)state animated:(BOOL)animated;
- (void)_setStatusStateSwipeToRetryAnimated:(BOOL)animated;
- (void)_setStatusSubtitleText:(id)text;
- (void)_setStatusText:(id)text;
- (void)_setSuppressTitleText:(BOOL)text animated:(BOOL)animated;
- (void)_updateBiometricAlpha;
- (void)_updateBiometricGlyphForBioEvent:(unint64_t)event animated:(BOOL)animated completion:(id)completion;
- (void)_updateBiometricLayout;
- (void)_updateProudLockForBioEvent:(unint64_t)event;
- (void)_updateProudLockForBioUnlockWithCompletion:(id)completion;
- (void)_updateStatusStateForLockoutIfNecessaryAnimatedly:(BOOL)animatedly;
- (void)_updateStatusTextForBioEvent:(unint64_t)event animated:(BOOL)animated;
- (void)autofillForSuccessfulMesaAttemptWithCompletion:(id)completion;
- (void)beginTransitionToState:(int64_t)state;
- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change;
- (void)biometricResource:(id)resource observeEvent:(unint64_t)event;
- (void)dealloc;
- (void)didEndTransitionToState:(int64_t)state;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)noteBottomFaceHasBeenOccluded;
- (void)passcodeBiometricAuthenticationViewCancelButtonHit:(id)hit;
- (void)passcodeBiometricAuthenticationViewEmergencyCallButtonHit:(id)hit;
- (void)passcodeBiometricAuthenticationViewUsePasscodeButtonHit:(id)hit;
- (void)phoneUnlockWithVisionController:(id)controller attemptFailedWithError:(id)error;
- (void)phoneUnlockWithWatchControllerAttemptFailed:(id)failed withError:(id)error;
- (void)providerLegibilitySettingsChanged:(id)changed;
- (void)resetForFailedMesaAttemptWithStatusText:(id)text andSubtitle:(id)subtitle;
- (void)resetForScreenOff;
- (void)resetForSuccess;
- (void)setAllowsAutomaticBiometricPresentationTransition:(BOOL)transition;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundLegibilitySettingsProvider:(id)provider;
- (void)setBiometricAuthenticationAllowed:(BOOL)allowed;
- (void)setBiometricResource:(id)resource;
- (void)setOverrideProudLockContainerViewController:(id)controller;
- (void)setPlaysKeypadSounds:(BOOL)sounds;
- (void)setPoseidonContainerView:(id)view;
- (void)setPoseidonContainerViewController:(id)controller;
- (void)setProudLockConfiguration:(id *)configuration;
- (void)setScreenOn:(BOOL)on;
- (void)setShowsProudLock:(BOOL)lock;
- (void)setTransitionContext:(id *)context;
- (void)setUsesBiometricPresentation:(BOOL)presentation;
- (void)updateForTransitionToPasscodeView:(BOOL)view animated:(BOOL)animated;
- (void)updateStatusTextAnimated:(BOOL)animated;
- (void)updateTransitionWithProgress:(double)progress;
- (void)willEndTransitionToState:(int64_t)state;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBUIPasscodeLockViewBase

- (void)_updateBiometricAlpha
{
  [(SBUIPasscodeLockViewBase *)self _biometricViewAlphaFromPasscodeLockViewState:self->_passcodeLockViewState];
  v4 = v3;
  if ([(SBUIPasscodeLockViewBase *)self isTransitioning])
  {
    [(SBUIPasscodeLockViewBase *)self transitionContext];
    [(SBUIPasscodeLockViewBase *)self _biometricViewAlphaFromPasscodeLockViewState:0];
    v6 = v5;
    [(SBUIPasscodeLockViewBase *)self _biometricViewAlphaFromPasscodeLockViewState:0];
    v4 = v6 + 0.0 * (v7 - v6);
  }

  biometricAuthenticationView = [(SBUIPasscodeLockViewBase *)self biometricAuthenticationView];
  [biometricAuthenticationView setAlpha:v4];
}

- (void)_evaluateBiometricMatchingState
{
  v3 = [(NSMutableSet *)self->_biometricMatchingEnabledOverrideReasons count];
  window = [(SBUIPasscodeLockViewBase *)self window];

  if (window || v3)
  {
    if (self->_isBiometricAuthenticationAllowed)
    {
      _canRecognizeBiometricAuthentication = [(SBUIPasscodeLockViewBase *)self _canRecognizeBiometricAuthentication];
      if (v3)
      {
        v5 = 1;
      }

      else
      {
        v5 = _canRecognizeBiometricAuthentication;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  [(SBUIPasscodeLockViewBase *)self _setBiometricMatchingState:v5];
}

- (BOOL)becomeFirstResponder
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  [(SBUIPasscodeLockViewBase *)self transitionContext];
  isTransitioning = [(SBUIPasscodeLockViewBase *)self isTransitioning];
  if (self->_passcodeLockViewState == 1 && (v9 != v10 ? (v4 = isTransitioning) : (v4 = 0), !v4))
  {
    becomeFirstResponder = [(SBUIPasscodeEntryField *)self->_entryField becomeFirstResponder];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBUIPasscodeLockViewBase;
    becomeFirstResponder = [(SBUIPasscodeLockViewBase *)&v8 becomeFirstResponder];
  }

  v6 = becomeFirstResponder;
  [(SBUIPasscodeLockViewBase *)self _evaluateMatchingAndHandleBiometricAuthenticationIfNeeded];
  return v6;
}

- (void)layoutSubviews
{
  [(SBUIPasscodeLockViewBase *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  isTransitioning = [(SBUIPasscodeLockViewBase *)self isTransitioning];
  y = v6;
  width = v8;
  height = v10;
  x = v4;
  v16 = v10;
  v17 = v8;
  v18 = v6;
  v19 = v4;
  if (!isTransitioning)
  {
    passcodeLockViewState = self->_passcodeLockViewState;
    if (passcodeLockViewState)
    {
      y = v6;
      width = v8;
      height = v10;
      x = v4;
      v16 = v10;
      v17 = v8;
      v18 = v6;
      v19 = v4;
      if (passcodeLockViewState == 1)
      {
        v26.origin.x = v4;
        v26.origin.y = v6;
        v26.size.width = v8;
        v26.size.height = v10;
        v21 = CGRectGetHeight(v26) * 0.5;
        v27.origin.x = v4;
        v27.origin.y = v6;
        v27.size.width = v8;
        v27.size.height = v10;
        v28 = CGRectOffset(v27, 0.0, v21);
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v16 = v10;
        v17 = v8;
        v18 = v6;
        v19 = v4;
      }
    }

    else
    {
      v29.origin.x = v4;
      v29.origin.y = v6;
      v29.size.width = v8;
      v29.size.height = v10;
      v22 = CGRectGetHeight(v29) * -0.5;
      v30.origin.x = v4;
      v30.origin.y = v6;
      v30.size.width = v8;
      v30.size.height = v10;
      *&v19 = CGRectOffset(v30, 0.0, v22);
      y = v6;
      width = v8;
      height = v10;
      x = v4;
    }
  }

  [(UIView *)self->_passcodeAuthenticationView setFrame:v19, v18, v17, v16];
  [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setFrame:x, y, width, height];
  proudLockContainerViewController = self->_proudLockContainerViewController;
  if (proudLockContainerViewController)
  {
    view = [(SBUIProudLockContainerViewController *)proudLockContainerViewController view];
    [view setFrame:{v4, v6, v8, v10}];
    [(SBUIPasscodeLockViewBase *)self bringSubviewToFront:view];
  }
}

- (BOOL)_isBoundsPortraitOriented
{
  [(SBUIPasscodeLockViewBase *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v6 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v7.n128_u64[0] = CGRectGetHeight(v12);
  v8.n128_f64[0] = v6;

  return MEMORY[0x1EEDF00F8](v8, v7);
}

- (void)_screenBrightnessReallyDidChange
{
  [(SBUIPasscodeLockViewBase *)self _clearBrightnessChangeTimer];
  BKSDisplayBrightnessGetCurrent();
  v4 = v3;
  if (self->_currentBacklightLevel != v4)
  {
    self->_currentBacklightLevel = v4;

    [(SBUIPasscodeLockViewBase *)self _evaluateLuminance];
  }
}

- (void)_clearBrightnessChangeTimer
{
  screenBrightnessChangedTimer = [(SBUIPasscodeLockViewBase *)self screenBrightnessChangedTimer];
  [screenBrightnessChangedTimer invalidate];

  [(SBUIPasscodeLockViewBase *)self setScreenBrightnessChangedTimer:0];
}

- (void)_evaluateLuminance
{
  [(SBUIPasscodeLockViewBase *)self _luminanceBoostFromLegibility];
  v4 = v3;
  [(SBUIPasscodeLockViewBase *)self _luminanceBoostFromDisplayBrightness];
  v6 = fmin(fmax(v4 + v5, 0.07), 0.8);

  [(SBUIPasscodeLockViewBase *)self _setLuminosityBoost:v6];
}

- (double)_luminanceBoostFromLegibility
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  contentColor = [(_UILegibilitySettings *)self->_legibilitySettings contentColor];
  [contentColor getRed:&v7 green:&v6 blue:&v5 alpha:0];

  [MEMORY[0x1E69DC888] _luminanceWithRed:v7 green:v6 blue:v5];
  if (v3 < 0.1)
  {
    return 0.3;
  }

  if (v3 <= 0.3)
  {
    return v3 * -1.15 + 0.415;
  }

  return 0.07;
}

- (double)_luminanceBoostFromDisplayBrightness
{
  v2 = fmax(self->_currentBacklightLevel, 0.0);
  if (v2 >= 1.0)
  {
    v2 = 1.0;
  }

  return fmin(fmax(pow(v2 * -2.0 + 3.0, 7.0) / 4374.0, 0.0), 0.5);
}

- (void)_luminanceBoostDidChange
{
  [(SBUIPasscodeLockViewBase *)self _luminosityBoost];
  v4 = fmin(fmax(v3 + 0.15, 0.07), 0.8);
  entryField = self->_entryField;

  [(SBUIPasscodeEntryField *)entryField _setLuminosityBoost:v4];
}

- (SBUIPasscodeLockViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_noteScreenBrightnessDidChange
{
  screenBrightnessChangedTimer = [(SBUIPasscodeLockViewBase *)self screenBrightnessChangedTimer];
  [(SBUIPasscodeLockViewBase *)self setScreenBrightnessChangedTimer:0];
  if (fabs(self->_currentBacklightLevel) >= 2.22044605e-16)
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__screenBrightnessReallyDidChange selector:0 userInfo:0 repeats:0.3];
    [(SBUIPasscodeLockViewBase *)self setScreenBrightnessChangedTimer:v3];
  }

  else
  {
    [(SBUIPasscodeLockViewBase *)self _screenBrightnessReallyDidChange];
  }

  [screenBrightnessChangedTimer invalidate];
}

- (void)_updateBiometricLayout
{
  if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  biometricAuthenticationView = self->_biometricAuthenticationView;

  [(SBUIPasscodeBiometricAuthenticationView *)biometricAuthenticationView setType:v3];
}

- (BOOL)_proudLockShowingBiometricStates
{
  _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
  v3 = _proudLockContainerViewControllerToUpdate != 0;

  return v3;
}

- (id)_proudLockContainerViewControllerToUpdate
{
  overrideProudLockContainerViewController = self->_overrideProudLockContainerViewController;
  if (!overrideProudLockContainerViewController)
  {
    overrideProudLockContainerViewController = self->_proudLockContainerViewController;
  }

  v3 = overrideProudLockContainerViewController;

  return v3;
}

- (id)_defaultStatusText
{
  _orientation = [(SBUIPasscodeLockViewBase *)self _orientation];
  if (self->_deviceHasBeenUnlockedOnceSinceBoot && self->_isBiometricAuthenticationAllowed && [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled]&& [(SBUIBiometricResource *)self->_biometricResource hasMesaSupport]&& [(SBUIBiometricResource *)self->_biometricResource isMatchingEnabled])
  {
    v4 = @"PASSCODE_MESA_ENTRY_PROMPT";
  }

  else
  {
    v4 = @"PASSCODE_ENTRY_PROMPT";
  }

  v5 = _SBUIAXAwareLocalizedStringForKey(v4, _orientation);

  return v5;
}

- (BOOL)_canRecognizeBiometricAuthentication
{
  if (([(SBUIPasscodeLockViewBase *)self isFirstResponder]& 1) != 0)
  {
    return 1;
  }

  entryField = self->_entryField;

  return [(SBUIPasscodeEntryField *)entryField isFirstResponder];
}

- (void)_applyProudLockContainerViewControllerConfiguration
{
  proudLockContainerViewController = self->_proudLockContainerViewController;
  v4 = *&self->_proudLockConfiguration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
  v11 = *&self->_proudLockConfiguration.minimumDurationShowingCoaching;
  v12 = v4;
  v13 = *&self->_proudLockConfiguration.coachingDelaysUnlock;
  v5 = *&self->_proudLockConfiguration.bkCoachingHintsEnabled;
  v9 = *&self->_proudLockConfiguration.showScanningState;
  v10 = v5;
  [(SBUIProudLockContainerViewController *)proudLockContainerViewController setConfiguration:&v9];
  overrideProudLockContainerViewController = self->_overrideProudLockContainerViewController;
  v7 = *&self->_proudLockConfiguration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
  v11 = *&self->_proudLockConfiguration.minimumDurationShowingCoaching;
  v12 = v7;
  v13 = *&self->_proudLockConfiguration.coachingDelaysUnlock;
  v8 = *&self->_proudLockConfiguration.bkCoachingHintsEnabled;
  v9 = *&self->_proudLockConfiguration.showScanningState;
  v10 = v8;
  [(SBUIProudLockContainerViewController *)overrideProudLockContainerViewController setConfiguration:&v9];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = SBUIPasscodeLockViewBase;
  [(SBUIPasscodeLockViewBase *)&v6 didMoveToWindow];
  [(SBUIPasscodeLockViewBase *)self _evaluateBiometricMatchingState];
  window = [(SBUIPasscodeLockViewBase *)self window];

  if (!window)
  {
    if ([(SBUIPasscodeLockViewBase *)self isFirstResponder])
    {
      [(SBUIPasscodeLockViewBase *)self resignFirstResponder];
    }

    if (self->_isBiometricAuthenticationAllowed && self->_allowsStatusTextUpdatingOnResignFirstResponder)
    {
      [(SBUIPasscodeLockViewBase *)self _resetStatusText];
    }

    if (self->_pendingBioUnlock)
    {
      v4 = SBLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_INFO, "Passcode lock view has been removed from the view hierarchy but has a pending bio unlock", v5, 2u);
      }

      self->_pendingBioUnlock = 0;
    }
  }
}

- (BOOL)resignFirstResponder
{
  if ([(SBUIPasscodeEntryField *)self->_entryField isFirstResponder])
  {
    if (![(SBUIPasscodeEntryField *)self->_entryField resignFirstResponder])
    {
      LOBYTE(isFirstResponder) = 0;
      return isFirstResponder;
    }
  }

  else
  {
    isFirstResponder = [(SBUIPasscodeLockViewBase *)self isFirstResponder];
    if (!isFirstResponder)
    {
      return isFirstResponder;
    }

    v5.receiver = self;
    v5.super_class = SBUIPasscodeLockViewBase;
    isFirstResponder = [(SBUIPasscodeLockViewBase *)&v5 resignFirstResponder];
    if (!isFirstResponder)
    {
      return isFirstResponder;
    }
  }

  [(SBUIPasscodeLockViewBase *)self reset];
  [(SBUIPasscodeLockViewBase *)self _evaluateBiometricMatchingState];
  if (self->_isBiometricAuthenticationAllowed && self->_allowsStatusTextUpdatingOnResignFirstResponder)
  {
    [(SBUIPasscodeLockViewBase *)self _resetStatusText];
  }

  LOBYTE(isFirstResponder) = 1;
  return isFirstResponder;
}

- (void)dealloc
{
  [(SBUIBiometricResource *)self->_biometricResource removeObserver:self];
  [(SBUIPasscodeLockViewBase *)self _clearBrightnessChangeTimer];
  [(SBUIPasscodeLockViewBase *)self _setBiometricMatchingState:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBFLegibilitySettingsProvider *)self->_backgroundLegibilitySettingsProvider setDelegate:0];
  if ([(_UIKBFeedbackGenerating *)self->_keyboardFeedbackBehavior isActive])
  {
    [(_UIKBFeedbackGenerating *)self->_keyboardFeedbackBehavior deactivate];
  }

  [(SBUIPasscodeLockViewBase *)self setOverrideProudLockContainerViewController:0];
  v4 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SBUIPasscodeLockViewBase;
  [(SBUIPasscodeLockViewBase *)&v5 dealloc];
}

- (SBUIPasscodeLockViewBase)initWithFrame:(CGRect)frame
{
  v31.receiver = self;
  v31.super_class = SBUIPasscodeLockViewBase;
  v3 = [(SBUIPasscodeLockViewBase *)&v31 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isBiometricAuthenticationAllowed = 1;
    v3->_allowsAutomaticBiometricPresentationTransition = 1;
    v3->_biometricMatchingState = 0;
    [(SBUIPasscodeLockViewBase *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    passcodeAuthenticationView = v4->_passcodeAuthenticationView;
    v4->_passcodeAuthenticationView = v13;

    v15 = [[SBUIPasscodeBiometricAuthenticationView alloc] initWithFrame:v4 layoutDelegate:v6, v8, v10, v12];
    biometricAuthenticationView = v4->_biometricAuthenticationView;
    v4->_biometricAuthenticationView = v15;

    [(SBUIPasscodeBiometricAuthenticationView *)v4->_biometricAuthenticationView setDelegate:v4];
    [(SBUIPasscodeBiometricAuthenticationView *)v4->_biometricAuthenticationView setAncillaryButtonsVisible:1];
    [(SBUIPasscodeLockViewBase *)v4 _setPasscodeLockViewState:1 animated:0];
    [(UIView *)v4->_passcodeAuthenticationView setFrame:v6, v8, v10, v12];
    [(SBUIPasscodeLockViewBase *)v4 addSubview:v4->_passcodeAuthenticationView];
    [(SBUIPasscodeLockViewBase *)v4 addSubview:v4->_biometricAuthenticationView];
    v17 = [MEMORY[0x1E69DD590] feedbackGeneratorWithView:v4];
    keyboardFeedbackBehavior = v4->_keyboardFeedbackBehavior;
    v4->_keyboardFeedbackBehavior = v17;

    v19 = +[SBUIExternalPreferences sharedInstance];
    -[SBUIPasscodeLockViewBase setPlaysKeypadSounds:](v4, "setPlaysKeypadSounds:", [v19 keyboardPlaysSounds]);

    [(SBUIPasscodeLockViewBase *)v4 setShowsCancelButton:1];
    [(SBUIPasscodeLockViewBase *)v4 setShowsEmergencyCallButton:MGGetBoolAnswer()];
    [(SBUIPasscodeLockViewBase *)v4 setShowsStatusField:1];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v21 = *MEMORY[0x1E69DE368];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [defaultCenter addObserver:v4 selector:sel__noteScreenBrightnessDidChange name:v21 object:mainScreen];

    [(SBUIPasscodeLockViewBase *)v4 _noteScreenBrightnessDidChange];
    v4->_allowsStatusTextUpdatingOnResignFirstResponder = 1;
    v4->_deviceHasBeenUnlockedOnceSinceBoot = 1;
    v23 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F1DB5968, &unk_1F1DB5980, &unk_1F1DB5998, &unk_1F1DB59B0, 0}];
    v24 = objc_alloc(MEMORY[0x1E69DCCF0]);
    v25 = [MEMORY[0x1E69DD600] privateConfigurationForTypes:v23];
    v26 = [v24 initWithConfiguration:v25 view:v4];
    authenticationFeedbackBehavior = v4->_authenticationFeedbackBehavior;
    v4->_authenticationFeedbackBehavior = v26;

    v4->_shouldConsiderTapGuard = 1;
    v28 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
    [v28 addObserver:v4];

    v29 = +[SBUIPhoneUnlockWithVisionController sharedInstance];
    [v29 addObserver:v4];
  }

  return v4;
}

- (void)setUsesBiometricPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  v12[1] = *MEMORY[0x1E69E9840];
  biometricLockoutState = [(SBUIBiometricResource *)self->_biometricResource biometricLockoutState];
  hasBiometricAuthenticationCapabilityEnabled = [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled];
  v7 = hasBiometricAuthenticationCapabilityEnabled;
  if (biometricLockoutState)
  {
    v8 = 1;
  }

  else
  {
    v8 = !presentationCopy || !hasBiometricAuthenticationCapabilityEnabled;
  }

  [(SBUIPasscodeLockViewBase *)self _setPasscodeLockViewState:v8 animated:0];
  if (v8 == 1 && v7)
  {
    if (biometricLockoutState)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v11 = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonKey";
      v12[0] = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonBioLockout";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [defaultCenter postNotificationName:@"SBUIPasscodeLockViewBiometricTransitionToPasscode" object:self userInfo:v10];
    }
  }
}

- (void)setShowsProudLock:(BOOL)lock
{
  v4 = lock & ~[(SBUIPasscodeLockViewBase *)self _accountingForExternallyShownProudLock];
  if (self->_showsProudLock != v4)
  {
    self->_showsProudLock = v4;
    if (v4 && [(SBUIPasscodeLockViewBase *)self _supportsProudLock])
    {
      v5 = [[SBUIProudLockContainerViewController alloc] initWithAuthenticationInformationProvider:self];
      proudLockContainerViewController = self->_proudLockContainerViewController;
      self->_proudLockContainerViewController = v5;

      v7 = self->_proudLockContainerViewController;
      v8 = *&self->_proudLockConfiguration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
      v13[2] = *&self->_proudLockConfiguration.minimumDurationShowingCoaching;
      v13[3] = v8;
      v13[4] = *&self->_proudLockConfiguration.coachingDelaysUnlock;
      v9 = *&self->_proudLockConfiguration.bkCoachingHintsEnabled;
      v13[0] = *&self->_proudLockConfiguration.showScanningState;
      v13[1] = v9;
      [(SBUIProudLockContainerViewController *)v7 setConfiguration:v13];
      [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController setSuppressNotLooking:1];
      view = [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController view];
      [(SBUIPasscodeLockViewBase *)self addSubview:view];

      [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController viewWillAppear:0];
    }

    else
    {
      [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController viewDidDisappear:0];
      view2 = [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController view];
      [view2 removeFromSuperview];

      v12 = self->_proudLockContainerViewController;
      self->_proudLockContainerViewController = 0;
    }
  }
}

- (void)setPoseidonContainerView:(id)view
{
  viewCopy = view;
  if (self->_poseidonContainerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_poseidonContainerView, view);
    [(SBUIPasscodeLockViewBase *)self addSubview:self->_poseidonContainerView];
    viewCopy = v6;
  }
}

- (void)setPoseidonContainerViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_poseidonContainerViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_poseidonContainerViewController, controller);
    [(SBUIPoseidonContainerViewController *)self->_poseidonContainerViewController setAuthenticationInformationProvider:self];
    [(SBUIPoseidonContainerViewController *)self->_poseidonContainerViewController showCoaching:1];
    controllerCopy = v6;
  }
}

- (void)setOverrideProudLockContainerViewController:(id)controller
{
  controllerCopy = controller;
  overrideProudLockContainerViewController = self->_overrideProudLockContainerViewController;
  if (overrideProudLockContainerViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBUIProudLockContainerViewController *)overrideProudLockContainerViewController setSuppressScanningState:1];
    [(SBUIProudLockContainerViewController *)self->_overrideProudLockContainerViewController setSuppressNotLooking:0];
    objc_storeStrong(&self->_overrideProudLockContainerViewController, controller);
    [(SBUIProudLockContainerViewController *)self->_overrideProudLockContainerViewController setSuppressScanningState:0];
    [(SBUIProudLockContainerViewController *)self->_overrideProudLockContainerViewController setSuppressNotLooking:1];
    if (!self->_overrideProudLockContainerViewController)
    {
      self->_proudLockConfiguration.substate = 0;
    }

    overrideProudLockContainerViewController = [(SBUIPasscodeLockViewBase *)self _applyProudLockContainerViewControllerConfiguration];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](overrideProudLockContainerViewController, controllerCopy);
}

- (void)setProudLockConfiguration:(id *)configuration
{
  p_proudLockConfiguration = &self->_proudLockConfiguration;
  v6 = *&self->_proudLockConfiguration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
  v15[2] = *&self->_proudLockConfiguration.minimumDurationShowingCoaching;
  v15[3] = v6;
  v15[4] = *&self->_proudLockConfiguration.coachingDelaysUnlock;
  v7 = *&self->_proudLockConfiguration.bkCoachingHintsEnabled;
  v15[0] = *&self->_proudLockConfiguration.showScanningState;
  v15[1] = v7;
  v8 = *&configuration->var7;
  v14[2] = *&configuration->var5;
  v14[3] = v8;
  v14[4] = *&configuration->var9;
  v9 = *&configuration->var3;
  v14[0] = *&configuration->var0;
  v14[1] = v9;
  if (!SBUIProudLockContainerViewControllerConfigurationEqualToConfiguration(v15, v14))
  {
    v10 = *&configuration->var3;
    v11 = *&configuration->var5;
    v12 = *&configuration->var7;
    *&p_proudLockConfiguration->coachingDelaysUnlock = *&configuration->var9;
    v13 = *&configuration->var0;
    *&p_proudLockConfiguration->minimumDurationShowingCoaching = v11;
    *&p_proudLockConfiguration->durationToSuppressCameraCoveredWhenWakingWithSmartCover = v12;
    *&p_proudLockConfiguration->showScanningState = v13;
    *&p_proudLockConfiguration->bkCoachingHintsEnabled = v10;
    p_proudLockConfiguration->suppressFaceIDDisabledState = 1;
    p_proudLockConfiguration->substate = 1;
    [(SBUIPasscodeLockViewBase *)self _applyProudLockContainerViewControllerConfiguration];
  }
}

- (BOOL)canPeformBiometricAuthentication
{
  if ([(SBUIPasscodeLockViewBase *)self isBiometricLockedOut])
  {
    return 0;
  }

  biometricResource = self->_biometricResource;

  return [(SBUIBiometricResource *)biometricResource hasBiometricAuthenticationCapabilityEnabled];
}

- (BOOL)_supportsProudLock
{
  if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport]|| (MGGetBoolAnswer() & 1) != 0)
  {
    return 1;
  }

  biometricResource = self->_biometricResource;

  return [(SBUIBiometricResource *)biometricResource hasPoseidonSupport];
}

- (void)_setPasscodeLockViewState:(int64_t)state animated:(BOOL)animated
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_passcodeLockViewState != state)
  {
    animatedCopy = animated;
    self->_passcodeLockViewState = state;
    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"SBUIPasscodeLockViewStateBiometric";
      if (state == 1)
      {
        v8 = @"SBUIPasscodeLockViewStatePasscode";
      }

      v9 = v8;
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Setting passcode lock view state to: %@", buf, 0xCu);
    }

    if (animatedCopy)
    {
      v10 = 0.3;
    }

    else
    {
      v10 = 0.0;
    }

    if (animatedCopy)
    {
      v11 = 0.57;
    }

    else
    {
      v11 = 0.0;
    }

    [(SBUIPasscodeLockViewBase *)self setNeedsLayout];
    passcodeLockViewState = self->_passcodeLockViewState;
    if (passcodeLockViewState)
    {
      if (passcodeLockViewState == 1)
      {
        [(SBUIPasscodeLockViewBase *)self willTransitionToPasscodeView];
        if (animatedCopy)
        {
          LOBYTE(animatedCopy) = !self->_forceOnlyFadeAnimations;
        }

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __63__SBUIPasscodeLockViewBase__setPasscodeLockViewState_animated___block_invoke;
        v16[3] = &unk_1E789DA60;
        v16[4] = self;
        v17 = animatedCopy;
        [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v16 options:0 animations:v10 completion:0.0];
        if (!animatedCopy)
        {
          [(SBUIPasscodeLockViewBase *)self updateForTransitionToPasscodeView:1 animated:0];
        }

        [(SBUIPasscodeLockViewBase *)self layoutIfNeeded];
      }
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__SBUIPasscodeLockViewBase__setPasscodeLockViewState_animated___block_invoke_2;
      v15[3] = &unk_1E789DA38;
      v15[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v15 options:&__block_literal_global_1 animations:v10 completion:0.0];
      if (self->_forceOnlyFadeAnimations)
      {
        [(SBUIPasscodeLockViewBase *)self layoutIfNeeded];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __63__SBUIPasscodeLockViewBase__setPasscodeLockViewState_animated___block_invoke_4;
        v14[3] = &unk_1E789DA38;
        v14[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v14 usingSpringWithDamping:0 initialSpringVelocity:v11 options:0.0 animations:0.97 completion:0.0];
      }

      if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
      {
        [(SBUIPasscodeLockViewBase *)self _armAdvanceToPasscodeTimer];
      }
    }

    delegate = [(SBUIPasscodeLockViewBase *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate passcodeLockViewStateChange:self];
    }
  }
}

uint64_t __63__SBUIPasscodeLockViewBase__setPasscodeLockViewState_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 520) setAlpha:1.0];
  result = [*(a1 + 32) _updateBiometricAlpha];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 updateForTransitionToPasscodeView:1 animated:1];
  }

  return result;
}

uint64_t __63__SBUIPasscodeLockViewBase__setPasscodeLockViewState_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 520) setAlpha:0.0];
  [*(a1 + 32) _updateBiometricAlpha];
  v2 = *(a1 + 32);

  return [v2 updateForTransitionToPasscodeView:0 animated:0];
}

- (void)noteBottomFaceHasBeenOccluded
{
  if (![(SBUIPasscodeLockViewBase *)self _setAuthenticationViewTypeToFaceIDWithWatch])
  {
    v3 = +[SBUIPeriocularController sharedInstance];
    periocularEnabled = [v3 periocularEnabled];

    if ((periocularEnabled & 1) == 0)
    {

      [(SBUIPasscodeLockViewBase *)self _advanceToPasscodeForMatchFailure:1];
    }
  }
}

- (BOOL)_setAuthenticationViewTypeToFaceIDWithWatch
{
  v3 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
  if ([v3 phoneUnlockWithWatchEnabled] && objc_msgSend(v3, "didDetectFaceRequirementsForPAU"))
  {
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setType:3];
    v4 = SBLogPhoneUnlockWithWatch();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Passcode authentication view type set to FaceID with watch", v7, 2u);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isBiometricLockedOut
{
  biometricResource = [(SBUIPasscodeLockViewBase *)self biometricResource];
  v3 = [biometricResource biometricLockoutState] != 0;

  return v3;
}

- (BOOL)hasBiometricAuthenticationCapabilityEnabled
{
  biometricResource = [(SBUIPasscodeLockViewBase *)self biometricResource];
  hasBiometricAuthenticationCapabilityEnabled = [biometricResource hasBiometricAuthenticationCapabilityEnabled];

  return hasBiometricAuthenticationCapabilityEnabled;
}

- (void)beginTransitionToState:(int64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(SBUIPasscodeLockViewBase *)self isTransitioning])
  {
    [(SBUIPasscodeLockViewBase *)a2 beginTransitionToState:?];
  }

  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"SBUIPasscodeLockViewStateBiometric";
    if (state == 1)
    {
      v7 = @"SBUIPasscodeLockViewStatePasscode";
    }

    v8 = v7;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Passcode lock view beginning transition to state: %@", &buf, 0xCu);
  }

  passcodeLockViewState = self->_passcodeLockViewState;
  *&buf = passcodeLockViewState;
  *(&buf + 1) = state;
  v13 = 0;
  [(SBUIPasscodeLockViewBase *)self setTransitionContext:&buf];
  [(SBUIPasscodeLockViewBase *)self setIsTransitioning:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__SBUIPasscodeLockViewBase_beginTransitionToState___block_invoke;
  v11[3] = &unk_1E789DA38;
  v11[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
  if (!state && passcodeLockViewState == 1)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SBUIPasscodeLockViewBase_beginTransitionToState___block_invoke_2;
    v10[3] = &unk_1E789DA38;
    v10[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.57 options:0.0 animations:0.97 completion:0.0];
    [(SBUIPasscodeLockViewBase *)self updateForTransitionToPasscodeView:0 animated:1];
  }
}

uint64_t __51__SBUIPasscodeLockViewBase_beginTransitionToState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 32) + 520) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 528);

  return [v2 setAlpha:1.0];
}

- (void)updateTransitionWithProgress:(double)progress
{
  v7 = 0uLL;
  progressCopy = 0.0;
  [(SBUIPasscodeLockViewBase *)self transitionContext];
  progressCopy = progress;
  v5 = v7;
  progressCopy2 = progress;
  [(SBUIPasscodeLockViewBase *)self setTransitionContext:&v5];
  [(SBUIPasscodeLockViewBase *)self _updateBiometricAlpha];
}

- (void)willEndTransitionToState:(int64_t)state
{
  v7 = 0uLL;
  v8 = 0;
  [(SBUIPasscodeLockViewBase *)self transitionContext];
  *(&v7 + 1) = state;
  v5 = v7;
  v6 = v8;
  [(SBUIPasscodeLockViewBase *)self setTransitionContext:&v5];
}

- (void)didEndTransitionToState:(int64_t)state
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"SBUIPasscodeLockViewStateBiometric";
    if (state == 1)
    {
      v6 = @"SBUIPasscodeLockViewStatePasscode";
    }

    v7 = v6;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Passcode lock view did end transition to state: %@", &buf, 0xCu);
  }

  buf = 0uLL;
  v10 = 0;
  [(SBUIPasscodeLockViewBase *)self transitionContext];
  if (state == 1 && buf == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__SBUIPasscodeLockViewBase_didEndTransitionToState___block_invoke;
    v8[3] = &unk_1E789DA38;
    v8[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
    [(SBUIPasscodeLockViewBase *)self updateForTransitionToPasscodeView:1 animated:1];
  }

  [(SBUIPasscodeLockViewBase *)self setIsTransitioning:0];
  [(SBUIPasscodeLockViewBase *)self _setPasscodeLockViewState:state animated:0];
}

uint64_t __52__SBUIPasscodeLockViewBase_didEndTransitionToState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 520);

  return [v2 setAlpha:1.0];
}

- (double)_biometricViewAlphaFromPasscodeLockViewState:(int64_t)state
{
  result = 0.0;
  if (!state)
  {
    return 1.0;
  }

  return result;
}

- (void)setAllowsAutomaticBiometricPresentationTransition:(BOOL)transition
{
  if (self->_allowsAutomaticBiometricPresentationTransition != transition)
  {
    self->_allowsAutomaticBiometricPresentationTransition = transition;
    if (!self->_passcodeLockViewState)
    {
      if (transition)
      {
        [(SBUIPasscodeLockViewBase *)self _armAdvanceToPasscodeTimer];
        self->_proudLockConfiguration.substate = 2;

        [(SBUIPasscodeLockViewBase *)self _applyProudLockContainerViewControllerConfiguration];
      }

      else
      {

        [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
      }
    }
  }
}

- (void)_armAdvanceToPasscodeTimer
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Passcode lock view armed advance to passcode timer", v4, 2u);
  }

  [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
  [(SBUIPasscodeLockViewBase *)self performSelector:sel__advanceToPasscodeTimerFired withObject:0 afterDelay:2.0];
}

- (void)_advanceToPasscodeTimerFired
{
  v9[1] = *MEMORY[0x1E69E9840];
  unlockDestination = [(SBUIPasscodeLockViewBase *)self unlockDestination];

  if (!unlockDestination)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonKey";
    v9[0] = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonTimerExpired";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"SBUIPasscodeLockViewBiometricTransitionToPasscode" object:self userInfo:v5];
  }

  [(SBUIPasscodeLockViewBase *)self _advanceToPasscodeForMatchFailure:0];
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Passcode lock view advance to passcode timer fired.", v7, 2u);
  }
}

- (void)_advanceToPasscodeForMatchFailure:(BOOL)failure
{
  failureCopy = failure;
  v9 = *MEMORY[0x1E69E9840];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromBOOL();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Passcode lock view advanced to passcode for match failure: %@", &v7, 0xCu);
  }

  [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
  if (failureCopy)
  {
    [(SBUIPasscodeLockViewBase *)self _setStatusStateSwipeToRetryAnimated:0];
    [(SBUIPasscodeLockViewBase *)self _setSuppressTitleText:0 animated:0];
    [(SBUIPasscodeLockViewBase *)self layoutIfNeeded];
  }

  if (![(SBUIPasscodeLockViewBase *)self confirmedNotInPocket]&& !failureCopy && self->_shouldConsiderTapGuard || self->_alwaysShowPasscodeButtonForFaceIDMatchFailure)
  {
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setAncillaryButtonsVisible:1];
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setFaceIDUsePasscodeButtonVisible:1];
  }

  else
  {
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setAncillaryButtonsVisible:0];
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setFaceIDUsePasscodeButtonVisible:0];
    [(SBUIPasscodeLockViewBase *)self _setPasscodeLockViewState:1 animated:1];
  }

  self->_proudLockConfiguration.substate = 3;
  [(SBUIPasscodeLockViewBase *)self _applyProudLockContainerViewControllerConfiguration];
  self->_shouldConsiderTapGuard = 0;
}

- (void)updateForTransitionToPasscodeView:(BOOL)view animated:(BOOL)animated
{
  v5 = [(SBUIPasscodeLockViewBase *)self window:view];
  v6 = v5 != 0;

  [(SBUIPasscodeLockViewBase *)self _overrideBiometricMatchingEnabled:v6 forReason:@"PasscodeLockViewTransitionToPasscode"];
  [(SBUIPasscodeLockViewBase *)self becomeFirstResponder];

  [(SBUIPasscodeLockViewBase *)self _overrideBiometricMatchingEnabled:0 forReason:@"PasscodeLockViewTransitionToPasscode"];
}

- (void)willMoveToSuperview:(id)superview
{
  v6.receiver = self;
  v6.super_class = SBUIPasscodeLockViewBase;
  [(SBUIPasscodeLockViewBase *)&v6 willMoveToSuperview:?];
  if (superview)
  {
    _proudLockShowingBiometricStates = [(SBUIPasscodeLockViewBase *)self _proudLockShowingBiometricStates];
    if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport]&& [(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled]&& (_proudLockShowingBiometricStates & [(SBUIBiometricResource *)self->_biometricResource isMatchingEnabled]) == 1)
    {
      [(SBUIPasscodeLockViewBase *)self _setSuppressTitleText:1 animated:0];
    }

    [(SBUIPasscodeLockViewBase *)self updateStatusTextAnimated:0];
  }
}

- (void)resetForScreenOff
{
  if ([(SBUIPasscodeLockViewBase *)self _statusState]== 8)
  {

    [(SBUIPasscodeLockViewBase *)self _setStatusState:0];
  }
}

- (void)resetForSuccess
{
  [(SBUIPasscodeLockViewBase *)self reset];
  _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
  [_proudLockContainerViewControllerToUpdate setAuthenticated:1];

  poseidonContainerViewController = self->_poseidonContainerViewController;

  [(SBUIPoseidonContainerViewController *)poseidonContainerViewController showCoaching:0];
}

- (void)setBiometricResource:(id)resource
{
  resourceCopy = resource;
  biometricResource = self->_biometricResource;
  v7 = resourceCopy;
  if (biometricResource != resourceCopy)
  {
    [(SBUIBiometricResource *)biometricResource removeObserver:self];
    objc_storeStrong(&self->_biometricResource, resource);
    [(SBUIBiometricResource *)self->_biometricResource addObserver:self];
    if (self->_biometricResource)
    {
      [(SBUIPasscodeLockViewBase *)self _updateStatusStateForLockoutIfNecessaryAnimatedly:0];
      [(SBUIPasscodeLockViewBase *)self _updateBiometricLayout];
    }
  }
}

- (void)setPlaysKeypadSounds:(BOOL)sounds
{
  if (self->_playsKeypadSounds != sounds)
  {
    self->_playsKeypadSounds = sounds;
    if (sounds)
    {
      [(_UIKBFeedbackGenerating *)self->_keyboardFeedbackBehavior activateWithCompletionBlock:0];
    }
  }
}

- (void)setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    self->_screenOn = on;
    if (!on)
    {
      [(SBUIPasscodeLockViewBase *)self resetForScreenOff];
      if ([(_UIKBFeedbackGenerating *)self->_keyboardFeedbackBehavior isActive])
      {
        keyboardFeedbackBehavior = self->_keyboardFeedbackBehavior;

        [(_UIKBFeedbackGenerating *)keyboardFeedbackBehavior deactivate];
      }
    }
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    customBackgroundColor = [(SBUIPasscodeLockViewBase *)self customBackgroundColor];
    v4 = [customBackgroundColor colorWithAlphaComponent:self->_backgroundAlpha];
    [(SBUIPasscodeLockViewBase *)self setBackgroundColor:v4];
  }
}

- (void)setBackgroundLegibilitySettingsProvider:(id)provider
{
  providerCopy = provider;
  backgroundLegibilitySettingsProvider = self->_backgroundLegibilitySettingsProvider;
  if (backgroundLegibilitySettingsProvider != providerCopy)
  {
    v7 = providerCopy;
    [(SBFLegibilitySettingsProvider *)backgroundLegibilitySettingsProvider setDelegate:0];
    objc_storeStrong(&self->_backgroundLegibilitySettingsProvider, provider);
    [(SBFLegibilitySettingsProvider *)self->_backgroundLegibilitySettingsProvider setDelegate:self];
    backgroundLegibilitySettingsProvider = [(SBUIPasscodeLockViewBase *)self providerLegibilitySettingsChanged:self->_backgroundLegibilitySettingsProvider];
    providerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](backgroundLegibilitySettingsProvider, providerCopy);
}

- (void)resetForFailedMesaAttemptWithStatusText:(id)text andSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  textCopy = text;
  [(SBUIPasscodeLockViewBase *)self _resetForFailedBiometricAttempt];
  [(SBUIPasscodeLockViewBase *)self updateStatusText:textCopy subtitle:subtitleCopy animated:1];
}

- (void)autofillForSuccessfulMesaAttemptWithCompletion:(id)completion
{
  completionCopy = completion;
  _entryField = [(SBUIPasscodeLockViewBase *)self _entryField];
  [_entryField _autofillForBiometricAuthenticationWithCompletion:completionCopy];
}

- (void)setBiometricAuthenticationAllowed:(BOOL)allowed
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_isBiometricAuthenticationAllowed != allowed)
  {
    [(SBUIPasscodeLockViewBase *)self updateStatusTextAnimated:1];
    self->_isBiometricAuthenticationAllowed = allowed;
    if (!allowed && self->_pendingBioUnlock)
    {
      v5 = SBLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "Disabling matching for passcode lock view (%p) but there is a pending bio unlock", &v6, 0xCu);
      }

      self->_pendingBioUnlock = 0;
    }

    [(SBUIPasscodeLockViewBase *)self _evaluateBiometricMatchingState];
  }
}

- (void)_setBiometricMatchingState:(unint64_t)state
{
  if (self->_biometricMatchingState == state)
  {
    return;
  }

  self->_biometricMatchingState = state;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v12 = [v4 stringWithFormat:@"PasscodeUI-<%@:%p>", v6, self];

  v7 = self->_biometricMatchingAssertion;
  biometricMatchingState = self->_biometricMatchingState;
  switch(biometricMatchingState)
  {
    case 0uLL:
      v10 = 0;
      goto LABEL_9;
    case 2uLL:
      v9 = 0;
      goto LABEL_7;
    case 1uLL:
      [(SBUIPasscodeLockViewBase *)self _updateStatusStateForLockoutIfNecessaryAnimatedly:0];
      v9 = 3;
LABEL_7:
      v10 = [(SBUIBiometricResource *)self->_biometricResource acquireMatchingAssertionWithMode:v9 reason:v12];
LABEL_9:
      biometricMatchingAssertion = self->_biometricMatchingAssertion;
      self->_biometricMatchingAssertion = v10;

      break;
  }

  [(BSInvalidatable *)v7 invalidate];
}

- (void)_overrideBiometricMatchingEnabled:(BOOL)enabled forReason:(id)reason
{
  enabledCopy = enabled;
  reasonCopy = reason;
  v12 = reasonCopy;
  if (!reasonCopy)
  {
    [SBUIPasscodeLockViewBase _overrideBiometricMatchingEnabled:a2 forReason:self];
    reasonCopy = 0;
  }

  biometricMatchingEnabledOverrideReasons = self->_biometricMatchingEnabledOverrideReasons;
  if (enabledCopy)
  {
    if (!biometricMatchingEnabledOverrideReasons)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v10 = self->_biometricMatchingEnabledOverrideReasons;
      self->_biometricMatchingEnabledOverrideReasons = v9;

      reasonCopy = v12;
      biometricMatchingEnabledOverrideReasons = self->_biometricMatchingEnabledOverrideReasons;
    }

    [(NSMutableSet *)biometricMatchingEnabledOverrideReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)biometricMatchingEnabledOverrideReasons removeObject:reasonCopy];
    if ([(NSMutableSet *)self->_biometricMatchingEnabledOverrideReasons count])
    {
      goto LABEL_10;
    }

    v11 = self->_biometricMatchingEnabledOverrideReasons;
    self->_biometricMatchingEnabledOverrideReasons = 0;
  }

  [(SBUIPasscodeLockViewBase *)self _evaluateBiometricMatchingState];
LABEL_10:
}

- (void)willMoveToWindow:(id)window
{
  if (window)
  {
    [(SBUIPasscodeLockViewBase *)self _luminanceBoostDidChange];
  }
}

- (void)_setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v7 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
    [_proudLockContainerViewControllerToUpdate setLegibilitySettings:self->_legibilitySettings];

    [(SBUIProudLockContainerViewController *)self->_proudLockContainerViewController setLegibilitySettings:self->_legibilitySettings];
    [(SBUIPasscodeLockViewBase *)self _evaluateLuminance];
    settingsCopy = v7;
  }
}

- (void)_setLuminosityBoost:(double)boost
{
  if (self->_luminanceBoost != boost)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_luminanceBoost = boost;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__SBUIPasscodeLockViewBase__setLuminosityBoost___block_invoke;
    v5[3] = &unk_1E789DA38;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.2];
  }
}

- (void)_sendDelegateKeypadKeyDown
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeLockViewKeypadKeyDown:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_sendDelegateKeypadKeyUp
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeLockViewKeypadKeyUp:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_updateStatusStateForLockoutIfNecessaryAnimatedly:(BOOL)animatedly
{
  if (self->_isBiometricAuthenticationAllowed)
  {
    animatedlyCopy = animatedly;
    if (![(SBUIPasscodeLockViewBase *)self _statusState])
    {
      biometricLockoutState = [(SBUIBiometricResource *)self->_biometricResource biometricLockoutState];
      if ([(SBUIBiometricResource *)self->_biometricResource hasBiometricAuthenticationCapabilityEnabled])
      {
        if ([(SBUIBiometricResource *)self->_biometricResource isMatchingEnabled]&& biometricLockoutState != 0)
        {
          v7 = [(SBUIPasscodeLockViewBase *)self _statusStateForLockoutState:biometricLockoutState];

          [(SBUIPasscodeLockViewBase *)self _setStatusState:v7 animated:animatedlyCopy];
        }
      }
    }
  }
}

- (double)_numberPadOffsetFromTopOfScreen:(id)screen
{
  screenCopy = screen;
  _isBoundsPortraitOriented = [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  v10 = __sb__runningInSpringBoard();
  v11 = v10;
  if (v10)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v12 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    userInterfaceIdiom = [MEMORY[0x1E69DC938] currentDevice];
    if ([userInterfaceIdiom userInterfaceIdiom])
    {
      v12 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v13 = __sb__runningInSpringBoard();
  v14 = v13;
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v12 = v15 >= *(MEMORY[0x1E69D4380] + 40);
  if ((v14 & 1) == 0)
  {
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v9 == 1 || !_isBoundsPortraitOriented || v12)
  {
    if (v9 == 1 || _isBoundsPortraitOriented)
    {
      [MEMORY[0x1E69D3FE8] pinNumberPadBaseOffsetFromTopOfScreen:_isBoundsPortraitOriented];
      v21 = v20;
    }

    else
    {
      [MEMORY[0x1E69D3FE8] pinNumberPadButtonOuterCircleDiameter:0];
      v23 = v22 * 4.0;
      [MEMORY[0x1E69D3FE8] pinNumberPadButtonPaddingHeight:0];
      v25 = v23 + v24 * 6.0;
      [(SBUIPasscodeLockViewBase *)self bounds];
      v21 = (v26 - v25) * 0.75;
    }

    [screenCopy _distanceToTopOfFirstButton];
    v19 = v21 - v27;
  }

  else
  {
    [(SBUIPasscodeLockViewBase *)self bounds];
    v17 = v16;
    [screenCopy bounds];
    v19 = v17 - v18;
  }

  return v19;
}

- (void)_evaluateMatchingAndHandleBiometricAuthenticationIfNeeded
{
  [(SBUIPasscodeLockViewBase *)self _evaluateBiometricMatchingState];
  if (self->_isBiometricAuthenticationAllowed && self->_pendingBioUnlock)
  {
    self->_pendingBioUnlock = 0;

    [(SBUIPasscodeLockViewBase *)self _handleBiometricAuthentication];
  }
}

- (void)_setStatusText:(id)text
{
  textCopy = text;
  statusText = self->_statusText;
  v9 = textCopy;
  if (!statusText || (setNeedsStatusTextUpdate = [(NSString *)statusText isEqualToString:textCopy], textCopy = v9, (setNeedsStatusTextUpdate & 1) == 0))
  {
    v7 = [textCopy copy];
    v8 = self->_statusText;
    self->_statusText = v7;

    setNeedsStatusTextUpdate = [(SBUIPasscodeLockViewBase *)self setNeedsStatusTextUpdate];
    textCopy = v9;
  }

  MEMORY[0x1EEE66BB8](setNeedsStatusTextUpdate, textCopy);
}

- (void)_setStatusSubtitleText:(id)text
{
  textCopy = text;
  statusSubtitleText = self->_statusSubtitleText;
  v9 = textCopy;
  if (!statusSubtitleText || (setNeedsStatusTextUpdate = [(NSString *)statusSubtitleText isEqualToString:textCopy], textCopy = v9, (setNeedsStatusTextUpdate & 1) == 0))
  {
    v7 = [textCopy copy];
    v8 = self->_statusSubtitleText;
    self->_statusSubtitleText = v7;

    setNeedsStatusTextUpdate = [(SBUIPasscodeLockViewBase *)self setNeedsStatusTextUpdate];
    textCopy = v9;
  }

  MEMORY[0x1EEE66BB8](setNeedsStatusTextUpdate, textCopy);
}

- (void)_setSuppressTitleText:(BOOL)text animated:(BOOL)animated
{
  if (self->_suppressTitleText != text)
  {
    self->_suppressTitleText = text;
    [(SBUIPasscodeLockViewBase *)self updateStatusTextAnimated:animated];
  }
}

- (void)updateStatusTextAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _statusState = [(SBUIPasscodeLockViewBase *)self _statusState];
  _orientation = [(SBUIPasscodeLockViewBase *)self _orientation];
  switch(_statusState)
  {
    case 1uLL:
      v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v7 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
      {
        v9 = @"FACE_ID_NEEDS_PASSCODE_REBOOT";
      }

      else
      {
        v9 = @"MESA_NEEDS_PASSCODE_REBOOT";
      }

      v10 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v9];
      v11 = _SBUIAXAwareLocalizedStringForKey(v10, _orientation);
      v12 = SBLogCommon();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v13 = "Passcode view status: Face ID or Mesa needs passcode after reboot";
      goto LABEL_57;
    case 2uLL:
      v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v28 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIPasscodeLocalizeStringForMesaOrPearlKey(@"MESA_NEEDS_PASSCODE_BIO_LOCKOUT", @"FACE_ID_NEEDS_PASSCODE_BIO_LOCKOUT", self->_biometricResource, _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Face ID or Mesa needs passcode bio lockout";
      goto LABEL_79;
    case 3uLL:
      v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v24 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIPasscodeLocalizeStringForMesaOrPearlKey(@"MESA_NEEDS_PASSCODE", @"FACE_ID_NEEDS_PASSCODE", self->_biometricResource, _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Face ID or Mesa needs passcode for bio expiraion";
      goto LABEL_79;
    case 4uLL:
      v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v26 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIPasscodeLocalizeStringForMesaOrPearlKey(@"MESA_NEEDS_PASSCODE", @"FACE_ID_NEEDS_PASSCODE", self->_biometricResource, _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Face ID or Mesa needs passcode for bio enabling";
      goto LABEL_79;
    case 5uLL:
      v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v18 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
      {
        v19 = @"FACE_ID_NEEDS_PASSCODE_FOR_SOFTWARE_UPDATE";
      }

      else
      {
        v19 = @"MESA_NEEDS_PASSCODE_FOR_SOFTWARE_UPDATE";
      }

      v10 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v19];
      v11 = _SBUIAXAwareLocalizedStringForKey(v10, _orientation);
      v12 = SBLogCommon();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v13 = "Passcode view status: Face ID or Mesa needs passcode for software update";
      goto LABEL_57;
    case 6uLL:
      v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v31 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
      {
        v32 = @"FACE_ID_NEEDS_PASSCODE_FOR_ESCROW_UPDATE";
      }

      else
      {
        v32 = @"MESA_NEEDS_PASSCODE_FOR_ESCROW_UPDATE";
      }

      v10 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v32];
      v11 = _SBUIAXAwareLocalizedStringForKey(v10, _orientation);
      v12 = SBLogCommon();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v13 = "Passcode view status: Face ID or Mesa needs passcode for escrow update";
      goto LABEL_57;
    case 7uLL:
      v36 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v36 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
      {
        v37 = @"FACE_ID_NEEDS_PASSCODE_BIO_DROPPED";
      }

      else
      {
        v37 = @"MESA_NEEDS_PASSCODE_BIO_DROPPED";
      }

      v10 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v37];
      v11 = _SBUIAXAwareLocalizedStringForKey(v10, _orientation);
      v12 = SBLogCommon();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      *buf = 0;
      v13 = "Passcode view status: Face ID or Mesa needs passcode due to token drop";
LABEL_57:
      _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
LABEL_58:

      goto LABEL_80;
    case 8uLL:
      v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v27 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT_RETRY" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v22 = "Passcode view status: Passcode entry prompt to retry";
      goto LABEL_35;
    case 9uLL:
      v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v40 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT_RETRY" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"MESA_IS_DIRTY", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Mesa is dirty";
      goto LABEL_79;
    case 0xAuLL:
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v21 localizedStringForKey:@"SWIPE_UP_TO_RETRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v22 = "Passcode view status: Swipe up to retry prompt";
LABEL_35:
      _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
LABEL_36:
      v11 = 0;
      goto LABEL_80;
    case 0xBuLL:
      v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v39 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"WATCH_LOCKED_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Watch locked prompt";
      goto LABEL_79;
    case 0xCuLL:
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v17 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"SLEEP_MODE_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Watch in sleep mode prompt";
      goto LABEL_79;
    case 0xDuLL:
      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v20 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if (MGGetBoolAnswer())
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"WATCH_WLAN_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Watch Wlan off prompt";
      }

      else
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"WATCH_WIFI_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Watch Wifi off prompt";
      }

      goto LABEL_79;
    case 0xEuLL:
      v35 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v35 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"WATCH_OUT_OF_RANGE_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Watch out of range prompt";
      goto LABEL_79;
    case 0xFuLL:
      v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v16 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_BT_OFF_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Phone bluetooth off prompt";
      goto LABEL_79;
    case 0x10uLL:
      v25 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v25 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if (MGGetBoolAnswer())
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_WLAN_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Phone Wlan off prompt";
      }

      else
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_WIFI_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Watch Wifi off prompt";
      }

      goto LABEL_79;
    case 0x11uLL:
      v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v14 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      if (MGGetBoolAnswer())
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_BT_AND_WLAN_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Phone bluetooth and Wlan off prompt";
      }

      else
      {
        v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_BT_AND_WIFI_OFF_PROMPT", _orientation);
        v10 = SBLogCommon();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_80;
        }

        *buf = 0;
        v15 = "Passcode view status: Phone bluetooth and Wifi off prompt";
      }

LABEL_79:
      _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_80:

      if (!_defaultStatusText)
      {
LABEL_81:
        _defaultStatusText = [(SBUIPasscodeLockViewBase *)self _defaultStatusText];
      }

      if (self->_suppressTitleText && ![v11 length])
      {

        _defaultStatusText = @" ";
      }

      [(SBUIPasscodeLockViewBase *)self _setStatusText:_defaultStatusText];
      [(SBUIPasscodeLockViewBase *)self _setStatusSubtitleText:v11];
      if (self->_needStatusTextUpdate)
      {
        _statusText = [(SBUIPasscodeLockViewBase *)self _statusText];
        _statusSubtitleText = [(SBUIPasscodeLockViewBase *)self _statusSubtitleText];
        [(SBUIPasscodeLockViewBase *)self updateStatusText:_statusText subtitle:_statusSubtitleText animated:animatedCopy];

        self->_needStatusTextUpdate = 0;
      }

      return;
    case 0x12uLL:
      v29 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v29 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"PHONE_UNLOCK_REQUIRED_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Phone unlocked required prompt";
      goto LABEL_79;
    case 0x13uLL:
      v38 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v38 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"GENERIC_WATCH_UNLOCK_ERROR_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Generic watch unlock error prompt";
      goto LABEL_79;
    case 0x14uLL:
      v43 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v43 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = SBUIStringForPhoneUnlockWithWatchErrorCode(self->_errorCode);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Watch unlock error";
      goto LABEL_79;
    case 0x15uLL:
      v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v30 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"FACE_ID_INTERLOCKED", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Face ID interlocked";
      goto LABEL_79;
    case 0x16uLL:
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v33 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v34 = [(SBUIPasscodeLockViewBase *)self _deviceSpecificTemperatureStringForTemperatureState:1];
      v11 = _SBUIAXAwareLocalizedStringForKey(v34, _orientation);

      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Thermal state too hot";
      goto LABEL_79;
    case 0x17uLL:
      v41 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v41 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v42 = [(SBUIPasscodeLockViewBase *)self _deviceSpecificTemperatureStringForTemperatureState:0];
      v11 = _SBUIAXAwareLocalizedStringForKey(v42, _orientation);

      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Thermal state too cold";
      goto LABEL_79;
    case 0x18uLL:
      v44 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v44 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"FACE_ID_UNSUPPORTED_GLASSES_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Unsupported Glasses";
      goto LABEL_79;
    case 0x19uLL:
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      _defaultStatusText = [v23 localizedStringForKey:@"PASSCODE_ENTRY_PROMPT" value:&stru_1F1D7ED48 table:@"SpringBoardUIServices"];

      v11 = _SBUIAXAwareLocalizedStringForKey(@"FACE_ID_PERIOCULAR_TIMED_OUT_PROMPT", _orientation);
      v10 = SBLogCommon();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v15 = "Passcode view status: Periocular timed out";
      goto LABEL_79;
    default:
      if (self->_deviceHasBeenUnlockedOnceSinceBoot)
      {
        v11 = 0;
      }

      else
      {
        v47 = MEMORY[0x1E696AEC0];
        v48 = _SBUIAXAwareLocalizedStringForKey(@"PASSCODE_AFTER_REBOOT", _orientation);
        currentDevice = [MEMORY[0x1E69DC938] currentDevice];
        model = [currentDevice model];
        v11 = [v47 stringWithFormat:v48, model];

        v51 = SBLogCommon();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9A79000, v51, OS_LOG_TYPE_DEFAULT, "Passcode view status: Face ID or Mesa needs passcode after reboot", buf, 2u);
        }
      }

      goto LABEL_81;
  }
}

- (id)_deviceSpecificTemperatureStringForTemperatureState:(unint64_t)state
{
  hasPearlSupport = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  v5 = @"MESA";
  if (hasPearlSupport)
  {
    v5 = @"FACE_ID";
  }

  v6 = @"COLD";
  if (state == 1)
  {
    v6 = @"HOT";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_DEVICE_TOO_%@", v5, v6];
  v8 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:v7];

  return v8;
}

- (unint64_t)_statusStateForLockoutState:(unint64_t)state
{
  if (state - 1 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1A9B2A7F0[state - 1];
  }
}

- (void)_setStatusState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_statusState != state)
  {
    animatedCopy = animated;
    self->_statusState = state;
    if (![(SBUIPasscodeLockViewBase *)self _statusStateShouldNotUpdateForUnsupportedGlassesFeedback:?])
    {
      [(SBUIPasscodeLockViewBase *)self updateStatusTextAnimated:animatedCopy];
    }

    self->_previousStatusState = state;
  }
}

- (void)_resetForFailedPasscode:(BOOL)passcode
{
  passcodeCopy = passcode;
  [(SBUIPasscodeLockViewBase *)self _playAuthenticationFeedbackForSuccess:0 jiggleLock:1];
  entryField = self->_entryField;

  [(SBUIPasscodeEntryField *)entryField _resetForFailedPasscode:passcodeCopy];
}

- (void)_playAuthenticationFeedbackForSuccess:(BOOL)success jiggleLock:(BOOL)lock
{
  successCopy = success;
  hasPearlSupport = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  if (successCopy)
  {
    if (hasPearlSupport)
    {
      v8 = _AXSPearlAuthenticationHapticsEnabled();
      v9 = 1014;
      if (!v8)
      {
        v9 = 1000;
      }
    }

    else
    {
      v9 = 1000;
    }
  }

  else
  {
    v9 = 1001;
    if (hasPearlSupport)
    {
      v9 = 1015;
    }
  }

  authenticationFeedbackBehavior = self->_authenticationFeedbackBehavior;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__SBUIPasscodeLockViewBase__playAuthenticationFeedbackForSuccess_jiggleLock___block_invoke;
  v11[3] = &unk_1E789E248;
  v11[4] = self;
  v11[5] = v9;
  lockCopy = lock;
  [(UINotificationFeedbackGenerator *)authenticationFeedbackBehavior activateWithCompletionBlock:v11];
}

void __77__SBUIPasscodeLockViewBase__playAuthenticationFeedbackForSuccess_jiggleLock___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 688) _privateNotificationOccurred:*(a1 + 40)];
  }

  [*(*(a1 + 32) + 688) deactivate];
  if (*(a1 + 48) == 1)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.springboard"];

    if (v5)
    {
      v6 = [*MEMORY[0x1E69DDA98] statusBar];
      [v6 jiggleLockIcon];
    }

    v7 = [*(a1 + 32) _proudLockContainerViewControllerToUpdate];
    [v7 updateLockForBiometricMatchFailure];
  }
}

- (BOOL)_effectivelyHasProudLockShowingBiometricStates
{
  if ([(SBUIPasscodeLockViewBase *)self _proudLockShowingBiometricStates])
  {
    return 1;
  }

  return [(SBUIPasscodeLockViewBase *)self _accountingForExternallyShownProudLock];
}

- (void)_resetProudLockAndTitleTextForFailedBiometricAttempt
{
  v3 = +[SBUIBiometricResource sharedInstance];
  hasPearlSupport = [v3 hasPearlSupport];

  if (hasPearlSupport)
  {
    [(SBUIPasscodeLockViewBase *)self _setStatusStateSwipeToRetryAnimated:1];
  }

  [(SBUIPasscodeLockViewBase *)self _setSuppressTitleText:0 animated:1];
  _entryField = [(SBUIPasscodeLockViewBase *)self _entryField];
  stringValue = [_entryField stringValue];
  v7 = [stringValue length];

  _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
  v9 = _proudLockContainerViewControllerToUpdate;
  if (v7)
  {
    [_proudLockContainerViewControllerToUpdate reset];
  }

  else
  {
    [_proudLockContainerViewControllerToUpdate updateLockForBiometricMatchFailure];
  }
}

- (void)_resetForFailedBiometricAttempt
{
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Passcode lock view resetting for failed biometric attempt", buf, 2u);
  }

  if (self->_passcodeLockViewState == 1)
  {
    if ([(SBUIPasscodeLockViewBase *)self _effectivelyHasProudLockShowingBiometricStates])
    {
      [(SBUIPasscodeLockViewBase *)self _resetProudLockAndTitleTextForFailedBiometricAttempt];
    }

    else
    {
      _entryField = [(SBUIPasscodeLockViewBase *)self _entryField];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke;
      v8[3] = &unk_1E789DA38;
      v8[4] = self;
      [_entryField _autofillForBiometricAuthenticationWithCompletion:v8];
    }
  }

  else
  {
    if ([(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView type]!= 3)
    {
      [(SBUIPasscodeLockViewBase *)self _resetProudLockAndTitleTextForFailedBiometricAttempt];
    }

    if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
    {
      if ([(SBUIPasscodeLockViewBase *)self _accountingForExternallyShownProudLock])
      {
        v4 = 0;
      }

      else
      {
        v4 = 800000000;
      }

      v5 = dispatch_time(0, v4);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke_3;
      v7[3] = &unk_1E789DA38;
      v7[4] = self;
      dispatch_after(v5, MEMORY[0x1E69E96A0], v7);
    }
  }
}

void __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke_2;
  block[3] = &unk_1E789DA38;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setSuppressTitleText:0 animated:1];
  [*(a1 + 32) _playAuthenticationFeedbackForSuccess:0 jiggleLock:1];
  v2 = [*(a1 + 32) _entryField];
  [v2 _resetForFailedPasscode:1];
}

uint64_t __59__SBUIPasscodeLockViewBase__resetForFailedBiometricAttempt__block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[59] != 1)
  {
    v3 = [v2 unlockDestination];

    if (!v3)
    {
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      v5 = *(a1 + 32);
      v8 = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonKey";
      v9[0] = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonMatchFailure";
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [v4 postNotificationName:@"SBUIPasscodeLockViewBiometricTransitionToPasscode" object:v5 userInfo:v6];
    }
  }

  if ([*(*(a1 + 32) + 528) type] == 3)
  {
    [*(a1 + 32) _resetProudLockAndTitleTextForFailedBiometricAttempt];
  }

  return [*(a1 + 32) _advanceToPasscodeForMatchFailure:1];
}

- (void)_handleNonPasscodeAuthenticationAndUpdateProudLock
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __78__SBUIPasscodeLockViewBase__handleNonPasscodeAuthenticationAndUpdateProudLock__block_invoke;
  v4[3] = &unk_1E789DA38;
  v4[4] = self;
  v3 = MEMORY[0x1AC58E960](v4, a2);
  if (![(SBUIPasscodeLockViewBase *)self _supportsProudLock])
  {
    goto LABEL_5;
  }

  if (!self->_proudLockConfiguration.coachingDelaysUnlock)
  {
    [(SBUIPasscodeLockViewBase *)self _updateProudLockForBioUnlockWithCompletion:0];
LABEL_5:
    v3[2](v3);
    goto LABEL_6;
  }

  [(SBUIPasscodeLockViewBase *)self _updateProudLockForBioUnlockWithCompletion:v3];
LABEL_6:
}

_BYTE *__78__SBUIPasscodeLockViewBase__handleNonPasscodeAuthenticationAndUpdateProudLock__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[480] == 1)
  {
    return [result _handleBiometricAuthentication];
  }

  return result;
}

- (void)_handleBiometricAuthentication
{
  [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
  [(SBUIPasscodeLockViewBase *)self _playAuthenticationFeedbackForSuccess:1 jiggleLock:0];
  _entryField = [(SBUIPasscodeLockViewBase *)self _entryField];
  [_entryField _autofillForBiometricAuthenticationWithCompletion:0];

  if ([(SBUIPasscodeLockViewBase *)self _accountingForExternallyShownProudLock])
  {
    v4 = 0;
  }

  else
  {
    v4 = 200000000;
  }

  v5 = dispatch_time(0, v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SBUIPasscodeLockViewBase__handleBiometricAuthentication__block_invoke;
  block[3] = &unk_1E789DA38;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

- (void)_notifyDelegatePasscodeEnteredViaMesa
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v4 passcodeLockViewPasscodeEnteredViaMesa:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_updateProudLockForBioUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBUIPasscodeLockViewBase *)self _proudLockShowingBiometricStates])
  {
    _accountingForExternallyShownProudLock = [(SBUIPasscodeLockViewBase *)self _accountingForExternallyShownProudLock];
    _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
    v6 = _proudLockContainerViewControllerToUpdate;
    if (!_accountingForExternallyShownProudLock)
    {
      [_proudLockContainerViewControllerToUpdate setAuthenticated:1 completion:completionCopy];

      goto LABEL_7;
    }

    [_proudLockContainerViewControllerToUpdate setAuthenticated:1 completion:0];
  }

  v7 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy);
LABEL_7:
  v7 = completionCopy;
LABEL_8:
}

- (void)_updateProudLockForBioEvent:(unint64_t)event
{
  if (event != 4)
  {
    _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
    [_proudLockContainerViewControllerToUpdate handleBiometricEvent:event];
  }
}

- (void)_updateStatusTextForBioEvent:(unint64_t)event animated:(BOOL)animated
{
  v6 = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport:event];
  statusState = 1;
  switch(event)
  {
    case 5uLL:
    case 6uLL:
    case 0xBuLL:
      statusState = 4;
      break;
    case 7uLL:
      statusState = 3;
      break;
    case 8uLL:
      break;
    case 9uLL:
      statusState = 9;
      break;
    case 0xAuLL:
      if (self->_passcodeLockViewState != 1 || v6)
      {
        statusState = self->_statusState;
      }

      else
      {
        statusState = 8;
      }

      break;
    case 0x18uLL:
      statusState = 21;
      break;
    case 0x19uLL:
      statusState = 22;
      break;
    case 0x1AuLL:
      statusState = 23;
      break;
    case 0x1EuLL:
      statusState = 24;
      break;
    case 0x20uLL:
      statusState = 25;
      break;
    case 0x21uLL:
      statusState = 7;
      break;
    default:
      statusState = 0;
      break;
  }

  [(SBUIPasscodeLockViewBase *)self _setStatusState:statusState];
}

- (void)_updateBiometricGlyphForBioEvent:(unint64_t)event animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  hasPearlSupport = [(SBUIBiometricResource *)self->_biometricResource hasPearlSupport];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__SBUIPasscodeLockViewBase__updateBiometricGlyphForBioEvent_animated_completion___block_invoke;
  v12[3] = &unk_1E789E270;
  v12[4] = &v17;
  v12[5] = &v13;
  v10 = MEMORY[0x1AC58E960](v12);
  v11 = v10;
  if (!self->_passcodeLockViewState && !hasPearlSupport)
  {
    if (event - 9 >= 3)
    {
      if (event >= 2)
      {
        if (event != 4)
        {
          goto LABEL_9;
        }

        event = 12;
      }
    }

    else
    {
      event = 0;
    }

    (*(v10 + 16))(v10, event);
  }

LABEL_9:
  if (*(v18 + 24) == 1)
  {
    [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setGlyphViewState:v14[3] animated:animatedCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __81__SBUIPasscodeLockViewBase__updateBiometricGlyphForBioEvent_animated_completion___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *(*(*(result + 40) + 8) + 24) = a2;
  return result;
}

- (void)_setStatusStateSwipeToRetryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBUIPasscodeLockViewBase *)self canSuggestSwipeToRetry])
  {
    phoneUnlockWithWatchFailedStatusState = self->_phoneUnlockWithWatchFailedStatusState;
    selfCopy2 = self;
    if (!phoneUnlockWithWatchFailedStatusState)
    {
      phoneUnlockWithWatchFailedStatusState = 10;
    }
  }

  else
  {
    selfCopy2 = self;
    phoneUnlockWithWatchFailedStatusState = 0;
  }

  [(SBUIPasscodeLockViewBase *)selfCopy2 _setStatusState:phoneUnlockWithWatchFailedStatusState animated:animatedCopy];
}

- (void)providerLegibilitySettingsChanged:(id)changed
{
  legibilitySettings = [(SBFLegibilitySettingsProvider *)self->_backgroundLegibilitySettingsProvider legibilitySettings];
  v5 = legibilitySettings;
  if (legibilitySettings)
  {
    v6 = legibilitySettings;
    legibilitySettings = [(SBUIPasscodeLockViewBase *)self _setLegibilitySettings:legibilitySettings];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](legibilitySettings, v5);
}

- (void)biometricResource:(id)resource matchingEnabledDidChange:(BOOL)change
{
  if (change)
  {
    [(SBUIPasscodeLockViewBase *)self _updateStatusStateForLockoutIfNecessaryAnimatedly:0];

    [(SBUIPasscodeLockViewBase *)self updateStatusTextAnimated:1];
  }

  else
  {
    v5 = dispatch_time(0, 500000000);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__SBUIPasscodeLockViewBase_biometricResource_matchingEnabledDidChange___block_invoke;
    v6[3] = &unk_1E789DA60;
    v6[4] = self;
    v7 = 1;
    dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  }
}

void __71__SBUIPasscodeLockViewBase_biometricResource_matchingEnabledDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) window];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 updateStatusTextAnimated:v4];
  }
}

- (void)biometricResource:(id)resource observeEvent:(unint64_t)event
{
  if ([(SBUIPasscodeLockViewBase *)self _canRecognizeBiometricAuthentication])
  {
    if (event - 9 > 2)
    {
      switch(event)
      {
        case 0uLL:
          biometricAuthenticationView = self->_biometricAuthenticationView;
          v14 = 0;
          goto LABEL_38;
        case 1uLL:
          biometricAuthenticationView = self->_biometricAuthenticationView;
          v14 = 1;
LABEL_38:
          [(SBUIPasscodeBiometricAuthenticationView *)biometricAuthenticationView setGlyphViewState:v14];
          break;
        case 4uLL:
          [(SBUIPasscodeLockViewBase *)self _handleNonPasscodeAuthenticationAndUpdateProudLock];
          break;
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0x18uLL:
        case 0x19uLL:
        case 0x1AuLL:
        case 0x21uLL:
          [(SBUIPasscodeLockViewBase *)self _updateStatusTextForBioEvent:event animated:1];
          [(SBUIPasscodeLockViewBase *)self _setPasscodeLockViewState:1 animated:1];
          _proudLockContainerViewControllerToUpdate = [(SBUIPasscodeLockViewBase *)self _proudLockContainerViewControllerToUpdate];
          [_proudLockContainerViewControllerToUpdate setAuthenticated:0];

          break;
        case 0xDuLL:
          if (!self->_passcodeLockViewState)
          {
            [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
          }

          break;
        case 0xFuLL:
          if (!self->_passcodeLockViewState)
          {
            [(SBUIPasscodeLockViewBase *)self _resetForFailedBiometricAttempt];
          }

          break;
        case 0x15uLL:
          [(SBUIPasscodeLockViewBase *)self noteFaceHasBeenOccluded];
          break;
        case 0x1CuLL:
          [(SBUIPasscodeLockViewBase *)self noteBottomFaceHasBeenOccluded];
          break;
        case 0x1DuLL:
          [(SBUIPasscodeLockViewBase *)self _setAuthenticationViewTypeToFaceIDWithWatch];
          break;
        case 0x1EuLL:
          selfCopy2 = self;
          v16 = 30;
          goto LABEL_42;
        case 0x20uLL:
          selfCopy2 = self;
          v16 = 32;
LABEL_42:
          [(SBUIPasscodeLockViewBase *)selfCopy2 _updateStatusTextForBioEvent:v16 animated:1];
          [(SBUIPasscodeLockViewBase *)self _advanceToPasscodeForMatchFailure:0];
          break;
        default:
          break;
      }
    }

    else
    {
      [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setGlyphViewState:0];
      [(SBUIPasscodeLockViewBase *)self _resetForFailedBiometricAttempt];
      [(SBUIPasscodeLockViewBase *)self _updateStatusTextForBioEvent:event animated:1];
    }

    [(SBUIPasscodeLockViewBase *)self _updateBiometricGlyphForBioEvent:event animated:1 completion:0];
    [(SBUIPasscodeLockViewBase *)self _updateProudLockForBioEvent:event];
    isBiometricLockedOut = [(SBUIPasscodeLockViewBase *)self isBiometricLockedOut];
    if (event == 4 || isBiometricLockedOut)
    {
      poseidonContainerViewController = self->_poseidonContainerViewController;

      [(SBUIPoseidonContainerViewController *)poseidonContainerViewController showCoaching:0];
    }

    return;
  }

  if ((event & 0xFFFFFFFFFFFFFFFCLL) == 8)
  {
    if (event == 11)
    {
LABEL_6:

      [(SBUIPasscodeLockViewBase *)self _setStatusState:2];
      return;
    }

    goto LABEL_19;
  }

  if (event > 0x21)
  {
    return;
  }

  if (((1 << event) & 0x2070000A0) != 0)
  {
LABEL_19:

    [(SBUIPasscodeLockViewBase *)self _updateStatusTextForBioEvent:event animated:0];
    return;
  }

  if (event != 4)
  {
    if (event != 6)
    {
      return;
    }

    goto LABEL_6;
  }

  if (self->_isBiometricAuthenticationAllowed)
  {
    window = [(SBUIPasscodeLockViewBase *)self window];

    if (window)
    {
      v10 = SBLogBiometricResource();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBUIPasscodeLockViewBase biometricResource:v10 observeEvent:?];
      }

      self->_pendingBioUnlock = 1;
      v11 = self->_currentPendingBioUnlockToken + 1;
      self->_currentPendingBioUnlockToken = v11;
      v12 = dispatch_time(0, 1000000000);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __59__SBUIPasscodeLockViewBase_biometricResource_observeEvent___block_invoke;
      v17[3] = &unk_1E789E298;
      v17[4] = self;
      v18 = v11;
      dispatch_after(v12, MEMORY[0x1E69E96A0], v17);
    }
  }
}

void __59__SBUIPasscodeLockViewBase_biometricResource_observeEvent___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 516) == *(a1 + 40))
  {
    v2 = SBLogBiometricResource();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __59__SBUIPasscodeLockViewBase_biometricResource_observeEvent___block_invoke_cold_1(v1, v2);
    }

    *(*v1 + 513) = 0;
  }
}

- (double)passcodeBiometricAuthenticationViewSideButtonsOffsetFromCenter:(id)center
{
  +[SBUIPasscodeLockNumberPad _inputButtonCircleSize];
  v5 = v4;
  +[SBUIPasscodeLockNumberPad _inputButtonCircleSpacing];
  v7 = v6 * 3.0 + v5 * 3.0;
  +[SBUIPasscodeLockNumberPad _inputButtonCircleSpacing];
  v9 = v7 + v8 * 3.0;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || [(SBUIPasscodeLockViewBase *)self _isBoundsPortraitOriented])
  {
    return v9 / 3.0;
  }

  else
  {
    return v9 * 0.5;
  }
}

- (double)passcodeBiometricAuthenticationViewNumberPadAncillaryButtonOffsetFromTopOfScreen:(id)screen
{
  v4 = [[SBUIPasscodeLockNumberPad alloc] initWithDefaultSizeAndLightStyle:0];
  [(SBUIPasscodeLockViewBase *)self _numberPadOffsetFromTopOfScreen:v4];
  v6 = v5;
  [(SBUIPasscodeLockNumberPad *)v4 ancillaryButtonOffset];
  v8 = v6 + v7;

  return v8;
}

- (void)passcodeBiometricAuthenticationViewUsePasscodeButtonHit:(id)hit
{
  v7[1] = *MEMORY[0x1E69E9840];
  [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setAncillaryButtonsVisible:0];
  [(SBUIPasscodeBiometricAuthenticationView *)self->_biometricAuthenticationView setFaceIDUsePasscodeButtonVisible:0];
  [(SBUIPasscodeLockViewBase *)self _setPasscodeLockViewState:1 animated:1];
  [(SBUIPasscodeLockViewBase *)self _disarmAdvanceToPasscodeTimer];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonKey";
  v7[0] = @"SBUIPasscodeLockViewBiometricTransitionToPasscodeReasonUserRequested";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultCenter postNotificationName:@"SBUIPasscodeLockViewBiometricTransitionToPasscode" object:self userInfo:v5];
}

- (void)passcodeBiometricAuthenticationViewCancelButtonHit:(id)hit
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 passcodeLockViewCancelButtonPressed:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)passcodeBiometricAuthenticationViewEmergencyCallButtonHit:(id)hit
{
  delegate = [(SBUIPasscodeLockViewBase *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 passcodeLockViewEmergencyCallButtonPressed:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)phoneUnlockWithWatchControllerAttemptFailed:(id)failed withError:(id)error
{
  errorCopy = error;
  v5 = +[SBUIPeriocularController sharedInstance];
  periocularEnabled = [v5 periocularEnabled];

  v7 = +[SBUIPhoneUnlockWithVisionController sharedInstance];
  isPhoneUnlockEnabledAndRequirementsMet = [v7 isPhoneUnlockEnabledAndRequirementsMet];

  if (isPhoneUnlockEnabledAndRequirementsMet & 1) != 0 || (periocularEnabled)
  {
    goto LABEL_36;
  }

  code = [errorCopy code];
  v10 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
  showRawErrorCodes = [v10 showRawErrorCodes];

  if (showRawErrorCodes)
  {
    self->_phoneUnlockWithWatchFailedStatusState = 20;
    v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__errorCode;
    v13 = code;
    goto LABEL_34;
  }

  v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__phoneUnlockWithWatchFailedStatusState;
  v13 = 11;
  if (code > 127)
  {
    if (code > 198)
    {
      if ((code - 213) < 4)
      {
        v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__phoneUnlockWithWatchFailedStatusState;
        v13 = 18;
        goto LABEL_34;
      }

      if (code == 199)
      {
        v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__phoneUnlockWithWatchFailedStatusState;
        v13 = 13;
        goto LABEL_34;
      }

      if (code == 204)
      {
        v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__phoneUnlockWithWatchFailedStatusState;
        v13 = 12;
        goto LABEL_34;
      }
    }

    else
    {
      v14 = code + 0x80;
      if ((code - 128) <= 0x3A)
      {
        if (((1 << v14) & 0x400000000000A09) != 0)
        {
LABEL_9:
          v13 = 19;
          goto LABEL_34;
        }

        if (((1 << v14) & 0x404) != 0)
        {
          v13 = 14;
          goto LABEL_34;
        }

        if (((1 << v14) & 0x80000080) != 0)
        {
          goto LABEL_34;
        }
      }
    }

    goto LABEL_33;
  }

  if (code > 113)
  {
    if (code > 122)
    {
      if (code == 123)
      {
        v13 = 15;
        goto LABEL_34;
      }

      if (code == 124)
      {
        v13 = 17;
        goto LABEL_34;
      }
    }

    else
    {
      if (code == 114)
      {
        goto LABEL_9;
      }

      if (code == 120)
      {
        v13 = 16;
        goto LABEL_34;
      }
    }

    goto LABEL_33;
  }

  if (code == 101)
  {
    goto LABEL_9;
  }

  if (code != 102)
  {
    if (code == 103)
    {
      goto LABEL_9;
    }

LABEL_33:
    v13 = 0;
    v12 = &OBJC_IVAR___SBUIPasscodeLockViewBase__phoneUnlockWithWatchFailedStatusState;
  }

LABEL_34:
  *(&self->super.super.super.isa + *v12) = v13;
  [(SBUIPasscodeLockViewBase *)self _advanceToPasscodeForMatchFailure:1];
  if (![(SBUIBiometricResource *)self->_biometricResource biometricLockoutState])
  {
    [(SBUIPasscodeLockViewBase *)self _resetForFailedBiometricAttempt];
  }

LABEL_36:
}

- (void)phoneUnlockWithVisionController:(id)controller attemptFailedWithError:(id)error
{
  [(SBUIPasscodeLockViewBase *)self _advanceToPasscodeForMatchFailure:1, error];
  if (![(SBUIBiometricResource *)self->_biometricResource biometricLockoutState])
  {

    [(SBUIPasscodeLockViewBase *)self _resetForFailedBiometricAttempt];
  }
}

- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)proudLockConfiguration
{
  v3 = *&self[9].var9;
  *&retstr->var5 = *&self[9].var7;
  *&retstr->var7 = v3;
  *&retstr->var9 = *&self[10].var0;
  v4 = *&self[9].var5;
  *&retstr->var0 = *&self[9].var3;
  *&retstr->var3 = v4;
  return self;
}

- (void)setTransitionContext:(id *)context
{
  var2 = context->var2;
  *&self->_transitionContext.fromState = *&context->var0;
  self->_transitionContext.progress = var2;
}

- (void)beginTransitionToState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPasscodeLockViewBase.m" lineNumber:594 description:@"We cannot begin a passcode transition while we already have one in progress."];
}

- (void)_overrideBiometricMatchingEnabled:(uint64_t)a1 forReason:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPasscodeLockViewBase.m" lineNumber:946 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)biometricResource:(uint64_t)a1 observeEvent:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_DEBUG, "Recognizing a pending bio-unlock for passcode view (%p)", &v2, 0xCu);
}

void __59__SBUIPasscodeLockViewBase_biometricResource_observeEvent___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_DEBUG, "Pending bio-unlock expired for passcode view (%p)", &v3, 0xCu);
}

@end