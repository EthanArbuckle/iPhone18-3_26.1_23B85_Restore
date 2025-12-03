@interface QoSObservationServiceServer
- (_TtC11SessionCore27QoSObservationServiceServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation QoSObservationServiceServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D00A200(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore27QoSObservationServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end