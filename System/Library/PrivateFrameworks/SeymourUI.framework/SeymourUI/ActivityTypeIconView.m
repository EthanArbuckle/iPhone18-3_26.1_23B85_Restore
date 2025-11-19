@interface ActivityTypeIconView
- (_TtC9SeymourUI20ActivityTypeIconView)initWithCoder:(id)a3;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithFrame:(CGRect)a3;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)a3;
- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (int64_t)accessibilityActivityType;
@end

@implementation ActivityTypeIconView

- (_TtC9SeymourUI20ActivityTypeIconView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType;
  *v7 = 0;
  v7[8] = 1;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ActivityTypeIconView();
  v8 = [(ActivityTypeIconView *)&v13 initWithFrame:x, y, width, height];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 whiteColor];
  [(ActivityTypeIconView *)v10 setTintColor:v11];

  return v10;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType;
  *v3 = 0;
  v3[8] = 1;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI20ActivityTypeIconView)initWithImage:(id)a3 highlightedImage:(id)a4
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