@interface _UIFlexInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setInteractionSpec:(id)spec;
- (void)setLiquidLensSpec:(id)spec;
@end

@implementation _UIFlexInteractionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIFlexInteractionSettings();
  v2 = v3.receiver;
  [(PTSettings *)&v3 setDefaultValues];
  v2[OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liftEnabled] = 1;
  v2[OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_flexEnabled] = 1;
}

- (void)setInteractionSpec:(id)spec
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_interactionSpec);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_interactionSpec) = spec;
  specCopy = spec;
}

- (void)setLiquidLensSpec:(id)spec
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit26_UIFlexInteractionSettings_liquidLensSpec) = spec;
  specCopy = spec;
}

+ (id)settingsControllerModule
{
  sub_188F78450();

  return v2;
}

@end