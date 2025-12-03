@interface WLPreparationViewController
- (WLPreparationViewController)initWithWelcomeController:(id)controller;
- (void)cancel;
- (void)showActivityIndicatorView;
- (void)viewDidLoad;
@end

@implementation WLPreparationViewController

- (WLPreparationViewController)initWithWelcomeController:(id)controller
{
  controllerCopy = controller;
  v6 = WLLocalizedString();
  v11.receiver = self;
  v11.super_class = WLPreparationViewController;
  v7 = [(OBSetupAssistantSpinnerController *)&v11 initWithSpinnerText:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_welcomeController, controller);
    navigationItem = [(OBBaseWelcomeController *)v7 navigationItem];
    [navigationItem setTitle:&stru_2882D7420];

    navigationItem2 = [(OBBaseWelcomeController *)v7 navigationItem];
    [navigationItem2 setHidesBackButton:1 animated:0];
  }

  return v7;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WLPreparationViewController;
  [(OBBaseWelcomeController *)&v6 viewDidLoad];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setHidesBackButton:1];

    navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v3];
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
    v6[2] = __37__WLPreparationViewController_cancel__block_invoke;
    v6[3] = &unk_279EB8E18;
    objc_copyWeak(&v7, &location);
    cancellationBlock[2](cancellationBlock, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    navigationController = [(WLPreparationViewController *)self navigationController];
    v4 = [navigationController popViewControllerAnimated:1];
  }
}

void __37__WLPreparationViewController_cancel__block_invoke(uint64_t a1)
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