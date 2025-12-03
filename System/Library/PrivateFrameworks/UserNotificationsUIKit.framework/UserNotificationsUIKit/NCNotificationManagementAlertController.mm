@interface NCNotificationManagementAlertController
- (BOOL)shouldAutorotate;
- (NCNotificationManagementAlertController)initWithRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate;
- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate;
- (void)viewDidLoad;
@end

@implementation NCNotificationManagementAlertController

- (NCNotificationManagementAlertController)initWithRequest:(id)request withPresentingView:(id)view settingsDelegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = NCNotificationManagementAlertController;
  v9 = [(NCNotificationManagementAlertController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(NCNotificationManagementAlertController *)v9 setPreferredStyle:0];
    [(NCNotificationManagementAlertController *)v10 setRequest:requestCopy];
    [(NCNotificationManagementAlertController *)v10 setSettingsDelegate:delegateCopy];
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NCNotificationManagementAlertController;
  [(NCNotificationManagementAlertController *)&v3 viewDidLoad];
  [(NCNotificationManagementAlertController *)self _configureView];
}

- (BOOL)shouldAutorotate
{
  presentingViewController = [(NCNotificationManagementAlertController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(NCNotificationManagementAlertController *)self presentingViewController];
    shouldAutorotate = [presentingViewController2 shouldAutorotate];
  }

  else
  {
    shouldAutorotate = 1;
  }

  return shouldAutorotate;
}

- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

@end