@interface AccountUserNotificationDaemonService
- (void)postAccountUserNotificationWith:(id)a3 completion:(id)a4;
@end

@implementation AccountUserNotificationDaemonService

- (void)postAccountUserNotificationWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  v6[2].isa = v5;
  v7 = a3;

  sub_100008600(v7, sub_100008DD4, v6);
}

@end