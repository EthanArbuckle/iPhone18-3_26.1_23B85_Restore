@interface UITouchForceGestureRecognizer
- (BOOL)_hasExceededAllowableMovement;
- (BOOL)_hasExceededMaximumNumberOfTouches;
- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5;
- (BOOL)_validateHysteresis;
- (UITouchForceGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_evaluateAutomaticTouchForceForTimeInterval:(double)a3 actualTouchForce:(double)a4;
- (double)touchDuration;
- (void)_beginForContinuousEvaluationForTouches:(id)a3;
- (void)_endIfNeeded:(BOOL)a3;
- (void)_evaluateTouches:(id)a3 withEvent:(id)a4;
- (void)_evaluateWithTouchForce:(double)a3 centroidAtLocation:(CGPoint)a4;
- (void)_updateForContinuousEvaluation:(id)a3;
- (void)_updateTouchForce:(double)a3;
- (void)reset;
- (void)setView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITouchForceGestureRecognizer

- (UITouchForceGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v10.receiver = self;
  v10.super_class = UITouchForceGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_touchForce = 0.0;
    v4->_minimumRequiredTouchForce = 0.0;
    v4->_allowableMovement = 10.0;
    v4->_maximumNumberOfTouches = 0;
    v6 = objc_alloc_init(_UIVelocityIntegrator);
    [(_UIVelocityIntegrator *)v6 setMinimumRequiredMovement:0.0];
    velocityIntegrator = v5->_velocityIntegrator;
    v5->_velocityIntegrator = v6;

    v5->_velocity = 0.0;
    v5->_steady = 1;
    v5->_automaticTouchForce = 0.0;
    v5->_automaticTouchForceDuration = 0.5;
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:&unk_1EFE2C0A0];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    v8 = v5;
  }

  return v5;
}

- (void)setView:(id)a3
{
  if (!a3)
  {
    [(CADisplayLink *)self->_continuousEvaluationDisplayLink invalidate];
    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = 0;
  }

  v6.receiver = self;
  v6.super_class = UITouchForceGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setView:a3];
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = UITouchForceGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  currentTouches = self->_currentTouches;
  self->_currentTouches = 0;

  self->_touchForce = 0.0;
  self->_currentTouchForce = 0.0;
  self->_eventTouchCount = 0;
  self->_touchesBeganTimestamp = 0.0;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_initialCentroidOfTouches = v4;
  self->_currentCentroidOfTouches = v4;
  [(_UIVelocityIntegrator *)self->_velocityIntegrator reset];
  self->_velocity = 0.0;
  self->_steady = 1;
  [(UITouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  currentTouches = self->_currentTouches;
  if (currentTouches)
  {
    [(NSMutableSet *)currentTouches unionSet:a3];
  }

  else
  {
    v8 = [a3 mutableCopy];
    v9 = self->_currentTouches;
    self->_currentTouches = v8;

    v10 = [a3 anyObject];
    [v10 timestamp];
    self->_touchesBeganTimestamp = v11;

    self->_currentCentroidOfTouches.x = _CentroidOfTouches(a3, 0);
    self->_currentCentroidOfTouches.y = v12;
    self->_initialCentroidOfTouches = self->_currentCentroidOfTouches;
    [(UITouchForceGestureRecognizer *)self _beginForContinuousEvaluationForTouches:a3];
  }

  [(UITouchForceGestureRecognizer *)self _evaluateTouches:a3 withEvent:a4];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([(UITouch *)*(*(&v20 + 1) + 8 * v10) _mightBeConsideredForForceSystemGesture])
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v11 = self->_currentTouches;
          v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v17;
            do
            {
              v15 = 0;
              do
              {
                if (*v17 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [(UIGestureRecognizer *)self ignoreTouch:*(*(&v16 + 1) + 8 * v15++) forEvent:a4, v16];
              }

              while (v13 != v15);
              v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v13);
          }

          [(NSMutableSet *)self->_currentTouches removeAllObjects];
          [(UITouchForceGestureRecognizer *)self _endIfNeeded:1];

          return;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [(UITouchForceGestureRecognizer *)self _evaluateTouches:v6 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  [(NSMutableSet *)self->_currentTouches minusSet:a3, a4];
  if (![(NSMutableSet *)self->_currentTouches count])
  {
    v5 = [(UITouchForceGestureRecognizer *)self _validateHysteresis];

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:v5];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(NSMutableSet *)self->_currentTouches minusSet:a3, a4];
  if (![(NSMutableSet *)self->_currentTouches count])
  {

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:1];
  }
}

- (BOOL)_shouldReceiveTouch:(id)a3 forEvent:(id)a4 recognizerView:(id)a5
{
  if (([(UITouch *)a3 _mightBeConsideredForForceSystemGesture]& 1) != 0)
  {
    return 0;
  }

  configurationBlock = self->_configurationBlock;
  if (configurationBlock)
  {
    configurationBlock[2](configurationBlock, self);
  }

  [(UITouchForceGestureRecognizer *)self automaticTouchForce];
  if (v10 == 0.0)
  {
    v11 = [a3 view];
    v12 = [v11 traitCollection];
    v13 = [v12 forceTouchCapability];

    if (v13 != 2)
    {
      return 0;
    }
  }

  v15.receiver = self;
  v15.super_class = UITouchForceGestureRecognizer;
  return [(UIGestureRecognizer *)&v15 _shouldReceiveTouch:a3 forEvent:a4 recognizerView:a5];
}

- (void)_evaluateTouches:(id)a3 withEvent:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = a3;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v18 + 1) + 8 * i) force];
          v11 = v11 + v13;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v14 = v11 / [v7 count];
  }

  else
  {
    v14 = 0.0;
  }

  self->_currentCentroidOfTouches.x = _CentroidOfTouches(a3, 0);
  self->_currentCentroidOfTouches.y = v15;
  self->_currentTouchForce = v14;
  v16 = [a4 allTouches];
  self->_eventTouchCount = [v16 count];

  v17 = [a3 anyObject];
  [v17 timestamp];
  [UITouchForceGestureRecognizer _evaluateAutomaticTouchForceForTimeInterval:"_evaluateAutomaticTouchForceForTimeInterval:actualTouchForce:" actualTouchForce:?];
  [UITouchForceGestureRecognizer _evaluateWithTouchForce:"_evaluateWithTouchForce:centroidAtLocation:" centroidAtLocation:?];
}

- (void)_evaluateWithTouchForce:(double)a3 centroidAtLocation:(CGPoint)a4
{
  if ([(UITouchForceGestureRecognizer *)self _validateHysteresis:a3])
  {
    [(UITouchForceGestureRecognizer *)self _updateTouchForce:a3];

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:1];
  }

  else
  {
    v6 = [(UIGestureRecognizer *)self state];
    if ((v6 - 3) < 3)
    {
      v10 = 0.0;
      v9 = self;
    }

    else
    {
      if ((v6 - 1) >= 2)
      {
        if (v6 || self->_minimumRequiredTouchForce > a3)
        {
          return;
        }

        v7 = self;
        v8 = 1;
      }

      else
      {
        v7 = self;
        v8 = 2;
      }

      [(UIGestureRecognizer *)v7 setState:v8];
      v9 = self;
      v10 = a3;
    }

    [(UITouchForceGestureRecognizer *)v9 _updateTouchForce:v10];
  }
}

- (void)_endIfNeeded:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIGestureRecognizer *)self state];
  if ((v5 - 3) < 3)
  {
LABEL_7:
    [(UITouchForceGestureRecognizer *)self _updateTouchForce:0.0];
    goto LABEL_8;
  }

  if ((v5 - 1) < 2)
  {
    if (v3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    [(UIGestureRecognizer *)self setState:v6];
    goto LABEL_7;
  }

  if (v5 == UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:5];
  }

LABEL_8:

  [(UITouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (void)_updateTouchForce:(double)a3
{
  [(UITouchForceGestureRecognizer *)self setTouchForce:?];
  v5 = 0.0;
  [(_UIVelocityIntegrator *)self->_velocityIntegrator addSample:0.0, a3];
  if ([(_UIVelocityIntegrator *)self->_velocityIntegrator hasVelocity])
  {
    [(_UIVelocityIntegrator *)self->_velocityIntegrator velocity];
    v5 = v6;
  }

  [(UITouchForceGestureRecognizer *)self setVelocity:v5];
  [(UITouchForceGestureRecognizer *)self velocity];
  if (v7 != 0.0)
  {
    v8 = v7 * 100.0;
    v7 = roundf(v8) / 100.0;
  }

  [(UITouchForceGestureRecognizer *)self setSteady:v7 == 0.0];
}

- (BOOL)_hasExceededAllowableMovement
{
  allowableMovement = self->_allowableMovement;
  if (allowableMovement <= 0.0)
  {
    return 0;
  }

  v3 = vsubq_f64(self->_currentCentroidOfTouches, self->_initialCentroidOfTouches);
  v4 = sqrt(vaddvq_f64(vmulq_f64(v3, v3)));
  if (v4 >= allowableMovement)
  {
    v4 = self->_allowableMovement;
  }

  return v4 / allowableMovement >= 1.0;
}

- (BOOL)_hasExceededMaximumNumberOfTouches
{
  v3 = [(UITouchForceGestureRecognizer *)self maximumNumberOfTouches];
  if (v3)
  {
    LOBYTE(v3) = self->_eventTouchCount > v3;
  }

  return v3;
}

- (BOOL)_validateHysteresis
{
  if ([(UITouchForceGestureRecognizer *)self _hasExceededAllowableMovement])
  {
    return 1;
  }

  return [(UITouchForceGestureRecognizer *)self _hasExceededMaximumNumberOfTouches];
}

- (void)_beginForContinuousEvaluationForTouches:(id)a3
{
  continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  if (!continuousEvaluationDisplayLink)
  {
    v5 = [a3 anyObject];
    v6 = [v5 view];
    v7 = [v6 window];
    v8 = [v7 screen];

    if (!v8)
    {
      v8 = [objc_opt_self() mainScreen];
    }

    v9 = [v8 displayLinkWithTarget:self selector:sel__updateForContinuousEvaluation_];
    v10 = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = v9;

    v11 = self->_continuousEvaluationDisplayLink;
    v12 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];

    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  }

  [(CADisplayLink *)continuousEvaluationDisplayLink setPaused:0];
}

- (void)_updateForContinuousEvaluation:(id)a3
{
  [(UITouchForceGestureRecognizer *)self _evaluateAutomaticTouchForceForTimeInterval:CACurrentMediaTime() actualTouchForce:self->_currentTouchForce];

  [UITouchForceGestureRecognizer _evaluateWithTouchForce:"_evaluateWithTouchForce:centroidAtLocation:" centroidAtLocation:?];
}

- (double)_evaluateAutomaticTouchForceForTimeInterval:(double)a3 actualTouchForce:(double)a4
{
  automaticTouchForce = self->_automaticTouchForce;
  if (automaticTouchForce > 0.0)
  {
    v5 = automaticTouchForce * ((a3 - self->_touchesBeganTimestamp) / self->_automaticTouchForceDuration);
    if (v5 >= a4)
    {
      return v5;
    }
  }

  return a4;
}

- (double)touchDuration
{
  result = 0.0;
  if (self->_touchesBeganTimestamp < 978307200.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    return v4 - self->_touchesBeganTimestamp;
  }

  return result;
}

@end