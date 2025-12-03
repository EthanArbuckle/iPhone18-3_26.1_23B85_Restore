@interface PKSelectActionGroupViewController
- (PKSelectActionGroupViewController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service;
- (PKSelectActionGroupViewControllerDelegate)delegate;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_reloadActionGroupView;
- (void)_rightBarButtonPressed:(id)pressed;
- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel;
- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group;
- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment;
- (void)setRightBarButtonEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKSelectActionGroupViewController

- (PKSelectActionGroupViewController)initWithPass:(id)pass actionGroups:(id)groups paymentDataProvider:(id)provider webService:(id)service
{
  passCopy = pass;
  groupsCopy = groups;
  providerCopy = provider;
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = PKSelectActionGroupViewController;
  v15 = [(PKSelectActionGroupViewController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_pass, pass);
    objc_storeStrong(&v16->_actionGroups, groups);
    objc_storeStrong(&v16->_paymentDataProvider, provider);
    objc_storeStrong(&v16->_webService, service);
    navigationItem = [(PKSelectActionGroupViewController *)v16 navigationItem];
    v18 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v18 configureWithTransparentBackground];
    [navigationItem setStandardAppearance:v18];
    v19 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v20 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v19 style:2 target:v16 action:sel__rightBarButtonPressed_];
    [navigationItem setRightBarButtonItem:v20];
    v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v16 action:sel__cancelButtonPressed_];
    [navigationItem setLeftBarButtonItem:v21];
  }

  return v16;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PKSelectActionGroupViewController;
  [(PKSelectActionGroupViewController *)&v9 viewDidLoad];
  view = [(PKSelectActionGroupViewController *)self view];
  v4 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v4];

  v5 = [PKPerformActionPassView alloc];
  pass = self->_pass;
  [view bounds];
  v7 = [(PKPerformActionPassView *)v5 initWithPass:pass frame:?];
  passView = self->_passView;
  self->_passView = v7;

  [view addSubview:self->_passView];
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
  view = [(PKSelectActionGroupViewController *)self view];
  [view insertSubview:self->_actionGroupView belowSubview:self->_passView];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = PKSelectActionGroupViewController;
  [(PKSelectActionGroupViewController *)&v23 viewWillLayoutSubviews];
  view = [(PKSelectActionGroupViewController *)self view];
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
  [(PKSelectActionGroupView *)self->_actionGroupView setFrame:0.0, MaxY, v17, CGRectGetMaxY(v25) - MaxY];
}

- (void)_rightBarButtonPressed:(id)pressed
{
  v5 = [[PKRemoteActionGroupViewController alloc] initWithPass:self->_pass actionGroup:self->_selectedActionGroup paymentDataProvider:self->_paymentDataProvider webService:self->_webService];
  [(PKRemoteActionGroupViewController *)v5 setDelegate:self];
  navigationController = [(PKSelectActionGroupViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)_cancelButtonPressed:(id)pressed
{
  delegate = [(PKSelectActionGroupViewController *)self delegate];
  [delegate selectActionGroupViewControllerDidCancel:self];
}

- (void)setRightBarButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(PKSelectActionGroupViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:enabledCopy];
}

- (void)remoteGroupActionsViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  navigationController = [cancelCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:1];

  [cancelCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformFetchActionGroup:(id)group
{
  groupCopy = group;
  navigationController = [groupCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:1];

  [groupCopy setDelegate:0];
}

- (void)remoteGroupActionsViewControllerDidPerformPayment:(id)payment
{
  paymentCopy = payment;
  navigationController = [paymentCopy navigationController];
  v4 = [navigationController popViewControllerAnimated:1];

  [paymentCopy setDelegate:0];
}

- (PKSelectActionGroupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end