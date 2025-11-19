@interface _UILiquidLensViewVariantSpec
+ (id)settingsControllerModule;
- (void)setDefaultValues;
- (void)setLiftSpring:(id)a3;
- (void)setUnLiftSpring:(id)a3;
@end

@implementation _UILiquidLensViewVariantSpec

- (void)setLiftSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring) = a3;
  v3 = a3;
}

- (void)setUnLiftSpring:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188F77EF4();
}

+ (id)settingsControllerModule
{
  sub_188F79DE8();

  return v2;
}

@end