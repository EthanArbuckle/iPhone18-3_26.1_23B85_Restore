@interface ScanwavePrototypeSettings
+ (id)settingsControllerModule;
- (void)setCircleMaskFinalRadialMask:(id)a3;
- (void)setCircleMaskInitialRadialMask:(id)a3;
- (void)setCircleMaskIntensityAnimationSettings:(id)a3;
- (void)setCircleMaskPositionAnimationSettings:(id)a3;
- (void)setCircleMaskScaleAnimationSettings:(id)a3;
- (void)setDefaultValues;
- (void)setDepthDistanceFieldOffsetAnimationSettings:(id)a3;
- (void)setInverseBlurRadiusIntroAnimationSettings:(id)a3;
- (void)setInverseBlurRadiusOutroAnimationSettings:(id)a3;
- (void)setMeshTransformMeshIntroAnimationSettings:(id)a3;
- (void)setMeshTransformMeshOutroAnimationSettings:(id)a3;
- (void)setMeshTransformPositionAnimationSettings:(id)a3;
- (void)setSourceImageColorBrightnessIntroAnimationSettings:(id)a3;
- (void)setSourceImageColorBrightnessOutroAnimationSettings:(id)a3;
- (void)setSourceImageScaleIntroAnimationSettings:(id)a3;
- (void)setSourceImageScaleOutroAnimationSettings:(id)a3;
@end

@implementation ScanwavePrototypeSettings

- (void)setCircleMaskInitialRadialMask:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask) = a3;
  v3 = a3;
}

- (void)setCircleMaskFinalRadialMask:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask) = a3;
  v3 = a3;
}

- (void)setCircleMaskPositionAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings) = a3;
  v3 = a3;
}

- (void)setCircleMaskScaleAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings) = a3;
  v3 = a3;
}

- (void)setCircleMaskIntensityAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings) = a3;
  v3 = a3;
}

- (void)setSourceImageScaleIntroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setSourceImageScaleOutroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setSourceImageColorBrightnessIntroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setSourceImageColorBrightnessOutroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setDepthDistanceFieldOffsetAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings) = a3;
  v3 = a3;
}

- (void)setInverseBlurRadiusIntroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setInverseBlurRadiusOutroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setMeshTransformMeshIntroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setMeshTransformMeshOutroAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings) = a3;
  v3 = a3;
}

- (void)setMeshTransformPositionAnimationSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_26C5E7D6C();
}

+ (id)settingsControllerModule
{
  sub_26C5E9B98();

  return v2;
}

@end