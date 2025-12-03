@interface _UIDismissInteractionSubInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setUpdateSpring:(id)spring;
@end

@implementation _UIDismissInteractionSubInteractionSettings

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188C86234();
}

- (void)setUpdateSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit43_UIDismissInteractionSubInteractionSettings_updateSpring) = spring;
  springCopy = spring;
}

+ (id)settingsControllerModule
{
  sub_188F0F3F0();

  return v2;
}

@end