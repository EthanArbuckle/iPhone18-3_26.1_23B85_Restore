@interface RouteDetectorAdapter
- (_TtC11WorkoutCore20RouteDetectorAdapter)init;
- (void)relevantRouteDetector:(id)detector didDetectRelevantRoute:(BOOL)route;
@end

@implementation RouteDetectorAdapter

- (void)relevantRouteDetector:(id)detector didDetectRelevantRoute:(BOOL)route
{
  detectorCopy = detector;
  selfCopy = self;
  RouteDetectorAdapter.relevantRouteDetector(_:didDetectRelevantRoute:)(detectorCopy, route);
}

- (_TtC11WorkoutCore20RouteDetectorAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end