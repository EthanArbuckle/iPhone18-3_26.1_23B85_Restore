@interface RemoteNotificationsProperties.Availability.ManagedConfigurationObserver
- (_TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver)init;
- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation RemoteNotificationsProperties.Availability.ManagedConfigurationObserver

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = self;
  sub_1DA85915C();
}

- (void)profileConnectionDidReceiveDefaultsChangedNotification:(id)a3 userInfo:(id)a4
{
  v4 = self;
  sub_1DA85915C();
}

- (_TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end