@interface RouteDetectorAdapter
- (_TtC11WorkoutCore20RouteDetectorAdapter)init;
- (void)relevantRouteDetector:(id)a3 didDetectRelevantRoute:(BOOL)a4;
@end

@implementation RouteDetectorAdapter

- (void)relevantRouteDetector:(id)a3 didDetectRelevantRoute:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(v6, a4);
}

- (_TtC11WorkoutCore20RouteDetectorAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end