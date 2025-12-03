@interface WindowControlsPrototypeSettings
+ (double)BounceScale;
+ (id)settingsControllerModule;
- (void)setBounceCollapseSpring:(id)spring;
- (void)setBounceExpansionSpring:(id)spring;
- (void)setDefaultValues;
- (void)setHoverMorphSpring:(id)spring;
- (void)setTapMorphSpring:(id)spring;
@end

@implementation WindowControlsPrototypeSettings

- (void)setTapMorphSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring) = spring;
  springCopy = spring;
}

- (void)setHoverMorphSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring) = spring;
  springCopy = spring;
}

- (void)setBounceExpansionSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring) = spring;
  springCopy = spring;
}

- (void)setBounceCollapseSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring) = spring;
  springCopy = spring;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_21ED2C39C();
}

+ (id)settingsControllerModule
{
  sub_21ED2C97C();

  return v2;
}

+ (double)BounceScale
{
  rootSettings = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v3 = *&rootSettings[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceScale];

  return v3;
}

@end