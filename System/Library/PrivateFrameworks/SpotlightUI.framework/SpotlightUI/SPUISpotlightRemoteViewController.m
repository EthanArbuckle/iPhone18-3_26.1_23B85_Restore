@interface SPUISpotlightRemoteViewController
+ (unint64_t)spotlightSupportedInterfaceOrientations;
- (CGRect)sceneSettingsFrameFromRect:(CGRect)a3;
- (CGSize)initialFittingSize;
- (FBSDisplayConfiguration)displayConfiguration;
- (SPUISpotlightRemoteViewController)initWithSceneIdentifier:(id)a3;
- (id)sceneSpecification;
- (id)watchdogPolicyForProcess:(id)a3 eventContext:(id)a4;
- (id)watchdogTerminationRequestForProcess:(id)a3 error:(id)a4;
- (int64_t)currentOrientation;
- (void)addOrExecuteEventAsNeeded:(id)a3;
- (void)clearEventQueue;
- (void)createSceneIfNeededWithPriority:(int64_t)a3;
- (void)createSceneWithPriority:(int64_t)a3;
- (void)didInvalidateSceneWhenForeground;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setDisplayConfiguration:(id)a3;
- (void)setForeground:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)transaction:(id)a3 didCreateScene:(id)a4;
- (void)updateSafeAreasOnSettings:(id)a3;
- (void)updateSceneToOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)updateTraitCollection;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willLaunchSpotlightInBackground;
@end

@implementation SPUISpotlightRemoteViewController

- (FBSDisplayConfiguration)displayConfiguration
{
  displayConfiguration = self->_displayConfiguration;
  if (displayConfiguration)
  {
    v3 = displayConfiguration;
  }

  else
  {
    v3 = [MEMORY[0x277D0AA90] mainConfiguration];
  }

  return v3;
}

- (CGSize)initialFittingSize
{
  v2 = [(SPUISpotlightRemoteViewController *)self view];
  v3 = [v2 tlks_screen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)currentOrientation
{
  if ([objc_opt_class() spotlightSupportedInterfaceOrientations] == 2)
  {
    result = 1;
    self->_currentOrientation = 1;
  }

  else
  {
    result = self->_currentOrientation;
    if (!result)
    {
      v4 = SBUIGetUserAgent();
      self->_currentOrientation = [v4 activeInterfaceOrientation];

      return self->_currentOrientation;
    }
  }

  return result;
}

+ (unint64_t)spotlightSupportedInterfaceOrientations
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 userInterfaceIdiom])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = SPUISpotlightRemoteViewController;
  [(SPUISpotlightRemoteViewController *)&v22 viewDidLayoutSubviews];
  v3 = [(SPUISpotlightRemoteViewController *)self view];
  [v3 bounds];
  [(SPUISpotlightRemoteViewController *)self sceneSettingsFrameFromRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SPUISpotlightRemoteViewController *)self scene];
  v13 = [v12 settings];
  [v13 frame];
  v24.origin.x = v14;
  v24.origin.y = v15;
  v24.size.width = v16;
  v24.size.height = v17;
  *&v23.origin.x = v5;
  *&v23.origin.y = v7;
  *&v23.size.width = v9;
  *&v23.size.height = v11;
  v18 = CGRectEqualToRect(v23, v24);

  if (!v18)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke;
    v19[3] = &unk_279D05670;
    objc_copyWeak(v20, &location);
    v20[1] = v5;
    v20[2] = v7;
    v20[3] = v9;
    v20[4] = v11;
    [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained scene];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SPUISpotlightRemoteViewController_viewDidLayoutSubviews__block_invoke_2;
  v5[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v4;
  [v3 updateSettingsWithBlock:v5];
}

- (void)clearEventQueue
{
  v2 = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
  [v2 removeAllObjects];
}

- (SPUISpotlightRemoteViewController)initWithSceneIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SPUISpotlightRemoteViewController;
  v5 = [(SPUISpotlightRemoteViewController *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(SPUISpotlightRemoteViewController *)v5 setSceneIdentifier:v4];
    v7 = [MEMORY[0x277D760A8] sharedInstanceForStyle:1];
    [(SPUISpotlightRemoteViewController *)v6 setLegibilitySettings:v7];

    v8 = objc_opt_new();
    [(SPUISpotlightRemoteViewController *)v6 setSceneEventsQueue:v8];

    v9 = +[SPUISpotlightSceneManager sharedManager];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v6 selector:sel_updateTraitCollection name:*MEMORY[0x277D77548] object:0];

    if ([(SPUISpotlightRemoteViewController *)v6 prewarmSceneInTheBackground])
    {
      v11 = +[SPUISpotlightSceneManager sharedManager];
      [v11 setDelegate:v6];
    }
  }

  return v6;
}

- (void)willLaunchSpotlightInBackground
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SPUISpotlightRemoteViewController_willLaunchSpotlightInBackground__block_invoke;
  block[3] = &unk_279D052A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)updateTraitCollection
{
  v3 = [(SPUISpotlightRemoteViewController *)self scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SPUISpotlightRemoteViewController_updateTraitCollection__block_invoke;
  v4[3] = &unk_279D054C8;
  v4[4] = self;
  [v3 updateSettingsWithBlock:v4];
}

void __58__SPUISpotlightRemoteViewController_updateTraitCollection__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 isUISubclass])
  {
    v3 = *(a1 + 32);
    v4 = v8;
    v5 = [v3 view];
    v6 = [v5 tlks_screen];
    v7 = [v6 traitCollection];
    [v4 setUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
  }
}

- (void)updateSafeAreasOnSettings:(id)a3
{
  v4 = a3;
  v5 = [(SPUISpotlightRemoteViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _scene];
  v8 = [v7 settings];

  v10 = v4;
  if ([v8 isUISubclass])
  {
    if ([v10 isUISubclass])
    {
      [v8 safeAreaInsetsPortrait];
      [v10 setSafeAreaInsetsPortrait:?];
      [v8 peripheryInsets];
      if (v9 > 0.0)
      {
        UIEdgeInsetsRotate();
        [v10 setSafeAreaInsetsLandscapeLeft:?];
        UIEdgeInsetsRotate();
        [v10 setSafeAreaInsetsLandscapeRight:?];
      }
    }
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_legibilitySettings, a3);
  v6 = [(SPUISpotlightRemoteViewController *)self scene];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__SPUISpotlightRemoteViewController_setLegibilitySettings___block_invoke;
  v8[3] = &unk_279D054C8;
  v9 = v5;
  v7 = v5;
  [v6 updateSettingsWithBlock:v8];
}

void __59__SPUISpotlightRemoteViewController_setLegibilitySettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setLegibilitySettings:*(a1 + 32)];
  }
}

- (void)createSceneWithPriority:(int64_t)a3
{
  v5 = +[SPUISpotlightSceneManager sharedManager];
  [v5 launchSpotlightIfNeededWithForegroundPriority:1];

  v6 = [(SPUISpotlightRemoteViewController *)self transaction];

  v7 = qword_280F8EFF0;
  if (v6)
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v7 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SPUISpotlightRemoteViewController *)v7 createSceneWithPriority:?];
    }
  }

  else
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v7 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_26B824000, v7, OS_LOG_TYPE_DEFAULT, "Spotlight is running the frontboard transaction", &buf, 2u);
    }

    v8 = qword_280F8EFF8;
    if (!qword_280F8EFF8)
    {
      SPUIInitLogging();
      v8 = qword_280F8EFF8;
    }

    v9 = os_signpost_id_generate(v8);
    v10 = qword_280F8EFF8;
    if (!qword_280F8EFF8)
    {
      SPUIInitLogging();
      v10 = qword_280F8EFF8;
    }

    v11 = v10;
    v12 = v11;
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_26B824000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "sceneTransactionInterval", &unk_26B830347, &buf, 2u);
    }

    v13 = objc_alloc(MEMORY[0x277D0AA80]);
    v14 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Spotlight"];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke;
    v48[3] = &unk_279D054F0;
    v48[4] = self;
    v48[5] = a3;
    v15 = [v13 initWithProcessIdentity:v14 executionContextProvider:v48];
    [(SPUISpotlightRemoteViewController *)self setTransaction:v15];

    objc_initWeak(&buf, self);
    v16 = [(SPUISpotlightRemoteViewController *)self transaction];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2;
    v45[3] = &unk_279D05540;
    objc_copyWeak(v46, &buf);
    v46[1] = a3;
    v46[2] = v9;
    [v16 setCompletionBlock:v45];

    v17 = [(SPUISpotlightRemoteViewController *)self sceneSpecification];
    v18 = objc_alloc_init([v17 settingsClass]);
    v19 = [v18 mutableCopy];

    v20 = [(SPUISpotlightRemoteViewController *)self displayConfiguration];
    [v19 setDisplayConfiguration:v20];

    v21 = [(SPUISpotlightRemoteViewController *)self view];
    v22 = [v21 tlks_screen];
    v23 = [v22 traitCollection];
    [v19 setUserInterfaceStyle:{objc_msgSend(v23, "userInterfaceStyle")}];

    [v19 setForeground:a3 == 4];
    [(SPUISpotlightRemoteViewController *)self sceneSettingsFrameFromRect:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [v19 setFrame:?];
    [v19 setDeviceOrientationEventsEnabled:0];
    [v19 setInterfaceOrientation:{-[SPUISpotlightRemoteViewController currentOrientation](self, "currentOrientation")}];
    v24 = [v19 ignoreOcclusionReasons];
    [v24 addObject:@"SPUIRemoteSearchIgnoreOcclusionsReason"];

    [v19 setForcedStatusBarForegroundTransparent:1];
    [v19 setInterruptionPolicy:3];
    v25 = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
    [v19 setPersistenceIdentifier:v25];

    v26 = [(SPUISpotlightRemoteViewController *)self legibilitySettings];
    [v19 setLegibilitySettings:v26];

    [v19 addPropagatedProperty:sel_cornerRadiusConfiguration];
    if (+[SPUIDefaults enableFloatingWindow])
    {
      [v19 setEnhancedWindowingEnabled:1];
    }

    v40 = MEMORY[0x277D85DD0];
    v41 = 3221225472;
    v42 = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_21;
    v43 = &unk_279D05568;
    v27 = v19;
    v44 = v27;
    v28 = MEMORY[0x26D682990](&v40);
    v28[2](v28, 1);
    v28[2](v28, 2);
    v28[2](v28, 4);
    v28[2](v28, 3);
    v29 = objc_alloc_init([v17 clientSettingsClass]);
    v30 = [v29 mutableCopy];

    [v30 setStatusBarAlpha:1.0];
    [v30 setStatusBarHidden:0];
    [v30 setBackgroundStyle:4];
    v31 = [MEMORY[0x277D0AD50] parametersForSpecification:v17];
    [v31 setSettings:v27];
    [v31 setClientSettings:v30];
    v32 = [(SPUISpotlightRemoteViewController *)self transaction];
    v33 = MEMORY[0x277D0ADC0];
    v34 = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
    v35 = [v33 identityForIdentifier:v34 workspaceIdentifier:@"com.apple.Spotlight"];
    v36 = objc_alloc_init([v17 transitionContextClass]);
    [v32 updateSceneWithIdentity:v35 parameters:v31 transitionContext:v36];

    v37 = [(SPUISpotlightRemoteViewController *)self transaction];
    [v37 addObserver:self];

    v38 = [(SPUISpotlightRemoteViewController *)self transaction];
    [v38 begin];

    v39 = [(SPUISpotlightRemoteViewController *)self transaction];
    [v39 setWaitsForSceneCommits:1];

    objc_destroyWeak(v46);
    objc_destroyWeak(&buf);
  }
}

id __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setWatchdogProvider:*(a1 + 32)];
  [v2 setLaunchIntent:*(a1 + 40)];

  return v2;
}

void __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTransaction:0];
  v5 = qword_280F8EFF0;
  if (a2)
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v5 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_26B824000, v5, OS_LOG_TYPE_DEFAULT, "Spotlight scene transaction passed", v12, 2u);
    }
  }

  else
  {
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v5 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_2_cold_1(v5);
    }

    v6 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_16;
    block[3] = &unk_279D05518;
    v7 = *(a1 + 40);
    block[4] = WeakRetained;
    block[5] = v7;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }

  v8 = qword_280F8EFF8;
  if (!qword_280F8EFF8)
  {
    SPUIInitLogging();
    v8 = qword_280F8EFF8;
  }

  v9 = v8;
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B824000, v10, OS_SIGNPOST_INTERVAL_END, v11, "sceneTransactionInterval", " enableTelemetry=YES ", v12, 2u);
  }
}

uint64_t __61__SPUISpotlightRemoteViewController_createSceneWithPriority___block_invoke_21(uint64_t a1, uint64_t a2)
{
  [*MEMORY[0x277D76620] statusBarHeightForOrientation:a2 ignoreHidden:1];
  v4 = *(a1 + 32);

  return [v4 setDefaultStatusBarHeight:a2 forOrientation:?];
}

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && self->_displayConfiguration != v5)
  {
    objc_storeStrong(&self->_displayConfiguration, a3);
    self->_delayPresentationTillSceneContentIsReady = 1;
    if ([(FBSDisplayConfiguration *)v6 isExternal])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    [(SPUISpotlightRemoteViewController *)self setCurrentOrientation:v7];
    v8 = [(SPUISpotlightRemoteViewController *)self scene];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__SPUISpotlightRemoteViewController_setDisplayConfiguration___block_invoke;
    v9[3] = &unk_279D05590;
    v10 = v6;
    v11 = self;
    [v8 updateSettingsWithBlock:v9];
  }
}

void __61__SPUISpotlightRemoteViewController_setDisplayConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDisplayConfiguration:v3];
  v4 = *(a1 + 40);
  [*(a1 + 32) bounds];
  [v4 sceneSettingsFrameFromRect:?];
  [v5 setFrame:?];
}

- (void)createSceneIfNeededWithPriority:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(SPUISpotlightRemoteViewController *)self scene];
  if (v5 && (v6 = v5, -[SPUISpotlightRemoteViewController scene](self, "scene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isValid], v7, v6, (v8 & 1) != 0))
  {
    v9 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(SPUISpotlightRemoteViewController *)self scene];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_26B824000, v10, OS_LOG_TYPE_DEFAULT, "Current scene %@", &v14, 0xCu);
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *MEMORY[0x277D85DE8];

    [(SPUISpotlightRemoteViewController *)self createSceneWithPriority:a3];
  }
}

- (void)setForeground:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(SPUISpotlightRemoteViewController *)self hostView];
  v6 = [v5 presenter];
  v7 = [v6 presentationContext];
  v8 = [v7 backgroundColorWhileHosting];

  if (v8)
  {
    v9 = [(SPUISpotlightRemoteViewController *)self hostView];
    v10 = [v9 presenter];
    [v10 modifyPresentationContext:&__block_literal_global_2];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_2;
  v15[3] = &unk_279D05600;
  objc_copyWeak(&v16, &location);
  v17 = v3;
  [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v15];
  v11 = @"background";
  if (v3)
  {
    v11 = @"foreground";
  }

  v12 = v11;
  v13 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging();
    v13 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&dword_26B824000, v13, OS_LOG_TYPE_DEFAULT, "Spotlight is getting to the %@", buf, 0xCu);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained scene];
  v4 = [v3 renderingEnvironment];

  v5 = *(a1 + 40);
  v6 = +[SPUISpotlightSceneManager sharedManager];
  v7 = [WeakRetained scene];
  if (v5 == 1)
  {
    [v6 sceneWillForeground:v7];
  }

  else
  {
    [v6 sceneWillBackground:v7];
  }

  [v4 setActiveAppearance:*(a1 + 40)];
  v8 = [WeakRetained scene];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_3;
  v9[3] = &unk_279D055D8;
  v10 = *(a1 + 40);
  v9[4] = WeakRetained;
  [v8 updateSettingsWithTransitionBlock:v9];
}

uint64_t __51__SPUISpotlightRemoteViewController_setForeground___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setForeground:*(a1 + 40)];
  if ([v3 isUISubclass] && *(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) view];
    v5 = [v4 window];
    [*(a1 + 32) setCurrentOrientation:{objc_msgSend(v5, "_windowInterfaceOrientation")}];

    v6 = v3;
    [v6 setInterfaceOrientation:{objc_msgSend(*(a1 + 32), "currentOrientation")}];
    [*(a1 + 32) updateSafeAreasOnSettings:v6];
    if (!+[SPUIDefaults enableFloatingWindow])
    {
      [v6 setForcedStatusBarStyle:&unk_287C48B58];
    }
  }

  return 0;
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v5 = a3;
  v6 = [(SPUISpotlightRemoteViewController *)self scene];
  [v6 removeObserver:self];

  v7 = [(SPUISpotlightRemoteViewController *)self transaction];
  [v7 removeObserver:self];

  [(SPUISpotlightRemoteViewController *)self setScene:0];
  v8 = [(SPUISpotlightRemoteViewController *)self presenter];
  [v8 invalidate];

  [(SPUISpotlightRemoteViewController *)self setPresenter:0];
  v9 = [(SPUISpotlightRemoteViewController *)self hostView];
  [v9 removeFromSuperview];

  [(SPUISpotlightRemoteViewController *)self setHostView:0];
  v10 = +[SPUISpotlightSceneManager sharedManager];
  [v10 removeScene:v5];

  v11 = [v5 settings];
  if ([v11 isForeground])
  {
    v12 = [(SPUISpotlightRemoteViewController *)self _appearState]!= 0;
  }

  else
  {
    v12 = 0;
  }

  [(SPUISpotlightRemoteViewController *)self setCrashedWhileForeground:v12];

  if ([(SPUISpotlightRemoteViewController *)self crashedWhileForeground])
  {
    v13 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v13 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SPUISpotlightRemoteViewController sceneDidInvalidate:v5 withContext:v13];
    }

    [(SPUISpotlightRemoteViewController *)self createSceneWithPriority:4];
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  if (self->_delayPresentationTillSceneContentIsReady)
  {
    v4 = [a3 contentState];
    if (v4 == 2)
    {
      self->_delayPresentationTillSceneContentIsReady = 0;
    }

    v5 = [(SPUISpotlightRemoteViewController *)self hostView];
    v7 = v5;
    v6 = 0.0;
    if (v4 == 2)
    {
      v6 = 1.0;
    }

    [v5 setAlpha:v6];
  }
}

- (void)transaction:(id)a3 didCreateScene:(id)a4
{
  *(&v47[1] + 4) = *MEMORY[0x277D85DE8];
  v5 = a4;
  [(SPUISpotlightRemoteViewController *)self setScene:v5];
  v6 = [(SPUISpotlightRemoteViewController *)self scene];
  [v6 addObserver:self];

  v7 = +[SPUISpotlightSceneManager sharedManager];
  [v7 addScene:v5];

  v8 = [(SPUISpotlightRemoteViewController *)self scene];
  v9 = [v8 uiPresentationManager];

  v10 = [(SPUISpotlightRemoteViewController *)self sceneIdentifier];
  v11 = [v9 createPresenterWithIdentifier:v10];

  v12 = [(SPUISpotlightRemoteViewController *)self presenter];
  [v12 invalidate];

  [(SPUISpotlightRemoteViewController *)self setPresenter:v11];
  v13 = [v11 presentationView];
  [(SPUISpotlightRemoteViewController *)self setHostView:v13];

  [v11 modifyPresentationContext:&__block_literal_global_41];
  [v11 activate];
  v14 = [(SPUISpotlightRemoteViewController *)self view];
  v15 = [(SPUISpotlightRemoteViewController *)self hostView];
  v16 = [(SPUISpotlightRemoteViewController *)self hostView];
  [v14 addSubview:v16];

  v17 = [(SPUISpotlightRemoteViewController *)self hostView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [v15 leadingAnchor];
  v19 = [v14 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v15 trailingAnchor];
  v22 = [v14 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [v15 topAnchor];
  v25 = [v14 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [v15 bottomAnchor];
  v28 = [v14 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v29 setActive:1];

  v30 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging();
    v30 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47[0] = v5;
    _os_log_impl(&dword_26B824000, v30, OS_LOG_TYPE_DEFAULT, "Spotlight created scene %@", buf, 0xCu);
  }

  [(SPUISpotlightRemoteViewController *)self sceneContentStateDidChange:v5];
  if ([(SPUISpotlightRemoteViewController *)self crashedWhileForeground])
  {
    [(SPUISpotlightRemoteViewController *)self didInvalidateSceneWhenForeground];
    [(SPUISpotlightRemoteViewController *)self setCrashedWhileForeground:0];
  }

  else
  {
    v39 = v11;
    v40 = v9;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v31 = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
    v32 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v42;
      do
      {
        v35 = 0;
        do
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(v31);
          }

          (*(*(*(&v41 + 1) + 8 * v35) + 16))();
          v36 = qword_280F8EFF0;
          if (!qword_280F8EFF0)
          {
            SPUIInitLogging();
            v36 = qword_280F8EFF0;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            [(SPUISpotlightRemoteViewController *)buf transaction:v36 didCreateScene:self, v47];
          }

          ++v35;
        }

        while (v33 != v35);
        v33 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v33);
    }

    [(SPUISpotlightRemoteViewController *)self clearEventQueue];
    v9 = v40;
    v11 = v39;
  }

  v37 = [(SPUISpotlightRemoteViewController *)self view];
  [v37 layoutIfNeeded];

  v38 = *MEMORY[0x277D85DE8];
}

void __64__SPUISpotlightRemoteViewController_transaction_didCreateScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
  [v2 setClippingDisabled:1];
}

- (void)didInvalidateSceneWhenForeground
{
  v2 = qword_280F8EFF0;
  if (!qword_280F8EFF0)
  {
    SPUIInitLogging();
    v2 = qword_280F8EFF0;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(SPUISpotlightRemoteViewController *)v2 didInvalidateSceneWhenForeground];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = SPUISpotlightRemoteViewController;
  v7 = a4;
  [(SPUISpotlightRemoteViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(SPUISpotlightRemoteViewController *)self view:v11.receiver];
  v9 = [v8 window];
  v10 = [v9 _toWindowOrientation];

  if (v10)
  {
    [(SPUISpotlightRemoteViewController *)self setCurrentOrientation:v10];
  }

  else
  {
    v10 = [(SPUISpotlightRemoteViewController *)self currentOrientation];
  }

  [(SPUISpotlightRemoteViewController *)self updateSceneToOrientation:v10 withTransitionCoordinator:v7];
}

- (void)updateSceneToOrientation:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = [(SPUISpotlightRemoteViewController *)self scene];
  v8 = [v7 settings];
  v9 = [v8 interfaceOrientation];

  if (v9 != a3)
  {
    v10 = [(SPUISpotlightRemoteViewController *)self scene];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__SPUISpotlightRemoteViewController_updateSceneToOrientation_withTransitionCoordinator___block_invoke;
    v11[3] = &unk_279D05628;
    v12 = v6;
    v13 = a3;
    [v10 updateSettingsWithTransitionBlock:v11];
  }
}

id __88__SPUISpotlightRemoteViewController_updateSceneToOrientation_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D75188] transitionContext];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x277CF0B70];
    [v5 transitionDuration];
    v7 = [v6 settingsWithDuration:?];
    [v4 setAnimationSettings:v7];

    v8 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    [v4 setAnimationFence:v8];
  }

  [v3 setInterfaceOrientation:*(a1 + 40)];

  return v4;
}

- (CGRect)sceneSettingsFrameFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectEqualToRect(a3, *MEMORY[0x277CBF3A0]))
  {
    [(SPUISpotlightRemoteViewController *)self initialFittingSize];
    width = v8;
    [(SPUISpotlightRemoteViewController *)self initialFittingSize];
    height = v9;
  }

  v10 = [(SPUISpotlightRemoteViewController *)self currentOrientation];
  if ((v10 - 3) >= 2)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  if ((v10 - 3) >= 2)
  {
    v12 = width;
  }

  else
  {
    v12 = height;
  }

  v13 = x;
  v14 = y;
  result.size.height = v11;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)addOrExecuteEventAsNeeded:(id)a3
{
  v4 = a3;
  v5 = [(SPUISpotlightRemoteViewController *)self scene];
  if (v5 && (v6 = v5, -[SPUISpotlightRemoteViewController scene](self, "scene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isValid], v7, v6, v8))
  {
    v4[2](v4);
    v9 = qword_280F8EFF0;
    if (!qword_280F8EFF0)
    {
      SPUIInitLogging();
      v9 = qword_280F8EFF0;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(SPUISpotlightRemoteViewController *)v9 addOrExecuteEventAsNeeded:?];
    }
  }

  else
  {
    v10 = [(SPUISpotlightRemoteViewController *)self sceneEventsQueue];
    v11 = MEMORY[0x26D682990](v4);
    [v10 addObject:v11];
  }
}

- (id)watchdogPolicyForProcess:(id)a3 eventContext:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  if ([v4 event] == 1 || objc_msgSend(v4, "event") == 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 sceneSettings];
    [v6 isForeground];

    v7 = MEMORY[0x277D0AD88];
    FBSProcessResourceAllowanceMakeWithRealTimeInterval();
    v8 = [v7 provisionWithAllowance:v13];
    v9 = MEMORY[0x277D0AD98];
    v14[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v5 = [v9 policyWithProvisions:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)watchdogTerminationRequestForProcess:(id)a3 error:(id)a4
{
  v4 = [MEMORY[0x277D0AD90] requestForProcess:a3 withLabel:@"Spotlight is unresponsive"];
  [v4 setExplanation:@"Spotlight is unresponsive"];
  [v4 setReportType:1];

  return v4;
}

- (void)createSceneWithPriority:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 transaction];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_26B824000, v3, OS_LOG_TYPE_ERROR, "Spotlight has an existing transaction in progress %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidInvalidate:(uint64_t)a1 withContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B824000, a2, OS_LOG_TYPE_ERROR, "Spotlight died in the foreground for scene %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)transaction:(void *)a3 didCreateScene:(void *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 scene];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_26B824000, v7, OS_LOG_TYPE_DEBUG, "Spotlight scene got updated %@", a1, 0xCu);
}

- (void)addOrExecuteEventAsNeeded:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 scene];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_26B824000, v3, OS_LOG_TYPE_DEBUG, "Spotlight scene got updated %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end