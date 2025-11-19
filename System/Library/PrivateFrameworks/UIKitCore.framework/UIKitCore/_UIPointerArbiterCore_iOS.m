@interface _UIPointerArbiterCore_iOS
- (_UIPointerArbiterCore_iOS)init;
- (_UIPointerLensView)lensView;
- (id)_coordinateSpaceSourceViewForRegion:(id)a3 withStyle:(id)a4;
- (id)_hoverRegionWithStyle:(id)a3 forRegion:(id)a4;
- (id)_pointerShapeForStyle:(id)a3 region:(id)a4;
- (id)_psPointerShapeFromUIPointerShape:(id)a3 atScale:(double)a4;
- (id)obtainPointerUpdatePauseAssertion;
- (int64_t)pointerState;
- (void)_clearMatchMoveSourceForRegion:(id)a3 immediately:(BOOL)a4;
- (void)_getPointerRegion:(id *)a3 andStyle:(id *)a4 atLocation:(CGPoint)a5 inWindow:(id)a6;
- (void)_notifyPointerStateDidChange;
- (void)_performNextTransaction;
- (void)_performTransactionUsingBlock:(id)a3;
- (void)_prepareContentMatchMoveSourceForPointerRegion:(id)a3 completion:(id)a4;
- (void)_preparePointerPortalSourceCollectionWithCompletion:(id)a3;
- (void)_setActiveHoverRegion:(id)a3 style:(id)a4 forPointerRegion:(id)a5 transactionID:(unint64_t)a6 completion:(id)a7;
- (void)applyStyle:(id)a3 forRegion:(id)a4 effectSourceHandler:(id)a5 completion:(id)a6;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)beginScrollingWithRegion:(id)a3;
- (void)endScrollingWithRegion:(id)a3;
- (void)exitRegion:(id)a3 removeStyle:(BOOL)a4 completion:(id)a5;
- (void)pointerClientController:(id)a3 didInvalidatePortalSourceCollections:(id)a4 matchMoveSources:(id)a5;
- (void)pointerClientControllerClientInteractionStateDidChange:(id)a3;
- (void)pointerClientControllerWillDecelerate:(id)a3 targetPointerPosition:(CGPoint *)a4 velocity:(CGPoint)a5 inContextID:(unsigned int)a6 cursorRegionLookupRadius:(double)a7 cursorRegionLookupResolution:(double)a8 lookupConeAngle:(double)a9;
@end

@implementation _UIPointerArbiterCore_iOS

- (_UIPointerArbiterCore_iOS)init
{
  v6.receiver = self;
  v6.super_class = _UIPointerArbiterCore_iOS;
  v2 = [(_UIPointerArbiterCore_iOS *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pointerClientController = v2->_pointerClientController;
    v2->_pointerClientController = v3;

    [(PSPointerClientController *)v2->_pointerClientController setDelegate:v2];
    v2->_lastMaterialLuminance = 0;
  }

  return v2;
}

- (int64_t)pointerState
{
  v3 = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
  v4 = [v3 clientInteractionState];
  v5 = 1;
  if (v4 == 2)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    v7 = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];

    if (v7)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  if (self->_updatesPausedViaAssertion)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (void)applyStyle:(id)a3 forRegion:(id)a4 effectSourceHandler:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(_UIPointerArbiterCore_iOS *)self pointerState]== 1)
  {
    v14 = [(_UIPointerArbiterCore_iOS *)self _hoverRegionWithStyle:v10 forRegion:v11];
    v15 = ([(_UIPointerArbiterCore_iOS *)self transactionRevisionID]+ 1);
    [(_UIPointerArbiterCore_iOS *)self setTransactionRevisionID:v15];
    objc_initWeak(location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81___UIPointerArbiterCore_iOS_applyStyle_forRegion_effectSourceHandler_completion___block_invoke;
    v19[3] = &unk_1E710A010;
    objc_copyWeak(v25, location);
    v16 = v14;
    v20 = v16;
    v21 = v11;
    v23 = v12;
    v22 = v10;
    v25[1] = v15;
    v24 = v13;
    [(_UIPointerArbiterCore_iOS *)self _performTransactionUsingBlock:v19];

    objc_destroyWeak(v25);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &applyStyle_forRegion_effectSourceHandler_completion____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      *location = 138412546;
      *&location[4] = v11;
      v27 = 2048;
      v28 = [(_UIPointerArbiterCore_iOS *)self pointerState];
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring applyStyle:forRegion: %@ because pointer state is not enabled (%ld)", location, 0x16u);
    }

    if (v13)
    {
      v13[2](v13);
    }
  }
}

- (void)exitRegion:(id)a3 removeStyle:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ([(_UIPointerArbiterCore_iOS *)self transactionRevisionID]+ 1);
  [(_UIPointerArbiterCore_iOS *)self setTransactionRevisionID:v10];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___UIPointerArbiterCore_iOS_exitRegion_removeStyle_completion___block_invoke;
  v13[3] = &unk_1E710A038;
  objc_copyWeak(v16, &location);
  v17 = a4;
  v11 = v8;
  v14 = v11;
  v16[1] = v10;
  v12 = v9;
  v15 = v12;
  [(_UIPointerArbiterCore_iOS *)self _performTransactionUsingBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_setActiveHoverRegion:(id)a3 style:(id)a4 forPointerRegion:(id)a5 transactionID:(unint64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    [(_UIPointerArbiterCore_iOS *)self setActivePointerStyle:v13];
    [(_UIPointerArbiterCore_iOS *)self setActivePointerRegion:v14];
    [(_UIPointerArbiterCore_iOS *)self setLastSentHoverRegion:v12];
LABEL_4:
    objc_initWeak(&location, self);
    v16 = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99___UIPointerArbiterCore_iOS__setActiveHoverRegion_style_forPointerRegion_transactionID_completion___block_invoke;
    v17[3] = &unk_1E710A060;
    v18 = v12;
    objc_copyWeak(v21, &location);
    v21[1] = a6;
    v19 = v14;
    v20 = v15;
    [v16 setActiveHoverRegion:v18 transitionCompletion:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
    goto LABEL_5;
  }

  [(_UIPointerArbiterCore_iOS *)self setActivePointerStyle:0];
  [(_UIPointerArbiterCore_iOS *)self setActivePointerRegion:0];
  [(_UIPointerArbiterCore_iOS *)self setLastSentHoverRegion:0];
  if ([(_UIPointerArbiterCore_iOS *)self pointerState])
  {
    goto LABEL_4;
  }

  [(_UIPointerArbiterCore_iOS *)self _clearMatchMoveSourceForRegion:v14 immediately:0];
  if (v15)
  {
    v15[2](v15);
  }

LABEL_5:
}

- (void)_clearMatchMoveSourceForRegion:(id)a3 immediately:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___UIPointerArbiterCore_iOS__clearMatchMoveSourceForRegion_immediately___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(v11);
  v9 = v8;
  if (v4)
  {
    (*(v8 + 2))(v8);
  }

  else
  {
    v10 = dispatch_time(0, 2000000000);
    dispatch_after(v10, MEMORY[0x1E69E96A0], v9);
  }
}

- (_UIPointerLensView)lensView
{
  if (_UIPlasmaEnabled())
  {
    lensView = self->_lensView;
    if (!lensView)
    {
      v4 = objc_opt_new();
      v5 = self->_lensView;
      self->_lensView = v4;

      [(UIView *)self->_lensView _setContinuousCornerRadius:*MEMORY[0x1E6979E40]];
      [(UIView *)self->_lensView setAlpha:0.0];
      lensView = self->_lensView;
    }

    v6 = lensView;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_notifyPointerStateDidChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = +[_UIPointerArbiter sharedArbiter];
  [v3 postNotificationName:0x1EFB7E670 object:v2];
}

- (void)beginScrollingWithRegion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIPointerArbiterCore_iOS *)self pointerState])
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0D8) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "beginScrollingWithRegion: %@", &v14, 0xCu);
    }

    v6 = [(_UIPointerArbiterCore_iOS *)self lastSentHoverRegion];

    if (!v6)
    {
      v12 = 0;
LABEL_16:
      [(_UIPointerArbiterCore_iOS *)self applyStyle:v12 forRegion:v4 effectSourceHandler:0 completion:0];
      [(_UIPointerArbiterCore_iOS *)self setScrollingRegion:v4];
      [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];

      goto LABEL_17;
    }

    v7 = [(_UIPointerArbiterCore_iOS *)self activePointerStyle];
    v8 = v7;
    if (v7)
    {
      if ([v7 type] == 2)
      {
        v9 = [v8 pointerShape];
        [v9 beamLength];
        v11 = v10;

        if (v11 > 0.0)
        {
          v12 = [v8 copy];
          [v12 setConstrainedAxes:0];
LABEL_15:

          goto LABEL_16;
        }
      }

      if (![v8 type])
      {
        v12 = v8;
        goto LABEL_15;
      }
    }

    v12 = 0;
    goto LABEL_15;
  }

  v13 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &_MergedGlobals_1113) + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring beginScrollingWithRegion: %@ because pointer state is disabled", &v14, 0xCu);
  }

LABEL_17:
}

- (void)endScrollingWithRegion:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];
  if (v5 && (v6 = v5, [(_UIPointerArbiterCore_iOS *)self scrollingRegion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == v4))
  {
    v11 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0E8) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "endScrollingWithRegion: %@", buf, 0xCu);
    }

    [(_UIPointerArbiterCore_iOS *)self setScrollingRegion:0];
    [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];
    v12 = UIApp;
    v13 = [v4 referenceView];
    v14 = [v13 _window];
    [v12 _resendHoverEventForWindow:v14];

    v15 = dispatch_time(0, 50000000);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52___UIPointerArbiterCore_iOS_endScrollingWithRegion___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v17 = v4;
    v18 = self;
    dispatch_after(v15, MEMORY[0x1E69E96A0], v16);
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0E0) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring endScrollingWithRegion: %@ because scrollingRegion does not match: %@", buf, 0x16u);
    }
  }
}

- (id)obtainPointerUpdatePauseAssertion
{
  pauseAssertionController = self->_pauseAssertionController;
  if (!pauseAssertionController)
  {
    v4 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
    v5 = self->_pauseAssertionController;
    self->_pauseAssertionController = v4;

    pauseAssertionController = self->_pauseAssertionController;
  }

  return [(_UIAssertionController *)pauseAssertionController vendAssertionOfType:0 initialState:1];
}

- (void)pointerClientController:(id)a3 didInvalidatePortalSourceCollections:(id)a4 matchMoveSources:(id)a5
{
  v6 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &pointerClientController_didInvalidatePortalSourceCollections_matchMoveSources____s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "pointerClientController:didInvalidatePortalSourceCollections:matchMoveSources:", v11, 2u);
  }

  [(_UIPointerArbiterCore_iOS *)self setPointerRegionToMatchMoveSourceMap:0];
  [(_UIPointerArbiterCore_iOS *)self setPointerPortalSourceCollection:0];
  v7 = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  [v7 removeFromSuperview];

  [(_UIPointerArbiterCore_iOS *)self setPointerPortalView:0];
  v8 = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  [v8 removeFromSuperview];

  [(_UIPointerArbiterCore_iOS *)self setOverlayEffectPortalView:0];
  v9 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [v9 removeFromSuperview];

  v10 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [v10 setPaused:1];

  [(_UIPointerArbiterCore_iOS *)self setSamplingBackdropView:0];
  [(_UIPointerArbiterCore_iOS *)self setLastSentHoverRegion:0];
}

- (void)pointerClientControllerWillDecelerate:(id)a3 targetPointerPosition:(CGPoint *)a4 velocity:(CGPoint)a5 inContextID:(unsigned int)a6 cursorRegionLookupRadius:(double)a7 cursorRegionLookupResolution:(double)a8 lookupConeAngle:(double)a9
{
  v12 = *&a6;
  y = a5.y;
  x = a5.x;
  v17 = a3;
  if (a4)
  {
    v18 = [UIWindow _windowWithContextId:v12];
    v19 = [v18 layer];
    [v19 convertPoint:0 fromLayer:{a4->x, a4->y}];
    v21 = v20;
    v23 = v22;

    v84 = 0;
    v85 = 0;
    [(_UIPointerArbiterCore_iOS *)self _getPointerRegion:&v85 andStyle:&v84 atLocation:v18 inWindow:v21, v23];
    v24 = v85;
    v25 = v84;
    v72 = v23;
    if (v24)
    {
      v26 = v21;
LABEL_41:
      v47 = [(_UIPointerArbiterCore_iOS *)self _hoverRegionWithStyle:v25 forRegion:v24];
      v48 = [(_UIPointerArbiterCore_iOS *)self _coordinateSpaceSourceViewForRegion:v24 withStyle:v25];
      [v18 convertPoint:v48 toView:{v21, v72}];
      v50 = v49;
      v52 = v51;
      [v18 convertPoint:v48 toView:{v26, v23}];
      v54 = v53;
      v56 = v55;
      [v47 contentBounds];
      v57 = v87.origin.x;
      v58 = v87.origin.y;
      width = v87.size.width;
      height = v87.size.height;
      v86.x = v54;
      v86.y = v56;
      if (CGRectContainsPoint(v87, v86))
      {
        if ([v47 pointerRecenteringAxes] == 3)
        {
          v50 = v57 + width * 0.5;
          v52 = v58 + height * 0.5;
        }

        else if ([v47 pointerRecenteringAxes])
        {
          v50 = v57 + width * 0.5;
          if (v58 >= v52)
          {
            v62 = v58;
          }

          else
          {
            v62 = v52;
          }

          if (v58 + height <= v62)
          {
            v52 = v58 + height;
          }

          else
          {
            v52 = v62;
          }
        }

        else if (([v47 pointerRecenteringAxes] & 2) != 0)
        {
          v52 = v58 + height * 0.5;
          if (v57 >= v50)
          {
            v61 = v57;
          }

          else
          {
            v61 = v50;
          }

          if (v57 + width <= v61)
          {
            v50 = v57 + width;
          }

          else
          {
            v50 = v61;
          }
        }
      }

      [v48 convertPoint:v18 toView:{v50, v52}];
      v21 = v63;
      v65 = v64;
    }

    else
    {
      v27 = hypot(x, y);
      if (fabs(x) >= 2.22044605e-16)
      {
        if (fabs(y) >= 2.22044605e-16)
        {
          v28 = atan(x / y);
          if (y < 0.0)
          {
            v28 = v28 + 3.14159265;
          }

          if (y > 0.0 && x < 0.0)
          {
            v28 = v28 + 6.28318531;
          }
        }

        else
        {
          v28 = dbl_18A67B850[x > 0.0];
        }
      }

      else
      {
        v28 = 3.14159265;
        if (y > 0.0)
        {
          v28 = 0.0;
        }
      }

      v73 = v28;
      v30 = __sincos_stret(a9 * 0.5);
      v31 = 0;
      if (v27 <= a7)
      {
        v32 = v27;
      }

      else
      {
        v32 = a7;
      }

      v77 = (v30.__cosval * a7 + v32) / (v30.__sinval * a7);
      v78 = v32;
      v33 = vcvtpd_s64_f64(a7 / a8);
      v26 = v21;
      v74 = v21;
      v71 = a8;
      while (v31 != v33)
      {
        v75 = v26;
        v76 = v23;
        v24 = 0;
        v34 = ++v31 * a8;
        v35 = round(v34 * 6.28318531 / a8);
        v79 = (v34 * 6.28318531 / v35 / (v34 * 6.28318531) + v34 * 6.28318531 / v35 / (v34 * 6.28318531)) * 3.14159265;
        v36 = 0.0;
        v37 = v73;
        do
        {
          v38 = __sincos_stret(v36);
          v39 = __sincos_stret(v37 - v36);
          if (v77 * (v34 * v38.__sinval) - v78 < v34 * v38.__cosval && v24 == 0)
          {
            v41 = __sincos_stret(v37 + v36);
            v42 = v72 + v34 * v41.__cosval;
            v43 = v74 + v34 * v41.__sinval;
            v82 = v25;
            v83 = 0;
            [(_UIPointerArbiterCore_iOS *)self _getPointerRegion:&v83 andStyle:&v82 atLocation:v18 inWindow:v43, v42];
            v24 = v83;
            v44 = v82;

            if (v24)
            {
              v75 = v43;
              v76 = v42;
              v25 = v44;
            }

            else
            {
              v80 = v44;
              v81 = 0;
              [(_UIPointerArbiterCore_iOS *)self _getPointerRegion:&v81 andStyle:&v80 atLocation:v18 inWindow:v74 + v34 * v39.__sinval, v72 + v34 * v39.__cosval];
              v24 = v81;
              v25 = v80;

              v45 = v75;
              if (v24)
              {
                v46 = v72 + v34 * v39.__cosval;
              }

              else
              {
                v46 = v76;
              }

              if (v24)
              {
                v45 = v74 + v34 * v39.__sinval;
              }

              v75 = v45;
              v76 = v46;
              if (!v24)
              {
                v24 = 0;
              }
            }

            v37 = v73;
          }

          else if (v24)
          {
            v21 = v74;
            v26 = v75;
            v23 = v76;
            goto LABEL_41;
          }

          v36 = v79 + v36;
        }

        while (v36 < 3.14159265);
        v21 = v74;
        v26 = v75;
        a8 = v71;
        v23 = v76;
        if (v24)
        {
          goto LABEL_41;
        }
      }

      v24 = 0;
      v65 = v72;
    }

    v66 = [v18 layer];
    [v66 convertPoint:0 toLayer:{v21, v65}];
    v68 = v67;
    v70 = v69;

    a4->x = v68;
    a4->y = v70;
  }
}

- (void)pointerClientControllerClientInteractionStateDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &pointerClientControllerClientInteractionStateDidChange____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v8 = 134217984;
    v9 = [v3 clientInteractionState];
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "pointerClientControllerClientInteractionStateDidChange: %ld", &v8, 0xCu);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = +[_UIPointerArbiter sharedArbiter];
  [v6 postNotificationName:0x1EFB7E670 object:v7];
}

- (void)_performNextTransaction
{
  if (![(_UIPointerArbiterCore_iOS *)self hasRunningTransaction])
  {
    v3 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
    v4 = [v3 firstObject];

    if (v4)
    {
      v5 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
      [v5 removeObjectAtIndex:0];

      [(_UIPointerArbiterCore_iOS *)self setHasRunningTransaction:1];
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52___UIPointerArbiterCore_iOS__performNextTransaction__block_invoke;
      v6[3] = &unk_1E70F5A28;
      objc_copyWeak(&v7, &location);
      (v4)[2](v4, v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_performTransactionUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(_UIPointerArbiterCore_iOS *)self setPendingTransactionBlocks:v6];
  }

  v7 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
  v8 = _Block_copy(v4);

  [v7 addObject:v8];
  if (![(_UIPointerArbiterCore_iOS *)self hasRunningTransaction])
  {

    [(_UIPointerArbiterCore_iOS *)self _performNextTransaction];
  }
}

- (void)_prepareContentMatchMoveSourceForPointerRegion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIPointerArbiterCore_iOS *)self pointerRegionToMatchMoveSourceMap];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = [_UIPointerContentEffectAnimationBuilder alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke_4;
    v14[3] = &unk_1E710A0A8;
    v16 = &__block_literal_global_263;
    v11 = v9;
    v15 = v11;
    v12 = [(_UIPointerContentEffectAnimationBuilder *)v10 initWithCreationHandler:v14];
    v7[2](v7, v11, v12);
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke_2;
    v17[3] = &unk_1E710A0D0;
    objc_copyWeak(&v21, &location);
    v18 = v6;
    v19 = v7;
    v20 = &__block_literal_global_263;
    [v13 createContentMatchMoveSourcesWithCount:1 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_preparePointerPortalSourceCollectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerArbiterCore_iOS *)self pointerPortalSourceCollection];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  if (!v9)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];

  if (!v11)
  {
LABEL_8:
    v17 = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81___UIPointerArbiterCore_iOS__preparePointerPortalSourceCollectionWithCompletion___block_invoke;
    v18[3] = &unk_1E710A0F8;
    v18[4] = self;
    v19 = v4;
    [v17 createPointerPortalSourceCollectionWithCompletion:v18];

    goto LABEL_9;
  }

  v12 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [v12 setPaused:0];

  v13 = [(_UIPointerArbiterCore_iOS *)self pointerPortalSourceCollection];
  v14 = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  v15 = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  v16 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  (*(v4 + 2))(v4, v13, v14, v15, v16);

LABEL_9:
}

- (id)_coordinateSpaceSourceViewForRegion:(id)a3 withStyle:(id)a4
{
  v5 = a4;
  v6 = [a3 referenceView];
  if (v5 && [v5 type] == 1)
  {
    v7 = [v5 targetedPreview];
    v8 = [v7 _sourceViewIsInViewHierarchy];

    v9 = [v5 targetedPreview];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 view];
    }

    else
    {
      v12 = [v9 target];
      v11 = [v12 container];

      v6 = v12;
    }

    v6 = v11;
  }

  return v6;
}

- (id)_hoverRegionWithStyle:(id)a3 forRegion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_32;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69C4EA8]);
  [v7 rect];
  [v5 _contentSlipMappedToRegionSize:{v10, v11}];
  v13 = v12;
  v15 = v14;
  [v7 rect];
  [v5 _pointerSlipMappedToRegionSize:{v16, v17}];
  v19 = v18;
  v21 = v20;
  [v5 contentScale];
  [v9 setContentHoverInverseScale:1.0 / v22];
  v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v13, v15}];
  [v9 setContentSlipValue:v23];

  [v9 setPointerRecenteringAxes:{objc_msgSend(v5, "constrainedAxes")}];
  if (objc_opt_respondsToSelector())
  {
    [v9 setPointerLatchingAxes:{objc_msgSend(v7, "latchingAxes")}];
  }

  v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v21}];
  [v9 setPointerSlipValue:v24];

  [v9 setShouldPointerSuppressMirroring:{objc_msgSend(v5, "_suppressesMirroring")}];
  v25 = [v5 pointerShape];
  v26 = [v25 isEmpty];

  v108 = v9;
  if (v26 || (v58 = [v5 type]) == 0)
  {
    v27 = [MEMORY[0x1E69C4EC0] systemShape];
LABEL_7:
    [MEMORY[0x1E695DF70] array];
    goto LABEL_8;
  }

  if (v58 == 2)
  {
    v27 = [(_UIPointerArbiterCore_iOS *)self _pointerShapeForStyle:v5 region:v7];
    goto LABEL_7;
  }

  if (v58 == 1)
  {
    v59 = [v5 targetedPreview];
    v60 = [v59 target];
    v61 = [v60 container];

    [v5 contentScale];
    v63 = v62;
    v64 = [v5 pointerShape];
    v65 = [v64 path];

    if ([v5 options])
    {
      v77 = [(_UIPointerArbiterCore_iOS *)self _pointerShapeForStyle:v5 region:v7];
    }

    else
    {
      if (v65)
      {
        v66 = [v65 copy];
        [v65 bounds];
        v69 = v68 + v67 * 0.5;
        v72 = v71 + v70 * 0.5;
        CGAffineTransformMakeTranslation(&v110, -v69, -v72);
        [v66 applyTransform:&v110];
        if (([v5 options] & 0x40) != 0)
        {
          CGAffineTransformMakeScale(&v110, v63, v63);
          [v66 applyTransform:&v110];
        }

        v73 = _UIPointerShapeOffsetFromModelPosition(v61, v7, v69, v72);
        CGAffineTransformMakeTranslation(&v110, v73, v74);
        [v66 applyTransform:&v110];
        v75 = [MEMORY[0x1E69C4EC0] customShapeWithPath:objc_msgSend(v66 usesEvenOddFillRule:{"CGPath"), objc_msgSend(v66, "usesEvenOddFillRule")}];

        goto LABEL_39;
      }

      v78 = [v5 pointerShape];
      [v78 rect];
      x = v79;
      y = v81;
      width = v83;
      height = v85;

      v87 = _UIPointerShapeOffsetFromModelPosition(v61, v7, x + width * 0.5, y + height * 0.5);
      v89 = v88;
      if (([v5 options] & 0x40) != 0)
      {
        CGAffineTransformMakeScale(&v110, v63, v63);
        v112.origin.x = x;
        v112.origin.y = y;
        v112.size.width = width;
        v112.size.height = height;
        v113 = CGRectApplyAffineTransform(v112, &v110);
        x = v113.origin.x;
        y = v113.origin.y;
        width = v113.size.width;
        height = v113.size.height;
      }

      [v61 _currentScreenScale];
      UIRectCenteredAboutPointScale(x, y, width, height, v87, v89, v90);
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;
      v99 = [v5 pointerShape];
      v100 = [v99 isCircle];

      v101 = MEMORY[0x1E69C4EC0];
      if (!v100)
      {
        v102 = [v5 pointerShape];
        [v102 effectiveCornerRadius];
        v104 = v103;
        v105 = [v5 pointerShape];
        v106 = [v105 cornerCurve];
        v75 = [v101 roundedRectWithBounds:v106 cornerRadius:v92 cornerCurve:{v94, v96, v98, v104}];

        goto LABEL_39;
      }

      v77 = [MEMORY[0x1E69C4EC0] circleWithBounds:{v92, v94, v96, v98}];
    }

    v75 = v77;
LABEL_39:

    [MEMORY[0x1E695DF70] array];
    goto LABEL_8;
  }

  [MEMORY[0x1E695DF70] array];
  v28 = LABEL_8:;
  v29 = [v5 accessories];
  v30 = [v29 count];

  if (v30)
  {
    v31 = 0;
    if (v30 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v30;
    }

    do
    {
      v33 = [v5 accessories];
      v34 = [v33 objectAtIndexedSubscript:v31];

      v35 = [v5 targetedPreview];
      v36 = [v35 target];
      v37 = [v36 container];
      v38 = v37;
      if (v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = [v7 referenceView];
      }

      v40 = v39;

      v41 = objc_opt_new();
      v42 = [v34 shape];
      [v40 _currentScreenScale];
      v43 = [(_UIPointerArbiterCore_iOS *)self _psPointerShapeFromUIPointerShape:v42 atScale:?];
      [v41 setShape:v43];

      [v34 position];
      [v41 setOffset:?];
      [v34 position];
      [v41 setAngle:v44];
      [v41 setOrientationMatchesAngle:{objc_msgSend(v34, "orientationMatchesAngle")}];
      [v28 addObject:v41];

      ++v31;
    }

    while (v32 != v31);
  }

  v8 = v108;
  if ([v28 count])
  {
    [v108 setAccessories:v28];
  }

  v45 = [(_UIPointerArbiterCore_iOS *)self _coordinateSpaceSourceViewForRegion:v7 withStyle:v5];
  v46 = [v45 layer];
  v47 = [v46 context];
  [v108 setCoordinateSpaceSourceContextID:{objc_msgSend(v47, "contextId")}];

  [v108 setCoordinateSpaceSourceLayerRenderID:CALayerGetRenderId()];
  [v7 rect];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = [v7 referenceView];
  [v45 convertRect:v56 fromView:{v49, v51, v53, v55}];
  [v108 setContentBounds:?];

  [v108 setPointerShape:v107];
  [v108 setShouldPointerUnderlayContent:{objc_msgSend(v5, "pointerUnderlapsContent")}];
  if ([v5 pointerUnderlapsContent])
  {
    if (([v5 options] & 2) != 0)
    {
      v57 = 2;
    }

    else
    {
      v57 = 1;
    }
  }

  else
  {
    v57 = 0;
  }

  [v108 setOverlayEffectStyle:v57];
  [v5 _pointerIntensityForMaterialLuminance:{-[_UIPointerArbiterCore_iOS lastMaterialLuminance](self, "lastMaterialLuminance")}];
  [v108 setPointerVisualIntensity:?];
  [v108 setPreferredPointerMaterialLuminance:{-[_UIPointerArbiterCore_iOS lastMaterialLuminance](self, "lastMaterialLuminance")}];

LABEL_32:

  return v8;
}

- (id)_pointerShapeForStyle:(id)a3 region:(id)a4
{
  v5 = a3;
  v6 = [v5 pointerShape];
  if ([v6 isElastic])
  {
    v7 = MEMORY[0x1E69C4EC0];
    [v6 pinnedPoint];
    v8 = [v7 elasticRoundedRectPinnedAtPoint:?];
  }

  else
  {
    if (([v6 isEmpty] & 1) == 0 && (objc_msgSend(v5, "options") & 0x800) == 0)
    {
      v9 = [v5 targetedPreview];
      v10 = [v9 target];
      v11 = [v10 container];
      [v11 _currentScreenScale];
      v12 = [(_UIPointerArbiterCore_iOS *)self _psPointerShapeFromUIPointerShape:v6 atScale:?];

      goto LABEL_8;
    }

    v8 = [MEMORY[0x1E69C4EC0] systemShape];
  }

  v12 = v8;
LABEL_8:

  return v12;
}

- (id)_psPointerShapeFromUIPointerShape:(id)a3 atScale:(double)a4
{
  v5 = a3;
  v6 = [v5 path];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E69C4EC0] customShapeWithPath:objc_msgSend(v6 usesEvenOddFillRule:{"CGPath"), objc_msgSend(v6, "usesEvenOddFillRule")}];
  }

  else
  {
    [v5 rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    UIRectCenteredAboutPointScale(v9, v11, v13, v15, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a4);
    rect = v17;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v37.origin.x = v10;
    v37.origin.y = v12;
    v37.size.width = v14;
    v37.size.height = v16;
    MinX = CGRectGetMinX(v37);
    v38.origin.x = v10;
    v38.origin.y = v12;
    v38.size.width = v14;
    v38.size.height = v16;
    MinY = CGRectGetMinY(v38);
    v39.origin.x = rect;
    v39.origin.y = v19;
    v39.size.width = v21;
    v39.size.height = v23;
    v40 = CGRectOffset(v39, MinX, MinY);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
    v30 = MEMORY[0x1E69C4EC0];
    [v5 effectiveCornerRadius];
    v32 = v31;
    v33 = [v5 cornerCurve];
    v8 = [v30 roundedRectWithBounds:v33 cornerRadius:x cornerCurve:{y, width, height, v32}];
  }

  return v8;
}

- (void)_getPointerRegion:(id *)a3 andStyle:(id *)a4 atLocation:(CGPoint)a5 inWindow:(id)a6
{
  y = a5.y;
  x = a5.x;
  v42 = *MEMORY[0x1E69E9840];
  v9 = a6;
  [v9 convertPoint:0 toWindow:{x, y}];
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __76___UIPointerArbiterCore_iOS__getPointerRegion_andStyle_atLocation_inWindow___block_invoke;
  v40[3] = &__block_descriptor_48_e32__CAPoint3D_ddd_16__0__UIWindow_8l;
  *&v40[4] = v11;
  *&v40[5] = v13;
  v15 = _UIHitTestGestureContainer(0, v14, v14, 0, v40, 1.0);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_24;
  }

  v17 = v15;
  while ((_IsKindOfUIView(v17) & 1) == 0)
  {
LABEL_15:
    v17 = [v17 _parentGestureRecognizerContainer];
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v18 = [v17 interactions];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v20)
  {
LABEL_13:

    goto LABEL_15;
  }

  v21 = *v37;
LABEL_6:
  v22 = 0;
  while (1)
  {
    if (*v37 != v21)
    {
      objc_enumerationMutation(v19);
    }

    v23 = *(*(&v36 + 1) + 8 * v22);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v23 isEnabled])
    {
      break;
    }

    if (v20 == ++v22)
    {
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v20)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  v24 = v23;

  if (!v24)
  {
    goto LABEL_15;
  }

  v25 = [v24 view];
  [v25 convertPoint:0 fromView:{v11, v13}];
  v27 = v26;
  v29 = v28;

  v30 = [UIApp _hoverEventForWindow:v14];
  v31 = [v24 _pointerRegionAtPoint:objc_msgSend(v30 modifiers:{"modifierFlags"), v27, v29}];
  if (v31)
  {
    v32 = [v24 _pointerStyleForRegion:v31];
    if (a3)
    {
      v33 = v31;
      *a3 = v31;
    }

    if (a4)
    {
      v34 = v32;
      *a4 = v32;
    }
  }

LABEL_24:
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = a4 == 1;
  }

  [(_UIPointerArbiterCore_iOS *)self setLastMaterialLuminance:v7];
  v8 = [(_UIPointerArbiterCore_iOS *)self lastSentHoverRegion];

  if (v8)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69___UIPointerArbiterCore_iOS_backgroundLumaView_didTransitionToLevel___block_invoke;
    v9[3] = &unk_1E710A120;
    objc_copyWeak(&v10, &location);
    [(_UIPointerArbiterCore_iOS *)self _performTransactionUsingBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (!a4)
  {
    if (a3 && !self->_updatesPausedViaAssertion)
    {
      v7 = [(_UIPointerArbiterCore_iOS *)self activePointerRegion];
      [(_UIPointerArbiterCore_iOS *)self exitRegion:v7 removeStyle:1 completion:0];
    }

    self->_updatesPausedViaAssertion = a3;

    [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];
  }
}

@end