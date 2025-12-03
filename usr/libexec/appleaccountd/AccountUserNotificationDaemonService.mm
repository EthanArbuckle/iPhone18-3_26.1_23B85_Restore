@interface AccountUserNotificationDaemonService
- (void)postAccountUserNotificationWith:(id)with completion:(id)completion;
@end

@implementation AccountUserNotificationDaemonService

- (void)postAccountUserNotificationWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  v6[2].isa = v5;
  withCopy = with;

  sub_100008600(withCopy, sub_100008DD4, v6);
}

@end