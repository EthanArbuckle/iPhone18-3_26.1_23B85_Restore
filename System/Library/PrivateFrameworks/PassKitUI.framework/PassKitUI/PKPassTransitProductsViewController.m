@interface PKPassTransitProductsViewController
- (PKPassTransitProductsViewController)initWithPaymentPass:(id)a3 transitType:(unint64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_actionHandlerForIndexPath:(id)a3;
- (id)_allocView;
- (id)_renewActionForCommutePlanIdentifier:(id)a3;
- (id)_topUpActionForIndexPath:(id)a3 balanceIdentifiers:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 inTableView:(id)a4 forIndexPath:(id)a5;
- (void)_configureView:(id)a3 indexPath:(id)a4 animated:(BOOL)a5;
- (void)_handlePassUpdate:(id)a3;
- (void)_reloadBalance;
- (void)_reloadContent;
- (void)_setupBalances;
- (void)accessibleLayoutForView:(id)a3 changedFrom:(int64_t)a4 to:(int64_t)a5;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setPass:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPassTransitProductsViewController

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentPass *)self->_pass uniqueID];
  v9 = v6;
  v10 = v8;
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
  v14 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_9:
}

void __95__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1104) setDynamicBalances:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a4;
  pass = self->_pass;
  v8 = a3;
  v9 = [(PKPaymentPass *)pass uniqueID];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __92__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69BBBD8] object:0];

  [(PKPaymentDataProvider *)self->_paymentDataProvider removeDelegate:self];
  v4.receiver = self;
  v4.super_class = PKPassTransitProductsViewController;
  [(PKSectionTableViewController *)&v4 dealloc];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a4;
  pass = self->_pass;
  v8 = a3;
  v9 = [(PKPaymentPass *)pass uniqueID];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __106__PKPassTransitProductsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
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
  v3 = [(PKPaymentPass *)self->_pass uniqueID];
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
  v5 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  dispatch_group_enter(v4);
  paymentDataProvider = self->_paymentDataProvider;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke;
  v22[3] = &unk_1E8016A48;
  v26 = v31;
  v7 = v5;
  v23 = v7;
  v24 = self;
  v8 = v4;
  v25 = v8;
  [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:v3 paymentApplication:v7 completion:v22];
  dispatch_group_enter(v8);
  v9 = self->_paymentDataProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_2;
  v19[3] = &unk_1E8016A70;
  v21 = v29;
  v10 = v8;
  v20 = v10;
  [(PKPaymentDataProvider *)v9 balancesForPaymentPassWithUniqueIdentifier:v3 completion:v19];
  dispatch_group_enter(v10);
  v11 = self->_paymentDataProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__PKPassTransitProductsViewController__reloadBalance__block_invoke_3;
  v16[3] = &unk_1E8012BB0;
  v18 = v27;
  v12 = v10;
  v17 = v12;
  [(PKPaymentDataProvider *)v11 plansForPaymentPassWithUniqueIdentifier:v3 completion:v16];
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

- (void)_handlePassUpdate:(id)a3
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

- (PKPassTransitProductsViewController)initWithPaymentPass:(id)a3 transitType:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = PKPassTransitProductsViewController;
  v7 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v20, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 2);
  v8 = v7;
  if (v7)
  {
    [(PKPassTransitProductsViewController *)v7 setPass:v6];
    v8->_transitType = a4;
    v9 = [PKAdjustableSingleCellView alloc];
    v10 = [(PKAdjustableSingleCellView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleSingleCellView = v8->_sampleSingleCellView;
    v8->_sampleSingleCellView = v10;

    v12 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = v8->_paymentDataProvider;
    v8->_paymentDataProvider = v12;

    [(PKPaymentDataProvider *)v8->_paymentDataProvider addDelegate:v8];
    if (([(PKPaymentPass *)v8->_pass isRemotePass]& 1) == 0)
    {
      v14 = [(PKPaymentPass *)v8->_pass dataAccessor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v8->_remoteDataAccessor, v14);
        v15 = [MEMORY[0x1E696AD88] defaultCenter];
        v16 = *MEMORY[0x1E69BBBD8];
        v17 = [(PKRemoteDataAccessor *)v8->_remoteDataAccessor library];
        [v15 addObserver:v8 selector:sel__handlePassUpdate_ name:v16 object:v17];
      }
    }

    if ((_UISolariumEnabled() & 1) == 0)
    {
      v18 = [(PKPassTransitProductsViewController *)v8 navigationItem];
      [v18 pkui_setupScrollEdgeChromelessAppearance];
      [v18 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v8;
}

- (void)setPass:(id)a3
{
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    self->_pass = v6;
    v4 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v6];
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
    v3 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
    [v3 state];
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
  v2 = [(PKPassTransitProductsViewController *)self tableView];
  [v2 reloadData];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPassTransitProductsViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  v3 = [(PKPassTransitProductsViewController *)self tableView];
  [v3 setAllowsSelection:0];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"TransitPassProductAdjustableView"];
  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"TransitPassHeaderIdentifier"];
  [(PKPassTransitProductsViewController *)self _reloadBalance];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPassTransitProductsViewController;
  [(PKPassTransitProductsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKPassTransitProductsViewController *)self tableView];
    v4 = [(PKPassTransitProductsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassTransitProductsViewController;
  [(PKPassTransitProductsViewController *)&v15 traitCollectionDidChange:v4];
  v5 = [(PKPassTransitProductsViewController *)self traitCollection];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [v4 preferredContentSizeCategory];
      v8 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(v7, v8);

      if (v9)
      {
        v10 = [v4 preferredContentSizeCategory];
        v11 = *MEMORY[0x1E69DDC90];

        if (v10 != v11)
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

- (id)_renewActionForCommutePlanIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitBalanceModel *)self->_balanceModel displayableCommutePlanActions];
  v6 = [v5 pk_objectsPassingTest:&__block_literal_global_176];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__PKPassTransitProductsViewController__renewActionForCommutePlanIdentifier___block_invoke_2;
  v10[3] = &unk_1E8018AC0;
  v11 = v4;
  v7 = v4;
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

- (id)_topUpActionForIndexPath:(id)a3 balanceIdentifiers:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(PKPaymentPass *)self->_pass availableActions];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 type] == 1 && objc_msgSend(v5, "containsObject:", v17) || objc_msgSend(v11, "featured") && (objc_msgSend(v11, "associatedEnteredValueIdentifier"), v12 = objc_claimAutoreleasedReturnValue(), v12, !v12) || (v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke, v19[3] = &unk_1E8013098, v19[4] = v11, (objc_msgSend(v5, "pk_hasObjectPassingTest:", v19) & 1) != 0) || (v18[0] = MEMORY[0x1E69E9820], v18[1] = 3221225472, v18[2] = __83__PKPassTransitProductsViewController__topUpActionForIndexPath_balanceIdentifiers___block_invoke_2, v18[3] = &unk_1E8013098, v18[4] = v11, objc_msgSend(v5, "pk_hasObjectPassingTest:", v18)))
        {
LABEL_19:
          v15 = v11;
          goto LABEL_21;
        }

        if ([v11 type] == 1)
        {
          v13 = [v11 relevantPropertyIdentifier];
          if (v13)
          {
          }

          else
          {
            v14 = [v11 associatedEnteredValueIdentifier];

            if (!v14)
            {
              goto LABEL_19;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)_actionHandlerForIndexPath:(id)a3
{
  v4 = a3;
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

- (void)_configureView:(id)a3 indexPath:(id)a4 animated:(BOOL)a5
{
  v55 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [(PKTransitBalanceModel *)self->_balanceModel displayableCommutePlans];
  v10 = [(PKTransitBalanceModel *)self->_balanceModel displayableBalances];
  transitType = self->_transitType;
  v12 = self->_pass;
  v13 = [v8 row];
  if (transitType >= 3)
  {
    if (transitType != 3)
    {
      goto LABEL_36;
    }

    v22 = v7;
    v23 = [v9 objectAtIndexedSubscript:v13];
    v51 = v22;
    [v22 beginUpdates];
    v52 = [MEMORY[0x1E69DC888] secondaryLabelColor];
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
      [v51 setSubDetailColor:v52];
      [v51 endUpdates:v55];

      goto LABEL_36;
    }

    v54 = v9;
    v24 = [v23 title];
    v45 = [v24 label];
    v49 = v24;
    v25 = [v24 value];
    v26 = [v23 properties];
    if ((v26 & 3) == 1)
    {
      v47 = [v23 formattedDateString];
      v27 = v23;
      if ([v23 hasExpiredPlanDate])
      {
        [MEMORY[0x1E69DC888] systemRedColor];
        v52 = v28 = v52;
LABEL_25:
        v35 = v45;

LABEL_26:
        PKCommutePlanFieldEitherLabelOrValueIsEmpty();
        PKCommutePlanFormatTitleFromLabelAndValue();
        v46 = v35;

        v44 = v25;
        v38 = [v27 identifier];
        v39 = [(PKPassTransitProductsViewController *)self _renewActionForCommutePlanIdentifier:v38];

        v40 = [(PKPassTransitProductsViewController *)self _actionHandlerForIndexPath:v8];
        v41 = v40;
        if (v39 && v40 && [v39 isActionAvailable])
        {
          v42 = -[PKPaymentPass isSuicaPass](v12, "isSuicaPass") && [v39 type] == 2 && -[PKPaymentPass transitCommutePlanType](self->_pass, "transitCommutePlanType") == 1;
          [v39 setReverseButtonTitleForLegacySuica:v42];
          [v51 setAction:v39];
          [v51 setActionHandler:v41];
        }

        v9 = v54;
        v33 = v46;
        v34 = v47;
        v32 = v44;
        goto LABEL_35;
      }
    }

    else
    {
      if ((v26 & 4) != 0)
      {
        v28 = [v23 passFieldForKey:*MEMORY[0x1E69BC580]];
        if (([v28 foreignReferenceType] - 1) > 1)
        {
          v47 = &stru_1F3BD7330;
        }

        else
        {
          balanceModel = self->_balanceModel;
          v48 = [v28 foreignReferenceIdentifiers];
          v37 = [(PKTransitBalanceModel *)balanceModel balanceForIdentifiers:v48];

          v43 = [v37 formattedValue];

          v47 = &stru_1F3BD7330;
          v25 = v43;
        }

        v27 = v23;
        goto LABEL_25;
      }

      v47 = &stru_1F3BD7330;
      v27 = v23;
    }

    v35 = v45;
    goto LABEL_26;
  }

  v53 = v9;
  v14 = v7;
  [v14 beginUpdates];
  v15 = [v10 objectAtIndexedSubscript:v13];
  v16 = [v15 identifiers];
  v17 = [(PKPassTransitProductsViewController *)self _topUpActionForIndexPath:v8 balanceIdentifiers:v16];

  v18 = [(PKPassTransitProductsViewController *)self _actionHandlerForIndexPath:v8];
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
  v21 = [v15 localizedTitle];
  if (v21)
  {
    [v14 setTitle:v21];
  }

  else
  {
    v29 = PKLocalizedPaymentString(&cfstr_PropertySummar.isa);
    [v14 setTitle:v29];
  }

  v30 = [v15 formattedValue];
  [v14 setDetail:v30];

  [v14 setSubDetail:&stru_1F3BD7330];
  v31 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v14 setSubDetailColor:v31];

  [v14 setPass:v12];
  [v14 endUpdates:v55];

  v9 = v53;
LABEL_36:
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKPassTransitProductsViewController *)self view];
  [v3 setNeedsLayout];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  transitType = self->_transitType;
  balanceModel = self->_balanceModel;
  if (transitType == 3)
  {
    [(PKTransitBalanceModel *)balanceModel displayableCommutePlans:a3];
  }

  else
  {
    [(PKTransitBalanceModel *)balanceModel displayableBalances:a3];
  }
  v6 = ;
  v7 = [v6 count];

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v7 = self->_sampleSingleCellView;
  v8 = a3;
  [(PKPassTransitProductsViewController *)self _configureView:v7 indexPath:a4 animated:0];
  [v8 layoutMargins];
  v10 = v9;
  v12 = v11;
  [v8 bounds];
  v14 = v13;

  [(PKAdjustableSingleCellView *)v7 sizeThatFits:v14 - v10 - v12, 1.79769313e308];
  v16 = v15;

  return v16;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = [(PKPassTransitProductsViewController *)self tableView:a3];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithIdentifier:@"TransitPassProductAdjustableView" forIndexPath:v6];
  [(PKPassTransitProductsViewController *)self _configureCell:v8 inTableView:v7 forIndexPath:v6];

  return v8;
}

- (void)_configureCell:(id)a3 inTableView:(id)a4 forIndexPath:(id)a5
{
  v9 = a5;
  v7 = a3;
  v8 = [v7 hostedContentView];
  if (!v8)
  {
    v8 = [(PKPassTransitProductsViewController *)self _allocView];
  }

  [(PKPassTransitProductsViewController *)self _configureView:v8 indexPath:v9 animated:0];
  [v7 setHostedContentView:v8];
}

- (void)accessibleLayoutForView:(id)a3 changedFrom:(int64_t)a4 to:(int64_t)a5
{
  v7 = a3;
  if (a5 == 2 && self->_accessibleLayout != 2)
  {
    self->_accessibleLayout = 2;
    v9 = v7;
    v8 = [(PKPassTransitProductsViewController *)self tableView];
    [v8 reloadData];

    v7 = v9;
  }
}

- (void)performActionViewControllerDidCancel:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)performActionViewControllerDidPerformAction:(id)a3
{
  v3 = a3;
  [v3 setDelegate:0];
  v4 = [v3 presentingViewController];

  [v4 dismissViewControllerAnimated:1 completion:0];
}

@end