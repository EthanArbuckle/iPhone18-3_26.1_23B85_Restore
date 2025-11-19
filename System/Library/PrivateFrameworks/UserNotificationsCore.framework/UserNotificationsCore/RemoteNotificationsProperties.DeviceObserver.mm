@interface RemoteNotificationsProperties.DeviceObserver
- (_TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver)init;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation RemoteNotificationsProperties.DeviceObserver

- (void)service:(id)a3 devicesChanged:(id)a4
{
  if (a4)
  {
    sub_1DA940BE4();
  }

  v6 = a3;
  v7 = self;
  sub_1DA7B7A54("IDS devices changed. Refreshing state.");
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (a4)
  {
    sub_1DA940E94();
  }

  v6 = a3;
  v7 = self;
  sub_1DA7B7A54("IDS account changed. Refreshing state.");
}

- (_TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end