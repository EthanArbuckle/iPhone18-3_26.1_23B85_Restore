@interface WLRejectViewController
- (WLRejectViewController)initWithWelcomeController:(id)a3;
- (void)_retry;
@end

@implementation WLRejectViewController

- (WLRejectViewController)initWithWelcomeController:(id)a3
{
  v5 = a3;
  v6 = WLLocalizedString();
  v7 = WLLocalizedString();
  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:@"MoveToiOS" inBundle:v9];
  v19.receiver = self;
  v19.super_class = WLRejectViewController;
  v11 = [(WLRejectViewController *)&v19 initWithTitle:v6 detailText:v7 icon:v10 contentLayout:2];

  if (v11)
  {
    objc_storeStrong(&v11->_welcomeController, a3);
    v12 = [MEMORY[0x277D37618] boldButton];
    retryButton = v11->_retryButton;
    v11->_retryButton = v12;

    v14 = v11->_retryButton;
    v15 = WLLocalizedString();
    [(OBTrayButton *)v14 setTitle:v15 forState:0];

    [(OBTrayButton *)v11->_retryButton addTarget:v11 action:sel__retry forControlEvents:64];
    v16 = [(WLRejectViewController *)v11 buttonTray];
    [v16 addButton:v11->_retryButton];

    v17 = [(OBBaseWelcomeController *)v11 navigationItem];
    [v17 setHidesBackButton:1 animated:0];
  }

  return v11;
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