@interface _UISizeTrackingView
+ (id)viewWithRemoteViewController:(id)controller viewControllerOperatorProxy:(id)proxy textEffectsOperatorProxy:(id)operatorProxy remoteViewControllerImpl:(id)impl;
- (BOOL)_canSendViewServiceActualBoundingPath;
- (BOOL)_fencingEffectsAreVisible;
- (BOOL)_needsTextEffectsUpdateToFrame:(CGRect)frame;
- (CGRect)_boundsForRemoteViewService;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (CGSize)_sizeForRemoteViewService;
- (_UIRemoteViewController)remoteViewController;
- (id)_boundingPathForRemoteViewService;
- (id)nextResponder;
- (int64_t)_interfaceOrientationForScene:(id)scene;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_prepareForWindowHostingSceneRemoval;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler;
- (void)_setNeedsRemoteViewServiceBoundingPathUpdate;
- (void)_textEffectsWindowDidRotate:(id)rotate;
- (void)_updateSceneGeometries:(id)geometries;
- (void)_updateSceneGeometries:(id)geometries forOrientation:(int64_t)orientation;
- (void)_updateTextEffectsGeometries:(CGRect)geometries textEffectsWindow:(id)window;
- (void)_updateTextEffectsGeometriesImmediately;
- (void)_updateTextEffectsWindowHostedViewSize;
- (void)_updateTextEffectsWindowSafeAreaInsets;
- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_willMoveToWindow:(id)window;
- (void)dealloc;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)updateIntrinsicContentSize:(CGSize)size;
@end

@implementation _UISizeTrackingView

+ (id)viewWithRemoteViewController:(id)controller viewControllerOperatorProxy:(id)proxy textEffectsOperatorProxy:(id)operatorProxy remoteViewControllerImpl:(id)impl
{
  controllerCopy = controller;
  proxyCopy = proxy;
  operatorProxyCopy = operatorProxy;
  implCopy = impl;
  [objc_opt_class() __shouldHostRemoteTextEffectsWindow];
  v14 = [self alloc];
  v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 424), proxy);
    objc_storeStrong((v16 + 432), operatorProxy);
    objc_storeWeak((v16 + 408), controllerCopy);
    objc_storeWeak((v16 + 416), implCopy);
    v17 = *(MEMORY[0x1E695F050] + 16);
    *(v16 + 456) = *MEMORY[0x1E695F050];
    *(v16 + 472) = v17;
    [v16 setAutoresizingMask:18];
    [v16 setClipsToBounds:{objc_msgSend(controllerCopy, "_viewClipsToBounds")}];
    [v16 _registerForGeometryChanges];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__updateTextEffectsWindowHostedViewSize name:@"UITextEffectsWindowHostedViewSizeDidChangeNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v16 selector:sel__updateTextEffectsWindowSafeAreaInsets name:@"UITextEffectsWindowSafeAreaInsetsDidChangeNotification" object:0];

    v20 = v16;
  }

  return v16;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UITextEffectsWindowHostedViewSizeDidChangeNotification";
  v6[1] = @"UITextEffectsWindowSafeAreaInsetsDidChangeNotification";
  v6[2] = @"UITextEffectsWindowDidRotateNotification";
  v6[3] = 0x1EFB921F0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(UIView *)self _unregisterForGeometryChanges];
  v5.receiver = self;
  v5.super_class = _UISizeTrackingView;
  [(UIView *)&v5 dealloc];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  width = -1.0;
  height = -1.0;
  if (*&self->_sizeTrackingViewFlags)
  {
    width = self->_intrinsicContentSize.width;
    height = self->_intrinsicContentSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)updateIntrinsicContentSize:(CGSize)size
{
  self->_intrinsicContentSize = size;
  *&self->_sizeTrackingViewFlags |= 1u;
  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (BOOL)_needsTextEffectsUpdateToFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  window = [(UIView *)self window];
  windowScene = [window windowScene];
  v10 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:windowScene forViewService:1];

  selfCopy = self;
  v12 = v10;
  [(UIView *)selfCopy frame];
  v14 = x - v13;
  [(UIView *)selfCopy frame];
  v16 = y - v15;
  window2 = [(UIView *)selfCopy window];
  [window2 convertRect:selfCopy fromView:{v14, v16, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  window3 = [(UIView *)selfCopy window];

  [v12 convertRect:window3 fromWindow:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v36.origin.x = v28;
  v36.origin.y = v30;
  v36.size.width = v32;
  v36.size.height = v34;
  LOBYTE(selfCopy) = CGRectEqualToRect(v36, selfCopy->_formerTextEffectsContentFrame);

  return selfCopy ^ 1;
}

- (void)_updateTextEffectsWindowHostedViewSize
{
  v4 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0 forViewService:1];
  textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
  [v4 hostedViewSize];
  [(_UISizeTrackingView *)self _remoteTextEffectsWindowSizeFromSize:?];
  [textEffectsOperatorProxy __setHostedViewSize:?];
}

- (void)_updateTextEffectsWindowSafeAreaInsets
{
  v29 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0 forViewService:1];
  [v29 hostedSafeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (!_UIDeviceNativeUserInterfaceIdiom())
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_29;
      }
    }

    else
    {
      mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
      if ([mEMORY[0x1E698E730] isCarrierInstall])
      {
        v12 = dyld_program_sdk_at_least();

        if ((v12 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }
    }
  }

  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {

    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);
  serviceBundleIdentifier = [WeakRetained serviceBundleIdentifier];
  v16 = [serviceBundleIdentifier hasPrefix:@"com.apple."];

  if ((v16 & 1) == 0)
  {
    window = [(UIView *)self window];
    [window safeAreaInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    window2 = [(UIView *)self window];
    if (([window2 interfaceOrientation] - 3) > 1)
    {
    }

    else
    {
      if (vabdd_f64(v6, v21) < 0.1 && v6 > 50.0)
      {

LABEL_28:
        v6 = 44.0;
        v10 = 44.0;
        goto LABEL_29;
      }

      if (vabdd_f64(v10, v23) < 0.1 && v10 > 50.0)
      {
        goto LABEL_28;
      }
    }

    v27 = vabdd_f64(v4, v19);
    if (v4 > 50.0 && v27 < 0.1)
    {
      v4 = 44.0;
    }
  }

LABEL_29:
  [self->_textEffectsOperatorProxy __setSafeAreaInsets:{v4, v6, v8, v10}];
}

- (void)_updateTextEffectsGeometriesImmediately
{
  [(UIView *)self frame];

  [(_UISizeTrackingView *)self _updateTextEffectsGeometries:?];
}

- (void)_textEffectsWindowDidRotate:(id)rotate
{
  if (self->_observingTextEffectsWindowRotation)
  {
    self->_observingTextEffectsWindowRotation = 0;
    v5 = MEMORY[0x1E696AD88];
    rotateCopy = rotate;
    defaultCenter = [v5 defaultCenter];
    object = [rotateCopy object];
    [defaultCenter removeObserver:self name:@"UITextEffectsWindowDidRotateNotification" object:object];

    [(UIView *)self frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    object2 = [rotateCopy object];

    [(_UISizeTrackingView *)self _updateTextEffectsGeometries:object2 textEffectsWindow:v10, v12, v14, v16];
  }
}

- (void)_updateTextEffectsGeometries:(CGRect)geometries textEffectsWindow:(id)window
{
  height = geometries.size.height;
  width = geometries.size.width;
  y = geometries.origin.y;
  x = geometries.origin.x;
  windowCopy = window;
  window = [(UIView *)self window];
  if (window)
  {
    v12 = window;
    WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
    _shouldUpdateRemoteTextEffectsWindow = [WeakRetained _shouldUpdateRemoteTextEffectsWindow];

    if (_shouldUpdateRemoteTextEffectsWindow)
    {
      if (!windowCopy)
      {
        _window = [(UIView *)self _window];
        windowScene = [_window windowScene];
        windowCopy = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];
      }

      v117 = 0;
      v118 = &v117;
      v119 = 0x4010000000;
      v120 = "";
      v121 = 0u;
      v122 = 0u;
      v17 = objc_loadWeakRetained(&self->_viewForRemoteTextEffectsWindowMatchAnimation);
      v18 = v17;
      if (v17)
      {
        [v17 transform];
        v19 = *(MEMORY[0x1E695EFD0] + 16);
        *&t2.a = *MEMORY[0x1E695EFD0];
        *&t2.c = v19;
        *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
        if (!CGAffineTransformEqualToTransform(&t1, &t2))
        {
LABEL_48:

          _Block_object_dispose(&v117, 8);
          goto LABEL_49;
        }

        window2 = [(UIView *)self window];
        [v18 bounds];
        [window2 convertRect:v18 fromView:?];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        window3 = [(UIView *)self window];
        [windowCopy convertRect:window3 fromWindow:{v22, v24, v26, v28}];
        v30 = v118;
        v118[4] = v31;
        v30[5] = v32;
        v30[6] = v33;
        v30[7] = v34;

        v35 = v118;
      }

      else
      {
        v36 = windowCopy;
        selfCopy = self;
        [(UIView *)selfCopy frame];
        v39 = v38;
        [(UIView *)selfCopy frame];
        v41 = v40;
        window4 = [(UIView *)selfCopy window];
        [window4 convertRect:selfCopy fromView:{x - v39, y - v41, width, height}];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        window5 = [(UIView *)selfCopy window];

        [v36 convertRect:window5 fromWindow:{v44, v46, v48, v50}];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v35 = v118;
        v118[4] = v52;
        v35[5] = v54;
        v35[6] = v56;
        v35[7] = v58;
      }

      v59 = *(v35 + 3);
      self->_formerTextEffectsContentFrame.origin = *(v35 + 2);
      self->_formerTextEffectsContentFrame.size = v59;
      [windowCopy actualSceneFrame];
      v111 = v60;
      v62 = v61;
      v63 = *(v118 + 4);
      v64 = *(v118 + 5);
      v109 = *(v118 + 7);
      v110 = *(v118 + 6);
      rootViewController = [windowCopy rootViewController];
      v66 = rootViewController;
      if (rootViewController)
      {
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __70___UISizeTrackingView__updateTextEffectsGeometries_textEffectsWindow___block_invoke;
        v112[3] = &unk_1E70FE3F8;
        v113 = rootViewController;
        v114 = &v117;
        [v113 performWithSafeTransitionFrames:v112];
      }

      if ([windowCopy _isHostedInAnotherProcess])
      {
        [windowCopy hostedSafeInsets];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
      }

      else
      {
        _window2 = [(UIView *)self _window];
        [_window2 safeAreaInsets];
        v68 = v76;
        v70 = v77;
        v72 = v78;
        v74 = v79;
      }

      if (!_UIDeviceNativeUserInterfaceIdiom())
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics & 1) != 0 || ([MEMORY[0x1E698E730] sharedInstance], window5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(window5, "isCarrierInstall")))
        {
          v81 = dyld_program_sdk_at_least();
          v82 = v81;
          if (has_internal_diagnostics)
          {
            if (!v81)
            {
              goto LABEL_39;
            }
          }

          else
          {

            if ((v82 & 1) == 0)
            {
LABEL_39:
              [self->_textEffectsOperatorProxy __setWindowOffset:{*(v118 + 4), *(v118 + 5)}];
              [self->_textEffectsOperatorProxy __setSafeAreaInsets:{v68, v70, v72, v74}];
              [self->_textEffectsOperatorProxy __setHostedViewReference:{v111 + v63, v62 + v64, v110, v109}];
              v95 = *(v118 + 6);
              v96 = *(v118 + 7);
              window6 = [(UIView *)self window];
              windowScene2 = [window6 windowScene];
              if ([windowScene2 _enhancedWindowingEnabled])
              {
                v99 = MEMORY[0x1E695F060];
                v100 = *MEMORY[0x1E695F060];

                if (v95 != v100 || v96 != *(v99 + 8))
                {
                  textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
                  [(_UISizeTrackingView *)self _remoteTextEffectsWindowSizeFromSize:v95, v96];
                  [textEffectsOperatorProxy __setHostedViewSize:?];
                }
              }

              else
              {
              }

              interfaceOrientation = [windowCopy interfaceOrientation];
              window7 = [(UIView *)self window];
              interfaceOrientation2 = [window7 interfaceOrientation];

              [MEMORY[0x1E696AD88] defaultCenter];
              if (interfaceOrientation == interfaceOrientation2)
                v105 = {;
                [v105 removeObserver:self name:@"UITextEffectsWindowDidRotateNotification" object:windowCopy];
                v106 = 0;
              }

              else
                v105 = {;
                [v105 addObserver:self selector:sel__textEffectsWindowDidRotate_ name:@"UITextEffectsWindowDidRotateNotification" object:windowCopy];
                v106 = 1;
              }

              self->_observingTextEffectsWindowRotation = v106;
              goto LABEL_48;
            }
          }
        }

        else
        {
        }
      }

      traitCollection = [(UIView *)self traitCollection];
      if ([traitCollection userInterfaceIdiom])
      {

        goto LABEL_39;
      }

      v84 = objc_loadWeakRetained(&self->_remoteViewController);
      serviceBundleIdentifier = [v84 serviceBundleIdentifier];
      v86 = [serviceBundleIdentifier hasPrefix:@"com.apple."];

      if (v86)
      {
        goto LABEL_39;
      }

      window8 = [(UIView *)self window];
      [window8 safeAreaInsets];
      v107 = v89;
      v108 = v88;
      v91 = v90;

      window9 = [(UIView *)self window];
      if (([window9 interfaceOrientation] - 3) > 1)
      {
      }

      else
      {
        if (vabdd_f64(v70, v91) < 0.1 && v70 > 50.0)
        {

LABEL_38:
          v70 = 44.0;
          v74 = 44.0;
          goto LABEL_39;
        }

        if (vabdd_f64(v74, v107) < 0.1 && v74 > 50.0)
        {
          goto LABEL_38;
        }
      }

      v93 = vabdd_f64(v68, v108);
      if (v68 > 50.0 && v93 < 0.1)
      {
        v68 = 44.0;
      }

      goto LABEL_39;
    }
  }

LABEL_49:
}

- (void)_updateSceneGeometries:(id)geometries forOrientation:(int64_t)orientation
{
  geometriesCopy = geometries;
  _window = [(UIView *)self _window];
  windowScene = [_window windowScene];
  v8 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];

  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  if (geometriesCopy)
  {
    if (!orientation && (([UIApp _isSpringBoard] & 1) != 0 || (orientation = -[_UISizeTrackingView _interfaceOrientationForScene:](self, "_interfaceOrientationForScene:", geometriesCopy)) == 0))
    {
      window = [(UIView *)self window];
      orientation = [window interfaceOrientation];
    }

    self->_interfaceOrientation = orientation;
    settings = [geometriesCopy settings];
    [settings frame];
    v14 = v13;
    v16 = v15;

    if ((orientation - 3) >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if ((orientation - 3) < 2)
    {
      v14 = v16;
    }
  }

  else
  {
    v17 = *(MEMORY[0x1E695F060] + 8);
    v14 = *MEMORY[0x1E695F060];
    if ([v8 _isHostedInAnotherProcess])
    {
      _fbsScene = [(UIWindow *)v8 _fbsScene];

      v17 = v10;
      v14 = v9;
      if (!_fbsScene)
      {
        [v8 hostedViewSize];
        v14 = v19;
        v17 = v20;
      }
    }
  }

  windowScene2 = [v8 windowScene];
  if ([windowScene2 _enhancedWindowingEnabled])
  {
  }

  else
  {

    if (v14 != v9 || v17 != v10)
    {
      textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
      [(_UISizeTrackingView *)self _remoteTextEffectsWindowSizeFromSize:v14, v17];
      [textEffectsOperatorProxy __setHostedViewSize:?];
    }
  }
}

- (int64_t)_interfaceOrientationForScene:(id)scene
{
  sceneCopy = scene;
  clientSettings = [sceneCopy clientSettings];
  v5 = clientSettings;
  if (clientSettings && [clientSettings isUISubclass])
  {
    interfaceOrientation = [v5 interfaceOrientation];
  }

  else
  {
    settings = [sceneCopy settings];
    interfaceOrientation = [settings interfaceOrientation];
  }

  return interfaceOrientation;
}

- (BOOL)_fencingEffectsAreVisible
{
  window = [(UIView *)self window];
  if (window)
  {
    v4 = ![(UIView *)self isHidden];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  ancestorCopy = ancestor;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__229;
  v32 = __Block_byref_object_dispose__229;
  v33 = changed->var9;
  var0 = changed->var0;
  if (ancestorCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = (changed->var0 >> 3) & 1;
  }

  if ((var0 & 0x10) != 0)
  {
    v9 = 1;
  }

  else if ((var0 & 6) != 0)
  {
    [(UIView *)self frame];
    v9 = [(_UISizeTrackingView *)self _needsTextEffectsUpdateToFrame:?];
  }

  else
  {
    v9 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v11 = ([WeakRetained _isUpdatingSize] ^ 1) & (v8 | v9);

  if (v11 == 1)
  {
    v12 = objc_loadWeakRetained(&self->_rvcImpl);
    _needsUnderflowPropertyUpdate = [v12 _needsUnderflowPropertyUpdate];

    v14 = v29[5] != 0;
  }

  else
  {
    if (!v29[5])
    {
      goto LABEL_18;
    }

    _needsUnderflowPropertyUpdate = 0;
    v14 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52___UISizeTrackingView__geometryChanged_forAncestor___block_invoke;
  aBlock[3] = &unk_1E71284D8;
  v23 = v11;
  v24 = _needsUnderflowPropertyUpdate;
  v25 = v8;
  v26 = v9;
  v27 = v14;
  aBlock[4] = self;
  aBlock[5] = &v28;
  v15 = _Block_copy(aBlock);
  v16 = objc_loadWeakRetained(&self->_remoteViewController);
  __shouldRemoteViewControllerFenceOperations = [v16 __shouldRemoteViewControllerFenceOperations];

  if (__shouldRemoteViewControllerFenceOperations && (v18 = objc_loadWeakRetained(&self->_remoteViewController), v19 = [v18 __shouldRemoteViewControllerFenceGeometryChange:changed forAncestor:ancestorCopy], v18, v19))
  {
    v20 = objc_loadWeakRetained(&self->_remoteViewController);
    [v20 synchronizeAnimationsInActions:v15];
  }

  else
  {
    v15[2](v15);
  }

  v21 = objc_loadWeakRetained(&self->_rvcImpl);
  [v21 updateTouchInterdictionViewLayout];

LABEL_18:
  _Block_object_dispose(&v28, 8);
}

- (CGSize)_sizeForRemoteViewService
{
  [(UIView *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGRect)_boundsForRemoteViewService
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(_UISizeTrackingView *)self _sizeForRemoteViewService];
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v12 = v6;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_canSendViewServiceActualBoundingPath
{
  window = [(UIView *)self window];
  if (window)
  {
    [(UIView *)self bounds];
    [(UIView *)self convertRect:window toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [window bounds];
    v16 = _UIRectEquivalentToRectWithAccuracy(v5, v7, v9, v11, v12, v13, v14, v15, 0.1);
    _isHostedInAnotherProcess = [window _isHostedInAnotherProcess];
    _isSceneSized = _isHostedInAnotherProcess & v16;
    if (_isHostedInAnotherProcess & 1) == 0 && (v16)
    {
      _isSceneSized = [window _isSceneSized];
    }
  }

  else
  {
    _isSceneSized = 0;
  }

  return _isSceneSized;
}

- (id)_boundingPathForRemoteViewService
{
  if ([(_UISizeTrackingView *)self _canSendViewServiceActualBoundingPath])
  {
    v3 = [(UIView *)self _effectiveBoundingPathAndBoundingPathView:0];
    v4 = [v3 boundingPathForCoordinateSpace:self];
  }

  else
  {
    v5 = [_UIRectangularBoundingPath alloc];
    [(_UISizeTrackingView *)self _boundsForRemoteViewService];
    v4 = [(_UIRectangularBoundingPath *)v5 initWithCoordinateSpace:self boundingRect:?];
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = _UISizeTrackingView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(_UISizeTrackingView *)self _boundingPathMayHaveChangedForView:self relativeToBoundsOriginOnly:0];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = _UISizeTrackingView;
  [(UIView *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(_UISizeTrackingView *)self _boundingPathMayHaveChangedForView:self relativeToBoundsOriginOnly:0];
  }
}

- (void)_setNeedsRemoteViewServiceBoundingPathUpdate
{
  sizeTrackingViewFlags = self->_sizeTrackingViewFlags;
  *&self->_sizeTrackingViewFlags = sizeTrackingViewFlags | 4;
  if ((sizeTrackingViewFlags & 8) == 0)
  {
    *&self->_sizeTrackingViewFlags = sizeTrackingViewFlags | 0xC;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __67___UISizeTrackingView__setNeedsRemoteViewServiceBoundingPathUpdate__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIApp _performBlockAfterCATransactionCommits:v3];
  }
}

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)location resultHandler:(id)handler
{
  y = location.y;
  x = location.x;
  handlerCopy = handler;
  window = [(UIView *)self window];
  [window convertPoint:0 fromWindow:{x, y}];
  [(UIView *)self convertPoint:0 fromView:?];
  v10 = v9;
  v12 = v11;

  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  [WeakRetained _scrollToTopFromTouchAtViewLocation:handlerCopy resultHandler:{v10, v12}];
}

- (void)_willMoveToWindow:(id)window
{
  windowCopy = window;
  window = [(UIView *)self window];
  if (window && (*&self->_sizeTrackingViewFlags & 2) != 0)
  {
    [(UIView *)self _removeBoundingPathChangeObserver:self];
    *&self->_sizeTrackingViewFlags &= ~2u;
  }

  [(_UISizeTrackingView *)self _setNeedsRemoteViewServiceBoundingPathUpdate];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v7 = windowCopy;
  if (WeakRetained)
  {
    windowScene = [window windowScene];
    windowScene2 = [v7 windowScene];
    v10 = windowScene2;
    if (v7)
    {
      if (windowScene && windowScene2 && windowScene != windowScene2)
      {
        [WeakRetained _setWantsKeyboardEnvironmentEventDeferring:0];
        [(_UIRemoteViewControllerLegacyImpl *)WeakRetained _endDynamicButtonEventDeferringIfNeeded];
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __70___UIRemoteViewControllerLegacyImpl__viewWillMoveFromWindow_toWindow___block_invoke;
      v12[3] = &unk_1E70F35B8;
      v12[4] = WeakRetained;
      v13 = v7;
      [WeakRetained _synchronizeAnimationsInActionsIfNecessary:v12];
    }

    else
    {
      [WeakRetained _setWantsKeyboardEnvironmentEventDeferring:0];
      [(_UIRemoteViewControllerLegacyImpl *)WeakRetained _endDynamicButtonEventDeferringIfNeeded];
    }
  }

  v11.receiver = self;
  v11.super_class = _UISizeTrackingView;
  [(UIView *)&v11 _willMoveToWindow:v7];
}

- (void)_updateSceneGeometries:(id)geometries
{
  geometriesCopy = geometries;
  window = [(UIView *)self window];
  _fbsScene = [(UIWindow *)window _fbsScene];

  userInfo = [geometriesCopy userInfo];

  v7 = [userInfo objectForKey:0x1EFB92210];
  intValue = [v7 intValue];

  v9 = _fbsScene;
  if (_fbsScene && self->_interfaceOrientation != intValue)
  {
    [(_UISizeTrackingView *)self _updateSceneGeometries:_fbsScene forOrientation:?];
    v9 = _fbsScene;
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v61 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  toWindowCopy = toWindow;
  v56.receiver = self;
  v56.super_class = _UISizeTrackingView;
  [(UIView *)&v56 _didMoveFromWindow:windowCopy toWindow:toWindowCopy];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  _serviceHasScrollToTopView = [WeakRetained _serviceHasScrollToTopView];

  if (_serviceHasScrollToTopView)
  {
    [windowCopy _unregisterScrollToTopView:self];
    [toWindowCopy _registerScrollToTopView:self];
  }

  [(UIView *)self frame];
  [(_UISizeTrackingView *)self _updateTextEffectsGeometries:?];
  if (toWindowCopy)
  {
    _FBSScene = [toWindowCopy[103] _FBSScene];
    [(_UISizeTrackingView *)self _updateSceneGeometries:_FBSScene forOrientation:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updateSceneGeometries_ name:0x1EFB921F0 object:toWindowCopy];
  }

  if (windowCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:0x1EFB921F0 object:windowCopy];
  }

  v13 = objc_loadWeakRetained(&self->_remoteViewController);
  serviceViewShouldShareTouchesWithHost = [v13 serviceViewShouldShareTouchesWithHost];

  v15 = objc_loadWeakRetained(&self->_rvcImpl);
  v16 = v15;
  if (toWindowCopy && serviceViewShouldShareTouchesWithHost)
  {
    [v15 _prepareTouchDeliveryPolicy];
  }

  else
  {
    [v15 _setTouchDeliveryPolicyAssertion:0];
  }

  v17 = objc_loadWeakRetained(&self->_rvcImpl);
  [v17 _noteWindowState:toWindowCopy != 0];

  if (toWindowCopy)
  {
    if ((*&self->_sizeTrackingViewFlags & 2) == 0)
    {
      screen = [toWindowCopy screen];
      v19 = [(UIView *)self _shouldSkipObservingBoundingPathChangesForScreen:screen];

      if (!v19)
      {
        *&self->_sizeTrackingViewFlags |= 2u;
        [(UIView *)self _addBoundingPathChangeObserver:self];
      }
    }
  }

  [(_UISizeTrackingView *)self _setNeedsRemoteViewServiceBoundingPathUpdate];
  v20 = objc_loadWeakRetained(&self->_rvcImpl);
  v21 = toWindowCopy;
  if (v20)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_17;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

    rootViewController = [v21 rootViewController];
    v28 = UIEqual_0(rootViewController, v20);

    _owningRemoteViewController = [v20 _owningRemoteViewController];
    parentViewController = [_owningRemoteViewController parentViewController];

    _owningRemoteViewController2 = [v20 _owningRemoteViewController];
    presentingViewController = [_owningRemoteViewController2 presentingViewController];

    if ((v28 & 1) != 0 || parentViewController || presentingViewController)
    {
      goto LABEL_17;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v36 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_30;
      }

      v46 = MEMORY[0x1E696AEC0];
      v47 = v20;
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      v50 = [v46 stringWithFormat:@"<%@: %p>", v49, v47];

      v51 = MEMORY[0x1E696AEC0];
      v52 = v21;
      v42 = v50;
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = [v51 stringWithFormat:@"<%@: %p>", v54, v52];

      *buf = 138412546;
      v58 = v50;
      v59 = 2112;
      v60 = v55;
      _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "A remote view controller's view is in a window without the view controller being properly added to the hierarchy. viewController=%@; window=%@", buf, 0x16u);
    }

    else
    {
      v33 = *(__UILogGetCategoryCachedImpl("Assert", &_viewDidMoveFromWindow_toWindow____s_category) + 8);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v34 = MEMORY[0x1E696AEC0];
      v35 = v20;
      v36 = v33;
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v34 stringWithFormat:@"<%@: %p>", v38, v35];

      v40 = MEMORY[0x1E696AEC0];
      v41 = v21;
      v42 = v39;
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = [v40 stringWithFormat:@"<%@: %p>", v44, v41];

      *buf = 138412546;
      v58 = v39;
      v59 = 2112;
      v60 = v45;
      _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "A remote view controller's view is in a window without the view controller being properly added to the hierarchy. viewController=%@; window=%@", buf, 0x16u);
    }

LABEL_30:
LABEL_17:
    window = [*(v20 + 19) window];
    if (window)
    {
      v23 = window;
      window2 = [*(v20 + 19) window];
      windowScene = [window2 windowScene];
      windowScene2 = [v21 windowScene];

      if (windowScene != windowScene2)
      {
        [v20 _restoreTextEffectsRemoteView];
      }
    }

    [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)*(v20 + 56) sizeTrackingViewDidMoveToWindow:v21];
    [(_UIRemoteViewControllerLegacyImpl *)v20 _updateParentHostingRegistryIfNecessaryForWindow:v21];
  }
}

- (void)_viewDidMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v13.receiver = self;
  v13.super_class = _UISizeTrackingView;
  toScreenCopy = toScreen;
  screenCopy = screen;
  [(UIView *)&v13 _viewDidMoveFromScreen:screenCopy toScreen:toScreenCopy];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v9 = screenCopy;
  v10 = toScreenCopy;
  if (v10 && WeakRetained)
  {
    v11 = *(WeakRetained + 280);
    [WeakRetained _setWantsKeyboardEnvironmentEventDeferring:{0, v13.receiver, v13.super_class}];
    [(_UIRemoteViewControllerLegacyImpl *)WeakRetained _endDynamicButtonEventDeferringIfNeeded];
    [WeakRetained _notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:v10];
    if (v11 == 1 && (WeakRetained[35] & 1) == 0)
    {
      [WeakRetained _setWantsKeyboardEnvironmentEventDeferring:1];
    }

    v12 = WeakRetained[37];
    if (v12)
    {
      [(_UIRemoteViewControllerLegacyImpl *)WeakRetained _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:v12 newResolvedConfigurations:WeakRetained[37]];
    }
  }
}

- (void)_prepareForWindowHostingSceneRemoval
{
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  [WeakRetained _setWantsKeyboardEnvironmentEventDeferring:0];

  v4 = objc_loadWeakRetained(&self->_rvcImpl);
  [(_UIRemoteViewControllerLegacyImpl *)v4 _endDynamicButtonEventDeferringIfNeeded];

  v5 = objc_loadWeakRetained(&self->_rvcImpl);
  [(_UIRemoteViewControllerLegacyImpl *)v5 _updateParentHostingRegistryIfNecessaryForWindow:?];

  v6.receiver = self;
  v6.super_class = _UISizeTrackingView;
  [(UIView *)&v6 _prepareForWindowHostingSceneRemoval];
}

- (_UIRemoteViewController)remoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);

  return WeakRetained;
}

- (id)nextResponder
{
  v7.receiver = self;
  v7.super_class = _UISizeTrackingView;
  nextResponder = [(UIView *)&v7 nextResponder];
  __viewDelegate = [(UIView *)&self->super.super.super.isa __viewDelegate];
  v5 = __viewDelegate;
  if (nextResponder && nextResponder == __viewDelegate && (*(__viewDelegate + 384) & 0x80) != 0)
  {

    nextResponder = 0;
  }

  return nextResponder;
}

@end