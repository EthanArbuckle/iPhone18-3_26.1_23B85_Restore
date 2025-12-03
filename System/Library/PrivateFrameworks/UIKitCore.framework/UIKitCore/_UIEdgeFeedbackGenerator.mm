@interface _UIEdgeFeedbackGenerator
- (BOOL)_valueIsOvershot:(double)overshot;
- (_UIEdgeFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space;
- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view;
- (double)_effectiveDistance;
- (float)_percentBeyondDistance;
- (void)_animationEnded;
- (void)_animationStarted;
- (void)_animationStartedUsingTimeout:(BOOL)timeout;
- (void)_deactivate;
- (void)_positionUpdated:(double)updated withVelocity:(double)velocity atLocation:(CGPoint)location;
- (void)_setCloseToEdge:(BOOL)edge;
- (void)_setState:(int64_t)state;
- (void)_stopAnimatingWithTimeout:(double)timeout;
- (void)_updateCloseToEdge;
- (void)positionUpdated:(double)updated atLocation:(CGPoint)location;
- (void)userInteractionCancelledAtLocation:(CGPoint)location;
- (void)userInteractionEndedAtLocation:(CGPoint)location;
- (void)userInteractionStartedAtLocation:(CGPoint)location;
@end

@implementation _UIEdgeFeedbackGenerator

- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space
{
  v6 = _viewFromCoordinateSpace(space);
  v7 = [(_UIEdgeFeedbackGenerator *)self initWithStyle:style view:v6];

  return v7;
}

- (_UIEdgeFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view
{
  viewCopy = view;
  v7 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }

    if (style == 3)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }
  }

  else
  {
    if (!style)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
      goto LABEL_10;
    }

    if (style == 1)
    {
      v8 = [objc_msgSend(objc_opt_class() "_configurationClass")];
LABEL_10:
      v7 = v8;
    }
  }

  v11.receiver = self;
  v11.super_class = _UIEdgeFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v11 initWithConfiguration:v7 view:viewCopy];

  return v9;
}

- (_UIEdgeFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  v8.receiver = self;
  v8.super_class = _UIEdgeFeedbackGenerator;
  v4 = [(UIFeedbackGenerator *)&v8 initWithConfiguration:configuration view:view];
  v5 = v4;
  if (v4)
  {
    _edgeConfiguration = [(_UIEdgeFeedbackGenerator *)v4 _edgeConfiguration];
    -[_UIEdgeFeedbackGenerator setAxis:](v5, "setAxis:", [_edgeConfiguration _defaultAxis]);
  }

  return v5;
}

- (void)_stopAnimatingWithTimeout:(double)timeout
{
  [(_UIEdgeFeedbackGenerator *)self _cancelStopAnimatingTimeout];

  [(_UIEdgeFeedbackGenerator *)self performSelector:sel__animationEnded withObject:0 afterDelay:timeout];
}

- (void)userInteractionStartedAtLocation:(CGPoint)location
{
  if ([(UIFeedbackGenerator *)self _isEnabled:location.x])
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

- (void)userInteractionEndedAtLocation:(CGPoint)location
{
  if ([(UIFeedbackGenerator *)self _isEnabled:location.x])
  {
    [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
    if ([(_UIEdgeFeedbackGenerator *)self _state]== 1)
    {

      [(_UIEdgeFeedbackGenerator *)self _animationStartedUsingTimeout:1];
    }
  }
}

- (void)userInteractionCancelledAtLocation:(CGPoint)location
{
  if ([(UIFeedbackGenerator *)self _isEnabled:location.x])
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

- (void)_animationStartedUsingTimeout:(BOOL)timeout
{
  if (timeout)
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
    selfCopy3 = self;
    v4 = 0;
    goto LABEL_20;
  }

  value = self->_value;
  v8 = value >= v6 - value ? v6 - value : self->_value;
  _edgeConfiguration = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
  [_edgeConfiguration minDistanceFromEdge];
  v11 = v10;

  if (v8 < v11)
  {
LABEL_2:
    selfCopy3 = self;
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

    selfCopy3 = self;
    v4 = v16;
  }

LABEL_20:

  [(_UIEdgeFeedbackGenerator *)selfCopy3 _setCloseToEdge:v4];
}

- (void)_setCloseToEdge:(BOOL)edge
{
  if (self->_closeToEdge != edge)
  {
    self->_closeToEdge = edge;
    if (edge)
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
      view = [(UIFeedbackGenerator *)self view];
      [view bounds];
      Width = CGRectGetWidth(v8);
      goto LABEL_6;
    }

    distance = 0.0;
    if (axis == 2)
    {
      view = [(UIFeedbackGenerator *)self view];
      [view bounds];
      Width = CGRectGetHeight(v7);
LABEL_6:
      distance = Width;
    }
  }

  return distance;
}

- (void)_setState:(int64_t)state
{
  state = self->_state;
  if (state != state)
  {
    if (state == 1)
    {
      _playingContinuousFeedback = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
      [_playingContinuousFeedback stop];

      [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:0];
      _edgeConfiguration = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      userInteractingReleaseFeedback = [_edgeConfiguration userInteractingReleaseFeedback];

      if (self->_value != 2.22507386e-308 && [(_UIEdgeFeedbackGenerator *)self _isOvershot]&& !self->_playedOvershotThresholdFeedback && userInteractingReleaseFeedback)
      {
        _edgeConfiguration2 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        userInteractingReleaseFeedbackUpdateBlock = [_edgeConfiguration2 userInteractingReleaseFeedbackUpdateBlock];

        if (userInteractingReleaseFeedbackUpdateBlock)
        {
          v11 = [userInteractingReleaseFeedback copy];

          _edgeConfiguration3 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          userInteractingReleaseFeedbackUpdateBlock2 = [_edgeConfiguration3 userInteractingReleaseFeedbackUpdateBlock];
          [(_UIEdgeFeedbackGenerator *)self _percentBeyondDistance];
          userInteractingReleaseFeedbackUpdateBlock2[2](userInteractingReleaseFeedbackUpdateBlock2, v11, v14);

          userInteractingReleaseFeedback = v11;
        }

        [(UIFeedbackGenerator *)self _playFeedback:userInteractingReleaseFeedback atLocation:1.79769313e308, 1.79769313e308];
      }
    }

    self->_state = state;
    if (!state)
    {
      self->_playedOvershotThresholdFeedback = 0;
    }
  }
}

- (BOOL)_valueIsOvershot:(double)overshot
{
  if (self->_extentBeyondDistance <= 0.0)
  {
    if (fabs(overshot) > 2.22044605e-16)
    {
      [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
      return vabdd_f64(overshot, v6) <= 2.22044605e-16;
    }
  }

  else if (overshot >= 0.0)
  {
    [(_UIEdgeFeedbackGenerator *)self _effectiveDistance];
    return v4 < overshot;
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

- (void)positionUpdated:(double)updated atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    if (self->_state)
    {
      [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
      if (self->_value != updated)
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
            v14 = (updated - value) / (v10 - lastValueUpdateTime);
          }

          else
          {
            v14 = (value - self->_previousValue) / (lastValueUpdateTime - previousValueUpdateTime);
          }

          [(_UIEdgeFeedbackGenerator *)self _setPreviousValueUpdateTime:?];
        }

        [(_UIEdgeFeedbackGenerator *)self _setLastValueUpdateTime:v10];

        [(_UIEdgeFeedbackGenerator *)self _positionUpdated:updated withVelocity:v14 atLocation:x, y];
      }
    }
  }
}

- (void)_positionUpdated:(double)updated withVelocity:(double)velocity atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (![(UIFeedbackGenerator *)self _isEnabled]|| self->_value == updated || !self->_state)
  {
    return;
  }

  _isOvershot = [(_UIEdgeFeedbackGenerator *)self _isOvershot];
  previousValue = self->_previousValue;
  value = self->_value;
  if (previousValue == 2.22507386e-308 || value == 2.22507386e-308)
  {
    v14 = 0;
  }

  else
  {
    v14 = (value > previousValue) ^ (value < updated);
  }

  [(_UIEdgeFeedbackGenerator *)self _setPreviousValue:?];
  [(_UIEdgeFeedbackGenerator *)self _setValue:updated];
  [(_UIEdgeFeedbackGenerator *)self _setVelocity:velocity];
  [(_UIEdgeFeedbackGenerator *)self _updateCloseToEdge];
  _isOvershot2 = [(_UIEdgeFeedbackGenerator *)self _isOvershot];
  v16 = _isOvershot2;
  if (self->_previousValue == 2.22507386e-308)
  {
    v17 = _isOvershot2;
  }

  else
  {
    v17 = _isOvershot;
  }

  state = self->_state;
  switch(state)
  {
    case 3:
      [(_UIEdgeFeedbackGenerator *)self _stopAnimatingWithTimeout:0.2];
LABEL_24:
      _edgeConfiguration = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      animatingThresholdFeedback = [_edgeConfiguration animatingThresholdFeedback];

      if (!(v17 & 1 | !v16) && !self->_playedOvershotThresholdFeedback && animatingThresholdFeedback)
      {
        _edgeConfiguration2 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        animatingThresholdFeedbackUpdateBlock = [_edgeConfiguration2 animatingThresholdFeedbackUpdateBlock];

        if (animatingThresholdFeedbackUpdateBlock)
        {
          v33 = [animatingThresholdFeedback copy];

          _edgeConfiguration3 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          animatingThresholdFeedbackUpdateBlock2 = [_edgeConfiguration3 animatingThresholdFeedbackUpdateBlock];
          animatingThresholdFeedbackUpdateBlock2[2](animatingThresholdFeedbackUpdateBlock2, v33, velocity);

          animatingThresholdFeedback = v33;
        }

        [(UIFeedbackGenerator *)self _playFeedback:animatingThresholdFeedback atLocation:x, y];
        self->_playedOvershotThresholdFeedback = 1;
      }

      if ((self->_lastState & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        _edgeConfiguration4 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        animatingMaximumExtentFeedback = [_edgeConfiguration4 animatingMaximumExtentFeedback];

        if (animatingMaximumExtentFeedback)
        {
          v38 = v14;
        }

        else
        {
          v38 = 0;
        }

        if (v38 == 1)
        {
          _edgeConfiguration5 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          animatingMaximumExtentFeedbackUpdateBlock = [_edgeConfiguration5 animatingMaximumExtentFeedbackUpdateBlock];

          if (animatingMaximumExtentFeedbackUpdateBlock)
          {
            v41 = [animatingMaximumExtentFeedback copy];

            _edgeConfiguration6 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
            animatingMaximumExtentFeedbackUpdateBlock2 = [_edgeConfiguration6 animatingMaximumExtentFeedbackUpdateBlock];
            animatingMaximumExtentFeedbackUpdateBlock2[2](animatingMaximumExtentFeedbackUpdateBlock2, v41, velocity);

            animatingMaximumExtentFeedback = v41;
          }

          [(UIFeedbackGenerator *)self _playFeedback:animatingMaximumExtentFeedback atLocation:x, y];
        }

        animatingThresholdFeedback = animatingMaximumExtentFeedback;
      }

      goto LABEL_49;
    case 2:
      goto LABEL_24;
    case 1:
      if (_isOvershot2 && (-[_UIEdgeFeedbackGenerator _edgeConfiguration](self, "_edgeConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), [v19 userInteractingBeyondEdgeFeedbackUpdateBlock], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
      {
        _playingContinuousFeedback = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];

        if (!_playingContinuousFeedback)
        {
          _edgeConfiguration7 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          userInteractingBeyondEdgeFeedback = [_edgeConfiguration7 userInteractingBeyondEdgeFeedback];
          [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:userInteractingBeyondEdgeFeedback];
        }

        _edgeConfiguration8 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
        userInteractingBeyondEdgeFeedbackUpdateBlock = [_edgeConfiguration8 userInteractingBeyondEdgeFeedbackUpdateBlock];
        _playingContinuousFeedback2 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
        [(_UIEdgeFeedbackGenerator *)self _percentBeyondDistance];
        (userInteractingBeyondEdgeFeedbackUpdateBlock)[2](userInteractingBeyondEdgeFeedbackUpdateBlock, _playingContinuousFeedback2, v27);

        if (!_playingContinuousFeedback)
        {
          _playingContinuousFeedback3 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
          [(UIFeedbackGenerator *)self _playFeedback:_playingContinuousFeedback3 atLocation:x, y];
        }
      }

      else
      {
        _playingContinuousFeedback4 = [(_UIEdgeFeedbackGenerator *)self _playingContinuousFeedback];
        [_playingContinuousFeedback4 stop];

        [(_UIEdgeFeedbackGenerator *)self _setPlayingContinuousFeedback:0];
      }

      _edgeConfiguration9 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
      animatingThresholdFeedback = [_edgeConfiguration9 userInteractingThresholdFeedback];

      if (animatingThresholdFeedback)
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
          _edgeConfiguration10 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
          userInteractingThresholdFeedbackUpdateBlock = [_edgeConfiguration10 userInteractingThresholdFeedbackUpdateBlock];

          if (userInteractingThresholdFeedbackUpdateBlock)
          {
            v48 = [animatingThresholdFeedback copy];

            _edgeConfiguration11 = [(_UIEdgeFeedbackGenerator *)self _edgeConfiguration];
            userInteractingThresholdFeedbackUpdateBlock2 = [_edgeConfiguration11 userInteractingThresholdFeedbackUpdateBlock];
            userInteractingThresholdFeedbackUpdateBlock2[2](userInteractingThresholdFeedbackUpdateBlock2, v48, velocity);

            animatingThresholdFeedback = v48;
          }

          [(UIFeedbackGenerator *)self _playFeedback:animatingThresholdFeedback atLocation:x, y];
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