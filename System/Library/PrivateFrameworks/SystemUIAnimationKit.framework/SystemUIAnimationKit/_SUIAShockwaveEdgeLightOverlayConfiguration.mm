@interface _SUIAShockwaveEdgeLightOverlayConfiguration
+ (CGRect)edgeLightMaskRectForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 inBounds:(CGRect)a7 idiom:(int64_t)a8 outSourceRadius:(double *)a9;
+ (id)edgeLightOverlayConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8;
- (CGPoint)edgeLightMaskCenter;
- (CGPoint)fillLightMaskCenter;
- (CGRect)edgeLightMaskFrame;
- (CGRect)fillLightMaskFrame;
- (double)edgeLightIntensity;
- (double)edgeLightMaskInnerRadius;
- (double)edgeLightMaskOuterRadius;
- (double)edgeLightMaskSourceBlurRadius;
- (double)edgeLightMaskSourceRadius;
- (double)fillLightIntensity;
- (double)fillLightMaskInnerRadius;
- (double)fillLightMaskOuterRadius;
- (double)fillLightMaskSourceBlurRadius;
- (double)fillLightMaskSourceRadius;
- (void)_setEdgeLightIntensity:(double)a3;
- (void)_setEdgeLightMaskCenter:(CGPoint)a3;
- (void)_setEdgeLightMaskFrame:(CGRect)a3;
- (void)_setEdgeLightMaskInnerRadius:(double)a3;
- (void)_setEdgeLightMaskOuterRadius:(double)a3;
- (void)_setEdgeLightMaskSourceBlurRadius:(double)a3;
- (void)_setEdgeLightMaskSourceRadius:(double)a3;
- (void)_setFillLightIntensity:(double)a3;
- (void)_setFillLightMaskCenter:(CGPoint)a3;
- (void)_setFillLightMaskFrame:(CGRect)a3;
- (void)_setFillLightMaskInnerRadius:(double)a3;
- (void)_setFillLightMaskOuterRadius:(double)a3;
- (void)_setFillLightMaskSourceBlurRadius:(double)a3;
- (void)_setFillLightMaskSourceRadius:(double)a3;
@end

@implementation _SUIAShockwaveEdgeLightOverlayConfiguration

- (void)_setEdgeLightIntensity:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightIntensity"];
}

- (double)edgeLightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskFrame"];
}

- (CGRect)edgeLightMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskFrame"];
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

- (void)_setEdgeLightMaskCenter:(CGPoint)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskCenter"];
}

- (CGPoint)edgeLightMaskCenter
{
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskCenter"];
  [v2 getValue:&v5 size:16];

  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setEdgeLightMaskInnerRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskInnerRadius"];
}

- (double)edgeLightMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskOuterRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskOuterRadius"];
}

- (double)edgeLightMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskSourceRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskSourceRadius"];
}

- (double)edgeLightMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskSourceBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskSourceBlurRadius"];
}

- (double)edgeLightMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightIntensity:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightIntensity"];
}

- (double)fillLightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskFrame:(CGRect)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskFrame"];
}

- (CGRect)fillLightMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskFrame"];
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

- (void)_setFillLightMaskCenter:(CGPoint)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v5 = a3;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&v5 objCType:"{CGPoint=dd}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskCenter"];
}

- (CGPoint)fillLightMaskCenter
{
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskCenter"];
  [v2 getValue:&v5 size:16];

  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setFillLightMaskInnerRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskInnerRadius"];
}

- (double)fillLightMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskOuterRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskOuterRadius"];
}

- (double)fillLightMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskSourceRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskSourceRadius"];
}

- (double)fillLightMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskSourceBlurRadius:(double)a3
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskSourceBlurRadius"];
}

- (double)fillLightMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (CGRect)edgeLightMaskRectForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 inBounds:(CGRect)a7 idiom:(int64_t)a8 outSourceRadius:(double *)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a5.size.height;
  v16 = a5.size.width;
  v17 = a5.origin.y;
  v18 = a5.origin.x;
  v21 = a6;
  v22 = v21;
  if (a3 > 5)
  {
    v39 = *MEMORY[0x277CBF398];
    v41 = *(MEMORY[0x277CBF398] + 8);
    v43 = *(MEMORY[0x277CBF398] + 16);
    v45 = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_12;
  }

  if (((1 << a3) & 0x2C) == 0)
  {
    if (((1 << a3) & 0x11) != 0)
    {
      v23 = [v21 edgeLightInitialCircleMask];
      v51 = [v23 gradientLayerSize];
      [v51 sizeValue];
      BSRectWithSize();

      [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v22 settings:a8 inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
      UIRectGetCenter();
      BSRectCenteredAboutPoint();
      v39 = v52;
      v41 = v53;
      v43 = v54;
      v45 = v55;
      if (!a9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v23 = [v21 edgeLightHintCircleMask];
      v56 = [v23 gradientLayerSize];
      [v56 sizeValue];
      BSRectWithSize();
      v74 = v58;
      v75 = v57;
      v72 = v60;
      v73 = v59;

      v39 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v75, v74, v73, v72, 0.5, v61, v62, v63, v18, v17, v16, v15, x, y, width, height);
      v41 = v64;
      v43 = v65;
      v45 = v66;
      if (!a9)
      {
        goto LABEL_11;
      }
    }

    [v23 majorDiameter];
    v50 = v67 * 0.5;
    goto LABEL_10;
  }

  v23 = [v21 edgeLightFinalCircleMask];
  [objc_opt_class() donutMaskRectForState:a3 variant:a4 normalizedStartLocation:v22 settings:a8 inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v22 chromaticAberrationFinalDonutMaskForIdiom:a8];
  [v32 radiusOfMaximumOpacity];
  v34 = v33;

  [v23 innerRadius];
  v36 = v34 / v35;
  v76.origin.x = v25;
  v76.origin.y = v27;
  v76.size.width = v29;
  v76.size.height = v31;
  v37 = v36 * CGRectGetWidth(v76);
  BSRectWithSize();
  UIRectGetCenter();
  BSRectCenteredAboutPoint();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  if (a9)
  {
    v46 = [v23 gradientLayerSize];
    [v46 width];
    v48 = v37 / v47;

    [v23 majorDiameter];
    v50 = v48 * (v49 * 0.5);
LABEL_10:
    *a9 = v50;
  }

LABEL_11:

LABEL_12:
  v68 = v39;
  v69 = v41;
  v70 = v43;
  v71 = v45;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

+ (id)edgeLightOverlayConfigurationForState:(int64_t)a3 variant:(int64_t)a4 normalizedStartLocation:(CGRect)a5 settings:(id)a6 bounds:(CGRect)a7 idiom:(int64_t)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a5.size.height;
  v14 = a5.size.width;
  v15 = a5.origin.y;
  v16 = a5.origin.x;
  v19 = a6;
  v20 = objc_alloc_init(_SUIAShockwaveEdgeLightOverlayConfiguration);
  v21 = [v19 donutMaskPositionAnimationSettings];
  v90 = width;
  v91 = height;
  v88 = x;
  v89 = y;
  v86 = v14;
  v87 = v13;
  v84 = v16;
  v85 = v15;
  if (a3 > 5)
  {
    v22 = 0;
  }

  else if (((1 << a3) & 0x2C) != 0)
  {
    v92 = 0.0;
    v22 = [v19 edgeLightFinalCircleMask];
    [objc_opt_class() edgeLightMaskRectForState:a3 variant:a4 normalizedStartLocation:v19 settings:a8 inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
    v23 = [v21 copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v23 forKeypath:@"edgeLightMaskFrame"];

    v24 = [v22 locations];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:v24];

    v25 = [v21 copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v25 forKeypath:@"edgeLightMaskGradientLocations"];

    v26 = [v22 colors];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:v26];

    v27 = [v21 copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v27 forKeypath:@"edgeLightMaskGradientColors"];

    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
    v28 = [v21 copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v28 forKeypath:@"edgeLightMaskSourceRadius"];

    [v22 blurRadius];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
    v29 = [v21 copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v29 forKeypath:@"edgeLightMaskSourceBlurRadius"];

    if (a3 == 5)
    {
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightIntensity:0.0];
      v30 = [v19 lightIntensityCancelledAnimationSettings];
      v31 = [v30 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v31 forKeypath:@"edgeLightIntensity"];
    }

    else
    {
      [v19 donutMaskEndTransitionDelay];
      v43 = v42;
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightIntensity:1.0];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskFrame" forApplicationOfKeypath:v43];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientColors" forApplicationOfKeypath:v43];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientLocations" forApplicationOfKeypath:v43];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskSourceRadius" forApplicationOfKeypath:v43];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskSourceBlurRadius" forApplicationOfKeypath:v43];
    }
  }

  else
  {
    if (((1 << a3) & 0x11) != 0)
    {
      v92 = 0.0;
      v22 = [v19 edgeLightInitialCircleMask];
      [objc_opt_class() edgeLightMaskRectForState:a3 variant:a4 normalizedStartLocation:v19 settings:a8 inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
      v32 = [v22 locations];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:v32];

      v33 = [v22 colors];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:v33];

      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
      [v22 blurRadius];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
      v34 = 1.0;
      if (a3 == 4)
      {
        v35 = [v21 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v35 forKeypath:@"edgeLightMaskFrame"];

        v36 = [v21 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v36 forKeypath:@"edgeLightMaskGradientLocations"];

        v37 = [v21 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v37 forKeypath:@"edgeLightMaskGradientColors"];

        v38 = [v21 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v38 forKeypath:@"edgeLightMaskSourceRadius"];

        v39 = [v21 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v39 forKeypath:@"edgeLightMaskSourceBlurRadius"];

        v40 = [v19 lightIntensityCancelledAnimationSettings];
        v41 = [v40 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v41 forKeypath:@"edgeLightIntensity"];

        v34 = 0.0;
      }
    }

    else
    {
      [v19 edgeLightHintTransitionDelay];
      v82 = v44;
      v92 = 0.0;
      v22 = [v19 edgeLightHintCircleMask];
      [objc_opt_class() edgeLightMaskRectForState:1 variant:a4 normalizedStartLocation:v19 settings:a8 inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
      v45 = [v21 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v45 forKeypath:@"edgeLightMaskFrame"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskFrame" forApplicationOfKeypath:v82];
      v46 = [v22 locations];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:v46];

      v47 = [v21 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v47 forKeypath:@"edgeLightMaskGradientLocations"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientLocations" forApplicationOfKeypath:v82];
      v48 = [v22 colors];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:v48];

      v49 = [v21 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v49 forKeypath:@"edgeLightMaskGradientColors"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientColors" forApplicationOfKeypath:v82];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
      v50 = [v21 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v50 forKeypath:@"edgeLightMaskSourceRadius"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskSourceRadius" forApplicationOfKeypath:v82];
      [v22 blurRadius];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
      v51 = [v21 copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v51 forKeypath:@"edgeLightMaskSourceBlurRadius"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskSourceBlurRadius" forApplicationOfKeypath:v82];
      v34 = 1.0;
    }

    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightIntensity:v34];
  }

  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 edgeLightMaskFrame];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  UIRectGetCenter();
  v61 = v60;
  v63 = v62;
  [v22 innerRadius];
  v65 = v64;
  v94.origin.x = v53;
  v94.origin.y = v55;
  v94.size.width = v57;
  v94.size.height = v59;
  v83 = v65 * CGRectGetWidth(v94) * 0.5;
  [v22 outerRadius];
  v67 = v66;
  v95.origin.x = v53;
  v95.origin.y = v55;
  v95.size.width = v57;
  v95.size.height = v59;
  v68 = v67 * CGRectGetWidth(v95) * 0.5;
  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskCenter:v61, v63];
  v69 = [(_SUIAAbstractDictionaryBackedConfiguration *)v20 behaviorSettingsForKeypath:@"edgeLightMaskFrame"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v69 forKeypath:@"edgeLightMaskCenter"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 delayForApplicationOfKeypath:@"edgeLightMaskFrame"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskCenter" forApplicationOfKeypath:?];
  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskInnerRadius:v83];
  v70 = [(_SUIAAbstractDictionaryBackedConfiguration *)v20 behaviorSettingsForKeypath:@"edgeLightMaskGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v70 forKeypath:@"edgeLightMaskInnerRadius"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 delayForApplicationOfKeypath:@"edgeLightMaskGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskInnerRadius" forApplicationOfKeypath:?];
  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskOuterRadius:v68];
  v71 = [(_SUIAAbstractDictionaryBackedConfiguration *)v20 behaviorSettingsForKeypath:@"edgeLightMaskGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v71 forKeypath:@"edgeLightMaskOuterRadius"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 delayForApplicationOfKeypath:@"edgeLightMaskGradientLocations"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskOuterRadius" forApplicationOfKeypath:?];
  v72 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:a3 variant:a4 normalizedStartLocation:v19 settings:a8 bounds:0 idiom:v84 usesIntelligentFillLight:v85, v86, v87, v88, v89, v90, v91];
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v72, v20, v72, @"fillLightIntensity", @"lightIntensity");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v73, v20, v72, @"fillLightMaskFrame", @"circleMaskFrame");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v74, v20, v72, @"fillLightMaskGradientLocations", @"circleGradientLocations");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v75, v20, v72, @"fillLightMaskGradientColors", @"circleGradientColors");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v76, v20, v72, @"fillLightMaskInnerRadius", @"circleMaskInnerRadius");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v77, v20, v72, @"fillLightMaskOuterRadius", @"circleMaskOuterRadius");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v78, v20, v72, @"fillLightMaskSourceRadius", @"circleMaskSourceRadius");
  __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(v79, v20, v72, @"fillLightMaskSourceBlurRadius", @"circleMaskSourceBlurRadius");
  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 fillLightMaskFrame];
  UIRectGetCenter();
  [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setFillLightMaskCenter:?];
  v80 = [(_SUIAAbstractDictionaryBackedConfiguration *)v20 behaviorSettingsForKeypath:@"fillLightMaskFrame"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v80 forKeypath:@"fillLightMaskCenter"];

  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 delayForApplicationOfKeypath:@"fillLightMaskFrame"];
  [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"fillLightMaskCenter" forApplicationOfKeypath:?];

  return v20;
}

@end