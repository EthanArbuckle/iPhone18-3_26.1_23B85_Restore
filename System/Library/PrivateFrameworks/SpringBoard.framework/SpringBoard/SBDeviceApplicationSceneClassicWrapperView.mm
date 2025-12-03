@interface SBDeviceApplicationSceneClassicWrapperView
+ (BOOL)shouldUseWrapperViewForSceneHandle:(id)handle;
- (BOOL)_isChamoisOrFlexibleWindowing;
- (BOOL)_isProbablyScreenSized;
- (BOOL)_shouldRasterizePositioningLayer;
- (BOOL)wantsBlackBackground;
- (CGRect)_effectiveSceneBounds;
- (SBDeviceApplicationSceneClassicWrapperView)initWithSceneHandle:(id)handle;
- (void)_shouldRasterizePositioningLayer;
- (void)addContentView:(id)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)removeContentView:(id)view;
- (void)setOrientation:(int64_t)orientation;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBDeviceApplicationSceneClassicWrapperView

+ (BOOL)shouldUseWrapperViewForSceneHandle:(id)handle
{
  handleCopy = handle;
  application = [handleCopy application];
  if ([application isClassic])
  {
    LOBYTE(v5) = 1;
  }

  else if ([handleCopy isHostedSecureApp])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    _windowScene = [handleCopy _windowScene];
    switcherController = [_windowScene switcherController];

    bundleIdentifier = [application bundleIdentifier];
    v9 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

    windowManagementContext = [switcherController windowManagementContext];
    if ([windowManagementContext isChamoisOrFlexibleWindowing] && (objc_msgSend(application, "supportsChamoisSceneResizing") & 1) == 0)
    {
      v11 = [switcherController activeAndVisibleSceneIdentifiersForApplication:application];
      sceneIdentifier = [handleCopy sceneIdentifier];
      v5 = [v11 containsObject:sceneIdentifier] & (v9 ^ 1);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (SBDeviceApplicationSceneClassicWrapperView)initWithSceneHandle:(id)handle
{
  v30[2] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v29.receiver = self;
  v29.super_class = SBDeviceApplicationSceneClassicWrapperView;
  v6 = [(SBDeviceApplicationSceneClassicWrapperView *)&v29 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, handle);
    if (!v7->_positioningView)
    {
      v8 = [_SBDeviceApplicationSceneClassicHostPositioningView alloc];
      [(SBDeviceApplicationSceneClassicWrapperView *)v7 bounds];
      v9 = [(_SBDeviceApplicationSceneClassicHostPositioningView *)v8 initWithFrame:?];
      positioningView = v7->_positioningView;
      v7->_positioningView = v9;

      [(SBDeviceApplicationSceneClassicWrapperView *)v7 addSubview:v7->_positioningView];
      layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)v7->_positioningView layer];
      [layer setMinificationFilter:*MEMORY[0x277CDA278]];
      [layer setMagnificationFilter:*MEMORY[0x277CDA578]];
      if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
      {
        v12 = +[SBAppSwitcherDomain rootSettings];
        windowingSettings = [v12 windowingSettings];
        windowingSettings = v7->_windowingSettings;
        v7->_windowingSettings = windowingSettings;

        [(PTSettings *)v7->_windowingSettings addKeyObserver:v7];
        v7->_canRasterize = [(SBSwitcherWindowingSettings *)v7->_windowingSettings rasterizeScaledApps];
        v15 = +[SBDefaults localDefaults];
        appSwitcherDefaults = [v15 appSwitcherDefaults];
        appSwitcherDefaults = v7->_appSwitcherDefaults;
        v7->_appSwitcherDefaults = appSwitcherDefaults;

        objc_initWeak(&location, v7);
        v18 = v7->_appSwitcherDefaults;
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"chamoisWindowingEnabled"];
        v30[0] = v19;
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"medusaMultitaskingEnabled"];
        v30[1] = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
        v22 = MEMORY[0x277D85CD0];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __66__SBDeviceApplicationSceneClassicWrapperView_initWithSceneHandle___block_invoke;
        v26[3] = &unk_2783A8C68;
        objc_copyWeak(&v27, &location);
        v23 = [(SBAppSwitcherDefaults *)v18 observeDefaults:v21 onQueue:MEMORY[0x277D85CD0] withBlock:v26];
        appSwitcherDefaultsObserver = v7->_appSwitcherDefaultsObserver;
        v7->_appSwitcherDefaultsObserver = v23;

        objc_destroyWeak(&v27);
        objc_destroyWeak(&location);
      }
    }
  }

  return v7;
}

void __66__SBDeviceApplicationSceneClassicWrapperView_initWithSceneHandle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _windowingModeChanged];
}

- (void)dealloc
{
  [(BSDefaultObserver *)self->_appSwitcherDefaultsObserver invalidate];
  [(PTSettings *)self->_windowingSettings removeKeyObserver:self];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneClassicWrapperView;
  [(SBDeviceApplicationSceneClassicWrapperView *)&v3 dealloc];
}

- (void)addContentView:(id)view
{
  positioningView = self->_positioningView;
  viewCopy = view;
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)positioningView addSubview:viewCopy];
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView bounds];
  [viewCopy setFrame:?];
}

- (void)removeContentView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];
  positioningView = self->_positioningView;

  if (superview == positioningView)
  {
    [viewCopy removeFromSuperview];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(SBDeviceApplicationSceneClassicWrapperView *)self setNeedsLayout];
  }
}

- (BOOL)wantsBlackBackground
{
  if (![(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
  {
    return 1;
  }

  if (SBFIsFullScreenLetterboxingAvailable())
  {
    application = [(SBApplicationSceneHandle *)self->_sceneHandle application];
    onlySupportsOneOrientation = [application onlySupportsOneOrientation];

    if (onlySupportsOneOrientation)
    {
      return 1;
    }
  }

  return [(SBDeviceApplicationSceneClassicWrapperView *)self _isProbablyScreenSized];
}

- (BOOL)_isChamoisOrFlexibleWindowing
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
}

- (BOOL)_isProbablyScreenSized
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  _windowScene = [sceneHandle _windowScene];
  screen = [_windowScene screen];
  [screen _referenceBounds];
  v7 = v6;
  v9 = v8;
  [(SBDeviceApplicationSceneClassicWrapperView *)self bounds];
  if (v7 >= v9)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v10 >= v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v7 <= v9)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v10 > v11)
  {
    v10 = v11;
  }

  v15 = v12 == v13 && v14 == v10;

  return v15;
}

- (void)layoutSubviews
{
  v101 = *MEMORY[0x277D85DE8];
  if (self->_suppressLayoutUpdatesForStartOfClassicPhoneAppRotation)
  {
    return;
  }

  v99.receiver = self;
  v99.super_class = SBDeviceApplicationSceneClassicWrapperView;
  [(SBDeviceApplicationSceneClassicWrapperView *)&v99 layoutSubviews];
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  application = [sceneHandle application];
  [(SBDeviceApplicationSceneClassicWrapperView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBDeviceApplicationSceneClassicWrapperView *)self _effectiveSceneBounds];
  x = v102.origin.x;
  y = v102.origin.y;
  width = v102.size.width;
  height = v102.size.height;
  if (!CGRectIsEmpty(v102))
  {
    v81 = x;
    v82 = y;
    v79 = height;
    v80 = width;
    _windowScene = [sceneHandle _windowScene];
    switcherController = [_windowScene switcherController];
    screen = [_windowScene screen];
    startingOrientationForClassicPhoneAppRotation = [(SBDeviceApplicationSceneClassicWrapperView *)self orientation];
    v78 = startingOrientationForClassicPhoneAppRotation;
    if (self->_preparingForUserDrivenClassicRotation)
    {
      startingOrientationForClassicPhoneAppRotation = self->_startingOrientationForClassicPhoneAppRotation;
    }

    sceneHandle2 = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
    sceneIfExists = [sceneHandle2 sceneIfExists];
    settings = [sceneIfExists settings];
    [settings interfaceOrientation];

    [application classicAppPhoneAppRunningOnPad];
    sceneIfExists2 = [sceneHandle sceneIfExists];
    settings2 = [sceneIfExists2 settings];
    [settings2 frame];
    v28 = v27;
    v30 = v29;

    v76 = v30;
    v77 = v28;
    _UIWindowConvertRectFromOrientationToOrientation();
    BSRectWithSize();
    v87 = v31;
    rect = v32;
    v84 = v33;
    rect1 = v34;
    layoutState = [switcherController layoutState];
    interfaceOrientation = [layoutState interfaceOrientation];

    if ((interfaceOrientation - 3) <= 1)
    {
      v103.origin.x = v6;
      v103.origin.y = v8;
      v103.size.width = v10;
      v103.size.height = v12;
      CGRectGetHeight(v103);
      v104.origin.x = v6;
      v104.origin.y = v8;
      v104.size.width = v10;
      v104.size.height = v12;
      CGRectGetWidth(v104);
    }

    _UIWindowConvertRectFromOrientationToOrientation();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [screen _referenceBounds];
    v115.origin.x = v38;
    v115.origin.y = v40;
    v74 = v44;
    v75 = v42;
    v115.size.width = v42;
    v115.size.height = v44;
    v45 = CGRectEqualToRect(v105, v115);
    v106.origin.x = v87;
    v106.origin.y = rect;
    v106.size.width = v84;
    v106.size.height = rect1;
    v116.origin.x = v6;
    v116.origin.y = v8;
    v116.size.width = v10;
    v116.size.height = v12;
    v46 = CGRectEqualToRect(v106, v116);
    if ([application classicAppNonFullScreenWithHomeAffordance])
    {
      v47 = [application classicAppPhoneAppRunningOnPad] ^ 1;
    }

    else
    {
      v47 = 0;
    }

    v48 = v82;
    if ([(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
    {
      sx = v10 / v84;
      v49 = rect1;
      if (v46 || !v45)
      {
        v50 = 0.0;
        if ([application classicAppFullScreen])
        {
          [screen _isEmbeddedScreen];
        }

        v47 = 0;
        v49 = rect1;
        v48 = v82;
        v51 = v12 / rect1;
        goto LABEL_35;
      }

      classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen = [application classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen];
      v107.origin.x = v87;
      v107.origin.y = rect;
      v107.size.width = v84;
      v107.size.height = rect1;
      CGRectGetWidth(v107);
      v108.origin.y = rect;
      v108.origin.x = v87;
      v108.size.width = v84;
      v108.size.height = rect1;
      CGRectGetHeight(v108);
      v109.origin.x = v6;
      v109.origin.y = v8;
      v109.size.width = v10;
      v109.size.height = v12;
      CGRectGetWidth(v109);
      v110.origin.x = v6;
      v110.origin.y = v8;
      v110.size.width = v10;
      v110.size.height = v12;
      CGRectGetHeight(v110);
      if (BSFloatApproximatelyEqualToFloat())
      {
        v51 = v12 / rect1;
      }

      else
      {
        v51 = v12 / rect1;
        if ([application classicAppPhoneAppRunningOnPad])
        {
          v51 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(startingOrientationForClassicPhoneAppRotation, v77, v76);
          sx = v51;
        }
      }

      v48 = v82;
      if ([application classicAppFullScreen])
      {
        [screen _isEmbeddedScreen];
      }

      v47 = 0;
      v50 = 0.0;
      if (classicAppScaledWithAspectRatioCloseEnoughToBeTreatedAsFullScreen)
      {
LABEL_35:
        if (SBFIsFullScreenLetterboxingAvailable())
        {
          wantsBlackBackground = [(SBDeviceApplicationSceneClassicWrapperView *)self wantsBlackBackground];
          v57 = sx;
          if (sx <= v51)
          {
            v58 = sx;
          }

          else
          {
            v58 = v51;
          }

          if (wantsBlackBackground)
          {
            v57 = v58;
            v51 = v58;
          }

          v59 = v78;
        }

        else
        {
          v59 = v78;
          v57 = sx;
        }

        v60 = *(MEMORY[0x277CBF2C0] + 16);
        *&v98.a = *MEMORY[0x277CBF2C0];
        *&v98.c = v60;
        *&v98.tx = *(MEMORY[0x277CBF2C0] + 32);
        memset(&v97, 0, sizeof(v97));
        CGAffineTransformMakeScale(&v97, v57, v51);
        if (self->_preparingForUserDrivenClassicRotation)
        {
          SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation();
          CGAffineTransformMakeRotation(&v98, v61);
          t1 = v97;
          t2 = v98;
          CGAffineTransformConcat(&v96, &t1, &t2);
          v97 = v96;
        }

        [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setBounds:v87, rect, v84, v49];
        positioningView = self->_positioningView;
        UIRectGetCenter();
        [(_SBDeviceApplicationSceneClassicHostPositioningView *)positioningView setCenter:?];
        v63 = self->_positioningView;
        v96 = v97;
        [(_SBDeviceApplicationSceneClassicHostPositioningView *)v63 setTransform:&v96];
        v10 = v80;
        if (v47)
        {
          if ([(SBDeviceApplicationSceneClassicWrapperView *)self _isChamoisOrFlexibleWindowing])
          {
            v64 = 1;
          }

          else
          {
            v64 = [application includesStatusBarInClassicJailForInterfaceOrientation:v59];
          }

          layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
          SBClassicUtilitiesInsetAndTranslateLayerForPresentationWithHomeAffordance(layer, screen, 0, v59, 1, v64, [application classicAppWithRoundedCorners], v75, v74, v77, v76, v51);

          v12 = v79;
        }

        else
        {
          v12 = v79;
          if (v50 <= 0.0)
          {
LABEL_53:

            v8 = v48;
            v6 = v81;
            goto LABEL_54;
          }

          [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView _setContinuousCornerRadius:v50];
        }

        [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setClipsToBounds:1];
        goto LABEL_53;
      }

LABEL_30:
      v55 = sx;
      if (sx > v51)
      {
        v55 = v51;
      }

      sx = v55;
      v51 = v55;
      goto LABEL_35;
    }

    if ([application classicAppPhoneAppRunningOnPad])
    {
      v51 = 1.0;
      if ([application classicAppZoomedInOrRequiresHiDPI])
      {
        v51 = SBClassicUtilitiesScaleFactorForPhoneAppZoomedIn(startingOrientationForClassicPhoneAppRotation, v77, v76);
      }

      v50 = 5.0 / v51;
      sx = v51;
    }

    else
    {
      v50 = 0.0;
      if ([application classicAppScaled])
      {
        v111.origin.x = v6;
        v111.origin.y = v8;
        v111.size.width = v10;
        v111.size.height = v12;
        v53 = CGRectGetHeight(v111);
        v112.origin.y = rect;
        v112.origin.x = v87;
        v112.size.width = v84;
        v112.size.height = rect1;
        v73 = v53 / CGRectGetHeight(v112);
        v113.origin.x = v6;
        v113.origin.y = v8;
        v113.size.width = v10;
        v113.size.height = v12;
        v54 = CGRectGetWidth(v113);
        v114.origin.x = v87;
        v48 = v82;
        v114.origin.y = rect;
        v114.size.width = v84;
        v49 = rect1;
        v51 = v73;
        v114.size.height = rect1;
        sx = v54 / CGRectGetWidth(v114);
        v50 = 0.0;
        if ([application classicAppFullScreen])
        {
          goto LABEL_35;
        }

        goto LABEL_30;
      }

      sx = 1.0;
      v51 = 1.0;
    }

    v49 = rect1;
    goto LABEL_35;
  }

  [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView setFrame:v6, v8, v10, v12];
  v17 = self->_positioningView;
  UIRectGetCenter();
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)v17 setCenter:?];
  v18 = self->_positioningView;
  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *&v98.a = *MEMORY[0x277CBF2C0];
  *&v98.c = v19;
  *&v98.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(_SBDeviceApplicationSceneClassicHostPositioningView *)v18 setTransform:&v98];
LABEL_54:
  layer2 = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
  [layer2 setShouldRasterize:{-[SBDeviceApplicationSceneClassicWrapperView _shouldRasterizePositioningLayer](self, "_shouldRasterizePositioningLayer")}];
  traitCollection = [(SBDeviceApplicationSceneClassicWrapperView *)self traitCollection];
  [traitCollection displayScale];
  [layer2 setRasterizationScale:?];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  contentViews = [(SBDeviceApplicationSceneClassicWrapperView *)self contentViews];
  v69 = [contentViews countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = *v91;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v91 != v71)
        {
          objc_enumerationMutation(contentViews);
        }

        [*(*(&v90 + 1) + 8 * i) setFrame:{v6, v8, v10, v12}];
      }

      v70 = [contentViews countByEnumeratingWithState:&v90 objects:v100 count:16];
    }

    while (v70);
  }
}

- (CGRect)_effectiveSceneBounds
{
  sceneHandle = [(SBDeviceApplicationSceneClassicWrapperView *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    [settings frame];
    v6 = v5;
    v8 = v7;

    settings2 = [sceneIfExists settings];
    v10 = [settings2 interfaceOrientation] - 3;

    if (v10 > 1)
    {
      BSRectWithSize();
      v11 = v13;
      v12 = v14;
      v8 = v15;
      v6 = v16;
    }

    else
    {
      v11 = 0.0;
      v12 = 0.0;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v11;
  v18 = v12;
  v19 = v8;
  v20 = v6;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_windowingSettings == settings && [key isEqualToString:@"rasterizeScaledApps"])
  {
    self->_canRasterize = [(SBSwitcherWindowingSettings *)self->_windowingSettings rasterizeScaledApps];

    [(SBDeviceApplicationSceneClassicWrapperView *)self setNeedsLayout];
  }
}

- (BOOL)_shouldRasterizePositioningLayer
{
  v13 = *MEMORY[0x277D85DE8];
  if (!self->_canRasterize)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBDeviceApplicationSceneClassicWrapperView _shouldRasterizePositioningLayer];
    }

    goto LABEL_9;
  }

  if (([(SBAppSwitcherDefaults *)self->_appSwitcherDefaults chamoisWindowingEnabled]& 1) == 0)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBDeviceApplicationSceneClassicWrapperView _shouldRasterizePositioningLayer];
    }

LABEL_9:
    LOBYTE(v5) = 0;
    goto LABEL_13;
  }

  layer = [(_SBDeviceApplicationSceneClassicHostPositioningView *)self->_positioningView layer];
  v4 = layer;
  if (layer)
  {
    [layer transform:0];
  }

  v5 = BSFloatIsOne() ^ 1;
  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = _SBFLoggingMethodProem();
    *buf = 138543618;
    v10 = v8;
    v11 = 1024;
    v12 = v5;
    _os_log_debug_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ returning %{BOOL}u", buf, 0x12u);
  }

LABEL_13:
  return v5;
}

- (void)_shouldRasterizePositioningLayer
{
  v0 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "%{public}@ early return NO because we're not in chamois", v3, v4, v5, v6, 2u);
}

@end