@interface _UIViewControllerTransitionConductor
- (BOOL)hasInterruptibleNavigationTransition;
- (BOOL)shouldAnimateBottomBarVisibility;
- (BOOL)shouldCrossFadeBottomBars;
- (BOOL)shouldCrossFadeNavigationBar;
- (BOOL)shouldCrossFadeNavigationBarVisibility;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UIViewControllerTransitionConductor)initWithDelegate:(id)delegate transitionManager:(id)manager;
- (_UIViewControllerTransitionConductorDelegate)delegate;
- (double)navigationBarHidingDurationWithDefaultDuration:(double)duration;
- (id)interruptibleNavigationTransitionAnimator;
- (id)navigationBarTransitionOverlay;
- (id)navigationToolbarTransitionController;
- (int64_t)navigationBarTransitionVariant;
- (void)_beginAnimationTrackingInteractive:(BOOL)interactive;
- (void)_finishAnimationTracking;
- (void)_startCustomTransition:(id)transition;
- (void)_startTransition:(int)transition fromViewController:(id)controller toViewController:(id)viewController;
- (void)startDeferredTransitionIfNeeded;
- (void)stopTransitionsImmediately;
@end

@implementation _UIViewControllerTransitionConductor

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  transitionContext = [(_UIViewControllerTransitionConductor *)self transitionContext];
  _transitionCoordinator = [transitionContext _transitionCoordinator];

  return _transitionCoordinator;
}

- (BOOL)shouldCrossFadeBottomBars
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  transitionController = self->_transitionController;

  return [(UIViewControllerAnimatedTransitioning *)transitionController _shouldCrossFadeBottomBars];
}

- (void)startDeferredTransitionIfNeeded
{
  needsDeferredTransition = [(_UIViewControllerTransitionConductor *)self needsDeferredTransition];
  if (self->_transitionController)
  {
    transitionContext = [(_UIViewControllerTransitionConductor *)self transitionContext];
    if (needsDeferredTransition)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  [(_UIViewControllerTransitionConductor *)self setInteractiveTransition:0];
  transitionContext = 0;
  if (!needsDeferredTransition)
  {
    goto LABEL_12;
  }

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained disappearingViewControllerForTransitionConductor:self];

  v7 = objc_loadWeakRetained(&self->_delegate);
  v8 = [v7 topViewControllerForTransitionConductor:self];

  if (v6 | v8 && v6 == v8)
  {
    view = [v8 view];
    transitionContainerView = [(_UIViewControllerTransitionConductor *)self transitionContainerView];
    v11 = [view isDescendantOfView:transitionContainerView];

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v6 | v8)
  {
LABEL_6:
    v12 = 1;
    if (!transitionContext)
    {
      goto LABEL_7;
    }

LABEL_16:
    _state = [transitionContext _state];
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  [(_UIViewControllerTransitionConductor *)self setNeedsDeferredTransition:0];
LABEL_15:
  v12 = 0;
  if (transitionContext)
  {
    goto LABEL_16;
  }

LABEL_7:
  _state = 0;
  if (!v12)
  {
LABEL_8:
    interactiveTransitionController3 = objc_loadWeakRetained(&self->_delegate);
    [interactiveTransitionController3 transitionConductor:self didStartDeferredTransition:0 context:transitionContext];
    goto LABEL_9;
  }

LABEL_17:
  [(_UIViewControllerTransitionConductor *)self setNeedsDeferredTransition:0];
  v16 = objc_loadWeakRetained(&self->_delegate);
  [v16 transitionConductor:self willTransitionFromViewController:v6 toViewController:v8];

  v17 = dyld_program_sdk_at_least();
  v18 = objc_loadWeakRetained(&self->_delegate);
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      v20 = (v18[94] & 3u) - 3 < 0xFFFFFFFE;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = [v18 _appearState] != 2;
  }

  if (self->_transitionController && v6 && v8 && v8 != v6 && !v20)
  {
    [(_UIViewControllerTransitionConductor *)self _startCustomTransition:?];
  }

  else
  {
    transitionContext2 = [(_UIViewControllerTransitionConductor *)self transitionContext];
    [transitionContext2 _setInteractor:0];
    [transitionContext2 _setAnimator:0];
    transitionController = self->_transitionController;
    self->_transitionController = 0;

    v23 = objc_loadWeakRetained(&self->_delegate);
    [v23 transitionConductorWillStartImmediateTransition:self];

    [(_UIViewControllerTransitionConductor *)self _startTransition:[(_UIViewControllerTransitionConductor *)self deferredTransitionType] fromViewController:v6 toViewController:v8];
    v24 = objc_loadWeakRetained(&self->_delegate);
    [v24 transitionConductorDidStartImmediateTransition:self];
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  [v25 transitionConductor:self didStartDeferredTransition:1 context:transitionContext];

  if (_state == 3)
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    interactiveTransitionController = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];

    if (has_internal_diagnostics)
    {
      if (!interactiveTransitionController)
      {
        v35 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *v39 = 0;
          _os_log_fault_impl(&dword_188A29000, v35, OS_LOG_TYPE_FAULT, "We should only get in the deferred state if interaction controller is present", v39, 2u);
        }
      }
    }

    else if (!interactiveTransitionController)
    {
      v37 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A0B90) + 8);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v38 = 0;
        _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "We should only get in the deferred state if interaction controller is present", v38, 2u);
      }
    }

    interactiveTransitionController2 = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [transitionContext finishInteractiveTransition];
      goto LABEL_10;
    }

    interactiveTransitionController3 = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];
    [interactiveTransitionController3 finishInteractiveTransition];
  }

  else
  {
    if (_state != 2)
    {
      goto LABEL_10;
    }

    v26 = os_variant_has_internal_diagnostics();
    interactiveTransitionController4 = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];

    if (v26)
    {
      if (!interactiveTransitionController4)
      {
        v34 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *v41 = 0;
          _os_log_fault_impl(&dword_188A29000, v34, OS_LOG_TYPE_FAULT, "We should only get in the deferred state if interaction controller is present", v41, 2u);
        }
      }
    }

    else if (!interactiveTransitionController4)
    {
      v36 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1293) + 8);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v36, OS_LOG_TYPE_ERROR, "We should only get in the deferred state if interaction controller is present", buf, 2u);
      }
    }

    interactiveTransitionController5 = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    if ((v29 & 1) == 0)
    {
      [transitionContext cancelInteractiveTransition];
      goto LABEL_10;
    }

    interactiveTransitionController3 = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];
    [interactiveTransitionController3 cancelInteractiveTransition];
  }

LABEL_9:

LABEL_10:
  pendingPreemptionHandoffData = self->_pendingPreemptionHandoffData;
  self->_pendingPreemptionHandoffData = 0;
}

- (BOOL)hasInterruptibleNavigationTransition
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  transitionController = self->_transitionController;
  transitionContainerView = [(_UIViewControllerTransitionConductor *)self transitionContainerView];
  traitCollection = [transitionContainerView traitCollection];
  LOBYTE(transitionController) = [(UIViewControllerAnimatedTransitioning *)transitionController _shouldUseInterruptibleAnimatorWithTraitCollection:traitCollection];

  return transitionController;
}

- (id)navigationToolbarTransitionController
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:self->_transitionController];
    v4 = [(UIViewControllerAnimatedTransitioning *)self->_transitionController _navigationToolbarTransitionControllerForContext:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldAnimateBottomBarVisibility
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  transitionController = self->_transitionController;

  return [(UIViewControllerAnimatedTransitioning *)transitionController _shouldAnimateBottomBarVisibility];
}

- (BOOL)shouldCrossFadeNavigationBarVisibility
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  transitionController = self->_transitionController;

  return [(UIViewControllerAnimatedTransitioning *)transitionController _shouldCrossFadeNavigationBarVisibility];
}

- (_UIViewControllerTransitionConductor)initWithDelegate:(id)delegate transitionManager:(id)manager
{
  delegateCopy = delegate;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = _UIViewControllerTransitionConductor;
  v8 = [(_UIViewControllerTransitionConductor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_transitionManager, manager);
  }

  return v9;
}

- (int64_t)navigationBarTransitionVariant
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return [(_UIViewControllerTransitionConductor *)self shouldCrossFadeNavigationBar];
  }

  transitionController = self->_transitionController;

  return [(UIViewControllerAnimatedTransitioning *)transitionController _navigationBarTransitionVariant];
}

- (id)navigationBarTransitionOverlay
{
  if (objc_opt_respondsToSelector())
  {
    _navigationBarTransitionOverlay = [(UIViewControllerAnimatedTransitioning *)self->_transitionController _navigationBarTransitionOverlay];
  }

  else
  {
    _navigationBarTransitionOverlay = 0;
  }

  return _navigationBarTransitionOverlay;
}

- (BOOL)shouldCrossFadeNavigationBar
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  transitionController = self->_transitionController;

  return [(UIViewControllerAnimatedTransitioning *)transitionController _shouldCrossFadeNavigationBar];
}

- (double)navigationBarHidingDurationWithDefaultDuration:(double)duration
{
  if (objc_opt_respondsToSelector())
  {
    transitionController = self->_transitionController;
    transitionContext = [(_UIViewControllerTransitionConductor *)self transitionContext];
    [(UIViewControllerAnimatedTransitioning *)transitionController _customNavigationBarHidingDuration:transitionContext];
    duration = v7;
  }

  return duration;
}

- (id)interruptibleNavigationTransitionAnimator
{
  if ([(_UIViewControllerTransitionConductor *)self hasInterruptibleNavigationTransition])
  {
    transitionController = self->_transitionController;
    transitionContext = [(_UIViewControllerTransitionConductor *)self transitionContext];
    v5 = [(UIViewControllerAnimatedTransitioning *)transitionController interruptibleAnimatorForTransition:transitionContext];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_beginAnimationTrackingInteractive:(BOOL)interactive
{
  interactiveCopy = interactive;
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {
    if (!+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
    {
      v4 = +[UIViewPropertyAnimator _startTrackingAnimations];

      [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:interactiveCopy];
    }
  }

  else
  {
    v5 = +[UIView _startAnimationTracking];
  }
}

- (void)_finishAnimationTracking
{
  if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
  {

    +[UIViewPropertyAnimator _finishTrackingAnimations];
  }

  else
  {

    +[UIView _finishAnimationTracking];
  }
}

- (void)_startTransition:(int)transition fromViewController:(id)controller toViewController:(id)viewController
{
  v6 = *&transition;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained topViewControllerForTransitionConductor:self];

  if (v10 != viewControllerCopy)
  {
    v11 = v10;

    viewControllerCopy = v11;
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  [v12 transitionConductor:self frameForViewController:viewControllerCopy];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = objc_loadWeakRetained(&self->_delegate);
  [v21 transitionConductor:self frameForWrapperViewForViewController:viewControllerCopy];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  view = [viewControllerCopy view];
  childModalViewController = [viewControllerCopy childModalViewController];

  if (!childModalViewController || ([UIViewControllerWrapperView existingWrapperViewForView:view], (v32 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v32 = [(UIViewControllerWrapperView *)v23 wrapperViewForView:v25 wrapperFrame:v27 viewFrame:v29, v14, v16, v18, v20, UIViewControllerWrapperView, view];
  }

  v33 = objc_loadWeakRetained(&self->_delegate);
  v34 = [v33 transitionConductor:self retargetedToViewControllerForTransitionFromViewController:controllerCopy toViewController:viewControllerCopy transition:v6];

  if (!view || ([v34 view], v35 = objc_claimAutoreleasedReturnValue(), v35, view != v35))
  {
    view2 = [v34 view];

    v37 = objc_loadWeakRetained(&self->_delegate);
    [v37 transitionConductor:self frameForViewController:v34];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = objc_loadWeakRetained(&self->_delegate);
    [v46 transitionConductor:self frameForWrapperViewForViewController:v34];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v55 = [(UIViewControllerWrapperView *)v48 wrapperViewForView:v50 wrapperFrame:v52 viewFrame:v54, v39, v41, v43, v45, UIViewControllerWrapperView, view2];

    v32 = v55;
    view = view2;
  }

  v56 = objc_loadWeakRetained(&self->_delegate);
  navigationTransitionView = [v56 navigationTransitionView];

  if (v34)
  {
    view3 = [controllerCopy view];
    v59 = [UIViewControllerWrapperView existingWrapperViewForView:view3];
    v60 = v59;
    if (v59)
    {
      view4 = v59;
    }

    else
    {
      view4 = [controllerCopy view];
    }

    v65 = view4;

    superview = [v65 superview];
    if (superview == navigationTransitionView)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;

    if (!v68)
    {
      subviews = [navigationTransitionView subviews];
      lastObject = [subviews lastObject];

      if (lastObject == v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v65 = 0;
      }

      else
      {
        v65 = lastObject;
      }
    }

    [navigationTransitionView addSubview:v32];
    v71 = objc_loadWeakRetained(&self->_delegate);
    [v71 transitionConductor:self beginPinningInputViewsForTransitionFromViewController:controllerCopy toViewController:v34 forTransitionType:v6];

    v72 = objc_loadWeakRetained(&self->_delegate);
    [v72 transitionConductor:self didEndTransitionFromView:v65 toView:v32];
  }

  else
  {
    view5 = [controllerCopy view];
    v63 = view5;
    subviews2 = [navigationTransitionView subviews];
    [subviews2 makeObjectsPerformSelector:sel_removeFromSuperview];

    v65 = objc_loadWeakRetained(&self->_delegate);
    [v65 transitionConductor:self didEndTransitionFromView:view5 toView:0];
  }
}

- (void)_startCustomTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:?];
  toViewController = [v5 toViewController];
  fromViewController = [v5 fromViewController];
  interactiveTransitionController = [(_UIViewControllerTransitionConductor *)self interactiveTransitionController];
  [(_UIViewControllerTransitionConductor *)self customNavigationTransitionDuration];
  [v5 _setDuration:?];
  isInteractiveTransition = [(_UIViewControllerTransitionConductor *)self isInteractiveTransition];
  if ((isInteractiveTransition & 1) == 0 && interactiveTransitionController)
  {
    if (objc_opt_respondsToSelector())
    {
      isInteractiveTransition = [interactiveTransitionController wantsInteractiveStart];
    }

    else
    {
      isInteractiveTransition = 1;
    }
  }

  [(_UIViewControllerTransitionConductor *)self setInteractiveTransition:isInteractiveTransition];
  if (!fromViewController || !toViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIViewControllerTransitionConductor.m" lineNumber:374 description:@"custom transitions require both a fromViewController and toViewController!"];
  }

  view = [toViewController view];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained transitionConductor:self frameForViewController:toViewController];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v51 = view;
  [view setFrame:{v13, v15, v17, v19}];
  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 transitionConductor:self didStartCustomTransitionWithContext:v5];

  v21 = objc_loadWeakRetained(&self->_delegate);
  [v21 transitionConductor:self frameForViewController:toViewController];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  view2 = [toViewController view];
  [view2 frame];
  v61.origin.x = v31;
  v61.origin.y = v32;
  v61.size.width = v33;
  v61.size.height = v34;
  v60.origin.x = v23;
  v60.origin.y = v25;
  v60.size.width = v27;
  v60.size.height = v29;
  LOBYTE(view) = CGRectEqualToRect(v60, v61);

  if ((view & 1) == 0)
  {
    view3 = [toViewController view];
    [view3 setFrame:{v23, v25, v27, v29}];
  }

  [v5 _setToEndFrame:{v23, v25, v27, v29}];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke;
  v59[3] = &unk_1E7104C08;
  v59[4] = self;
  [v5 _setCompletionHandler:v59];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke_2;
  aBlock[3] = &unk_1E7122640;
  aBlock[4] = self;
  v36 = _Block_copy(aBlock);
  if (interactiveTransitionController)
  {
    [(_UIViewControllerTransitionConductor *)self _beginAnimationTrackingInteractive:isInteractiveTransition];
  }

  deferredTransitionType = [(_UIViewControllerTransitionConductor *)self deferredTransitionType];
  v38 = objc_loadWeakRetained(&self->_delegate);
  navigationTransitionView = [v38 navigationTransitionView];

  v39 = objc_loadWeakRetained(&self->_delegate);
  v40 = [v39 inputViewAnimationStyleForTransitionConductor:self];

  objc_initWeak(&location, self);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __63___UIViewControllerTransitionConductor__startCustomTransition___block_invoke_3;
  v53[3] = &unk_1E7122370;
  v53[4] = self;
  v41 = fromViewController;
  v54 = v41;
  v42 = toViewController;
  v55 = v42;
  v56 = deferredTransitionType;
  v43 = _Block_copy(v53);
  v44 = [_UIViewControllerTransitionRequest alloc];
  v45 = objc_loadWeakRetained(&self->_delegate);
  v46 = [(_UIViewControllerTransitionRequest *)v44 initWithTransitionContext:v5 animator:transitionCopy interactor:interactiveTransitionController interactiveUpdateHandler:v36 keyboardShouldAnimateAlongsideForInteractiveTransitions:1 keyboardAnimationStyle:v40 pinningInputViewsResponder:v45 extraPinningInputViewsBlock:v43 handoffData:self->_pendingPreemptionHandoffData];

  transitionManager = [(_UIViewControllerTransitionConductor *)self transitionManager];

  if (transitionManager)
  {
    transitionManager2 = [(_UIViewControllerTransitionConductor *)self transitionManager];
    [transitionManager2 performAnimatedTransitionWithRequest:v46];
  }

  else
  {
    _UIViewControllerTransitioningRunCustomTransitionWithRequest(v46);
  }

  if (interactiveTransitionController)
  {
    [(_UIViewControllerTransitionConductor *)self _finishAnimationTracking];
  }

  [v5 _setTransitionIsInFlight:1];

  objc_destroyWeak(&location);
}

- (void)stopTransitionsImmediately
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    transitionController = self->_transitionController;

    [(UIViewControllerAnimatedTransitioning *)transitionController _stopTransitionImmediately];
  }
}

- (_UIViewControllerTransitionConductorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end