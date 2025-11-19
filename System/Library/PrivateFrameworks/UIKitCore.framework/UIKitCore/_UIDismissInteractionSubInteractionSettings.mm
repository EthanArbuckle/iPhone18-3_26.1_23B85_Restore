@interface _UIDismissInteractionSubInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setUpdateSpring:(id)a3;
@end

@implementation _UIDismissInteractionSubInteractionSettings

- (void)setDefaultValues
{
  v2 = self;
  sub_188C86234();
}

- (void)setUpdateSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring) = a3;
  v3 = a3;
}

+ (id)settingsControllerModule
{
  sub_188F0F3F0();

  return v2;
}

@end