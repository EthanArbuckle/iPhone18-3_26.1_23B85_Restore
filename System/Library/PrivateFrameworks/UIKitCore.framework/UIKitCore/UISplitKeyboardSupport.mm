@interface UISplitKeyboardSupport
- (BOOL)_updateKeyboardLayoutGuideForHostFrame:(CGRect)frame animated:(BOOL)animated;
- (BOOL)completedPlacementFrom:(id)from to:(id)to forController:(id)controller;
- (BOOL)generateSplitNotificationForNewPlacement:(id)placement;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)startedPlacementFrom:(id)from to:(id)to forController:(id)controller;
- (void)_connectController:(id)controller;
- (void)_disconnectingController:(id)controller;
- (void)_updateBounceAnimation:(id)animation;
- (void)_updateKeyboardLayoutGuideForSplitTransition:(BOOL)transition;
- (void)_updateTrackingProviderForPoint:(CGPoint)point;
- (void)_updatedController;
- (void)bounceAnimationDidFinish;
- (void)cancelBounceAnimation;
- (void)cancelGestureRecognizers;
- (void)dock;
- (void)finishTransitionWithCompletion:(id)completion;
- (void)invalidateDisplayLink;
- (void)prepareForTransition;
- (void)transitionDidFinish:(BOOL)finish;
- (void)translateDetected:(id)detected;
- (void)updateProgress:(double)progress startHeight:(double)height endHeight:(double)endHeight;
- (void)updatedControllerApplicator:(id)applicator;
- (void)willPerformPlacementFrom:(id)from to:(id)to forController:(id)controller;
@end

@implementation UISplitKeyboardSupport

- (void)_disconnectingController:(id)controller
{
  controllerCopy = controller;
  draggableView = [controllerCopy draggableView];
  [draggableView removeGestureRecognizer:self->_singleFingerPanRecognizer];

  singleFingerPanRecognizer = self->_singleFingerPanRecognizer;
  self->_singleFingerPanRecognizer = 0;

  applicator = [controllerCopy applicator];
  twoFingerDraggableView = [applicator twoFingerDraggableView];
  [twoFingerDraggableView removeGestureRecognizer:self->_twoFingerPanRecognizer];

  twoFingerPanRecognizer = self->_twoFingerPanRecognizer;
  self->_twoFingerPanRecognizer = 0;

  v10.receiver = self;
  v10.super_class = UISplitKeyboardSupport;
  [(UIKeyboardMotionSupport *)&v10 _disconnectingController:controllerCopy];
}

- (void)_connectController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = UISplitKeyboardSupport;
  [(UIKeyboardMotionSupport *)&v14 _connectController:controllerCopy];
  v5 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_translateDetected_];
  singleFingerPanRecognizer = self->_singleFingerPanRecognizer;
  self->_singleFingerPanRecognizer = v5;

  [(UIPanGestureRecognizer *)self->_singleFingerPanRecognizer setFailsPastMaxTouches:1];
  [(UIGestureRecognizer *)self->_singleFingerPanRecognizer setDelaysTouchesEnded:0];
  [(UIGestureRecognizer *)self->_singleFingerPanRecognizer setCancelsTouchesInView:1];
  [(UIPanGestureRecognizer *)self->_singleFingerPanRecognizer setMinimumNumberOfTouches:1];
  [(UIPanGestureRecognizer *)self->_singleFingerPanRecognizer setMaximumNumberOfTouches:1];
  [(UIPanGestureRecognizer *)self->_singleFingerPanRecognizer _setHysteresis:30.0];
  v7 = self->_singleFingerPanRecognizer;
  if (v7)
  {
    [(UIPanGestureRecognizer *)v7 setDelegate:self];
    draggableView = [controllerCopy draggableView];
    [draggableView addGestureRecognizer:self->_singleFingerPanRecognizer];
  }

  v9 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_translateDetected_];
  twoFingerPanRecognizer = self->_twoFingerPanRecognizer;
  self->_twoFingerPanRecognizer = v9;

  [(UIPanGestureRecognizer *)self->_twoFingerPanRecognizer setFailsPastMaxTouches:1];
  [(UIGestureRecognizer *)self->_twoFingerPanRecognizer setDelaysTouchesEnded:0];
  [(UIGestureRecognizer *)self->_twoFingerPanRecognizer setCancelsTouchesInView:1];
  [(UIPanGestureRecognizer *)self->_twoFingerPanRecognizer setMinimumNumberOfTouches:2];
  [(UIPanGestureRecognizer *)self->_twoFingerPanRecognizer setMaximumNumberOfTouches:2];
  [(UIPanGestureRecognizer *)self->_twoFingerPanRecognizer _setHysteresis:30.0];
  v11 = self->_twoFingerPanRecognizer;
  if (v11)
  {
    [(UIPanGestureRecognizer *)v11 setDelegate:self];
    applicator = [controllerCopy applicator];
    twoFingerDraggableView = [applicator twoFingerDraggableView];
    [twoFingerDraggableView addGestureRecognizer:self->_twoFingerPanRecognizer];
  }
}

- (void)_updatedController
{
  v17.receiver = self;
  v17.super_class = UISplitKeyboardSupport;
  [(UIKeyboardMotionSupport *)&v17 _updatedController];
  view = [(UIGestureRecognizer *)self->_singleFingerPanRecognizer view];
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  draggableView = [masterController draggableView];

  if (view != draggableView)
  {
    view2 = [(UIGestureRecognizer *)self->_singleFingerPanRecognizer view];
    [view2 removeGestureRecognizer:self->_singleFingerPanRecognizer];

    masterController2 = [(UIKeyboardMotionSupport *)self masterController];
    draggableView2 = [masterController2 draggableView];

    [draggableView2 addGestureRecognizer:self->_singleFingerPanRecognizer];
  }

  view3 = [(UIGestureRecognizer *)self->_twoFingerPanRecognizer view];
  masterController3 = [(UIKeyboardMotionSupport *)self masterController];
  applicator = [masterController3 applicator];
  twoFingerDraggableView = [applicator twoFingerDraggableView];

  if (view3 != twoFingerDraggableView)
  {
    view4 = [(UIGestureRecognizer *)self->_twoFingerPanRecognizer view];
    [view4 removeGestureRecognizer:self->_twoFingerPanRecognizer];

    masterController4 = [(UIKeyboardMotionSupport *)self masterController];
    applicator2 = [masterController4 applicator];

    twoFingerDraggableView2 = [applicator2 twoFingerDraggableView];
    [twoFingerDraggableView2 addGestureRecognizer:self->_twoFingerPanRecognizer];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (+[UIInputWindowController keyboardDotDotDotEnabled](UIInputWindowController, "keyboardDotDotDotEnabled") && self->_singleFingerPanRecognizer == recognizerCopy && +[UIKeyboardImpl isSplit])
  {
    v8 = 1;
  }

  else
  {
    masterController = [(UIKeyboardMotionSupport *)self masterController];
    applicator = [masterController applicator];

    masterController2 = [(UIKeyboardMotionSupport *)self masterController];
    draggableView = [masterController2 draggableView];
    [touchCopy locationInView:draggableView];
    v8 = [applicator isGesture:recognizerCopy inDraggableView:?];
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_singleFingerPanRecognizer != beginCopy && self->_twoFingerPanRecognizer != beginCopy)
  {
    goto LABEL_3;
  }

  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  inputView = [inputViewSet inputView];
  if (!inputView || ([(UISplitKeyboardSource *)self->super._controller isChangingPlacement]& 1) != 0 || !+[UIKeyboardImpl rivenShouldUndock](UIKeyboardImpl, "rivenShouldUndock") && !+[UIKeyboardImpl isFloating])
  {
    goto LABEL_10;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 isLongPress])
  {

LABEL_10:
LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v11 = +[UIKeyboardImpl activeInstance];
  splitTransitionInProgress = [v11 splitTransitionInProgress];

  if (splitTransitionInProgress)
  {
    goto LABEL_11;
  }

  if (+[UIInputWindowController keyboardDotDotDotEnabled](UIInputWindowController, "keyboardDotDotDotEnabled") && self->_singleFingerPanRecognizer == v5 && +[UIKeyboardImpl isSplit])
  {
LABEL_3:
    v6 = 1;
    goto LABEL_12;
  }

  v42 = 0;
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  applicator = [masterController applicator];
  v15 = [applicator preBeginGesture:v5 shouldBegin:&v42];

  if (v15)
  {
    v6 = v42;
  }

  else
  {
    [(UIPanGestureRecognizer *)v5 locationInView:0];
    v17 = v16;
    v19 = v18;
    view = [(UISplitKeyboardSource *)self->super._controller view];
    window = [view window];
    _isHostedInAnotherProcess = [window _isHostedInAnotherProcess];

    if (_isHostedInAnotherProcess)
    {
      view2 = [(UISplitKeyboardSource *)self->super._controller view];
      window2 = [view2 window];
      [window2 convertPoint:0 fromWindow:{v17, v19}];
      v17 = v25;
      v19 = v26;
    }

    masterController2 = [(UIKeyboardMotionSupport *)self masterController];
    draggableView = [masterController2 draggableView];
    view3 = [(UISplitKeyboardSource *)self->super._controller view];
    window3 = [view3 window];
    [draggableView convertPoint:window3 fromView:{v17, v19}];
    v32 = v31;
    v34 = v33;

    view4 = [(UISplitKeyboardSource *)self->super._controller view];
    [(UIPanGestureRecognizer *)v5 translationInView:view4];
    v37 = v36;
    v39 = v38;

    masterController3 = [(UIKeyboardMotionSupport *)self masterController];
    applicator2 = [masterController3 applicator];
    v6 = [applicator2 isGesture:v5 inDraggableView:{v32 + v37, v34 - v39}];
  }

LABEL_12:

  return v6 & 1;
}

- (BOOL)generateSplitNotificationForNewPlacement:(id)placement
{
  controller = self->super._controller;
  placementCopy = placement;
  placement = [(UISplitKeyboardSource *)controller placement];
  isUndocked = [placement isUndocked];
  isUndocked2 = [placementCopy isUndocked];

  return isUndocked ^ isUndocked2;
}

- (void)updatedControllerApplicator:(id)applicator
{
  applicatorCopy = applicator;
  masterController = [(UIKeyboardMotionSupport *)self masterController];

  if (masterController == applicatorCopy)
  {

    [(UISplitKeyboardSupport *)self _updatedController];
  }
}

- (void)willPerformPlacementFrom:(id)from to:(id)to forController:(id)controller
{
  if (self->_displayLink)
  {
    [(UISplitKeyboardSupport *)self cancelBounceAnimation:from];
  }
}

- (BOOL)startedPlacementFrom:(id)from to:(id)to forController:(id)controller
{
  fromCopy = from;
  toCopy = to;
  controllerCopy = controller;
  if ([fromCopy isUndocked])
  {
    isUndocked = 1;
  }

  else
  {
    isUndocked = [toCopy isUndocked];
  }

  if (self->super._controller == controllerCopy)
  {
    self->_isTranslating = isUndocked;
  }

  if ((([fromCopy isUndocked] & 1) != 0 || objc_msgSend(toCopy, "isUndocked")) && (objc_msgSend(fromCopy, "isFloatingAssistantView") & 1) == 0 && (objc_msgSend(toCopy, "isFloating") & 1) == 0 && objc_msgSend(toCopy, "isVisible"))
  {
    if (+[UIInputWindowController useMetronomeTracking](UIInputWindowController, "useMetronomeTracking") && [toCopy isVisible])
    {
      keyboardState = [toCopy keyboardState];
      defaultInfo = [getTUIKeyboardAnimationInfoClass() defaultInfo];
      [defaultInfo setShouldAnimate:0];
      v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      keyboardTrackingProvider = [v14 keyboardTrackingProvider];
      hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
      [hostView frame];
      [keyboardTrackingProvider keyboardWillChangeState:keyboardState endFrame:defaultInfo animationInfo:?];
    }

    -[UISplitKeyboardSupport _updateKeyboardLayoutGuideForSplitTransition:](self, "_updateKeyboardLayoutGuideForSplitTransition:", [toCopy isUndocked]);
    hostView2 = [(UISplitKeyboardSource *)self->super._controller hostView];
    [hostView2 frame];
    [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:1 animated:?];
  }

  return isUndocked;
}

- (BOOL)completedPlacementFrom:(id)from to:(id)to forController:(id)controller
{
  toCopy = to;
  controllerCopy = controller;
  if ([from isUndocked])
  {
    isUndocked = 1;
  }

  else
  {
    isUndocked = [toCopy isUndocked];
  }

  if (self->super._controller == controllerCopy)
  {
    self->_isTranslating = 0;
  }

  return isUndocked;
}

- (void)cancelGestureRecognizers
{
  if ([(UIGestureRecognizer *)self->_singleFingerPanRecognizer isEnabled])
  {
    [(UIGestureRecognizer *)self->_singleFingerPanRecognizer setEnabled:0];
    [(UIGestureRecognizer *)self->_singleFingerPanRecognizer setEnabled:1];
  }

  if ([(UIGestureRecognizer *)self->_twoFingerPanRecognizer isEnabled])
  {
    [(UIGestureRecognizer *)self->_twoFingerPanRecognizer setEnabled:0];
    twoFingerPanRecognizer = self->_twoFingerPanRecognizer;

    [(UIGestureRecognizer *)twoFingerPanRecognizer setEnabled:1];
  }
}

- (void)translateDetected:(id)detected
{
  v195[1] = *MEMORY[0x1E69E9840];
  detectedCopy = detected;
  hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
  if (!hostView)
  {
    goto LABEL_116;
  }

  v6 = hostView;
  v7 = +[UIInputSwitcherView activeInstance];
  isVisible = [v7 isVisible];

  if (isVisible)
  {
    goto LABEL_116;
  }

  state = [detectedCopy state];
  switch(state)
  {
    case 4:
      [(UISplitKeyboardSupport *)self cancelBounceAnimation];
      break;
    case 3:
      break;
    case 1:
      [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:1];
      self->_isTranslating = 0;
      self->_handedOffTouchesToFloatingTransitionController = 0;
      [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
      self->_initialTranslation.x = v10;
      self->_initialTranslation.y = v11;
      self->_lastTranslationNotificationTime = 0.0;
      inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      keyboard = [inputViewSet keyboard];
      if (keyboard && (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), isVisible = objc_claimAutoreleasedReturnValue(), [isVisible rivenSplitLock]))
      {
        self->_splitLockState = 1;
      }

      else
      {
        self->_splitLockState = +[UIKeyboardImpl isFloating];
        if (!keyboard)
        {
LABEL_81:

          [(UISplitKeyboardSupport *)self invalidateDisplayLink];
          placement = [(UISplitKeyboardSource *)self->super._controller placement];
          hostView2 = [(UISplitKeyboardSource *)self->super._controller hostView];
          [hostView2 frame];
          v131 = v130;
          v133 = v132;
          v135 = v134;
          v137 = v136;

          if ([placement isFloating])
          {
            [placement updateChromeBuffer];
            containerView = [(UISplitKeyboardSource *)self->super._controller containerView];
            [containerView frame];
            [UIInputViewSetPlacementFloating frameAtOffset:v131 keyboardSize:v133 screenSize:v135, v137, v139, v140];
            v131 = v141;
            v133 = v142;
            v135 = v143;
            v137 = v144;
          }

          if (+[UIInputWindowController useMetronomeTracking])
          {
            hostView3 = [(UISplitKeyboardSource *)self->super._controller hostView];
            [hostView3 frame];
            v147 = v146;

            v148 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            keyboardTrackingProvider = [v148 keyboardTrackingProvider];
            floatingState = [getTUIKeyboardStateClass_0() floatingState];
            defaultInfo = [getTUIKeyboardAnimationInfoClass() defaultInfo];
            [keyboardTrackingProvider keyboardWillChangeState:floatingState endFrame:defaultInfo animationInfo:{v131, v147, v135, v137}];

            v152 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            keyboardTrackingProvider2 = [v152 keyboardTrackingProvider];
            [keyboardTrackingProvider2 interactiveOffsetUpdateFromPoint:{v131, v133}];

            self->_shouldUpdateKLGForTransition = 0;
          }

          else
          {
            self->_shouldUpdateKLGForTransition = [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:0 animated:v131, v133, v135, v137];
          }

LABEL_115:

          goto LABEL_116;
        }
      }

      goto LABEL_81;
    default:
      view = [(UISplitKeyboardSource *)self->super._controller view];
      [detectedCopy translationInView:view];
      v77 = v76;
      v79 = v78;

      view2 = [(UISplitKeyboardSource *)self->super._controller view];
      [view2 frame];
      v82 = v81;
      hostView4 = [(UISplitKeyboardSource *)self->super._controller hostView];
      [hostView4 frame];
      v85 = v84;

      v86 = v77 + self->_initialTranslation.x;
      if (v86 >= 0.0)
      {
        if (v86 > v82 - v85)
        {
          v86 = v82 - v85 + round((v86 - (v82 - v85)) * 0.3);
        }
      }

      else
      {
        v86 = round(v86 * 0.3);
      }

      view3 = [(UISplitKeyboardSource *)self->super._controller view];
      [view3 frame];
      v89 = v88;
      hostView5 = [(UISplitKeyboardSource *)self->super._controller hostView];
      [hostView5 frame];
      v92 = v91;

      v93 = self->_initialTranslation.y - v79;
      if (v93 >= 0.0)
      {
        if (v93 > v89 - v92)
        {
          v93 = v89 - v92 - round((v89 - v92 - v93) * 0.3);
        }
      }

      else
      {
        v93 = round(v93 * 0.3);
      }

      if (self->_isTranslating)
      {
        v94 = [UIInputViewSetPlacementFloating infoWithPoint:self->super._controller forOwner:v86, v93];
        v95 = [v94 objectForKey:@"PopoverRect"];
        [v95 CGRectValue];
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;

        if (self->_shouldUpdateKLGForTransition)
        {
          [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:0 animated:v97, v99, v101, v103];
        }

        v104 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v190[0] = MEMORY[0x1E69E9820];
        v190[1] = 3221225472;
        v190[2] = __44__UISplitKeyboardSupport_translateDetected___block_invoke_2;
        v190[3] = &unk_1E7116848;
        placement = v94;
        v191 = placement;
        [v104 performOnDistributedControllers:v190];

        [(UISplitKeyboardSupport *)self _updateTrackingProviderForPoint:v86, v93];
        if (v93 > 0.0)
        {
          placement2 = [(UISplitKeyboardSource *)self->super._controller placement];
          isUndocked = [placement2 isUndocked];

          if ((isUndocked & 1) == 0)
          {
            [(UISplitKeyboardSupport *)self undock];
          }
        }

        inputViewSet2 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
        keyboard2 = [inputViewSet2 keyboard];
        if (keyboard2)
        {
          v109 = keyboard2;
          v110 = +[UIKeyboardImpl rivenPreference];

          if (!v110)
          {
            goto LABEL_74;
          }

          view4 = [(UISplitKeyboardSource *)self->super._controller view];
          window = [view4 window];
          v113 = [window interfaceOrientation] - 3;

          if (v113 >= 2)
          {
            v114 = 10.0;
          }

          else
          {
            v114 = 40.0;
          }

          if (v113 >= 2)
          {
            v115 = 80.0;
          }

          else
          {
            v115 = 100.0;
          }

          if (self->_splitLockState)
          {
            inputViewSet3 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
            _inputViewIsSplit = [inputViewSet3 _inputViewIsSplit];

            if (_inputViewIsSplit)
            {
              v118 = v93 >= v115;
            }

            else
            {
              v118 = v93 <= v114;
            }

            if (!v118)
            {
              self->_splitLockState = 1;
LABEL_74:
              [detectedCopy locationInView:0];
              v124 = v123;
              v126 = v125;
              if (+[UIKeyboardImpl isFloating]&& [UIKeyboardFloatingTransitionController isPointWithinDockingRegion:v124, v126])
              {
                v127 = +[UIKeyboardImpl activeInstance];
                [v127 beginFloatingTransitionFromPanGestureRecognizer:detectedCopy];

                self->_handedOffTouchesToFloatingTransitionController = 1;
              }

              goto LABEL_115;
            }

            v119 = +[UIKeyboardImpl isFloating];
            self->_splitLockState = v119;
            if (v119)
            {
              goto LABEL_74;
            }
          }

          v120 = 1.0;
          if (v93 < v115)
          {
            v120 = 0.0;
            if (v93 >= v114 && v93 < v115)
            {
              v121 = fabs(v93) - v114;
              v122 = 70.0;
              if (v113 < 2)
              {
                v122 = 60.0;
              }

              v120 = v121 / v122 * (v121 / v122);
            }
          }

          inputViewSet2 = +[UIKeyboardImpl activeInstance];
          [inputViewSet2 setSplitProgress:v120];
        }

        goto LABEL_74;
      }

      self->_isTranslating = 1;
      v128 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v128 performOnDistributedControllers:&__block_literal_global_392];

      goto LABEL_116;
  }

  [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
  v16 = self->_initialTranslation.x == v15 && self->_initialTranslation.y == v14;
  if (v16 && !self->_isTranslating)
  {
    [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:0];
    goto LABEL_116;
  }

  if (!self->_handedOffTouchesToFloatingTransitionController)
  {
    [(UISplitKeyboardSupport *)self invalidateDisplayLink];
    _intendedScreen = [(UIKeyboardMotionSupport *)self _intendedScreen];
    v18 = [_intendedScreen displayLinkWithTarget:self selector:sel__updateBounceAnimation_];
    displayLink = self->_displayLink;
    self->_displayLink = v18;

    v20 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v20 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    self->_lastBounceTime = CACurrentMediaTime();
    p_translationVelocity = &self->_translationVelocity;
    view5 = [(UISplitKeyboardSource *)self->super._controller view];
    [detectedCopy velocityInView:view5];
    self->_translationVelocity.x = v24;
    self->_translationVelocity.y = v25;

    v26 = vdivq_f64(self->_translationVelocity, vdupq_n_s64(0x408F400000000000uLL));
    self->_translationVelocity = v26;
    if (fabs(v26.x) < 0.015)
    {
      p_translationVelocity->x = -0.015;
    }

    if (fabs(v26.y) < 0.015)
    {
      self->_translationVelocity.y = -0.015;
    }

    placement = [(UISplitKeyboardSource *)self->super._controller placement];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
    v32 = 0.0;
    if (isKindOfClass)
    {
      [placement chromeBuffer];
      v32 = v33;
      v31 = v34;
    }

    v185 = v29;
    v187 = v30;
    hostView6 = [(UISplitKeyboardSource *)self->super._controller hostView];
    [hostView6 frame];
    v184 = v36;
    v38 = v37;

    view6 = [(UISplitKeyboardSource *)self->super._controller view];
    [view6 bounds];
    v41 = v40;
    v43 = v42;

    v183 = v43;
    v188 = v43 - (v32 + v38);
    view7 = [(UISplitKeyboardSource *)self->super._controller view];
    [detectedCopy translationInView:view7];
    v46 = v45;
    v48 = v47;

    v49 = v46 + self->_initialTranslation.x + p_translationVelocity->x * 110.0;
    v50 = self->_initialTranslation.y - (v48 + self->_translationVelocity.y * 110.0);
    applicator = [(UISplitKeyboardSource *)self->super._controller applicator];
    [applicator contentInsets];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v60 = +[UIKeyboardImpl isFloating];
    v61 = v31 + v55;
    v189 = v188 + v53 + v57;
    v62 = v185 + v59;
    v186 = v41;
    v63 = v41 - v62 - v184;
    v64 = v187 + v57;
    v65 = v63;
    v66 = v61;
    if (v60)
    {
      +[UIKeyboardFloatingTransitionController magneticEdgeMargin];
      v66 = round(v61 + v67);
      +[UIKeyboardFloatingTransitionController magneticEdgeMargin];
      v65 = round(v63 - v68);
    }

    if (v49 <= v65)
    {
      v69 = v49;
    }

    else
    {
      v69 = v65;
    }

    if (v49 < v66)
    {
      v69 = v66;
    }

    v70 = round(v69);
    v71 = v189;
    if (v50 <= v189)
    {
      v71 = v50;
    }

    if (v50 < v64)
    {
      v71 = v64;
    }

    v72 = round(v71);
    v73 = @"NotOnEdge";
    if (!v60)
    {
      goto LABEL_94;
    }

    if (v70 == v66)
    {
      v74 = UIKBAnalyticsFloatingKeyboardEdgeLeft;
    }

    else
    {
      if (v70 != v65)
      {
        goto LABEL_89;
      }

      v74 = UIKBAnalyticsFloatingKeyboardEdgeRight;
      v61 = v63;
    }

    v154 = *v74;

    v73 = v154;
    v70 = v61;
LABEL_89:
    if (v72 == v189)
    {
      v155 = UIKBAnalyticsFloatingKeyboardEdgeTop;
    }

    else
    {
      if (v72 != v64)
      {
LABEL_94:
        v157 = fabs(v72);
        self->_targetTranslation.x = v70;
        self->_targetTranslation.y = v157;
        v157 = [UIInputViewSetPlacementFloating infoWithPoint:self->super._controller forOwner:v70, v157];
        v159 = [v157 objectForKey:@"PopoverRect"];
        [v159 CGRectValue];
        v161 = v160;
        v163 = v162;
        v165 = v164;
        v167 = v166;

        if (v60)
        {
          view8 = [(UISplitKeyboardSource *)self->super._controller view];
          [detectedCopy locationInView:view8];
          [UIKBAnalyticsDispatcher floatingKeyboardMoved:v73 toPosition:v161 touchPosition:v163, v169, v170];
        }

        else if (self->_shouldUpdateKLGForTransition)
        {
          [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:0 animated:v161, v163, v165, v167];
          self->_shouldUpdateKLGForTransition = 0;
        }

        [UIKeyboardImpl setPersistentOffset:v70, v157];
        if (self->_splitLockState || !+[UIKeyboardImpl rivenTranslationPreference])
        {
          v175 = 1;
        }

        else
        {
          view9 = [(UISplitKeyboardSource *)self->super._controller view];
          window2 = [view9 window];
          v173 = [window2 interfaceOrientation] - 3;

          v174 = 80.0;
          if (v173 < 2)
          {
            v174 = 100.0;
          }

          v175 = v157 >= v174;
          if (v157 < v174)
          {
            v176 = +[UIInputViewSetPlacementOnScreen placement];
            [UIKeyboardImpl setPersistentOffset:0.0, 0.0];
          }

          else
          {
            v176 = [UIInputViewSetPlacementUndocked placementWithUndockedOffset:fabs(v70) / v186 chromeBuffer:v157 / v183, 92.0, 0.0, 0.0, 0.0];
          }

          if (v176)
          {
            [(UIKeyboardMotionSupport *)self translateToPlacement:v176 quietly:1 animated:1];
          }
        }

        if (self->_splitLockState)
        {
          v177 = 0;
        }

        else
        {
          v194 = @"_UISplitKeyboardGestureFinishSplit";
          v178 = [MEMORY[0x1E696AD98] numberWithBool:v175];
          v195[0] = v178;
          v177 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v195 forKeys:&v194 count:1];
        }

        v179 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v192[0] = MEMORY[0x1E69E9820];
        v192[1] = 3221225472;
        v192[2] = __44__UISplitKeyboardSupport_translateDetected___block_invoke;
        v192[3] = &unk_1E7116848;
        v180 = v177;
        v193 = v180;
        [v179 performOnDistributedControllers:v192];

        [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:0];
        v181 = +[UIKeyboard activeKeyboard];
        isActive = [v181 isActive];

        if ((isActive & 1) == 0)
        {
          [(UISplitKeyboardSupport *)self cancelBounceAnimation];
        }

        goto LABEL_115;
      }

      v155 = UIKBAnalyticsFloatingKeyboardEdgeBottom;
      v189 = v64;
    }

    v156 = *v155;

    v73 = v156;
    v72 = v189;
    goto LABEL_94;
  }

LABEL_116:
}

void __44__UISplitKeyboardSupport_translateDetected___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 completeTransition:@"_UISplitKeyboardGesture" withInfo:v2];
  [v3 startTransition:@"_UISplitKeyboardBounce" withInfo:0];
}

- (void)_updateTrackingProviderForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (+[UIInputWindowController useMetronomeTracking])
  {
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    keyboardTrackingProvider = [v6 keyboardTrackingProvider];
    [keyboardTrackingProvider interactiveOffsetUpdateFromPoint:{x, y}];
  }
}

- (void)_updateKeyboardLayoutGuideForSplitTransition:(BOOL)transition
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71__UISplitKeyboardSupport__updateKeyboardLayoutGuideForSplitTransition___block_invoke;
  v3[3] = &unk_1E7117988;
  transitionCopy = transition;
  v3[4] = self;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v3];
}

void __71__UISplitKeyboardSupport__updateKeyboardLayoutGuideForSplitTransition___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isTrackingKeyboard])
  {
    if (*(a1 + 40) == 1)
    {
      [UIInputViewSetPlacementUndocked placementWithUndockedOffset:0.0 chromeBuffer:0.0, 0.0, 0.0, 0.0, 0.0];
    }

    else
    {
      [*(*(a1 + 32) + 24) placement];
    }
    v3 = ;
    [v4 updateGuideForKeyboardPlacement:v3];
  }
}

- (BOOL)_updateKeyboardLayoutGuideForHostFrame:(CGRect)frame animated:(BOOL)animated
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (+[UIAssistantBarButtonItemProvider _isScribbleButtonsVisible])
  {
    v10 = 0;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    if (!CGRectEqualToRect(*MEMORY[0x1E695F058], v33))
    {
      containerView = [(UISplitKeyboardSource *)self->super._controller containerView];
      window = [containerView window];
      [window bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v14 = CGRectGetMaxY(v32);

      if (x > 0.0 || (v15 = MaxY - v14, v16 = MaxY - v14 <= 0.0, v17 = width, v18 = height, v19 = x, !v16))
      {
        containerView2 = [(UISplitKeyboardSource *)self->super._controller containerView];
        window2 = [containerView2 window];
        [window2 bounds];
        v17 = v22;

        v15 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __74__UISplitKeyboardSupport__updateKeyboardLayoutGuideForHostFrame_animated___block_invoke;
      v26[3] = &__block_descriptor_64_e33_v16__0__UIKeyboardSceneDelegate_8l;
      *&v26[4] = v17;
      *&v26[5] = v18;
      *&v26[6] = v19;
      *&v26[7] = v15;
      [UIKeyboardSceneDelegate performOnControllers:v26];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __74__UISplitKeyboardSupport__updateKeyboardLayoutGuideForHostFrame_animated___block_invoke_2;
      v24[3] = &unk_1E71179D0;
      *&v24[6] = x;
      *&v24[7] = y;
      *&v24[8] = width;
      *&v24[9] = height;
      v24[4] = self;
      v24[5] = &v27;
      animatedCopy = animated;
      [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v24];
    }

    v10 = *(v28 + 24);
    _Block_object_dispose(&v27, 8);
  }

  return v10 & 1;
}

void __74__UISplitKeyboardSupport__updateKeyboardLayoutGuideForHostFrame_animated___block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 updateTrackingElementsForSize:{v3, v4}];
  [v5 updateTrackingElementsForOffset:{a1[6], a1[7]}];
}

void __74__UISplitKeyboardSupport__updateKeyboardLayoutGuideForHostFrame_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = a2;
  if ([v31 isTrackingKeyboard])
  {
    [v31 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(*(a1 + 32) + 24) containerView];
    v12 = [v11 window];
    [v31 convertRect:v12 fromWindow:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    v39.origin.x = v14;
    v39.origin.y = v16;
    v39.size.width = v18;
    v39.size.height = v20;
    v34 = CGRectIntersection(v33, v39);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (CGRectIsEmpty(v34))
    {
      [v31 insetForDismissedKeyboardGuide];
      height = v25;
      v35.origin.x = v4;
      v35.origin.y = v6;
      v35.size.width = v8;
      v35.size.height = v10;
      x = CGRectGetMinX(v35);
      v36.origin.x = v4;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v10;
      y = CGRectGetMaxY(v36) - height;
      width = v8;
    }

    v26 = [v31 _primaryKeyboardTrackingGuide];
    v37.origin.x = v4;
    v37.origin.y = v6;
    v37.size.width = v8;
    v37.size.height = v10;
    MaxY = CGRectGetMaxY(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v28 = [v26 changeOffsetConstants:{x, MaxY - CGRectGetMaxY(v38)}];

    v29 = [v31 _primaryKeyboardTrackingGuide];
    v30 = [v29 changeSizingConstants:{width, height}];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    if (*(a1 + 80) == 1 && ((v28 | v30) & 1) != 0)
    {
      [v31 layoutViewsForTrackedGuides];
    }
  }
}

- (void)cancelBounceAnimation
{
  v3 = [UIInputViewSetPlacementFloating infoWithPoint:self->super._controller forOwner:self->_targetTranslation.x, self->_targetTranslation.y];
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__UISplitKeyboardSupport_cancelBounceAnimation__block_invoke;
  v6[3] = &unk_1E7116848;
  v7 = v3;
  v5 = v3;
  [v4 performOnDistributedControllers:v6];

  [(UISplitKeyboardSupport *)self invalidateDisplayLink];
  [(UISplitKeyboardSupport *)self bounceAnimationDidFinish];
}

- (void)bounceAnimationDidFinish
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bounceCompletionBlock = self->_bounceCompletionBlock;
  if (bounceCompletionBlock)
  {
    bounceCompletionBlock[2]();
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"_UISplitKeyboardRefreshPresentation"];
    v5 = self->_bounceCompletionBlock;
    self->_bounceCompletionBlock = 0;
  }

  view = [(UISplitKeyboardSource *)self->super._controller view];
  [view bounds];
  hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
  [hostView frame];

  v8 = +[UIKeyboardImpl activeInstance];
  if ([v8 rivenSplitLock])
  {
  }

  else
  {
    v9 = +[UIKeyboardImpl isFloating];

    if (!v9)
    {
      view2 = [(UISplitKeyboardSource *)self->super._controller view];
      window = [view2 window];
      [window interfaceOrientation];
    }
  }

  hostView2 = [(UISplitKeyboardSource *)self->super._controller hostView];
  [hostView2 frame];
  [UIKeyboardImpl setPersistentOffset:?];

  self->_isTranslating = 0;
  self->_isSplitting = 0;
  if (self->_targetTranslation.y != 0.0)
  {
    goto LABEL_12;
  }

  placement = [(UISplitKeyboardSource *)self->super._controller placement];
  if (([placement isUndocked] & 1) == 0)
  {

    goto LABEL_12;
  }

  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  _inputViewIsSplit = [inputViewSet _inputViewIsSplit];

  if (_inputViewIsSplit)
  {
LABEL_12:
    [dictionary setObject:MEMORY[0x1E695E110] forKey:@"_UISplitKeyboardGenerateNotification"];
    goto LABEL_13;
  }

  [(UISplitKeyboardSupport *)self dock];
LABEL_13:
  v16 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __50__UISplitKeyboardSupport_bounceAnimationDidFinish__block_invoke;
  v18[3] = &unk_1E7116848;
  v19 = dictionary;
  v17 = dictionary;
  [v16 performOnDistributedControllers:v18];
}

- (void)invalidateDisplayLink
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)_updateBounceAnimation:(id)animation
{
  [animation timestamp];
  v5 = v4;
  v6 = (v4 - self->_lastBounceTime) * 1000.0;
  if (v6 > 1.0)
  {
    [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
    v8 = v7;
    p_targetTranslation = &self->_targetTranslation;
    [UIPeripheralHost gridViewRubberBandValueForValue:"gridViewRubberBandValueForValue:target:timeInterval:velocity:" target:&self->_translationVelocity timeInterval:? velocity:?];
    x = fabs(v10);
    [UIPeripheralHost gridViewRubberBandValueForValue:&self->_translationVelocity.y target:-v8 timeInterval:-self->_targetTranslation.y velocity:v6];
    y = fabs(v12);
    if (vabdd_f64(self->_targetTranslation.x, x) < 3.0 && fabs(self->_translationVelocity.x) < 0.01)
    {
      x = p_targetTranslation->x;
    }

    if (vabdd_f64(self->_targetTranslation.y, y) < 3.0 && fabs(self->_translationVelocity.y) < 0.01)
    {
      y = self->_targetTranslation.y;
    }

    v14 = [UIInputViewSetPlacementFloating infoWithPoint:self->super._controller forOwner:x, y];
    v15 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__UISplitKeyboardSupport__updateBounceAnimation___block_invoke;
    v17[3] = &unk_1E7116848;
    v16 = v14;
    v18 = v16;
    [v15 performOnDistributedControllers:v17];

    [(UISplitKeyboardSupport *)self _updateTrackingProviderForPoint:x, y];
    if (x == p_targetTranslation->x && y == self->_targetTranslation.y)
    {
      [(UISplitKeyboardSupport *)self invalidateDisplayLink];
      [(UISplitKeyboardSupport *)self bounceAnimationDidFinish];
    }

    self->_lastBounceTime = v5;
  }
}

- (void)dock
{
  placement = [(UISplitKeyboardSource *)self->super._controller placement];
  isUndocked = [placement isUndocked];

  if (isUndocked)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    rivenSplitLock = [v4 rivenSplitLock];

    if ((rivenSplitLock & 1) == 0)
    {

      [UIKeyboardImpl setPersistentSplitProgress:0.0];
    }
  }
}

- (void)prepareForTransition
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self->_isSplitting)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"_UISplitKeyboardTransitionInhibitStart"];
  }

  else
  {
    [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:1];
    placement = [(UISplitKeyboardSource *)self->super._controller placement];
    isUndocked = [placement isUndocked];

    if (isUndocked)
    {
      [v4 setObject:MEMORY[0x1E695E118] forKey:@"_UISplitKeyboardGenerateNotification"];
    }

    else
    {
      [(UISplitKeyboardSupport *)self undock];
    }

    self->_isSplitting = 1;
    masterController = [(UIKeyboardMotionSupport *)self masterController];
    [masterController prepareForSplitTransition];
  }

  [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForSplitTransition:1];
  hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
  [hostView frame];
  self->_shouldUpdateKLGForTransition = [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:0 animated:?];

  v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__UISplitKeyboardSupport_prepareForTransition__block_invoke;
  v11[3] = &unk_1E7116848;
  v12 = v4;
  v10 = v4;
  [v9 performOnDistributedControllers:v11];
}

- (void)updateProgress:(double)progress startHeight:(double)height endHeight:(double)endHeight
{
  v32[3] = *MEMORY[0x1E69E9840];
  if (!self->_isTranslating && self->_shouldUpdateKLGForTransition)
  {
    v9 = height - (height - endHeight) * progress;
    placement = [(UISplitKeyboardSource *)self->super._controller placement];
    inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    [placement inputAssistantViewHeightForInputViewSet:inputViewSet];
    v13 = v12;

    v14 = v9 + v13;
    view = [(UISplitKeyboardSource *)self->super._controller view];
    [view bounds];
    v17 = v16;
    [(UISplitKeyboardSource *)self->super._controller offsetForSplitTransition];
    v19 = v17 - (v14 - v18);

    view2 = [(UISplitKeyboardSource *)self->super._controller view];
    [view2 bounds];
    v22 = v21;

    [(UISplitKeyboardSupport *)self _updateKeyboardLayoutGuideForHostFrame:0 animated:0.0, v19, v22, v14];
  }

  v31[0] = @"_UISplitKeyboardTransitionProgress";
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:progress];
  v32[0] = v23;
  v31[1] = @"_UISplitKeyboardTransitionStartHeight";
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:height];
  v32[1] = v24;
  v31[2] = @"_UISplitKeyboardTransitionEndHeight";
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:endHeight];
  v32[2] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v27 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__UISplitKeyboardSupport_updateProgress_startHeight_endHeight___block_invoke;
  v29[3] = &unk_1E7116848;
  v30 = v26;
  v28 = v26;
  [v27 performOnDistributedControllers:v29];
}

- (void)finishTransitionWithCompletion:(id)completion
{
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(UISplitKeyboardSupport *)self isTranslating])
  {
    v6 = [completionCopy copy];
    bounceCompletionBlock = self->_bounceCompletionBlock;
    self->_bounceCompletionBlock = v6;
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
      [dictionary setObject:MEMORY[0x1E695E118] forKey:@"_UISplitKeyboardRefreshPresentation"];
    }

    hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
    [hostView frame];
    v10 = v9;

    view = [(UISplitKeyboardSource *)self->super._controller view];
    [view bounds];
    v13 = v12;
    hostView2 = [(UISplitKeyboardSource *)self->super._controller hostView];
    [hostView2 frame];
    v17 = v13 - (v15 + v16);

    [UIKeyboardImpl setPersistentOffset:v10, v17];
    [dictionary setObject:MEMORY[0x1E695E110] forKey:@"_UISplitKeyboardGenerateNotification"];
    bounceCompletionBlock = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{dispatch_time(0, 100000000)}];
    [dictionary setObject:bounceCompletionBlock forKey:@"_UISplitKeyboardGenerateNotificationTime"];
  }

  v18 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__UISplitKeyboardSupport_finishTransitionWithCompletion___block_invoke;
  v20[3] = &unk_1E7116848;
  v21 = dictionary;
  v19 = dictionary;
  [v18 performOnDistributedControllers:v20];

  [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:0];
}

- (void)transitionDidFinish:(BOOL)finish
{
  finishCopy = finish;
  bounceCompletionBlock = self->_bounceCompletionBlock;
  if (bounceCompletionBlock)
  {
    bounceCompletionBlock[2](bounceCompletionBlock, a2);
    v6 = self->_bounceCompletionBlock;
    self->_bounceCompletionBlock = 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:finishCopy];
  [dictionary setObject:v8 forKey:@"_UISplitKeyboardTransitionCallback"];

  self->_isSplitting = 0;
  if (!self->_isTranslating || self->_targetTranslation.y != 0.0)
  {
    goto LABEL_9;
  }

  placement = [(UISplitKeyboardSource *)self->super._controller placement];
  if (![placement isUndocked])
  {
    goto LABEL_8;
  }

  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  if ([inputViewSet _inputViewIsSplit])
  {

LABEL_8:
LABEL_9:
    [dictionary setObject:MEMORY[0x1E695E110] forKey:@"_UISplitKeyboardGenerateNotification"];
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v18 = +[UIKeyboardImpl isFloating];

  if (v18)
  {
    goto LABEL_9;
  }

  [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
  v20 = v19;
  inputViewSet2 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  [inputViewSet2 splitHeightDelta];
  v12 = v20 < floor(v22 * -0.5);

  v11 = +[UIInputViewSetPlacementOnScreen placement];
  [UIKeyboardImpl setPersistentOffset:0.0, 0.0];
  if (v11)
  {
    v13 = [(UISplitKeyboardSupport *)self generateSplitNotificationForNewPlacement:v11];
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v14 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__UISplitKeyboardSupport_transitionDidFinish___block_invoke;
  v23[3] = &unk_1E71179F8;
  v24 = dictionary;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v15 = v11;
  v16 = dictionary;
  [v14 performOnDistributedControllers:v23];

  self->_shouldUpdateKLGForTransition = 0;
  masterController = [(UIKeyboardMotionSupport *)self masterController];
  [masterController finishSplitTransition];
}

void __46__UISplitKeyboardSupport_transitionDidFinish___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 completeTransition:@"_UISplitKeyboardTransition" withInfo:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    [v4 setPlacement:v3 quietly:0 animated:*(a1 + 48) generateSplitNotification:*(a1 + 49)];
  }
}

@end