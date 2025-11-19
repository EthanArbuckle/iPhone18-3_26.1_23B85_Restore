@interface _UIBarCustomizationChicletAnchorView
+ (id)_jitterRotationAnimationWithAmount:(double)a3;
+ (id)_jitterXTranslationAnimationWithAmount:(double)a3;
+ (id)_jitterYTranslationAnimationWithAmount:(double)a3;
- (BOOL)isUserInteractionEnabled;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIBarCustomizationChicletAnchorView)init;
- (id)description;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setChiclet:(id)a3;
- (void)setContentPadding:(double)a3;
- (void)setDebugUIEnabled:(BOOL)a3;
- (void)setJiggling:(BOOL)a3;
- (void)setState:(int64_t)a3;
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

    v4 = [(_UIBarCustomizationChicletAnchorView *)v2 positionAdaptorView];
    [(UIView *)v2 addSubview:v4];

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
  v9 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
  [v9 setCenter:{v5, v8}];

  v10 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
  [v10 bounds];
  v13 = v12 + v11 * 0.5;
  v16 = v15 + v14 * 0.5;
  v17 = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
  [v17 setCenter:{v13, v16}];
}

- (void)setChiclet:(id)a3
{
  v5 = a3;
  chiclet = self->_chiclet;
  v9 = v5;
  if (chiclet != v5)
  {
    [(_UIBarCustomizationChiclet *)chiclet setAnchorView:0];
    objc_storeStrong(&self->_chiclet, a3);
    v7 = self->_chiclet;
    if (v7)
    {
      [(_UIBarCustomizationChiclet *)v7 setAnchorView:self];
      v8 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      [v8 addSubview:self->_chiclet];

      [(UIView *)self sizeToFit];
    }
  }
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    [(UIView *)self setClipsToBounds:a3 == 1];
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

- (void)setContentPadding:(double)a3
{
  if (self->_contentPadding != a3)
  {
    self->_contentPadding = a3;
    [(UIView *)self sizeToFit];
    if (+[UIView _isInAnimationBlock])
    {

      [(UIView *)self layoutIfNeeded];
    }
  }
}

- (void)setJiggling:(BOOL)a3
{
  v3 = a3;
  v12 = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
  if (([v12 fixed] & 1) == 0)
  {
    jiggling = self->_jiggling;

    if (jiggling == v3)
    {
      return;
    }

    self->_jiggling = v3;
    v6 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
    v12 = [v6 layer];

    if (self->_jiggling)
    {
      v7 = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
      [v7 bounds];
      v8 = 60.0 / CGRectGetWidth(v14);

      if (v8 > 1.0)
      {
        v8 = 1.0;
      }

      v9 = [objc_opt_class() _jitterRotationAnimationWithStrength:v8];
      v10 = [objc_opt_class() _jitterXTranslationAnimationWithStrength:1.0];
      v11 = [objc_opt_class() _jitterYTranslationAnimationWithStrength:1.0];
      [v12 addAnimation:v9 forKey:@"RotationJitterAnimation"];
      [v12 addAnimation:v10 forKey:@"XTranslationJitterAnimation"];
      [v12 addAnimation:v11 forKey:@"YTranslationJitterAnimation"];
    }

    else
    {
      [v12 removeAllAnimations];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_UIBarCustomizationChicletAnchorView *)self chiclet:a3.width];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(_UIBarCustomizationChicletAnchorView *)self isUserInteractionEnabled])
  {
    v8 = [(_UIBarCustomizationChicletAnchorView *)self chiclet];
    v9 = v8;
    if (v8 && ([v8 fixed] & 1) == 0)
    {
      [(UIView *)self convertPoint:v9 toView:x, y];
      v10 = [v9 hitTest:v7 withEvent:?];
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
  v12 = [(_UIBarCustomizationChicletAnchorView *)self state];
  v13 = @"Dragging";
  if (v12 != 1)
  {
    v13 = 0;
  }

  if (v12)
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

+ (id)_jitterXTranslationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v4 setDuration:0.134];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
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

+ (id)_jitterYTranslationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v4 setDuration:0.142];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
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

+ (id)_jitterRotationAnimationWithAmount:(double)a3
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v4 setDuration:0.128];
  [v4 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:-a3];
  [v4 setFromValue:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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

- (void)setDebugUIEnabled:(BOOL)a3
{
  if (self->_debugUIEnabled != a3)
  {
    self->_debugUIEnabled = a3;
    if (a3)
    {
      v16 = [UIColor colorWithHue:arc4random_uniform(0x167u) / 359.0 saturation:0.6 brightness:0.9 alpha:1.0];
      v5 = [(UIView *)self layer];
      [v5 setBorderWidth:1.0];

      v6 = v16;
      v7 = [v16 CGColor];
      v8 = [(UIView *)self layer];
      [v8 setBorderColor:v7];

      v9 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      v10 = [v9 layer];
      [v10 setBorderWidth:1.0];

      v11 = v16;
      v12 = [v16 CGColor];
      v13 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      v14 = [v13 layer];
      [v14 setBorderColor:v12];
    }

    else
    {
      v15 = [(UIView *)self layer];
      [v15 setBorderWidth:0.0];

      v16 = [(_UIBarCustomizationChicletAnchorView *)self positionAdaptorView];
      v13 = [v16 layer];
      [v13 setBorderWidth:0.0];
    }
  }
}

@end