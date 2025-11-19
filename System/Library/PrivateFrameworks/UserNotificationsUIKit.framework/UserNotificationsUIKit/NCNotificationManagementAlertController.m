@interface NCNotificationManagementAlertController
- (BOOL)shouldAutorotate;
- (NCNotificationManagementAlertController)initWithRequest:(id)a3 withPresentingView:(id)a4 settingsDelegate:(id)a5;
- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate;
- (void)viewDidLoad;
@end

@implementation NCNotificationManagementAlertController

- (NCNotificationManagementAlertController)initWithRequest:(id)a3 withPresentingView:(id)a4 settingsDelegate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12.receiver = self;
  v12.super_class = NCNotificationManagementAlertController;
  v9 = [(NCNotificationManagementAlertController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(NCNotificationManagementAlertController *)v9 setPreferredStyle:0];
    [(NCNotificationManagementAlertController *)v10 setRequest:v7];
    [(NCNotificationManagementAlertController *)v10 setSettingsDelegate:v8];
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
  v3 = [(NCNotificationManagementAlertController *)self presentingViewController];
  if (v3)
  {
    v4 = [(NCNotificationManagementAlertController *)self presentingViewController];
    v5 = [v4 shouldAutorotate];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NCNotificationManagementControllerSettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

@end