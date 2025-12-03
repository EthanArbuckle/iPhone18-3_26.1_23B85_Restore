@interface UIPercentDrivenInteractiveTransition
- (BOOL)_startInterruptibleTransition:(id)transition;
- (BOOL)_useAnimatorTrackingToDriveTransition;
- (CGFloat)completionSpeed;
- (CGFloat)percentComplete;
- (UIPercentDrivenInteractiveTransition)init;
- (double)_durationFactorForPercentComplete:(double)complete reversed:(BOOL)reversed;
- (void)_continueInterruptibleTransitionFromPercentComplete:(double)complete reversed:(BOOL)reversed;
- (void)_stopInteractiveTransition;
- (void)_stopInteractiveTransition:(id)transition;
- (void)_updateInteractiveTransition:(id)transition percent:(double)percent isFinished:(BOOL)finished didComplete:(BOOL)complete;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)pauseInteractiveTransition;
- (void)startInteractiveTransition:(id)transition;
- (void)startInteractiveTransition:(id)transition containerViews:(id)views animation:(id)animation;
- (void)updateInteractiveTransition:(CGFloat)percentComplete;
@end

@implementation UIPercentDrivenInteractiveTransition

- (UIPercentDrivenInteractiveTransition)init
{
  self->_duration = 0.0;
  self->_completionSpeed = 1.0;
  self->_completionCurve = 7;
  self->_wantsInteractiveStart = 1;
  self->__clampsPercentComplete = 1;
  v3.receiver = self;
  v3.super_class = UIPercentDrivenInteractiveTransition;
  return [(UIPercentDrivenInteractiveTransition *)&v3 init];
}

- (CGFloat)percentComplete
{
  v2 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  firstObject = [v2 firstObject];

  [firstObject _previousPercentComplete];
  v5 = v4;

  return v5;
}

- (CGFloat)completionSpeed
{
  result = self->_completionSpeed;
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (double)_durationFactorForPercentComplete:(double)complete reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  [(UIPercentDrivenInteractiveTransition *)self completionSpeed];
  if (v6 == 0.0)
  {
    return 0.0;
  }

  completeCopy = 1.0 - complete;
  if (reversedCopy)
  {
    completeCopy = complete;
  }

  return completeCopy / v6;
}

- (void)_continueInterruptibleTransitionFromPercentComplete:(double)complete reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  interruptibleAnimator = self->_interruptibleAnimator;
  if (!interruptibleAnimator)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewControllerTransitioning.m" lineNumber:728 description:{@"Expected an interruptible animator for %@", self}];

    interruptibleAnimator = self->_interruptibleAnimator;
  }

  [(UIViewImplicitlyAnimating *)interruptibleAnimator setReversed:reversedCopy];
  timingCurve = [(UIPercentDrivenInteractiveTransition *)self timingCurve];
  if (timingCurve)
  {

LABEL_6:
    [(UIPercentDrivenInteractiveTransition *)self _durationFactorForPercentComplete:dyld_program_sdk_at_least() & reversedCopy reversed:complete];
    v11 = v10;
    v12 = [(UIViewImplicitlyAnimating *)self->_interruptibleAnimator conformsToProtocol:&unk_1EFE9F500];
    v13 = self->_interruptibleAnimator;
    if (v12)
    {
      timingCurve2 = v13;
      [(UIPercentDrivenInteractiveTransition *)self _startingVelocity];
      [(UIViewImplicitlyAnimating *)timingCurve2 _continueAnimationWithStartingVelocity:?];
    }

    else
    {
      timingCurve2 = [(UIPercentDrivenInteractiveTransition *)self timingCurve];
      [(UIViewImplicitlyAnimating *)v13 continueAnimationWithTimingParameters:timingCurve2 durationFactor:v11];
    }

    return;
  }

  [(UIPercentDrivenInteractiveTransition *)self completionSpeed];
  if (v9 != 1.0)
  {
    goto LABEL_6;
  }

  v14 = self->_interruptibleAnimator;

  [(UIViewImplicitlyAnimating *)v14 startAnimation];
}

- (BOOL)_useAnimatorTrackingToDriveTransition
{
  if (self->_animationTrackingAnimatorUUID)
  {
    return 1;
  }

  if (self->_interruptibleAnimator)
  {
    return 0;
  }

  return +[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators];
}

- (void)_updateInteractiveTransition:(id)transition percent:(double)percent isFinished:(BOOL)finished didComplete:(BOOL)complete
{
  completeCopy = complete;
  finishedCopy = finished;
  v120 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  interruptibleAnimator = self->_interruptibleAnimator;
  if (!interruptibleAnimator)
  {
    v83 = a2;
    firstObject = [transitionCopy firstObject];
    containerView = [firstObject containerView];
    layer = [containerView layer];

    firstObject2 = [transitionCopy firstObject];
    containerView2 = [firstObject2 containerView];

    firstObject3 = [transitionCopy firstObject];
    _containerViews = [firstObject3 _containerViews];

    firstObject4 = [transitionCopy firstObject];
    _auxContext = [firstObject4 _auxContext];
    if (_auxContext)
    {
      firstObject5 = [transitionCopy firstObject];
      _auxContext2 = [firstObject5 _auxContext];
      _alongsideAnimationViews = [_auxContext2 _alongsideAnimationViews];
    }

    else
    {
      _alongsideAnimationViews = 0;
    }

    if (!finishedCopy)
    {
      v29 = layer;
      if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
      {
        v31 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:self->_animationTrackingAnimatorUUID];
        [v31 pauseAnimation];
        v32 = containerView2;
        v33 = _containerViews;
        if (self->__usesPacedFractionComplete && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v31 setPacedFractionComplete:percent];
        }

        else
        {
          [v31 setFractionComplete:percent];
        }

        v38 = _alongsideAnimationViews;
      }

      else
      {
        v32 = containerView2;
        v33 = _containerViews;
        if ([transitionCopy count] != 1)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v83 object:self file:@"UIViewControllerTransitioning.m" lineNumber:800 description:{@"Unsupported path when one interactor is driving multiple (%lu) transitions.", objc_msgSend(transitionCopy, "count")}];
        }

        v39 = self->_duration * percent;
        if (_containerViews)
        {
          v113 = 0u;
          v114 = 0u;
          v111 = 0u;
          v112 = 0u;
          v40 = _containerViews;
          v41 = [v40 countByEnumeratingWithState:&v111 objects:v119 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v112;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v112 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v111 + 1) + 8 * i);
                layer2 = [v45 layer];
                [layer2 setTimeOffset:v39];

                [v45 layoutBelowIfNeeded];
              }

              v42 = [v40 countByEnumeratingWithState:&v111 objects:v119 count:16];
            }

            while (v42);
          }
        }

        else
        {
          [v29 setTimeOffset:v39];
          [containerView2 layoutBelowIfNeeded];
        }

        v38 = _alongsideAnimationViews;
        if (_alongsideAnimationViews)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v61 = _alongsideAnimationViews;
          v62 = [v61 countByEnumeratingWithState:&v107 objects:v118 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v108;
            do
            {
              for (j = 0; j != v63; ++j)
              {
                if (*v108 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v107 + 1) + 8 * j);
                layer3 = [v66 layer];
                [layer3 setTimeOffset:v39];
                [v66 layoutBelowIfNeeded];
              }

              v63 = [v61 countByEnumeratingWithState:&v107 objects:v118 count:16];
            }

            while (v63);
          }

          v38 = _alongsideAnimationViews;
        }
      }

      goto LABEL_80;
    }

    if ([(UIPercentDrivenInteractiveTransition *)self _isTransitionInterrupted])
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v24 = transitionCopy;
      v25 = [v24 countByEnumeratingWithState:&v103 objects:v117 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v104;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v104 != v27)
            {
              objc_enumerationMutation(v24);
            }

            [*(*(&v103 + 1) + 8 * k) setTransitionWasCancelled:!completeCopy];
          }

          v26 = [v24 countByEnumeratingWithState:&v103 objects:v117 count:16];
        }

        while (v26);
      }

      v29 = layer;
      if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
      {
        _uuid = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:self->_animationTrackingAnimatorUUID];
        [_uuid stopAnimation:0];
        [_uuid finishAnimationAtPosition:!completeCopy];
      }

      else
      {
        _uuid = [(UIPercentDrivenInteractiveTransition *)self _uuid];
        [UIView _finalizeStoppedAnimationWithUUID:_uuid reverseAnimation:!completeCopy];
      }

      v32 = containerView2;
      v33 = _containerViews;

      [(UIPercentDrivenInteractiveTransition *)self _setTransitionInterrupted:0];
      v38 = _alongsideAnimationViews;
      goto LABEL_79;
    }

    [(UIPercentDrivenInteractiveTransition *)self completionSpeed];
    v35 = v34;
    v29 = layer;
    if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
    {
      v36 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:self->_animationTrackingAnimatorUUID];
      v37 = [[UICubicTimingParameters alloc] initWithAnimationCurve:[(UIPercentDrivenInteractiveTransition *)self completionCurve]];
      [v36 setReversed:!completeCopy];
      [(UIPercentDrivenInteractiveTransition *)self _durationFactorForPercentComplete:!completeCopy reversed:percent];
      [v36 continueAnimationWithTimingParameters:v37 durationFactor:?];

      v32 = containerView2;
      v38 = _alongsideAnimationViews;
      v33 = _containerViews;
LABEL_79:
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __100__UIPercentDrivenInteractiveTransition__updateInteractiveTransition_percent_isFinished_didComplete___block_invoke;
      aBlock[3] = &unk_1E70F3590;
      v77 = transitionCopy;
      v94 = v77;
      v78 = _Block_copy(aBlock);
      firstObject6 = [v77 firstObject];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __100__UIPercentDrivenInteractiveTransition__updateInteractiveTransition_percent_isFinished_didComplete___block_invoke_2;
      v86[3] = &unk_1E71046F8;
      v86[4] = self;
      v87 = v77;
      v92 = v83;
      v88 = v33;
      v89 = v32;
      v90 = v38;
      v91 = v78;
      v80 = v78;
      [firstObject6 _setPostInteractiveCompletionHandler:v86];

LABEL_80:
      goto LABEL_81;
    }

    v32 = containerView2;
    v33 = _containerViews;
    if ([transitionCopy count] != 1)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v83 object:self file:@"UIViewControllerTransitioning.m" lineNumber:847 description:{@"Unsupported path when one interactor is driving multiple (%lu) transitions.", objc_msgSend(transitionCopy, "count")}];
    }

    v38 = _alongsideAnimationViews;
    if (_containerViews)
    {
      v47 = [_containerViews objectAtIndex:0];
      layer4 = [v47 layer];
      [layer4 timeOffset];
      v50 = v49;

      if (!completeCopy)
      {
LABEL_48:
        _uuid2 = [(UIPercentDrivenInteractiveTransition *)self _uuid];
        [UIView _completeAnimationWithUUID:_uuid2 duration:[(UIPercentDrivenInteractiveTransition *)self completionCurve] curve:!completeCopy reverse:v50];

        if (_containerViews)
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v53 = _containerViews;
          v54 = [v53 countByEnumeratingWithState:&v99 objects:v116 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v100;
            do
            {
              for (m = 0; m != v55; ++m)
              {
                if (*v100 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                layer5 = [*(*(&v99 + 1) + 8 * m) layer];
                v57 = v35;
                *&v60 = v57;
                [layer5 setSpeed:v60];
              }

              v55 = [v53 countByEnumeratingWithState:&v99 objects:v116 count:16];
            }

            while (v55);
          }

          v33 = _containerViews;
        }

        else
        {
          *&v52 = v35;
          [v29 setSpeed:v52];
        }

        if (_alongsideAnimationViews)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v69 = _alongsideAnimationViews;
          v70 = [v69 countByEnumeratingWithState:&v95 objects:v115 count:16];
          if (v70)
          {
            v71 = v70;
            v72 = *v96;
            do
            {
              for (n = 0; n != v71; ++n)
              {
                if (*v96 != v72)
                {
                  objc_enumerationMutation(v69);
                }

                layer6 = [*(*(&v95 + 1) + 8 * n) layer];
                v73 = v35;
                *&v76 = v73;
                [layer6 setSpeed:v76];
              }

              v71 = [v69 countByEnumeratingWithState:&v95 objects:v115 count:16];
            }

            while (v71);
          }

          v33 = _containerViews;
        }

        goto LABEL_79;
      }
    }

    else
    {
      [v29 timeOffset];
      v50 = v68;
      if (!completeCopy)
      {
        goto LABEL_48;
      }
    }

    v50 = self->_duration - v50;
    goto LABEL_48;
  }

  if (finishedCopy)
  {
    [(UIPercentDrivenInteractiveTransition *)self _continueInterruptibleTransitionFromPercentComplete:!completeCopy reversed:percent];
  }

  else if (self->__usesPacedFractionComplete && (v23 = objc_opt_respondsToSelector(), interruptibleAnimator = self->_interruptibleAnimator, (v23 & 1) != 0))
  {
    [(UIViewImplicitlyAnimating *)interruptibleAnimator setPacedFractionComplete:percent];
  }

  else
  {
    [(UIViewImplicitlyAnimating *)interruptibleAnimator setFractionComplete:percent];
  }

LABEL_81:
}

void __100__UIPercentDrivenInteractiveTransition__updateInteractiveTransition_percent_isFinished_didComplete___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) _auxContext];
        [v6 _setAlongsideAnimations:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __100__UIPercentDrivenInteractiveTransition__updateInteractiveTransition_percent_isFinished_didComplete___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) _useAnimatorTrackingToDriveTransition] & 1) == 0)
  {
    if ([*(a1 + 40) count] != 1)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"UIViewControllerTransitioning.m" lineNumber:883 description:{@"Unsupported path when one interactor is driving multiple (%lu) transitions.", objc_msgSend(*(a1 + 40), "count")}];
    }

    v2 = *(a1 + 48);
    if (v2)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v3 = v2;
      v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v29;
        do
        {
          v7 = 0;
          do
          {
            if (*v29 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = [*(*(&v28 + 1) + 8 * v7) layer];
            [v8 setTimeOffset:0.0];
            LODWORD(v9) = 1.0;
            [v8 setSpeed:v9];

            ++v7;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v5);
      }
    }

    v10 = [*(a1 + 56) layer];
    [v10 setTimeOffset:0.0];

    v11 = [*(a1 + 56) layer];
    LODWORD(v12) = 1.0;
    [v11 setSpeed:v12];

    v13 = *(a1 + 64);
    if (v13)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v25;
        do
        {
          v18 = 0;
          do
          {
            if (*v25 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v24 + 1) + 8 * v18) layer];
            [v19 setTimeOffset:0.0];
            LODWORD(v20) = 1.0;
            [v19 setSpeed:v20];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v16);
      }
    }
  }

  (*(*(a1 + 72) + 16))();
  v21 = *(a1 + 32);
  v22 = *(v21 + 32);
  *(v21 + 32) = 0;
}

- (void)_stopInteractiveTransition:(id)transition
{
  v61 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  [(UIPercentDrivenInteractiveTransition *)self _setTransitionInterrupted:1];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = transitionCopy;
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v53 + 1) + 8 * i) _setState:4];
      }

      v8 = [v6 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v8);
  }

  if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
  {
    firstObject = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:self->_animationTrackingAnimatorUUID];
    [firstObject stopAnimation:1];
  }

  else
  {
    if ([v6 count] != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewControllerTransitioning.m" lineNumber:924 description:{@"Unsupported path when one interactor is driving multiple (%lu) transitions.", objc_msgSend(v6, "count")}];
    }

    firstObject = [v6 firstObject];
    _uuid = [(UIPercentDrivenInteractiveTransition *)self _uuid];
    [UIView _stopAnimationWithUUID:_uuid];
    _containerViews = [firstObject _containerViews];

    if (_containerViews)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      _containerViews2 = [firstObject _containerViews];
      v15 = [_containerViews2 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v50;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(_containerViews2);
            }

            layer = [*(*(&v49 + 1) + 8 * j) layer];
            LODWORD(v20) = 1.0;
            [layer setSpeed:v20];
            [layer setTimeOffset:0.0];
          }

          v16 = [_containerViews2 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v16);
      }
    }

    else
    {
      containerView = [firstObject containerView];
      _containerViews2 = [containerView layer];

      LODWORD(v22) = 1.0;
      [_containerViews2 setSpeed:v22];
      [_containerViews2 setTimeOffset:0.0];
    }

    _auxContext = [firstObject _auxContext];
    if (_auxContext)
    {
      v24 = _auxContext;
      _auxContext2 = [firstObject _auxContext];
      _alongsideAnimationViews = [_auxContext2 _alongsideAnimationViews];

      if (_alongsideAnimationViews)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v27 = _alongsideAnimationViews;
        v28 = [v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v46;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v46 != v30)
              {
                objc_enumerationMutation(v27);
              }

              layer2 = [*(*(&v45 + 1) + 8 * k) layer];
              LODWORD(v33) = 1.0;
              [layer2 setSpeed:v33];
              [layer2 setTimeOffset:0.0];
            }

            v29 = [v27 countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v29);
        }

        _auxContext3 = [firstObject _auxContext];
        [_auxContext3 _setAlongsideAnimations:0];
      }
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = v6;
  v36 = [v35 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v42;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(v35);
        }

        [*(*(&v41 + 1) + 8 * m) _stopInteractiveTransition];
      }

      v37 = [v35 countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v37);
  }
}

- (void)_stopInteractiveTransition
{
  v3 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  [(UIPercentDrivenInteractiveTransition *)self _stopInteractiveTransition:v3];
}

- (BOOL)_startInterruptibleTransition:(id)transition
{
  transitionCopy = transition;
  _animator = [transitionCopy _animator];
  if (!_animator || (objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewControllerTransitioning.m" lineNumber:968 description:{@"%@ requires an animator that implements interruptibleAnimatorForTransition:", v16}];
  }

  v7 = [_animator interruptibleAnimatorForTransition:transitionCopy];
  interruptibleAnimator = self->_interruptibleAnimator;
  self->_interruptibleAnimator = v7;

  v9 = self->_interruptibleAnimator;
  if (v9)
  {
    _initiallyInteractive = [transitionCopy _initiallyInteractive];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__UIPercentDrivenInteractiveTransition__startInterruptibleTransition___block_invoke;
    v17[3] = &unk_1E70F5A28;
    objc_copyWeak(&v18, &location);
    [transitionCopy _setPostInteractiveCompletionHandler:v17];
    v11 = self->_interruptibleAnimator;
    if (_initiallyInteractive)
    {
      [(UIViewImplicitlyAnimating *)v11 pauseAnimation];
    }

    else
    {
      [(UIViewImplicitlyAnimating *)v11 startAnimation];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    NSLog(&cfstr_Interruptiblea.isa, v13);
  }

  return v9 != 0;
}

void __70__UIPercentDrivenInteractiveTransition__startInterruptibleTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)startInteractiveTransition:(id)transition
{
  v36 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  _animator = [transitionCopy _animator];
  v7 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  if ([v7 count] < 2)
  {
    [_animator transitionDuration:transitionCopy];
    self->_duration = v8;
    if (_animator)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![(UIPercentDrivenInteractiveTransition *)self _startInterruptibleTransition:transitionCopy])
      {
        if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
        {
          if (+[UIViewPropertyAnimator _trackingAnimationsCurrentlyEnabled])
          {
            v9 = +[UIViewPropertyAnimator _currentTrackedAnimationsUUID];
            animationTrackingAnimatorUUID = self->_animationTrackingAnimatorUUID;
            self->_animationTrackingAnimatorUUID = v9;

            if (self->_wantsInteractiveStart && !+[UIViewPropertyAnimator _trackedAnimationsStartPaused]&& dyld_program_sdk_at_least())
            {
              [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:1];
              [_animator animateTransition:transitionCopy];
              [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:0];
            }

            else
            {
              [_animator animateTransition:transitionCopy];
            }
          }

          else
          {
            v15 = +[UIView _currentViewAnimationState];

            if (v15)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewControllerTransitioning.m" lineNumber:1019 description:@"Detected animation state before starting interactive transition. This means we MAY need to support implicit start/finish animator tracking."];
            }

            v16 = +[UIViewPropertyAnimator _startTrackingAnimations];
            [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:self->_wantsInteractiveStart];
            v17 = +[UIViewPropertyAnimator _currentTrackedAnimationsUUID];
            v18 = self->_animationTrackingAnimatorUUID;
            self->_animationTrackingAnimatorUUID = v17;

            [_animator animateTransition:transitionCopy];
            +[UIViewPropertyAnimator _finishTrackingAnimations];
          }

          if ([UIViewPropertyAnimator _containsAnimatorForTrackedAnimationsUUID:self->_animationTrackingAnimatorUUID])
          {
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __67__UIPercentDrivenInteractiveTransition_startInteractiveTransition___block_invoke;
            v34[3] = &unk_1E70F3590;
            v34[4] = self;
            [UIApp _performBlockAfterCATransactionCommits:v34];
          }

          else
          {
            self->_didCommitAnimations = 1;
          }
        }

        else
        {
          _auxContext = [transitionCopy _auxContext];
          if (_auxContext)
          {
            _auxContext2 = [transitionCopy _auxContext];
            _alongsideAnimationViews = [_auxContext2 _alongsideAnimationViews];
          }

          else
          {
            _alongsideAnimationViews = 0;
          }

          containerView = [transitionCopy containerView];
          layer = [containerView layer];

          v21 = +[UIView _enableAnimationTracking];
          [(UIPercentDrivenInteractiveTransition *)self _setUuid:v21];
          [_animator animateTransition:transitionCopy];
          self->_didCommitAnimations = 0;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __67__UIPercentDrivenInteractiveTransition_startInteractiveTransition___block_invoke_2;
          v33[3] = &unk_1E70F3590;
          v33[4] = self;
          [UIApp _performBlockAfterCATransactionCommits:v33];
          [layer setSpeed:0.0];
          [layer setTimeOffset:0.0];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v22 = _alongsideAnimationViews;
          v23 = [v22 countByEnumeratingWithState:&v29 objects:v35 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v30;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v30 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                layer2 = [*(*(&v29 + 1) + 8 * i) layer];
                [layer2 setSpeed:0.0];
                [layer2 setTimeOffset:0.0];
              }

              v24 = [v22 countByEnumeratingWithState:&v29 objects:v35 count:16];
            }

            while (v24);
          }
        }
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempt to start a percent driven interactive transition but there is no animator!" userInfo:0];
    }
  }

  else
  {
    [_animator animateTransition:transitionCopy];
  }
}

- (void)startInteractiveTransition:(id)transition containerViews:(id)views animation:(id)animation
{
  v41 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  viewsCopy = views;
  animationCopy = animation;
  if ([(UIPercentDrivenInteractiveTransition *)self _useAnimatorTrackingToDriveTransition])
  {
    [(UIPercentDrivenInteractiveTransition *)self startInteractiveTransition:transitionCopy];
  }

  else
  {
    v11 = transitionCopy;
    _animator = [v11 _animator];
    [_animator transitionDuration:v11];
    self->_duration = v13;
    if (_animator)
    {
      _auxContext = [v11 _auxContext];
      if (_auxContext)
      {
        _auxContext2 = [v11 _auxContext];
        _alongsideAnimationViews = [_auxContext2 _alongsideAnimationViews];
      }

      else
      {
        _alongsideAnimationViews = 0;
      }

      [v11 _setContainerViews:viewsCopy];
      v30 = +[UIView _enableAnimationTracking];
      [(UIPercentDrivenInteractiveTransition *)self _setUuid:?];
      animationCopy[2](animationCopy, v11);
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v17 = viewsCopy;
      v18 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v36;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v36 != v20)
            {
              objc_enumerationMutation(v17);
            }

            layer = [*(*(&v35 + 1) + 8 * i) layer];
            [layer setSpeed:0.0];
            [layer setTimeOffset:0.0];
          }

          v19 = [v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v19);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = _alongsideAnimationViews;
      v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v32;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v32 != v26)
            {
              objc_enumerationMutation(v23);
            }

            layer2 = [*(*(&v31 + 1) + 8 * j) layer];
            [layer2 setSpeed:0.0];
            [layer2 setTimeOffset:0.0];
          }

          v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempt to start a percent driven interactive transition but there is no animator!" userInfo:0];
    }
  }
}

- (void)pauseInteractiveTransition
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_interruptibleAnimator)
  {
    v3 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
    firstObject = [v3 firstObject];
    _state = [firstObject _state];

    if (_state == 1)
    {
      [(UIViewImplicitlyAnimating *)self->_interruptibleAnimator pauseAnimation];
      if (dyld_program_sdk_at_least())
      {
        [(UIViewImplicitlyAnimating *)self->_interruptibleAnimator setReversed:0];
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v12 + 1) + 8 * v10);
            if (self->__usesPacedFractionComplete && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [(UIViewImplicitlyAnimating *)self->_interruptibleAnimator pacedFractionComplete];
            }

            else
            {
              [(UIViewImplicitlyAnimating *)self->_interruptibleAnimator fractionComplete];
            }

            [v11 _setPreviousPercentComplete:v12];
            [v11 pauseInteractiveTransition];
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)updateInteractiveTransition:(CGFloat)percentComplete
{
  v5 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  firstObject = [v5 firstObject];
  _state = [firstObject _state];

  if (_state == 1)
  {
    if ([(UIPercentDrivenInteractiveTransition *)self _clampsPercentComplete])
    {
      if (percentComplete < 0.0)
      {
        percentComplete = 0.0;
      }

      if (percentComplete > 1.0)
      {
        percentComplete = 1.0;
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__UIPercentDrivenInteractiveTransition_updateInteractiveTransition___block_invoke;
    aBlock[3] = &unk_1E70F36D0;
    aBlock[4] = self;
    v8 = v5;
    v16 = v8;
    v17 = percentComplete;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (self->_didCommitAnimations)
    {
      (*(v9 + 2))(v9);
    }

    else
    {
      v11 = UIApp;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __68__UIPercentDrivenInteractiveTransition_updateInteractiveTransition___block_invoke_2;
      v12[3] = &unk_1E70F37C0;
      v13 = v8;
      v14 = v10;
      [v11 _performBlockAfterCATransactionCommits:v12];
    }
  }
}

void __68__UIPercentDrivenInteractiveTransition_updateInteractiveTransition___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateInteractiveTransition:*(a1 + 40) percent:0 isFinished:0 didComplete:*(a1 + 48)];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateInteractiveTransition:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __68__UIPercentDrivenInteractiveTransition_updateInteractiveTransition___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = [v2 isCurrentlyInteractive];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

- (void)cancelInteractiveTransition
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  firstObject = [v3 firstObject];
  if ([firstObject _state] == 1)
  {

    goto LABEL_4;
  }

  firstObject2 = [v3 firstObject];
  _state = [firstObject2 _state];

  if (_state == 4)
  {
LABEL_4:
    firstObject3 = [v3 firstObject];
    [firstObject3 _previousPercentComplete];
    [(UIPercentDrivenInteractiveTransition *)self _updateInteractiveTransition:v3 percent:1 isFinished:0 didComplete:?];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v18 + 1) + 8 * i) cancelInteractiveTransition];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v10);
    }

    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v22 + 1) + 8 * j) _setState:2];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

LABEL_19:
}

- (void)finishInteractiveTransition
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [_UIViewControllerTransitionContext _associatedTransitionContextsForInteractionController:self];
  firstObject = [v3 firstObject];
  if ([firstObject _state] == 1)
  {

    goto LABEL_4;
  }

  firstObject2 = [v3 firstObject];
  _state = [firstObject2 _state];

  if (_state == 4)
  {
LABEL_4:
    firstObject3 = [v3 firstObject];
    [firstObject3 _previousPercentComplete];
    [(UIPercentDrivenInteractiveTransition *)self _updateInteractiveTransition:v3 percent:1 isFinished:1 didComplete:?];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v18 + 1) + 8 * i) finishInteractiveTransition];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v10);
    }

    goto LABEL_19;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v22 + 1) + 8 * j) _setState:3];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

LABEL_19:
}

@end