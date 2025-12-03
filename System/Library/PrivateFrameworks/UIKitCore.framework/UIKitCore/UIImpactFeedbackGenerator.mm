@interface UIImpactFeedbackGenerator
+ (UIImpactFeedbackGenerator)feedbackGeneratorWithStyle:(int64_t)style forView:(id)view;
- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space;
- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view;
- (id)_styleString;
- (id)_ui_descriptionBuilder;
- (void)__impactOccurredWithIntensity:(void *)intensity atLocation:(double)location;
- (void)impactOccurredWithIntensity:(CGFloat)intensity;
@end

@implementation UIImpactFeedbackGenerator

- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)style coordinateSpace:(id)space
{
  v6 = _viewFromCoordinateSpace(space);
  v7 = [(UIImpactFeedbackGenerator *)self initWithStyle:style view:v6];

  return v7;
}

- (UIImpactFeedbackGenerator)initWithStyle:(int64_t)style view:(id)view
{
  viewCopy = view;
  v7 = 0;
  if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
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
    switch(style)
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
  v9 = [(UIFeedbackGenerator *)&v12 initWithConfiguration:v7 view:viewCopy];
  v10 = v9;
  if (v9)
  {
    v9->_style = style;
  }

  return v10;
}

+ (UIImpactFeedbackGenerator)feedbackGeneratorWithStyle:(int64_t)style forView:(id)view
{
  viewCopy = view;
  v7 = [[self alloc] initWithStyle:style view:viewCopy];

  return v7;
}

- (void)__impactOccurredWithIntensity:(void *)intensity atLocation:(double)location
{
  if (intensity)
  {
    [intensity _clientDidUpdateGeneratorWithSelector:sel___impactOccurredWithIntensity_atLocation_];
    _impactConfiguration = [intensity _impactConfiguration];
    feedback = [_impactConfiguration feedback];

    if (feedback)
    {
      v13 = [feedback copy];

      locationCopy = 1.0;
      if (location <= 1.0)
      {
        locationCopy = location;
      }

      v7 = fmax(locationCopy, 0.0);
      hapticParameters = [v13 hapticParameters];
      [hapticParameters volume];
      *&v7 = v7 * v9;
      hapticParameters2 = [v13 hapticParameters];
      LODWORD(v11) = LODWORD(v7);
      [hapticParameters2 setVolume:v11];

      _impactConfiguration2 = [intensity _impactConfiguration];
      [_impactConfiguration2 minimumInterval];
      [intensity _playFeedback:v13 withMinimumIntervalPassed:&__impactOccurredWithIntensity_atLocation____lastTime since:0 prefersRegularPace:? atLocation:?];
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
  _ui_descriptionBuilder = [(UIFeedbackGenerator *)&v7 _ui_descriptionBuilder];
  _styleString = [(UIImpactFeedbackGenerator *)self _styleString];
  v5 = [_ui_descriptionBuilder appendName:@"style" object:_styleString];

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