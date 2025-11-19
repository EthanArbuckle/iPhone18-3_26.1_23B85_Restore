@interface SUPaymentSetupViewController
- (SUPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3;
- (SUPaymentSetupViewControllerDelegate)delegate;
- (void)_setup;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SUPaymentSetupViewController

- (SUPaymentSetupViewController)initWithPaymentSetupRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUPaymentSetupViewController;
  v6 = [(SUPaymentSetupViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupRequest, a3);
    [(SUPaymentSetupViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  [(SUPaymentSetupViewController *)self setModalPresentationStyle:5];
  v3 = objc_alloc(ISWeakLinkedClassForString());
  v6 = [(SUPaymentSetupViewController *)self paymentSetupRequest];
  v4 = [v3 initWithPaymentSetupRequest:v6];
  childViewController = self->_childViewController;
  self->_childViewController = v4;
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v3];

  [v4 setUserInteractionEnabled:0];
  [(SUPaymentSetupViewController *)self setView:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SUPaymentSetupViewController;
  [(SUPaymentSetupViewController *)&v6 viewDidAppear:a3];
  v4 = [(SUPaymentSetupViewController *)self childViewController];

  if (v4)
  {
    v5 = [(SUPaymentSetupViewController *)self childViewController];
    [(SUPaymentSetupViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(SUPaymentSetupViewController *)self setChildViewController:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__SUPaymentSetupViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E8164638;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = SUPaymentSetupViewController;
  v7 = v6;
  [(SUPaymentSetupViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
}

uint64_t __73__SUPaymentSetupViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = [*(a1 + 32) delegate];
  [v3 paymentSetupViewControllerDidDismiss];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (SUPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end