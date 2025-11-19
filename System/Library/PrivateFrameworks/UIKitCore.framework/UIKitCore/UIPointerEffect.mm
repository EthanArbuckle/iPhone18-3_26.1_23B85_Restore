@interface UIPointerEffect
+ (UIPointerEffect)effectWithPreview:(UITargetedPreview *)preview;
- (BOOL)isEqual:(id)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [v2 highlightEffectSettings];

  return v3;
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
  v3 = [(UIPointerEffect *)self settings];
  [v3 slipFactorX];
  v5 = v4;
  v6 = [(UIPointerEffect *)self settings];
  [v6 slipFactorY];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (double)maxSlip
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 maxSlipPoints];
  v4 = v3;

  return v4;
}

- (double)parallaxAmount
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 parallaxAmount];
  v4 = v3;

  return v4;
}

- (double)scaleUpPoints
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 scaleUpPoints];
  v4 = v3;

  return v4;
}

- (double)defaultPointerCornerRadius
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 defaultPointerCornerRadius];
  v4 = v3;

  return v4;
}

- (double)scaleUpAnimationResponse
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 scaleUpAnimationResponse];
  v4 = v3;

  return v4;
}

- (double)scaleUpAnimationDampingRatio
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 scaleUpAnimationDampingRatio];
  v4 = v3;

  return v4;
}

- (double)dampedAnimationResponse
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 dampedAnimationResponse];
  v4 = v3;

  return v4;
}

- (double)dampedAnimationDampingRatio
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 dampedAnimationDampingRatio];
  v4 = v3;

  return v4;
}

- (double)liftProgressFloor
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 liftForceFloor];
  v4 = v3;

  return v4;
}

- (double)liftForceExponent
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 liftForceExponent];
  v4 = v3;

  return v4;
}

- (UIViewSpringAnimationBehavior)liftProgressSpring
{
  v2 = [(UIPointerEffect *)self settings];
  v3 = [v2 liftProgress];
  v4 = [v3 springAnimationBehavior];

  return v4;
}

- (id)tintColorMatrixProvider
{
  v2 = [(UIPointerEffect *)self options];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__UIPointerEffect_tintColorMatrixProvider__block_invoke;
  aBlock[3] = &__block_descriptor_33_e17___NSValue_16__0Q8l;
  v6 = (v2 & 0x4000) != 0;
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
  v2 = [(UIPointerEffect *)self settings];
  [v2 plasmaRubberbandFactor];
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
  v2 = [(UIPointerEffect *)self settings];
  [v2 plasmaLensParallaxFactor];
  v4 = v3;

  return v4;
}

- (double)_plasmaParallaxFactor
{
  v2 = [(UIPointerEffect *)self settings];
  [v2 plasmaParallaxFactor];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(UIPointerEffect *)self preview];
  [v4 setPreview:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIPointerEffect *)self preview];
      v7 = [(UIPointerEffect *)v5 preview];
      v8 = v6;
      v9 = v7;
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
  v2 = [(UIPointerEffect *)self preview];
  v3 = [v2 hash];

  return v3;
}

@end