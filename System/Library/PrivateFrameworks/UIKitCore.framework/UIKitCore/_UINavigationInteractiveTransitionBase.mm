@interface _UINavigationInteractiveTransitionBase
- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)_shouldPauseRunningTransition;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)popGesture:(id)a3 withRemainingDuration:(double)a4 shouldPopWithVelocity:(double *)a5;
- (UIPanGestureRecognizer)gestureRecognizer;
- (UIViewController)_parent;
- (_UINavigationInteractiveTransitionBase)initWithGestureRecognizerView:(id)a3 animator:(id)a4 delegate:(id)a5;
- (_UINavigationInteractiveTransitionBaseDelegate)delegate;
- (double)_translationCoefficient;
- (id)_createContentSwipeGestureRecognizer;
- (id)gestureRecognizerView;
- (void)_completeStoppedInteractiveTransition;
- (void)_resetInteractionController;
- (void)_stopInteractiveTransition;
- (void)_updateStatistics:(id)a3 firstSample:(BOOL)a4 finalSample:(BOOL)a5;
- (void)cancelInteractiveTransition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)handleNavigationTransition:(id)a3;
- (void)setAnimationController:(id)a3;
- (void)startInteractiveTransition;
@end

@implementation _UINavigationInteractiveTransitionBase

- (id)_createContentSwipeGestureRecognizer
{
  v3 = [[_UIParallaxTransitionPanGestureRecognizer alloc] initWithTarget:self action:sel_handleNavigationTransition_];
  [(UIScreenEdgePanGestureRecognizer *)v3 _setRecognizesWithoutEdge:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesBegan:0];
  [(UIPanGestureRecognizer *)v3 setDelegate:self];

  return v3;
}

- (void)dealloc
{
  v3 = [(_UINavigationInteractiveTransitionBase *)self gestureRecognizer];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 view];
    v6 = v5;
    if (v5)
    {
      [v5 removeGestureRecognizer:v4];
    }
  }

  if (self->__updateRequestActive)
  {
    v7 = *(__UILogGetCategoryCachedImpl("_UINavigationParallaxTransition", &dealloc___s_category_9) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIUpdateRequest still active during navigation transition dealloc. Should completeTransition: have been called on the interaction context earlier?", buf, 2u);
    }

    _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, __interactiveNavigationUpdateRequest, 0x100029u);
    self->__updateRequestActive = 0;
  }

  objc_storeWeak(&self->__parent, 0);

  v8.receiver = self;
  v8.super_class = _UINavigationInteractiveTransitionBase;
  [(_UINavigationInteractiveTransitionBase *)&v8 dealloc];
}

- (UIPanGestureRecognizer)gestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizer);

  return WeakRetained;
}

- (id)gestureRecognizerView
{
  WeakRetained = objc_loadWeakRetained(&self->_gestureRecognizerView);

  return WeakRetained;
}

- (_UINavigationInteractiveTransitionBase)initWithGestureRecognizerView:(id)a3 animator:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v17.receiver = self;
  v17.super_class = _UINavigationInteractiveTransitionBase;
  v9 = a5;
  v10 = a4;
  v11 = [(UIPercentDrivenInteractiveTransition *)&v17 init];
  [(_UINavigationInteractiveTransitionBase *)v11 setDelegate:v9, v17.receiver, v17.super_class];
  v11->__useAugmentedShouldPopDecisionProcedure = _UINavigationControllerUseAugmentedPopGesture();
  [(_UINavigationInteractiveTransitionBase *)v11 _setInteractionState:0];
  objc_storeWeak(&v11->_gestureRecognizerView, v8);
  -[_UINavigationInteractiveTransitionBase _setShouldReverseLayoutDirection:](v11, "_setShouldReverseLayoutDirection:", [v8 _shouldReverseLayoutDirection]);
  [(_UINavigationInteractiveTransitionBase *)v11 _setCompletesTransitionOnEnd:1];
  [(_UINavigationInteractiveTransitionBase *)v11 setAnimationController:v10];

  v12 = [v9 gestureRecognizerForInteractiveTransition:v11 WithTarget:v11 action:sel_handleNavigationTransition_];

  [v12 setName:@"UINavigationController.edgeSwipeBase"];
  [v12 setDelaysTouchesBegan:0];
  [v12 setMaximumNumberOfTouches:1];
  [v12 setDelegate:v11];
  objc_storeWeak(&v11->_gestureRecognizer, v12);
  [v8 addGestureRecognizer:v12];
  objc_storeStrong(&v11->_edgeSwipeGestureRecognizer, v12);
  if (+[_UIParallaxTransitionPanGestureRecognizer isContentBackSwipeEnabled])
  {
    v13 = [(_UINavigationInteractiveTransitionBase *)v11 _createContentSwipeGestureRecognizer];
    [(UIGestureRecognizer *)v13 setName:@"UINavigationController.contentSwipeBase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[UIScreenEdgePanGestureRecognizer setEdges:](v13, "setEdges:", [v12 edges]);
    }

    [v8 addGestureRecognizer:v13];
    contentSwipeGestureRecognizer = v11->_contentSwipeGestureRecognizer;
    v11->_contentSwipeGestureRecognizer = v13;
    v15 = v13;

    [(UIGestureRecognizer *)v15 requireGestureRecognizerToFail:v12];
  }

  return v11;
}

- (void)setAnimationController:(id)a3
{
  objc_storeStrong(&self->_animationController, a3);
  v5 = a3;
  [(_UINavigationParallaxTransition *)self->_animationController setInteractionController:self];
}

- (void)_resetInteractionController
{
  [(_UINavigationInteractiveTransitionBase *)self _setInteractionState:0];

  [(_UINavigationInteractiveTransitionBase *)self setAnimationController:0];
}

- (void)cancelInteractiveTransition
{
  v3.receiver = self;
  v3.super_class = _UINavigationInteractiveTransitionBase;
  [(UIPercentDrivenInteractiveTransition *)&v3 cancelInteractiveTransition];
  [(_UINavigationInteractiveTransitionBase *)self setAnimationController:0];
}

- (void)finishInteractiveTransition
{
  v3.receiver = self;
  v3.super_class = _UINavigationInteractiveTransitionBase;
  [(UIPercentDrivenInteractiveTransition *)&v3 finishInteractiveTransition];
  [(_UINavigationInteractiveTransitionBase *)self setAnimationController:0];
}

- (void)_stopInteractiveTransition
{
  self->__transitionWasStopped = 1;
  v2.receiver = self;
  v2.super_class = _UINavigationInteractiveTransitionBase;
  [(UIPercentDrivenInteractiveTransition *)&v2 _stopInteractiveTransition];
}

- (void)_completeStoppedInteractiveTransition
{
  if (self->__stoppedTransitionWasCancelled)
  {
    [(_UINavigationInteractiveTransitionBase *)self cancelInteractiveTransition];
  }

  else
  {
    [(_UINavigationInteractiveTransitionBase *)self finishInteractiveTransition];
  }

  self->__transitionWasStopped = 0;
}

- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  if (self->_contentSwipeGestureRecognizer == a3)
  {
    return 0;
  }

  else
  {
    return [a4 _isGestureType:9];
  }
}

- (BOOL)_gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UINavigationInteractiveTransitionBase *)self contentSwipeGestureRecognizer];

  if (v8 == v7)
  {
    v9 = [v6 _isGestureType:21];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateStatistics:(id)a3 firstSample:(BOOL)a4 finalSample:(BOOL)a5
{
  if (self->__useAugmentedShouldPopDecisionProcedure)
  {
    v6 = a4;
    v8 = a3;
    v9 = [v8 _activeEvents];
    v41 = [v9 anyObject];

    [v41 timestamp];
    v11 = v10;
    [(_UINavigationInteractiveTransitionBase *)self _translationCoefficient];
    v13 = v12;
    v14 = [v8 view];
    [v8 translationInView:v14];
    v16 = v15;

    v17 = v13 * v16;
    v18 = [v8 view];
    [v8 velocityInView:v18];
    v20 = v19;

    totalDistance = self->_totalDistance;
    if (v17 >= 0.0)
    {
      v22 = v17 / totalDistance;
    }

    else
    {
      v22 = 0.0;
    }

    v23 = v13 * v20 / totalDistance;
    if (v6)
    {
      self->_previousTimeStamp = v11;
      self->_skipTimeStamp = v11;
      self->_previousDisplacement = v22;
      self->_previousVelocity = v23;
      self->_previousAcceleration = 0.0;
      self->_averageVelocity = v23;
      self->_averageAcceleration = 0.0;
      self->_timestamps[0] = 0.0;
      self->_velocities[0] = v23;
      self->_accelerations[0] = 0.0;
      self->_sampleCount = 1;
      self->_isInEdgeFlickPhase = 1;
    }

    else
    {
      previousTimeStamp = self->_previousTimeStamp;
      v25 = v11 - self->_skipTimeStamp;
      self->_skipTimeStamp = v11;
      if (v25 >= 0.01 || v25 > 0.001 && self->_previousDisplacement != v22)
      {
        v26 = v11 - previousTimeStamp;
        sampleCount = self->_sampleCount;
        v28 = sampleCount % 3;
        if (sampleCount > 2)
        {
          self->_averageVelocity = (v23 + self->_averageVelocity * 3.0 - self->_velocities[v28]) / 3.0;
        }

        else
        {
          self->_averageVelocity = (v23 + self->_averageVelocity * sampleCount) / (sampleCount + 1);
        }

        self->_velocities[v28] = v23;
        self->_timestamps[v28] = v26;
        if (self->_isInEdgeFlickPhase)
        {
          v29 = +[_UIFluidNavigationTransitionsDomain parallaxSettings];
          [v29 edgeFlickBoostThreshold];
          v31 = v30;

          averageVelocity = self->_averageVelocity;
          if (averageVelocity < 0.0)
          {
            averageVelocity = -averageVelocity;
          }

          if (averageVelocity < v31)
          {
            self->_isInEdgeFlickPhase = 0;
          }
        }

        v33 = (v23 - self->_previousVelocity) / v26;
        previousAcceleration = self->_previousAcceleration;
        v35 = vabdd_f64(v33, previousAcceleration);
        v36 = -5.0;
        if (v33 - previousAcceleration > 0.0)
        {
          v36 = 5.0;
        }

        v37 = previousAcceleration + v36;
        if (v35 > 5.0)
        {
          v33 = v37;
        }

        v38 = self->_sampleCount;
        if (v38 > 2)
        {
          self->_averageAcceleration = (v33 + self->_averageAcceleration * 3.0 - self->_accelerations[v28]) / 3.0;
          v40 = v38 + 1;
        }

        else
        {
          v39 = v33 + self->_averageAcceleration * v38;
          v40 = v38 + 1;
          self->_averageAcceleration = v39 / v40;
        }

        self->_accelerations[v28] = v33;
        self->_previousAcceleration = v33;
        self->_previousVelocity = v23;
        self->_previousDisplacement = v22;
        self->_previousTimeStamp = v11;
        self->_sampleCount = v40;
      }
    }
  }
}

- (BOOL)popGesture:(id)a3 withRemainingDuration:(double)a4 shouldPopWithVelocity:(double *)a5
{
  v8 = a3;
  v9 = v8;
  if (self->__useAugmentedShouldPopDecisionProcedure)
  {
    WeakRetained = objc_loadWeakRetained(&self->__parent);
    if (self->_sampleCount >= 3 && self->__interactionState == 2)
    {
      [(UIPercentDrivenInteractiveTransition *)self percentComplete];
      v12 = v11;
      v13 = [WeakRetained lastOperation];
      v14 = 1.0 - v12;
      if (v13 != 1)
      {
        v14 = v12;
      }

      v15 = v14 + self->_averageAcceleration * 0.5 * a4 * a4 + self->_averageVelocity * a4;
      totalDistance = self->_totalDistance;
      v17 = v15 > fmin(187.5 / totalDistance, 0.5);
      v18 = totalDistance * self->_previousVelocity;
    }

    else
    {
      v22 = [v9 view];
      [v9 velocityInView:v22];
      v18 = v23;

      v17 = self->_averageVelocity > 0.0 && self->__interactionState != 1;
    }

    v24 = [WeakRetained traitCollection];
    if ([UIView _fluidParallaxTransitionsEnabledWithTraitCollection:v24])
    {
      isInEdgeFlickPhase = self->_isInEdgeFlickPhase;

      if (!isInEdgeFlickPhase)
      {
LABEL_15:
        *a5 = v18;

        goto LABEL_16;
      }

      v24 = +[_UIFluidNavigationTransitionsDomain parallaxSettings];
      [v24 edgeFlickVelocityBoostFactor];
      v18 = v18 * v26;
    }

    goto LABEL_15;
  }

  v19 = [v8 view];
  [v9 velocityInView:v19];
  v21 = v20;

  v17 = v21 >= 0.0;
LABEL_16:

  return v17;
}

- (void)startInteractiveTransition
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startInteractiveTransition:self];
}

- (double)_translationCoefficient
{
  v3 = [(_UINavigationInteractiveTransitionBase *)self _shouldReverseLayoutDirection];
  result = -1.0;
  if (self->_shouldReverseTranslation == v3)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_shouldPauseRunningTransition
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained lastOperation] == 2)
  {
    v4 = [v3 _transitionConductor];
    v5 = [v4 transitionContext];
    v6 = [v5 transitionWasCancelled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleNavigationTransition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__parent);
  v6 = [v4 view];
  [v4 translationInView:v6];
  v8 = v7;

  v9 = [v4 view];
  [v9 bounds];
  v11 = v10;

  v12 = [v4 state];
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        goto LABEL_12;
      }

      self->__interactionState = 0;
      goto LABEL_11;
    }

    [(_UINavigationInteractiveTransitionBase *)self _updateStatistics:v4 firstSample:0 finalSample:1];
    [(UIPercentDrivenInteractiveTransition *)self duration];
    v26 = v25;
    [(UIPercentDrivenInteractiveTransition *)self percentComplete];
    v28 = v27;
    v35 = 0.0;
    v29 = [(_UINavigationInteractiveTransitionBase *)self popGesture:v4 withRemainingDuration:&v35 shouldPopWithVelocity:v26];
    self->__interactionState = 3;
    v30 = v29 ^ ([WeakRetained lastOperation] == 1);
    v31 = 1.0 - v28;
    if (!v30)
    {
      v31 = v28;
    }

    v32 = v35;
    if (v35 != 0.0)
    {
      v32 = v26 / (v11 / fabs(v35));
      if (v31 < v32)
      {
        v31 = v32;
      }
    }

    [(UIPercentDrivenInteractiveTransition *)self setCompletionSpeed:v31, v32];
    [(_UINavigationInteractiveTransitionBase *)self setStartingVelocity:v35 / v11];
    v33 = [[UICubicTimingParameters alloc] initWithAnimationCurve:[(UIPercentDrivenInteractiveTransition *)self completionCurve]];
    [(UIPercentDrivenInteractiveTransition *)self setTimingCurve:v33];

    v34 = [(_UINavigationInteractiveTransitionBase *)self _completesTransitionOnEnd];
    if (v30)
    {
      if (v34)
      {
        [(_UINavigationInteractiveTransitionBase *)self finishInteractiveTransition];
        goto LABEL_34;
      }

      self->__stoppedTransitionWasCancelled = 0;
    }

    else
    {
      if (v34)
      {
LABEL_11:
        [(_UINavigationInteractiveTransitionBase *)self cancelInteractiveTransition];
        goto LABEL_34;
      }

      self->__stoppedTransitionWasCancelled = 1;
    }

    [(_UINavigationInteractiveTransitionBase *)self _stopInteractiveTransition];
LABEL_34:
    if (self->__updateRequestActive)
    {
      _UIUpdateRequestRegistryRemoveRecord(&mainRegistry, __interactiveNavigationUpdateRequest, 0x100029u);
      self->__updateRequestActive = 0;
    }

    goto LABEL_36;
  }

  if (v12 != 1)
  {
    if (v12 == 2)
    {
      [(_UINavigationInteractiveTransitionBase *)self _translationCoefficient];
      v14 = v8 * v13 / v11;
      v15 = [WeakRetained lastOperation];
      v16 = -v14;
      if (v15 != 1)
      {
        v16 = v14;
      }

      v17 = self->_percentCompleteWhenPaused + v16;
      v18 = [WeakRetained traitCollection];
      v19 = [UIView _fluidParallaxTransitionsEnabledWithTraitCollection:v18];

      if (v19)
      {
        v20 = [(UIPanGestureRecognizer *)v4 _scrollDeviceCategory];
        _UIScrollViewRubberBandCoefficient(v20);
        v21 = +[_UIFluidNavigationTransitionsDomain parallaxSettings];
        [v21 rubberBandExtent];
        _UIScrollViewRubberBandOffsetWithoutDecorationForOffset(0, v17, 1.0, 0.0, v22);
        v17 = v23;
      }

      else if (v17 >= 1.0)
      {
        v17 = 0.999;
      }

      [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:v17];
      [(_UINavigationInteractiveTransitionBase *)self _updateStatistics:v4 firstSample:0 finalSample:0];
      self->__interactionState = 2;
      goto LABEL_36;
    }

LABEL_12:
    self->__interactionState = 0;
    [(_UINavigationInteractiveTransitionBase *)self setNotInteractiveTransition];
    goto LABEL_36;
  }

  self->_totalDistance = v11;
  self->__interactionState = 1;
  if ([WeakRetained _isTransitioning] && -[_UINavigationInteractiveTransitionBase _shouldPauseRunningTransition](self, "_shouldPauseRunningTransition"))
  {
    [(UIPercentDrivenInteractiveTransition *)self pauseInteractiveTransition];
    [(UIPercentDrivenInteractiveTransition *)self percentComplete];
  }

  else
  {
    self->_wantsInteractiveStart = 1;
    [(_UINavigationInteractiveTransitionBase *)self startInteractiveTransition];
    self->_wantsInteractiveStart = 0;
    v24 = 0.0;
  }

  self->_percentCompleteWhenPaused = v24;
  [(_UINavigationInteractiveTransitionBase *)self _updateStatistics:v4 firstSample:1 finalSample:0];
  if (!self->__updateRequestActive)
  {
    _UIUpdateRequestRegistryAddRecord(&mainRegistry, __interactiveNavigationUpdateRequest, 0x100029u);
    self->__updateRequestActive = 1;
  }

LABEL_36:
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained interactiveTransition:self gestureRecognizer:v7 shouldRecognizeSimultaneouslyWithGestureRecognizer:v6];

  return self;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);
  if (([WeakRetained _isTransitioning] & 1) != 0 || (objc_msgSend(WeakRetained, "needsDeferredTransition") & 1) != 0 || self->__transitionWasStopped)
  {
    v5 = 0;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v7 shouldBeginInteractiveTransition:self];
  }

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained interactiveTransition:self gestureRecognizer:v6 shouldReceiveTouch:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (UIViewController)_parent
{
  WeakRetained = objc_loadWeakRetained(&self->__parent);

  return WeakRetained;
}

- (_UINavigationInteractiveTransitionBaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end