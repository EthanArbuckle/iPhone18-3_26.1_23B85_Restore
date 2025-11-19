@interface SleepOnboardingScheduleViewController
- (void)hksp_cancelButtonTapped:(id)a3;
- (void)hksp_nextButtonTapped;
- (void)viewDidLoad;
@end

@implementation SleepOnboardingScheduleViewController

- (void)viewDidLoad
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  sub_269D7D414();
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

  v3 = self;
  sub_269D7E380();
  sub_269D7E638();
}

- (void)hksp_cancelButtonTapped:(id)a3
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
  v9[4] = sub_269D80244;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_269CA6718;
  v9[3] = &block_descriptor_43;
  v6 = _Block_copy(v9);
  v7 = self;
  v8 = a3;

  [(OBWelcomeController *)v7 hksp_presentCancelConfirmationAlertWithSender:v8 cancelHandler:v6];

  _Block_release(v6);
}

@end