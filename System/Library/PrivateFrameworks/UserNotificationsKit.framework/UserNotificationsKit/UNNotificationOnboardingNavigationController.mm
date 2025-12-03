@interface UNNotificationOnboardingNavigationController
- (UNNotificationOnboardingNavigationController)initWithCoder:(id)coder;
- (UNNotificationOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (UNNotificationOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (UNNotificationOnboardingNavigationController)initWithRootViewController:(id)controller;
- (UNNotificationOnboardingNavigationControllerDelegate)onboardingDelegate;
- (void)onboardingController:(id)controller requestsPushingTo:(id)to;
- (void)onboardingControllerRequestsGoingBack:(id)back;
@end

@implementation UNNotificationOnboardingNavigationController

- (UNNotificationOnboardingNavigationControllerDelegate)onboardingDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UNNotificationOnboardingNavigationController)initWithRootViewController:(id)controller
{
  swift_unknownObjectWeakInit();
  v6.receiver = self;
  v6.super_class = UNNotificationOnboardingNavigationController;
  return [(UNNotificationOnboardingNavigationController *)&v6 initWithRootViewController:controller];
}

- (UNNotificationOnboardingNavigationController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_270A89450();
  __break(1u);
  return result;
}

- (UNNotificationOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UNNotificationOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onboardingControllerRequestsGoingBack:(id)back
{
  backCopy = back;
  selfCopy = self;
  _sSo44UNNotificationOnboardingNavigationControllerC20UserNotificationsKitE010onboardingD17RequestsGoingBackyySo0abD0_So06UIViewD0CXcF_0();
}

- (void)onboardingController:(id)controller requestsPushingTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  [toCopy setDelegate_];
  [(UNNotificationOnboardingNavigationController *)selfCopy pushViewController:toCopy animated:1];
}

@end