@interface SensitiveMessageIndicatorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11TelephonyUI29SensitiveMessageIndicatorView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SensitiveMessageIndicatorView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B48DD45C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1B48DD5CC(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC11TelephonyUI29SensitiveMessageIndicatorView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC11TelephonyUI29SensitiveMessageIndicatorView_sensitivityLabel;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  coderCopy = coder;
  *(&self->super.super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SensitiveMessageIndicatorView();
  v8 = [(MessageIndicatorView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end