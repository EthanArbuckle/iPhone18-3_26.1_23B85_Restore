@interface SBDeviceApplicationSceneClassicAccessoryView
- (BOOL)_isZoomed;
- (BOOL)_rotationButtonShouldBeVisible;
- (BOOL)_zoomButtonShouldBeVisible;
- (SBDeviceApplicationSceneClassicAccessoryView)initWithFrame:(CGRect)a3 sceneHandle:(id)a4;
- (SBDeviceApplicationSceneClassicAccessoryViewDelegate)delegate;
- (void)_changeZoom:(id)a3;
- (void)_rotateApplicationScene:(id)a3;
- (void)_sceneHandleDidUpdateClientSettings:(id)a3;
- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4;
- (void)_setupPositioningAndRotationForInterfaceOrientation:(int64_t)a3 offscreen:(BOOL)a4;
- (void)_updateButtonVisibilityAnimated:(BOOL)a3;
- (void)_updateOrientationFrom:(int64_t)a3 toOrientation:(int64_t)a4 animationSettings:(id)a5;
- (void)_updateRotationButton;
- (void)_updateRotationButtonConstraints;
- (void)_updateRotationButtonWithAnimationSettings:(id)a3;
- (void)_updateZoomButton;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
@end

@implementation SBDeviceApplicationSceneClassicAccessoryView

- (SBDeviceApplicationSceneClassicAccessoryView)initWithFrame:(CGRect)a3 sceneHandle:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v92[4] = *MEMORY[0x277D85DE8];
  v83 = a4;
  v91.receiver = self;
  v91.super_class = SBDeviceApplicationSceneClassicAccessoryView;
  v10 = [(SBDeviceApplicationSceneClassicAccessoryView *)&v91 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sceneHandle, a4);
    v12 = [(SBDeviceApplicationSceneHandle *)v11->_sceneHandle sceneIfExists];
    v13 = [v12 uiClientSettings];
    v11->_buttonOrientation = [v13 interfaceOrientation];

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
    v26 = [(UIButton *)v11->_zoomButton trailingAnchor];
    v27 = [(UIView *)v11->_buttonWrapperView trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    zoomButtonHorizontalConstraint = v11->_zoomButtonHorizontalConstraint;
    v11->_zoomButtonHorizontalConstraint = v28;

    v30 = [(UIButton *)v11->_zoomButton bottomAnchor];
    v31 = [(UIView *)v11->_buttonWrapperView bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    zoomButtonVerticalConstraint = v11->_zoomButtonVerticalConstraint;
    v11->_zoomButtonVerticalConstraint = v32;

    v34 = [(UIButton *)v11->_zoomButton widthAnchor];
    v35 = [v34 constraintEqualToConstant:48.0];
    zoomButtonWidthConstraint = v11->_zoomButtonWidthConstraint;
    v11->_zoomButtonWidthConstraint = v35;

    v37 = [(UIButton *)v11->_zoomButton heightAnchor];
    v38 = [v37 constraintEqualToConstant:48.0];
    zoomButtonHeightConstraint = v11->_zoomButtonHeightConstraint;
    v11->_zoomButtonHeightConstraint = v38;

    [(NSLayoutConstraint *)v11->_zoomButtonHorizontalConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonVerticalConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonWidthConstraint setActive:1];
    [(NSLayoutConstraint *)v11->_zoomButtonHeightConstraint setActive:1];
    [(UIButton *)v11->_clockWiseRotationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v11->_counterClockWiseRotationButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [(UIButton *)v11->_clockWiseRotationButton widthAnchor];
    v41 = [v40 constraintEqualToConstant:48.0];
    [v41 setActive:1];

    v42 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v43 = [v42 constraintEqualToConstant:48.0];
    [v43 setActive:1];

    v44 = [(UIButton *)v11->_clockWiseRotationButton topAnchor];
    v45 = [(UIButton *)v11->_zoomButton topAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    rotationButtonTopConstraint = v11->_rotationButtonTopConstraint;
    v11->_rotationButtonTopConstraint = v46;

    v48 = [(UIButton *)v11->_clockWiseRotationButton bottomAnchor];
    v49 = [(UIButton *)v11->_zoomButton topAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-16.0];
    rotationButtonBottomConstraint = v11->_rotationButtonBottomConstraint;
    v11->_rotationButtonBottomConstraint = v50;

    v52 = [(UIButton *)v11->_clockWiseRotationButton leadingAnchor];
    v53 = [(UIButton *)v11->_zoomButton leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    rotationButtonLeadingConstraint = v11->_rotationButtonLeadingConstraint;
    v11->_rotationButtonLeadingConstraint = v54;

    v56 = [(UIButton *)v11->_clockWiseRotationButton trailingAnchor];
    v57 = [(UIButton *)v11->_zoomButton leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:-16.0];
    rotationButtonTrailingConstraint = v11->_rotationButtonTrailingConstraint;
    v11->_rotationButtonTrailingConstraint = v58;

    v78 = MEMORY[0x277CCAAD0];
    v82 = [(UIButton *)v11->_counterClockWiseRotationButton centerYAnchor];
    v81 = [(UIButton *)v11->_clockWiseRotationButton centerYAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v92[0] = v80;
    v79 = [(UIButton *)v11->_counterClockWiseRotationButton centerXAnchor];
    v60 = [(UIButton *)v11->_clockWiseRotationButton centerXAnchor];
    v61 = [v79 constraintEqualToAnchor:v60];
    v92[1] = v61;
    v62 = [(UIButton *)v11->_counterClockWiseRotationButton heightAnchor];
    v63 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    v92[2] = v64;
    v65 = [(UIButton *)v11->_counterClockWiseRotationButton widthAnchor];
    v66 = [(UIButton *)v11->_clockWiseRotationButton heightAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v92[3] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:4];
    [v78 activateConstraints:v68];

    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _setupPositioningAndRotationForInterfaceOrientation:v11->_buttonOrientation offscreen:0];
    [(SBDeviceApplicationSceneClassicAccessoryView *)v11 _updateButtonVisibilityAnimated:0];
    objc_initWeak(&location, v11);
    v69 = objc_alloc_init(MEMORY[0x277D67978]);
    sceneHandleObserver = v11->_sceneHandleObserver;
    v11->_sceneHandleObserver = v69;

    [v83 addObserver:v11->_sceneHandleObserver];
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

- (void)_updateButtonVisibilityAnimated:(BOOL)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__SBDeviceApplicationSceneClassicAccessoryView__updateButtonVisibilityAnimated___block_invoke;
  v5[3] = &__block_descriptor_33_e21_v20__0__UIButton_8B16l;
  v6 = a3;
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
  v2 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v3 = [v2 classicAppZoomedIn];

  return v3;
}

- (void)_updateZoomButton
{
  v3 = [(SBDeviceApplicationSceneClassicAccessoryView *)self _isZoomed];
  if (v3)
  {
    v4 = @"scaleDown";
  }

  else
  {
    v4 = @"scaleUp";
  }

  if (v3)
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

- (void)_changeZoom:(id)a3
{
  v4 = [(SBDeviceApplicationSceneClassicAccessoryView *)self _isZoomed];
  v5 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  [v5 _setClassicAppZoomedIn:!v4];

  [(SBDeviceApplicationSceneClassicAccessoryView *)self _updateZoomButton];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (v4)
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
  v3 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v4 = [v3 uiSettings];

  v5 = [v4 isForeground];
  v6 = [v4 deactivationReasons] & 0x28;
  v7 = [v4 isOccluded];
  v8 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _windowScene];
  v9 = [v8 switcherController];

  v10 = [v9 windowManagementContext];
  v11 = [v10 isChamoisOrFlexibleWindowing];

  if (v11)
  {
    v12 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
    v13 = [v12 classicAppPhoneAppRunningOnPad];

    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v14 = v5;
    }

    if (v14 == 1)
    {
      v15 = (v7 | v13) ^ 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v5)
  {
    v15 = (v6 == 0) & (v7 ^ 1);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (void)_updateRotationButton
{
  v3 = [(SBDeviceApplicationSceneClassicAccessoryView *)self sceneHandle];
  v4 = [v3 currentInterfaceOrientation];

  if (v4 == 1)
  {
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__clockWiseRotationButton;
  }

  else
  {
    v5 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__counterClockWiseRotationButton;
  }

  v6 = 2 * (v4 == 1);
  if (v4 == 1)
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
  v3 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v4 = [v3 uiSettings];
  v5 = [v4 interfaceOrientationMode];
  v8 = (v5 == 2 || v3 && ([v3 uiClientSettings], v6 = ;
  return v8;
}

- (void)_rotateApplicationScene:(id)a3
{
  sceneHandle = self->_sceneHandle;
  v5 = a3;
  [(SBDeviceApplicationSceneHandle *)self->_sceneHandle _setClassicAppPhoneOnPadPrefersLandscape:[(SBDeviceApplicationSceneHandle *)sceneHandle _classicAppPhoneOnPadPrefersLandscape]^ 1];

  self->_rotatingFromButtonTap = v5 != 0;
  v6 = [(SBDeviceApplicationSceneClassicAccessoryView *)self delegate];
  [v6 noteApplicationClassicPhoneSceneOrientationPreferenceChangingForUserAction:self->_rotatingFromButtonTap];
}

- (void)_sceneHandleDidUpdateClientSettings:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBDeviceApplicationSceneClassicAccessoryView _sceneHandleDidUpdateClientSettings:];
  }

  v5 = [v4 settingsDiff];
  v6 = [v4 transitionContext];
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

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:v5 withContext:v6];
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

- (void)_sceneHandleDidUpdateSettingsWithDiff:(id)a3 previousSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [(UIApplicationSceneSettingsDiffInspector *)sceneSettingsInspector inspectDiff:v6 withContext:0, v14, v15, v16, v17];
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

- (void)_updateRotationButtonWithAnimationSettings:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [SBAnimationUtilities animationSettingsForRotationFromInterfaceOrientation:1 toInterfaceOrientation:3];
  }

  v5 = [(SBDeviceApplicationSceneClassicAccessoryView *)self sceneHandle];
  v6 = [v5 currentInterfaceOrientation];

  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&v31.a = *MEMORY[0x277CBF2C0];
  *&v31.c = v7;
  *&v31.tx = *(MEMORY[0x277CBF2C0] + 32);
  v8 = dbl_21F8A6780[v6 == 1];
  if (v6 == 1)
  {
    v9 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__clockWiseRotationButton;
  }

  else
  {
    v9 = &OBJC_IVAR___SBDeviceApplicationSceneClassicAccessoryView__counterClockWiseRotationButton;
  }

  if (v6 == 1)
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
  v30 = self;
  [v13 performWithoutAnimation:v28];
  v15 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  v16 = [MEMORY[0x277CF0D38] factoryWithSettings:v4 timingFunction:v15];
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
  v23 = self;
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

- (void)_updateOrientationFrom:(int64_t)a3 toOrientation:(int64_t)a4 animationSettings:(id)a5
{
  v8 = a5;
  [v8 duration];
  v10 = v9 * 0.5;
  [v8 delay];
  v12 = v11;

  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContentOrientation:a3];
  [(BSUIOrientationTransformWrapperView *)self->_transformWrapperView setContainerOrientation:a4];
  transformWrapperView = self->_transformWrapperView;
  [(SBDeviceApplicationSceneClassicAccessoryView *)self bounds];
  [(BSUIOrientationTransformWrapperView *)transformWrapperView setFrame:?];
  [(SBDeviceApplicationSceneClassicAccessoryView *)self layoutBelowIfNeeded];
  if (v10 <= 0.0)
  {
    [(SBDeviceApplicationSceneClassicAccessoryView *)self _setupPositioningAndRotationForInterfaceOrientation:a4 offscreen:0];
    self->_buttonOrientation = a4;
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke;
    v15[3] = &unk_2783A8BC8;
    v15[4] = self;
    v15[5] = a3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__SBDeviceApplicationSceneClassicAccessoryView__updateOrientationFrom_toOrientation_animationSettings___block_invoke_2;
    v14[3] = &unk_2783B3C60;
    v14[4] = self;
    v14[5] = a4;
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

- (void)_setupPositioningAndRotationForInterfaceOrientation:(int64_t)a3 offscreen:(BOOL)a4
{
  v5 = 16.0;
  v6 = -16.0;
  if ((a3 - 3) >= 2)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = -16.0;
  }

  if ((a3 - 3) < 2)
  {
    v6 = 16.0;
  }

  if (a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 16.0;
  }

  if (a4)
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