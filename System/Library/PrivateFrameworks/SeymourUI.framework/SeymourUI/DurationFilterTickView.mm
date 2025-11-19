@interface DurationFilterTickView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI22DurationFilterTickView)initWithCoder:(id)a3;
- (_TtC9SeymourUI22DurationFilterTickView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation DurationFilterTickView

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout);
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_20BE56100(x, y, width, height);
}

- (_TtC9SeymourUI22DurationFilterTickView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout;
  sub_20BE56B5C(v12);
  v9 = v12[1];
  *v8 = v12[0];
  *(v8 + 1) = v9;
  *(v8 + 4) = v13;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DurationFilterTickView();
  return [(DurationFilterTickView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC9SeymourUI22DurationFilterTickView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout;
  v5 = a3;
  sub_20BE56B5C(v10);
  v6 = v10[1];
  *v4 = v10[0];
  *(v4 + 1) = v6;
  *(v4 + 4) = v11;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DurationFilterTickView();
  v7 = [(DurationFilterTickView *)&v9 initWithCoder:v5];

  if (v7)
  {
  }

  return v7;
}

@end