@interface OnboardPromptViewController
- (void)beginButtonAction;
- (void)removeButtonAction:(id)action;
@end

@implementation OnboardPromptViewController

- (void)beginButtonAction
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
    selfCopy = self;
    sub_269D86B64("[%{public}s] Opening Health > Sleep > Onboarding...", MEMORY[0x277D62218]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)removeButtonAction:(id)action
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  actionCopy = action;
  sub_269D855CC(action, sub_269D86894, v5);
}

@end