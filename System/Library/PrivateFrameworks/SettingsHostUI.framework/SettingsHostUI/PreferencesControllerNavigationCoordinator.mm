@interface PreferencesControllerNavigationCoordinator
- (_TtC14SettingsHostUI42PreferencesControllerNavigationCoordinator)init;
- (void)preferencesViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation PreferencesControllerNavigationCoordinator

- (_TtC14SettingsHostUI42PreferencesControllerNavigationCoordinator)init
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return self;
}

- (void)preferencesViewController:(id)controller pushViewController:(id)viewController animated:(BOOL)animated
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  viewControllerCopy = viewController;

  PreferencesControllerNavigationCoordinator.preferencesViewController(_:push:animated:)(controllerCopy, viewControllerCopy, animated);
}

@end