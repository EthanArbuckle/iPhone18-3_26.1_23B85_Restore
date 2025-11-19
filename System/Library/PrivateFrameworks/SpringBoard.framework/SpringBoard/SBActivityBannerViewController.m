@interface SBActivityBannerViewController
- (BOOL)_canShowWhileLocked;
- (BOOL)_hasBackgroundTintColor;
- (BOOL)_isActionButtonInitiated;
- (BOOL)_shouldHaveBackgroundTint;
- (BOOL)_shouldSetDefaultBackground;
- (BOOL)_shouldShowSystemApertureUI;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBActivityBannerViewControllerDelegate)bannerDelegate;
- (id)_activityIdentifier;
- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)a3;
- (void)_dismiss;
- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4;
- (void)_extendDismissalTimer;
- (void)_layoutSubviews;
- (void)_updateAppStatusBarSettingsAssertion;
- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3;
- (void)addPresentableObserver:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)removePresentableObserver:(id)a3;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)userInterfaceStyleChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SBActivityBannerViewController

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(SBActivityViewController *)self activityItem];
  v5 = [v4 descriptor];
  v6 = [v5 platterTargetBundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.VoiceMemos"];

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
  v3 = [(SBActivityViewController *)self activityItem];
  v4 = [v3 descriptor];

  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [v4 platterTargetBundleIdentifier];
  v7 = [(SBActivityBannerViewController *)self _activityIdentifier];
  v8 = [v5 initWithFormat:@"%@.%@", v6, v7];

  return v8;
}

- (id)_activityIdentifier
{
  v2 = [(SBActivityViewController *)self activityItem];
  v3 = [v2 descriptor];
  v4 = [v3 activityIdentifier];

  return v4;
}

- (BOOL)_canShowWhileLocked
{
  v2 = [(SBActivityViewController *)self activityItem];
  v3 = [v2 descriptor];
  v4 = [v3 presentationOptions];
  v5 = [v4 shouldSuppressAlertContentOnLockScreen];

  return v5 ^ 1;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  width = a4.width;
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated:a3.width]|| [(SBActivityBannerViewController *)self _shouldShowSystemApertureUI])
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

  v5 = [(SBActivityViewController *)self activityHostViewController];
  v6 = [v5 backgroundTintColor];

  if ([(SBActivityBannerViewController *)self _shouldSetDefaultBackground])
  {
    v7 = [(SBActivityBannerViewController *)self traitCollection];
    v8 = -[SBActivityBannerViewController _backgroundTintColorForUserInterfaceStyle:](self, "_backgroundTintColorForUserInterfaceStyle:", [v7 userInterfaceStyle]);

    v6 = v8;
  }

  if (v6)
  {
    v9 = 22;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(SBActivityBannerViewController *)self traitCollection];
  v11 = [v10 userInterfaceStyle];

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    v12 = @"SBSystemActionSimplePreviewMaterialGroup";
    v9 = 54;
    v11 = 2;
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
  [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:v11];
  [(SBActivityBannerViewController *)self setMaterialGroupNameBase:v12];
  [(PLPlatterView *)self->_platterView setHasShadow:v13 ^ 1u];
  v18 = [(SBActivityViewController *)self activityHostViewController];
  v19 = [v18 activitySceneDescriptor];

  v20 = [v19 metricsRequest];
  v21 = [v20 lockScreenMetrics];
  [v21 cornerRadius];
  v23 = v22;

  [(PLPlatterView *)self->_platterView _setContinuousCornerRadius:v23];
  v24 = [(PLPlatterView *)self->_platterView customContentView];
  [v24 _setContinuousCornerRadius:v23];

  if ([(SBActivityBannerViewController *)self _shouldHaveBackgroundTint]&& (v13 & 1) == 0)
  {
    v25 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundTintView = self->_backgroundTintView;
    self->_backgroundTintView = v25;

    [(UIView *)self->_backgroundTintView _setContinuousCornerRadius:v23];
    [(UIView *)self->_backgroundTintView setBackgroundColor:v6];
    v27 = [(SBActivityBannerViewController *)self view];
    [v27 addSubview:self->_backgroundTintView];

    v28 = [(SBActivityBannerViewController *)self view];
    [v28 sendSubviewToBack:self->_backgroundTintView];
  }

  if (v13)
  {
    v29 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0];
    glassView = self->_glassView;
    self->_glassView = v29;

    if (v6 && [(SBActivityBannerViewController *)self _shouldHaveBackgroundTint])
    {
      [(_UIViewGlass *)self->_glassView setTintColor:v6];
    }

    else if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
    {
      v31 = self->_glassView;
      v32 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.9];
      [(_UIViewGlass *)v31 setTintColor:v32];
    }

    v33 = [(PLPlatterView *)self->_platterView customContentView];
    [v33 _setBackground:self->_glassView];
  }

  v34 = [(SBActivityBannerViewController *)self view];
  [v34 addSubview:self->_platterView];

  v35 = [(SBActivityBannerViewController *)self view];
  [v35 sendSubviewToBack:self->_platterView];
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
  v3 = [(SBActivityBannerViewController *)self view];
  [v3 bounds];
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
    v10 = [(SBActivityBannerViewController *)self traitCollection];
    v11 = [v10 userInterfaceStyle];

    [(PLPlatterView *)self->_platterView setOverrideUserInterfaceStyle:v11];
  }

  if ([(SBActivityBannerViewController *)self _shouldHaveBackgroundTint])
  {
    v12 = [(SBActivityViewController *)self activityHostViewController];
    v13 = [v12 backgroundTintColor];

    if ([(SBActivityBannerViewController *)self _shouldSetDefaultBackground])
    {
      v14 = [(SBActivityBannerViewController *)self traitCollection];
      v15 = -[SBActivityBannerViewController _backgroundTintColorForUserInterfaceStyle:](self, "_backgroundTintColorForUserInterfaceStyle:", [v14 userInterfaceStyle]);

      v13 = v15;
    }

    if (_UISolariumEnabled())
    {
      v16 = [(_UIViewGlass *)self->_glassView tintColor];

      if (v16 != v13)
      {
        [(_UIViewGlass *)self->_glassView setTintColor:v13];
        v17 = [(PLPlatterView *)self->_platterView customContentView];
        [v17 _setBackground:self->_glassView];
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

        v21 = [(SBActivityBannerViewController *)self view];
        [v21 addSubview:self->_backgroundTintView];

        v22 = [(SBActivityBannerViewController *)self view];
        [v22 sendSubviewToBack:self->_backgroundTintView];

        [(UIView *)self->_backgroundTintView bringSubviewToFront:self->_platterView];
        backgroundTintView = self->_backgroundTintView;
      }

      [(UIView *)backgroundTintView setBackgroundColor:v13];
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
    v31 = [(SBActivityBannerViewController *)self view];
    [v31 setBounds:{v24, v26, v28, v30}];

    v32 = [(SBActivityBannerViewController *)self view];
    [v32 setClipsToBounds:1];

    v33 = v30 * 0.5;
    if (v28 * 0.5 < v30 * 0.5)
    {
      v33 = v28 * 0.5;
    }

    v34 = fmin(v33, 44.0);
    v35 = [MEMORY[0x277D67D08] defaultMetrics];
    v36 = [v35 lockScreenMetrics];
    [v36 cornerRadius];
    v38 = v37;

    v39 = [(SBActivityBannerViewController *)self view];
    if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
    {
      v40 = v34;
    }

    else
    {
      v40 = v38;
    }

    [v39 _setContinuousCornerRadius:v40];

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

  v4 = [(SBActivityViewController *)self activityHostViewController];
  v5 = [v4 backgroundTintColor];
  v3 = v5 != 0;

  return v3;
}

- (BOOL)_shouldSetDefaultBackground
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated]|| [(SBActivityBannerViewController *)self _hasBackgroundTintColor])
  {
    return 0;
  }

  v4 = [(SBActivityViewController *)self activityItem];
  v5 = [v4 descriptor];
  v3 = [v5 contentType] == 0;

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
  v2 = [(SBActivityViewController *)self activityItem];
  v3 = [v2 descriptor];

  v4 = [v3 presentationOptions];
  v5 = [v4 isActionButtonInitiated];

  return v5;
}

- (BOOL)_shouldShowSystemApertureUI
{
  v2 = [(SBActivityViewController *)self activityItem];
  v3 = [v2 descriptor];

  v4 = [v3 presentationOptions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v3 presentationOptions];
    v7 = [v6 shouldShowSystemAperture];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v4 = [(SBActivityViewController *)self activityHostViewController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SBActivityViewController *)self activityHostViewController];
    [v6 setSceneDeactivationReasons:0];
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(SBActivityBannerViewController *)self _updateAppStatusBarSettingsAssertion];

    [(SBActivityBannerViewController *)self _extendDismissalTimer];
  }
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  if ([a4 isEqualToString:*MEMORY[0x277CF0A50]])
  {
    v5 = [(SBActivityViewController *)self activityHostViewController];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SBActivityViewController *)self activityHostViewController];
      [v7 setSceneDeactivationReasons:64];
    }
  }

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(NSTimer *)self->_dismissalTimer invalidate];
    dismissalTimer = self->_dismissalTimer;
    self->_dismissalTimer = 0;

    v10 = [(SBActivityBannerViewController *)self bannerDelegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(SBActivityBannerViewController *)self _activityIdentifier];
      [v10 activityBannerWillDisappear:self activityIdentifier:v9];
    }
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SBActivityBannerViewController *)self bannerDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBActivityBannerViewController *)self _activityIdentifier];
    [v5 activityBannerDidDisappear:self activityIdentifier:v6];
  }

  v7 = [(SBActivityViewController *)self activityItem];
  v8 = [v7 descriptor];
  v9 = [v8 isMomentary];

  if (v9)
  {
    v10 = [(SBActivityViewController *)self activityItem];
    v11 = [v10 identifier];

    v12 = SBLogActivity();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] banner dismissed but is momentary so ending activity", &v14, 0xCu);
    }

    v13 = objc_alloc_init(MEMORY[0x277CB98A0]);
    [v13 endActivity:v11];
  }

  if ([(SBActivityBannerViewController *)self _isActionButtonInitiated])
  {
    [(SBActivityBannerViewController *)self _updateAppStatusBarSettingsAssertion];
  }
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SBActivityBannerViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = v4;
  v5 = v4;
  [(SBActivityBannerViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBActivityBannerViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_2783AD8E0;
  v7 = v4;
  v5 = v4;
  [(SBActivityBannerViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removePresentableObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_enumerateObserversRespondingToSelector:(SEL)a3 usingBlock:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5 && [(NSHashTable *)self->_observers count])
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
            v5[2](v5, v11);
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

- (void)activityHostViewControllerBackgroundTintColorDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBActivityBannerViewController;
  [(SBActivityViewController *)&v6 activityHostViewControllerBackgroundTintColorDidChange:a3];
  v4 = [(SBActivityBannerViewController *)self view];
  [v4 setNeedsLayout];

  v5 = [(SBActivityBannerViewController *)self view];
  [v5 layoutIfNeeded];
}

- (id)_backgroundTintColorForUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  if ([(SBActivityBannerViewController *)self _hasBackgroundTintColor])
  {
    v5 = [v4 activityHostViewController];
    v4 = [v5 backgroundTintColor];

    goto LABEL_9;
  }

  if (!a3 || a3 == 2)
  {
    v6 = [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_9;
    }

    v6 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  v4 = v6;
LABEL_9:

  return v4;
}

- (void)userInterfaceStyleChangedForEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [(SBActivityBannerViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  v8 = [v5 userInterfaceStyle];
  if (v8 != v7)
  {
    v9 = [(SBActivityBannerViewController *)self view];
    [v9 setNeedsLayout];
  }
}

- (void)_updateAppStatusBarSettingsAssertion
{
  v15 = [(SBActivityBannerViewController *)self preferredBackgroundActivitiesToSuppress];
  if ([v15 count] && -[SBActivityBannerViewController bs_isAppearingOrAppeared](self, "bs_isAppearingOrAppeared"))
  {
    v3 = [(UIViewController *)self _sbWindowScene];
    v4 = [v3 statusBarManager];
    v5 = [v4 assertionManager];

    v6 = objc_alloc_init(SBMutableStatusBarSettings);
    [(SBMutableStatusBarSettings *)v6 setBackgroundActivitiesToSuppress:v15];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 newSettingsAssertionWithSettings:v6 atLevel:8 reason:v8];
    appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = v9;

    v11 = self->_appStatusBarSettingsAssertion;
    v12 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v11 acquireWithAnimationParameters:v12];
  }

  else
  {
    v13 = self->_appStatusBarSettingsAssertion;
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v13 invalidateWithAnimationParameters:v14];

    v5 = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = 0;
  }

LABEL_7:
}

- (void)_dismiss
{
  v4 = [(SBActivityBannerViewController *)self bannerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SBActivityBannerViewController *)self _activityIdentifier];
    [v4 activityBannerWantsToBeDismissed:self activityIdentifier:v3];
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