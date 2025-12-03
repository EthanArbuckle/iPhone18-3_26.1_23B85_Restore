@interface _UIFluidSliderFeedbackGenerator
- (BOOL)playFeedback:(int64_t)feedback forValue:(double)value atLocation:(CGPoint)location;
- (_UIFluidSliderFeedbackGenerator)initWithView:(id)view;
@end

@implementation _UIFluidSliderFeedbackGenerator

- (_UIFluidSliderFeedbackGenerator)initWithView:(id)view
{
  viewCopy = view;
  v5 = +[_UIFluidSliderFeedbackConfiguration defaultConfiguration];
  v8.receiver = self;
  v8.super_class = _UIFluidSliderFeedbackGenerator;
  v6 = [(UIFeedbackGenerator *)&v8 initWithConfiguration:v5 view:viewCopy];

  return v6;
}

- (BOOL)playFeedback:(int64_t)feedback forValue:(double)value atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  result = 1;
  if (feedback > 1)
  {
    if (feedback != 3)
    {
      if (feedback != 2)
      {
        return result;
      }

      if (!self)
      {
        return 0;
      }

      _sliderConfig = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
      selectionFeedback = [_sliderConfig selectionFeedback];
      [(UIFeedbackGenerator *)self _playFeedback:selectionFeedback withMinimumIntervalPassed:&_playSelectionFeedbackAtLocation____lastTime since:1 prefersRegularPace:0.04 atLocation:x, y];

      goto LABEL_15;
    }

    _sliderConfig2 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
    maxEdgeFeedback = [_sliderConfig2 maxEdgeFeedback];
    goto LABEL_12;
  }

  if (!feedback)
  {
    _sliderConfig2 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
    maxEdgeFeedback = [_sliderConfig2 minEdgeFeedback];
LABEL_12:
    _sliderConfig = maxEdgeFeedback;
    goto LABEL_13;
  }

  if (feedback != 1)
  {
    return result;
  }

  if (![(_UIFluidSliderFeedbackGenerator *)self _canPlayDetentOnCurrentDevice])
  {
    return 1;
  }

  _sliderConfig3 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
  _sliderConfig = [_sliderConfig3 detentFeedback];

  v12 = value * 0.5 + (1.0 - value) * 0.15;
  _sliderConfig2 = [_sliderConfig hapticParameters];
  *&v14 = v12;
  [_sliderConfig2 setVolume:v14];
LABEL_13:

  if (_sliderConfig)
  {
    [(UIFeedbackGenerator *)self _playFeedback:_sliderConfig atLocation:x, y];
LABEL_15:
  }

  return 1;
}

@end