@interface WorkoutPlanArtworkView
- (_TtC9SeymourUI22WorkoutPlanArtworkView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation WorkoutPlanArtworkView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  WorkoutPlanArtworkView.draw(_:)(v9);
}

- (void)layoutSubviews
{
  selfCopy = self;
  WorkoutPlanArtworkView.layoutSubviews()();
}

- (_TtC9SeymourUI22WorkoutPlanArtworkView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end