@interface SBUIProudLockContainerViewController
- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)configuration;
- (BOOL)_canTransitionToState:(int64_t)state;
- (BOOL)_isBiometricLockedOut;
- (BOOL)isGuidanceTextVisible;
- (BOOL)isPortrait;
- (SBUIProudLockContainerViewController)initWithAuthenticationInformationProvider:(id)provider;
- (SBUIProudLockContainerViewControllerDelegate)delegate;
- (SBUIProudLockContainerViewControllerLockStatusProvider)authenticationInformationProvider;
- (UIView)cameraCoveredView;
- (double)proudLockLandscapeOffset;
- (id)_proudLockIconView;
- (id)orientationProvider;
- (int64_t)_actualIconState;
- (int64_t)_iconViewStateForCoachingCondition:(unint64_t)condition;
- (int64_t)orientation;
- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)condition;
- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)condition orientation:(int64_t)orientation;
- (void)__reallyAllowCameraCoveredReinstatingCoachingIfNecessary;
- (void)_allowCameraCoveredForUnlockSource:(int)source;
- (void)_allowCoachingConditionImmediately:(BOOL)immediately;
- (void)_allowLeavingCoachingCondition;
- (void)_dontCallThis_showLockIfNeededAnimated:(BOOL)animated force:(BOOL)force completion:(id)completion;
- (void)_dontCallThis_updateCoachingCondition:(unint64_t)condition animated:(BOOL)animated;
- (void)_handleBiometricEvent:(unint64_t)event;
- (void)_performForcedUpdate:(id)update;
- (void)_provideFeedbackForCoachingCondition:(unint64_t)condition;
- (void)_reallyAllowCameraCovered;
- (void)_reallyAllowCoachingConditionAnimated:(BOOL)animated;
- (void)_reallyAllowLeavingCoachingCondition;
- (void)_setCoachingCondition:(unint64_t)condition animated:(BOOL)animated force:(BOOL)force;
- (void)_setCoachingCondition:(unint64_t)condition animated:(BOOL)animated skipScanningState:(BOOL)state force:(BOOL)force;
- (void)_setCounterTransformForOrientation:(int64_t)orientation;
- (void)_setIconState:(int64_t)state animated:(BOOL)animated options:(int64_t)options force:(BOOL)force completion:(id)completion;
- (void)_setLocalTransformForOrientation:(int64_t)orientation;
- (void)_startScanningStateTimer;
- (void)_updateIconViewStateAnimated:(BOOL)animated force:(BOOL)force completion:(id)completion;
- (void)_updateLockForFaceInView;
- (void)_updateLockForMatchStarted;
- (void)_updateScanningState;
- (void)handleBiometricEvent:(unint64_t)event;
- (void)handlePhoneUnlockWithVisionError:(id)error;
- (void)handlePhoneUnlockWithWatchError:(id)error;
- (void)loadView;
- (void)overrideProudLockIconViewLayoutWithSize:(CGSize)size offset:(CGPoint)offset extent:(double)extent;
- (void)reset;
- (void)setAuthenticated:(BOOL)authenticated completion:(id)completion;
- (void)setCanLeaveCoachingCondition:(BOOL)condition;
- (void)setCanShowScanningState:(BOOL)state;
- (void)setConfiguration:(id *)configuration;
- (void)setHasSeenFaceSinceScreenOn:(BOOL)on;
- (void)setLegibilitySettings:(id)settings;
- (void)setOrientationProvider:(id)provider;
- (void)setScreenOn:(BOOL)on fromUnlockSource:(int)source;
- (void)setShouldShowScanningState:(BOOL)state;
- (void)setSuppressAlongsideCoaching:(BOOL)coaching;
- (void)setSuppressNotLooking:(BOOL)looking;
- (void)setSuppressScanningState:(BOOL)state;
- (void)setTestProudLockIconView:(id)view;
- (void)setUnlockCompletion:(id)completion;
- (void)updateForScreenWillTurnOff;
- (void)updateLockForBiometricMatchFailure;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBUIProudLockContainerViewController

- (void)_updateScanningState
{
  if (self->_canShowScanningState && self->_shouldShowScanningState && !self->_suppressScanningState && self->_configuration.bkCoachingHintsEnabled)
  {
    [(SBUIProudLockContainerViewController *)self _setIconState:5 animated:1];
  }
}

- (id)_proudLockIconView
{
  testProudLockIconView = self->_testProudLockIconView;
  if (testProudLockIconView)
  {
    view = testProudLockIconView;
  }

  else
  {
    view = [(SBUIProudLockContainerViewController *)self view];
  }

  return view;
}

- (SBUIProudLockContainerViewControllerLockStatusProvider)authenticationInformationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationInformationProvider);

  return WeakRetained;
}

- (int64_t)_actualIconState
{
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  state = [_proudLockIconView state];

  return state;
}

- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)configuration
{
  v3 = *&self[14].var4;
  *&retstr->var5 = *&self[14].var2;
  *&retstr->var7 = v3;
  *&retstr->var9 = *&self[14].var6;
  v4 = *&self[13].var12;
  *&retstr->var0 = *&self[13].var8;
  *&retstr->var3 = v4;
  return self;
}

- (SBUIProudLockContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reset
{
  v3 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "==== Reset ====", buf, 2u);
  }

  self->_unlockSource = 0;
  self->_mostRecentCoachingFeedbackCondition = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__SBUIProudLockContainerViewController_reset__block_invoke;
  v4[3] = &unk_1E789DA38;
  v4[4] = self;
  [(SBUIProudLockContainerViewController *)self _performForcedUpdate:v4];
}

uint64_t __45__SBUIProudLockContainerViewController_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanShowScanningState:0];
  [*(a1 + 32) setShouldShowScanningState:0];
  [*(a1 + 32) setCanLeaveCoachingCondition:1];
  [*(a1 + 32) _clearCoachingCondition];
  [*(a1 + 32) setCanShowCoachingCondition:0];
  [*(a1 + 32) setHasSeenFaceSinceScreenOn:0];
  [*(a1 + 32) setCanShowCameraCovered:0];
  v2 = *(a1 + 32);

  return [v2 _updateIconViewStateAnimated:0 force:1 completion:0];
}

- (BOOL)_isBiometricLockedOut
{
  authenticationInformationProvider = [(SBUIProudLockContainerViewController *)self authenticationInformationProvider];
  isBiometricLockedOut = [authenticationInformationProvider isBiometricLockedOut];

  return isBiometricLockedOut;
}

- (SBUIProudLockContainerViewController)initWithAuthenticationInformationProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SBUIProudLockContainerViewController;
  v5 = [(SBUIProudLockContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUIProudLockContainerViewController *)v5 setAuthenticationInformationProvider:providerCopy];
    [(SBUIProudLockContainerViewController *)v6 setScreenOn:1];
    [(SBUIProudLockContainerViewController *)v6 setSuppressScanningState:1];
    [(SBUIProudLockContainerViewController *)v6 setSuppressNotLooking:0];
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc_init(SBUIProudLockIconView);
  [(SBUIProudLockIconView *)v3 bs_setHitTestingDisabled:1];
  [(SBUIProudLockContainerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SBUIProudLockContainerViewController;
  [(SBUIProudLockContainerViewController *)&v7 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 100000000);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SBUIProudLockContainerViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_1E789DC30;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__SBUIProudLockContainerViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained interfaceOrientation];
    [v3 _setCounterTransformForOrientation:v2];
    [v3 _setLocalTransformForOrientation:v2];
    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBUIProudLockContainerViewController;
  [(SBUIProudLockContainerViewController *)&v4 viewWillAppear:appear];
  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:0];
  [(SBUIProudLockContainerViewController *)self _startScanningStateTimer];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v21.receiver = self;
  v21.super_class = SBUIProudLockContainerViewController;
  coordinatorCopy = coordinator;
  [(SBUIProudLockContainerViewController *)&v21 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  cameraCoveredView = [_proudLockIconView cameraCoveredView];
  superview = [cameraCoveredView superview];
  view = [(SBUIProudLockContainerViewController *)self view];

  if (superview != view)
  {
    v10Superview = [superview superview];

    superview = v10Superview;
  }

  if (cameraCoveredView)
  {
    [cameraCoveredView transform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformRotate(&v20, &v19, -1.0e-13);
  [cameraCoveredView setTransform:&v20];
  if (cameraCoveredView)
  {
    [cameraCoveredView localTransform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformRotate(&v20, &v19, 1.0e-13);
  [cameraCoveredView setLocalTransform:&v20];
  v13 = SBUIWindowForViewControllerTransition(coordinatorCopy);
  _toWindowOrientation = [v13 _toWindowOrientation];

  [(SBUIProudLockContainerViewController *)self _setLocalTransformForOrientation:_toWindowOrientation];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__SBUIProudLockContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_1E789F0E8;
  v17 = superview;
  v18 = _toWindowOrientation;
  v16[4] = self;
  v15 = superview;
  [coordinatorCopy animateAlongsideTransition:v16 completion:0];
}

uint64_t __91__SBUIProudLockContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCounterTransformForOrientation:*(a1 + 48)];
  [*(a1 + 40) setNeedsLayout];
  [*(a1 + 40) layoutIfNeeded];
  v2 = [*(a1 + 32) _effectiveCoachingConditionForCondition:*(*(a1 + 32) + 1000) orientation:*(a1 + 48)];
  v3 = *(a1 + 32);

  return [v3 _setCoachingCondition:v2 animated:1 force:1];
}

- (void)setScreenOn:(BOOL)on fromUnlockSource:(int)source
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_screenOn != on)
  {
    v4 = *&source;
    self->_screenOn = on;
    v6 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_screenOn)
      {
        v7 = @"On";
      }

      else
      {
        v7 = @"Off";
      }

      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Received: Screen  %{public}@", &v9, 0xCu);
    }

    screenOn = self->_screenOn;
    [(SBUIProudLockContainerViewController *)self reset];
    if (screenOn)
    {
      self->_unlockSource = v4;
      if (![(SBUIProudLockContainerViewController *)self _isBiometricLockedOut])
      {
        [(SBUIProudLockContainerViewController *)self _startScanningStateTimer];
        [(SBUIProudLockContainerViewController *)self _allowCameraCoveredForUnlockSource:v4];
      }

      [(SBUIProudLockContainerViewController *)self _allowCoachingConditionImmediately:0];
      [(SBUIProudLockContainerViewController *)self _setCoachingCondition:[(SBUIProudLockContainerViewController *)self _effectiveCoachingConditionForCondition:self->_desiredCoachingCondition] animated:0];
    }
  }
}

- (void)setAuthenticated:(BOOL)authenticated completion:(id)completion
{
  authenticatedCopy = authenticated;
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_authenticated == authenticatedCopy)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    self->_authenticated = authenticatedCopy;
    v8 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_authenticated)
      {
        v9 = &stru_1F1D7ED48;
      }

      else
      {
        v9 = @"Not ";
      }

      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Received:  %{public}@Authenticated", &v10, 0xCu);
    }

    [(SBUIProudLockContainerViewController *)self setShouldShowScanningState:0];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__allowScanningState object:0];
    [(SBUIProudLockContainerViewController *)self setCanShowScanningState:1];
    [(SBUIProudLockContainerViewController *)self _clearCoachingCondition];
    [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1 force:0 completion:v7];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:settingsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    v6 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "Updating Legibility Settings", v8, 2u);
    }

    _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [_proudLockIconView setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setConfiguration:(id *)configuration
{
  p_configuration = &self->_configuration;
  v6 = *&self->_configuration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
  v17[2] = *&self->_configuration.minimumDurationShowingCoaching;
  v17[3] = v6;
  v17[4] = *&self->_configuration.coachingDelaysUnlock;
  v7 = *&self->_configuration.bkCoachingHintsEnabled;
  v17[0] = *&self->_configuration.showScanningState;
  v17[1] = v7;
  v8 = *&configuration->var7;
  v16[2] = *&configuration->var5;
  v16[3] = v8;
  v16[4] = *&configuration->var9;
  v9 = *&configuration->var3;
  v16[0] = *&configuration->var0;
  v16[1] = v9;
  if (!SBUIProudLockContainerViewControllerConfigurationEqualToConfiguration(v17, v16))
  {
    suppressFaceIDDisabledState = p_configuration->suppressFaceIDDisabledState;
    substate = p_configuration->substate;
    *&p_configuration->showScanningState = *&configuration->var0;
    v12 = *&configuration->var9;
    v14 = *&configuration->var3;
    v13 = *&configuration->var5;
    *&p_configuration->durationToSuppressCameraCoveredWhenWakingWithSmartCover = *&configuration->var7;
    *&p_configuration->coachingDelaysUnlock = v12;
    *&p_configuration->bkCoachingHintsEnabled = v14;
    *&p_configuration->minimumDurationShowingCoaching = v13;
    _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [_proudLockIconView setDurationOnCameraCoveredGlyphBeforeCoaching:p_configuration->durationOnCameraCoveredGlyphBeforeCoaching];

    if (suppressFaceIDDisabledState != p_configuration->suppressFaceIDDisabledState || substate != p_configuration->substate)
    {
      [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
    }
  }
}

- (UIView)cameraCoveredView
{
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  cameraCoveredView = [_proudLockIconView cameraCoveredView];

  return cameraCoveredView;
}

- (void)updateLockForBiometricMatchFailure
{
  v3 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Received: Face ID Match Failure", buf, 2u);
  }

  objc_initWeak(buf, self);
  [(SBUIProudLockContainerViewController *)self setShouldShowScanningState:0];
  [(SBUIProudLockContainerViewController *)self setCanLeaveCoachingCondition:1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__SBUIProudLockContainerViewController_updateLockForBiometricMatchFailure__block_invoke;
  v4[3] = &unk_1E789DC58;
  objc_copyWeak(&v5, buf);
  [(SBUIProudLockContainerViewController *)self _setIconState:3 animated:1 options:0 force:0 completion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __74__SBUIProudLockContainerViewController_updateLockForBiometricMatchFailure__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained suppressNotLooking])
  {
    [WeakRetained _setIconState:1 animated:0];
  }

  else
  {
    [WeakRetained setCanShowCoachingCondition:1];
    [WeakRetained _setCoachingCondition:9 animated:1];
  }
}

- (void)updateForScreenWillTurnOff
{
  v2 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_DEFAULT, "Received: Screen Will Turn Off", v3, 2u);
  }
}

- (void)setSuppressNotLooking:(BOOL)looking
{
  if (self->_suppressNotLooking != looking)
  {
    self->_suppressNotLooking = looking;
    if (looking)
    {
      desiredIconState = self->_desiredIconState;
      if (desiredIconState == 25 || desiredIconState == 22)
      {
        [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
      }
    }
  }
}

- (void)setSuppressAlongsideCoaching:(BOOL)coaching
{
  if (self->_suppressAlongsideCoaching != coaching)
  {
    self->_suppressAlongsideCoaching = coaching;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [_proudLockIconView setAllowsAlongsideCoaching:v6 & ~self->_suppressAlongsideCoaching & 1];
  }
}

- (void)setHasSeenFaceSinceScreenOn:(BOOL)on
{
  if (self->_hasSeenFaceSinceScreenOn != on)
  {
    self->_hasSeenFaceSinceScreenOn = on;
    if (on && self->_configuration.bkCoachingHintsEnabled && [(SBUIProudLockContainerViewController *)self _isBiometricLockedOut])
    {

      [(SBUIProudLockContainerViewController *)self _setIconState:22 animated:1];
    }
  }
}

- (BOOL)isGuidanceTextVisible
{
  _actualIconState = [(SBUIProudLockContainerViewController *)self _actualIconState];

  return SBUIProudLockIconViewStateShowsCoachingText(_actualIconState);
}

- (void)handlePhoneUnlockWithWatchError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBUIProudLockContainerViewController_handlePhoneUnlockWithWatchError___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __72__SBUIProudLockContainerViewController_handlePhoneUnlockWithWatchError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v6 = +[SBUIPhoneUnlockWithWatchController sharedInstance];
  if ([v6 showRawErrorCodes])
  {
    [v6 setErrorCode:v2];
    v3 = 11;
  }

  else
  {
    v3 = 10;
  }

  v4 = +[SBUIBiometricResource sharedInstance];
  v5 = [v4 biometricLockoutState];

  if (!v5)
  {
    [*(a1 + 40) _provideFeedbackForCoachingCondition:v3];
  }
}

- (void)handlePhoneUnlockWithVisionError:(id)error
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__SBUIProudLockContainerViewController_handlePhoneUnlockWithVisionError___block_invoke;
  block[3] = &unk_1E789DA38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__SBUIProudLockContainerViewController_handlePhoneUnlockWithVisionError___block_invoke(uint64_t a1)
{
  v2 = +[SBUIBiometricResource sharedInstance];
  v3 = [v2 biometricLockoutState];

  if (!v3)
  {
    v4 = *(a1 + 32);

    [v4 _provideFeedbackForCoachingCondition:12];
  }
}

- (void)handleBiometricEvent:(unint64_t)event
{
  v5 = +[SBUIBiometricResource sharedInstance];
  if ([v5 hasBiometricAuthenticationCapabilityEnabled])
  {
    [(SBUIProudLockContainerViewController *)self _handleBiometricEvent:event];
  }
}

- (void)_handleBiometricEvent:(unint64_t)event
{
  v11 = *MEMORY[0x1E69E9840];
  switch(event)
  {
    case 0x1BuLL:
      [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
      break;
    case 0xDuLL:
      [(SBUIProudLockContainerViewController *)self _updateLockForFaceInView];
      break;
    case 0xCuLL:
      v5 = +[SBUIBiometricResource sharedInstance];
      hasPoseidonSupport = [v5 hasPoseidonSupport];

      if ((hasPoseidonSupport & 1) == 0)
      {
        [(SBUIProudLockContainerViewController *)self _updateLockForMatchStarted];
      }

      break;
  }

  if (SBUIBiometricEventIsProvidingFeedback(event))
  {
    [(SBUIProudLockContainerViewController *)self _provideFeedbackForCoachingCondition:SBUIFaceIDCoachingConditionForBiometricEvent(event)];
  }

  if (event <= 0x21 && ((1 << event) & 0x2070009E0) != 0)
  {
    v7 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSBUIBiometricEvent(event);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Received: Require Passcode -  %{public}@", &v9, 0xCu);
    }

    [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
  }
}

- (void)_provideFeedbackForCoachingCondition:(unint64_t)condition
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = DebugStringForSBUIFaceIDCoachingCondition(condition);
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Received: Coaching -  %{public}@", &v10, 0xCu);
  }

  self->_mostRecentCoachingFeedbackCondition = condition;
  v7 = [(SBUIProudLockContainerViewController *)self _effectiveCoachingConditionForCondition:condition];
  if (v7 == 4 && !self->_canShowCameraCovered)
  {
    v8 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = DebugStringForSBUIFaceIDCoachingCondition(4uLL);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't set coaching condition because it is currently suppressed -  %{public}@", &v10, 0xCu);
    }
  }

  else
  {
    [(SBUIProudLockContainerViewController *)self _setCoachingCondition:v7 animated:1];
  }
}

- (void)_updateLockForFaceInView
{
  v3 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Received: Face In View", v4, 2u);
  }

  memset(v4, 0, sizeof(v4));
  [(SBUIProudLockContainerViewController *)self configuration];
  if (LOBYTE(v4[0]) == 1 && ![(SBUIProudLockContainerViewController *)self _isBiometricLockedOut])
  {
    [(SBUIProudLockContainerViewController *)self setShouldShowScanningState:1];
  }

  [(SBUIProudLockContainerViewController *)self setHasSeenFaceSinceScreenOn:1];
}

- (void)_updateLockForMatchStarted
{
  v3 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Received: Match Started", &v6, 2u);
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  [(SBUIProudLockContainerViewController *)self configuration];
  if (v6 == 1 && BYTE1(v6) == 1 && self->_unlockSource != 10)
  {
    self->_shouldShowScanningState = 0;
    [(SBUIProudLockContainerViewController *)self setShouldShowScanningState:1];
  }

  else if (v7 == 1)
  {
    desiredIconState = self->_desiredIconState;
    v5 = desiredIconState == 1 || desiredIconState == 4;
    if (!v5 && (desiredIconState == 25 || (SBUIProudLockIconViewStateIsCoaching(desiredIconState) & 1) == 0))
    {
      [(SBUIProudLockContainerViewController *)self _setIconState:1 animated:1];
    }
  }
}

- (double)proudLockLandscapeOffset
{
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  [_proudLockIconView proudLockLandscapeOffset];
  v4 = v3;

  return v4;
}

- (void)overrideProudLockIconViewLayoutWithSize:(CGSize)size offset:(CGPoint)offset extent:(double)extent
{
  y = offset.y;
  x = offset.x;
  height = size.height;
  width = size.width;
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  [_proudLockIconView setOverrideSize:width offset:height extent:{x, y, extent}];
}

- (BOOL)isPortrait
{
  view = [(SBUIProudLockContainerViewController *)self view];
  window = [view window];
  v4 = ([window interfaceOrientation] - 1) < 2;

  return v4;
}

- (int64_t)orientation
{
  view = [(SBUIProudLockContainerViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  return interfaceOrientation;
}

- (void)setUnlockCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy && self->_unlockCompletion)
  {
    v5 = MEMORY[0x1AC58E960]();
    v6 = [completionCopy copy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__SBUIProudLockContainerViewController_setUnlockCompletion___block_invoke;
    v13[3] = &unk_1E789F110;
    v14 = v5;
    v15 = v6;
    v7 = v6;
    v8 = v5;
    v9 = MEMORY[0x1AC58E960](v13);
    unlockCompletion = self->_unlockCompletion;
    self->_unlockCompletion = v9;
  }

  else
  {
    v11 = [completionCopy copy];
    v12 = self->_unlockCompletion;
    self->_unlockCompletion = v11;
  }
}

uint64_t __60__SBUIProudLockContainerViewController_setUnlockCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_setCounterTransformForOrientation:(int64_t)orientation
{
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  cameraCoveredView = [_proudLockIconView cameraCoveredView];
  superview = [cameraCoveredView superview];
  view = [(SBUIProudLockContainerViewController *)self view];

  if (superview != view)
  {
    v6Superview = [superview superview];

    superview = v6Superview;
  }

  v9 = SBUIFaceIDCameraOrientationForDevice();
  SBUIInterfaceOrientationForFaceIDCameraOrientation(v9);
  SBTransformFromOrientationToOrientation();
  [cameraCoveredView setTransform:&v10];
  [superview setNeedsLayout];
}

- (void)_setLocalTransformForOrientation:(int64_t)orientation
{
  _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  cameraCoveredView = [_proudLockIconView cameraCoveredView];

  v6 = SBUIFaceIDCameraOrientationForDevice();
  if (orientation <= 2)
  {
    if (orientation != 1)
    {
      if (orientation != 2 || v6 != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (v6 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (orientation == 3)
  {
    if (v6 != 1)
    {
      goto LABEL_15;
    }

LABEL_13:
    v7 = 1.57079633;
    goto LABEL_14;
  }

  if (orientation == 4 && v6 == 1)
  {
LABEL_11:
    v7 = -1.57079633;
LABEL_14:
    CGAffineTransformMakeRotation(&v8, v7);
    [cameraCoveredView setLocalTransform:&v8];
  }

LABEL_15:
}

- (void)setTestProudLockIconView:(id)view
{
  viewCopy = view;
  if (self->_testProudLockIconView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_testProudLockIconView, view);
    [(SBUIProudLockIconView *)self->_testProudLockIconView setDurationOnCameraCoveredGlyphBeforeCoaching:self->_configuration.durationOnCameraCoveredGlyphBeforeCoaching];
    viewCopy = v6;
  }
}

- (id)orientationProvider
{
  if (self->_orientationProvider)
  {
    self = self->_orientationProvider;
  }

  return self;
}

- (void)setOrientationProvider:(id)provider
{
  providerCopy = provider;
  if (self->_orientationProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_orientationProvider, provider);
    providerCopy = v6;
  }
}

- (void)_updateIconViewStateAnimated:(BOOL)animated force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  animatedCopy = animated;
  completionCopy = completion;
  desiredCoachingCondition = self->_desiredCoachingCondition;
  if (!SBUIFaceIDCoachingConditionShouldBeVisible(desiredCoachingCondition) || desiredCoachingCondition == 8 && self->_configuration.suppressFaceIDDisabledState)
  {
    [(SBUIProudLockContainerViewController *)self _dontCallThis_showLockIfNeededAnimated:animatedCopy force:forceCopy completion:completionCopy];
  }

  else
  {
    [(SBUIProudLockContainerViewController *)self _dontCallThis_updateCoachingCondition:desiredCoachingCondition animated:animatedCopy];
    v9 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_8;
    }

    (*(completionCopy + 2))(completionCopy);
  }

  v9 = completionCopy;
LABEL_8:
}

- (void)_dontCallThis_showLockIfNeededAnimated:(BOOL)animated force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  animatedCopy = animated;
  completionCopy = completion;
  isAuthenticated = [(SBUIProudLockContainerViewController *)self isAuthenticated];
  authenticationInformationProvider = [(SBUIProudLockContainerViewController *)self authenticationInformationProvider];
  if ([authenticationInformationProvider hasPasscodeSet])
  {
    if (isAuthenticated)
    {
      [(SBUIProudLockContainerViewController *)self setCanShowCoachingCondition:0];
      v11 = 2;
    }

    else if (self->_desiredIconState == 3)
    {
      v11 = 3;
    }

    else if (self->_hasSeenFaceSinceScreenOn && self->_configuration.bkCoachingHintsEnabled && !self->_configuration.suppressFaceIDDisabledState && [(SBUIProudLockContainerViewController *)self _isBiometricLockedOut])
    {
      v11 = 22;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__SBUIProudLockContainerViewController__dontCallThis_showLockIfNeededAnimated_force_completion___block_invoke;
  v13[3] = &unk_1E789DBE0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SBUIProudLockContainerViewController *)self _setIconState:v11 animated:animatedCopy options:0 force:forceCopy completion:v13];
}

uint64_t __96__SBUIProudLockContainerViewController__dontCallThis_showLockIfNeededAnimated_force_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_dontCallThis_updateCoachingCondition:(unint64_t)condition animated:(BOOL)animated
{
  if (self->_canShowCoachingCondition && SBUIFaceIDCoachingConditionShouldBeVisible(condition))
  {
    if (condition == 8)
    {
      if (self->_configuration.suppressFaceIDDisabledState)
      {
        return;
      }
    }

    else if (condition == 4 && !self->_canShowCameraCovered)
    {
      return;
    }

    delegate = [(SBUIProudLockContainerViewController *)self delegate];
    v7 = [delegate proudLockContainerViewControllerIsCoverSheetVisible:self];

    if ((condition & 0xFFFFFFFFFFFFFFFELL) != 0xA || v7)
    {
      v8 = [(SBUIProudLockContainerViewController *)self _iconViewStateForCoachingCondition:condition];

      [(SBUIProudLockContainerViewController *)self _setIconState:v8 animated:1 options:0 force:0 completion:&__block_literal_global_23];
    }
  }
}

- (void)_setCoachingCondition:(unint64_t)condition animated:(BOOL)animated force:(BOOL)force
{
  forceCopy = force;
  animatedCopy = animated;
  [(SBUIProudLockContainerViewController *)self configuration:0];
  [(SBUIProudLockContainerViewController *)self _setCoachingCondition:condition animated:animatedCopy skipScanningState:(v9 & 1) == 0 force:forceCopy];
}

- (void)_setCoachingCondition:(unint64_t)condition animated:(BOOL)animated skipScanningState:(BOOL)state force:(BOOL)force
{
  desiredCoachingCondition = self->_desiredCoachingCondition;
  if (desiredCoachingCondition == condition && !force)
  {
    return;
  }

  stateCopy = state;
  animatedCopy = animated;
  if (SBUIFaceIDCoachingConditionShouldBeVisible(desiredCoachingCondition) && SBUIFaceIDCoachingConditionShouldBeVisible(condition))
  {
    [(SBUIProudLockContainerViewController *)self _setCoachingCondition:1 animated:1];
  }

  self->_desiredCoachingCondition = condition;
  ShouldBeVisible = SBUIFaceIDCoachingConditionShouldBeVisible(condition);
  if (ShouldBeVisible)
  {
    v17 = SBUICoachingTextForSBUIFaceIDCoachingCondition(condition);
  }

  else
  {
    v17 = 0;
  }

  delegate = [(SBUIProudLockContainerViewController *)self delegate];
  [delegate proudLockContainerViewController:self guidanceTextVisibilityDidChange:v17 animated:animatedCopy];

  if (!(animatedCopy & ~stateCopy) && ((ShouldBeVisible ^ 1) & 1) == 0)
  {
    selfCopy2 = self;
    v15 = 1;
LABEL_21:
    [(SBUIProudLockContainerViewController *)selfCopy2 _updateIconViewStateAnimated:v15];
    goto LABEL_22;
  }

  selfCopy2 = self;
  if (self->_desiredIconState == 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = ShouldBeVisible;
  }

  if ((v16 & 1) == 0)
  {
    v15 = animatedCopy;
    goto LABEL_21;
  }

  [(SBUIProudLockContainerViewController *)self _setIconState:5 animated:animatedCopy];
LABEL_22:
}

- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)condition
{
  view = [(SBUIProudLockContainerViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  return [(SBUIProudLockContainerViewController *)self _effectiveCoachingConditionForCondition:condition orientation:interfaceOrientation];
}

- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)condition orientation:(int64_t)orientation
{
  v7 = +[SBUIBiometricResource sharedInstance];
  if (![v7 hasBiometricAuthenticationCapabilityEnabled] || !objc_msgSend(v7, "isPearlDetectEnabled"))
  {
    condition = 1;
    goto LABEL_25;
  }

  v8 = SBUIFaceIDCameraOrientationForDevice();
  if (v8 == 1)
  {
    v9 = 2;
  }

  else
  {
    if (v8 != 2)
    {
      SBUIFaceIDCoachingConditionShouldBeVisible(condition);
      goto LABEL_23;
    }

    v9 = 4;
  }

  if ((SBUIFaceIDCoachingConditionShouldBeVisible(condition) & 1) != 0 || v9 != orientation)
  {
LABEL_23:
    if (condition == 13)
    {
      condition = 1;
    }

    goto LABEL_25;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      isAuthenticated = [(SBUIProudLockContainerViewController *)self isAuthenticated];
      if (condition == 13)
      {
        condition = 1;
      }

      if (isAuthenticated)
      {
        goto LABEL_25;
      }

LABEL_21:
      condition = 13;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {

    goto LABEL_23;
  }

  isAuthenticated2 = [(SBUIProudLockContainerViewController *)self isAuthenticated];

  if (condition == 13)
  {
    condition = 1;
  }

  if (!isAuthenticated2)
  {
    goto LABEL_21;
  }

LABEL_25:

  return condition;
}

- (void)_setIconState:(int64_t)state animated:(BOOL)animated options:(int64_t)options force:(BOOL)force completion:(id)completion
{
  animatedCopy = animated;
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (force)
  {
    goto LABEL_4;
  }

  if (![(SBUIProudLockContainerViewController *)self _canTransitionToState:state])
  {
    v28 = SBLogBiometricResource();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = NSStringForSBUIProudLockIconViewState([(SBUIProudLockContainerViewController *)self _actualIconState]);
      v30 = NSStringForSBUIProudLockIconViewState(state);
      *buf = 138543618;
      v39 = v29;
      v40 = 2114;
      v41 = v30;
      _os_log_impl(&dword_1A9A79000, v28, OS_LOG_TYPE_DEFAULT, "Ignoring request to go from SBUIProudLockIconViewState %{public}@ to %{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    goto LABEL_27;
  }

  if (self->_forceCount)
  {
LABEL_4:
    options |= 2uLL;
  }

  _actualIconState = [(SBUIProudLockContainerViewController *)self _actualIconState];
  IsCoaching = SBUIProudLockIconViewStateIsCoaching(_actualIconState);
  v15 = SBLogBiometricResource();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    desiredIconState = self->_desiredIconState;
    *buf = 134218496;
    v39 = _actualIconState;
    v40 = 2048;
    v41 = desiredIconState;
    v42 = 2048;
    stateCopy = state;
    _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_INFO, "actualIconState: %lu - _desiredIconState: %lu - toIconState: %lu", buf, 0x20u);
  }

  self->_desiredIconState = state;
  v17 = SBUIProudLockIconViewStateIsCoaching(state);
  v33 = (SBUIProudLockIconViewStateIsCoaching(self->_desiredIconState) ^ 1) & IsCoaching;
  if (!IsCoaching || ((self->_desiredIconState - 1) >= 3 ? (v18 = v17 == 0) : (v18 = 0), v18 || self->_canLeaveCoachingCondition))
  {
    v19 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = NSStringForSBUIProudLockIconViewState(self->_desiredIconState);
      *buf = 138543362;
      v39 = v20;
      _os_log_impl(&dword_1A9A79000, v19, OS_LOG_TYPE_DEFAULT, "=> Transitioning to state: %{public}@", buf, 0xCu);
    }

    v21 = completionCopy;

    v22 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(self->_desiredIconState);
    v23 = SBUICoachingTextForSBUIFaceIDCoachingCondition(v22);
    delegate = [(SBUIProudLockContainerViewController *)self delegate];
    transientSubtitleText = [delegate transientSubtitleText];

    v26 = animatedCopy;
    if (transientSubtitleText)
    {
      v27 = [transientSubtitleText isEqualToString:v23] ^ 1;
    }

    else
    {
      v27 = 1;
    }

    _proudLockIconView = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    v32 = self->_desiredIconState;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __88__SBUIProudLockContainerViewController__setIconState_animated_options_force_completion___block_invoke;
    v34[3] = &unk_1E789F138;
    v34[4] = self;
    v35 = v21;
    v36 = v17;
    v37 = v33;
    [_proudLockIconView setState:v32 animated:v26 updateText:v27 options:options completion:v34];

    if (v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = completionCopy;
    [(SBUIProudLockContainerViewController *)self setUnlockCompletion:completionCopy];
    if (v17)
    {
LABEL_23:
      [(SBUIProudLockContainerViewController *)self setCanLeaveCoachingCondition:0];
      completionCopy = v21;
      goto LABEL_27;
    }
  }

  completionCopy = v21;
  if (v33)
  {
    [(SBUIProudLockContainerViewController *)self setCanShowCoachingCondition:0];
  }

LABEL_27:
}

uint64_t __88__SBUIProudLockContainerViewController__setIconState_animated_options_force_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v5 = *(a1 + 32);
  if (*(v5 + 992) == 2)
  {
    result = *(v5 + 1080);
    if (result)
    {
      (*(result + 16))(result, a2);
      result = [*(a1 + 32) setUnlockCompletion:0];
    }
  }

  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);

    return [v6 _allowLeavingCoachingCondition];
  }

  else if (*(a1 + 49) == 1)
  {
    v7 = *(a1 + 32);

    return [v7 _allowCoachingConditionImmediately:0];
  }

  return result;
}

- (BOOL)_canTransitionToState:(int64_t)state
{
  if (!self->_screenOn)
  {
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  _actualIconState = [(SBUIProudLockContainerViewController *)self _actualIconState];
  if (_actualIconState == state)
  {
    goto LABEL_3;
  }

  v7 = _actualIconState;
  if (_actualIconState != 22 || (LOBYTE(v6) = 0, state == 1) && self->_configuration.suppressFaceIDDisabledState)
  {
    IsCoaching = SBUIProudLockIconViewStateIsCoaching(_actualIconState);
    v9 = SBUIProudLockIconViewStateIsCoaching(state);
    if (SBUIProudLockIconViewStateIsUpsideDown(v7))
    {
      IsUpsideDown = 1;
    }

    else
    {
      IsUpsideDown = SBUIProudLockIconViewStateIsUpsideDown(state);
    }

    IsCameraCovered = SBUIProudLockIconViewStateIsCameraCovered(v7);
    if (IsCameraCovered)
    {
      LOBYTE(IsCameraCovered) = SBUIProudLockIconViewStateIsCameraCovered(state);
    }

    if ((IsUpsideDown & 1) != 0 || state <= 0x16 && ((1 << state) & 0x40000E) != 0 || IsCameraCovered & 1 | ((IsCoaching & 1) == 0) | v9 & 1)
    {
      if (v7 != 5)
      {
        if (v7 == 2)
        {
          if (state < 0x17)
          {
            v6 = 0x400003u >> state;
            return v6 & 1;
          }

          goto LABEL_3;
        }

LABEL_24:
        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if ((state - 2) < 3 || state == 1 && [(SBUIProudLockContainerViewController *)self _isBiometricLockedOut]|| SBUIProudLockIconViewStateIsCoaching(state))
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)setCanShowScanningState:(BOOL)state
{
  if (self->_canShowScanningState != state)
  {
    self->_canShowScanningState = state;
    [(SBUIProudLockContainerViewController *)self _updateScanningState];
  }
}

- (void)setShouldShowScanningState:(BOOL)state
{
  if (self->_shouldShowScanningState != state)
  {
    self->_shouldShowScanningState = state;
    [(SBUIProudLockContainerViewController *)self _updateScanningState];
  }
}

- (void)setSuppressScanningState:(BOOL)state
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_suppressScanningState != state)
  {
    self->_suppressScanningState = state;
    v4 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      suppressScanningState = self->_suppressScanningState;
      v6[0] = 67109120;
      v6[1] = suppressScanningState;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Received: Suppress Scanning State %{BOOL}d", v6, 8u);
    }

    [(SBUIProudLockContainerViewController *)self _updateScanningState];
  }
}

- (void)_startScanningStateTimer
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__allowScanningState object:0];
  [(SBUIProudLockContainerViewController *)self configuration];
  [(SBUIProudLockContainerViewController *)self performSelector:sel__allowScanningState withObject:0 afterDelay:v3];
}

- (void)_allowCoachingConditionImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__allowCoachingCondition object:0];
  if ([(SBUIProudLockContainerViewController *)self canShowCoachingCondition])
  {
    v5 = !immediatelyCopy;
    selfCopy2 = self;
LABEL_5:

    [(SBUIProudLockContainerViewController *)selfCopy2 _reallyAllowCoachingConditionAnimated:v5];
    return;
  }

  if (immediatelyCopy)
  {
    selfCopy2 = self;
    v5 = 0;
    goto LABEL_5;
  }

  minimumDurationBetweenLeavingCoachingAndCoaching = self->_configuration.minimumDurationBetweenLeavingCoachingAndCoaching;

  [(SBUIProudLockContainerViewController *)self performSelector:sel__allowCoachingCondition withObject:0 afterDelay:minimumDurationBetweenLeavingCoachingAndCoaching];
}

- (void)_reallyAllowCoachingConditionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBUIProudLockContainerViewController *)self setCanShowCoachingCondition:1];

  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:animatedCopy];
}

- (void)_allowCameraCoveredForUnlockSource:(int)source
{
  if (source == 3)
  {
    v4 = 0;
    v5 = 48;
    goto LABEL_5;
  }

  if (source == 41)
  {
    v4 = SBUIFaceIDCameraOrientationForDevice() != 2;
    v5 = 56;
LABEL_5:
    v6 = *(&self->_configuration.showScanningState + v5);
    goto LABEL_7;
  }

  v4 = 1;
  v6 = 0.0;
LABEL_7:
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel___reallyAllowCameraCoveredReinstatingCoachingIfNecessary object:0];
  if (![(SBUIProudLockContainerViewController *)self canShowCameraCovered])
  {
    if (v4)
    {

      [(SBUIProudLockContainerViewController *)self _reallyAllowCameraCovered];
    }

    else
    {

      [(SBUIProudLockContainerViewController *)self performSelector:sel___reallyAllowCameraCoveredReinstatingCoachingIfNecessary withObject:0 afterDelay:v6];
    }
  }
}

- (void)_reallyAllowCameraCovered
{
  [(SBUIProudLockContainerViewController *)self setCanShowCameraCovered:1];

  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
}

- (void)__reallyAllowCameraCoveredReinstatingCoachingIfNecessary
{
  [(SBUIProudLockContainerViewController *)self _reallyAllowCameraCovered];
  if (self->_mostRecentCoachingFeedbackCondition == 4)
  {

    [(SBUIProudLockContainerViewController *)self _setCoachingCondition:4 animated:1];
  }
}

- (void)_allowLeavingCoachingCondition
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyAllowLeavingCoachingCondition object:0];
  minimumDurationShowingCoaching = self->_configuration.minimumDurationShowingCoaching;

  [(SBUIProudLockContainerViewController *)self performSelector:sel__reallyAllowLeavingCoachingCondition withObject:0 afterDelay:minimumDurationShowingCoaching];
}

- (void)_reallyAllowLeavingCoachingCondition
{
  [(SBUIProudLockContainerViewController *)self setCanLeaveCoachingCondition:1];

  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
}

- (void)setCanLeaveCoachingCondition:(BOOL)condition
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_canLeaveCoachingCondition != condition)
  {
    self->_canLeaveCoachingCondition = condition;
    if (condition && (SBUIProudLockIconViewStateIsCoaching(self->_desiredIconState) & 1) == 0)
    {
      v4 = SBLogBiometricResource();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        desiredIconState = self->_desiredIconState;
        v8[0] = 67109120;
        v8[1] = desiredIconState;
        _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "Desired icon state: %d isn't coaching, leaving coaching", v8, 8u);
      }

      desiredCoachingCondition = self->_desiredCoachingCondition;
      v7 = [(SBUIProudLockContainerViewController *)self _isShowingCoachingCondition:desiredCoachingCondition];
      [(SBUIProudLockContainerViewController *)self _clearCoachingCondition];
      if (!v7)
      {
        [(SBUIProudLockContainerViewController *)self _setCoachingCondition:desiredCoachingCondition animated:1];
      }
    }
  }
}

- (int64_t)_iconViewStateForCoachingCondition:(unint64_t)condition
{
  [(SBUIProudLockContainerViewController *)self configuration];
  v5 = v9;
  orientationProvider = [(SBUIProudLockContainerViewController *)self orientationProvider];
  orientation = [orientationProvider orientation];

  return SBUIProudLockIconViewStateForSBUIFaceIDCoachingCondition(condition, orientation, v5);
}

- (void)_performForcedUpdate:(id)update
{
  forceCount = self->_forceCount;
  self->_forceCount = forceCount + 1;
  if (update)
  {
    (*(update + 2))(update, a2);
    forceCount = self->_forceCount - 1;
  }

  self->_forceCount = forceCount;
}

@end