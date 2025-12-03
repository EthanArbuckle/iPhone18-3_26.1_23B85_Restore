@interface _UIFluidParallaxTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setInteractiveSpring:(id)spring;
- (void)setNoninteractiveSpring:(id)spring;
@end

@implementation _UIFluidParallaxTransitionSettings

- (void)setNoninteractiveSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring) = spring;
  springCopy = spring;
}

- (void)setInteractiveSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring) = spring;
  springCopy = spring;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_18916B280();
}

+ (id)settingsControllerModule
{
  sub_18916B7F0();

  return v2;
}

@end