@interface SessionTimeProgressView
- (BOOL)accessibilityShowRemaining;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9SeymourUI23SessionTimeProgressView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SessionTimeProgressView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label);
  selfCopy = self;
  [v2 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  if (qword_27C7608D0 != -1)
  {
    swift_once();
  }

  v8 = *&qword_27C769868;

  v9 = v5 + v8 + 2.0;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SessionTimeProgressView *)self intrinsicContentSize:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20BA791B4();
}

- (_TtC9SeymourUI23SessionTimeProgressView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)accessibilityShowRemaining
{
  selfCopy = self;
  v3 = sub_20C136974();
  v5 = v4;
  if (v3 == sub_20C136974() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C13DFF4();
  }

  return v8 & 1;
}

@end