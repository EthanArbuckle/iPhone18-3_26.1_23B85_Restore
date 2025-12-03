@interface PKSelectActionViewController
- (PKSelectActionViewController)initWithPass:(id)pass actions:(id)actions actionType:(unint64_t)type paymentDataProvider:(id)provider webService:(id)service balanceDictionary:(id)dictionary;
- (PKSelectActionViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_reloadActionView;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)selectActionViewDidSelectAction:(id)action;
- (void)setRightBarButtonEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSelectActionViewController

- (PKSelectActionViewController)initWithPass:(id)pass actions:(id)actions actionType:(unint64_t)type paymentDataProvider:(id)provider webService:(id)service balanceDictionary:(id)dictionary
{
  passCopy = pass;
  actionsCopy = actions;
  providerCopy = provider;
  serviceCopy = service;
  dictionaryCopy = dictionary;
  if (type)
  {
    v29.receiver = self;
    v29.super_class = PKSelectActionViewController;
    v18 = [(PKSelectActionViewController *)&v29 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_pass, pass);
      objc_storeStrong(&v19->_actions, actions);
      v19->_actionType = type;
      objc_storeStrong(&v19->_paymentDataProvider, provider);
      objc_storeStrong(&v19->_webService, service);
      objc_storeStrong(&v19->_balances, dictionary);
      navigationItem = [(PKSelectActionViewController *)v19 navigationItem];
      v21 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v21 configureWithTransparentBackground];
      v22 = PKProvisioningSecondaryBackgroundColor();
      [v21 setBackgroundColor:v22];

      [navigationItem setStandardAppearance:v21];
      v23 = PKLocalizedPaymentString(&cfstr_Next.isa);
      v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v23 style:2 target:v19 action:sel__rightBarButtonPressed_];
      [navigationItem setRightBarButtonItem:v24];
      v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v19 action:sel__cancelButtonPressed_];
      [navigationItem setLeftBarButtonItem:v25];
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKSelectActionViewController;
  [(PKSelectActionViewController *)&v9 viewDidLoad];
  view = [(PKSelectActionViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  v5 = [PKPerformActionPassView alloc];
  pass = self->_pass;
  [view bounds];
  v7 = [(PKPerformActionPassView *)v5 initWithPass:pass frame:?];
  passView = self->_passView;
  self->_passView = v7;

  [view addSubview:self->_passView];
  [(PKSelectActionViewController *)self _reloadActionView];
}

- (void)_reloadActionView
{
  [(PKSelectActionView *)self->_actionView setDelegate:0];
  [(PKSelectActionView *)self->_actionView removeFromSuperview];
  v3 = [[PKSelectActionView alloc] initWithPass:self->_pass actions:self->_actions actionType:self->_actionType balanceDictionary:self->_balances];
  actionView = self->_actionView;
  self->_actionView = v3;

  [(PKSelectActionView *)self->_actionView setDelegate:self];
  view = [(PKSelectActionViewController *)self view];
  [view insertSubview:self->_actionView belowSubview:self->_passView];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKSelectActionViewController;
  [(PKSelectActionViewController *)&v23 viewWillLayoutSubviews];
  view = [(PKSelectActionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  [(PKPerformActionPassView *)self->_passView sizeThatFits:v17, v19];
  [(PKPerformActionPassView *)self->_passView setFrame:0.0, v15, v20, v21];
  [(PKPerformActionPassView *)self->_passView frame];
  MaxY = CGRectGetMaxY(v24);
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  [(PKSelectActionView *)self->_actionView setFrame:0.0, MaxY, v17, CGRectGetMaxY(v25) - MaxY];
}

- (void)_rightBarButtonPressed:(id)pressed
{
  v12 = 0;
  v13 = 0;
  v4 = [(PKPaymentPass *)self->_pass canPerformAction:self->_selectedAction unableReason:&v13 displayableError:&v12];
  v5 = v12;
  if ((v4 & 1) == 0 && v13 != 2)
  {
    v6 = [PKPerformActionViewController alertControllerForUnableReason:v13 action:self->_selectedAction displayableError:v5 addCardActionHandler:0];
    [(PKSelectActionViewController *)self presentViewController:v6 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  if (![(PKPaymentPassAction *)self->_selectedAction hasExternalActionContent])
  {
    v6 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:self->_selectedAction paymentDataProvider:self->_paymentDataProvider];
    [(PKPerformActionViewController *)v6 setDelegate:self];
    [(PKPerformActionViewController *)v6 setWebService:self->_webService];
    v10 = [[PKNavigationController alloc] initWithRootViewController:v6];
    [(PKNavigationController *)v10 setSupportedInterfaceOrientations:2];
    [(PKSelectActionViewController *)self presentViewController:v10 animated:1 completion:0];

    goto LABEL_7;
  }

  pass = self->_pass;
  externalActionContent = [(PKPaymentPassAction *)self->_selectedAction externalActionContent];
  title = [(PKPaymentPassAction *)self->_selectedAction title];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PKSelectActionViewController__rightBarButtonPressed___block_invoke;
  v11[3] = &unk_1E8014560;
  v11[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v11);

LABEL_8:
}

uint64_t __55__PKSelectActionViewController__rightBarButtonPressed___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(PKSelectActionViewController *)self delegate];
  [delegate selectActionViewControllerDidCancel:self];
}

- (void)setRightBarButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(PKSelectActionViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)selectActionViewDidSelectAction:(id)action
{
  objc_storeStrong(&self->_selectedAction, action);
  actionCopy = action;
  navigationItem = [(PKSelectActionViewController *)self navigationItem];
  title = [(PKPaymentPassAction *)self->_selectedAction title];

  [navigationItem setTitle:title];
}

- (void)performActionViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  [cancelCopy setDelegate:0];
  presentingViewController = [cancelCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)action
{
  actionCopy = action;
  [actionCopy setDelegate:0];
  delegate = [(PKSelectActionViewController *)self delegate];
  [delegate selectActionViewControllerDidPerformAction:self];

  presentingViewController = [actionCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (PKSelectActionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end