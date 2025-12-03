@interface PKPaymentCardUnsupportedViewController
- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)product context:(int64_t)context delegate:(id)delegate;
- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)product context:(int64_t)context delegate:(id)delegate inAppMethod:(id)method;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_done:(id)_done;
- (void)_updateViewsWithProduct:(id)product;
- (void)appViewContentSizeChanged:(id)changed;
- (void)dealloc;
- (void)setProduct:(id)product;
- (void)viewDidLoad;
@end

@implementation PKPaymentCardUnsupportedViewController

- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)product context:(int64_t)context delegate:(id)delegate
{
  delegateCopy = delegate;
  productCopy = product;
  v10 = [productCopy setupProductMethodsOfType:5];
  firstObject = [v10 firstObject];

  v12 = [(PKPaymentCardUnsupportedViewController *)self initWithUnsupportedProduct:productCopy context:context delegate:delegateCopy inAppMethod:firstObject];
  return v12;
}

- (PKPaymentCardUnsupportedViewController)initWithUnsupportedProduct:(id)product context:(int64_t)context delegate:(id)delegate inAppMethod:(id)method
{
  productCopy = product;
  delegateCopy = delegate;
  methodCopy = method;
  v17.receiver = self;
  v17.super_class = PKPaymentCardUnsupportedViewController;
  v14 = [(PKPaymentSetupTableViewController *)&v17 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_product, product);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v15->_inApp, method);
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
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView setSeparatorStyle:0];

  v4 = [PKTableHeaderView alloc];
  v5 = [(PKTableHeaderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v5;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTableHeaderView *)self->_headerView setStyle:3];
  }

  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView2 setTableHeaderView:self->_headerView];

  v8 = [[PKLinkedAppView alloc] initWithStoreIDs:0 systemAppBundleIdentifiers:0 appLaunchURL:0 reuseIdentifier:0];
  appViewCell = self->_appViewCell;
  self->_appViewCell = v8;

  linkedAppView = [(PKLinkedAppView *)self->_appViewCell linkedAppView];
  [linkedAppView setDelegate:self];

  navigationItem = [(PKPaymentCardUnsupportedViewController *)self navigationItem];
  v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__done_];
  [v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
  [navigationItem setLeftBarButtonItem:v12];
  [(PKPaymentCardUnsupportedViewController *)self _updateViewsWithProduct:self->_product];
}

- (void)_updateViewsWithProduct:(id)product
{
  productCopy = product;
  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  v5 = PKLocalizedPaymentString(&cfstr_CannotAddCardT.isa);
  [titleLabel setText:v5];

  associatedStoreIdentifiers = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  v7 = [associatedStoreIdentifiers count];

  displayName = [productCopy displayName];
  v9 = displayName;
  if (v7)
  {
    partnerName = [productCopy partnerName];
    v11 = partnerName;
    if (partnerName)
    {
      v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM.isa, &stru_1F3BD6370.isa, v9, partnerName);
    }

    else
    {
      displayName2 = [productCopy displayName];
      v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM.isa, &stru_1F3BD6370.isa, v9, displayName2);
    }
  }

  else
  {
    v12 = PKLocalizedPaymentString(&cfstr_CannotAddCardM_0.isa, &stru_1F3BD5BF0.isa, displayName);
  }

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [subtitleLabel setText:v12];

  [(PKTableHeaderView *)self->_headerView sizeToFit];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKTableHeaderView *)self->_headerView bounds];
  [tableView _tableHeaderHeightDidChangeToHeight:CGRectGetHeight(v22)];

  linkedAppView = [(PKLinkedAppView *)self->_appViewCell linkedAppView];
  associatedStoreIdentifiers2 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers];
  [linkedAppView setStoreIDs:associatedStoreIdentifiers2];

  appLaunchURL = [(PKSetupProductMethodInApp *)self->_inApp appLaunchURL];
  [linkedAppView setAppLaunchURL:appLaunchURL];

  [linkedAppView reloadApplicationStateIfNecessary];
  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView2 reloadData];
}

- (void)setProduct:(id)product
{
  productCopy = product;
  if (self->_product != productCopy)
  {
    v6 = productCopy;
    objc_storeStrong(&self->_product, product);
    [(PKPaymentCardUnsupportedViewController *)self _updateViewsWithProduct:self->_product];
    productCopy = v6;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PKSetupProductMethodInApp *)self->_inApp associatedStoreIdentifiers:view];
  v5 = [v4 count] != 0;

  return v5;
}

- (void)_done:(id)_done
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

- (void)appViewContentSizeChanged:(id)changed
{
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView2 endUpdates];
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end