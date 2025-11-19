@interface MessageIndicatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC11TelephonyUI20MessageIndicatorView)initWithFrame:(CGRect)a3;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MessageIndicatorView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B48DC108();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel) sizeThatFits_];
  v5 = v4 + 26.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B48DC504(a3);
}

- (void)handleTapGesture
{
  v2 = self;
  sub_1B48DCD24();
}

- (_TtC11TelephonyUI20MessageIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end