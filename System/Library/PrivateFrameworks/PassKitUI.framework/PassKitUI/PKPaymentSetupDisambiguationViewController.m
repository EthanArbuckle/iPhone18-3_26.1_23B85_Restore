@interface PKPaymentSetupDisambiguationViewController
- (PKPaymentSetupDisambiguationViewController)initWithProducts:(id)a3 context:(int64_t)a4;
- (PKPaymentSetupDisambiguationViewControllerDelegate)delegate;
- (id)_productAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_nextTapped:(id)a3;
- (void)_notifyDelegateDidSelectProduct:(id)a3;
- (void)_popToCameraCapture:(id)a3;
- (void)_setupLater:(id)a3;
- (void)_updateSelectedProduct:(id)a3;
- (void)setEnteredCardNumber:(id)a3;
- (void)setProducts:(id)a3;
- (void)setupFooterViewForTableView:(id)a3;
- (void)setupHeaderViewForTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupDisambiguationViewController

- (PKPaymentSetupDisambiguationViewController)initWithProducts:(id)a3 context:(int64_t)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupDisambiguationViewController;
  v7 = [(PKPaymentSetupTableViewController *)&v18 initWithContext:a4];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v9 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v10 = [v8 initWithTitle:v9 style:2 target:v7 action:sel__nextTapped_];
    nextBarButtonItem = v7->_nextBarButtonItem;
    v7->_nextBarButtonItem = v10;

    v12 = [(PKPaymentSetupDisambiguationViewController *)v7 navigationItem];
    [v12 setRightBarButtonItem:v7->_nextBarButtonItem];

    [(UIBarButtonItem *)v7->_nextBarButtonItem setEnabled:0];
    v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayName" ascending:1];
    v19[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15 = [v6 sortedArrayUsingDescriptors:v14];
    products = v7->_products;
    v7->_products = v15;
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupDisambiguationViewController;
  [(PKPaymentSetupDisambiguationViewController *)&v4 viewDidLoad];
  v3 = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKPaymentSetupDisambiguationViewController *)self setupHeaderViewForTableView:v3];
  [(PKPaymentSetupDisambiguationViewController *)self setupFooterViewForTableView:v3];
  [v3 setTableHeaderView:self->_headerView];
  [v3 setTableFooterView:self->_footerView];
  [v3 setSeparatorStyle:1];
}

- (void)setupHeaderViewForTableView:(id)a3
{
  v4 = a3;
  v5 = [PKTableHeaderView alloc];
  v6 = [(PKTableHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  headerView = self->_headerView;
  self->_headerView = v6;

  if (_UISolariumFeatureFlagEnabled())
  {
    [(PKTableHeaderView *)self->_headerView setStyle:3];
  }

  v8 = PKLocalizedPaymentString(&cfstr_SelectCard.isa);
  enteredCardNumber = self->_enteredCardNumber;
  if (!enteredCardNumber)
  {
    enteredCardNumber = @"--";
  }

  v17 = v8;
  v10 = PKLocalizedPaymentString(&cfstr_SelectCardSubt.isa, &stru_1F3BD5BF0.isa, enteredCardNumber);
  v11 = [(PKTableHeaderView *)self->_headerView imageView];
  [v11 setImage:0];

  v12 = [(PKTableHeaderView *)self->_headerView titleLabel];
  [v12 setText:v17];

  v13 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [v13 setText:v10];

  v14 = self->_headerView;
  v15 = [v4 backgroundColor];

  v16 = [v15 colorWithAlphaComponent:0.949999988];
  [(PKTableHeaderView *)v14 setBackgroundColor:v16];

  [(PKTableHeaderView *)self->_headerView sizeToFit];
}

- (void)setupFooterViewForTableView:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [v5 bounds];
  v7 = v6;

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69DC628];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __74__PKPaymentSetupDisambiguationViewController_setupFooterViewForTableView___block_invoke;
  v24[3] = &unk_1E8010A60;
  objc_copyWeak(&v25, &location);
  v9 = [v8 actionWithHandler:v24];
  v10 = MEMORY[0x1E69DC628];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__PKPaymentSetupDisambiguationViewController_setupFooterViewForTableView___block_invoke_2;
  v22[3] = &unk_1E8010A60;
  objc_copyWeak(&v23, &location);
  v11 = [v10 actionWithHandler:v22];
  v12 = PKLocalizedPaymentString(&cfstr_SelectCardDiff.isa);
  v13 = PKLocalizedPaymentString(&cfstr_SelectCardLate.isa);
  v14 = PKLocalizedPaymentString(&cfstr_SelectCardFoot.isa);
  [(PKPaymentSetupTableViewController *)self context];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    v15 = [PKDisambiguationFooterView alloc];
    v16 = v11;
    v17 = v13;
  }

  else
  {
    v15 = [PKDisambiguationFooterView alloc];
    v16 = 0;
    v17 = 0;
  }

  v18 = [(PKDisambiguationFooterView *)v15 initWithFrame:v9 action:v16 secondaryAction:v12 title:v17 secondaryTitle:v14 desscription:0.0, 0.0, v7, 130.0];
  footerView = self->_footerView;
  self->_footerView = v18;

  v20 = [(PKDisambiguationFooterView *)self->_footerView descriptionLabel];
  v21 = PKLocalizedPaymentString(&cfstr_SelectCardFoot.isa);
  [v20 setText:v21];

  [(PKDisambiguationFooterView *)self->_footerView sizeToFitForTableView:v4];
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __74__PKPaymentSetupDisambiguationViewController_setupFooterViewForTableView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _popToCameraCapture:v4];
}

void __74__PKPaymentSetupDisambiguationViewController_setupFooterViewForTableView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _setupLater:v4];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupDisambiguationViewController;
  [(PKPaymentSetupDisambiguationViewController *)&v6 viewDidLayoutSubviews];
  footerView = self->_footerView;
  v4 = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKDisambiguationFooterView *)footerView sizeToFitForTableView:v4];

  v5 = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKDisambiguationFooterView *)self->_footerView bounds];
  [v5 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (id)_productAtIndexPath:(id)a3
{
  products = self->_products;
  v4 = [a3 row];

  return [(NSArray *)products objectAtIndex:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(PKPaymentSetupDisambiguationViewController *)self _productAtIndexPath:a4];
  v8 = +[PKPaymentSetupProductCell reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(PKPaymentSetupProductCell);
  }

  [(PKPaymentSetupProductCell *)v9 setProduct:v7];
  [(PKPaymentSetupProductCell *)v9 setTextLabelOffset:50.0];
  if (self->_selectedProduct == v7)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [(PKPaymentSetupProductCell *)v9 setAccessoryType:v10];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupDisambiguationViewController;
  v6 = a4;
  [(PKPaymentSetupTableViewController *)&v9 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(PKPaymentSetupDisambiguationViewController *)self _productAtIndexPath:v6, v9.receiver, v9.super_class];
  [(PKPaymentSetupDisambiguationViewController *)self _updateSelectedProduct:v7];
  v8 = [(PKPaymentSetupTableViewController *)self tableView];
  [v8 deselectRowAtIndexPath:v6 animated:0];
}

- (void)setEnteredCardNumber:(id)a3
{
  if (self->_enteredCardNumber != a3)
  {
    v4 = [a3 copy];
    enteredCardNumber = self->_enteredCardNumber;
    self->_enteredCardNumber = v4;

    v6 = self->_enteredCardNumber;
    if (!v6)
    {
      v6 = @"--";
    }

    v8 = PKLocalizedPaymentString(&cfstr_SelectCardSubt.isa, &stru_1F3BD5BF0.isa, v6);
    v7 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
    [v7 setText:v8];
  }
}

- (void)setProducts:(id)a3
{
  if (self->_products != a3)
  {
    v4 = [a3 copy];
    products = self->_products;
    self->_products = v4;

    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    [v6 reloadData];

    footerView = self->_footerView;
    v8 = [(PKPaymentSetupTableViewController *)self tableView];
    [(PKDisambiguationFooterView *)footerView sizeToFitForTableView:v8];

    v9 = [(PKPaymentSetupTableViewController *)self tableView];
    [(PKDisambiguationFooterView *)self->_footerView bounds];
    [v9 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v11)];
  }
}

- (void)_updateSelectedProduct:(id)a3
{
  v5 = a3;
  if (self->_selectedProduct != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_selectedProduct, a3);
    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    [v6 reloadData];

    [(UIBarButtonItem *)self->_nextBarButtonItem setEnabled:self->_selectedProduct != 0];
    v5 = v7;
  }
}

- (void)_nextTapped:(id)a3
{
  v4 = [(PKPaymentSetupDisambiguationViewController *)self selectedProduct];
  if (v4)
  {
    v5 = v4;
    [(PKPaymentSetupDisambiguationViewController *)self _notifyDelegateDidSelectProduct:v4];
    v4 = v5;
  }
}

- (void)_notifyDelegateDidSelectProduct:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 disambiguationViewController:self didSelectProduct:v9];
    }
  }
}

- (void)_popToCameraCapture:(id)a3
{
  v4 = [(PKPaymentSetupDisambiguationViewController *)self navigationController];
  v8 = [v4 viewControllers];

  v5 = [v8 objectAtIndex:{objc_msgSend(v8, "count") - 3}];
  v6 = [(PKPaymentSetupDisambiguationViewController *)self navigationController];
  v7 = [v6 popToViewController:v5 animated:1];
}

- (void)_setupLater:(id)a3
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
      [v8 disambiguationViewControllerSetUpLater:self];
    }
  }
}

- (PKPaymentSetupDisambiguationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end