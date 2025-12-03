@interface _UIBlurEffectLegacyImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectLegacyImpl)initWithStyle:(int64_t)style tintColor:(id)color invertAutomaticStyle:(BOOL)automaticStyle;
- (id)implementationForUserInterfaceStyle:(int64_t)style;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBlurEffectLegacyImpl

- (_UIBlurEffectLegacyImpl)initWithStyle:(int64_t)style tintColor:(id)color invertAutomaticStyle:(BOOL)automaticStyle
{
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = _UIBlurEffectLegacyImpl;
  v9 = [(_UIBlurEffectLegacyImpl *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_style = style;
    v11 = [colorCopy copy];
    tintColor = v10->_tintColor;
    v10->_tintColor = v11;

    v10->_invertAutomaticStyle = automaticStyle;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  style = self->_style;
  v7 = coderCopy;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    [coderCopy encodeInteger:? forKey:?];
    style = _UIStyledEffectConvertAutomaticStyle(self->_style, 1, 0);
    coderCopy = v7;
  }

  [coderCopy encodeInteger:style forKey:@"UIBlurEffectStyle"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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

- (id)implementationForUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  style = selfCopy->_style;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    v7 = [[_UIBlurEffectLegacyImpl alloc] initWithStyle:_UIStyledEffectConvertAutomaticStyle(selfCopy->_style tintColor:style invertAutomaticStyle:selfCopy->_invertAutomaticStyle), selfCopy->_tintColor, 0];

    selfCopy = v7;
  }

  return selfCopy;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  effect = self->_effect;
  environmentCopy = environment;
  descriptorCopy = descriptor;
  traitCollection = [environmentCopy traitCollection];
  v14 = -[UIBlurEffect effectForUserInterfaceStyle:](effect, "effectForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  effectSettings = [v14 effectSettings];
  v12 = effectSettings;
  if (self->_tintColor)
  {
    [effectSettings setColorTint:?];
  }

  v13 = +[_UILegacyEffectConverter sharedConverter];
  [v13 applyBackdropSettings:v12 toEffectDescriptor:descriptorCopy environment:environmentCopy];
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  style = self->_style;
  if ((style - 4) >= 2 && (style != 1000 ? (v11 = style < 5000) : (v11 = 0), v11) || ([environmentCopy traitCollection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), objc_msgSend(toEnvironmentCopy, "traitCollection"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceStyle"), v14, v12, v13 == v15))
  {
    v18.receiver = self;
    v18.super_class = _UIBlurEffectLegacyImpl;
    v16 = [(_UIBlurEffectImpl *)&v18 _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy usage:usage];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  [toCopy appendString:@" style="];
  v4 = _UIStyledEffectConvertToString(self->_style);
  [toCopy appendString:v4];

  if (self->_invertAutomaticStyle)
  {
    [toCopy appendString:@" invertedAutomaticStyle"];
  }

  v5 = toCopy;
  if (self->_tintColor)
  {
    [toCopy appendFormat:@" tintColor=%@", self->_tintColor];
    v5 = toCopy;
  }
}

@end