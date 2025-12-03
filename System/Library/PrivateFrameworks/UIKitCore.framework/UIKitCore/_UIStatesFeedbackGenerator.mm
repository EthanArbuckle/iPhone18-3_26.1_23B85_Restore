@interface _UIStatesFeedbackGenerator
- (_UIStatesFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view;
- (_UIStatesFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view;
- (id)_configurationFromState:(id)state toState:(id)toState;
- (void)_stopPlayingContinuousFeedback;
- (void)transitionToState:(id)state ended:(BOOL)ended atLocation:(CGPoint)location;
- (void)transitionToState:(id)state updated:(double)updated atLocation:(CGPoint)location;
@end

@implementation _UIStatesFeedbackGenerator

- (_UIStatesFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view
{
  viewCopy = view;
  if (style)
  {
    if (style != 1)
    {
      defaultConfiguration = 0;
      goto LABEL_7;
    }

    v7 = off_1E70EC338;
  }

  else
  {
    v7 = off_1E70EC330;
  }

  defaultConfiguration = [(__objc2_class *)*v7 defaultConfiguration];
LABEL_7:
  v11.receiver = self;
  v11.super_class = _UIStatesFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v11 initWithConfiguration:defaultConfiguration view:viewCopy];

  return v9;
}

- (_UIStatesFeedbackGenerator)initWithConfiguration:(id)configuration view:(id)view
{
  v9.receiver = self;
  v9.super_class = _UIStatesFeedbackGenerator;
  v4 = [(UIFeedbackGenerator *)&v9 initWithConfiguration:configuration view:view];
  v5 = v4;
  if (v4)
  {
    _statesConfiguration = [(_UIStatesFeedbackGenerator *)v4 _statesConfiguration];
    initialState = [_statesConfiguration initialState];
    [(_UIStatesFeedbackGenerator *)v5 setCurrentState:initialState];
  }

  return v5;
}

- (id)_configurationFromState:(id)state toState:(id)toState
{
  stateCopy = state;
  toStateCopy = toState;
  _statesConfiguration = [(_UIStatesFeedbackGenerator *)self _statesConfiguration];
  stateChangeConfigurations = [_statesConfiguration stateChangeConfigurations];

  v10 = [_UIStatesFeedbackGeneratorConfiguration keyFromState:stateCopy toState:toStateCopy];
  v11 = [stateChangeConfigurations objectForKeyedSubscript:v10];
  if (v11)
  {
    goto LABEL_2;
  }

  v13 = [_UIStatesFeedbackGeneratorConfiguration keyFromState:0 toState:toStateCopy];

  v14 = [stateChangeConfigurations objectForKeyedSubscript:v13];
  if (!v14)
  {
    v10 = [_UIStatesFeedbackGeneratorConfiguration keyFromState:stateCopy toState:0];

    v11 = [stateChangeConfigurations objectForKeyedSubscript:v10];
LABEL_2:
    v12 = v11;
    goto LABEL_5;
  }

  v12 = v14;
  v10 = v13;
LABEL_5:

  return v12;
}

- (void)transitionToState:(id)state updated:(double)updated atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  stateCopy = state;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    currentState = [(_UIStatesFeedbackGenerator *)self currentState];
    v11 = [(_UIStatesFeedbackGenerator *)self _configurationFromState:currentState toState:stateCopy];

    approachFeedback = [v11 approachFeedback];
    if (approachFeedback)
    {
      if (self->_approachActivated)
      {
        goto LABEL_4;
      }

      [v11 approachStart];
      if (v34 >= updated)
      {
        self->_approachActivated = 1;
        goto LABEL_18;
      }

      if (self->_approachActivated)
      {
LABEL_4:
        [v11 approachStart];
        if (v13 <= updated)
        {
          [v11 approachEnd];
          if (v14 >= updated)
          {
            playingContinuousFeedback = self->_playingContinuousFeedback;
            if (!playingContinuousFeedback)
            {
              v16 = [approachFeedback copy];
              v17 = self->_playingContinuousFeedback;
              self->_playingContinuousFeedback = v16;
            }

            [v11 approachEnd];
            v19 = v18;
            [v11 approachStart];
            v21 = v19 - v20;
            [v11 approachStart];
            v23 = (updated - v22) / v21;
            [v11 approachCurvature];
            if (v23 != 0.0)
            {
              v23 = pow(v24, (v23 + -1.0) * 10.0);
            }

            [v11 approachVolumeMax];
            v26 = v25;
            hapticParameters = [approachFeedback hapticParameters];
            [hapticParameters volume];
            v29 = v23 * v28;

            if (v26 >= v29)
            {
              v30 = v29;
            }

            else
            {
              v30 = v26;
            }

            v31 = v30;
            hapticParameters2 = [(_UIFeedbackContinuousPlayable *)self->_playingContinuousFeedback hapticParameters];
            *&v33 = v31;
            [hapticParameters2 setVolume:v33];

            if (!playingContinuousFeedback)
            {
              [(UIFeedbackGenerator *)self _playFeedback:self->_playingContinuousFeedback atLocation:x, y];
            }

            goto LABEL_18;
          }
        }
      }
    }

    [(_UIStatesFeedbackGenerator *)self _stopPlayingContinuousFeedback];
LABEL_18:
  }
}

- (void)transitionToState:(id)state ended:(BOOL)ended atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  endedCopy = ended;
  stateCopy = state;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(UIFeedbackGenerator *)self _isEnabled])
  {
    [(_UIStatesFeedbackGenerator *)self _stopPlayingContinuousFeedback];
    if (endedCopy)
    {
      currentState = [(_UIStatesFeedbackGenerator *)self currentState];
      v11 = [(_UIStatesFeedbackGenerator *)self _configurationFromState:currentState toState:stateCopy];

      thresholdFeedback = [v11 thresholdFeedback];
      [(UIFeedbackGenerator *)self _playFeedback:thresholdFeedback atLocation:x, y];

      [(_UIStatesFeedbackGenerator *)self setCurrentState:stateCopy];
    }
  }
}

- (void)_stopPlayingContinuousFeedback
{
  playingContinuousFeedback = self->_playingContinuousFeedback;
  if (playingContinuousFeedback)
  {
    [(_UIFeedbackContinuousPlayable *)playingContinuousFeedback stop];
    [(_UIStatesFeedbackGenerator *)self setPlayingContinuousFeedback:0];
    self->_approachActivated = 0;
  }
}

@end