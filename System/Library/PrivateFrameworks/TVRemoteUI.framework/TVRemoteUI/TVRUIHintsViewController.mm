@interface TVRUIHintsViewController
- (BOOL)_shouldAllowHintsToPresent;
- (BOOL)_siriHintEnabled;
- (BOOL)_volumeHintEnabled;
- (BOOL)hasPresentedContent;
- (CGAffineTransform)_gylphTransformForOrientation:(SEL)orientation;
- (CGRect)_frameForUserIntentButtonPresented:(BOOL)presented;
- (CGRect)_frameForVolumeButtonsPresented:(BOOL)presented;
- (CGRect)tipSourceRect;
- (TVRUIHintsViewController)init;
- (int64_t)currentInterfaceOrientation;
- (unint64_t)_permittedArrowDirectionsForDevice:(id)device;
- (unint64_t)permittedArrowDirections;
- (void)_applyTransformForOrientation:(int64_t)orientation;
- (void)_cleanupHints;
- (void)_dismissHintsWithCompletion:(id)completion;
- (void)_largeTextEnabledStatusChanged:(id)changed;
- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation;
- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_setupDebugUIIfEnabled;
- (void)_setupTipsControllerIfNeeded;
- (void)_setupUserIntentButtonHintWithPresentation:(unint64_t)presentation;
- (void)_setupVolumeButtonsHintWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_siriActivated:(id)activated;
- (void)_siriDeactivated:(id)deactivated;
- (void)_updateUserIntentButtonHintFrameForPresentation:(unint64_t)presentation;
- (void)_updateVolumeButtonsHintFrameWithPresentation:(unint64_t)presentation volumeImage:(id)image;
- (void)_volumeDownButtonPressed:(id)pressed;
- (void)_volumeUpButtonPressed:(id)pressed;
- (void)dealloc;
- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume;
- (void)device:(id)device supportsVolume:(BOOL)volume;
- (void)dismissHints;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)remoteWillBeDismissed;
- (void)replayHints;
- (void)requestHintsForSiri:(BOOL)siri volumeMode:(unint64_t)mode;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TVRUIHintsViewController

- (TVRUIHintsViewController)init
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TVRUIHintsViewController;
  v2 = [(TVRUIHintsViewController *)&v15 init];
  v3 = v2;
  if (v2)
  {
    currentInterfaceOrientation = 1;
    v2->_allowSiriHint = 1;
    v2->_allowVolumeHint = 1;
    v2->_allowTips = 1;
    v5 = +[TVRUIDeviceInfo currentDeviceInfo];
    if ([v5 isPad])
    {
      currentInterfaceOrientation = [(TVRUIHintsViewController *)v3 currentInterfaceOrientation];
    }

    v6 = +[TVRUIHintsStyle styleProviderForUserInterfaceIdiom:hasHomeButton:](TVRUIHintsStyle, "styleProviderForUserInterfaceIdiom:hasHomeButton:", [v5 isPad], objc_msgSend(v5, "hasHomeButton"));
    styleProvider = v3->_styleProvider;
    v3->_styleProvider = v6;

    v8 = _TVRUIHintsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v3->_styleProvider;
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Style provider: %@", buf, 0xCu);
    }

    v10 = [v5 hardwareInfoForOrientation:currentInterfaceOrientation];
    [(TVRUIHintsViewController *)v3 setHardwareInfo:v10];

    v11 = _TVRUIHintsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      hardwareInfo = [(TVRUIHintsViewController *)v3 hardwareInfo];
      v13 = [hardwareInfo description];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Current hardwareInfo for device: %@", buf, 0xCu);
    }

    [(TVRUIHintsViewController *)v3 setLastAnimatedTimeInterval:0.0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v9 viewDidLoad];
  view = [(TVRUIHintsViewController *)self view];
  [view setUserInteractionEnabled:0];

  [(TVRUIHintsViewController *)self setDefinesPresentationContext:1];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
  [(TVRUIHintsViewController *)self _setupDebugUIIfEnabled];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__largeTextEnabledStatusChanged_ name:*MEMORY[0x277D76810] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__siriActivated_ name:@"TVRUISiriManagerSiriActivated" object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__siriDeactivated_ name:@"TVRUISiriManagerSiriDeactivated" object:0];

  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__volumeUpButtonPressed_ name:@"TVRUIVolumeUpEventGenerated" object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__volumeDownButtonPressed_ name:@"TVRUIVolumeDownEventGenerated" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v4 viewWillAppear:appear];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v4 viewDidAppear:appear];
  if (+[TVRUIFeatures persistHintsUIEnabled])
  {
    [(TVRUIHintsViewController *)self requestHintsForSiri:1 volume:1];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(TVRUIHintsViewController *)self dismissHints];
  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  [(TVRUIHintsViewController *)self _applyTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
}

- (void)dealloc
{
  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  v3.receiver = self;
  v3.super_class = TVRUIHintsViewController;
  [(TVRUIHintsViewController *)&v3 dealloc];
}

- (void)device:(id)device supportsSiri:(BOOL)siri volume:(BOOL)volume
{
  volumeCopy = volume;
  siriCopy = siri;
  v17 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(TVRUIHintsViewController *)self setSupportsSiri:siriCopy];
  [(TVRUIHintsViewController *)self setSupportsVolume:volumeCopy];
  name = [deviceCopy name];

  v10 = _TVRUIHintsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = name;
    v13 = 1024;
    v14 = siriCopy;
    v15 = 1024;
    v16 = volumeCopy;
    _os_log_impl(&dword_26CFEB000, v10, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewControllerDelegate callback deviceName='%@', supportsSiri=%{BOOL}d, supportsVolume=%{BOOL}d", &v11, 0x18u);
  }

  [(TVRUIHintsViewController *)self _setupTipsControllerIfNeeded];
  [(TVRUIHintsViewController *)self requestHintsForSiri:siriCopy volume:volumeCopy];
}

- (void)device:(id)device supportsVolume:(BOOL)volume
{
  volumeCopy = volume;
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  [(TVRUIHintsViewController *)self setSupportsVolume:volumeCopy];
  v7 = CACurrentMediaTime();
  [(TVRUIHintsViewController *)self lastAnimatedTimeInterval];
  v8 = 0.0;
  if (v9 >= 0.0)
  {
    [(TVRUIHintsViewController *)self lastAnimatedTimeInterval];
    v8 = v7 - v10;
  }

  v11 = _TVRUIHintsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_26CFEB000, v11, OS_LOG_TYPE_DEFAULT, "Elapsed time: %f", &v14, 0xCu);
  }

  if (volumeCopy && v8 > 1.0)
  {
    v12 = _TVRUIHintsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name = [deviceCopy name];
      v14 = 138412546;
      v15 = *&name;
      v16 = 1024;
      v17 = 1;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "TVRUIRemoteViewControllerDelegate callback deviceName='%@', supportsVolume=%{BOOL}d", &v14, 0x12u);
    }

    [(TVRUIHintsViewController *)self requestHintsForSiri:0 volume:1];
  }
}

- (void)requestHintsForSiri:(BOOL)siri volumeMode:(unint64_t)mode
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider animationPresentationDelay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke;
  block[3] = &unk_279D88958;
  siriCopy = siri;
  block[4] = self;
  block[5] = mode;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldAllowHintsToPresent])
  {
    if (*(a1 + 48) == 1)
    {
      v2 = [*(a1 + 32) _siriHintEnabled];
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 40))
    {
      v3 = [*(a1 + 32) _volumeHintEnabled];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = 0;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    v4 = _TVRUIHintsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 32) allowSiriHint];
      v7 = [*(a1 + 32) styleProvider];
      *buf = 67109632;
      *v56 = v5;
      *&v56[4] = 1024;
      *&v56[6] = v6;
      *v57 = 1024;
      *&v57[2] = [v7 shouldShowSiriHint];
      _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Siri button hint not enabled, showSiri=%{BOOL}d, allowSiriHint=%{BOOL}d, shouldShowSiriHint=%{BOOL}d", buf, 0x14u);
    }

LABEL_12:
    if ((v3 & 1) == 0)
    {
      v8 = _TVRUIHintsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) allowVolumeHint];
        v11 = [*(a1 + 32) styleProvider];
        v12 = [v11 shouldShowVolumeHint];
        *buf = 134218496;
        *v56 = v9;
        *&v56[8] = 1024;
        *v57 = v10;
        *&v57[4] = 1024;
        v58 = v12;
        _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Volume button hint not enabled, volumeMode=%ld, allowVolumeHint=%{BOOL}d, shouldShowVolumeHint=%{BOOL}d", buf, 0x18u);
      }

      if ((v2 & 1) == 0)
      {
        v18 = _TVRUIHintsLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v18, OS_LOG_TYPE_DEFAULT, "Siri and Volume are not supported so don't show the hints", buf, 2u);
        }

        goto LABEL_27;
      }
    }

    v13 = [*(a1 + 32) styleProvider];
    [v13 animationDuration];
    v15 = v14;

    v16 = *(a1 + 40);
    if (v16 == 2)
    {
      v17 = [*(a1 + 32) styleProvider];
      v18 = [v17 micVolumeImage];
      v15 = 3.0;
    }

    else
    {
      if (v16 != 1)
      {
        v18 = 0;
        goto LABEL_24;
      }

      v17 = [*(a1 + 32) styleProvider];
      v18 = [v17 volumeImage];
    }

LABEL_24:
    [*(a1 + 32) _updateUserIntentButtonHintFrameForPresentation:0];
    [*(a1 + 32) _updateVolumeButtonsHintFrameWithPresentation:0 volumeImage:v18];
    v19 = _TVRUIHintsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v56 = v2;
      *&v56[4] = 1024;
      *&v56[6] = v3;
      _os_log_impl(&dword_26CFEB000, v19, OS_LOG_TYPE_DEFAULT, "Animating hints siri=%{BOOL}d, volume=%{BOOL}d", buf, 0xEu);
    }

    v20 = +[TVRUICubicSpringAnimator standardSpringAnimator];
    [*(a1 + 32) setPresentationAnimator:v20];

    v21 = [*(a1 + 32) userIntentButtonHint];
    [v21 setHidden:0];

    v22 = [*(a1 + 32) userIntentButtonHint];
    [v22 setAlpha:0.0];

    [*(a1 + 32) _frameForUserIntentButtonPresented:0];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [*(a1 + 32) userIntentButtonHint];
    [v31 setFrame:{v24, v26, v28, v30}];

    v32 = [*(a1 + 32) volumeButtonsHint];
    [v32 setHidden:0];

    v33 = [*(a1 + 32) volumeButtonsHint];
    [v33 setAlpha:0.0];

    [*(a1 + 32) _frameForVolumeButtonsPresented:0];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = [*(a1 + 32) volumeButtonsHint];
    [v42 setFrame:{v35, v37, v39, v41}];

    objc_initWeak(buf, *(a1 + 32));
    v43 = [*(a1 + 32) presentationAnimator];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_25;
    v51[3] = &unk_279D88908;
    objc_copyWeak(&v52, buf);
    v53 = v3;
    v54 = v2;
    [v43 addAnimations:v51];

    v44 = [*(a1 + 32) presentationAnimator];
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_2;
    v49 = &unk_279D88930;
    objc_copyWeak(v50, buf);
    v50[1] = *&v15;
    [v44 addCompletion:&v46];

    v45 = [*(a1 + 32) presentationAnimator];
    [v45 startAnimation];

    [*(a1 + 32) setLastAnimatedTimeInterval:CACurrentMediaTime()];
    objc_destroyWeak(v50);
    objc_destroyWeak(&v52);
    objc_destroyWeak(buf);
LABEL_27:
  }
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = WeakRetained;
    if (*(a1 + 40) == 1)
    {
      v3 = [WeakRetained volumeButtonsHint];
      [v3 setAlpha:1.0];

      [v23 _frameForVolumeButtonsPresented:1];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v23 volumeButtonsHint];
      [v12 setFrame:{v5, v7, v9, v11}];

      WeakRetained = v23;
    }

    if (*(a1 + 41) == 1)
    {
      v13 = [v23 userIntentButtonHint];
      [v13 setAlpha:1.0];

      [v23 _frameForUserIntentButtonPresented:1];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v23 userIntentButtonHint];
      [v22 setFrame:{v15, v17, v19, v21}];

      WeakRetained = v23;
    }
  }
}

void __59__TVRUIHintsViewController_requestHintsForSiri_volumeMode___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (a2)
    {
      [WeakRetained _cleanupHints];
    }

    else
    {
      [WeakRetained performSelector:sel__dismissHintsWithCompletion_ withObject:0 afterDelay:*(a1 + 40)];
    }

    WeakRetained = v5;
  }
}

- (void)dismissHints
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIHintsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[TVRUIHintsViewController dismissHints]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(TVRUIHintsViewController *)self _dismissHintsWithCompletion:0];
}

- (void)remoteWillBeDismissed
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _TVRUIHintsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TVRUIHintsViewController remoteWillBeDismissed]";
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(TVRUIHintsViewController *)self dismissPresentedContentAnimated:0 completion:0];
  siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

  if (siriTipManager)
  {
    v5 = _TVRUITipsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TVRUIHintsViewController remoteWillBeDismissed];
    }

    siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
    [siriTipManager2 invalidate:0 didPerformAction:0 completion:0];
  }

  [(TVRUIHintsViewController *)self setLastAnimatedTimeInterval:0.0];
}

- (void)replayHints
{
  supportsSiri = [(TVRUIHintsViewController *)self supportsSiri];
  supportsVolume = [(TVRUIHintsViewController *)self supportsVolume];

  [(TVRUIHintsViewController *)self requestHintsForSiri:supportsSiri volume:supportsVolume];
}

- (void)_updateUserIntentButtonHintFrameForPresentation:(unint64_t)presentation
{
  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];

  if (userIntentButtonHint)
  {
    userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
    [userIntentButtonHint2 setPresentation:presentation];
  }

  else
  {

    [(TVRUIHintsViewController *)self _setupUserIntentButtonHintWithPresentation:presentation];
  }
}

- (void)_setupUserIntentButtonHintWithPresentation:(unint64_t)presentation
{
  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];

  if (!userIntentButtonHint)
  {
    v6 = _TVRUIHintsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "Setting up UserIntent button hint", v24, 2u);
    }

    hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo userIntentButtonRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v25.origin.x = v9;
    v25.origin.y = v11;
    v25.size.width = v13;
    v25.size.height = v15;
    if (CGRectEqualToRect(v25, *MEMORY[0x277CBF3A0]))
    {
      view = _TVRUIHintsLog();
      if (os_log_type_enabled(view, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&dword_26CFEB000, view, OS_LOG_TYPE_DEFAULT, "userIntentButtonRect is CGRectZero", v24, 2u);
      }
    }

    else
    {
      v17 = [TVRUIHintsUserIntentButtonView alloc];
      styleProvider = [(TVRUIHintsViewController *)self styleProvider];
      hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
      v20 = -[TVRUIHintsUserIntentButtonView initWithPresentation:styleProvider:buttonEdge:](v17, "initWithPresentation:styleProvider:buttonEdge:", presentation, styleProvider, [hardwareInfo2 userIntentButtonEdge]);
      [(TVRUIHintsViewController *)self setUserIntentButtonHint:v20];

      [(TVRUIHintsViewController *)self _gylphTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
      userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
      glyphView = [userIntentButtonHint2 glyphView];
      v24[0] = v24[3];
      v24[1] = v24[4];
      v24[2] = v24[5];
      [glyphView setTransform:v24];

      view = [(TVRUIHintsViewController *)self view];
      userIntentButtonHint3 = [(TVRUIHintsViewController *)self userIntentButtonHint];
      [view addSubview:userIntentButtonHint3];
    }
  }
}

- (void)_updateVolumeButtonsHintFrameWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v25 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];

  if (volumeButtonsHint)
  {
    volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [volumeButtonsHint2 updateGlyphImage:imageCopy];

    volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [volumeButtonsHint3 setPresentation:presentation];
  }

  else
  {
    [(TVRUIHintsViewController *)self _setupVolumeButtonsHintWithPresentation:presentation volumeImage:imageCopy];
  }

  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  volumeButtonsEdge = [hardwareInfo volumeButtonsEdge];

  if (volumeButtonsEdge == 1)
  {
    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    MinY = CGRectGetMinY(v28);
    v15 = 0.0;
  }

  else if (volumeButtonsEdge == 2)
  {
    view = [(TVRUIHintsViewController *)self view];
    [view bounds];
    MinY = CGRectGetWidth(v26);

    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    v15 = CGRectGetMinY(v27);
  }

  else
  {
    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo2 volumeUpButtonRect];
    v15 = CGRectGetMinY(v29);
    MinY = 0.0;
  }

  v16 = _TVRUIHintsLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67109120;
    v24[1] = volumeButtonsEdge;
    _os_log_impl(&dword_26CFEB000, v16, OS_LOG_TYPE_DEFAULT, "Volume button hints presenting edge: %u", v24, 8u);
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider volumeHintContainerWidth];
  v19 = v18;

  hardwareInfo3 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo3 totalHeight];
  v22 = v21;
  volumeButtonsHint4 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint4 setFrame:{MinY, v15, v19, v22}];
}

- (void)_setupVolumeButtonsHintWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v26 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v7 = _TVRUIHintsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[TVRUIHintsViewController _setupVolumeButtonsHintWithPresentation:volumeImage:]";
    *&buf[12] = 2048;
    *&buf[14] = presentation;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s, presentation=%ld", buf, 0x16u);
  }

  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];

  if (!volumeButtonsHint)
  {
    v9 = _TVRUIHintsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v9, OS_LOG_TYPE_DEFAULT, "Setting up volume buttons hint", buf, 2u);
    }

    hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
    [hardwareInfo volumeUpButtonRect];
    Height = CGRectGetHeight(v27);

    hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
    volumeButtonsEdge = [hardwareInfo2 volumeButtonsEdge];

    v14 = [TVRUIHintsVolumeButtonsView alloc];
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    v16 = [(TVRUIHintsVolumeButtonsView *)v14 initWithPresentation:presentation image:imageCopy styleProvider:styleProvider buttonEdge:volumeButtonsEdge buttonHeight:Height];
    [(TVRUIHintsViewController *)self setVolumeButtonsHint:v16];

    [(TVRUIHintsViewController *)self _gylphTransformForOrientation:[(TVRUIHintsViewController *)self currentInterfaceOrientation]];
    volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    glyphView = [volumeButtonsHint2 glyphView];
    *buf = v21;
    *&buf[16] = v22;
    v25 = v23;
    [glyphView setTransform:buf];

    view = [(TVRUIHintsViewController *)self view];
    volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
    [view addSubview:volumeButtonsHint3];
  }
}

- (void)_volumeUpButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIHintsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIHintsViewController _volumeUpButtonPressed:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:1];
}

- (void)_volumeDownButtonPressed:(id)pressed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _TVRUIHintsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TVRUIHintsViewController _volumeDownButtonPressed:]";
    _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:2];
}

- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  volumeImage = [styleProvider volumeImage];
  [(TVRUIHintsViewController *)self _presentVolumeButtonPressWithPresentation:presentation volumeImage:volumeImage];
}

- (void)_presentVolumeButtonPressWithPresentation:(unint64_t)presentation volumeImage:(id)image
{
  v75 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  v7 = _TVRUIHintsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v72 = "[TVRUIHintsViewController _presentVolumeButtonPressWithPresentation:volumeImage:]";
    v73 = 2048;
    presentationCopy = presentation;
    _os_log_impl(&dword_26CFEB000, v7, OS_LOG_TYPE_DEFAULT, "%s, presentation=%ld", buf, 0x16u);
  }

  [(TVRUIHintsViewController *)self _cleanupHints];
  if (![(TVRUIHintsViewController *)self _shouldAllowHintsToPresent])
  {
    v13 = _TVRUIHintsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Not showing volume button activated hint because _shouldAllowHintsToPresent returned NO", buf, 2u);
    }

    goto LABEL_24;
  }

  view = [(TVRUIHintsViewController *)self view];
  window = [view window];
  if ([window interfaceOrientation] != 3)
  {

    goto LABEL_13;
  }

  v10 = +[TVRUIDeviceInfo currentDeviceInfo];
  isPad = [v10 isPad];

  presentationCopy3 = presentation;
  if (isPad)
  {
    if (presentation == 1)
    {
      presentationCopy3 = 2;
      goto LABEL_14;
    }

    if (presentation == 2)
    {
      presentationCopy3 = 1;
      goto LABEL_14;
    }

LABEL_13:
    presentationCopy3 = presentation;
  }

LABEL_14:
  [(TVRUIHintsViewController *)self _updateVolumeButtonsHintFrameWithPresentation:presentationCopy3 volumeImage:imageCopy];
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider activationAnimationDismissalDelay];
  v16 = v15;

  styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider2 supportsSBHints];

  if (supportsSBHints)
  {
    if (presentation)
    {
      if (presentation == 2)
      {
        volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
        volumeDownButtonView = [volumeButtonsHint volumeDownButtonView];
        v44 = SBSUIRegisterHardwareButtonHintView();
        volumeHintVisibilityController = self->_volumeHintVisibilityController;
        self->_volumeHintVisibilityController = v44;
      }

      else
      {
        if (presentation != 1)
        {
LABEL_23:
          [(TVRUIHintsViewController *)self _frameForVolumeButtonsPresented:1];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;
          volumeButtonsHint2 = [(TVRUIHintsViewController *)self volumeButtonsHint];
          [volumeButtonsHint2 setFrame:{v48, v50, v52, v54}];

          volumeButtonsHint3 = [(TVRUIHintsViewController *)self volumeButtonsHint];
          [volumeButtonsHint3 setHidden:0];

          [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_volumeHintVisibilityController setContentVisibility:1 animationSettings:0];
          objc_initWeak(buf, self);
          v57 = dispatch_time(0, (*&v16 * 1000000000.0));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke;
          block[3] = &unk_279D87F18;
          objc_copyWeak(&v70, buf);
          dispatch_after(v57, MEMORY[0x277D85CD0], block);
          objc_destroyWeak(&v70);
          objc_destroyWeak(buf);
          goto LABEL_24;
        }

        volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
        volumeDownButtonView = [volumeButtonsHint volumeUpButtonView];
        v21 = SBSUIRegisterHardwareButtonHintView();
        v22 = self->_volumeHintVisibilityController;
        self->_volumeHintVisibilityController = v21;
      }
    }

    else
    {
      volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
      v46 = SBSUIRegisterHardwareButtonHintView();
      volumeDownButtonView = self->_volumeHintVisibilityController;
      self->_volumeHintVisibilityController = v46;
    }

    goto LABEL_23;
  }

  styleProvider3 = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider3 activationAnimationDuration];
  v25 = v24;

  volumeButtonsHint4 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint4 setHidden:0];

  volumeButtonsHint5 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint5 setAlpha:1.0];

  [(TVRUIHintsViewController *)self _frameForVolumeButtonsPresented:0];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  volumeButtonsHint6 = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint6 setFrame:{v29, v31, v33, v35}];

  objc_initWeak(buf, self);
  v37 = objc_alloc(MEMORY[0x277D75D40]);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_2;
  v67[3] = &unk_279D87F18;
  objc_copyWeak(&v68, buf);
  v38 = [v37 initWithDuration:2 curve:v67 animations:v25];
  [(TVRUIHintsViewController *)self setPresentationAnimator:v38];

  v39 = objc_alloc(MEMORY[0x277D75D40]);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_3;
  v65[3] = &unk_279D87F18;
  objc_copyWeak(&v66, buf);
  v40 = [v39 initWithDuration:2 curve:v65 animations:v25];
  [(TVRUIHintsViewController *)self setDismissalAnimator:v40];

  dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_4;
  v63[3] = &unk_279D88980;
  objc_copyWeak(&v64, buf);
  [dismissalAnimator addCompletion:v63];

  presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
  v58 = MEMORY[0x277D85DD0];
  v59 = 3221225472;
  v60 = __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_5;
  v61 = &unk_279D88930;
  objc_copyWeak(v62, buf);
  v62[1] = v16;
  [presentationAnimator addCompletion:&v58];

  v43 = [(TVRUIHintsViewController *)self presentationAnimator:v58];
  [v43 startAnimation];

  objc_destroyWeak(v62);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(buf);
LABEL_24:
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    [WeakRetained _frameForVolumeButtonsPresented:1];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = [v11 volumeButtonsHint];
    [v10 setFrame:{v3, v5, v7, v9}];

    WeakRetained = v11;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained volumeButtonsHint];
    [v2 setAlpha:0.0];

    WeakRetained = v3;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

void __82__TVRUIHintsViewController__presentVolumeButtonPressWithPresentation_volumeImage___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained dismissalAnimator];
    [v3 startAnimationAfterDelay:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_siriActivated:(id)activated
{
  v17 = *MEMORY[0x277D85DE8];
  activatedCopy = activated;
  v5 = _TVRUIHintsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[TVRUIHintsViewController _siriActivated:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (![(TVRUIHintsViewController *)self _shouldAllowHintsToPresent])
  {
    v12 = _TVRUIHintsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Not showing user intent activated hint because _shouldAllowHintsToPresent returned NO", buf, 2u);
    }

    goto LABEL_9;
  }

  if (![(TVRUIHintsViewController *)self _siriHintEnabled])
  {
    v12 = _TVRUIHintsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v12, OS_LOG_TYPE_DEFAULT, "Not showing user intent activated hint because _siriHintEnabled returned NO", buf, 2u);
    }

LABEL_9:

    goto LABEL_14;
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider supportsSBHints];

  if (supportsSBHints)
  {
    [(TVRUIHintsViewController *)self _updateUserIntentButtonHintFrameForPresentation:1];
    userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];
    [userIntentButtonHint setHidden:0];

    userIntentButtonHint2 = [(TVRUIHintsViewController *)self userIntentButtonHint];
    v10 = SBSUIRegisterHardwareButtonHintView();
    siriHintVisibilityController = self->_siriHintVisibilityController;
    self->_siriHintVisibilityController = v10;

    [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_siriHintVisibilityController setContentVisibility:1 animationSettings:0];
  }

  else
  {
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__TVRUIHintsViewController__siriActivated___block_invoke;
    v13[3] = &unk_279D87F18;
    objc_copyWeak(&v14, buf);
    [(TVRUIHintsViewController *)self _dismissHintsWithCompletion:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

LABEL_14:
}

void __43__TVRUIHintsViewController__siriActivated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateUserIntentButtonHintFrameForPresentation:1];
    v4 = [v3 styleProvider];
    [v4 activationAnimationDuration];
    v6 = v5;

    v7 = [v3 userIntentButtonHint];
    [v7 setHidden:0];

    v8 = [v3 userIntentButtonHint];
    [v8 setAlpha:1.0];

    [v3 _frameForUserIntentButtonPresented:0];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v3 userIntentButtonHint];
    [v17 setFrame:{v10, v12, v14, v16}];

    v18 = objc_alloc(MEMORY[0x277D75D40]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __43__TVRUIHintsViewController__siriActivated___block_invoke_2;
    v21[3] = &unk_279D87F18;
    objc_copyWeak(&v22, (a1 + 32));
    v19 = [v18 initWithDuration:2 curve:v21 animations:v6];
    [v3 setPresentationAnimator:v19];

    v20 = [v3 presentationAnimator];
    [v20 startAnimation];

    objc_destroyWeak(&v22);
  }
}

void __43__TVRUIHintsViewController__siriActivated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _frameForUserIntentButtonPresented:1];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [WeakRetained userIntentButtonHint];
  [v9 setFrame:{v2, v4, v6, v8}];
}

- (void)_siriDeactivated:(id)deactivated
{
  v24 = *MEMORY[0x277D85DE8];
  deactivatedCopy = deactivated;
  v5 = _TVRUIHintsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[TVRUIHintsViewController _siriDeactivated:]";
    _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  supportsSBHints = [styleProvider supportsSBHints];

  if (supportsSBHints)
  {
    [(TVRUIHintsViewController *)self _cleanupHints];
  }

  else
  {
    styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
    [styleProvider2 activationAnimationDuration];
    v10 = v9;

    objc_initWeak(buf, self);
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __45__TVRUIHintsViewController__siriDeactivated___block_invoke;
    v20[3] = &unk_279D87F18;
    objc_copyWeak(&v21, buf);
    v12 = [v11 initWithDuration:2 curve:v20 animations:v10];
    [(TVRUIHintsViewController *)self setDismissalAnimator:v12];

    dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __45__TVRUIHintsViewController__siriDeactivated___block_invoke_2;
    v18 = &unk_279D88980;
    objc_copyWeak(&v19, buf);
    [dismissalAnimator addCompletion:&v15];

    v14 = [(TVRUIHintsViewController *)self dismissalAnimator:v15];
    [v14 startAnimation];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __45__TVRUIHintsViewController__siriDeactivated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained userIntentButtonHint];
    [v2 setAlpha:0.0];

    WeakRetained = v3;
  }
}

void __45__TVRUIHintsViewController__siriDeactivated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupHints];
    WeakRetained = v2;
  }
}

- (void)_largeTextEnabledStatusChanged:(id)changed
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  siriImage = [styleProvider siriImage];
  siriGlyphView = [(TVRUIHintsViewController *)self siriGlyphView];
  imageView = [siriGlyphView imageView];
  [imageView setImage:siriImage];

  styleProvider2 = [(TVRUIHintsViewController *)self styleProvider];
  volumeImage = [styleProvider2 volumeImage];
  volumeGlyphView = [(TVRUIHintsViewController *)self volumeGlyphView];
  imageView2 = [volumeGlyphView imageView];
  [imageView2 setImage:volumeImage];
}

- (void)_applyTransformForOrientation:(int64_t)orientation
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[TVRUIDeviceInfo currentDeviceInfo];
  isPad = [v5 isPad];

  if (!isPad)
  {
    return;
  }

  view = [(TVRUIHintsViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v19);
  view2 = [(TVRUIHintsViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v20);

  if (orientation == 2)
  {
    v11 = 3.14159265;
LABEL_10:
    v12 = Height;
    goto LABEL_11;
  }

  if (orientation == 3)
  {
    v11 = -1.57079633;
    goto LABEL_7;
  }

  if (orientation != 4)
  {
    v11 = 0.0;
    goto LABEL_10;
  }

  v11 = 1.57079633;
LABEL_7:
  v12 = Width;
  Width = Height;
LABEL_11:
  v13 = _TVRUIHintsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.a) = 134218240;
    *(&buf.a + 4) = orientation;
    WORD2(buf.b) = 2048;
    *(&buf.b + 6) = v11;
    _os_log_impl(&dword_26CFEB000, v13, OS_LOG_TYPE_DEFAULT, "Applying transform if needed for orientation=%ld, angle=%0.2frad", &buf, 0x16u);
  }

  CGAffineTransformMakeRotation(&v16, v11);
  view3 = [(TVRUIHintsViewController *)self view];
  buf = v16;
  [view3 setTransform:&buf];

  view4 = [(TVRUIHintsViewController *)self view];
  [view4 setBounds:{0.0, 0.0, Width, v12}];
}

- (CGAffineTransform)_gylphTransformForOrientation:(SEL)orientation
{
  v4 = 0.0;
  if ((a4 - 2) <= 2)
  {
    v4 = dbl_26D0D2700[a4 - 2];
  }

  return CGAffineTransformMakeRotation(retstr, v4);
}

- (void)_dismissHintsWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[TVRUIFeatures persistHintsUIEnabled];
  v6 = _TVRUIHintsLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315138;
      v21 = "[TVRUIHintsViewController _dismissHintsWithCompletion:]";
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s, persistHintsUIEnabled is on so hints will not be dismissed", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v21 = "[TVRUIHintsViewController _dismissHintsWithCompletion:]";
      _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissHintsWithCompletion_ object:0];
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    [styleProvider activationAnimationDuration];
    v10 = v9;

    objc_initWeak(buf, self);
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke;
    v18[3] = &unk_279D87F18;
    objc_copyWeak(&v19, buf);
    v12 = [v11 initWithDuration:2 curve:v18 animations:v10];
    [(TVRUIHintsViewController *)self setDismissalAnimator:v12];

    dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke_2;
    v15[3] = &unk_279D889A8;
    objc_copyWeak(&v17, buf);
    v16 = completionCopy;
    [dismissalAnimator addCompletion:v15];

    dismissalAnimator2 = [(TVRUIHintsViewController *)self dismissalAnimator];
    [dismissalAnimator2 startAnimation];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

void __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v22 = WeakRetained;
    v2 = [WeakRetained volumeButtonsHint];
    [v2 setAlpha:0.0];

    [v22 _frameForVolumeButtonsPresented:0];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [v22 volumeButtonsHint];
    [v11 setFrame:{v4, v6, v8, v10}];

    v12 = [v22 userIntentButtonHint];
    [v12 setAlpha:0.0];

    [v22 _frameForUserIntentButtonPresented:0];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v22 userIntentButtonHint];
    [v21 setFrame:{v14, v16, v18, v20}];

    WeakRetained = v22;
  }
}

uint64_t __56__TVRUIHintsViewController__dismissHintsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained _cleanupHints];
    v4 = [v9 volumeButtonsHint];
    [v4 setHidden:1];

    v5 = [v9 userIntentButtonHint];
    [v5 setHidden:1];

    v6 = [v9 volumeButtonsHint];
    [v6 setAlpha:1.0];

    v7 = [v9 userIntentButtonHint];
    [v7 setAlpha:1.0];

    v3 = v9;
    WeakRetained = *(a1 + 32);
    if (WeakRetained)
    {
      WeakRetained = (*(WeakRetained + 2))(WeakRetained, v9);
      v3 = v9;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (void)_cleanupHints
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissHintsWithCompletion_ object:0];
  presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
  [presentationAnimator stopAnimation:1];

  dismissalAnimator = [(TVRUIHintsViewController *)self dismissalAnimator];
  [dismissalAnimator stopAnimation:1];

  siriHintVisibilityController = [(TVRUIHintsViewController *)self siriHintVisibilityController];
  [siriHintVisibilityController invalidate];

  [(TVRUIHintsViewController *)self setSiriHintVisibilityController:0];
  volumeHintVisibilityController = [(TVRUIHintsViewController *)self volumeHintVisibilityController];
  [volumeHintVisibilityController invalidate];

  [(TVRUIHintsViewController *)self setVolumeHintVisibilityController:0];
  volumeButtonsHint = [(TVRUIHintsViewController *)self volumeButtonsHint];
  [volumeButtonsHint setHidden:1];

  userIntentButtonHint = [(TVRUIHintsViewController *)self userIntentButtonHint];
  [userIntentButtonHint setHidden:1];
}

- (int64_t)currentInterfaceOrientation
{
  view = [(TVRUIHintsViewController *)self view];
  window = [view window];
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  return _windowInterfaceOrientation;
}

- (CGRect)_frameForUserIntentButtonPresented:(BOOL)presented
{
  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo userIntentButtonRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v36.origin.x = v7;
  v36.origin.y = v9;
  v36.size.width = v11;
  v36.size.height = v13;
  v40.origin.x = *MEMORY[0x277CBF3A0];
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  if (CGRectEqualToRect(v36, v40))
  {
    goto LABEL_21;
  }

  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider siriHintContainerWidth];
  v32 = v19;

  v33 = *MEMORY[0x277CBF3A8];
  v34 = *(MEMORY[0x277CBF3A8] + 8);
  hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
  userIntentButtonEdge = [hardwareInfo2 userIntentButtonEdge];

  if (userIntentButtonEdge > 1)
  {
    if (userIntentButtonEdge == 3)
    {
      v25 = +[TVRUIDeviceInfo currentDeviceInfo];
      hasHomeButton = [v25 hasHomeButton];

      v27 = _TVRUIHintsLog();
      v24 = v27;
      if (hasHomeButton)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CFEB000, v24, OS_LOG_TYPE_DEFAULT, "Device has a home button. Skip showing the Siri hint", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
      }

      goto LABEL_18;
    }

    if (userIntentButtonEdge == 2)
    {
      width = v32;
      x = v7 - v32;
      v22 = 0.0;
      v23 = v32;
      height = v13;
      y = v9;
      goto LABEL_19;
    }
  }

  else
  {
    if (!userIntentButtonEdge)
    {
      v24 = _TVRUIHintsLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
      }

      goto LABEL_18;
    }

    if (userIntentButtonEdge == 1)
    {
      height = v32;
      v22 = -v32;
      v23 = 0.0;
      width = v11;
      y = -v32;
      x = v7;
      goto LABEL_19;
    }
  }

  v24 = _TVRUIHintsLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [TVRUIHintsViewController _frameForUserIntentButtonPresented:];
  }

LABEL_18:

  v23 = v33;
  v22 = v34;
LABEL_19:
  if (!presented)
  {
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v38 = CGRectOffset(v37, v23, v22);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

LABEL_21:
  v28 = x;
  v29 = y;
  v30 = width;
  v31 = height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)_frameForVolumeButtonsPresented:(BOOL)presented
{
  styleProvider = [(TVRUIHintsViewController *)self styleProvider];
  [styleProvider volumeHintContainerWidth];
  v7 = v6;

  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo volumeUpButtonRect];
  MinY = CGRectGetMinY(v27);

  hardwareInfo2 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo2 totalHeight];
  height = v11;

  hardwareInfo3 = [(TVRUIHintsViewController *)self hardwareInfo];
  volumeButtonsEdge = [hardwareInfo3 volumeButtonsEdge];

  if (volumeButtonsEdge != 1)
  {
    if (volumeButtonsEdge == 2)
    {
      view = [(TVRUIHintsViewController *)self view];
      [view bounds];
      Width = CGRectGetWidth(v28);

      v17 = 0.0;
      v18 = v7;
      if (presented)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = -v7;
      v17 = 0.0;
      Width = 0.0;
      if (presented)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  hardwareInfo4 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo4 volumeUpButtonRect];
  Width = CGRectGetMinX(v29);

  hardwareInfo5 = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo5 totalHeight];
  v22 = v21;

  v17 = -v7;
  v18 = 0.0;
  height = 0.0;
  v7 = v22;
  MinY = 0.0;
  if (!presented)
  {
LABEL_6:
    v30.origin.x = Width;
    v30.origin.y = MinY;
    v30.size.width = v7;
    v30.size.height = height;
    v31 = CGRectOffset(v30, v18, v17);
    Width = v31.origin.x;
    MinY = v31.origin.y;
    v7 = v31.size.width;
    height = v31.size.height;
  }

LABEL_7:
  v23 = Width;
  v24 = MinY;
  v25 = v7;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_setupDebugUIIfEnabled
{
  v31[2] = *MEMORY[0x277D85DE8];
  if (+[TVRUIFeatures isHintsDebugUIEnabled])
  {
    v3 = _TVRUIHintsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "Hints Debug UI is enabled", buf, 2u);
    }

    v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.5 blue:0.0 alpha:0.25];
    v31[0] = v4;
    v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:0.0 alpha:0.25];
    v31[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];

    view = [(TVRUIHintsViewController *)self view];
    [view bounds];
    v8 = (CGRectGetHeight(v32) / 10.0);

    v9 = [v6 count];
    if (v8 >= 1)
    {
      v10 = v9;
      v11 = 0;
      selfCopy = self;
      v29 = v9;
      do
      {
        view2 = [(TVRUIHintsViewController *)self view];
        [view2 bounds];
        Width = CGRectGetWidth(v33);

        v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v11 * 10.0, Width, 10.0}];
        v15 = [v6 objectAtIndexedSubscript:v11 % v10];
        [v14 setBackgroundColor:v15];

        view3 = [(TVRUIHintsViewController *)self view];
        [view3 addSubview:v14];

        if ((v11 & 1) == 0)
        {
          [v14 bounds];
          v17 = CGRectGetWidth(v34) + -20.0;
          [v14 bounds];
          Height = CGRectGetHeight(v35);
          v19 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{10.0, 0.0, v17, Height}];
          [v19 setAutoresizingMask:18];
          [MEMORY[0x277CCACA8] stringWithFormat:@"%0.f", v11 * 10.0];
          v21 = v20 = v8;
          [v19 setText:v21];

          v22 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
          [v19 setFont:v22];

          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [v19 setTextColor:whiteColor];

          [v14 addSubview:v19];
          v24 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{10.0, 0.0, v17, Height}];
          [v24 setAutoresizingMask:18];
          [v24 setTextAlignment:2];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.f", v11 * 10.0];
          [v24 setText:v25];

          v26 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
          [v24 setFont:v26];

          whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          [v24 setTextColor:whiteColor2];

          [v14 addSubview:v24];
          v8 = v20;
          self = selfCopy;
          v10 = v29;
        }

        ++v11;
      }

      while (v8 != v11);
    }
  }
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _TVRUITipsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[TVRUIHintsViewController dismissPresentedContentAnimated:completion:]";
    _os_log_impl(&dword_26CFEB000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

  v8 = _TVRUITipsLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (siriTipManager)
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating Siri tip", &v11, 2u);
    }

    siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
    [siriTipManager2 invalidate:1 didPerformAction:0 completion:completionCopy];
  }

  else
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_26CFEB000, v8, OS_LOG_TYPE_DEFAULT, "No siri tip manager, calling completion block", &v11, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (BOOL)hasPresentedContent
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _TVRUITipsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];
    v8 = 136315394;
    v9 = "[TVRUIHintsViewController hasPresentedContent]";
    v10 = 1024;
    isPresentingTip = [siriTipManager isPresentingTip];
    _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %d", &v8, 0x12u);
  }

  siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
  isPresentingTip2 = [siriTipManager2 isPresentingTip];

  return isPresentingTip2;
}

- (BOOL)_shouldAllowHintsToPresent
{
  if ([(TVRUIHintsViewController *)self _volumeHintEnabled])
  {
    presentationAnimator = [(TVRUIHintsViewController *)self presentationAnimator];
    isRunning = [presentationAnimator isRunning];

    if (isRunning)
    {
      v5 = _TVRUIHintsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v6 = "Animation is already running, will not show hints";
        v7 = &v10;
LABEL_7:
        _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else
    {
      if (![(TVRUIHintsViewController *)self isPresentingTip])
      {
        return 1;
      }

      v5 = _TVRUIHintsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v6 = "Tip is currently being presented, will not show hints";
        v7 = &v9;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v5 = _TVRUIHintsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Volume hints are disabled, will not show hints";
      v7 = buf;
      goto LABEL_7;
    }
  }

  return 0;
}

- (BOOL)_siriHintEnabled
{
  if ([(TVRUIHintsViewController *)self allowSiriHint])
  {
    styleProvider = [(TVRUIHintsViewController *)self styleProvider];
    shouldShowSiriHint = [styleProvider shouldShowSiriHint];
  }

  else
  {
    shouldShowSiriHint = 0;
  }

  if (+[TVRUIFeatures persistHintsUIEnabled])
  {
    v5 = _TVRUIHintsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "persistHintsUIEnabled is enabled so hints will always show", v7, 2u);
    }

    return 1;
  }

  return shouldShowSiriHint;
}

- (BOOL)_volumeHintEnabled
{
  if (+[TVRUIFeatures persistHintsUIEnabled])
  {
    v3 = _TVRUIHintsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_26CFEB000, v3, OS_LOG_TYPE_DEFAULT, "persistHintsUIEnabled is enabled so hints will always show", v8, 2u);
    }

    LOBYTE(allowVolumeHint) = 1;
  }

  else
  {
    allowVolumeHint = [(TVRUIHintsViewController *)self allowVolumeHint];
    if (allowVolumeHint)
    {
      styleProvider = [(TVRUIHintsViewController *)self styleProvider];
      shouldShowVolumeHint = [styleProvider shouldShowVolumeHint];

      LOBYTE(allowVolumeHint) = shouldShowVolumeHint;
    }
  }

  return allowVolumeHint;
}

- (void)_setupTipsControllerIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(TVRUIHintsViewController *)self allowTips])
  {
    if ([(TVRUIHintsViewController *)self allowSiriHint])
    {
      siriTipManager = [(TVRUIHintsViewController *)self siriTipManager];

      if (!siriTipManager)
      {
        v4 = _TVRUITipsLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          v9 = 138412290;
          v10 = bundleIdentifier;
          _os_log_impl(&dword_26CFEB000, v4, OS_LOG_TYPE_DEFAULT, "Creating Siri Tip Manager for: %@", &v9, 0xCu);
        }

        v7 = [[TVRUITipManager alloc] initWithTipSourceViewProvider:self tipType:1];
        [(TVRUIHintsViewController *)self setSiriTipManager:v7];

        siriTipManager2 = [(TVRUIHintsViewController *)self siriTipManager];
        [siriTipManager2 activate];
      }
    }
  }
}

- (CGRect)tipSourceRect
{
  hardwareInfo = [(TVRUIHintsViewController *)self hardwareInfo];
  [hardwareInfo userIntentButtonRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)_permittedArrowDirectionsForDevice:(id)device
{
  if ([device isPad])
  {
    return 15;
  }

  else
  {
    return 10;
  }
}

- (unint64_t)permittedArrowDirections
{
  v3 = +[TVRUIDeviceInfo currentDeviceInfo];
  v4 = [(TVRUIHintsViewController *)self _permittedArrowDirectionsForDevice:v3];

  return v4;
}

@end