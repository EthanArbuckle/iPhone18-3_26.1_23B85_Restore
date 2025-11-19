@interface WindowControlsPrototypeSettings
+ (double)BounceScale;
+ (id)settingsControllerModule;
- (void)setBounceCollapseSpring:(id)a3;
- (void)setBounceExpansionSpring:(id)a3;
- (void)setDefaultValues;
- (void)setHoverMorphSpring:(id)a3;
- (void)setTapMorphSpring:(id)a3;
@end

@implementation WindowControlsPrototypeSettings

- (void)setTapMorphSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_tapMorphSpring) = a3;
  v3 = a3;
}

- (void)setHoverMorphSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_hoverMorphSpring) = a3;
  v3 = a3;
}

- (void)setBounceExpansionSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceExpansionSpring) = a3;
  v3 = a3;
}

- (void)setBounceCollapseSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceCollapseSpring) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_21ED2C39C();
}

+ (id)settingsControllerModule
{
  sub_21ED2C97C();

  return v2;
}

+ (double)BounceScale
{
  v2 = [type metadata accessor for WindowControlsPrototypeSettingsDomain() rootSettings];
  v3 = *&v2[OBJC_IVAR____TtC20SystemUIWindowingKit31WindowControlsPrototypeSettings_bounceScale];

  return v3;
}

@end