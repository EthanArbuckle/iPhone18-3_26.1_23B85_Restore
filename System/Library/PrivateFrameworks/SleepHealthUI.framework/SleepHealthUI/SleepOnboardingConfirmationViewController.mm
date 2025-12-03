@interface SleepOnboardingConfirmationViewController
- (void)hksp_cancelButtonTapped:(id)tapped;
@end

@implementation SleepOnboardingConfirmationViewController

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
  v9[4] = sub_269D6F994;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_269CA6718;
  v9[3] = &block_descriptor_39;
  v6 = _Block_copy(v9);
  selfCopy = self;
  tappedCopy = tapped;

  [(OBWelcomeController *)selfCopy hksp_presentCancelConfirmationAlertWithSender:tappedCopy cancelHandler:v6];

  _Block_release(v6);
}

@end