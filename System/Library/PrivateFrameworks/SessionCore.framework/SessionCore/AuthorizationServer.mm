@interface AuthorizationServer
- (_TtC11SessionCore19AuthorizationServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation AuthorizationServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22D0118B8(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore19AuthorizationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end