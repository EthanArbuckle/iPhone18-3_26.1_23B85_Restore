@interface IntervalWorkout
- (BOOL)isEqual:(id)a3;
- (_TtC11WorkoutCore15IntervalWorkout)init;
- (int64_t)hash;
@end

@implementation IntervalWorkout

- (int64_t)hash
{
  v2 = self;
  v3 = IntervalWorkout.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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