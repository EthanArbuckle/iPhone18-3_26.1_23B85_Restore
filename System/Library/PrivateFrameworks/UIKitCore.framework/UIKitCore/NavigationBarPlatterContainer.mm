@interface NavigationBarPlatterContainer
- (_TtC5UIKit29NavigationBarPlatterContainer)initWithCoder:(id)a3;
- (_TtC5UIKit29NavigationBarPlatterContainer)initWithFrame:(CGRect)a3;
@end

@implementation NavigationBarPlatterContainer

- (_TtC5UIKit29NavigationBarPlatterContainer)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews) = v4;
  v5 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_disappearingPlatterViews;
  *(&self->super.super.super.super.isa + v5) = sub_188E8D430(v4);
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_TtC5UIKit29NavigationBarPlatterContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end