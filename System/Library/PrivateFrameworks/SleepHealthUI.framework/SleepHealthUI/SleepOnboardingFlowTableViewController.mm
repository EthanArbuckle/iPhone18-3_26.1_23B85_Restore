@interface SleepOnboardingFlowTableViewController
- (int64_t)hksp_presentationStyle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation SleepOnboardingFlowTableViewController

- (int64_t)hksp_presentationStyle
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_presentationStyle);

  return v3;
}

- (void)viewDidLayoutSubviews
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D082C4();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  viewCopy = view;
  selfCopy = self;
  SleepOnboardingFlowTableViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

@end