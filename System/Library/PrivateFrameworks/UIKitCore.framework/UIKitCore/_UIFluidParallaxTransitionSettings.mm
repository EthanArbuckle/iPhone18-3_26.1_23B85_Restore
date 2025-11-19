@interface _UIFluidParallaxTransitionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setInteractiveSpring:(id)a3;
- (void)setNoninteractiveSpring:(id)a3;
@end

@implementation _UIFluidParallaxTransitionSettings

- (void)setNoninteractiveSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring) = a3;
  v3 = a3;
}

- (void)setInteractiveSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_18916B280();
}

+ (id)settingsControllerModule
{
  sub_18916B7F0();

  return v2;
}

@end