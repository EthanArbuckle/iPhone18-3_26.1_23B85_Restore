@interface PKSelectActionGroupViewController
- (PKSelectActionGroupViewController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6;
- (PKSelectActionGroupViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)a3;
- (void)_reloadActionGroupView;
- (void)_rightBarButtonPressed:(id)a3;
- (void)remoteGroupActionsViewControllerDidCancel:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3;
- (void)setRightBarButtonEnabled:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSelectActionGroupViewController

- (PKSelectActionGroupViewController)initWithPass:(id)a3 actionGroups:(id)a4 paymentDataProvider:(id)a5 webService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = PKSelectActionGroupViewController;
  v15 = [(PKSelectActionGroupViewController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pass, a3);
    objc_storeStrong(&v16->_actionGroups, a4);
    objc_storeStrong(&v16->_paymentDataProvider, a5);
    objc_storeStrong(&v16->_webService, a6);
    v17 = [(PKSelectActionGroupViewController *)v16 navigationItem];
    v18 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v18 configureWithTransparentBackground];
    [v17 setStandardAppearance:v18];
    v19 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v19 style:2 target:v16 action:sel__rightBarButtonPressed_];
    [v17 setRightBarButtonItem:v20];
    v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v16 action:sel__cancelButtonPressed_];
    [v17 setLeftBarButtonItem:v21];
  }

  return v16;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKSelectActionGroupViewController;
  [(PKSelectActionGroupViewController *)&v9 viewDidLoad];
  v3 = [(PKSelectActionGroupViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [v3 setBackgroundColor:v4];

  v5 = [PKPerformActionPassView alloc];
  pass = self->_pass;
  [v3 bounds];
  v7 = [(PKPerformActionPassView *)v5 initWithPass:pass frame:?];
  passView = self->_passView;
  self->_passView = v7;

  [v3 addSubview:self->_passView];
  [(PKSelectActionGroupViewController *)self _reloadActionGroupView];
}

- (void)_reloadActionGroupView
{
  [(PKSelectActionGroupView *)self->_actionGroupView setDelegate:0];
  actionGroupView = self->_actionGroupView;
  v4 = PKProvisioningBackgroundColor();
  [(PKSelectActionGroupView *)actionGroupView setBackgroundColor:v4];

  [(PKSelectActionGroupView *)self->_actionGroupView removeFromSuperview];
  v5 = [[PKSelectActionGroupView alloc] initWithPass:self->_pass actionGroups:self->_actionGroups];
  v6 = self->_actionGroupView;
  self->_actionGroupView = v5;

  [(PKSelectActionGroupView *)self->_actionGroupView setDelegate:self];
  v7 = [(PKSelectActionGroupViewController *)self view];
  [v7 insertSubview:self->_actionGroupView belowSubview:self->_passView];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKSelectActionGroupViewController;
  [(PKSelectActionGroupViewController *)&v23 viewWillLayoutSubviews];
  v3 = [(PKSelectActionGroupViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
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
  [(PKSelectActionGroupView *)self->_actionGroupView setFrame:0.0, MaxY, v17, CGRectGetMaxY(v25) - MaxY];
}

- (void)_rightBarButtonPressed:(id)a3
{
  v5 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:self->_selectedActionGroup paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
  [(PKRemoteActionGroupViewController *)v5 setDelegate:self];
  v4 = [(PKSelectActionGroupViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (void)_cancelButtonPressed:(id)a3
{
  v4 = [(PKSelectActionGroupViewController *)self delegate];
  [v4 selectActionGroupViewControllerDidCancel:self];
}

- (void)setRightBarButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKSelectActionGroupViewController *)self navigationItem];
  v4 = [v5 rightBarButtonItem];
  [v4 setEnabled:v3];
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)a3
{
  v5 = a3;
  v3 = [v5 navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  [v5 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)a3
{
  v5 = a3;
  v3 = [v5 navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  [v5 setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)a3
{
  v5 = a3;
  v3 = [v5 navigationController];
  v4 = [v3 popViewControllerAnimated:1];

  [v5 setDelegate:0];
}

- (PKSelectActionGroupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end