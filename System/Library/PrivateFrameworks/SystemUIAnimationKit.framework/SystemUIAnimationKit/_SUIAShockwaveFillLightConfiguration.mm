@interface _SUIAShockwaveFillLightConfiguration
+ (id)fillLightConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)light;
- (CATransform3D)sideLightMaskTransform;
- (CGRect)circleMaskFrame;
- (CGRect)sideLightMaskFrame;
- (double)circleMaskInnerRadius;
- (double)circleMaskOuterRadius;
- (double)circleMaskSourceBlurRadius;
- (double)circleMaskSourceRadius;
- (double)lightColorBrightnessAmount;
- (double)lightColorContrastAmount;
- (double)lightColorSaturateAmount;
- (double)lightIntensity;
- (double)whiteValue;
- (int64_t)lightType;
- (void)_setCircleMaskFrame:(CGRect)frame;
- (void)_setCircleMaskInnerRadius:(double)radius;
- (void)_setCircleMaskOuterRadius:(double)radius;
- (void)_setCircleMaskSourceBlurRadius:(double)radius;
- (void)_setCircleMaskSourceRadius:(double)radius;
- (void)_setLightColorBrightnessAmount:(double)amount;
- (void)_setLightColorContrastAmount:(double)amount;
- (void)_setLightColorSaturateAmount:(double)amount;
- (void)_setLightIntensity:(double)intensity;
- (void)_setLightType:(int64_t)type;
- (void)_setSideLightMaskFrame:(CGRect)frame;
- (void)_setSideLightMaskTransform:(CATransform3D *)transform;
- (void)_setWhiteValue:(double)value;
@end

@implementation _SUIAShockwaveFillLightConfiguration

- (void)_setLightType:(int64_t)type
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightType"];
}

- (int64_t)lightType
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightType"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setWhiteValue:(double)value
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"whiteValue"];
}

- (double)whiteValue
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"whiteValue"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightIntensity:(double)intensity
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:intensity];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightIntensity"];
}

- (double)lightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorBrightnessAmount:(double)amount
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorBrightnessAmount"];
}

- (double)lightColorBrightnessAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorBrightnessAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorSaturateAmount:(double)amount
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorSaturateAmount"];
}

- (double)lightColorSaturateAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorSaturateAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorContrastAmount:(double)amount
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorContrastAmount"];
}

- (double)lightColorContrastAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorContrastAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setSideLightMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"sideLightMaskFrame"];
}

- (CGRect)sideLightMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"sideLightMaskFrame"];
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

- (void)_setSideLightMaskTransform:(CATransform3D *)transform
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = *&transform->m33;
  v9[4] = *&transform->m31;
  v9[5] = v4;
  v5 = *&transform->m43;
  v9[6] = *&transform->m41;
  v9[7] = v5;
  v6 = *&transform->m13;
  v9[0] = *&transform->m11;
  v9[1] = v6;
  v7 = *&transform->m23;
  v9[2] = *&transform->m21;
  v9[3] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v9];
  [(NSMutableDictionary *)propertyDictionary setObject:v8 forKey:@"sideLightMaskTransform"];
}

- (CATransform3D)sideLightMaskTransform
{
  v4 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"sideLightMaskTransform"];
  if (v4)
  {
    v6 = v4;
    [v4 CATransform3DValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)_setCircleMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskFrame"];
}

- (CGRect)circleMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskFrame"];
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

- (void)_setCircleMaskInnerRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskInnerRadius"];
}

- (double)circleMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskOuterRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskOuterRadius"];
}

- (double)circleMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskSourceRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskSourceRadius"];
}

- (double)circleMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskSourceBlurRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskSourceBlurRadius"];
}

- (double)circleMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (id)fillLightConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)light
{
  lightCopy = light;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = location.size.height;
  v15 = location.size.width;
  v16 = location.origin.y;
  v17 = location.origin.x;
  settingsCopy = settings;
  v21 = objc_alloc_init(_SUIAShockwaveFillLightConfiguration);
  if ((variant - 1) < 2)
  {
    goto LABEL_8;
  }

  if (variant == 3)
  {
    goto LABEL_23;
  }

  if (variant)
  {
    goto LABEL_9;
  }

  captureFillLightType = [settingsCopy captureFillLightType];
  switch(captureFillLightType)
  {
    case 0:
LABEL_23:
      v53 = 0;
      goto LABEL_36;
    case 1:
LABEL_8:
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightType:1];
      break;
    case 2:
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightType:2];
      [settingsCopy captureFillWhiteValue];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setWhiteValue:?];
      break;
  }

LABEL_9:
  colorFillInitialCircleMask = [settingsCopy colorFillInitialCircleMask];
  gradientLayerSize = [colorFillInitialCircleMask gradientLayerSize];
  [gradientLayerSize sizeValue];
  BSRectWithSize();

  donutMaskPositionAnimationSettings = [settingsCopy donutMaskPositionAnimationSettings];
  v155 = v15;
  v26 = v14;
  v27 = SUIAScreenEdgeForNormalizedButtonRect();
  memset(&v163, 0, sizeof(v163));
  SUIACATransform3DFromNominalRightEdgeToEdge(v27, &v163);
  v165.origin.x = x;
  v165.origin.y = y;
  v165.size.width = width;
  v165.size.height = height;
  v28 = CGRectGetWidth(v165);
  v166.origin.x = x;
  v166.origin.y = y;
  v166.size.width = width;
  v166.size.height = height;
  v29 = CGRectGetHeight(v166);
  if (v28 < v29)
  {
    v29 = v28;
  }

  v162 = v163;
  CATransform3DScale(&v163, &v162, v29 / 393.0, v29 / 393.0, 1.0);
  v162 = v163;
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setSideLightMaskTransform:&v162];
  v30 = MEMORY[0x277D755B8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v30 imageNamed:@"topAndBottomMask" inBundle:v31 compatibleWithTraitCollection:0];

  [v32 size];
  v34 = v33;
  [v32 size];
  v36 = [v32 resizableImageWithCapInsets:0 resizingMode:{v35 * 0.5 + -1.0, 0.0, v35 * 0.5 + -1.0, v34 + -1.0}];

  v158 = v36;
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setSideLightMaskImage:v36];
  [settingsCopy fillLightInitialIntensity];
  if (variant || ([settingsCopy fillLightCaptureInitialIntensity], !lightCopy))
  {
    v153 = v37;
    v39 = 0;
  }

  else
  {
    [settingsCopy visionIntelligenceHintFillLightInitialIntensity];
    v153 = v38;
    v39 = 1;
  }

  v40 = v26;
  lightIntensityAnimationSettings = [settingsCopy lightIntensityAnimationSettings];
  lightIntensityCancelledAnimationSettings = [settingsCopy lightIntensityCancelledAnimationSettings];
  [settingsCopy fillLightColorBrightnessAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorBrightnessAmount:?];
  [settingsCopy fillLightColorSaturateAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorSaturateAmount:?];
  [settingsCopy fillLightColorContrastAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorContrastAmount:?];
  if (state > 5)
  {
    colorFillFinalCircleMask = colorFillInitialCircleMask;
  }

  else
  {
    if (((1 << state) & 0x2C) != 0)
    {
      v42 = lightIntensityCancelledAnimationSettings;
      if (!variant)
      {
        if (lightCopy)
        {
          [settingsCopy visionIntelligenceHintRetargetImpulse];
        }

        else
        {
          [settingsCopy captureHintRetargetImpulse];
        }

        v55 = v43;
        v56 = [donutMaskPositionAnimationSettings copy];

        [v56 retargetImpulse];
        [v56 setRetargetImpulse:v55 + v57];
        v58 = [lightIntensityAnimationSettings copy];

        [v58 retargetImpulse];
        [v58 setRetargetImpulse:v55 + v59];
        v42 = [lightIntensityCancelledAnimationSettings copy];

        [v42 retargetImpulse];
        [v42 setRetargetImpulse:v55 + v60];
        lightIntensityAnimationSettings = v58;
        donutMaskPositionAnimationSettings = v56;
        v40 = v26;
      }

      colorFillFinalCircleMask = [settingsCopy colorFillFinalCircleMask];

      [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v17 idiom:{v16, v155, v40, x, y, width, height}];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
      [v69 radiusOfMaximumOpacity];
      v71 = v70;

      [colorFillFinalCircleMask innerRadius];
      v73 = v71 / v72;
      v167.origin.x = v62;
      v167.origin.y = v64;
      v167.size.width = v66;
      v167.size.height = v68;
      v161 = v73 * CGRectGetWidth(v167);
      BSRectWithSize();
      UIRectGetCenter();
      BSRectCenteredAboutPoint();
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskFrame:?];
      [settingsCopy donutMaskEndTransitionDelay];
      v75 = v74;
      v76 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v76 forKeypath:@"circleMaskFrame"];

      locations = [colorFillFinalCircleMask locations];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:locations];

      v78 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v78 forKeypath:@"circleGradientLocations"];

      colors = [colorFillFinalCircleMask colors];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:colors];

      v80 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v80 forKeypath:@"circleGradientColors"];

      gradientLayerSize2 = [colorFillFinalCircleMask gradientLayerSize];
      [gradientLayerSize2 width];
      v83 = v161 / v82;

      [colorFillFinalCircleMask majorDiameter];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v83 * (v84 * 0.5)];
      v85 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v85 forKeypath:@"circleMaskSourceRadius"];

      [colorFillFinalCircleMask blurRadius];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
      v86 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v86 forKeypath:@"circleMaskSourceBlurRadius"];

      [settingsCopy fillLightFinalIntensity];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:?];
      if (state != 5)
      {
        v88 = [lightIntensityAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v88 forKeypath:@"lightIntensity"];

        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskFrame" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleGradientLocations" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleGradientColors" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskSourceRadius" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskSourceBlurRadius" forApplicationOfKeypath:v75];
        [settingsCopy fillLightIntensityFinalStateDelay];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"lightIntensity" forApplicationOfKeypath:?];
        goto LABEL_34;
      }

LABEL_32:
      v87 = [v42 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v87 forKeypath:@"lightIntensity"];

LABEL_34:
      v54 = v158;
      goto LABEL_35;
    }

    if (((1 << state) & 0x11) == 0)
    {
      if (variant)
      {
        v54 = v158;
      }

      else
      {
        captureHintAnimationSettings = [settingsCopy captureHintAnimationSettings];

        v54 = v158;
        if (lightCopy)
        {
          donutMaskPositionAnimationSettings = [settingsCopy visionIntelligenceHintAnimationSettings];

          visionIntelligenceHintAnimationSettings = [settingsCopy visionIntelligenceHintAnimationSettings];

          lightIntensityAnimationSettings = visionIntelligenceHintAnimationSettings;
        }

        else
        {
          donutMaskPositionAnimationSettings = captureHintAnimationSettings;
        }
      }

      colorFillFinalCircleMask = [settingsCopy colorFillInitialCircleMask];

      v108 = objc_opt_class();
      if (v39)
      {
        [v108 donutMaskRectForState:0 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        v154 = v109;
        v111 = v110;
        [objc_opt_class() donutMaskRectForState:2 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        v113 = v112;
        [settingsCopy visionIntelligenceHintInterpolationProgress];
        v115 = v114;
        v156 = v111 + v114 * (v113 - v111);
        v116 = v154 + v114 * (v113 - v154);
        UIRectGetCenter();
        v118 = v117;
        v120 = v119;
        UIRectGetCenter();
        v123 = v118 + v115 * (v121 - v118) - v156 * 0.5;
        v159 = v120 + v115 * (v122 - v120) - v116 * 0.5;
        v124 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
        [v124 radiusOfMaximumOpacity];
        v126 = v125;

        [colorFillFinalCircleMask innerRadius];
        v128 = v126 / v127;
        v170.origin.x = v123;
        v170.origin.y = v159;
        v170.size.width = v156;
        v170.size.height = v116;
        v129 = v128 * CGRectGetWidth(v170);
        BSRectWithSize();
        UIRectGetCenter();
        BSRectCenteredAboutPoint();
        v131 = v130;
        v133 = v132;
        v135 = v134;
        v137 = v136;
        gradientLayerSize3 = [colorFillFinalCircleMask gradientLayerSize];
        [gradientLayerSize3 width];
        v140 = v129 / v139;
      }

      else
      {
        [v108 donutMaskRectForState:1 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        UIRectGetCenter();
        BSRectCenteredAboutPoint();
        v131 = v141;
        v133 = v142;
        v135 = v143;
        v137 = v144;
        v140 = 1.0;
      }

      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskFrame:v131, v133, v135, v137];
      v145 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v145 forKeypath:@"circleMaskFrame"];

      locations2 = [colorFillFinalCircleMask locations];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:locations2];

      v147 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v147 forKeypath:@"circleGradientLocations"];

      colors2 = [colorFillFinalCircleMask colors];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:colors2];

      v149 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v149 forKeypath:@"circleGradientColors"];

      [colorFillFinalCircleMask majorDiameter];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v140 * (v150 * 0.5)];
      v151 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v151 forKeypath:@"circleMaskSourceRadius"];

      [colorFillFinalCircleMask blurRadius];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
      v152 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v152 forKeypath:@"circleMaskSourceBlurRadius"];

      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:v153];
      v42 = lightIntensityCancelledAnimationSettings;
      if (variant || !lightCopy)
      {
        [settingsCopy fillLightIntensityFinalStateDelay];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"lightIntensity" forApplicationOfKeypath:?];
      }

      goto LABEL_35;
    }

    colorFillFinalCircleMask = [settingsCopy colorFillInitialCircleMask];

    [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
    UIRectGetCenter();
    BSRectCenteredAboutPoint();
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskFrame:?];
    locations3 = [colorFillFinalCircleMask locations];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:locations3];

    colors3 = [colorFillFinalCircleMask colors];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:colors3];

    [colorFillFinalCircleMask majorDiameter];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v47 * 0.5];
    [colorFillFinalCircleMask blurRadius];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
    if (state == 4)
    {
      [settingsCopy fillLightFinalIntensity];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:?];
      v48 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v48 forKeypath:@"circleMaskFrame"];

      v49 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v49 forKeypath:@"circleGradientLocations"];

      v50 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v50 forKeypath:@"circleGradientColors"];

      v51 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v51 forKeypath:@"circleMaskSourceRadius"];

      v52 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v52 forKeypath:@"circleMaskSourceBlurRadius"];

      v42 = lightIntensityCancelledAnimationSettings;
      goto LABEL_32;
    }

    [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:v153];
  }

  v42 = lightIntensityCancelledAnimationSettings;
  v54 = v158;
LABEL_35:
  [(_SUIAShockwaveFillLightConfiguration *)v21 circleMaskFrame];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  [colorFillFinalCircleMask innerRadius];
  v98 = v97;
  v168.origin.x = v90;
  v168.origin.y = v92;
  v168.size.width = v94;
  v168.size.height = v96;
  v99 = v98 * CGRectGetWidth(v168) * 0.5;
  [colorFillFinalCircleMask outerRadius];
  v101 = v100;
  v169.origin.x = v90;
  v169.origin.y = v92;
  v169.size.width = v94;
  v169.size.height = v96;
  v102 = v101 * CGRectGetWidth(v169) * 0.5;
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskInnerRadius:v99];
  v103 = [(_SUIAAbstractDictionaryBackedConfiguration *)v21 behaviorSettingsForKeypath:@"circleGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v103 forKeypath:@"circleMaskInnerRadius"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 delayForApplicationOfKeypath:@"circleGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskInnerRadius" forApplicationOfKeypath:?];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskOuterRadius:v102];
  v104 = [(_SUIAAbstractDictionaryBackedConfiguration *)v21 behaviorSettingsForKeypath:@"circleGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v104 forKeypath:@"circleMaskOuterRadius"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 delayForApplicationOfKeypath:@"circleGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskOuterRadius" forApplicationOfKeypath:?];
  v53 = v21;

LABEL_36:

  return v53;
}

@end