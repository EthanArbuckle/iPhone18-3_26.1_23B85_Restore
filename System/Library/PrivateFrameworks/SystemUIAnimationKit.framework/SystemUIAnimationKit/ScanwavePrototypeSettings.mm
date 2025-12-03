@interface ScanwavePrototypeSettings
+ (id)settingsControllerModule;
- (void)setCircleMaskFinalRadialMask:(id)mask;
- (void)setCircleMaskInitialRadialMask:(id)mask;
- (void)setCircleMaskIntensityAnimationSettings:(id)settings;
- (void)setCircleMaskPositionAnimationSettings:(id)settings;
- (void)setCircleMaskScaleAnimationSettings:(id)settings;
- (void)setDefaultValues;
- (void)setDepthDistanceFieldOffsetAnimationSettings:(id)settings;
- (void)setInverseBlurRadiusIntroAnimationSettings:(id)settings;
- (void)setInverseBlurRadiusOutroAnimationSettings:(id)settings;
- (void)setMeshTransformMeshIntroAnimationSettings:(id)settings;
- (void)setMeshTransformMeshOutroAnimationSettings:(id)settings;
- (void)setMeshTransformPositionAnimationSettings:(id)settings;
- (void)setSourceImageColorBrightnessIntroAnimationSettings:(id)settings;
- (void)setSourceImageColorBrightnessOutroAnimationSettings:(id)settings;
- (void)setSourceImageScaleIntroAnimationSettings:(id)settings;
- (void)setSourceImageScaleOutroAnimationSettings:(id)settings;
@end

@implementation ScanwavePrototypeSettings

- (void)setCircleMaskInitialRadialMask:(id)mask
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask) = mask;
  maskCopy = mask;
}

- (void)setCircleMaskFinalRadialMask:(id)mask
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask) = mask;
  maskCopy = mask;
}

- (void)setCircleMaskPositionAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setCircleMaskScaleAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setCircleMaskIntensityAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setSourceImageScaleIntroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setSourceImageScaleOutroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setSourceImageColorBrightnessIntroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setSourceImageColorBrightnessOutroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setDepthDistanceFieldOffsetAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setInverseBlurRadiusIntroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setInverseBlurRadiusOutroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setMeshTransformMeshIntroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setMeshTransformMeshOutroAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setMeshTransformPositionAnimationSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings) = settings;
  settingsCopy = settings;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_26C5E7D6C();
}

+ (id)settingsControllerModule
{
  sub_26C5E9B98();

  return v2;
}

@end