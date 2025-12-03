@interface IDSSyncService
- (_TtC17SessionSyncEngine14IDSSyncService)init;
- (void)dealloc;
- (void)pairedDeviceStateChangedWithNotification:(id)notification;
@end

@implementation IDSSyncService

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*(&selfCopy->super.isa + v6));
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for IDSSyncService();
  [(IDSSyncService *)&v7 dealloc];
}

- (_TtC17SessionSyncEngine14IDSSyncService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pairedDeviceStateChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_2657D0C20(&unk_287719E48, sub_2657D0ECC, &block_descriptor_49);
}

@end