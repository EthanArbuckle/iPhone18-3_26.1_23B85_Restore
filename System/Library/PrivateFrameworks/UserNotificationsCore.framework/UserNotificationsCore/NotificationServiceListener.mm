@interface NotificationServiceListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation NotificationServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = objc_allocWithZone(type metadata accessor for NotificationServiceConnection());
  connectionCopy = connection;
  selfCopy = self;
  v9 = connectionCopy;
  v10 = sub_1DA7AC494(selfCopy, v9, v6);
  v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62A8, &qword_1DA95F148);
  sub_1DA940FE4();

  return 1;
}

@end