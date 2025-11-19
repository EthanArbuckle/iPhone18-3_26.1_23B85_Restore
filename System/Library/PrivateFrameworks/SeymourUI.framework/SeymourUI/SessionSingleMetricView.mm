@interface SessionSingleMetricView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SessionSingleMetricView

- (void)layoutSubviews
{
  v2 = self;
  sub_20BB90920();
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel);
  v5 = self;
  [v4 intrinsicContentSize];
  v7 = v6;
  [*(&v5->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel) intrinsicContentSize];
  v9 = v7 + v8 + 2.0;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SessionSingleMetricView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

@end