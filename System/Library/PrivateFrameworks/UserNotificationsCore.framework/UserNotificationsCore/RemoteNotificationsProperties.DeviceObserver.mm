@interface RemoteNotificationsProperties.DeviceObserver
- (_TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver)init;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation RemoteNotificationsProperties.DeviceObserver

- (void)service:(id)service devicesChanged:(id)changed
{
  if (changed)
  {
    sub_1DA940BE4();
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1DA7B7A54("IDS devices changed. Refreshing state.");
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    sub_1DA940E94();
  }

  serviceCopy = service;
  selfCopy = self;
  sub_1DA7B7A54("IDS account changed. Refreshing state.");
}

- (_TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end