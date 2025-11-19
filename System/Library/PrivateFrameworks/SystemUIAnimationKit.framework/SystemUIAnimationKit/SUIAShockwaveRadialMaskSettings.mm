@interface SUIAShockwaveRadialMaskSettings
+ (BOOL)ignoresKey:(id)a3;
+ (id)settingsControllerModule;
- (BOOL)validateComputedValuesCorrespondToSourceValues;
- (NSString)name;
- (PTSizeSettings)gradientLayerSize;
- (double)blurRadius;
- (double)innerRadius;
- (double)majorDiameter;
- (double)maximumExtentOfZeroOpacity;
- (double)outerRadius;
- (double)radiusOfMaximumOpacity;
- (double)ringWidth;
- (id)computeDerivativeValuesAndGenerateSource;
- (unint64_t)sampleCount;
- (void)setBlurRadius:(double)a3;
- (void)setDefaultValues;
- (void)setDefaultValuesWithName:(id)a3 majorDiameter:(double)a4 ringWidth:(double)a5 blurRadius:(double)a6 sampleCount:(unint64_t)a7 locations:(id)a8 colors:(id)a9 gradientLayerSize:(CGSize)a10;
- (void)setGradientLayerSize:(id)a3;
- (void)setMajorDiameter:(double)a3;
- (void)setName:(id)a3;
- (void)setRingWidth:(double)a3;
- (void)setSampleCount:(unint64_t)a3;
@end

@implementation SUIAShockwaveRadialMaskSettings

- (NSString)name
{
  swift_beginAccess();

  v2 = sub_26C614E38();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_26C614E48();
  v6 = v5;
  v7 = (self + OBJC_IVAR___SUIAShockwaveRadialMaskSettings_name);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (PTSizeSettings)gradientLayerSize
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_gradientLayerSize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGradientLayerSize:(id)a3
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_gradientLayerSize;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (double)majorDiameter
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMajorDiameter:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)ringWidth
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRingWidth:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (double)blurRadius
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBlurRadius:(double)a3
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)sampleCount
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSampleCount:(unint64_t)a3
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  swift_beginAccess();
  *(self + v5) = a3;
}

+ (BOOL)ignoresKey:(id)a3
{
  if (a3)
  {
    v3 = sub_26C614E48();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  swift_getObjCClassMetadata();
  v6 = static SUIAShockwaveRadialMaskSettings.ignoresKey(_:)(v3, v5);

  return v6 & 1;
}

- (double)innerRadius
{
  v2 = self;
  v3 = SUIAShockwaveRadialMaskSettings.innerRadius.getter();

  return v3;
}

- (double)outerRadius
{
  v2 = self;
  v3 = SUIAShockwaveRadialMaskSettings.outerRadius.getter();

  return v3;
}

- (double)maximumExtentOfZeroOpacity
{
  v2 = self;
  v3 = SUIAShockwaveRadialMaskSettings.maximumExtentOfZeroOpacity.getter();

  return v3;
}

- (double)radiusOfMaximumOpacity
{
  v2 = self;
  v3 = SUIAShockwaveRadialMaskSettings.radiusOfMaximumOpacity.getter();

  return v3;
}

- (BOOL)validateComputedValuesCorrespondToSourceValues
{
  v2 = self;
  v3 = SUIAShockwaveRadialMaskSettings.validateComputedValuesCorrespondToSourceValues()();

  return v3;
}

- (id)computeDerivativeValuesAndGenerateSource
{
  v2 = self;
  SUIAShockwaveRadialMaskSettings.computeDerivativeValuesAndGenerateSource()();

  v3 = sub_26C614E38();

  return v3;
}

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = SUIAShockwaveRadialMaskSettings;
  [(PTSettings *)&v2 setDefaultValues];
}

- (void)setDefaultValuesWithName:(id)a3 majorDiameter:(double)a4 ringWidth:(double)a5 blurRadius:(double)a6 sampleCount:(unint64_t)a7 locations:(id)a8 colors:(id)a9 gradientLayerSize:(CGSize)a10
{
  height = a10.height;
  width = a10.width;
  v17 = sub_26C614E48();
  v19 = v18;
  sub_26C5CC548(0, &unk_28125E420);
  sub_26C614EC8();
  sub_26C5CC548(0, &qword_28125E430);
  sub_26C614EC8();
  v20 = self;
  SUIAShockwaveRadialMaskSettings.setDefaultValuesWithName(_:majorDiameter:ringWidth:blurRadius:sampleCount:locations:colors:gradientLayerSize:)(a4, a5, a6, width, height, v17, v19, a7);
}

+ (id)settingsControllerModule
{
  _sSo31SUIAShockwaveRadialMaskSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end