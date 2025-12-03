@interface PreferencesListControllerSpecifierActionCoordinator
- (BOOL)listController:(id)controller shouldPerformDefaultDeferredBundleLoadingForSpecifier:(id)specifier;
- (_TtC14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinator)init;
- (void)listController:(id)controller presentControllerForSpecifier:(id)specifier;
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

- (BOOL)listController:(id)controller shouldPerformDefaultDeferredBundleLoadingForSpecifier:(id)specifier
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  specifierCopy = specifier;

  v8 = _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_44shouldPerformDefaultDeferredBundleLoadingForSbSo06PSListF0C_So11PSSpecifierCtF_0(controllerCopy, specifierCopy);

  return v8 & 1;
}

- (void)listController:(id)controller presentControllerForSpecifier:(id)specifier
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  specifierCopy = specifier;

  _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_07presentF3ForySo06PSListF0C_So11PSSpecifierCtF_0(controllerCopy, specifierCopy);
}

@end