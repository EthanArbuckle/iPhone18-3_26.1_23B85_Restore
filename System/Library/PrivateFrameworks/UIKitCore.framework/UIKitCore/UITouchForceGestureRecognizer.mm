@interface UITouchForceGestureRecognizer
- (BOOL)_hasExceededAllowableMovement;
- (BOOL)_hasExceededMaximumNumberOfTouches;
- (BOOL)_shouldReceiveTouch:(id)touch forEvent:(id)event recognizerView:(id)view;
- (BOOL)_validateHysteresis;
- (UITouchForceGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_evaluateAutomaticTouchForceForTimeInterval:(double)interval actualTouchForce:(double)force;
- (double)touchDuration;
- (void)_beginForContinuousEvaluationForTouches:(id)touches;
- (void)_endIfNeeded:(BOOL)needed;
- (void)_evaluateTouches:(id)touches withEvent:(id)event;
- (void)_evaluateWithTouchForce:(double)force centroidAtLocation:(CGPoint)location;
- (void)_updateForContinuousEvaluation:(id)evaluation;
- (void)_updateTouchForce:(double)force;
- (void)reset;
- (void)setView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UITouchForceGestureRecognizer

- (UITouchForceGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v10.receiver = self;
  v10.super_class = UITouchForceGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v10 initWithTarget:target action:action];
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

- (void)setView:(id)view
{
  if (!view)
  {
    [(CADisplayLink *)self->_continuousEvaluationDisplayLink invalidate];
    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = 0;
  }

  v6.receiver = self;
  v6.super_class = UITouchForceGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setView:view];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  currentTouches = self->_currentTouches;
  if (currentTouches)
  {
    [(NSMutableSet *)currentTouches unionSet:began];
  }

  else
  {
    v8 = [began mutableCopy];
    v9 = self->_currentTouches;
    self->_currentTouches = v8;

    anyObject = [began anyObject];
    [anyObject timestamp];
    self->_touchesBeganTimestamp = v11;

    self->_currentCentroidOfTouches.x = _CentroidOfTouches(began, 0);
    self->_currentCentroidOfTouches.y = v12;
    self->_initialCentroidOfTouches = self->_currentCentroidOfTouches;
    [(UITouchForceGestureRecognizer *)self _beginForContinuousEvaluationForTouches:began];
  }

  [(UITouchForceGestureRecognizer *)self _evaluateTouches:began withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  movedCopy = moved;
  v7 = [movedCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(movedCopy);
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

                [(UIGestureRecognizer *)self ignoreTouch:*(*(&v16 + 1) + 8 * v15++) forEvent:event, v16];
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
      v8 = [movedCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  [(UITouchForceGestureRecognizer *)self _evaluateTouches:movedCopy withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  [(NSMutableSet *)self->_currentTouches minusSet:ended, event];
  if (![(NSMutableSet *)self->_currentTouches count])
  {
    _validateHysteresis = [(UITouchForceGestureRecognizer *)self _validateHysteresis];

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:_validateHysteresis];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(NSMutableSet *)self->_currentTouches minusSet:cancelled, event];
  if (![(NSMutableSet *)self->_currentTouches count])
  {

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:1];
  }
}

- (BOOL)_shouldReceiveTouch:(id)touch forEvent:(id)event recognizerView:(id)view
{
  if (([(UITouch *)touch _mightBeConsideredForForceSystemGesture]& 1) != 0)
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
    view = [touch view];
    traitCollection = [view traitCollection];
    forceTouchCapability = [traitCollection forceTouchCapability];

    if (forceTouchCapability != 2)
    {
      return 0;
    }
  }

  v15.receiver = self;
  v15.super_class = UITouchForceGestureRecognizer;
  return [(UIGestureRecognizer *)&v15 _shouldReceiveTouch:touch forEvent:event recognizerView:view];
}

- (void)_evaluateTouches:(id)touches withEvent:(id)event
{
  v23 = *MEMORY[0x1E69E9840];
  if ([touches count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    touchesCopy = touches;
    v8 = [touchesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(touchesCopy);
          }

          [*(*(&v18 + 1) + 8 * i) force];
          v11 = v11 + v13;
        }

        v9 = [touchesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v14 = v11 / [touchesCopy count];
  }

  else
  {
    v14 = 0.0;
  }

  self->_currentCentroidOfTouches.x = _CentroidOfTouches(touches, 0);
  self->_currentCentroidOfTouches.y = v15;
  self->_currentTouchForce = v14;
  allTouches = [event allTouches];
  self->_eventTouchCount = [allTouches count];

  anyObject = [touches anyObject];
  [anyObject timestamp];
  [UITouchForceGestureRecognizer _evaluateAutomaticTouchForceForTimeInterval:"_evaluateAutomaticTouchForceForTimeInterval:actualTouchForce:" actualTouchForce:?];
  [UITouchForceGestureRecognizer _evaluateWithTouchForce:"_evaluateWithTouchForce:centroidAtLocation:" centroidAtLocation:?];
}

- (void)_evaluateWithTouchForce:(double)force centroidAtLocation:(CGPoint)location
{
  if ([(UITouchForceGestureRecognizer *)self _validateHysteresis:force])
  {
    [(UITouchForceGestureRecognizer *)self _updateTouchForce:force];

    [(UITouchForceGestureRecognizer *)self _endIfNeeded:1];
  }

  else
  {
    state = [(UIGestureRecognizer *)self state];
    if ((state - 3) < 3)
    {
      forceCopy = 0.0;
      selfCopy4 = self;
    }

    else
    {
      if ((state - 1) >= 2)
      {
        if (state || self->_minimumRequiredTouchForce > force)
        {
          return;
        }

        selfCopy3 = self;
        v8 = 1;
      }

      else
      {
        selfCopy3 = self;
        v8 = 2;
      }

      [(UIGestureRecognizer *)selfCopy3 setState:v8];
      selfCopy4 = self;
      forceCopy = force;
    }

    [(UITouchForceGestureRecognizer *)selfCopy4 _updateTouchForce:forceCopy];
  }
}

- (void)_endIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  state = [(UIGestureRecognizer *)self state];
  if ((state - 3) < 3)
  {
LABEL_7:
    [(UITouchForceGestureRecognizer *)self _updateTouchForce:0.0];
    goto LABEL_8;
  }

  if ((state - 1) < 2)
  {
    if (neededCopy)
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

  if (state == UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:5];
  }

LABEL_8:

  [(UITouchForceGestureRecognizer *)self _endContinuousEvaluation];
}

- (void)_updateTouchForce:(double)force
{
  [(UITouchForceGestureRecognizer *)self setTouchForce:?];
  v5 = 0.0;
  [(_UIVelocityIntegrator *)self->_velocityIntegrator addSample:0.0, force];
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
  maximumNumberOfTouches = [(UITouchForceGestureRecognizer *)self maximumNumberOfTouches];
  if (maximumNumberOfTouches)
  {
    LOBYTE(maximumNumberOfTouches) = self->_eventTouchCount > maximumNumberOfTouches;
  }

  return maximumNumberOfTouches;
}

- (BOOL)_validateHysteresis
{
  if ([(UITouchForceGestureRecognizer *)self _hasExceededAllowableMovement])
  {
    return 1;
  }

  return [(UITouchForceGestureRecognizer *)self _hasExceededMaximumNumberOfTouches];
}

- (void)_beginForContinuousEvaluationForTouches:(id)touches
{
  continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  if (!continuousEvaluationDisplayLink)
  {
    anyObject = [touches anyObject];
    view = [anyObject view];
    window = [view window];
    screen = [window screen];

    if (!screen)
    {
      screen = [objc_opt_self() mainScreen];
    }

    v9 = [screen displayLinkWithTarget:self selector:sel__updateForContinuousEvaluation_];
    v10 = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = v9;

    v11 = self->_continuousEvaluationDisplayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  }

  [(CADisplayLink *)continuousEvaluationDisplayLink setPaused:0];
}

- (void)_updateForContinuousEvaluation:(id)evaluation
{
  [(UITouchForceGestureRecognizer *)self _evaluateAutomaticTouchForceForTimeInterval:CACurrentMediaTime() actualTouchForce:self->_currentTouchForce];

  [UITouchForceGestureRecognizer _evaluateWithTouchForce:"_evaluateWithTouchForce:centroidAtLocation:" centroidAtLocation:?];
}

- (double)_evaluateAutomaticTouchForceForTimeInterval:(double)interval actualTouchForce:(double)force
{
  automaticTouchForce = self->_automaticTouchForce;
  if (automaticTouchForce > 0.0)
  {
    v5 = automaticTouchForce * ((interval - self->_touchesBeganTimestamp) / self->_automaticTouchForceDuration);
    if (v5 >= force)
    {
      return v5;
    }
  }

  return force;
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