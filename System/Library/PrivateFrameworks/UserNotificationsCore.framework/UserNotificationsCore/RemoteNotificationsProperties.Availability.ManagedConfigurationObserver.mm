@interface RemoteNotificationsProperties.Availability.ManagedConfigurationObserver
- (_TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver)init;
- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation RemoteNotificationsProperties.Availability.ManagedConfigurationObserver

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  selfCopy = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info
{
  selfCopy = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  selfCopy = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)notification userInfo:(id)info
{
  selfCopy = self;
  sub_1DA85915C();
}

- (_TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end