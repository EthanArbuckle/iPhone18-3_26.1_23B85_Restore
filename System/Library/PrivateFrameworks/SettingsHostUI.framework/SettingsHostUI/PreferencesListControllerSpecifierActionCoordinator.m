@interface PreferencesListControllerSpecifierActionCoordinator
- (BOOL)listController:(id)a3 shouldPerformDefaultDeferredBundleLoadingForSpecifier:(id)a4;
- (_TtC14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinator)init;
- (void)listController:(id)a3 presentControllerForSpecifier:(id)a4;
@end

@implementation PreferencesListControllerSpecifierActionCoordinator

- (_TtC14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinator)init
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

- (BOOL)listController:(id)a3 shouldPerformDefaultDeferredBundleLoadingForSpecifier:(id)a4
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v7 = a4;

  v8 = _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_44shouldPerformDefaultDeferredBundleLoadingForSbSo06PSListF0C_So11PSSpecifierCtF_0(v6, v7);

  return v8 & 1;
}

- (void)listController:(id)a3 presentControllerForSpecifier:(id)a4
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v7 = a4;

  _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_07presentF3ForySo06PSListF0C_So11PSSpecifierCtF_0(v6, v7);
}

@end