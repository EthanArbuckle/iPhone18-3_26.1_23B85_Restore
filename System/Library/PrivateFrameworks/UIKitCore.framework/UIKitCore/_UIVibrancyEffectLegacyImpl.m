@interface _UIVibrancyEffectLegacyImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (_UIVibrancyEffectLegacyImpl)initWithStyle:(int64_t)a3 invertAutomaticStyle:(BOOL)a4 ignoreSimpleVibrancy:(BOOL)a5;
- (id)implementationForUserInterfaceStyle:(int64_t)a3;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIVibrancyEffectLegacyImpl

- (_UIVibrancyEffectLegacyImpl)initWithStyle:(int64_t)a3 invertAutomaticStyle:(BOOL)a4 ignoreSimpleVibrancy:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = _UIVibrancyEffectLegacyImpl;
  result = [(_UIVibrancyEffectLegacyImpl *)&v9 init];
  if (result)
  {
    result->_style = a3;
    result->_invertAutomaticStyle = a4;
    result->_ignoreSimpleVibrancy = a5;
  }

  return result;
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

  [v4 encodeInteger:style forKey:@"UIVibrancyEffectBlurStyle"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && *(v4 + 1) == self->_style && v4[16] == self->_invertAutomaticStyle;

  return v5;
}

- (id)implementationForUserInterfaceStyle:(int64_t)a3
{
  v4 = self;
  style = v4->_style;
  if ((style - 4) < 2 || (style != 1000 ? (v6 = style < 5000) : (v6 = 0), !v6))
  {
    v7 = [[_UIVibrancyEffectLegacyImpl alloc] initWithStyle:_UIStyledEffectConvertAutomaticStyle(v4->_style invertAutomaticStyle:a3, v4->_invertAutomaticStyle), 0];

    v4 = v7;
  }

  return v4;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v14 = a4;
  effect = self->_effect;
  v8 = a3;
  v9 = [v14 traitCollection];
  v10 = -[UIVibrancyEffect effectForUserInterfaceStyle:](effect, "effectForUserInterfaceStyle:", [v9 userInterfaceStyle]);

  if ([v14 reducedTransperancy])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v14 useSimpleVibrancy];
  }

  v12 = [v10 effectConfigForReducedTransperancy:v11];
  v13 = +[_UILegacyEffectConverter sharedConverter];
  [v13 applyVibrancyConfig:v12 toEffectDescriptor:v8];

  [v8 setContentViewRequiresClipping:1];
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  style = self->_style;
  if ((style - 4) >= 2 && (style != 1000 ? (v11 = style < 5000) : (v11 = 0), v11) || ([v8 traitCollection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), objc_msgSend(v9, "traitCollection"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "userInterfaceStyle"), v14, v12, v13 == v15))
  {
    v18.receiver = self;
    v18.super_class = _UIVibrancyEffectLegacyImpl;
    v16 = [(_UIVibrancyEffectImpl *)&v18 _needsUpdateForTransitionFromEnvironment:v8 toEnvironment:v9 usage:a5];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)appendDescriptionTo:(id)a3
{
  v5 = a3;
  [v5 appendString:@" style="];
  v4 = _UIStyledEffectConvertToString(self->_style);
  [v5 appendString:v4];

  if (self->_invertAutomaticStyle)
  {
    [v5 appendString:@" invertedAutomaticStyle"];
  }
}

@end