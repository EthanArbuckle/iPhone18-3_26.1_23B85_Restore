@interface NotificationServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation NotificationServiceListener

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = objc_allocWithZone(type metadata accessor for NotificationServiceConnection());
  v7 = a4;
  v8 = self;
  v9 = v7;
  v10 = sub_1DA7AC494(v8, v9, v6);
  v11 = *(&v8->super.isa + OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62A8, &qword_1DA95F148);
  sub_1DA940FE4();

  return 1;
}

@end