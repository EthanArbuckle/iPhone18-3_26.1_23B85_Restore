@interface _SUIAShockwaveChromaticAberrationConfiguration
+ (CGRect)donutMaskRectForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 inBounds:(CGRect)a7 idiom:(int64_t)a8;
+ (id)chromaticAberrationConfigurationForState:(int64_t)a3 variant:(int64_t)a4 buttonEmanating:(BOOL)a5 normalizedStartLocation:(CGRect)a6 settings:(id)a7 bounds:(CGRect)a8 idiom:(int64_t)a9 usesIntelligentFillLight:(BOOL)a10;
- (CGPoint)aberrationMagnitude;
- (CGRect)donutMaskFrame;
- (double)aberrationBlurRadius;
- (double)aberrationColorBrightnessFactor;
- (double)aberrationColorSaturateAmount;
- (double)aberrationEDRGain;
- (double)aberrationIntensity;
- (double)aberrationMultiplyFactor;
- (void)_setAberrationBlurRadius:(double)a3;
- (void)_setAberrationColorBrightnessFactor:(double)a3;
- (void)_setAberrationColorSaturateAmount:(double)a3;
- (void)_setAberrationEDRGain:(double)a3;
- (void)_setAberrationIntensity:(double)a3;
- (void)_setAberrationMagnitude:(CGPoint)a3;
- (void)_setAberrationMultiplyFactor:(double)a3;
- (void)_setDonutMaskFrame:(CGRect)a3;
@end

@implementation _SUIAShockwaveChromaticAberrationConfiguration

- (void)_setDonutMaskFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"donutMaskFrame"];
}

- (CGRect)donutMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"donutMaskFrame"];
  [v2 getValue:&v7 size:32];

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setAberrationIntensity:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationIntensity"];
}

- (double)aberrationIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMagnitude:(CGPoint)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationMagnitude"];
}

- (CGPoint)aberrationMagnitude
{
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationMagnitude"];
  [v2 getValue:&v5 size:16];

  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setAberrationBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationBlurRadius"];
}

- (double)aberrationBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationEDRGain:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationEDRGain"];
}

- (double)aberrationEDRGain
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationEDRGain"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorBrightnessFactor:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorBrightnessFactor"];
}

- (double)aberrationColorBrightnessFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorBrightnessFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMultiplyFactor:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationMultiplyFactor"];
}

- (double)aberrationMultiplyFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationMultiplyFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorSaturateAmount:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorSaturateAmount"];
}

- (double)aberrationColorSaturateAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorSaturateAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (CGRect)donutMaskRectForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 inBounds:(CGRect)a7 idiom:(int64_t)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v63 = a5.size.height;
  v64 = a5.size.width;
  v65 = a5.origin.y;
  v66 = a5.origin.x;
  v16 = a6;
  v17 = [v16 chromaticAberrationInitialDonutMask];
  v18 = [v17 gradientLayerSize];
  [v18 sizeValue];
  BSRectWithSize();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (a3 <= 5)
  {
    if (((1 << a3) & 0x2C) != 0)
    {
      v27 = [v16 chromaticAberrationFinalDonutMaskForIdiom:a8];
      [v27 maximumExtentOfZeroOpacity];
      UIRectGetCenter();
      SUIAExpandNormalizedPoint(x, y, width, height, v28);
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = height;
      CGRectGetMinX(v67);
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      CGRectGetMinY(v68);
      UIDistanceBetweenPoints();
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      CGRectGetMaxX(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      CGRectGetMinY(v70);
      UIDistanceBetweenPoints();
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      CGRectGetMinX(v71);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      CGRectGetMaxY(v72);
      UIDistanceBetweenPoints();
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      CGRectGetMaxX(v73);
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      CGRectGetMaxY(v74);
      UIDistanceBetweenPoints();
      v29 = SUIAScreenEdgeForNormalizedButtonRect();
      if (v29 == 8 || v29 == 2)
      {
        [v16 finalFitVsDiameterRatioLongEdgeForIdiom:a8];
      }

      else
      {
        [v16 finalFitVsDiameterRatioShortEdgeForIdiom:a8];
      }

      BSRectWithSize();
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v37, v38, v39, v40, 0.0, v66, v65, v41, v66, v65, v64, v63, x, y, width, height);
      v22 = v42;
      v24 = v43;
      v26 = v44;
    }

    else if (((1 << a3) & 0x11) != 0 || a4)
    {
      [v16 donutMaskInitialEdgeOutsetProportion];
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v20, v22, v24, v26, v30, v31, v32, v33, v66, v65, v64, v63, x, y, width, height);
      v22 = v34;
      v24 = v35;
      v26 = v36;
    }

    else
    {
      [a1 donutMaskRectForState:0 variant:0 normalizedStartLocation:v16 settings:a8 inBounds:v66 idiom:{v65, v64, v63, x, y, width, height}];
      v61 = v49;
      v62 = v50;
      [a1 donutMaskRectForState:2 variant:0 normalizedStartLocation:v16 settings:a8 inBounds:v66 idiom:{v65, v64, v63, x, y, width, height}];
      v52 = v51;
      [v16 captureHintInterpolationProgress];
      v54 = v53;
      v24 = v61 + v53 * (v52 - v61);
      v26 = v62 + v53 * (v52 - v62);
      UIRectGetCenter();
      v56 = v55;
      v58 = v57;
      UIRectGetCenter();
      v20 = v56 + v54 * (v59 - v56) - v24 * 0.5;
      v22 = v58 + v54 * (v60 - v58) - v26 * 0.5;
    }
  }

  v45 = v20;
  v46 = v22;
  v47 = v24;
  v48 = v26;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

+ (id)chromaticAberrationConfigurationForState:(int64_t)a3 variant:(int64_t)a4 buttonEmanating:(BOOL)a5 normalizedStartLocation:(CGRect)a6 settings:(id)a7 bounds:(CGRect)a8 idiom:(int64_t)a9 usesIntelligentFillLight:(BOOL)a10
{
  v10 = a10;
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v15 = a6.size.height;
  v16 = a6.size.width;
  v17 = a6.origin.y;
  v18 = a6.origin.x;
  v22 = a7;
  v23 = objc_alloc_init(a1);
  v24 = [v22 donutMaskPositionAnimationSettings];
  [v22 aberrationMagnitudeX];
  v65 = v25;
  [v22 aberrationMagnitudeY];
  v64 = v26;
  v27 = SUIAScreenEdgeForNormalizedButtonRect();
  memset(&v68, 0, sizeof(v68));
  SUIACATransform3DFromNominalRightEdgeToEdge(v27, &v68);
  memset(&v67, 0, sizeof(v67));
  v66 = v68;
  CATransform3DGetAffineTransform(&v67, &v66);
  [v23 _setAberrationMagnitude:{vaddq_f64(*&v67.tx, vmlaq_n_f64(vmulq_n_f64(*&v67.c, v64), *&v67.a, v65))}];
  [v22 aberrationBlurRadius];
  [v23 _setAberrationBlurRadius:?];
  v28 = [v22 aberrationUseEDR];
  v29 = 0.0;
  v30 = 0.0;
  if (v28)
  {
    [v22 aberrationEDRGain];
  }

  [v23 _setAberrationEDRGain:v30];
  if ([v22 aberrationUseColorBrightness])
  {
    [v22 aberrationColorBrightness];
    v29 = v31;
  }

  [v23 _setAberrationColorBrightnessFactor:v29];
  v32 = [v22 aberrationUseColorMatrixMultiply];
  v33 = 0.0;
  v34 = 0.0;
  if (v32)
  {
    [v22 aberrationColorMatrixMultiplyFactor];
  }

  [v23 _setAberrationMultiplyFactor:v34];
  if ([v22 aberrationUseColorSaturate])
  {
    [v22 aberrationColorSaturateAmount];
    v33 = v35;
  }

  [v23 _setAberrationColorSaturateAmount:v33];
  [v23 _setAberrationIntensity:1.0];
  if (a3 <= 5)
  {
    if (((1 << a3) & 0x2C) != 0)
    {
      if (a4)
      {
        v36 = v24;
      }

      else
      {
        v36 = [v24 copy];

        if (v10)
        {
          [v22 visionIntelligenceHintRetargetImpulse];
        }

        else
        {
          [v22 captureHintRetargetImpulse];
        }

        v51 = v43;
        [v36 retargetImpulse];
        [v36 setRetargetImpulse:v51 + v52];
      }

      [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v22 settings:a9 inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
      [v23 _setDonutMaskFrame:?];
      [v22 donutMaskEndTransitionDelay];
      v54 = v53;
      v50 = [v22 chromaticAberrationFinalDonutMaskForIdiom:a9];
      v55 = [v36 copy];
      [v23 _setBehaviorSettings:v55 forKeypath:@"donutMaskFrame"];

      v56 = [v50 locations];
      [v23 _setDonutGradientLocations:v56];

      v57 = [v36 copy];
      [v23 _setBehaviorSettings:v57 forKeypath:@"donutGradientLocations"];

      v58 = [v50 colors];
      [v23 _setDonutGradientColors:v58];

      v59 = [v36 copy];
      [v23 _setBehaviorSettings:v59 forKeypath:@"donutGradientColors"];

      [v23 _setAberrationIntensity:0.0];
      if (a3 == 5)
      {
        [v22 abberationCancelledFadeOutAnimationSettings];
      }

      else
      {
        [v22 abberationFadeOutAnimationSettings];
      }
      v60 = ;
      v61 = [v60 copy];
      [v23 _setBehaviorSettings:v61 forKeypath:@"aberrationIntensity"];

      if (a3 != 5)
      {
        [v23 _setDelay:@"donutMaskFrame" forApplicationOfKeypath:v54];
        [v23 _setDelay:@"donutGradientLocations" forApplicationOfKeypath:v54];
        [v23 _setDelay:@"donutGradientColors" forApplicationOfKeypath:v54];
        [v22 aberrationFadeOutDelay];
        [v23 _setDelay:@"aberrationIntensity" forApplicationOfKeypath:?];
      }
    }

    else
    {
      if (((1 << a3) & 0x11) != 0)
      {
        [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v22 settings:a9 inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        v37 = [v22 chromaticAberrationInitialDonutMask];
        v38 = [v37 locations];
        [v23 _setDonutGradientLocations:v38];

        v39 = [v22 chromaticAberrationInitialDonutMask];
        v40 = [v39 colors];
        [v23 _setDonutGradientColors:v40];

        if (a3 != 4)
        {
          goto LABEL_31;
        }

        v41 = [v24 copy];
        [v23 _setBehaviorSettings:v41 forKeypath:@"donutMaskFrame"];

        v42 = [v24 copy];
        [v23 _setBehaviorSettings:v42 forKeypath:@"donutGradientLocations"];
      }

      else
      {
        if (!a4)
        {
          v44 = [v22 captureHintAnimationSettings];

          v24 = v44;
        }

        [objc_opt_class() donutMaskRectForState:1 variant:a4 normalizedStartLocation:v22 settings:a9 inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        v45 = [v24 copy];
        [v23 _setBehaviorSettings:v45 forKeypath:@"donutMaskFrame"];

        v46 = [v22 chromaticAberrationInitialDonutMask];
        v47 = [v46 locations];
        [v23 _setDonutGradientLocations:v47];

        v48 = [v24 copy];
        [v23 _setBehaviorSettings:v48 forKeypath:@"donutGradientLocations"];

        v42 = [v22 chromaticAberrationInitialDonutMask];
        v49 = [v42 colors];
        [v23 _setDonutGradientColors:v49];
      }

      v50 = [v24 copy];
      [v23 _setBehaviorSettings:v50 forKeypath:@"donutGradientColors"];
      v36 = v24;
    }

    v24 = v36;
  }

LABEL_31:

  return v23;
}

@end