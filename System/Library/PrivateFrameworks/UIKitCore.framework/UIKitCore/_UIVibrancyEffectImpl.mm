@interface _UIVibrancyEffectImpl
+ (id)implementationFromCoder:(id)coder;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIVibrancyEffectImpl

+ (id)implementationFromCoder:(id)coder
{
  v42[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"UIVibrancyEffectBlurMaterialStyle"])
  {
    v6 = -[_UIVibrancyEffectCoreMaterialImpl initWithStyle:vibrancyStyle:]([_UIVibrancyEffectCoreMaterialImpl alloc], "initWithStyle:vibrancyStyle:", [coderCopy decodeIntegerForKey:@"UIVibrancyEffectBlurMaterialStyle"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"UIVibrancyEffectVibrancyStyle"));
LABEL_8:
    v8 = v6;
    goto LABEL_9;
  }

  if ([coderCopy containsValueForKey:@"UIVibrancyEffectBlurAutomaticStyle"])
  {
    v7 = @"UIVibrancyEffectBlurAutomaticStyle";
LABEL_7:
    v6 = -[_UIVibrancyEffectLegacyImpl initWithStyle:invertAutomaticStyle:]([_UIVibrancyEffectLegacyImpl alloc], "initWithStyle:invertAutomaticStyle:", [coderCopy decodeIntegerForKey:v7], 0);
    goto LABEL_8;
  }

  if ([coderCopy containsValueForKey:@"UIVibrancyEffectBlurStyle"])
  {
    v7 = @"UIVibrancyEffectBlurStyle";
    goto LABEL_7;
  }

  if ([coderCopy containsValueForKey:@"UIVibrancyEffectFilterType"])
  {
    v10 = [coderCopy decodeIntegerForKey:@"UIVibrancyEffectFilterType"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectColor1"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectColor2"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectCompositingColor"];
    v14 = [coderCopy decodeBoolForKey:@"UIVibrancyEffectInputReversed"];
    v15 = [_UIVibrancyEffectModernVibrancyImpl alloc];
    v16 = MEMORY[0x1E6979D90];
    if (!v10)
    {
      v16 = MEMORY[0x1E6979D88];
    }

    v8 = [(_UIVibrancyEffectModernVibrancyImpl *)v15 initWithFilter:*v16 inputColor1:v11 inputColor2:v12 compositingColor:v13 inputReversed:v14];

LABEL_17:
    goto LABEL_9;
  }

  if ([coderCopy containsValueForKey:@"UIVibrancyCompositedType"])
  {
    v17 = [coderCopy decodeIntegerForKey:@"UIVibrancyCompositedType"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectCompositingColor"];
    v8 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:v17 compositingColor:v18];

LABEL_9:
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if ([coderCopy containsValueForKey:@"UIVibrancyColorMatrixType"])
  {
    v19 = [coderCopy decodeIntegerForKey:@"UIVibrancyColorMatrixType"];
    if (v19)
    {
      v6 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithSystemName:v19];
      goto LABEL_8;
    }

    v21 = MEMORY[0x1E695DFD8];
    v42[0] = objc_opt_class();
    v42[1] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v23 = [v21 setWithArray:v22];
    v11 = [coderCopy decodeObjectOfClasses:v23 forKey:@"UIVibrancyEffectColorMatrixLight"];

    [coderCopy decodeFloatForKey:@"UIVibrancyEffectColorMatrixLightClamp"];
    v25 = v24;
    v26 = [coderCopy decodeBoolForKey:@"UIVibrancyEffectColorMatrixLightClampPreserveHue"];
    v27 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v29 = [v27 setWithArray:v28];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"UIVibrancyEffectColorMatrixDark"];

    [coderCopy decodeFloatForKey:@"UIVibrancyEffectColorMatrixDarkClamp"];
    v32 = v31;
    v33 = [coderCopy decodeBoolForKey:@"UIVibrancyEffectColorMatrixDarkClampPreserveHue"];
    v34 = 1.0;
    if ([coderCopy containsValueForKey:@"UIVibrancyEffectColorMatrixAlpha"])
    {
      [coderCopy decodeDoubleForKey:@"UIVibrancyEffectColorMatrixAlpha"];
      v34 = v35;
    }

    _UIVisualEffectModelDecodeCAColorMatrix(v11, v40);
    v36 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:v40 maxColorComponent:v26 preservesHue:v25];
    v37 = v36;
    if (v30)
    {
      _UIVisualEffectModelDecodeCAColorMatrix(v30, v40);
      v38 = [_UIVibrantColorMatrixConfiguration _vibrantColorMatrixConfigurationWithColorMatrix:v40 maxColorComponent:v33 preservesHue:v32];
    }

    else
    {
      v38 = v36;
    }

    v39 = v38;
    v8 = [[_UIVibrancyEffectVibrantColorMatrixImpl alloc] initWithLightConfiguration:v37 darkConfiguration:v38 alpha:v34];

    goto LABEL_17;
  }

LABEL_23:
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:533 description:@"Failed to decode vibrancy effect!"];

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:544 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:550 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  toEnvironmentCopy = toEnvironment;
  LOBYTE(environment) = [environment reducedTransperancy];
  reducedTransperancy = [toEnvironmentCopy reducedTransperancy];

  return environment ^ reducedTransperancy;
}

@end