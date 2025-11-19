@interface _UIVibrancyEffectImpl
+ (id)implementationFromCoder:(id)a3;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIVibrancyEffectImpl

+ (id)implementationFromCoder:(id)a3
{
  v42[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 containsValueForKey:@"UIVibrancyEffectBlurMaterialStyle"])
  {
    v6 = -[_UIVibrancyEffectCoreMaterialImpl initWithStyle:vibrancyStyle:]([_UIVibrancyEffectCoreMaterialImpl alloc], "initWithStyle:vibrancyStyle:", [v5 decodeIntegerForKey:@"UIVibrancyEffectBlurMaterialStyle"], objc_msgSend(v5, "decodeIntegerForKey:", @"UIVibrancyEffectVibrancyStyle"));
LABEL_8:
    v8 = v6;
    goto LABEL_9;
  }

  if ([v5 containsValueForKey:@"UIVibrancyEffectBlurAutomaticStyle"])
  {
    v7 = @"UIVibrancyEffectBlurAutomaticStyle";
LABEL_7:
    v6 = -[_UIVibrancyEffectLegacyImpl initWithStyle:invertAutomaticStyle:]([_UIVibrancyEffectLegacyImpl alloc], "initWithStyle:invertAutomaticStyle:", [v5 decodeIntegerForKey:v7], 0);
    goto LABEL_8;
  }

  if ([v5 containsValueForKey:@"UIVibrancyEffectBlurStyle"])
  {
    v7 = @"UIVibrancyEffectBlurStyle";
    goto LABEL_7;
  }

  if ([v5 containsValueForKey:@"UIVibrancyEffectFilterType"])
  {
    v10 = [v5 decodeIntegerForKey:@"UIVibrancyEffectFilterType"];
    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectColor1"];
    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectColor2"];
    v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectCompositingColor"];
    v14 = [v5 decodeBoolForKey:@"UIVibrancyEffectInputReversed"];
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

  if ([v5 containsValueForKey:@"UIVibrancyCompositedType"])
  {
    v17 = [v5 decodeIntegerForKey:@"UIVibrancyCompositedType"];
    v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIVibrancyEffectCompositingColor"];
    v8 = [[_UIVibrancyEffectModernCompositedImpl alloc] initWithCompositingMode:v17 compositingColor:v18];

LABEL_9:
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if ([v5 containsValueForKey:@"UIVibrancyColorMatrixType"])
  {
    v19 = [v5 decodeIntegerForKey:@"UIVibrancyColorMatrixType"];
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
    v11 = [v5 decodeObjectOfClasses:v23 forKey:@"UIVibrancyEffectColorMatrixLight"];

    [v5 decodeFloatForKey:@"UIVibrancyEffectColorMatrixLightClamp"];
    v25 = v24;
    v26 = [v5 decodeBoolForKey:@"UIVibrancyEffectColorMatrixLightClampPreserveHue"];
    v27 = MEMORY[0x1E695DFD8];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v29 = [v27 setWithArray:v28];
    v30 = [v5 decodeObjectOfClasses:v29 forKey:@"UIVibrancyEffectColorMatrixDark"];

    [v5 decodeFloatForKey:@"UIVibrancyEffectColorMatrixDarkClamp"];
    v32 = v31;
    v33 = [v5 decodeBoolForKey:@"UIVibrancyEffectColorMatrixDarkClampPreserveHue"];
    v34 = 1.0;
    if ([v5 containsValueForKey:@"UIVibrancyEffectColorMatrixAlpha"])
    {
      [v5 decodeDoubleForKey:@"UIVibrancyEffectColorMatrixAlpha"];
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
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"UIVibrancyEffect.m" lineNumber:533 description:@"Failed to decode vibrancy effect!"];

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:544 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIVibrancyEffect.m" lineNumber:550 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v6 = a4;
  LOBYTE(a3) = [a3 reducedTransperancy];
  v7 = [v6 reducedTransperancy];

  return a3 ^ v7;
}

@end