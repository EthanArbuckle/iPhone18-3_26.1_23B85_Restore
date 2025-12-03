@interface _UILiquidLensViewSpec
+ (id)settingsControllerModule;
- (void)setLarge:(id)large;
- (void)setSmall:(id)small;
@end

@implementation _UILiquidLensViewSpec

- (void)setSmall:(id)small
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small) = small;
  smallCopy = small;
}

- (void)setLarge:(id)large
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large) = large;
  largeCopy = large;
}

+ (id)settingsControllerModule
{
  sub_188F79B44();

  return v2;
}

@end