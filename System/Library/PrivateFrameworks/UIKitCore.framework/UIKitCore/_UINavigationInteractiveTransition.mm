@interface _UINavigationInteractiveTransition
- (BOOL)_gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)_isBackGestureRecognizer:(id)recognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_UINavigationInteractiveTransition)initWithViewController:(id)controller animator:(id)animator;
- (id)gestureRecognizerView;
- (void)_configureNavigationGesture;
- (void)_setShouldReverseLayoutDirection:(BOOL)direction;
- (void)setNotInteractiveTransition;
- (void)startInteractiveTransition;
@end

@implementation _UINavigationInteractiveTransition

- (void)_configureNavigationGesture
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  view = [WeakRetained view];

  v4 = objc_loadWeakRetained(&self->super._gestureRecognizer);
  v5 = v4;
  edgePanRecognizer = self->_edgePanRecognizer;
  if (edgePanRecognizer)
  {
    if (v4 != edgePanRecognizer)
    {
      [view removeGestureRecognizer:?];
      edgePanRecognizer = self->_edgePanRecognizer;
    }

    [(UIPanGestureRecognizer *)edgePanRecognizer setDelegate:0];
    v7 = self->_edgePanRecognizer;
    self->_edgePanRecognizer = 0;
  }

  if (v5)
  {
    [view removeGestureRecognizer:v5];
    [(UIPanGestureRecognizer *)v5 setDelegate:0];
    objc_storeWeak(&self->super._gestureRecognizer, 0);
  }

  v8 = self->super._contentSwipeGestureRecognizer;
  if (v8)
  {
    [view removeGestureRecognizer:v8];
    [(UIPanGestureRecognizer *)v8 setDelegate:0];
    contentSwipeGestureRecognizer = self->super._contentSwipeGestureRecognizer;
    self->super._contentSwipeGestureRecognizer = 0;
  }

  if ([(_UINavigationInteractiveTransitionBase *)self _shouldReverseLayoutDirection])
  {
    v10 = 8;
  }

  else
  {
    v10 = 2;
  }

  v11 = [[_UIParallaxTransitionPanGestureRecognizer alloc] initWithTarget:self action:sel_handleNavigationTransition_];
  v12 = self->_edgePanRecognizer;
  self->_edgePanRecognizer = v11;

  [(UIGestureRecognizer *)self->_edgePanRecognizer setName:@"UINavigationController.edgeSwipe"];
  [(UIScreenEdgePanGestureRecognizer *)self->_edgePanRecognizer setEdges:v10];
  [(UIPanGestureRecognizer *)self->_edgePanRecognizer setDelegate:self];
  [view addGestureRecognizer:self->_edgePanRecognizer];
  if (+[_UIParallaxTransitionPanGestureRecognizer isContentBackSwipeEnabled])
  {
    _createContentSwipeGestureRecognizer = [(_UINavigationInteractiveTransitionBase *)self _createContentSwipeGestureRecognizer];
    v14 = self->super._contentSwipeGestureRecognizer;
    self->super._contentSwipeGestureRecognizer = _createContentSwipeGestureRecognizer;

    [(UIGestureRecognizer *)self->super._contentSwipeGestureRecognizer setName:@"UINavigationController.contentSwipe"];
    [(UIScreenEdgePanGestureRecognizer *)self->super._contentSwipeGestureRecognizer setEdges:v10];
    [(UIPanGestureRecognizer *)self->super._contentSwipeGestureRecognizer setDelegate:self];
    [view addGestureRecognizer:self->super._contentSwipeGestureRecognizer];
    [(UIGestureRecognizer *)self->super._contentSwipeGestureRecognizer requireGestureRecognizerToFail:self->_edgePanRecognizer];
  }

  objc_storeWeak(&self->super._gestureRecognizer, self->_edgePanRecognizer);
}

- (_UINavigationInteractiveTransition)initWithViewController:(id)controller animator:(id)animator
{
  v10.receiver = self;
  v10.super_class = _UINavigationInteractiveTransition;
  animatorCopy = animator;
  controllerCopy = controller;
  v7 = [(UIPercentDrivenInteractiveTransition *)&v10 init];
  v7->super.__useAugmentedShouldPopDecisionProcedure = _UINavigationControllerUseAugmentedPopGesture();
  v7->super.__interactionState = 0;
  objc_storeWeak(&v7->super.__parent, controllerCopy);
  v7->super.__completesTransitionOnEnd = 1;
  [(_UINavigationInteractiveTransitionBase *)v7 setAnimationController:animatorCopy, v10.receiver, v10.super_class];

  [(_UINavigationInteractiveTransition *)v7 _configureNavigationGesture];
  [(UIPercentDrivenInteractiveTransition *)v7 _setUsesPacedFractionComplete:1];
  traitCollection = [controllerCopy traitCollection];

  LODWORD(controllerCopy) = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:traitCollection];
  if (controllerCopy)
  {
    [(UIPercentDrivenInteractiveTransition *)v7 _setClampsPercentComplete:0];
  }

  return v7;
}

- (void)_setShouldReverseLayoutDirection:(BOOL)direction
{
  directionCopy = direction;
  v6.receiver = self;
  v6.super_class = _UINavigationInteractiveTransition;
  [(_UINavigationInteractiveTransitionBase *)&v6 _setShouldReverseLayoutDirection:?];
  if (directionCopy)
  {
    v5 = 8;
  }

  else
  {
    v5 = 2;
  }

  [(UIScreenEdgePanGestureRecognizer *)self->super._contentSwipeGestureRecognizer setEdges:v5];
  [(UIScreenEdgePanGestureRecognizer *)self->_edgePanRecognizer setEdges:v5];
}

- (BOOL)_isBackGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->super._gestureRecognizer);
  v6 = WeakRetained == recognizerCopy || self->_edgePanRecognizer == recognizerCopy || self->super._contentSwipeGestureRecognizer == recognizerCopy;

  return v6;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:recognizerCopy])
  {
    if (dyld_program_sdk_at_least())
    {
      _failureDependents = [(UIGestureRecognizer *)recognizerCopy _failureDependents];
      if ([_failureDependents count])
      {
        v10 = 1;
      }

      else
      {
        _failureRequirements = [(UIGestureRecognizer *)recognizerCopy _failureRequirements];
        v10 = [_failureRequirements count] != 0;
      }
    }

    else
    {
      v10 = 0;
    }

    edgePanRecognizer = self->_edgePanRecognizer;
    if (!edgePanRecognizer || (contentSwipeGestureRecognizer = self->super._contentSwipeGestureRecognizer) == 0 || (edgePanRecognizer != recognizerCopy ? (v16 = contentSwipeGestureRecognizer == recognizerCopy) : (v16 = 1), !v16))
    {
LABEL_22:
      if (([WeakRetained _shouldUseBuiltinInteractionController] & 1) == 0 && !v10)
      {
        goto LABEL_24;
      }

      traitCollection = [WeakRetained traitCollection];
      if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:traitCollection])
      {
        _shouldPauseRunningTransition = [(_UINavigationInteractiveTransitionBase *)self _shouldPauseRunningTransition];

        if (_shouldPauseRunningTransition)
        {
          v27 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
          v28 = [v27 count];

          if (v28)
          {
            LOBYTE(_isCurrentTransitionPreemptable) = 1;
            goto LABEL_25;
          }
        }
      }

      else
      {
      }

      _isCurrentTransitionPreemptable = [WeakRetained _isCurrentTransitionPreemptable];
      if ([WeakRetained _isTransitioning])
      {
        if (!_isCurrentTransitionPreemptable)
        {
          goto LABEL_25;
        }
      }

      else if (!(_isCurrentTransitionPreemptable & 1 | (([WeakRetained needsDeferredTransition] & 1) == 0)))
      {
        goto LABEL_24;
      }

      _transitionCoordinator = [WeakRetained _transitionCoordinator];
      v30 = _transitionCoordinator == 0;

      if ((v30 | _isCurrentTransitionPreemptable))
      {
        v31 = +[UIPeripheralHost sharedInstance];
        _isTransitioning = [v31 _isTransitioning];

        if ((_isTransitioning & 1) == 0)
        {
          _shouldInteractivePopGestureBeEnabled = [WeakRetained _shouldInteractivePopGestureBeEnabled];
          goto LABEL_6;
        }
      }

LABEL_24:
      LOBYTE(_isCurrentTransitionPreemptable) = 0;
      goto LABEL_25;
    }

    v17 = edgePanRecognizer->super.super.super._failureDependents;
    _failureRequirements2 = [(UIGestureRecognizer *)&self->_edgePanRecognizer->super.super.super.super.isa _failureRequirements];
    _failureDependents2 = [(UIGestureRecognizer *)&self->super._contentSwipeGestureRecognizer->super.super.super.super.isa _failureDependents];
    _failureRequirements3 = [(UIGestureRecognizer *)&self->super._contentSwipeGestureRecognizer->super.super.super.super.isa _failureRequirements];
    v36 = v17;
    v37 = _failureRequirements2;
    if (-[NSMutableSet count](v17, "count") == 1 && ![_failureRequirements2 count])
    {
      v21 = _failureRequirements3;
      if ([_failureRequirements3 count] == 1)
      {
        v23 = v36;
        v22 = _failureDependents2;
        if ([_failureDependents2 count])
        {
          v10 = 1;
        }

        else
        {
          anyObject = [(NSMutableSet *)v36 anyObject];
          if (anyObject == self->super._contentSwipeGestureRecognizer)
          {
            v34 = anyObject;
            anyObject2 = [v21 anyObject];
            v10 = anyObject2 != self->_edgePanRecognizer;

            anyObject = v34;
          }

          else
          {
            v10 = 1;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = _failureRequirements3;
    }

    v22 = _failureDependents2;
    v10 = 1;
    v23 = v36;
LABEL_21:

    goto LABEL_22;
  }

  _shouldInteractivePopGestureBeEnabled = [recognizerCopy _shouldReceiveEvent:eventCopy];
LABEL_6:
  LOBYTE(_isCurrentTransitionPreemptable) = _shouldInteractivePopGestureBeEnabled;
LABEL_25:

  return _isCurrentTransitionPreemptable;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:recognizerCopy])
  {
    navigationBar = [WeakRetained navigationBar];
    _existingToolbar = [WeakRetained _existingToolbar];
    if ((self->_edgePanRecognizer == recognizerCopy || (v11 = objc_loadWeakRetained(&self->super._gestureRecognizer), v11, v11 == recognizerCopy)) && (([navigationBar isHidden] & 1) == 0 && (objc_msgSend(navigationBar, "window"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(navigationBar, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(touchCopy, "locationInView:", navigationBar), v40.x = v22, v40.y = v23, v42.origin.x = v15, v42.origin.y = v17, v42.size.width = v19, v42.size.height = v21, v24 = CGRectContainsPoint(v42, v40), v13, v24) || (objc_msgSend(_existingToolbar, "isHidden") & 1) == 0 && (objc_msgSend(_existingToolbar, "window"), (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, objc_msgSend(_existingToolbar, "bounds"), v28 = v27, v30 = v29, v32 = v31, v34 = v33, objc_msgSend(touchCopy, "locationInView:", _existingToolbar), v41.x = v35, v41.y = v36, v43.origin.x = v28, v43.origin.y = v30, v43.size.width = v32, v43.size.height = v34, v37 = CGRectContainsPoint(v43, v41), v26, v37)))
    {
      v38 = 0;
    }

    else
    {
      v38 = self->super._contentSwipeGestureRecognizer != recognizerCopy || +[_UIParallaxTransitionPanGestureRecognizer isContentBackSwipeEnabled];
    }
  }

  else
  {
    v38 = 1;
  }

  return v38;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  topViewController = [WeakRetained topViewController];
  if (_UIViewControllerHierarchyWantsInteractivePopGesturesEnabled(topViewController))
  {
  }

  else
  {
    v7 = _UINavigationControllerWantsInteractivePopGesturesEnabled(WeakRetained);

    if (v7)
    {
      traitCollection = [WeakRetained traitCollection];
      if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:traitCollection])
      {
      }

      else
      {
        _interactionState = [(_UINavigationInteractiveTransitionBase *)self _interactionState];

        if (_interactionState)
        {
          goto LABEL_8;
        }
      }

      view = [beginCopy view];
      [beginCopy translationInView:view];
      v12 = v11;

      if (!self->super.__transitionWasStopped)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([beginCopy edges] & 2) != 0)
        {
          v13 = v12 >= 0.0;
          goto LABEL_9;
        }

        v13 = v12 <= 0.0;
        if (([beginCopy edges] & 8) != 0)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (![(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:recognizerCopy]|| self->super._contentSwipeGestureRecognizer == recognizerCopy)
  {
    v13.receiver = self;
    v13.super_class = _UINavigationInteractiveTransition;
    v8 = [(_UINavigationInteractiveTransitionBase *)&v13 _gestureRecognizer:recognizerCopy shouldBeRequiredToFailByGestureRecognizer:gestureRecognizerCopy];
  }

  else if (([gestureRecognizerCopy _isGestureType:16] & 1) != 0 || (objc_msgSend(gestureRecognizerCopy, "_shouldDelayUntilForceLevelRequirementIsMet") & 1) != 0 || -[UIScreenEdgePanGestureRecognizer _rootFeatureState](self->_edgePanRecognizer, "_rootFeatureState") == 2)
  {
    v8 = 0;
  }

  else
  {
    _parent = [(_UINavigationInteractiveTransitionBase *)self _parent];
    v11 = [_parent _splitViewControllerEnforcingClass:1];

    if ([v11 _shouldUseFluidSidebarGestures] && (objc_msgSend(v11, "_fluidOpenSidebarPresentationGestureRecognizer"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == gestureRecognizerCopy) || +[_UIPassthroughScrollInteraction _isPassthroughGestureRecognizer:](_UIPassthroughScrollInteraction, "_isPassthroughGestureRecognizer:", gestureRecognizerCopy))
    {
      v8 = 0;
    }

    else if (gestureRecognizerCopy)
    {
      v8 = (gestureRecognizerCopy[15] & 0x10) == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:recognizer])
  {
    v7 = [_UIPassthroughScrollInteraction _isPassthroughGestureRecognizer:gestureRecognizerCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gestureRecognizerView
{
  _parent = [(_UINavigationInteractiveTransitionBase *)self _parent];
  view = [_parent view];

  return view;
}

- (void)startInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  [WeakRetained setInteractiveTransition:1];
  _shouldIgnoreDelegateTransitionController = [WeakRetained _shouldIgnoreDelegateTransitionController];
  [WeakRetained _setShouldIgnoreDelegateTransitionController:1];
  v3 = [WeakRetained popViewControllerAnimated:1];
  [WeakRetained _setShouldIgnoreDelegateTransitionController:_shouldIgnoreDelegateTransitionController];
}

- (void)setNotInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  [WeakRetained setInteractiveTransition:0];
}

@end