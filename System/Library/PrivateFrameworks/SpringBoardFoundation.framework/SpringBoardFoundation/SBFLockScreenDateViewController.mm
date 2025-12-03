@interface SBFLockScreenDateViewController
- (BOOL)_supportsCoaching;
- (BOOL)isHostingViewController:(id)controller;
- (BOOL)isSubtitleHidden;
- (NSString)description;
- (SBFLockScreenDateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_timeAnimationIntervalToUse;
- (double)backgroundAlpha;
- (id)_timelinesForDateInterval:(id)interval;
- (id)dateViewIfExists;
- (void)_addObservers;
- (void)_backlightLuminanceChangedForEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)_handleTimeZoneChange;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateAlternateCalendar;
- (void)_updateAnimatesTimeChanges;
- (void)_updateForLuminanceFromTraitEnvironment:(id)environment;
- (void)_updateFormat;
- (void)_updateFormatIfEnabled;
- (void)_updateLegibilityStrength;
- (void)_updateState;
- (void)_updateView;
- (void)_updateWithFrameSpecifier:(id)specifier;
- (void)dealloc;
- (void)loadView;
- (void)setAlternateDateEnabled:(BOOL)enabled;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setCustomSubtitle:(id)subtitle withPriority:(int64_t)priority withTimeout:(double)timeout;
- (void)setCustomSubtitleView:(id)view;
- (void)setDateProvider:(id)provider;
- (void)setLegibilitySettings:(id)settings;
- (void)setRestrictsVibrancy:(BOOL)vibrancy;
- (void)setScreenOff:(BOOL)off;
- (void)setShowCompactTime:(BOOL)time animated:(BOOL)animated;
- (void)setSubtitleHidden:(BOOL)hidden;
- (void)setTimeAlpha:(double)alpha subtitleAlpha:(double)subtitleAlpha;
- (void)setTimeSupportsStretch:(BOOL)stretch;
- (void)setView:(id)view;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)updateTimeNow;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SBFLockScreenDateViewController

- (id)dateViewIfExists
{
  if ([(SBFLockScreenDateViewController *)self isViewLoaded])
  {
    dateView = [(SBFLockScreenDateViewController *)self dateView];
  }

  else
  {
    dateView = 0;
  }

  return dateView;
}

- (void)_updateLegibilityStrength
{
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  legibilitySettings = [(SBFLockScreenDateViewController *)self legibilitySettings];
  style = [legibilitySettings style];

  v5 = +[SBFLegibilityDomain rootSettings];
  [v5 timeStrengthForStyle:style];
  [dateViewIfExists setTimeLegibilityStrength:?];
  [v5 dateStrengthForStyle:style];
  [dateViewIfExists setSubtitleLegibilityStrength:?];
}

- (BOOL)_supportsCoaching
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  [currentDevice userInterfaceIdiom];

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
    dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    date = [(SBFDateProviding *)self->_dateProvider date];
    [dateViewIfExists setDate:date];

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
  v3 = MEMORY[0x1BFB4C500](*self);
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
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [dateViewIfExists updateFormat];

  [(SBFLockScreenDateViewController *)self _updateView];
}

- (SBFLockScreenDateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v40[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  bundleCopy = bundle;
  v34.receiver = self;
  v34.super_class = SBFLockScreenDateViewController;
  v8 = [(SBFLockScreenDateViewController *)&v34 initWithNibName:nameCopy bundle:bundleCopy];
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
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      v21 = [v19 initWithElements:-1 date:0 textColor:systemRedColor];
      prominentDisplayViewController = v9->_prominentDisplayViewController;
      v9->_prominentDisplayViewController = v21;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v9 selector:sel__updateAlternateCalendar name:*MEMORY[0x1E6966B78] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v9 selector:sel__updateAlternateCalendar name:*MEMORY[0x1E695D8F0] object:0];

      [(SBFLockScreenDateViewController *)v9 _updateAlternateCalendar];
    }

    v40[0] = objc_opt_class();
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v26 = [(SBFLockScreenDateViewController *)v9 registerForTraitChanges:v25 withAction:sel__backlightLuminanceChangedForEnvironment_previousTraitCollection_];
    luminanceTraitChangeRegistration = v9->_luminanceTraitChangeRegistration;
    v9->_luminanceTraitChangeRegistration = v26;

    [(SBFLockScreenDateViewController *)v9 _updateForLuminanceFromTraitEnvironment:v9];
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel__lowPowerModeDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

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
  build = [v3 build];

  return build;
}

- (void)setScreenOff:(BOOL)off
{
  if (self->_screenOff != off)
  {
    self->_screenOff = off;
    [(SBFLockScreenDateViewController *)self _updateState];
    if (self->_screenOff)
    {

      [(SBFLockScreenDateViewController *)self setCustomSubtitle:0 withPriority:0 withTimeout:0.0];
    }
  }
}

- (BOOL)isSubtitleHidden
{
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  isSubtitleHidden = [dateViewIfExists isSubtitleHidden];

  return isSubtitleHidden;
}

- (void)setSubtitleHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  dateView = [(SBFLockScreenDateViewController *)self dateView];
  [dateView setSubtitleHidden:hiddenCopy];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (self->_legibilitySettings != settingsCopy)
  {
    v7 = settingsCopy;
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
    dateView = [(SBFLockScreenDateViewController *)self dateView];
    [dateView setLegibilitySettings:self->_legibilitySettings];

    settingsCopy = v7;
  }
}

- (void)setRestrictsVibrancy:(BOOL)vibrancy
{
  if (self->_restrictsVibrancy != vibrancy)
  {
    self->_restrictsVibrancy = vibrancy;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setEffectType:vibrancy];
  }
}

- (void)setTimeAlpha:(double)alpha subtitleAlpha:(double)subtitleAlpha
{
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [dateViewIfExists setTimeAlpha:alpha subtitleAlpha:subtitleAlpha];
}

- (void)setTimeSupportsStretch:(BOOL)stretch
{
  stretchCopy = stretch;
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [dateViewIfExists setTimeSupportsStretch:stretchCopy];
}

- (void)setBackgroundAlpha:(double)alpha
{
  backgroundView = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  [backgroundView setAlpha:alpha];
}

- (double)backgroundAlpha
{
  backgroundView = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  [backgroundView alpha];
  v4 = v3;

  return v4;
}

- (void)setCustomSubtitleView:(id)view
{
  viewCopy = view;
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  [dateViewIfExists setCustomSubtitleView:viewCopy];
}

- (void)setCustomSubtitle:(id)subtitle withPriority:(int64_t)priority withTimeout:(double)timeout
{
  subtitleCopy = subtitle;
  prominentDisplayViewController = self->_prominentDisplayViewController;
  v11 = subtitleCopy;
  if (subtitleCopy)
  {
    if ([(SBFLockScreenDateViewController *)self _supportsCoaching])
    {
      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    [(CSProminentDisplayViewController *)prominentDisplayViewController setTransientSubtitleText:v10 priority:[(SBFLockScreenDateViewController *)self _prominentDisplaySubtitlePriorityForPriority:priority] timeout:timeout];
  }

  else
  {
    [(CSProminentDisplayViewController *)prominentDisplayViewController clearTransientSubtitleForPriority:[(SBFLockScreenDateViewController *)self _prominentDisplaySubtitlePriorityForPriority:priority]];
  }
}

- (void)setAlternateDateEnabled:(BOOL)enabled
{
  if (self->_alternateDateEnabled != enabled)
  {
    self->_alternateDateEnabled = enabled;
    [(SBFLockScreenDateViewController *)self _updateAlternateCalendar];
  }
}

- (void)setDateProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = objc_alloc_init(SBFDefaultDateProvider);
  }

  if (self->_dateProvider != providerCopy)
  {
    obj = providerCopy;
    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
    objc_storeStrong(&self->_dateProvider, obj);
    if (!self->_disablesUpdates)
    {
      [(SBFLockScreenDateViewController *)self _startUpdateTimer];
    }

    [(SBFLockScreenDateViewController *)self _updateFormatIfEnabled];
    providerCopy = obj;
  }
}

void __48__SBFLockScreenDateViewController_updateTimeNow__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dateViewIfExists];
  v2 = [*(*(a1 + 32) + 1072) date];
  [v3 setDate:v2];
}

- (void)setShowCompactTime:(BOOL)time animated:(BOOL)animated
{
  animatedCopy = animated;
  timeCopy = time;
  if (_os_feature_enabled_impl())
  {
    prominentDisplayViewController = self->_prominentDisplayViewController;

    [(CSProminentDisplayViewController *)prominentDisplayViewController setShowsCompactTime:timeCopy animated:animatedCopy];
  }
}

- (BOOL)isHostingViewController:(id)controller
{
  if (!self->_prominentDisplayViewController)
  {
    return 0;
  }

  parentViewController = [controller parentViewController];
  v5 = parentViewController == self->_prominentDisplayViewController;

  return v5;
}

- (void)_updateForLuminanceFromTraitEnvironment:(id)environment
{
  traitCollection = [environment traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  [(SBFLockScreenDateViewController *)self _timeAnimationIntervalToUse];
  v7 = v6;
  luminanceChangeAnimationResponse = self->_luminanceChangeAnimationResponse;
  if (_backlightLuminance == 1)
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

- (void)_backlightLuminanceChangedForEnvironment:(id)environment previousTraitCollection:(id)collection
{
  environmentCopy = environment;
  v6 = [collection _backlightLuminance] == 1;
  traitCollection = [(SBFLockScreenDateViewController *)self traitCollection];
  _backlightLuminance = [traitCollection _backlightLuminance];

  if (((v6 ^ (_backlightLuminance != 1)) & 1) == 0)
  {
    [(SBFLockScreenDateViewController *)self _updateForLuminanceFromTraitEnvironment:environmentCopy];
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
    view = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController view];
    [(SBFLockScreenDateView *)v6 addSubview:view];

    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController didMoveToParentViewController:self];
  }

  [(SBFLockScreenDateView *)v6 setLegibilitySettings:self->_legibilitySettings];
  [(SBFLockScreenDateViewController *)self setView:v6];
  [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
  date = [(SBFDateProviding *)self->_dateProvider date];
  [(SBFLockScreenDateView *)v6 setDate:date];
}

- (void)setView:(id)view
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v5 setView:?];
  if (!view)
  {
    [(SBFLockScreenDateViewController *)self _stopUpdateTimer];
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(SBFLockScreenDateViewController *)self setView:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v6 viewWillAppear:?];
  self->_isVisible = 1;
  if (appearCopy)
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v6 viewDidDisappear:?];
  self->_isVisible = 0;
  if (disappearCopy)
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = SBFLockScreenDateViewController;
  [(SBFLockScreenDateViewController *)&v10 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  backgroundView = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  layer = [backgroundView layer];

  if (windowCopy)
  {
    v9 = [SBFAnimationUtilities matchMoveAnimationForPinningToView:windowCopy];
    [layer addAnimation:v9 forKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  }

  else
  {
    [layer removeAnimationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = SBFLockScreenDateViewController;
  coordinatorCopy = coordinator;
  [(SBFLockScreenDateViewController *)&v16 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  backgroundView = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController backgroundView];
  layer = [backgroundView layer];

  v10 = [layer animationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  [layer removeAnimationForKey:@"SBFLockScreenDateViewControllerProminentBackgroundMatchMoveAnimation"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SBFLockScreenDateViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E8080830;
  v14 = layer;
  v15 = v10;
  v11 = v10;
  v12 = layer;
  [coordinatorCopy animateAlongsideTransition:0 completion:v13];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  v6 = +[SBFLegibilityDomain rootSettings];

  if (v6 == settingsCopy)
  {

    [(SBFLockScreenDateViewController *)self _updateLegibilityStrength];
  }
}

- (void)_updateWithFrameSpecifier:(id)specifier
{
  specifierCopy = specifier;
  dateViewIfExists = [(SBFLockScreenDateViewController *)self dateViewIfExists];
  if (specifierCopy)
  {
    presentationInterval = [specifierCopy presentationInterval];
    startDate = [presentationInterval startDate];
    [dateViewIfExists setDate:startDate];

    LODWORD(presentationInterval) = [(SBAlwaysOnDefaults *)self->_alwaysOnDefaults useDebugColors];
    dateViewIfExists2 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    dateViewIfExists3 = dateViewIfExists2;
    if (presentationInterval)
    {
      v9 = objc_alloc(MEMORY[0x1E69DD5B8]);
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v13 = [v9 initWithStyle:0 primaryColor:systemYellowColor secondaryColor:systemRedColor shadowColor:systemBlueColor];
      [dateViewIfExists3 setLegibilitySettings:v13];
    }

    else
    {
      [dateViewIfExists2 setLegibilitySettings:self->_legibilitySettings];
    }
  }

  else
  {
    [dateViewIfExists setLegibilitySettings:self->_legibilitySettings];

    dateViewIfExists3 = [(SBFLockScreenDateViewController *)self dateViewIfExists];
    date = [(SBFDateProviding *)self->_dateProvider date];
    [dateViewIfExists3 setDate:date];
  }
}

- (id)_timelinesForDateInterval:(id)interval
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
  mEMORY[0x1E6966B80] = [MEMORY[0x1E6966B80] sharedPreferences];
  overlayCalendarID = [mEMORY[0x1E6966B80] overlayCalendarID];

  if ([overlayCalendarID length] && self->_alternateDateEnabled)
  {
    prominentDisplayViewController = self->_prominentDisplayViewController;
    v5 = [MEMORY[0x1E69AAE08] localeForCalendarID:overlayCalendarID];
    [(CSProminentDisplayViewController *)prominentDisplayViewController setAlternateCalendarIdentifier:overlayCalendarID locale:v5];
  }

  else
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAlternateCalendarIdentifier:0 locale:0];
  }
}

- (void)_addObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateFormat name:*MEMORY[0x1E698E5B0] object:0];
  [defaultCenter addObserver:self selector:sel__updateView name:*MEMORY[0x1E69DDC48] object:0];
  [defaultCenter addObserver:self selector:sel__updateView name:*MEMORY[0x1E69DD8E0] object:0];
  [defaultCenter addObserver:self selector:sel__handleTimeZoneChange name:*MEMORY[0x1E695DA68] object:0];
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
  animatesTimeChanges = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController animatesTimeChanges];
  result = 0.0;
  if (animatesTimeChanges)
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];
  traitCollection = [(SBFLockScreenDateViewController *)self traitCollection];
  v5 = [traitCollection _backlightLuminance] != 1;

  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAnimatesTimeChanges:v5 & (isLowPowerModeEnabled ^ 1u)];
}

@end