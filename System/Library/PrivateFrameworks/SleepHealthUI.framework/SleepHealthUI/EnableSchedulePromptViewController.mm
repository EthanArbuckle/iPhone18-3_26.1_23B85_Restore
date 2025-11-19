@interface EnableSchedulePromptViewController
- (void)enableButtonAction;
@end

@implementation EnableSchedulePromptViewController

- (void)enableButtonAction
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_269D872F4();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end