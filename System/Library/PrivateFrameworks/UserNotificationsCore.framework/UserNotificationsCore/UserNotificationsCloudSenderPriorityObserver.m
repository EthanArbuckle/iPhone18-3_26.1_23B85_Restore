@interface UserNotificationsCloudSenderPriorityObserver
- (_TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver)init;
- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4;
- (void)systemSleepMonitorDidWakeFromSleep:(id)a3;
@end

@implementation UserNotificationsCloudSenderPriorityObserver

- (_TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemSleepMonitor:(id)a3 prepareForSleepWithCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  sub_1DA84B55C("systemSleepMonitorPrepareForSleep(): %s waking = false", 0);
  v5[2](v5);

  _Block_release(v5);
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)a3
{
  v3 = self;
  sub_1DA84B55C("systemSleepMonitorDidWakeFromSleep(): %s waking = true", 1);
}

@end