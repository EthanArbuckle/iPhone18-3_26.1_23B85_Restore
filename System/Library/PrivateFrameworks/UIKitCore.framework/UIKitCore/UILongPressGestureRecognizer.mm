@interface UILongPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (BOOL)_touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:(id)timer;
- (BOOL)activeTouchesExceedAllowableSeparation;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result;
- (CGPoint)_centroidInView:(id)view;
- (CGPoint)_centroidScreen;
- (CGPoint)_convertVelocitySample:(id)sample fromSceneReferenceCoordinatesToView:(id)view;
- (CGPoint)_locationOfTouches:(id)touches;
- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)location;
- (CGPoint)_startPointInView:(id)view;
- (CGPoint)_translationInView:(id)view;
- (CGPoint)centroid;
- (CGPoint)lastSceneReferenceLocation;
- (CGPoint)lastUnadjustedSceneReferenceLocation;
- (CGPoint)locationInView:(id)view;
- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view;
- (CGPoint)startPoint;
- (CGPoint)velocityInView:(id)view;
- (UILongPressGestureRecognizer)initWithCoder:(id)coder;
- (UILongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)location toSceneReferenceLocation:(CGPoint)referenceLocation;
- (double)_touchSloppinessFactor;
- (int64_t)_buttonType;
- (void)_appendSubclassDescription:(id)description;
- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time physicalTouch:(id)touch;
- (void)_changeTouchesListTo:(id)to;
- (void)_clearEnoughTimeElapsedTimer;
- (void)_incorporateTouchForceMessageIntoImpulseQuietness:(id)quietness;
- (void)_interactionsEndedWithValidTouches:(BOOL)touches;
- (void)_resetGestureRecognizer;
- (void)_resetImpulseQuietness;
- (void)_resetVelocitySamples;
- (void)_setAllowsDynamicTouchesList:(BOOL)list;
- (void)_setButtonType:(int64_t)type;
- (void)_setTranslation:(CGPoint)translation inView:(id)view;
- (void)_startEnoughTimeElapsedTimer;
- (void)_startMultitouchTimer;
- (void)_startTapFinishedTimer;
- (void)clearAllTimers;
- (void)clearAllTimersAndStartEnoughTimeElapsedTimer;
- (void)encodeWithCoder:(id)coder;
- (void)enoughTimeElapsed:(id)elapsed;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setButtonMaskRequired:(int64_t)required;
- (void)setCancelPastAllowableMovement:(BOOL)movement;
- (void)setView:(id)view;
- (void)tapRecognizerRecognizedTap:(id)tap;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UILongPressGestureRecognizer

- (void)_resetGestureRecognizer
{
  [(UITapRecognizer *)self->_imp _reset];
  if (([(UIGestureRecognizer *)self _state]- 1) <= 2)
  {
    [(UIGestureRecognizer *)self state];
  }

  [(UILongPressGestureRecognizer *)self clearAllTimers];
  *(self + 440) &= ~1u;
  *(self + 440) &= ~2u;
  *(self + 440) = *(self + 440) & 0xFB | (4 * ([(UITapRecognizer *)self->_imp numberOfTapsRequired]== 0));
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  [(UILongPressGestureRecognizer *)self setTouches:0];
  self->_lastCentroidScreen = *MEMORY[0x1E695EFF8];
  [(UILongPressGestureRecognizer *)self _resetVelocitySamples];
  self->_requiresQuietImpulseForCurrentTouchSequence = 0;
  v3.receiver = self;
  v3.super_class = UILongPressGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)_clearEnoughTimeElapsedTimer
{
  enoughTimeElapsed = self->_enoughTimeElapsed;
  if (enoughTimeElapsed)
  {
    [(UIHeldAction *)enoughTimeElapsed cancel];
    v4 = self->_enoughTimeElapsed;
    self->_enoughTimeElapsed = 0;

    touchForceObservation = self->_touchForceObservation;
    self->_touchForceObservation = 0;

    [(UILongPressGestureRecognizer *)self _resetImpulseQuietness];
  }
}

- (void)clearAllTimers
{
  [(UILongPressGestureRecognizer *)self _clearEnoughTimeElapsedTimer];
  tooMuchTimeElapsed = self->_tooMuchTimeElapsed;
  if (tooMuchTimeElapsed)
  {
    [(UIDelayedAction *)tooMuchTimeElapsed cancel];
    v4 = self->_tooMuchTimeElapsed;
    self->_tooMuchTimeElapsed = 0;
  }

  multitouchTimer = self->_multitouchTimer;
  if (multitouchTimer)
  {
    [(UIDelayedAction *)multitouchTimer cancel];
    v6 = self->_multitouchTimer;
    self->_multitouchTimer = 0;
  }
}

- (void)_resetVelocitySamples
{
  velocitySample = self->_velocitySample;
  self->_velocitySample = 0;

  previousVelocitySample = self->_previousVelocitySample;
  self->_previousVelocitySample = 0;
}

- (int64_t)_buttonType
{
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([allowedPressTypes count])
  {
    firstObject = [allowedPressTypes firstObject];
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)_startMultitouchTimer
{
  [(UILongPressGestureRecognizer *)self clearAllTimers];
  v3 = [UIDelayedAction alloc];
  v4 = [(UIDelayedAction *)v3 initWithTarget:self action:sel_tooMuchElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:self->_allowableElapsedTimeForAllRequiredTouches];
  multitouchTimer = self->_multitouchTimer;
  self->_multitouchTimer = v4;
}

- (CGPoint)_centroidScreen
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  touches = [(UILongPressGestureRecognizer *)self touches];
  v4 = [touches countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(touches);
        }

        window = [*(*(&v14 + 1) + 8 * v7) window];

        if (!window)
        {
          x = self->_lastCentroidScreen.x;
          y = self->_lastCentroidScreen.y;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [touches countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  touches = [(UILongPressGestureRecognizer *)self touches];
  x = _CentroidOfTouches(touches, 0);
  y = v10;
LABEL_11:

  v12 = x;
  v13 = y;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)clearAllTimersAndStartEnoughTimeElapsedTimer
{
  [(UILongPressGestureRecognizer *)self clearAllTimers];

  [(UILongPressGestureRecognizer *)self _startEnoughTimeElapsedTimer];
}

- (void)_startEnoughTimeElapsedTimer
{
  [(UILongPressGestureRecognizer *)self minimumPressDuration];
  if (v3 <= 0.0)
  {
    [(UILongPressGestureRecognizer *)self enoughTimeElapsed:0];
  }

  else
  {
    v4 = [UIHeldAction alloc];
    [(UILongPressGestureRecognizer *)self delay];
    v5 = [(UIDelayedAction *)v4 initWithTarget:self action:sel_enoughTimeElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
    enoughTimeElapsed = self->_enoughTimeElapsed;
    self->_enoughTimeElapsed = v5;
  }

  if ([(UIGestureRecognizer *)self _inForceCapableEnvironment])
  {
    objc_initWeak(&location, self);
    _touchForceObservable = [(UIGestureRecognizer *)self _touchForceObservable];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__UILongPressGestureRecognizer__startEnoughTimeElapsedTimer__block_invoke;
    v10[3] = &unk_1E710B6B0;
    objc_copyWeak(&v11, &location);
    v8 = [_touchForceObservable addObserverBlock:v10];
    touchForceObservation = self->_touchForceObservation;
    self->_touchForceObservation = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_resetImpulseQuietness
{
  self->_impulseObservations = 0;
  self->_currentImpulse = 0.0;
  self->_lastForce = 0.0;
  self->_lastForceTimestamp = 0.0;
}

- (UILongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = UILongPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfTouchesRequired = 1;
    v4->_minimumPressDuration = 0.5;
    v4->_allowableMovement = 10.0;
    *(v4 + 440) |= 4u;
    v4->_allowableElapsedTimeForAllRequiredTouches = 0.0;
    v6 = objc_alloc_init(UITapRecognizer);
    imp = v5->_imp;
    v5->_imp = v6;

    [(UITapRecognizer *)v5->_imp setDelegate:v5];
    [(UITapRecognizer *)v5->_imp setNumberOfTapsRequired:0];
    v8 = v5;
  }

  return v5;
}

- (UILongPressGestureRecognizer)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = UILongPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v12 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfTouchesRequired = 1;
    v4->_minimumPressDuration = 0.5;
    v4->_allowableMovement = 10.0;
    *(v4 + 440) |= 4u;
    v4->_allowableElapsedTimeForAllRequiredTouches = 0.0;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UILongPressGestureRecognizer._imp"];
    imp = v5->_imp;
    v5->_imp = v6;

    [(UITapRecognizer *)v5->_imp setDelegate:v5];
    if ([coder containsValueForKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"])
    {
      v5->_numberOfTouchesRequired = [coder decodeIntegerForKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"];
    }

    if ([coder containsValueForKey:@"UILongPressGestureRecognizer.minimumPressDuration"])
    {
      [coder decodeFloatForKey:@"UILongPressGestureRecognizer.minimumPressDuration"];
      v5->_minimumPressDuration = v8;
    }

    if ([coder containsValueForKey:@"UILongPressGestureRecognizer.allowableMovement"])
    {
      [coder decodeFloatForKey:@"UILongPressGestureRecognizer.allowableMovement"];
      v5->_allowableMovement = v9;
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UILongPressGestureRecognizer;
  [(UIGestureRecognizer *)&v8 encodeWithCoder:?];
  [coder encodeObject:self->_imp forKey:@"UILongPressGestureRecognizer._imp"];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (numberOfTouchesRequired != 1)
  {
    [coder encodeInteger:numberOfTouchesRequired forKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"];
  }

  minimumPressDuration = self->_minimumPressDuration;
  if (minimumPressDuration != 0.5)
  {
    *&minimumPressDuration = minimumPressDuration;
    [coder encodeFloat:@"UILongPressGestureRecognizer.minimumPressDuration" forKey:minimumPressDuration];
  }

  allowableMovement = self->_allowableMovement;
  if (allowableMovement != 10.0)
  {
    *&allowableMovement = allowableMovement;
    [coder encodeFloat:@"UILongPressGestureRecognizer.allowableMovement" forKey:allowableMovement];
  }
}

- (void)setButtonMaskRequired:(int64_t)required
{
  if (required <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILongPressGestureRecognizer.m" lineNumber:217 description:@"buttonMaskRequired must be greater than 0"];
  }

  imp = self->_imp;

  [(UITapRecognizer *)imp setButtonMaskRequired:required];
}

- (void)setCancelPastAllowableMovement:(BOOL)movement
{
  if (movement)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 440) = *(self + 440) & 0xF7 | v3;
}

- (void)_setAllowsDynamicTouchesList:(BOOL)list
{
  if (list)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 440) = *(self + 440) & 0xEF | v3;
}

- (void)setView:(id)view
{
  if (!view)
  {
    [(UILongPressGestureRecognizer *)self clearAllTimers];
  }

  v5.receiver = self;
  v5.super_class = UILongPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setView:view];
}

- (BOOL)activeTouchesExceedAllowableSeparation
{
  v3 = _BoundingRectForTouches(self->_activeTouches, 0);
  v5 = v4;
  v7 = v6;
  [(UILongPressGestureRecognizer *)self _allowableSeparation];
  v9 = v8;
  [(UILongPressGestureRecognizer *)self _touchSloppinessFactor];
  return v9 * v10 < sqrt(v5 * v5 + v7 * v7);
}

- (void)enoughTimeElapsed:(id)elapsed
{
  if ((*(self + 440) & 1) == 0 && (*(self + 440) & 2) == 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && ([(NSMutableSet *)self->_activeTouches count]== self->_numberOfTouchesRequired || [(UILongPressGestureRecognizer *)self _buttonType]!= -1))
  {

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (BOOL)_touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:(id)timer
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(UILongPressGestureRecognizer *)self _isGestureType:15]|| ([(UILongPressGestureRecognizer *)self minimumPressDuration], v5 < 0.15))
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    timerCopy = timer;
    v9 = [timerCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(timerCopy);
          }

          _gestureRecognizers = [*(*(&v19 + 1) + 8 * v11) _gestureRecognizers];
          [v7 addObjectsFromArray:_gestureRecognizers];

          ++v11;
        }

        while (v9 != v11);
        v9 = [timerCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117__UILongPressGestureRecognizer__touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer___block_invoke;
    v14[3] = &unk_1E710B688;
    v14[4] = &v15;
    [v7 enumerateObjectsUsingBlock:v14];
    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v6 & 1;
}

uint64_t __117__UILongPressGestureRecognizer__touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _isGestureType:11];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __60__UILongPressGestureRecognizer__startEnoughTimeElapsedTimer__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained _incorporateTouchForceMessageIntoImpulseQuietness:a2];
    v5 = [v8 _requiresQuietImpulse];
    v4 = v8;
    if ((v5 & 1) != 0 || *(v8 + 442) == 1)
    {
      v6 = [v8 _impulseQuietEnough];
      v7 = [v8[44] isHolding];
      if (v6)
      {
        v4 = v8;
        if (!v7)
        {
          goto LABEL_10;
        }

        [v8[44] resume];
      }

      else
      {
        v4 = v8;
        if (v7)
        {
          goto LABEL_10;
        }

        [v8[44] hold];
      }

      v4 = v8;
    }
  }

LABEL_10:
}

- (void)_startTapFinishedTimer
{
  [(UILongPressGestureRecognizer *)self clearAllTimers];
  v3 = [UIDelayedAction alloc];
  [(UITapRecognizer *)self->_imp maximumIntervalBetweenSuccessiveTaps];
  v4 = [(UIDelayedAction *)v3 initWithTarget:self action:sel_tooMuchElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
  tooMuchTimeElapsed = self->_tooMuchTimeElapsed;
  self->_tooMuchTimeElapsed = v4;
}

- (void)_changeTouchesListTo:(id)to
{
  [(UILongPressGestureRecognizer *)self _centroidScreen];
  v6 = v5;
  v8 = v7;
  v9 = _CentroidOfTouches(to, 1);
  v11 = v10 - v8 + self->_startPointScreen.y;
  self->_startPointScreen.x = self->_startPointScreen.x + v9 - v6;
  self->_startPointScreen.y = v11;

  [(UILongPressGestureRecognizer *)self setTouches:to];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(UILongPressGestureRecognizer *)self _buttonType]!= -1)
  {
    goto LABEL_2;
  }

  buttonMaskRequired = [(UILongPressGestureRecognizer *)self buttonMaskRequired];
  eventCopy = event;
  if ([eventCopy _buttonMask])
  {
    v10 = [eventCopy _buttonMask] & buttonMaskRequired;

    if (!v10)
    {
LABEL_2:
      v7 = @"unexpectedButton";
LABEL_3:

      [(UIGestureRecognizer *)self _failWithReason:v7];
      return;
    }
  }

  else
  {
  }

  if ((*(self + 440) & 4) == 0)
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp touchesBegan:began withEvent:eventCopy];
    return;
  }

  if (self->_tooMuchTimeElapsed)
  {
    [(UILongPressGestureRecognizer *)self clearAllTimers];
  }

  if (![(NSMutableSet *)self->_activeTouches count])
  {
    [(UILongPressGestureRecognizer *)self _locationOfTouches:began];
    self->_lastSceneReferenceLocation.x = v12;
    self->_lastSceneReferenceLocation.y = v13;
    self->_lastUnadjustedSceneReferenceLocation = self->_lastSceneReferenceLocation;
    [eventCopy timestamp];
    self->_lastTouchTime = v14;
  }

  if ([began count])
  {
    if (!self->_activeTouches)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      activeTouches = self->_activeTouches;
      self->_activeTouches = v15;
    }

    if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && [(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList])
    {
      [(NSMutableSet *)self->_activeTouches unionSet:began];
      allObjects = [(NSMutableSet *)self->_activeTouches allObjects];
      [(UILongPressGestureRecognizer *)self _changeTouchesListTo:?];
LABEL_24:

      return;
    }

    if (([(UIGestureRecognizer *)self _state]- 1) > 2)
    {
      [(NSMutableSet *)self->_activeTouches unionSet:began];
      if (*(self + 440))
      {
        return;
      }

      [(UILongPressGestureRecognizer *)self _allowableSeparation];
      if (v22 != 1.79769313e308 && [(UILongPressGestureRecognizer *)self activeTouchesExceedAllowableSeparation])
      {
        [(UILongPressGestureRecognizer *)self clearAllTimers];
        v7 = @"exceededMaxSeparation";
        goto LABEL_3;
      }

      if ([(UILongPressGestureRecognizer *)self numberOfTouchesRequired]< 2 || [(NSMutableSet *)self->_activeTouches count]>= self->_numberOfTouchesRequired || self->_allowableElapsedTimeForAllRequiredTouches <= 0.0)
      {
        v23 = [(NSMutableSet *)self->_activeTouches count];
        v24 = self->_activeTouches;
        if (v23 != self->_numberOfTouchesRequired)
        {
          if ([(NSMutableSet *)v24 count]<= self->_numberOfTouchesRequired)
          {
            return;
          }

          *(self + 440) |= 2u;
          [(UILongPressGestureRecognizer *)self clearAllTimers];
          v7 = @"tooManyTouches";
          goto LABEL_3;
        }

        allObjects = [(NSMutableSet *)v24 allObjects];
        [(UILongPressGestureRecognizer *)self setTouches:?];
        [(UILongPressGestureRecognizer *)self _centroidScreen];
        self->_startPointScreen.x = v25;
        self->_startPointScreen.y = v26;
        [(UILongPressGestureRecognizer *)self clearAllTimersAndStartEnoughTimeElapsedTimer];
        if ([(UIGestureRecognizer *)self _inForceCapableEnvironment])
        {
          self->_requiresQuietImpulseForCurrentTouchSequence = [(UILongPressGestureRecognizer *)self _touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:allObjects];
        }

        goto LABEL_24;
      }

      [(UILongPressGestureRecognizer *)self _startMultitouchTimer];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      beganCopy = began;
      v18 = [beganCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v29;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(beganCopy);
            }

            [(UIGestureRecognizer *)self ignoreTouch:*(*(&v28 + 1) + 8 * i) forEvent:eventCopy];
          }

          v19 = [beganCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(UILongPressGestureRecognizer *)self _buttonType]== -1)
  {
    if ((*(self + 440) & 4) != 0)
    {
      [(UILongPressGestureRecognizer *)self _locationOfTouches:moved];
      v9 = v8;
      v11 = v10;
      [event timestamp];
      v13 = v12;
      anyObject = [moved anyObject];
      [(UILongPressGestureRecognizer *)self _centroidMovedTo:anyObject atTime:v9 physicalTouch:v11, v13];

      if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && [(NSMutableSet *)self->_activeTouches intersectsSet:moved])
      {
        if ((*(self + 440) & 8) != 0)
        {
          [(UILongPressGestureRecognizer *)self _centroidScreen];
          if (sqrt((self->_startPointScreen.x - v15) * (self->_startPointScreen.x - v15) + (self->_startPointScreen.y - v16) * (self->_startPointScreen.y - v16)) > self->_allowableMovement)
          {

            [(UIGestureRecognizer *)self setState:4];
          }
        }
      }

      else if ([(NSMutableSet *)self->_activeTouches count]== self->_numberOfTouchesRequired)
      {
        allowableMovement = self->_allowableMovement;
        if (allowableMovement >= 0.0 && allowableMovement != 1.79769313e308)
        {
          [(UILongPressGestureRecognizer *)self _centroidScreen];
          if (sqrt((self->_startPointScreen.x - v19) * (self->_startPointScreen.x - v19) + (self->_startPointScreen.y - v20) * (self->_startPointScreen.y - v20)) > self->_allowableMovement)
          {
            [(UILongPressGestureRecognizer *)self clearAllTimers];

            [(UIGestureRecognizer *)self _failWithReason:@"tooMuchMovement"];
          }
        }
      }
    }

    else
    {
      imp = self->_imp;

      [(UITapRecognizer *)imp touchesMoved:moved withEvent:event];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UILongPressGestureRecognizer *)self _buttonType]== -1)
  {
    if (self)
    {
      self->_requiresQuietImpulseForCurrentTouchSequence = 0;
    }

    touches = [(UILongPressGestureRecognizer *)self touches];
    self->_lastCentroidScreen.x = _CentroidOfTouches(touches, 0);
    self->_lastCentroidScreen.y = v8;

    if ((*(self + 440) & 4) != 0)
    {
      [(UILongPressGestureRecognizer *)self _locationOfTouches:ended];
      v11 = v10;
      v13 = v12;
      [event timestamp];
      v15 = v14;
      anyObject = [ended anyObject];
      [(UILongPressGestureRecognizer *)self _centroidMovedTo:anyObject atTime:v11 physicalTouch:v13, v15];

      if (![ended count])
      {
        return;
      }

      [(NSMutableSet *)self->_activeTouches minusSet:ended];
      if ([(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList]&& [(NSMutableSet *)self->_activeTouches count])
      {
        if (![(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList])
        {
          return;
        }

        allObjects = [(NSMutableSet *)self->_activeTouches allObjects];
        [(UILongPressGestureRecognizer *)self _changeTouchesListTo:allObjects];
      }

      else
      {
        v17 = MEMORY[0x1E695DFD8];
        allObjects = [(UILongPressGestureRecognizer *)self touches];
        v18 = [v17 setWithArray:allObjects];
        -[UILongPressGestureRecognizer _interactionsEndedWithValidTouches:](self, "_interactionsEndedWithValidTouches:", [v18 intersectsSet:ended]);
      }
    }

    else
    {
      imp = self->_imp;

      [(UITapRecognizer *)imp touchesEnded:ended withEvent:event];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UILongPressGestureRecognizer *)self _buttonType:cancelled]== -1)
  {
    [(UIGestureRecognizer *)self _failWithReason:@"touchesCancelled"];
  }

  if (self)
  {
    self->_requiresQuietImpulseForCurrentTouchSequence = 0;
  }
}

- (void)_incorporateTouchForceMessageIntoImpulseQuietness:(id)quietness
{
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82__UILongPressGestureRecognizer__incorporateTouchForceMessageIntoImpulseQuietness___block_invoke;
  v4[3] = &unk_1E710B6D8;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__UILongPressGestureRecognizer__incorporateTouchForceMessageIntoImpulseQuietness___block_invoke_2;
  v3[3] = &unk_1E70F3590;
  [quietness ifObservation:v4 ifReset:v3];
}

uint64_t __82__UILongPressGestureRecognizer__incorporateTouchForceMessageIntoImpulseQuietness___block_invoke(uint64_t a1, void *a2)
{
  if (++*(*(a1 + 32) + 408) >= 2)
  {
    [a2 touchForce];
    v5 = v4 - *(*(a1 + 32) + 424);
    [a2 timestamp];
    *(*(a1 + 32) + 416) = fabs(v5 / (v6 - *(*(a1 + 32) + 432)));
  }

  [a2 touchForce];
  *(*(a1 + 32) + 424) = v7;
  result = [a2 timestamp];
  *(*(a1 + 32) + 432) = v9;
  return result;
}

- (void)_interactionsEndedWithValidTouches:(BOOL)touches
{
  touchesCopy = touches;
  *(self + 440) |= 1u;
  [(UILongPressGestureRecognizer *)self clearAllTimers];
  if (([(UIGestureRecognizer *)self _state]- 1) > 2 || !touchesCopy)
  {

    [(UIGestureRecognizer *)self _failWithReason:@"interactionEnded"];
  }

  else
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)_appendSubclassDescription:(id)description
{
  if ([(UITapRecognizer *)self->_imp numberOfTapsRequired]!= 1)
  {
    [description appendFormat:@"; numberOfTapsRequired = %ld", -[UITapRecognizer numberOfTapsRequired](self->_imp, "numberOfTapsRequired")];
  }

  if ([(UITapRecognizer *)self->_imp numberOfTouchesRequired]!= 1)
  {
    [description appendFormat:@"; numberOfTouchesRequired = %ld", -[UITapRecognizer numberOfTouchesRequired](self->_imp, "numberOfTouchesRequired")];
  }

  [(UILongPressGestureRecognizer *)self minimumPressDuration];
  if (v5 > 0.0)
  {
    [(UILongPressGestureRecognizer *)self minimumPressDuration];
    [description appendFormat:@"; minimumPressDuration = %2g", v6];
  }

  if ([(UITapRecognizer *)self->_imp buttonMaskRequired]!= 1)
  {
    [description appendFormat:@"; buttonMaskRequired = %ld", -[UITapRecognizer buttonMaskRequired](self->_imp, "buttonMaskRequired")];
  }
}

- (CGPoint)_centroidInView:(id)view
{
  if (view)
  {
    _window = [view _window];
    [(UILongPressGestureRecognizer *)self _centroidScreen];
    [_window _convertPointFromSceneReferenceSpace:?];
    v7 = v6;
    v9 = v8;

    [view convertPoint:0 fromView:{v7, v9}];
  }

  else
  {

    [(UILongPressGestureRecognizer *)self _centroidScreen];
  }

  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)centroid
{
  view = [(UIGestureRecognizer *)self view];
  [(UILongPressGestureRecognizer *)self _centroidInView:view];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_startPointInView:(id)view
{
  window = [view window];
  [window _convertPointFromSceneReferenceSpace:{self->_startPointScreen.x, self->_startPointScreen.y}];
  v7 = v6;
  v9 = v8;

  [view convertPoint:0 fromView:{v7, v9}];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)startPoint
{
  view = [(UIGestureRecognizer *)self view];
  [(UILongPressGestureRecognizer *)self _startPointInView:view];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_translationInView:(id)view
{
  [(UILongPressGestureRecognizer *)self _centroidInView:?];
  v6 = v5;
  v8 = v7;
  [(UILongPressGestureRecognizer *)self _startPointInView:view];
  v10 = v6 - v9;
  v12 = v8 - v11;
  result.y = v12;
  result.x = v10;
  return result;
}

- (void)_setTranslation:(CGPoint)translation inView:(id)view
{
  y = translation.y;
  x = translation.x;
  [(UILongPressGestureRecognizer *)self _centroidInView:?];
  v9 = x + v8;
  v11 = y + v10;
  window = [view window];
  [view convertPoint:window toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  window2 = [view window];
  [window2 _convertPointToSceneReferenceSpace:{v14, v16}];
  v19 = v18;
  v21 = v20;

  self->_startPointScreen.x = v19;
  self->_startPointScreen.y = v21;
}

- (void)_setButtonType:(int64_t)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UILongPressGestureRecognizer *)self _buttonType]!= type)
  {
    view = [(UIGestureRecognizer *)self view];

    if (view)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UILongPressGestureRecognizer.m" lineNumber:758 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  if ([UILongPressGestureRecognizer _shouldFailInResponseToPresses:"_shouldFailInResponseToPresses:withEvent:" withEvent:?])
  {

    [(UIGestureRecognizer *)self _failWithReason:@"pressesDenied"];
  }

  else if ((*(self + 440) & 4) != 0)
  {
    if (self->_tooMuchTimeElapsed)
    {
      [(UILongPressGestureRecognizer *)self clearAllTimers];
    }

    if ((*(self + 440) & 1) == 0)
    {

      [(UILongPressGestureRecognizer *)self clearAllTimersAndStartEnoughTimeElapsedTimer];
    }
  }

  else
  {
    imp = self->_imp;

    [(UITapRecognizer *)imp pressesBegan:began withEvent:event];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  if ((*(self + 440) & 4) != 0)
  {
    [(UILongPressGestureRecognizer *)self _interactionsEndedWithValidTouches:1, event];
  }

  else
  {
    [(UITapRecognizer *)self->_imp pressesEnded:ended withEvent:event];
  }
}

- (BOOL)_shouldReceivePress:(id)press
{
  v10.receiver = self;
  v10.super_class = UILongPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v10 _shouldReceivePress:?])
  {
    v5 = 1;
  }

  else
  {
    _buttonType = [(UILongPressGestureRecognizer *)self _buttonType];
    v5 = _buttonType == [press type];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:press];
  v8 = [(UILongPressGestureRecognizer *)self _shouldFailInResponseToPresses:v7 withEvent:0];

  return v5 || v8;
}

- (void)tapRecognizerRecognizedTap:(id)tap
{
  *(self + 440) |= 4u;
  [(UILongPressGestureRecognizer *)self _startTapFinishedTimer];
  imp = self->_imp;

  [(UITapRecognizer *)imp _reset];
}

- (double)_touchSloppinessFactor
{
  view = [(UIGestureRecognizer *)self view];
  [view _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (CGPoint)locationInView:(id)view
{
  if ([(NSArray *)self->_touches count])
  {

    [(UILongPressGestureRecognizer *)self _centroidInView:view];
  }

  else
  {
    [(UITapRecognizer *)self->_imp locationInViewNotTrackingTouches:view];
    v7 = v5;
    v8 = v6;
    if (view)
    {
      _window = [view _window];
      [_window _convertPointFromSceneReferenceSpace:{v7, v8}];
      [view convertPoint:0 fromView:?];
      v11 = v10;
      v13 = v12;

      v5 = v11;
      v6 = v13;
    }
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)locationOfTouch:(unint64_t)touch inView:(id)view
{
  if ([(NSArray *)self->_touches count]<= touch)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v8 = [v13 stringWithFormat:@"-[%@ %@]", v15, v16];

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%ld) beyond bounds (%ld).", v8, touch, -[NSArray count](self->_touches, "count")}];
    v10 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v8 = [(NSArray *)self->_touches objectAtIndex:touch];
    [v8 locationInView:view];
    v10 = v9;
    v12 = v11;
  }

  v17 = v10;
  v18 = v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)_convertVelocitySample:(id)sample fromSceneReferenceCoordinatesToView:(id)view
{
  if (sample && *(sample + 5) >= 0.001)
  {
    [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:*(sample + 1), *(sample + 2)];
    v10 = v9;
    v12 = v11;
    [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:*(sample + 3), *(sample + 4)];
    v14 = *(sample + 5);
    v5 = (v13 - v10) / v14;
    v6 = (v15 - v12) / v14;
  }

  else
  {
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  [(UILongPressGestureRecognizer *)self _convertVelocitySample:self->_velocitySample fromSceneReferenceCoordinatesToView:view];
  v5 = v4;
  v7 = v6;
  previousVelocitySample = self->_previousVelocitySample;
  if (previousVelocitySample && previousVelocitySample->dt > 0.00000011920929)
  {
    [UILongPressGestureRecognizer _convertVelocitySample:"_convertVelocitySample:fromSceneReferenceCoordinatesToView:" fromSceneReferenceCoordinatesToView:?];
    v5 = v5 * 0.25 + v9 * 0.75;
    v7 = v7 * 0.25 + v10 * 0.75;
  }

  v11 = v5;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_locationOfTouches:(id)touches
{
  anyObject = [touches anyObject];
  window = [anyObject window];
  [anyObject locationInView:0];
  [window _convertPointToSceneReferenceSpace:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)location toSceneReferenceLocation:(CGPoint)referenceLocation
{
  y = referenceLocation.y;
  x = referenceLocation.x;
  v6 = location.y;
  v7 = location.x;
  view = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v7, v6];
  v11 = v10;
  v13 = v12;

  view2 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view2 fromSceneReferenceCoordinatesToView:x, y];
  v16 = v15;
  v18 = v17;

  v19 = v16 - v11;
  v20 = v18 - v13;
  result.vertical = v20;
  result.horizontal = v19;
  return result;
}

- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)location
{
  [(UILongPressGestureRecognizer *)self _offsetInViewFromSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.x toSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.y, location.x, location.y];
  v5 = v4;
  v7 = v6;
  view = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  v10 = v9;
  v12 = v11;

  view2 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:view2 toSceneReferenceCoordinatesFromView:v5 + v10, v7 + v12];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result
{
  if (self->_lastSceneReferenceLocation.x != self->_lastUnadjustedSceneReferenceLocation.x || self->_lastSceneReferenceLocation.y != self->_lastUnadjustedSceneReferenceLocation.y)
  {
    [(UILongPressGestureRecognizer *)self _shiftPanLocationToNewSceneReferenceLocation:result.x, result.y, v3, v4];
  }

  return result;
}

- (void)_centroidMovedTo:(CGPoint)to atTime:(double)time physicalTouch:(id)touch
{
  y = to.y;
  x = to.x;
  [(UILongPressGestureRecognizer *)self _adjustSceneReferenceLocation:touch];
  v10 = v9;
  v12 = v11;
  lastTouchTime = self->_lastTouchTime;
  v14 = self->_previousVelocitySample;
  objc_storeStrong(&self->_previousVelocitySample, self->_velocitySample);
  v15 = v14;
  if (!v14)
  {
    v15 = objc_opt_new();
  }

  objc_storeStrong(&self->_velocitySample, v15);
  v16 = v15;
  if (!v14)
  {
  }

  *(v16 + 8) = self->_lastSceneReferenceLocation;
  *(v16 + 3) = v10;
  *(v16 + 4) = v12;
  *(v16 + 5) = time - lastTouchTime;

  self->_lastUnadjustedSceneReferenceLocation.x = x;
  self->_lastUnadjustedSceneReferenceLocation.y = y;
  self->_lastSceneReferenceLocation.x = v10;
  self->_lastSceneReferenceLocation.y = v12;
  self->_lastTouchTime = time;
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  v5 = 1;
  if ([recognizer _isGestureType:1])
  {
    recognizerCopy = recognizer;
    numberOfTouchesRequired = [recognizerCopy numberOfTouchesRequired];
    if (numberOfTouchesRequired == -[UILongPressGestureRecognizer numberOfTouchesRequired](self, "numberOfTouchesRequired") && (v8 = [recognizerCopy buttonMaskRequired], v8 == -[UILongPressGestureRecognizer buttonMaskRequired](self, "buttonMaskRequired")))
    {
      numberOfTapsRequired = [recognizerCopy numberOfTapsRequired];
      v5 = numberOfTapsRequired <= [(UILongPressGestureRecognizer *)self numberOfTapsRequired];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (CGPoint)lastSceneReferenceLocation
{
  x = self->_lastSceneReferenceLocation.x;
  y = self->_lastSceneReferenceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastUnadjustedSceneReferenceLocation
{
  x = self->_lastUnadjustedSceneReferenceLocation.x;
  y = self->_lastUnadjustedSceneReferenceLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end