@interface ReducedActivityTypesProvider
- (NSArray)reducedActivityTypes;
- (_TtC11WorkoutCore28ReducedActivityTypesProvider)init;
- (void)setReducedActivityTypes:(id)types;
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

- (void)setReducedActivityTypes:(id)types
{
  typesCopy = types;
  if (types)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    typesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  ReducedActivityTypesProvider.reducedActivityTypes.setter(typesCopy);
}

- (_TtC11WorkoutCore28ReducedActivityTypesProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end