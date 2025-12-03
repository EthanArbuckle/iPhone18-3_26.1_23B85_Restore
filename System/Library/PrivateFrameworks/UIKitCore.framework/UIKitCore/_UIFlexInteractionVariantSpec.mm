@interface _UIFlexInteractionVariantSpec
+ (id)settingsControllerModule;
- (void)setScaleSpring:(id)spring;
@end

@implementation _UIFlexInteractionVariantSpec

- (void)setScaleSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) = spring;
  springCopy = spring;
}

+ (id)settingsControllerModule
{
  sub_188F78E34();

  return v2;
}

@end