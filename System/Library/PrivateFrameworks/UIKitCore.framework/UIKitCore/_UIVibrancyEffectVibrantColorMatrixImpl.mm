@interface _UIVibrancyEffectVibrantColorMatrixImpl
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithCAColorMatrix:(CAColorMatrix *)matrix alpha:(double)alpha;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix alpha:(double)alpha;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix tintColor:(id)color;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightConfiguration:(id)configuration darkConfiguration:(id)darkConfiguration alpha:(double)alpha;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightConfiguration:(id)configuration darkConfiguration:(id)darkConfiguration tintColor:(id)color;
- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithSystemName:(int64_t)name;
- (id)implementationReplacingTintColor:(id)color;
- (unint64_t)hash;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIVibrancyEffectVibrantColorMatrixImpl

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithSystemName:(int64_t)name
{
  if (!name)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:855 description:@"Cannot initialize custom vibrant color matrix effect without a matix"];
  }

  v28.receiver = self;
  v28.super_class = _UIVibrancyEffectVibrantColorMatrixImpl;
  v5 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)&v28 init];
  v6 = v5;
  if (v5)
  {
    v5->_systemName = name;
    if (name == 3)
    {
      v25 = xmmword_18A678330;
      v26 = unk_18A678340;
      v27 = xmmword_18A678350;
      v23 = xmmword_18A678310;
      v24 = unk_18A678320;
      v8 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:&v23 maxColorComponent:0 preservesHue:0.0];
      lightConfiguration = v6->_lightConfiguration;
      v6->_lightConfiguration = v8;

      v25 = xmmword_18A678380;
      v26 = unk_18A678390;
      v27 = xmmword_18A6783A0;
      v23 = xmmword_18A678360;
      v24 = unk_18A678370;
      v10 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:&v23 maxColorComponent:0 preservesHue:0.0];
      darkConfiguration = v6->_darkConfiguration;
      v6->_darkConfiguration = v10;

      v12 = +[UIColor _systemChromeShadowColor];
      reducedTransperancyColor = v6->_reducedTransperancyColor;
      v6->_reducedTransperancyColor = v12;

      v6->_hasDarkVariant = 1;
    }

    else
    {
      if (name == 2)
      {
        v7 = &xmmword_18A6782C0;
      }

      else if (name == 1)
      {
        v7 = &xmmword_18A678270;
      }

      else
      {
        v5->_systemName = 0;
        v7 = MEMORY[0x1E6979280];
      }

      v14 = v7[3];
      v25 = v7[2];
      v26 = v14;
      v27 = v7[4];
      v15 = v7[1];
      v23 = *v7;
      v24 = v15;
      v16 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:&v23 maxColorComponent:0 preservesHue:0.0];
      v17 = v6->_darkConfiguration;
      v6->_darkConfiguration = v16;

      objc_storeStrong(&v6->_lightConfiguration, v16);
    }

    v18 = +[UIColor whiteColor];
    tintColor = v6->_tintColor;
    v6->_tintColor = v18;
  }

  return v6;
}

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithCAColorMatrix:(CAColorMatrix *)matrix alpha:(double)alpha
{
  v4 = *&matrix->m15;
  v5 = *&matrix->m33;
  v11 = *&matrix->m24;
  v12 = v5;
  v6 = *&matrix->m33;
  v13 = *&matrix->m42;
  v7 = *&matrix->m15;
  v10[0] = *&matrix->m11;
  v10[1] = v7;
  v9[2] = v11;
  v9[3] = v6;
  v9[4] = *&matrix->m42;
  v9[0] = v10[0];
  v9[1] = v4;
  return [(_UIVibrancyEffectVibrantColorMatrixImpl *)self initWithLightCAColorMatrix:v10 darkCAColorMatrix:v9 alpha:alpha];
}

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix alpha:(double)alpha
{
  v9 = +[UIColor whiteColor];
  v10 = [v9 colorWithAlphaComponent:{fmax(fmin(alpha, 1.0), 0.0)}];
  v11 = *&matrix->m33;
  v18[2] = *&matrix->m24;
  v18[3] = v11;
  v18[4] = *&matrix->m42;
  v12 = *&matrix->m15;
  v18[0] = *&matrix->m11;
  v18[1] = v12;
  v13 = *&colorMatrix->m33;
  v17[2] = *&colorMatrix->m24;
  v17[3] = v13;
  v17[4] = *&colorMatrix->m42;
  v14 = *&colorMatrix->m15;
  v17[0] = *&colorMatrix->m11;
  v17[1] = v14;
  v15 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)self initWithLightCAColorMatrix:v18 darkCAColorMatrix:v17 tintColor:v10];

  return v15;
}

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightCAColorMatrix:(CAColorMatrix *)matrix darkCAColorMatrix:(CAColorMatrix *)colorMatrix tintColor:(id)color
{
  v7 = *&matrix->m33;
  v18 = *&matrix->m24;
  v19 = v7;
  v20 = *&matrix->m42;
  v8 = *&matrix->m15;
  v16 = *&matrix->m11;
  v17 = v8;
  colorCopy = color;
  v10 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:&v16 maxColorComponent:0 preservesHue:0.0];
  v11 = *&colorMatrix->m33;
  v18 = *&colorMatrix->m24;
  v19 = v11;
  v20 = *&colorMatrix->m42;
  v12 = *&colorMatrix->m15;
  v16 = *&colorMatrix->m11;
  v17 = v12;
  v13 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:&v16 maxColorComponent:0 preservesHue:0.0];
  v14 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)self initWithLightConfiguration:v10 darkConfiguration:v13 tintColor:colorCopy];

  return v14;
}

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightConfiguration:(id)configuration darkConfiguration:(id)darkConfiguration alpha:(double)alpha
{
  darkConfigurationCopy = darkConfiguration;
  configurationCopy = configuration;
  v10 = +[UIColor whiteColor];
  v11 = [v10 colorWithAlphaComponent:{fmax(fmin(alpha, 1.0), 0.0)}];
  v12 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)self initWithLightConfiguration:configurationCopy darkConfiguration:darkConfigurationCopy tintColor:v11];

  return v12;
}

- (_UIVibrancyEffectVibrantColorMatrixImpl)initWithLightConfiguration:(id)configuration darkConfiguration:(id)darkConfiguration tintColor:(id)color
{
  configurationCopy = configuration;
  darkConfigurationCopy = darkConfiguration;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = _UIVibrancyEffectVibrantColorMatrixImpl;
  v12 = [(_UIVibrancyEffectVibrantColorMatrixImpl *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lightConfiguration, configuration);
    objc_storeStrong(&v13->_darkConfiguration, darkConfiguration);
    objc_storeStrong(&v13->_tintColor, color);
    darkConfiguration = v13->_darkConfiguration;
    v15 = v13->_lightConfiguration;
    darkConfigurationCopy2 = darkConfiguration;
    v17 = darkConfigurationCopy2;
    if (v15 == darkConfigurationCopy2)
    {
      v19 = 0;
    }

    else
    {
      if (v15)
      {
        v18 = darkConfigurationCopy2 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = ![(_UIVibrantColorMatrixConfiguration *)v15 isEqual:darkConfigurationCopy2];
      }
    }

    v13->_hasDarkVariant = v19;
  }

  return v13;
}

- (id)implementationReplacingTintColor:(id)color
{
  colorCopy = color;
  tintColor = self->_tintColor;
  v7 = colorCopy;
  v8 = tintColor;
  v9 = v8;
  if (v8 == v7)
  {

    goto LABEL_7;
  }

  if (v7 && v8)
  {
    v10 = [(UIColor *)v7 isEqual:v8];

    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    selfCopy = self;
    goto LABEL_10;
  }

LABEL_9:
  selfCopy = objc_opt_new();
  selfCopy->_systemName = self->_systemName;
  objc_storeStrong(&selfCopy->_lightConfiguration, self->_lightConfiguration);
  objc_storeStrong(&selfCopy->_darkConfiguration, self->_darkConfiguration);
  objc_storeStrong(&selfCopy->_reducedTransperancyColor, self->_reducedTransperancyColor);
  selfCopy->_hasDarkVariant = self->_hasDarkVariant;
  objc_storeStrong(&selfCopy->_tintColor, color);
LABEL_10:

  return selfCopy;
}

- (unint64_t)hash
{
  result = self->_systemName;
  if (!result)
  {
    v4 = [(UIColor *)self->_tintColor hash];
    return [(_UIVibrantColorMatrixConfiguration *)self->_lightConfiguration hash]* v4;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    systemName = self->_systemName;
    if (systemName != v5[1])
    {
      goto LABEL_26;
    }

    if (systemName)
    {
      v8 = 1;
LABEL_27:

      goto LABEL_28;
    }

    if (self->_hasDarkVariant != *(v5 + 48))
    {
LABEL_26:
      v8 = 0;
      goto LABEL_27;
    }

    if (self->_hasDarkVariant)
    {
      v9 = v5[3];
      v10 = self->_darkConfiguration;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
LABEL_22:

          goto LABEL_26;
        }

        v14 = [(_UIVibrantColorMatrixConfiguration *)v10 isEqual:v11];

        if (!v14)
        {
          goto LABEL_26;
        }
      }
    }

    v15 = v6[5];
    v10 = self->_tintColor;
    v16 = v15;
    v12 = v16;
    if (v10 == v16)
    {

      goto LABEL_25;
    }

    if (v10)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = [(_UIVibrantColorMatrixConfiguration *)v10 isEqual:v16];

      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_25:
      v8 = _deferringTokenEqualToToken(self->_lightConfiguration, v6[2]);
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_systemName forKey:@"UIVibrancyColorMatrixType"];
  if (!self->_systemName)
  {
    lightConfiguration = self->_lightConfiguration;
    if (lightConfiguration)
    {
      [(_UIVibrantColorMatrixConfiguration *)lightConfiguration colorMatrix];
    }

    else
    {
      v6 = 0.0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v7 = _UIVisualEffectModelEncodeCAColorMatrix(&v13, v6);
    [coderCopy encodeObject:v7 forKey:@"UIVibrancyEffectColorMatrixLight"];

    [(_UIVibrantColorMatrixConfiguration *)self->_lightConfiguration maxColorComponent];
    *&v8 = v8;
    [coderCopy encodeFloat:@"UIVibrancyEffectColorMatrixLightClamp" forKey:v8];
    [coderCopy encodeBool:-[_UIVibrantColorMatrixConfiguration preservesHue](self->_lightConfiguration forKey:{"preservesHue"), @"UIVibrancyEffectColorMatrixLightClampPreserveHue"}];
    if (self->_hasDarkVariant)
    {
      darkConfiguration = self->_darkConfiguration;
      if (darkConfiguration)
      {
        [(_UIVibrantColorMatrixConfiguration *)darkConfiguration colorMatrix];
      }

      else
      {
        v10 = 0.0;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = 0u;
      }

      v11 = _UIVisualEffectModelEncodeCAColorMatrix(&v13, v10);
      [coderCopy encodeObject:v11 forKey:@"UIVibrancyEffectColorMatrixDark"];

      [(_UIVibrantColorMatrixConfiguration *)self->_darkConfiguration maxColorComponent];
      *&v12 = v12;
      [coderCopy encodeFloat:@"UIVibrancyEffectColorMatrixDarkClamp" forKey:v12];
      [coderCopy encodeBool:-[_UIVibrantColorMatrixConfiguration preservesHue](self->_darkConfiguration forKey:{"preservesHue"), @"UIVibrancyEffectColorMatrixDarkClampPreserveHue"}];
    }
  }
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  if (self->_hasDarkVariant && ([environmentCopy traitCollection], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "userInterfaceStyle"), objc_msgSend(toEnvironmentCopy, "traitCollection"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), v12, v10, v11 != v13))
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _UIVibrancyEffectVibrantColorMatrixImpl;
    v14 = [(_UIVibrancyEffectImpl *)&v16 _needsUpdateForTransitionFromEnvironment:environmentCopy toEnvironment:toEnvironmentCopy usage:usage];
  }

  return v14;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  v41[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  environmentCopy = environment;
  v10 = environmentCopy;
  if (self->_reducedTransperancyColor && [environmentCopy reducedTransperancy])
  {
    v11 = objc_alloc_init(_UITintColorViewEntry);
    [(_UITintColorViewEntry *)v11 setTintColor:self->_reducedTransperancyColor];
    [descriptorCopy addViewEffect:v11];
  }

  else
  {
    usageCopy = usage;
    if (self->_hasDarkVariant && ([v10 traitCollection], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "userInterfaceStyle"), v12, v13 == 2))
    {
      v14 = &OBJC_IVAR____UIVibrancyEffectVibrantColorMatrixImpl__darkConfiguration;
    }

    else
    {
      v14 = &OBJC_IVAR____UIVibrancyEffectVibrantColorMatrixImpl__lightConfiguration;
    }

    v15 = *(&self->super.super.isa + *v14);
    v16 = v15;
    v17 = MEMORY[0x1E696B098];
    v33 = v10;
    v34 = descriptorCopy;
    selfCopy = self;
    if (v15)
    {
      [v15 colorMatrix];
    }

    else
    {
      memset(v35, 0, sizeof(v35));
    }

    v18 = [v17 valueWithCAColorMatrix:v35];
    v19 = MEMORY[0x1E696AD98];
    [v16 maxColorComponent];
    *&v20 = v20;
    v21 = [v19 numberWithFloat:v20];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "preservesHue")}];
    v30 = [_UIVisualEffectFilterEntry alloc];
    v29 = *MEMORY[0x1E6979D78];
    v40 = *MEMORY[0x1E69799C0];
    v41[0] = MEMORY[0x1E695E118];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v38[0] = *MEMORY[0x1E6979AC0];
    v24 = v38[0];
    v38[1] = @"inputClamp";
    v39[0] = v18;
    v39[1] = v21;
    v38[2] = @"inputClampPreserveHue";
    v39[2] = v22;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v36[0] = v24;
    v36[1] = @"inputClamp";
    v37[0] = v18;
    v37[1] = v21;
    v36[2] = @"inputClampPreserveHue";
    v37[2] = v22;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v27 = [(_UIVisualEffectFilterEntry *)v30 initWithFilterType:v29 configurationValues:v23 requestedValues:v25 identityValues:v26];

    descriptorCopy = v34;
    [v34 addFilterEntry:v27];
    if (usageCopy == 1)
    {
      v28 = objc_alloc_init(_UIBackgroundColorViewEntry);
      [(_UIBackgroundColorViewEntry *)v28 setColor:selfCopy->_tintColor];
    }

    else
    {
      v28 = objc_alloc_init(_UITintColorViewEntry);
      [(_UIBackgroundColorViewEntry *)v28 setTintColor:selfCopy->_tintColor];
    }

    v10 = v33;
    [v34 addViewEffect:v28];
  }

  [descriptorCopy setTextShouldRenderWithTintColor:1];
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  systemName = self->_systemName;
  switch(systemName)
  {
    case 3:
      v7 = @" style=systemChromeShadow";
      goto LABEL_7;
    case 2:
      v7 = @" style=highIntensityShadow";
      goto LABEL_7;
    case 1:
      v7 = @" style=lowIntensityShadow";
LABEL_7:
      [toCopy appendString:v7];
      goto LABEL_21;
  }

  if (self->_hasDarkVariant)
  {
    lightConfiguration = self->_lightConfiguration;
    if (lightConfiguration)
    {
      [(_UIVibrantColorMatrixConfiguration *)lightConfiguration colorMatrix];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v10 = _UIVisualEffectFilterEntryDescribeColorMatrix(&v13);
    darkConfiguration = self->_darkConfiguration;
    if (darkConfiguration)
    {
      [(_UIVibrantColorMatrixConfiguration *)darkConfiguration colorMatrix];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v12 = _UIVisualEffectFilterEntryDescribeColorMatrix(&v13);
    [v5 appendFormat:@" lightVibrantColorMatrix=%@ darkVibrantColorMatrix=%@", v10, v12];
  }

  else
  {
    v9 = self->_lightConfiguration;
    if (v9)
    {
      [(_UIVibrantColorMatrixConfiguration *)v9 colorMatrix];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v10 = _UIVisualEffectFilterEntryDescribeColorMatrix(&v13);
    [v5 appendFormat:@" vibrantColorMatrix=%@", v10];
  }

  [v5 appendFormat:@" tintColor=%@", self->_tintColor];
LABEL_21:
}

@end