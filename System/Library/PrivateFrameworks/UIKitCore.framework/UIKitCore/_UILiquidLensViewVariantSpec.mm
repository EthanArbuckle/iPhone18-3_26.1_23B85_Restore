@interface _UILiquidLensViewVariantSpec
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setLiftSpring:(id)spring;
- (void)setUnLiftSpring:(id)spring;
@end

@implementation _UILiquidLensViewVariantSpec

- (void)setLiftSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring) = spring;
  springCopy = spring;
}

- (void)setUnLiftSpring:(id)spring
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring) = spring;
  springCopy = spring;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188F77EF4();
}

+ (id)settingsControllerModule
{
  sub_188F79DE8();

  return v2;
}

@end