@interface SUIAShockwaveRadialMaskSettings
+ (BOOL)ignoresKey:(id)key;
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
- (void)setBlurRadius:(double)radius;
- (void)setDefaultValues;
- (void)setDefaultValuesWithName:(id)name majorDiameter:(double)diameter ringWidth:(double)width blurRadius:(double)radius sampleCount:(unint64_t)count locations:(id)locations colors:(id)colors gradientLayerSize:(CGSize)self0;
- (void)setGradientLayerSize:(id)size;
- (void)setMajorDiameter:(double)diameter;
- (void)setName:(id)name;
- (void)setRingWidth:(double)width;
- (void)setSampleCount:(unint64_t)count;
@end

@implementation SUIAShockwaveRadialMaskSettings

- (NSString)name
{
  swift_beginAccess();

  v2 = sub_26C614E38();

  return v2;
}

- (void)setName:(id)name
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

- (void)setGradientLayerSize:(id)size
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_gradientLayerSize;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = size;
  sizeCopy = size;
}

- (double)majorDiameter
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setMajorDiameter:(double)diameter
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  swift_beginAccess();
  *(self + v5) = diameter;
}

- (double)ringWidth
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRingWidth:(double)width
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  swift_beginAccess();
  *(self + v5) = width;
}

- (double)blurRadius
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBlurRadius:(double)radius
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  swift_beginAccess();
  *(self + v5) = radius;
}

- (unint64_t)sampleCount
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSampleCount:(unint64_t)count
{
  v5 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  swift_beginAccess();
  *(self + v5) = count;
}

+ (BOOL)ignoresKey:(id)key
{
  if (key)
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
  selfCopy = self;
  v3 = SUIAShockwaveRadialMaskSettings.innerRadius.getter();

  return v3;
}

- (double)outerRadius
{
  selfCopy = self;
  v3 = SUIAShockwaveRadialMaskSettings.outerRadius.getter();

  return v3;
}

- (double)maximumExtentOfZeroOpacity
{
  selfCopy = self;
  v3 = SUIAShockwaveRadialMaskSettings.maximumExtentOfZeroOpacity.getter();

  return v3;
}

- (double)radiusOfMaximumOpacity
{
  selfCopy = self;
  v3 = SUIAShockwaveRadialMaskSettings.radiusOfMaximumOpacity.getter();

  return v3;
}

- (BOOL)validateComputedValuesCorrespondToSourceValues
{
  selfCopy = self;
  v3 = SUIAShockwaveRadialMaskSettings.validateComputedValuesCorrespondToSourceValues()();

  return v3;
}

- (id)computeDerivativeValuesAndGenerateSource
{
  selfCopy = self;
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

- (void)setDefaultValuesWithName:(id)name majorDiameter:(double)diameter ringWidth:(double)width blurRadius:(double)radius sampleCount:(unint64_t)count locations:(id)locations colors:(id)colors gradientLayerSize:(CGSize)self0
{
  height = size.height;
  width = size.width;
  v17 = sub_26C614E48();
  v19 = v18;
  sub_26C5CC548(0, &unk_28125E420);
  sub_26C614EC8();
  sub_26C5CC548(0, &qword_28125E430);
  sub_26C614EC8();
  selfCopy = self;
  SUIAShockwaveRadialMaskSettings.setDefaultValuesWithName(_:majorDiameter:ringWidth:blurRadius:sampleCount:locations:colors:gradientLayerSize:)(diameter, width, radius, width, height, v17, v19, count);
}

+ (id)settingsControllerModule
{
  _sSo31SUIAShockwaveRadialMaskSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end