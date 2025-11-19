@interface SBFLockScreenDateViewController
- (BOOL)_supportsCoaching;
- (BOOL)isHostingViewController:(id)a3;
- (BOOL)isSubtitleHidden;
- (NSString)description;
- (SBFLockScreenDateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_timeAnimationIntervalToUse;
- (double)backgroundAlpha;
- (id)_timelinesForDateInterval:(id)a3;
- (id)dateViewIfExists;
- (void)_addObservers;
- (void)_backlightLuminanceChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)_handleTimeZoneChange;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateAlternateCalendar;
- (void)_updateAnimatesTimeChanges;
- (void)_updateForLuminanceFromTraitEnvironment:(id)a3;
- (void)_updateFormat;
- (void)_updateFormatIfEnabled;
- (void)_updateLegibilityStrength;
- (void)_updateState;
- (void)_updateView;
- (void)_updateWithFrameSpecifier:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)setAlternateDateEnabled:(BOOL)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setCustomSubtitle:(id)a3 withPriority:(int64_t)a4 withTimeout:(double)a5;
- (void)setCustomSubtitleView:(id)a3;
- (void)setDateProvider:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setRestrictsVibrancy:(BOOL)a3;
- (void)setScreenOff:(BOOL)a3;
- (void)setShowCompactTime:(BOOL)a3 animated:(BOOL)a4;
- (void)setSubtitleHidden:(BOOL)a3;
- (void)setTimeAlpha:(double)a3 subtitleAlpha:(double)a4;
- (void)setTimeSupportsStretch:(BOOL)a3;
- (void)setView:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)updateTimeNow;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SBFLockScreenDateViewController

- (id)dateViewIfExists
{
  if ([(SBFLockScreenDateViewController *)self isViewLoaded])
  {
    v3 = [(SBFLockScreenDateViewController *)self dateView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateLegibilityStrength
{
  v6 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  v3 = [(SBFLockScreenDateViewController *)self legibilitySettings];
  v4 = [v3 style];

  v5 = +[SBFLegibilityDomain rootSettings];
  [v5 timeStrengthForStyle:v4];
  [v6 setTimeLegibilityStrength:?];
  [v5 dateStrengthForStyle:v4];
  [v6 setSubtitleLegibilityStrength:?];
}

- (BOOL)_supportsCoaching
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  [v2 userInterfaceIdiom];

  return _os_feature_enabled_impl();
}

- (void)_updateView
{
  if (self->_disablesUpdates)
  {

    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
  }

  else
  {
    v3 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    v4 = [(SBFDateProviding *)self->_dateProvider date];
    [v3 setDate:v4];

    [(SBFLockScreenDateViewController *)self _startUpdateTimer];
  }
}

- (void)_startUpdateTimer
{
  if (!self->_timerToken)
  {
    if (objc_opt_respondsToSelector())
    {
      dateProvider = self->_dateProvider;
      [(SBFLockScreenDateViewController *)self _timeAnimationIntervalToUse];
      [(SBFDateProviding *)dateProvider setAdditionalOffset:?];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__SBFLockScreenDateViewController__startUpdateTimer__block_invoke;
    v10[3] = &unk_1E807F178;
    v10[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
    objc_initWeak(&location, self);
    v4 = self->_dateProvider;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__SBFLockScreenDateViewController__startUpdateTimer__block_invoke_2;
    v7[3] = &unk_1E8080858;
    objc_copyWeak(&v8, &location);
    v5 = [(SBFDateProviding *)v4 observeMinuteUpdatesWithHandler:v7];
    timerToken = self->_timerToken;
    self->_timerToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_updateState
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1BFB4C500](*a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_DEBUG, "Date view controller disabled updates: %@", &v4, 0xCu);
}

- (void)_updateFormatIfEnabled
{
  if (!self->_disablesUpdates)
  {
    [(SBFLockScreenDateViewController *)self _updateFormat];
  }
}

- (void)_stopUpdateTimer
{
  if (self->_timerToken)
  {
    [(SBFDateProviding *)self->_dateProvider removeMinuteUpdateHandler:?];
    timerToken = self->_timerToken;
    self->_timerToken = 0;
  }
}

- (void)updateTimeNow
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__SBFLockScreenDateViewController_updateTimeNow__block_invoke;
  v2[3] = &unk_1E807F178;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

- (void)_updateFormat
{
  v3 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [v3 updateFormat];

  [(SBFLockScreenDateViewController *)self _updateView];
}

- (SBFLockScreenDateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = SBFLockScreenDateViewController;
  v8 = [(SBFLockScreenDateViewController *)&v34 initWithNibName:v6 bundle:v7];
  v9 = v8;
  if (v8)
  {
    [(SBFLockScreenDateViewController *)v8 _addObservers];
    [(SBFLockScreenDateViewController *)v9 setDateProvider:0];
    v10 = objc_alloc_init(SBAlwaysOnDefaults);
    alwaysOnDefaults = v9->_alwaysOnDefaults;
    v9->_alwaysOnDefaults = v10;

    objc_initWeak(&location, v9);
    v12 = v9->_alwaysOnDefaults;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useDebugColors"];
    v14 = MEMORY[0x1E69E96A0];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__SBFLockScreenDateViewController_initWithNibName_bundle___block_invoke;
    v31[3] = &unk_1E80807B8;
    objc_copyWeak(&v32, &location);
    v15 = [(BSAbstractDefaultDomain *)v12 observeDefault:v13 onQueue:MEMORY[0x1E69E96A0] withBlock:v31];
    alwaysOnDefaultsObserver = v9->_alwaysOnDefaultsObserver;
    v9->_alwaysOnDefaultsObserver = v15;

    if (_os_feature_enabled_impl())
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x2050000000;
      v17 = getCSProminentDisplayViewControllerClass_softClass;
      v39 = getCSProminentDisplayViewControllerClass_softClass;
      if (!getCSProminentDisplayViewControllerClass_softClass)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __getCSProminentDisplayViewControllerClass_block_invoke;
        v35[3] = &unk_1E807F028;
        v35[4] = &v36;
        __getCSProminentDisplayViewControllerClass_block_invoke(v35);
        v17 = v37[3];
      }

      v18 = v17;
      _Block_object_dispose(&v36, 8);
      v19 = [v17 alloc];
      v20 = [MEMORY[0x1E69DC888] systemRedColor];
      v21 = [v19 initWithElements:-1 date:0 textColor:v20];
      prominentDisplayViewController = v9->_prominentDisplayViewController;
      v9->_prominentDisplayViewController = v21;

      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 addObserver:v9 selector:sel__updateAlternateCalendar name:*MEMORY[0x1E6966B78] object:0];

      v24 = [MEMORY[0x1E696AD88] defaultCenter];
      [v24 addObserver:v9 selector:sel__updateAlternateCalendar name:*MEMORY[0x1E695D8F0] object:0];

      [(SBFLockScreenDateViewController *)v9 _updateAlternateCalendar];
    }

    v40[0] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v26 = [(SBFLockScreenDateViewController *)v9 registerForTraitChanges:v25 withAction:sel__backlightLuminanceChangedForEnvironment_previousTraitCollection_];
    luminanceTraitChangeRegistration = v9->_luminanceTraitChangeRegistration;
    v9->_luminanceTraitChangeRegistration = v26;

    [(SBFLockScreenDateViewController *)v9 _updateForLuminanceFromTraitEnvironment:v9];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v9 selector:sel__lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

    [(SBFLockScreenDateViewController *)v9 _updateAnimatesTimeChanges];
    v29 = v9;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __58__SBFLockScreenDateViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewIfLoaded];
  v2 = [v1 window];
  v3 = [v2 windowScene];
  v4 = [v3 _backlightSceneEnvironment];
  [v4 invalidateAllTimelinesForReason:@"SBFLockScreenDateViewController: Debug Colors Switch Changed"];
}

- (void)dealloc
{
  [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
  [(SBFLockScreenDateViewController *)self unregisterForTraitChanges:self->_luminanceTraitChangeRegistration];
  [(BSDefaultObserver *)self->_alwaysOnDefaultsObserver invalidate];
  v3 = +[SBFLegibilityDomain rootSettings];
  [v3 removeKeyObserver:self];

  v4.receiver = self;
  v4.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_isVisible withName:@"isVisible"];
  v5 = [v3 appendBool:self->_screenOff withName:@"screenOff"];
  v6 = [v3 appendBool:!self->_disablesUpdates withName:@"wantsPreciseTime"];
  v7 = [v3 appendBool:self->_timerToken != 0 withName:@"preciseTimeEnabled"];
  v8 = [v3 build];

  return v8;
}

- (void)setScreenOff:(BOOL)a3
{
  if (self->_screenOff != a3)
  {
    self->_screenOff = a3;
    [(SBFLockScreenDateViewController *)self _updateState];
    if (self->_screenOff)
    {

      [(SBFLockScreenDateViewController *)self setCustomSubtitle:0 withPriority:0 withTimeout:0.0];
    }
  }
}

- (BOOL)isSubtitleHidden
{
  v2 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  v3 = [v2 isSubtitleHidden];

  return v3;
}

- (void)setSubtitleHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFLockScreenDateViewController *)self dateView];
  [v4 setSubtitleHidden:v3];
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
    v6 = [(SBFLockScreenDateViewController *)self dateView];
    [v6 setLegibilitySettings:self->_legibilitySettings];

    v5 = v7;
  }
}

- (void)setRestrictsVibrancy:(BOOL)a3
{
  if (self->_restrictsVibrancy != a3)
  {
    self->_restrictsVibrancy = a3;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setEffectType:a3];
  }
}

- (void)setTimeAlpha:(double)a3 subtitleAlpha:(double)a4
{
  v6 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [v6 setTimeAlpha:a3 subtitleAlpha:a4];
}

- (void)setTimeSupportsStretch:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [v4 setTimeSupportsStretch:v3];
}

- (void)setBackgroundAlpha:(double)a3
{
  v4 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  [v4 setAlpha:a3];
}

- (double)backgroundAlpha
{
  v2 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setCustomSubtitleView:(id)a3
{
  v4 = a3;
  v5 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [v5 setCustomSubtitleView:v4];
}

- (void)setCustomSubtitle:(id)a3 withPriority:(int64_t)a4 withTimeout:(double)a5
{
  v8 = a3;
  prominentDisplayViewController = self->_prominentDisplayViewController;
  v11 = v8;
  if (v8)
  {
    if ([(SBFLockScreenDateViewController *)self _supportsCoaching])
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    [(CSProminentDisplayViewController *)prominentDisplayViewController setTransientSubtitleText:v10 priority:[(SBFLockScreenDateViewController *)self _prominentDisplaySubtitlePriorityForPriority:a4] timeout:a5];
  }

  else
  {
    [(CSProminentDisplayViewController *)prominentDisplayViewController clearTransientSubtitleForPriority:[(SBFLockScreenDateViewController *)self _prominentDisplaySubtitlePriorityForPriority:a4]];
  }
}

- (void)setAlternateDateEnabled:(BOOL)a3
{
  if (self->_alternateDateEnabled != a3)
  {
    self->_alternateDateEnabled = a3;
    [(SBFLockScreenDateViewController *)self _updateAlternateCalendar];
  }
}

- (void)setDateProvider:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(SBFDefaultDateProvider);
  }

  if (self->_dateProvider != v4)
  {
    obj = v4;
    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
    objc_storeStrong(&self->_dateProvider, obj);
    if (!self->_disablesUpdates)
    {
      [(SBFLockScreenDateViewController *)self _startUpdateTimer];
    }

    [(SBFLockScreenDateViewController *)self _updateFormatIfEnabled];
    v4 = obj;
  }
}

void __48__SBFLockScreenDateViewController_updateTimeNow__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dateViewIfExists];
  v2 = [*(*(a1 + 32) + 1072) date];
  [v3 setDate:v2];
}

- (void)setShowCompactTime:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    prominentDisplayViewController = self->_prominentDisplayViewController;

    [(CSProminentDisplayViewController *)prominentDisplayViewController setShowsCompactTime:v5 animated:v4];
  }
}

- (BOOL)isHostingViewController:(id)a3
{
  if (!self->_prominentDisplayViewController)
  {
    return 0;
  }

  v4 = [a3 parentViewController];
  v5 = v4 == self->_prominentDisplayViewController;

  return v5;
}

- (void)_updateForLuminanceFromTraitEnvironment:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = [v4 _backlightLuminance];

  [(SBFLockScreenDateViewController *)self _timeAnimationIntervalToUse];
  v7 = v6;
  luminanceChangeAnimationResponse = self->_luminanceChangeAnimationResponse;
  if (v5 == 1)
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setUsesLightTimeFontVariant:1 response:self->_luminanceChangeAnimationResponse];
    [(SBFLockScreenDateViewController *)self _updateAnimatesTimeChanges];
  }

  else
  {
    [(SBFLockScreenDateViewController *)self _updateAnimatesTimeChanges];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setUsesLightTimeFontVariant:0 response:luminanceChangeAnimationResponse];
  }

  [(SBFLockScreenDateViewController *)self _timeAnimationIntervalToUse];
  if (v7 != v9)
  {
    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];

    [(SBFLockScreenDateViewController *)self _startUpdateTimer];
  }
}

- (void)_backlightLuminanceChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v9 = a3;
  v6 = [a4 _backlightLuminance] == 1;
  v7 = [(SBFLockScreenDateViewController *)self traitCollection];
  v8 = [v7 _backlightLuminance];

  if (((v6 ^ (v8 != 1)) & 1) == 0)
  {
    [(SBFLockScreenDateViewController *)self _updateForLuminanceFromTraitEnvironment:v9];
  }
}

- (void)loadView
{
  v3 = [SBFLockScreenDateView alloc];
  v6 = [(SBFLockScreenDateView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(SBFLockScreenDateView *)v6 setUserInteractionEnabled:0];
  if (_os_feature_enabled_impl())
  {
    [(SBFLockScreenDateViewController *)self addChildViewController:self->_prominentDisplayViewController];
    [(SBFLockScreenDateView *)v6 setProminentDisplayViewController:self->_prominentDisplayViewController];
    v4 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController view];
    [(SBFLockScreenDateView *)v6 addSubview:v4];

    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController didMoveToParentViewController:self];
  }

  [(SBFLockScreenDateView *)v6 setLegibilitySettings:self->_legibilitySettings];
  [(SBFLockScreenDateViewController *)self setView:v6];
  [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
  v5 = [(SBFDateProviding *)self->_dateProvider date];
  [(SBFLockScreenDateView *)v6 setDate:v5];
}

- (void)setView:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v5 setView:?];
  if (!a3)
  {
    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(SBFLockScreenDateViewController *)self setView:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v6 viewWillAppear:?];
  self->_isVisible = 1;
  if (v3)
  {
    [(SBFLockScreenDateViewController *)self _updateState];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__SBFLockScreenDateViewController_viewWillAppear___block_invoke;
    v5[3] = &unk_1E807F178;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v6 viewDidDisappear:?];
  self->_isVisible = 0;
  if (v3)
  {
    [(SBFLockScreenDateViewController *)self _updateState];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__SBFLockScreenDateViewController_viewDidDisappear___block_invoke;
    v5[3] = &unk_1E807F178;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v10 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  v7 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  v8 = [v7 layer];

  if (v6)
  {
    v9 = [SBFAnimationUtilities matchMoveAnimationForPinningToView:v6];
    [v8 addAnimation:v9 forKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  }

  else
  {
    [v8 removeAnimationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = SBFLockScreenDateViewController;
  v7 = a4;
  [(SBFLockScreenDateViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  v9 = [v8 layer];

  v10 = [v9 animationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  [v9 removeAnimationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SBFLockScreenDateViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E8080830;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [v7 animateAlongsideTransition:0 completion:v13];
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a3;
  v6 = +[SBFLegibilityDomain rootSettings];

  if (v6 == v5)
  {

    [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
  }
}

- (void)_updateWithFrameSpecifier:(id)a3
{
  v15 = a3;
  v4 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  if (v15)
  {
    v5 = [v15 presentationInterval];
    v6 = [v5 startDate];
    [v4 setDate:v6];

    LODWORD(v5) = [(SBAlwaysOnDefaults *)self->_alwaysOnDefaults useDebugColors];
    v7 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    v8 = v7;
    if (v5)
    {
      v9 = objc_alloc(MEMORY[0x1E69DD5B8]);
      v10 = [MEMORY[0x1E69DC888] systemYellowColor];
      v11 = [MEMORY[0x1E69DC888] systemRedColor];
      v12 = [MEMORY[0x1E69DC888] systemBlueColor];
      v13 = [v9 initWithStyle:0 primaryColor:v10 secondaryColor:v11 shadowColor:v12];
      [v8 setLegibilitySettings:v13];
    }

    else
    {
      [v7 setLegibilitySettings:self->_legibilitySettings];
    }
  }

  else
  {
    [v4 setLegibilitySettings:self->_legibilitySettings];

    v8 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    v14 = [(SBFDateProviding *)self->_dateProvider date];
    [v8 setDate:v14];
  }
}

- (id)_timelinesForDateInterval:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698E508];
  v4 = [objc_opt_class() description];
  v5 = [v3 everyMinuteTimelineWithIdentifier:v4 configure:0];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)_updateAlternateCalendar
{
  v3 = [MEMORY[0x1E6966B80] sharedPreferences];
  v6 = [v3 overlayCalendarID];

  if ([v6 length] && self->_alternateDateEnabled)
  {
    prominentDisplayViewController = self->_prominentDisplayViewController;
    v5 = [MEMORY[0x1E69AAE08] localeForCalendarID:v6];
    [(CSProminentDisplayViewController *)prominentDisplayViewController setAlternateCalendarIdentifier:v6 locale:v5];
  }

  else
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)_addObservers
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__updateFormat name:*MEMORY[0x1E698E5B0] object:0];
  [v4 addObserver:self selector:sel__updateView name:*MEMORY[0x1E69DDC48] object:0];
  [v4 addObserver:self selector:sel__updateView name:*MEMORY[0x1E69DD8E0] object:0];
  [v4 addObserver:self selector:sel__handleTimeZoneChange name:*MEMORY[0x1E695DA68] object:0];
  v3 = +[SBFLegibilityDomain rootSettings];
  [v3 addKeyObserver:self];
}

- (void)_handleTimeZoneChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SBFLockScreenDateViewController__handleTimeZoneChange__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__SBFLockScreenDateViewController__handleTimeZoneChange__block_invoke(uint64_t a1)
{
  v2 = SBLogDashBoard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__SBFLockScreenDateViewController__handleTimeZoneChange__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) updateTimeNow];
}

void __52__SBFLockScreenDateViewController__startUpdateTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateView];
}

- (double)_timeAnimationIntervalToUse
{
  v3 = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController animatesTimeChanges];
  result = 0.0;
  if (v3)
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController timeChangeAnimationDuration];
    if (result == 0.0)
    {
      return 0.6;
    }
  }

  return result;
}

- (void)_updateAnimatesTimeChanges
{
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v6 isLowPowerModeEnabled];
  v4 = [(SBFLockScreenDateViewController *)self traitCollection];
  v5 = [v4 _backlightLuminance] != 1;

  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAnimatesTimeChanges:v5 & (v3 ^ 1u)];
}

@end