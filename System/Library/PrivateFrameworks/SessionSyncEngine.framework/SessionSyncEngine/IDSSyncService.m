@interface IDSSyncService
- (_TtC17SessionSyncEngine14IDSSyncService)init;
- (void)dealloc;
- (void)pairedDeviceStateChangedWithNotification:(id)a3;
@end

@implementation IDSSyncService

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*(&v4->super.isa + v6));
  v7.receiver = v4;
  v7.super_class = type metadata accessor for IDSSyncService();
  [(IDSSyncService *)&v7 dealloc];
}

- (_TtC17SessionSyncEngine14IDSSyncService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pairedDeviceStateChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2657D0C20(&unk_287719E48, sub_2657D0ECC, &block_descriptor_49);
}

@end