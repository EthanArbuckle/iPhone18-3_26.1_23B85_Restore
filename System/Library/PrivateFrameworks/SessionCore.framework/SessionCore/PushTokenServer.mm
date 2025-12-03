@interface PushTokenServer
- (_TtC11SessionCore15PushTokenServer)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation PushTokenServer

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22CEE32EC(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC11SessionCore15PushTokenServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end