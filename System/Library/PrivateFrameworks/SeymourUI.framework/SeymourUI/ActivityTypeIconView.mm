@interface ActivityTypeIconView
- (_TtC9SeymourUI20ActivityTypeIconView)initWithCoder:(id)coder;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithFrame:(CGRect)frame;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)image;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (int64_t)accessibilityActivityType;
@end

@implementation ActivityTypeIconView

- (_TtC9SeymourUI20ActivityTypeIconView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType;
  *v7 = 0;
  v7[8] = 1;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ActivityTypeIconView();
  height = [(ActivityTypeIconView *)&v13 initWithFrame:x, y, width, height];
  v9 = objc_opt_self();
  v10 = height;
  whiteColor = [v9 whiteColor];
  [(ActivityTypeIconView *)v10 setTintColor:whiteColor];

  return v10;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType;
  *v3 = 0;
  v3[8] = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)image
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)accessibilityActivityType
{
  v2 = (self + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType);
  if (*(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType))
  {
    return -1;
  }

  result = *v2;
  if (*v2 < 0)
  {
    __break(1u);
  }

  return result;
}

@end