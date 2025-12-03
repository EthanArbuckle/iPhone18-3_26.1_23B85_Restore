@interface UIScrollToDismissSupport
- (CGRect)addPaddingToFrame:(CGRect)frame inView:(id)view;
- (id)_infoForMatchMove;
- (id)cancelNotificationsForMode:(unint64_t)mode;
- (void)_updateKeyboardLayoutGuideForScrollTransitionWithSize:(CGSize)size hostFrame:(CGRect)frame duration:(double)duration;
- (void)_updateTrackingCoordinatorForScrollTransitionWithSize:(CGSize)size hostFrame:(CGRect)frame duration:(double)duration interactive:(BOOL)interactive;
- (void)completeKeyboardDismiss:(unint64_t)dismiss withDuration:(double)duration;
- (void)completedPlacementFrom:(id)from to:(id)to forController:(id)controller;
- (void)finishScrollViewTransition;
- (void)finishScrollViewTransitionForController:(id)controller;
- (void)hideScrollViewHorizontalScrollIndicator:(BOOL)indicator;
- (void)scrollView:(id)view didFinishPanGesture:(id)gesture;
- (void)scrollView:(id)view didPanWithGesture:(id)gesture;
- (void)setInterfaceAutorotationDisabled:(BOOL)disabled forController:(id)controller;
- (void)updateScrollViewContentInsetBottom:(double)bottom;
@end

@implementation UIScrollToDismissSupport

- (void)updateScrollViewContentInsetBottom:(double)bottom
{
  if ([(UIScrollView *)self->_scrollViewForTransition updateInsetBottomDuringKeyboardDismiss])
  {
    [(UIScrollView *)self->_scrollViewForTransition contentInset];
    scrollViewForTransition = self->_scrollViewForTransition;

    [(UIScrollView *)scrollViewForTransition setContentInset:?];
  }
}

- (void)hideScrollViewHorizontalScrollIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  if (indicator)
  {
    p_scrollViewForTransition = &self->_scrollViewForTransition;
    if (![(UIScrollView *)self->_scrollViewForTransition showsHorizontalScrollIndicator])
    {
      return;
    }

    self->_scrollViewShowsHorizontalScrollIndicator = 1;
  }

  else
  {
    if (!self->_scrollViewShowsHorizontalScrollIndicator)
    {
      return;
    }

    self->_scrollViewShowsHorizontalScrollIndicator = 0;
    p_scrollViewForTransition = &self->_scrollViewForTransition;
  }

  v6 = *p_scrollViewForTransition;

  [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:!indicatorCopy];
}

- (void)finishScrollViewTransition
{
  self->_scrollViewTransitionFinishing = 0;
  [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:0];
  [(UIScrollToDismissSupport *)self hideScrollViewHorizontalScrollIndicator:0];
  scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
  self->_scrollViewNotificationInfo = 0;

  scrollViewForTransition = self->_scrollViewForTransition;
  self->_scrollViewForTransition = 0;
}

- (void)setInterfaceAutorotationDisabled:(BOOL)disabled forController:(id)controller
{
  disabledCopy = disabled;
  controllerCopy = controller;
  if (self->super._controller == controllerCopy)
  {
    interfaceAutorotationDisabledAssertion = self->_interfaceAutorotationDisabledAssertion;
    if (interfaceAutorotationDisabledAssertion)
    {
      LODWORD(interfaceAutorotationDisabledAssertion) = [(BSSimpleAssertion *)interfaceAutorotationDisabledAssertion isValid];
    }

    if (!disabledCopy || (interfaceAutorotationDisabledAssertion & 1) != 0)
    {
      if (!disabledCopy && ((interfaceAutorotationDisabledAssertion ^ 1) & 1) == 0)
      {
        [(BSSimpleAssertion *)self->_interfaceAutorotationDisabledAssertion invalidate];
        v21 = self->_interfaceAutorotationDisabledAssertion;
        self->_interfaceAutorotationDisabledAssertion = 0;
      }
    }

    else
    {
      window = [(UIView *)self->_scrollViewForTransition window];
      v9 = window;
      if (window)
      {
        [window beginDisablingInterfaceAutorotation];
        v10 = 0x1E696A000uLL;
        v11 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        selfCopy = [v11 stringWithFormat:@"<%@: %p>", v14, selfCopy];

        if (controllerCopy)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = controllerCopy;
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = [v16 stringWithFormat:@"<%@: %p>", v19, v17];

          v10 = 0x1E696A000;
        }

        else
        {
          v20 = @"(nil)";
        }

        v22 = *(v10 + 3776);
        v23 = selfCopy;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

        v27 = [v11 stringWithFormat:@"Scroll to dismiss disabling autorotation for window on behalf of controller. scrollToDismiss=%@ controller=%@; window=%@", selfCopy, v20, v26];;

        objc_initWeak(&location, v9);
        v28 = objc_alloc(MEMORY[0x1E698E778]);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __75__UIScrollToDismissSupport_setInterfaceAutorotationDisabled_forController___block_invoke;
        v31[3] = &unk_1E70FA170;
        objc_copyWeak(&v32, &location);
        v29 = [v28 initWithIdentifier:@"UIScrollToDismissSupport.windowDisableInterfaceAutorotation" forReason:v27 invalidationBlock:v31];
        v30 = self->_interfaceAutorotationDisabledAssertion;
        self->_interfaceAutorotationDisabledAssertion = v29;

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __75__UIScrollToDismissSupport_setInterfaceAutorotationDisabled_forController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endDisablingInterfaceAutorotation];
}

- (void)finishScrollViewTransitionForController:(id)controller
{
  if (self->super._controller == controller)
  {
    [(UIScrollToDismissSupport *)self finishScrollViewTransition];
  }
}

- (void)completedPlacementFrom:(id)from to:(id)to forController:(id)controller
{
  controllerCopy = controller;
  v8 = controllerCopy;
  if (self->super._controller == controllerCopy)
  {
    v14 = controllerCopy;
    fromCopy = from;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(UIScrollToDismissSupport *)self finishScrollViewTransition];
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      responder = [v11 responder];
      if ([responder _requiresKeyboardWhenFirstResponder] && !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess"))
      {
        if (+[UIKeyboard usesInputSystemUI])
        {
          [v11 _setIgnoresPinning:1 allowImmediateReload:0];
        }

        [responder resignFirstResponder];
        if (+[UIKeyboard usesInputSystemUI])
        {
          [v11 _setIgnoresPinning:0 allowImmediateReload:0];
        }
      }
    }

    else
    {
      v13 = +[UIKeyboard isKeyboardProcess];
      v8 = v14;
      if (!v13)
      {
        goto LABEL_13;
      }

      [(UISplitKeyboardSource *)v14 removeMatchMoveAnimationIfNeeded];
    }

    v8 = v14;
  }

LABEL_13:
}

- (id)cancelNotificationsForMode:(unint64_t)mode
{
  scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
  if (scrollViewNotificationInfo)
  {
    v4 = scrollViewNotificationInfo;
  }

  else
  {
    v4 = [(UISplitKeyboardSource *)self->super._controller constructNotificationInfoForScrollWithMode:mode];
  }

  v5 = v4;
  inverseInfo = [(UIInputViewSetNotificationInfo *)v4 inverseInfo];

  return inverseInfo;
}

- (void)completeKeyboardDismiss:(unint64_t)dismiss withDuration:(double)duration
{
  v30[2] = *MEMORY[0x1E69E9840];
  self->_scrollViewTransitionFinishing = 1;
  [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
  v8 = [_UIInputViewSetPlacementDragToDismiss placementWithOffset:dismiss & 1 dismissKeyboardOnly:v7];
  placement = [(UISplitKeyboardSource *)self->super._controller placement];
  v10 = placement;
  if (dismiss)
  {
    accessoryViewWillAppear = [placement accessoryViewWillAppear];
    v12 = off_1E70E9B28;
    if (accessoryViewWillAppear)
    {
      v12 = off_1E70E9AF8;
    }
  }

  else
  {
    if (!dismiss)
    {
      goto LABEL_8;
    }

    v12 = off_1E70E9B28;
  }

  placement2 = [(__objc2_class *)*v12 placement];

  v10 = placement2;
LABEL_8:
  [(UIScrollToDismissSupport *)self hideScrollViewHorizontalScrollIndicator:1];
  v14 = MEMORY[0x1E695DF90];
  v29[0] = @"_UIScrollKeyboardPlacementFrom";
  v29[1] = @"_UIScrollKeyboardPlacementTo";
  v30[0] = v8;
  v30[1] = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v16 = [v14 dictionaryWithDictionary:v15];

  if (duration != 0.0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [v16 setObject:v17 forKey:@"_UIScrollKeyboardDuration"];
  }

  if (self->_scrollViewNotificationInfo && +[UIKeyboard usesInputSystemUI])
  {
    _infoForMatchMove = [(UIScrollToDismissSupport *)self _infoForMatchMove];
    [v16 addEntriesFromDictionary:_infoForMatchMove];
  }

  v19 = +[UIInputWindowController useMetronomeTracking];
  v20 = MEMORY[0x1E695F060];
  v21 = MEMORY[0x1E695F058];
  if (v19)
  {
    [(UIScrollToDismissSupport *)self _updateTrackingCoordinatorForScrollTransitionWithSize:0 hostFrame:*MEMORY[0x1E695F060] duration:*(MEMORY[0x1E695F060] + 8) interactive:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), duration];
  }

  v22 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __65__UIScrollToDismissSupport_completeKeyboardDismiss_withDuration___block_invoke;
  v27 = &unk_1E7116848;
  v23 = v16;
  v28 = v23;
  [v22 performOnDistributedControllers:&v24];

  if (![UIInputWindowController useMetronomeTracking:v24])
  {
    [(UIScrollToDismissSupport *)self _updateKeyboardLayoutGuideForScrollTransitionWithSize:*v20 hostFrame:v20[1] duration:*v21, v21[1], v21[2], v21[3], duration];
  }
}

- (void)scrollView:(id)view didPanWithGesture:(id)gesture
{
  viewCopy = view;
  gestureCopy = gesture;
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 displaysCandidates])
  {
    candidateController = [v9 candidateController];
    if (([candidateController activeCandidateViewType] & 4) == 0)
    {
LABEL_5:

      goto LABEL_6;
    }

    state = [gestureCopy state];

    if (state == 1)
    {
      candidateController = +[UIKeyboardImpl activeInstance];
      [candidateController removeAutocorrectPromptAndCandidateList];
      goto LABEL_5;
    }
  }

LABEL_6:
  placement = [(UISplitKeyboardSource *)self->super._controller placement];
  if (![placement showsKeyboard] || -[UISplitKeyboardSource isChangingPlacement](self->super._controller, "isChangingPlacement"))
  {

    goto LABEL_9;
  }

  v13 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  keyboardActive = [v13 keyboardActive];

  if (!keyboardActive)
  {
    goto LABEL_9;
  }

  keyboardDismissMode = [viewCopy keyboardDismissMode];
  if (keyboardDismissMode > 2)
  {
    if (keyboardDismissMode != 3)
    {
      if (keyboardDismissMode == 4)
      {
        v16 = 0;
        v17 = 4;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v16 = 1;
    v17 = 2;
  }

  else
  {
    if (keyboardDismissMode != 1)
    {
      if (keyboardDismissMode == 2)
      {
        v16 = 0;
        v17 = 5;
        goto LABEL_21;
      }

LABEL_18:
      v17 = 0;
      v16 = 1;
      goto LABEL_21;
    }

    v16 = 1;
    v17 = 3;
  }

LABEL_21:
  placement2 = [(UISplitKeyboardSource *)self->super._controller placement];
  if (([placement2 inputViewWillAppear] & 1) == 0)
  {

    goto LABEL_9;
  }

  v88 = v16;
  inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  [inputViewSet inputView];

  numberOfTouches = [gestureCopy numberOfTouches];
  view = [(UISplitKeyboardSource *)self->super._controller view];
  if (numberOfTouches)
  {
    [gestureCopy locationOfTouch:0 inView:view];
  }

  else
  {
    [gestureCopy locationInView:view];
  }

  v24 = v22;
  v25 = v23;

  if ([gestureCopy state] == 1)
  {
    v26 = +[UIKeyboardImpl activeInstance];
    [v26 clearAnimations];

    v27 = +[UIKeyboardImpl activeInstance];
    [v27 removeTextChoicePromptAndAutocorrection];

    v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerRootController = [v28 containerRootController];
    [containerRootController clearKeyboardSnapshot];

    if (self->_scrollViewForTransition)
    {
      [(UIScrollToDismissSupport *)self finishScrollViewTransition];
    }
  }

  v30 = v17;
  if ((v17 & 2) != 0)
  {
    if (!self->_scrollViewForTransition)
    {
      goto LABEL_45;
    }
  }

  else
  {
    hostView = [(UISplitKeyboardSource *)self->super._controller hostView];
    [hostView frame];
    [(UIScrollToDismissSupport *)self addPaddingToFrame:viewCopy inView:?];
    v92.x = v24;
    v92.y = v25;
    if (CGRectContainsPoint(v93, v92))
    {
      scrollViewForTransition = self->_scrollViewForTransition;

      if (!scrollViewForTransition)
      {
        v30 = v17;
LABEL_45:
        v51 = [(UISplitKeyboardSource *)self->super._controller constructNotificationInfoForScrollWithMode:v30];
        scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
        self->_scrollViewNotificationInfo = v51;

        if (self->_scrollViewNotificationInfo)
        {
          objc_storeStrong(&self->_scrollViewForTransition, view);
          [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:1];
          [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo beginFrame];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v59 = v25;
          v61 = v60;
          [(UIScrollToDismissSupport *)self addPaddingToFrame:viewCopy inView:?];
          [(UIScrollToDismissSupport *)self updateScrollViewContentInsetBottom:v59 - CGRectGetMinY(v94)];
          self->_scrollViewTransitionPreviousPoint.x = v24;
          self->_scrollViewTransitionPreviousPoint.y = v59;
          inputViewSet2 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
          inputAccessoryView = [inputViewSet2 inputAccessoryView];

          if (inputAccessoryView)
          {
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            [defaultCenter postNotificationName:@"UITextSelectionWillInteractiveMove" object:0];
          }

          if ((v30 & 2) != 0)
          {
            [(UIScrollToDismissSupport *)self completeKeyboardDismiss:v30 withDuration:0.0];
            goto LABEL_9;
          }

          if (+[UIInputWindowController useMetronomeTracking])
          {
            onscreenState = [getTUIKeyboardStateClass_0() onscreenState];
            [onscreenState setIsInteractive:1];
            defaultInfo = [getTUIKeyboardAnimationInfoClass() defaultInfo];
            [defaultInfo setDuration:0.0];
            [defaultInfo setShouldAnimate:0];
            inputViewSet3 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
            inputAccessoryView2 = [inputViewSet3 inputAccessoryView];

            if (inputAccessoryView2)
            {
              [onscreenState setHasAccessoryView:1];
              inputViewSet4 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
              inputAccessoryView3 = [inputViewSet4 inputAccessoryView];
              [inputAccessoryView3 bounds];
              v72 = v71;

              v56 = v56 + v72;
              v61 = v61 - v72;
            }

            v73 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            keyboardTrackingProvider = [v73 keyboardTrackingProvider];
            [keyboardTrackingProvider keyboardWillChangeState:onscreenState endFrame:defaultInfo animationInfo:{v54, v56, v58, v61}];

            v75 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            keyboardTrackingProvider2 = [v75 keyboardTrackingProvider];
            [keyboardTrackingProvider2 interactiveSizeUpdate:{v58, v61}];

LABEL_62:
            goto LABEL_9;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  if (self->_scrollViewForTransition)
  {
    v33 = v88;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v89 = v24;
    [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo beginFrame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v84 = v40;
    [(UIScrollToDismissSupport *)self addPaddingToFrame:viewCopy inView:?];
    v42 = v41;
    [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo endFrame];
    v44 = v43;
    v46 = v45;
    [(UIScrollToDismissSupport *)self addPaddingToFrame:viewCopy inView:?];
    v86 = v47;
    v85 = fmin(fmax((v25 - v42) / (v44 - v42), 0.0), 1.0);
    [(UIScrollToDismissSupport *)self hideScrollViewHorizontalScrollIndicator:v85 > 0.01];
    v87 = v25;
    v48 = fmin(v42 - v25, 0.0);
    if (v42 - v44 >= v48)
    {
      v49 = v42 - v44;
    }

    else
    {
      v49 = v48;
    }

    v50 = v39 - fabs(v49);
    if (+[UIInputWindowController useMetronomeTracking])
    {
      [(UIScrollToDismissSupport *)self _updateTrackingCoordinatorForScrollTransitionWithSize:1 hostFrame:v46 duration:v50 interactive:v35, v37, v84, v39, 0.0];
    }

    else
    {
      [(UIScrollToDismissSupport *)self _updateKeyboardLayoutGuideForScrollTransitionWithSize:v46 hostFrame:v50 duration:v35, v37, v84, v39, 0.0];
    }

    v77 = [UIInputViewSetPlacementUndocked infoWithPoint:0.0, v49];
    v78 = [v77 mutableCopy];

    _infoForMatchMove = [(UIScrollToDismissSupport *)self _infoForMatchMove];
    [v78 addEntriesFromDictionary:_infoForMatchMove];

    v80 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __57__UIScrollToDismissSupport_scrollView_didPanWithGesture___block_invoke;
    v90[3] = &unk_1E7116848;
    onscreenState = v78;
    v91 = onscreenState;
    [v80 performOnDistributedControllers:v90];

    v81 = v87;
    if (v42 >= v87)
    {
      v81 = v42;
    }

    if (v86 <= v81)
    {
      v82 = v86;
    }

    else
    {
      v82 = v81;
    }

    if (v85 > 0.0)
    {
      [(UIScrollToDismissSupport *)self updateScrollViewContentInsetBottom:v82 - self->_scrollViewTransitionPreviousPoint.y, v86];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"UIKeyboardPrivateInteractiveDismissalDidBeginNotification" object:0];
    }

    self->_scrollViewTransitionPreviousPoint.x = v89;
    self->_scrollViewTransitionPreviousPoint.y = v82;

    goto LABEL_62;
  }

LABEL_9:
}

- (void)scrollView:(id)view didFinishPanGesture:(id)gesture
{
  v48[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  gestureCopy = gesture;
  if (!self->_scrollViewTransitionFinishing && self->_scrollViewForTransition)
  {
    keyboardDismissMode = [viewCopy keyboardDismissMode];
    if ((keyboardDismissMode - 1) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_18A680398[keyboardDismissMode - 1];
    }

    [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo beginFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo endFrame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    numberOfTouches = [gestureCopy numberOfTouches];
    view = [(UISplitKeyboardSource *)self->super._controller view];
    if (numberOfTouches)
    {
      [gestureCopy locationOfTouch:0 inView:view];
    }

    else
    {
      [gestureCopy locationInView:view];
    }

    v27 = v26;

    v28 = fmin(fmax((v27 - v13) / (v19 - v13), 0.0), 1.0);
    view2 = [(UISplitKeyboardSource *)self->super._controller view];
    [gestureCopy velocityInView:view2];
    v31 = v30;

    if (v31 <= 0.0)
    {
      self->_scrollViewTransitionFinishing = 1;
      [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo duration];
      v34 = v28 * v33;
      v47[0] = @"_UIScrollKeyboardDuration";
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:v28 * v33];
      v47[1] = @"_UIScrollKeyboardCancelInfo";
      v48[0] = v35;
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
      v48[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v38 = [v37 mutableCopy];

      if (+[UIKeyboard usesInputSystemUI])
      {
        _infoForMatchMove = [(UIScrollToDismissSupport *)self _infoForMatchMove];
        [v38 addEntriesFromDictionary:_infoForMatchMove];
      }

      if (+[UIInputWindowController useMetronomeTracking])
      {
        [(UIScrollToDismissSupport *)self _updateTrackingCoordinatorForScrollTransitionWithSize:0 hostFrame:v21 duration:v23 interactive:v11, v13, v15, v17, v34];
      }

      v40 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __59__UIScrollToDismissSupport_scrollView_didFinishPanGesture___block_invoke;
      v45 = &unk_1E7116848;
      v41 = v38;
      v46 = v41;
      [v40 performOnDistributedControllers:&v42];

      if (![UIInputWindowController useMetronomeTracking:v42])
      {
        [(UIScrollToDismissSupport *)self _updateKeyboardLayoutGuideForScrollTransitionWithSize:v21 hostFrame:v23 duration:v11, v13, v15, v17, v34];
      }
    }

    else
    {
      [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo duration];
      [(UIScrollToDismissSupport *)self completeKeyboardDismiss:v9 withDuration:v28 * v32];
    }
  }
}

- (id)_infoForMatchMove
{
  v25[3] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  if (+[UIKeyboard usesInputSystemUI])
  {
    scrollTrackingView = [(UISplitKeyboardSource *)self->super._controller scrollTrackingView];
    layer = [scrollTrackingView layer];
    context = [layer context];
    contextId = [context contextId];

    layer2 = [scrollTrackingView layer];
    RenderId = CALayerGetRenderId();

    inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    inputAccessoryView = [inputViewSet inputAccessoryView];
    if (inputAccessoryView)
    {
      v12 = inputAccessoryView;
      [scrollTrackingView bounds];
      v14 = v13;

      v15 = 0.0;
      if (v14 <= 0.0)
      {
LABEL_7:
        v24[0] = @"_UIKeyboardContextID";
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:contextId];
        v25[0] = v19;
        v24[1] = @"_UIKeyboardLayerID";
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:RenderId];
        v25[1] = v20;
        v24[2] = @"_UIScrollKeyboardIAVOffset";
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
        v25[2] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

        dictionary = v22;
        goto LABEL_8;
      }

      inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      [inputViewSet inputAccessoryViewBounds];
      v17 = v16;
      [scrollTrackingView bounds];
      v15 = v17 / v18;
    }

    else
    {
      v15 = 0.0;
    }

    goto LABEL_7;
  }

LABEL_8:

  return dictionary;
}

- (CGRect)addPaddingToFrame:(CGRect)frame inView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  window = [view window];
  [window keyboardLayoutGuideScrollViewOffset];
  v10 = v9;

  if (v10 <= 0.0)
  {
    v11 = y;
  }

  else
  {
    v11 = y - v10;
  }

  if (v10 <= 0.0)
  {
    v12 = height;
  }

  else
  {
    v12 = height + v10;
  }

  v13 = x;
  v14 = width;
  result.size.height = v12;
  result.size.width = v14;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (void)_updateTrackingCoordinatorForScrollTransitionWithSize:(CGSize)size hostFrame:(CGRect)frame duration:(double)duration interactive:(BOOL)interactive
{
  height = size.height;
  if (!interactive)
  {
    v17 = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    TUIKeyboardStateClass_0 = getTUIKeyboardStateClass_0();
    if (height > 0.0)
    {
      [TUIKeyboardStateClass_0 onscreenState];
    }

    else
    {
      [TUIKeyboardStateClass_0 offscreenState];
    }
    v37 = ;
    inputViewSet = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    inputAccessoryView = [inputViewSet inputAccessoryView];

    if (inputAccessoryView)
    {
      [v37 setHasAccessoryView:1];
      inputViewSet2 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      inputAccessoryView2 = [inputViewSet2 inputAccessoryView];
      [inputAccessoryView2 bounds];
      v27 = v26;

      v28 = v37;
      if (v17 >= v27)
      {
        y = y + v27;
        v17 = v17 - v27;
      }
    }

    else
    {
      v28 = v37;
    }

    [v28 setIsInteractive:0];
    defaultInfo = [getTUIKeyboardAnimationInfoClass() defaultInfo];
    [defaultInfo setDuration:duration];
    if (height > 0.0)
    {
      v31 = [(UIScrollView *)self->_scrollViewForTransition keyboardDismissMode]- 1;
      if (v31 > 3)
      {
        v32 = 0;
      }

      else
      {
        v32 = qword_18A680398[v31];
      }

      v33 = [(UIScrollToDismissSupport *)self cancelNotificationsForMode:v32];
      userInfo2 = v33;
      if (v33)
      {
        [v33 addKeyboardNotificationDebuggingInfo:@"completeTransition: cancel (scrollToDismiss)"];
        userInfo = [userInfo2 userInfo];
        [defaultInfo setNotificationInfo:userInfo];
      }
    }

    else
    {
      scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
      if (!scrollViewNotificationInfo)
      {
LABEL_22:
        v35 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        keyboardTrackingProvider = [v35 keyboardTrackingProvider];
        [keyboardTrackingProvider keyboardWillChangeState:v37 endFrame:defaultInfo animationInfo:{x, y, width, v17}];

        goto LABEL_23;
      }

      userInfo2 = [(UIInputViewSetNotificationInfo *)scrollViewNotificationInfo userInfo];
      [defaultInfo setNotificationInfo:userInfo2];
    }

    goto LABEL_22;
  }

  v8 = size.width;
  v9 = [(UISplitKeyboardSource *)self->super._controller inputViewSet:size.width];
  inputAccessoryView3 = [v9 inputAccessoryView];

  if (inputAccessoryView3)
  {
    inputViewSet3 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    inputAccessoryView4 = [inputViewSet3 inputAccessoryView];
    [inputAccessoryView4 bounds];
    v14 = v13;

    height = height - v14;
  }

  v37 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  defaultInfo = [v37 keyboardTrackingProvider];
  [defaultInfo interactiveSizeUpdate:{v8, height}];
LABEL_23:
}

- (void)_updateKeyboardLayoutGuideForScrollTransitionWithSize:(CGSize)size hostFrame:(CGRect)frame duration:(double)duration
{
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = size.height;
  width = size.width;
  if (![UIInputWindowController useMetronomeTracking:size.width])
  {
    v12 = [UIInputViewAnimationStyle animationStyleAnimated:1 duration:duration];
    v13 = v12;
    if (v9 > 0.0)
    {
      [v12 setExtraOptions:0];
    }

    v14 = y + height - v9;
    v51[0] = MEMORY[0x1E69E9820];
    durationCopy = duration;
    v51[1] = 3221225472;
    v51[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke;
    v51[3] = &unk_1E7117A20;
    v53 = x;
    v54 = v14;
    v55 = width;
    v56 = v9;
    durationCopy2 = duration;
    v15 = v13;
    v52 = v15;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v51];
    containerView = [(UISplitKeyboardSource *)self->super._controller containerView];
    _window = [containerView _window];

    [_window bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    screen = [_window screen];
    [screen bounds];
    v61.origin.x = v27;
    v61.origin.y = v28;
    v61.size.width = v29;
    v61.size.height = v30;
    v58.origin.x = v19;
    v58.origin.y = v21;
    v58.size.width = v23;
    v58.size.height = v25;
    v31 = CGRectEqualToRect(v58, v61);

    if (!v31)
    {
      screen2 = [_window screen];
      coordinateSpace = [screen2 coordinateSpace];
      windowScene = [_window windowScene];
      _coordinateSpace = [windowScene _coordinateSpace];
      [coordinateSpace convertRect:_coordinateSpace toCoordinateSpace:{x, v14, width, v9}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      [_window bounds];
      v62.origin.x = v37;
      v62.origin.y = v39;
      v62.size.width = v41;
      v62.size.height = v43;
      v60 = CGRectIntersection(v59, v62);
      x = v60.origin.x;
      v14 = v60.origin.y;
      width = v60.size.width;
      v9 = v60.size.height;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_3;
    aBlock[3] = &__block_descriptor_64_e5_v8__0l;
    *&aBlock[4] = x;
    *&aBlock[5] = v14;
    *&aBlock[6] = width;
    *&aBlock[7] = v9;
    v44 = _Block_copy(aBlock);
    v45 = v44;
    if (durationCopy <= 0.0)
    {
      (*(v44 + 2))(v44);
    }

    else
    {
      extraOptions = [v15 extraOptions];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_5;
      v48[3] = &unk_1E70F0F78;
      v49 = v45;
      [UIView animateWithDuration:extraOptions delay:v48 options:0 animations:durationCopy completion:0.0];
    }
  }
}

void __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTrackingKeyboard])
  {
    v4 = [v3 screen];
    v5 = [v4 coordinateSpace];
    v6 = [v3 windowScene];
    v7 = [v6 _coordinateSpace];
    [v5 convertRect:v7 toCoordinateSpace:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v3 frame];
    v29.origin.x = v16;
    v29.origin.y = v17;
    v29.size.width = v18;
    v29.size.height = v19;
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v28 = CGRectIntersection(v27, v29);
    width = v28.size.width;
    height = v28.size.height;
    v22 = [v3 _primaryKeyboardTrackingGuide];
    LODWORD(v5) = [v22 changeSizingConstants:{width, height}];

    if (v5)
    {
      v23 = *(a1 + 72);
      if (v23 > 0.0)
      {
        v24 = [*(a1 + 32) extraOptions];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_2;
        v25[3] = &unk_1E70F3590;
        v26 = v3;
        [UIView animateWithDuration:v24 delay:v25 options:0 animations:v23 completion:0.0];
      }
    }
  }
}

uint64_t __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_4;
  v3[3] = &__block_descriptor_64_e33_v16__0__UIKeyboardSceneDelegate_8l;
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return [UIKeyboardSceneDelegate performOnControllers:v3];
}

@end