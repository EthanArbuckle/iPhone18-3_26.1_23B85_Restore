@interface PKReplacePhysicalCardReasonViewController
- (PKReplacePhysicalCardReasonViewController)initWithPhysicalCardController:(id)a3 context:(int64_t)a4;
- (id)_cellForReasonAtIndexPath:(id)a3 inTableView:(id)a4;
- (void)_nextButtonPressed:(id)a3;
- (void)_reasonRowSelectedAtIndexPath:(id)a3 inTableView:(id)a4;
- (void)_updateNavigationButtons;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKReplacePhysicalCardReasonViewController

- (PKReplacePhysicalCardReasonViewController)initWithPhysicalCardController:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = PKReplacePhysicalCardReasonViewController;
  v8 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v20, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 1);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, a3);
    v9->_context = a4;
    v10 = [v7 account];
    v9->_feature = [v10 feature];

    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v9 action:sel__cancelButtonPressed_];
    cancelButton = v9->_cancelButton;
    v9->_cancelButton = v11;

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v15 = [v13 initWithTitle:v14 style:0 target:v9 action:sel__nextButtonPressed_];
    nextButton = v9->_nextButton;
    v9->_nextButton = v15;

    v17 = [(PKReplacePhysicalCardReasonViewController *)v9 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v17 pkui_setupScrollEdgeChromelessAppearance];
      [v17 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    [v17 setLeftBarButtonItem:v9->_cancelButton];
    [v17 setRightBarButtonItem:v9->_nextButton];
    v18 = PKLocalizedFeatureString();
    [v17 setTitle:v18];

    [(PKReplacePhysicalCardReasonViewController *)v9 _updateNavigationButtons];
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKReplacePhysicalCardReasonViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  v3 = [(PKReplacePhysicalCardReasonViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPhysicalCardReasonTableViewCellReuseIdentifier"];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKReplacePhysicalCardReasonViewController;
  [(PKReplacePhysicalCardReasonViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKReplacePhysicalCardReasonViewController *)self tableView];
    v4 = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKReplacePhysicalCardReasonViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)_reasonRowSelectedAtIndexPath:(id)a3 inTableView:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 row];
  [v12 section];
  if (!self->_hasSelectedRow || self->_selectedRow != v7)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
    v10 = [v6 cellForRowAtIndexPath:v9];

    [v10 setAccessoryType:0];
    v11 = [v6 cellForRowAtIndexPath:v12];

    [v11 setAccessoryType:3];
    self->_hasSelectedRow = 1;
    self->_selectedRow = v7;
    [(PKReplacePhysicalCardReasonViewController *)self _updateNavigationButtons];
  }

  [v6 deselectRowAtIndexPath:v12 animated:1];
}

- (id)_cellForReasonAtIndexPath:(id)a3 inTableView:(id)a4
{
  v6 = a3;
  v7 = [a4 dequeueReusableCellWithIdentifier:@"PKPhysicalCardReasonTableViewCellReuseIdentifier" forIndexPath:v6];
  if ([v6 row] > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = PKLocalizedFeatureString();
  }

  v9 = [v7 textLabel];
  [v9 setText:v8];

  if (self->_hasSelectedRow)
  {
    selectedRow = self->_selectedRow;
    if (selectedRow == [v6 row])
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];

  return v7;
}

- (void)_updateNavigationButtons
{
  [(UIBarButtonItem *)self->_cancelButton setEnabled:!self->_loadingCustomizationOptions];
  v3 = self->_hasSelectedRow && !self->_loadingCustomizationOptions;
  [(UIBarButtonItem *)self->_nextButton setEnabled:v3];
  if (self->_loadingCustomizationOptions)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v6 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v6];
    v5 = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];
  }

  else
  {
    v6 = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [v6 setRightBarButtonItem:self->_nextButton];
  }
}

- (void)_nextButtonPressed:(id)a3
{
  v4 = a3;
  if (!self->_loadingCustomizationOptions && self->_hasSelectedRow)
  {
    self->_loadingCustomizationOptions = 1;
    [(PKReplacePhysicalCardReasonViewController *)self _updateNavigationButtons];
    v18 = [PKOrderPhysicalCardController alloc];
    v19 = [MEMORY[0x1E69B8400] sharedInstance];
    v5 = [MEMORY[0x1E69B8EF8] sharedService];
    v6 = [(PKPhysicalCardController *)self->_controller paymentPass];
    v7 = [(PKPhysicalCardController *)self->_controller account];
    v8 = [(PKPhysicalCardController *)self->_controller accountUser];
    selectedRow = self->_selectedRow;
    if (selectedRow > 4)
    {
      v10 = 5;
    }

    else
    {
      v10 = qword_1BE116900[selectedRow];
    }

    v17 = v10;
    context = self->_context;
    v12 = [(PKPhysicalCardController *)self->_controller primaryPhysicalCard];
    v13 = v12;
    if (!v12)
    {
      v13 = [(PKPhysicalCardController *)self->_controller unactivatedPhysicalCard];
    }

    v14 = [(PKOrderPhysicalCardController *)v18 initWithAccountService:v19 paymentWebService:v5 paymentPass:v6 account:v7 accountUser:v8 orderReason:v17 context:context currentPhysicalCard:v13];
    orderController = self->_orderController;
    self->_orderController = v14;

    if (!v12)
    {
    }

    objc_initWeak(&location, self);
    v16 = self->_orderController;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke;
    v20[3] = &unk_1E80148F0;
    objc_copyWeak(&v21, &location);
    [(PKOrderPhysicalCardController *)v16 updateCustomizationOptionsWithCompletion:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_2;
    block[3] = &unk_1E8010970;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_2(uint64_t a1)
{
  v2 = [[PKOrderPhysicalCardAddressConfirmationViewController alloc] initWithOrderPhysicalCardController:*(*(a1 + 32) + 1168)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_3;
  v4[3] = &unk_1E8012FD0;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  [(PKOrderPhysicalCardAddressConfirmationViewController *)v3 preflightWithCompletion:v4];
}

void __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_4;
  block[3] = &unk_1E8013D60;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__PKReplacePhysicalCardReasonViewController__nextButtonPressed___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 1160) = 0;
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) navigationController];
    [v2 pushViewController:*(a1 + 40) animated:1];
  }

  v3 = *(a1 + 32);

  return [v3 _updateNavigationButtons];
}

@end