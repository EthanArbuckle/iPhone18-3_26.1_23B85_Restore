@interface STIOSAlertPresenter
- (STIOSAlertPresenter)initWithPresentingViewController:(id)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5;
@end

@implementation STIOSAlertPresenter

- (STIOSAlertPresenter)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STIOSAlertPresenter;
  v5 = [(STIOSAlertPresenter *)&v8 init];
  presentingViewController = v5->_presentingViewController;
  v5->_presentingViewController = v4;

  return v5;
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[STScreenTimeSettingsUIBundle bundle];
  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v10 message:v9 preferredStyle:1];

  v12 = [v14 localizedStringForKey:@"ConfirmationButtonOK" value:&stru_28766E5A8 table:0];
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:0 handler:0];
  [v11 addAction:v13];
  [v11 setPreferredAction:v13];
  [(UIViewController *)self->_presentingViewController presentViewController:v11 animated:1 completion:v8];
}

@end