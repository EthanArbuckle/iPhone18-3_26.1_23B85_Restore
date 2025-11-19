@interface PKPaymentCardUnsupportedViewController
- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)a3 context:(int64_t)a4 delegate:(id)a5;
- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)a3 context:(int64_t)a4 delegate:(id)a5 inAppMethod:(id)a6;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_done:(id)a3;
- (void)_updateViewsWithProduct:(id)a3;
- (void)appViewContentSizeChanged:(id)a3;
- (void)dealloc;
- (void)setProduct:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKPaymentCardUnsupportedViewController

- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)a3 context:(int64_t)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 setupProductMethodsOfType:5];
  v11 = [v10 firstObject];

  v12 = [(PKPaymentCardUnsupportedViewController *)self initWithUnsupportedProduct:v9 context:a4 delegate:v8 inAppMethod:v11];
  return v12;
}

- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)a3 context:(int64_t)a4 delegate:(id)a5 inAppMethod:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PKPaymentCardUnsupportedViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v17 initWithContext:a4];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_product, a3);
    objc_storeWeak(&v15->_delegate, v12);
    objc_storeStrong(&v15->_inApp, a6);
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentCardUnsupportedViewController;
  [(PKPaymentSetupTableViewController *)&v2 dealloc];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PKPaymentCardUnsupportedViewController;
  [(PKPaymentCardUnsupportedViewController *)&v13 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [v3 setSeparatorStyle:0];

  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTableHeaderView *)self->_headerView setStyle:3];
  }

  v7 = [(PKPaymentSetupTableViewController *)self tableView];
  [v7 setTableHeaderView:self->_headerView];

  v8 = [[PKLinkedAppView alloc] initWithStoreIDs:0 systemAppBundleIdentifiers:0 appLaunchURL:0 reuseIdentifier:0];
  appViewCell = self->_appViewCell;
  self->_appViewCell = v8;

  v10 = [(PKLinkedAppView *)self->_appViewCell linkedAppView];
  [v10 setDelegate:self];

  v11 = [(PKPaymentCardUnsupportedViewController *)self navigationItem];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__done_];
  [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [v11 setLeftBarButtonItem:v12];
  [(PKPaymentCardUnsupportedViewController *)self _updateViewsWithProduct:self->_product];
}

- (void)_updateViewsWithProduct:(id)a3
{
  v20 = a3;
  v4 = [(PKTableHeaderView *)self->_headerView titleLabel];
  v5 = PKLocalizedPaymentString(&cfstr_CannotAddCardT.isa);
  [v4 setText:v5];

  v6 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  v7 = [v6 count];

  v8 = [v20 displayName];
  v9 = v8;
  if (v7)
  {
    v10 = [v20 partnerName];
    v11 = v10;
    if (v10)
    {
      v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM.isa, &stru_1F3BD6370.isa, v9, v10);
    }

    else
    {
      v13 = [v20 displayName];
      v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM.isa, &stru_1F3BD6370.isa, v9, v13);
    }
  }

  else
  {
    v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM_0.isa, &stru_1F3BD5BF0.isa, v8);
  }

  v14 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [v14 setText:v12];

  [(PKTableHeaderView *)self->_headerView sizeToFit];
  v15 = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKTableHeaderView *)self->_headerView bounds];
  [v15 _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v22)];

  v16 = [(PKLinkedAppView *)self->_appViewCell linkedAppView];
  v17 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  [v16 setStoreIDs:v17];

  v18 = [(PKSetupProductMethodInApp *)self->_inApp appLaunchURL];
  [v16 setAppLaunchURL:v18];

  [v16 reloadApplicationStateIfNecessary];
  v19 = [(PKPaymentSetupTableViewController *)self tableView];
  [v19 reloadData];
}

- (void)setProduct:(id)a3
{
  v5 = a3;
  if (self->_product != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_product, a3);
    [(PKPaymentCardUnsupportedViewController *)self _updateViewsWithProduct:self->_product];
    v5 = v6;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers:a3];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)_done:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 viewControllerDidTerminateSetupFlow:self];
    }
  }
}

- (void)appViewContentSizeChanged:(id)a3
{
  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  [v4 beginUpdates];

  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [v5 endUpdates];
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end