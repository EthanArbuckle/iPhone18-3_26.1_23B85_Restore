@interface SessionInclineView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9SeymourUI18SessionInclineView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SessionInclineView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_20BB6B210();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_20BB6B964();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SessionInclineView *)self intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC9SeymourUI18SessionInclineView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end