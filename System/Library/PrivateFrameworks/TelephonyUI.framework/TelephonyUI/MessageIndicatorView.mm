@interface MessageIndicatorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11TelephonyUI20MessageIndicatorView)initWithFrame:(CGRect)frame;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MessageIndicatorView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B48DC108();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC11TelephonyUI20MessageIndicatorView_titleLabel) sizeThatFits_];
  v5 = v4 + 26.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1B48DC504(change);
}

- (void)handleTapGesture
{
  selfCopy = self;
  sub_1B48DCD24();
}

- (_TtC11TelephonyUI20MessageIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end