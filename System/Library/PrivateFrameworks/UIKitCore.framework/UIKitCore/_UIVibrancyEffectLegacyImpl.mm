@interface _UIVibrancyEffectLegacyImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIVibrancyEffectLegacyImpl)initWithStyle:(int64_t)style invertAutomaticStyle:(BOOL)automaticStyle ignoreSimpleVibrancy:(BOOL)vibrancy;
- (id)implementationForUserInterfaceStyle:(int64_t)style;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIVibrancyEffectLegacyImpl

- (_UIVibrancyEffectLegacyImpl)initWithStyle:(int64_t)style invertAutomaticStyle:(BOOL)automaticStyle ignoreSimpleVibrancy:(BOOL)vibrancy
{
  v9.receiver = self;
  v9.super_class = _UIVibrancyEffectLegacyImpl;
  result = [(_UIVibrancyEffectLegacyImpl *)&v9 init];
  if (result)
  {
    result->_style = style;
    result->_invertAutomaticStyle = automaticStyle;
    result->_ignoreSimpleVibrancy = vibrancy;
  }

  return result;
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

  [coderCopy encodeInteger:style forKey:@"UIVibrancyEffectBlurStyle"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && *(equalCopy + 1) == self->_style && equalCopy[16] == self->_invertAutomaticStyle;

  return v5;
}

- (id)implementationForUserInterfaceStyle:(int64_t)style
{
  selfCopy = self;
  style = selfCopy->_style;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    v7 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:_UIStyledEffectConvertAutomaticStyle(selfCopy->_style invertAutomaticStyle:style, selfCopy->_invertAutomaticStyle), 0];

    selfCopy = v7;
  }

  return selfCopy;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  environmentCopy = environment;
  effect = self->_effect;
  descriptorCopy = descriptor;
  traitCollection = [environmentCopy traitCollection];
  v10 = -[UIVibrancyEffect effectForUserInterfaceStyle:](effect, "effectForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  if ([environmentCopy reducedTransperancy])
  {
    useSimpleVibrancy = 1;
  }

  else
  {
    useSimpleVibrancy = [environmentCopy useSimpleVibrancy];
  }

  v12 = [v10 effectConfigForReducedTransperancy:useSimpleVibrancy];
  v13 = +[_UILegacyEffectConverter sharedConverter];
  [v13 applyVibrancyConfig:v12 toEffectDescriptor:descriptorCopy];

  [descriptorCopy setContentViewRequiresClipping:1];
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  style = self->_style;
  if ((style - 4) >= 2 && (style != 1000 ? (v11 = style < 5000) : (v11 = 0), v11) || ([environmentCopy traitCollection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), objc_msgSend(toEnvironmentCopy, "traitCollection"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceStyle"), v14, v12, v13 == v15))
  {
    v18.receiver = self;
    v18.super_class = _UIVibrancyEffectLegacyImpl;
    v16 = [(_UIVibrancyEffectImpl *)&v18 _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy usage:usage];
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
}

@end