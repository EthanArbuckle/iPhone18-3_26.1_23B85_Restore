@interface WORaceWorkoutTracker
- (NSDictionary)metadata;
- (WORaceWorkoutTracker)init;
- (WORaceWorkoutTracker)initWithConfiguration:(id)configuration;
- (void)dataProvider:(id)provider didUpdate:(unint64_t)update;
- (void)didUpdate:(id)update;
- (void)recoverWith:(id)with metadata:(id)metadata;
- (void)setRoutePoints:(id)points;
@end

@implementation WORaceWorkoutTracker

- (WORaceWorkoutTracker)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = specialized RaceWorkoutTracker.init(configuration:)(configurationCopy);

  return v4;
}

- (void)didUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  RaceWorkoutTracker.didUpdate(_:)(updateCopy);
}

- (void)recoverWith:(id)with metadata:(id)metadata
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  withCopy = with;
  selfCopy = self;
  RaceWorkoutTracker.recover(with:metadata:)(withCopy, v6);
}

- (WORaceWorkoutTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDictionary)metadata
{
  selfCopy = self;
  RaceWorkoutTracker.metadata.getter();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)dataProvider:(id)provider didUpdate:(unint64_t)update
{
  swift_unknownObjectRetain();
  selfCopy = self;
  RaceWorkoutTracker.dataProvider(_:didUpdate:)(provider, update);
  swift_unknownObjectRelease();
}

- (void)setRoutePoints:(id)points
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    pointsCopy = points;
    [v5 setRoutePoints_];

    swift_unknownObjectRelease();
  }
}

@end