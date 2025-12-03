@interface ActivityRemoteSubscriptionPreferencesObservationServer
- (_TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ActivityRemoteSubscriptionPreferencesObservationServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CFE0084(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end