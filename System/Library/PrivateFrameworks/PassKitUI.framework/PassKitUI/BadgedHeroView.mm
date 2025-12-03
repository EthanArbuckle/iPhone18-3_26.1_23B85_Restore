@interface BadgedHeroView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9PassKitUI14BadgedHeroView)initWithCoder:(id)coder;
- (_TtC9PassKitUI14BadgedHeroView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation BadgedHeroView

- (_TtC9PassKitUI14BadgedHeroView)initWithCoder:(id)coder
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1BD956E0C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9PassKitUI14BadgedHeroView_heroView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9PassKitUI14BadgedHeroView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end