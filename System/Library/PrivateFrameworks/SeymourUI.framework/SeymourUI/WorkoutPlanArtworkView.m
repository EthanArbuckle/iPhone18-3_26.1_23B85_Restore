@interface WorkoutPlanArtworkView
- (_TtC9SeymourUI22WorkoutPlanArtworkView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation WorkoutPlanArtworkView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  WorkoutPlanArtworkView.draw(_:)(v9);
}

- (void)layoutSubviews
{
  v2 = self;
  WorkoutPlanArtworkView.layoutSubviews()();
}

- (_TtC9SeymourUI22WorkoutPlanArtworkView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end