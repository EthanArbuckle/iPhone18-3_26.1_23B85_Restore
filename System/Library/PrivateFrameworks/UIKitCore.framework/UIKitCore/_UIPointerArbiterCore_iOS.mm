@interface _UIPointerArbiterCore_iOS
- (_UIPointerArbiterCore_iOS)init;
- (_UIPointerLensView)lensView;
- (id)_coordinateSpaceSourceViewForRegion:(id)region withStyle:(id)style;
- (id)_hoverRegionWithStyle:(id)style forRegion:(id)region;
- (id)_pointerShapeForStyle:(id)style region:(id)region;
- (id)_psPointerShapeFromUIPointerShape:(id)shape atScale:(double)scale;
- (id)obtainPointerUpdatePauseAssertion;
- (int64_t)pointerState;
- (void)_clearMatchMoveSourceForRegion:(id)region immediately:(BOOL)immediately;
- (void)_getPointerRegion:(id *)region andStyle:(id *)style atLocation:(CGPoint)location inWindow:(id)window;
- (void)_notifyPointerStateDidChange;
- (void)_performNextTransaction;
- (void)_performTransactionUsingBlock:(id)block;
- (void)_prepareContentMatchMoveSourceForPointerRegion:(id)region completion:(id)completion;
- (void)_preparePointerPortalSourceCollectionWithCompletion:(id)completion;
- (void)_setActiveHoverRegion:(id)region style:(id)style forPointerRegion:(id)pointerRegion transactionID:(unint64_t)d completion:(id)completion;
- (void)applyStyle:(id)style forRegion:(id)region effectSourceHandler:(id)handler completion:(id)completion;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
- (void)beginScrollingWithRegion:(id)region;
- (void)endScrollingWithRegion:(id)region;
- (void)exitRegion:(id)region removeStyle:(BOOL)style completion:(id)completion;
- (void)pointerClientController:(id)controller didInvalidatePortalSourceCollections:(id)collections matchMoveSources:(id)sources;
- (void)pointerClientControllerClientInteractionStateDidChange:(id)change;
- (void)pointerClientControllerWillDecelerate:(id)decelerate targetPointerPosition:(CGPoint *)position velocity:(CGPoint)velocity inContextID:(unsigned int)d cursorRegionLookupRadius:(double)radius cursorRegionLookupResolution:(double)resolution lookupConeAngle:(double)angle;
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
  pointerClientController = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
  clientInteractionState = [pointerClientController clientInteractionState];
  v5 = 1;
  if (clientInteractionState == 2)
  {
    v5 = 2;
  }

  if (clientInteractionState)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    scrollingRegion = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];

    if (scrollingRegion)
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

- (void)applyStyle:(id)style forRegion:(id)region effectSourceHandler:(id)handler completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  regionCopy = region;
  handlerCopy = handler;
  completionCopy = completion;
  if ([(_UIPointerArbiterCore_iOS *)self pointerState]== 1)
  {
    v14 = [(_UIPointerArbiterCore_iOS *)self _hoverRegionWithStyle:styleCopy forRegion:regionCopy];
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
    v21 = regionCopy;
    v23 = handlerCopy;
    v22 = styleCopy;
    v25[1] = v15;
    v24 = completionCopy;
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
      *&location[4] = regionCopy;
      v27 = 2048;
      pointerState = [(_UIPointerArbiterCore_iOS *)self pointerState];
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring applyStyle:forRegion: %@ because pointer state is not enabled (%ld)", location, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)exitRegion:(id)region removeStyle:(BOOL)style completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  v10 = ([(_UIPointerArbiterCore_iOS *)self transactionRevisionID]+ 1);
  [(_UIPointerArbiterCore_iOS *)self setTransactionRevisionID:v10];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63___UIPointerArbiterCore_iOS_exitRegion_removeStyle_completion___block_invoke;
  v13[3] = &unk_1E710A038;
  objc_copyWeak(v16, &location);
  styleCopy = style;
  v11 = regionCopy;
  v14 = v11;
  v16[1] = v10;
  v12 = completionCopy;
  v15 = v12;
  [(_UIPointerArbiterCore_iOS *)self _performTransactionUsingBlock:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)_setActiveHoverRegion:(id)region style:(id)style forPointerRegion:(id)pointerRegion transactionID:(unint64_t)d completion:(id)completion
{
  regionCopy = region;
  styleCopy = style;
  pointerRegionCopy = pointerRegion;
  completionCopy = completion;
  if (regionCopy)
  {
    [(_UIPointerArbiterCore_iOS *)self setActivePointerStyle:styleCopy];
    [(_UIPointerArbiterCore_iOS *)self setActivePointerRegion:pointerRegionCopy];
    [(_UIPointerArbiterCore_iOS *)self setLastSentHoverRegion:regionCopy];
LABEL_4:
    objc_initWeak(&location, self);
    pointerClientController = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __99___UIPointerArbiterCore_iOS__setActiveHoverRegion_style_forPointerRegion_transactionID_completion___block_invoke;
    v17[3] = &unk_1E710A060;
    v18 = regionCopy;
    objc_copyWeak(v21, &location);
    v21[1] = d;
    v19 = pointerRegionCopy;
    v20 = completionCopy;
    [pointerClientController setActiveHoverRegion:v18 transitionCompletion:v17];

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

  [(_UIPointerArbiterCore_iOS *)self _clearMatchMoveSourceForRegion:pointerRegionCopy immediately:0];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_5:
}

- (void)_clearMatchMoveSourceForRegion:(id)region immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  regionCopy = region;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___UIPointerArbiterCore_iOS__clearMatchMoveSourceForRegion_immediately___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = regionCopy;
  v7 = regionCopy;
  v8 = _Block_copy(v11);
  v9 = v8;
  if (immediatelyCopy)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = +[_UIPointerArbiter sharedArbiter];
  [defaultCenter postNotificationName:0x1EFB7E670 object:v2];
}

- (void)beginScrollingWithRegion:(id)region
{
  v16 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if ([(_UIPointerArbiterCore_iOS *)self pointerState])
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0D8) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = regionCopy;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "beginScrollingWithRegion: %@", &v14, 0xCu);
    }

    lastSentHoverRegion = [(_UIPointerArbiterCore_iOS *)self lastSentHoverRegion];

    if (!lastSentHoverRegion)
    {
      v12 = 0;
LABEL_16:
      [(_UIPointerArbiterCore_iOS *)self applyStyle:v12 forRegion:regionCopy effectSourceHandler:0 completion:0];
      [(_UIPointerArbiterCore_iOS *)self setScrollingRegion:regionCopy];
      [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];

      goto LABEL_17;
    }

    activePointerStyle = [(_UIPointerArbiterCore_iOS *)self activePointerStyle];
    v8 = activePointerStyle;
    if (activePointerStyle)
    {
      if ([activePointerStyle type] == 2)
      {
        pointerShape = [v8 pointerShape];
        [pointerShape beamLength];
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
    v15 = regionCopy;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring beginScrollingWithRegion: %@ because pointer state is disabled", &v14, 0xCu);
  }

LABEL_17:
}

- (void)endScrollingWithRegion:(id)region
{
  v23 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  scrollingRegion = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];
  if (scrollingRegion && (v6 = scrollingRegion, [(_UIPointerArbiterCore_iOS *)self scrollingRegion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == regionCopy))
  {
    v11 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0E8) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = regionCopy;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "endScrollingWithRegion: %@", buf, 0xCu);
    }

    [(_UIPointerArbiterCore_iOS *)self setScrollingRegion:0];
    [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];
    v12 = UIApp;
    referenceView = [regionCopy referenceView];
    _window = [referenceView _window];
    [v12 _resendHoverEventForWindow:_window];

    v15 = dispatch_time(0, 50000000);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52___UIPointerArbiterCore_iOS_endScrollingWithRegion___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v17 = regionCopy;
    selfCopy = self;
    dispatch_after(v15, MEMORY[0x1E69E96A0], v16);
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &qword_1ED49E0E0) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      scrollingRegion2 = [(_UIPointerArbiterCore_iOS *)self scrollingRegion];
      *buf = 138412546;
      v20 = regionCopy;
      v21 = 2112;
      v22 = scrollingRegion2;
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

- (void)pointerClientController:(id)controller didInvalidatePortalSourceCollections:(id)collections matchMoveSources:(id)sources
{
  v6 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &pointerClientController_didInvalidatePortalSourceCollections_matchMoveSources____s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "pointerClientController:didInvalidatePortalSourceCollections:matchMoveSources:", v11, 2u);
  }

  [(_UIPointerArbiterCore_iOS *)self setPointerRegionToMatchMoveSourceMap:0];
  [(_UIPointerArbiterCore_iOS *)self setPointerPortalSourceCollection:0];
  pointerPortalView = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  [pointerPortalView removeFromSuperview];

  [(_UIPointerArbiterCore_iOS *)self setPointerPortalView:0];
  overlayEffectPortalView = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  [overlayEffectPortalView removeFromSuperview];

  [(_UIPointerArbiterCore_iOS *)self setOverlayEffectPortalView:0];
  samplingBackdropView = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [samplingBackdropView removeFromSuperview];

  samplingBackdropView2 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [samplingBackdropView2 setPaused:1];

  [(_UIPointerArbiterCore_iOS *)self setSamplingBackdropView:0];
  [(_UIPointerArbiterCore_iOS *)self setLastSentHoverRegion:0];
}

- (void)pointerClientControllerWillDecelerate:(id)decelerate targetPointerPosition:(CGPoint *)position velocity:(CGPoint)velocity inContextID:(unsigned int)d cursorRegionLookupRadius:(double)radius cursorRegionLookupResolution:(double)resolution lookupConeAngle:(double)angle
{
  v12 = *&d;
  y = velocity.y;
  x = velocity.x;
  decelerateCopy = decelerate;
  if (position)
  {
    v18 = [UIWindow _windowWithContextId:v12];
    layer = [v18 layer];
    [layer convertPoint:0 fromLayer:{position->x, position->y}];
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
      v30 = __sincos_stret(angle * 0.5);
      v31 = 0;
      if (v27 <= radius)
      {
        radiusCopy = v27;
      }

      else
      {
        radiusCopy = radius;
      }

      v77 = (v30.__cosval * radius + radiusCopy) / (v30.__sinval * radius);
      v78 = radiusCopy;
      v33 = vcvtpd_s64_f64(radius / resolution);
      v26 = v21;
      v74 = v21;
      resolutionCopy = resolution;
      while (v31 != v33)
      {
        v75 = v26;
        v76 = v23;
        v24 = 0;
        v34 = ++v31 * resolution;
        v35 = round(v34 * 6.28318531 / resolution);
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
        resolution = resolutionCopy;
        v23 = v76;
        if (v24)
        {
          goto LABEL_41;
        }
      }

      v24 = 0;
      v65 = v72;
    }

    layer2 = [v18 layer];
    [layer2 convertPoint:0 toLayer:{v21, v65}];
    v68 = v67;
    v70 = v69;

    position->x = v68;
    position->y = v70;
  }
}

- (void)pointerClientControllerClientInteractionStateDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v4 = *(__UILogGetCategoryCachedImpl("UIPointerArbiter", &pointerClientControllerClientInteractionStateDidChange____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v8 = 134217984;
    clientInteractionState = [changeCopy clientInteractionState];
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "pointerClientControllerClientInteractionStateDidChange: %ld", &v8, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = +[_UIPointerArbiter sharedArbiter];
  [defaultCenter postNotificationName:0x1EFB7E670 object:v7];
}

- (void)_performNextTransaction
{
  if (![(_UIPointerArbiterCore_iOS *)self hasRunningTransaction])
  {
    pendingTransactionBlocks = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
    firstObject = [pendingTransactionBlocks firstObject];

    if (firstObject)
    {
      pendingTransactionBlocks2 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
      [pendingTransactionBlocks2 removeObjectAtIndex:0];

      [(_UIPointerArbiterCore_iOS *)self setHasRunningTransaction:1];
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52___UIPointerArbiterCore_iOS__performNextTransaction__block_invoke;
      v6[3] = &unk_1E70F5A28;
      objc_copyWeak(&v7, &location);
      (firstObject)[2](firstObject, v6);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_performTransactionUsingBlock:(id)block
{
  blockCopy = block;
  pendingTransactionBlocks = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];

  if (!pendingTransactionBlocks)
  {
    v6 = objc_opt_new();
    [(_UIPointerArbiterCore_iOS *)self setPendingTransactionBlocks:v6];
  }

  pendingTransactionBlocks2 = [(_UIPointerArbiterCore_iOS *)self pendingTransactionBlocks];
  v8 = _Block_copy(blockCopy);

  [pendingTransactionBlocks2 addObject:v8];
  if (![(_UIPointerArbiterCore_iOS *)self hasRunningTransaction])
  {

    [(_UIPointerArbiterCore_iOS *)self _performNextTransaction];
  }
}

- (void)_prepareContentMatchMoveSourceForPointerRegion:(id)region completion:(id)completion
{
  regionCopy = region;
  completionCopy = completion;
  pointerRegionToMatchMoveSourceMap = [(_UIPointerArbiterCore_iOS *)self pointerRegionToMatchMoveSourceMap];
  v9 = [pointerRegionToMatchMoveSourceMap objectForKey:regionCopy];

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
    completionCopy[2](completionCopy, v11, v12);
  }

  else
  {
    objc_initWeak(&location, self);
    pointerClientController = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87___UIPointerArbiterCore_iOS__prepareContentMatchMoveSourceForPointerRegion_completion___block_invoke_2;
    v17[3] = &unk_1E710A0D0;
    objc_copyWeak(&v21, &location);
    v18 = regionCopy;
    v19 = completionCopy;
    v20 = &__block_literal_global_263;
    [pointerClientController createContentMatchMoveSourcesWithCount:1 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

- (void)_preparePointerPortalSourceCollectionWithCompletion:(id)completion
{
  completionCopy = completion;
  pointerPortalSourceCollection = [(_UIPointerArbiterCore_iOS *)self pointerPortalSourceCollection];
  if (!pointerPortalSourceCollection)
  {
    goto LABEL_8;
  }

  v6 = pointerPortalSourceCollection;
  pointerPortalView = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  if (!pointerPortalView)
  {
    goto LABEL_7;
  }

  v8 = pointerPortalView;
  overlayEffectPortalView = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  if (!overlayEffectPortalView)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = overlayEffectPortalView;
  samplingBackdropView = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];

  if (!samplingBackdropView)
  {
LABEL_8:
    pointerClientController = [(_UIPointerArbiterCore_iOS *)self pointerClientController];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81___UIPointerArbiterCore_iOS__preparePointerPortalSourceCollectionWithCompletion___block_invoke;
    v18[3] = &unk_1E710A0F8;
    v18[4] = self;
    v19 = completionCopy;
    [pointerClientController createPointerPortalSourceCollectionWithCompletion:v18];

    goto LABEL_9;
  }

  samplingBackdropView2 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  [samplingBackdropView2 setPaused:0];

  pointerPortalSourceCollection2 = [(_UIPointerArbiterCore_iOS *)self pointerPortalSourceCollection];
  pointerPortalView2 = [(_UIPointerArbiterCore_iOS *)self pointerPortalView];
  overlayEffectPortalView2 = [(_UIPointerArbiterCore_iOS *)self overlayEffectPortalView];
  samplingBackdropView3 = [(_UIPointerArbiterCore_iOS *)self samplingBackdropView];
  (*(completionCopy + 2))(completionCopy, pointerPortalSourceCollection2, pointerPortalView2, overlayEffectPortalView2, samplingBackdropView3);

LABEL_9:
}

- (id)_coordinateSpaceSourceViewForRegion:(id)region withStyle:(id)style
{
  styleCopy = style;
  referenceView = [region referenceView];
  if (styleCopy && [styleCopy type] == 1)
  {
    targetedPreview = [styleCopy targetedPreview];
    _sourceViewIsInViewHierarchy = [targetedPreview _sourceViewIsInViewHierarchy];

    targetedPreview2 = [styleCopy targetedPreview];
    v10 = targetedPreview2;
    if (_sourceViewIsInViewHierarchy)
    {
      view = [targetedPreview2 view];
    }

    else
    {
      target = [targetedPreview2 target];
      view = [target container];

      referenceView = target;
    }

    referenceView = view;
  }

  return referenceView;
}

- (id)_hoverRegionWithStyle:(id)style forRegion:(id)region
{
  styleCopy = style;
  regionCopy = region;
  v7 = regionCopy;
  v8 = 0;
  if (!styleCopy || !regionCopy)
  {
    goto LABEL_32;
  }

  v9 = objc_alloc_init(MEMORY[0x1E69C4EA8]);
  [v7 rect];
  [styleCopy _contentSlipMappedToRegionSize:{v10, v11}];
  v13 = v12;
  v15 = v14;
  [v7 rect];
  [styleCopy _pointerSlipMappedToRegionSize:{v16, v17}];
  v19 = v18;
  v21 = v20;
  [styleCopy contentScale];
  [v9 setContentHoverInverseScale:1.0 / v22];
  v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v13, v15}];
  [v9 setContentSlipValue:v23];

  [v9 setPointerRecenteringAxes:{objc_msgSend(styleCopy, "constrainedAxes")}];
  if (objc_opt_respondsToSelector())
  {
    [v9 setPointerLatchingAxes:{objc_msgSend(v7, "latchingAxes")}];
  }

  v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v21}];
  [v9 setPointerSlipValue:v24];

  [v9 setShouldPointerSuppressMirroring:{objc_msgSend(styleCopy, "_suppressesMirroring")}];
  pointerShape = [styleCopy pointerShape];
  isEmpty = [pointerShape isEmpty];

  v108 = v9;
  if (isEmpty || (v58 = [styleCopy type]) == 0)
  {
    systemShape = [MEMORY[0x1E69C4EC0] systemShape];
LABEL_7:
    [MEMORY[0x1E695DF70] array];
    goto LABEL_8;
  }

  if (v58 == 2)
  {
    systemShape = [(_UIPointerArbiterCore_iOS *)self _pointerShapeForStyle:styleCopy region:v7];
    goto LABEL_7;
  }

  if (v58 == 1)
  {
    targetedPreview = [styleCopy targetedPreview];
    target = [targetedPreview target];
    container = [target container];

    [styleCopy contentScale];
    v63 = v62;
    pointerShape2 = [styleCopy pointerShape];
    path = [pointerShape2 path];

    if ([styleCopy options])
    {
      v77 = [(_UIPointerArbiterCore_iOS *)self _pointerShapeForStyle:styleCopy region:v7];
    }

    else
    {
      if (path)
      {
        v66 = [path copy];
        [path bounds];
        v69 = v68 + v67 * 0.5;
        v72 = v71 + v70 * 0.5;
        CGAffineTransformMakeTranslation(&v110, -v69, -v72);
        [v66 applyTransform:&v110];
        if (([styleCopy options] & 0x40) != 0)
        {
          CGAffineTransformMakeScale(&v110, v63, v63);
          [v66 applyTransform:&v110];
        }

        v73 = _UIPointerShapeOffsetFromModelPosition(container, v7, v69, v72);
        CGAffineTransformMakeTranslation(&v110, v73, v74);
        [v66 applyTransform:&v110];
        v75 = [MEMORY[0x1E69C4EC0] customShapeWithPath:objc_msgSend(v66 usesEvenOddFillRule:{"CGPath"), objc_msgSend(v66, "usesEvenOddFillRule")}];

        goto LABEL_39;
      }

      pointerShape3 = [styleCopy pointerShape];
      [pointerShape3 rect];
      x = v79;
      y = v81;
      width = v83;
      height = v85;

      v87 = _UIPointerShapeOffsetFromModelPosition(container, v7, x + width * 0.5, y + height * 0.5);
      v89 = v88;
      if (([styleCopy options] & 0x40) != 0)
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

      [container _currentScreenScale];
      UIRectCenteredAboutPointScale(x, y, width, height, v87, v89, v90);
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;
      pointerShape4 = [styleCopy pointerShape];
      isCircle = [pointerShape4 isCircle];

      v101 = MEMORY[0x1E69C4EC0];
      if (!isCircle)
      {
        pointerShape5 = [styleCopy pointerShape];
        [pointerShape5 effectiveCornerRadius];
        v104 = v103;
        pointerShape6 = [styleCopy pointerShape];
        cornerCurve = [pointerShape6 cornerCurve];
        v75 = [v101 roundedRectWithBounds:cornerCurve cornerRadius:v92 cornerCurve:{v94, v96, v98, v104}];

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
  accessories = [styleCopy accessories];
  v30 = [accessories count];

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
      accessories2 = [styleCopy accessories];
      v34 = [accessories2 objectAtIndexedSubscript:v31];

      targetedPreview2 = [styleCopy targetedPreview];
      target2 = [targetedPreview2 target];
      container2 = [target2 container];
      v38 = container2;
      if (container2)
      {
        referenceView = container2;
      }

      else
      {
        referenceView = [v7 referenceView];
      }

      v40 = referenceView;

      v41 = objc_opt_new();
      shape = [v34 shape];
      [v40 _currentScreenScale];
      v43 = [(_UIPointerArbiterCore_iOS *)self _psPointerShapeFromUIPointerShape:shape atScale:?];
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

  v45 = [(_UIPointerArbiterCore_iOS *)self _coordinateSpaceSourceViewForRegion:v7 withStyle:styleCopy];
  layer = [v45 layer];
  context = [layer context];
  [v108 setCoordinateSpaceSourceContextID:{objc_msgSend(context, "contextId")}];

  [v108 setCoordinateSpaceSourceLayerRenderID:CALayerGetRenderId()];
  [v7 rect];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  referenceView2 = [v7 referenceView];
  [v45 convertRect:referenceView2 fromView:{v49, v51, v53, v55}];
  [v108 setContentBounds:?];

  [v108 setPointerShape:v107];
  [v108 setShouldPointerUnderlayContent:{objc_msgSend(styleCopy, "pointerUnderlapsContent")}];
  if ([styleCopy pointerUnderlapsContent])
  {
    if (([styleCopy options] & 2) != 0)
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
  [styleCopy _pointerIntensityForMaterialLuminance:{-[_UIPointerArbiterCore_iOS lastMaterialLuminance](self, "lastMaterialLuminance")}];
  [v108 setPointerVisualIntensity:?];
  [v108 setPreferredPointerMaterialLuminance:{-[_UIPointerArbiterCore_iOS lastMaterialLuminance](self, "lastMaterialLuminance")}];

LABEL_32:

  return v8;
}

- (id)_pointerShapeForStyle:(id)style region:(id)region
{
  styleCopy = style;
  pointerShape = [styleCopy pointerShape];
  if ([pointerShape isElastic])
  {
    v7 = MEMORY[0x1E69C4EC0];
    [pointerShape pinnedPoint];
    systemShape = [v7 elasticRoundedRectPinnedAtPoint:?];
  }

  else
  {
    if (([pointerShape isEmpty] & 1) == 0 && (objc_msgSend(styleCopy, "options") & 0x800) == 0)
    {
      targetedPreview = [styleCopy targetedPreview];
      target = [targetedPreview target];
      container = [target container];
      [container _currentScreenScale];
      v12 = [(_UIPointerArbiterCore_iOS *)self _psPointerShapeFromUIPointerShape:pointerShape atScale:?];

      goto LABEL_8;
    }

    systemShape = [MEMORY[0x1E69C4EC0] systemShape];
  }

  v12 = systemShape;
LABEL_8:

  return v12;
}

- (id)_psPointerShapeFromUIPointerShape:(id)shape atScale:(double)scale
{
  shapeCopy = shape;
  path = [shapeCopy path];
  v7 = path;
  if (path)
  {
    v8 = [MEMORY[0x1E69C4EC0] customShapeWithPath:objc_msgSend(path usesEvenOddFillRule:{"CGPath"), objc_msgSend(path, "usesEvenOddFillRule")}];
  }

  else
  {
    [shapeCopy rect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    UIRectCenteredAboutPointScale(v9, v11, v13, v15, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), scale);
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
    [shapeCopy effectiveCornerRadius];
    v32 = v31;
    cornerCurve = [shapeCopy cornerCurve];
    v8 = [v30 roundedRectWithBounds:cornerCurve cornerRadius:x cornerCurve:{y, width, height, v32}];
  }

  return v8;
}

- (void)_getPointerRegion:(id *)region andStyle:(id *)style atLocation:(CGPoint)location inWindow:(id)window
{
  y = location.y;
  x = location.x;
  v42 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  [windowCopy convertPoint:0 toWindow:{x, y}];
  v11 = v10;
  v13 = v12;
  v14 = windowCopy;
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

  _parentGestureRecognizerContainer = v15;
  while ((_IsKindOfUIView(_parentGestureRecognizerContainer) & 1) == 0)
  {
LABEL_15:
    _parentGestureRecognizerContainer = [_parentGestureRecognizerContainer _parentGestureRecognizerContainer];
    if (!_parentGestureRecognizerContainer)
    {
      goto LABEL_24;
    }
  }

  interactions = [_parentGestureRecognizerContainer interactions];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = interactions;
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

  view = [v24 view];
  [view convertPoint:0 fromView:{v11, v13}];
  v27 = v26;
  v29 = v28;

  v30 = [UIApp _hoverEventForWindow:v14];
  v31 = [v24 _pointerRegionAtPoint:objc_msgSend(v30 modifiers:{"modifierFlags"), v27, v29}];
  if (v31)
  {
    v32 = [v24 _pointerStyleForRegion:v31];
    if (region)
    {
      v33 = v31;
      *region = v31;
    }

    if (style)
    {
      v34 = v32;
      *style = v32;
    }
  }

LABEL_24:
}

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  viewCopy = view;
  if (level == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = level == 1;
  }

  [(_UIPointerArbiterCore_iOS *)self setLastMaterialLuminance:v7];
  lastSentHoverRegion = [(_UIPointerArbiterCore_iOS *)self lastSentHoverRegion];

  if (lastSentHoverRegion)
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

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (!type)
  {
    if (state && !self->_updatesPausedViaAssertion)
    {
      activePointerRegion = [(_UIPointerArbiterCore_iOS *)self activePointerRegion];
      [(_UIPointerArbiterCore_iOS *)self exitRegion:activePointerRegion removeStyle:1 completion:0];
    }

    self->_updatesPausedViaAssertion = state;

    [(_UIPointerArbiterCore_iOS *)self _notifyPointerStateDidChange];
  }
}

@end