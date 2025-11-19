@interface _UIModernPopoverAnimationController
- (CGPoint)_anchorPointForArrowDirection:(unint64_t)a3 arrowOfset:(double)a4 popoverSize:(CGSize)a5;
- (CGPoint)_arrowPointForPopoverSize:(CGSize)a3 arrowOffset:(double)a4 arrowDirection:(unint64_t)a5;
- (UIPopoverPresentationController)popoverPresentationController;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation _UIModernPopoverAnimationController

- (double)transitionDuration:(id)a3
{
  v4 = [(_UIModernPopoverAnimationController *)self popoverPresentationController];
  v5 = [v4 _shouldUseNewPopoverAnimations];

  v6 = [(_UIModernPopoverAnimationController *)self isPresenting];
  result = 0.51566;
  if (v6)
  {
    result = 0.4937;
  }

  v8 = 0.35;
  if (v6)
  {
    v8 = 0.0;
  }

  if (!v5)
  {
    return v8;
  }

  return result;
}

- (CGPoint)_anchorPointForArrowDirection:(unint64_t)a3 arrowOfset:(double)a4 popoverSize:(CGSize)a5
{
  width = a5.width;
  v7 = 0.5;
  v8 = 0.5;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a5.height > 0.0)
      {
        v8 = a4 / a5.height + 0.5;
        v7 = 0.0;
      }
    }

    else if (a3 == 8 && a5.height > 0.0)
    {
      v8 = a4 / a5.height + 0.5;
      v7 = 1.0;
    }
  }

  else if (a3 == 1)
  {
    if (width > 0.0)
    {
      v7 = a4 / width + 0.5;
      v8 = 0.0;
    }
  }

  else if (a3 == 2 && width > 0.0)
  {
    v7 = a4 / width + 0.5;
    v8 = 1.0;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)_arrowPointForPopoverSize:(CGSize)a3 arrowOffset:(double)a4 arrowDirection:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v7 = 0.0;
  v8 = 0.0;
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v8 = height * 0.5 + a4;
    }

    else if (a5 == 8)
    {
      v8 = height * 0.5 + a4;
      v7 = width;
    }
  }

  else if (a5 == 1)
  {
    v7 = width * 0.5 + a4;
  }

  else if (a5 == 2)
  {
    v7 = width * 0.5 + a4;
    v8 = height;
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (void)animateTransition:(id)a3
{
  v5 = a3;
  v6 = [v5 viewForKey:@"UITransitionContextFromView"];
  v7 = [(_UIModernPopoverAnimationController *)self popoverPresentationController];
  v8 = [v7 _shouldUseNewPopoverAnimations];

  if (v8)
  {
    v9 = _AXSReduceMotionEnabled();
    v40 = v9 != 0;
    v10 = [v5 viewControllerForKey:@"UITransitionContextToViewController"];
    v11 = [v5 viewControllerForKey:@"UITransitionContextFromViewController"];
    if ([(_UIModernPopoverAnimationController *)self isPresenting])
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(UIViewControllerBuiltinTransitionViewAnimator *)v12 popoverPresentationController];
    v14 = [v5 viewForKey:@"UITransitionContextToView"];
    if ([(_UIModernPopoverAnimationController *)self isPresenting])
    {
      v15 = v14;
    }

    else
    {
      v15 = v6;
    }

    v16 = v15;
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = [MEMORY[0x1E696AAA8] currentHandler];
        [v39 handleFailureInMethod:a2 object:self file:@"_UIModernPopoverAnimationController.m" lineNumber:111 description:{@"Expected a popover view, found %@", v16}];
      }

      v38 = v11;
      v17 = v16;
      v18 = [v5 containerView];
      if ([(_UIModernPopoverAnimationController *)self isPresenting])
      {
        [v18 addSubview:v14];
        [v17 setChromeHidden:1];
        [v5 finalFrameForViewController:v10];
        [v17 _setFrameIgnoringLayerTransform:?];
        [v17 layoutIfNeeded];
      }

      v37 = v10;
      if (v9)
      {
        v19 = v18;
        v20 = *MEMORY[0x1E695F058];
        v21 = *(MEMORY[0x1E695F058] + 8);
        v22 = *(MEMORY[0x1E695F058] + 16);
        v23 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        if ([(_UIModernPopoverAnimationController *)self isPresenting])
        {
          [v17 _frameIgnoringLayerTransform];
        }

        else
        {
          [v5 initialFrameForViewController:v38];
        }

        v20 = v26;
        v21 = v27;
        v22 = v28;
        v23 = v29;
        [v17 setContentSize:{v28, v29 + 40.0}];
        [v17 setAnimationOvershootHeight:40.0];
        if ([(_UIModernPopoverAnimationController *)self isPresenting])
        {
          v30 = 100.0;
        }

        else
        {
          v30 = v23;
        }

        [v17 _setFrameIgnoringLayerTransform:{v20, v21, v22, v30}];
        [v17 layoutIfNeeded];
        [v17 arrowOffset];
        -[_UIModernPopoverAnimationController _arrowPointForPopoverSize:arrowOffset:arrowDirection:](self, "_arrowPointForPopoverSize:arrowOffset:arrowDirection:", [v17 arrowDirection], v22, v23, v31);
        v32 = [v17 arrowDirection];
        [v17 arrowOffset];
        [_UIModernPopoverAnimationController _anchorPointForArrowDirection:"_anchorPointForArrowDirection:arrowOfset:popoverSize:" arrowOfset:v32 popoverSize:?];
        [v17 setAnchorPoint:?];
        memset(&v54, 0, sizeof(v54));
        if ([(_UIModernPopoverAnimationController *)self isPresenting])
        {
          CGAffineTransformMakeScale(&v54, 0.01, 0.01);
        }

        else
        {
          v33 = *(MEMORY[0x1E695EFD0] + 16);
          *&v54.a = *MEMORY[0x1E695EFD0];
          *&v54.c = v33;
          *&v54.tx = *(MEMORY[0x1E695EFD0] + 32);
        }

        v53 = v54;
        [v17 setTransform:&v53];
        if (![(_UIModernPopoverAnimationController *)self isPresenting])
        {
          [v17 _setFrameIgnoringLayerTransform:{v20, v21, v22, v23}];
          [v17 layoutIfNeeded];
        }

        v19 = v18;
      }

      [(_UIModernPopoverAnimationController *)self transitionDuration:v5];
      v35 = v34;
      if ([(_UIModernPopoverAnimationController *)self isPresenting])
      {
        v36 = 0.8;
      }

      else
      {
        v36 = 0.85;
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __57___UIModernPopoverAnimationController_animateTransition___block_invoke_3;
      v46[3] = &unk_1E70F89D0;
      v52 = v40;
      v46[4] = self;
      v48 = v20;
      v49 = v21;
      v50 = v22;
      v51 = v23;
      v47 = v17;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __57___UIModernPopoverAnimationController_animateTransition___block_invoke_4;
      v41[3] = &unk_1E70F4688;
      v45 = v40;
      v42 = v47;
      v43 = self;
      v44 = v5;
      [UIView animateWithDuration:4 delay:v46 usingSpringWithDamping:v41 initialSpringVelocity:v35 options:0.0 animations:v36 completion:0.0];

      v10 = v37;
      v11 = v38;
    }

    else
    {
      [v5 completeTransition:{objc_msgSend(v5, "transitionWasCancelled") ^ 1}];
    }

    goto LABEL_36;
  }

  if ([(_UIModernPopoverAnimationController *)self isPresenting])
  {
    v10 = [[UIViewControllerBuiltinTransitionViewAnimator alloc] initWithTransition:0];
    [(UIViewControllerBuiltinTransitionViewAnimator *)v10 animateTransition:v5];
LABEL_36:

    goto LABEL_37;
  }

  [(_UIModernPopoverAnimationController *)self transitionDuration:v5];
  v25 = v24;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __57___UIModernPopoverAnimationController_animateTransition___block_invoke;
  v57[3] = &unk_1E70F3590;
  v58 = v6;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __57___UIModernPopoverAnimationController_animateTransition___block_invoke_2;
  v55[3] = &unk_1E70F5AC0;
  v56 = v5;
  [UIView animateWithDuration:0 delay:v57 options:v55 animations:v25 completion:0.0];

LABEL_37:
}

- (UIPopoverPresentationController)popoverPresentationController
{
  WeakRetained = objc_loadWeakRetained(&self->_popoverPresentationController);

  return WeakRetained;
}

@end