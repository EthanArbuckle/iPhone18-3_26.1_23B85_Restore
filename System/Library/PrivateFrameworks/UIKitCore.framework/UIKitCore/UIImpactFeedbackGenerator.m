@interface UIImpactFeedbackGenerator
+ (UIImpactFeedbackGenerator)feedbackGeneratorWithStyle:(int64_t)a3 forView:(id)a4;
- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4;
- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4;
- (id)_styleString;
- (id)_ui_descriptionBuilder;
- (void)__impactOccurredWithIntensity:(void *)a1 atLocation:(double)a2;
- (void)impactOccurredWithIntensity:(CGFloat)intensity;
@end

@implementation UIImpactFeedbackGenerator

- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)a3 coordinateSpace:(id)a4
{
  v6 = _viewFromCoordinateSpace(a4);
  v7 = [(UIImpactFeedbackGenerator *)self initWithStyle:a3 view:v6];

  return v7;
}

- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)a3 view:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_13;
      }

      v8 = +[_UIImpactFeedbackGeneratorConfiguration defaultConfiguration];
    }

    else
    {
      v8 = +[_UIImpactFeedbackGeneratorConfiguration lightConfiguration];
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v8 = +[_UIImpactFeedbackGeneratorConfiguration strongConfiguration];
        break;
      case 3:
        v8 = +[_UIImpactFeedbackGeneratorConfiguration softConfiguration];
        break;
      case 4:
        v8 = +[_UIImpactFeedbackGeneratorConfiguration rigidConfiguration];
        break;
      default:
        goto LABEL_13;
    }
  }

  v7 = v8;
LABEL_13:
  v12.receiver = self;
  v12.super_class = UIImpactFeedbackGenerator;
  v9 = [(UIFeedbackGenerator *)&v12 initWithConfiguration:v7 view:v6];
  v10 = v9;
  if (v9)
  {
    v9->_style = a3;
  }

  return v10;
}

+ (UIImpactFeedbackGenerator)feedbackGeneratorWithStyle:(int64_t)a3 forView:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithStyle:a3 view:v6];

  return v7;
}

- (void)__impactOccurredWithIntensity:(void *)a1 atLocation:(double)a2
{
  if (a1)
  {
    [a1 _clientDidUpdateGeneratorWithSelector:sel___impactOccurredWithIntensity_atLocation_];
    v4 = [a1 _impactConfiguration];
    v5 = [v4 feedback];

    if (v5)
    {
      v13 = [v5 copy];

      v6 = 1.0;
      if (a2 <= 1.0)
      {
        v6 = a2;
      }

      v7 = fmax(v6, 0.0);
      v8 = [v13 hapticParameters];
      [v8 volume];
      *&v7 = v7 * v9;
      v10 = [v13 hapticParameters];
      LODWORD(v11) = LODWORD(v7);
      [v10 setVolume:v11];

      v12 = [a1 _impactConfiguration];
      [v12 minimumInterval];
      [a1 _playFeedback:v13 withMinimumIntervalPassed:&__impactOccurredWithIntensity_atLocation____lastTime since:0 prefersRegularPace:? atLocation:?];
    }
  }
}

- (void)impactOccurredWithIntensity:(CGFloat)intensity
{
  v3 = fmax(intensity, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  [UIImpactFeedbackGenerator __impactOccurredWithIntensity:v3 atLocation:?];
}

- (id)_ui_descriptionBuilder
{
  v7.receiver = self;
  v7.super_class = UIImpactFeedbackGenerator;
  v3 = [(UIFeedbackGenerator *)&v7 _ui_descriptionBuilder];
  v4 = [(UIImpactFeedbackGenerator *)self _styleString];
  v5 = [v3 appendName:@"style" object:v4];

  return v5;
}

- (id)_styleString
{
  style = self->_style;
  if (style > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E71070A8[style];
  }
}

@end