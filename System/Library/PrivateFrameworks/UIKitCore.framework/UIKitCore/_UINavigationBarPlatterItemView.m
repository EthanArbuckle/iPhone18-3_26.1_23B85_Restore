@interface _UINavigationBarPlatterItemView
- (_UINavigationBarPlatterItemView)initWithCoder:(id)a3;
- (_UINavigationBarPlatterItemView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UINavigationBarPlatterItemView

- (_UINavigationBarPlatterItemView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
  type metadata accessor for NavigationBarPlatterContainer.AnimationScheduler();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(v5 + 3) = sub_188E8D690(MEMORY[0x1E69E7CC0]);
  *(&self->super.super.super.super.isa + v4) = v5;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18918FF38();
}

- (_UINavigationBarPlatterItemView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end