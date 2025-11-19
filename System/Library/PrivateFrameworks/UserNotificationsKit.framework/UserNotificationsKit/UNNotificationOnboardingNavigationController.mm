@interface UNNotificationOnboardingNavigationController
- (UNNotificationOnboardingNavigationController)initWithCoder:(id)a3;
- (UNNotificationOnboardingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (UNNotificationOnboardingNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (UNNotificationOnboardingNavigationController)initWithRootViewController:(id)a3;
- (UNNotificationOnboardingNavigationControllerDelegate)onboardingDelegate;
- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4;
- (void)onboardingControllerRequestsGoingBack:(id)a3;
@end

@implementation UNNotificationOnboardingNavigationController

- (UNNotificationOnboardingNavigationControllerDelegate)onboardingDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UNNotificationOnboardingNavigationController)initWithRootViewController:(id)a3
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = UNNotificationOnboardingNavigationController;
  return [(UNNotificationOnboardingNavigationController *)&v6 initWithRootViewController:a3];
}

- (UNNotificationOnboardingNavigationController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_270A89450();
  __break(1u);
  return result;
}

- (UNNotificationOnboardingNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UNNotificationOnboardingNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onboardingControllerRequestsGoingBack:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo44UNNotificationOnboardingNavigationControllerC20UserNotificationsKitE010onboardingD17RequestsGoingBackyySo0abD0_So06UIViewD0CXcF_0();
}

- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4
{
  v5 = a4;
  v6 = self;
  [v5 setDelegate_];
  [(UNNotificationOnboardingNavigationController *)v6 pushViewController:v5 animated:1];
}

@end