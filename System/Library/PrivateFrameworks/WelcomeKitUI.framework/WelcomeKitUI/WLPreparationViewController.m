@interface WLPreparationViewController
- (WLPreparationViewController)initWithWelcomeController:(id)a3;
- (void)cancel;
- (void)showActivityIndicatorView;
- (void)viewDidLoad;
@end

@implementation WLPreparationViewController

- (WLPreparationViewController)initWithWelcomeController:(id)a3
{
  v5 = a3;
  v6 = WLLocalizedString();
  v11.receiver = self;
  v11.super_class = WLPreparationViewController;
  v7 = [(OBSetupAssistantSpinnerController *)&v11 initWithSpinnerText:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_welcomeController, a3);
    v8 = [(OBBaseWelcomeController *)v7 navigationItem];
    [v8 setTitle:&stru_2882D7420];

    v9 = [(OBBaseWelcomeController *)v7 navigationItem];
    [v9 setHidesBackButton:1 animated:0];
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
    v4 = [(OBBaseWelcomeController *)self navigationItem];
    [v4 setHidesBackButton:1];

    v5 = [(OBBaseWelcomeController *)self navigationItem];
    [v5 setLeftBarButtonItem:v3];
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
    v5 = [(WLPreparationViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
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
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];
}

@end