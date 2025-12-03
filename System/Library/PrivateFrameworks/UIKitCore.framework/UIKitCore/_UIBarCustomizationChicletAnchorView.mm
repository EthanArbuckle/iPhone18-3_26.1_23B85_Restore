@interface _UIBarCustomizationChicletAnchorView
+ (id)_jitterRotationAnimationWithAmount:(double)amount;
+ (id)_jitterXTranslationAnimationWithAmount:(double)amount;
+ (id)_jitterYTranslationAnimationWithAmount:(double)amount;
- (BOOL)isUserInteractionEnabled;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIBarCustomizationChicletAnchorView)init;
- (id)description;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setChiclet:(id)chiclet;
- (void)setContentPadding:(double)padding;
- (void)setDebugUIEnabled:(BOOL)enabled;
- (void)setJiggling:(BOOL)jiggling;
- (void)setState:(int64_t)state;
@end

@implementation _UIBarCustomizationChicletAnchorView

- (_UIBarCustomizationChicletAnchorView)init
{
  v10.receiver = self;
  v10.super_class = _UIBarCustomizationChicletAnchorView;
  v2 = [(UIView *)&v10 init];
  if (v2)
  {
    v3 = [[UIView alloc] initWithFrame:0.0, 0.0, 4.0, 4.0];
    [(_UIBarCustomizationChicletAnchorView *)v2 setPositionAdaptorView:v3];

    positionAdaptorView = [(_UIBarCustomizationChicletAnchorView *)v2 positionAdaptorView];
    [(UIView *)v2 addSubview:positionAdaptorView];

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v5 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v9 = _UIInternalPreference_BarCustomizationDebugEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_BarCustomizationDebugEnabled))
    {
      v6 = 0;
    }

    else
    {
      do
      {
        v6 = v5 < v9;
        if (v5 < v9)
        {
          break;
        }

        _UIInternalPreferenceSync(v5, &_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled", _UIInternalPreferenceUpdateBool);
        v9 = _UIInternalPreference_BarCustomizationDebugEnabled;
      }

      while (v5 != _UIInternalPreference_BarCustomizationDebugEnabled);
    }

    if (byte_1EA95E154)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    [(_UIBarCustomizationChicletAnchorView *)v2 setDebugUIEnabled:v7];
  }

  return v2;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _UIBarCustomizationChicletAnchorView;
  [(UIView *)&v18 layoutSubviews];
  [(UIView *)self bounds];
  v5 = v4 + v3 * 0.5;
  v8 = v7 + v6 * 0.5;
  positionAdaptorView = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
  [positionAdaptorView setCenter:{v5, v8}];

  positionAdaptorView2 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
  [positionAdaptorView2 bounds];
  v13 = v12 + v11 * 0.5;
  v16 = v15 + v14 * 0.5;
  chiclet = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
  [chiclet setCenter:{v13, v16}];
}

- (void)setChiclet:(id)chiclet
{
  chicletCopy = chiclet;
  chiclet = self->_chiclet;
  v9 = chicletCopy;
  if (chiclet != chicletCopy)
  {
    [(_UIBarCustomizationChiclet *)chiclet setAnchorView:0];
    objc_storeStrong(&self->_chiclet, chiclet);
    v7 = self->_chiclet;
    if (v7)
    {
      [(_UIBarCustomizationChiclet *)v7 setAnchorView:self];
      positionAdaptorView = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      [positionAdaptorView addSubview:self->_chiclet];

      [(UIView *)self sizeToFit];
    }
  }
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(UIView *)self setClipsToBounds:state == 1];
  }
}

- (BOOL)isUserInteractionEnabled
{
  if ([(_UIBarCustomizationChicletAnchorView *)self state])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _UIBarCustomizationChicletAnchorView;
  return [(UIView *)&v4 isUserInteractionEnabled];
}

- (void)setContentPadding:(double)padding
{
  if (self->_contentPadding != padding)
  {
    self->_contentPadding = padding;
    [(UIView *)self sizeToFit];
    if (+[UIView _isInAnimationBlock])
    {

      [(UIView *)self layoutIfNeeded];
    }
  }
}

- (void)setJiggling:(BOOL)jiggling
{
  jigglingCopy = jiggling;
  chiclet = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
  if (([chiclet fixed] & 1) == 0)
  {
    jiggling = self->_jiggling;

    if (jiggling == jigglingCopy)
    {
      return;
    }

    self->_jiggling = jigglingCopy;
    positionAdaptorView = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
    chiclet = [positionAdaptorView layer];

    if (self->_jiggling)
    {
      chiclet2 = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
      [chiclet2 bounds];
      v8 = 60.0 / CGRectGetWidth(v14);

      if (v8 > 1.0)
      {
        v8 = 1.0;
      }

      v9 = [objc_opt_class() _jitterRotationAnimationWithStrength:v8];
      v10 = [objc_opt_class() _jitterXTranslationAnimationWithStrength:1.0];
      v11 = [objc_opt_class() _jitterYTranslationAnimationWithStrength:1.0];
      [chiclet addAnimation:v9 forKey:@"RotationJitterAnimation"];
      [chiclet addAnimation:v10 forKey:@"XTranslationJitterAnimation"];
      [chiclet addAnimation:v11 forKey:@"YTranslationJitterAnimation"];
    }

    else
    {
      [chiclet removeAllAnimations];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(_UIBarCustomizationChicletAnchorView *)self chiclet:fits.width];
  [v4 bounds];
  Width = CGRectGetWidth(v11);
  [(_UIBarCustomizationChicletAnchorView *)self contentPadding];
  v7 = Width + v6;

  v8 = 100.0;
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(_UIBarCustomizationChicletAnchorView *)self isUserInteractionEnabled])
  {
    chiclet = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
    v9 = chiclet;
    if (chiclet && ([chiclet fixed] & 1) == 0)
    {
      [(UIView *)self convertPoint:v9 toView:x, y];
      v10 = [v9 hitTest:eventCopy withEvent:?];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(UIView *)self frame];
  v5 = v4;
  [(UIView *)self frame];
  v7 = v6;
  [(UIView *)self frame];
  v9 = v8;
  [(UIView *)self frame];
  v11 = [v3 stringWithFormat:@"(%g %g %g %g)", v5, v7, v9, v10];;
  state = [(_UIBarCustomizationChicletAnchorView *)self state];
  v13 = @"Dragging";
  if (state != 1)
  {
    v13 = 0;
  }

  if (state)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Default";
  }

  v15 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p frame = %@; state = %@>", objc_opt_class(), self, v11, v14];;

  return v15;
}

+ (id)_jitterXTranslationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v4 setDuration:0.134];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

+ (id)_jitterYTranslationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v4 setDuration:0.142];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

+ (id)_jitterRotationAnimationWithAmount:(double)amount
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v4 setDuration:0.128];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v4 setToValue:v6];

  LODWORD(v7) = 1052266988;
  LODWORD(v8) = 1059145646;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v7 :0.0 :v8 :v9];
  [v4 setTimingFunction:v10];

  LODWORD(v11) = 2139095040;
  [v4 setRepeatCount:v11];
  [v4 setAutoreverses:1];
  [v4 setRemovedOnCompletion:0];

  return v4;
}

- (void)setDebugUIEnabled:(BOOL)enabled
{
  if (self->_debugUIEnabled != enabled)
  {
    self->_debugUIEnabled = enabled;
    if (enabled)
    {
      positionAdaptorView3 = [UIColor colorWithHue:arc4random_uniform(0x167u) / 359.0 saturation:0.6 brightness:0.9 alpha:1.0];
      layer = [(UIView *)self layer];
      [layer setBorderWidth:1.0];

      v6 = positionAdaptorView3;
      cGColor = [positionAdaptorView3 CGColor];
      layer2 = [(UIView *)self layer];
      [layer2 setBorderColor:cGColor];

      positionAdaptorView = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      layer3 = [positionAdaptorView layer];
      [layer3 setBorderWidth:1.0];

      v11 = positionAdaptorView3;
      cGColor2 = [positionAdaptorView3 CGColor];
      positionAdaptorView2 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      layer4 = [positionAdaptorView2 layer];
      [layer4 setBorderColor:cGColor2];
    }

    else
    {
      layer5 = [(UIView *)self layer];
      [layer5 setBorderWidth:0.0];

      positionAdaptorView3 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      positionAdaptorView2 = [positionAdaptorView3 layer];
      [positionAdaptorView2 setBorderWidth:0.0];
    }
  }
}

@end