@interface WORaceCoordinator
- (NSString)routeTitle;
- (WORaceCoordinator)init;
- (WORaceCoordinator)initWithConfiguration:(id)a3 builder:(id)a4 healthStore:(id)a5;
- (WORaceRouteDelegate)routeDelegate;
- (void)activate;
- (void)queryForPointsWithTimestampAnchor:(double)a3 numberOfPoints:(int64_t)a4 completion:(id)a5;
- (void)recoverRoutePoints;
- (void)setRouteDelegate:(id)a3;
- (void)setRouteTitle:(id)a3;
- (void)updateWithElapsedTime:(double)a3;
@end

@implementation WORaceCoordinator

- (NSString)routeTitle
{
  v2 = (self + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = MEMORY[0x20F2E6C00](v4, v3);

  return v5;
}

- (void)setRouteTitle:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (WORaceRouteDelegate)routeDelegate
{
  v3 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setRouteDelegate:(id)a3
{
  v5 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (WORaceCoordinator)initWithConfiguration:(id)a3 builder:(id)a4 healthStore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(v7, v8, v9);

  return v10;
}

- (void)activate
{
  v2 = self;
  RaceCoordinator.activate()();
}

- (void)updateWithElapsedTime:(double)a3
{
  v4 = *(self + OBJC_IVAR___WORaceCoordinator_raceLocationProvider);
  v6 = self;
  RaceLocationProvider.updateWithElapsedTime(_:)(a3);
  v5 = *(*(v6 + OBJC_IVAR___WORaceCoordinator_racePositionProvider) + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  MetadataSavingDelegate.updateWithElapsedTime(_:)(a3);
}

- (void)queryForPointsWithTimestampAnchor:(double)a3 numberOfPoints:(int64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = _sSo7NSArrayCIeyBy_SaySo12CLRoutePointCGIegg_TRTA_0;
  }

  else
  {
    v9 = 0;
  }

  v10 = self;
  RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(a4, v8, v9, a3);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(v8);
}

- (void)recoverRoutePoints
{
  v3 = (self + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = *(v5 + 16);
  v9 = self;

  v8(self + v6, 0, closure #1 in RaceCoordinator.recoverRoutePoints()partial apply, v7, v4, v5, -1.0);
}

- (WORaceCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end