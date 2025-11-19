@interface UIScrollToDismissSupport
- (CGRect)addPaddingToFrame:(CGRect)a3 inView:(id)a4;
- (id)_infoForMatchMove;
- (id)cancelNotificationsForMode:(unint64_t)a3;
- (void)_updateKeyboardLayoutGuideForScrollTransitionWithSize:(CGSize)a3 hostFrame:(CGRect)a4 duration:(double)a5;
- (void)_updateTrackingCoordinatorForScrollTransitionWithSize:(CGSize)a3 hostFrame:(CGRect)a4 duration:(double)a5 interactive:(BOOL)a6;
- (void)completeKeyboardDismiss:(unint64_t)a3 withDuration:(double)a4;
- (void)completedPlacementFrom:(id)a3 to:(id)a4 forController:(id)a5;
- (void)finishScrollViewTransition;
- (void)finishScrollViewTransitionForController:(id)a3;
- (void)hideScrollViewHorizontalScrollIndicator:(BOOL)a3;
- (void)scrollView:(id)a3 didFinishPanGesture:(id)a4;
- (void)scrollView:(id)a3 didPanWithGesture:(id)a4;
- (void)setInterfaceAutorotationDisabled:(BOOL)a3 forController:(id)a4;
- (void)updateScrollViewContentInsetBottom:(double)a3;
@end

@implementation UIScrollToDismissSupport

- (void)updateScrollViewContentInsetBottom:(double)a3
{
  if ([(UIScrollView *)self->_scrollViewForTransition updateInsetBottomDuringKeyboardDismiss])
  {
    [(UIScrollView *)self->_scrollViewForTransition contentInset];
    scrollViewForTransition = self->_scrollViewForTransition;

    [(UIScrollView *)scrollViewForTransition setContentInset:?];
  }
}

- (void)hideScrollViewHorizontalScrollIndicator:(BOOL)a3
{
  v3 = a3;
  if (a3)
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

  [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:!v3];
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

- (void)setInterfaceAutorotationDisabled:(BOOL)a3 forController:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->super._controller == v6)
  {
    interfaceAutorotationDisabledAssertion = self->_interfaceAutorotationDisabledAssertion;
    if (interfaceAutorotationDisabledAssertion)
    {
      LODWORD(interfaceAutorotationDisabledAssertion) = [(BSSimpleAssertion *)interfaceAutorotationDisabledAssertion isValid];
    }

    if (!v4 || (interfaceAutorotationDisabledAssertion & 1) != 0)
    {
      if (!v4 && ((interfaceAutorotationDisabledAssertion ^ 1) & 1) == 0)
      {
        [(BSSimpleAssertion *)self->_interfaceAutorotationDisabledAssertion invalidate];
        v21 = self->_interfaceAutorotationDisabledAssertion;
        self->_interfaceAutorotationDisabledAssertion = 0;
      }
    }

    else
    {
      v8 = [(UIView *)self->_scrollViewForTransition window];
      v9 = v8;
      if (v8)
      {
        [v8 beginDisablingInterfaceAutorotation];
        v10 = 0x1E696A000uLL;
        v11 = MEMORY[0x1E696AEC0];
        v12 = self;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v11 stringWithFormat:@"<%@: %p>", v14, v12];

        if (v6)
        {
          v16 = MEMORY[0x1E696AEC0];
          v17 = v6;
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
        v23 = v12;
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

        v27 = [v11 stringWithFormat:@"Scroll to dismiss disabling autorotation for window on behalf of controller. scrollToDismiss=%@ controller=%@; window=%@", v15, v20, v26];;

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

- (void)finishScrollViewTransitionForController:(id)a3
{
  if (self->super._controller == a3)
  {
    [(UIScrollToDismissSupport *)self finishScrollViewTransition];
  }
}

- (void)completedPlacementFrom:(id)a3 to:(id)a4 forController:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (self->super._controller == v7)
  {
    v14 = v7;
    v9 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(UIScrollToDismissSupport *)self finishScrollViewTransition];
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v12 = [v11 responder];
      if ([v12 _requiresKeyboardWhenFirstResponder] && !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess"))
      {
        if (+[UIKeyboard usesInputSystemUI])
        {
          [v11 _setIgnoresPinning:1 allowImmediateReload:0];
        }

        [v12 resignFirstResponder];
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

- (id)cancelNotificationsForMode:(unint64_t)a3
{
  scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
  if (scrollViewNotificationInfo)
  {
    v4 = scrollViewNotificationInfo;
  }

  else
  {
    v4 = [(UISplitKeyboardSource *)self->super._controller constructNotificationInfoForScrollWithMode:a3];
  }

  v5 = v4;
  v6 = [(UIInputViewSetNotificationInfo *)v4 inverseInfo];

  return v6;
}

- (void)completeKeyboardDismiss:(unint64_t)a3 withDuration:(double)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  self->_scrollViewTransitionFinishing = 1;
  [(UISplitKeyboardSource *)self->super._controller positionConstraintConstant];
  v8 = [_UIInputViewSetPlacementDragToDismiss placementWithOffset:a3 & 1 dismissKeyboardOnly:v7];
  v9 = [(UISplitKeyboardSource *)self->super._controller placement];
  v10 = v9;
  if (a3)
  {
    v11 = [v9 accessoryViewWillAppear];
    v12 = off_1E70E9B28;
    if (v11)
    {
      v12 = off_1E70E9AF8;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_8;
    }

    v12 = off_1E70E9B28;
  }

  v13 = [(__objc2_class *)*v12 placement];

  v10 = v13;
LABEL_8:
  [(UIScrollToDismissSupport *)self hideScrollViewHorizontalScrollIndicator:1];
  v14 = MEMORY[0x1E695DF90];
  v29[0] = @"_UIScrollKeyboardPlacementFrom";
  v29[1] = @"_UIScrollKeyboardPlacementTo";
  v30[0] = v8;
  v30[1] = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v16 = [v14 dictionaryWithDictionary:v15];

  if (a4 != 0.0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v16 setObject:v17 forKey:@"_UIScrollKeyboardDuration"];
  }

  if (self->_scrollViewNotificationInfo && +[UIKeyboard usesInputSystemUI])
  {
    v18 = [(UIScrollToDismissSupport *)self _infoForMatchMove];
    [v16 addEntriesFromDictionary:v18];
  }

  v19 = +[UIInputWindowController useMetronomeTracking];
  v20 = MEMORY[0x1E695F060];
  v21 = MEMORY[0x1E695F058];
  if (v19)
  {
    [(UIScrollToDismissSupport *)self _updateTrackingCoordinatorForScrollTransitionWithSize:0 hostFrame:*MEMORY[0x1E695F060] duration:*(MEMORY[0x1E695F060] + 8) interactive:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), a4];
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
    [(UIScrollToDismissSupport *)self _updateKeyboardLayoutGuideForScrollTransitionWithSize:*v20 hostFrame:v20[1] duration:*v21, v21[1], v21[2], v21[3], a4];
  }
}

- (void)scrollView:(id)a3 didPanWithGesture:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[UIKeyboardImpl activeInstance];
  if ([v9 displaysCandidates])
  {
    v10 = [v9 candidateController];
    if (([v10 activeCandidateViewType] & 4) == 0)
    {
LABEL_5:

      goto LABEL_6;
    }

    v11 = [v8 state];

    if (v11 == 1)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      [v10 removeAutocorrectPromptAndCandidateList];
      goto LABEL_5;
    }
  }

LABEL_6:
  v12 = [(UISplitKeyboardSource *)self->super._controller placement];
  if (![v12 showsKeyboard] || -[UISplitKeyboardSource isChangingPlacement](self->super._controller, "isChangingPlacement"))
  {

    goto LABEL_9;
  }

  v13 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v14 = [v13 keyboardActive];

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = [v7 keyboardDismissMode];
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 == 4)
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
    if (v15 != 1)
    {
      if (v15 == 2)
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
  v18 = [(UISplitKeyboardSource *)self->super._controller placement];
  if (([v18 inputViewWillAppear] & 1) == 0)
  {

    goto LABEL_9;
  }

  v88 = v16;
  v19 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
  [v19 inputView];

  v20 = [v8 numberOfTouches];
  v21 = [(UISplitKeyboardSource *)self->super._controller view];
  if (v20)
  {
    [v8 locationOfTouch:0 inView:v21];
  }

  else
  {
    [v8 locationInView:v21];
  }

  v24 = v22;
  v25 = v23;

  if ([v8 state] == 1)
  {
    v26 = +[UIKeyboardImpl activeInstance];
    [v26 clearAnimations];

    v27 = +[UIKeyboardImpl activeInstance];
    [v27 removeTextChoicePromptAndAutocorrection];

    v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v29 = [v28 containerRootController];
    [v29 clearKeyboardSnapshot];

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
    v31 = [(UISplitKeyboardSource *)self->super._controller hostView];
    [v31 frame];
    [(UIScrollToDismissSupport *)self addPaddingToFrame:v7 inView:?];
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
          objc_storeStrong(&self->_scrollViewForTransition, a3);
          [(UISplitKeyboardSource *)self->super._controller setInterfaceAutorotationDisabled:1];
          [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo beginFrame];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v59 = v25;
          v61 = v60;
          [(UIScrollToDismissSupport *)self addPaddingToFrame:v7 inView:?];
          [(UIScrollToDismissSupport *)self updateScrollViewContentInsetBottom:v59 - CGRectGetMinY(v94)];
          self->_scrollViewTransitionPreviousPoint.x = v24;
          self->_scrollViewTransitionPreviousPoint.y = v59;
          v62 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
          v63 = [v62 inputAccessoryView];

          if (v63)
          {
            v64 = [MEMORY[0x1E696AD88] defaultCenter];
            [v64 postNotificationName:@"UITextSelectionWillInteractiveMove" object:0];
          }

          if ((v30 & 2) != 0)
          {
            [(UIScrollToDismissSupport *)self completeKeyboardDismiss:v30 withDuration:0.0];
            goto LABEL_9;
          }

          if (+[UIInputWindowController useMetronomeTracking])
          {
            v65 = [getTUIKeyboardStateClass_0() onscreenState];
            [v65 setIsInteractive:1];
            v66 = [getTUIKeyboardAnimationInfoClass() defaultInfo];
            [v66 setDuration:0.0];
            [v66 setShouldAnimate:0];
            v67 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
            v68 = [v67 inputAccessoryView];

            if (v68)
            {
              [v65 setHasAccessoryView:1];
              v69 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
              v70 = [v69 inputAccessoryView];
              [v70 bounds];
              v72 = v71;

              v56 = v56 + v72;
              v61 = v61 - v72;
            }

            v73 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v74 = [v73 keyboardTrackingProvider];
            [v74 keyboardWillChangeState:v65 endFrame:v66 animationInfo:{v54, v56, v58, v61}];

            v75 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            v76 = [v75 keyboardTrackingProvider];
            [v76 interactiveSizeUpdate:{v58, v61}];

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
    [(UIScrollToDismissSupport *)self addPaddingToFrame:v7 inView:?];
    v42 = v41;
    [(UIInputViewSetNotificationInfo *)self->_scrollViewNotificationInfo endFrame];
    v44 = v43;
    v46 = v45;
    [(UIScrollToDismissSupport *)self addPaddingToFrame:v7 inView:?];
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

    v79 = [(UIScrollToDismissSupport *)self _infoForMatchMove];
    [v78 addEntriesFromDictionary:v79];

    v80 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __57__UIScrollToDismissSupport_scrollView_didPanWithGesture___block_invoke;
    v90[3] = &unk_1E7116848;
    v65 = v78;
    v91 = v65;
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
      v83 = [MEMORY[0x1E696AD88] defaultCenter];
      [v83 postNotificationName:@"UIKeyboardPrivateInteractiveDismissalDidBeginNotification" object:0];
    }

    self->_scrollViewTransitionPreviousPoint.x = v89;
    self->_scrollViewTransitionPreviousPoint.y = v82;

    goto LABEL_62;
  }

LABEL_9:
}

- (void)scrollView:(id)a3 didFinishPanGesture:(id)a4
{
  v48[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!self->_scrollViewTransitionFinishing && self->_scrollViewForTransition)
  {
    v8 = [v6 keyboardDismissMode];
    if ((v8 - 1) > 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_18A680398[v8 - 1];
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
    v24 = [v7 numberOfTouches];
    v25 = [(UISplitKeyboardSource *)self->super._controller view];
    if (v24)
    {
      [v7 locationOfTouch:0 inView:v25];
    }

    else
    {
      [v7 locationInView:v25];
    }

    v27 = v26;

    v28 = fmin(fmax((v27 - v13) / (v19 - v13), 0.0), 1.0);
    v29 = [(UISplitKeyboardSource *)self->super._controller view];
    [v7 velocityInView:v29];
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
        v39 = [(UIScrollToDismissSupport *)self _infoForMatchMove];
        [v38 addEntriesFromDictionary:v39];
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
  v3 = [MEMORY[0x1E695DF20] dictionary];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = [(UISplitKeyboardSource *)self->super._controller scrollTrackingView];
    v5 = [v4 layer];
    v6 = [v5 context];
    v7 = [v6 contextId];

    v8 = [v4 layer];
    RenderId = CALayerGetRenderId();

    v10 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    v11 = [v10 inputAccessoryView];
    if (v11)
    {
      v12 = v11;
      [v4 bounds];
      v14 = v13;

      v15 = 0.0;
      if (v14 <= 0.0)
      {
LABEL_7:
        v24[0] = @"_UIKeyboardContextID";
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        v25[0] = v19;
        v24[1] = @"_UIKeyboardLayerID";
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:RenderId];
        v25[1] = v20;
        v24[2] = @"_UIScrollKeyboardIAVOffset";
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
        v25[2] = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

        v3 = v22;
        goto LABEL_8;
      }

      v10 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      [v10 inputAccessoryViewBounds];
      v17 = v16;
      [v4 bounds];
      v15 = v17 / v18;
    }

    else
    {
      v15 = 0.0;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v3;
}

- (CGRect)addPaddingToFrame:(CGRect)a3 inView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [a4 window];
  [v8 keyboardLayoutGuideScrollViewOffset];
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

- (void)_updateTrackingCoordinatorForScrollTransitionWithSize:(CGSize)a3 hostFrame:(CGRect)a4 duration:(double)a5 interactive:(BOOL)a6
{
  height = a3.height;
  if (!a6)
  {
    v17 = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
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
    v22 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    v23 = [v22 inputAccessoryView];

    if (v23)
    {
      [v37 setHasAccessoryView:1];
      v24 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
      v25 = [v24 inputAccessoryView];
      [v25 bounds];
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
    v15 = [getTUIKeyboardAnimationInfoClass() defaultInfo];
    [v15 setDuration:a5];
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
      v30 = v33;
      if (v33)
      {
        [v33 addKeyboardNotificationDebuggingInfo:@"completeTransition: cancel (scrollToDismiss)"];
        v34 = [v30 userInfo];
        [v15 setNotificationInfo:v34];
      }
    }

    else
    {
      scrollViewNotificationInfo = self->_scrollViewNotificationInfo;
      if (!scrollViewNotificationInfo)
      {
LABEL_22:
        v35 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v36 = [v35 keyboardTrackingProvider];
        [v36 keyboardWillChangeState:v37 endFrame:v15 animationInfo:{x, y, width, v17}];

        goto LABEL_23;
      }

      v30 = [(UIInputViewSetNotificationInfo *)scrollViewNotificationInfo userInfo];
      [v15 setNotificationInfo:v30];
    }

    goto LABEL_22;
  }

  v8 = a3.width;
  v9 = [(UISplitKeyboardSource *)self->super._controller inputViewSet:a3.width];
  v10 = [v9 inputAccessoryView];

  if (v10)
  {
    v11 = [(UISplitKeyboardSource *)self->super._controller inputViewSet];
    v12 = [v11 inputAccessoryView];
    [v12 bounds];
    v14 = v13;

    height = height - v14;
  }

  v37 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v15 = [v37 keyboardTrackingProvider];
  [v15 interactiveSizeUpdate:{v8, height}];
LABEL_23:
}

- (void)_updateKeyboardLayoutGuideForScrollTransitionWithSize:(CGSize)a3 hostFrame:(CGRect)a4 duration:(double)a5
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.height;
  width = a3.width;
  if (![UIInputWindowController useMetronomeTracking:a3.width])
  {
    v12 = [UIInputViewAnimationStyle animationStyleAnimated:1 duration:a5];
    v13 = v12;
    if (v9 > 0.0)
    {
      [v12 setExtraOptions:0];
    }

    v14 = y + height - v9;
    v51[0] = MEMORY[0x1E69E9820];
    v47 = a5;
    v51[1] = 3221225472;
    v51[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke;
    v51[3] = &unk_1E7117A20;
    v53 = x;
    v54 = v14;
    v55 = width;
    v56 = v9;
    v57 = a5;
    v15 = v13;
    v52 = v15;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v51];
    v16 = [(UISplitKeyboardSource *)self->super._controller containerView];
    v17 = [v16 _window];

    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [v17 screen];
    [v26 bounds];
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
      v32 = [v17 screen];
      v33 = [v32 coordinateSpace];
      v34 = [v17 windowScene];
      v35 = [v34 _coordinateSpace];
      [v33 convertRect:v35 toCoordinateSpace:{x, v14, width, v9}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      [v17 bounds];
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
    if (v47 <= 0.0)
    {
      (*(v44 + 2))(v44);
    }

    else
    {
      v46 = [v15 extraOptions];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __101__UIScrollToDismissSupport__updateKeyboardLayoutGuideForScrollTransitionWithSize_hostFrame_duration___block_invoke_5;
      v48[3] = &unk_1E70F0F78;
      v49 = v45;
      [UIView animateWithDuration:v46 delay:v48 options:0 animations:v47 completion:0.0];
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