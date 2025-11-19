@interface _SUIAShockwaveFillLightConfiguration
+ (id)fillLightConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8 usesIntelligentFillLight:(BOOL)a9;
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
- (void)_setCircleMaskFrame:(CGRect)a3;
- (void)_setCircleMaskInnerRadius:(double)a3;
- (void)_setCircleMaskOuterRadius:(double)a3;
- (void)_setCircleMaskSourceBlurRadius:(double)a3;
- (void)_setCircleMaskSourceRadius:(double)a3;
- (void)_setLightColorBrightnessAmount:(double)a3;
- (void)_setLightColorContrastAmount:(double)a3;
- (void)_setLightColorSaturateAmount:(double)a3;
- (void)_setLightIntensity:(double)a3;
- (void)_setLightType:(int64_t)a3;
- (void)_setSideLightMaskFrame:(CGRect)a3;
- (void)_setSideLightMaskTransform:(CATransform3D *)a3;
- (void)_setWhiteValue:(double)a3;
@end

@implementation _SUIAShockwaveFillLightConfiguration

- (void)_setLightType:(int64_t)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightType"];
}

- (int64_t)lightType
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightType"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setWhiteValue:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"whiteValue"];
}

- (double)whiteValue
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"whiteValue"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightIntensity:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightIntensity"];
}

- (double)lightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorBrightnessAmount:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorBrightnessAmount"];
}

- (double)lightColorBrightnessAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorBrightnessAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorSaturateAmount:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorSaturateAmount"];
}

- (double)lightColorSaturateAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorSaturateAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setLightColorContrastAmount:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"lightColorContrastAmount"];
}

- (double)lightColorContrastAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"lightColorContrastAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setSideLightMaskFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
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

- (void)_setSideLightMaskTransform:(CATransform3D *)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = *&a3->m33;
  v9[4] = *&a3->m31;
  v9[5] = v4;
  v5 = *&a3->m43;
  v9[6] = *&a3->m41;
  v9[7] = v5;
  v6 = *&a3->m13;
  v9[0] = *&a3->m11;
  v9[1] = v6;
  v7 = *&a3->m23;
  v9[2] = *&a3->m21;
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

- (void)_setCircleMaskFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
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

- (void)_setCircleMaskInnerRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskInnerRadius"];
}

- (double)circleMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskOuterRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskOuterRadius"];
}

- (double)circleMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskSourceRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskSourceRadius"];
}

- (double)circleMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setCircleMaskSourceBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"circleMaskSourceBlurRadius"];
}

- (double)circleMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"circleMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (id)fillLightConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8 usesIntelligentFillLight:(BOOL)a9
{
  v160 = a9;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v14 = a5.size.height;
  v15 = a5.size.width;
  v16 = a5.origin.y;
  v17 = a5.origin.x;
  v20 = a6;
  v21 = objc_alloc_init(_SUIAShockwaveFillLightConfiguration);
  if ((a4 - 1) < 2)
  {
    goto LABEL_8;
  }

  if (a4 == 3)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    goto LABEL_9;
  }

  v22 = [v20 captureFillLightType];
  switch(v22)
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
      [v20 captureFillWhiteValue];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setWhiteValue:?];
      break;
  }

LABEL_9:
  v23 = [v20 colorFillInitialCircleMask];
  v24 = [v23 gradientLayerSize];
  [v24 sizeValue];
  BSRectWithSize();

  v25 = [v20 donutMaskPositionAnimationSettings];
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
  [v20 fillLightInitialIntensity];
  if (a4 || ([v20 fillLightCaptureInitialIntensity], !v160))
  {
    v153 = v37;
    v39 = 0;
  }

  else
  {
    [v20 visionIntelligenceHintFillLightInitialIntensity];
    v153 = v38;
    v39 = 1;
  }

  v40 = v26;
  v41 = [v20 lightIntensityAnimationSettings];
  v157 = [v20 lightIntensityCancelledAnimationSettings];
  [v20 fillLightColorBrightnessAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorBrightnessAmount:?];
  [v20 fillLightColorSaturateAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorSaturateAmount:?];
  [v20 fillLightColorContrastAmount];
  [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightColorContrastAmount:?];
  if (a3 > 5)
  {
    v44 = v23;
  }

  else
  {
    if (((1 << a3) & 0x2C) != 0)
    {
      v42 = v157;
      if (!a4)
      {
        if (v160)
        {
          [v20 visionIntelligenceHintRetargetImpulse];
        }

        else
        {
          [v20 captureHintRetargetImpulse];
        }

        v55 = v43;
        v56 = [v25 copy];

        [v56 retargetImpulse];
        [v56 setRetargetImpulse:v55 + v57];
        v58 = [v41 copy];

        [v58 retargetImpulse];
        [v58 setRetargetImpulse:v55 + v59];
        v42 = [v157 copy];

        [v42 retargetImpulse];
        [v42 setRetargetImpulse:v55 + v60];
        v41 = v58;
        v25 = v56;
        v40 = v26;
      }

      v44 = [v20 colorFillFinalCircleMask];

      [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v20 settings:a8 inBounds:v17 idiom:{v16, v155, v40, x, y, width, height}];
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v69 = [v20 chromaticAberrationFinalDonutMaskForIdiom:a8];
      [v69 radiusOfMaximumOpacity];
      v71 = v70;

      [v44 innerRadius];
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
      [v20 donutMaskEndTransitionDelay];
      v75 = v74;
      v76 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v76 forKeypath:@"circleMaskFrame"];

      v77 = [v44 locations];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:v77];

      v78 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v78 forKeypath:@"circleGradientLocations"];

      v79 = [v44 colors];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:v79];

      v80 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v80 forKeypath:@"circleGradientColors"];

      v81 = [v44 gradientLayerSize];
      [v81 width];
      v83 = v161 / v82;

      [v44 majorDiameter];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v83 * (v84 * 0.5)];
      v85 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v85 forKeypath:@"circleMaskSourceRadius"];

      [v44 blurRadius];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
      v86 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v86 forKeypath:@"circleMaskSourceBlurRadius"];

      [v20 fillLightFinalIntensity];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:?];
      if (a3 != 5)
      {
        v88 = [v41 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v88 forKeypath:@"lightIntensity"];

        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskFrame" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleGradientLocations" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleGradientColors" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskSourceRadius" forApplicationOfKeypath:v75];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"circleMaskSourceBlurRadius" forApplicationOfKeypath:v75];
        [v20 fillLightIntensityFinalStateDelay];
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

    if (((1 << a3) & 0x11) == 0)
    {
      if (a4)
      {
        v54 = v158;
      }

      else
      {
        v106 = [v20 captureHintAnimationSettings];

        v54 = v158;
        if (v160)
        {
          v25 = [v20 visionIntelligenceHintAnimationSettings];

          v107 = [v20 visionIntelligenceHintAnimationSettings];

          v41 = v107;
        }

        else
        {
          v25 = v106;
        }
      }

      v44 = [v20 colorFillInitialCircleMask];

      v108 = objc_opt_class();
      if (v39)
      {
        [v108 donutMaskRectForState:0 variant:a4 normalizedStartLocation:v20 settings:a8 inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        v154 = v109;
        v111 = v110;
        [objc_opt_class() donutMaskRectForState:2 variant:a4 normalizedStartLocation:v20 settings:a8 inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        v113 = v112;
        [v20 visionIntelligenceHintInterpolationProgress];
        v115 = v114;
        v156 = v111 + v114 * (v113 - v111);
        v116 = v154 + v114 * (v113 - v154);
        UIRectGetCenter();
        v118 = v117;
        v120 = v119;
        UIRectGetCenter();
        v123 = v118 + v115 * (v121 - v118) - v156 * 0.5;
        v159 = v120 + v115 * (v122 - v120) - v116 * 0.5;
        v124 = [v20 chromaticAberrationFinalDonutMaskForIdiom:a8];
        [v124 radiusOfMaximumOpacity];
        v126 = v125;

        [v44 innerRadius];
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
        v138 = [v44 gradientLayerSize];
        [v138 width];
        v140 = v129 / v139;
      }

      else
      {
        [v108 donutMaskRectForState:1 variant:a4 normalizedStartLocation:v20 settings:a8 inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
        UIRectGetCenter();
        BSRectCenteredAboutPoint();
        v131 = v141;
        v133 = v142;
        v135 = v143;
        v137 = v144;
        v140 = 1.0;
      }

      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskFrame:v131, v133, v135, v137];
      v145 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v145 forKeypath:@"circleMaskFrame"];

      v146 = [v44 locations];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:v146];

      v147 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v147 forKeypath:@"circleGradientLocations"];

      v148 = [v44 colors];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:v148];

      v149 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v149 forKeypath:@"circleGradientColors"];

      [v44 majorDiameter];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v140 * (v150 * 0.5)];
      v151 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v151 forKeypath:@"circleMaskSourceRadius"];

      [v44 blurRadius];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
      v152 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v152 forKeypath:@"circleMaskSourceBlurRadius"];

      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:v153];
      v42 = v157;
      if (a4 || !v160)
      {
        [v20 fillLightIntensityFinalStateDelay];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setDelay:@"lightIntensity" forApplicationOfKeypath:?];
      }

      goto LABEL_35;
    }

    v44 = [v20 colorFillInitialCircleMask];

    [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v20 settings:a8 inBounds:v17 idiom:{v16, v155, v26, x, y, width, height}];
    UIRectGetCenter();
    BSRectCenteredAboutPoint();
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskFrame:?];
    v45 = [v44 locations];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientLocations:v45];

    v46 = [v44 colors];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleGradientColors:v46];

    [v44 majorDiameter];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceRadius:v47 * 0.5];
    [v44 blurRadius];
    [(_SUIAShockwaveFillLightConfiguration *)v21 _setCircleMaskSourceBlurRadius:?];
    if (a3 == 4)
    {
      [v20 fillLightFinalIntensity];
      [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:?];
      v48 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v48 forKeypath:@"circleMaskFrame"];

      v49 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v49 forKeypath:@"circleGradientLocations"];

      v50 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v50 forKeypath:@"circleGradientColors"];

      v51 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v51 forKeypath:@"circleMaskSourceRadius"];

      v52 = [v25 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v21 _setBehaviorSettings:v52 forKeypath:@"circleMaskSourceBlurRadius"];

      v42 = v157;
      goto LABEL_32;
    }

    [(_SUIAShockwaveFillLightConfiguration *)v21 _setLightIntensity:v153];
  }

  v42 = v157;
  v54 = v158;
LABEL_35:
  [(_SUIAShockwaveFillLightConfiguration *)v21 circleMaskFrame];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  [v44 innerRadius];
  v98 = v97;
  v168.origin.x = v90;
  v168.origin.y = v92;
  v168.size.width = v94;
  v168.size.height = v96;
  v99 = v98 * CGRectGetWidth(v168) * 0.5;
  [v44 outerRadius];
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