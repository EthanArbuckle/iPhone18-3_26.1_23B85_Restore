@interface SBDeviceApplicationSceneClassicAccessoryView
- (BOOL)_isZoomed;
- (BOOL)_rotationButtonShouldBeVisible;
- (BOOL)_zoomButtonShouldBeVisible;
- (SBDeviceApplicationSceneClassicAccessoryView)initWithFrame:(CGRect)frame sceneHandle:(id)handle;
- (SBDeviceApplicationSceneClassicAccessoryViewDelegate)delegate;
- (void)_changeZoom:(id)zoom;
- (void)_rotateApplicationScene:(id)scene;
- (void)_sceneHandleDidUpdateClientSettings:(id)settings;
- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)_setupPositioningAndRotationForInterfaceOrientation:(int64_t)orientation offscreen:(BOOL)offscreen;
- (void)_updateButtonVisibilityAnimated:(BOOL)animated;
- (void)_updateOrientationFrom:(int64_t)from toOrientation:(int64_t)orientation animationSettings:(id)settings;
- (void)_updateRotationButton;
- (void)_updateRotationButtonConstraints;
- (void)_updateRotationButtonWithAnimationSettings:(id)settings;
- (void)_updateZoomButton;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
@end

@implementation SBDeviceApplicationSceneClassicAccessoryView

- (SBDeviceApplicationSceneClassicAccessoryView)initWithFrame:(CGRect)frame sceneHandle:(id)handle
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v92[4] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v91.receiver = self;
  v91.super_class = SBDeviceApplicationSceneClassicAccessoryView;
  height = [(SBDeviceApplicationSceneClassicAccessoryView *)&v91 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeStrong(&height->_sceneHandle, handle);
    sceneIfExists = [(SBDeviceApplicationSceneHandle *)v11->_sceneHandle sceneIfExists];
    uiClientSettings = [sceneIfExists uiClientSettings];
    v11->_buttonOrientation = [uiClientSettings interfaceOrientation];

    v14 = [MEMORY[0x277D75220] buttonWithType:0];
    zoomButton = v11->_zoomButton;
    v11->_zoomButton = v14;

    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _updateZoomButton];
    [(UIButton *)v11->_zoomButton sizeToFit];
    [(UIButton *)v11->_zoomButton addTarget:v11 action:sel__changeZoom_ forControlEvents:64];
    v16 = [MEMORY[0x277D75220] buttonWithType:0];
    clockWiseRotationButton = v11->_clockWiseRotationButton;
    v11->_clockWiseRotationButton = v16;

    v18 = [MEMORY[0x277D75220] buttonWithType:0];
    counterClockWiseRotationButton = v11->_counterClockWiseRotationButton;
    v11->_counterClockWiseRotationButton = v18;

    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _updateRotationButton];
    [(UIButton *)v11->_clockWiseRotationButton sizeToFit];
    [(UIButton *)v11->_counterClockWiseRotationButton sizeToFit];
    [(UIButton *)v11->_clockWiseRotationButton addTarget:v11 action:sel__rotateApplicationScene_ forControlEvents:64];
    [(UIButton *)v11->_counterClockWiseRotationButton addTarget:v11 action:sel__rotateApplicationScene_ forControlEvents:64];
    v20 = objc_alloc(MEMORY[0x277CF0D78]);
    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 bounds];
    v21 = [v20 initWithFrame:?];
    transformWrapperView = v11->_transformWrapperView;
    v11->_transformWrapperView = v21;

    [(BSUIOrientationTransformWrapperView *)v11->_transformWrapperView setContentOrientation:v11->_buttonOrientation];
    [(BSUIOrientationTransformWrapperView *)v11->_transformWrapperView setContainerOrientation:v11->_buttonOrientation];
    v23 = objc_alloc(MEMORY[0x277D75D18]);
    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 bounds];
    v24 = [v23 initWithFrame:?];
    buttonWrapperView = v11->_buttonWrapperView;
    v11->_buttonWrapperView = v24;

    [(UIView *)v11->_buttonWrapperView addSubview:v11->_zoomButton];
    [(UIView *)v11->_buttonWrapperView addSubview:v11->_clockWiseRotationButton];
    [(UIView *)v11->_buttonWrapperView addSubview:v11->_counterClockWiseRotationButton];
    [(BSUIOrientationTransformWrapperView *)v11->_transformWrapperView addContentView:v11->_buttonWrapperView];
    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 addSubview:v11->_transformWrapperView];
    [(UIButton *)v11->_zoomButton setTranslatesAutoresizingMaskIntoConstraints:0];
    trailingAnchor = [(UIButton *)v11->_zoomButton trailingAnchor];
    trailingAnchor2 = [(UIView *)v11->_buttonWrapperView trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    zoomButtonHorizontalConstraint = v11->_zoomButtonHorizontalConstraint;
    v11->_zoomButtonHorizontalConstraint = v28;

    bottomAnchor = [(UIButton *)v11->_zoomButton bottomAnchor];
    bottomAnchor2 = [(UIView *)v11->_buttonWrapperView bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    zoomButtonVerticalConstraint = v11->_zoomButtonVerticalConstraint;
    v11->_zoomButtonVerticalConstraint = v32;

    widthAnchor = [(UIButton *)v11->_zoomButton widthAnchor];
    v35 = [widthAnchor constraintEqualToConstant:48.0];
    zoomButtonWidthConstraint = v11->_zoomButtonWidthConstraint;
    v11->_zoomButtonWidthConstraint = v35;

    heightAnchor = [(UIButton *)v11->_zoomButton heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:48.0];
    zoomButtonHeightConstraint = v11->_zoomButtonHeightConstraint;
    v11->_zoomButtonHeightConstraint = v38;

    [(NSLayoutConstraint *)v11->_zoomButtonHorizontalConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonVerticalConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonWidthConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonHeightConstraint setActive:1];
    [(UIButton *)v11->_clockWiseRotationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v11->_counterClockWiseRotationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor2 = [(UIButton *)v11->_clockWiseRotationButton widthAnchor];
    v41 = [widthAnchor2 constraintEqualToConstant:48.0];
    [v41 setActive:1];

    heightAnchor2 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v43 = [heightAnchor2 constraintEqualToConstant:48.0];
    [v43 setActive:1];

    topAnchor = [(UIButton *)v11->_clockWiseRotationButton topAnchor];
    topAnchor2 = [(UIButton *)v11->_zoomButton topAnchor];
    v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
    rotationButtonTopConstraint = v11->_rotationButtonTopConstraint;
    v11->_rotationButtonTopConstraint = v46;

    bottomAnchor3 = [(UIButton *)v11->_clockWiseRotationButton bottomAnchor];
    topAnchor3 = [(UIButton *)v11->_zoomButton topAnchor];
    v50 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-16.0];
    rotationButtonBottomConstraint = v11->_rotationButtonBottomConstraint;
    v11->_rotationButtonBottomConstraint = v50;

    leadingAnchor = [(UIButton *)v11->_clockWiseRotationButton leadingAnchor];
    leadingAnchor2 = [(UIButton *)v11->_zoomButton leadingAnchor];
    v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    rotationButtonLeadingConstraint = v11->_rotationButtonLeadingConstraint;
    v11->_rotationButtonLeadingConstraint = v54;

    trailingAnchor3 = [(UIButton *)v11->_clockWiseRotationButton trailingAnchor];
    leadingAnchor3 = [(UIButton *)v11->_zoomButton leadingAnchor];
    v58 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
    rotationButtonTrailingConstraint = v11->_rotationButtonTrailingConstraint;
    v11->_rotationButtonTrailingConstraint = v58;

    v78 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIButton *)v11->_counterClockWiseRotationButton centerYAnchor];
    centerYAnchor2 = [(UIButton *)v11->_clockWiseRotationButton centerYAnchor];
    v80 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v92[0] = v80;
    centerXAnchor = [(UIButton *)v11->_counterClockWiseRotationButton centerXAnchor];
    centerXAnchor2 = [(UIButton *)v11->_clockWiseRotationButton centerXAnchor];
    v61 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v92[1] = v61;
    heightAnchor3 = [(UIButton *)v11->_counterClockWiseRotationButton heightAnchor];
    heightAnchor4 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v64 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v92[2] = v64;
    widthAnchor3 = [(UIButton *)v11->_counterClockWiseRotationButton widthAnchor];
    heightAnchor5 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v67 = [widthAnchor3 constraintEqualToAnchor:heightAnchor5];
    v92[3] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    [v78 activateConstraints:v68];

    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _setupPositioningAndRotationForInterfaceOrientation:v11->_buttonOrientation offscreen:0];
    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _updateButtonVisibilityAnimated:0];
    objc_initWeak(&location, v11);
    v69 = objc_alloc_init(MEMORY[0x277D67978]);
    sceneHandleObserver = v11->_sceneHandleObserver;
    v11->_sceneHandleObserver = v69;

    [handleCopy addObserver:v11->_sceneHandleObserver];
    v71 = v11->_sceneHandleObserver;
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke;
    v88[3] = &unk_2783B3BA0;
    objc_copyWeak(&v89, &location);
    v72 = [(SBSceneHandleBlockObserver *)v71 observeCreate:v88];
    v73 = v11->_sceneHandleObserver;
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke_2;
    v86[3] = &unk_2783B3BC8;
    objc_copyWeak(&v87, &location);
    v74 = [(SBSceneHandleBlockObserver *)v73 observeDidUpdateClientSettings:v86];
    v75 = v11->_sceneHandleObserver;
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke_3;
    v84[3] = &unk_2783B3BF0;
    objc_copyWeak(&v85, &location);
    v76 = [(SBSceneHandleBlockObserver *)v75 observeDidUpdateSettings:v84];
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v87);
    objc_destroyWeak(&v89);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v7 uiClientSettings];
    v6 = [v5 sb_effectiveInterfaceOrientation];

    [WeakRetained _setupPositioningAndRotationForInterfaceOrientation:v6 offscreen:0];
    WeakRetained[57] = v6;
    [WeakRetained _updateButtonVisibilityAnimated:1];
    [WeakRetained setNeedsLayout];
  }
}

void __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sceneHandleDidUpdateClientSettings:v4];
}

void __74__SBDeviceApplicationSceneClassicAccessoryView_initWithFrame_sceneHandle___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sceneHandleDidUpdateSettingsWithDiff:v7 previousSettings:v6];
}

- (void)dealloc
{
  [(SBSceneHandleBlockObserver *)self->_sceneHandleObserver invalidate];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneClassicAccessoryView;
  [(SBDeviceApplicationSceneClassicAccessoryView *)&v3 dealloc];
}

- (void)invalidate
{
  [(SBSceneHandleBlockObserver *)self->_sceneHandleObserver invalidate];
  sceneHandleObserver = self->_sceneHandleObserver;
  self->_sceneHandleObserver = 0;

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_clientSettingsInspector removeAllObservers];
  clientSettingsInspector = self->_clientSettingsInspector;
  self->_clientSettingsInspector = 0;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneClassicAccessoryView;
  [(SBDeviceApplicationSceneClassicAccessoryView *)&v4 layoutSubviews];
  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContentOrientation:self->_buttonOrientation];
  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContainerOrientation:self->_buttonOrientation];
  transformWrapperView = self->_transformWrapperView;
  [(SBDeviceApplicationSceneClassicAccessoryView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)transformWrapperView setFrame:?];
  [(SBDeviceApplicationSceneClassicAccessoryView *)self _setupPositioningAndRotationForInterfaceOrientation:self->_buttonOrientation offscreen:0];
}

- (void)_updateButtonVisibilityAnimated:(BOOL)animated
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SBDeviceApplicationSceneClassicAccessoryView__updateButtonVisibilityAnimated___block_invoke;
  v5[3] = &__block_descriptor_33_e21_v20__0__UIButton_8B16l;
  animatedCopy = animated;
  v4 = MEMORY[0x223D6F7F0](v5, a2);
  (v4)[2](v4, self->_zoomButton, [(SBDeviceApplicationSceneClassicAccessoryView *)self _zoomButtonShouldBeVisible]);
  (v4)[2](v4, self->_clockWiseRotationButton, [(SBDeviceApplicationSceneClassicAccessoryView *)self _rotationButtonShouldBeVisible]);
  (v4)[2](v4, self->_counterClockWiseRotationButton, [(SBDeviceApplicationSceneClassicAccessoryView *)self _rotationButtonShouldBeVisible]);
}

void __80__SBDeviceApplicationSceneClassicAccessoryView__updateButtonVisibilityAnimated___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  [v5 alpha];
  if ((((v6 != 1.0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (*(a1 + 32) == 1)
    {
      if (a3)
      {
        v8 = 0.3;
      }

      else
      {
        v8 = 0.1;
      }

      v9 = MEMORY[0x277D75D18];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __80__SBDeviceApplicationSceneClassicAccessoryView__updateButtonVisibilityAnimated___block_invoke_2;
      v10[3] = &unk_2783A8BC8;
      v11 = v5;
      v12 = v7;
      [v9 animateWithDuration:4 delay:v10 options:0 animations:v8 completion:0.0];
    }

    else
    {
      [v5 setAlpha:v7];
    }
  }
}

- (BOOL)_isZoomed
{
  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  classicAppZoomedIn = [application classicAppZoomedIn];

  return classicAppZoomedIn;
}

- (void)_updateZoomButton
{
  _isZoomed = [(SBDeviceApplicationSceneClassicAccessoryView *)self _isZoomed];
  if (_isZoomed)
  {
    v4 = @"scaleDown";
  }

  else
  {
    v4 = @"scaleUp";
  }

  if (_isZoomed)
  {
    v5 = @"scaleDownHighlight";
  }

  else
  {
    v5 = @"scaleUpHighlight";
  }

  v7 = [MEMORY[0x277D755B8] imageNamed:v4];
  v6 = [MEMORY[0x277D755B8] imageNamed:v5];
  [(UIButton *)self->_zoomButton setImage:v7 forState:0];
  [(UIButton *)self->_zoomButton setImage:v6 forState:1];
}

- (void)_changeZoom:(id)zoom
{
  _isZoomed = [(SBDeviceApplicationSceneClassicAccessoryView *)self _isZoomed];
  application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  [application _setClassicAppZoomedIn:!_isZoomed];

  [(SBDeviceApplicationSceneClassicAccessoryView *)self _updateZoomButton];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (_isZoomed)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__SBDeviceApplicationSceneClassicAccessoryView__changeZoom___block_invoke;
    v9[3] = &unk_2783A8BC8;
    v10 = WeakRetained;
    v11 = v7;
    [v8 _animateUsingSpringWithDuration:0 delay:v9 options:0 mass:0.7 stiffness:0.0 damping:1.0 initialVelocity:158.0 animations:115.0 completion:0.0];
  }
}

- (BOOL)_zoomButtonShouldBeVisible
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  uiSettings = [sceneIfExists uiSettings];

  isForeground = [uiSettings isForeground];
  v6 = [uiSettings deactivationReasons] & 0x28;
  isOccluded = [uiSettings isOccluded];
  _windowScene = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  switcherController = [_windowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
    classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = isForeground;
    }

    if (v14 == 1)
    {
      v15 = (isOccluded | classicAppPhoneAppRunningOnPad) ^ 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (isForeground)
  {
    v15 = (v6 == 0) & (isOccluded ^ 1);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)_updateRotationButton
{
  sceneHandle = [(SBDeviceApplicationSceneClassicAccessoryView *)self sceneHandle];
  currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];

  if (currentInterfaceOrientation == 1)
  {
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__clockWiseRotationButton;
  }

  else
  {
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__counterClockWiseRotationButton;
  }

  v6 = 2 * (currentInterfaceOrientation == 1);
  if (currentInterfaceOrientation == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  v20 = *(&self->super.super.super.isa + *v5);
  v8 = objc_alloc(MEMORY[0x277D755B8]);
  v9 = [MEMORY[0x277D755B8] imageNamed:@"rotateLeft"];
  v10 = [v8 initWithCGImage:objc_msgSend(v9 imageOrientation:{"CGImage"), v6}];

  v11 = objc_alloc(MEMORY[0x277D755B8]);
  v12 = [MEMORY[0x277D755B8] imageNamed:@"rotateLeftHighlight"];
  v13 = [v11 initWithCGImage:objc_msgSend(v12 imageOrientation:{"CGImage"), v6}];

  v14 = objc_alloc(MEMORY[0x277D755B8]);
  v15 = [MEMORY[0x277D755B8] imageNamed:@"rotateRight"];
  v16 = [v14 initWithCGImage:objc_msgSend(v15 imageOrientation:{"CGImage"), v7}];

  v17 = objc_alloc(MEMORY[0x277D755B8]);
  v18 = [MEMORY[0x277D755B8] imageNamed:@"rotateRightHighlight"];
  v19 = [v17 initWithCGImage:objc_msgSend(v18 imageOrientation:{"CGImage"), v7}];

  [(UIButton *)self->_clockWiseRotationButton setImage:v16 forState:0];
  [(UIButton *)self->_clockWiseRotationButton setImage:v19 forState:1];
  [(UIButton *)self->_counterClockWiseRotationButton setImage:v10 forState:0];
  [(UIButton *)self->_counterClockWiseRotationButton setImage:v13 forState:1];
  [(UIView *)self->_buttonWrapperView bringSubviewToFront:v20];
}

- (void)_updateRotationButtonConstraints
{
  v3 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
  if ((v3 - 1) >= 2)
  {
    if ((v3 - 3) > 1)
    {
      return;
    }

    v4 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonTrailingConstraint;
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonTopConstraint;
    v6 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonLeadingConstraint;
    v7 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonBottomConstraint;
  }

  else
  {
    v4 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonLeadingConstraint;
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonBottomConstraint;
    v6 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonTrailingConstraint;
    v7 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__rotationButtonTopConstraint;
  }

  [*(&self->super.super.super.isa + *v7) setActive:0];
  [*(&self->super.super.super.isa + *v6) setActive:0];
  [*(&self->super.super.super.isa + *v5) setActive:1];
  v8 = *(&self->super.super.super.isa + *v4);

  [v8 setActive:1];
}

- (BOOL)_rotationButtonShouldBeVisible
{
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  uiSettings = [sceneIfExists uiSettings];
  interfaceOrientationMode = [uiSettings interfaceOrientationMode];
  v8 = (interfaceOrientationMode == 2 || sceneIfExists && ([sceneIfExists uiClientSettings], v6 = ;
  return v8;
}

- (void)_rotateApplicationScene:(id)scene
{
  sceneHandle = self->_sceneHandle;
  sceneCopy = scene;
  [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _setClassicAppPhoneOnPadPrefersLandscape:[(SBDeviceApplicationSceneHandle *)sceneHandle _classicAppPhoneOnPadPrefersLandscape]^ 1];

  self->_rotatingFromButtonTap = sceneCopy != 0;
  delegate = [(SBDeviceApplicationSceneClassicAccessoryView *)self delegate];
  [delegate noteApplicationClassicPhoneSceneOrientationPreferenceChangingForUserAction:self->_rotatingFromButtonTap];
}

- (void)_sceneHandleDidUpdateClientSettings:(id)settings
{
  settingsCopy = settings;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneClassicAccessoryView _sceneHandleDidUpdateClientSettings:];
  }

  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];
  clientSettingsInspector = self->_clientSettingsInspector;
  if (!clientSettingsInspector)
  {
    v8 = objc_alloc_init(MEMORY[0x277D75160]);
    v9 = self->_clientSettingsInspector;
    self->_clientSettingsInspector = v8;

    objc_initWeak(&location, self);
    v10 = self->_clientSettingsInspector;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __84__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateClientSettings___block_invoke;
    v14[3] = &unk_2783AC8A0;
    objc_copyWeak(&v15, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v10 observeInterfaceOrientationWithBlock:v14];
    v11 = self->_clientSettingsInspector;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateClientSettings___block_invoke_2;
    v12[3] = &unk_2783AC8A0;
    objc_copyWeak(&v13, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v11 observeSupportedInterfaceOrientationsWithBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    clientSettingsInspector = self->_clientSettingsInspector;
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:settingsDiff withContext:transitionContext];
}

void __84__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateClientSettings___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[472] & 1) == 0)
  {
    v14 = WeakRetained;
    v4 = [WeakRetained sceneHandle];
    v5 = [v4 sceneIfExists];

    v6 = [v5 uiClientSettings];
    v7 = [v6 interfaceOrientation];
    if (v7)
    {
      v8 = v7;
      v9 = v14[57];
      if (v9 != v7)
      {
        v10 = a2;
        v11 = [v10 animationSettings];
        [v14 _updateOrientationFrom:v9 toOrientation:v8 animationSettings:v11];
        [v14 setNeedsLayout];
        v12 = MEMORY[0x277D75940];
        v13 = [v10 animationFence];

        [v12 _synchronizeDrawingWithFence:v13];
      }
    }

    WeakRetained = v14;
  }
}

void __84__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateClientSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateButtonVisibilityAnimated:1];
  if (([WeakRetained _rotationButtonShouldBeVisible] & 1) == 0)
  {
    v1 = [WeakRetained sceneHandle];
    [v1 _setClassicAppPhoneOnPadPrefersLandscape:0];
  }
}

- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  diffCopy = diff;
  settingsCopy = settings;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneClassicAccessoryView _sceneHandleDidUpdateSettingsWithDiff:previousSettings:];
  }

  sceneSettingsInspector = self->_sceneSettingsInspector;
  if (!sceneSettingsInspector)
  {
    v9 = objc_alloc_init(MEMORY[0x277D75178]);
    v10 = self->_sceneSettingsInspector;
    self->_sceneSettingsInspector = v9;

    objc_initWeak(&location, self);
    v11 = self->_sceneSettingsInspector;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke;
    v21[3] = &unk_2783AC8A0;
    objc_copyWeak(&v22, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v11 observeDeactivationReasonsWithBlock:v21];
    v12 = self->_sceneSettingsInspector;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke_2;
    v19[3] = &unk_2783AC8A0;
    objc_copyWeak(&v20, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v12 observeIsForegroundWithBlock:v19];
    v13 = self->_sceneSettingsInspector;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke_3;
    v17 = &unk_2783AC8A0;
    objc_copyWeak(&v18, &location);
    [(UIApplicationSceneSettingsDiffInspector *)v13 observeInterfaceOrientationWithBlock:&v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    sceneSettingsInspector = self->_sceneSettingsInspector;
  }

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector inspectDiff:diffCopy withContext:0, v14, v15, v16, v17];
}

void __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateButtonVisibilityAnimated:1];
}

void __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateButtonVisibilityAnimated:1];
}

void __103__SBDeviceApplicationSceneClassicAccessoryView__sceneHandleDidUpdateSettingsWithDiff_previousSettings___block_invoke_3(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && WeakRetained[472] == 1)
  {
    WeakRetained[472] = 0;
    v4 = [WeakRetained sceneHandle];
    v5 = [v4 sceneIfExists];
    v6 = [v5 uiSettings];
    v8[57] = [v6 interfaceOrientation];

    [v8 setNeedsLayout];
    [v8 layoutIfNeeded];
    v7 = [a2 animationSettings];
    [v8 _updateRotationButtonWithAnimationSettings:v7];
  }

  else
  {
    [WeakRetained _updateRotationButton];
  }
}

- (void)_updateRotationButtonWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    settingsCopy = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:1 toInterfaceOrientation:3];
  }

  sceneHandle = [(SBDeviceApplicationSceneClassicAccessoryView *)self sceneHandle];
  currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];

  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v7;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = dbl_21F8A6780[currentInterfaceOrientation == 1];
  if (currentInterfaceOrientation == 1)
  {
    v9 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__clockWiseRotationButton;
  }

  else
  {
    v9 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__counterClockWiseRotationButton;
  }

  if (currentInterfaceOrientation == 1)
  {
    v10 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__counterClockWiseRotationButton;
  }

  else
  {
    v10 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__clockWiseRotationButton;
  }

  CGAffineTransformMakeRotation(&v31, v8);
  v11 = *(&self->super.super.super.isa + *v9);
  v12 = *(&self->super.super.super.isa + *v10);
  v13 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke;
  v28[3] = &unk_2783A92D8;
  v14 = v11;
  v29 = v14;
  selfCopy = self;
  [v13 performWithoutAnimation:v28];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v16 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy timingFunction:v15];
  [v16 setAllowsAdditiveAnimations:1];
  v17 = MEMORY[0x277CF0D38];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke_2;
  v24[3] = &unk_2783AE868;
  v25 = v14;
  v27 = v31;
  v26 = v12;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke_3;
  v20[3] = &unk_2783A9940;
  v21 = v25;
  v22 = v26;
  selfCopy2 = self;
  v18 = v26;
  v19 = v25;
  [v17 animateWithFactory:v16 actions:v24 completion:v20];
}

uint64_t __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 424);

  return [v3 bringSubviewToFront:v2];
}

uint64_t __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v3;
  v9 = *(a1 + 80);
  [v2 setTransform:&v7];
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v5;
  v9 = *(a1 + 80);
  return [v4 setTransform:&v7];
}

uint64_t __91__SBDeviceApplicationSceneClassicAccessoryView__updateRotationButtonWithAnimationSettings___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(a1 + 40);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [v3 setTransform:&v8];
  return [*(a1 + 48) _updateRotationButton];
}

- (void)_updateOrientationFrom:(int64_t)from toOrientation:(int64_t)orientation animationSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy duration];
  v10 = v9 * 0.5;
  [settingsCopy delay];
  v12 = v11;

  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContentOrientation:from];
  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContainerOrientation:orientation];
  transformWrapperView = self->_transformWrapperView;
  [(SBDeviceApplicationSceneClassicAccessoryView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)transformWrapperView setFrame:?];
  [(SBDeviceApplicationSceneClassicAccessoryView *)self layoutBelowIfNeeded];
  if (v10 <= 0.0)
  {
    [(SBDeviceApplicationSceneClassicAccessoryView *)self _setupPositioningAndRotationForInterfaceOrientation:orientation offscreen:0];
    self->_buttonOrientation = orientation;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke;
    v15[3] = &unk_2783A8BC8;
    v15[4] = self;
    v15[5] = from;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_2;
    v14[3] = &unk_2783B3C60;
    v14[4] = self;
    v14[5] = orientation;
    *&v14[6] = v10;
    [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v15 options:v14 animations:v10 completion:v12];
  }
}

uint64_t __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupPositioningAndRotationForInterfaceOrientation:*(a1 + 40) offscreen:1];
  v2 = *(a1 + 32);

  return [v2 layoutBelowIfNeeded];
}

uint64_t __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) setContentOrientation:*(a1 + 40)];
  [*(*(a1 + 32) + 464) setContainerOrientation:*(a1 + 40)];
  [*(a1 + 32) layoutBelowIfNeeded];
  v2 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_3;
  v6[3] = &unk_2783A8BC8;
  v3 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_4;
  v5[3] = &unk_2783B3C38;
  v5[4] = v7;
  v5[5] = v3;
  return [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v6 options:v5 animations:v2 completion:0.0];
}

uint64_t __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setupPositioningAndRotationForInterfaceOrientation:*(a1 + 40) offscreen:0];
  v2 = *(a1 + 32);

  return [v2 layoutBelowIfNeeded];
}

- (void)_setupPositioningAndRotationForInterfaceOrientation:(int64_t)orientation offscreen:(BOOL)offscreen
{
  v5 = 16.0;
  v6 = -16.0;
  if ((orientation - 3) >= 2)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = -16.0;
  }

  if ((orientation - 3) < 2)
  {
    v6 = 16.0;
  }

  if (offscreen)
  {
    v8 = v7;
  }

  else
  {
    v8 = 16.0;
  }

  if (offscreen)
  {
    v5 = v6;
  }

  [(NSLayoutConstraint *)self->_zoomButtonVerticalConstraint setConstant:-v5];
  [(NSLayoutConstraint *)self->_zoomButtonHorizontalConstraint setConstant:-v8];

  [(SBDeviceApplicationSceneClassicAccessoryView *)self _updateRotationButtonConstraints];
}

- (SBDeviceApplicationSceneClassicAccessoryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sceneHandleDidUpdateClientSettings:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDeviceApplicationSceneClassicAccessoryView _sceneHandleDidUpdateClientSettings:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDeviceApplicationSceneClassicAccessoryView.m" lineNumber:329 description:@"this call must be made on the main thread"];
}

- (void)_sceneHandleDidUpdateSettingsWithDiff:previousSettings:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBDeviceApplicationSceneClassicAccessoryView _sceneHandleDidUpdateSettingsWithDiff:previousSettings:]"];
  [v1 handleFailureInFunction:v0 file:@"SBDeviceApplicationSceneClassicAccessoryView.m" lineNumber:369 description:@"this call must be made on the main thread"];
}

@end