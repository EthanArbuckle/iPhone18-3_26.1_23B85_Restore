@interface WorkoutLocationAnnotation
- (_TtC9WorkoutUI25WorkoutLocationAnnotation)init;
@end

@implementation WorkoutLocationAnnotation

- (_TtC9WorkoutUI25WorkoutLocationAnnotation)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI25WorkoutLocationAnnotation_centerXOffset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9WorkoutUI25WorkoutLocationAnnotation_centerYOffset) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for WorkoutLocationAnnotation();
  return [(MKPointAnnotation *)&v3 init];
}

@end