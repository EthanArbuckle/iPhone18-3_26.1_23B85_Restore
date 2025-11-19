@interface RouteDetectorDataSource
- (BOOL)relevantRouteDetector:(id)a3 isEndpointRelevant:(id)a4;
- (BOOL)relevantRouteDetector:(id)a3 isOutputDeviceRelevant:(id)a4;
- (_TtC11WorkoutCore23RouteDetectorDataSource)init;
@end

@implementation RouteDetectorDataSource

- (_TtC11WorkoutCore23RouteDetectorDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)relevantRouteDetector:(id)a3 isEndpointRelevant:(id)a4
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore23RouteDetectorDataSource_type))
  {
    v4 = &selRef_isCompanionEndpoint;
  }

  else
  {
    v4 = &selRef_isLocalEndpoint;
  }

  return [a4 *v4];
}

- (BOOL)relevantRouteDetector:(id)a3 isOutputDeviceRelevant:(id)a4
{
  v4 = a4;
  if ([v4 deviceType] == 2)
  {
    if ([v4 deviceSubtype] == 2)
    {

      return 1;
    }

    else
    {
      v6 = [v4 deviceSubtype];

      return v6 == 3;
    }
  }

  else
  {

    return 0;
  }
}

@end