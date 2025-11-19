@interface _UIEdgeFeedbackGenerator
- (BOOL)_valueIsOvershot:(double)a3;
- (_UIEdgeFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4;
- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4;
- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4;
- (double)_effectiveDistance;
- (float)_percentBeyondDistance;
- (void)_animationEnded;
- (void)_animationStarted;
- (void)_animationStartedUsingTimeout:(BOOL)a3;
- (void)_deactivate;
- (void)_positionUpdated:(double)a3 withVelocity:(double)a4 atLocation:(CGPoint)a5;
- (void)_setCloseToEdge:(BOOL)a3;
- (void)_setState:(int64_t)a3;
- (void)_stopAnimatingWithTimeout:(double)a3;
- (void)_updateCloseToEdge;
- (void)positionUpdated:(double)a3 atLocation:(CGPoint)a4;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
- (void)userInteractionStartedAtLocation:(CGPoint)a3;
@end

@implementation _UIEdgeFeedbackGenerator

- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4
{
  v6 = _viewFromCoordinateSpace(a4);
  v7 = [(_UIEdgeFeedbackGenerator *)self initWithStyle:a3 view:v6];

  return v7;
}

- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }

    if (a3 == 3)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a3)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }

    if (a3 == 1)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
LABEL_10:
      v7 = v8;
    }
  }

  v11.receiver = self;
  v11.super_class = _UIEdgeFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v11 initWithConfiguration:v7 view:v6];

  return v9;
}

- (_UIEdgeFeedbackGenerator)initWithConfiguration:(id)a3 view:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIEdgeFeedbackGenerator;
  v4 = [(UIFeedbackGenerator *)&v8 initWithConfiguration:a3 view:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(_UIEdgeFeedbackGenerator *)v4 _edgeConfiguration];
    -[_UIEdgeFeedbackGenerator setAxis:](v5, "setAxis:", [v6 _defaultAxis]);
  }

  return v5;
}

- (void)_stopAnimatingWithTimeout:(double)a3
{
  [(_UIEdgeFeedbackGenerator *)self _cancelStopAnimatingTimeout];

  [(_UIEdgeFeedbackGenerator *)self performSelector:sel__animationEnded withObject:0 afterDelay:a3];
}

- (void)userInteractionStartedAtLocation:(CGPoint)a3
{
  if ([(UIFeedbackGenerator *)self _isEnabled:a3.x])
  {
    if ([(_UIEdgeFeedbackGenerator *)self _state]== 2 || [(_UIEdgeFeedbackGenerator *)self _state]== 3)
    {
      [(_UIEdgeFeedbackGenerator *)self _cancelStopAnimatingTimeout];
      [(_UIEdgeFeedbackGenerator *)self _animationEnded];
    }

    [(_UIEdgeFeedbackGenerator *)self _setLastState:0];
    [(_UIEdgeFeedbackGenerator *)self _setValue:2.22507386e-308];
    [(_UIEdgeFeedbackGenerator *)self _setPreviousValue:2.22507386e-308];
    [(_UIEdgeFeedbackGenerator *)self _setLastValueUpdateTime:2.22507386e-308];
    [(_UIEdgeFeedbackGenerator *)self _setPreviousValueUpdateTime:2.22507386e-308];

    [(_UIEdgeFeedbackGenerator *)self _setState:1];
  }
}

- (void)userInteractionEndedAtLocation:(CGPoint)a3
{
  if ([(UIFeedbackGenerator *)self _isEnabled:a3.x])
  {
    [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
    if ([(_UIEdgeFeedbackGenerator *)self _state]== 1)
    {

      [(_UIEdgeFeedbackGenerator *)self _animationStartedUsingTimeout:1];
    }
  }
}

- (void)userInteractionCancelledAtLocation:(CGPoint)a3
{
  if ([(UIFeedbackGenerator *)self _isEnabled:a3.x])
  {
    [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
    if ([(_UIEdgeFeedbackGenerator *)self _state]== 1)
    {

      [(_UIEdgeFeedbackGenerator *)self _deactivate];
    }
  }
}

- (void)_deactivate
{
  [(_UIEdgeFeedbackGenerator *)self _cancelStopAnimatingTimeout];
  [(_UIEdgeFeedbackGenerator *)self _setState:0];

  [(_UIEdgeFeedbackGenerator *)self _setCloseToEdge:0];
}

- (void)_animationStarted
{
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {

    [(_UIEdgeFeedbackGenerator *)self _animationStartedUsingTimeout:0];
  }
}

- (void)_animationStartedUsingTimeout:(BOOL)a3
{
  if (a3)
  {
    [(_UIEdgeFeedbackGenerator *)self _setState:3];

    [(_UIEdgeFeedbackGenerator *)self _stopAnimatingWithTimeout:0.2];
  }

  else
  {

    [(_UIEdgeFeedbackGenerator *)self _setState:2];
  }
}

- (void)_animationEnded
{
  if ([(UIFeedbackGenerator *)self _isEnabled]&& ([(_UIEdgeFeedbackGenerator *)self _state]== 2 || [(_UIEdgeFeedbackGenerator *)self _state]== 3))
  {

    [(_UIEdgeFeedbackGenerator *)self _deactivate];
  }
}

- (void)_updateCloseToEdge
{
  if ([(_UIEdgeFeedbackGenerator *)self _isOvershot])
  {
    goto LABEL_2;
  }

  [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
  v6 = v5;
  if (v5 < 1.0)
  {
    v3 = self;
    v4 = 0;
    goto LABEL_20;
  }

  value = self->_value;
  v8 = value >= v6 - value ? v6 - value : self->_value;
  v9 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
  [v9 minDistanceFromEdge];
  v11 = v10;

  if (v8 < v11)
  {
LABEL_2:
    v3 = self;
    v4 = 1;
  }

  else
  {
    if (self->_previousValue == 2.22507386e-308)
    {
      return;
    }

    v12 = self->_value + self->_velocity * 0.3;
    extentBeyondDistance = self->_extentBeyondDistance;
    v14 = v6 + extentBeyondDistance;
    v15 = -extentBeyondDistance;
    if (v12 <= v15)
    {
      v12 = v15;
    }

    if (v14 <= v12)
    {
      v12 = v14;
    }

    v16 = [(_UIEdgeFeedbackGenerator *)self _valueIsOvershot:v12];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v18 = v17;
    if (!v16 && self->_state == 1 && [(_UIEdgeFeedbackGenerator *)self _isCloseToEdge])
    {
      v16 = v18 - self->_closeToEdgeUpdateTime < 1.0;
    }

    else
    {
      self->_closeToEdgeUpdateTime = v18;
    }

    v3 = self;
    v4 = v16;
  }

LABEL_20:

  [(_UIEdgeFeedbackGenerator *)v3 _setCloseToEdge:v4];
}

- (void)_setCloseToEdge:(BOOL)a3
{
  if (self->_closeToEdge != a3)
  {
    self->_closeToEdge = a3;
    if (a3)
    {
      [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];
    }

    else
    {
      [(UIFeedbackGenerator *)self deactivate];
    }
  }
}

- (double)_effectiveDistance
{
  distance = self->_distance;
  if (distance <= 0.0)
  {
    axis = self->_axis;
    if (axis == 1)
    {
      v4 = [(UIFeedbackGenerator *)self view];
      [v4 bounds];
      Width = CGRectGetWidth(v8);
      goto LABEL_6;
    }

    distance = 0.0;
    if (axis == 2)
    {
      v4 = [(UIFeedbackGenerator *)self view];
      [v4 bounds];
      Width = CGRectGetHeight(v7);
LABEL_6:
      distance = Width;
    }
  }

  return distance;
}

- (void)_setState:(int64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    if (state == 1)
    {
      v6 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
      [v6 stop];

      [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:0];
      v7 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      v8 = [v7 userInteractingReleaseFeedback];

      if (self->_value != 2.22507386e-308 && [(_UIEdgeFeedbackGenerator *)self _isOvershot]&& !self->_playedOvershotThresholdFeedback && v8)
      {
        v9 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        v10 = [v9 userInteractingReleaseFeedbackUpdateBlock];

        if (v10)
        {
          v11 = [v8 copy];

          v12 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          v13 = [v12 userInteractingReleaseFeedbackUpdateBlock];
          [(_UIEdgeFeedbackGenerator *)self _percentBeyondDistance];
          v13[2](v13, v11, v14);

          v8 = v11;
        }

        [(UIFeedbackGenerator *)self _playFeedback:v8 atLocation:1.79769313e308, 1.79769313e308];
      }
    }

    self->_state = a3;
    if (!a3)
    {
      self->_playedOvershotThresholdFeedback = 0;
    }
  }
}

- (BOOL)_valueIsOvershot:(double)a3
{
  if (self->_extentBeyondDistance <= 0.0)
  {
    if (fabs(a3) > 2.22044605e-16)
    {
      [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
      return vabdd_f64(a3, v6) <= 2.22044605e-16;
    }
  }

  else if (a3 >= 0.0)
  {
    [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
    return v4 < a3;
  }

  return 1;
}

- (float)_percentBeyondDistance
{
  value = self->_value;
  if (value >= 0.0)
  {
    [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
    v4 = value - v5;
  }

  else
  {
    v4 = -value;
  }

  return v4 / self->_extentBeyondDistance;
}

- (void)positionUpdated:(double)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    if (self->_state)
    {
      [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
      if (self->_value != a3)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v10 = v9;
        lastValueUpdateTime = self->_lastValueUpdateTime;
        if (lastValueUpdateTime == 2.22507386e-308)
        {
          v14 = 0.0;
        }

        else
        {
          previousValueUpdateTime = self->_previousValueUpdateTime;
          value = self->_value;
          if (previousValueUpdateTime == 2.22507386e-308)
          {
            v14 = (a3 - value) / (v10 - lastValueUpdateTime);
          }

          else
          {
            v14 = (value - self->_previousValue) / (lastValueUpdateTime - previousValueUpdateTime);
          }

          [(_UIEdgeFeedbackGenerator *)self _setPreviousValueUpdateTime:?];
        }

        [(_UIEdgeFeedbackGenerator *)self _setLastValueUpdateTime:v10];

        [(_UIEdgeFeedbackGenerator *)self _positionUpdated:a3 withVelocity:v14 atLocation:x, y];
      }
    }
  }
}

- (void)_positionUpdated:(double)a3 withVelocity:(double)a4 atLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  if (![(UIFeedbackGenerator *)self _isEnabled]|| self->_value == a3 || !self->_state)
  {
    return;
  }

  v10 = [(_UIEdgeFeedbackGenerator *)self _isOvershot];
  previousValue = self->_previousValue;
  value = self->_value;
  if (previousValue == 2.22507386e-308 || value == 2.22507386e-308)
  {
    v14 = 0;
  }

  else
  {
    v14 = (value > previousValue) ^ (value < a3);
  }

  [(_UIEdgeFeedbackGenerator *)self _setPreviousValue:?];
  [(_UIEdgeFeedbackGenerator *)self _setValue:a3];
  [(_UIEdgeFeedbackGenerator *)self _setVelocity:a4];
  [(_UIEdgeFeedbackGenerator *)self _updateCloseToEdge];
  v15 = [(_UIEdgeFeedbackGenerator *)self _isOvershot];
  v16 = v15;
  if (self->_previousValue == 2.22507386e-308)
  {
    v17 = v15;
  }

  else
  {
    v17 = v10;
  }

  state = self->_state;
  switch(state)
  {
    case 3:
      [(_UIEdgeFeedbackGenerator *)self _stopAnimatingWithTimeout:0.2];
LABEL_24:
      v29 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      v30 = [v29 animatingThresholdFeedback];

      if (!(v17 & 1 | !v16) && !self->_playedOvershotThresholdFeedback && v30)
      {
        v31 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        v32 = [v31 animatingThresholdFeedbackUpdateBlock];

        if (v32)
        {
          v33 = [v30 copy];

          v34 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          v35 = [v34 animatingThresholdFeedbackUpdateBlock];
          v35[2](v35, v33, a4);

          v30 = v33;
        }

        [(UIFeedbackGenerator *)self _playFeedback:v30 atLocation:x, y];
        self->_playedOvershotThresholdFeedback = 1;
      }

      if ((self->_lastState & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v36 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        v37 = [v36 animatingMaximumExtentFeedback];

        if (v37)
        {
          v38 = v14;
        }

        else
        {
          v38 = 0;
        }

        if (v38 == 1)
        {
          v39 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          v40 = [v39 animatingMaximumExtentFeedbackUpdateBlock];

          if (v40)
          {
            v41 = [v37 copy];

            v42 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
            v43 = [v42 animatingMaximumExtentFeedbackUpdateBlock];
            v43[2](v43, v41, a4);

            v37 = v41;
          }

          [(UIFeedbackGenerator *)self _playFeedback:v37 atLocation:x, y];
        }

        v30 = v37;
      }

      goto LABEL_49;
    case 2:
      goto LABEL_24;
    case 1:
      if (v15 && (-[_UIEdgeFeedbackGenerator _edgeConfiguration](self, "_edgeConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), [v19 userInteractingBeyondEdgeFeedbackUpdateBlock], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        v21 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];

        if (!v21)
        {
          v22 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          v23 = [v22 userInteractingBeyondEdgeFeedback];
          [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:v23];
        }

        v24 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        v25 = [v24 userInteractingBeyondEdgeFeedbackUpdateBlock];
        v26 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
        [(_UIEdgeFeedbackGenerator *)self _percentBeyondDistance];
        (v25)[2](v25, v26, v27);

        if (!v21)
        {
          v28 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
          [(UIFeedbackGenerator *)self _playFeedback:v28 atLocation:x, y];
        }
      }

      else
      {
        v44 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
        [v44 stop];

        [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:0];
      }

      v45 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      v30 = [v45 userInteractingThresholdFeedback];

      if (v30)
      {
        if (v17 & 1 | !v16 || self->_playedOvershotThresholdFeedback)
        {
          if (!v16 && (v17 & 1) != 0 && self->_playedOvershotThresholdFeedback)
          {
            self->_playedOvershotThresholdFeedback = 0;
          }
        }

        else
        {
          v46 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          v47 = [v46 userInteractingThresholdFeedbackUpdateBlock];

          if (v47)
          {
            v48 = [v30 copy];

            v49 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
            v50 = [v49 userInteractingThresholdFeedbackUpdateBlock];
            v50[2](v50, v48, a4);

            v30 = v48;
          }

          [(UIFeedbackGenerator *)self _playFeedback:v30 atLocation:x, y];
          self->_playedOvershotThresholdFeedback = 1;
        }
      }

LABEL_49:

      state = self->_state;
      break;
  }

  [(_UIEdgeFeedbackGenerator *)self _setLastState:state];
}

@end