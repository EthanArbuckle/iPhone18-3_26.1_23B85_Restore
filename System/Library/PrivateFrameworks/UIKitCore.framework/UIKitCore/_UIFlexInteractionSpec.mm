@interface _UIFlexInteractionSpec
+ (id)settingsControllerModule;
- (id)dynamicWithSize:(CGSize)size;
- (id)liquidLensWithSize:(CGSize)size;
- (void)setLarge:(id)large;
- (void)setLoupe:(id)loupe;
- (void)setMenu:(id)menu;
- (void)setSmall:(id)small;
- (void)setSmallLoupe:(id)loupe;
- (void)setUltraSmall:(id)small;
@end

@implementation _UIFlexInteractionSpec

- (void)setUltraSmall:(id)small
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall) = small;
  smallCopy = small;
}

- (void)setSmall:(id)small
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small) = small;
  smallCopy = small;
}

- (void)setLarge:(id)large
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large) = large;
  largeCopy = large;
}

- (void)setLoupe:(id)loupe
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe) = loupe;
  loupeCopy = loupe;
}

- (void)setSmallLoupe:(id)loupe
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe) = loupe;
  loupeCopy = loupe;
}

- (void)setMenu:(id)menu
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_menu) = menu;
  menuCopy = menu;
}

- (id)dynamicWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = sub_188F76B80(width, height);

  return v6;
}

- (id)liquidLensWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v6 = sub_188F76FD0(width, height);

  return v6;
}

+ (id)settingsControllerModule
{
  sub_188F789D4();

  return v2;
}

@end