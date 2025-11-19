@interface _UIRotaryGestureRecognizer
- (BOOL)_effectiveCanBeginFromRest;
- (BOOL)_effectiveMustBeginFromRest;
- (BOOL)_invalidateRestingTouchBeginTimerIfNecessary;
- (BOOL)_isTouchInRangeOfInitialTouchForRestingTouchActivation:(CGPoint)a3;
- (_UIRotaryGestureRecognizer)initWithCoder:(id)a3;
- (_UIRotaryGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_applyDeadbandToValue:(double)result;
- (double)_applyDistanceWeightToValue:(double)a3;
- (double)_applyScaleFactor:(double)a3 toValue:(double)a4 fromAngle:(double)a5 toAngle:(double)a6;
- (double)_calculateAngleForTouchLocation:(CGPoint)a3;
- (double)_deadzoneRangeForCurrentTouchLocation;
- (double)_deltaForEventInfos:(id)a3;
- (double)_directionalMovementClassificationDistanceThreshold;
- (double)_movementClassificationAngleThresholdNumerator;
- (double)_restingTouchRangeForCurrentTouchLocation;
- (double)_velocityForEventInfos:(id)a3;
- (int64_t)_regionForTouchLocation:(CGPoint)a3;
- (int64_t)_regionForWheelPosition:(double)a3;
- (void)_activateRestingTouchRecoveryTimer;
- (void)_attemptToClassifyWithPreviousLocation:(CGPoint)a3 newLocation:(CGPoint)a4;
- (void)_attemptToStartFromRestingTouch:(id)a3;
- (void)_endGestureFromRestingTouchRecovery:(id)a3;
- (void)_enterRecoveryWindowOrEndGestureWithState:(int64_t)a3;
- (void)_invalidateRestingTouchRecoveryTimerIfNecessary;
- (void)_notifyDelegateBeganClassifyingMovementIfNecessary;
- (void)_notifyDelegateFailedClassifyingMovement;
- (void)_notifyDelegateRestTimerCancelledIfNecessary:(BOOL)a3;
- (void)_notifyDelegateUpdatedClassifyingMovement;
- (void)_processEvent:(id)a3;
- (void)_resetDeadband;
- (void)reset;
- (void)setDelegate:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIRotaryGestureRecognizer

- (_UIRotaryGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIRotaryGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (_UIRotaryGestureRecognizer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIRotaryGestureRecognizer;
  v3 = [(UIGestureRecognizer *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(UIGestureRecognizer *)v3 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  }

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  p_touchBeganPoint = &self->_touchBeganPoint;
  [a4 _digitizerLocation];
  p_touchBeganPoint->x = v7;
  p_touchBeganPoint->y = v8;
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchRecoveryTimerIfNecessary];
  [a4 _digitizerLocation];
  self->_digitizerLocation.x = v9;
  self->_digitizerLocation.y = v10;
  [(_UIRotaryGestureRecognizer *)self _calculateCurrentWheelPosition];
  self->_currentWheelPosition = v11;
  [(_UIRotaryGestureRecognizer *)self setStartRegion:[(_UIRotaryGestureRecognizer *)self _regionForWheelPosition:?]];
  if ([(_UIRotaryGestureRecognizer *)self _isTouchFarEnoughFromCenterToActivateRestingTouch:p_touchBeganPoint->x, p_touchBeganPoint->y]&& [(_UIRotaryGestureRecognizer *)self _effectiveCanBeginFromRest])
  {
    [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary];
    if ((*&self->_rotaryGestureRecognizerFlags & 4) != 0)
    {
      v12 = [(UIGestureRecognizer *)self delegate];
      [v12 rotaryGestureRecognizerStartedRestTimer:self];
    }

    v13 = MEMORY[0x1E695DFF0];
    v14 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RestingTouchDuration, @"B519_RestingTouchDuration");
    v15 = *&qword_1EA95E3E8;
    if (v14)
    {
      v15 = 0.2;
    }

    v16 = [v13 timerWithTimeInterval:self target:sel__attemptToStartFromRestingTouch_ selector:0 userInfo:0 repeats:v15];
    restingTouchBeginTimer = self->_restingTouchBeginTimer;
    self->_restingTouchBeginTimer = v16;

    v18 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v18 addTimer:self->_restingTouchBeginTimer forMode:*MEMORY[0x1E695DA28]];
  }

  else if ([(_UIRotaryGestureRecognizer *)self _effectiveMustBeginFromRest])
  {
    [(UIGestureRecognizer *)self setState:5];
  }

  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateFailed)
  {

    [(_UIRotaryGestureRecognizer *)self _processEvent:a4];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  [a4 _digitizerLocation];
  if ([(_UIRotaryGestureRecognizer *)self _isTouchInRangeOfInitialTouchForRestingTouchActivation:?])
  {
LABEL_4:

    [(_UIRotaryGestureRecognizer *)self _processEvent:a4];
    return;
  }

  if ([(UIGestureRecognizer *)self state]|| !self->_restingTouchBeginTimer || ![(_UIRotaryGestureRecognizer *)self _effectiveMustBeginFromRest])
  {
    [(_UIRotaryGestureRecognizer *)self _notifyDelegateRestTimerCancelledIfNecessary:[(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary]];
    goto LABEL_4;
  }

  [(UIGestureRecognizer *)self setState:5];
  v6 = [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary];

  [(_UIRotaryGestureRecognizer *)self _notifyDelegateRestTimerCancelledIfNecessary:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary:a3];
  [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:0];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(_UIRotaryGestureRecognizer *)self _enterRecoveryWindowOrEndGestureWithState:3];
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
    [(_UIRotaryGestureRecognizer *)self _notifyDelegateRestTimerCancelledIfNecessary:v5];

    [(_UIRotaryGestureRecognizer *)self _notifyDelegateFailedClassifyingMovement];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary:a3];
  [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:0];
  if ([(UIGestureRecognizer *)self state])
  {

    [(_UIRotaryGestureRecognizer *)self _enterRecoveryWindowOrEndGestureWithState:4];
  }

  else
  {
    [(UIGestureRecognizer *)self setState:5];
    [(_UIRotaryGestureRecognizer *)self _notifyDelegateRestTimerCancelledIfNecessary:v5];

    [(_UIRotaryGestureRecognizer *)self _notifyDelegateFailedClassifyingMovement];
  }
}

- (void)reset
{
  [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
  [(_UIRotaryGestureRecognizer *)self setVelocity:0.0];
  [(_UIRotaryGestureRecognizer *)self setAccumulatedDistance:0.0];
  [(_UIRotaryGestureRecognizer *)self setStartRegion:0];
  [(_UIRotaryGestureRecognizer *)self setBeganMode:0];
  [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:0];
  self->_currentWheelPosition = 0.0;
  self->_startWheelPosition = 0.0;
  self->_movementClassification = 0;
  recentRotaryEvents = self->_recentRotaryEvents;
  self->_recentRotaryEvents = 0;

  delegateMustBeginFromRestValue = self->_delegateMustBeginFromRestValue;
  self->_delegateMustBeginFromRestValue = 0;

  v5 = *MEMORY[0x1E695EFF8];
  self->_touchBeganPoint = *MEMORY[0x1E695EFF8];
  self->_digitizerLocation = v5;
  self->_hasNotifiedDelegateBeganClassifyingMovement = 0;
  [(_UIRotaryGestureRecognizer *)self _resetDeadband];
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary];
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchRecoveryTimerIfNecessary];
  v6.receiver = self;
  v6.super_class = _UIRotaryGestureRecognizer;
  [(UIGestureRecognizer *)&v6 reset];
}

- (void)_enterRecoveryWindowOrEndGestureWithState:(int64_t)a3
{
  if ((_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RestingTouchRecoveryWindow, @"B519_RestingTouchRecoveryWindow") & 1) != 0 || (v5 = *&qword_1EA95E3F8, *&qword_1EA95E3F8 != 0.0))
  {
    [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
    [(_UIRotaryGestureRecognizer *)self setVelocity:0.0];
    [(UIGestureRecognizer *)self setState:2];

    [(_UIRotaryGestureRecognizer *)self _activateRestingTouchRecoveryTimer];
  }

  else
  {

    [(UIGestureRecognizer *)self setState:a3, v5];
  }
}

- (BOOL)_isTouchInRangeOfInitialTouchForRestingTouchActivation:(CGPoint)a3
{
  v3 = sqrt((a3.x - self->_touchBeganPoint.x) * (a3.x - self->_touchBeganPoint.x) + (a3.y - self->_touchBeganPoint.y) * (a3.y - self->_touchBeganPoint.y));
  v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RestingTouchMovementAllowance, @"B519_RestingTouchMovementAllowance");
  v5 = *&qword_1EA95E408;
  if (v4)
  {
    v5 = 0.05;
  }

  return v3 <= v5;
}

- (void)_activateRestingTouchRecoveryTimer
{
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchRecoveryTimerIfNecessary];
  v3 = MEMORY[0x1E695DFF0];
  v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RestingTouchRecoveryWindow, @"B519_RestingTouchRecoveryWindow");
  v5 = *&qword_1EA95E3F8;
  if (v4)
  {
    v5 = 0.2;
  }

  v6 = [v3 timerWithTimeInterval:self target:sel__endGestureFromRestingTouchRecovery_ selector:0 userInfo:0 repeats:v5];
  restingTouchRecoveryTimer = self->_restingTouchRecoveryTimer;
  self->_restingTouchRecoveryTimer = v6;

  v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v8 addTimer:self->_restingTouchRecoveryTimer forMode:*MEMORY[0x1E695DA28]];
}

- (void)_endGestureFromRestingTouchRecovery:(id)a3
{
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchRecoveryTimerIfNecessary];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (BOOL)_invalidateRestingTouchBeginTimerIfNecessary
{
  restingTouchBeginTimer = self->_restingTouchBeginTimer;
  if (restingTouchBeginTimer)
  {
    [(NSTimer *)self->_restingTouchBeginTimer invalidate];
    v4 = self->_restingTouchBeginTimer;
    self->_restingTouchBeginTimer = 0;
  }

  return restingTouchBeginTimer != 0;
}

- (void)_invalidateRestingTouchRecoveryTimerIfNecessary
{
  restingTouchRecoveryTimer = self->_restingTouchRecoveryTimer;
  if (restingTouchRecoveryTimer)
  {
    [(NSTimer *)restingTouchRecoveryTimer invalidate];
    v4 = self->_restingTouchRecoveryTimer;
    self->_restingTouchRecoveryTimer = 0;
  }
}

- (void)_attemptToStartFromRestingTouch:(id)a3
{
  [(_UIRotaryGestureRecognizer *)self _invalidateRestingTouchBeginTimerIfNecessary];
  if ([(_UIRotaryGestureRecognizer *)self _isTouchInRangeOfInitialTouchForRestingTouchActivation:self->_digitizerLocation.x, self->_digitizerLocation.y])
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
    {
      [(_UIRotaryGestureRecognizer *)self _calculateCurrentWheelPosition];
      self->_currentWheelPosition = v4;
      [(_UIRotaryGestureRecognizer *)self setStartRegion:[(_UIRotaryGestureRecognizer *)self _regionForWheelPosition:?]];
      if ([(_UIRotaryGestureRecognizer *)self _effectiveCanBeginFromRest])
      {
        [(_UIRotaryGestureRecognizer *)self setBeganMode:1];
        if ([(_UIRotaryGestureRecognizer *)self _effectiveMustBeginFromRest])
        {
          self->_touchBeganPoint = self->_digitizerLocation;
          self->_movementClassification = 0;
        }

        [(_UIRotaryGestureRecognizer *)self _notifyDelegateBeganClassifyingMovementIfNecessary];
      }
    }
  }
}

- (BOOL)_effectiveCanBeginFromRest
{
  if ((*&self->_rotaryGestureRecognizerFlags & 1) == 0)
  {
    return 1;
  }

  v3 = self;
  v4 = [(UIGestureRecognizer *)self delegate];
  LOBYTE(v3) = [v4 rotaryGestureRecognizerCanBeginFromRest:v3];

  return v3;
}

- (int64_t)_regionForTouchLocation:(CGPoint)a3
{
  [(_UIRotaryGestureRecognizer *)self _calculateWheelPositionForTouchLocation:a3.x, a3.y];

  return [(_UIRotaryGestureRecognizer *)self _regionForWheelPosition:?];
}

- (int64_t)_regionForWheelPosition:(double)a3
{
  if (a3 >= 0.0 && a3 <= 0.125)
  {
    return 1;
  }

  if (a3 >= 0.875 && a3 <= 1.0)
  {
    return 1;
  }

  if (a3 > 0.125 && a3 < 0.375)
  {
    return 4;
  }

  if (a3 >= 0.375 && a3 <= 0.625)
  {
    return 2;
  }

  if (a3 >= 0.875 || a3 <= 0.625)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (void)_processEvent:(id)a3
{
  p_digitizerLocation = &self->_digitizerLocation;
  x = self->_digitizerLocation.x;
  y = self->_digitizerLocation.y;
  [a3 _digitizerLocation];
  p_digitizerLocation->x = v8;
  p_digitizerLocation->y = v9;
  if ([(_UIRotaryGestureRecognizer *)self _effectiveMustBeginFromRest]&& [(_UIRotaryGestureRecognizer *)self beganMode]!= 1)
  {
    return;
  }

  movementClassification = self->_movementClassification;
  v11 = [(UIGestureRecognizer *)self state];
  if (!(v11 | movementClassification))
  {
    [(_UIRotaryGestureRecognizer *)self _attemptToClassifyWithPreviousLocation:x newLocation:y, p_digitizerLocation->x, p_digitizerLocation->y];
  }

  v12 = self->_movementClassification;
  if (v12 == 1)
  {
    [(UIGestureRecognizer *)self setState:5];

    [(_UIRotaryGestureRecognizer *)self _notifyDelegateFailedClassifyingMovement];
  }

  else
  {
    if (v12 == 2)
    {
      if (!self->_recentRotaryEvents)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        recentRotaryEvents = self->_recentRotaryEvents;
        self->_recentRotaryEvents = v13;
      }

      [(_UIRotaryGestureRecognizer *)self _deadzoneRangeForCurrentTouchLocation];
      v16 = [(_UIRotaryGestureRecognizer *)self _isPoint:p_digitizerLocation->x inRangeOfCenter:p_digitizerLocation->y, v15];
      currentWheelPosition = self->_currentWheelPosition;
      [(_UIRotaryGestureRecognizer *)self _calculateCurrentWheelPosition];
      self->_currentWheelPosition = v18;
      if (movementClassification)
      {
        if ([(_UIRotaryGestureRecognizer *)self isActivelyTouching])
        {
          v19 = self->_currentWheelPosition;
          if (currentWheelPosition == v19 || v16)
          {
            if (!v16)
            {
              [(NSMutableArray *)self->_recentRotaryEvents removeAllObjects];
            }

            [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
            [(_UIRotaryGestureRecognizer *)self setVelocity:0.0];

            [(UIGestureRecognizer *)self setState:2];
            return;
          }

          v32 = v19 - currentWheelPosition;
          v33 = vabdd_f64(v19, currentWheelPosition);
          v34 = v32 + 1.0;
          if (v32 > 0.0)
          {
            v34 = v32 + -1.0;
          }

          if (v33 > 0.5)
          {
            v35 = v34;
          }

          else
          {
            v35 = v32;
          }

          [a3 timestamp];
          v37 = v36;
          v38 = [(NSMutableArray *)self->_recentRotaryEvents count];
          v39 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RotaryVelocityFilterSamples, @"B519_RotaryVelocityFilterSamples");
          v40 = *&qword_1EA95E428;
          if (v39)
          {
            v40 = 5.0;
          }

          if (v40 < v38)
          {
            [(NSMutableArray *)self->_recentRotaryEvents removeObjectAtIndex:0];
          }

          v41 = self->_recentRotaryEvents;
          v46[0] = v37;
          *&v46[1] = v35;
          v42 = [MEMORY[0x1E696B098] valueWithBytes:v46 objCType:"{UIRotaryEventInfo=dd}"];
          [(NSMutableArray *)v41 addObject:v42];

          [(_UIRotaryGestureRecognizer *)self _deltaForEventInfos:self->_recentRotaryEvents];
          [(_UIRotaryGestureRecognizer *)self _applyDistanceWeightToValue:?];
          [(_UIRotaryGestureRecognizer *)self _applyDeadbandToValue:?];
          v44 = v43;
          [(_UIRotaryGestureRecognizer *)self accumulatedDistance];
          [(_UIRotaryGestureRecognizer *)self setAccumulatedDistance:v44 + v45];
          [(_UIRotaryGestureRecognizer *)self setDelta:v44];
          [(_UIRotaryGestureRecognizer *)self _velocityForEventInfos:self->_recentRotaryEvents];
          [(_UIRotaryGestureRecognizer *)self _applyDistanceWeightToValue:?];
        }

        else
        {
          [a3 timestamp];
          v28 = v27;
          [(NSMutableArray *)self->_recentRotaryEvents removeAllObjects];
          v29 = self->_recentRotaryEvents;
          v47[0] = v28;
          v47[1] = 0;
          v30 = [MEMORY[0x1E696B098] valueWithBytes:v47 objCType:"{UIRotaryEventInfo=dd}"];
          [(NSMutableArray *)v29 addObject:v30];

          [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
          [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:1];
          v31 = 0.0;
        }

        [(_UIRotaryGestureRecognizer *)self setVelocity:v31];
        v25 = self;
        v26 = 2;
      }

      else
      {
        [a3 timestamp];
        v22 = v21;
        [(NSMutableArray *)self->_recentRotaryEvents removeAllObjects];
        v23 = self->_recentRotaryEvents;
        v48[0] = v22;
        v48[1] = 0;
        v24 = [MEMORY[0x1E696B098] valueWithBytes:v48 objCType:"{UIRotaryEventInfo=dd}"];
        [(NSMutableArray *)v23 addObject:v24];

        [(_UIRotaryGestureRecognizer *)self setAccumulatedDistance:0.0];
        [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
        [(_UIRotaryGestureRecognizer *)self setStartRegion:[(_UIRotaryGestureRecognizer *)self _regionForWheelPosition:self->_currentWheelPosition]];
        [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:1];
        if (![(_UIRotaryGestureRecognizer *)self beganMode])
        {
          [(_UIRotaryGestureRecognizer *)self setBeganMode:2];
        }

        self->_startWheelPosition = self->_currentWheelPosition;
        [(_UIRotaryGestureRecognizer *)self _resetDeadband];
        v25 = self;
        v26 = 1;
      }

      [(UIGestureRecognizer *)v25 setState:v26];
      return;
    }

    if (v11 == UIGestureRecognizerStatePossible)
    {
      [(_UIRotaryGestureRecognizer *)self _calculateCurrentWheelPosition];
      self->_currentWheelPosition = v20;
      [(_UIRotaryGestureRecognizer *)self setAccumulatedDistance:0.0];
      [(_UIRotaryGestureRecognizer *)self setDelta:0.0];
      [(_UIRotaryGestureRecognizer *)self setStartRegion:[(_UIRotaryGestureRecognizer *)self _regionForWheelPosition:self->_currentWheelPosition]];
      [(_UIRotaryGestureRecognizer *)self setIsActivelyTouching:1];
      if (!self->_restingTouchBeginTimer)
      {
        if (self->_hasNotifiedDelegateBeganClassifyingMovement)
        {

          [(_UIRotaryGestureRecognizer *)self _notifyDelegateUpdatedClassifyingMovement];
        }

        else
        {

          [(_UIRotaryGestureRecognizer *)self _notifyDelegateBeganClassifyingMovementIfNecessary];
        }
      }
    }
  }
}

- (void)_notifyDelegateRestTimerCancelledIfNecessary:(BOOL)a3
{
  if (self->_movementClassification != 2 && a3 && (*&self->_rotaryGestureRecognizerFlags & 8) != 0)
  {
    v7 = [(UIGestureRecognizer *)self delegate];
    [v7 rotaryGestureRecognizerCancelledRestTimer:self];
  }
}

- (void)_notifyDelegateBeganClassifyingMovementIfNecessary
{
  if (!self->_hasNotifiedDelegateBeganClassifyingMovement && (*&self->_rotaryGestureRecognizerFlags & 0x10) != 0)
  {
    self->_hasNotifiedDelegateBeganClassifyingMovement = 1;
    v3 = [(UIGestureRecognizer *)self delegate];
    [v3 rotaryGestureRecognizerBeganClassifyingMovement:self];
  }
}

- (void)_notifyDelegateUpdatedClassifyingMovement
{
  if (self->_hasNotifiedDelegateBeganClassifyingMovement && (*&self->_rotaryGestureRecognizerFlags & 0x20) != 0)
  {
    v3 = [(UIGestureRecognizer *)self delegate];
    [v3 rotaryGestureRecognizerUpdatedClassifyingMovement:self];
  }
}

- (void)_notifyDelegateFailedClassifyingMovement
{
  if (self->_hasNotifiedDelegateBeganClassifyingMovement && (*&self->_rotaryGestureRecognizerFlags & 0x40) != 0)
  {
    v3 = [(UIGestureRecognizer *)self delegate];
    [v3 rotaryGestureRecognizerFailedClassifyingMovement:self];
  }
}

- (BOOL)_effectiveMustBeginFromRest
{
  if (self->_restingTouchRecoveryTimer)
  {
    goto LABEL_2;
  }

  delegateMustBeginFromRestValue = self->_delegateMustBeginFromRestValue;
  if (!delegateMustBeginFromRestValue)
  {
    if ((*&self->_rotaryGestureRecognizerFlags & 2) != 0)
    {
      v6 = [(UIGestureRecognizer *)self delegate];
      v2 = [v6 rotaryGestureRecognizerMustBeginFromRest:self];

      v7 = [MEMORY[0x1E696AD98] numberWithBool:v2];
      v8 = self->_delegateMustBeginFromRestValue;
      self->_delegateMustBeginFromRestValue = v7;

      return v2;
    }

LABEL_2:
    LOBYTE(v2) = 0;
    return v2;
  }

  return [(NSNumber *)delegateMustBeginFromRestValue BOOLValue];
}

- (void)_attemptToClassifyWithPreviousLocation:(CGPoint)a3 newLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(_UIRotaryGestureRecognizer *)self _calculateRadialDistance:a4.x, a4.y];
  v8 = v7;
  v9 = [(_UIRotaryGestureRecognizer *)self _regionForTouchLocation:x, y];
  [(_UIRotaryGestureRecognizer *)self _calculateAngleForTouchLocation:x, y];
  if (!self->_movementClassification)
  {
    v11 = v10;
    [(_UIRotaryGestureRecognizer *)self _calculateRadialDistance:self->_touchBeganPoint.x, self->_touchBeganPoint.y];
    v13 = v12;
    [(_UIRotaryGestureRecognizer *)self _calculateAngleForTouchLocation:self->_touchBeganPoint.x, self->_touchBeganPoint.y];
    if (v11 <= 270.0 || v14 >= 90.0)
    {
      if (v14 > 270.0 && v11 < 90.0)
      {
        v15 = v11 - v14 + 360.0;
      }

      else
      {
        v15 = v11 - v14;
      }
    }

    else
    {
      v15 = -(v14 - v11 + 360.0);
    }

    [(_UIRotaryGestureRecognizer *)self _movementClassificationAngleThresholdNumerator];
    v18 = v17;
    [(_UIRotaryGestureRecognizer *)self _directionalMovementClassificationDistanceThreshold];
    v20 = v19;
    if ([(_UIRotaryGestureRecognizer *)self startRegion]== 1)
    {
      v21 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B0B8, @"B519_DistanceFromCenterTopQuadrantThreshold");
      v22 = qword_1ED48B0C0;
      v23 = v21 == 0;
      v24 = 0.2;
    }

    else
    {
      v25 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B0C8, @"B519_DistanceFromCenterThreshold");
      v22 = qword_1ED48B0D0;
      v23 = v25 == 0;
      v24 = 0.23;
    }

    if (v23)
    {
      v26 = *&v22;
    }

    else
    {
      v26 = v24;
    }

    if (v9 == 1)
    {
      v27 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B0B8, @"B519_DistanceFromCenterTopQuadrantThreshold");
      v28 = qword_1ED48B0C0;
      v29 = v27 == 0;
      v30 = 0.2;
    }

    else
    {
      v31 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B0C8, @"B519_DistanceFromCenterThreshold");
      v28 = qword_1ED48B0D0;
      v29 = v31 == 0;
      v30 = 0.23;
    }

    if (v29)
    {
      v32 = *&v28;
    }

    else
    {
      v32 = v30;
    }

    if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B0D8, @"B519_DistanceFromCenterMinimumThreshold"))
    {
      v33 = 0.18;
    }

    else
    {
      v33 = *&qword_1ED48B0E0;
    }

    v34 = 1;
    if (v13 < v26)
    {
      goto LABEL_41;
    }

    v35 = vabdd_f64(v8, v13);
    v36 = fmax(fmin(v35 / v20, 1.0), 0.0);
    if (v8 < (1.0 - v36) * v32 + v36 * v33)
    {
      goto LABEL_41;
    }

    v37 = fabs(v15);
    v38 = fmax(fmin(v18 / v8, 179.0), 1.0);
    if (v37 > v38 && v35 > v20)
    {
      v34 = 2;
      if (v37 / v38 <= v35 / v20)
      {
        v34 = 1;
      }

LABEL_41:
      self->_movementClassification = v34;
      return;
    }

    v34 = 2;
    if (v37 > v38)
    {
      v40 = 0;
    }

    else
    {
      v34 = 1;
      v40 = v35 <= v20;
    }

    if (!v40)
    {
      goto LABEL_41;
    }
  }
}

- (double)_velocityForEventInfos:(id)a3
{
  v4 = [a3 count];
  v5 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RotaryVelocityFilterSamples, @"B519_RotaryVelocityFilterSamples");
  v6 = 0.0;
  if (v4 >= 2)
  {
    v7 = *&qword_1EA95E428;
    if (v5)
    {
      v7 = 5.0;
    }

    v8 = fmax(v7, 1.0);
    if (v4 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v4 <= v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4 - v9;
    }

    if (v10 <= v4 - 1)
    {
      v11 = v9;
      do
      {
        v12 = [a3 objectAtIndex:{v10 - 1, 0, 0, 0, 0}];
        [v12 getValue:&v16];

        v13 = [a3 objectAtIndex:v10];
        [v13 getValue:v15];

        v6 = v6 + v15[1] / fmax(v15[0] - v16, 0.0151515152) / v11;
        ++v10;
      }

      while (v4 != v10);
    }
  }

  return v6;
}

- (double)_applyDeadbandToValue:(double)result
{
  rotaryDeadBand = self->_rotaryDeadBand;
  if (rotaryDeadBand > 0.0)
  {
    v4 = fabs(result);
    v5 = rotaryDeadBand - v4;
    v6 = 0.0;
    if (v5 <= 0.0)
    {
      v6 = result / v4 * fabs(v5);
      v5 = 0.0;
    }

    self->_rotaryDeadBand = v5;
    return v6;
  }

  return result;
}

- (double)_deltaForEventInfos:(id)a3
{
  v4 = [a3 count];
  v5 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RotaryVelocityFilterSamples, @"B519_RotaryVelocityFilterSamples");
  v6 = 0.0;
  if (v4)
  {
    v7 = *&qword_1EA95E428;
    if (v5)
    {
      v7 = 5.0;
    }

    v8 = fmax(v7, 1.0);
    if (v4 >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v10 = v4 - v9;
    if (v4 - v9 <= v4 - 1)
    {
      v11 = v9;
      do
      {
        v15 = 0.0;
        v12 = [a3 objectAtIndex:{v10, 0}];
        [v12 getValue:&v14];

        v6 = v6 + v15 / v11;
        ++v10;
        --v9;
      }

      while (v9);
    }
  }

  return v6;
}

- (double)_applyDistanceWeightToValue:(double)a3
{
  __asm { FMOV            V2.2D, #0.5 }

  v8 = vsubq_f64(_Q2, self->_digitizerLocation);
  v9 = sqrt(vaddvq_f64(vmulq_f64(v8, v8))) * a3;
  v10 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_DeweightedDistanceFromCenterFactor, @"B519_DeweightedDistanceFromCenterFactor");
  v11 = 1.0 / *&qword_1EA95E438;
  if (v10)
  {
    v11 = 2.5;
  }

  return v11 * v9;
}

- (double)_applyScaleFactor:(double)a3 toValue:(double)a4 fromAngle:(double)a5 toAngle:(double)a6
{
  [(_UIRotaryGestureRecognizer *)self _calculateAngleForTouchLocation:self->_digitizerLocation.x, self->_digitizerLocation.y];
  v11 = v10 >= a6 || v10 <= a5;
  result = a3 * a4;
  if (v11)
  {
    return a4;
  }

  return result;
}

- (double)_deadzoneRangeForCurrentTouchLocation
{
  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B058, @"B519_RestingTouchMinimumDistanceFromCenterTopTouchFactor"))
  {
    v3 = 0.8333;
  }

  else
  {
    v3 = *&qword_1ED48B060;
  }

  v4 = _UIInternalPreferenceUsesDefault_1(algn_1ED48B068, @"B519_RotaryCenterDeadzone");
  v5 = 0.2;
  if (!v4)
  {
    v5 = *&qword_1ED48B070;
  }

  [(_UIRotaryGestureRecognizer *)self _applyScaleFactor:v3 toValue:v5 fromAngle:45.0 toAngle:135.0];
  return result;
}

- (double)_restingTouchRangeForCurrentTouchLocation
{
  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B058, @"B519_RestingTouchMinimumDistanceFromCenterTopTouchFactor"))
  {
    v3 = 0.8333;
  }

  else
  {
    v3 = *&qword_1ED48B060;
  }

  v4 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_936, @"B519_RestingTouchMinimumDistanceFromCenter");
  v5 = 0.3;
  if (!v4)
  {
    v5 = *&qword_1ED48B050;
  }

  [(_UIRotaryGestureRecognizer *)self _applyScaleFactor:v3 toValue:v5 fromAngle:45.0 toAngle:135.0];
  return result;
}

- (double)_calculateAngleForTouchLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UIRotaryGestureRecognizer *)self _calculateRadialDistance:?];
  *&v5 = (x + -0.5) / v5;
  v6 = acosf(*&v5) * 57.2957795;
  if (y > 0.5)
  {
    v6 = 360.0 - v6;
  }

  v7 = 360.0 - v6 + 90.0;

  return fmod(v7, 360.0);
}

- (void)_resetDeadband
{
  v3 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_B519_RotaryDeadbandSize, @"B519_RotaryDeadbandSize");
  v4 = *&qword_1EA95E418;
  if (v3)
  {
    v4 = 0.0;
  }

  self->_rotaryDeadBand = v4;
}

- (double)_directionalMovementClassificationDistanceThreshold
{
  if ([(_UIRotaryGestureRecognizer *)self beganMode]== 1)
  {
    v2 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B098, @"B519_RestDirectionalMovementClassificationDistanceThreshold");
    result = *&qword_1ED48B0A0;
    v4 = v2 == 0;
    v5 = 0.1;
  }

  else
  {
    v6 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B078, @"B519_StrictDirectionalMovementClassificationDistanceThreshold");
    result = *&qword_1ED48B080;
    v4 = v6 == 0;
    v5 = 0.15;
  }

  if (!v4)
  {
    return v5;
  }

  return result;
}

- (double)_movementClassificationAngleThresholdNumerator
{
  if ([(_UIRotaryGestureRecognizer *)self beganMode]== 1)
  {
    v2 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B0A8, @"B519_RestMovementClassificationAngleThresholdNumerator");
    result = *&qword_1ED48B0B0;
    v4 = v2 == 0;
    v5 = 6.0;
  }

  else
  {
    v6 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B088, @"B519_StrictMovementClassificationAngleThresholdNumerator");
    result = *&qword_1ED48B090;
    v4 = v6 == 0;
    v5 = 15.0;
  }

  if (!v4)
  {
    return v5;
  }

  return result;
}

- (void)setDelegate:(id)a3
{
  v5 = [(UIGestureRecognizer *)self delegate];
  if (v5 != a3 || !a3 && (*&self->_rotaryGestureRecognizerFlags & 0x80000000) != 0)
  {
    v12.receiver = self;
    v12.super_class = _UIRotaryGestureRecognizer;
    [(UIGestureRecognizer *)&v12 setDelegate:a3];
    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0x7F | ((a3 != 0) << 7);
    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xEF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xDF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *&self->_rotaryGestureRecognizerFlags = *&self->_rotaryGestureRecognizerFlags & 0xBF | v11;
  }
}

@end