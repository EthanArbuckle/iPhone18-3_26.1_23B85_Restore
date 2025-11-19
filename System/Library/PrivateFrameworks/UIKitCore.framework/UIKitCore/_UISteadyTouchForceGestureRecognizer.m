@interface _UISteadyTouchForceGestureRecognizer
- (_UISteadyTouchForceGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)minimumSteadyTouchForceDuration;
- (void)_adjustSteadyForceDurationIfNeeded:(id)a3 event:(id)a4;
- (void)_beginForContinuousEvaluationForTouches:(id)a3;
- (void)_evaluateTouches:(id)a3;
- (void)_evaluateWithTouchForce:(double)a3;
- (void)cancel;
- (void)recognize;
- (void)reset;
- (void)setView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UISteadyTouchForceGestureRecognizer

- (_UISteadyTouchForceGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = _UISteadyTouchForceGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v11 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_minimumSteadyTouchForceDuration = 0.4;
    v6 = v4;
    v7 = objc_alloc_init(_UIVelocityIntegrator);
    [(_UIVelocityIntegrator *)v7 setMinimumRequiredMovement:0.0];
    velocityIntegrator = v6->_velocityIntegrator;
    v6->_velocityIntegrator = v7;

    [(UIGestureRecognizer *)v6 setAllowedTouchTypes:&unk_1EFE2D180];
    [(UIGestureRecognizer *)v6 setAllowedPressTypes:MEMORY[0x1E695E0F0]];

    v9 = v6;
  }

  return v5;
}

- (void)setView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CADisplayLink *)self->_continuousEvaluationDisplayLink invalidate];
    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = 0;
  }

  v6.receiver = self;
  v6.super_class = _UISteadyTouchForceGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setView:v4];
}

- (void)recognize
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:3];
  }

  [(_UISteadyTouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (void)cancel
{
  v3 = [(UIGestureRecognizer *)self state];
  if (v3 <= UIGestureRecognizerStateChanged)
  {
    [(UIGestureRecognizer *)self setState:qword_18A680D18[v3]];
  }

  [(_UISteadyTouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (double)minimumSteadyTouchForceDuration
{
  v2 = 3;
  if (self->_useOverridingMinimumDuration)
  {
    v2 = 2;
  }

  return *(&self->super.super.isa + OBJC_IVAR____UISteadyTouchForceGestureRecognizer__continuousEvaluationDisplayLink[v2]);
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = _UISteadyTouchForceGestureRecognizer;
  [(UIGestureRecognizer *)&v4 reset];
  [(_UIVelocityIntegrator *)self->_velocityIntegrator reset];
  self->_currentTouchForce = 0.0;
  steadyTimestamp = self->_steadyTimestamp;
  self->_steadyTimestamp = 0;

  self->_useOverridingMinimumDuration = 0;
  [(_UISteadyTouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (void)_adjustSteadyForceDurationIfNeeded:(id)a3 event:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [a3 valueForKey:@"window"];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [v6 _gestureRecognizersForWindow:{v12, 0}];
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if (_isDragInteractionGestureRecognizer(*(*(&v18 + 1) + 8 * j)))
              {
                self->_overrideMinimumSteadyTouchForceDuration = 0.125;
                self->_useOverridingMinimumDuration = 1;

                goto LABEL_18;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

LABEL_18:
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  [(_UISteadyTouchForceGestureRecognizer *)self _adjustSteadyForceDurationIfNeeded:v6 event:a4];
  [(_UISteadyTouchForceGestureRecognizer *)self _evaluateTouches:v6];
  [(_UISteadyTouchForceGestureRecognizer *)self _beginForContinuousEvaluationForTouches:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UIGestureRecognizer *)self _allActiveTouches:a3];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * v9) phase] < 3)
        {

          return;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(_UISteadyTouchForceGestureRecognizer *)self cancel];
}

- (void)_evaluateTouches:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) force];
          v9 = v9 + v11;
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v12 = v9 / [v5 count];
  }

  else
  {
    v12 = 0.0;
  }

  [(_UISteadyTouchForceGestureRecognizer *)self _evaluateWithTouchForce:v12];
  self->_currentTouchForce = v12;
}

- (void)_evaluateWithTouchForce:(double)a3
{
  [(_UIVelocityIntegrator *)self->_velocityIntegrator addSample:0.0, a3];
  if (![(_UIVelocityIntegrator *)self->_velocityIntegrator hasVelocity])
  {
    goto LABEL_6;
  }

  [(_UIVelocityIntegrator *)self->_velocityIntegrator velocity];
  if (v4 != 0.0)
  {
    v5 = fabs(v4) * 100.0;
    v4 = roundf(v5) / 100.0;
  }

  if (v4 > 0.5)
  {
    steadyTimestamp = self->_steadyTimestamp;
    self->_steadyTimestamp = 0;
  }

  else
  {
LABEL_6:
    v7 = [MEMORY[0x1E695DF00] date];
    obj = v7;
    if (self->_steadyTimestamp)
    {
      [(NSDate *)v7 timeIntervalSinceDate:?];
      v9 = v8;
      [(_UISteadyTouchForceGestureRecognizer *)self minimumSteadyTouchForceDuration];
      if (v9 >= v10)
      {
        [(_UISteadyTouchForceGestureRecognizer *)self recognize];
      }
    }

    else
    {
      objc_storeStrong(&self->_steadyTimestamp, v7);
    }

    steadyTimestamp = obj;
  }
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

@end