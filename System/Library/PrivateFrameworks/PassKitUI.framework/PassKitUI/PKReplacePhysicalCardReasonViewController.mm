@interface PKReplacePhysicalCardReasonViewController
- (PKReplacePhysicalCardReasonViewController)initWithPhysicalCardController:(id)controller context:(int64_t)context;
- (id)_cellForReasonAtIndexPath:(id)path inTableView:(id)view;
- (void)_nextButtonPressed:(id)pressed;
- (void)_reasonRowSelectedAtIndexPath:(id)path inTableView:(id)view;
- (void)_updateNavigationButtons;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKReplacePhysicalCardReasonViewController

- (PKReplacePhysicalCardReasonViewController)initWithPhysicalCardController:(id)controller context:(int64_t)context
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = PKReplacePhysicalCardReasonViewController;
  v8 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v20, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 1);
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controller, controller);
    v9->_context = context;
    account = [controllerCopy account];
    v9->_feature = [account feature];

    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v9 action:sel__cancelButtonPressed_];
    cancelButton = v9->_cancelButton;
    v9->_cancelButton = v11;

    v13 = objc_alloc(MEMORY[0x1E69DC708]);
    v14 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v15 = [v13 initWithTitle:v14 style:0 target:v9 action:sel__nextButtonPressed_];
    nextButton = v9->_nextButton;
    v9->_nextButton = v15;

    navigationItem = [(PKReplacePhysicalCardReasonViewController *)v9 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    [navigationItem setLeftBarButtonItem:v9->_cancelButton];
    [navigationItem setRightBarButtonItem:v9->_nextButton];
    v18 = PKLocalizedFeatureString();
    [navigationItem setTitle:v18];

    [(PKReplacePhysicalCardReasonViewController *)v9 _updateNavigationButtons];
  }

  return v9;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKReplacePhysicalCardReasonViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  tableView = [(PKReplacePhysicalCardReasonViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PKPhysicalCardReasonTableViewCellReuseIdentifier"];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKReplacePhysicalCardReasonViewController;
  [(PKReplacePhysicalCardReasonViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKReplacePhysicalCardReasonViewController *)self tableView];
    navigationItem = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKReplacePhysicalCardReasonViewController *)self view];
  [view setNeedsLayout];
}

- (void)_reasonRowSelectedAtIndexPath:(id)path inTableView:(id)view
{
  pathCopy = path;
  viewCopy = view;
  v7 = [pathCopy row];
  [pathCopy section];
  if (!self->_hasSelectedRow || self->_selectedRow != v7)
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];
    v10 = [viewCopy cellForRowAtIndexPath:v9];

    [v10 setAccessoryType:0];
    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];

    [v11 setAccessoryType:3];
    self->_hasSelectedRow = 1;
    self->_selectedRow = v7;
    [(PKReplacePhysicalCardReasonViewController *)self _updateNavigationButtons];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)_cellForReasonAtIndexPath:(id)path inTableView:(id)view
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PKPhysicalCardReasonTableViewCellReuseIdentifier" forIndexPath:pathCopy];
  if ([pathCopy row] > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = PKLocalizedFeatureString();
  }

  textLabel = [v7 textLabel];
  [textLabel setText:v8];

  if (self->_hasSelectedRow)
  {
    selectedRow = self->_selectedRow;
    if (selectedRow == [pathCopy row])
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
    navigationItem2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [navigationItem2 startAnimating];
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:navigationItem2];
    navigationItem = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v4];
  }

  else
  {
    navigationItem2 = [(PKReplacePhysicalCardReasonViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:self->_nextButton];
  }
}

- (void)_nextButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  if (!self->_loadingCustomizationOptions && self->_hasSelectedRow)
  {
    self->_loadingCustomizationOptions = 1;
    [(PKReplacePhysicalCardReasonViewController *)self _updateNavigationButtons];
    v18 = [PKOrderPhysicalCardController alloc];
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    paymentPass = [(PKPhysicalCardController *)self->_controller paymentPass];
    account = [(PKPhysicalCardController *)self->_controller account];
    accountUser = [(PKPhysicalCardController *)self->_controller accountUser];
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
    primaryPhysicalCard = [(PKPhysicalCardController *)self->_controller primaryPhysicalCard];
    unactivatedPhysicalCard = primaryPhysicalCard;
    if (!primaryPhysicalCard)
    {
      unactivatedPhysicalCard = [(PKPhysicalCardController *)self->_controller unactivatedPhysicalCard];
    }

    v14 = [(PKOrderPhysicalCardController *)v18 initWithAccountService:mEMORY[0x1E69B8400] paymentWebService:mEMORY[0x1E69B8EF8] paymentPass:paymentPass account:account accountUser:accountUser orderReason:v17 context:context currentPhysicalCard:unactivatedPhysicalCard];
    orderController = self->_orderController;
    self->_orderController = v14;

    if (!primaryPhysicalCard)
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