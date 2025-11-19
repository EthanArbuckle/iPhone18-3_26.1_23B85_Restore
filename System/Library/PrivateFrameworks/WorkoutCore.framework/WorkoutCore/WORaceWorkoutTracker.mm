@interface WORaceWorkoutTracker
- (NSDictionary)metadata;
- (WORaceWorkoutTracker)init;
- (WORaceWorkoutTracker)initWithConfiguration:(id)a3;
- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4;
- (void)didUpdate:(id)a3;
- (void)recoverWith:(id)a3 metadata:(id)a4;
- (void)setRoutePoints:(id)a3;
@end

@implementation WORaceWorkoutTracker

- (WORaceWorkoutTracker)initWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = specialized RaceWorkoutTracker.init(configuration:)(v3);

  return v4;
}

- (void)didUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  RaceWorkoutTracker.didUpdate(_:)(v4);
}

- (void)recoverWith:(id)a3 metadata:(id)a4
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  RaceWorkoutTracker.recover(with:metadata:)(v7, v6);
}

- (WORaceWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDictionary)metadata
{
  v2 = self;
  RaceWorkoutTracker.metadata.getter();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)dataProvider:(id)a3 didUpdate:(unint64_t)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  RaceWorkoutTracker.dataProvider(_:didUpdate:)(a3, a4);
  swift_unknownObjectRelease();
}

- (void)setRoutePoints:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    [v5 setRoutePoints_];

    swift_unknownObjectRelease();
  }
}

@end