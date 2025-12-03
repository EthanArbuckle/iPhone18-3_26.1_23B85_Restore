@interface STIOSAlertPresenter
- (STIOSAlertPresenter)initWithPresentingViewController:(id)controller;
- (void)showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
@end

@implementation STIOSAlertPresenter

- (STIOSAlertPresenter)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = STIOSAlertPresenter;
  v5 = [(STIOSAlertPresenter *)&v8 init];
  presentingViewController = v5->_presentingViewController;
  v5->_presentingViewController = controllerCopy;

  return v5;
}

- (void)showAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  titleCopy = title;
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];

  v12 = [v14 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:0];
  [v11 addAction:v13];
  [v11 setPreferredAction:v13];
  [(UIViewController *)self->_presentingViewController presentViewController:v11 animated:1 completion:completionCopy];
}

@end