@interface SBDashBoardSetupView
- (SBDashBoardSetupView)initWithFrame:(CGRect)a3 usingHomeAffordance:(BOOL)a4 coverSheetContext:(id)a5 isStoreRestricted:(BOOL)a6 isSecurityResearchDevice:(BOOL)a7;
- (SBSolariumCursiveTextAnimationDelegate)glassCursiveTextAnimationDelegate;
- (double)setTitleString:(id)a3 forLanguage:(id)a4;
- (id)_titleView;
- (void)_addActivationLockLabels;
- (void)_addHomeAffordanceCallToAction;
- (void)_addHomeAffordanceForCoverSheetContext:(id)a3;
- (void)_addHomeButtonCallToAction;
- (void)_addInfoButton;
- (void)_addResetAnimationForKeyPath:(id)a3 onLayer:(id)a4 dispatchGroup:(id)a5;
- (void)_addSecurityResearchLabels;
- (void)_addStoreRestrictedLabels;
- (void)_addTitleLabel;
- (void)_adjustTitleVisibilityForInfoViews;
- (void)_animateCursiveForTimePassed;
- (void)_animateHomeAffordanceCallToActionToActive:(BOOL)a3 withDispatchGroup:(id)a4;
- (void)_animateHomeAffordanceToActive:(BOOL)a3 withDispatchGroup:(id)a4;
- (void)_animateHomeButtonCallToActionToActive:(BOOL)a3 withDispatchGroup:(id)a4;
- (void)_animateView:(id)a3 toActive:(BOOL)a4 withDispatchGroup:(id)a5;
- (void)_createDisplayLink;
- (void)_layoutActivationInfoView;
- (void)_layoutHomeAffordance;
- (void)_layoutHomeAffordanceCallToAction;
- (void)_layoutHomeButtonCallToAction;
- (void)_layoutRegulatoryInfo;
- (void)_onDisplayLink:(id)a3;
- (void)_removeDisplayLink;
- (void)_removeNormalAnimationForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_removeResetAnimationForKeyPath:(id)a3 onLayer:(id)a4;
- (void)_setupActivationInfoConstraintsIfNeeded;
- (void)_setupConstraints;
- (void)_startupDidFinish:(id)a3;
- (void)_updateBaselineAndChildIconConstraints;
- (void)_updateHelloVisibility;
- (void)_updateLegibilitySettings;
- (void)animateComponents:(unint64_t)a3 toActive:(BOOL)a4 withCompletion:(id)a5;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareSolariumCursiveTextViewWithDelegate:(id)a3 completion:(id)a4;
- (void)setActivationInfoView:(id)a3;
- (void)setActivationLockWarningString:(id)a3 detailString:(id)a4 forLanguage:(id)a5;
- (void)setActivationLocked:(BOOL)a3;
- (void)setCallToActionString:(id)a3 forLanguage:(id)a4;
- (void)setChildIconView:(id)a3;
- (void)setChildIconVisible:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5;
- (void)setInfoButtonVisible:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5;
- (void)setLegibilitySettings:(id)a3;
- (void)setRegulatoryInfoView:(id)a3;
- (void)setStoreRestrictedStrings:(id)a3 bodyString:(id)a4 linkString:(id)a5 forLanguage:(id)a6;
- (void)setSuppressingAllElements:(BOOL)a3;
@end

@implementation SBDashBoardSetupView

- (SBDashBoardSetupView)initWithFrame:(CGRect)a3 usingHomeAffordance:(BOOL)a4 coverSheetContext:(id)a5 isStoreRestricted:(BOOL)a6 isSecurityResearchDevice:(BOOL)a7
{
  v9 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = SBDashBoardSetupView;
  v16 = [(SBDashBoardSetupView *)&v21 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    v16->_isStoreRestricted = a6;
    v16->_isSecurityResearchDevice = a7;
    v16->_customDelayDuration = 4.0;
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v17 selector:sel__startupDidFinish_ name:@"SBStartupDidCompleteNotification" object:0];

    v19 = [MEMORY[0x277D75348] clearColor];
    [(SBDashBoardSetupView *)v17 setBackgroundColor:v19];

    if (a7)
    {
      [(SBDashBoardSetupView *)v17 _addSecurityResearchLabels];
    }

    else if (![(SBDashBoardSetupView *)v17 _actsLikeStoreRestricted])
    {
      if ((BYSetupAssistantHasCompletedInitialRun() & 1) == 0)
      {
        [(SBDashBoardSetupView *)v17 _addActivationLockLabels];
      }

      [(SBDashBoardSetupView *)v17 _addTitleLabel];
    }

    [(SBDashBoardSetupView *)v17 _addInfoButton];
    if ([(SBDashBoardSetupView *)v17 _actsLikeStoreRestricted])
    {
      [(SBDashBoardSetupView *)v17 _addStoreRestrictedLabels];
    }

    else if (v9)
    {
      [(SBDashBoardSetupView *)v17 _addHomeAffordanceCallToAction];
      [(SBDashBoardSetupView *)v17 _addHomeAffordanceForCoverSheetContext:v15];
    }

    else
    {
      [(SBDashBoardSetupView *)v17 _addHomeButtonCallToAction];
    }

    [(SBDashBoardSetupView *)v17 _setupConstraints];
  }

  return v17;
}

- (void)dealloc
{
  homeButtonCallToActionTimer = self->_homeButtonCallToActionTimer;
  if (homeButtonCallToActionTimer)
  {
    dispatch_source_cancel(homeButtonCallToActionTimer);
    v4 = self->_homeButtonCallToActionTimer;
    self->_homeButtonCallToActionTimer = 0;
  }

  [(SASCaptureSessionTextureDataSource *)self->_glassTextureDataSource invalidate];
  glassTextureDataSource = self->_glassTextureDataSource;
  self->_glassTextureDataSource = 0;

  v6.receiver = self;
  v6.super_class = SBDashBoardSetupView;
  [(SBDashBoardSetupView *)&v6 dealloc];
}

- (void)setActivationInfoView:(id)a3
{
  v5 = a3;
  if (self->_activationInfoView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_activationInfoView, a3);
    [(SBDashBoardSetupView *)self _adjustTitleVisibilityForInfoViews];
    activationInfoViewConstraints = self->_activationInfoViewConstraints;
    self->_activationInfoViewConstraints = 0;

    [(SBDashBoardSetupView *)self _setupActivationInfoConstraintsIfNeeded];
    v5 = v7;
  }
}

- (void)setRegulatoryInfoView:(id)a3
{
  v5 = a3;
  if (self->_regulatoryInfoView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_regulatoryInfoView, a3);
    if (self->_regulatoryInfoView)
    {
      suppressingElements = 1;
    }

    else
    {
      suppressingElements = self->_suppressingElements;
    }

    [(UIView *)self->_activationInfoView setHidden:suppressingElements];
    [(SBDashBoardSetupView *)self _adjustTitleVisibilityForInfoViews];
    v5 = v7;
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBDashBoardSetupView *)self _updateLegibilitySettings];
  }
}

- (void)prepareSolariumCursiveTextViewWithDelegate:(id)a3 completion:(id)a4
{
  v44[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_glassCursiveTextViewProvider || (WeakRetained = objc_loadWeakRetained(&self->_glassCursiveTextAnimationDelegate), WeakRetained, WeakRetained))
  {
    if (v7)
    {
      v7[2](v7, 1);
    }
  }

  else
  {
    objc_storeWeak(&self->_glassCursiveTextAnimationDelegate, v6);
    objc_initWeak(&location, self);
    v9 = objc_alloc(MEMORY[0x277D4DA78]);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke;
    v41[3] = &unk_2783C2090;
    objc_copyWeak(&v42, &location);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_2;
    v39[3] = &unk_2783C20B8;
    objc_copyWeak(&v40, &location);
    v32 = [v9 initOnAnimationWillBegin:v41 onAnimationDidFinish:v39];
    v10 = objc_alloc(MEMORY[0x277D4DA80]);
    v11 = [v6 glassCursiveTextLanguages];
    v12 = [v10 initWithBookendType:0 firstLanguagesToDisplay:v11 callbacks:v32];
    glassCursiveTextViewProvider = self->_glassCursiveTextViewProvider;
    self->_glassCursiveTextViewProvider = v12;

    v33 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
    [v33 setAlpha:0.0];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBDashBoardSetupView *)self insertSubview:v33 atIndex:0];
    v24 = MEMORY[0x277CCAAD0];
    v31 = [v33 leadingAnchor];
    v30 = [(SBDashBoardSetupView *)self leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v44[0] = v29;
    v28 = [v33 trailingAnchor];
    v27 = [(SBDashBoardSetupView *)self trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v44[1] = v26;
    v25 = [v33 topAnchor];
    v14 = [(SBDashBoardSetupView *)self topAnchor];
    v15 = [v25 constraintEqualToAnchor:v14];
    v44[2] = v15;
    v16 = [v33 heightAnchor];
    v17 = [(SBDashBoardSetupView *)self heightAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v44[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [v24 activateConstraints:v19];

    v20 = SBLogDashBoard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Setting Texure based data source", buf, 2u);
    }

    v21 = objc_alloc_init(MEMORY[0x277D4DA88]);
    glassTextureDataSource = self->_glassTextureDataSource;
    self->_glassTextureDataSource = v21;

    v23 = self->_glassTextureDataSource;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_19;
    v36[3] = &unk_2783C20E0;
    objc_copyWeak(&v37, &location);
    [(SASCaptureSessionTextureDataSource *)v23 setOnReadyBlock:v36];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_2_21;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v35, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    if (v7)
    {
      v7[2](v7, [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider willAnimateWithLogo]^ 1);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }
}

void __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained _hasSuppressingUI] & 1) == 0)
  {
    [v8 animationDuration];
    v4[77] = v5;
    v6 = [v4 glassCursiveTextAnimationDelegate];
    v7 = [v8 language];
    [v8 animationDuration];
    [v6 animationWillBeginForLanguage:v7 animationDuration:?];
  }
}

void __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained _hasSuppressingUI] & 1) == 0)
  {
    v5 = [v11 nextAnimationData];
    v6 = v5;
    if (v5)
    {
      [v5 animationDuration];
      v4[77] = v7;
    }

    v8 = v4[73];
    v9 = [v4 glassCursiveTextAnimationDelegate];
    v10 = [v9 glassCursiveTextLanguages];
    [v8 updateLanguages:v10];
  }
}

void __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[73] shouldRenderBackgroundTexture:0];
    [v4[73] setBackgroundTextureDataSource:v5];
    [v4[75] setOnReadyBlock:0];
  }
}

void __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_2_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[SBWallpaperController sharedInstance];
    [v2 addWallpaperUnlockProgressObserver:WeakRetained];
    v3 = [v2 wallpaperWindow];
    v4 = SBLogDashBoard();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Setting bookend window for projection", v7, 2u);
      }

      v6 = [v3 rootViewController];
      v5 = [v6 view];

      [WeakRetained[75] captureView:v5];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__SBDashBoardSetupView_prepareSolariumCursiveTextViewWithDelegate_completion___block_invoke_2_21_cold_1(v5);
    }
  }
}

- (void)setSuppressingAllElements:(BOOL)a3
{
  if (self->_suppressingElements != a3)
  {
    v4 = a3;
    self->_suppressingElements = a3;
    [(SBDashBoardSetupView *)self setNeedsLayout];
    [(SBDashBoardSetupView *)self _adjustTitleVisibilityForInfoViews];
    [(SBDashBoardSetupView *)self setInfoButtonVisible:!v4 animated:1 withDelay:0.0];

    [(SBDashBoardSetupView *)self setChildIconVisible:!v4 animated:1 withDelay:0.0];
  }
}

- (double)setTitleString:(id)a3 forLanguage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  if ([v6 length] && !+[SBSolariumCursiveTextAvailability isFeatureEnabled](SBSolariumCursiveTextAvailability, "isFeatureEnabled"))
  {
    if (_os_feature_enabled_impl())
    {
      objc_storeStrong(&self->_currentLanguage, a4);
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 URLForResource:@"CursiveHello" withExtension:@"plist" subdirectory:0 localization:v7];

      cursiveTextView = self->_cursiveTextView;
      if (__sb__runningInSpringBoard())
      {
        v12 = SBFEffectiveDeviceClass();
        v13 = 64.0;
        if (v12 == 2)
        {
          v13 = 106.0;
        }

        [(SBCursiveTextView *)cursiveTextView loadText:v10 pointSize:v13];
      }

      else
      {
        v15 = [MEMORY[0x277D75418] currentDevice];
        v16 = [v15 userInterfaceIdiom];
        v17 = 64.0;
        if (v16 == 1)
        {
          v17 = 106.0;
        }

        [(SBCursiveTextView *)cursiveTextView loadText:v10 pointSize:v17];
      }

      [(SBCursiveTextView *)self->_cursiveTextView setAccessibilityLabel:v6];
      [(SBCursiveTextView *)self->_cursiveTextView setAccessibilityLanguage:v7];
      self->_startTime = CFAbsoluteTimeGetCurrent();
      [(SBCursiveTextView *)self->_cursiveTextView duration];
      v19 = v18 + 1.0;
      if (v19 >= 4.0)
      {
        v8 = v19;
      }

      else
      {
        v8 = 4.0;
      }

      self->_customDelayDuration = v8;
      [(SBDashBoardSetupView *)self _createDisplayLink];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
      if ([v7 length])
      {
        v14 = [v10 string];
        [v10 addAttribute:@"NSLanguage" value:v7 range:{0, objc_msgSend(v14, "length")}];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v10];
    }

    [(SBDashBoardSetupView *)self setNeedsLayout];
  }

  return v8;
}

- (void)setStoreRestrictedStrings:(id)a3 bodyString:(id)a4 linkString:(id)a5 forLanguage:(id)a6
{
  v19 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v12 length])
  {
    if ([v19 length])
    {
      v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v19];
      v14 = [v13 string];
      [v13 addAttribute:@"NSLanguage" value:v12 range:{0, objc_msgSend(v14, "length")}];

      [(UILabel *)self->_storeRestrictedTitleLabel setAttributedText:v13];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }

    if ([v10 length])
    {
      v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v10];
      v16 = [v15 string];
      [v15 addAttribute:@"NSLanguage" value:v12 range:{0, objc_msgSend(v16, "length")}];

      [(UILabel *)self->_storeRestrictedBodyLabel setAttributedText:v15];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }

    if ([v11 length])
    {
      v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v11];
      v18 = [v17 string];
      [v17 addAttribute:@"NSLanguage" value:v12 range:{0, objc_msgSend(v18, "length")}];

      [(UILabel *)self->_storeRestrictedLinkLabel setAttributedText:v17];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }
  }
}

- (void)setActivationLockWarningString:(id)a3 detailString:(id)a4 forLanguage:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if ([v14 length] && objc_msgSend(v8, "length"))
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v14];
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
    if ([v9 length])
    {
      v12 = [v10 string];
      [v10 addAttribute:@"NSLanguage" value:v9 range:{0, objc_msgSend(v12, "length")}];

      v13 = [v11 string];
      [v11 addAttribute:@"NSLanguage" value:v9 range:{0, objc_msgSend(v13, "length")}];
    }

    [(UILabel *)self->_activationLockWarningLabel setAttributedText:v10];
    [(UILabel *)self->_activationLockDetailLabel setAttributedText:v11];
    [(SBDashBoardSetupView *)self setNeedsLayout];
  }
}

- (void)setCallToActionString:(id)a3 forLanguage:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 length])
  {
    if (self->_homeAffordanceCallToActionLabel)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
      if ([v6 length])
      {
        v8 = [v7 string];
        [v7 addAttribute:@"NSLanguage" value:v6 range:{0, objc_msgSend(v8, "length")}];
      }

      [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setAttributedText:v7];
    }

    else
    {
      [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setText:v9 forLanguage:v6 animated:0];
    }

    [(SBDashBoardSetupView *)self setNeedsLayout];
  }
}

- (void)setInfoButtonVisible:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [(UIButton *)self->_infoButton layer];
  if (v9)
  {
    v21 = v9;
    v10 = [v9 presentationLayer];
    [v10 opacity];
    v12 = v11;

    v14 = 0.0;
    if (v7)
    {
      v13 = 1.0;
      if (self->_suppressingElements)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }
    }

    *&v13 = v14;
    [v21 setOpacity:v13];
    v9 = v21;
    if (v6)
    {
      v15 = v12;
      if (v14 != v15)
      {
        v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v16 setBeginTime:CACurrentMediaTime() + a5];
        [v16 setDuration:1.0];
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [v16 setFromValue:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [v16 setToValue:v18];

        [v16 setFillMode:*MEMORY[0x277CDA228]];
        if (v7)
        {
          v19 = @"SBDashBoardSetupNormalAnimation";
        }

        else
        {
          v19 = @"SBDashBoardSetupResetAnimation";
        }

        v20 = [(__CFString *)v19 stringByAppendingFormat:@"-%@", @"opacity"];
        [v21 addAnimation:v16 forKey:v20];

        v9 = v21;
      }
    }
  }
}

- (void)setChildIconVisible:(BOOL)a3 animated:(BOOL)a4 withDelay:(double)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIView *)self->_childIconView layer];
  if (v8)
  {
    v20 = v8;
    v9 = [v8 presentationLayer];
    [v9 opacity];
    v11 = v10;

    HIDWORD(v12) = 0;
    v13 = v7 ? 1.0 : 0.0;
    *&v12 = v13;
    [v20 setOpacity:v12];
    v8 = v20;
    if (v6)
    {
      v14 = v11;
      if (v13 != v14)
      {
        v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v15 setBeginTime:CACurrentMediaTime() + a5];
        [v15 setDuration:1.0];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [v15 setFromValue:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v15 setToValue:v17];

        [v15 setFillMode:*MEMORY[0x277CDA228]];
        if (v7)
        {
          v18 = @"SBDashBoardSetupNormalAnimation";
        }

        else
        {
          v18 = @"SBDashBoardSetupResetAnimation";
        }

        v19 = [(__CFString *)v18 stringByAppendingFormat:@"-%@", @"opacity"];
        [v20 addAnimation:v15 forKey:v19];

        v8 = v20;
      }
    }
  }
}

- (void)setActivationLocked:(BOOL)a3
{
  if (self->_activationLocked != a3)
  {
    self->_activationLocked = a3;
    [(SBDashBoardSetupView *)self _updateHelloVisibility];
    if (self->_activationLocked && ![(SBDashBoardSetupView *)self _actsLikeStoreRestricted])
    {
      [(UILabel *)self->_titleLabel setHidden:1];
      [(UIView *)self->_childIconView setHidden:1];
      activationLockStackView = self->_activationLockStackView;
      suppressingElements = self->_suppressingElements;
    }

    else
    {
      [(UILabel *)self->_titleLabel setHidden:self->_suppressingElements];
      [(UIView *)self->_childIconView setHidden:[(SBDashBoardSetupView *)self _hasNonCursiveSuppressingUI]];
      activationLockStackView = self->_activationLockStackView;
      suppressingElements = 1;
    }

    [(UIStackView *)activationLockStackView setHidden:suppressingElements];
  }
}

- (void)setChildIconView:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_childIconView removeFromSuperview];
    objc_storeStrong(&self->_childIconView, a3);
    [(SBDashBoardSetupView *)self addSubview:v5];
    [(SBDashBoardSetupView *)self _updateBaselineAndChildIconConstraints];
    if ([(SBDashBoardSetupView *)self _hasNonCursiveSuppressingUI])
    {
      [(UIView *)self->_childIconView setHidden:1];
    }
  }
}

- (void)_startupDidFinish:(id)a3
{
  if (self->_isCursiveTitleAnimationDesired)
  {
    v8 = v3;
    v9 = v4;
    v6 = SBLogDashBoard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Glass Cursive] Startup completed, beginning pended animation", v7, 2u);
    }

    [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider startAnimation];
  }
}

- (void)animateComponents:(unint64_t)a3 toActive:(BOOL)a4 withCompletion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    v10 = dispatch_group_create();
    if (a3)
    {
      titleLabel = self->_titleLabel;
      if (titleLabel)
      {
        [(SBDashBoardSetupView *)self _animateView:titleLabel toActive:v5 withDispatchGroup:v10];
      }

      if (self->_activationLocked)
      {
        v12 = BYSetupAssistantHasCompletedInitialRun() ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = [(SBDashBoardSetupView *)self _isShowingModalTakeoverUI]| v12;
      if (self->_glassCursiveTextViewProvider)
      {
        self->_isCursiveTitleAnimationDesired = v5;
        glassCursiveTextViewProvider = self->_glassCursiveTextViewProvider;
        if (!v5)
        {
          [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider stopAnimation];
          v19 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
          [v19 setHidden:1];

          [(UIView *)self->_childIconView setHidden:1];
          v20 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
          [v20 setAlpha:0.0];

          if ((a3 & 8) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_36;
        }

        v15 = [(SBDashBoardSetupView *)self glassCursiveTextAnimationDelegate];
        v16 = [v15 glassCursiveTextLanguages];
        [(SASBookendViewProvider *)glassCursiveTextViewProvider updateLanguages:v16];

        LODWORD(v15) = [(SBDashBoardSetupView *)self _canStartGlassCursiveTitleAnimation];
        v17 = SBLogDashBoard();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v18)
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Glass Cursive] Started transition on time", buf, 2u);
          }

          [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider startAnimation];
        }

        else
        {
          if (v18)
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Glass Cursive] Pending transition for startup", buf, 2u);
          }
        }

        v21 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
        [v21 setHidden:v13 & 1];

        [(UIView *)self->_childIconView setHidden:v13 & 1];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__SBDashBoardSetupView_animateComponents_toActive_withCompletion___block_invoke;
        v22[3] = &unk_2783A8C18;
        v22[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.25];
      }

      else if (self->_cursiveTextView)
      {
        if (v5)
        {
          [(SBDashBoardSetupView *)self _animateCursiveForTimePassed];
          [(SBCursiveTextView *)self->_cursiveTextView setHidden:v13 & 1];
          [(UIView *)self->_childIconView setHidden:v13 & 1];
          [(SBDashBoardSetupView *)self _createDisplayLink];
          [(SBDashBoardSetupView *)self _animateView:self->_cursiveTextView toActive:1 withDispatchGroup:v10];
          if ((a3 & 8) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          [(SBDashBoardSetupView *)self _removeDisplayLink];
          [(SBDashBoardSetupView *)self _animateView:self->_cursiveTextView toActive:0 withDispatchGroup:v10];
          [(SBCursiveTextView *)self->_cursiveTextView setHidden:1];
          [(UIView *)self->_childIconView setHidden:1];
          if ((a3 & 8) == 0)
          {
LABEL_27:
            if ((a3 & 0x10) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_37;
          }
        }

LABEL_36:
        [(SBDashBoardSetupView *)self _animateView:self->_storeRestrictedContainer toActive:v5 withDispatchGroup:v10];
        if ((a3 & 0x10) == 0)
        {
LABEL_28:
          if ((a3 & 2) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_38;
        }

LABEL_37:
        [(SBDashBoardSetupView *)self _animateView:self->_securityResearchDeviceContainer toActive:v5 withDispatchGroup:v10];
        if ((a3 & 2) == 0)
        {
LABEL_29:
          if ((a3 & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_39;
        }

LABEL_38:
        [(SBDashBoardSetupView *)self _animateHomeButtonCallToActionToActive:v5 withDispatchGroup:v10];
        [(SBDashBoardSetupView *)self _animateHomeAffordanceCallToActionToActive:v5 withDispatchGroup:v10];
        if ((a3 & 4) == 0)
        {
LABEL_30:
          if ((a3 & 0x20) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_40;
        }

LABEL_39:
        [(SBDashBoardSetupView *)self _animateHomeAffordanceToActive:v5 withDispatchGroup:v10];
        if ((a3 & 0x20) == 0)
        {
LABEL_31:
          if (!v9)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_32:
          dispatch_group_notify(v10, MEMORY[0x277D85CD0], v9);
          goto LABEL_33;
        }

LABEL_40:
        [(SBDashBoardSetupView *)self _animateView:self->_activationLockStackView toActive:v5 withDispatchGroup:v10];
        if (!v9)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  if (v8)
  {
    (*(v8 + 2))(v8);
  }

LABEL_34:
}

void __66__SBDashBoardSetupView_animateComponents_toActive_withCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 584) view];
  [v1 setAlpha:1.0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBDashBoardSetupView;
  [(SBDashBoardSetupView *)&v13 layoutSubviews];
  [(SBDashBoardSetupView *)self _layoutRegulatoryInfo];
  [(SBDashBoardSetupView *)self _layoutActivationInfoView];
  [(SBDashBoardSetupView *)self _layoutHomeButtonCallToAction];
  [(SBDashBoardSetupView *)self _layoutHomeAffordanceCallToAction];
  [(SBDashBoardSetupView *)self _layoutHomeAffordance];
  [(SBDashBoardSetupView *)self bounds];
  homeAffordanceCallToActionLabel = self->_homeAffordanceCallToActionLabel;
  if (homeAffordanceCallToActionLabel)
  {
    [(SBUILegibilityLabel *)homeAffordanceCallToActionLabel frame];
    v6 = v5 + -33.0;
  }

  else
  {
    homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;
    if (homeButtonCallToActionLabel)
    {
      [(SBUICallToActionLabel *)homeButtonCallToActionLabel frame];
      v6 = v8;
    }

    else
    {
      v6 = v3;
    }
  }

  [(UIView *)self->_activationInfoView frame];
  v10 = v9;
  [(UIView *)self->_activationInfoView frame];
  v12 = v10 + v11 > v6;
  [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setHidden:self->_suppressingElements || v12, v10 + v11];
  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setHidden:self->_suppressingElements || v12];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = [a3 valueForKey:{@"SBDashBoardSetupDispatchGroup", a4}];
  if (v4)
  {
    v5 = v4;
    dispatch_group_leave(v4);
    v4 = v5;
  }
}

- (void)_addInfoButton
{
  v3 = [MEMORY[0x277D75220] buttonWithType:3];
  infoButton = self->_infoButton;
  self->_infoButton = v3;

  [(UIButton *)self->_infoButton setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_os_feature_enabled_impl())
  {
    v5 = self->_infoButton;
    v6 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)v5 setTintColor:v6];
  }

  [(UIButton *)self->_infoButton _setTouchInsets:-5.0, -5.0, -5.0, -5.0];
  [(UIButton *)self->_infoButton setAlpha:0.0];
  v7 = self->_infoButton;

  [(SBDashBoardSetupView *)self addSubview:v7];
}

- (void)_addTitleLabel
{
  if (!+[SBSolariumCursiveTextAvailability isFeatureEnabled])
  {
    if (_os_feature_enabled_impl())
    {
      v3 = objc_alloc_init(SBCursiveTextView);
      p_cursiveTextView = &self->_cursiveTextView;
      cursiveTextView = self->_cursiveTextView;
      self->_cursiveTextView = v3;

      v6 = self->_cursiveTextView;
      v7 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(SBCursiveTextView *)v6 setFillColor:v7];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_cursiveTextView = &self->_titleLabel;
      titleLabel = self->_titleLabel;
      self->_titleLabel = v8;

      v10 = self->_titleLabel;
      v11 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(UILabel *)v10 setTextColor:v11];

      v12 = self->_titleLabel;
      v13 = [MEMORY[0x277D74300] boldSystemFontOfSize:60.0];
      [(UILabel *)v12 setFont:v13];

      [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.5];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
    }

    [*p_cursiveTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = *p_cursiveTextView;

    [(SBDashBoardSetupView *)self addSubview:v14];
  }
}

- (void)_addStoreRestrictedLabels
{
  v71[12] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  storeRestrictedContainer = self->_storeRestrictedContainer;
  self->_storeRestrictedContainer = v3;

  [(UIView *)self->_storeRestrictedContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:3 scale:46.0];
  v70 = [v5 systemImageNamed:@"lock.fill" withConfiguration:v6];

  v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v70];
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  [v7 setTintColor:v8];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = v7;
  [(UIView *)self->_storeRestrictedContainer addSubview:v7];
  v10 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  storeRestrictedTitleLabel = self->_storeRestrictedTitleLabel;
  self->_storeRestrictedTitleLabel = v11;

  v13 = self->_storeRestrictedTitleLabel;
  v14 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v13 setColor:v14];

  v15 = self->_storeRestrictedTitleLabel;
  v16 = [v10 preferredFontForTextStyle:*MEMORY[0x277D769A8] hiFontStyle:4];
  [(UILabel *)v15 setFont:v16];

  [(UILabel *)self->_storeRestrictedTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_storeRestrictedTitleLabel setTextAlignment:1];
  [(UILabel *)self->_storeRestrictedTitleLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_storeRestrictedTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_storeRestrictedContainer addSubview:self->_storeRestrictedTitleLabel];
  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  storeRestrictedBodyLabel = self->_storeRestrictedBodyLabel;
  self->_storeRestrictedBodyLabel = v17;

  v19 = self->_storeRestrictedBodyLabel;
  v20 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v19 setColor:v20];

  v21 = self->_storeRestrictedBodyLabel;
  v22 = *MEMORY[0x277D76918];
  v69 = v10;
  v23 = [v10 preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
  [(UILabel *)v21 setFont:v23];

  [(UILabel *)self->_storeRestrictedBodyLabel setNumberOfLines:0];
  [(UILabel *)self->_storeRestrictedBodyLabel setTextAlignment:1];
  [(UILabel *)self->_storeRestrictedBodyLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_storeRestrictedBodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_storeRestrictedContainer addSubview:self->_storeRestrictedBodyLabel];
  v24 = objc_alloc_init(MEMORY[0x277D756B8]);
  storeRestrictedLinkLabel = self->_storeRestrictedLinkLabel;
  self->_storeRestrictedLinkLabel = v24;

  v26 = self->_storeRestrictedLinkLabel;
  v27 = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v26 setColor:v27];

  v28 = self->_storeRestrictedLinkLabel;
  v29 = [v10 preferredFontForTextStyle:v22 hiFontStyle:1];
  [(UILabel *)v28 setFont:v29];

  [(UILabel *)self->_storeRestrictedLinkLabel setNumberOfLines:0];
  [(UILabel *)self->_storeRestrictedLinkLabel setTextAlignment:1];
  [(UILabel *)self->_storeRestrictedLinkLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_storeRestrictedLinkLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_storeRestrictedContainer addSubview:self->_storeRestrictedLinkLabel];
  [(SBDashBoardSetupView *)self addSubview:self->_storeRestrictedContainer];
  v53 = MEMORY[0x277CCAAD0];
  v68 = [v9 centerXAnchor];
  v67 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v71[0] = v66;
  v65 = [(UIView *)self->_storeRestrictedContainer topAnchor];
  v63 = v9;
  v64 = [v9 topAnchor];
  v62 = [v65 constraintEqualToAnchor:v64];
  v71[1] = v62;
  v61 = [(UILabel *)self->_storeRestrictedTitleLabel centerXAnchor];
  v60 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v71[2] = v59;
  v58 = [(UILabel *)self->_storeRestrictedTitleLabel topAnchor];
  v57 = [v9 bottomAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:20.0];
  v71[3] = v56;
  v55 = [(UILabel *)self->_storeRestrictedBodyLabel centerXAnchor];
  v54 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v52 = [v55 constraintEqualToAnchor:v54];
  v71[4] = v52;
  v51 = [(UILabel *)self->_storeRestrictedBodyLabel topAnchor];
  v50 = [(UILabel *)self->_storeRestrictedTitleLabel bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:15.0];
  v71[5] = v49;
  v48 = [(UILabel *)self->_storeRestrictedLinkLabel centerXAnchor];
  v47 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v71[6] = v46;
  v45 = [(UILabel *)self->_storeRestrictedLinkLabel topAnchor];
  v44 = [(UILabel *)self->_storeRestrictedBodyLabel bottomAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:15.0];
  v71[7] = v43;
  v42 = [(UIView *)self->_storeRestrictedContainer bottomAnchor];
  v41 = [(UILabel *)self->_storeRestrictedLinkLabel bottomAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v71[8] = v40;
  v39 = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  v38 = [(UILabel *)self->_storeRestrictedTitleLabel widthAnchor];
  v30 = [v39 constraintGreaterThanOrEqualToAnchor:v38];
  v71[9] = v30;
  v31 = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  v32 = [(UILabel *)self->_storeRestrictedBodyLabel widthAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32];
  v71[10] = v33;
  v34 = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  v35 = [(UILabel *)self->_storeRestrictedLinkLabel widthAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];
  v71[11] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:12];
  [v53 activateConstraints:v37];
}

- (void)_addActivationLockLabels
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (!self->_activationLockStackView)
  {
    v36 = [MEMORY[0x277D755D0] configurationWithPointSize:60.0];
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill" withConfiguration:v36];
    v5 = [v3 initWithImage:v4];
    activationLockImage = self->_activationLockImage;
    self->_activationLockImage = v5;

    v7 = self->_activationLockImage;
    v8 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIImageView *)v7 setTintColor:v8];

    [(UIImageView *)self->_activationLockImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    activationLockWarningLabel = self->_activationLockWarningLabel;
    self->_activationLockWarningLabel = v9;

    v11 = self->_activationLockWarningLabel;
    v12 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UILabel *)v11 setTextColor:v12];

    v13 = self->_activationLockWarningLabel;
    v14 = [MEMORY[0x277D74300] systemFontOfSize:32.0 weight:*MEMORY[0x277D743F8]];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)self->_activationLockWarningLabel setNumberOfLines:0];
    [(UILabel *)self->_activationLockWarningLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_activationLockWarningLabel setTextAlignment:1];
    [(UILabel *)self->_activationLockWarningLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    activationLockDetailLabel = self->_activationLockDetailLabel;
    self->_activationLockDetailLabel = v15;

    v17 = self->_activationLockDetailLabel;
    v18 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UILabel *)v17 setTextColor:v18];

    v19 = self->_activationLockDetailLabel;
    v20 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)self->_activationLockDetailLabel setNumberOfLines:0];
    [(UILabel *)self->_activationLockDetailLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_activationLockDetailLabel setTextAlignment:1];
    [(UILabel *)self->_activationLockDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = objc_alloc(MEMORY[0x277D75A68]);
    v22 = self->_activationLockWarningLabel;
    v38[0] = self->_activationLockImage;
    v38[1] = v22;
    v38[2] = self->_activationLockDetailLabel;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v24 = [v21 initWithArrangedSubviews:v23];
    activationLockStackView = self->_activationLockStackView;
    self->_activationLockStackView = v24;

    [(UIStackView *)self->_activationLockStackView setAxis:1];
    [(UIStackView *)self->_activationLockStackView setAlignment:3];
    [(UIStackView *)self->_activationLockStackView setDistribution:3];
    [(UIStackView *)self->_activationLockStackView setBaselineRelativeArrangement:1];
    [(UIStackView *)self->_activationLockStackView setCustomSpacing:self->_activationLockImage afterView:46.0];
    [(UIStackView *)self->_activationLockStackView setCustomSpacing:self->_activationLockWarningLabel afterView:42.0];
    [(UIStackView *)self->_activationLockStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_activationLockStackView setHidden:1];
    [(SBDashBoardSetupView *)self addSubview:self->_activationLockStackView];
    v26 = MEMORY[0x277CCAAD0];
    v27 = [(UIStackView *)self->_activationLockStackView widthAnchor];
    v28 = [v27 constraintLessThanOrEqualToConstant:327.0];
    v37[0] = v28;
    v29 = [(UIStackView *)self->_activationLockStackView centerXAnchor];
    v30 = [(SBDashBoardSetupView *)self centerXAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v37[1] = v31;
    v32 = [(UIStackView *)self->_activationLockStackView centerYAnchor];
    v33 = [(SBDashBoardSetupView *)self centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v37[2] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
    [v26 activateConstraints:v35];
  }
}

- (void)_addSecurityResearchLabels
{
  v56[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  securityResearchDeviceContainer = self->_securityResearchDeviceContainer;
  self->_securityResearchDeviceContainer = v3;

  [(UIView *)self->_securityResearchDeviceContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  securityResearchDeviceTitleLabel = self->_securityResearchDeviceTitleLabel;
  self->_securityResearchDeviceTitleLabel = v6;

  v8 = self->_securityResearchDeviceTitleLabel;
  v9 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v8 setColor:v9];

  v10 = self->_securityResearchDeviceTitleLabel;
  v54 = v5;
  v11 = [v5 preferredFontForTextStyle:*MEMORY[0x277D76A08] hiFontStyle:4];
  [(UILabel *)v10 setFont:v11];

  [(UILabel *)self->_securityResearchDeviceTitleLabel setNumberOfLines:0];
  [(UILabel *)self->_securityResearchDeviceTitleLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_securityResearchDeviceTitleLabel setTextAlignment:1];
  [(UILabel *)self->_securityResearchDeviceTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_securityResearchDeviceTitleLabel setText:@"Security Research Device"];
  [(UIView *)self->_securityResearchDeviceContainer addSubview:self->_securityResearchDeviceTitleLabel];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  v13 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:46.0];
  v14 = [v12 imageWithConfiguration:v13];
  v55 = [v14 imageWithRenderingMode:2];

  v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v55];
  securityResearchHeaderIcon = self->_securityResearchHeaderIcon;
  self->_securityResearchHeaderIcon = v15;

  v17 = self->_securityResearchHeaderIcon;
  v18 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)v17 setTintColor:v18];

  [(UIImageView *)self->_securityResearchHeaderIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_securityResearchDeviceContainer addSubview:self->_securityResearchHeaderIcon];
  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  securityResearchSubtitleLabel = self->_securityResearchSubtitleLabel;
  self->_securityResearchSubtitleLabel = v19;

  v21 = self->_securityResearchSubtitleLabel;
  v22 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v21 setColor:v22];

  v23 = self->_securityResearchSubtitleLabel;
  v24 = [v5 preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
  [(UILabel *)v23 setFont:v24];

  [(UILabel *)self->_securityResearchSubtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_securityResearchSubtitleLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_securityResearchSubtitleLabel setTextAlignment:1];
  [(UILabel *)self->_securityResearchSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_securityResearchSubtitleLabel setText:@"Property of Apple Inc."];
  [(UIView *)self->_securityResearchDeviceContainer addSubview:self->_securityResearchSubtitleLabel];
  [(SBDashBoardSetupView *)self addSubview:self->_securityResearchDeviceContainer];
  v43 = MEMORY[0x277CCAAD0];
  v53 = [(UIImageView *)self->_securityResearchHeaderIcon centerXAnchor];
  v52 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v56[0] = v51;
  v50 = [(UIView *)self->_securityResearchDeviceContainer topAnchor];
  v49 = [(UIImageView *)self->_securityResearchHeaderIcon topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v56[1] = v48;
  v47 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerXAnchor];
  v46 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v56[2] = v45;
  v44 = [(UILabel *)self->_securityResearchDeviceTitleLabel topAnchor];
  v42 = [(UIImageView *)self->_securityResearchHeaderIcon bottomAnchor];
  v41 = [v44 constraintEqualToAnchor:v42 constant:20.0];
  v56[3] = v41;
  v40 = [(UILabel *)self->_securityResearchSubtitleLabel centerXAnchor];
  v39 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v56[4] = v38;
  v37 = [(UILabel *)self->_securityResearchSubtitleLabel topAnchor];
  v36 = [(UILabel *)self->_securityResearchDeviceTitleLabel bottomAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:15.0];
  v56[5] = v35;
  v34 = [(UIView *)self->_securityResearchDeviceContainer bottomAnchor];
  v25 = [(UILabel *)self->_securityResearchSubtitleLabel bottomAnchor];
  v26 = [v34 constraintEqualToAnchor:v25];
  v56[6] = v26;
  v27 = [(UIView *)self->_securityResearchDeviceContainer widthAnchor];
  v28 = [(UILabel *)self->_securityResearchDeviceTitleLabel widthAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];
  v56[7] = v29;
  v30 = [(UIView *)self->_securityResearchDeviceContainer widthAnchor];
  v31 = [(UILabel *)self->_securityResearchSubtitleLabel widthAnchor];
  v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];
  v56[8] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:9];
  [v43 activateConstraints:v33];
}

- (void)_addHomeButtonCallToAction
{
  v3 = objc_alloc_init(MEMORY[0x277D67CA8]);
  homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;
  self->_homeButtonCallToActionLabel = v3;

  if (_os_feature_enabled_impl())
  {
    v5 = self->_homeButtonCallToActionLabel;
    v6 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(SBUICallToActionLabel *)v5 setTintColor:v6];
  }

  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel bs_setHitTestingDisabled:1];
  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setVisible:0 animated:0];
  v7 = self->_homeButtonCallToActionLabel;

  [(SBDashBoardSetupView *)self addSubview:v7];
}

- (void)_addHomeAffordanceForCoverSheetContext:(id)a3
{
  v4 = MEMORY[0x277D65F80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  homeAffordanceContainer = self->_homeAffordanceContainer;
  self->_homeAffordanceContainer = v6;

  [(SBDashBoardSetupView *)self addSubview:self->_homeAffordanceContainer];
  v8 = [objc_alloc(MEMORY[0x277D02C10]) initWithCoverSheetContext:v5];

  homeAffordanceView = self->_homeAffordanceView;
  self->_homeAffordanceView = v8;

  [(CSHomeAffordanceView *)self->_homeAffordanceView setStyle:1];
  v10 = self->_homeAffordanceContainer;
  v11 = self->_homeAffordanceView;

  [(SBFTouchPassThroughView *)v10 addSubview:v11];
}

- (void)_addHomeAffordanceCallToAction
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  homeAffordanceCallToActionContainer = self->_homeAffordanceCallToActionContainer;
  self->_homeAffordanceCallToActionContainer = v3;

  [(UIView *)self->_homeAffordanceCallToActionContainer bs_setHitTestingDisabled:1];
  [(UIView *)self->_homeAffordanceCallToActionContainer setAlpha:0.0];
  [(SBDashBoardSetupView *)self addSubview:self->_homeAffordanceCallToActionContainer];
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769C0]];
  v10 = [v5 fontDescriptorWithSymbolicTraits:32770];

  v6 = objc_alloc_init(MEMORY[0x277D67CF8]);
  homeAffordanceCallToActionLabel = self->_homeAffordanceCallToActionLabel;
  self->_homeAffordanceCallToActionLabel = v6;

  v8 = self->_homeAffordanceCallToActionLabel;
  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  [(SBUILegibilityLabel *)v8 setFont:v9];

  [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setNumberOfLines:0];
  [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setTextAlignment:1];
  [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel bs_setHitTestingDisabled:1];
  [(UIView *)self->_homeAffordanceCallToActionContainer addSubview:self->_homeAffordanceCallToActionLabel];
}

- (id)_titleView
{
  if (+[SBSolariumCursiveTextAvailability isFeatureEnabled])
  {
    v3 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
    cursiveTextView = v3;
    if (!v3)
    {
      cursiveTextView = self->_cursiveTextView;
      if (!cursiveTextView)
      {
        cursiveTextView = self->_titleLabel;
      }
    }

    v5 = cursiveTextView;
  }

  else
  {
    titleLabel = self->_titleLabel;
    if (!titleLabel)
    {
      titleLabel = self->_cursiveTextView;
    }

    v5 = titleLabel;
  }

  return v5;
}

- (void)_updateBaselineAndChildIconConstraints
{
  v39[4] = *MEMORY[0x277D85DE8];
  if (self->_titleYOffsetConstraint)
  {
    [(SBDashBoardSetupView *)self removeConstraint:?];
  }

  v4 = +[SBSolariumCursiveTextAvailability isFeatureEnabled];
  v5 = v4;
  if (self->_childIconView)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v6 = -160.0;
      }

      else
      {
        v6 = -120.0;
      }
    }

    else
    {
      v13 = [MEMORY[0x277D75418] currentDevice];
      if ([v13 userInterfaceIdiom] == 1)
      {
        v6 = -160.0;
      }

      else
      {
        v6 = -120.0;
      }
    }

    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v14 = 32.0;
      }

      else
      {
        v14 = 14.0;
      }

      if (v5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = [MEMORY[0x277D75418] currentDevice];
      if ([v15 userInterfaceIdiom] == 1)
      {
        v14 = 32.0;
      }

      else
      {
        v14 = 14.0;
      }

      if (v5)
      {
        goto LABEL_26;
      }
    }

    v16 = [(SBDashBoardSetupView *)self _titleView];
    v17 = [v16 lastBaselineAnchor];
    v18 = [(SBDashBoardSetupView *)self centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:v14];
    titleYOffsetConstraint = self->_titleYOffsetConstraint;
    self->_titleYOffsetConstraint = v19;

    [(SBDashBoardSetupView *)self addConstraint:self->_titleYOffsetConstraint];
    v14 = 0.0;
LABEL_26:
    v38 = [(UIView *)self->_childIconView leadingAnchor];
    v37 = [(SBDashBoardSetupView *)self leadingAnchor];
    v36 = [v38 constraintGreaterThanOrEqualToAnchor:v37 constant:30.0];
    v39[0] = v36;
    v35 = [(UIView *)self->_childIconView trailingAnchor];
    v21 = [(SBDashBoardSetupView *)self trailingAnchor];
    v22 = [v35 constraintLessThanOrEqualToAnchor:v21 constant:-30.0];
    v39[1] = v22;
    v23 = [(UIView *)self->_childIconView centerXAnchor];
    v24 = [(SBDashBoardSetupView *)self centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v39[2] = v25;
    v26 = [(UIView *)self->_childIconView centerYAnchor];
    v27 = [(SBDashBoardSetupView *)self centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v6 - v14];
    v39[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v34 activateConstraints:v29];

    return;
  }

  if (!v4)
  {
    v7 = [(SBDashBoardSetupView *)self _titleView];
    v8 = [v7 lastBaselineAnchor];
    v9 = [(SBDashBoardSetupView *)self centerYAnchor];
    v10 = __sb__runningInSpringBoard();
    v11 = v10;
    if (v10)
    {
      v12 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      v2 = [MEMORY[0x277D75418] currentDevice];
      v12 = [v2 userInterfaceIdiom] == 1;
    }

    v30 = -16.0;
    if (v12)
    {
      v30 = 0.0;
    }

    v31 = [v8 constraintEqualToAnchor:v9 constant:v30];
    v32 = self->_titleYOffsetConstraint;
    self->_titleYOffsetConstraint = v31;

    if ((v11 & 1) == 0)
    {
    }

    v33 = self->_titleYOffsetConstraint;

    [(SBDashBoardSetupView *)self addConstraint:v33];
  }
}

- (void)_setupConstraints
{
  v55[4] = *MEMORY[0x277D85DE8];
  v3 = [(SBDashBoardSetupView *)self _titleView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 leadingAnchor];
    v6 = [(SBDashBoardSetupView *)self leadingAnchor];
    v7 = [v5 constraintGreaterThanOrEqualToAnchor:v6 constant:30.0];
    [(SBDashBoardSetupView *)self addConstraint:v7];

    v8 = [v4 trailingAnchor];
    v9 = [(SBDashBoardSetupView *)self trailingAnchor];
    v10 = [v8 constraintLessThanOrEqualToAnchor:v9 constant:-30.0];
    [(SBDashBoardSetupView *)self addConstraint:v10];

    v11 = [v4 centerXAnchor];
    v12 = [(SBDashBoardSetupView *)self centerXAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [(SBDashBoardSetupView *)self addConstraint:v13];

    [(SBDashBoardSetupView *)self _updateBaselineAndChildIconConstraints];
  }

  storeRestrictedContainer = self->_storeRestrictedContainer;
  if (storeRestrictedContainer && self->_storeRestrictedTitleLabel)
  {
    v42 = MEMORY[0x277CCAAD0];
    v52 = [(UIView *)storeRestrictedContainer leadingAnchor];
    v50 = [(SBDashBoardSetupView *)self leadingAnchor];
    v48 = [v52 constraintEqualToAnchor:v50 constant:30.0];
    v55[0] = v48;
    v46 = [(UIView *)self->_storeRestrictedContainer trailingAnchor];
    v44 = [(SBDashBoardSetupView *)self trailingAnchor];
    v15 = [v46 constraintEqualToAnchor:v44 constant:-30.0];
    v55[1] = v15;
    v16 = [(UILabel *)self->_storeRestrictedTitleLabel centerXAnchor];
    v17 = [(SBDashBoardSetupView *)self centerXAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v55[2] = v18;
    v19 = [(UILabel *)self->_storeRestrictedTitleLabel centerYAnchor];
    v20 = [(SBDashBoardSetupView *)self centerYAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v55[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    [v42 activateConstraints:v22];
  }

  if (self->_securityResearchDeviceTitleLabel)
  {
    securityResearchDeviceContainer = self->_securityResearchDeviceContainer;
    if (securityResearchDeviceContainer)
    {
      v43 = MEMORY[0x277CCAAD0];
      v53 = [(UIView *)securityResearchDeviceContainer leadingAnchor];
      v51 = [(SBDashBoardSetupView *)self leadingAnchor];
      v49 = [v53 constraintEqualToAnchor:v51 constant:30.0];
      v54[0] = v49;
      v47 = [(UIView *)self->_securityResearchDeviceContainer trailingAnchor];
      v45 = [(SBDashBoardSetupView *)self trailingAnchor];
      v24 = [v47 constraintEqualToAnchor:v45 constant:-30.0];
      v54[1] = v24;
      v25 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerXAnchor];
      v26 = [(SBDashBoardSetupView *)self centerXAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      v54[2] = v27;
      v28 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerYAnchor];
      v29 = [(SBDashBoardSetupView *)self centerYAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      v54[3] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
      [v43 activateConstraints:v31];
    }
  }

  if (self->_infoButton)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass())
      {
        v32 = 15.0;
        if (SBFEffectiveDeviceClass() != 1)
        {
          goto LABEL_19;
        }
      }

      v32 = 15.0;
      if (SBFEffectiveHomeButtonType() != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v33 = [MEMORY[0x277D75418] currentDevice];
    if ([v33 userInterfaceIdiom])
    {

      v32 = 15.0;
    }

    else
    {
      v34 = SBFEffectiveHomeButtonType();

      v32 = 15.0;
      if (v34 == 2)
      {
LABEL_18:
        v32 = 30.0;
      }
    }

LABEL_19:
    v35 = [(UIButton *)self->_infoButton trailingAnchor];
    v36 = [(SBDashBoardSetupView *)self trailingAnchor];
    v37 = -v32;
    v38 = [v35 constraintEqualToAnchor:v36 constant:v37];
    [(SBDashBoardSetupView *)self addConstraint:v38];

    v39 = [(UIButton *)self->_infoButton bottomAnchor];
    v40 = [(SBDashBoardSetupView *)self bottomAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:v37];
    [(SBDashBoardSetupView *)self addConstraint:v41];
  }
}

- (void)_setupActivationInfoConstraintsIfNeeded
{
  v21[4] = *MEMORY[0x277D85DE8];
  activationInfoView = self->_activationInfoView;
  activationInfoViewConstraints = self->_activationInfoViewConstraints;
  if (activationInfoView)
  {
    if (!activationInfoViewConstraints)
    {
      [(UIView *)activationInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
      if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
        {
          v5 = 120.0;
        }

        else if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = 200.0;
        }

        else
        {
          v5 = 120.0;
        }
      }

      else
      {
        v6 = [MEMORY[0x277D75418] currentDevice];
        if ([v6 userInterfaceIdiom])
        {
          v5 = 120.0;
        }

        else if (SBFEffectiveHomeButtonType() == 2)
        {
          v5 = 200.0;
        }

        else
        {
          v5 = 120.0;
        }
      }

      v7 = [(UIView *)self->_activationInfoView centerXAnchor];
      v8 = [(SBDashBoardSetupView *)self centerXAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];

      v10 = [(UIView *)self->_activationInfoView topAnchor];
      v11 = [(SBDashBoardSetupView *)self topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:v5];

      v13 = [(UIView *)self->_activationInfoView widthAnchor];
      v14 = [(SBDashBoardSetupView *)self widthAnchor];
      v15 = [v13 constraintLessThanOrEqualToAnchor:v14];

      v16 = [(UIButton *)self->_infoButton topAnchor];
      v17 = [(UIView *)self->_activationInfoView bottomAnchor];
      v18 = [v16 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v17 multiplier:1.0];

      v21[0] = v9;
      v21[1] = v12;
      v21[2] = v15;
      v21[3] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
      v20 = self->_activationInfoViewConstraints;
      self->_activationInfoViewConstraints = v19;

      [MEMORY[0x277CCAAD0] activateConstraints:self->_activationInfoViewConstraints];
    }
  }

  else if (activationInfoViewConstraints)
  {
    self->_activationInfoViewConstraints = 0;
  }
}

- (void)_layoutRegulatoryInfo
{
  regulatoryInfoView = self->_regulatoryInfoView;
  if (regulatoryInfoView)
  {
    v4 = [(UIView *)regulatoryInfoView superview];

    if (!v4)
    {
      v5 = self->_regulatoryInfoView;

      [(SBDashBoardSetupView *)self addSubview:v5];
    }
  }
}

- (void)_layoutActivationInfoView
{
  activationInfoView = self->_activationInfoView;
  if (activationInfoView)
  {
    v4 = [(UIView *)activationInfoView superview];

    if (!v4)
    {
      [(SBDashBoardSetupView *)self addSubview:self->_activationInfoView];
    }

    [(SBDashBoardSetupView *)self _setupActivationInfoConstraintsIfNeeded];
  }
}

- (void)_layoutHomeButtonCallToAction
{
  if (self->_homeButtonCallToActionLabel)
  {
    [(SBDashBoardSetupView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel frame];
    [MEMORY[0x277D65E38] suggestedFrameForCallToActionLabel:self->_homeButtonCallToActionLabel yOffset:CGRectGetHeight(v13) + 15.0 inBounds:{v4, v6, v8, v10}];
    homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;

    [(SBUICallToActionLabel *)homeButtonCallToActionLabel setFrame:?];
  }
}

- (void)_layoutHomeAffordanceCallToAction
{
  if (self->_homeAffordanceCallToActionLabel)
  {
    [(SBDashBoardSetupView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(UIView *)self->_homeAffordanceCallToActionContainer setFrame:?];
    [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel sizeThatFits:200.0, 1.79769313e308];
    v8 = v7;
    SBRectWithSize();
    [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setBounds:?];
    homeAffordanceCallToActionLabel = self->_homeAffordanceCallToActionLabel;

    [(SBUILegibilityLabel *)homeAffordanceCallToActionLabel setCenter:v4 * 0.5, v6 - v8 * 0.5 + -11.0];
  }
}

- (void)_layoutHomeAffordance
{
  if (self->_homeAffordanceView)
  {
    [(SBDashBoardSetupView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(SBFTouchPassThroughView *)self->_homeAffordanceContainer setFrame:?];
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    MidX = CGRectGetMidX(v19);
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    Height = CGRectGetHeight(v20);
    [(CSHomeAffordanceView *)self->_homeAffordanceView bounds];
    v14 = Height + v13 * -0.5;
    [(CSHomeAffordanceView *)self->_homeAffordanceView suggestedEdgeSpacing];
    [(CSHomeAffordanceView *)self->_homeAffordanceView setCenter:MidX, v14 - v15];
    homeAffordanceContainer = self->_homeAffordanceContainer;
    suppressingElements = self->_suppressingElements;

    [(SBFTouchPassThroughView *)homeAffordanceContainer setHidden:suppressingElements];
  }
}

- (void)_animateView:(id)a3 toActive:(BOOL)a4 withDispatchGroup:(id)a5
{
  v5 = a4;
  v17[4] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [a3 layer];
  if (v9)
  {
    if (v5)
    {
      dispatch_group_enter(v8);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:v9];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"opacity" onLayer:v9];
      v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v10 setKeyTimes:&unk_28336EE20];
      v11 = MEMORY[0x277CCABB0];
      [v9 opacity];
      v12 = [v11 numberWithFloat:?];
      v17[0] = v12;
      v17[1] = &unk_28336F7D0;
      v17[2] = &unk_28336F7D0;
      v17[3] = &unk_28336F7E0;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
      [v10 setValues:v13];

      [v10 setCalculationMode:@"linear"];
      [v10 setDuration:self->_customDelayDuration];
      [v10 setDelegate:self];
      [v10 setValue:v8 forKey:@"SBDashBoardSetupDispatchGroup"];
      v14 = [v10 keyPath];
      v15 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", v14];
      [v9 addAnimation:v10 forKey:v15];

      [v9 setOpacity:0.0];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"opacity" onLayer:v9 dispatchGroup:v8];
      LODWORD(v16) = 1.0;
      [v9 setOpacity:v16];
    }
  }
}

- (void)_animateHomeButtonCallToActionToActive:(BOOL)a3 withDispatchGroup:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_homeButtonCallToActionLabel)
  {
    if (v4)
    {
      dispatch_group_enter(v6);
      dispatch_group_enter(v7);
      homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke;
      v28[3] = &unk_2783A8C18;
      v9 = &v29;
      v10 = v7;
      v29 = v10;
      [(SBUICallToActionLabel *)homeButtonCallToActionLabel fadeInImmediately:1 completion:v28];
      objc_initWeak(&location, self);
      v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      homeButtonCallToActionTimer = self->_homeButtonCallToActionTimer;
      self->_homeButtonCallToActionTimer = v11;

      v13 = dispatch_time(0, ((self->_customDelayDuration + -1.0) * 1000000000.0));
      dispatch_source_set_timer(self->_homeButtonCallToActionTimer, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
      v14 = self->_homeButtonCallToActionTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke_2;
      handler[3] = &unk_2783A9CE8;
      objc_copyWeak(&v26, &location);
      v15 = v10;
      v25 = v15;
      dispatch_source_set_event_handler(v14, handler);
      v16 = self->_homeButtonCallToActionTimer;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke_4;
      v22[3] = &unk_2783A8C18;
      v23 = v15;
      dispatch_source_set_cancel_handler(v16, v22);
      dispatch_resume(self->_homeButtonCallToActionTimer);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      v17 = self->_homeButtonCallToActionTimer;
      if (v17)
      {
        dispatch_source_cancel(v17);
        v18 = self->_homeButtonCallToActionTimer;
        self->_homeButtonCallToActionTimer = 0;
      }

      dispatch_group_enter(v7);
      v19 = self->_homeButtonCallToActionLabel;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke_5;
      v20[3] = &unk_2783A8C18;
      v9 = &v21;
      v21 = v7;
      [(SBUICallToActionLabel *)v19 fadeOutWithDuration:v20 completion:0.0];
    }
  }
}

void __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[69];
    WeakRetained[69] = 0;

    v5 = v3[68];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__SBDashBoardSetupView__animateHomeButtonCallToActionToActive_withDispatchGroup___block_invoke_3;
    v6[3] = &unk_2783A8C18;
    v7 = *(a1 + 32);
    [v5 fadeOutWithDuration:v6 completion:1.0];
  }
}

- (void)_animateHomeAffordanceCallToActionToActive:(BOOL)a3 withDispatchGroup:(id)a4
{
  v4 = a3;
  v20[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(UIView *)self->_homeAffordanceCallToActionContainer layer];
  if (v7)
  {
    if (v4)
    {
      dispatch_group_enter(v6);
      dispatch_group_enter(v6);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:v7];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"opacity" onLayer:v7];
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:v7];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"position.y" onLayer:v7];
      v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v8 setKeyTimes:&unk_28336EE38];
      [v8 setValues:&unk_28336EE50];
      [v8 setCalculationMode:@"cubic"];
      [v8 setBeginTime:CACurrentMediaTime() + 1.0];
      [v8 setDuration:self->_customDelayDuration];
      [v8 setDelegate:self];
      [v8 setValue:v6 forKey:@"SBDashBoardSetupDispatchGroup"];
      v9 = [v8 keyPath];
      v10 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", v9];
      [v7 addAnimation:v8 forKey:v10];

      v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
      [v11 setKeyTimes:&unk_28336EE68];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v20[0] = v19;
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:-16.0];
      v20[1] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:-30.0];
      v20[2] = v13;
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:-33.0];
      v20[3] = v14;
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:-33.0];
      v20[4] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];
      [v11 setValues:v16];

      [v11 setCalculationMode:@"cubic"];
      [v11 setBeginTime:CACurrentMediaTime() + 1.0];
      [v11 setDuration:self->_customDelayDuration];
      [v11 setAdditive:1];
      [v11 setDelegate:self];
      [v11 setValue:v6 forKey:@"SBDashBoardSetupDispatchGroup"];
      v17 = [v11 keyPath];
      v18 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", v17];
      [v7 addAnimation:v11 forKey:v18];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"opacity" onLayer:v7 dispatchGroup:v6];
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"position.y" onLayer:v7 dispatchGroup:v6];
    }
  }
}

- (void)_animateHomeAffordanceToActive:(BOOL)a3 withDispatchGroup:(id)a4
{
  v4 = a3;
  v17[5] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SBFTouchPassThroughView *)self->_homeAffordanceContainer layer];
  if (v7)
  {
    if (v4)
    {
      dispatch_group_enter(v6);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:v7];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"position.y" onLayer:v7];
      v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.y"];
      [v8 setKeyTimes:&unk_28336EE80];
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v17[0] = v9;
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:-5.0];
      v17[1] = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:-15.0];
      v17[2] = v11;
      v12 = [MEMORY[0x277CCABB0] numberWithDouble:-2.0];
      v17[3] = v12;
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v17[4] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
      [v8 setValues:v14];

      [v8 setCalculationMode:@"cubic"];
      [v8 setBeginTime:CACurrentMediaTime() + 1.0];
      [v8 setDuration:self->_customDelayDuration];
      [v8 setAdditive:1];
      [v8 setDelegate:self];
      [v8 setValue:v6 forKey:@"SBDashBoardSetupDispatchGroup"];
      v15 = [v8 keyPath];
      v16 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", v15];
      [v7 addAnimation:v8 forKey:v16];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"position.y" onLayer:v7 dispatchGroup:v6];
    }
  }
}

- (void)_addResetAnimationForKeyPath:(id)a3 onLayer:(id)a4 dispatchGroup:(id)a5
{
  v22 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 presentationLayer];
  v11 = [v10 valueForKeyPath:v22];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v8 valueForKeyPath:v22];
  [v14 doubleValue];
  v16 = v15;

  if (v9)
  {
    dispatch_group_enter(v9);
  }

  [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:v22 onLayer:v8];
  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:v22];
  [v17 setDuration:0.25];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v17 setFromValue:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v17 setToValue:v20];

  [v17 setValue:v9 forKey:@"SBDashBoardSetupDispatchGroup"];
  v21 = [@"SBDashBoardSetupResetAnimation" stringByAppendingFormat:@"-%@", v22];
  [v8 addAnimation:v17 forKey:v21];
}

- (void)_removeResetAnimationForKeyPath:(id)a3 onLayer:(id)a4
{
  v5 = a4;
  v6 = [@"SBDashBoardSetupResetAnimation" stringByAppendingFormat:@"-%@", a3];
  [v5 removeAnimationForKey:v6];
}

- (void)_removeNormalAnimationForKeyPath:(id)a3 onLayer:(id)a4
{
  v5 = a4;
  v6 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", a3];
  [v5 removeAnimationForKey:v6];
}

- (void)_createDisplayLink
{
  if (self->_displayLink)
  {
    [(SBDashBoardSetupView *)self _removeDisplayLink];
  }

  v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__onDisplayLink_];
  displayLink = self->_displayLink;
  self->_displayLink = v3;

  v5 = self->_displayLink;
  v9 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(CADisplayLink *)v5 setPreferredFrameRateRange:*&v9.minimum, *&v9.maximum, *&v9.preferred];
  [(CADisplayLink *)self->_displayLink setHighFrameRateReason:1114135];
  v6 = self->_displayLink;
  v7 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];
}

- (void)_removeDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)_onDisplayLink:(id)a3
{
  if (self->_displayLink == a3)
  {
    [(SBDashBoardSetupView *)self _animateCursiveForTimePassed];
  }
}

- (void)_animateCursiveForTimePassed
{
  Current = CFAbsoluteTimeGetCurrent();
  *&Current = Current - self->_startTime;
  [(SBCursiveTextView *)self->_cursiveTextView setTime:Current];
  if (BSFloatGreaterThanFloat())
  {

    [(SBDashBoardSetupView *)self _removeDisplayLink];
  }
}

- (void)_adjustTitleVisibilityForInfoViews
{
  if ([(SBDashBoardSetupView *)self _isShowingModalTakeoverUI]|| self->_suppressingElements)
  {
    activationLocked = 1;
    v4 = 1;
    v5 = 1;
  }

  else
  {
    v4 = 0;
    activationLocked = self->_activationLocked;
    v5 = !activationLocked;
  }

  [(UIView *)self->_storeRestrictedContainer setHidden:v4];
  [(UIView *)self->_securityResearchDeviceContainer setHidden:v4];
  [(UILabel *)self->_titleLabel setHidden:activationLocked];
  [(SBCursiveTextView *)self->_cursiveTextView setHidden:activationLocked];
  [(CADisplayLink *)self->_displayLink setPaused:activationLocked];
  [(UIView *)self->_childIconView setHidden:activationLocked];
  [(UIStackView *)self->_activationLockStackView setHidden:v5 & 1];

  [(SBDashBoardSetupView *)self _updateHelloVisibility];
}

- (void)_updateHelloVisibility
{
  v3 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
  [v3 setHidden:{-[SBDashBoardSetupView _hasSuppressingUI](self, "_hasSuppressingUI")}];
}

- (void)_updateLegibilitySettings
{
  [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setLegibilitySettings:self->_legibilitySettings];
  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setLegibilitySettings:self->_legibilitySettings];
  [(CSHomeAffordanceView *)self->_homeAffordanceView setLegibilitySettings:self->_legibilitySettings];
  v3 = _os_feature_enabled_impl();
  legibilitySettings = self->_legibilitySettings;
  if (v3)
  {
    cursiveTextView = self->_cursiveTextView;
    v6 = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    [(SBCursiveTextView *)cursiveTextView setFillColor:v6];

    infoButton = self->_infoButton;
    v8 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)infoButton setTintColor:v8];

    homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;
    v10 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(SBUICallToActionLabel *)homeButtonCallToActionLabel setTintColor:v10];
  }

  else
  {
    titleLabel = self->_titleLabel;
    v10 = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    [(UILabel *)titleLabel setTextColor:v10];
  }

  storeRestrictedTitleLabel = self->_storeRestrictedTitleLabel;
  v13 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)storeRestrictedTitleLabel setColor:v13];

  storeRestrictedBodyLabel = self->_storeRestrictedBodyLabel;
  v15 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)storeRestrictedBodyLabel setColor:v15];

  activationLockImage = self->_activationLockImage;
  v17 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)activationLockImage setTintColor:v17];

  activationLockWarningLabel = self->_activationLockWarningLabel;
  v19 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)activationLockWarningLabel setTextColor:v19];

  activationLockDetailLabel = self->_activationLockDetailLabel;
  v21 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)activationLockDetailLabel setTextColor:v21];

  securityResearchDeviceTitleLabel = self->_securityResearchDeviceTitleLabel;
  v23 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)securityResearchDeviceTitleLabel setColor:v23];

  securityResearchHeaderIcon = self->_securityResearchHeaderIcon;
  v25 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)securityResearchHeaderIcon setTintColor:v25];

  securityResearchSubtitleLabel = self->_securityResearchSubtitleLabel;
  v27 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)securityResearchSubtitleLabel setColor:v27];
}

- (SBSolariumCursiveTextAnimationDelegate)glassCursiveTextAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_glassCursiveTextAnimationDelegate);

  return WeakRetained;
}

@end