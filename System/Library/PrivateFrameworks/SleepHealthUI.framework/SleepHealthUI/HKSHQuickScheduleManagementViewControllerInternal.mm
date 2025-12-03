@interface HKSHQuickScheduleManagementViewControllerInternal
- (HKSHQuickScheduleManagementViewControllerDelegateInternal)sleepDelegate;
- (HKSHQuickScheduleManagementViewControllerInternal)initWithRootViewController:(id)controller;
- (HKSHQuickScheduleManagementViewControllerInternal)initWithSleepStore:(id)store provenanceSource:(id)source;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)setSleepDelegate:(id)delegate;
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

- (void)setSleepDelegate:(id)delegate
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

- (HKSHQuickScheduleManagementViewControllerInternal)initWithSleepStore:(id)store provenanceSource:(id)source
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = QuickScheduleManagementViewController.init(sleepStore:provenanceSource:)(store, source);

  return v6;
}

- (HKSHQuickScheduleManagementViewControllerInternal)initWithRootViewController:(id)controller
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

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  sub_269D9A8E0();
  v7[2] = self;
  v7[3] = completion;
  v7[4] = ObjectType;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_269C71EBC(sub_269D87AB8, v7);
  swift_unknownObjectRelease();
}

@end