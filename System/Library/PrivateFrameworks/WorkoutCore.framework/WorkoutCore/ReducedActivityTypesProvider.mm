@interface ReducedActivityTypesProvider
- (NSArray)reducedActivityTypes;
- (_TtC11WorkoutCore28ReducedActivityTypesProvider)init;
- (void)setReducedActivityTypes:(id)a3;
@end

@implementation ReducedActivityTypesProvider

- (NSArray)reducedActivityTypes
{
  v3 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for FIUIWorkoutActivityType();

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setReducedActivityTypes:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = self;
  ReducedActivityTypesProvider.reducedActivityTypes.setter(v3);
}

- (_TtC11WorkoutCore28ReducedActivityTypesProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end