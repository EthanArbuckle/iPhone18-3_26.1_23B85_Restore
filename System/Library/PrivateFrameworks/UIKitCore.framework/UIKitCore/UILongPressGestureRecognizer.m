@interface UILongPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (BOOL)_touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:(id)a3;
- (BOOL)activeTouchesExceedAllowableSeparation;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (CGPoint)_adjustSceneReferenceLocation:(CGPoint)result;
- (CGPoint)_centroidInView:(id)a3;
- (CGPoint)_centroidScreen;
- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (CGPoint)_locationOfTouches:(id)a3;
- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)a3;
- (CGPoint)_startPointInView:(id)a3;
- (CGPoint)_translationInView:(id)a3;
- (CGPoint)centroid;
- (CGPoint)lastSceneReferenceLocation;
- (CGPoint)lastUnadjustedSceneReferenceLocation;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4;
- (CGPoint)startPoint;
- (CGPoint)velocityInView:(id)a3;
- (UILongPressGestureRecognizer)initWithCoder:(id)a3;
- (UILongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)a3 toSceneReferenceLocation:(CGPoint)a4;
- (double)_touchSloppinessFactor;
- (int64_t)_buttonType;
- (void)_appendSubclassDescription:(id)a3;
- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 physicalTouch:(id)a5;
- (void)_changeTouchesListTo:(id)a3;
- (void)_clearEnoughTimeElapsedTimer;
- (void)_incorporateTouchForceMessageIntoImpulseQuietness:(id)a3;
- (void)_interactionsEndedWithValidTouches:(BOOL)a3;
- (void)_resetGestureRecognizer;
- (void)_resetImpulseQuietness;
- (void)_resetVelocitySamples;
- (void)_setAllowsDynamicTouchesList:(BOOL)a3;
- (void)_setButtonType:(int64_t)a3;
- (void)_setTranslation:(CGPoint)a3 inView:(id)a4;
- (void)_startEnoughTimeElapsedTimer;
- (void)_startMultitouchTimer;
- (void)_startTapFinishedTimer;
- (void)clearAllTimers;
- (void)clearAllTimersAndStartEnoughTimeElapsedTimer;
- (void)encodeWithCoder:(id)a3;
- (void)enoughTimeElapsed:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setButtonMaskRequired:(int64_t)a3;
- (void)setCancelPastAllowableMovement:(BOOL)a3;
- (void)setView:(id)a3;
- (void)tapRecognizerRecognizedTap:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v2 = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
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
  v3 = [(UILongPressGestureRecognizer *)self touches];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * v7) window];

        if (!v8)
        {
          x = self->_lastCentroidScreen.x;
          y = self->_lastCentroidScreen.y;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [(UILongPressGestureRecognizer *)self touches];
  x = _CentroidOfTouches(v3, 0);
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
    v7 = [(UIGestureRecognizer *)self _touchForceObservable];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__UILongPressGestureRecognizer__startEnoughTimeElapsedTimer__block_invoke;
    v10[3] = &unk_1E710B6B0;
    objc_copyWeak(&v11, &location);
    v8 = [v7 addObserverBlock:v10];
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

- (UILongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = UILongPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithTarget:a3 action:a4];
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

- (UILongPressGestureRecognizer)initWithCoder:(id)a3
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
    v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UILongPressGestureRecognizer._imp"];
    imp = v5->_imp;
    v5->_imp = v6;

    [(UITapRecognizer *)v5->_imp setDelegate:v5];
    if ([a3 containsValueForKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"])
    {
      v5->_numberOfTouchesRequired = [a3 decodeIntegerForKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"];
    }

    if ([a3 containsValueForKey:@"UILongPressGestureRecognizer.minimumPressDuration"])
    {
      [a3 decodeFloatForKey:@"UILongPressGestureRecognizer.minimumPressDuration"];
      v5->_minimumPressDuration = v8;
    }

    if ([a3 containsValueForKey:@"UILongPressGestureRecognizer.allowableMovement"])
    {
      [a3 decodeFloatForKey:@"UILongPressGestureRecognizer.allowableMovement"];
      v5->_allowableMovement = v9;
    }

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UILongPressGestureRecognizer;
  [(UIGestureRecognizer *)&v8 encodeWithCoder:?];
  [a3 encodeObject:self->_imp forKey:@"UILongPressGestureRecognizer._imp"];
  numberOfTouchesRequired = self->_numberOfTouchesRequired;
  if (numberOfTouchesRequired != 1)
  {
    [a3 encodeInteger:numberOfTouchesRequired forKey:@"UILongPressGestureRecognizer.numberOfTouchesRequired"];
  }

  minimumPressDuration = self->_minimumPressDuration;
  if (minimumPressDuration != 0.5)
  {
    *&minimumPressDuration = minimumPressDuration;
    [a3 encodeFloat:@"UILongPressGestureRecognizer.minimumPressDuration" forKey:minimumPressDuration];
  }

  allowableMovement = self->_allowableMovement;
  if (allowableMovement != 10.0)
  {
    *&allowableMovement = allowableMovement;
    [a3 encodeFloat:@"UILongPressGestureRecognizer.allowableMovement" forKey:allowableMovement];
  }
}

- (void)setButtonMaskRequired:(int64_t)a3
{
  if (a3 <= 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UILongPressGestureRecognizer.m" lineNumber:217 description:@"buttonMaskRequired must be greater than 0"];
  }

  imp = self->_imp;

  [(UITapRecognizer *)imp setButtonMaskRequired:a3];
}

- (void)setCancelPastAllowableMovement:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 440) = *(self + 440) & 0xF7 | v3;
}

- (void)_setAllowsDynamicTouchesList:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 440) = *(self + 440) & 0xEF | v3;
}

- (void)setView:(id)a3
{
  if (!a3)
  {
    [(UILongPressGestureRecognizer *)self clearAllTimers];
  }

  v5.receiver = self;
  v5.super_class = UILongPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setView:a3];
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

- (void)enoughTimeElapsed:(id)a3
{
  if ((*(self + 440) & 1) == 0 && (*(self + 440) & 2) == 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && ([(NSMutableSet *)self->_activeTouches count]== self->_numberOfTouchesRequired || [(UILongPressGestureRecognizer *)self _buttonType]!= -1))
  {

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (BOOL)_touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:(id)a3
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
    v8 = a3;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v19 + 1) + 8 * v11) _gestureRecognizers];
          [v7 addObjectsFromArray:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)_changeTouchesListTo:(id)a3
{
  [(UILongPressGestureRecognizer *)self _centroidScreen];
  v6 = v5;
  v8 = v7;
  v9 = _CentroidOfTouches(a3, 1);
  v11 = v10 - v8 + self->_startPointScreen.y;
  self->_startPointScreen.x = self->_startPointScreen.x + v9 - v6;
  self->_startPointScreen.y = v11;

  [(UILongPressGestureRecognizer *)self setTouches:a3];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(UILongPressGestureRecognizer *)self _buttonType]!= -1)
  {
    goto LABEL_2;
  }

  v8 = [(UILongPressGestureRecognizer *)self buttonMaskRequired];
  v9 = a4;
  if ([v9 _buttonMask])
  {
    v10 = [v9 _buttonMask] & v8;

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

    [(UITapRecognizer *)imp touchesBegan:a3 withEvent:v9];
    return;
  }

  if (self->_tooMuchTimeElapsed)
  {
    [(UILongPressGestureRecognizer *)self clearAllTimers];
  }

  if (![(NSMutableSet *)self->_activeTouches count])
  {
    [(UILongPressGestureRecognizer *)self _locationOfTouches:a3];
    self->_lastSceneReferenceLocation.x = v12;
    self->_lastSceneReferenceLocation.y = v13;
    self->_lastUnadjustedSceneReferenceLocation = self->_lastSceneReferenceLocation;
    [v9 timestamp];
    self->_lastTouchTime = v14;
  }

  if ([a3 count])
  {
    if (!self->_activeTouches)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      activeTouches = self->_activeTouches;
      self->_activeTouches = v15;
    }

    if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && [(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList])
    {
      [(NSMutableSet *)self->_activeTouches unionSet:a3];
      v27 = [(NSMutableSet *)self->_activeTouches allObjects];
      [(UILongPressGestureRecognizer *)self _changeTouchesListTo:?];
LABEL_24:

      return;
    }

    if (([(UIGestureRecognizer *)self _state]- 1) > 2)
    {
      [(NSMutableSet *)self->_activeTouches unionSet:a3];
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

        v27 = [(NSMutableSet *)v24 allObjects];
        [(UILongPressGestureRecognizer *)self setTouches:?];
        [(UILongPressGestureRecognizer *)self _centroidScreen];
        self->_startPointScreen.x = v25;
        self->_startPointScreen.y = v26;
        [(UILongPressGestureRecognizer *)self clearAllTimersAndStartEnoughTimeElapsedTimer];
        if ([(UIGestureRecognizer *)self _inForceCapableEnvironment])
        {
          self->_requiresQuietImpulseForCurrentTouchSequence = [(UILongPressGestureRecognizer *)self _touchesMayBeRecognizedByForcePreviewingRevealGestureRecognizerWhichShouldDelayTimer:v27];
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
      v17 = a3;
      v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v17);
            }

            [(UIGestureRecognizer *)self ignoreTouch:*(*(&v28 + 1) + 8 * i) forEvent:v9];
          }

          v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(UILongPressGestureRecognizer *)self _buttonType]== -1)
  {
    if ((*(self + 440) & 4) != 0)
    {
      [(UILongPressGestureRecognizer *)self _locationOfTouches:a3];
      v9 = v8;
      v11 = v10;
      [a4 timestamp];
      v13 = v12;
      v14 = [a3 anyObject];
      [(UILongPressGestureRecognizer *)self _centroidMovedTo:v14 atTime:v9 physicalTouch:v11, v13];

      if (([(UIGestureRecognizer *)self _state]- 1) <= 2 && [(NSMutableSet *)self->_activeTouches intersectsSet:a3])
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

      [(UITapRecognizer *)imp touchesMoved:a3 withEvent:a4];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UILongPressGestureRecognizer *)self _buttonType]== -1)
  {
    if (self)
    {
      self->_requiresQuietImpulseForCurrentTouchSequence = 0;
    }

    v7 = [(UILongPressGestureRecognizer *)self touches];
    self->_lastCentroidScreen.x = _CentroidOfTouches(v7, 0);
    self->_lastCentroidScreen.y = v8;

    if ((*(self + 440) & 4) != 0)
    {
      [(UILongPressGestureRecognizer *)self _locationOfTouches:a3];
      v11 = v10;
      v13 = v12;
      [a4 timestamp];
      v15 = v14;
      v16 = [a3 anyObject];
      [(UILongPressGestureRecognizer *)self _centroidMovedTo:v16 atTime:v11 physicalTouch:v13, v15];

      if (![a3 count])
      {
        return;
      }

      [(NSMutableSet *)self->_activeTouches minusSet:a3];
      if ([(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList]&& [(NSMutableSet *)self->_activeTouches count])
      {
        if (![(UILongPressGestureRecognizer *)self _allowsDynamicTouchesList])
        {
          return;
        }

        v19 = [(NSMutableSet *)self->_activeTouches allObjects];
        [(UILongPressGestureRecognizer *)self _changeTouchesListTo:v19];
      }

      else
      {
        v17 = MEMORY[0x1E695DFD8];
        v19 = [(UILongPressGestureRecognizer *)self touches];
        v18 = [v17 setWithArray:v19];
        -[UILongPressGestureRecognizer _interactionsEndedWithValidTouches:](self, "_interactionsEndedWithValidTouches:", [v18 intersectsSet:a3]);
      }
    }

    else
    {
      imp = self->_imp;

      [(UITapRecognizer *)imp touchesEnded:a3 withEvent:a4];
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UILongPressGestureRecognizer *)self _buttonType:a3]== -1)
  {
    [(UIGestureRecognizer *)self _failWithReason:@"touchesCancelled"];
  }

  if (self)
  {
    self->_requiresQuietImpulseForCurrentTouchSequence = 0;
  }
}

- (void)_incorporateTouchForceMessageIntoImpulseQuietness:(id)a3
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
  [a3 ifObservation:v4 ifReset:v3];
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

- (void)_interactionsEndedWithValidTouches:(BOOL)a3
{
  v3 = a3;
  *(self + 440) |= 1u;
  [(UILongPressGestureRecognizer *)self clearAllTimers];
  if (([(UIGestureRecognizer *)self _state]- 1) > 2 || !v3)
  {

    [(UIGestureRecognizer *)self _failWithReason:@"interactionEnded"];
  }

  else
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)_appendSubclassDescription:(id)a3
{
  if ([(UITapRecognizer *)self->_imp numberOfTapsRequired]!= 1)
  {
    [a3 appendFormat:@"; numberOfTapsRequired = %ld", -[UITapRecognizer numberOfTapsRequired](self->_imp, "numberOfTapsRequired")];
  }

  if ([(UITapRecognizer *)self->_imp numberOfTouchesRequired]!= 1)
  {
    [a3 appendFormat:@"; numberOfTouchesRequired = %ld", -[UITapRecognizer numberOfTouchesRequired](self->_imp, "numberOfTouchesRequired")];
  }

  [(UILongPressGestureRecognizer *)self minimumPressDuration];
  if (v5 > 0.0)
  {
    [(UILongPressGestureRecognizer *)self minimumPressDuration];
    [a3 appendFormat:@"; minimumPressDuration = %2g", v6];
  }

  if ([(UITapRecognizer *)self->_imp buttonMaskRequired]!= 1)
  {
    [a3 appendFormat:@"; buttonMaskRequired = %ld", -[UITapRecognizer buttonMaskRequired](self->_imp, "buttonMaskRequired")];
  }
}

- (CGPoint)_centroidInView:(id)a3
{
  if (a3)
  {
    v5 = [a3 _window];
    [(UILongPressGestureRecognizer *)self _centroidScreen];
    [v5 _convertPointFromSceneReferenceSpace:?];
    v7 = v6;
    v9 = v8;

    [a3 convertPoint:0 fromView:{v7, v9}];
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
  v3 = [(UIGestureRecognizer *)self view];
  [(UILongPressGestureRecognizer *)self _centroidInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_startPointInView:(id)a3
{
  v5 = [a3 window];
  [v5 _convertPointFromSceneReferenceSpace:{self->_startPointScreen.x, self->_startPointScreen.y}];
  v7 = v6;
  v9 = v8;

  [a3 convertPoint:0 fromView:{v7, v9}];
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)startPoint
{
  v3 = [(UIGestureRecognizer *)self view];
  [(UILongPressGestureRecognizer *)self _startPointInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_translationInView:(id)a3
{
  [(UILongPressGestureRecognizer *)self _centroidInView:?];
  v6 = v5;
  v8 = v7;
  [(UILongPressGestureRecognizer *)self _startPointInView:a3];
  v10 = v6 - v9;
  v12 = v8 - v11;
  result.y = v12;
  result.x = v10;
  return result;
}

- (void)_setTranslation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UILongPressGestureRecognizer *)self _centroidInView:?];
  v9 = x + v8;
  v11 = y + v10;
  v12 = [a4 window];
  [a4 convertPoint:v12 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  v17 = [a4 window];
  [v17 _convertPointToSceneReferenceSpace:{v14, v16}];
  v19 = v18;
  v21 = v20;

  self->_startPointScreen.x = v19;
  self->_startPointScreen.y = v21;
}

- (void)_setButtonType:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(UILongPressGestureRecognizer *)self _buttonType]!= a3)
  {
    v6 = [(UIGestureRecognizer *)self view];

    if (v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UILongPressGestureRecognizer.m" lineNumber:758 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
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

    [(UITapRecognizer *)imp pressesBegan:a3 withEvent:a4];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  if ((*(self + 440) & 4) != 0)
  {
    [(UILongPressGestureRecognizer *)self _interactionsEndedWithValidTouches:1, a4];
  }

  else
  {
    [(UITapRecognizer *)self->_imp pressesEnded:a3 withEvent:a4];
  }
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v10.receiver = self;
  v10.super_class = UILongPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v10 _shouldReceivePress:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UILongPressGestureRecognizer *)self _buttonType];
    v5 = v6 == [a3 type];
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v8 = [(UILongPressGestureRecognizer *)self _shouldFailInResponseToPresses:v7 withEvent:0];

  return v5 || v8;
}

- (void)tapRecognizerRecognizedTap:(id)a3
{
  *(self + 440) |= 4u;
  [(UILongPressGestureRecognizer *)self _startTapFinishedTimer];
  imp = self->_imp;

  [(UITapRecognizer *)imp _reset];
}

- (double)_touchSloppinessFactor
{
  v2 = [(UIGestureRecognizer *)self view];
  [v2 _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (CGPoint)locationInView:(id)a3
{
  if ([(NSArray *)self->_touches count])
  {

    [(UILongPressGestureRecognizer *)self _centroidInView:a3];
  }

  else
  {
    [(UITapRecognizer *)self->_imp locationInViewNotTrackingTouches:a3];
    v7 = v5;
    v8 = v6;
    if (a3)
    {
      v9 = [a3 _window];
      [v9 _convertPointFromSceneReferenceSpace:{v7, v8}];
      [a3 convertPoint:0 fromView:?];
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

- (CGPoint)locationOfTouch:(unint64_t)a3 inView:(id)a4
{
  if ([(NSArray *)self->_touches count]<= a3)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    v8 = [v13 stringWithFormat:@"-[%@ %@]", v15, v16];

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"%@: index (%ld) beyond bounds (%ld).", v8, a3, -[NSArray count](self->_touches, "count")}];
    v10 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v8 = [(NSArray *)self->_touches objectAtIndex:a3];
    [v8 locationInView:a4];
    v10 = v9;
    v12 = v11;
  }

  v17 = v10;
  v18 = v12;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)_convertVelocitySample:(id)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  if (a3 && *(a3 + 5) >= 0.001)
  {
    [(UIGestureRecognizer *)self _convertPoint:a4 fromSceneReferenceCoordinatesToView:*(a3 + 1), *(a3 + 2)];
    v10 = v9;
    v12 = v11;
    [(UIGestureRecognizer *)self _convertPoint:a4 fromSceneReferenceCoordinatesToView:*(a3 + 3), *(a3 + 4)];
    v14 = *(a3 + 5);
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

- (CGPoint)velocityInView:(id)a3
{
  [(UILongPressGestureRecognizer *)self _convertVelocitySample:self->_velocitySample fromSceneReferenceCoordinatesToView:a3];
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

- (CGPoint)_locationOfTouches:(id)a3
{
  v3 = [a3 anyObject];
  v4 = [v3 window];
  [v3 locationInView:0];
  [v4 _convertPointToSceneReferenceSpace:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (UIOffset)_offsetInViewFromSceneReferenceLocation:(CGPoint)a3 toSceneReferenceLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v9 fromSceneReferenceCoordinatesToView:v7, v6];
  v11 = v10;
  v13 = v12;

  v14 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v14 fromSceneReferenceCoordinatesToView:x, y];
  v16 = v15;
  v18 = v17;

  v19 = v16 - v11;
  v20 = v18 - v13;
  result.vertical = v20;
  result.horizontal = v19;
  return result;
}

- (CGPoint)_shiftPanLocationToNewSceneReferenceLocation:(CGPoint)a3
{
  [(UILongPressGestureRecognizer *)self _offsetInViewFromSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.x toSceneReferenceLocation:self->_lastUnadjustedSceneReferenceLocation.y, a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v8 fromSceneReferenceCoordinatesToView:self->_lastSceneReferenceLocation.x, self->_lastSceneReferenceLocation.y];
  v10 = v9;
  v12 = v11;

  v13 = [(UIGestureRecognizer *)self view];
  [(UIGestureRecognizer *)self _convertPoint:v13 toSceneReferenceCoordinatesFromView:v5 + v10, v7 + v12];
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

- (void)_centroidMovedTo:(CGPoint)a3 atTime:(double)a4 physicalTouch:(id)a5
{
  y = a3.y;
  x = a3.x;
  [(UILongPressGestureRecognizer *)self _adjustSceneReferenceLocation:a5];
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
  *(v16 + 5) = a4 - lastTouchTime;

  self->_lastUnadjustedSceneReferenceLocation.x = x;
  self->_lastUnadjustedSceneReferenceLocation.y = y;
  self->_lastSceneReferenceLocation.x = v10;
  self->_lastSceneReferenceLocation.y = v12;
  self->_lastTouchTime = a4;
}

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v5 = 1;
  if ([a3 _isGestureType:1])
  {
    v6 = a3;
    v7 = [v6 numberOfTouchesRequired];
    if (v7 == -[UILongPressGestureRecognizer numberOfTouchesRequired](self, "numberOfTouchesRequired") && (v8 = [v6 buttonMaskRequired], v8 == -[UILongPressGestureRecognizer buttonMaskRequired](self, "buttonMaskRequired")))
    {
      v9 = [v6 numberOfTapsRequired];
      v5 = v9 <= [(UILongPressGestureRecognizer *)self numberOfTapsRequired];
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