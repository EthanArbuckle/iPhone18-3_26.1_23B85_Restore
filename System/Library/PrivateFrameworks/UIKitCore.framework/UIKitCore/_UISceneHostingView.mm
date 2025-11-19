@interface _UISceneHostingView
- (BOOL)inheritsSecurity;
- (BOOL)isScrollEnabled;
- (NSString)debugDescription;
- (_UISceneHostingController)_sceneHostingController;
- (_UISceneHostingView)initWithSceneHostingController:(id)a3;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)_isSceneSized;
- (id)parentWindow;
- (id)succinctDescription;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)applyViewGeometryToSettings:(id)a3;
- (void)layoutSubviews;
- (void)requestSceneSettingsUpdateIfNecessary;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setPresentedScene:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UISceneHostingView

- (void)requestSceneSettingsUpdateIfNecessary
{
  if (a1)
  {
    v2 = _UIPortraitFrameForSceneHosting(a1);
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [a1 traitCollection];
    [a1 safeAreaInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [a1 _safeAreaCornerInsets];
    v18 = [a1 tintColor];
    v19 = [(_UISceneHostingView *)a1 _isSceneSized];
    v20 = [a1 _window];
    v21 = [v20 interfaceOrientation];

    v38.origin.x = v2;
    v38.origin.y = v4;
    v38.size.width = v6;
    v38.size.height = v8;
    if (CGRectEqualToRect(v38, *(a1 + 424)))
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = v8 == *(a1 + 448) && v6 == *(a1 + 440);
      v23 = !v22;
    }

    v24 = [v9 isEqual:*(a1 + 408)];
    if (v13 == *(a1 + 464) && v11 == *(a1 + 456) && v17 == *(a1 + 480))
    {
      v27 = !((v15 == *(a1 + 472)) & v24) | v23;
    }

    else
    {
      v27 = 1;
    }

    v28 = 1;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, *(a1 + 488)), vceqq_f64(0, *(a1 + 536))))))
    {
      v29 = *(a1 + 504) != 0.0 || *(a1 + 512) != 0.0;
      if (!v29 && *(a1 + 520) == 0.0)
      {
        v28 = (*(a1 + 528) != 0.0) | v27;
      }
    }

    v31 = [v18 isEqual:*(a1 + 416)] ^ 1;
    v33 = v21 != *(a1 + 560) || *(a1 + 552) != v19;
    v34 = v33 | v31 | v28;
    if ((v22 | v34))
    {
      *(a1 + 424) = v2;
      *(a1 + 432) = v4;
      *(a1 + 440) = v6;
      *(a1 + 448) = v8;
      objc_storeStrong((a1 + 408), v9);
      *(a1 + 456) = v11;
      *(a1 + 464) = v13;
      *(a1 + 472) = v15;
      *(a1 + 480) = v17;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      objc_storeStrong((a1 + 416), v18);
      *(a1 + 552) = v19;
      *(a1 + 560) = v21;
      WeakRetained = objc_loadWeakRetained((a1 + 592));
      v36 = WeakRetained;
      if (v34)
      {
        v37 = *(a1 + 576) ^ 1;
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
  v3 = [(UIView *)self window];
  v4 = [v3 windowScene];

  if (v4)
  {
    [(_UISceneHostingView *)self requestSceneSettingsUpdateIfNecessary];
  }
}

- (_UISceneHostingView)initWithSceneHostingController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISceneHostingView;
  v5 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneHostingController, v4);
    [(UIView *)v6 _addGeometryChangeObserver:v6];
  }

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v4 = [WeakRetained traitCollectionReceiver];
  v5 = [(UIView *)self traitCollection];
  [v4 setTraitCollection:v5];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UISceneHostingView;
  [(UIView *)&v10 willMoveToWindow:v4];
  if ([UIApp _supportedOnLockScreen])
  {
    v5 = [objc_opt_class() _isSecure];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UIView *)self layer];
  v7 = v6;
  v8 = MEMORY[0x1E6979E60];
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x1E6979E58];
  }

  [v6 setSecurityMode:*v8];

  v9 = [(UIView *)self window];
  [v9 _unregisterScrollToTopView:self];

  [v4 _registerScrollToTopView:self];
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  var0 = a3->var0;
  v25 = [(_UISceneHostingView *)&self->super.super.super.isa parentWindow];
  [v25 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ((var0 & 0x1000) != 0)
  {
    v15 = [v25 interfaceOrientation];
    var6 = a3->var6;
    v17 = (v15 - 3) <= 1 && (var6 - 3) < 2;
    v18 = (var6 - 1) < 2;
    if ((v15 - 1) > 1)
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
  v24 = [v25 isRotating];
  if ((var0 & 0x3E) != 0 && (v24 & ((var0 >> 3) & 1 | v23) & 1) == 0)
  {
LABEL_11:
    [(_UISceneHostingView *)self requestSceneSettingsUpdateIfNecessary];
  }
}

- (id)parentWindow
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _window];
    v3 = v2;
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v1 + 74);
      v5 = [WeakRetained sceneViewController];
      v1 = [v5 _window];
    }
  }

  return v1;
}

- (void)setPresentedScene:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"_UISceneHostingView.m" lineNumber:157 description:@"Can not set up _UISceneHostingView with a nil scene"];
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
        v29 = self;
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = [v28 stringWithFormat:@"<%@: %p>", v31, v29];
      }

      else
      {
        v32 = @"(nil)";
      }

      v34 = v32;
      v35 = [v5 identityToken];
      *buf = 138412546;
      v61 = v32;
      v62 = 2112;
      v63 = v35;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "%@ Presenting scene: %@", buf, 0x16u);
    }
  }

  v7 = [v5 uiPresentationManager];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v5 identifier];
  v10 = [v8 stringWithFormat:@"UISceneHostingView-%@", v9];

  v11 = [v7 createPresenterWithIdentifier:v10];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v11;

  [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&__block_literal_global_649];
  [(UIScenePresenter *)self->_scenePresenter activate];
  v13 = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(UIView *)self frame];
  [v13 setFrame:?];
  [v13 setAutoresizingMask:18];
  [(UIView *)self setClipsToBounds:1];
  [(UIView *)self addSubview:v13];
  [(UIView *)self sendSubviewToBack:v13];
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);
  v15 = [WeakRetained traitCollectionReceiver];
  v16 = [(UIView *)self traitCollection];
  [v15 setTraitCollection:v16];

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
        v40 = [v5 identifier];
        v41 = [v38 stringWithFormat:@"%@ → %@", v39, v40];
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

        v46 = [(UIView *)self->_debugLabel layer];
        [v46 setAllowsHitTesting:0];

        [(UIView *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
        v53 = MEMORY[0x1E69977A0];
        v58 = [(UIView *)v45 leftAnchor];
        v57 = [(UIView *)self leftAnchor];
        v56 = [v58 constraintEqualToAnchor:v57];
        v59[0] = v56;
        v54 = [(UIView *)v45 topAnchor];
        v55 = [(UIView *)self safeAreaLayoutGuide];
        v52 = [v55 topAnchor];
        v51 = [v54 constraintEqualToAnchor:v52];
        v59[1] = v51;
        v50 = [(UIView *)v45 rightAnchor];
        v47 = [(UIView *)self rightAnchor];
        v48 = [v50 constraintLessThanOrEqualToAnchor:v47];
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
  v22 = [v21 definition];
  v23 = [v22 clientIdentity];
  v24 = [v23 processIdentity];

  v25 = [v24 xpcServiceIdentifier];
  self->_requiresFencingHack = [v25 isEqualToString:@"com.apple.ScreenTime.ScreenTimeWebExtension"];
}

- (BOOL)inheritsSecurity
{
  v2 = [(UIScenePresenter *)self->_scenePresenter presentationContext];
  v3 = [v2 inheritsSecurity];

  return v3;
}

- (void)setInheritsSecurity:(BOOL)a3
{
  scenePresenter = self->_scenePresenter;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43___UISceneHostingView_setInheritsSecurity___block_invoke;
  v4[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
  v5 = a3;
  [(UIScenePresenter *)scenePresenter modifyPresentationContext:v4];
}

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  v11 = [(UIView *)self window];

  if (v11 == v10)
  {
    v18.receiver = self;
    v18.super_class = _UISceneHostingView;
    v13 = [(UIView *)&v18 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
    v14 = [(UIScenePresenter *)self->_scenePresenter presentationContext];
    v15 = [v14 shouldPassthroughHitTestEventsIfTransparent];

    if (v15)
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
  v1 = a1;
  if (a1)
  {
    v2 = [(_UISceneHostingView *)a1 parentWindow];
    v3 = [v2 _windowHostingScene];

    if (v3)
    {
      v4 = [v3 _coordinateSpace];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v1 bounds];
      v1 = _UIRectEquivalentToRectWithAccuracy(v13, v14, v15, v16, v6, v8, v10, v12, 0.1);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)applyViewGeometryToSettings:(id)a3
{
  v4 = a3;
  v5 = _UIPortraitFrameForSceneHosting(self);
  if (v7 != *MEMORY[0x1E695F060] || v6 != *(MEMORY[0x1E695F060] + 8))
  {
    [v4 setFrame:v5];
  }

  if ([v4 isUISubclass])
  {
    v9 = v4;
    v10 = [(_UISceneHostingView *)&self->super.super.super.isa parentWindow];
    v11 = [v9 ui_safeAreaSettings];
    if (v11)
    {
      v12 = [_UISceneSafeAreaEdgeInsetConcreteResolver alloc];
      [(UIView *)self safeAreaInsets];
      v13 = [(_UISceneSafeAreaEdgeInsetConcreteResolver *)v12 initWithSafeAreaEdgeInsets:?];
      [v11 setSafeAreaEdgeInsetResolver:v13];
      v14 = [_UISceneSafeAreaCornerInsetConcreteResolver alloc];
      [(UIView *)self _safeAreaCornerInsets];
      v15 = [(_UISceneSafeAreaCornerInsetConcreteResolver *)v14 initWithSafeAreaCornerInsets:&v26];
      [v11 setSafeAreaCornerInsetResolver:v15];
    }

    v16 = [v10 interfaceOrientation];
    if (!v16)
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
      v21 = [v20 settings];
      v22 = [v21 interfaceOrientation];

      if (v22)
      {
        goto LABEL_14;
      }

      v16 = 1;
    }

    [v9 setInterfaceOrientation:v16];
LABEL_14:
    if ([(_UISceneHostingView *)&self->super.super.super.isa _isSceneSized])
    {
      v23 = [v10 windowScene];
      v24 = [v23 _effectiveUISettings];
      v25 = [v24 cornerRadiusConfiguration];
      [v9 setCornerRadiusConfiguration:v25];
    }

    else
    {
      v23 = [objc_alloc(MEMORY[0x1E698E668]) initWithCornerRadius:0.0];
      [v9 setCornerRadiusConfiguration:v23];
    }
  }
}

- (BOOL)isScrollEnabled
{
  v3 = [(_UISceneHostingView *)&self->super.super.super.isa _isSceneSized];
  if (v3)
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
    v8 = [v7 isActive];

    LOBYTE(v3) = v8;
  }

  return v3;
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  x = a3.x;
  v13 = a4;
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

  v10 = [(_UISceneHostingView *)self isScrollEnabled];
  if (v10)
  {
    v11 = [[UIStatusBarTapAction alloc] initWithType:0 xPosition:x];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    [v9 sendActions:v12];
  }

  v13[2](v13, v10);
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49___UISceneHostingView_appendDescriptionToStream___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v5 = v4;
  v13 = v5;
  v14 = self;
  [v5 appendProem:self block:v12];
  v6 = [v5 style];
  v7 = [v6 verbosity];

  if (v7 != 2)
  {
    v8 = [MEMORY[0x1E698E690] succinctStyle];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UISceneHostingView_appendDescriptionToStream___block_invoke_2;
    v9[3] = &unk_1E70F35B8;
    v10 = v5;
    v11 = self;
    [v10 overlayStyle:v8 block:v9];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (_UISceneHostingController)_sceneHostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneHostingController);

  return WeakRetained;
}

@end