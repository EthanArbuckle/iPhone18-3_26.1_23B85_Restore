@interface WOAVRoute
+ (id)pickableRoutesForCategory:(id)category;
- (NSString)description;
- (_TtC11WorkoutCore9WOAVRoute)init;
@end

@implementation WOAVRoute

- (NSString)description
{
  selfCopy = self;
  v3 = WOAVRoute.description.getter();
  v5 = v4;

  v6 = MEMORY[0x20F2E6C00](v3, v5);

  return v6;
}

+ (id)pickableRoutesForCategory:(id)category
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized static WOAVRoute.pickableRoutes(for:)(v3, v4);

  type metadata accessor for WOAVRoute();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC11WorkoutCore9WOAVRoute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end