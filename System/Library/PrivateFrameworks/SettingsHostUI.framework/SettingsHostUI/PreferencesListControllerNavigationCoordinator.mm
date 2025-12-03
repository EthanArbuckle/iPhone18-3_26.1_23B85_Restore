@interface PreferencesListControllerNavigationCoordinator
- (BOOL)listControllerIsOnTopOfNavigationStack:(id)stack searchTopMostViewControllerChildren:(BOOL)children;
- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)disappearance givenRootController:(id)controller;
- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)appearing;
- (_TtC14SettingsHostUI46PreferencesListControllerNavigationCoordinator)init;
- (id)animationControllerForDismissedController:(id)controller;
- (void)listController:(id)controller pushViewController:(id)viewController givenRootController:(id)rootController withModalStylePopupStateApplicator:(id)applicator animated:(BOOL)animated;
@end

@implementation PreferencesListControllerNavigationCoordinator

- (BOOL)listControllerShouldDeselectAfterFormSheetDisappearance:(id)disappearance givenRootController:(id)controller
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  disappearanceCopy = disappearance;
  controllerCopy = controller;
  selfCopy = self;
  v10 = PreferencesListControllerNavigationCoordinator.listControllerShouldDeselect(afterFormSheetDisappearance:given:)(disappearanceCopy, controller);

  return v10 & 1;
}

- (BOOL)listControllerShouldNotDeselectAfterAppearing:(id)appearing
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  appearingCopy = appearing;
  selfCopy = self;
  v7 = PreferencesListControllerNavigationCoordinator.listControllerShouldNotDeselect(afterAppearing:)(appearingCopy);

  return v7 & 1;
}

- (void)listController:(id)controller pushViewController:(id)viewController givenRootController:(id)rootController withModalStylePopupStateApplicator:(id)applicator animated:(BOOL)animated
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = _Block_copy(applicator);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  rootControllerCopy = rootController;
  selfCopy = self;
  PreferencesListControllerNavigationCoordinator.listController(_:push:given:withModalStylePopupStateApplicator:animated:)(controllerCopy, viewControllerCopy, rootController, sub_265A3FB9C, v14, animated);
}

- (BOOL)listControllerIsOnTopOfNavigationStack:(id)stack searchTopMostViewControllerChildren:(BOOL)children
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  stackCopy = stack;
  selfCopy = self;
  v9 = PreferencesListControllerNavigationCoordinator.listControllerIs(onTopOfNavigationStack:searchTopMostViewControllerChildren:)(stackCopy, children);

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

- (id)animationControllerForDismissedController:(id)controller
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  controllerCopy = controller;
  selfCopy = self;
  _s14SettingsHostUI46PreferencesListControllerNavigationCoordinatorC09animationF012forDismissedSo06UIViewF21AnimatedTransitioning_pSgSo0lF0C_tF_0(controllerCopy);
  v8 = v7;

  return v8;
}

@end