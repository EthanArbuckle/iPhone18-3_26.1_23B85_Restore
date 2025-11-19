@interface SBUIProudLockContainerViewController
- ($20D0CF0D87A8AD096D8C820DF2D4BB3C)configuration;
- (BOOL)_canTransitionToState:(int64_t)a3;
- (BOOL)_isBiometricLockedOut;
- (BOOL)isGuidanceTextVisible;
- (BOOL)isPortrait;
- (SBUIProudLockContainerViewController)initWithAuthenticationInformationProvider:(id)a3;
- (SBUIProudLockContainerViewControllerDelegate)delegate;
- (SBUIProudLockContainerViewControllerLockStatusProvider)authenticationInformationProvider;
- (UIView)cameraCoveredView;
- (double)proudLockLandscapeOffset;
- (id)_proudLockIconView;
- (id)orientationProvider;
- (int64_t)_actualIconState;
- (int64_t)_iconViewStateForCoachingCondition:(unint64_t)a3;
- (int64_t)orientation;
- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)a3;
- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)a3 orientation:(int64_t)a4;
- (void)__reallyAllowCameraCoveredReinstatingCoachingIfNecessary;
- (void)_allowCameraCoveredForUnlockSource:(int)a3;
- (void)_allowCoachingConditionImmediately:(BOOL)a3;
- (void)_allowLeavingCoachingCondition;
- (void)_dontCallThis_showLockIfNeededAnimated:(BOOL)a3 force:(BOOL)a4 completion:(id)a5;
- (void)_dontCallThis_updateCoachingCondition:(unint64_t)a3 animated:(BOOL)a4;
- (void)_handleBiometricEvent:(unint64_t)a3;
- (void)_performForcedUpdate:(id)a3;
- (void)_provideFeedbackForCoachingCondition:(unint64_t)a3;
- (void)_reallyAllowCameraCovered;
- (void)_reallyAllowCoachingConditionAnimated:(BOOL)a3;
- (void)_reallyAllowLeavingCoachingCondition;
- (void)_setCoachingCondition:(unint64_t)a3 animated:(BOOL)a4 force:(BOOL)a5;
- (void)_setCoachingCondition:(unint64_t)a3 animated:(BOOL)a4 skipScanningState:(BOOL)a5 force:(BOOL)a6;
- (void)_setCounterTransformForOrientation:(int64_t)a3;
- (void)_setIconState:(int64_t)a3 animated:(BOOL)a4 options:(int64_t)a5 force:(BOOL)a6 completion:(id)a7;
- (void)_setLocalTransformForOrientation:(int64_t)a3;
- (void)_startScanningStateTimer;
- (void)_updateIconViewStateAnimated:(BOOL)a3 force:(BOOL)a4 completion:(id)a5;
- (void)_updateLockForFaceInView;
- (void)_updateLockForMatchStarted;
- (void)_updateScanningState;
- (void)handleBiometricEvent:(unint64_t)a3;
- (void)handlePhoneUnlockWithVisionError:(id)a3;
- (void)handlePhoneUnlockWithWatchError:(id)a3;
- (void)loadView;
- (void)overrideProudLockIconViewLayoutWithSize:(CGSize)a3 offset:(CGPoint)a4 extent:(double)a5;
- (void)reset;
- (void)setAuthenticated:(BOOL)a3 completion:(id)a4;
- (void)setCanLeaveCoachingCondition:(BOOL)a3;
- (void)setCanShowScanningState:(BOOL)a3;
- (void)setConfiguration:(id *)a3;
- (void)setHasSeenFaceSinceScreenOn:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setOrientationProvider:(id)a3;
- (void)setScreenOn:(BOOL)a3 fromUnlockSource:(int)a4;
- (void)setShouldShowScanningState:(BOOL)a3;
- (void)setSuppressAlongsideCoaching:(BOOL)a3;
- (void)setSuppressNotLooking:(BOOL)a3;
- (void)setSuppressScanningState:(BOOL)a3;
- (void)setTestProudLockIconView:(id)a3;
- (void)setUnlockCompletion:(id)a3;
- (void)updateForScreenWillTurnOff;
- (void)updateLockForBiometricMatchFailure;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v3 = testProudLockIconView;
  }

  else
  {
    v3 = [(SBUIProudLockContainerViewController *)self view];
  }

  return v3;
}

- (SBUIProudLockContainerViewControllerLockStatusProvider)authenticationInformationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_authenticationInformationProvider);

  return WeakRetained;
}

- (int64_t)_actualIconState
{
  v2 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  v3 = [v2 state];

  return v3;
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
  v2 = [(SBUIProudLockContainerViewController *)self authenticationInformationProvider];
  v3 = [v2 isBiometricLockedOut];

  return v3;
}

- (SBUIProudLockContainerViewController)initWithAuthenticationInformationProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBUIProudLockContainerViewController;
  v5 = [(SBUIProudLockContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SBUIProudLockContainerViewController *)v5 setAuthenticationInformationProvider:v4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIProudLockContainerViewController;
  [(SBUIProudLockContainerViewController *)&v4 viewWillAppear:a3];
  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:0];
  [(SBUIProudLockContainerViewController *)self _startScanningStateTimer];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v21.receiver = self;
  v21.super_class = SBUIProudLockContainerViewController;
  v7 = a4;
  [(SBUIProudLockContainerViewController *)&v21 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  v9 = [v8 cameraCoveredView];
  v10 = [v9 superview];
  v11 = [(SBUIProudLockContainerViewController *)self view];

  if (v10 != v11)
  {
    v12 = [v10 superview];

    v10 = v12;
  }

  if (v9)
  {
    [v9 transform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformRotate(&v20, &v19, -1.0e-13);
  [v9 setTransform:&v20];
  if (v9)
  {
    [v9 localTransform];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformRotate(&v20, &v19, 1.0e-13);
  [v9 setLocalTransform:&v20];
  v13 = SBUIWindowForViewControllerTransition(v7);
  v14 = [v13 _toWindowOrientation];

  [(SBUIProudLockContainerViewController *)self _setLocalTransformForOrientation:v14];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__SBUIProudLockContainerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v16[3] = &unk_1E789F0E8;
  v17 = v10;
  v18 = v14;
  v16[4] = self;
  v15 = v10;
  [v7 animateAlongsideTransition:v16 completion:0];
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

- (void)setScreenOn:(BOOL)a3 fromUnlockSource:(int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_screenOn != a3)
  {
    v4 = *&a4;
    self->_screenOn = a3;
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

- (void)setAuthenticated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (self->_authenticated == v4)
  {
    if (v6)
    {
      (*(v6 + 2))(v6);
    }
  }

  else
  {
    self->_authenticated = v4;
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

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v6 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "Updating Legibility Settings", v8, 2u);
    }

    v7 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [v7 setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setConfiguration:(id *)a3
{
  p_configuration = &self->_configuration;
  v6 = *&self->_configuration.durationToSuppressCameraCoveredWhenWakingWithSmartCover;
  v17[2] = *&self->_configuration.minimumDurationShowingCoaching;
  v17[3] = v6;
  v17[4] = *&self->_configuration.coachingDelaysUnlock;
  v7 = *&self->_configuration.bkCoachingHintsEnabled;
  v17[0] = *&self->_configuration.showScanningState;
  v17[1] = v7;
  v8 = *&a3->var7;
  v16[2] = *&a3->var5;
  v16[3] = v8;
  v16[4] = *&a3->var9;
  v9 = *&a3->var3;
  v16[0] = *&a3->var0;
  v16[1] = v9;
  if (!SBUIProudLockContainerViewControllerConfigurationEqualToConfiguration(v17, v16))
  {
    suppressFaceIDDisabledState = p_configuration->suppressFaceIDDisabledState;
    substate = p_configuration->substate;
    *&p_configuration->showScanningState = *&a3->var0;
    v12 = *&a3->var9;
    v14 = *&a3->var3;
    v13 = *&a3->var5;
    *&p_configuration->durationToSuppressCameraCoveredWhenWakingWithSmartCover = *&a3->var7;
    *&p_configuration->coachingDelaysUnlock = v12;
    *&p_configuration->bkCoachingHintsEnabled = v14;
    *&p_configuration->minimumDurationShowingCoaching = v13;
    v15 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [v15 setDurationOnCameraCoveredGlyphBeforeCoaching:p_configuration->durationOnCameraCoveredGlyphBeforeCoaching];

    if (suppressFaceIDDisabledState != p_configuration->suppressFaceIDDisabledState || substate != p_configuration->substate)
    {
      [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
    }
  }
}

- (UIView)cameraCoveredView
{
  v2 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  v3 = [v2 cameraCoveredView];

  return v3;
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

- (void)setSuppressNotLooking:(BOOL)a3
{
  if (self->_suppressNotLooking != a3)
  {
    self->_suppressNotLooking = a3;
    if (a3)
    {
      desiredIconState = self->_desiredIconState;
      if (desiredIconState == 25 || desiredIconState == 22)
      {
        [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
      }
    }
  }
}

- (void)setSuppressAlongsideCoaching:(BOOL)a3
{
  if (self->_suppressAlongsideCoaching != a3)
  {
    self->_suppressAlongsideCoaching = a3;
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    v7 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    [v7 setAllowsAlongsideCoaching:v6 & ~self->_suppressAlongsideCoaching & 1];
  }
}

- (void)setHasSeenFaceSinceScreenOn:(BOOL)a3
{
  if (self->_hasSeenFaceSinceScreenOn != a3)
  {
    self->_hasSeenFaceSinceScreenOn = a3;
    if (a3 && self->_configuration.bkCoachingHintsEnabled && [(SBUIProudLockContainerViewController *)self _isBiometricLockedOut])
    {

      [(SBUIProudLockContainerViewController *)self _setIconState:22 animated:1];
    }
  }
}

- (BOOL)isGuidanceTextVisible
{
  v2 = [(SBUIProudLockContainerViewController *)self _actualIconState];

  return SBUIProudLockIconViewStateShowsCoachingText(v2);
}

- (void)handlePhoneUnlockWithWatchError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SBUIProudLockContainerViewController_handlePhoneUnlockWithWatchError___block_invoke;
  v6[3] = &unk_1E789DD98;
  v7 = v4;
  v8 = self;
  v5 = v4;
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

- (void)handlePhoneUnlockWithVisionError:(id)a3
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

- (void)handleBiometricEvent:(unint64_t)a3
{
  v5 = +[SBUIBiometricResource sharedInstance];
  if ([v5 hasBiometricAuthenticationCapabilityEnabled])
  {
    [(SBUIProudLockContainerViewController *)self _handleBiometricEvent:a3];
  }
}

- (void)_handleBiometricEvent:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0x1BuLL:
      [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
      break;
    case 0xDuLL:
      [(SBUIProudLockContainerViewController *)self _updateLockForFaceInView];
      break;
    case 0xCuLL:
      v5 = +[SBUIBiometricResource sharedInstance];
      v6 = [v5 hasPoseidonSupport];

      if ((v6 & 1) == 0)
      {
        [(SBUIProudLockContainerViewController *)self _updateLockForMatchStarted];
      }

      break;
  }

  if (SBUIBiometricEventIsProvidingFeedback(a3))
  {
    [(SBUIProudLockContainerViewController *)self _provideFeedbackForCoachingCondition:SBUIFaceIDCoachingConditionForBiometricEvent(a3)];
  }

  if (a3 <= 0x21 && ((1 << a3) & 0x2070009E0) != 0)
  {
    v7 = SBLogLockScreenBiometricFaceIDCoaching();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSBUIBiometricEvent(a3);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Received: Require Passcode -  %{public}@", &v9, 0xCu);
    }

    [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:1];
  }
}

- (void)_provideFeedbackForCoachingCondition:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = SBLogLockScreenBiometricFaceIDCoaching();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = DebugStringForSBUIFaceIDCoachingCondition(a3);
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Received: Coaching -  %{public}@", &v10, 0xCu);
  }

  self->_mostRecentCoachingFeedbackCondition = a3;
  v7 = [(SBUIProudLockContainerViewController *)self _effectiveCoachingConditionForCondition:a3];
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
  v2 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  [v2 proudLockLandscapeOffset];
  v4 = v3;

  return v4;
}

- (void)overrideProudLockIconViewLayoutWithSize:(CGSize)a3 offset:(CGPoint)a4 extent:(double)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v10 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  [v10 setOverrideSize:width offset:height extent:{x, y, a5}];
}

- (BOOL)isPortrait
{
  v2 = [(SBUIProudLockContainerViewController *)self view];
  v3 = [v2 window];
  v4 = ([v3 interfaceOrientation] - 1) < 2;

  return v4;
}

- (int64_t)orientation
{
  v2 = [(SBUIProudLockContainerViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 interfaceOrientation];

  return v4;
}

- (void)setUnlockCompletion:(id)a3
{
  v4 = a3;
  if (v4 && self->_unlockCompletion)
  {
    v5 = MEMORY[0x1AC58E960]();
    v6 = [v4 copy];
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
    v11 = [v4 copy];
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

- (void)_setCounterTransformForOrientation:(int64_t)a3
{
  v4 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  v5 = [v4 cameraCoveredView];
  v6 = [v5 superview];
  v7 = [(SBUIProudLockContainerViewController *)self view];

  if (v6 != v7)
  {
    v8 = [v6 superview];

    v6 = v8;
  }

  v9 = SBUIFaceIDCameraOrientationForDevice();
  SBUIInterfaceOrientationForFaceIDCameraOrientation(v9);
  SBTransformFromOrientationToOrientation();
  [v5 setTransform:&v10];
  [v6 setNeedsLayout];
}

- (void)_setLocalTransformForOrientation:(int64_t)a3
{
  v4 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
  v5 = [v4 cameraCoveredView];

  v6 = SBUIFaceIDCameraOrientationForDevice();
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2 || v6 != 2)
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

  if (a3 == 3)
  {
    if (v6 != 1)
    {
      goto LABEL_15;
    }

LABEL_13:
    v7 = 1.57079633;
    goto LABEL_14;
  }

  if (a3 == 4 && v6 == 1)
  {
LABEL_11:
    v7 = -1.57079633;
LABEL_14:
    CGAffineTransformMakeRotation(&v8, v7);
    [v5 setLocalTransform:&v8];
  }

LABEL_15:
}

- (void)setTestProudLockIconView:(id)a3
{
  v5 = a3;
  if (self->_testProudLockIconView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_testProudLockIconView, a3);
    [(SBUIProudLockIconView *)self->_testProudLockIconView setDurationOnCameraCoveredGlyphBeforeCoaching:self->_configuration.durationOnCameraCoveredGlyphBeforeCoaching];
    v5 = v6;
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

- (void)setOrientationProvider:(id)a3
{
  v5 = a3;
  if (self->_orientationProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_orientationProvider, a3);
    v5 = v6;
  }
}

- (void)_updateIconViewStateAnimated:(BOOL)a3 force:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v10 = a5;
  desiredCoachingCondition = self->_desiredCoachingCondition;
  if (!SBUIFaceIDCoachingConditionShouldBeVisible(desiredCoachingCondition) || desiredCoachingCondition == 8 && self->_configuration.suppressFaceIDDisabledState)
  {
    [(SBUIProudLockContainerViewController *)self _dontCallThis_showLockIfNeededAnimated:v6 force:v5 completion:v10];
  }

  else
  {
    [(SBUIProudLockContainerViewController *)self _dontCallThis_updateCoachingCondition:desiredCoachingCondition animated:v6];
    v9 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    (*(v10 + 2))(v10);
  }

  v9 = v10;
LABEL_8:
}

- (void)_dontCallThis_showLockIfNeededAnimated:(BOOL)a3 force:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(SBUIProudLockContainerViewController *)self isAuthenticated];
  v10 = [(SBUIProudLockContainerViewController *)self authenticationInformationProvider];
  if ([v10 hasPasscodeSet])
  {
    if (v9)
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
  v14 = v8;
  v12 = v8;
  [(SBUIProudLockContainerViewController *)self _setIconState:v11 animated:v6 options:0 force:v5 completion:v13];
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

- (void)_dontCallThis_updateCoachingCondition:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_canShowCoachingCondition && SBUIFaceIDCoachingConditionShouldBeVisible(a3))
  {
    if (a3 == 8)
    {
      if (self->_configuration.suppressFaceIDDisabledState)
      {
        return;
      }
    }

    else if (a3 == 4 && !self->_canShowCameraCovered)
    {
      return;
    }

    v6 = [(SBUIProudLockContainerViewController *)self delegate];
    v7 = [v6 proudLockContainerViewControllerIsCoverSheetVisible:self];

    if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 0xA || v7)
    {
      v8 = [(SBUIProudLockContainerViewController *)self _iconViewStateForCoachingCondition:a3];

      [(SBUIProudLockContainerViewController *)self _setIconState:v8 animated:1 options:0 force:0 completion:&__block_literal_global_23];
    }
  }
}

- (void)_setCoachingCondition:(unint64_t)a3 animated:(BOOL)a4 force:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  [(SBUIProudLockContainerViewController *)self configuration:0];
  [(SBUIProudLockContainerViewController *)self _setCoachingCondition:a3 animated:v6 skipScanningState:(v9 & 1) == 0 force:v5];
}

- (void)_setCoachingCondition:(unint64_t)a3 animated:(BOOL)a4 skipScanningState:(BOOL)a5 force:(BOOL)a6
{
  desiredCoachingCondition = self->_desiredCoachingCondition;
  if (desiredCoachingCondition == a3 && !a6)
  {
    return;
  }

  v9 = a5;
  v10 = a4;
  if (SBUIFaceIDCoachingConditionShouldBeVisible(desiredCoachingCondition) && SBUIFaceIDCoachingConditionShouldBeVisible(a3))
  {
    [(SBUIProudLockContainerViewController *)self _setCoachingCondition:1 animated:1];
  }

  self->_desiredCoachingCondition = a3;
  ShouldBeVisible = SBUIFaceIDCoachingConditionShouldBeVisible(a3);
  if (ShouldBeVisible)
  {
    v17 = SBUICoachingTextForSBUIFaceIDCoachingCondition(a3);
  }

  else
  {
    v17 = 0;
  }

  v13 = [(SBUIProudLockContainerViewController *)self delegate];
  [v13 proudLockContainerViewController:self guidanceTextVisibilityDidChange:v17 animated:v10];

  if (!(v10 & ~v9) && ((ShouldBeVisible ^ 1) & 1) == 0)
  {
    v14 = self;
    v15 = 1;
LABEL_21:
    [(SBUIProudLockContainerViewController *)v14 _updateIconViewStateAnimated:v15];
    goto LABEL_22;
  }

  v14 = self;
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
    v15 = v10;
    goto LABEL_21;
  }

  [(SBUIProudLockContainerViewController *)self _setIconState:5 animated:v10];
LABEL_22:
}

- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)a3
{
  v5 = [(SBUIProudLockContainerViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 interfaceOrientation];

  return [(SBUIProudLockContainerViewController *)self _effectiveCoachingConditionForCondition:a3 orientation:v7];
}

- (unint64_t)_effectiveCoachingConditionForCondition:(unint64_t)a3 orientation:(int64_t)a4
{
  v7 = +[SBUIBiometricResource sharedInstance];
  if (![v7 hasBiometricAuthenticationCapabilityEnabled] || !objc_msgSend(v7, "isPearlDetectEnabled"))
  {
    a3 = 1;
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
      SBUIFaceIDCoachingConditionShouldBeVisible(a3);
      goto LABEL_23;
    }

    v9 = 4;
  }

  if ((SBUIFaceIDCoachingConditionShouldBeVisible(a3) & 1) != 0 || v9 != a4)
  {
LABEL_23:
    if (a3 == 13)
    {
      a3 = 1;
    }

    goto LABEL_25;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      v10 = [(SBUIProudLockContainerViewController *)self isAuthenticated];
      if (a3 == 13)
      {
        a3 = 1;
      }

      if (v10)
      {
        goto LABEL_25;
      }

LABEL_21:
      a3 = 13;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v11 userInterfaceIdiom] != 1)
  {

    goto LABEL_23;
  }

  v12 = [(SBUIProudLockContainerViewController *)self isAuthenticated];

  if (a3 == 13)
  {
    a3 = 1;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_25:

  return a3;
}

- (void)_setIconState:(int64_t)a3 animated:(BOOL)a4 options:(int64_t)a5 force:(BOOL)a6 completion:(id)a7
{
  v9 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v12 = a7;
  if (a6)
  {
    goto LABEL_4;
  }

  if (![(SBUIProudLockContainerViewController *)self _canTransitionToState:a3])
  {
    v28 = SBLogBiometricResource();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = NSStringForSBUIProudLockIconViewState([(SBUIProudLockContainerViewController *)self _actualIconState]);
      v30 = NSStringForSBUIProudLockIconViewState(a3);
      *buf = 138543618;
      v39 = v29;
      v40 = 2114;
      v41 = v30;
      _os_log_impl(&dword_1A9A79000, v28, OS_LOG_TYPE_DEFAULT, "Ignoring request to go from SBUIProudLockIconViewState %{public}@ to %{public}@", buf, 0x16u);
    }

    if (v12)
    {
      v12[2](v12, 1);
    }

    goto LABEL_27;
  }

  if (self->_forceCount)
  {
LABEL_4:
    a5 |= 2uLL;
  }

  v13 = [(SBUIProudLockContainerViewController *)self _actualIconState];
  IsCoaching = SBUIProudLockIconViewStateIsCoaching(v13);
  v15 = SBLogBiometricResource();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    desiredIconState = self->_desiredIconState;
    *buf = 134218496;
    v39 = v13;
    v40 = 2048;
    v41 = desiredIconState;
    v42 = 2048;
    v43 = a3;
    _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_INFO, "actualIconState: %lu - _desiredIconState: %lu - toIconState: %lu", buf, 0x20u);
  }

  self->_desiredIconState = a3;
  v17 = SBUIProudLockIconViewStateIsCoaching(a3);
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

    v21 = v12;

    v22 = SBUIFaceIDCoachingConditionForSBUIProudLockIconViewState(self->_desiredIconState);
    v23 = SBUICoachingTextForSBUIFaceIDCoachingCondition(v22);
    v24 = [(SBUIProudLockContainerViewController *)self delegate];
    v25 = [v24 transientSubtitleText];

    v26 = v9;
    if (v25)
    {
      v27 = [v25 isEqualToString:v23] ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v31 = [(SBUIProudLockContainerViewController *)self _proudLockIconView];
    v32 = self->_desiredIconState;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __88__SBUIProudLockContainerViewController__setIconState_animated_options_force_completion___block_invoke;
    v34[3] = &unk_1E789F138;
    v34[4] = self;
    v35 = v21;
    v36 = v17;
    v37 = v33;
    [v31 setState:v32 animated:v26 updateText:v27 options:a5 completion:v34];

    if (v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12;
    [(SBUIProudLockContainerViewController *)self setUnlockCompletion:v12];
    if (v17)
    {
LABEL_23:
      [(SBUIProudLockContainerViewController *)self setCanLeaveCoachingCondition:0];
      v12 = v21;
      goto LABEL_27;
    }
  }

  v12 = v21;
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

- (BOOL)_canTransitionToState:(int64_t)a3
{
  if (!self->_screenOn)
  {
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v5 = [(SBUIProudLockContainerViewController *)self _actualIconState];
  if (v5 == a3)
  {
    goto LABEL_3;
  }

  v7 = v5;
  if (v5 != 22 || (LOBYTE(v6) = 0, a3 == 1) && self->_configuration.suppressFaceIDDisabledState)
  {
    IsCoaching = SBUIProudLockIconViewStateIsCoaching(v5);
    v9 = SBUIProudLockIconViewStateIsCoaching(a3);
    if (SBUIProudLockIconViewStateIsUpsideDown(v7))
    {
      IsUpsideDown = 1;
    }

    else
    {
      IsUpsideDown = SBUIProudLockIconViewStateIsUpsideDown(a3);
    }

    IsCameraCovered = SBUIProudLockIconViewStateIsCameraCovered(v7);
    if (IsCameraCovered)
    {
      LOBYTE(IsCameraCovered) = SBUIProudLockIconViewStateIsCameraCovered(a3);
    }

    if ((IsUpsideDown & 1) != 0 || a3 <= 0x16 && ((1 << a3) & 0x40000E) != 0 || IsCameraCovered & 1 | ((IsCoaching & 1) == 0) | v9 & 1)
    {
      if (v7 != 5)
      {
        if (v7 == 2)
        {
          if (a3 < 0x17)
          {
            v6 = 0x400003u >> a3;
            return v6 & 1;
          }

          goto LABEL_3;
        }

LABEL_24:
        LOBYTE(v6) = 1;
        return v6 & 1;
      }

      if ((a3 - 2) < 3 || a3 == 1 && [(SBUIProudLockContainerViewController *)self _isBiometricLockedOut]|| SBUIProudLockIconViewStateIsCoaching(a3))
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (void)setCanShowScanningState:(BOOL)a3
{
  if (self->_canShowScanningState != a3)
  {
    self->_canShowScanningState = a3;
    [(SBUIProudLockContainerViewController *)self _updateScanningState];
  }
}

- (void)setShouldShowScanningState:(BOOL)a3
{
  if (self->_shouldShowScanningState != a3)
  {
    self->_shouldShowScanningState = a3;
    [(SBUIProudLockContainerViewController *)self _updateScanningState];
  }
}

- (void)setSuppressScanningState:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_suppressScanningState != a3)
  {
    self->_suppressScanningState = a3;
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

- (void)_allowCoachingConditionImmediately:(BOOL)a3
{
  v3 = a3;
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__allowCoachingCondition object:0];
  if ([(SBUIProudLockContainerViewController *)self canShowCoachingCondition])
  {
    v5 = !v3;
    v6 = self;
LABEL_5:

    [(SBUIProudLockContainerViewController *)v6 _reallyAllowCoachingConditionAnimated:v5];
    return;
  }

  if (v3)
  {
    v6 = self;
    v5 = 0;
    goto LABEL_5;
  }

  minimumDurationBetweenLeavingCoachingAndCoaching = self->_configuration.minimumDurationBetweenLeavingCoachingAndCoaching;

  [(SBUIProudLockContainerViewController *)self performSelector:sel__allowCoachingCondition withObject:0 afterDelay:minimumDurationBetweenLeavingCoachingAndCoaching];
}

- (void)_reallyAllowCoachingConditionAnimated:(BOOL)a3
{
  v3 = a3;
  [(SBUIProudLockContainerViewController *)self setCanShowCoachingCondition:1];

  [(SBUIProudLockContainerViewController *)self _updateIconViewStateAnimated:v3];
}

- (void)_allowCameraCoveredForUnlockSource:(int)a3
{
  if (a3 == 3)
  {
    v4 = 0;
    v5 = 48;
    goto LABEL_5;
  }

  if (a3 == 41)
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

- (void)setCanLeaveCoachingCondition:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_canLeaveCoachingCondition != a3)
  {
    self->_canLeaveCoachingCondition = a3;
    if (a3 && (SBUIProudLockIconViewStateIsCoaching(self->_desiredIconState) & 1) == 0)
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

- (int64_t)_iconViewStateForCoachingCondition:(unint64_t)a3
{
  [(SBUIProudLockContainerViewController *)self configuration];
  v5 = v9;
  v6 = [(SBUIProudLockContainerViewController *)self orientationProvider];
  v7 = [v6 orientation];

  return SBUIProudLockIconViewStateForSBUIFaceIDCoachingCondition(a3, v7, v5);
}

- (void)_performForcedUpdate:(id)a3
{
  forceCount = self->_forceCount;
  self->_forceCount = forceCount + 1;
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
    forceCount = self->_forceCount - 1;
  }

  self->_forceCount = forceCount;
}

@end