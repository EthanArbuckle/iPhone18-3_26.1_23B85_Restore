@interface _UIFullscreenPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (void)_adjustOrientationIfNecessaryInWindow:(id)window forViewController:(id)controller preservingViewController:(id)viewController;
- (void)_applyCounterRotationToView:(id)view fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation withBounds:(CGRect)bounds;
- (void)_placeCounterRotationViewWithView:(id)view inWindow:(id)window fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation force:(BOOL)force;
- (void)_prepareForMixedOrientationTransitionIfNecessaryInWindow:(id)window fromViewController:(id)controller toViewController:(id)viewController;
- (void)_removeCounterRotationIfApplied;
- (void)_setPresentedViewController:(id)controller;
- (void)_transitionDidEnd:(BOOL)end isDismissal:(BOOL)dismissal;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionDidEnd:(BOOL)end;
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
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
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

- (void)_adjustOrientationIfNecessaryInWindow:(id)window forViewController:(id)controller preservingViewController:(id)viewController
{
  windowCopy = window;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  state = [(UIPresentationController *)self state];
  if (state == 1)
  {
    self->_originalOrientation = [windowCopy interfaceOrientation];
  }

  self->_disableAnimatedReenablingOfAutorotation = 0;
  if ([windowCopy _isWindowServerHostingManaged] && objc_msgSend(windowCopy, "autorotates"))
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    _expectedViewOrientation = [UIApp _expectedViewOrientation];
    if (viewControllerCopy && state == 1)
    {
      v12 = v35[3];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke;
      v33[3] = &unk_1E7101BE8;
      v33[4] = &v34;
      [(UIViewController *)viewControllerCopy __withSupportedInterfaceOrientation:v12 apply:v33];
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    interfaceOrientation = [windowCopy interfaceOrientation];
    _expectedViewOrientation2 = v35[3];
    if (interfaceOrientation != _expectedViewOrientation2)
    {
      if (!_expectedViewOrientation2)
      {
        if (dyld_program_sdk_at_least())
        {
          _expectedViewOrientation2 = v35[3];
        }

        else
        {
          _expectedViewOrientation2 = [UIApp _expectedViewOrientation];
          v35[3] = _expectedViewOrientation2;
        }
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke_2;
      v28[3] = &unk_1E7101C10;
      v28[4] = &v29;
      v28[5] = &v34;
      [(UIViewController *)controllerCopy __withSupportedInterfaceOrientation:_expectedViewOrientation2 apply:v28];
    }

    if (!v30[3])
    {
      v15 = [(UIViewController *)controllerCopy _preferredInterfaceOrientationForPresentationInWindow:windowCopy fromInterfaceOrientation:interfaceOrientation];
      v30[3] = v15;
    }

    if (state == 1 || ![(_UIFullscreenPresentationController *)self _invokesDelegatesOnOrientationChange])
    {
      presentingViewControllerHandledCounterRotation = 1;
    }

    else
    {
      presentedViewController = [(UIPresentationController *)self presentedViewController];
      supportedInterfaceOrientations = [presentedViewController supportedInterfaceOrientations];

      originalOrientation = self->_originalOrientation;
      v19 = _UIInterfaceOrientationMaskContainsOrientation(supportedInterfaceOrientations, originalOrientation);
      v20 = v30[3];
      if (v19)
      {
        LOBYTE(v19) = _UIInterfaceOrientationMaskContainsOrientation(supportedInterfaceOrientations, v30[3]);
      }

      presentingViewControllerHandledCounterRotation = 1;
      if (!v19 && v20 != originalOrientation)
      {
        presentingViewControllerHandledCounterRotation = self->_presentingViewControllerHandledCounterRotation;
      }
    }

    presentedViewController2 = [(UIPresentationController *)self presentedViewController];

    if (presentedViewController2 == viewControllerCopy)
    {
      [viewControllerCopy _setFreezeLayoutForOrientationChangeOnDismissal:1];
    }

    windowScene = [windowCopy windowScene];
    _systemShellOwnsInterfaceOrientation = [(UIScene *)windowScene _systemShellOwnsInterfaceOrientation];

    if (_systemShellOwnsInterfaceOrientation)
    {
      windowScene2 = [windowCopy windowScene];
      _canDynamicallySpecifySupportedInterfaceOrientations = [windowScene2 _canDynamicallySpecifySupportedInterfaceOrientations];

      if (_canDynamicallySpecifySupportedInterfaceOrientations)
      {
        [(_UIFullscreenPresentationController *)self _prepareForMixedOrientationTransitionIfNecessaryInWindow:windowCopy fromViewController:viewControllerCopy toViewController:controllerCopy];
      }
    }

    else
    {
      view = [viewControllerCopy view];
      [(_UIFullscreenPresentationController *)self _placeCounterRotationViewWithView:view inWindow:windowCopy fromOrientation:interfaceOrientation toOrientation:v30[3] force:presentingViewControllerHandledCounterRotation];
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v34, 8);
  }
}

- (void)_prepareForMixedOrientationTransitionIfNecessaryInWindow:(id)window fromViewController:(id)controller toViewController:(id)viewController
{
  windowCopy = window;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
  shouldRemovePresentersView = [(_UICurrentContextPresentationController *)self shouldRemovePresentersView];
  if (shouldRemovePresentersView)
  {
    [controllerCopy _willBeginCounterRotationForPresentation];
    if ([(UIPresentationController *)self state]== 1)
    {
      self->_presentingViewControllerHandledCounterRotation = [controllerCopy _handlesCounterRotationForPresentation];
    }
  }

  interfaceOrientation = [windowCopy interfaceOrientation];
  view = [controllerCopy view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x1E696AEC0];
  v22 = _NSStringForUIPresentationControllerState([(UIPresentationController *)self state]);
  v23 = controllerCopy;
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

  v28 = viewControllerCopy;
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

  v34 = [windowCopy _adjustWindowOrientationForTransitionWithSupportedOrientations:objc_msgSend(v28 preferredOrientation:"__supportedInterfaceOrientations") reason:{objc_msgSend(v28, "preferredInterfaceOrientationForPresentation"), v33}];
  forcedOrientationToken = self->_forcedOrientationToken;
  self->_forcedOrientationToken = v34;

  self->_disableAnimatedReenablingOfAutorotation = 1;
  interfaceOrientation2 = [windowCopy interfaceOrientation];
  if (shouldRemovePresentersView)
  {
    v37 = interfaceOrientation2;
    if (interfaceOrientation == interfaceOrientation2)
    {
      [v23 _didEndCounterRotationForPresentation];
    }

    else
    {
      view2 = [v23 view];
      [(_UIFullscreenPresentationController *)self _applyCounterRotationToView:view2 fromOrientation:interfaceOrientation toOrientation:v37 withBounds:v14, v16, v18, v20];
    }
  }
}

- (void)_placeCounterRotationViewWithView:(id)view inWindow:(id)window fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation force:(BOOL)force
{
  forceCopy = force;
  viewCopy = view;
  windowCopy = window;
  if (toOrientation == orientation)
  {
    if (!forceCopy)
    {
      [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
      originalOrientation = self->_originalOrientation;
      if (originalOrientation)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __118___UIFullscreenPresentationController__placeCounterRotationViewWithView_inWindow_fromOrientation_toOrientation_force___block_invoke;
        v27[3] = &unk_1E7101C38;
        v28 = windowCopy;
        v29 = originalOrientation;
        toOrientationCopy = toOrientation;
        v31 = forceCopy;
        v15 = [v27 copy];
        finalRotationBlock = self->_finalRotationBlock;
        self->_finalRotationBlock = v15;
      }
    }
  }

  else
  {
    [(_UIFullscreenPresentationController *)self _removeCounterRotationIfApplied];
    [viewCopy bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(_UICurrentContextPresentationController *)self shouldRemovePresentersView])
    {
      __viewDelegate = [(UIView *)viewCopy __viewDelegate];
      [__viewDelegate _willBeginCounterRotationForPresentation];

      if ([(UIPresentationController *)self state]== 1)
      {
        __viewDelegate2 = [(UIView *)viewCopy __viewDelegate];
        self->_presentingViewControllerHandledCounterRotation = [__viewDelegate2 _handlesCounterRotationForPresentation];
      }

      [(UIWindow *)windowCopy _internal_setRotatableViewOrientation:toOrientation updateStatusBar:1 duration:forceCopy force:0.0];
      [(_UIFullscreenPresentationController *)self _applyCounterRotationToView:viewCopy fromOrientation:orientation toOrientation:toOrientation withBounds:v18, v20, v22, v24];
    }

    else
    {
      [(UIWindow *)windowCopy _internal_setRotatableViewOrientation:toOrientation updateStatusBar:1 duration:forceCopy force:0.0];
    }
  }
}

- (void)_applyCounterRotationToView:(id)view fromOrientation:(int64_t)orientation toOrientation:(int64_t)toOrientation withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  v14 = viewCopy;
  memset(&v21, 0, sizeof(v21));
  if (viewCopy)
  {
    [(UIView *)viewCopy transform];
  }

  v15 = 0.0;
  v16 = 0.0;
  if (orientation != 1)
  {
    if (orientation == 3)
    {
      v16 = 1.57079633;
    }

    else if (orientation == 4)
    {
      v16 = -1.57079633;
    }

    else
    {
      v16 = 3.14159265;
      if (orientation != 2)
      {
        v16 = 0.0;
      }
    }
  }

  if (toOrientation != 1)
  {
    if (toOrientation == 3)
    {
      v15 = 1.57079633;
    }

    else if (toOrientation == 4)
    {
      v15 = -1.57079633;
    }

    else
    {
      v15 = 3.14159265;
      if (toOrientation != 2)
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
    __viewDelegate = [(UIView *)&self->_counterRotatedView->super.super.isa __viewDelegate];
    [__viewDelegate _didEndCounterRotationForPresentation];

    v6 = self->_counterRotatedView;
    self->_counterRotatedView = 0;
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(_UIFullscreenPresentationController *)self _transitionDidEnd:end isDismissal:0];
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  [(UIPresentationController *)&v5 presentationTransitionDidEnd:endCopy];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  [(_UIFullscreenPresentationController *)self _transitionDidEnd:end isDismissal:1];
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  [(UIPresentationController *)&v5 dismissalTransitionDidEnd:endCopy];
}

- (void)_transitionDidEnd:(BOOL)end isDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  forcedOrientationToken = self->_forcedOrientationToken;
  if (forcedOrientationToken)
  {
    v7 = !end;
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
    if (dismissalCopy)
    {
      finalRotationBlock = self->_finalRotationBlock;
      if (finalRotationBlock)
      {
        finalRotationBlock[2]();
        v10 = self->_finalRotationBlock;
        self->_finalRotationBlock = 0;
      }

      presentedViewController = [(UIPresentationController *)self presentedViewController];
      [presentedViewController _setFreezeLayoutForOrientationChangeOnDismissal:0];
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
    v15 = dismissalCopy;
    [(_UIForcedOrientationTransactionToken *)v11 commitAnimated:0 completionBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

- (void)_setPresentedViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UIFullscreenPresentationController;
  controllerCopy = controller;
  [(UIPresentationController *)&v5 _setPresentedViewController:controllerCopy];
  view = [controllerCopy view];

  if (![view _wantsAutolayout] || objc_msgSend(view, "translatesAutoresizingMaskIntoConstraints"))
  {
    [view setAutoresizingMask:18];
  }
}

@end