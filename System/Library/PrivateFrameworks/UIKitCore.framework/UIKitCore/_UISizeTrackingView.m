@interface _UISizeTrackingView
+ (id)viewWithRemoteViewController:(id)a3 viewControllerOperatorProxy:(id)a4 textEffectsOperatorProxy:(id)a5 remoteViewControllerImpl:(id)a6;
- (BOOL)_canSendViewServiceActualBoundingPath;
- (BOOL)_fencingEffectsAreVisible;
- (BOOL)_needsTextEffectsUpdateToFrame:(CGRect)a3;
- (CGRect)_boundsForRemoteViewService;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (CGSize)_sizeForRemoteViewService;
- (_UIRemoteViewController)remoteViewController;
- (id)_boundingPathForRemoteViewService;
- (id)nextResponder;
- (int64_t)_interfaceOrientationForScene:(id)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_prepareForWindowHostingSceneRemoval;
- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)_setNeedsRemoteViewServiceBoundingPathUpdate;
- (void)_textEffectsWindowDidRotate:(id)a3;
- (void)_updateSceneGeometries:(id)a3;
- (void)_updateSceneGeometries:(id)a3 forOrientation:(int64_t)a4;
- (void)_updateTextEffectsGeometries:(CGRect)a3 textEffectsWindow:(id)a4;
- (void)_updateTextEffectsGeometriesImmediately;
- (void)_updateTextEffectsWindowHostedViewSize;
- (void)_updateTextEffectsWindowSafeAreaInsets;
- (void)_viewDidMoveFromScreen:(id)a3 toScreen:(id)a4;
- (void)_willMoveToWindow:(id)a3;
- (void)dealloc;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateIntrinsicContentSize:(CGSize)a3;
@end

@implementation _UISizeTrackingView

+ (id)viewWithRemoteViewController:(id)a3 viewControllerOperatorProxy:(id)a4 textEffectsOperatorProxy:(id)a5 remoteViewControllerImpl:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [objc_opt_class() __shouldHostRemoteTextEffectsWindow];
  v14 = [a1 alloc];
  v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong((v15 + 424), a4);
    objc_storeStrong((v16 + 432), a5);
    objc_storeWeak((v16 + 408), v10);
    objc_storeWeak((v16 + 416), v13);
    v17 = *(MEMORY[0x1E695F050] + 16);
    *(v16 + 456) = *MEMORY[0x1E695F050];
    *(v16 + 472) = v17;
    [v16 setAutoresizingMask:18];
    [v16 setClipsToBounds:{objc_msgSend(v10, "_viewClipsToBounds")}];
    [v16 _registerForGeometryChanges];
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v16 selector:sel__updateTextEffectsWindowHostedViewSize name:@"UITextEffectsWindowHostedViewSizeDidChangeNotification" object:0];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v16 selector:sel__updateTextEffectsWindowSafeAreaInsets name:@"UITextEffectsWindowSafeAreaInsetsDidChangeNotification" object:0];

    v20 = v16;
  }

  return v16;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UITextEffectsWindowHostedViewSizeDidChangeNotification";
  v6[1] = @"UITextEffectsWindowSafeAreaInsetsDidChangeNotification";
  v6[2] = @"UITextEffectsWindowDidRotateNotification";
  v6[3] = 0x1EFB921F0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UIView *)self _unregisterForGeometryChanges];
  v5.receiver = self;
  v5.super_class = _UISizeTrackingView;
  [(UIView *)&v5 dealloc];
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
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

- (void)updateIntrinsicContentSize:(CGSize)a3
{
  self->_intrinsicContentSize = a3;
  *&self->_sizeTrackingViewFlags |= 1u;
  [(UIView *)self invalidateIntrinsicContentSize];

  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (BOOL)_needsTextEffectsUpdateToFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self window];
  v9 = [v8 windowScene];
  v10 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v9 forViewService:1];

  v11 = self;
  v12 = v10;
  [(UIView *)v11 frame];
  v14 = x - v13;
  [(UIView *)v11 frame];
  v16 = y - v15;
  v17 = [(UIView *)v11 window];
  [v17 convertRect:v11 fromView:{v14, v16, width, height}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(UIView *)v11 window];

  [v12 convertRect:v26 fromWindow:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v36.origin.x = v28;
  v36.origin.y = v30;
  v36.size.width = v32;
  v36.size.height = v34;
  LOBYTE(v11) = CGRectEqualToRect(v36, v11->_formerTextEffectsContentFrame);

  return v11 ^ 1;
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
      v11 = [MEMORY[0x1E698E730] sharedInstance];
      if ([v11 isCarrierInstall])
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

  v13 = [(UIView *)self traitCollection];
  if ([v13 userInterfaceIdiom])
  {

    goto LABEL_29;
  }

  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);
  v15 = [WeakRetained serviceBundleIdentifier];
  v16 = [v15 hasPrefix:@"com.apple."];

  if ((v16 & 1) == 0)
  {
    v17 = [(UIView *)self window];
    [v17 safeAreaInsets];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(UIView *)self window];
    if (([v24 interfaceOrientation] - 3) > 1)
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

- (void)_textEffectsWindowDidRotate:(id)a3
{
  if (self->_observingTextEffectsWindowRotation)
  {
    self->_observingTextEffectsWindowRotation = 0;
    v5 = MEMORY[0x1E696AD88];
    v6 = a3;
    v7 = [v5 defaultCenter];
    v8 = [v6 object];
    [v7 removeObserver:self name:@"UITextEffectsWindowDidRotateNotification" object:v8];

    [(UIView *)self frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v6 object];

    [(_UISizeTrackingView *)self _updateTextEffectsGeometries:v17 textEffectsWindow:v10, v12, v14, v16];
  }
}

- (void)_updateTextEffectsGeometries:(CGRect)a3 textEffectsWindow:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = [(UIView *)self window];
  if (v11)
  {
    v12 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
    v14 = [WeakRetained _shouldUpdateRemoteTextEffectsWindow];

    if (v14)
    {
      if (!v10)
      {
        v15 = [(UIView *)self _window];
        v16 = [v15 windowScene];
        v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v16 forViewService:1];
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

        v20 = [(UIView *)self window];
        [v18 bounds];
        [v20 convertRect:v18 fromView:?];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v29 = [(UIView *)self window];
        [v10 convertRect:v29 fromWindow:{v22, v24, v26, v28}];
        v30 = v118;
        v118[4] = v31;
        v30[5] = v32;
        v30[6] = v33;
        v30[7] = v34;

        v35 = v118;
      }

      else
      {
        v36 = v10;
        v37 = self;
        [(UIView *)v37 frame];
        v39 = v38;
        [(UIView *)v37 frame];
        v41 = v40;
        v42 = [(UIView *)v37 window];
        [v42 convertRect:v37 fromView:{x - v39, y - v41, width, height}];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v4 = [(UIView *)v37 window];

        [v36 convertRect:v4 fromWindow:{v44, v46, v48, v50}];
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
      [v10 actualSceneFrame];
      v111 = v60;
      v62 = v61;
      v63 = *(v118 + 4);
      v64 = *(v118 + 5);
      v109 = *(v118 + 7);
      v110 = *(v118 + 6);
      v65 = [v10 rootViewController];
      v66 = v65;
      if (v65)
      {
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __70___UISizeTrackingView__updateTextEffectsGeometries_textEffectsWindow___block_invoke;
        v112[3] = &unk_1E70FE3F8;
        v113 = v65;
        v114 = &v117;
        [v113 performWithSafeTransitionFrames:v112];
      }

      if ([v10 _isHostedInAnotherProcess])
      {
        [v10 hostedSafeInsets];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;
      }

      else
      {
        v75 = [(UIView *)self _window];
        [v75 safeAreaInsets];
        v68 = v76;
        v70 = v77;
        v72 = v78;
        v74 = v79;
      }

      if (!_UIDeviceNativeUserInterfaceIdiom())
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        if (has_internal_diagnostics & 1) != 0 || ([MEMORY[0x1E698E730] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isCarrierInstall")))
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
              v97 = [(UIView *)self window];
              v98 = [v97 windowScene];
              if ([v98 _enhancedWindowingEnabled])
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

              v102 = [v10 interfaceOrientation];
              v103 = [(UIView *)self window];
              v104 = [v103 interfaceOrientation];

              [MEMORY[0x1E696AD88] defaultCenter];
              if (v102 == v104)
                v105 = {;
                [v105 removeObserver:self name:@"UITextEffectsWindowDidRotateNotification" object:v10];
                v106 = 0;
              }

              else
                v105 = {;
                [v105 addObserver:self selector:sel__textEffectsWindowDidRotate_ name:@"UITextEffectsWindowDidRotateNotification" object:v10];
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

      v83 = [(UIView *)self traitCollection];
      if ([v83 userInterfaceIdiom])
      {

        goto LABEL_39;
      }

      v84 = objc_loadWeakRetained(&self->_remoteViewController);
      v85 = [v84 serviceBundleIdentifier];
      v86 = [v85 hasPrefix:@"com.apple."];

      if (v86)
      {
        goto LABEL_39;
      }

      v87 = [(UIView *)self window];
      [v87 safeAreaInsets];
      v107 = v89;
      v108 = v88;
      v91 = v90;

      v92 = [(UIView *)self window];
      if (([v92 interfaceOrientation] - 3) > 1)
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

- (void)_updateSceneGeometries:(id)a3 forOrientation:(int64_t)a4
{
  v24 = a3;
  v6 = [(UIView *)self _window];
  v7 = [v6 windowScene];
  v8 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v7 forViewService:1];

  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  if (v24)
  {
    if (!a4 && (([UIApp _isSpringBoard] & 1) != 0 || (a4 = -[_UISizeTrackingView _interfaceOrientationForScene:](self, "_interfaceOrientationForScene:", v24)) == 0))
    {
      v11 = [(UIView *)self window];
      a4 = [v11 interfaceOrientation];
    }

    self->_interfaceOrientation = a4;
    v12 = [v24 settings];
    [v12 frame];
    v14 = v13;
    v16 = v15;

    if ((a4 - 3) >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if ((a4 - 3) < 2)
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
      v18 = [(UIWindow *)v8 _fbsScene];

      v17 = v10;
      v14 = v9;
      if (!v18)
      {
        [v8 hostedViewSize];
        v14 = v19;
        v17 = v20;
      }
    }
  }

  v21 = [v8 windowScene];
  if ([v21 _enhancedWindowingEnabled])
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

- (int64_t)_interfaceOrientationForScene:(id)a3
{
  v3 = a3;
  v4 = [v3 clientSettings];
  v5 = v4;
  if (v4 && [v4 isUISubclass])
  {
    v6 = [v5 interfaceOrientation];
  }

  else
  {
    v7 = [v3 settings];
    v6 = [v7 interfaceOrientation];
  }

  return v6;
}

- (BOOL)_fencingEffectsAreVisible
{
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = ![(UIView *)self isHidden];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v6 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__229;
  v32 = __Block_byref_object_dispose__229;
  v33 = a3->var9;
  var0 = a3->var0;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = (a3->var0 >> 3) & 1;
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
    v13 = [v12 _needsUnderflowPropertyUpdate];

    v14 = v29[5] != 0;
  }

  else
  {
    if (!v29[5])
    {
      goto LABEL_18;
    }

    v13 = 0;
    v14 = 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52___UISizeTrackingView__geometryChanged_forAncestor___block_invoke;
  aBlock[3] = &unk_1E71284D8;
  v23 = v11;
  v24 = v13;
  v25 = v8;
  v26 = v9;
  v27 = v14;
  aBlock[4] = self;
  aBlock[5] = &v28;
  v15 = _Block_copy(aBlock);
  v16 = objc_loadWeakRetained(&self->_remoteViewController);
  v17 = [v16 __shouldRemoteViewControllerFenceOperations];

  if (v17 && (v18 = objc_loadWeakRetained(&self->_remoteViewController), v19 = [v18 __shouldRemoteViewControllerFenceGeometryChange:a3 forAncestor:v6], v18, v19))
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
  v3 = [(UIView *)self window];
  if (v3)
  {
    [(UIView *)self bounds];
    [(UIView *)self convertRect:v3 toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 bounds];
    v16 = _UIRectEquivalentToRectWithAccuracy(v5, v7, v9, v11, v12, v13, v14, v15, 0.1);
    v17 = [v3 _isHostedInAnotherProcess];
    v18 = v17 & v16;
    if (v17 & 1) == 0 && (v16)
    {
      v18 = [v3 _isSceneSized];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)_scrollToTopFromTouchAtScreenLocation:(CGPoint)a3 resultHandler:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self window];
  [v8 convertPoint:0 fromWindow:{x, y}];
  [(UIView *)self convertPoint:0 fromView:?];
  v10 = v9;
  v12 = v11;

  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  [WeakRetained _scrollToTopFromTouchAtViewLocation:v7 resultHandler:{v10, v12}];
}

- (void)_willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self window];
  if (v5 && (*&self->_sizeTrackingViewFlags & 2) != 0)
  {
    [(UIView *)self _removeBoundingPathChangeObserver:self];
    *&self->_sizeTrackingViewFlags &= ~2u;
  }

  [(_UISizeTrackingView *)self _setNeedsRemoteViewServiceBoundingPathUpdate];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v7 = v4;
  if (WeakRetained)
  {
    v8 = [v5 windowScene];
    v9 = [v7 windowScene];
    v10 = v9;
    if (v7)
    {
      if (v8 && v9 && v8 != v9)
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

- (void)_updateSceneGeometries:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self window];
  v10 = [(UIWindow *)v5 _fbsScene];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:0x1EFB92210];
  v8 = [v7 intValue];

  v9 = v10;
  if (v10 && self->_interfaceOrientation != v8)
  {
    [(_UISizeTrackingView *)self _updateSceneGeometries:v10 forOrientation:?];
    v9 = v10;
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = _UISizeTrackingView;
  [(UIView *)&v56 _didMoveFromWindow:v6 toWindow:v7];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v9 = [WeakRetained _serviceHasScrollToTopView];

  if (v9)
  {
    [v6 _unregisterScrollToTopView:self];
    [v7 _registerScrollToTopView:self];
  }

  [(UIView *)self frame];
  [(_UISizeTrackingView *)self _updateTextEffectsGeometries:?];
  if (v7)
  {
    v10 = [v7[103] _FBSScene];
    [(_UISizeTrackingView *)self _updateSceneGeometries:v10 forOrientation:0];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:self selector:sel__updateSceneGeometries_ name:0x1EFB921F0 object:v7];
  }

  if (v6)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 removeObserver:self name:0x1EFB921F0 object:v6];
  }

  v13 = objc_loadWeakRetained(&self->_remoteViewController);
  v14 = [v13 serviceViewShouldShareTouchesWithHost];

  v15 = objc_loadWeakRetained(&self->_rvcImpl);
  v16 = v15;
  if (v7 && v14)
  {
    [v15 _prepareTouchDeliveryPolicy];
  }

  else
  {
    [v15 _setTouchDeliveryPolicyAssertion:0];
  }

  v17 = objc_loadWeakRetained(&self->_rvcImpl);
  [v17 _noteWindowState:v7 != 0];

  if (v7)
  {
    if ((*&self->_sizeTrackingViewFlags & 2) == 0)
    {
      v18 = [v7 screen];
      v19 = [(UIView *)self _shouldSkipObservingBoundingPathChangesForScreen:v18];

      if (!v19)
      {
        *&self->_sizeTrackingViewFlags |= 2u;
        [(UIView *)self _addBoundingPathChangeObserver:self];
      }
    }
  }

  [(_UISizeTrackingView *)self _setNeedsRemoteViewServiceBoundingPathUpdate];
  v20 = objc_loadWeakRetained(&self->_rvcImpl);
  v21 = v7;
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

    v27 = [v21 rootViewController];
    v28 = UIEqual_0(v27, v20);

    v29 = [v20 _owningRemoteViewController];
    v30 = [v29 parentViewController];

    v31 = [v20 _owningRemoteViewController];
    v32 = [v31 presentingViewController];

    if ((v28 & 1) != 0 || v30 || v32)
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
    v22 = [*(v20 + 19) window];
    if (v22)
    {
      v23 = v22;
      v24 = [*(v20 + 19) window];
      v25 = [v24 windowScene];
      v26 = [v21 windowScene];

      if (v25 != v26)
      {
        [v20 _restoreTextEffectsRemoteView];
      }
    }

    [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)*(v20 + 56) sizeTrackingViewDidMoveToWindow:v21];
    [(_UIRemoteViewControllerLegacyImpl *)v20 _updateParentHostingRegistryIfNecessaryForWindow:v21];
  }
}

- (void)_viewDidMoveFromScreen:(id)a3 toScreen:(id)a4
{
  v13.receiver = self;
  v13.super_class = _UISizeTrackingView;
  v6 = a4;
  v7 = a3;
  [(UIView *)&v13 _viewDidMoveFromScreen:v7 toScreen:v6];
  WeakRetained = objc_loadWeakRetained(&self->_rvcImpl);
  v9 = v7;
  v10 = v6;
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
  v3 = [(UIView *)&v7 nextResponder];
  v4 = [(UIView *)&self->super.super.super.isa __viewDelegate];
  v5 = v4;
  if (v3 && v3 == v4 && (*(v4 + 384) & 0x80) != 0)
  {

    v3 = 0;
  }

  return v3;
}

@end