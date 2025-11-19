@interface PreferencesListControllerNavigationCoordinator
- (BOOL)listControllerIsOnTopOfNavigationStack:(id)a3 searchTopMostViewControllerChildren:(BOOL)a4;
- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)a3 givenRootController:(id)a4;
- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)a3;
- (_TtC14SettingsHostUI46PreferencesListControllerNavigationCoordinator)init;
- (id)animationControllerForDismissedController:(id)a3;
- (void)listController:(id)a3 pushViewController:(id)a4 givenRootController:(id)a5 withModalStylePopupStateApplicator:(id)a6 animated:(BOOL)a7;
@end

@implementation PreferencesListControllerNavigationCoordinator

- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)a3 givenRootController:(id)a4
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = PreferencesListControllerNavigationCoordinator.listControllerShouldDeselect(afterFormSheetDisappearance:given:)(v7, a4);

  return v10 & 1;
}

- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)a3
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  v7 = PreferencesListControllerNavigationCoordinator.listControllerShouldNotDeselect(afterAppearing:)(v5);

  return v7 & 1;
}

- (void)listController:(id)a3 pushViewController:(id)a4 givenRootController:(id)a5 withModalStylePopupStateApplicator:(id)a6 animated:(BOOL)a7
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = _Block_copy(a6);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = self;
  PreferencesListControllerNavigationCoordinator.listController(_:push:given:withModalStylePopupStateApplicator:animated:)(v15, v16, a5, sub_265A3FB9C, v14, a7);
}

- (BOOL)listControllerIsOnTopOfNavigationStack:(id)a3 searchTopMostViewControllerChildren:(BOOL)a4
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = self;
  v9 = PreferencesListControllerNavigationCoordinator.listControllerIs(onTopOfNavigationStack:searchTopMostViewControllerChildren:)(v7, a4);

  return v9 & 1;
}

- (_TtC14SettingsHostUI46PreferencesListControllerNavigationCoordinator)init
{
  ObjectType = swift_getObjectType();
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(PreferencesListControllerNavigationCoordinator *)&v6 init];

  return v4;
}

- (id)animationControllerForDismissedController:(id)a3
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  _s14SettingsHostUI46PreferencesListControllerNavigationCoordinatorC09animationF012forDismissedSo06UIViewF21AnimatedTransitioning_pSgSo0lF0C_tF_0(v5);
  v8 = v7;

  return v8;
}

@end