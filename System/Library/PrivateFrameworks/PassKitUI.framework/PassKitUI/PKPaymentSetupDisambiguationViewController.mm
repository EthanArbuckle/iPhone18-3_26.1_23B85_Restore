@interface PKPaymentSetupDisambiguationViewController
- (PKPaymentSetupDisambiguationViewController)initWithProducts:(id)products context:(int64_t)context;
- (PKPaymentSetupDisambiguationViewControllerDelegate)delegate;
- (id)_productAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_nextTapped:(id)tapped;
- (void)_notifyDelegateDidSelectProduct:(id)product;
- (void)_popToCameraCapture:(id)capture;
- (void)_setupLater:(id)later;
- (void)_updateSelectedProduct:(id)product;
- (void)setEnteredCardNumber:(id)number;
- (void)setProducts:(id)products;
- (void)setupFooterViewForTableView:(id)view;
- (void)setupHeaderViewForTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupDisambiguationViewController

- (PKPaymentSetupDisambiguationViewController)initWithProducts:(id)products context:(int64_t)context
{
  v19[1] = *MEMORY[0x1E69E9840];
  productsCopy = products;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupDisambiguationViewController;
  v7 = [(PKPaymentSetupTableViewController *)&v18 initWithContext:context];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v9 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v10 = [v8 initWithTitle:v9 style:2 target:v7 action:sel__nextTapped_];
    nextBarButtonItem = v7->_nextBarButtonItem;
    v7->_nextBarButtonItem = v10;

    navigationItem = [(PKPaymentSetupDisambiguationViewController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:v7->_nextBarButtonItem];

    [(UIBarButtonItem *)v7->_nextBarButtonItem setEnabled:0];
    v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayName" ascending:1];
    v19[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15 = [productsCopy sortedArrayUsingDescriptors:v14];
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
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKPaymentSetupDisambiguationViewController *)self setupHeaderViewForTableView:tableView];
  [(PKPaymentSetupDisambiguationViewController *)self setupFooterViewForTableView:tableView];
  [tableView setTableHeaderView:self->_headerView];
  [tableView setTableFooterView:self->_footerView];
  [tableView setSeparatorStyle:1];
}

- (void)setupHeaderViewForTableView:(id)view
{
  viewCopy = view;
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
  imageView = [(PKTableHeaderView *)self->_headerView imageView];
  [imageView setImage:0];

  titleLabel = [(PKTableHeaderView *)self->_headerView titleLabel];
  [titleLabel setText:v17];

  subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [subtitleLabel setText:v10];

  v14 = self->_headerView;
  backgroundColor = [viewCopy backgroundColor];

  v16 = [backgroundColor colorWithAlphaComponent:0.949999988];
  [(PKTableHeaderView *)v14 setBackgroundColor:v16];

  [(PKTableHeaderView *)self->_headerView sizeToFit];
}

- (void)setupFooterViewForTableView:(id)view
{
  viewCopy = view;
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView bounds];
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

  descriptionLabel = [(PKDisambiguationFooterView *)self->_footerView descriptionLabel];
  v21 = PKLocalizedPaymentString(&cfstr_SelectCardFoot.isa);
  [descriptionLabel setText:v21];

  [(PKDisambiguationFooterView *)self->_footerView sizeToFitForTableView:viewCopy];
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
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKDisambiguationFooterView *)footerView sizeToFitForTableView:tableView];

  tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
  [(PKDisambiguationFooterView *)self->_footerView bounds];
  [tableView2 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v7)];
}

- (id)_productAtIndexPath:(id)path
{
  products = self->_products;
  v4 = [path row];

  return [(NSArray *)products objectAtIndex:v4];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(PKPaymentSetupDisambiguationViewController *)self _productAtIndexPath:path];
  v8 = +[PKPaymentSetupProductCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupDisambiguationViewController;
  pathCopy = path;
  [(PKPaymentSetupTableViewController *)&v9 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(PKPaymentSetupDisambiguationViewController *)self _productAtIndexPath:pathCopy, v9.receiver, v9.super_class];
  [(PKPaymentSetupDisambiguationViewController *)self _updateSelectedProduct:v7];
  tableView = [(PKPaymentSetupTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:0];
}

- (void)setEnteredCardNumber:(id)number
{
  if (self->_enteredCardNumber != number)
  {
    v4 = [number copy];
    enteredCardNumber = self->_enteredCardNumber;
    self->_enteredCardNumber = v4;

    v6 = self->_enteredCardNumber;
    if (!v6)
    {
      v6 = @"--";
    }

    v8 = PKLocalizedPaymentString(&cfstr_SelectCardSubt.isa, &stru_1F3BD5BF0.isa, v6);
    subtitleLabel = [(PKTableHeaderView *)self->_headerView subtitleLabel];
    [subtitleLabel setText:v8];
  }
}

- (void)setProducts:(id)products
{
  if (self->_products != products)
  {
    v4 = [products copy];
    products = self->_products;
    self->_products = v4;

    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView reloadData];

    footerView = self->_footerView;
    tableView2 = [(PKPaymentSetupTableViewController *)self tableView];
    [(PKDisambiguationFooterView *)footerView sizeToFitForTableView:tableView2];

    tableView3 = [(PKPaymentSetupTableViewController *)self tableView];
    [(PKDisambiguationFooterView *)self->_footerView bounds];
    [tableView3 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v11)];
  }
}

- (void)_updateSelectedProduct:(id)product
{
  productCopy = product;
  if (self->_selectedProduct != productCopy)
  {
    v7 = productCopy;
    objc_storeStrong(&self->_selectedProduct, product);
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView reloadData];

    [(UIBarButtonItem *)self->_nextBarButtonItem setEnabled:self->_selectedProduct != 0];
    productCopy = v7;
  }
}

- (void)_nextTapped:(id)tapped
{
  selectedProduct = [(PKPaymentSetupDisambiguationViewController *)self selectedProduct];
  if (selectedProduct)
  {
    v5 = selectedProduct;
    [(PKPaymentSetupDisambiguationViewController *)self _notifyDelegateDidSelectProduct:selectedProduct];
    selectedProduct = v5;
  }
}

- (void)_notifyDelegateDidSelectProduct:(id)product
{
  productCopy = product;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 disambiguationViewController:self didSelectProduct:productCopy];
    }
  }
}

- (void)_popToCameraCapture:(id)capture
{
  navigationController = [(PKPaymentSetupDisambiguationViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v5 = [viewControllers objectAtIndex:{objc_msgSend(viewControllers, "count") - 3}];
  navigationController2 = [(PKPaymentSetupDisambiguationViewController *)self navigationController];
  v7 = [navigationController2 popToViewController:v5 animated:1];
}

- (void)_setupLater:(id)later
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