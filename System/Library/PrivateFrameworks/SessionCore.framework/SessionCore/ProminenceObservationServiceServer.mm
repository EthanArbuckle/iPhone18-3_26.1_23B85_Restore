@interface ProminenceObservationServiceServer
- (_TtC11SessionCore34ProminenceObservationServiceServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ProminenceObservationServiceServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CF66BA4(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore34ProminenceObservationServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end