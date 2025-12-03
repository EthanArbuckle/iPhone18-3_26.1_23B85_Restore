@interface SBActivityBannerViewController
- (BOOL)_canShowWhileLocked;
- (BOOL)_hasBackgroundTintColor;
- (BOOL)_isActionButtonInitiated;
- (BOOL)_shouldHaveBackgroundTint;
- (BOOL)_shouldSetDefaultBackground;
- (BOOL)_shouldShowSystemApertureUI;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBActivityBannerViewControllerDelegate)bannerDelegate;
- (id)_activityIdentifier;
- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)style;
- (void)_dismiss;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_extendDismissalTimer;
- (void)_layoutSubviews;
- (void)_updateAppStatusBarSettingsAssertion;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change;
- (void)addPresentableObserver:(id)observer;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)removePresentableObserver:(id)observer;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)userInterfaceStyleChangedForEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityBannerViewController

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v3 = [MEMORY[0x277CBEB58] set];
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  v7 = [platterTargetBundleIdentifier isEqualToString:@"com.apple.VoiceMemos"];

  if (v7)
  {
    [v3 addObject:*MEMORY[0x277D6BCA8]];
  }

  return v3;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 requesterIdentifier];
}

- (NSString)requestIdentifier
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];

  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  _activityIdentifier = [(SBActivityBannerViewController *)self _activityIdentifier];
  v8 = [v5 initWithFormat:@"%@.%@", platterTargetBundleIdentifier, _activityIdentifier];

  return v8;
}

- (id)_activityIdentifier
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  activityIdentifier = [descriptor activityIdentifier];

  return activityIdentifier;
}

- (BOOL)_canShowWhileLocked
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  presentationOptions = [descriptor presentationOptions];
  shouldSuppressAlertContentOnLockScreen = [presentationOptions shouldSuppressAlertContentOnLockScreen];

  return shouldSuppressAlertContentOnLockScreen ^ 1;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  width = containerSize.width;
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated:size.width]|| [(SBActivityBannerViewController *)self _shouldShowSystemApertureUI])
  {
    [(SBActivityViewController *)self preferredActivityContentSize];
    if (width >= v6)
    {
      width = v6;
    }
  }

  [(SBActivityViewController *)self preferredActivityContentSize];
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)viewDidLoad
{
  v37[1] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SBActivityBannerViewController;
  [(SBActivityViewController *)&v36 viewDidLoad];
  v37[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v4 = [(SBActivityBannerViewController *)self registerForTraitChanges:v3 withAction:sel_userInterfaceStyleChangedForEnvironment_previousTraitCollection_];

  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  backgroundTintColor = [activityHostViewController backgroundTintColor];

  if ([(SBActivityBannerViewController *)self _shouldSetDefaultBackground])
  {
    traitCollection = [(SBActivityBannerViewController *)self traitCollection];
    v8 = -[SBActivityBannerViewController _backgroundTintColorForUserInterfaceStyle:](self, "_backgroundTintColorForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

    backgroundTintColor = v8;
  }

  if (backgroundTintColor)
  {
    v9 = 22;
  }

  else
  {
    v9 = 1;
  }

  traitCollection2 = [(SBActivityBannerViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection2 userInterfaceStyle];

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    v12 = @"SBSystemActionSimplePreviewMaterialGroup";
    v9 = 54;
    userInterfaceStyle = 2;
  }

  else
  {
    v12 = @"Activities";
  }

  v13 = _UISolariumEnabled();
  v14 = objc_alloc(MEMORY[0x277D3D328]);
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  v16 = [v14 initWithRecipe:v15];
  platterView = self->_platterView;
  self->_platterView = v16;

  [(PLPlatterView *)self->_platterView setUsesBackgroundView:v13 ^ 1u];
  [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:userInterfaceStyle];
  [(SBActivityBannerViewController *)self setMaterialGroupNameBase:v12];
  [(PLPlatterView *)self->_platterView setHasShadow:v13 ^ 1u];
  activityHostViewController2 = [(SBActivityViewController *)self activityHostViewController];
  activitySceneDescriptor = [activityHostViewController2 activitySceneDescriptor];

  metricsRequest = [activitySceneDescriptor metricsRequest];
  lockScreenMetrics = [metricsRequest lockScreenMetrics];
  [lockScreenMetrics cornerRadius];
  v23 = v22;

  [(PLPlatterView *)self->_platterView _setContinuousCornerRadius:v23];
  customContentView = [(PLPlatterView *)self->_platterView customContentView];
  [customContentView _setContinuousCornerRadius:v23];

  if ([(SBActivityBannerViewController *)self _shouldHaveBackgroundTint]&& (v13 & 1) == 0)
  {
    v25 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundTintView = self->_backgroundTintView;
    self->_backgroundTintView = v25;

    [(UIView *)self->_backgroundTintView _setContinuousCornerRadius:v23];
    [(UIView *)self->_backgroundTintView setBackgroundColor:backgroundTintColor];
    view = [(SBActivityBannerViewController *)self view];
    [view addSubview:self->_backgroundTintView];

    view2 = [(SBActivityBannerViewController *)self view];
    [view2 sendSubviewToBack:self->_backgroundTintView];
  }

  if (v13)
  {
    v29 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0];
    glassView = self->_glassView;
    self->_glassView = v29;

    if (backgroundTintColor && [(SBActivityBannerViewController *)self _shouldHaveBackgroundTint])
    {
      [(_UIViewGlass *)self->_glassView setTintColor:backgroundTintColor];
    }

    else if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
    {
      v31 = self->_glassView;
      v32 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.9];
      [(_UIViewGlass *)v31 setTintColor:v32];
    }

    customContentView2 = [(PLPlatterView *)self->_platterView customContentView];
    [customContentView2 _setBackground:self->_glassView];
  }

  view3 = [(SBActivityBannerViewController *)self view];
  [view3 addSubview:self->_platterView];

  view4 = [(SBActivityBannerViewController *)self view];
  [view4 sendSubviewToBack:self->_platterView];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBActivityBannerViewController;
  [(SBActivityViewController *)&v3 viewWillLayoutSubviews];
  [(SBActivityBannerViewController *)self _layoutSubviews];
}

- (void)_layoutSubviews
{
  view = [(SBActivityBannerViewController *)self view];
  [view bounds];
  v5 = v4;

  [(SBActivityViewController *)self preferredActivityContentSize];
  v8 = v7;
  v9 = fmax(v5 - v6, 0.0) * 0.5;
  if (v6 < v5)
  {
    v5 = v6;
  }

  [(PLPlatterView *)self->_platterView setFrame:v9, 0.0, v5, v7];
  if (![(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    traitCollection = [(SBActivityBannerViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:userInterfaceStyle];
  }

  if ([(SBActivityBannerViewController *)self _shouldHaveBackgroundTint])
  {
    activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
    backgroundTintColor = [activityHostViewController backgroundTintColor];

    if ([(SBActivityBannerViewController *)self _shouldSetDefaultBackground])
    {
      traitCollection2 = [(SBActivityBannerViewController *)self traitCollection];
      v15 = -[SBActivityBannerViewController _backgroundTintColorForUserInterfaceStyle:](self, "_backgroundTintColorForUserInterfaceStyle:", [traitCollection2 userInterfaceStyle]);

      backgroundTintColor = v15;
    }

    if (_UISolariumEnabled())
    {
      tintColor = [(_UIViewGlass *)self->_glassView tintColor];

      if (tintColor != backgroundTintColor)
      {
        [(_UIViewGlass *)self->_glassView setTintColor:backgroundTintColor];
        customContentView = [(PLPlatterView *)self->_platterView customContentView];
        [customContentView _setBackground:self->_glassView];
      }
    }

    else
    {
      backgroundTintView = self->_backgroundTintView;
      if (!backgroundTintView)
      {
        v19 = objc_alloc_init(MEMORY[0x277D75D18]);
        v20 = self->_backgroundTintView;
        self->_backgroundTintView = v19;

        view2 = [(SBActivityBannerViewController *)self view];
        [view2 addSubview:self->_backgroundTintView];

        view3 = [(SBActivityBannerViewController *)self view];
        [view3 sendSubviewToBack:self->_backgroundTintView];

        [(UIView *)self->_backgroundTintView bringSubviewToFront:self->_platterView];
        backgroundTintView = self->_backgroundTintView;
      }

      [(UIView *)backgroundTintView setBackgroundColor:backgroundTintColor];
      [(UIView *)self->_backgroundTintView setBounds:v9, 0.0, v5, v8];
      [(UIView *)self->_backgroundTintView setFrame:v9, 0.0, v5, v8];
    }
  }

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated]|| [(SBActivityBannerViewController *)self _shouldShowSystemApertureUI])
  {
    [(PLPlatterView *)self->_platterView bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    view4 = [(SBActivityBannerViewController *)self view];
    [view4 setBounds:{v24, v26, v28, v30}];

    view5 = [(SBActivityBannerViewController *)self view];
    [view5 setClipsToBounds:1];

    v33 = v30 * 0.5;
    if (v28 * 0.5 < v30 * 0.5)
    {
      v33 = v28 * 0.5;
    }

    v34 = fmin(v33, 44.0);
    defaultMetrics = [MEMORY[0x277D67D08] defaultMetrics];
    lockScreenMetrics = [defaultMetrics lockScreenMetrics];
    [lockScreenMetrics cornerRadius];
    v38 = v37;

    view6 = [(SBActivityBannerViewController *)self view];
    if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
    {
      v40 = v34;
    }

    else
    {
      v40 = v38;
    }

    [view6 _setContinuousCornerRadius:v40];

    platterView = self->_platterView;
    if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
    {
      v42 = v34;
    }

    else
    {
      v42 = v38;
    }

    [(PLPlatterView *)platterView _setContinuousCornerRadius:v42];
  }
}

- (BOOL)_hasBackgroundTintColor
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    return 0;
  }

  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  backgroundTintColor = [activityHostViewController backgroundTintColor];
  v3 = backgroundTintColor != 0;

  return v3;
}

- (BOOL)_shouldSetDefaultBackground
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated]|| [(SBActivityBannerViewController *)self _hasBackgroundTintColor])
  {
    return 0;
  }

  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  v3 = [descriptor contentType] == 0;

  return v3;
}

- (BOOL)_shouldHaveBackgroundTint
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    return 0;
  }

  if ([(SBActivityBannerViewController *)self _hasBackgroundTintColor])
  {
    return 1;
  }

  return [(SBActivityBannerViewController *)self _shouldSetDefaultBackground];
}

- (BOOL)_isActionButtonInitiated
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];

  presentationOptions = [descriptor presentationOptions];
  isActionButtonInitiated = [presentationOptions isActionButtonInitiated];

  return isActionButtonInitiated;
}

- (BOOL)_shouldShowSystemApertureUI
{
  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];

  presentationOptions = [descriptor presentationOptions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    presentationOptions2 = [descriptor presentationOptions];
    shouldShowSystemAperture = [presentationOptions2 shouldShowSystemAperture];
  }

  else
  {
    shouldShowSystemAperture = 0;
  }

  return shouldShowSystemAperture;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    activityHostViewController2 = [(SBActivityViewController *)self activityHostViewController];
    [activityHostViewController2 setSceneDeactivationReasons:0];
  }
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(SBActivityBannerViewController *)self _updateAppStatusBarSettingsAssertion];

    [(SBActivityBannerViewController *)self _extendDismissalTimer];
  }
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  if ([reason isEqualToString:*MEMORY[0x277CF0A50]])
  {
    activityHostViewController = [(SBActivityViewController *)self activityHostViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      activityHostViewController2 = [(SBActivityViewController *)self activityHostViewController];
      [activityHostViewController2 setSceneDeactivationReasons:64];
    }
  }

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(NSTimer *)self->_dismissalTimer invalidate];
    dismissalTimer = self->_dismissalTimer;
    self->_dismissalTimer = 0;

    bannerDelegate = [(SBActivityBannerViewController *)self bannerDelegate];
    if (objc_opt_respondsToSelector())
    {
      _activityIdentifier = [(SBActivityBannerViewController *)self _activityIdentifier];
      [bannerDelegate activityBannerWillDisappear:self activityIdentifier:_activityIdentifier];
    }
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SBActivityBannerViewController *)self bannerDelegate:banner];
  if (objc_opt_respondsToSelector())
  {
    _activityIdentifier = [(SBActivityBannerViewController *)self _activityIdentifier];
    [v5 activityBannerDidDisappear:self activityIdentifier:_activityIdentifier];
  }

  activityItem = [(SBActivityViewController *)self activityItem];
  descriptor = [activityItem descriptor];
  isMomentary = [descriptor isMomentary];

  if (isMomentary)
  {
    activityItem2 = [(SBActivityViewController *)self activityItem];
    identifier = [activityItem2 identifier];

    v12 = SBLogActivity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = identifier;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] banner dismissed but is momentary so ending activity", &v14, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x277CB98A0]);
    [v13 endActivity:identifier];
  }

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(SBActivityBannerViewController *)self _updateAppStatusBarSettingsAssertion];
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SBActivityBannerViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(SBActivityBannerViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBActivityBannerViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(SBActivityBannerViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    observerCopy = v8;
  }
}

- (void)removePresentableObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = SBActivityBannerViewController;
  [(SBActivityViewController *)&v6 activityHostViewControllerBackgroundTintColorDidChange:change];
  view = [(SBActivityBannerViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SBActivityBannerViewController *)self view];
  [view2 layoutIfNeeded];
}

- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  if ([(SBActivityBannerViewController *)self _hasBackgroundTintColor])
  {
    activityHostViewController = [selfCopy activityHostViewController];
    selfCopy = [activityHostViewController backgroundTintColor];

    goto LABEL_9;
  }

  if (!style || style == 2)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    if (style != 1)
    {
      goto LABEL_9;
    }

    systemBlackColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  selfCopy = systemBlackColor;
LABEL_9:

  return selfCopy;
}

- (void)userInterfaceStyleChangedForEnvironment:(id)environment previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(SBActivityBannerViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  userInterfaceStyle2 = [collectionCopy userInterfaceStyle];
  if (userInterfaceStyle2 != userInterfaceStyle)
  {
    view = [(SBActivityBannerViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_updateAppStatusBarSettingsAssertion
{
  preferredBackgroundActivitiesToSuppress = [(SBActivityBannerViewController *)self preferredBackgroundActivitiesToSuppress];
  if ([preferredBackgroundActivitiesToSuppress count] && -[SBActivityBannerViewController bs_isAppearingOrAppeared](self, "bs_isAppearingOrAppeared"))
  {
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    statusBarManager = [_sbWindowScene statusBarManager];
    assertionManager = [statusBarManager assertionManager];

    v6 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v6 setBackgroundActivitiesToSuppress:preferredBackgroundActivitiesToSuppress];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [assertionManager newSettingsAssertionWithSettings:v6 atLevel:8 reason:v8];
    appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = v9;

    v11 = self->_appStatusBarSettingsAssertion;
    initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v11 acquireWithAnimationParameters:initWithDefaultParameters];
  }

  else
  {
    v13 = self->_appStatusBarSettingsAssertion;
    if (!v13)
    {
      goto LABEL_7;
    }

    initWithDefaultParameters2 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v13 invalidateWithAnimationParameters:initWithDefaultParameters2];

    assertionManager = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = 0;
  }

LABEL_7:
}

- (void)_dismiss
{
  bannerDelegate = [(SBActivityBannerViewController *)self bannerDelegate];
  if (objc_opt_respondsToSelector())
  {
    _activityIdentifier = [(SBActivityBannerViewController *)self _activityIdentifier];
    [bannerDelegate activityBannerWantsToBeDismissed:self activityIdentifier:_activityIdentifier];
  }
}

- (void)_extendDismissalTimer
{
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;

  if (!self->_dismissalTimer)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277CBEBB8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SBActivityBannerViewController__extendDismissalTimer__block_invoke;
    v7[3] = &unk_2783AA438;
    objc_copyWeak(&v8, &location);
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:8.0];
    v6 = self->_dismissalTimer;
    self->_dismissalTimer = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __55__SBActivityBannerViewController__extendDismissalTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
  [v3 invalidate];

  [WeakRetained setDismissalTimer:0];
}

- (SBActivityBannerViewControllerDelegate)bannerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_bannerDelegate);

  return WeakRetained;
}

@end