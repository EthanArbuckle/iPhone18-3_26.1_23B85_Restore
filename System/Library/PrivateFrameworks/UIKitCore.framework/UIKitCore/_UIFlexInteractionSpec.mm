@interface _UIFlexInteractionSpec
+ (id)settingsControllerModule;
- (id)dynamicWithSize:(CGSize)a3;
- (id)liquidLensWithSize:(CGSize)a3;
- (void)setLarge:(id)a3;
- (void)setLoupe:(id)a3;
- (void)setMenu:(id)a3;
- (void)setSmall:(id)a3;
- (void)setSmallLoupe:(id)a3;
- (void)setUltraSmall:(id)a3;
@end

@implementation _UIFlexInteractionSpec

- (void)setUltraSmall:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall) = a3;
  v3 = a3;
}

- (void)setSmall:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small) = a3;
  v3 = a3;
}

- (void)setLarge:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large) = a3;
  v3 = a3;
}

- (void)setLoupe:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe) = a3;
  v3 = a3;
}

- (void)setSmallLoupe:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe) = a3;
  v3 = a3;
}

- (void)setMenu:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu) = a3;
  v3 = a3;
}

- (id)dynamicWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_188F76B80(width, height);

  return v6;
}

- (id)liquidLensWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_188F76FD0(width, height);

  return v6;
}

+ (id)settingsControllerModule
{
  sub_188F789D4();

  return v2;
}

@end