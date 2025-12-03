@interface _SUIAShockwaveEdgeLightOverlayConfiguration
+ (CGRect)edgeLightMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom outSourceRadius:(double *)radius;
+ (id)edgeLightOverlayConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom;
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
- (void)_setEdgeLightIntensity:(double)intensity;
- (void)_setEdgeLightMaskCenter:(CGPoint)center;
- (void)_setEdgeLightMaskFrame:(CGRect)frame;
- (void)_setEdgeLightMaskInnerRadius:(double)radius;
- (void)_setEdgeLightMaskOuterRadius:(double)radius;
- (void)_setEdgeLightMaskSourceBlurRadius:(double)radius;
- (void)_setEdgeLightMaskSourceRadius:(double)radius;
- (void)_setFillLightIntensity:(double)intensity;
- (void)_setFillLightMaskCenter:(CGPoint)center;
- (void)_setFillLightMaskFrame:(CGRect)frame;
- (void)_setFillLightMaskInnerRadius:(double)radius;
- (void)_setFillLightMaskOuterRadius:(double)radius;
- (void)_setFillLightMaskSourceBlurRadius:(double)radius;
- (void)_setFillLightMaskSourceRadius:(double)radius;
@end

@implementation _SUIAShockwaveEdgeLightOverlayConfiguration

- (void)_setEdgeLightIntensity:(double)intensity
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:intensity];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightIntensity"];
}

- (double)edgeLightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
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

- (void)_setEdgeLightMaskCenter:(CGPoint)center
{
  propertyDictionary = self->super._propertyDictionary;
  centerCopy = center;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&centerCopy objCType:"{CGPoint=dd}"];
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

- (void)_setEdgeLightMaskInnerRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskInnerRadius"];
}

- (double)edgeLightMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskOuterRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskOuterRadius"];
}

- (double)edgeLightMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskSourceRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskSourceRadius"];
}

- (double)edgeLightMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setEdgeLightMaskSourceBlurRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"edgeLightMaskSourceBlurRadius"];
}

- (double)edgeLightMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"edgeLightMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightIntensity:(double)intensity
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:intensity];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightIntensity"];
}

- (double)fillLightIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
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

- (void)_setFillLightMaskCenter:(CGPoint)center
{
  propertyDictionary = self->super._propertyDictionary;
  centerCopy = center;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&centerCopy objCType:"{CGPoint=dd}"];
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

- (void)_setFillLightMaskInnerRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskInnerRadius"];
}

- (double)fillLightMaskInnerRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskInnerRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskOuterRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskOuterRadius"];
}

- (double)fillLightMaskOuterRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskOuterRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskSourceRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskSourceRadius"];
}

- (double)fillLightMaskSourceRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskSourceRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setFillLightMaskSourceBlurRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"fillLightMaskSourceBlurRadius"];
}

- (double)fillLightMaskSourceBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"fillLightMaskSourceBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (CGRect)edgeLightMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom outSourceRadius:(double *)radius
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15 = location.size.height;
  v16 = location.size.width;
  v17 = location.origin.y;
  v18 = location.origin.x;
  settingsCopy = settings;
  v22 = settingsCopy;
  if (state > 5)
  {
    v39 = *MEMORY[0x277CBF398];
    v41 = *(MEMORY[0x277CBF398] + 8);
    v43 = *(MEMORY[0x277CBF398] + 16);
    v45 = *(MEMORY[0x277CBF398] + 24);
    goto LABEL_12;
  }

  if (((1 << state) & 0x2C) == 0)
  {
    if (((1 << state) & 0x11) != 0)
    {
      edgeLightInitialCircleMask = [settingsCopy edgeLightInitialCircleMask];
      gradientLayerSize = [edgeLightInitialCircleMask gradientLayerSize];
      [gradientLayerSize sizeValue];
      BSRectWithSize();

      [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:v22 settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
      UIRectGetCenter();
      BSRectCenteredAboutPoint();
      v39 = v52;
      v41 = v53;
      v43 = v54;
      v45 = v55;
      if (!radius)
      {
        goto LABEL_11;
      }
    }

    else
    {
      edgeLightInitialCircleMask = [settingsCopy edgeLightHintCircleMask];
      gradientLayerSize2 = [edgeLightInitialCircleMask gradientLayerSize];
      [gradientLayerSize2 sizeValue];
      BSRectWithSize();
      v74 = v58;
      v75 = v57;
      v72 = v60;
      v73 = v59;

      v39 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v75, v74, v73, v72, 0.5, v61, v62, v63, v18, v17, v16, v15, x, y, width, height);
      v41 = v64;
      v43 = v65;
      v45 = v66;
      if (!radius)
      {
        goto LABEL_11;
      }
    }

    [edgeLightInitialCircleMask majorDiameter];
    v50 = v67 * 0.5;
    goto LABEL_10;
  }

  edgeLightInitialCircleMask = [settingsCopy edgeLightFinalCircleMask];
  [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:v22 settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v22 chromaticAberrationFinalDonutMaskForIdiom:idiom];
  [v32 radiusOfMaximumOpacity];
  v34 = v33;

  [edgeLightInitialCircleMask innerRadius];
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
  if (radius)
  {
    gradientLayerSize3 = [edgeLightInitialCircleMask gradientLayerSize];
    [gradientLayerSize3 width];
    v48 = v37 / v47;

    [edgeLightInitialCircleMask majorDiameter];
    v50 = v48 * (v49 * 0.5);
LABEL_10:
    *radius = v50;
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

+ (id)edgeLightOverlayConfigurationForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = location.size.height;
  v14 = location.size.width;
  v15 = location.origin.y;
  v16 = location.origin.x;
  settingsCopy = settings;
  v20 = objc_alloc_init(_SUIAShockwaveEdgeLightOverlayConfiguration);
  donutMaskPositionAnimationSettings = [settingsCopy donutMaskPositionAnimationSettings];
  v90 = width;
  v91 = height;
  v88 = x;
  v89 = y;
  v86 = v14;
  v87 = v13;
  v84 = v16;
  v85 = v15;
  if (state > 5)
  {
    edgeLightFinalCircleMask = 0;
  }

  else if (((1 << state) & 0x2C) != 0)
  {
    v92 = 0.0;
    edgeLightFinalCircleMask = [settingsCopy edgeLightFinalCircleMask];
    [objc_opt_class() edgeLightMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
    v23 = [donutMaskPositionAnimationSettings copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v23 forKeypath:@"edgeLightMaskFrame"];

    locations = [edgeLightFinalCircleMask locations];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:locations];

    v25 = [donutMaskPositionAnimationSettings copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v25 forKeypath:@"edgeLightMaskGradientLocations"];

    colors = [edgeLightFinalCircleMask colors];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:colors];

    v27 = [donutMaskPositionAnimationSettings copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v27 forKeypath:@"edgeLightMaskGradientColors"];

    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
    v28 = [donutMaskPositionAnimationSettings copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v28 forKeypath:@"edgeLightMaskSourceRadius"];

    [edgeLightFinalCircleMask blurRadius];
    [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
    v29 = [donutMaskPositionAnimationSettings copy];
    [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v29 forKeypath:@"edgeLightMaskSourceBlurRadius"];

    if (state == 5)
    {
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightIntensity:0.0];
      lightIntensityCancelledAnimationSettings = [settingsCopy lightIntensityCancelledAnimationSettings];
      v31 = [lightIntensityCancelledAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v31 forKeypath:@"edgeLightIntensity"];
    }

    else
    {
      [settingsCopy donutMaskEndTransitionDelay];
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
    if (((1 << state) & 0x11) != 0)
    {
      v92 = 0.0;
      edgeLightFinalCircleMask = [settingsCopy edgeLightInitialCircleMask];
      [objc_opt_class() edgeLightMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
      locations2 = [edgeLightFinalCircleMask locations];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:locations2];

      colors2 = [edgeLightFinalCircleMask colors];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:colors2];

      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
      [edgeLightFinalCircleMask blurRadius];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
      v34 = 1.0;
      if (state == 4)
      {
        v35 = [donutMaskPositionAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v35 forKeypath:@"edgeLightMaskFrame"];

        v36 = [donutMaskPositionAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v36 forKeypath:@"edgeLightMaskGradientLocations"];

        v37 = [donutMaskPositionAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v37 forKeypath:@"edgeLightMaskGradientColors"];

        v38 = [donutMaskPositionAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v38 forKeypath:@"edgeLightMaskSourceRadius"];

        v39 = [donutMaskPositionAnimationSettings copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v39 forKeypath:@"edgeLightMaskSourceBlurRadius"];

        lightIntensityCancelledAnimationSettings2 = [settingsCopy lightIntensityCancelledAnimationSettings];
        v41 = [lightIntensityCancelledAnimationSettings2 copy];
        [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v41 forKeypath:@"edgeLightIntensity"];

        v34 = 0.0;
      }
    }

    else
    {
      [settingsCopy edgeLightHintTransitionDelay];
      v82 = v44;
      v92 = 0.0;
      edgeLightFinalCircleMask = [settingsCopy edgeLightHintCircleMask];
      [objc_opt_class() edgeLightMaskRectForState:1 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:&v92 idiom:v16 outSourceRadius:{v15, v14, v13, x, y, width, height}];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskFrame:?];
      v45 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v45 forKeypath:@"edgeLightMaskFrame"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskFrame" forApplicationOfKeypath:v82];
      locations3 = [edgeLightFinalCircleMask locations];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientLocations:locations3];

      v47 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v47 forKeypath:@"edgeLightMaskGradientLocations"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientLocations" forApplicationOfKeypath:v82];
      colors3 = [edgeLightFinalCircleMask colors];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskGradientColors:colors3];

      v49 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v49 forKeypath:@"edgeLightMaskGradientColors"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskGradientColors" forApplicationOfKeypath:v82];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceRadius:v92];
      v50 = [donutMaskPositionAnimationSettings copy];
      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setBehaviorSettings:v50 forKeypath:@"edgeLightMaskSourceRadius"];

      [(_SUIAAbstractDictionaryBackedConfiguration *)v20 _setDelay:@"edgeLightMaskSourceRadius" forApplicationOfKeypath:v82];
      [edgeLightFinalCircleMask blurRadius];
      [(_SUIAShockwaveEdgeLightOverlayConfiguration *)v20 _setEdgeLightMaskSourceBlurRadius:?];
      v51 = [donutMaskPositionAnimationSettings copy];
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
  [edgeLightFinalCircleMask innerRadius];
  v65 = v64;
  v94.origin.x = v53;
  v94.origin.y = v55;
  v94.size.width = v57;
  v94.size.height = v59;
  v83 = v65 * CGRectGetWidth(v94) * 0.5;
  [edgeLightFinalCircleMask outerRadius];
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
  v72 = [_SUIAShockwaveFillLightConfiguration fillLightConfigurationForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom bounds:0 idiom:v84 usesIntelligentFillLight:v85, v86, v87, v88, v89, v90, v91];
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