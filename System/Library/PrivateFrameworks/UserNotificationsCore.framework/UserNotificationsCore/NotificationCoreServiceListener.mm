@interface NotificationCoreServiceListener
- (_TtC21UserNotificationsCore31NotificationCoreServiceListener)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation NotificationCoreServiceListener

- (_TtC21UserNotificationsCore31NotificationCoreServiceListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1DA884D58(connectionCopy);

  swift_unknownObjectRelease();
}

@end