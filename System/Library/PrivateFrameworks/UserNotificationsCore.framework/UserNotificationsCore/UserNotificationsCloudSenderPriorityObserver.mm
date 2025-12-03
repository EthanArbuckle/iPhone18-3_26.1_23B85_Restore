@interface UserNotificationsCloudSenderPriorityObserver
- (_TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver)init;
- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion;
- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep;
@end

@implementation UserNotificationsCloudSenderPriorityObserver

- (_TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemSleepMonitor:(id)monitor prepareForSleepWithCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  selfCopy = self;
  sub_1DA84B55C("systemSleepMonitorPrepareForSleep(): %s waking = false", 0);
  v5[2](v5);

  _Block_release(v5);
}

- (void)systemSleepMonitorDidWakeFromSleep:(id)sleep
{
  selfCopy = self;
  sub_1DA84B55C("systemSleepMonitorDidWakeFromSleep(): %s waking = true", 1);
}

@end