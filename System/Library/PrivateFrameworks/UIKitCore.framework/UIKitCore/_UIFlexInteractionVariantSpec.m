@interface _UIFlexInteractionVariantSpec
+ (id)settingsControllerModule;
- (void)setScaleSpring:(id)a3;
@end

@implementation _UIFlexInteractionVariantSpec

- (void)setScaleSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) = a3;
  v3 = a3;
}

+ (id)settingsControllerModule
{
  sub_188F78E34();

  return v2;
}

@end