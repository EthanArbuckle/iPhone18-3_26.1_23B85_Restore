@interface _UILiquidLensViewSpec
+ (id)settingsControllerModule;
- (void)setLarge:(id)a3;
- (void)setSmall:(id)a3;
@end

@implementation _UILiquidLensViewSpec

- (void)setSmall:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small) = a3;
  v3 = a3;
}

- (void)setLarge:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large) = a3;
  v3 = a3;
}

+ (id)settingsControllerModule
{
  sub_188F79B44();

  return v2;
}

@end