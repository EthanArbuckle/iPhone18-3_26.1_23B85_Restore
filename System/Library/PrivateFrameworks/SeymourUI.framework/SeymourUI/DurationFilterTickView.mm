@interface DurationFilterTickView
- (CGSize)intrinsicContentSize;
- (_TtC9SeymourUI22DurationFilterTickView)initWithCoder:(id)coder;
- (_TtC9SeymourUI22DurationFilterTickView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_20BE56100(x, y, width, height);
}

- (_TtC9SeymourUI22DurationFilterTickView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC9SeymourUI22DurationFilterTickView)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_layout;
  coderCopy = coder;
  sub_20BE56B5C(v10);
  v6 = v10[1];
  *v4 = v10[0];
  *(v4 + 1) = v6;
  *(v4 + 4) = v11;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI22DurationFilterTickView_state) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DurationFilterTickView();
  v7 = [(DurationFilterTickView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end