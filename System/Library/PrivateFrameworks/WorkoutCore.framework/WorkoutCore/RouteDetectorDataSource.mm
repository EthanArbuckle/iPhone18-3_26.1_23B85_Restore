@interface RouteDetectorDataSource
- (BOOL)relevantRouteDetector:(id)detector isEndpointRelevant:(id)relevant;
- (BOOL)relevantRouteDetector:(id)detector isOutputDeviceRelevant:(id)relevant;
- (_TtC11WorkoutCore23RouteDetectorDataSource)init;
@end

@implementation RouteDetectorDataSource

- (_TtC11WorkoutCore23RouteDetectorDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)relevantRouteDetector:(id)detector isEndpointRelevant:(id)relevant
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore23RouteDetectorDataSource_type))
  {
    v4 = &selRef_isCompanionEndpoint;
  }

  else
  {
    v4 = &selRef_isLocalEndpoint;
  }

  return [relevant *v4];
}

- (BOOL)relevantRouteDetector:(id)detector isOutputDeviceRelevant:(id)relevant
{
  relevantCopy = relevant;
  if ([relevantCopy deviceType] == 2)
  {
    if ([relevantCopy deviceSubtype] == 2)
    {

      return 1;
    }

    else
    {
      deviceSubtype = [relevantCopy deviceSubtype];

      return deviceSubtype == 3;
    }
  }

  else
  {

    return 0;
  }
}

@end