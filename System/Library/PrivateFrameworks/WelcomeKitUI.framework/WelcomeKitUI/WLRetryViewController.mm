@interface WLRetryViewController
- (WLRetryViewController)initWithWelcomeController:(id)controller;
- (void)_retry:(id)_retry;
@end

@implementation WLRetryViewController

- (WLRetryViewController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v6 = WLLocalizedString();
  v7 = WLLocalizedString();
  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:@"MoveToiOS" inBundle:v9];
  v19.receiver = self;
  v19.super_class = WLRetryViewController;
  v11 = [(WLRetryViewController *)&v19 initWithTitle:v6 detailText:v7 icon:v10 contentLayout:2];

  if (v11)
  {
    objc_storeStrong(&v11->_welcomeController, controller);
    boldButton = [MEMORY[0x277D37618] boldButton];
    retryButton = v11->_retryButton;
    v11->_retryButton = boldButton;

    v14 = v11->_retryButton;
    v15 = WLLocalizedString();
    [(OBTrayButton *)v14 setTitle:v15 forState:0];

    [(OBTrayButton *)v11->_retryButton addTarget:v11 action:sel__retry_ forControlEvents:64];
    buttonTray = [(WLRetryViewController *)v11 buttonTray];
    [buttonTray addButton:v11->_retryButton];

    navigationItem = [(OBBaseWelcomeController *)v11 navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];
  }

  return v11;
}

- (void)_retry:(id)_retry
{
  [(OBTrayButton *)self->_retryButton showsBusyIndicator];
  retryBlock = self->_retryBlock;
  if (retryBlock)
  {
    v5 = *(retryBlock + 2);

    v5();
  }
}

@end