@interface UIInputViewAnimationControllerViewControllerContext
+ (id)contextWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement transitionContext:(id)context;
- (CGRect)fromKeyboardFrame;
- (CGRect)toKeyboardFrame;
- (UIInputViewAnimationControllerViewControllerContext)initWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement transitionContext:(id)context;
- (void)dealloc;
@end

@implementation UIInputViewAnimationControllerViewControllerContext

- (UIInputViewAnimationControllerViewControllerContext)initWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement transitionContext:(id)context
{
  hostCopy = host;
  placementCopy = placement;
  endPlacementCopy = endPlacement;
  contextCopy = context;
  v86.receiver = self;
  v86.super_class = UIInputViewAnimationControllerViewControllerContext;
  v15 = [(UIInputViewAnimationControllerViewControllerContext *)&v86 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_host, host);
    objc_storeStrong(&v16->_context, context);
    v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    if ([placementCopy showsInputViews])
    {
      v82 = contextCopy;
      [hostCopy updateToPlacement:placementCopy withNormalAnimationsAndNotifications:0];
      transitioningView = [hostCopy transitioningView];
      v19 = [hostCopy inputViewSnapshotOfView:transitioningView afterScreenUpdates:0];

      viewForTransitionScreenSnapshot = [hostCopy viewForTransitionScreenSnapshot];
      transitioningView2 = [hostCopy transitioningView];
      [viewForTransitionScreenSnapshot convertPoint:transitioningView2 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v23 = v22;
      v25 = v24;

      v26 = -v23;
      v27 = -v25;
      [v19 frame];
      [v19 setFrame:{v26, v27}];
      v28 = [UIView alloc];
      viewForTransitionScreenSnapshot2 = [hostCopy viewForTransitionScreenSnapshot];
      [viewForTransitionScreenSnapshot2 frame];
      v30 = [(UIView *)v28 initWithFrame:?];

      [(UIView *)v30 setClipsToBounds:1];
      [(UIView *)v30 addSubview:v19];
      v31 = +[UIKeyboardImpl activeInstance];
      keyboardWindowSnapshot = [v31 keyboardWindowSnapshot];

      if (keyboardWindowSnapshot)
      {
        if ([v17 preservingInputViews])
        {
          keyboardWindowSnapshot2 = [v31 keyboardWindowSnapshot];
          [v17 setPreservedKeyboardWindowSnapshot:keyboardWindowSnapshot2];
        }

        [v19 frame];
        v35 = v34;
        v37 = v36;
        keyboardWindowSnapshot3 = [v31 keyboardWindowSnapshot];
        [keyboardWindowSnapshot3 setFrame:{v26, v27, v35, v37}];

        keyboardWindowSnapshot4 = [v31 keyboardWindowSnapshot];
        [(UIView *)v30 addSubview:keyboardWindowSnapshot4];

        [v31 clearKeyboardWindowSnapshot];
        [UIKeyboard forceKeyboardAlpha:0.0];
        [hostCopy setKeyboardWindowSnapshotOn:1];
      }

      v40 = [UIView alloc];
      transitioningView3 = [hostCopy transitioningView];
      [transitioningView3 frame];
      v42 = [(UIView *)v40 initWithFrame:?];
      from = v16->_from;
      v16->_from = v42;

      [(UIView *)v16->_from setUserInteractionEnabled:0];
      [(UIView *)v16->_from addSubview:v30];
      [hostCopy transitioningFrame];
      v16->_fromRect.origin.x = v44;
      v16->_fromRect.origin.y = v45;
      v16->_fromRect.size.width = v46;
      v16->_fromRect.size.height = v47;
      transitioningView4 = [hostCopy transitioningView];
      superview = [transitioningView4 superview];
      [superview addSubview:v16->_from];

      contextCopy = v82;
    }

    if ([endPlacementCopy showsInputViews])
    {
      if (+[UIKeyboard usesInputSystemUI]&& !v16->_preservedInputViewSet)
      {
        preservedKeyboardWindowSnapshot = [v17 preservedKeyboardWindowSnapshot];
        if (preservedKeyboardWindowSnapshot)
        {
        }

        else
        {
          v51 = +[UIKeyboardInputModeController sharedInputModeController];
          currentInputMode = [v51 currentInputMode];
          isExtensionInputMode = [currentInputMode isExtensionInputMode];

          if ((isExtensionInputMode & 1) == 0)
          {
            inputViewSet = [(UIInputViewAnimationHost *)v16->_host inputViewSet];
            preservedInputViewSet = v16->_preservedInputViewSet;
            v16->_preservedInputViewSet = inputViewSet;

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

      preservedKeyboardWindowSnapshot2 = [v17 preservedKeyboardWindowSnapshot];

      if (preservedKeyboardWindowSnapshot2)
      {
        preservedKeyboardWindowSnapshot3 = [v17 preservedKeyboardWindowSnapshot];
        to = v16->_to;
        v16->_to = preservedKeyboardWindowSnapshot3;

        [v17 setPreservedKeyboardWindowSnapshot:0];
      }

      else if (!+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || (+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController, "sharedInputModeController"), v60 = objc_claimAutoreleasedReturnValue(), [v60 currentInputMode], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "isExtensionInputMode"), v61, v60, (v62 & 1) == 0))
      {
        [hostCopy updateToPlacement:endPlacementCopy withNormalAnimationsAndNotifications:0];
        transitioningView5 = [hostCopy transitioningView];
        v64 = [UIKBViewTreeSnapshotter snapshotterForKeyboardView:transitioningView5 afterScreenUpdates:1];
        kbSnapshotter = v16->_kbSnapshotter;
        v16->_kbSnapshotter = v64;

        snapshotView = [(UIKBViewTreeSnapshotter *)v16->_kbSnapshotter snapshotView];
        v67 = v16->_to;
        v16->_to = snapshotView;
      }

      [hostCopy transitioningFrame];
      v16->_toRect.origin.x = v68;
      v16->_toRect.origin.y = v69;
      v16->_toRect.size.width = v70;
      v16->_toRect.size.height = v71;
      transitioningView6 = [hostCopy transitioningView];
      superview2 = [transitioningView6 superview];
      [superview2 addSubview:v16->_to];

      if (([MEMORY[0x1E6979518] currentState] & 8) != 0)
      {
        window = [(UIView *)v16->_to window];
        v75 = window;
        if (window && [window _isHostedInAnotherProcess])
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

    [hostCopy setInputViewsHidden:1];
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

+ (id)contextWithHost:(id)host startPlacement:(id)placement endPlacement:(id)endPlacement transitionContext:(id)context
{
  contextCopy = context;
  endPlacementCopy = endPlacement;
  placementCopy = placement;
  hostCopy = host;
  v13 = [[UIInputViewAnimationControllerViewControllerContext alloc] initWithHost:hostCopy startPlacement:placementCopy endPlacement:endPlacementCopy transitionContext:contextCopy];

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