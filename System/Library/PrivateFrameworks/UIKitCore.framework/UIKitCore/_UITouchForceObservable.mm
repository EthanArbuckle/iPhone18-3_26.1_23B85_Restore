@interface _UITouchForceObservable
- (BOOL)_shouldFilterDueToSystemGesturesForTouches:(id)touches;
- (_UITouchForceObservable)initWithView:(id)view;
- (double)_maximumPossibleForceForTouches:(id)touches;
- (double)_timestampForTouches:(id)touches;
- (double)_unclampedTouchForceForTouches:(id)touches;
- (id)_touchForceMessageForTouches:(id)touches;
- (id)addObserver:(id)observer;
- (void)_cancelContinuousEvaluation;
- (void)_didEndHavingAnyObservers;
- (void)_updateForContinuousEvaluation:(id)evaluation;
- (void)_willBeginHavingAnyObservers;
- (void)dealloc;
- (void)receiveObservedValue:(id)value;
- (void)removeObservation:(id)observation;
@end

@implementation _UITouchForceObservable

- (_UITouchForceObservable)initWithView:(id)view
{
  viewCopy = view;
  v16.receiver = self;
  v16.super_class = _UITouchForceObservable;
  v5 = [(_UITouchForceObservable *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, viewCopy);
    if (viewCopy)
    {
      v7 = objc_alloc_init(_UITouchesObservingGestureRecognizer);
      gestureRecognizer = v6->_gestureRecognizer;
      v6->_gestureRecognizer = v7;

      objc_initWeak(&location, v6);
      v9 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:v6->_gestureRecognizer path:"touches"];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __40___UITouchForceObservable_initWithView___block_invoke;
      v13[3] = &unk_1E711CC38;
      objc_copyWeak(&v14, &location);
      v10 = [v9 addObserverBlock:v13];
      touchesObservation = v6->_touchesObservation;
      v6->_touchesObservation = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  return v6;
}

- (void)dealloc
{
  gestureRecognizer = self->_gestureRecognizer;
  if (gestureRecognizer)
  {
    view = [(UIGestureRecognizer *)gestureRecognizer view];
    [view removeGestureRecognizer:self->_gestureRecognizer];
  }

  v5.receiver = self;
  v5.super_class = _UITouchForceObservable;
  [(NSObservationSource *)&v5 dealloc];
}

- (void)receiveObservedValue:(id)value
{
  valueCopy = value;
  self->_lastObservationTime = CACurrentMediaTime();
  if (self->_currentTouches && ![valueCopy count])
  {
    currentTouches = self->_currentTouches;
    self->_currentTouches = 0;

    [(_UITouchForceObservable *)self _cancelContinuousEvaluation];
    v10 = +[_UITouchForceMessage reset];
    [(_UITouchForceObservable *)&v13 receiveObservedValue:v10, v12.receiver, v12.super_class, self, _UITouchForceObservable];
LABEL_8:

    goto LABEL_9;
  }

  if ([valueCopy count])
  {
    if (!self->_currentTouches)
    {
      [(_UITouchForceObservable *)self _cancelContinuousEvaluation];
      v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__updateForContinuousEvaluation_];
      [(CADisplayLink *)v5 setPreferredFramesPerSecond:60];
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
      self->_continuousEvaluationDisplayLink = v5;
    }

    v8 = [valueCopy copy];
    v9 = self->_currentTouches;
    self->_currentTouches = v8;

    v10 = [(_UITouchForceObservable *)self _touchForceMessageForTouches:valueCopy];
    [(_UITouchForceObservable *)&v12 receiveObservedValue:v10, self, _UITouchForceObservable, v13.receiver, v13.super_class];
    goto LABEL_8;
  }

LABEL_9:
}

- (double)_unclampedTouchForceForTouches:(id)touches
{
  v20 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if (![touchesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITouchForceObservable.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"[touches count] > 0"}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = touchesCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 = v10 + [(UITouch *)*(*(&v15 + 1) + 8 * i) _unclampedForce];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v12 = [v6 count];
  return v10 / v12;
}

- (double)_timestampForTouches:(id)touches
{
  v22 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if (![touchesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITouchForceObservable.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"[touches count] > 0"}];
  }

  anyObject = [touchesCopy anyObject];
  [anyObject timestamp];
  v8 = v7;

  if ([touchesCopy count] >= 2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = touchesCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v17 + 1) + 8 * v13) timestamp];
          v8 = fmax(v14, v8);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (double)_maximumPossibleForceForTouches:(id)touches
{
  touchesCopy = touches;
  if (![touchesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITouchForceObservable.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"[touches count] > 0"}];
  }

  anyObject = [touchesCopy anyObject];
  [anyObject maximumPossibleForce];
  v8 = v7;

  return v8;
}

- (BOOL)_shouldFilterDueToSystemGesturesForTouches:(id)touches
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touchesCopy = touches;
  v4 = [touchesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(touchesCopy);
        }

        if (([(UITouch *)*(*(&v8 + 1) + 8 * i) _mightBeConsideredForForceSystemGesture]& 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [touchesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  observerCount = self->_observerCount;
  self->_observerCount = observerCount + 1;
  if (!observerCount)
  {
    [(_UITouchForceObservable *)self _willBeginHavingAnyObservers];
  }

  v8.receiver = self;
  v8.super_class = _UITouchForceObservable;
  v6 = [(_UITouchForceObservable *)&v8 addObserver:observerCopy];

  return v6;
}

- (void)removeObservation:(id)observation
{
  v5.receiver = self;
  v5.super_class = _UITouchForceObservable;
  [(_UITouchForceObservable *)&v5 removeObservation:observation];
  v4 = self->_observerCount - 1;
  self->_observerCount = v4;
  if (!v4)
  {
    [(_UITouchForceObservable *)self _didEndHavingAnyObservers];
  }
}

- (void)_willBeginHavingAnyObservers
{
  if (self->_gestureRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained addGestureRecognizer:self->_gestureRecognizer];
  }
}

- (void)_didEndHavingAnyObservers
{
  if (self->_gestureRecognizer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_gestureRecognizer];
  }
}

- (id)_touchForceMessageForTouches:(id)touches
{
  touchesCopy = touches;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56___UITouchForceObservable__touchForceMessageForTouches___block_invoke;
  v8[3] = &unk_1E711CE38;
  v8[4] = self;
  v9 = touchesCopy;
  v5 = touchesCopy;
  v6 = [_UITouchForceMessage observe:v8];

  return v6;
}

- (void)_updateForContinuousEvaluation:(id)evaluation
{
  if (CACurrentMediaTime() - self->_lastObservationTime > 0.0133333333)
  {
    currentTouches = self->_currentTouches;

    [(_UITouchForceObservable *)self receiveObservedValue:currentTouches];
  }
}

- (void)_cancelContinuousEvaluation
{
  [(CADisplayLink *)self->_continuousEvaluationDisplayLink invalidate];
  continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  self->_continuousEvaluationDisplayLink = 0;
}

@end