@interface PreferencesControllerNavigationCoordinator
- (_TtC14SettingsHostUI42PreferencesControllerNavigationCoordinator)init;
- (void)preferencesViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5;
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

- (void)preferencesViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a4;

  PreferencesControllerNavigationCoordinator.preferencesViewController(_:push:animated:)(v8, v9, a5);
}

@end