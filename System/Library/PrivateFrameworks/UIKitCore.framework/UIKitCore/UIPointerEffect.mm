@interface UIPointerEffect
+ (UIPointerEffect)effectWithPreview:(UITargetedPreview *)preview;
- (BOOL)isEqual:(id)equal;
- (CGPoint)_plasmaRubberbandFactor;
- (CGPoint)slipFactor;
- (UIViewSpringAnimationBehavior)liftProgressSpring;
- (double)_plasmaLensParallaxFactor;
- (double)_plasmaParallaxFactor;
- (double)dampedAnimationDampingRatio;
- (double)dampedAnimationResponse;
- (double)defaultPointerCornerRadius;
- (double)liftForceExponent;
- (double)liftProgressFloor;
- (double)maxSlip;
- (double)parallaxAmount;
- (double)scaleUpAnimationDampingRatio;
- (double)scaleUpAnimationResponse;
- (double)scaleUpPoints;
- (id)copyWithZone:(_NSZone *)zone;
- (id)settings;
- (id)tintColorMatrixProvider;
- (unint64_t)constrainedAxes;
- (unint64_t)hash;
@end

@implementation UIPointerEffect

+ (UIPointerEffect)effectWithPreview:(UITargetedPreview *)preview
{
  v3 = preview;
  v4 = objc_opt_new();
  [v4 setPreview:v3];

  return v4;
}

- (id)settings
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  highlightEffectSettings = [v2 highlightEffectSettings];

  return highlightEffectSettings;
}

- (unint64_t)constrainedAxes
{
  if (_UIPlasmaEnabled())
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (CGPoint)slipFactor
{
  settings = [(UIPointerEffect *)self settings];
  [settings slipFactorX];
  v5 = v4;
  settings2 = [(UIPointerEffect *)self settings];
  [settings2 slipFactorY];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (double)maxSlip
{
  settings = [(UIPointerEffect *)self settings];
  [settings maxSlipPoints];
  v4 = v3;

  return v4;
}

- (double)parallaxAmount
{
  settings = [(UIPointerEffect *)self settings];
  [settings parallaxAmount];
  v4 = v3;

  return v4;
}

- (double)scaleUpPoints
{
  settings = [(UIPointerEffect *)self settings];
  [settings scaleUpPoints];
  v4 = v3;

  return v4;
}

- (double)defaultPointerCornerRadius
{
  settings = [(UIPointerEffect *)self settings];
  [settings defaultPointerCornerRadius];
  v4 = v3;

  return v4;
}

- (double)scaleUpAnimationResponse
{
  settings = [(UIPointerEffect *)self settings];
  [settings scaleUpAnimationResponse];
  v4 = v3;

  return v4;
}

- (double)scaleUpAnimationDampingRatio
{
  settings = [(UIPointerEffect *)self settings];
  [settings scaleUpAnimationDampingRatio];
  v4 = v3;

  return v4;
}

- (double)dampedAnimationResponse
{
  settings = [(UIPointerEffect *)self settings];
  [settings dampedAnimationResponse];
  v4 = v3;

  return v4;
}

- (double)dampedAnimationDampingRatio
{
  settings = [(UIPointerEffect *)self settings];
  [settings dampedAnimationDampingRatio];
  v4 = v3;

  return v4;
}

- (double)liftProgressFloor
{
  settings = [(UIPointerEffect *)self settings];
  [settings liftForceFloor];
  v4 = v3;

  return v4;
}

- (double)liftForceExponent
{
  settings = [(UIPointerEffect *)self settings];
  [settings liftForceExponent];
  v4 = v3;

  return v4;
}

- (UIViewSpringAnimationBehavior)liftProgressSpring
{
  settings = [(UIPointerEffect *)self settings];
  liftProgress = [settings liftProgress];
  springAnimationBehavior = [liftProgress springAnimationBehavior];

  return springAnimationBehavior;
}

- (id)tintColorMatrixProvider
{
  options = [(UIPointerEffect *)self options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIPointerEffect_tintColorMatrixProvider__block_invoke;
  aBlock[3] = &__block_descriptor_33_e17___NSValue_16__0Q8l;
  v6 = (options & 0x4000) != 0;
  v3 = _Block_copy(aBlock);

  return v3;
}

id __42__UIPointerEffect_tintColorMatrixProvider__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = PSContentOverlayVibrantColorMatrixForLuminance();
  v5 = v4;
  if (a2 == 2 && (*(a1 + 32) & 1) != 0)
  {
    v6 = 0uLL;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    if (v4)
    {
      [v4 CAColorMatrixValue];
      v6 = 0uLL;
    }

    v18 = v6;
    v19 = v6;
    v16 = v6;
    v17 = v6;
    v15 = v6;
    CAColorMatrixMakeBrightness();
    v9[12] = v22;
    v9[13] = v23;
    v9[14] = v24;
    v9[10] = v20;
    v9[11] = v21;
    v9[7] = v17;
    v9[8] = v18;
    v9[9] = v19;
    v9[5] = v15;
    v9[6] = v16;
    CAColorMatrixConcat();
    v23 = v13;
    v24 = v14;
    v21 = v11;
    v22 = v12;
    v20 = v10;
    v9[3] = v13;
    v9[4] = v14;
    v9[1] = v11;
    v9[2] = v12;
    v9[0] = v10;
    v7 = [MEMORY[0x1E696B098] valueWithBytes:v9 objCType:"{CAColorMatrix=ffffffffffffffffffff}"];

    v5 = v7;
  }

  return v5;
}

- (CGPoint)_plasmaRubberbandFactor
{
  settings = [(UIPointerEffect *)self settings];
  [settings plasmaRubberbandFactor];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (double)_plasmaLensParallaxFactor
{
  settings = [(UIPointerEffect *)self settings];
  [settings plasmaLensParallaxFactor];
  v4 = v3;

  return v4;
}

- (double)_plasmaParallaxFactor
{
  settings = [(UIPointerEffect *)self settings];
  [settings plasmaParallaxFactor];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  preview = [(UIPointerEffect *)self preview];
  [v4 setPreview:preview];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      preview = [(UIPointerEffect *)self preview];
      preview2 = [(UIPointerEffect *)v5 preview];
      v8 = preview;
      v9 = preview2;
      v10 = v9;
      if (v8 == v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v8 && v9)
        {
          v11 = [v8 isEqual:v9];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  preview = [(UIPointerEffect *)self preview];
  v3 = [preview hash];

  return v3;
}

@end