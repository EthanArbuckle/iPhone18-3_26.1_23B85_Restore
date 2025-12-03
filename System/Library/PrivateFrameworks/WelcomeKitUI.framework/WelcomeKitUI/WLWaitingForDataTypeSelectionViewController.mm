@interface WLWaitingForDataTypeSelectionViewController
- (WLWaitingForDataTypeSelectionViewController)initWithWelcomeController:(id)controller;
- (void)cancel;
- (void)showActivityIndicatorView;
- (void)viewDidLoad;
@end

@implementation WLWaitingForDataTypeSelectionViewController

- (WLWaitingForDataTypeSelectionViewController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v6 = WLLocalizedString();
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PROGRESS_WAITING_EXPLANATION"];
  v8 = WLLocalizedString();
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"MoveToiOS" inBundle:v10];
  v16.receiver = self;
  v16.super_class = WLWaitingForDataTypeSelectionViewController;
  v12 = [(WLWaitingForDataTypeSelectionViewController *)&v16 initWithTitle:v6 detailText:v8 icon:v11 contentLayout:2];

  if (v12)
  {
    objc_storeStrong(&v12->_welcomeController, controller);
    navigationItem = [(OBBaseWelcomeController *)v12 navigationItem];
    [navigationItem setTitle:&stru_2882D7420];

    navigationItem2 = [(OBBaseWelcomeController *)v12 navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  return v12;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WLWaitingForDataTypeSelectionViewController;
  [(WLOnboardingViewController *)&v5 viewDidLoad];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];
  }
}

- (void)cancel
{
  if (self->_cancellationBlock)
  {
    objc_initWeak(&location, self);
    cancellationBlock = self->_cancellationBlock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__WLWaitingForDataTypeSelectionViewController_cancel__block_invoke;
    v6[3] = &unk_279EB8E18;
    objc_copyWeak(&v7, &location);
    cancellationBlock[2](cancellationBlock, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    navigationController = [(WLWaitingForDataTypeSelectionViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

void __53__WLWaitingForDataTypeSelectionViewController_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showActivityIndicatorView];
}

- (void)showActivityIndicatorView
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 startAnimating];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v3];
}

@end