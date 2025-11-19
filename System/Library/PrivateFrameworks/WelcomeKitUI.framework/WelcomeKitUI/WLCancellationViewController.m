@interface WLCancellationViewController
- (WLCancellationViewController)initWithWelcomeController:(id)a3;
- (void)_continue;
- (void)_retry;
@end

@implementation WLCancellationViewController

- (WLCancellationViewController)initWithWelcomeController:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v12->_welcomeController, a3);
    v13 = [MEMORY[0x277D37618] boldButton];
    v14 = WLLocalizedString();
    [v13 setTitle:v14 forState:0];

    [v13 addTarget:v12 action:sel__continue forControlEvents:64];
    v15 = [(WLCancellationViewController *)v12 buttonTray];
    [v15 addButton:v13];

    v16 = [MEMORY[0x277D37650] linkButton];
    retryButton = v12->_retryButton;
    v12->_retryButton = v16;

    v18 = v12->_retryButton;
    v19 = WLLocalizedString();
    [(OBTrayButton *)v18 setTitle:v19 forState:0];

    [(OBTrayButton *)v12->_retryButton addTarget:v12 action:sel__retry forControlEvents:64];
    v20 = [(WLCancellationViewController *)v12 buttonTray];
    [v20 addButton:v12->_retryButton];

    v21 = [(OBBaseWelcomeController *)v12 navigationItem];
    [v21 setHidesBackButton:1 animated:0];
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