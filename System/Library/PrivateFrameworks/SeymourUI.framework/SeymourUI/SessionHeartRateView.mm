@interface SessionHeartRateView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI20SessionHeartRateView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SessionHeartRateView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label);
  selfCopy = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_heartView) sizeThatFits_];
  v9 = v7 + v8 + 2.0;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BABB76C();
}

- (_TtC9SeymourUI20SessionHeartRateView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end