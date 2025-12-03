@interface _SUIAShockwaveChromaticAberrationConfiguration
+ (CGRect)donutMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom;
+ (id)chromaticAberrationConfigurationForState:(int64_t)state variant:(int64_t)variant buttonEmanating:(BOOL)emanating normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)self0;
- (CGPoint)aberrationMagnitude;
- (CGRect)donutMaskFrame;
- (double)aberrationBlurRadius;
- (double)aberrationColorBrightnessFactor;
- (double)aberrationColorSaturateAmount;
- (double)aberrationEDRGain;
- (double)aberrationIntensity;
- (double)aberrationMultiplyFactor;
- (void)_setAberrationBlurRadius:(double)radius;
- (void)_setAberrationColorBrightnessFactor:(double)factor;
- (void)_setAberrationColorSaturateAmount:(double)amount;
- (void)_setAberrationEDRGain:(double)gain;
- (void)_setAberrationIntensity:(double)intensity;
- (void)_setAberrationMagnitude:(CGPoint)magnitude;
- (void)_setAberrationMultiplyFactor:(double)factor;
- (void)_setDonutMaskFrame:(CGRect)frame;
@end

@implementation _SUIAShockwaveChromaticAberrationConfiguration

- (void)_setDonutMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
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

- (void)_setAberrationIntensity:(double)intensity
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:intensity];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationIntensity"];
}

- (double)aberrationIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMagnitude:(CGPoint)magnitude
{
  propertyDictionary = self->super._propertyDictionary;
  magnitudeCopy = magnitude;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&magnitudeCopy objCType:"{CGPoint=dd}"];
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

- (void)_setAberrationBlurRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationBlurRadius"];
}

- (double)aberrationBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationEDRGain:(double)gain
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:gain];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationEDRGain"];
}

- (double)aberrationEDRGain
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationEDRGain"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorBrightnessFactor:(double)factor
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorBrightnessFactor"];
}

- (double)aberrationColorBrightnessFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorBrightnessFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMultiplyFactor:(double)factor
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationMultiplyFactor"];
}

- (double)aberrationMultiplyFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationMultiplyFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorSaturateAmount:(double)amount
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorSaturateAmount"];
}

- (double)aberrationColorSaturateAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorSaturateAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (CGRect)donutMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v63 = location.size.height;
  v64 = location.size.width;
  v65 = location.origin.y;
  v66 = location.origin.x;
  settingsCopy = settings;
  chromaticAberrationInitialDonutMask = [settingsCopy chromaticAberrationInitialDonutMask];
  gradientLayerSize = [chromaticAberrationInitialDonutMask gradientLayerSize];
  [gradientLayerSize sizeValue];
  BSRectWithSize();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (state <= 5)
  {
    if (((1 << state) & 0x2C) != 0)
    {
      v27 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
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
        [settingsCopy finalFitVsDiameterRatioLongEdgeForIdiom:idiom];
      }

      else
      {
        [settingsCopy finalFitVsDiameterRatioShortEdgeForIdiom:idiom];
      }

      BSRectWithSize();
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v37, v38, v39, v40, 0.0, v66, v65, v41, v66, v65, v64, v63, x, y, width, height);
      v22 = v42;
      v24 = v43;
      v26 = v44;
    }

    else if (((1 << state) & 0x11) != 0 || variant)
    {
      [settingsCopy donutMaskInitialEdgeOutsetProportion];
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v20, v22, v24, v26, v30, v31, v32, v33, v66, v65, v64, v63, x, y, width, height);
      v22 = v34;
      v24 = v35;
      v26 = v36;
    }

    else
    {
      [self donutMaskRectForState:0 variant:0 normalizedStartLocation:settingsCopy settings:idiom inBounds:v66 idiom:{v65, v64, v63, x, y, width, height}];
      v61 = v49;
      v62 = v50;
      [self donutMaskRectForState:2 variant:0 normalizedStartLocation:settingsCopy settings:idiom inBounds:v66 idiom:{v65, v64, v63, x, y, width, height}];
      v52 = v51;
      [settingsCopy captureHintInterpolationProgress];
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

+ (id)chromaticAberrationConfigurationForState:(int64_t)state variant:(int64_t)variant buttonEmanating:(BOOL)emanating normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)self0
{
  lightCopy = light;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15 = location.size.height;
  v16 = location.size.width;
  v17 = location.origin.y;
  v18 = location.origin.x;
  settingsCopy = settings;
  v23 = objc_alloc_init(self);
  donutMaskPositionAnimationSettings = [settingsCopy donutMaskPositionAnimationSettings];
  [settingsCopy aberrationMagnitudeX];
  v65 = v25;
  [settingsCopy aberrationMagnitudeY];
  v64 = v26;
  v27 = SUIAScreenEdgeForNormalizedButtonRect();
  memset(&v68, 0, sizeof(v68));
  SUIACATransform3DFromNominalRightEdgeToEdge(v27, &v68);
  memset(&v67, 0, sizeof(v67));
  v66 = v68;
  CATransform3DGetAffineTransform(&v67, &v66);
  [v23 _setAberrationMagnitude:{vaddq_f64(*&v67.tx, vmlaq_n_f64(vmulq_n_f64(*&v67.c, v64), *&v67.a, v65))}];
  [settingsCopy aberrationBlurRadius];
  [v23 _setAberrationBlurRadius:?];
  aberrationUseEDR = [settingsCopy aberrationUseEDR];
  v29 = 0.0;
  v30 = 0.0;
  if (aberrationUseEDR)
  {
    [settingsCopy aberrationEDRGain];
  }

  [v23 _setAberrationEDRGain:v30];
  if ([settingsCopy aberrationUseColorBrightness])
  {
    [settingsCopy aberrationColorBrightness];
    v29 = v31;
  }

  [v23 _setAberrationColorBrightnessFactor:v29];
  aberrationUseColorMatrixMultiply = [settingsCopy aberrationUseColorMatrixMultiply];
  v33 = 0.0;
  v34 = 0.0;
  if (aberrationUseColorMatrixMultiply)
  {
    [settingsCopy aberrationColorMatrixMultiplyFactor];
  }

  [v23 _setAberrationMultiplyFactor:v34];
  if ([settingsCopy aberrationUseColorSaturate])
  {
    [settingsCopy aberrationColorSaturateAmount];
    v33 = v35;
  }

  [v23 _setAberrationColorSaturateAmount:v33];
  [v23 _setAberrationIntensity:1.0];
  if (state <= 5)
  {
    if (((1 << state) & 0x2C) != 0)
    {
      if (variant)
      {
        v36 = donutMaskPositionAnimationSettings;
      }

      else
      {
        v36 = [donutMaskPositionAnimationSettings copy];

        if (lightCopy)
        {
          [settingsCopy visionIntelligenceHintRetargetImpulse];
        }

        else
        {
          [settingsCopy captureHintRetargetImpulse];
        }

        v51 = v43;
        [v36 retargetImpulse];
        [v36 setRetargetImpulse:v51 + v52];
      }

      [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
      [v23 _setDonutMaskFrame:?];
      [settingsCopy donutMaskEndTransitionDelay];
      v54 = v53;
      v50 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
      v55 = [v36 copy];
      [v23 _setBehaviorSettings:v55 forKeypath:@"donutMaskFrame"];

      locations = [v50 locations];
      [v23 _setDonutGradientLocations:locations];

      v57 = [v36 copy];
      [v23 _setBehaviorSettings:v57 forKeypath:@"donutGradientLocations"];

      colors = [v50 colors];
      [v23 _setDonutGradientColors:colors];

      v59 = [v36 copy];
      [v23 _setBehaviorSettings:v59 forKeypath:@"donutGradientColors"];

      [v23 _setAberrationIntensity:0.0];
      if (state == 5)
      {
        [settingsCopy abberationCancelledFadeOutAnimationSettings];
      }

      else
      {
        [settingsCopy abberationFadeOutAnimationSettings];
      }
      v60 = ;
      v61 = [v60 copy];
      [v23 _setBehaviorSettings:v61 forKeypath:@"aberrationIntensity"];

      if (state != 5)
      {
        [v23 _setDelay:@"donutMaskFrame" forApplicationOfKeypath:v54];
        [v23 _setDelay:@"donutGradientLocations" forApplicationOfKeypath:v54];
        [v23 _setDelay:@"donutGradientColors" forApplicationOfKeypath:v54];
        [settingsCopy aberrationFadeOutDelay];
        [v23 _setDelay:@"aberrationIntensity" forApplicationOfKeypath:?];
      }
    }

    else
    {
      if (((1 << state) & 0x11) != 0)
      {
        [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        chromaticAberrationInitialDonutMask = [settingsCopy chromaticAberrationInitialDonutMask];
        locations2 = [chromaticAberrationInitialDonutMask locations];
        [v23 _setDonutGradientLocations:locations2];

        chromaticAberrationInitialDonutMask2 = [settingsCopy chromaticAberrationInitialDonutMask];
        colors2 = [chromaticAberrationInitialDonutMask2 colors];
        [v23 _setDonutGradientColors:colors2];

        if (state != 4)
        {
          goto LABEL_31;
        }

        v41 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v41 forKeypath:@"donutMaskFrame"];

        chromaticAberrationInitialDonutMask4 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:chromaticAberrationInitialDonutMask4 forKeypath:@"donutGradientLocations"];
      }

      else
      {
        if (!variant)
        {
          captureHintAnimationSettings = [settingsCopy captureHintAnimationSettings];

          donutMaskPositionAnimationSettings = captureHintAnimationSettings;
        }

        [objc_opt_class() donutMaskRectForState:1 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        v45 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v45 forKeypath:@"donutMaskFrame"];

        chromaticAberrationInitialDonutMask3 = [settingsCopy chromaticAberrationInitialDonutMask];
        locations3 = [chromaticAberrationInitialDonutMask3 locations];
        [v23 _setDonutGradientLocations:locations3];

        v48 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v48 forKeypath:@"donutGradientLocations"];

        chromaticAberrationInitialDonutMask4 = [settingsCopy chromaticAberrationInitialDonutMask];
        colors3 = [chromaticAberrationInitialDonutMask4 colors];
        [v23 _setDonutGradientColors:colors3];
      }

      v50 = [donutMaskPositionAnimationSettings copy];
      [v23 _setBehaviorSettings:v50 forKeypath:@"donutGradientColors"];
      v36 = donutMaskPositionAnimationSettings;
    }

    donutMaskPositionAnimationSettings = v36;
  }

LABEL_31:

  return v23;
}

@end