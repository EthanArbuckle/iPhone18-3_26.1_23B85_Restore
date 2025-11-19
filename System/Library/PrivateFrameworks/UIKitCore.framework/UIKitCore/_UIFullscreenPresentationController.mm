@interface _UIFullscreenPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (void)_adjustOrientationIfNecessaryInWindow:(id)a3 forViewController:(id)a4 preservingViewController:(id)a5;
- (void)_applyCounterRotationToView:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 withBounds:(CGRect)a6;
- (void)_placeCounterRotationViewWithView:(id)a3 inWindow:(id)a4 fromOrientation:(int64_t)a5 toOrientation:(int64_t)a6 force:(BOOL)a7;
- (void)_prepareForMixedOrientationTransitionIfNecessaryInWindow:(id)a3 fromViewController:(id)a4 toViewController:(id)a5;
- (void)_removeCounterRotationIfApplied;
- (void)_setPresentedViewController:(id)a3;
- (void)_transitionDidEnd:(BOOL)a3 isDismissal:(BOOL)a4;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
@end

@implementation _UIFullscreenPresentationController

- (void)dealloc
{
  [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
  v3.receiver = self;
  v3.super_class = _UIFullscreenPresentationController;
  [(UIPresentationController *)&v3 dealloc];
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = [(UIPresentationController *)self containerView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_adjustOrientationIfNecessaryInWindow:(id)a3 forViewController:(id)a4 preservingViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UIPresentationController *)self state];
  if (v11 == 1)
  {
    self->_originalOrientation = [v8 interfaceOrientation];
  }

  self->_disableAnimatedReenablingOfAutorotation = 0;
  if ([v8 _isWindowServerHostingManaged] && objc_msgSend(v8, "autorotates"))
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = [UIApp _expectedViewOrientation];
    if (v10 && v11 == 1)
    {
      v12 = v35[3];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke;
      v33[3] = &unk_1E7101BE8;
      v33[4] = &v34;
      [(UIViewController *)v10 __withSupportedInterfaceOrientation:v12 apply:v33];
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v13 = [v8 interfaceOrientation];
    v14 = v35[3];
    if (v13 != v14)
    {
      if (!v14)
      {
        if (dyld_program_sdk_at_least())
        {
          v14 = v35[3];
        }

        else
        {
          v14 = [UIApp _expectedViewOrientation];
          v35[3] = v14;
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke_2;
      v28[3] = &unk_1E7101C10;
      v28[4] = &v29;
      v28[5] = &v34;
      [(UIViewController *)v9 __withSupportedInterfaceOrientation:v14 apply:v28];
    }

    if (!v30[3])
    {
      v15 = [(UIViewController *)v9 _preferredInterfaceOrientationForPresentationInWindow:v8 fromInterfaceOrientation:v13];
      v30[3] = v15;
    }

    if (v11 == 1 || ![(_UIFullscreenPresentationController *)self _invokesDelegatesOnOrientationChange])
    {
      presentingViewControllerHandledCounterRotation = 1;
    }

    else
    {
      v16 = [(UIPresentationController *)self presentedViewController];
      v17 = [v16 supportedInterfaceOrientations];

      originalOrientation = self->_originalOrientation;
      v19 = _UIInterfaceOrientationMaskContainsOrientation(v17, originalOrientation);
      v20 = v30[3];
      if (v19)
      {
        LOBYTE(v19) = _UIInterfaceOrientationMaskContainsOrientation(v17, v30[3]);
      }

      presentingViewControllerHandledCounterRotation = 1;
      if (!v19 && v20 != originalOrientation)
      {
        presentingViewControllerHandledCounterRotation = self->_presentingViewControllerHandledCounterRotation;
      }
    }

    v22 = [(UIPresentationController *)self presentedViewController];

    if (v22 == v10)
    {
      [v10 _setFreezeLayoutForOrientationChangeOnDismissal:1];
    }

    v23 = [v8 windowScene];
    v24 = [(UIScene *)v23 _systemShellOwnsInterfaceOrientation];

    if (v24)
    {
      v25 = [v8 windowScene];
      v26 = [v25 _canDynamicallySpecifySupportedInterfaceOrientations];

      if (v26)
      {
        [(_UIFullscreenPresentationController *)self _prepareForMixedOrientationTransitionIfNecessaryInWindow:v8 fromViewController:v10 toViewController:v9];
      }
    }

    else
    {
      v27 = [v10 view];
      [(_UIFullscreenPresentationController *)self _placeCounterRotationViewWithView:v27 inWindow:v8 fromOrientation:v13 toOrientation:v30[3] force:presentingViewControllerHandledCounterRotation];
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v34, 8);
  }
}

- (void)_prepareForMixedOrientationTransitionIfNecessaryInWindow:(id)a3 fromViewController:(id)a4 toViewController:(id)a5
{
  v39 = a3;
  v8 = a4;
  v9 = a5;
  [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
  v10 = [(_UICurrentContextPresentationController *)self shouldRemovePresentersView];
  if (v10)
  {
    [v8 _willBeginCounterRotationForPresentation];
    if ([(UIPresentationController *)self state]== 1)
    {
      self->_presentingViewControllerHandledCounterRotation = [v8 _handlesCounterRotationForPresentation];
    }
  }

  v11 = [v39 interfaceOrientation];
  v12 = [v8 view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x1E696AEC0];
  v22 = _NSStringForUIPresentationControllerState([(UIPresentationController *)self state]);
  v23 = v8;
  if (v23)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
  }

  else
  {
    v27 = @"(nil)";
  }

  v28 = v9;
  if (v28)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = [v29 stringWithFormat:@"<%@: %p>", v31, v28];
  }

  else
  {
    v32 = @"(nil)";
  }

  v33 = [v21 stringWithFormat:@"Fullscreen transition (%@): fromVC=%@ toVC=%@;", v22, v27, v32];;

  v34 = [v39 _adjustWindowOrientationForTransitionWithSupportedOrientations:objc_msgSend(v28 preferredOrientation:"__supportedInterfaceOrientations") reason:{objc_msgSend(v28, "preferredInterfaceOrientationForPresentation"), v33}];
  forcedOrientationToken = self->_forcedOrientationToken;
  self->_forcedOrientationToken = v34;

  self->_disableAnimatedReenablingOfAutorotation = 1;
  v36 = [v39 interfaceOrientation];
  if (v10)
  {
    v37 = v36;
    if (v11 == v36)
    {
      [v23 _didEndCounterRotationForPresentation];
    }

    else
    {
      v38 = [v23 view];
      [(_UIFullscreenPresentationController *)self _applyCounterRotationToView:v38 fromOrientation:v11 toOrientation:v37 withBounds:v14, v16, v18, v20];
    }
  }
}

- (void)_placeCounterRotationViewWithView:(id)a3 inWindow:(id)a4 fromOrientation:(int64_t)a5 toOrientation:(int64_t)a6 force:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  if (a6 == a5)
  {
    if (!v7)
    {
      [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
      originalOrientation = self->_originalOrientation;
      if (originalOrientation)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __118___UIFullscreenPresentationController__placeCounterRotationViewWithView_inWindow_fromOrientation_toOrientation_force___block_invoke;
        v27[3] = &unk_1E7101C38;
        v28 = v13;
        v29 = originalOrientation;
        v30 = a6;
        v31 = v7;
        v15 = [v27 copy];
        finalRotationBlock = self->_finalRotationBlock;
        self->_finalRotationBlock = v15;
      }
    }
  }

  else
  {
    [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
    [v12 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(_UICurrentContextPresentationController *)self shouldRemovePresentersView])
    {
      v25 = [(UIView *)v12 __viewDelegate];
      [v25 _willBeginCounterRotationForPresentation];

      if ([(UIPresentationController *)self state]== 1)
      {
        v26 = [(UIView *)v12 __viewDelegate];
        self->_presentingViewControllerHandledCounterRotation = [v26 _handlesCounterRotationForPresentation];
      }

      [(UIWindow *)v13 _internal_setRotatableViewOrientation:a6 updateStatusBar:1 duration:v7 force:0.0];
      [(_UIFullscreenPresentationController *)self _applyCounterRotationToView:v12 fromOrientation:a5 toOrientation:a6 withBounds:v18, v20, v22, v24];
    }

    else
    {
      [(UIWindow *)v13 _internal_setRotatableViewOrientation:a6 updateStatusBar:1 duration:v7 force:0.0];
    }
  }
}

- (void)_applyCounterRotationToView:(id)a3 fromOrientation:(int64_t)a4 toOrientation:(int64_t)a5 withBounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = v13;
  memset(&v21, 0, sizeof(v21));
  if (v13)
  {
    [(UIView *)v13 transform];
  }

  v15 = 0.0;
  v16 = 0.0;
  if (a4 != 1)
  {
    if (a4 == 3)
    {
      v16 = 1.57079633;
    }

    else if (a4 == 4)
    {
      v16 = -1.57079633;
    }

    else
    {
      v16 = 3.14159265;
      if (a4 != 2)
      {
        v16 = 0.0;
      }
    }
  }

  if (a5 != 1)
  {
    if (a5 == 3)
    {
      v15 = 1.57079633;
    }

    else if (a5 == 4)
    {
      v15 = -1.57079633;
    }

    else
    {
      v15 = 3.14159265;
      if (a5 != 2)
      {
        v15 = 0.0;
      }
    }
  }

  v17 = v16 - v15;
  v19 = v21;
  CGAffineTransformRotate(&v20, &v19, v16 - v15);
  v21 = v20;
  [(UIView *)v14 setTransform:&v20];
  self->_counterRotatedAngle = v17;
  self->_counterRotatedOriginalBounds.origin.x = x;
  self->_counterRotatedOriginalBounds.origin.y = y;
  self->_counterRotatedOriginalBounds.size.width = width;
  self->_counterRotatedOriginalBounds.size.height = height;
  [(UIView *)v14 setBounds:x, y, width, height];
  counterRotatedView = self->_counterRotatedView;
  self->_counterRotatedView = v14;
}

- (void)_removeCounterRotationIfApplied
{
  counterRotatedView = self->_counterRotatedView;
  if (counterRotatedView)
  {
    memset(&v9, 0, sizeof(v9));
    [(UIView *)counterRotatedView transform];
    v4 = -self->_counterRotatedAngle;
    v7 = v9;
    CGAffineTransformRotate(&v8, &v7, v4);
    v9 = v8;
    [(UIView *)self->_counterRotatedView setTransform:&v8];
    [(UIView *)self->_counterRotatedView setBounds:self->_counterRotatedOriginalBounds.origin.x, self->_counterRotatedOriginalBounds.origin.y, self->_counterRotatedOriginalBounds.size.width, self->_counterRotatedOriginalBounds.size.height];
    v5 = [(UIView *)&self->_counterRotatedView->super.super.isa __viewDelegate];
    [v5 _didEndCounterRotationForPresentation];

    v6 = self->_counterRotatedView;
    self->_counterRotatedView = 0;
  }
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(_UIFullscreenPresentationController *)self _transitionDidEnd:a3 isDismissal:0];
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  [(UIPresentationController *)&v5 presentationTransitionDidEnd:v3];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  [(_UIFullscreenPresentationController *)self _transitionDidEnd:a3 isDismissal:1];
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  [(UIPresentationController *)&v5 dismissalTransitionDidEnd:v3];
}

- (void)_transitionDidEnd:(BOOL)a3 isDismissal:(BOOL)a4
{
  v4 = a4;
  forcedOrientationToken = self->_forcedOrientationToken;
  if (forcedOrientationToken)
  {
    v7 = !a3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (forcedOrientationToken)
    {
      [(_UIForcedOrientationTransactionToken *)forcedOrientationToken cancel];
      v8 = self->_forcedOrientationToken;
      self->_forcedOrientationToken = 0;
    }

    [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
    if (v4)
    {
      finalRotationBlock = self->_finalRotationBlock;
      if (finalRotationBlock)
      {
        finalRotationBlock[2]();
        v10 = self->_finalRotationBlock;
        self->_finalRotationBlock = 0;
      }

      v12 = [(UIPresentationController *)self presentedViewController];
      [v12 _setFreezeLayoutForOrientationChangeOnDismissal:0];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = self->_forcedOrientationToken;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69___UIFullscreenPresentationController__transitionDidEnd_isDismissal___block_invoke;
    v13[3] = &unk_1E7101C60;
    objc_copyWeak(&v14, &location);
    v15 = v4;
    [(_UIForcedOrientationTransactionToken *)v11 commitAnimated:0 completionBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_setPresentedViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  v3 = a3;
  [(UIPresentationController *)&v5 _setPresentedViewController:v3];
  v4 = [v3 view];

  if (![v4 _wantsAutolayout] || objc_msgSend(v4, "translatesAutoresizingMaskIntoConstraints"))
  {
    [v4 setAutoresizingMask:18];
  }
}

@end