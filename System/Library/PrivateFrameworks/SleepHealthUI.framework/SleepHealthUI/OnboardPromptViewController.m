@interface OnboardPromptViewController
- (void)beginButtonAction;
- (void)removeButtonAction:(id)a3;
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
    v3 = self;
    sub_269D86B64("[%{public}s] Opening Health > Sleep > Onboarding...", MEMORY[0x277D62218]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)removeButtonAction:(id)a3
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
  v7 = self;
  v6 = a3;
  sub_269D855CC(a3, sub_269D86894, v5);
}

@end