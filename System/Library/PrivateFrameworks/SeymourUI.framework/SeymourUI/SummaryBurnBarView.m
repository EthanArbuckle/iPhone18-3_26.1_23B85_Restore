@interface SummaryBurnBarView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI18SummaryBurnBarView)initWithFrame:(CGRect)a3;
@end

@implementation SummaryBurnBarView

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary);
  v5 = self;
  [v4 frame];
  MaxX = CGRectGetMaxX(v11);
  [*(&self->super.super.super.isa + v3) frame];
  MaxY = CGRectGetMaxY(v12);

  v8 = MaxX;
  v9 = MaxY;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC9SeymourUI18SummaryBurnBarView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end