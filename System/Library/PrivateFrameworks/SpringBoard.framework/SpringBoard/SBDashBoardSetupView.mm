@interface SBDashBoardSetupView
- (SBDashBoardSetupView)initWithFrame:(CGRect)frame usingHomeAffordance:(BOOL)affordance coverSheetContext:(id)context isStoreRestricted:(BOOL)restricted isSecurityResearchDevice:(BOOL)device;
- (SBSolariumCursiveTextAnimationDelegate)glassCursiveTextAnimationDelegate;
- (double)setTitleString:(id)string forLanguage:(id)language;
- (id)_titleView;
- (void)_addActivationLockLabels;
- (void)_addHomeAffordanceCallToAction;
- (void)_addHomeAffordanceForCoverSheetContext:(id)context;
- (void)_addHomeButtonCallToAction;
- (void)_addInfoButton;
- (void)_addResetAnimationForKeyPath:(id)path onLayer:(id)layer dispatchGroup:(id)group;
- (void)_addSecurityResearchLabels;
- (void)_addStoreRestrictedLabels;
- (void)_addTitleLabel;
- (void)_adjustTitleVisibilityForInfoViews;
- (void)_animateCursiveForTimePassed;
- (void)_animateHomeAffordanceCallToActionToActive:(BOOL)active withDispatchGroup:(id)group;
- (void)_animateHomeAffordanceToActive:(BOOL)active withDispatchGroup:(id)group;
- (void)_animateHomeButtonCallToActionToActive:(BOOL)active withDispatchGroup:(id)group;
- (void)_animateView:(id)view toActive:(BOOL)active withDispatchGroup:(id)group;
- (void)_createDisplayLink;
- (void)_layoutActivationInfoView;
- (void)_layoutHomeAffordance;
- (void)_layoutHomeAffordanceCallToAction;
- (void)_layoutHomeButtonCallToAction;
- (void)_layoutRegulatoryInfo;
- (void)_onDisplayLink:(id)link;
- (void)_removeDisplayLink;
- (void)_removeNormalAnimationForKeyPath:(id)path onLayer:(id)layer;
- (void)_removeResetAnimationForKeyPath:(id)path onLayer:(id)layer;
- (void)_setupActivationInfoConstraintsIfNeeded;
- (void)_setupConstraints;
- (void)_startupDidFinish:(id)finish;
- (void)_updateBaselineAndChildIconConstraints;
- (void)_updateHelloVisibility;
- (void)_updateLegibilitySettings;
- (void)animateComponents:(unint64_t)components toActive:(BOOL)active withCompletion:(id)completion;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareSolariumCursiveTextViewWithDelegate:(id)delegate completion:(id)completion;
- (void)setActivationInfoView:(id)view;
- (void)setActivationLockWarningString:(id)string detailString:(id)detailString forLanguage:(id)language;
- (void)setActivationLocked:(BOOL)locked;
- (void)setCallToActionString:(id)string forLanguage:(id)language;
- (void)setChildIconView:(id)view;
- (void)setChildIconVisible:(BOOL)visible animated:(BOOL)animated withDelay:(double)delay;
- (void)setInfoButtonVisible:(BOOL)visible animated:(BOOL)animated withDelay:(double)delay;
- (void)setLegibilitySettings:(id)settings;
- (void)setRegulatoryInfoView:(id)view;
- (void)setStoreRestrictedStrings:(id)strings bodyString:(id)string linkString:(id)linkString forLanguage:(id)language;
- (void)setSuppressingAllElements:(BOOL)elements;
@end

@implementation SBDashBoardSetupView

- (SBDashBoardSetupView)initWithFrame:(CGRect)frame usingHomeAffordance:(BOOL)affordance coverSheetContext:(id)context isStoreRestricted:(BOOL)restricted isSecurityResearchDevice:(BOOL)device
{
  affordanceCopy = affordance;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = SBDashBoardSetupView;
  height = [(SBDashBoardSetupView *)&v21 initWithFrame:x, y, width, height];
  v17 = height;
  if (height)
  {
    height->_isStoreRestricted = restricted;
    height->_isSecurityResearchDevice = device;
    height->_customDelayDuration = 4.0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel__startupDidFinish_ name:@"SBStartupDidCompleteNotification" object:0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBDashBoardSetupView *)v17 setBackgroundColor:clearColor];

    if (device)
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

    else if (affordanceCopy)
    {
      [(SBDashBoardSetupView *)v17 _addHomeAffordanceCallToAction];
      [(SBDashBoardSetupView *)v17 _addHomeAffordanceForCoverSheetContext:contextCopy];
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

- (void)setActivationInfoView:(id)view
{
  viewCopy = view;
  if (self->_activationInfoView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_activationInfoView, view);
    [(SBDashBoardSetupView *)self _adjustTitleVisibilityForInfoViews];
    activationInfoViewConstraints = self->_activationInfoViewConstraints;
    self->_activationInfoViewConstraints = 0;

    [(SBDashBoardSetupView *)self _setupActivationInfoConstraintsIfNeeded];
    viewCopy = v7;
  }
}

- (void)setRegulatoryInfoView:(id)view
{
  viewCopy = view;
  if (self->_regulatoryInfoView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_regulatoryInfoView, view);
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
    viewCopy = v7;
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy sb_isEqualToLegibilitySettings:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBDashBoardSetupView *)self _updateLegibilitySettings];
  }
}

- (void)prepareSolariumCursiveTextViewWithDelegate:(id)delegate completion:(id)completion
{
  v44[4] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  completionCopy = completion;
  if (self->_glassCursiveTextViewProvider || (WeakRetained = objc_loadWeakRetained(&self->_glassCursiveTextAnimationDelegate), WeakRetained, WeakRetained))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    objc_storeWeak(&self->_glassCursiveTextAnimationDelegate, delegateCopy);
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
    glassCursiveTextLanguages = [delegateCopy glassCursiveTextLanguages];
    v12 = [v10 initWithBookendType:0 firstLanguagesToDisplay:glassCursiveTextLanguages callbacks:v32];
    glassCursiveTextViewProvider = self->_glassCursiveTextViewProvider;
    self->_glassCursiveTextViewProvider = v12;

    view = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
    [view setAlpha:0.0];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBDashBoardSetupView *)self insertSubview:view atIndex:0];
    v24 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [(SBDashBoardSetupView *)self leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[0] = v29;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [(SBDashBoardSetupView *)self trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[1] = v26;
    topAnchor = [view topAnchor];
    topAnchor2 = [(SBDashBoardSetupView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[2] = v15;
    heightAnchor = [view heightAnchor];
    heightAnchor2 = [(SBDashBoardSetupView *)self heightAnchor];
    v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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
    if (completionCopy)
    {
      completionCopy[2](completionCopy, [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider willAnimateWithLogo]^ 1);
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

- (void)setSuppressingAllElements:(BOOL)elements
{
  if (self->_suppressingElements != elements)
  {
    elementsCopy = elements;
    self->_suppressingElements = elements;
    [(SBDashBoardSetupView *)self setNeedsLayout];
    [(SBDashBoardSetupView *)self _adjustTitleVisibilityForInfoViews];
    [(SBDashBoardSetupView *)self setInfoButtonVisible:!elementsCopy animated:1 withDelay:0.0];

    [(SBDashBoardSetupView *)self setChildIconVisible:!elementsCopy animated:1 withDelay:0.0];
  }
}

- (double)setTitleString:(id)string forLanguage:(id)language
{
  stringCopy = string;
  languageCopy = language;
  v8 = 0.0;
  if ([stringCopy length] && !+[SBSolariumCursiveTextAvailability isFeatureEnabled](SBSolariumCursiveTextAvailability, "isFeatureEnabled"))
  {
    if (_os_feature_enabled_impl())
    {
      objc_storeStrong(&self->_currentLanguage, language);
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 URLForResource:@"CursiveHello" withExtension:@"plist" subdirectory:0 localization:languageCopy];

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
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];
        v17 = 64.0;
        if (userInterfaceIdiom == 1)
        {
          v17 = 106.0;
        }

        [(SBCursiveTextView *)cursiveTextView loadText:v10 pointSize:v17];
      }

      [(SBCursiveTextView *)self->_cursiveTextView setAccessibilityLabel:stringCopy];
      [(SBCursiveTextView *)self->_cursiveTextView setAccessibilityLanguage:languageCopy];
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
      v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
      if ([languageCopy length])
      {
        string = [v10 string];
        [v10 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string, "length")}];
      }

      [(UILabel *)self->_titleLabel setAttributedText:v10];
    }

    [(SBDashBoardSetupView *)self setNeedsLayout];
  }

  return v8;
}

- (void)setStoreRestrictedStrings:(id)strings bodyString:(id)string linkString:(id)linkString forLanguage:(id)language
{
  stringsCopy = strings;
  stringCopy = string;
  linkStringCopy = linkString;
  languageCopy = language;
  if ([languageCopy length])
  {
    if ([stringsCopy length])
    {
      v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringsCopy];
      string = [v13 string];
      [v13 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string, "length")}];

      [(UILabel *)self->_storeRestrictedTitleLabel setAttributedText:v13];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }

    if ([stringCopy length])
    {
      v15 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
      string2 = [v15 string];
      [v15 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string2, "length")}];

      [(UILabel *)self->_storeRestrictedBodyLabel setAttributedText:v15];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }

    if ([linkStringCopy length])
    {
      v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:linkStringCopy];
      string3 = [v17 string];
      [v17 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string3, "length")}];

      [(UILabel *)self->_storeRestrictedLinkLabel setAttributedText:v17];
      [(SBDashBoardSetupView *)self setNeedsLayout];
    }
  }
}

- (void)setActivationLockWarningString:(id)string detailString:(id)detailString forLanguage:(id)language
{
  stringCopy = string;
  detailStringCopy = detailString;
  languageCopy = language;
  if ([stringCopy length] && objc_msgSend(detailStringCopy, "length"))
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:detailStringCopy];
    if ([languageCopy length])
    {
      string = [v10 string];
      [v10 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string, "length")}];

      string2 = [v11 string];
      [v11 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string2, "length")}];
    }

    [(UILabel *)self->_activationLockWarningLabel setAttributedText:v10];
    [(UILabel *)self->_activationLockDetailLabel setAttributedText:v11];
    [(SBDashBoardSetupView *)self setNeedsLayout];
  }
}

- (void)setCallToActionString:(id)string forLanguage:(id)language
{
  stringCopy = string;
  languageCopy = language;
  if ([stringCopy length])
  {
    if (self->_homeAffordanceCallToActionLabel)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:stringCopy];
      if ([languageCopy length])
      {
        string = [v7 string];
        [v7 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string, "length")}];
      }

      [(SBUILegibilityLabel *)self->_homeAffordanceCallToActionLabel setAttributedText:v7];
    }

    else
    {
      [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setText:stringCopy forLanguage:languageCopy animated:0];
    }

    [(SBDashBoardSetupView *)self setNeedsLayout];
  }
}

- (void)setInfoButtonVisible:(BOOL)visible animated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  visibleCopy = visible;
  layer = [(UIButton *)self->_infoButton layer];
  if (layer)
  {
    v21 = layer;
    presentationLayer = [layer presentationLayer];
    [presentationLayer opacity];
    v12 = v11;

    v14 = 0.0;
    if (visibleCopy)
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
    layer = v21;
    if (animatedCopy)
    {
      v15 = v12;
      if (v14 != v15)
      {
        v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v16 setBeginTime:CACurrentMediaTime() + delay];
        [v16 setDuration:1.0];
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
        [v16 setFromValue:v17];

        v18 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [v16 setToValue:v18];

        [v16 setFillMode:*MEMORY[0x277CDA228]];
        if (visibleCopy)
        {
          v19 = @"SBDashBoardSetupNormalAnimation";
        }

        else
        {
          v19 = @"SBDashBoardSetupResetAnimation";
        }

        v20 = [(__CFString *)v19 stringByAppendingFormat:@"-%@", @"opacity"];
        [v21 addAnimation:v16 forKey:v20];

        layer = v21;
      }
    }
  }
}

- (void)setChildIconVisible:(BOOL)visible animated:(BOOL)animated withDelay:(double)delay
{
  animatedCopy = animated;
  visibleCopy = visible;
  layer = [(UIView *)self->_childIconView layer];
  if (layer)
  {
    v20 = layer;
    presentationLayer = [layer presentationLayer];
    [presentationLayer opacity];
    v11 = v10;

    HIDWORD(v12) = 0;
    v13 = visibleCopy ? 1.0 : 0.0;
    *&v12 = v13;
    [v20 setOpacity:v12];
    layer = v20;
    if (animatedCopy)
    {
      v14 = v11;
      if (v13 != v14)
      {
        v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v15 setBeginTime:CACurrentMediaTime() + delay];
        [v15 setDuration:1.0];
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
        [v15 setFromValue:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        [v15 setToValue:v17];

        [v15 setFillMode:*MEMORY[0x277CDA228]];
        if (visibleCopy)
        {
          v18 = @"SBDashBoardSetupNormalAnimation";
        }

        else
        {
          v18 = @"SBDashBoardSetupResetAnimation";
        }

        v19 = [(__CFString *)v18 stringByAppendingFormat:@"-%@", @"opacity"];
        [v20 addAnimation:v15 forKey:v19];

        layer = v20;
      }
    }
  }
}

- (void)setActivationLocked:(BOOL)locked
{
  if (self->_activationLocked != locked)
  {
    self->_activationLocked = locked;
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

- (void)setChildIconView:(id)view
{
  viewCopy = view;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_childIconView removeFromSuperview];
    objc_storeStrong(&self->_childIconView, view);
    [(SBDashBoardSetupView *)self addSubview:viewCopy];
    [(SBDashBoardSetupView *)self _updateBaselineAndChildIconConstraints];
    if ([(SBDashBoardSetupView *)self _hasNonCursiveSuppressingUI])
    {
      [(UIView *)self->_childIconView setHidden:1];
    }
  }
}

- (void)_startupDidFinish:(id)finish
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

- (void)animateComponents:(unint64_t)components toActive:(BOOL)active withCompletion:(id)completion
{
  activeCopy = active;
  completionCopy = completion;
  v9 = completionCopy;
  if (components)
  {
    v10 = dispatch_group_create();
    if (components)
    {
      titleLabel = self->_titleLabel;
      if (titleLabel)
      {
        [(SBDashBoardSetupView *)self _animateView:titleLabel toActive:activeCopy withDispatchGroup:v10];
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
        self->_isCursiveTitleAnimationDesired = activeCopy;
        glassCursiveTextViewProvider = self->_glassCursiveTextViewProvider;
        if (!activeCopy)
        {
          [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider stopAnimation];
          view = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
          [view setHidden:1];

          [(UIView *)self->_childIconView setHidden:1];
          view2 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
          [view2 setAlpha:0.0];

          if ((components & 8) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_36;
        }

        glassCursiveTextAnimationDelegate = [(SBDashBoardSetupView *)self glassCursiveTextAnimationDelegate];
        glassCursiveTextLanguages = [glassCursiveTextAnimationDelegate glassCursiveTextLanguages];
        [(SASBookendViewProvider *)glassCursiveTextViewProvider updateLanguages:glassCursiveTextLanguages];

        LODWORD(glassCursiveTextAnimationDelegate) = [(SBDashBoardSetupView *)self _canStartGlassCursiveTitleAnimation];
        v17 = SBLogDashBoard();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (glassCursiveTextAnimationDelegate)
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

        view3 = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
        [view3 setHidden:v13 & 1];

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
        if (activeCopy)
        {
          [(SBDashBoardSetupView *)self _animateCursiveForTimePassed];
          [(SBCursiveTextView *)self->_cursiveTextView setHidden:v13 & 1];
          [(UIView *)self->_childIconView setHidden:v13 & 1];
          [(SBDashBoardSetupView *)self _createDisplayLink];
          [(SBDashBoardSetupView *)self _animateView:self->_cursiveTextView toActive:1 withDispatchGroup:v10];
          if ((components & 8) == 0)
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
          if ((components & 8) == 0)
          {
LABEL_27:
            if ((components & 0x10) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_37;
          }
        }

LABEL_36:
        [(SBDashBoardSetupView *)self _animateView:self->_storeRestrictedContainer toActive:activeCopy withDispatchGroup:v10];
        if ((components & 0x10) == 0)
        {
LABEL_28:
          if ((components & 2) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_38;
        }

LABEL_37:
        [(SBDashBoardSetupView *)self _animateView:self->_securityResearchDeviceContainer toActive:activeCopy withDispatchGroup:v10];
        if ((components & 2) == 0)
        {
LABEL_29:
          if ((components & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_39;
        }

LABEL_38:
        [(SBDashBoardSetupView *)self _animateHomeButtonCallToActionToActive:activeCopy withDispatchGroup:v10];
        [(SBDashBoardSetupView *)self _animateHomeAffordanceCallToActionToActive:activeCopy withDispatchGroup:v10];
        if ((components & 4) == 0)
        {
LABEL_30:
          if ((components & 0x20) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_40;
        }

LABEL_39:
        [(SBDashBoardSetupView *)self _animateHomeAffordanceToActive:activeCopy withDispatchGroup:v10];
        if ((components & 0x20) == 0)
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
        [(SBDashBoardSetupView *)self _animateView:self->_activationLockStackView toActive:activeCopy withDispatchGroup:v10];
        if (!v9)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if ((components & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v4 = [stop valueForKey:{@"SBDashBoardSetupDispatchGroup", finished}];
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
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)v5 setTintColor:primaryColor];
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
      primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(SBCursiveTextView *)v6 setFillColor:primaryColor];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_cursiveTextView = &self->_titleLabel;
      titleLabel = self->_titleLabel;
      self->_titleLabel = v8;

      v10 = self->_titleLabel;
      primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(UILabel *)v10 setTextColor:primaryColor2];

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
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v7 setTintColor:systemBlueColor];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = v7;
  [(UIView *)self->_storeRestrictedContainer addSubview:v7];
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v11 = objc_alloc_init(MEMORY[0x277D756B8]);
  storeRestrictedTitleLabel = self->_storeRestrictedTitleLabel;
  self->_storeRestrictedTitleLabel = v11;

  v13 = self->_storeRestrictedTitleLabel;
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v13 setColor:primaryColor];

  v15 = self->_storeRestrictedTitleLabel;
  v16 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D769A8] hiFontStyle:4];
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
  primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v19 setColor:primaryColor2];

  v21 = self->_storeRestrictedBodyLabel;
  v22 = *MEMORY[0x277D76918];
  v69 = preferredFontProvider;
  v23 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
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
  lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
  [(UILabel *)v26 setColor:lightGrayColor];

  v28 = self->_storeRestrictedLinkLabel;
  v29 = [preferredFontProvider preferredFontForTextStyle:v22 hiFontStyle:1];
  [(UILabel *)v28 setFont:v29];

  [(UILabel *)self->_storeRestrictedLinkLabel setNumberOfLines:0];
  [(UILabel *)self->_storeRestrictedLinkLabel setTextAlignment:1];
  [(UILabel *)self->_storeRestrictedLinkLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_storeRestrictedLinkLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_storeRestrictedContainer addSubview:self->_storeRestrictedLinkLabel];
  [(SBDashBoardSetupView *)self addSubview:self->_storeRestrictedContainer];
  v53 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v9 centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v66 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v71[0] = v66;
  topAnchor = [(UIView *)self->_storeRestrictedContainer topAnchor];
  v63 = v9;
  topAnchor2 = [v9 topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v71[1] = v62;
  centerXAnchor3 = [(UILabel *)self->_storeRestrictedTitleLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v59 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v71[2] = v59;
  topAnchor3 = [(UILabel *)self->_storeRestrictedTitleLabel topAnchor];
  bottomAnchor = [v9 bottomAnchor];
  v56 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v71[3] = v56;
  centerXAnchor5 = [(UILabel *)self->_storeRestrictedBodyLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v52 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v71[4] = v52;
  topAnchor4 = [(UILabel *)self->_storeRestrictedBodyLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_storeRestrictedTitleLabel bottomAnchor];
  v49 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
  v71[5] = v49;
  centerXAnchor7 = [(UILabel *)self->_storeRestrictedLinkLabel centerXAnchor];
  centerXAnchor8 = [(UIView *)self->_storeRestrictedContainer centerXAnchor];
  v46 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
  v71[6] = v46;
  topAnchor5 = [(UILabel *)self->_storeRestrictedLinkLabel topAnchor];
  bottomAnchor3 = [(UILabel *)self->_storeRestrictedBodyLabel bottomAnchor];
  v43 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
  v71[7] = v43;
  bottomAnchor4 = [(UIView *)self->_storeRestrictedContainer bottomAnchor];
  bottomAnchor5 = [(UILabel *)self->_storeRestrictedLinkLabel bottomAnchor];
  v40 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v71[8] = v40;
  widthAnchor = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  widthAnchor2 = [(UILabel *)self->_storeRestrictedTitleLabel widthAnchor];
  v30 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];
  v71[9] = v30;
  widthAnchor3 = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  widthAnchor4 = [(UILabel *)self->_storeRestrictedBodyLabel widthAnchor];
  v33 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4];
  v71[10] = v33;
  widthAnchor5 = [(UIView *)self->_storeRestrictedContainer widthAnchor];
  widthAnchor6 = [(UILabel *)self->_storeRestrictedLinkLabel widthAnchor];
  v36 = [widthAnchor5 constraintGreaterThanOrEqualToAnchor:widthAnchor6];
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
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIImageView *)v7 setTintColor:primaryColor];

    [(UIImageView *)self->_activationLockImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    activationLockWarningLabel = self->_activationLockWarningLabel;
    self->_activationLockWarningLabel = v9;

    v11 = self->_activationLockWarningLabel;
    primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UILabel *)v11 setTextColor:primaryColor2];

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
    primaryColor3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UILabel *)v17 setTextColor:primaryColor3];

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
    widthAnchor = [(UIStackView *)self->_activationLockStackView widthAnchor];
    v28 = [widthAnchor constraintLessThanOrEqualToConstant:327.0];
    v37[0] = v28;
    centerXAnchor = [(UIStackView *)self->_activationLockStackView centerXAnchor];
    centerXAnchor2 = [(SBDashBoardSetupView *)self centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v37[1] = v31;
    centerYAnchor = [(UIStackView *)self->_activationLockStackView centerYAnchor];
    centerYAnchor2 = [(SBDashBoardSetupView *)self centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
  preferredFontProvider = [MEMORY[0x277CF0D60] preferredFontProvider];
  v6 = objc_alloc_init(MEMORY[0x277D756B8]);
  securityResearchDeviceTitleLabel = self->_securityResearchDeviceTitleLabel;
  self->_securityResearchDeviceTitleLabel = v6;

  v8 = self->_securityResearchDeviceTitleLabel;
  primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v8 setColor:primaryColor];

  v10 = self->_securityResearchDeviceTitleLabel;
  v54 = preferredFontProvider;
  v11 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76A08] hiFontStyle:4];
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
  primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)v17 setTintColor:primaryColor2];

  [(UIImageView *)self->_securityResearchHeaderIcon setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_securityResearchDeviceContainer addSubview:self->_securityResearchHeaderIcon];
  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  securityResearchSubtitleLabel = self->_securityResearchSubtitleLabel;
  self->_securityResearchSubtitleLabel = v19;

  v21 = self->_securityResearchSubtitleLabel;
  primaryColor3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)v21 setColor:primaryColor3];

  v23 = self->_securityResearchSubtitleLabel;
  v24 = [preferredFontProvider preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:1];
  [(UILabel *)v23 setFont:v24];

  [(UILabel *)self->_securityResearchSubtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_securityResearchSubtitleLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_securityResearchSubtitleLabel setTextAlignment:1];
  [(UILabel *)self->_securityResearchSubtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_securityResearchSubtitleLabel setText:@"Property of Apple Inc."];
  [(UIView *)self->_securityResearchDeviceContainer addSubview:self->_securityResearchSubtitleLabel];
  [(SBDashBoardSetupView *)self addSubview:self->_securityResearchDeviceContainer];
  v43 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIImageView *)self->_securityResearchHeaderIcon centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[0] = v51;
  topAnchor = [(UIView *)self->_securityResearchDeviceContainer topAnchor];
  topAnchor2 = [(UIImageView *)self->_securityResearchHeaderIcon topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v56[1] = v48;
  centerXAnchor3 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerXAnchor];
  centerXAnchor4 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v56[2] = v45;
  topAnchor3 = [(UILabel *)self->_securityResearchDeviceTitleLabel topAnchor];
  bottomAnchor = [(UIImageView *)self->_securityResearchHeaderIcon bottomAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
  v56[3] = v41;
  centerXAnchor5 = [(UILabel *)self->_securityResearchSubtitleLabel centerXAnchor];
  centerXAnchor6 = [(UIView *)self->_securityResearchDeviceContainer centerXAnchor];
  v38 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v56[4] = v38;
  topAnchor4 = [(UILabel *)self->_securityResearchSubtitleLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_securityResearchDeviceTitleLabel bottomAnchor];
  v35 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
  v56[5] = v35;
  bottomAnchor3 = [(UIView *)self->_securityResearchDeviceContainer bottomAnchor];
  bottomAnchor4 = [(UILabel *)self->_securityResearchSubtitleLabel bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v56[6] = v26;
  widthAnchor = [(UIView *)self->_securityResearchDeviceContainer widthAnchor];
  widthAnchor2 = [(UILabel *)self->_securityResearchDeviceTitleLabel widthAnchor];
  v29 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2];
  v56[7] = v29;
  widthAnchor3 = [(UIView *)self->_securityResearchDeviceContainer widthAnchor];
  widthAnchor4 = [(UILabel *)self->_securityResearchSubtitleLabel widthAnchor];
  v32 = [widthAnchor3 constraintGreaterThanOrEqualToAnchor:widthAnchor4];
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
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(SBUICallToActionLabel *)v5 setTintColor:primaryColor];
  }

  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel bs_setHitTestingDisabled:1];
  [(SBUICallToActionLabel *)self->_homeButtonCallToActionLabel setVisible:0 animated:0];
  v7 = self->_homeButtonCallToActionLabel;

  [(SBDashBoardSetupView *)self addSubview:v7];
}

- (void)_addHomeAffordanceForCoverSheetContext:(id)context
{
  v4 = MEMORY[0x277D65F80];
  contextCopy = context;
  v6 = objc_alloc_init(v4);
  homeAffordanceContainer = self->_homeAffordanceContainer;
  self->_homeAffordanceContainer = v6;

  [(SBDashBoardSetupView *)self addSubview:self->_homeAffordanceContainer];
  v8 = [objc_alloc(MEMORY[0x277D02C10]) initWithCoverSheetContext:contextCopy];

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
    view = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
    cursiveTextView = view;
    if (!view)
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
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
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
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] == 1)
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

    _titleView = [(SBDashBoardSetupView *)self _titleView];
    lastBaselineAnchor = [_titleView lastBaselineAnchor];
    centerYAnchor = [(SBDashBoardSetupView *)self centerYAnchor];
    v19 = [lastBaselineAnchor constraintEqualToAnchor:centerYAnchor constant:v14];
    titleYOffsetConstraint = self->_titleYOffsetConstraint;
    self->_titleYOffsetConstraint = v19;

    [(SBDashBoardSetupView *)self addConstraint:self->_titleYOffsetConstraint];
    v14 = 0.0;
LABEL_26:
    leadingAnchor = [(UIView *)self->_childIconView leadingAnchor];
    leadingAnchor2 = [(SBDashBoardSetupView *)self leadingAnchor];
    v36 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:30.0];
    v39[0] = v36;
    trailingAnchor = [(UIView *)self->_childIconView trailingAnchor];
    trailingAnchor2 = [(SBDashBoardSetupView *)self trailingAnchor];
    v22 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-30.0];
    v39[1] = v22;
    centerXAnchor = [(UIView *)self->_childIconView centerXAnchor];
    centerXAnchor2 = [(SBDashBoardSetupView *)self centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v39[2] = v25;
    centerYAnchor2 = [(UIView *)self->_childIconView centerYAnchor];
    centerYAnchor3 = [(SBDashBoardSetupView *)self centerYAnchor];
    v28 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor3 constant:v6 - v14];
    v39[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v34 activateConstraints:v29];

    return;
  }

  if (!v4)
  {
    _titleView2 = [(SBDashBoardSetupView *)self _titleView];
    lastBaselineAnchor2 = [_titleView2 lastBaselineAnchor];
    centerYAnchor4 = [(SBDashBoardSetupView *)self centerYAnchor];
    v10 = __sb__runningInSpringBoard();
    v11 = v10;
    if (v10)
    {
      v12 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      v12 = [currentDevice3 userInterfaceIdiom] == 1;
    }

    v30 = -16.0;
    if (v12)
    {
      v30 = 0.0;
    }

    v31 = [lastBaselineAnchor2 constraintEqualToAnchor:centerYAnchor4 constant:v30];
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
  _titleView = [(SBDashBoardSetupView *)self _titleView];
  v4 = _titleView;
  if (_titleView)
  {
    leadingAnchor = [_titleView leadingAnchor];
    leadingAnchor2 = [(SBDashBoardSetupView *)self leadingAnchor];
    v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:30.0];
    [(SBDashBoardSetupView *)self addConstraint:v7];

    trailingAnchor = [v4 trailingAnchor];
    trailingAnchor2 = [(SBDashBoardSetupView *)self trailingAnchor];
    v10 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-30.0];
    [(SBDashBoardSetupView *)self addConstraint:v10];

    centerXAnchor = [v4 centerXAnchor];
    centerXAnchor2 = [(SBDashBoardSetupView *)self centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(SBDashBoardSetupView *)self addConstraint:v13];

    [(SBDashBoardSetupView *)self _updateBaselineAndChildIconConstraints];
  }

  storeRestrictedContainer = self->_storeRestrictedContainer;
  if (storeRestrictedContainer && self->_storeRestrictedTitleLabel)
  {
    v42 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(UIView *)storeRestrictedContainer leadingAnchor];
    leadingAnchor4 = [(SBDashBoardSetupView *)self leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:30.0];
    v55[0] = v48;
    trailingAnchor3 = [(UIView *)self->_storeRestrictedContainer trailingAnchor];
    trailingAnchor4 = [(SBDashBoardSetupView *)self trailingAnchor];
    v15 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-30.0];
    v55[1] = v15;
    centerXAnchor3 = [(UILabel *)self->_storeRestrictedTitleLabel centerXAnchor];
    centerXAnchor4 = [(SBDashBoardSetupView *)self centerXAnchor];
    v18 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v55[2] = v18;
    centerYAnchor = [(UILabel *)self->_storeRestrictedTitleLabel centerYAnchor];
    centerYAnchor2 = [(SBDashBoardSetupView *)self centerYAnchor];
    v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
      leadingAnchor5 = [(UIView *)securityResearchDeviceContainer leadingAnchor];
      leadingAnchor6 = [(SBDashBoardSetupView *)self leadingAnchor];
      v49 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:30.0];
      v54[0] = v49;
      trailingAnchor5 = [(UIView *)self->_securityResearchDeviceContainer trailingAnchor];
      trailingAnchor6 = [(SBDashBoardSetupView *)self trailingAnchor];
      v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-30.0];
      v54[1] = v24;
      centerXAnchor5 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerXAnchor];
      centerXAnchor6 = [(SBDashBoardSetupView *)self centerXAnchor];
      v27 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
      v54[2] = v27;
      centerYAnchor3 = [(UILabel *)self->_securityResearchDeviceTitleLabel centerYAnchor];
      centerYAnchor4 = [(SBDashBoardSetupView *)self centerYAnchor];
      v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
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

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
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
    trailingAnchor7 = [(UIButton *)self->_infoButton trailingAnchor];
    trailingAnchor8 = [(SBDashBoardSetupView *)self trailingAnchor];
    v37 = -v32;
    v38 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:v37];
    [(SBDashBoardSetupView *)self addConstraint:v38];

    bottomAnchor = [(UIButton *)self->_infoButton bottomAnchor];
    bottomAnchor2 = [(SBDashBoardSetupView *)self bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v37];
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
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice userInterfaceIdiom])
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

      centerXAnchor = [(UIView *)self->_activationInfoView centerXAnchor];
      centerXAnchor2 = [(SBDashBoardSetupView *)self centerXAnchor];
      v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      topAnchor = [(UIView *)self->_activationInfoView topAnchor];
      topAnchor2 = [(SBDashBoardSetupView *)self topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v5];

      widthAnchor = [(UIView *)self->_activationInfoView widthAnchor];
      widthAnchor2 = [(SBDashBoardSetupView *)self widthAnchor];
      v15 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];

      topAnchor3 = [(UIButton *)self->_infoButton topAnchor];
      bottomAnchor = [(UIView *)self->_activationInfoView bottomAnchor];
      v18 = [topAnchor3 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];

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
    superview = [(UIView *)regulatoryInfoView superview];

    if (!superview)
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
    superview = [(UIView *)activationInfoView superview];

    if (!superview)
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

- (void)_animateView:(id)view toActive:(BOOL)active withDispatchGroup:(id)group
{
  activeCopy = active;
  v17[4] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  layer = [view layer];
  if (layer)
  {
    if (activeCopy)
    {
      dispatch_group_enter(groupCopy);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:layer];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"opacity" onLayer:layer];
      v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v10 setKeyTimes:&unk_28336EE20];
      v11 = MEMORY[0x277CCABB0];
      [layer opacity];
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
      [v10 setValue:groupCopy forKey:@"SBDashBoardSetupDispatchGroup"];
      keyPath = [v10 keyPath];
      v15 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", keyPath];
      [layer addAnimation:v10 forKey:v15];

      [layer setOpacity:0.0];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"opacity" onLayer:layer dispatchGroup:groupCopy];
      LODWORD(v16) = 1.0;
      [layer setOpacity:v16];
    }
  }
}

- (void)_animateHomeButtonCallToActionToActive:(BOOL)active withDispatchGroup:(id)group
{
  activeCopy = active;
  groupCopy = group;
  v7 = groupCopy;
  if (self->_homeButtonCallToActionLabel)
  {
    if (activeCopy)
    {
      dispatch_group_enter(groupCopy);
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

- (void)_animateHomeAffordanceCallToActionToActive:(BOOL)active withDispatchGroup:(id)group
{
  activeCopy = active;
  v20[5] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  layer = [(UIView *)self->_homeAffordanceCallToActionContainer layer];
  if (layer)
  {
    if (activeCopy)
    {
      dispatch_group_enter(groupCopy);
      dispatch_group_enter(groupCopy);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"opacity" onLayer:layer];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"opacity" onLayer:layer];
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:layer];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"position.y" onLayer:layer];
      v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v8 setKeyTimes:&unk_28336EE38];
      [v8 setValues:&unk_28336EE50];
      [v8 setCalculationMode:@"cubic"];
      [v8 setBeginTime:CACurrentMediaTime() + 1.0];
      [v8 setDuration:self->_customDelayDuration];
      [v8 setDelegate:self];
      [v8 setValue:groupCopy forKey:@"SBDashBoardSetupDispatchGroup"];
      keyPath = [v8 keyPath];
      v10 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", keyPath];
      [layer addAnimation:v8 forKey:v10];

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
      [v11 setValue:groupCopy forKey:@"SBDashBoardSetupDispatchGroup"];
      keyPath2 = [v11 keyPath];
      v18 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", keyPath2];
      [layer addAnimation:v11 forKey:v18];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"opacity" onLayer:layer dispatchGroup:groupCopy];
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"position.y" onLayer:layer dispatchGroup:groupCopy];
    }
  }
}

- (void)_animateHomeAffordanceToActive:(BOOL)active withDispatchGroup:(id)group
{
  activeCopy = active;
  v17[5] = *MEMORY[0x277D85DE8];
  groupCopy = group;
  layer = [(SBFTouchPassThroughView *)self->_homeAffordanceContainer layer];
  if (layer)
  {
    if (activeCopy)
    {
      dispatch_group_enter(groupCopy);
      [(SBDashBoardSetupView *)self _removeResetAnimationForKeyPath:@"position.y" onLayer:layer];
      [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:@"position.y" onLayer:layer];
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
      [v8 setValue:groupCopy forKey:@"SBDashBoardSetupDispatchGroup"];
      keyPath = [v8 keyPath];
      v16 = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", keyPath];
      [layer addAnimation:v8 forKey:v16];
    }

    else
    {
      [(SBDashBoardSetupView *)self _addResetAnimationForKeyPath:@"position.y" onLayer:layer dispatchGroup:groupCopy];
    }
  }
}

- (void)_addResetAnimationForKeyPath:(id)path onLayer:(id)layer dispatchGroup:(id)group
{
  pathCopy = path;
  layerCopy = layer;
  groupCopy = group;
  presentationLayer = [layerCopy presentationLayer];
  v11 = [presentationLayer valueForKeyPath:pathCopy];
  [v11 doubleValue];
  v13 = v12;

  v14 = [layerCopy valueForKeyPath:pathCopy];
  [v14 doubleValue];
  v16 = v15;

  if (groupCopy)
  {
    dispatch_group_enter(groupCopy);
  }

  [(SBDashBoardSetupView *)self _removeNormalAnimationForKeyPath:pathCopy onLayer:layerCopy];
  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:pathCopy];
  [v17 setDuration:0.25];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v17 setTimingFunction:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v17 setFromValue:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v17 setToValue:v20];

  [v17 setValue:groupCopy forKey:@"SBDashBoardSetupDispatchGroup"];
  pathCopy = [@"SBDashBoardSetupResetAnimation" stringByAppendingFormat:@"-%@", pathCopy];
  [layerCopy addAnimation:v17 forKey:pathCopy];
}

- (void)_removeResetAnimationForKeyPath:(id)path onLayer:(id)layer
{
  layerCopy = layer;
  path = [@"SBDashBoardSetupResetAnimation" stringByAppendingFormat:@"-%@", path];
  [layerCopy removeAnimationForKey:path];
}

- (void)_removeNormalAnimationForKeyPath:(id)path onLayer:(id)layer
{
  layerCopy = layer;
  path = [@"SBDashBoardSetupNormalAnimation" stringByAppendingFormat:@"-%@", path];
  [layerCopy removeAnimationForKey:path];
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
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)_removeDisplayLink
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)_onDisplayLink:(id)link
{
  if (self->_displayLink == link)
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
  view = [(SASBookendViewProvider *)self->_glassCursiveTextViewProvider view];
  [view setHidden:{-[SBDashBoardSetupView _hasSuppressingUI](self, "_hasSuppressingUI")}];
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
    primaryColor = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    [(SBCursiveTextView *)cursiveTextView setFillColor:primaryColor];

    infoButton = self->_infoButton;
    primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)infoButton setTintColor:primaryColor2];

    homeButtonCallToActionLabel = self->_homeButtonCallToActionLabel;
    primaryColor3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(SBUICallToActionLabel *)homeButtonCallToActionLabel setTintColor:primaryColor3];
  }

  else
  {
    titleLabel = self->_titleLabel;
    primaryColor3 = [(_UILegibilitySettings *)legibilitySettings primaryColor];
    [(UILabel *)titleLabel setTextColor:primaryColor3];
  }

  storeRestrictedTitleLabel = self->_storeRestrictedTitleLabel;
  primaryColor4 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)storeRestrictedTitleLabel setColor:primaryColor4];

  storeRestrictedBodyLabel = self->_storeRestrictedBodyLabel;
  primaryColor5 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)storeRestrictedBodyLabel setColor:primaryColor5];

  activationLockImage = self->_activationLockImage;
  primaryColor6 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)activationLockImage setTintColor:primaryColor6];

  activationLockWarningLabel = self->_activationLockWarningLabel;
  primaryColor7 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)activationLockWarningLabel setTextColor:primaryColor7];

  activationLockDetailLabel = self->_activationLockDetailLabel;
  primaryColor8 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)activationLockDetailLabel setTextColor:primaryColor8];

  securityResearchDeviceTitleLabel = self->_securityResearchDeviceTitleLabel;
  primaryColor9 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)securityResearchDeviceTitleLabel setColor:primaryColor9];

  securityResearchHeaderIcon = self->_securityResearchHeaderIcon;
  primaryColor10 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UIImageView *)securityResearchHeaderIcon setTintColor:primaryColor10];

  securityResearchSubtitleLabel = self->_securityResearchSubtitleLabel;
  primaryColor11 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(UILabel *)securityResearchSubtitleLabel setColor:primaryColor11];
}

- (SBSolariumCursiveTextAnimationDelegate)glassCursiveTextAnimationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_glassCursiveTextAnimationDelegate);

  return WeakRetained;
}

@end