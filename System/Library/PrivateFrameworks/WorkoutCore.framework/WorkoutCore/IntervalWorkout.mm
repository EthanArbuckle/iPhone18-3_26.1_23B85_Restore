@interface IntervalWorkout
- (BOOL)isEqual:(id)equal;
- (_TtC11WorkoutCore15IntervalWorkout)init;
- (int64_t)hash;
@end

@implementation IntervalWorkout

- (int64_t)hash
{
  selfCopy = self;
  v3 = IntervalWorkout.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IntervalWorkout.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (_TtC11WorkoutCore15IntervalWorkout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end