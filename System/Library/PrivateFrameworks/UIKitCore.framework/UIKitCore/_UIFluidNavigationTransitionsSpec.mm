@interface _UIFluidNavigationTransitionsSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit33_UIFluidNavigationTransitionsSpec)initWithDefaultValues;
- (void)setDefaultValues;
- (void)setParallaxSettings:(id)settings;
@end

@implementation _UIFluidNavigationTransitionsSpec

- (void)setParallaxSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings) = settings;
  settingsCopy = settings;
}

- (void)setDefaultValues
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for _UIFluidNavigationTransitionsSpec();
  [(PTSettings *)&v2 setDefaultValues];
}

+ (id)settingsControllerModule
{
  sub_18916B5E8();

  return v2;
}

- (_TtC5UIKit33_UIFluidNavigationTransitionsSpec)initWithDefaultValues
{
  v3 = OBJC_IVAR____TtC5UIKit33_UIFluidNavigationTransitionsSpec_parallaxSettings;
  type metadata accessor for _UIFluidParallaxTransitionSettings();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIFluidNavigationTransitionsSpec();
  return [(PTSettings *)&v5 initWithDefaultValues];
}

@end