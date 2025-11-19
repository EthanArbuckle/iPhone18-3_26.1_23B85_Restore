@interface _UIBlurEffectLegacyImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectLegacyImpl)initWithStyle:(int64_t)a3 tintColor:(id)a4 invertAutomaticStyle:(BOOL)a5;
- (id)implementationForUserInterfaceStyle:(int64_t)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBlurEffectLegacyImpl

- (_UIBlurEffectLegacyImpl)initWithStyle:(int64_t)a3 tintColor:(id)a4 invertAutomaticStyle:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UIBlurEffectLegacyImpl;
  v9 = [(_UIBlurEffectLegacyImpl *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_style = a3;
    v11 = [v8 copy];
    tintColor = v10->_tintColor;
    v10->_tintColor = v11;

    v10->_invertAutomaticStyle = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  style = self->_style;
  v7 = v4;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    [v4 encodeInteger:? forKey:?];
    style = _UIStyledEffectConvertAutomaticStyle(self->_style, 1, 0);
    v4 = v7;
  }

  [v4 encodeInteger:style forKey:@"UIBlurEffectStyle"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = v5;
    if (*(v5 + 1) == self->_style)
    {
      tintColor = self->_tintColor;
      v8 = *(v5 + 2);
      v9 = tintColor;
      v10 = v9;
      if (v8 == v9)
      {

LABEL_13:
        v12 = v6[24] == self->_invertAutomaticStyle;
LABEL_15:

        goto LABEL_16;
      }

      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
      }

      else
      {
        v13 = [(UIColor *)v8 isEqual:v9];

        if (v13)
        {
          goto LABEL_13;
        }
      }
    }

    v12 = 0;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)implementationForUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  style = v4->_style;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    v7 = [[_UIBlurEffectLegacyImpl alloc] initWithStyle:_UIStyledEffectConvertAutomaticStyle(v4->_style tintColor:a3 invertAutomaticStyle:v4->_invertAutomaticStyle), v4->_tintColor, 0];

    v4 = v7;
  }

  return v4;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  effect = self->_effect;
  v8 = a4;
  v9 = a3;
  v10 = [v8 traitCollection];
  v14 = -[UIBlurEffect effectForUserInterfaceStyle:](effect, "effectForUserInterfaceStyle:", [v10 userInterfaceStyle]);

  v11 = [v14 effectSettings];
  v12 = v11;
  if (self->_tintColor)
  {
    [v11 setColorTint:?];
  }

  v13 = +[_UILegacyEffectConverter sharedConverter];
  [v13 applyBackdropSettings:v12 toEffectDescriptor:v9 environment:v8];
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  style = self->_style;
  if ((style - 4) >= 2 && (style != 1000 ? (v11 = style < 5000) : (v11 = 0), v11) || ([v8 traitCollection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), objc_msgSend(v9, "traitCollection"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceStyle"), v14, v12, v13 == v15))
  {
    v18.receiver = self;
    v18.super_class = _UIBlurEffectLegacyImpl;
    v16 = [(_UIBlurEffectImpl *)&v18 _needsUpdateForTransitionFromEnvironment:v8 toEnvironment:v9 usage:a5];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)appendDescriptionTo:(id)a3
{
  v6 = a3;
  [v6 appendString:@" style="];
  v4 = _UIStyledEffectConvertToString(self->_style);
  [v6 appendString:v4];

  if (self->_invertAutomaticStyle)
  {
    [v6 appendString:@" invertedAutomaticStyle"];
  }

  v5 = v6;
  if (self->_tintColor)
  {
    [v6 appendFormat:@" tintColor=%@", self->_tintColor];
    v5 = v6;
  }
}

@end