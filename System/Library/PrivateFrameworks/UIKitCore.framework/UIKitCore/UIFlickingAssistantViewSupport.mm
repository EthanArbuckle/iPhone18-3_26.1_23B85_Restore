@interface UIFlickingAssistantViewSupport
- (BOOL)isInputAssistantItemHidden;
- (BOOL)isRTL;
- (CGPoint)barOriginFromTouchPoint:(CGPoint)point;
- (CGPoint)keyboardOriginFromAssistantViewPosition:(int64_t)position;
- (CGPoint)projectedLandingPointForGestureRecognizerEnd:(id)end;
- (CGRect)assistantFrame;
- (CGRect)calculatedAssistantFrame;
- (unint64_t)assistantPosition;
- (unint64_t)rectEdgeFromPosition:(int64_t)position;
- (void)_connectController:(id)controller;
- (void)_disconnectingController:(id)controller;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_initalizePosition;
- (void)_updateKeyboardLayoutGuideForAssistantFrame:(CGRect)frame;
- (void)_updateKeyboardLayoutGuideForCurrentAssistantFrame;
- (void)_updateTrackingCoordinatorForFloatingAssistant;
- (void)_updatedController;
- (void)didUpdateTransition;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)panGestureHandler:(id)handler;
- (void)setCompact:(BOOL)compact;
- (void)setPositionAndVisualStateByPersistentLocation:(BOOL)location minimize:(BOOL)minimize;
- (void)transitToDraggingVisualState:(int64_t)state withTouchLocation:(CGPoint)location;
- (void)updateTransition:(CGPoint)transition animated:(BOOL)animated;
@end

@implementation UIFlickingAssistantViewSupport

- (void)_disconnectingController:(id)controller
{
  controllerCopy = controller;
  draggableView = [controllerCopy draggableView];
  [draggableView removeGestureRecognizer:self->_panRecognizer];

  panRecognizer = self->_panRecognizer;
  self->_panRecognizer = 0;

  remotePlacement = self->_remotePlacement;
  self->_remotePlacement = 0;

  view = [(UISplitKeyboardSource *)self->super._controller view];
  [(UIView *)view _removeGeometryChangeObserver:?];

  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v9 systemInputAssistantViewController];

  view2 = [systemInputAssistantViewController view];
  layer = [view2 layer];
  [layer removeObserver:self forKeyPath:@"bounds"];

  v13.receiver = self;
  v13.super_class = UIFlickingAssistantViewSupport;
  [(UIKeyboardMotionSupport *)&v13 _disconnectingController:controllerCopy];
}

- (void)_connectController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = UIFlickingAssistantViewSupport;
  [(UIKeyboardMotionSupport *)&v13 _connectController:controllerCopy];
  view = [(UISplitKeyboardSource *)self->super._controller view];
  [(UIView *)view _addGeometryChangeObserver:?];

  if (!+[UIKeyboardImpl isFloatingForced])
  {
    v6 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_panGestureHandler_];
    panRecognizer = self->_panRecognizer;
    self->_panRecognizer = v6;

    [(UIPanGestureRecognizer *)self->_panRecognizer setFailsPastMaxTouches:1];
    [(UIGestureRecognizer *)self->_panRecognizer setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)self->_panRecognizer setCancelsTouchesInView:1];
    [(UIPanGestureRecognizer *)self->_panRecognizer setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_panRecognizer setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_panRecognizer _setHysteresis:30.0];
  }

  [(UIFlickingAssistantViewSupport *)self _initalizePosition];
  if (self->_panRecognizer)
  {
    draggableView = [controllerCopy draggableView];
    [draggableView addGestureRecognizer:self->_panRecognizer];
  }

  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v9 systemInputAssistantViewController];

  view2 = [systemInputAssistantViewController view];
  layer = [view2 layer];
  [layer addObserver:self forKeyPath:@"bounds" options:3 context:0];
}

- (void)_updatedController
{
  v10.receiver = self;
  v10.super_class = UIFlickingAssistantViewSupport;
  [(UIKeyboardMotionSupport *)&v10 _updatedController];
  panRecognizer = self->_panRecognizer;
  if (panRecognizer)
  {
    view = [(UIGestureRecognizer *)panRecognizer view];
    masterController = [(UIKeyboardMotionSupport *)self masterController];
    draggableView = [masterController draggableView];

    if (view != draggableView)
    {
      view2 = [(UIGestureRecognizer *)self->_panRecognizer view];
      [view2 removeGestureRecognizer:self->_panRecognizer];

      masterController2 = [(UIKeyboardMotionSupport *)self masterController];
      draggableView2 = [masterController2 draggableView];

      [draggableView2 addGestureRecognizer:self->_panRecognizer];
    }
  }

  [(UIFlickingAssistantViewSupport *)self _initalizePosition];
}

- (void)setPositionAndVisualStateByPersistentLocation:(BOOL)location minimize:(BOOL)minimize
{
  minimizeCopy = minimize;
  locationCopy = location;
  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v7 preferencesActions];
  compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

  v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v10 systemInputAssistantViewController];
  systemInputAssistantView = [systemInputAssistantViewController systemInputAssistantView];

  if (compactAssistantBarPersistentLocation)
  {
    if ([systemInputAssistantView isInputAssistantItemHidden])
    {
      centerViewHidden = [systemInputAssistantView centerViewHidden];
      v13 = compactAssistantBarPersistentLocation & 4;
      if ((centerViewHidden & 1) != 0 || (compactAssistantBarPersistentLocation & 4) != 0)
      {
LABEL_14:
        v15 = v13 == 0;
        v16 = 3;
        if (v15)
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        self->_visualState = v17;
        v14 = systemInputAssistantView;
        if ((compactAssistantBarPersistentLocation & 1) == 0)
        {
          if ((compactAssistantBarPersistentLocation & 2) == 0)
          {
            v18 = +[UIKeyboardImpl activeInstance];
            inputDelegate = [v18 inputDelegate];
            textInputView = [inputDelegate textInputView];
            _shouldReverseLayoutDirection = [textInputView _shouldReverseLayoutDirection];
            v22 = 2;
            if (_shouldReverseLayoutDirection)
            {
              v22 = 3;
            }

            self->_position = v22;

            goto LABEL_10;
          }

          v16 = 2;
        }

        self->_position = v16;
        goto LABEL_24;
      }
    }

    else if ((compactAssistantBarPersistentLocation & 4) != 0)
    {
      v13 = compactAssistantBarPersistentLocation & 4;
      goto LABEL_14;
    }
  }

  if (UIAssistantViewAllowsMinimization() && minimizeCopy)
  {
    self->_position = self->_lastMinimizedPosition;
    self->_visualState = 1;
LABEL_10:
    v14 = systemInputAssistantView;
    goto LABEL_24;
  }

  v14 = systemInputAssistantView;
  if (locationCopy)
  {
    self->_visualState = 2;
    self->_position = 1;
  }

LABEL_24:
}

- (void)_initalizePosition
{
  remotePlacement = self->_remotePlacement;
  if (remotePlacement)
  {
    if ([(UIInputViewSetPlacement *)remotePlacement isCompactAssistantView])
    {
      self->_visualState = 1;
      v4 = [(UIInputViewSetPlacement *)self->_remotePlacement isMemberOfClass:objc_opt_class()];
      v5 = 2;
      if (!v4)
      {
        v5 = 3;
      }

      self->_position = v5;
      self->_lastMinimizedPosition = v5;
      [(UIKeyboardMotionSupport *)self translateToPlacement:self->_remotePlacement animated:0];
    }

    v6 = self->_remotePlacement;
    self->_remotePlacement = 0;
  }

  else if (self->_visualState == 1 && (-[UISplitKeyboardSource placement](self->super._controller, "placement"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCompactAssistantView], v7, (v8 & 1) != 0))
  {
    [(UIFlickingAssistantViewSupport *)self setPositionAndVisualStateByPersistentLocation:0 minimize:0];
  }

  else
  {
    [(UIFlickingAssistantViewSupport *)self setPositionAndVisualStateByPersistentLocation:1 minimize:0];
    self->_lastMinimizedPosition = 2;
  }

  [(UIFlickingAssistantViewSupport *)self keyboardOriginFromAssistantViewPosition:self->_position];

  [(UIFlickingAssistantViewSupport *)self updateTransition:0 animated:?];
}

- (void)panGestureHandler:(id)handler
{
  v107[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
  if (!hostView)
  {
    goto LABEL_10;
  }

  v5 = hostView;
  v6 = +[UIInputSwitcherView activeInstance];
  isVisible = [v6 isVisible];

  if (isVisible)
  {
    goto LABEL_10;
  }

  v8 = +[UIInputWindowController useMetronomeTracking];
  controller = self->super._controller;
  if (v8)
  {
    draggableView = [(UISplitKeyboardSource *)controller draggableView];
    v11 = draggableView == 0;
  }

  else
  {
    draggableView = [(UISplitKeyboardSource *)controller inputViewSet];
    inputAccessoryView = [draggableView inputAccessoryView];
    if (inputAccessoryView)
    {
      inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      v11 = [inputViewSet isInputAccessoryViewPlaceholder] ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v11)
  {
    goto LABEL_10;
  }

  if (+[UIKeyboardImpl isFloatingForced])
  {
    v14 = +[UIKeyboardImpl activeInstance];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = +[UIKeyboardImpl activeInstance];
    [handlerCopy locationInView:v23];
    v109.x = v24;
    v109.y = v25;
    v110.origin.x = v16;
    v110.origin.y = v18;
    v110.size.width = v20;
    v110.size.height = v22;
    v26 = CGRectContainsPoint(v110, v109);

    if (v26)
    {
      goto LABEL_10;
    }
  }

  state = [handlerCopy state];
  if ((state - 3) >= 2)
  {
    if (state == 2)
    {
      v61 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController = [v61 systemInputAssistantViewController];
      predictionViewController = [systemInputAssistantViewController predictionViewController];
      predictionView = [predictionViewController predictionView];
      [predictionView cancelTapGestureRecognizer];

      view = [(UISplitKeyboardSource *)self->super._controller view];
      [handlerCopy locationInView:view];
      v67 = v66;
      v69 = v68;

      view2 = [(UISplitKeyboardSource *)self->super._controller view];
      [view2 bounds];
      v75 = UIAssistantViewVisualStateForPointInRect(self->_visualState == 3, v71, v72, v73, v74, v67, v69);

      if ((v75 | 2) == 3)
      {
        [(UIFlickingAssistantViewSupport *)self transitToDraggingVisualState:v75 withTouchLocation:v67, v69];
      }

      view3 = [handlerCopy view];
      [view3 setNeedsLayout];

      [(UIFlickingAssistantViewSupport *)self barOriginFromTouchPoint:v67, v69];
      v78 = v77;
      v80 = v79;
      if (v75 == 3)
      {
        v81 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        systemInputAssistantViewController2 = [v81 systemInputAssistantViewController];
        v83 = [systemInputAssistantViewController2 updateFloatingAssistantRectEdge:2 position:{v78, v80}];

        if (v83)
        {
          v78 = 0.0;
        }
      }

      [(UIFlickingAssistantViewSupport *)self updateTransition:1 animated:v78, v80];
    }

    else if (state == 1)
    {
      view4 = [(UISplitKeyboardSource *)self->super._controller view];
      [handlerCopy locationInView:view4];
      self->_initalTouchPoint.x = v29;
      self->_initalTouchPoint.y = v30;

      if (self->_visualState >= 2uLL)
      {
        isInputAssistantItemHidden = [(UIFlickingAssistantViewSupport *)self isInputAssistantItemHidden];
        v32 = 2;
        if (isInputAssistantItemHidden)
        {
          v32 = 3;
        }

        self->_visualState = v32;
      }

      if (+[UIInputWindowController useMetronomeTracking])
      {
        [(UIFlickingAssistantViewSupport *)self _updateTrackingCoordinatorForFloatingAssistant];
      }
    }

    goto LABEL_10;
  }

  v33 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v33 visualModeManager];
  shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

  [(UIFlickingAssistantViewSupport *)self projectedLandingPointForGestureRecognizerEnd:handlerCopy];
  v37 = v36;
  v39 = v38;
  view5 = [(UISplitKeyboardSource *)self->super._controller view];
  [view5 bounds];
  v112 = CGRectInset(v111, 16.0, 16.0);
  x = v112.origin.x;
  y = v112.origin.y;
  width = v112.size.width;
  height = v112.size.height;

  v45 = UIAssistantViewVisualStateForPointInRect(self->_visualState == 3, x, y, width, height, v37, v39);
  v46 = v45;
  if ((v45 | 2) == 3)
  {
    v113.origin.x = x;
    v113.origin.y = y;
    v113.size.width = width;
    v113.size.height = height;
    MaxX = CGRectGetMaxX(v113);
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    MaxY = CGRectGetMaxY(v114);
    v115.origin.x = x;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = height;
    MinX = CGRectGetMinX(v115);
    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v49 = CGRectGetMaxY(v116);
    v50 = 0;
    *v106 = MaxX;
    *&v106[1] = MaxY;
    *v107 = MinX;
    *&v107[1] = v49;
    v51 = v106;
    v52 = 1;
    v53 = 1;
    v54 = 3.40282347e38;
    do
    {
      v55 = v52;
      v56 = sqrt((*v51 - v37) * (*v51 - v37) + (v51[1] - v39) * (v51[1] - v39));
      if (v56 < v54)
      {
        v53 = *(&xmmword_18A678BE0 + v50);
        v54 = v56;
      }

      v52 = 0;
      v51 = v107;
      v50 = 1;
    }

    while ((v55 & 1) != 0);
    if (v53 == 4)
    {
      v57 = 3;
    }

    else
    {
      v57 = 2 * (v53 == 8);
    }

    p_position = &self->_position;
    self->_position = v57;
    self->_visualState = v46;
    self->_draggingState = 0;
    if (v46 > 1)
    {
      goto LABEL_42;
    }

    v59 = &OBJC_IVAR___UIFlickingAssistantViewSupport__lastMinimizedPosition;
    v60 = v57;
  }

  else
  {
    v57 = 0;
    v59 = &OBJC_IVAR___UIFlickingAssistantViewSupport__draggingState;
    p_position = &self->_position;
    v60 = 1;
    self->_position = 1;
    self->_visualState = v45;
  }

  *(&self->super.super.isa + *v59) = v57;
  v57 = v60;
LABEL_42:
  v84 = UIInputViewSetPlacementFromAssistantViewVisualState(v46, v57, 0);
  if (v84)
  {
    v85 = p_position;
    v86 = v33;
    v87 = v46 == 1;
    v88 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v88 preferencesActions];
    v90 = shouldShowWithinAppWindow;
    compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

    v92 = 4 * v87;
    v93 = compactAssistantBarPersistentLocation & 0xFFFFFFFFFFFFFFFBLL | (4 * v87);
    v33 = v86;
    p_position = v85;
    v94 = v92 | 2;
    v95 = v92 | 1;
    if (v57 != 3)
    {
      v95 = v93;
    }

    shouldShowWithinAppWindow = v90;
    if (v57 == 2)
    {
      v96 = v94;
    }

    else
    {
      v96 = v95;
    }

    v97 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v97 preferencesActions];
    [preferencesActions2 setCompactAssistantBarPersistentLocation:v96];

    v99 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions3 = [v99 preferencesActions];
    [preferencesActions3 synchronizePreferences];
  }

  visualModeManager2 = [v33 visualModeManager];
  shouldShowWithinAppWindow2 = [visualModeManager2 shouldShowWithinAppWindow];

  if (shouldShowWithinAppWindow == shouldShowWithinAppWindow2)
  {
    if (v84)
    {
      [(UIKeyboardMotionSupport *)self translateToPlacement:v84 animated:1];
    }

    self->_shouldNotifyCompletion = 1;
    [(UIFlickingAssistantViewSupport *)self keyboardOriginFromAssistantViewPosition:*p_position];
    [(UIFlickingAssistantViewSupport *)self updateTransition:1 animated:?];
    if (+[UIInputWindowController useMetronomeTracking])
    {
      [(UIFlickingAssistantViewSupport *)self _updateTrackingCoordinatorForFloatingAssistant];
    }

    else
    {
      [(UIFlickingAssistantViewSupport *)self assistantFrame];
      [(UIFlickingAssistantViewSupport *)self _updateKeyboardLayoutGuideForAssistantFrame:?];
    }

    responder = +[UIKeyboardImpl activeInstance];
    [responder updateAssistantView];
  }

  else
  {
    responder = [v33 responder];
    [v33 _reloadInputViewsForResponder:responder];
  }

LABEL_10:
}

- (BOOL)isInputAssistantItemHidden
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v2 systemInputAssistantViewController];
  isInputAssistantItemEmpty = [systemInputAssistantViewController isInputAssistantItemEmpty];

  return isInputAssistantItemEmpty;
}

- (void)transitToDraggingVisualState:(int64_t)state withTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(UIFlickingAssistantViewSupport *)self draggingState]!= state)
  {
    [(UIFlickingAssistantViewSupport *)self setDraggingState:state];
    v9 = UIInputViewSetPlacementFromAssistantViewVisualState(state, 0, 1);
    if ([v9 isMemberOfClass:objc_opt_class()])
    {
      v8 = v9;
      [(UIFlickingAssistantViewSupport *)self barOriginFromTouchPoint:x, y];
      [v8 setOffset:?];
    }

    if (v9)
    {
      [(UIKeyboardMotionSupport *)self translateToPlacement:v9 animated:1];
    }
  }
}

- (CGPoint)projectedLandingPointForGestureRecognizerEnd:(id)end
{
  v51[4] = *MEMORY[0x1E69E9840];
  endCopy = end;
  view = [(UISplitKeyboardSource *)self->super._controller view];
  [endCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [(UISplitKeyboardSource *)self->super._controller view];
  [endCopy velocityInView:view2];
  v12 = v11;
  v14 = v13;

  v15 = sqrt(v12 * v12 + v14 * v14);
  view3 = [(UISplitKeyboardSource *)self->super._controller view];
  [view3 bounds];
  v55 = CGRectInset(v54, 16.0, 16.0);
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;

  if (v15 >= 2100.0)
  {
    v20 = *MEMORY[0x1E695EFF8];
    v21 = *(MEMORY[0x1E695EFF8] + 8);
    if (v12 != *MEMORY[0x1E695EFF8] || v14 != v21)
    {
      v20 = v12 * (1.0 / v15);
      v21 = v14 * (1.0 / v15);
    }

    v23 = v7 + v20;
    v45 = v9 + v21;
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    MaxX = CGRectGetMaxX(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    *v51 = MaxX;
    v51[1] = CGRectGetMinY(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v25 = CGRectGetMaxX(v58);
    v59.origin.x = x;
    v59.origin.y = y;
    v59.size.width = width;
    v59.size.height = height;
    *&v51[2] = v25;
    v51[3] = CGRectGetMaxY(v59);
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v60.size.height = height;
    MinX = CGRectGetMinX(v60);
    v61.origin.x = x;
    v61.origin.y = y;
    v61.size.width = width;
    v61.size.height = height;
    *v50 = MinX;
    v50[1] = CGRectGetMaxY(v61);
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v27 = CGRectGetMaxX(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    *&v50[2] = v27;
    v50[3] = CGRectGetMaxY(v63);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v28 = CGRectGetMinX(v64);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = width;
    v65.size.height = height;
    *v49 = v28;
    v49[1] = CGRectGetMinY(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v29 = CGRectGetMinX(v66);
    v46 = x;
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v30 = 0;
    *&v49[2] = v29;
    v49[3] = CGRectGetMaxY(v67);
    v48[0] = v51;
    v48[1] = v50;
    v31 = v23 - v7;
    v32 = v45 - v9;
    v48[2] = v49;
    while (1)
    {
      v33 = v48[v30];
      v34 = ((v33[2] - *v33) * (v33[1] - v9) + (v7 - *v33) * (v33[3] - v33[1])) / (v32 * (v33[2] - *v33) - v31 * (v33[3] - v33[1]));
      if (v34 >= 0.0)
      {
        v35 = v9 + v32 * v34;
        v36 = v7 + v31 * v34;
        view4 = [(UISplitKeyboardSource *)self->super._controller view];
        [view4 bounds];
        v53.x = v36;
        v53.y = v35;
        v38 = CGRectContainsPoint(v68, v53);

        if (v38)
        {
          break;
        }
      }

      if (++v30 == 3)
      {
        v35 = v9;
        v36 = v7;
        break;
      }
    }

    v9 = v35;
    v7 = v36;
    x = v46;
  }

  UIAssistantViewClosestReferencePointFromPointInRect(x, y, width, height, v7, v9);
  v40 = v39;
  v42 = v41;

  v43 = v40;
  v44 = v42;
  result.y = v44;
  result.x = v43;
  return result;
}

- (BOOL)isRTL
{
  v2 = +[UIKeyboardImpl activeInstance];
  remoteTextInputPartner = [v2 remoteTextInputPartner];
  rtiDocumentTraits = [remoteTextInputPartner rtiDocumentTraits];

  if (+[UIKeyboard isInputSystemUI]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    shouldReverseLayoutDirection = [rtiDocumentTraits shouldReverseLayoutDirection];
  }

  else
  {
    v6 = +[UIKeyboardImpl activeInstance];
    inputDelegate = [v6 inputDelegate];
    textInputView = [inputDelegate textInputView];
    shouldReverseLayoutDirection = [textInputView _shouldReverseLayoutDirection];
  }

  return shouldReverseLayoutDirection;
}

- (CGPoint)barOriginFromTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  view = [(UISplitKeyboardSource *)self->super._controller view];
  [view bounds];
  v8 = v7;
  v10 = v9;

  v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v11 systemInputAssistantViewController];
  [systemInputAssistantViewController barFrame];
  v14 = v13;
  v16 = v15;

  v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v17 visualModeManager];
  shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

  if (shouldShowWithinAppWindow)
  {
    v20 = v8 + -16.0;
    if (x < v8 + -16.0)
    {
      v20 = x;
    }

    x = fmax(v20, 16.0);
    v21 = v10 + -16.0;
    if (y < v10 + -16.0)
    {
      v21 = y;
    }

    y = fmax(v21, 16.0);
  }

  draggingState = [(UIFlickingAssistantViewSupport *)self draggingState];
  if (draggingState <= 1)
  {
    if (draggingState)
    {
      if (draggingState == 1)
      {
        v23 = x + v8 * -0.5;
      }

      goto LABEL_17;
    }

LABEL_16:
    v23 = x - self->_initalTouchPoint.x;
    goto LABEL_17;
  }

  if (draggingState == 2)
  {
    goto LABEL_16;
  }

  if (draggingState == 3)
  {
    isRTL = [(UIFlickingAssistantViewSupport *)self isRTL];
    v25 = v8 - x;
    if (!isRTL)
    {
      v25 = x;
    }

    v23 = v25 + v14 * -0.5;
  }

LABEL_17:
  v26 = v10 - (v16 * 0.5 + y);
  result.y = v26;
  result.x = v23;
  return result;
}

- (void)updateTransition:(CGPoint)transition animated:(BOOL)animated
{
  animatedCopy = animated;
  y = transition.y;
  x = transition.x;
  if (self->_visualState == 3 && transition.x != 0.0)
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v8 systemInputAssistantViewController];
    v10 = [systemInputAssistantViewController updateFloatingAssistantRectEdge:-[UIFlickingAssistantViewSupport rectEdgeFromPosition:](self position:{"rectEdgeFromPosition:", self->_position), x, y}];

    if (v10)
    {
      x = 0.0;
    }
  }

  v11 = @"_UIFlickingAssistantViewGestureWithoutAnimation";
  if (animatedCopy)
  {
    v11 = @"_UIFlickingAssistantViewGesture";
  }

  v12 = v11;
  v13 = [UIInputViewSetPlacementAssistantOnScreen infoWithPoint:self->_visualState == 1 isCompact:0 frame:x position:y, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (!animatedCopy)
  {
    if (+[UIInputWindowController useMetronomeTracking])
    {
      [(UIFlickingAssistantViewSupport *)self _updateTrackingCoordinatorForFloatingAssistant];
    }

    else
    {
      [(UIFlickingAssistantViewSupport *)self assistantFrame];
      [(UIFlickingAssistantViewSupport *)self _updateKeyboardLayoutGuideForAssistantFrame:?];
    }
  }

  v14 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__UIFlickingAssistantViewSupport_updateTransition_animated___block_invoke;
  v17[3] = &unk_1E7106060;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [v14 performOnLocalDistributedControllers:v17];
}

- (CGPoint)keyboardOriginFromAssistantViewPosition:(int64_t)position
{
  view = [(UISplitKeyboardSource *)self->super._controller view];
  [view bounds];

  v6 = UIInputViewSetPlacementFromAssistantViewVisualState(self->_visualState, position, 0);
  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  [v6 inputAssistantViewHeightForInputViewSet:inputViewSet];

  if (self->_visualState == 3)
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v8 systemInputAssistantViewController];

    v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v10 preferencesActions];
    [preferencesActions compactAssistantBarPersistentLocation];

    if (position == 1)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v17 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Empty bar must not be put at the center", buf, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &keyboardOriginFromAssistantViewPosition____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Empty bar must not be put at the center", v18, 2u);
        }
      }
    }

    v13 = *&UIFloatingAssistantBottomMargin;

    v14 = 16.0;
  }

  else
  {
    if ((position & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v13 = 16.0;
    }

    else
    {
      v13 = *&UIFloatingAssistantBottomMargin;
    }

    if ((position & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 0.0;
    }
  }

  v15 = v14;
  v16 = v13;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)setCompact:(BOOL)compact
{
  [(UIFlickingAssistantViewSupport *)self setPositionAndVisualStateByPersistentLocation:1 minimize:compact];
  v10 = UIInputViewSetPlacementFromAssistantViewVisualState(self->_visualState, self->_position, 0);
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v5 systemInputAssistantViewController];
  systemInputAssistantView = [systemInputAssistantViewController systemInputAssistantView];

  centerViewHidden = [systemInputAssistantView centerViewHidden];
  isInputAssistantItemHidden = [systemInputAssistantView isInputAssistantItemHidden];
  if (v10)
  {
    [(UIKeyboardMotionSupport *)self translateToPlacement:v10 animated:centerViewHidden ^ 1u];
  }

  if (!compact && self->_position == 1 && isInputAssistantItemHidden != [systemInputAssistantView isInputAssistantItemHidden])
  {
    [(UIFlickingAssistantViewSupport *)self setPositionAndVisualStateByPersistentLocation:1 minimize:0];
  }

  [(UIFlickingAssistantViewSupport *)self keyboardOriginFromAssistantViewPosition:self->_position];
  [(UIFlickingAssistantViewSupport *)self updateTransition:centerViewHidden ^ 1u animated:?];
  if (+[UIInputWindowController useMetronomeTracking])
  {
    if ((centerViewHidden & 1) == 0)
    {
      [(UIFlickingAssistantViewSupport *)self _updateTrackingCoordinatorForFloatingAssistant];
    }
  }

  else
  {
    [(UIFlickingAssistantViewSupport *)self assistantFrame];
    [(UIFlickingAssistantViewSupport *)self _updateKeyboardLayoutGuideForAssistantFrame:?];
  }
}

- (unint64_t)assistantPosition
{
  if ([(UIFlickingAssistantViewSupport *)self draggingState]|| (self->_visualState | 2) != 3 && ![(UIFlickingAssistantViewSupport *)self isInputAssistantItemHidden])
  {
    return 0;
  }

  if (self->_position == 3)
  {
    return 4;
  }

  return 8;
}

- (CGRect)assistantFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v3 systemInputAssistantViewController];

  [systemInputAssistantViewController barFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  view = [masterController view];
  view2 = [systemInputAssistantViewController view];
  [view convertRect:view2 fromView:{v6, v8, v10, v12}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)calculatedAssistantFrame
{
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  view = [masterController view];
  window = [view window];

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v5 systemInputAssistantViewController];

  [systemInputAssistantViewController barFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [systemInputAssistantViewController view];
  [view2 safeAreaInsets];
  v15 = v14 + *&UIFloatingAssistantBottomMargin;

  [window bounds];
  v17 = v16 - (v12 + v15);

  v18 = v8;
  v19 = v17;
  v20 = v10;
  v21 = v12;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)didUpdateTransition
{
  if (self->_shouldNotifyCompletion)
  {
    [(UIFlickingAssistantViewSupport *)self keyboardOriginFromAssistantViewPosition:self->_position];
    v4 = v3;
    v6 = v5;
    visualState = self->_visualState;
    if (visualState == 3)
    {
      v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController = [v8 systemInputAssistantViewController];
      v10 = [systemInputAssistantViewController updateFloatingAssistantRectEdge:-[UIFlickingAssistantViewSupport rectEdgeFromPosition:](self position:{"rectEdgeFromPosition:", self->_position), v4, v6}];

      if (v10)
      {
        v4 = 0.0;
      }

      visualState = self->_visualState;
    }

    v11 = visualState == 1;
    [(UIFlickingAssistantViewSupport *)self assistantFrame];
    v16 = [UIInputViewSetPlacementAssistantOnScreen infoWithPoint:v11 isCompact:[(UIFlickingAssistantViewSupport *)self assistantPosition] frame:v4 position:v6, v12, v13, v14, v15];
    v17 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__UIFlickingAssistantViewSupport_didUpdateTransition__block_invoke;
    v19[3] = &unk_1E7116848;
    v20 = v16;
    v18 = v16;
    [v17 performOnLocalDistributedControllers:v19];

    self->_shouldNotifyCompletion = 0;
  }
}

- (unint64_t)rectEdgeFromPosition:(int64_t)position
{
  if (position == 2)
  {
    v3 = ![(UIFlickingAssistantViewSupport *)self isRTL];
    v4 = 8;
    v5 = 2;
  }

  else
  {
    if (position != 3)
    {
      return 4;
    }

    v3 = ![(UIFlickingAssistantViewSupport *)self isRTL];
    v4 = 2;
    v5 = 8;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (void)_updateTrackingCoordinatorForFloatingAssistant
{
  [(UIFlickingAssistantViewSupport *)self draggingState];
  if ([(UIFlickingAssistantViewSupport *)self draggingState]== 1)
  {
    visualState = [(UIFlickingAssistantViewSupport *)self draggingState];
  }

  else
  {
    visualState = self->_visualState;
  }

  v43 = UIInputViewSetPlacementFromAssistantViewVisualState(visualState, self->_position, 0);
  [(UIFlickingAssistantViewSupport *)self calculatedAssistantFrame];
  v8 = v7;
  if (v4 <= 0.0 || v6 > v5 * 1.5)
  {
    goto LABEL_22;
  }

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  keyboardTrackingProvider = [v13 keyboardTrackingProvider];
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  view = [masterController view];
  window = [view window];

  keyboardState = [v43 keyboardState];
  position = self->_position;
  if (position == 3)
  {
    v20 = 2;
    goto LABEL_13;
  }

  if (position == 2)
  {
    v20 = 8;
LABEL_13:
    v21 = [getTUIKeyboardStateClass_0() compactFloatingAssistantStateForEdge:v20];

    keyboardState = v21;
  }

  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];

  if (inputAccessoryView)
  {
    [keyboardState setHasAccessoryView:1];
  }

  draggingState = [(UIFlickingAssistantViewSupport *)self draggingState];
  defaultInfo = [getTUIKeyboardAnimationInfoClass() defaultInfo];
  v26 = defaultInfo;
  v27 = draggingState == 0;
  v28 = draggingState != 0;
  v29 = 0.25;
  if (!v27)
  {
    v29 = 0.0;
  }

  [defaultInfo setDuration:v29];
  [v26 setOptions:458752];
  [v26 setIsInteractive:v28];
  keyboardScene = [keyboardTrackingProvider keyboardScene];
  _coordinateSpace = [keyboardScene _coordinateSpace];
  coordinateSpace = [window coordinateSpace];
  [_coordinateSpace convertRect:coordinateSpace fromCoordinateSpace:{v8, v10, v11, v12}];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v36 - *&UIFloatingAssistantBottomMargin;
  if (v40 > 0.0)
  {
    v42 = v40 + *&UIFloatingAssistantBottomMargin;
  }

  else
  {
    v41 = v36;
    v42 = v40;
  }

  [keyboardTrackingProvider keyboardWillChangeState:keyboardState endFrame:v26 animationInfo:{v34, v41, v38, v42}];

LABEL_22:
}

- (void)_updateKeyboardLayoutGuideForAssistantFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!+[UIInputWindowController useMetronomeTracking])
  {
    if ([(UIFlickingAssistantViewSupport *)self draggingState])
    {
      v8 = 0;
    }

    else
    {
      v8 = self->_position == 1;
    }

    if ([(UIFlickingAssistantViewSupport *)self draggingState]== 1)
    {
      visualState = [(UIFlickingAssistantViewSupport *)self draggingState];
    }

    else
    {
      visualState = self->_visualState;
    }

    v10 = UIInputViewSetPlacementFromAssistantViewVisualState(visualState, self->_position, 0);
    if (y > 0.0 && height <= width * 1.5)
    {
      masterController = [(UIKeyboardMotionSupport *)self masterController];
      view = [masterController view];
      window = [view window];

      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v22))
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __78__UIFlickingAssistantViewSupport__updateKeyboardLayoutGuideForAssistantFrame___block_invoke;
        v14[3] = &unk_1E7117A48;
        v15 = window;
        v17 = x;
        v18 = y;
        v19 = width;
        v20 = height;
        v21 = v8;
        v16 = v10;
        [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v14];
      }
    }
  }
}

void __78__UIFlickingAssistantViewSupport__updateKeyboardLayoutGuideForAssistantFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 _isTextEffectsWindow] & 1) == 0)
  {
    v4 = [*(a1 + 32) windowScene];
    v5 = [v4 _coordinateSpace];
    v6 = [v3 windowScene];
    v7 = [v6 _coordinateSpace];
    [v5 convertRect:v7 toCoordinateSpace:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    x = v8;
    y = v10;
    width = v12;
    height = v14;

    [v3 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [*(a1 + 32) bounds];
    v78.origin.x = v24;
    v78.origin.y = v25;
    v78.size.width = v26;
    v78.size.height = v27;
    v66.origin.x = v17;
    v66.origin.y = v19;
    v66.size.width = v21;
    v66.size.height = v23;
    if (!CGRectEqualToRect(v66, v78))
    {
      [v3 bounds];
      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = width;
      v79.size.height = height;
      v68 = CGRectIntersection(v67, v79);
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
    }

    v28 = 0.0;
    if (height != 0.0)
    {
      [v3 bounds];
      MaxY = CGRectGetMaxY(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      v28 = MaxY - CGRectGetMaxY(v70);
    }

    [v3 bounds];
    v31 = v30;
    if (*(a1 + 80) == 1)
    {
      [v3 safeAreaInsets];
      v33 = height + v32;
    }

    else
    {
      v33 = height + v28;
      if (v28 >= height)
      {
        v33 = height;
      }
    }

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __78__UIFlickingAssistantViewSupport__updateKeyboardLayoutGuideForAssistantFrame___block_invoke_2;
    v65[3] = &__block_descriptor_64_e33_v16__0__UIKeyboardSceneDelegate_8l;
    v65[4] = v31;
    *&v65[5] = v33;
    v65[6] = 0;
    v65[7] = 0;
    [UIKeyboardSceneDelegate performOnControllers:v65];
  }

  if ([v3 isTrackingKeyboard])
  {
    [v3 updateGuideForKeyboardPlacement:*(a1 + 40)];
    v34 = [v3 _primaryKeyboardTrackingGuide];
    [v34 setAddsHeightWhenUndocked:*(a1 + 80)];

    [v3 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [*(a1 + 32) convertRect:v3 toWindow:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v80.origin.x = v43;
    v80.origin.y = v44;
    v80.size.width = v45;
    v80.size.height = v46;
    v71.origin.x = v36;
    v71.origin.y = v38;
    v71.size.width = v40;
    v71.size.height = v42;
    v72 = CGRectIntersection(v71, v80);
    v47 = v72.origin.x;
    v48 = v72.origin.y;
    v49 = v72.size.width;
    v50 = v72.size.height;
    if (!CGRectIsEmpty(v72) || ([*(a1 + 32) _isHostedInAnotherProcess] & 1) == 0)
    {
      v73.origin.x = v36;
      v73.origin.y = v38;
      v73.size.width = v40;
      v73.size.height = v42;
      v63 = CGRectGetMaxY(v73);
      v74.origin.x = v47;
      v74.origin.y = v48;
      v74.size.width = v49;
      v74.size.height = v50;
      v64 = v42;
      v51 = v38;
      v52 = CGRectGetMaxY(v74);
      v75.origin.x = v47;
      v75.origin.y = v48;
      v75.size.width = v49;
      v75.size.height = v50;
      if (CGRectIsEmpty(v75))
      {
        [v3 insetForDismissedKeyboardGuide];
        v50 = v53;
        v76.origin.x = v36;
        v76.origin.y = v51;
        v76.size.width = v40;
        v76.size.height = v64;
        CGRectGetMinX(v76);
        v77.origin.x = v36;
        v77.origin.y = v51;
        v77.size.width = v40;
        v77.size.height = v64;
        v54 = CGRectGetMaxY(v77);
        v47 = 0.0;
        v49 = v40;
        v55 = v50;
      }

      else
      {
        v54 = v63;
        v55 = v63 - v52;
      }

      v56 = [v3 _primaryKeyboardTrackingGuide];
      [v56 enableAnimations:0];

      v57 = 0;
      if (v55 < v50)
      {
        v58 = [v3 _primaryKeyboardTrackingGuide];
        v57 = [v58 changeOffsetConstants:{v47, v55}];
      }

      v59 = [v3 _primaryKeyboardTrackingGuide];
      v60 = [v59 changeSizingConstants:{v49, v50}];

      v61 = [v3 _primaryKeyboardTrackingGuide];
      [v61 setAddsHeightWhenUndocked:0];

      if ((v57 & 1) != 0 || v60)
      {
        [v3 layoutViewsForTrackedGuides];
      }

      v62 = [v3 _primaryKeyboardTrackingGuide];
      [v62 enableAnimations:1];
    }
  }
}

void __78__UIFlickingAssistantViewSupport__updateKeyboardLayoutGuideForAssistantFrame___block_invoke_2(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 updateTrackingElementsForSize:{v3, v4}];
  [v5 updateTrackingElementsForOffset:{a1[6], a1[7]}];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if (!self->_isHandlingGeometryChange)
  {
    self->_isHandlingGeometryChange = 1;
    [(UIFlickingAssistantViewSupport *)self keyboardOriginFromAssistantViewPosition:self->_position, ancestor];
    [(UIFlickingAssistantViewSupport *)self updateTransition:0 animated:?];
    [(UIFlickingAssistantViewSupport *)self _updateKeyboardLayoutGuideForCurrentAssistantFrame];
    self->_isHandlingGeometryChange = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"bounds"])
  {
    v8 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [v8 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    [v17 CGRectValue];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v29.origin.x = v19;
    v29.origin.y = v21;
    v29.size.width = v23;
    v29.size.height = v25;
    if (!CGRectEqualToRect(v28, v29))
    {
      [(UIFlickingAssistantViewSupport *)self performSelector:sel__updateKeyboardLayoutGuideForCurrentAssistantFrame withObject:0 afterDelay:0.0];
    }
  }
}

- (void)_updateKeyboardLayoutGuideForCurrentAssistantFrame
{
  [(UIFlickingAssistantViewSupport *)self assistantFrame];

  [(UIFlickingAssistantViewSupport *)self _updateKeyboardLayoutGuideForAssistantFrame:?];
}

@end