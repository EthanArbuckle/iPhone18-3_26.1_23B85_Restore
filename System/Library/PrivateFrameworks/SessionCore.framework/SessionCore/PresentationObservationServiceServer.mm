@interface PresentationObservationServiceServer
- (_TtC11SessionCore36PresentationObservationServiceServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation PresentationObservationServiceServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CF84A8C(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore36PresentationObservationServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end