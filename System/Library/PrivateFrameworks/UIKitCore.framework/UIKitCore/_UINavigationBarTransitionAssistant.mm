@interface _UINavigationBarTransitionAssistant
+ (id)popTransitionAssistantForNavigationBar:(id)bar delegate:(id)delegate crossfade:(BOOL)crossfade;
+ (id)pushTransitionAssistantForNavigationBar:(id)bar delegate:(id)delegate crossfade:(BOOL)crossfade;
- (BOOL)shouldAnimateAlongside;
- (UINavigationBar)navigationBar;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (_UINavigationBarDelegatePrivate)delegate;
- (_UINavigationBarTransitionAssistant)initWithNavigationBar:(id)bar delegate:(id)delegate;
- (int64_t)_transitionOverrideFrom:(id)from defaultingTo:(int64_t)to;
- (void)_clearAnimationsWithDuration:(double)duration curve:(int64_t)curve reverse:(BOOL)reverse;
- (void)_finishTrackingAnimations;
- (void)_getInteractive;
- (void)_getPopDurationAndTransitionAlwaysCrossfade:(BOOL)crossfade;
- (void)_getPushDurationAndTransitionAlwaysCrossfade:(BOOL)crossfade;
- (void)_getTransitionCoordinator;
- (void)_startTrackingAnimations;
- (void)cancelInteractiveTransitionPercent:(double)percent completionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)decrementAnimationCount;
- (void)finishInteractiveTransitionPercent:(double)percent completionSpeed:(double)speed completionCurve:(int64_t)curve;
- (void)finishTrackingInteractiveTransition;
- (void)incrementAnimationCount;
- (void)startInteractiveTransition;
- (void)updateInteractiveTransitionPercent:(double)percent;
@end

@implementation _UINavigationBarTransitionAssistant

- (_UINavigationBarTransitionAssistant)initWithNavigationBar:(id)bar delegate:(id)delegate
{
  barCopy = bar;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _UINavigationBarTransitionAssistant;
  v8 = [(_UINavigationBarTransitionAssistant *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_navigationBar, barCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

+ (id)pushTransitionAssistantForNavigationBar:(id)bar delegate:(id)delegate crossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  delegateCopy = delegate;
  barCopy = bar;
  v10 = [[self alloc] initWithNavigationBar:barCopy delegate:delegateCopy];

  [v10 _getTransitionCoordinator];
  [v10 _getPushDurationAndTransitionAlwaysCrossfade:crossfadeCopy];
  [v10 _getInteractive];

  return v10;
}

+ (id)popTransitionAssistantForNavigationBar:(id)bar delegate:(id)delegate crossfade:(BOOL)crossfade
{
  crossfadeCopy = crossfade;
  delegateCopy = delegate;
  barCopy = bar;
  v10 = [[self alloc] initWithNavigationBar:barCopy delegate:delegateCopy];

  [v10 _getTransitionCoordinator];
  [v10 _getPopDurationAndTransitionAlwaysCrossfade:crossfadeCopy];
  [v10 _getInteractive];

  return v10;
}

- (BOOL)shouldAnimateAlongside
{
  if (!self->_interruptable)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)startInteractiveTransition
{
  if (self->_interactive && !self->_interruptable)
  {
    array = [MEMORY[0x1E695DF70] array];
    animationIDs = self->_animationIDs;
    self->_animationIDs = array;

    [(_UINavigationBarTransitionAssistant *)self _startTrackingAnimations];
    if (!+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      layer = [WeakRetained layer];

      [layer setSpeed:0.0];
      [layer setTimeOffset:0.0];
    }
  }
}

- (void)updateInteractiveTransitionPercent:(double)percent
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_interruptable)
  {
    if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_animationIDs;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:*(*(&v14 + 1) + 8 * i)];
            [v10 pauseAnimation];
            [v10 setFractionComplete:percent];
          }

          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v11 = self->_duration * percent;
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      layer = [WeakRetained layer];
      [layer setTimeOffset:v11];
    }
  }
}

- (void)_clearAnimationsWithDuration:(double)duration curve:(int64_t)curve reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  v31 = *MEMORY[0x1E69E9840];
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {
    v27 = 0uLL;
    v28 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v9 = self->_animationIDs;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [UIViewPropertyAnimator _animatorForTrackedAnimationsUUID:*(*(&v25 + 1) + 8 * i)];
          v15 = [[UICubicTimingParameters alloc] initWithAnimationCurve:curve];
          [v14 setReversed:reverseCopy];
          [v14 continueAnimationWithTimingParameters:v15 durationFactor:duration / self->_duration];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v9 = self->_animationIDs;
    v16 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v9);
          }

          [UIView _completeAnimationWithUUID:*(*(&v21 + 1) + 8 * j) duration:curve curve:reverseCopy reverse:duration, v21];
        }

        v17 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }
  }

  animationIDs = self->_animationIDs;
  self->_animationIDs = 0;
}

- (void)finishInteractiveTransitionPercent:(double)percent completionSpeed:(double)speed completionCurve:(int64_t)curve
{
  self->_cancelledTransition = 0;
  if (!self->_interruptable)
  {
    if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
    {
      v9 = (1.0 - percent) * self->_duration / speed;

      [(_UINavigationBarTransitionAssistant *)self _clearAnimationsWithDuration:curve curve:0 reverse:v9];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      layer = [WeakRetained layer];

      duration = self->_duration;
      [layer timeOffset];
      [(_UINavigationBarTransitionAssistant *)self _clearAnimationsWithDuration:curve curve:0 reverse:duration - v12];
      *&v13 = speed;
      [layer setSpeed:v13];
    }
  }
}

- (void)cancelInteractiveTransitionPercent:(double)percent completionSpeed:(double)speed completionCurve:(int64_t)curve
{
  self->_cancelledTransition = 1;
  if (!self->_interruptable)
  {
    if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
    {
      v9 = self->_duration * percent / speed;

      [(_UINavigationBarTransitionAssistant *)self _clearAnimationsWithDuration:curve curve:1 reverse:v9];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
      layer = [WeakRetained layer];

      [layer timeOffset];
      [(_UINavigationBarTransitionAssistant *)self _clearAnimationsWithDuration:curve curve:1 reverse:?];
      *&v11 = speed;
      [layer setSpeed:v11];
    }
  }
}

- (void)finishTrackingInteractiveTransition
{
  if (self->_interactive && !self->_interruptable)
  {
    [(_UINavigationBarTransitionAssistant *)self _finishTrackingAnimations];
  }
}

- (void)_startTrackingAnimations
{
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {
    v6 = +[UIViewPropertyAnimator _startTrackingAnimations];
    [UIViewPropertyAnimator _setTrackedAnimationsStartPaused:1];
    animationIDs = self->_animationIDs;
    v4 = v6;
  }

  else
  {
    v5 = self->_animationIDs;
    v4 = +[UIView _startAnimationTracking];
    animationIDs = v5;
    v6 = v4;
  }

  [(NSMutableArray *)animationIDs addObject:v4];
}

- (void)_finishTrackingAnimations
{
  if (+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
  {

    +[UIViewPropertyAnimator _finishTrackingAnimations];
  }

  else
  {

    +[UIView _finishAnimationTracking];
  }
}

- (void)incrementAnimationCount
{
  if (self->_interactive && !self->_interruptable)
  {
    ++self->_animationCount;
  }
}

- (void)decrementAnimationCount
{
  if (!self->_interruptable)
  {
    animationCount = self->_animationCount;
    v4 = animationCount == 1;
    v5 = animationCount < 1;
    v6 = animationCount - 1;
    if (!v5)
    {
      self->_animationCount = v6;
      if (v4 && !+[UIViewPropertyAnimator _canEnableTrackingAnimationsWithAnimators])
      {
        WeakRetained = objc_loadWeakRetained(&self->_navigationBar);
        layer = [WeakRetained layer];

        LODWORD(v8) = 1.0;
        [layer setSpeed:v8];
        [layer setBeginTime:0.0];
        [layer setTimeOffset:0.0];
      }
    }
  }
}

- (void)_getTransitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    _hasInterruptibleNavigationTransition = [WeakRetained _hasInterruptibleNavigationTransition];
  }

  else
  {
    _hasInterruptibleNavigationTransition = 0;
  }

  self->_interruptable = _hasInterruptibleNavigationTransition;
  if (objc_opt_respondsToSelector())
  {
    _transitionCoordinator = [WeakRetained _transitionCoordinator];
    objc_storeWeak(&self->_transitionCoordinator, _transitionCoordinator);
  }
}

- (int64_t)_transitionOverrideFrom:(id)from defaultingTo:(int64_t)to
{
  _navigationBarTransitionVariant = [from _navigationBarTransitionVariant];
  toCopy = 4;
  if (_navigationBarTransitionVariant != 2)
  {
    toCopy = to;
  }

  if (_navigationBarTransitionVariant == 1)
  {
    return 3;
  }

  else
  {
    return toCopy;
  }
}

- (void)_getPushDurationAndTransitionAlwaysCrossfade:(BOOL)crossfade
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained _willPerformCustomNavigationTransitionForPush])
  {
    if (crossfade)
    {
      v5 = 3;
    }

    else
    {
      v5 = [(_UINavigationBarTransitionAssistant *)self _transitionOverrideFrom:WeakRetained defaultingTo:1];
    }

    self->_transition = v5;
    [WeakRetained _customNavigationTransitionDuration];
    self->_duration = v6;
  }

  if (self->_duration == 0.0)
  {
    +[UINavigationBar defaultAnimationDuration];
    self->_duration = v7;
  }
}

- (void)_getPopDurationAndTransitionAlwaysCrossfade:(BOOL)crossfade
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained _willPerformCustomNavigationTransitionForPop])
  {
    if (crossfade)
    {
      v5 = 3;
    }

    else
    {
      v5 = [(_UINavigationBarTransitionAssistant *)self _transitionOverrideFrom:WeakRetained defaultingTo:2];
    }

    self->_transition = v5;
    [WeakRetained _customNavigationTransitionDuration];
    self->_duration = v6;
  }

  if (self->_duration == 0.0)
  {
    +[UINavigationBar defaultAnimationDuration];
    self->_duration = v7;
  }
}

- (void)_getInteractive
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
  self->_interactive = [WeakRetained isInteractive];

  self->_animationCount = 0;
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  return WeakRetained;
}

- (UINavigationBar)navigationBar
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  return WeakRetained;
}

- (_UINavigationBarDelegatePrivate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end