@interface SleepOnboardingSetupViewController
- (void)hksp_cancelButtonTapped:(id)tapped;
- (void)hksp_nextButtonTapped;
- (void)hksp_skipButtonTapped;
- (void)viewDidLoad;
@end

@implementation SleepOnboardingSetupViewController

- (void)viewDidLoad
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D29D18();
}

- (void)hksp_nextButtonTapped
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D2D160();
  sub_269D2D458();
}

- (void)hksp_skipButtonTapped
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_269D28AC4(1, 5, &OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo);
  v4 = (&selfCopy->super.super.super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
  swift_beginAccess();
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v7(ObjectType, v5);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)hksp_cancelButtonTapped:(id)tapped
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
  v9[4] = sub_269D2F430;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_269CA6718;
  v9[3] = &block_descriptor_21;
  v6 = _Block_copy(v9);
  selfCopy = self;
  tappedCopy = tapped;

  [(OBWelcomeController *)selfCopy hksp_presentCancelConfirmationAlertWithSender:tappedCopy cancelHandler:v6];

  _Block_release(v6);
}

@end