@interface _UINavigationInteractiveTransition
- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)_isBackGestureRecognizer:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_UINavigationInteractiveTransition)initWithViewController:(id)a3 animator:(id)a4;
- (id)gestureRecognizerView;
- (void)_configureNavigationGesture;
- (void)_setShouldReverseLayoutDirection:(BOOL)a3;
- (void)setNotInteractiveTransition;
- (void)startInteractiveTransition;
@end

@implementation _UINavigationInteractiveTransition

- (void)_configureNavigationGesture
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  v15 = [WeakRetained view];

  v4 = objc_loadWeakRetained(&self->super._gestureRecognizer);
  v5 = v4;
  edgePanRecognizer = self->_edgePanRecognizer;
  if (edgePanRecognizer)
  {
    if (v4 != edgePanRecognizer)
    {
      [v15 removeGestureRecognizer:?];
      edgePanRecognizer = self->_edgePanRecognizer;
    }

    [(UIPanGestureRecognizer *)edgePanRecognizer setDelegate:0];
    v7 = self->_edgePanRecognizer;
    self->_edgePanRecognizer = 0;
  }

  if (v5)
  {
    [v15 removeGestureRecognizer:v5];
    [(UIPanGestureRecognizer *)v5 setDelegate:0];
    objc_storeWeak(&self->super._gestureRecognizer, 0);
  }

  v8 = self->super._contentSwipeGestureRecognizer;
  if (v8)
  {
    [v15 removeGestureRecognizer:v8];
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
  [v15 addGestureRecognizer:self->_edgePanRecognizer];
  if (+[_UIParallaxTransitionPanGestureRecognizer isContentBackSwipeEnabled])
  {
    v13 = [(_UINavigationInteractiveTransitionBase *)self _createContentSwipeGestureRecognizer];
    v14 = self->super._contentSwipeGestureRecognizer;
    self->super._contentSwipeGestureRecognizer = v13;

    [(UIGestureRecognizer *)self->super._contentSwipeGestureRecognizer setName:@"UINavigationController.contentSwipe"];
    [(UIScreenEdgePanGestureRecognizer *)self->super._contentSwipeGestureRecognizer setEdges:v10];
    [(UIPanGestureRecognizer *)self->super._contentSwipeGestureRecognizer setDelegate:self];
    [v15 addGestureRecognizer:self->super._contentSwipeGestureRecognizer];
    [(UIGestureRecognizer *)self->super._contentSwipeGestureRecognizer requireGestureRecognizerToFail:self->_edgePanRecognizer];
  }

  objc_storeWeak(&self->super._gestureRecognizer, self->_edgePanRecognizer);
}

- (_UINavigationInteractiveTransition)initWithViewController:(id)a3 animator:(id)a4
{
  v10.receiver = self;
  v10.super_class = _UINavigationInteractiveTransition;
  v5 = a4;
  v6 = a3;
  v7 = [(UIPercentDrivenInteractiveTransition *)&v10 init];
  v7->super.__useAugmentedShouldPopDecisionProcedure = _UINavigationControllerUseAugmentedPopGesture();
  v7->super.__interactionState = 0;
  objc_storeWeak(&v7->super.__parent, v6);
  v7->super.__completesTransitionOnEnd = 1;
  [(_UINavigationInteractiveTransitionBase *)v7 setAnimationController:v5, v10.receiver, v10.super_class];

  [(_UINavigationInteractiveTransition *)v7 _configureNavigationGesture];
  [(UIPercentDrivenInteractiveTransition *)v7 _setUsesPacedFractionComplete:1];
  v8 = [v6 traitCollection];

  LODWORD(v6) = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:v8];
  if (v6)
  {
    [(UIPercentDrivenInteractiveTransition *)v7 _setClampsPercentComplete:0];
  }

  return v7;
}

- (void)_setShouldReverseLayoutDirection:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UINavigationInteractiveTransition;
  [(_UINavigationInteractiveTransitionBase *)&v6 _setShouldReverseLayoutDirection:?];
  if (v3)
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

- (BOOL)_isBackGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._gestureRecognizer);
  v6 = WeakRetained == v4 || self->_edgePanRecognizer == v4 || self->super._contentSwipeGestureRecognizer == v4;

  return v6;
}

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:v6])
  {
    if (dyld_program_sdk_at_least())
    {
      v9 = [(UIGestureRecognizer *)v6 _failureDependents];
      if ([v9 count])
      {
        v10 = 1;
      }

      else
      {
        v13 = [(UIGestureRecognizer *)v6 _failureRequirements];
        v10 = [v13 count] != 0;
      }
    }

    else
    {
      v10 = 0;
    }

    edgePanRecognizer = self->_edgePanRecognizer;
    if (!edgePanRecognizer || (contentSwipeGestureRecognizer = self->super._contentSwipeGestureRecognizer) == 0 || (edgePanRecognizer != v6 ? (v16 = contentSwipeGestureRecognizer == v6) : (v16 = 1), !v16))
    {
LABEL_22:
      if (([WeakRetained _shouldUseBuiltinInteractionController] & 1) == 0 && !v10)
      {
        goto LABEL_24;
      }

      v25 = [WeakRetained traitCollection];
      if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:v25])
      {
        v26 = [(_UINavigationInteractiveTransitionBase *)self _shouldPauseRunningTransition];

        if (v26)
        {
          v27 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
          v28 = [v27 count];

          if (v28)
          {
            LOBYTE(v12) = 1;
            goto LABEL_25;
          }
        }
      }

      else
      {
      }

      v12 = [WeakRetained _isCurrentTransitionPreemptable];
      if ([WeakRetained _isTransitioning])
      {
        if (!v12)
        {
          goto LABEL_25;
        }
      }

      else if (!(v12 & 1 | (([WeakRetained needsDeferredTransition] & 1) == 0)))
      {
        goto LABEL_24;
      }

      v29 = [WeakRetained _transitionCoordinator];
      v30 = v29 == 0;

      if ((v30 | v12))
      {
        v31 = +[UIPeripheralHost sharedInstance];
        v32 = [v31 _isTransitioning];

        if ((v32 & 1) == 0)
        {
          v11 = [WeakRetained _shouldInteractivePopGestureBeEnabled];
          goto LABEL_6;
        }
      }

LABEL_24:
      LOBYTE(v12) = 0;
      goto LABEL_25;
    }

    v17 = edgePanRecognizer->super.super.super._failureDependents;
    v18 = [(UIGestureRecognizer *)&self->_edgePanRecognizer->super.super.super.super.isa _failureRequirements];
    v19 = [(UIGestureRecognizer *)&self->super._contentSwipeGestureRecognizer->super.super.super.super.isa _failureDependents];
    v20 = [(UIGestureRecognizer *)&self->super._contentSwipeGestureRecognizer->super.super.super.super.isa _failureRequirements];
    v36 = v17;
    v37 = v18;
    if (-[NSMutableSet count](v17, "count") == 1 && ![v18 count])
    {
      v21 = v20;
      if ([v20 count] == 1)
      {
        v23 = v36;
        v22 = v19;
        if ([v19 count])
        {
          v10 = 1;
        }

        else
        {
          v33 = [(NSMutableSet *)v36 anyObject];
          if (v33 == self->super._contentSwipeGestureRecognizer)
          {
            v34 = v33;
            v35 = [v21 anyObject];
            v10 = v35 != self->_edgePanRecognizer;

            v33 = v34;
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
      v21 = v20;
    }

    v22 = v19;
    v10 = 1;
    v23 = v36;
LABEL_21:

    goto LABEL_22;
  }

  v11 = [v6 _shouldReceiveEvent:v7];
LABEL_6:
  LOBYTE(v12) = v11;
LABEL_25:

  return v12;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:v6])
  {
    v9 = [WeakRetained navigationBar];
    v10 = [WeakRetained _existingToolbar];
    if ((self->_edgePanRecognizer == v6 || (v11 = objc_loadWeakRetained(&self->super._gestureRecognizer), v11, v11 == v6)) && (([v9 isHidden] & 1) == 0 && (objc_msgSend(v9, "window"), (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v9, "bounds"), v15 = v14, v17 = v16, v19 = v18, v21 = v20, objc_msgSend(v7, "locationInView:", v9), v40.x = v22, v40.y = v23, v42.origin.x = v15, v42.origin.y = v17, v42.size.width = v19, v42.size.height = v21, v24 = CGRectContainsPoint(v42, v40), v13, v24) || (objc_msgSend(v10, "isHidden") & 1) == 0 && (objc_msgSend(v10, "window"), (v25 = objc_claimAutoreleasedReturnValue()) != 0) && (v26 = v25, objc_msgSend(v10, "bounds"), v28 = v27, v30 = v29, v32 = v31, v34 = v33, objc_msgSend(v7, "locationInView:", v10), v41.x = v35, v41.y = v36, v43.origin.x = v28, v43.origin.y = v30, v43.size.width = v32, v43.size.height = v34, v37 = CGRectContainsPoint(v43, v41), v26, v37)))
    {
      v38 = 0;
    }

    else
    {
      v38 = self->super._contentSwipeGestureRecognizer != v6 || +[_UIParallaxTransitionPanGestureRecognizer isContentBackSwipeEnabled];
    }
  }

  else
  {
    v38 = 1;
  }

  return v38;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  v6 = [WeakRetained topViewController];
  if (_UIViewControllerHierarchyWantsInteractivePopGesturesEnabled(v6))
  {
  }

  else
  {
    v7 = _UINavigationControllerWantsInteractivePopGesturesEnabled(WeakRetained);

    if (v7)
    {
      v8 = [WeakRetained traitCollection];
      if ([UIView _interruptibleParallaxTransitionsEnabledWithTraitCollection:v8])
      {
      }

      else
      {
        v9 = [(_UINavigationInteractiveTransitionBase *)self _interactionState];

        if (v9)
        {
          goto LABEL_8;
        }
      }

      v10 = [v4 view];
      [v4 translationInView:v10];
      v12 = v11;

      if (!self->super.__transitionWasStopped)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 edges] & 2) != 0)
        {
          v13 = v12 >= 0.0;
          goto LABEL_9;
        }

        v13 = v12 <= 0.0;
        if (([v4 edges] & 8) != 0)
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

- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:v6]|| self->super._contentSwipeGestureRecognizer == v6)
  {
    v13.receiver = self;
    v13.super_class = _UINavigationInteractiveTransition;
    v8 = [(_UINavigationInteractiveTransitionBase *)&v13 _gestureRecognizer:v6 shouldBeRequiredToFailByGestureRecognizer:v7];
  }

  else if (([v7 _isGestureType:16] & 1) != 0 || (objc_msgSend(v7, "_shouldDelayUntilForceLevelRequirementIsMet") & 1) != 0 || -[UIScreenEdgePanGestureRecognizer _rootFeatureState](self->_edgePanRecognizer, "_rootFeatureState") == 2)
  {
    v8 = 0;
  }

  else
  {
    v10 = [(_UINavigationInteractiveTransitionBase *)self _parent];
    v11 = [v10 _splitViewControllerEnforcingClass:1];

    if ([v11 _shouldUseFluidSidebarGestures] && (objc_msgSend(v11, "_fluidOpenSidebarPresentationGestureRecognizer"), v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == v7) || +[_UIPassthroughScrollInteraction _isPassthroughGestureRecognizer:](_UIPassthroughScrollInteraction, "_isPassthroughGestureRecognizer:", v7))
    {
      v8 = 0;
    }

    else if (v7)
    {
      v8 = (v7[15] & 0x10) == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  if ([(_UINavigationInteractiveTransition *)self _isBackGestureRecognizer:a3])
  {
    v7 = [_UIPassthroughScrollInteraction _isPassthroughGestureRecognizer:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)gestureRecognizerView
{
  v2 = [(_UINavigationInteractiveTransitionBase *)self _parent];
  v3 = [v2 view];

  return v3;
}

- (void)startInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  [WeakRetained setInteractiveTransition:1];
  v2 = [WeakRetained _shouldIgnoreDelegateTransitionController];
  [WeakRetained _setShouldIgnoreDelegateTransitionController:1];
  v3 = [WeakRetained popViewControllerAnimated:1];
  [WeakRetained _setShouldIgnoreDelegateTransitionController:v2];
}

- (void)setNotInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->super.__parent);
  [WeakRetained setInteractiveTransition:0];
}

@end