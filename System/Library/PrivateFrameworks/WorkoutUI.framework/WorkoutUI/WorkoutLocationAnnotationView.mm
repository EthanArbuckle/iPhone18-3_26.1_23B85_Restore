@interface WorkoutLocationAnnotationView
- (_TtC9WorkoutUI29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtC9WorkoutUI29WorkoutLocationAnnotationView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation WorkoutLocationAnnotationView

- (_TtC9WorkoutUI29WorkoutLocationAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return WorkoutLocationAnnotationView.init(annotation:reuseIdentifier:)(v7, v4, v6);
}

- (_TtC9WorkoutUI29WorkoutLocationAnnotationView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

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
  WorkoutLocationAnnotationView.draw(_:)(v9);
}

@end