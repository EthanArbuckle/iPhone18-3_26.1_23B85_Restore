@interface HKSHQuickScheduleManagementViewControllerInternal
- (HKSHQuickScheduleManagementViewControllerDelegateInternal)sleepDelegate;
- (HKSHQuickScheduleManagementViewControllerInternal)initWithRootViewController:(id)a3;
- (HKSHQuickScheduleManagementViewControllerInternal)initWithSleepStore:(id)a3 provenanceSource:(id)a4;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3;
- (void)setSleepDelegate:(id)a3;
@end

@implementation HKSHQuickScheduleManagementViewControllerInternal

- (HKSHQuickScheduleManagementViewControllerDelegateInternal)sleepDelegate
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSleepDelegate:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (HKSHQuickScheduleManagementViewControllerInternal)initWithSleepStore:(id)a3 provenanceSource:(id)a4
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = QuickScheduleManagementViewController.init(sleepStore:provenanceSource:)(a3, a4);

  return v6;
}

- (HKSHQuickScheduleManagementViewControllerInternal)initWithRootViewController:(id)a3
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_269D9A8E0();
  v7[2] = self;
  v7[3] = a3;
  v7[4] = ObjectType;
  swift_unknownObjectRetain();
  v6 = self;
  sub_269C71EBC(sub_269D87AB8, v7);
  swift_unknownObjectRelease();
}

@end