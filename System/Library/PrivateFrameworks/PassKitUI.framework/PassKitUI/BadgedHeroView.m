@interface BadgedHeroView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI14BadgedHeroView)initWithCoder:(id)a3;
- (_TtC9PassKitUI14BadgedHeroView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BadgedHeroView

- (_TtC9PassKitUI14BadgedHeroView)initWithCoder:(id)a3
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1BD956E0C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9PassKitUI14BadgedHeroView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end