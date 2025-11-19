@interface _UIFluidSliderFeedbackGenerator
- (BOOL)playFeedback:(int64_t)a3 forValue:(double)a4 atLocation:(CGPoint)a5;
- (_UIFluidSliderFeedbackGenerator)initWithView:(id)a3;
@end

@implementation _UIFluidSliderFeedbackGenerator

- (_UIFluidSliderFeedbackGenerator)initWithView:(id)a3
{
  v4 = a3;
  v5 = +[_UIFluidSliderFeedbackConfiguration defaultConfiguration];
  v8.receiver = self;
  v8.super_class = _UIFluidSliderFeedbackGenerator;
  v6 = [(UIFeedbackGenerator *)&v8 initWithConfiguration:v5 view:v4];

  return v6;
}

- (BOOL)playFeedback:(int64_t)a3 forValue:(double)a4 atLocation:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  result = 1;
  if (a3 > 1)
  {
    if (a3 != 3)
    {
      if (a3 != 2)
      {
        return result;
      }

      if (!self)
      {
        return 0;
      }

      v11 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
      v15 = [v11 selectionFeedback];
      [(UIFeedbackGenerator *)self _playFeedback:v15 withMinimumIntervalPassed:&_playSelectionFeedbackAtLocation____lastTime since:1 prefersRegularPace:0.04 atLocation:x, y];

      goto LABEL_15;
    }

    v13 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
    v16 = [v13 maxEdgeFeedback];
    goto LABEL_12;
  }

  if (!a3)
  {
    v13 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
    v16 = [v13 minEdgeFeedback];
LABEL_12:
    v11 = v16;
    goto LABEL_13;
  }

  if (a3 != 1)
  {
    return result;
  }

  if (![(_UIFluidSliderFeedbackGenerator *)self _canPlayDetentOnCurrentDevice])
  {
    return 1;
  }

  v10 = [(_UIFluidSliderFeedbackGenerator *)self _sliderConfig];
  v11 = [v10 detentFeedback];

  v12 = a4 * 0.5 + (1.0 - a4) * 0.15;
  v13 = [v11 hapticParameters];
  *&v14 = v12;
  [v13 setVolume:v14];
LABEL_13:

  if (v11)
  {
    [(UIFeedbackGenerator *)self _playFeedback:v11 atLocation:x, y];
LABEL_15:
  }

  return 1;
}

@end