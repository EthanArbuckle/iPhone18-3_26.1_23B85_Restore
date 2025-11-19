@interface UIInputViewAnimationControllerViewControllerContext
+ (id)contextWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5 transitionContext:(id)a6;
- (CGRect)fromKeyboardFrame;
- (CGRect)toKeyboardFrame;
- (UIInputViewAnimationControllerViewControllerContext)initWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5 transitionContext:(id)a6;
- (void)dealloc;
@end

@implementation UIInputViewAnimationControllerViewControllerContext

- (UIInputViewAnimationControllerViewControllerContext)initWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5 transitionContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v86.receiver = self;
  v86.super_class = UIInputViewAnimationControllerViewControllerContext;
  v15 = [(UIInputViewAnimationControllerViewControllerContext *)&v86 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_host, a3);
    objc_storeStrong(&v16->_context, a6);
    v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([v12 showsInputViews])
    {
      v82 = v14;
      [v11 updateToPlacement:v12 withNormalAnimationsAndNotifications:0];
      v18 = [v11 transitioningView];
      v19 = [v11 inputViewSnapshotOfView:v18 afterScreenUpdates:0];

      v20 = [v11 viewForTransitionScreenSnapshot];
      v21 = [v11 transitioningView];
      [v20 convertPoint:v21 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v23 = v22;
      v25 = v24;

      v26 = -v23;
      v27 = -v25;
      [v19 frame];
      [v19 setFrame:{v26, v27}];
      v28 = [UIView alloc];
      v29 = [v11 viewForTransitionScreenSnapshot];
      [v29 frame];
      v30 = [(UIView *)v28 initWithFrame:?];

      [(UIView *)v30 setClipsToBounds:1];
      [(UIView *)v30 addSubview:v19];
      v31 = +[UIKeyboardImpl activeInstance];
      v32 = [v31 keyboardWindowSnapshot];

      if (v32)
      {
        if ([v17 preservingInputViews])
        {
          v33 = [v31 keyboardWindowSnapshot];
          [v17 setPreservedKeyboardWindowSnapshot:v33];
        }

        [v19 frame];
        v35 = v34;
        v37 = v36;
        v38 = [v31 keyboardWindowSnapshot];
        [v38 setFrame:{v26, v27, v35, v37}];

        v39 = [v31 keyboardWindowSnapshot];
        [(UIView *)v30 addSubview:v39];

        [v31 clearKeyboardWindowSnapshot];
        [UIKeyboard forceKeyboardAlpha:0.0];
        [v11 setKeyboardWindowSnapshotOn:1];
      }

      v40 = [UIView alloc];
      v41 = [v11 transitioningView];
      [v41 frame];
      v42 = [(UIView *)v40 initWithFrame:?];
      from = v16->_from;
      v16->_from = v42;

      [(UIView *)v16->_from setUserInteractionEnabled:0];
      [(UIView *)v16->_from addSubview:v30];
      [v11 transitioningFrame];
      v16->_fromRect.origin.x = v44;
      v16->_fromRect.origin.y = v45;
      v16->_fromRect.size.width = v46;
      v16->_fromRect.size.height = v47;
      v48 = [v11 transitioningView];
      v49 = [v48 superview];
      [v49 addSubview:v16->_from];

      v14 = v82;
    }

    if ([v13 showsInputViews])
    {
      if (+[UIKeyboard usesInputSystemUI]&& !v16->_preservedInputViewSet)
      {
        v50 = [v17 preservedKeyboardWindowSnapshot];
        if (v50)
        {
        }

        else
        {
          v51 = +[UIKeyboardInputModeController sharedInputModeController];
          v52 = [v51 currentInputMode];
          v53 = [v52 isExtensionInputMode];

          if ((v53 & 1) == 0)
          {
            v54 = [(UIInputViewAnimationHost *)v16->_host inputViewSet];
            preservedInputViewSet = v16->_preservedInputViewSet;
            v16->_preservedInputViewSet = v54;

            v56 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            [v56 loadLocalKeyboardForHost:v16->_host];

            [UIKeyboard forceKeyboardAlpha:0.0];
          }
        }
      }

      if ([v17 restoringInputViews])
      {
        [v17 setTakingSnapshot:1];
      }

      v57 = [v17 preservedKeyboardWindowSnapshot];

      if (v57)
      {
        v58 = [v17 preservedKeyboardWindowSnapshot];
        to = v16->_to;
        v16->_to = v58;

        [v17 setPreservedKeyboardWindowSnapshot:0];
      }

      else if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v60 = objc_claimAutoreleasedReturnValue(), [v60 currentInputMode], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "isExtensionInputMode"), v61, v60, (v62 & 1) == 0))
      {
        [v11 updateToPlacement:v13 withNormalAnimationsAndNotifications:0];
        v63 = [v11 transitioningView];
        v64 = [UIKBViewTreeSnapshotter snapshotterForKeyboardView:v63 afterScreenUpdates:1];
        kbSnapshotter = v16->_kbSnapshotter;
        v16->_kbSnapshotter = v64;

        v66 = [(UIKBViewTreeSnapshotter *)v16->_kbSnapshotter snapshotView];
        v67 = v16->_to;
        v16->_to = v66;
      }

      [v11 transitioningFrame];
      v16->_toRect.origin.x = v68;
      v16->_toRect.origin.y = v69;
      v16->_toRect.size.width = v70;
      v16->_toRect.size.height = v71;
      v72 = [v11 transitioningView];
      v73 = [v72 superview];
      [v73 addSubview:v16->_to];

      if (([MEMORY[0x1E6979518] currentState] & 8) != 0)
      {
        v74 = [(UIView *)v16->_to window];
        v75 = v74;
        if (v74 && [v74 _isHostedInAnotherProcess])
        {
          v76 = v16->_to;
          v77 = objc_initWeak(&location, v76);
          [(UIView *)v76 setAlpha:0.0];

          Current = CFRunLoopGetCurrent();
          v79 = *MEMORY[0x1E695E8D0];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __114__UIInputViewAnimationControllerViewControllerContext_initWithHost_startPlacement_endPlacement_transitionContext___block_invoke;
          block[3] = &unk_1E70F5A28;
          objc_copyWeak(&v84, &location);
          CFRunLoopPerformBlock(Current, v79, block);
          v80 = CFRunLoopGetCurrent();
          CFRunLoopWakeUp(v80);
          objc_destroyWeak(&v84);
          objc_destroyWeak(&location);
        }
      }
    }

    [v11 setInputViewsHidden:1];
  }

  return v16;
}

void __114__UIInputViewAnimationControllerViewControllerContext_initWithHost_startPlacement_endPlacement_transitionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:1.0];
}

- (void)dealloc
{
  preservedInputViewSet = self->_preservedInputViewSet;
  if (preservedInputViewSet)
  {
    v4 = [UIInputViewSet inputSetWithOriginalInputSet:preservedInputViewSet duplicateInputView:1 duplicateInputAccessoryView:1 duplicateInputAssistantView:0];
    [(UIInputViewAnimationHost *)self->_host changeToInputViewSet:v4];
    v5 = self->_preservedInputViewSet;
    self->_preservedInputViewSet = 0;
  }

  [UIKeyboard forceKeyboardAlpha:1.0];
  [(UIInputViewAnimationHost *)self->_host setInputViewsHidden:0];
  [(UIInputViewAnimationHost *)self->_host setKeyboardWindowSnapshotOn:0];
  [(UIView *)self->_from removeFromSuperview];
  [(UIView *)self->_to removeFromSuperview];
  v6.receiver = self;
  v6.super_class = UIInputViewAnimationControllerViewControllerContext;
  [(UIInputViewAnimationControllerViewControllerContext *)&v6 dealloc];
}

+ (id)contextWithHost:(id)a3 startPlacement:(id)a4 endPlacement:(id)a5 transitionContext:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[UIInputViewAnimationControllerViewControllerContext alloc] initWithHost:v12 startPlacement:v11 endPlacement:v10 transitionContext:v9];

  return v13;
}

- (CGRect)fromKeyboardFrame
{
  x = self->_fromRect.origin.x;
  y = self->_fromRect.origin.y;
  width = self->_fromRect.size.width;
  height = self->_fromRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)toKeyboardFrame
{
  x = self->_toRect.origin.x;
  y = self->_toRect.origin.y;
  width = self->_toRect.size.width;
  height = self->_toRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end