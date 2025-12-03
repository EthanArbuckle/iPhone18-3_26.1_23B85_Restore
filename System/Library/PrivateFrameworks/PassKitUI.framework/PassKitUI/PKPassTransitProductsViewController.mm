@interface PKPassTransitProductsViewController
- (PKPassTransitProductsViewController)initWithPaymentPass:(id)pass transitType:(unint64_t)type;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_actionHandlerForIndexPath:(id)path;
- (id)_allocView;
- (id)_renewActionForCommutePlanIdentifier:(id)identifier;
- (id)_topUpActionForIndexPath:(id)path balanceIdentifiers:(id)identifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell inTableView:(id)view forIndexPath:(id)path;
- (void)_configureView:(id)view indexPath:(id)path animated:(BOOL)animated;
- (void)_handlePassUpdate:(id)update;
- (void)_reloadBalance;
- (void)_reloadContent;
- (void)_setupBalances;
- (void)accessibleLayoutForView:(id)view changedFrom:(int64_t)from to:(int64_t)to;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setPass:(id)pass;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPassTransitProductsViewController

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  identifierCopy = identifier;
  updateCopy = update;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v9 = identifierCopy;
  v10 = uniqueID;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      goto LABEL_9;
    }

    v12 = [v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  v13[3] = &unk_1E8010A10;
  v13[4] = self;
  v14 = updateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_9:
}

void __95__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) setDynamicBalances:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update
{
  updateCopy = update;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPaymentPass *)pass uniqueID];
  v10 = [identifierCopy isEqualToString:uniqueID];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = updateCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __92__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) updateWithDynamicCommutePlans:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BBBD8] object:0];

  [(PKPaymentDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v4.receiver = self;
  v4.super_class = PKPassTransitProductsViewController;
  [(PKSectionTableViewController *)&v4 dealloc];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  propertiesCopy = properties;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPaymentPass *)pass uniqueID];
  v10 = [identifierCopy isEqualToString:uniqueID];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = propertiesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __106__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) setTransitProperties:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)_reloadBalance
{
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v4 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__42;
  v31[4] = __Block_byref_object_dispose__42;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__42;
  v29[4] = __Block_byref_object_dispose__42;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__42;
  v27[4] = __Block_byref_object_dispose__42;
  v28 = 0;
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  dispatch_group_enter(v4);
  paymentDataProvider = self->_paymentDataProvider;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke;
  v22[3] = &unk_1E8016A48;
  v26 = v31;
  v7 = devicePrimaryPaymentApplication;
  v23 = v7;
  selfCopy = self;
  v8 = v4;
  v25 = v8;
  [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v7 completion:v22];
  dispatch_group_enter(v8);
  v9 = self->_paymentDataProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_2;
  v19[3] = &unk_1E8016A70;
  v21 = v29;
  v10 = v8;
  v20 = v10;
  [(PKPaymentDataProvider *)v9 balancesForPaymentPassWithUniqueIdentifier:uniqueID completion:v19];
  dispatch_group_enter(v10);
  v11 = self->_paymentDataProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_3;
  v16[3] = &unk_1E8012BB0;
  v18 = v27;
  v12 = v10;
  v17 = v12;
  [(PKPaymentDataProvider *)v11 plansForPaymentPassWithUniqueIdentifier:uniqueID completion:v16];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_4;
  block[3] = &unk_1E801E508;
  objc_copyWeak(&v14, &location);
  block[4] = v31;
  block[5] = v29;
  block[6] = v27;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);

  _Block_object_dispose(v31, 8);
}

void __53__PKPassTransitProductsViewController__reloadBalance__block_invoke(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:*(a1[5] + 1160)];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[138] setTransitProperties:*(*(*(a1 + 32) + 8) + 40)];
    [v3[138] setDynamicBalances:*(*(*(a1 + 40) + 8) + 40)];
    [v3[138] updateWithDynamicCommutePlans:*(*(*(a1 + 48) + 8) + 40)];
    [v3 _reloadContent];
    WeakRetained = v3;
  }
}

- (void)_handlePassUpdate:(id)update
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PKPassTransitProductsViewController__handlePassUpdate___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __57__PKPassTransitProductsViewController__handlePassUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1152) library];
  v3 = [*(*(a1 + 32) + 1160) passTypeIdentifier];
  v4 = [*(*(a1 + 32) + 1160) serialNumber];
  v5 = [v2 passWithPassTypeIdentifier:v3 serialNumber:v4];
  v6 = [v5 paymentPass];

  [*(a1 + 32) setPass:v6];
}

- (PKPassTransitProductsViewController)initWithPaymentPass:(id)pass transitType:(unint64_t)type
{
  passCopy = pass;
  v20.receiver = self;
  v20.super_class = PKPassTransitProductsViewController;
  v7 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v20, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 2);
  v8 = v7;
  if (v7)
  {
    [(PKPassTransitProductsViewController *)v7 setPass:passCopy];
    v8->_transitType = type;
    v9 = [PKAdjustableSingleCellView alloc];
    v10 = [(PKAdjustableSingleCellView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleSingleCellView = v8->_sampleSingleCellView;
    v8->_sampleSingleCellView = v10;

    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v8->_paymentDataProvider;
    v8->_paymentDataProvider = defaultDataProvider;

    [(PKPaymentDataProvider *)v8->_paymentDataProvider addDelegate:v8];
    if (([(PKPaymentPass *)v8->_pass isRemotePass]& 1) == 0)
    {
      dataAccessor = [(PKPaymentPass *)v8->_pass dataAccessor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v8->_remoteDataAccessor, dataAccessor);
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v16 = *MEMORY[0x1E69BBBD8];
        library = [(PKRemoteDataAccessor *)v8->_remoteDataAccessor library];
        [defaultCenter addObserver:v8 selector:sel__handlePassUpdate_ name:v16 object:library];
      }
    }

    if ((_UISolariumEnabled() & 1) == 0)
    {
      navigationItem = [(PKPassTransitProductsViewController *)v8 navigationItem];
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v8;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if ((PKEqualObjects() & 1) == 0)
  {
    self->_pass = passCopy;
    v4 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:passCopy];
    balanceModel = self->_balanceModel;
    self->_balanceModel = v4;

    [(PKPassTransitProductsViewController *)self _setupPlans];
    [(PKPassTransitProductsViewController *)self _setupBalances];
    [(PKPassTransitProductsViewController *)self _reloadBalance];
  }
}

- (void)_setupBalances
{
  if (([(PKTransitBalanceModel *)self->_balanceModel hasBalanceContent]& 1) != 0)
  {
    devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    [devicePrimaryPaymentApplication state];
    self->_hasBalance = PKPaymentApplicationStateIsPersonalized() != 0;
  }

  else
  {
    self->_hasBalance = 0;
  }
}

- (void)_reloadContent
{
  self->_accessibleLayout = 0;
  tableView = [(PKPassTransitProductsViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPassTransitProductsViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  tableView = [(PKPassTransitProductsViewController *)self tableView];
  [tableView setAllowsSelection:0];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"TransitPassProductAdjustableView"];
  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"TransitPassHeaderIdentifier"];
  [(PKPassTransitProductsViewController *)self _reloadBalance];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPassTransitProductsViewController;
  [(PKPassTransitProductsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKPassTransitProductsViewController *)self tableView];
    navigationItem = [(PKPassTransitProductsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v15.receiver = self;
  v15.super_class = PKPassTransitProductsViewController;
  [(PKPassTransitProductsViewController *)&v15 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKPassTransitProductsViewController *)self traitCollection];
  v6 = traitCollection;
  if (changeCopy)
  {
    if (traitCollection)
    {
      preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

      if (v9)
      {
        preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
        v11 = *MEMORY[0x1E69DDC90];

        if (preferredContentSizeCategory3 != v11)
        {
          v12 = [PKAdjustableSingleCellView alloc];
          v13 = [(PKAdjustableSingleCellView *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          sampleSingleCellView = self->_sampleSingleCellView;
          self->_sampleSingleCellView = v13;

          [(PKPassTransitProductsViewController *)self _reloadContent];
        }
      }
    }
  }
}

- (id)_renewActionForCommutePlanIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayableCommutePlanActions = [(PKTransitBalanceModel *)self->_balanceModel displayableCommutePlanActions];
  v6 = [displayableCommutePlanActions pk_objectsPassingTest:&__block_literal_global_176];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPassTransitProductsViewController__renewActionForCommutePlanIdentifier___block_invoke_2;
  v10[3] = &unk_1E8018AC0;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [v6 pk_firstObjectPassingTest:v10];

  return v8;
}

BOOL __76__PKPassTransitProductsViewController__renewActionForCommutePlanIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 2 && objc_msgSend(v2, "isActionAvailable") && (objc_msgSend(v2, "unavailableActionBehavior") & 1) == 0;

  return v3;
}

BOOL __76__PKPassTransitProductsViewController__renewActionForCommutePlanIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 associatedPlanIdentifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 caseInsensitiveCompare:v6] == 0;
    }
  }

  return v8;
}

- (id)_topUpActionForIndexPath:(id)path balanceIdentifiers:(id)identifiers
{
  v25 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  availableActions = [(PKPaymentPass *)self->_pass availableActions];
  v7 = [availableActions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v17 = *MEMORY[0x1E69BC060];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(availableActions);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 type] == 1 && objc_msgSend(identifiersCopy, "containsObject:", v17) || objc_msgSend(v11, "featured") && (objc_msgSend(v11, "associatedEnteredValueIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || (v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke, v19[3] = &unk_1E8013098, v19[4] = v11, (objc_msgSend(identifiersCopy, "pk_hasObjectPassingTest:", v19) & 1) != 0) || (v18[0] = MEMORY[0x1E69E9820], v18[1] = 3221225472, v18[2] = __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke_2, v18[3] = &unk_1E8013098, v18[4] = v11, objc_msgSend(identifiersCopy, "pk_hasObjectPassingTest:", v18)))
        {
LABEL_19:
          v15 = v11;
          goto LABEL_21;
        }

        if ([v11 type] == 1)
        {
          relevantPropertyIdentifier = [v11 relevantPropertyIdentifier];
          if (relevantPropertyIdentifier)
          {
          }

          else
          {
            associatedEnteredValueIdentifier = [v11 associatedEnteredValueIdentifier];

            if (!associatedEnteredValueIdentifier)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v8 = [availableActions countByEnumeratingWithState:&v20 objects:v24 count:16];
      v15 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

BOOL __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) relevantPropertyIdentifier];
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v5 && v4)
    {
      v7 = [v4 caseInsensitiveCompare:v5] == 0;
    }
  }

  return v7;
}

BOOL __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) associatedEnteredValueIdentifier];
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v5 && v4)
    {
      v7 = [v4 caseInsensitiveCompare:v5] == 0;
    }
  }

  return v7;
}

- (id)_allocView
{
  v2 = [PKAdjustableSingleCellView alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  return [(PKAdjustableSingleCellView *)v2 initWithFrame:v3, v4, v5, v6];
}

- (id)_actionHandlerForIndexPath:(id)path
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __66__PKPassTransitProductsViewController__actionHandlerForIndexPath___block_invoke;
  v11 = &unk_1E8018B08;
  objc_copyWeak(&v12, &location);
  v5 = _Block_copy(&v8);
  v6 = [v5 copy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __66__PKPassTransitProductsViewController__actionHandlerForIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 pass];
    v15 = 0;
    v16 = 0;
    v9 = [v8 canPerformAction:v6 unableReason:&v16 displayableError:&v15];
    v10 = v15;
    if ((v9 & 1) != 0 || v16 == 2)
    {
      if ([v6 hasExternalActionContent])
      {
        v11 = [v6 externalActionContent];
        v12 = [v6 title];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __66__PKPassTransitProductsViewController__actionHandlerForIndexPath___block_invoke_2;
        v14[3] = &unk_1E8014560;
        v14[4] = WeakRetained;
        PKPaymentPassActionPerformExternalActionContent(v8, v11, v12, v14);
      }

      else
      {
        v11 = [[PKPerformActionViewController alloc] initWithPass:v8 action:v6];
        [(PKPerformActionViewController *)v11 setDelegate:WeakRetained];
        v13 = [MEMORY[0x1E69B8EF8] sharedService];
        [(PKPerformActionViewController *)v11 setWebService:v13];

        v12 = [[PKNavigationController alloc] initWithRootViewController:v11];
        [(PKNavigationController *)v12 setSupportedInterfaceOrientations:2];
        [WeakRetained presentViewController:v12 animated:1 completion:0];
      }
    }

    else
    {
      v11 = [PKPerformActionViewController alertControllerForUnableReason:v16 action:v6 displayableError:v10 addCardActionHandler:0];
      [WeakRetained presentViewController:v11 animated:1 completion:0];
    }
  }
}

uint64_t __66__PKPassTransitProductsViewController__actionHandlerForIndexPath___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

- (void)_configureView:(id)view indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  pathCopy = path;
  displayableCommutePlans = [(PKTransitBalanceModel *)self->_balanceModel displayableCommutePlans];
  displayableBalances = [(PKTransitBalanceModel *)self->_balanceModel displayableBalances];
  transitType = self->_transitType;
  v12 = self->_pass;
  v13 = [pathCopy row];
  if (transitType >= 3)
  {
    if (transitType != 3)
    {
      goto LABEL_36;
    }

    v22 = viewCopy;
    v23 = [displayableCommutePlans objectAtIndexedSubscript:v13];
    v51 = v22;
    [v22 beginUpdates];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v50 = v23;
    if (!v23)
    {
      v32 = 0;
      v33 = 0;
      v34 = &stru_1F3BD7330;
LABEL_35:
      [v51 setTitle:v33];
      [v51 setDetail:v32];
      [v51 setSubDetail:v34];
      [v51 setPass:v12];
      [v51 setEnableDisclosure:0];
      [v51 setSubDetailColor:secondaryLabelColor];
      [v51 endUpdates:animatedCopy];

      goto LABEL_36;
    }

    v54 = displayableCommutePlans;
    title = [v23 title];
    label = [title label];
    v49 = title;
    value = [title value];
    properties = [v23 properties];
    if ((properties & 3) == 1)
    {
      formattedDateString = [v23 formattedDateString];
      v27 = v23;
      if ([v23 hasExpiredPlanDate])
      {
        [MEMORY[0x1E69DC888] systemRedColor];
        secondaryLabelColor = v28 = secondaryLabelColor;
LABEL_25:
        v35 = label;

LABEL_26:
        PKCommutePlanFieldEitherLabelOrValueIsEmpty();
        PKCommutePlanFormatTitleFromLabelAndValue();
        v46 = v35;

        v44 = value;
        identifier = [v27 identifier];
        v39 = [(PKPassTransitProductsViewController *)self _renewActionForCommutePlanIdentifier:identifier];

        v40 = [(PKPassTransitProductsViewController *)self _actionHandlerForIndexPath:pathCopy];
        v41 = v40;
        if (v39 && v40 && [v39 isActionAvailable])
        {
          v42 = -[PKPaymentPass isSuicaPass](v12, "isSuicaPass") && [v39 type] == 2 && -[PKPaymentPass transitCommutePlanType](self->_pass, "transitCommutePlanType") == 1;
          [v39 setReverseButtonTitleForLegacySuica:v42];
          [v51 setAction:v39];
          [v51 setActionHandler:v41];
        }

        displayableCommutePlans = v54;
        v33 = v46;
        v34 = formattedDateString;
        v32 = v44;
        goto LABEL_35;
      }
    }

    else
    {
      if ((properties & 4) != 0)
      {
        v28 = [v23 passFieldForKey:*MEMORY[0x1E69BC580]];
        if (([v28 foreignReferenceType] - 1) > 1)
        {
          formattedDateString = &stru_1F3BD7330;
        }

        else
        {
          balanceModel = self->_balanceModel;
          foreignReferenceIdentifiers = [v28 foreignReferenceIdentifiers];
          v37 = [(PKTransitBalanceModel *)balanceModel balanceForIdentifiers:foreignReferenceIdentifiers];

          formattedValue = [v37 formattedValue];

          formattedDateString = &stru_1F3BD7330;
          value = formattedValue;
        }

        v27 = v23;
        goto LABEL_25;
      }

      formattedDateString = &stru_1F3BD7330;
      v27 = v23;
    }

    v35 = label;
    goto LABEL_26;
  }

  v53 = displayableCommutePlans;
  v14 = viewCopy;
  [v14 beginUpdates];
  v15 = [displayableBalances objectAtIndexedSubscript:v13];
  identifiers = [v15 identifiers];
  v17 = [(PKPassTransitProductsViewController *)self _topUpActionForIndexPath:pathCopy balanceIdentifiers:identifiers];

  v18 = [(PKPassTransitProductsViewController *)self _actionHandlerForIndexPath:pathCopy];
  v19 = v18;
  if (v17)
  {
    v20 = v18 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20 && [v17 isActionAvailable])
  {
    [v14 setAction:v17];
    [v14 setActionHandler:v19];
  }

  [v14 setEnableDisclosure:0];
  localizedTitle = [v15 localizedTitle];
  if (localizedTitle)
  {
    [v14 setTitle:localizedTitle];
  }

  else
  {
    v29 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
    [v14 setTitle:v29];
  }

  formattedValue2 = [v15 formattedValue];
  [v14 setDetail:formattedValue2];

  [v14 setSubDetail:&stru_1F3BD7330];
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v14 setSubDetailColor:secondaryLabelColor2];

  [v14 setPass:v12];
  [v14 endUpdates:animatedCopy];

  displayableCommutePlans = v53;
LABEL_36:
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPassTransitProductsViewController *)self view];
  [view setNeedsLayout];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  transitType = self->_transitType;
  balanceModel = self->_balanceModel;
  if (transitType == 3)
  {
    [(PKTransitBalanceModel *)balanceModel displayableCommutePlans:view];
  }

  else
  {
    [(PKTransitBalanceModel *)balanceModel displayableBalances:view];
  }
  v6 = ;
  v7 = [v6 count];

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v7 = self->_sampleSingleCellView;
  viewCopy = view;
  [(PKPassTransitProductsViewController *)self _configureView:v7 indexPath:path animated:0];
  [viewCopy layoutMargins];
  v10 = v9;
  v12 = v11;
  [viewCopy bounds];
  v14 = v13;

  [(PKAdjustableSingleCellView *)v7 sizeThatFits:v14 - v10 - v12, 1.79769313e308];
  v16 = v15;

  return v16;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v5 = [(PKPassTransitProductsViewController *)self tableView:view];
  v6 = [v5 dequeueReusableHeaderFooterViewWithIdentifier:@"TransitPassHeaderIdentifier"];

  transitType = self->_transitType;
  if (transitType)
  {
    if (transitType != 3)
    {
      goto LABEL_6;
    }

    v11 = 0;
    v8 = PKPassLocalizedStringWithFormat();
  }

  else
  {
    v8 = PKLocalizedPaymentString(&cfstr_BalancesProduc.isa);
  }

  v9 = v8;
  [v6 setHeaderLabelText:{v8, v11}];

LABEL_6:

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"TransitPassProductAdjustableView" forIndexPath:pathCopy];
  [(PKPassTransitProductsViewController *)self _configureCell:v8 inTableView:viewCopy forIndexPath:pathCopy];

  return v8;
}

- (void)_configureCell:(id)cell inTableView:(id)view forIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  hostedContentView = [cellCopy hostedContentView];
  if (!hostedContentView)
  {
    hostedContentView = [(PKPassTransitProductsViewController *)self _allocView];
  }

  [(PKPassTransitProductsViewController *)self _configureView:hostedContentView indexPath:pathCopy animated:0];
  [cellCopy setHostedContentView:hostedContentView];
}

- (void)accessibleLayoutForView:(id)view changedFrom:(int64_t)from to:(int64_t)to
{
  viewCopy = view;
  if (to == 2 && self->_accessibleLayout != 2)
  {
    self->_accessibleLayout = 2;
    v9 = viewCopy;
    tableView = [(PKPassTransitProductsViewController *)self tableView];
    [tableView reloadData];

    viewCopy = v9;
  }
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
  presentingViewController = [actionCopy presentingViewController];

  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end