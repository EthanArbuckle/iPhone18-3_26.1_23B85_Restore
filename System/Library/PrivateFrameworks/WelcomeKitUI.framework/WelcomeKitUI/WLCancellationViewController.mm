@interface WLCancellationViewController
- (WLCancellationViewController)initWithWelcomeController:(id)controller;
- (void)_continue;
- (void)_retry;
@end

@implementation WLCancellationViewController

- (WLCancellationViewController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v6 = WLLocalizedString();
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CANCELLATION_DETAIL"];
  v8 = WLLocalizedString();
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"MoveToiOS" inBundle:v10];
  v23.receiver = self;
  v23.super_class = WLCancellationViewController;
  v12 = [(WLCancellationViewController *)&v23 initWithTitle:v6 detailText:v8 icon:v11 contentLayout:2];

  if (v12)
  {
    objc_storeStrong(&v12->_welcomeController, controller);
    boldButton = [MEMORY[0x277D37618] boldButton];
    v14 = WLLocalizedString();
    [boldButton setTitle:v14 forState:0];

    [boldButton addTarget:v12 action:sel__continue forControlEvents:64];
    buttonTray = [(WLCancellationViewController *)v12 buttonTray];
    [buttonTray addButton:boldButton];

    linkButton = [MEMORY[0x277D37650] linkButton];
    retryButton = v12->_retryButton;
    v12->_retryButton = linkButton;

    v18 = v12->_retryButton;
    v19 = WLLocalizedString();
    [(OBTrayButton *)v18 setTitle:v19 forState:0];

    [(OBTrayButton *)v12->_retryButton addTarget:v12 action:sel__retry forControlEvents:64];
    buttonTray2 = [(WLCancellationViewController *)v12 buttonTray];
    [buttonTray2 addButton:v12->_retryButton];

    navigationItem = [(OBBaseWelcomeController *)v12 navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];
  }

  return v12;
}

- (void)_continue
{
  continueBlock = self->_continueBlock;
  if (continueBlock)
  {
    continueBlock[2]();
  }
}

- (void)_retry
{
  [(OBTrayButton *)self->_retryButton showsBusyIndicator];
  retryBlock = self->_retryBlock;
  if (retryBlock)
  {
    v4 = *(retryBlock + 2);

    v4();
  }
}

@end