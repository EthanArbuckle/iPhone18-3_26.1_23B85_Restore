@interface _UISceneHostingView
- (BOOL)inheritsSecurity;
- (BOOL)isScrollEnabled;
- (NSString)debugDescription;
- (_UISceneHostingController)_sceneHostingController;
- (_UISceneHostingView)initWithSceneHostingController:(id)controller;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)_isSceneSized;
- (id)parentWindow;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)appendDescriptionToStream:(id)stream;
- (void)applyViewGeometryToSettings:(id)settings;
- (void)layoutSubviews;
- (void)requestSceneSettingsUpdateIfNecessary;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setPresentedScene:(id)scene;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UISceneHostingView

- (void)requestSceneSettingsUpdateIfNecessary
{
  if (self)
  {
    v2 = _UIPortraitFrameForSceneHosting(self);
    v4 = v3;
    v6 = v5;
    v8 = v7;
    traitCollection = [self traitCollection];
    [self safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [self _safeAreaCornerInsets];
    tintColor = [self tintColor];
    _isSceneSized = [(_UISceneHostingView *)self _isSceneSized];
    _window = [self _window];
    interfaceOrientation = [_window interfaceOrientation];

    v38.origin.x = v2;
    v38.origin.y = v4;
    v38.size.width = v6;
    v38.size.height = v8;
    if (CGRectEqualToRect(v38, *(self + 424)))
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = v8 == *(self + 448) && v6 == *(self + 440);
      v23 = !v22;
    }

    v24 = [traitCollection isEqual:*(self + 408)];
    if (v13 == *(self + 464) && v11 == *(self + 456) && v17 == *(self + 480))
    {
      v27 = !((v15 == *(self + 472)) & v24) | v23;
    }

    else
    {
      v27 = 1;
    }

    v28 = 1;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, *(self + 488)), vceqq_f64(0, *(self + 536))))))
    {
      v29 = *(self + 504) != 0.0 || *(self + 512) != 0.0;
      if (!v29 && *(self + 520) == 0.0)
      {
        v28 = (*(self + 528) != 0.0) | v27;
      }
    }

    v31 = [tintColor isEqual:*(self + 416)] ^ 1;
    v33 = interfaceOrientation != *(self + 560) || *(self + 552) != _isSceneSized;
    v34 = v33 | v31 | v28;
    if ((v22 | v34))
    {
      *(self + 424) = v2;
      *(self + 432) = v4;
      *(self + 440) = v6;
      *(self + 448) = v8;
      objc_storeStrong((self + 408), traitCollection);
      *(self + 456) = v11;
      *(self + 464) = v13;
      *(self + 472) = v15;
      *(self + 480) = v17;
      *(self + 488) = 0u;
      *(self + 504) = 0u;
      *(self + 520) = 0u;
      *(self + 536) = 0u;
      objc_storeStrong((self + 416), tintColor);
      *(self + 552) = _isSceneSized;
      *(self + 560) = interfaceOrientation;
      WeakRetained = objc_loadWeakRetained((self + 592));
      v36 = WeakRetained;
      if (v34)
      {
        v37 = *(self + 576) ^ 1;
      }

      else
      {
        v37 = 0;
      }

      if (WeakRetained)
      {
        [WeakRetained _updateSceneSettingsFromSettingsProvidersWithFence:v37 & ~WeakRetained[32] & 1];
      }
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _UISceneHostingView;
  [(UIView *)&v5 layoutSubviews];
  window = [(UIView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [(_UISceneHostingView *)self requestSceneSettingsUpdateIfNecessary];
  }
}

- (_UISceneHostingView)initWithSceneHostingController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _UISceneHostingView;
  v5 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneHostingController, controllerCopy);
    [(UIView *)v6 _addGeometryChangeObserver:v6];
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  traitCollectionReceiver = [WeakRetained traitCollectionReceiver];
  traitCollection = [(UIView *)self traitCollection];
  [traitCollectionReceiver setTraitCollection:traitCollection];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = _UISceneHostingView;
  [(UIView *)&v10 willMoveToWindow:windowCopy];
  if ([UIApp _supportedOnLockScreen])
  {
    _isSecure = [objc_opt_class() _isSecure];
  }

  else
  {
    _isSecure = 0;
  }

  layer = [(UIView *)self layer];
  v7 = layer;
  v8 = MEMORY[0x1E6979E60];
  if ((_isSecure & 1) == 0)
  {
    v8 = MEMORY[0x1E6979E58];
  }

  [layer setSecurityMode:*v8];

  window = [(UIView *)self window];
  [window _unregisterScrollToTopView:self];

  [windowCopy _registerScrollToTopView:self];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  var0 = changed->var0;
  parentWindow = [(_UISceneHostingView *)&self->super.super.super.isa parentWindow];
  [parentWindow frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((var0 & 0x1000) != 0)
  {
    interfaceOrientation = [parentWindow interfaceOrientation];
    var6 = changed->var6;
    v17 = (interfaceOrientation - 3) <= 1 && (var6 - 3) < 2;
    v18 = (var6 - 1) < 2;
    if ((interfaceOrientation - 1) > 1)
    {
      v18 = v17;
    }

    if (vabdd_f64(v12, v14) <= 2.22044605e-16 || v18)
    {
      goto LABEL_11;
    }
  }

  [(UIView *)self frame];
  v28.origin.x = v19;
  v28.origin.y = v20;
  v28.size.width = v21;
  v28.size.height = v22;
  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  v23 = CGRectEqualToRect(v27, v28);
  isRotating = [parentWindow isRotating];
  if ((var0 & 0x3E) != 0 && (isRotating & ((var0 >> 3) & 1 | v23) & 1) == 0)
  {
LABEL_11:
    [(_UISceneHostingView *)self requestSceneSettingsUpdateIfNecessary];
  }
}

- (id)parentWindow
{
  selfCopy = self;
  if (self)
  {
    _window = [self _window];
    v3 = _window;
    if (_window)
    {
      selfCopy = _window;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(selfCopy + 74);
      sceneViewController = [WeakRetained sceneViewController];
      selfCopy = [sceneViewController _window];
    }
  }

  return selfCopy;
}

- (void)setPresentedScene:(id)scene
{
  v64 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  if (!sceneCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingView.m" lineNumber:157 description:@"Can not set up _UISceneHostingView with a nil scene"];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &setPresentedScene____s_category);
  if (*CategoryCachedImpl)
  {
    v27 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v28 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        selfCopy = [v28 stringWithFormat:@"<%@: %p>", v31, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v34 = selfCopy;
      identityToken = [sceneCopy identityToken];
      *buf = 138412546;
      v61 = selfCopy;
      v62 = 2112;
      v63 = identityToken;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "%@ Presenting scene: %@", buf, 0x16u);
    }
  }

  uiPresentationManager = [sceneCopy uiPresentationManager];
  v8 = MEMORY[0x1E696AEC0];
  identifier = [sceneCopy identifier];
  v10 = [v8 stringWithFormat:@"UISceneHostingView-%@", identifier];

  v11 = [uiPresentationManager createPresenterWithIdentifier:v10];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v11;

  [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_649];
  [(UIScenePresenter *)self->_scenePresenter activate];
  presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(UIView *)self frame];
  [presentationView setFrame:?];
  [presentationView setAutoresizingMask:18];
  [(UIView *)self setClipsToBounds:1];
  [(UIView *)self addSubview:presentationView];
  [(UIView *)self sendSubviewToBack:presentationView];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  traitCollectionReceiver = [WeakRetained traitCollectionReceiver];
  traitCollection = [(UIView *)self traitCollection];
  [traitCollectionReceiver setTraitCollection:traitCollection];

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v17 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v33 = _UIInternalPreference_SceneHostingDebugOverlay;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_SceneHostingDebugOverlay)
    {
      while (v17 >= v33)
      {
        _UIInternalPreferenceSync(v17, &_UIInternalPreference_SceneHostingDebugOverlay, @"SceneHostingDebugOverlay", _UIInternalPreferenceUpdateBool);
        v33 = _UIInternalPreference_SceneHostingDebugOverlay;
        if (v17 == _UIInternalPreference_SceneHostingDebugOverlay)
        {
          goto LABEL_7;
        }
      }

      if (byte_1EA95E78C && !self->_debugLabel)
      {
        v36 = objc_alloc_init(UILabel);
        [(UILabel *)v36 setNumberOfLines:0];
        v37 = [off_1E70ECC18 systemFontOfSize:9.0];
        [(UILabel *)v36 setFont:v37];

        v38 = MEMORY[0x1E696AEC0];
        v39 = _UIMainBundleIdentifier();
        identifier2 = [sceneCopy identifier];
        v41 = [v38 stringWithFormat:@"%@ → %@", v39, identifier2];
        [(UILabel *)v36 setText:v41];

        [(UIView *)v36 sizeToFit];
        [(UIView *)self addSubview:v36];
        [(UIView *)self bringSubviewToFront:v36];
        v42 = +[UIColor systemGreenColor];
        v43 = [v42 colorWithAlphaComponent:0.8];
        [(UIView *)v36 setBackgroundColor:v43];

        debugLabel = self->_debugLabel;
        self->_debugLabel = v36;
        v45 = v36;

        layer = [(UIView *)self->_debugLabel layer];
        [layer setAllowsHitTesting:0];

        [(UIView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
        v53 = MEMORY[0x1E69977A0];
        leftAnchor = [(UIView *)v45 leftAnchor];
        leftAnchor2 = [(UIView *)self leftAnchor];
        v56 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
        v59[0] = v56;
        topAnchor = [(UIView *)v45 topAnchor];
        safeAreaLayoutGuide = [(UIView *)self safeAreaLayoutGuide];
        topAnchor2 = [safeAreaLayoutGuide topAnchor];
        v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v59[1] = v51;
        rightAnchor = [(UIView *)v45 rightAnchor];
        rightAnchor2 = [(UIView *)self rightAnchor];
        v48 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
        v59[2] = v48;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
        [v53 activateConstraints:v49];
      }
    }
  }

LABEL_7:
  v18 = objc_loadWeakRetained(&self->_sceneHostingController);
  v19 = v18;
  if (v18)
  {
    v20 = *(v18 + 5);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  definition = [v21 definition];
  clientIdentity = [definition clientIdentity];
  processIdentity = [clientIdentity processIdentity];

  xpcServiceIdentifier = [processIdentity xpcServiceIdentifier];
  self->_requiresFencingHack = [xpcServiceIdentifier isEqualToString:@"com.apple.ScreenTime.ScreenTimeWebExtension"];
}

- (BOOL)inheritsSecurity
{
  presentationContext = [(UIScenePresenter *)self->_scenePresenter presentationContext];
  inheritsSecurity = [presentationContext inheritsSecurity];

  return inheritsSecurity;
}

- (void)setInheritsSecurity:(BOOL)security
{
  scenePresenter = self->_scenePresenter;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___UISceneHostingView_setInheritsSecurity___block_invoke;
  v4[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
  securityCopy = security;
  [(UIScenePresenter *)scenePresenter modifyPresentationContext:v4];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  windowCopy = window;
  window = [(UIView *)self window];

  if (window == windowCopy)
  {
    v18.receiver = self;
    v18.super_class = _UISceneHostingView;
    v13 = [(UIView *)&v18 _hitTest:eventCopy withEvent:windowCopy windowServerHitTestWindow:x, y];
    presentationContext = [(UIScenePresenter *)self->_scenePresenter presentationContext];
    shouldPassthroughHitTestEventsIfTransparent = [presentationContext shouldPassthroughHitTestEventsIfTransparent];

    if (shouldPassthroughHitTestEventsIfTransparent)
    {
      v16 = v13 == self;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_isSceneSized
{
  selfCopy = self;
  if (self)
  {
    parentWindow = [(_UISceneHostingView *)self parentWindow];
    _windowHostingScene = [parentWindow _windowHostingScene];

    if (_windowHostingScene)
    {
      _coordinateSpace = [_windowHostingScene _coordinateSpace];
      [_coordinateSpace bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [selfCopy bounds];
      selfCopy = _UIRectEquivalentToRectWithAccuracy(v13, v14, v15, v16, v6, v8, v10, v12, 0.1);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)applyViewGeometryToSettings:(id)settings
{
  settingsCopy = settings;
  v5 = _UIPortraitFrameForSceneHosting(self);
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    [settingsCopy setFrame:v5];
  }

  if ([settingsCopy isUISubclass])
  {
    v9 = settingsCopy;
    parentWindow = [(_UISceneHostingView *)&self->super.super.super.isa parentWindow];
    ui_safeAreaSettings = [v9 ui_safeAreaSettings];
    if (ui_safeAreaSettings)
    {
      v12 = [_UISceneSafeAreaEdgeInsetConcreteResolver alloc];
      [(UIView *)self safeAreaInsets];
      v13 = [(_UISceneSafeAreaEdgeInsetConcreteResolver *)v12 initWithSafeAreaEdgeInsets:?];
      [ui_safeAreaSettings setSafeAreaEdgeInsetResolver:v13];
      v14 = [_UISceneSafeAreaCornerInsetConcreteResolver alloc];
      [(UIView *)self _safeAreaCornerInsets];
      v15 = [(_UISceneSafeAreaCornerInsetConcreteResolver *)v14 initWithSafeAreaCornerInsets:&v26];
      [ui_safeAreaSettings setSafeAreaCornerInsetResolver:v15];
    }

    interfaceOrientation = [parentWindow interfaceOrientation];
    if (!interfaceOrientation)
    {
      WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
      v18 = WeakRetained;
      if (WeakRetained)
      {
        v19 = *(WeakRetained + 5);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      settings = [v20 settings];
      interfaceOrientation2 = [settings interfaceOrientation];

      if (interfaceOrientation2)
      {
        goto LABEL_14;
      }

      interfaceOrientation = 1;
    }

    [v9 setInterfaceOrientation:interfaceOrientation];
LABEL_14:
    if ([(_UISceneHostingView *)&self->super.super.super.isa _isSceneSized])
    {
      windowScene = [parentWindow windowScene];
      _effectiveUISettings = [windowScene _effectiveUISettings];
      cornerRadiusConfiguration = [_effectiveUISettings cornerRadiusConfiguration];
      [v9 setCornerRadiusConfiguration:cornerRadiusConfiguration];
    }

    else
    {
      windowScene = [objc_alloc(MEMORY[0x1E698E668]) initWithCornerRadius:0.0];
      [v9 setCornerRadiusConfiguration:windowScene];
    }
  }
}

- (BOOL)isScrollEnabled
{
  _isSceneSized = [(_UISceneHostingView *)&self->super.super.super.isa _isSceneSized];
  if (_isSceneSized)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    isActive = [v7 isActive];

    LOBYTE(_isSceneSized) = isActive;
  }

  return _isSceneSized;
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  x = location.x;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 5);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  isScrollEnabled = [(_UISceneHostingView *)self isScrollEnabled];
  if (isScrollEnabled)
  {
    v11 = [[UIStatusBarTapAction alloc] initWithType:0 xPosition:x];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [v9 sendActions:v12];
  }

  handlerCopy[2](handlerCopy, isScrollEnabled);
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___UISceneHostingView_appendDescriptionToStream___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v13 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v12];
  style = [v5 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UISceneHostingView_appendDescriptionToStream___block_invoke_2;
    v9[3] = &unk_1E70F35B8;
    v10 = v5;
    selfCopy2 = self;
    [v10 overlayStyle:succinctStyle block:v9];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- (_UISceneHostingController)_sceneHostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);

  return WeakRetained;
}

@end