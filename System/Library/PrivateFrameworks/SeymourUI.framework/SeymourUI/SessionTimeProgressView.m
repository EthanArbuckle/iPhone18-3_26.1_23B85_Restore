@interface SessionTimeProgressView
- (BOOL)accessibilityShowRemaining;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9SeymourUI23SessionTimeProgressView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SessionTimeProgressView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionTimeProgressView_label);
  v3 = self;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SessionTimeProgressView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20BA791B4();
}

- (_TtC9SeymourUI23SessionTimeProgressView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)accessibilityShowRemaining
{
  v2 = self;
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