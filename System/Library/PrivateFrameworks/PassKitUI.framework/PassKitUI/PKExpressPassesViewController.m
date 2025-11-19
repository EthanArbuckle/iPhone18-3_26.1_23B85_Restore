@interface PKExpressPassesViewController
- (BOOL)_isTransitExpressRowEnabledForIndex:(unint64_t)a3;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKExpressPassesViewController)initWithPaymentDataProvider:(id)a3 controller:(id)a4 style:(int64_t)a5;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_additionalContextStringForPass:(id)a3;
- (id)_conflictingPassesForPass:(id)a3 useCaseWithPasses:(id)a4;
- (id)_educationalMessageCell;
- (id)_expressEnableFailureAlertWithRetryIndexPath:(id)a3;
- (id)_passWithUniqueIdentifier:(id)a3;
- (id)_paymentCardCellForRow:(int64_t)a3;
- (id)_paymentPassForIndex:(unint64_t)a3;
- (id)_preferenceCardCellForIdentifier:(id)a3;
- (id)_transformState:(id)a3;
- (id)_transitCardCellForRow:(int64_t)a3;
- (id)_transitPassForIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)_sectionForPass:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unsigned)_beginPassUpdateSuppression;
- (void)_acquireUserAuthForPass:(id)a3 withCompletion:(id)a4;
- (void)_beginReporting;
- (void)_configureAccessoryViewForPaymentCardCell:(id)a3 row:(int64_t)a4;
- (void)_disableExpressModeForPass:(id)a3 withCompletion:(id)a4;
- (void)_enableExpressModeForPass:(id)a3 withCompletion:(id)a4;
- (void)_endPassUpdateSuppressionWithToken:(unsigned int)a3 delay:(double)a4;
- (void)_endReporting;
- (void)_fetchBalancesAndTransitPassPropertiesForPass:(id)a3 completion:(id)a4;
- (void)_invalidateUserAuth;
- (void)_reloadLocalPassStores;
- (void)_reportExpressModeEvent:(id)a3 forPass:(id)a4 conflictingPasses:(id)a5;
- (void)_sendExpressPassDidChangeNotification;
- (void)_setUserInteractionsEnabled:(BOOL)a3;
- (void)_transitUpdateWithState:(id)a3;
- (void)_updateBalancesWithServerBalances:(id)a3 transitPassProperties:(id)a4 commutePlans:(id)a5 forPass:(id)a6;
- (void)_updateBalancesWithServerBalances:(id)a3 transitPassProperties:(id)a4 commutePlans:(id)a5 forPassWithUniqueIdentifier:(id)a6;
- (void)_updateExpressState:(id)a3;
- (void)_updatePaymentCardCellWithIndex:(int64_t)a3 statusString:(id)a4;
- (void)_updateUIWithExpressState;
- (void)_upgradeExpressModeForPass:(id)a3 withCompletion:(id)a4;
- (void)_userChangedExpressSettingForPaymentPassAtIndexPath:(id)a3;
- (void)_userChangedExpressTransitToNone;
- (void)_userSetExpressTransitCardToEnabled:(BOOL)a3 cell:(id)a4;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)setPasses:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKExpressPassesViewController

- (PKExpressPassesViewController)initWithPaymentDataProvider:(id)a3 controller:(id)a4 style:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v24.receiver = self;
  v24.super_class = PKExpressPassesViewController;
  v11 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v24, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 3);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_expressPassController, a4);
    objc_storeStrong(&v12->_paymentDataProvider, a3);
    if (objc_opt_respondsToSelector())
    {
      [(PKPaymentDataProvider *)v12->_paymentDataProvider addDelegate:v12];
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passUniqueIDToCell = v12->_passUniqueIDToCell;
    v12->_passUniqueIDToCell = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    passUniqueIDToTransitBalanceModels = v12->_passUniqueIDToTransitBalanceModels;
    v12->_passUniqueIDToTransitBalanceModels = v15;

    v12->_style = a5;
    userAutomaticExpressModeText = 1;
    v12->_isUserInteractionsEnabled = 1;
    v18 = +[PKPassSnapshotter sharedInstance];
    passSnapshotter = v12->_passSnapshotter;
    v12->_passSnapshotter = v18;

    v12->_userAutomaticExpressModeText = [(PKExpressPassController *)v12->_expressPassController deviceUsesAutomaticAuthorization];
    if ([(PKExpressPassController *)v12->_expressPassController apiVersion])
    {
      userAutomaticExpressModeText = v12->_userAutomaticExpressModeText;
    }

    v12->_useOldAppearance = userAutomaticExpressModeText & 1;
    [(PKExpressPassController *)v12->_expressPassController setPresentingViewController:v12];
    if (v12->_userAutomaticExpressModeText)
    {
      v20 = @"SETTINGS_DEFAULT_AUTOMATIC_TRANSIT_CELL_TITLE";
    }

    else
    {
      v20 = @"SETTINGS_EXPRESS_TRANSIT_PICKER_TITLE";
    }

    v21 = PKLocalizedPaymentString(&v20->isa);
    v22 = [(PKExpressPassesViewController *)v12 navigationItem];
    [v22 setTitle:v21];
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKExpressPassesViewController;
  [(PKExpressPassesViewController *)&v5 viewWillAppear:a3];
  if (self->_style == 1)
  {
    v4 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v4, self);
  }
}

- (id)_passWithUniqueIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_allPasses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKExpressPassesViewController;
  [(PKExpressPassesViewController *)&v4 viewWillDisappear:a3];
  [(PKExpressPassesViewController *)self _invalidateUserAuth];
}

- (void)dealloc
{
  [(PKExpressPassesViewController *)self _invalidateUserAuth];
  v3.receiver = self;
  v3.super_class = PKExpressPassesViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (!a3)
  {
    if ([(NSMutableArray *)self->_transitPasses count])
    {
      return !self->_useOldAppearance;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (!self->_useOldAppearance)
    {
      return self->_style == 0;
    }

    return 0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  return [(NSMutableArray *)self->_paymentPasses count]!= 0;
}

- (void)setPasses:(id)a3
{
  v5 = a3;
  if (!self->_supressHandlingPassUpdates)
  {
    v6 = v5;
    objc_storeStrong(&self->_passes, a3);
    [(PKExpressPassesViewController *)self _reloadLocalPassStores];
    [(PKSectionTableViewController *)self reloadData];
    v5 = v6;
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __86__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 40))
    {
      return [*(result + 48) _updateBalancesWithServerBalances:0 transitPassProperties:0 commutePlans:? forPassWithUniqueIdentifier:?];
    }
  }

  return result;
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __100__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 40))
    {
      return [*(result + 48) _updateBalancesWithServerBalances:0 transitPassProperties:? commutePlans:? forPassWithUniqueIdentifier:?];
    }
  }

  return result;
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
  block[3] = &unk_1E8010A88;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__PKExpressPassesViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 40))
    {
      return [*(result + 48) _updateBalancesWithServerBalances:? transitPassProperties:? commutePlans:? forPassWithUniqueIdentifier:?];
    }
  }

  return result;
}

- (void)_updateBalancesWithServerBalances:(id)a3 transitPassProperties:(id)a4 commutePlans:(id)a5 forPassWithUniqueIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  transitPasses = self->_transitPasses;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __130__PKExpressPassesViewController__updateBalancesWithServerBalances_transitPassProperties_commutePlans_forPassWithUniqueIdentifier___block_invoke;
  v18[3] = &unk_1E8016688;
  v15 = v13;
  v19 = v15;
  v16 = [(NSMutableArray *)transitPasses indexOfObjectPassingTest:v18];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [(NSMutableArray *)self->_transitPasses objectAtIndex:v16];
    [(PKExpressPassesViewController *)self _updateBalancesWithServerBalances:v10 transitPassProperties:v11 commutePlans:v12 forPass:v17];
  }
}

uint64_t __130__PKExpressPassesViewController__updateBalancesWithServerBalances_transitPassProperties_commutePlans_forPassWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_updateBalancesWithServerBalances:(id)a3 transitPassProperties:(id)a4 commutePlans:(id)a5 forPass:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 uniqueID];
  v14 = [(NSMutableDictionary *)self->_passUniqueIDToTransitBalanceModels objectForKey:v13];
  if (!v14)
  {
    v14 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v12];
  }

  if (v16)
  {
    [v14 setDynamicBalances:v16];
  }

  if (v10)
  {
    [v14 setTransitProperties:v10];
  }

  if (v11)
  {
    [v14 updateWithDynamicCommutePlans:v11];
  }

  [(NSMutableDictionary *)self->_passUniqueIDToTransitBalanceModels setObject:v14 forKey:v13];
  v15 = [(NSMutableDictionary *)self->_passUniqueIDToCell objectForKey:v13];
  [v15 setTransitBalanceModel:v14];
}

- (void)_userChangedExpressSettingForPaymentPassAtIndexPath:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  selectedPaymentPassIndex = self->_selectedPaymentPassIndex;
  v6 = [v4 row];
  v7 = v6;
  if (v6 != self->_selectedPaymentPassIndex)
  {
    self->_selectedPaymentPassIndex = v6;
    v8 = [(PKExpressPassesViewController *)self tableView];
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:selectedPaymentPassIndex inSection:{objc_msgSend(v4, "section")}];
    v10 = [v8 cellForRowAtIndexPath:v9];

    [(PKExpressPassesViewController *)self _configureAccessoryViewForPaymentCardCell:v10 row:selectedPaymentPassIndex];
    v11 = [v8 cellForRowAtIndexPath:v4];
    -[PKExpressPassesViewController _configureAccessoryViewForPaymentCardCell:row:](self, "_configureAccessoryViewForPaymentCardCell:row:", v11, [v4 row]);
    [v11 setActivityIndicatorActive:1];
    [(PKExpressPassesViewController *)self _setUserInteractionsEnabled:0];
    v12 = [(PKExpressPassesViewController *)self _beginPassUpdateSuppression];
    v13 = self->_selectedPaymentPassIndex;
    if (v13 == [(NSMutableArray *)self->_paymentPasses count])
    {
      v14 = [(PKExpressPassesViewController *)self _paymentPassForIndex:selectedPaymentPassIndex];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__PKExpressPassesViewController__userChangedExpressSettingForPaymentPassAtIndexPath___block_invoke;
      v22[3] = &unk_1E80166B0;
      objc_copyWeak(&v23, &location);
      v22[4] = self;
      v24 = v12;
      [(PKExpressPassesViewController *)self _disableExpressModeForPass:v14 withCompletion:v22];
      objc_destroyWeak(&v23);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__PKExpressPassesViewController__userChangedExpressSettingForPaymentPassAtIndexPath___block_invoke_2;
      aBlock[3] = &unk_1E80166D8;
      objc_copyWeak(v20, &location);
      v20[1] = selectedPaymentPassIndex;
      v18 = v4;
      v19 = self;
      v21 = v12;
      v15 = _Block_copy(aBlock);
      v16 = [(PKExpressPassesViewController *)self _paymentPassForIndex:v7];
      if ([(PKExpressPassController *)self->_expressPassController hasEligibleExpressUpgradeRequestForPass:v16])
      {
        self->_selectedPaymentPassIsInPendingState = 1;
        [(PKExpressPassesViewController *)self _upgradeExpressModeForPass:v16 withCompletion:v15];
      }

      else
      {
        [(PKExpressPassesViewController *)self _enableExpressModeForPass:v16 withCompletion:v15];
      }

      objc_destroyWeak(v20);
    }
  }

  objc_destroyWeak(&location);
}

void __85__PKExpressPassesViewController__userChangedExpressSettingForPaymentPassAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateExpressState:v5];
    [v4 _updateUIWithExpressState];
    [v4 _sendExpressPassDidChangeNotification];
    [v4 _setUserInteractionsEnabled:1];
    [*(a1 + 32) _endPassUpdateSuppressionWithToken:*(a1 + 48) delay:0.5];
  }
}

void __85__PKExpressPassesViewController__userChangedExpressSettingForPaymentPassAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1192) = 0;
    if (v9)
    {
      [WeakRetained _updateExpressState:?];
      [v4 _updateUIWithExpressState];
      [v4 _sendExpressPassDidChangeNotification];
    }

    else
    {
      *(WeakRetained + 147) = *(a1 + 56);
      if ([WeakRetained isSectionMapped:1])
      {
        v5 = [v4 tableView];
        v6 = [v5 cellForRowAtIndexPath:*(a1 + 32)];
        [v6 setActivityIndicatorActive:0];
        [*(a1 + 40) _configureAccessoryViewForPaymentCardCell:v6 row:{objc_msgSend(*(a1 + 32), "row")}];
        v7 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 56) inSection:{objc_msgSend(v4, "indexForSection:", 1)}];
        v8 = [v5 cellForRowAtIndexPath:v7];

        [v8 setActivityIndicatorActive:0];
        [*(a1 + 40) _configureAccessoryViewForPaymentCardCell:v8 row:*(a1 + 56)];
      }
    }

    [v4 _setUserInteractionsEnabled:1];
    [*(a1 + 40) _endPassUpdateSuppressionWithToken:*(a1 + 64) delay:0.5];
  }
}

- (void)_userSetExpressTransitCardToEnabled:(BOOL)a3 cell:(id)a4
{
  v6 = a4;
  v7 = [v6 pass];
  [(PKExpressPassesViewController *)self _setUserInteractionsEnabled:0];
  [v6 setAccessoryType:0];
  [v6 setActivityIndicatorActive:1];
  objc_initWeak(&location, self);
  v8 = [(PKExpressPassesViewController *)self _beginPassUpdateSuppression];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PKExpressPassesViewController__userSetExpressTransitCardToEnabled_cell___block_invoke;
  aBlock[3] = &unk_1E8016700;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v13 = self;
  v15 = v8;
  v10 = _Block_copy(aBlock);
  if (a3)
  {
    [(PKExpressPassesViewController *)self _enableExpressModeForPass:v7 withCompletion:v10];
  }

  else
  {
    [(PKExpressPassesViewController *)self _disableExpressModeForPass:v7 withCompletion:v10];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __74__PKExpressPassesViewController__userSetExpressTransitCardToEnabled_cell___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _setUserInteractionsEnabled:1];
    [*(a1 + 32) setActivityIndicatorActive:0];
    if (v3)
    {
      [v5 _transitUpdateWithState:v3];
LABEL_6:
      [*(a1 + 40) _endPassUpdateSuppressionWithToken:*(a1 + 56) delay:0.5];
      goto LABEL_7;
    }

    if ([v5 isSectionMapped:0])
    {
      v6 = [*(a1 + 32) actionSwitch];
      [v6 setOn:0 animated:1];

      goto LABEL_6;
    }

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Failed to update express pass UI", v8, 2u);
    }
  }

LABEL_7:
}

- (void)_userChangedExpressTransitToNone
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_selectedTransitPassIndices count])
  {
    [(PKExpressPassesViewController *)self _setUserInteractionsEnabled:0];
    v3 = [(PKExpressPassesViewController *)self tableView];
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:-[NSMutableArray count](self->_transitPasses inSection:{"count"), 0}];
    v5 = [v3 cellForRowAtIndexPath:v4];

    [v5 setAccessoryType:0];
    [v5 setActivityIndicatorActive:1];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_selectedTransitPassIndices;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = -[NSMutableArray objectAtIndex:](self->_transitPasses, "objectAtIndex:", [*(*(&v17 + 1) + 8 * v10) unsignedIntegerValue]);
          v12 = [v11 uniqueID];
          [v6 addObject:v12];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    objc_initWeak(&location, self);
    expressPassController = self->_expressPassController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PKExpressPassesViewController__userChangedExpressTransitToNone__block_invoke;
    v14[3] = &unk_1E8012468;
    objc_copyWeak(&v15, &location);
    [(PKExpressPassController *)expressPassController disableExpressModeForPassesWithUniqueIdentifiers:v6 withCompletion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __65__PKExpressPassesViewController__userChangedExpressTransitToNone__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PKExpressPassesViewController__userChangedExpressTransitToNone__block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __65__PKExpressPassesViewController__userChangedExpressTransitToNone__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained _setUserInteractionsEnabled:1];
    v3 = [v7 _transformState:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = [v7[140] enabledExpressPasses];
    }

    v6 = v5;

    [v7 _transitUpdateWithState:v6];
    WeakRetained = v7;
  }
}

- (void)_upgradeExpressModeForPass:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    selectedPaymentPassIndex = self->_selectedPaymentPassIndex;
    objc_initWeak(&location, self);
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__12;
    v36[4] = __Block_byref_object_dispose__12;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__12;
    v34[4] = __Block_byref_object_dispose__12;
    v35 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__12;
    v32[4] = __Block_byref_object_dispose__12;
    v33 = 0;
    v9 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke;
    v31[3] = &unk_1E8016750;
    v31[4] = self;
    v31[5] = v32;
    [v9 addOperation:v31];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2_60;
    v27[3] = &unk_1E80167A0;
    objc_copyWeak(&v30, &location);
    v27[4] = self;
    v10 = v6;
    v28 = v10;
    v29 = v34;
    [v9 addOperation:v27];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_62;
    v20[3] = &unk_1E8016818;
    objc_copyWeak(v26, &location);
    v11 = v10;
    v21 = v11;
    v22 = self;
    v23 = v34;
    v24 = v32;
    v26[1] = selectedPaymentPassIndex;
    v25 = v36;
    [v9 addOperation:v20];
    v12 = [MEMORY[0x1E695DFB0] null];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_4;
    v14[3] = &unk_1E8016840;
    objc_copyWeak(v19, &location);
    v16 = v7;
    v17 = v36;
    v19[1] = selectedPaymentPassIndex;
    v15 = v11;
    v18 = v32;
    v13 = [v9 evaluateWithInput:v12 completion:v14];

    objc_destroyWeak(v19);
    objc_destroyWeak(v26);

    objc_destroyWeak(&v30);
    _Block_object_dispose(v32, 8);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);

    objc_destroyWeak(&location);
  }
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(a1 + 32) + 1152))
  {
    (*(v7 + 2))(v7, v6, 0);
  }

  else
  {
    v9 = dispatch_get_global_queue(25, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2;
    v11[3] = &unk_1E8016728;
    v14 = *(a1 + 40);
    v13 = v8;
    v12 = v6;
    v10 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E8010B50;
    v16 = v10;
    dispatch_async(v9, block);
  }
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2(uint64_t a1)
{
  IsEnabled = PKNearFieldRadioIsEnabled();
  if ((IsEnabled & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Cannot upgrade express mode while NFC radio is disabled", buf, 2u);
    }

    v4 = PKCreateAlertControllerForNFCRadioDisabled();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_58;
  block[3] = &unk_1E8015148;
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = IsEnabled;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2_60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1152))
    {
      v9[2](v9, v8, 0);
    }

    else
    {
      v11 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_3;
      v14[3] = &unk_1E8016778;
      objc_copyWeak(&v18, (a1 + 56));
      v16 = v9;
      v12 = v8;
      v13 = *(a1 + 48);
      v15 = v12;
      v17 = v13;
      [WeakRetained _acquireUserAuthForPass:v11 withCompletion:v14];

      objc_destroyWeak(&v18);
    }
  }

  else
  {
    v9[2](v9, v8, 1);
  }
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
LABEL_8:
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (!v6 || v7)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Error getting auth for express mode change: %@", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v9 = *(*(a1 + 40) + 16);
LABEL_9:
  v9();
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_62(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained[147];
    v13 = PKLocalizedTransitString(&cfstr_SettingsExpres_0.isa);
    [v11 _updatePaymentCardCellWithIndex:v12 statusString:v13];

    v14 = v11[140];
    v15 = *(a1 + 32);
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2_66;
    v21[3] = &unk_1E80167F0;
    objc_copyWeak(v27, (a1 + 72));
    v24 = v9;
    v17 = v8;
    v27[1] = *(a1 + 80);
    v18 = *(a1 + 56);
    v22 = v17;
    v25 = v18;
    v20 = *(a1 + 32);
    v19 = v20.i64[0];
    v23 = vextq_s8(v20, v20, 8uLL);
    v26 = *(a1 + 64);
    [v14 upgradeExpressModeForPass:v15 withCredential:v16 resultHandler:v21];

    objc_destroyWeak(v27);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_2_66(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_3_67;
  block[3] = &unk_1E80167C8;
  objc_copyWeak(v22, (a1 + 80));
  v7 = *(a1 + 56);
  v16 = *(a1 + 32);
  v17 = v5;
  v8 = *(a1 + 88);
  v18 = v6;
  v22[1] = v8;
  v14 = *(a1 + 40);
  *&v9 = v7;
  *(&v9 + 1) = *(a1 + 64);
  v13 = v9;
  v10 = *(&v14 + 1);
  v20 = v13;
  v19 = v14;
  v21 = *(a1 + 72);
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v22);
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_3_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (!WeakRetained)
  {
    v3 = *(*(a1 + 72) + 16);
    goto LABEL_5;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v2);
    v3 = *(*(a1 + 72) + 16);
LABEL_5:
    v3();
    goto LABEL_12;
  }

  v4 = [*(a1 + 48) domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A978]])
  {
  }

  else
  {
    v5 = [*(a1 + 48) domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69BC300]];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_11;
    }
  }

  v7 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 104) inSection:{objc_msgSend(*(a1 + 56), "indexForSection:", 1)}];
LABEL_11:
  v8 = [WeakRetained _expressEnableFailureAlertWithRetryIndexPath:v7];
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [WeakRetained _reportExpressModeEnableFailed:*(a1 + 64)];
  (*(*(a1 + 72) + 16))();

LABEL_12:
}

void __75__PKExpressPassesViewController__upgradeExpressModeForPass_withCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (v7)
    {
      [WeakRetained[141] setObject:v7 atIndexedSubscript:*(a1 + 72)];
      [v6 _reportExpressModeEnable:*(a1 + 32) conflictingPasses:0];
    }

    [v6 _updatePaymentCardCellWithIndex:*(a1 + 72) statusString:0];
    [v6 _invalidateUserAuth];
    v8 = *(a1 + 40);
    if ([v11 isCanceled])
    {
      (*(v8 + 16))(v8, 0);
    }

    else
    {
      v9 = [v6[140] enabledExpressPasses];
      (*(v8 + 16))(v8, v9);
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (v10)
    {
      [v6 presentViewController:v10 animated:1 completion:0];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_enableExpressModeForPass:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(PKExpressPassController *)self->_expressPassController expressModeSupportedForPass:v6];
    v9 = [objc_alloc(MEMORY[0x1E69B8848]) initWithPassInformation:v8 forSecureElementPass:v6];
    objc_initWeak(location, self);
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__12;
    v49[4] = __Block_byref_object_dispose__12;
    v50 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = __Block_byref_object_copy__12;
    v47[4] = __Block_byref_object_dispose__12;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__12;
    v45[4] = __Block_byref_object_dispose__12;
    v46 = 0;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__12;
    v43[4] = __Block_byref_object_dispose__12;
    v44 = 0;
    v10 = objc_alloc_init(MEMORY[0x1E69B8658]);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke;
    v42[3] = &unk_1E8016750;
    v42[4] = self;
    v42[5] = v43;
    [v10 addOperation:v42];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_73;
    v37[3] = &unk_1E80168B8;
    objc_copyWeak(&v41, location);
    v37[4] = self;
    v11 = v6;
    v38 = v11;
    v12 = v9;
    v39 = v12;
    v40 = v49;
    [v10 addOperation:v37];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_78;
    v33[3] = &unk_1E80167A0;
    objc_copyWeak(&v36, location);
    v33[4] = self;
    v13 = v11;
    v34 = v13;
    v35 = v47;
    [v10 addOperation:v33];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_79;
    v23[3] = &unk_1E8016908;
    objc_copyWeak(&v32, location);
    v14 = v12;
    v24 = v14;
    v28 = v47;
    v29 = v45;
    v15 = v8;
    v25 = v15;
    v30 = v49;
    v31 = v43;
    v26 = v13;
    v27 = self;
    [v10 addOperation:v23];
    v16 = [MEMORY[0x1E695DFB0] null];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_5;
    v18[3] = &unk_1E8016930;
    objc_copyWeak(&v22, location);
    v19 = v7;
    v20 = v45;
    v21 = v43;
    v17 = [v10 evaluateWithInput:v16 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v41);

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);

    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v49, 8);

    objc_destroyWeak(location);
  }
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(a1 + 32) + 1152))
  {
    (*(v7 + 2))(v7, v6, 0);
  }

  else
  {
    v9 = dispatch_get_global_queue(25, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2;
    v11[3] = &unk_1E8016728;
    v14 = *(a1 + 40);
    v13 = v8;
    v12 = v6;
    v10 = v11;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke;
    block[3] = &unk_1E8010B50;
    v16 = v10;
    dispatch_async(v9, block);
  }
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2(uint64_t a1)
{
  IsEnabled = PKNearFieldRadioIsEnabled();
  if ((IsEnabled & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Cannot upgrade express mode while NFC radio is disabled", buf, 2u);
    }

    v4 = PKCreateAlertControllerForNFCRadioDisabled();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_72;
  block[3] = &unk_1E8015148;
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = IsEnabled;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_73(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1202) == 1)
    {
      v9[2](v9, v8, 0);
    }

    else
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 40) uniqueID];
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Checking for conflicts against pass %@", buf, 0xCu);
      }

      v13 = WeakRetained[140];
      v14 = *(a1 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_74;
      v19[3] = &unk_1E8016890;
      objc_copyWeak(&v25, (a1 + 64));
      v23 = v9;
      v15 = v8;
      v16 = *(a1 + 56);
      v20 = v15;
      v24 = v16;
      v17 = *(a1 + 40);
      v18 = *(a1 + 32);
      v21 = v17;
      v22 = v18;
      [v13 conflictingExpressPassesWithPassConfiguration:v14 completion:v19];

      objc_destroyWeak(&v25);
    }
  }

  else
  {
    v9[2](v9, v8, 1);
  }
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_75;
  block[3] = &unk_1E8016868;
  objc_copyWeak(&v14, (a1 + 72));
  v12 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v8 = v4;
  v13 = v5;
  v9 = *(a1 + 40);
  v10 = v3;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_75(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = *(*(a1 + 64) + 16);
LABEL_10:
    v15();
    goto LABEL_11;
  }

  v4 = [WeakRetained _conflictingPassesForPass:*(a1 + 40) useCaseWithPasses:*(a1 + 48)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 48) count];
    v9 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 134218242;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Found %ld conflicts total of which %@ are valid for the use case", buf, 0x16u);
  }

  v10 = [*(*(a1 + 56) + 1144) paymentWebService];
  v11 = [v10 targetDevice];
  v12 = PKGymKitConflictsWithPass();

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v20) = v12;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Pass conflict with GymKit:%d", buf, 8u);
  }

  if (!(([*(*(*(a1 + 72) + 8) + 40) count] != 0) | v12 & 1))
  {
    v15 = *(*(a1 + 64) + 16);
    goto LABEL_10;
  }

  v13 = *(*(*(a1 + 72) + 8) + 40);
  v14 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_76;
  v16[3] = &unk_1E80109C0;
  v18 = *(a1 + 64);
  v17 = *(a1 + 32);
  PKPromptUserAboutConflicts(v13, v12, v14, v3, v16);

LABEL_11:
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_78(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(*(a1 + 32) + 1152))
    {
      v9[2](v9, v8, 0);
    }

    else
    {
      v11 = *(a1 + 40);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_3;
      v14[3] = &unk_1E8016778;
      objc_copyWeak(&v18, (a1 + 56));
      v16 = v9;
      v12 = v8;
      v13 = *(a1 + 48);
      v15 = v12;
      v17 = v13;
      [WeakRetained _acquireUserAuthForPass:v11 withCompletion:v14];

      objc_destroyWeak(&v18);
    }
  }

  else
  {
    v9[2](v9, v8, 1);
  }
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
LABEL_8:
    v9 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  if (!v6 || v7)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Error getting auth for express mode change: %@", &v11, 0xCu);
    }

    goto LABEL_8;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v9 = *(*(a1 + 40) + 16);
LABEL_9:
  v9();
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_79(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = *(WeakRetained + 140);
    v13 = *(a1 + 32);
    v14 = *(*(*(a1 + 64) + 8) + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_80;
    v19[3] = &unk_1E80168E0;
    objc_copyWeak(&v27, (a1 + 96));
    v24 = v9;
    v15 = v8;
    v16 = *(a1 + 72);
    v20 = v15;
    v25 = v16;
    v21 = *(a1 + 40);
    v17 = *(a1 + 48);
    v26 = *(a1 + 80);
    v18 = *(a1 + 56);
    v22 = v17;
    v23 = v18;
    [v12 setExpressModeWithPassConfiguration:v13 requiresAuth:1 credential:v14 completion:v19];

    objc_destroyWeak(&v27);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 1);
  }
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_2_80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    if (v3)
    {
LABEL_3:
      v5 = [WeakRetained _transformState:v3];
      goto LABEL_6;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_3_81;
    block[3] = &unk_1E8010E20;
    v18 = *(a1 + 64);
    v17 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v5 = [WeakRetained[140] enabledExpressPasses];
LABEL_6:
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) passUniqueIdentifier];
  v9 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v8];

  if (v9)
  {
    [WeakRetained _reportExpressModeEnable:*(a1 + 48) conflictingPasses:*(*(*(a1 + 80) + 8) + 40)];
  }

  else
  {
    v10 = [*(a1 + 56) _expressEnableFailureAlertWithRetryIndexPath:0];
    v11 = *(*(a1 + 88) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [WeakRetained _reportExpressModeEnableFailed:*(a1 + 48)];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_4;
  v13[3] = &unk_1E8010E20;
  v15 = *(a1 + 64);
  v14 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v13);
}

void __74__PKExpressPassesViewController__enableExpressModeForPass_withCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _invalidateUserAuth];
    (*(*(a1 + 32) + 16))();
    v3 = *(*(*(a1 + 48) + 8) + 40);
    if (v3)
    {
      [v4 presentViewController:v3 animated:1 completion:0];
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_disableExpressModeForPass:(id)a3 withCompletion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  expressPassController = self->_expressPassController;
  v9 = [v6 uniqueID];
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PKExpressPassesViewController__disableExpressModeForPass_withCompletion___block_invoke;
  v12[3] = &unk_1E8016958;
  objc_copyWeak(&v14, &location);
  v11 = v7;
  v13 = v11;
  [(PKExpressPassController *)expressPassController disableExpressModeForPassesWithUniqueIdentifiers:v10 withCompletion:v12];

  [(PKExpressPassesViewController *)self _reportExpressModeDisable:v6];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__PKExpressPassesViewController__disableExpressModeForPass_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKExpressPassesViewController__disableExpressModeForPass_withCompletion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __75__PKExpressPassesViewController__disableExpressModeForPass_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v4 = [WeakRetained _transformState:*(a1 + 32)];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v10[140] enabledExpressPasses];
    }

    v8 = v6;

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v8);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_11;
    }

    v10 = 0;
    (*(v7 + 16))(v7, 0);
  }

  v3 = v10;
LABEL_11:
}

- (void)_sendExpressPassDidChangeNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v6 section]);
  switch(v7)
  {
    case 0uLL:
      v8 = [v6 row];
      v9 = 1104;
LABEL_7:
      if (v8 == [*(&self->super.super.super.super.super.isa + v9) count])
      {
        v4 = 52.0;
      }

      else
      {
        v4 = 67.0;
      }

      break;
    case 2uLL:
      v4 = *MEMORY[0x1E69DE3D0];
      break;
    case 1uLL:
      v8 = [v6 row];
      v9 = 1128;
      goto LABEL_7;
  }

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (!v5)
  {
    v6 = 1104;
LABEL_7:
    v8 = [*(&self->super.super.super.super.super.isa + v6) count];
    v7 = v8 > 0;
    return v8 + v7;
  }

  if (v5 != 2)
  {
    if (v5 != 1)
    {
      v8 = 0;
      v7 = 0;
      return v8 + v7;
    }

    v6 = 1128;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 1;
  return v8 + v7;
}

- (id)_preferenceCardCellForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKExpressPassesViewController *)self tableView];
  v6 = [v5 dequeueReusableCellWithIdentifier:v4];

  if (!v6)
  {
    v6 = [[PKPaymentPreferenceCardCell alloc] initWithReuseIdentifier:v4];
    if (self->_style == 1)
    {
      v7 = [MEMORY[0x1E69DC888] whiteColor];
      [(PKPaymentPreferenceCardCell *)v6 setActivityIndicatorColor:v7];
    }
  }

  v8 = [(PKPaymentPreferenceCardCell *)v6 displayLabel];
  [v8 setNumberOfLines:1];

  v9 = [(PKPaymentPreferenceCardCell *)v6 displayLabel];
  [v9 setLineBreakMode:4];

  [(PKPaymentPreferenceCardCell *)v6 setAccessoryType:0];

  return v6;
}

- (id)_paymentCardCellForRow:(int64_t)a3
{
  v5 = [(PKExpressPassesViewController *)self _preferenceCardCellForIdentifier:@"paymentCell"];
  if ([(NSMutableArray *)self->_paymentPasses count]<= a3)
  {
    [v5 setPassSnapshotter:0];
    [v5 setPass:0];
    [v5 setAdditionalContextString:0];
    v6 = [v5 textLabel];
    v8 = PKLocalizedPaymentString(&cfstr_None_0.isa);
    [v6 setText:v8];
  }

  else
  {
    v6 = [(PKExpressPassesViewController *)self _paymentPassForIndex:a3];
    v7 = [v5 textLabel];
    [v7 setText:0];

    [v5 setPassSnapshotter:self->_passSnapshotter];
    [v5 setPass:v6];
    v8 = [(PKExpressPassesViewController *)self _additionalContextStringForPass:v6];
    [v5 setAdditionalContextString:v8];
  }

  [(PKExpressPassesViewController *)self _configureAccessoryViewForPaymentCardCell:v5 row:a3];
  [v5 setUserInteractionEnabled:self->_isUserInteractionsEnabled];

  return v5;
}

- (id)_additionalContextStringForPass:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 devicePaymentApplications];
  v6 = [v5 allObjects];

  if ([v6 count] >= 2)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = [(PKExpressPassController *)self->_expressPassController expressModeSupportedForPass:v4];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __65__PKExpressPassesViewController__additionalContextStringForPass___block_invoke;
    v33[3] = &unk_1E8016980;
    v10 = v8;
    v34 = v10;
    v27 = v9;
    [v9 enumerateCredentialsUsingBlock:v33];
    v11 = [(PKExpressPassController *)self->_expressPassController eligibleExpressUpgradeRequestsForPass:v4];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = [v12 paymentApplicationIdentifiers];
      [v10 addObjectsFromArray:v13];
    }

    v26 = v12;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = v6;
    v15 = [v4 sortedPaymentApplications:v6 ascending:1];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v20 applicationIdentifier];
          v22 = [v10 containsObject:v21];

          if (v22)
          {
            v23 = [v20 displayName];
            [v14 addObject:v23];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v17);
    }

    v24 = [v14 count];
    v6 = v28;
    if (v24 >= [v28 count])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v14 componentsJoinedByString:{@", "}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __65__PKExpressPassesViewController__additionalContextStringForPass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  [MEMORY[0x1E69B8858] extractApplicationIdentifier:&v3 subcredentialIdentifier:0 fromIdentifiers:a2];
  [*(a1 + 32) pk_safelyAddObject:v3];
}

- (id)_transitCardCellForRow:(int64_t)a3
{
  v5 = [(PKExpressPassesViewController *)self _preferenceCardCellForIdentifier:@"transitCell"];
  v6 = [(PKExpressPassesViewController *)self _isTransitExpressRowEnabledForIndex:a3];
  v7 = [v5 pass];
  v8 = [v7 uniqueID];

  if (v8)
  {
    [(NSMutableDictionary *)self->_passUniqueIDToCell removeObjectForKey:v8];
  }

  if ([(NSMutableArray *)self->_transitPasses count]<= a3)
  {
    [v5 setPassSnapshotter:0];
    [v5 setPass:0];
    [v5 setDelegate:0];
    [v5 setAccessoryViewType:0];
    v14 = [v5 textLabel];
    v15 = PKLocalizedPaymentString(&cfstr_None_0.isa);
    [v14 setText:v15];

    if (v6)
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    [v5 setAccessoryType:v16];
  }

  else
  {
    v9 = [v5 textLabel];
    [v9 setText:0];

    [v5 setDelegate:self];
    [v5 setAccessoryViewType:1];
    v10 = [v5 actionSwitch];
    [v10 setOn:v6 animated:0];

    v11 = [(PKExpressPassesViewController *)self _transitPassForIndex:a3];
    [v5 setPassSnapshotter:self->_passSnapshotter];
    [v5 setPass:v11];
    v12 = [v11 uniqueID];
    [(NSMutableDictionary *)self->_passUniqueIDToCell setObject:v5 forKey:v12];
    if ([v11 isStoredValuePass])
    {
      v13 = [(NSMutableDictionary *)self->_passUniqueIDToTransitBalanceModels objectForKey:v12];
      if (v13)
      {
        [v5 setTransitBalanceModel:v13];
      }

      else
      {
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __56__PKExpressPassesViewController__transitCardCellForRow___block_invoke;
        v18[3] = &unk_1E80169A8;
        objc_copyWeak(&v20, &location);
        v19 = v11;
        [(PKExpressPassesViewController *)self _fetchBalancesAndTransitPassPropertiesForPass:v19 completion:v18];

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }
  }

  [v5 setActivityIndicatorActive:0];
  [v5 setUserInteractionEnabled:self->_isUserInteractionsEnabled];

  return v5;
}

void __56__PKExpressPassesViewController__transitCardCellForRow___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateBalancesWithServerBalances:v9 transitPassProperties:v8 commutePlans:v7 forPass:*(a1 + 32)];
}

- (id)_educationalMessageCell
{
  v2 = [(PKExpressPassesViewController *)self tableView];
  v3 = [v2 dequeueReusableCellWithIdentifier:@"educationalMessageCell"];

  if (!v3)
  {
    if (PKSystemApertureIsAvailable())
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    v5 = [PKEducationalMessageViewConfiguration defaultConfigurationForAnimation:v4];
    v3 = [[PKEducationalMessageTableViewCell alloc] initWithReuseIdentifier:@"educationalMessageCell" configuration:v5];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v5 section]);
  v7 = [v5 row];

  if (v6)
  {
    if (v6 == 2)
    {
      v8 = [(PKExpressPassesViewController *)self _educationalMessageCell];
    }

    else if (v6 == 1)
    {
      v8 = [(PKExpressPassesViewController *)self _paymentCardCellForRow:v7];
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Unhandled section!", v11, 2u);
      }

      v8 = objc_alloc_init(MEMORY[0x1E69DD028]);
    }
  }

  else
  {
    v8 = [(PKExpressPassesViewController *)self _transitCardCellForRow:v7];
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v8 section]);
  if (v6)
  {
    if (v6 == 1)
    {
      [(PKExpressPassesViewController *)self _userChangedExpressSettingForPaymentPassAtIndexPath:v8];
    }
  }

  else
  {
    v7 = [v8 row];
    if (v7 == [(NSMutableArray *)self->_transitPasses count])
    {
      [(PKExpressPassesViewController *)self _userChangedExpressTransitToNone];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!self->_isUserInteractionsEnabled)
  {
    goto LABEL_6;
  }

  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v5 section]);
  if (v7 == 2)
  {
    goto LABEL_6;
  }

  if (v7 == 1)
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (v7)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
    v8 = [v6 row];
    v9 = v8 == [(NSMutableArray *)self->_transitPasses count];
  }

LABEL_7:

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_useOldAppearance)
  {
    if (self->_userAutomaticExpressModeText)
    {
      v7 = @"SETTINGS_DEFAULT_AUTOMATIC_TRANSIT_CELL_TITLE";
    }

    else
    {
      v7 = @"SETTINGS_EXPRESS_TRANSIT_CARDS_SECTION_HEADER";
    }

    goto LABEL_9;
  }

  v8 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (!v8)
  {
    v7 = @"SETTINGS_EXPRESS_TRANSIT_CARD_CATEGORY_SECTION_HEADER";
LABEL_9:
    v9 = PKLocalizedPaymentString(&v7->isa);
    goto LABEL_10;
  }

  if (v8 == 1)
  {
    v9 = PKLocalizedTransitString(&cfstr_SettingsExpres_2.isa);
LABEL_10:
    v10 = v9;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (!self->_useOldAppearance)
  {
    v7 = [(PKSectionTableViewController *)self sectionForIndex:a4];
    if (v7)
    {
      if (v7 == 1)
      {
        style = self->_style;
        v9 = [(NSMutableArray *)self->_transitPasses count];
        if (style == 1)
        {
          if (v9)
          {
            v10 = @"SETTINGS_EXPRESS_PAYMENT_CARDS_SECTION_FOOTER_WATCH";
          }

          else
          {
            v10 = @"SETTINGS_EXPRESS_PAYMENT_CARDS_SECTION_FOOTER_WATCH_NO_TRANSIT_CARDS";
          }
        }

        else if (v9)
        {
          v10 = @"SETTINGS_EXPRESS_PAYMENT_CARDS_SECTION_FOOTER";
        }

        else if (PKPearlIsAvailable())
        {
          v10 = @"SETTINGS_EXPRESS_PAYMENT_CARDS_SECTION_FOOTER_NO_TRANSIT_CARDS_PEARL";
        }

        else
        {
          v10 = @"SETTINGS_EXPRESS_PAYMENT_CARDS_SECTION_FOOTER_NO_TRANSIT_CARDS";
        }

        v14 = PKLocalizedTransitString(&v10->isa);
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      goto LABEL_11;
    }
  }

  v11 = PKLocalizedPaymentString(&cfstr_SettingsExpres_9.isa);
  v12 = v11;
  if (self->_style == 1)
  {
    PKLocalizedPaymentString(&cfstr_SettingsExpres_10.isa, &stru_1F3BD5BF0.isa, v11);
  }

  else
  {
    IsAvailable = PKNearFieldLowPowerSupportIsAvailable();
    v19 = PKPearlIsAvailable();
    if (IsAvailable)
    {
      if (v19)
      {
        PKLocalizedPaymentString(&cfstr_SettingsExpres_11.isa, &stru_1F3BD5BF0.isa, v12);
      }

      else
      {
        PKLocalizedPaymentString(&cfstr_SettingsExpres_12.isa, &stru_1F3BD5BF0.isa, v12);
      }
    }

    else if (v19)
    {
      PKLocalizedPaymentString(&cfstr_SettingsExpres_13.isa, &stru_1F3BD5BF0.isa, v12);
    }

    else
    {
      if (self->_userAutomaticExpressModeText)
      {
        v13 = PKLocalizedPaymentString(&cfstr_SettingsAutoma_1.isa);
        goto LABEL_10;
      }

      PKLocalizedPaymentString(&cfstr_SettingsExpres_14.isa, &stru_1F3BD5BF0.isa, v12);
    }
  }
  v13 = ;
LABEL_10:
  v14 = v13;
LABEL_11:
  if ([v14 length])
  {
    if ([v12 length])
    {
      v15 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/105123"];
      v16 = PKAttributedStringByAddingLinkToSubstring(v14, v12, v15);
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v14];
    }

    v17 = objc_alloc_init(PKFooterHyperlinkView);
    [(PKFooterHyperlinkView *)v17 setAttributedText:v16];
    v20 = &__block_literal_global_52;
    [(PKFooterHyperlinkView *)v17 setAction:&__block_literal_global_52];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_updateUIWithExpressState
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PKExpressPassesViewController *)self tableView];
  if ([(PKSectionTableViewController *)self isSectionMapped:1])
  {
    v4 = [(PKSectionTableViewController *)self indexForSection:1];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([(PKSectionTableViewController *)self isSectionMapped:0])
  {
    v17 = [(PKSectionTableViewController *)self indexForSection:0];
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 indexPathsForVisibleRows];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 section];
        v12 = [v10 row];
        v13 = [v3 cellForRowAtIndexPath:v10];
        if (v11 == v4)
        {
          [(PKExpressPassesViewController *)self _configureAccessoryViewForPaymentCardCell:v13 row:v12];
        }

        else if (v11 == v17)
        {
          v14 = [(PKExpressPassesViewController *)self _isTransitExpressRowEnabledForIndex:v12];
          [v13 setActivityIndicatorActive:0];
          if (v12 != [(NSMutableArray *)self->_transitPasses count]|| !v14)
          {
            [v13 setAccessoryType:0];
            v16 = [v13 actionSwitch];
            [v16 setOn:v14 animated:1];
          }

          else
          {
            [v13 setAccessoryType:3];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_configureAccessoryViewForPaymentCardCell:(id)a3 row:(int64_t)a4
{
  v6 = a3;
  selectedPaymentPassIndex = self->_selectedPaymentPassIndex;
  v14 = v6;
  if (selectedPaymentPassIndex == a4 && self->_selectedPaymentPassIsInPendingState)
  {
    v8 = [(NSMutableArray *)self->_paymentPasses count]== a4;
    v6 = v14;
    v9 = !v8;
  }

  else
  {
    v9 = 0;
  }

  if (selectedPaymentPassIndex == a4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  [v6 setActivityIndicatorActive:?];
  v11 = [v14 pass];
  if ([(PKExpressPassesViewController *)self _shouldShowSelectionDisclosureForPass:v11])
  {
    [v14 setAccessoryViewType:2];
    if (v10)
    {
      v12 = PKLocalizedPaymentString(&cfstr_ExpressPayment_0.isa);
      [v14 setDisclosureString:v12];
    }

    else
    {
      [v14 setDisclosureString:self->_selectedPaymentPassDisclosureString];
    }
  }

  else
  {
    [v14 setAccessoryViewType:0];
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    [v14 setAccessoryType:v13];
  }
}

- (void)_setUserInteractionsEnabled:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_isUserInteractionsEnabled == !a3)
  {
    v3 = a3;
    self->_isUserInteractionsEnabled = a3;
    v4 = [(PKExpressPassesViewController *)self tableView];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 visibleCells];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setUserInteractionEnabled:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (id)_conflictingPassesForPass:(id)a3 useCaseWithPasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKExpressPassesViewController__conflictingPassesForPass_useCaseWithPasses___block_invoke;
  aBlock[3] = &unk_1E80169D0;
  v9 = v8;
  v17 = v9;
  v10 = _Block_copy(aBlock);
  if (([v6 isTransitPass] & 1) == 0 && (objc_msgSend(v6, "isAccessPass") & 1) == 0)
  {
    [(NSMutableArray *)self->_paymentPasses enumerateObjectsUsingBlock:v10];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PKExpressPassesViewController__conflictingPassesForPass_useCaseWithPasses___block_invoke_2;
  v14[3] = &unk_1E80169F8;
  v15 = v9;
  v11 = v9;
  v12 = [v7 objectsPassingTest:v14];

  return v12;
}

void __77__PKExpressPassesViewController__conflictingPassesForPass_useCaseWithPasses___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  [v2 addObject:v3];
}

uint64_t __77__PKExpressPassesViewController__conflictingPassesForPass_useCaseWithPasses___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)_acquireUserAuthForPass:(id)a3 withCompletion:(id)a4
{
  v25[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    if (self->_LAContext)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Received auth request with pending auth request present.", buf, 2u);
      }

      (*(v7 + 2))(v7, 0, 0);
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E696EE50]);
      objc_storeStrong(&self->_LAContext, v9);
      if (self->_userAutomaticExpressModeText)
      {
        v10 = @"TRANSIT_AUTOMATIC_AUTHENTICATION_REASON";
      }

      else
      {
        v10 = @"TRANSIT_EXPRESS_AUTHENTICATION_REASON";
      }

      v11 = PKLocalizedPaymentString(&v10->isa);
      v24[0] = &unk_1F3CC7100;
      v12 = PKLocalizedPaymentString(&cfstr_TransitExpress_0.isa);
      v25[0] = v12;
      v24[1] = &unk_1F3CC7118;
      v13 = [v6 localizedDescription];
      v14 = PKStringWithValidatedFormat();
      v25[1] = v14;
      v24[2] = &unk_1F3CC7130;
      v15 = PKLocalizedString(&cfstr_Wallet_1.isa);
      v24[3] = &unk_1F3CC7148;
      v25[2] = v15;
      v25[3] = MEMORY[0x1E695E118];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{4, v13}];

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__PKExpressPassesViewController__acquireUserAuthForPass_withCompletion___block_invoke;
      v18[3] = &unk_1E8016A20;
      objc_copyWeak(&v21, &location);
      v17 = v9;
      v19 = v17;
      v20 = v7;
      [v17 evaluatePolicy:2 options:v16 reply:v18];

      objc_destroyWeak(&v21);
    }

    objc_destroyWeak(&location);
  }
}

void __72__PKExpressPassesViewController__acquireUserAuthForPass_withCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PKExpressPassesViewController__acquireUserAuthForPass_withCompletion___block_invoke_2;
    block[3] = &unk_1E80137A0;
    v10 = v5;
    v11 = v6;
    v12 = a1[4];
    v8 = a1[5];
    v13 = WeakRetained;
    v14 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __72__PKExpressPassesViewController__acquireUserAuthForPass_withCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v2 = [*(a1 + 48) externalizedContext];
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  (*(*(a1 + 64) + 16))();
  v3 = v4;
  if (!v4)
  {
    [*(a1 + 56) _invalidateUserAuth];
    v3 = 0;
  }
}

- (void)_invalidateUserAuth
{
  LAContext = self->_LAContext;
  if (LAContext)
  {
    [LAContext invalidate];
    v4 = self->_LAContext;
    self->_LAContext = 0;
  }
}

- (id)_transformState:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 passUniqueIdentifier];
          if (v11)
          {
            [v4 setObject:v10 forKey:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = [v4 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_transitUpdateWithState:(id)a3
{
  [(PKExpressPassesViewController *)self _updateExpressState:a3];
  [(PKExpressPassesViewController *)self _updateUIWithExpressState];
  [(PKExpressPassesViewController *)self _sendExpressPassDidChangeNotification];
  if (![(PKSectionTableViewController *)self isSectionMapped:0])
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Failed to update express pass UI", v5, 2u);
    }
  }
}

- (void)_fetchBalancesAndTransitPassPropertiesForPass:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  v9 = dispatch_group_create();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__12;
  v35[4] = __Block_byref_object_dispose__12;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__12;
  v33[4] = __Block_byref_object_dispose__12;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__12;
  v31[4] = __Block_byref_object_dispose__12;
  v32 = 0;
  v10 = [v6 devicePrimaryPaymentApplication];
  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v9);
    paymentDataProvider = self->_paymentDataProvider;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke;
    v26[3] = &unk_1E8016A48;
    v30 = v35;
    v27 = v10;
    v28 = v6;
    v29 = v9;
    [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:v8 paymentApplication:v27 completion:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v9);
    v12 = self->_paymentDataProvider;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_2;
    v23[3] = &unk_1E8016A70;
    v25 = v33;
    v24 = v9;
    [(PKPaymentDataProvider *)v12 balancesForPaymentPassWithUniqueIdentifier:v8 completion:v23];
  }

  if (objc_opt_respondsToSelector())
  {
    dispatch_group_enter(v9);
    v13 = self->_paymentDataProvider;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_3;
    v20[3] = &unk_1E8012BB0;
    v22 = v31;
    v21 = v9;
    [(PKPaymentDataProvider *)v13 plansForPaymentPassWithUniqueIdentifier:v8 completion:v20];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_4;
  block[3] = &unk_1E8016A98;
  v16 = v7;
  v17 = v33;
  v18 = v35;
  v19 = v31;
  v14 = v7;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
}

void __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __90__PKExpressPassesViewController__fetchBalancesAndTransitPassPropertiesForPass_completion___block_invoke_4(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }

  return result;
}

- (void)_updatePaymentCardCellWithIndex:(int64_t)a3 statusString:(id)a4
{
  v9 = a4;
  v6 = [(PKExpressPassesViewController *)self tableView];
  v7 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 1)}];
  v8 = [v6 cellForRowAtIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setSubtitleOverrideString:v9];
  }
}

- (id)_paymentPassForIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_paymentPasses count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_paymentPasses objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_transitPassForIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_transitPasses count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_transitPasses objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (int64_t)_sectionForPass:(id)a3
{
  result = 1;
  if (a3)
  {
    if (!self->_useOldAppearance)
    {
      return [a3 isTransitPass] ^ 1;
    }
  }

  return result;
}

- (BOOL)_isTransitExpressRowEnabledForIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_transitPasses count];
  selectedTransitPassIndices = self->_selectedTransitPassIndices;
  if (v5 <= a3)
  {
    return [(NSMutableArray *)selectedTransitPassIndices count]== 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [(NSMutableArray *)selectedTransitPassIndices containsObject:v7];

  return v8;
}

- (void)_reloadLocalPassStores
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  transitPasses = self->_transitPasses;
  self->_transitPasses = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selectedTransitPassIndices = self->_selectedTransitPassIndices;
  self->_selectedTransitPassIndices = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  paymentPasses = self->_paymentPasses;
  self->_paymentPasses = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_passes;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v14 isAccessPass] & 1) == 0 && ((-[PKExpressPassController isExpressModeSupportedForPass:](self->_expressPassController, "isExpressModeSupportedForPass:", v14) & 1) != 0 || -[PKExpressPassController hasEligibleExpressUpgradeRequestForPass:](self->_expressPassController, "hasEligibleExpressUpgradeRequestForPass:", v14)))
        {
          if (![v14 isTransitPass] || (p_paymentPasses = &self->_transitPasses, self->_useOldAppearance))
          {
            p_paymentPasses = &self->_paymentPasses;
          }

          [(NSMutableArray *)*p_paymentPasses addObject:v14];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_transitPasses sortUsingComparator:&__block_literal_global_73];
  [(NSMutableArray *)self->_paymentPasses sortUsingComparator:&__block_literal_global_73];
  v16 = [(PKExpressPassController *)self->_expressPassController enabledExpressPasses];
  [(PKExpressPassesViewController *)self _updateExpressState:v16];
}

uint64_t __55__PKExpressPassesViewController__reloadLocalPassStores__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 localizedName];
  v7 = [v5 localizedName];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 serialNumber];
    v10 = [v5 serialNumber];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (void)_updateExpressState:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_paymentPasses count];
  self->_selectedPaymentPassIndex = v5;
  self->_selectedPaymentPassIsInPendingState = 0;
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_paymentPasses objectAtIndexedSubscript:v7];
      v9 = [v8 uniqueID];
      v10 = [v4 objectForKey:v9];

      if (v10)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_11;
      }
    }

    if (self->_selectedPaymentPassIndex != v6)
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Multiple payment passes are marked as express!", v18, 2u);
      }
    }

    self->_selectedPaymentPassIndex = v7;
  }

LABEL_11:
  [(NSMutableArray *)self->_selectedTransitPassIndices removeAllObjects];
  if ([(NSMutableArray *)self->_transitPasses count])
  {
    v12 = 0;
    do
    {
      v13 = [(NSMutableArray *)self->_transitPasses objectAtIndexedSubscript:v12];
      v14 = [v13 uniqueID];
      v15 = [v4 objectForKey:v14];

      if (v15)
      {
        selectedTransitPassIndices = self->_selectedTransitPassIndices;
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
        [(NSMutableArray *)selectedTransitPassIndices addObject:v17];
      }

      ++v12;
    }

    while (v12 < [(NSMutableArray *)self->_transitPasses count]);
  }
}

- (unsigned)_beginPassUpdateSuppression
{
  self->_supressHandlingPassUpdates = 1;
  v2 = self->_supressHandlingPassUpdateCounter + 1;
  self->_supressHandlingPassUpdateCounter = v2;
  return v2;
}

- (void)_endPassUpdateSuppressionWithToken:(unsigned int)a3 delay:(double)a4
{
  objc_initWeak(&location, self);
  v6 = dispatch_time(0, (a4 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKExpressPassesViewController__endPassUpdateSuppressionWithToken_delay___block_invoke;
  block[3] = &unk_1E8016AE0;
  objc_copyWeak(&v8, &location);
  v9 = a3;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __74__PKExpressPassesViewController__endPassUpdateSuppressionWithToken_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == *(WeakRetained + 299))
  {
    WeakRetained[1193] = 0;
  }
}

- (id)_expressEnableFailureAlertWithRetryIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_style == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69DC650];
    if (v4)
    {
      v8 = PKLocalizedPaymentString(&cfstr_SettingsExpres_17.isa);
      v9 = PKLocalizedPaymentString(&cfstr_SettingsExpres_16.isa);
      v6 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

      v10 = MEMORY[0x1E69DC648];
      v11 = PKLocalizedPaymentString(&cfstr_TryAgainButton.isa);
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __78__PKExpressPassesViewController__expressEnableFailureAlertWithRetryIndexPath___block_invoke;
      v25 = &unk_1E8011310;
      v26 = self;
      v27 = v5;
      v12 = [v10 actionWithTitle:v11 style:0 handler:&v22];
      [v6 addAction:{v12, v22, v23, v24, v25, v26}];

      v13 = MEMORY[0x1E69DC648];
      v14 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
      v15 = [v13 actionWithTitle:v14 style:1 handler:0];
      [v6 addAction:v15];
    }

    else
    {
      v16 = PKLocalizedPaymentString(&cfstr_SettingsExpres_15.isa);
      v17 = PKLocalizedPaymentString(&cfstr_SettingsExpres_16.isa);
      v6 = [v7 alertControllerWithTitle:v16 message:v17 preferredStyle:1];

      v18 = MEMORY[0x1E69DC648];
      v19 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      v20 = [v18 actionWithTitle:v19 style:0 handler:0];
      [v6 addAction:v20];
    }
  }

  return v6;
}

- (void)_beginReporting
{
  v2 = MEMORY[0x1E69B8540];
  v3 = [(PKExpressPassesViewController *)self _reportingSubject];
  [v2 beginSubjectReporting:v3];
}

- (void)_endReporting
{
  v2 = MEMORY[0x1E69B8540];
  v3 = [(PKExpressPassesViewController *)self _reportingSubject];
  [v2 endSubjectReporting:v3];
}

- (void)_reportExpressModeEvent:(id)a3 forPass:(id)a4 conflictingPasses:(id)a5
{
  v105 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v92 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v9 count])
  {
    v90 = v8;
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v13 = v9;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v94 objects:v102 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v95;
      v18 = *MEMORY[0x1E69BB428];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v95 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [*(*(&v94 + 1) + 8 * i) organizationName];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v18;
          }

          [v12 addObject:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v94 objects:v102 count:16];
      }

      while (v16);
    }

    v23 = [v12 componentsJoinedByString:@"|"];
    [v11 setObject:v23 forKey:*MEMORY[0x1E69BA610]];

    v9 = v13;
    v10 = v11;
    v8 = v90;
  }

  v24 = [v92 devicePaymentApplications];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v99;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v99 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v98 + 1) + 8 * j);
        if (v28 && v28 != [*(*(&v98 + 1) + 8 * j) paymentType])
        {

          v32 = @"multiple";
          goto LABEL_25;
        }

        v28 = [v31 paymentType];
      }

      v27 = [v25 countByEnumeratingWithState:&v98 objects:v103 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v32 = PKPaymentMethodTypeToString();
LABEL_25:

  v91 = *MEMORY[0x1E69BAD40];
  [v10 safelySetObject:v32 forKey:?];

  v33 = [(PKExpressPassesViewController *)self _reportingSubject];
  v34 = *MEMORY[0x1E69BB538];
  style = self->_style;
  v36 = [v10 copy];
  v37 = v8;
  v38 = v33;
  v39 = v34;
  v40 = v92;
  v41 = v36;
  v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v42 setObject:v37 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v42 setObject:v39 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v43 = MEMORY[0x1E69BB0C8];
  if (style != 1)
  {
    v43 = MEMORY[0x1E69BB0F8];
  }

  [v42 setObject:*v43 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  v44 = v42;
  v45 = v40;
  v46 = v45;
  if (v45 && v44)
  {
    v47 = [v45 passType];
    v93 = v41;
    if ((v47 + 1) >= 3)
    {
      v48 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v48 = off_1E8016B00[v47 + 1];
    }

    [v44 setObject:v48 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v49 = [v46 style];
    v50 = [v46 secureElementPass];
    v51 = [v50 isIdentityPass];

    v88 = v39;
    if (v51)
    {
      v52 = @"identity";
    }

    else if (v49 < 0xE && ((0x27FFu >> v49) & 1) != 0)
    {
      v52 = off_1E8016B18[v49];
    }

    else
    {
      v52 = *MEMORY[0x1E69BB3A8];
    }

    [v44 setObject:v52 forKeyedSubscript:*MEMORY[0x1E69BACA0]];

    v53 = [v46 nfcPayload];
    v54 = PKAnalyticsReportSwitchToggleResultValue();
    [v44 setObject:v54 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

    v55 = v46;
    v89 = v9;
    if ([v55 passType] == 1)
    {
      v56 = [v55 secureElementPass];
      v57 = [v56 cardType];
      if (v57 <= 4)
      {
        v53 = **(&unk_1E8016B88 + v57);
      }
    }

    else
    {
      v53 = @"other";
    }

    [v44 setObject:v53 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
    v58 = [v55 secureElementPass];
    if ([v58 isIdentityPass])
    {
      v59 = [v58 identityType];
      if (v59 <= 2)
      {
        if (v59 == 1)
        {
          v60 = MEMORY[0x1E69BA648];
          goto LABEL_64;
        }

        if (v59 == 2)
        {
          v60 = MEMORY[0x1E69BB2C8];
          goto LABEL_64;
        }
      }

      else
      {
        switch(v59)
        {
          case 3:
            goto LABEL_48;
          case 4:
            v60 = MEMORY[0x1E69BA8E0];
            goto LABEL_64;
          case 5:
LABEL_48:
            v60 = MEMORY[0x1E69BACB0];
LABEL_64:
            v64 = *v60;
            goto LABEL_77;
        }
      }

LABEL_57:
      v60 = MEMORY[0x1E69BB3A8];
      goto LABEL_64;
    }

    if (![v58 isAccessPass])
    {
      goto LABEL_57;
    }

    v61 = [v58 accessType];
    v62 = [v58 accessReportingType];
    v63 = v62;
    if (v61 <= 2)
    {
      switch(v61)
      {
        case 0:
          v65 = @"general";
          if (v62)
          {
            v65 = v62;
          }

          goto LABEL_72;
        case 1:
          v64 = @"hospitality";
          goto LABEL_76;
        case 2:
          v64 = @"corporate";
LABEL_76:

LABEL_77:
          [v44 setObject:v64 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

          v66 = [v55 secureElementPass];
          v67 = [v66 devicePaymentApplications];
          [v67 count];

          v68 = PKAnalyticsReportSwitchToggleResultValue();

          [v44 setObject:v68 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v69 = [v55 secureElementPass];
          v70 = *MEMORY[0x1E69BB3A8];
          v71 = [v69 organizationName];
          if ([v71 length])
          {
            v72 = [v69 cardType];
            if (v72 <= 4 && ((1 << v72) & 0x16) != 0)
            {
              v73 = v71;

              v70 = v73;
            }
          }

          [v44 setObject:v70 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v74 = [v55 secureElementPass];
          v75 = v74;
          if (v74)
          {
            v86 = v37;
            v76 = [v74 devicePaymentApplications];
            v98 = 0u;
            v99 = 0u;
            v100 = 0u;
            v101 = 0u;
            v77 = v76;
            v78 = [v77 countByEnumeratingWithState:&v98 objects:v103 count:16];
            v87 = v10;
            if (v78)
            {
              v79 = v78;
              v80 = 0;
              v81 = *v99;
              while (2)
              {
                for (k = 0; k != v79; ++k)
                {
                  if (*v99 != v81)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v83 = *(*(&v98 + 1) + 8 * k);
                  if (v80 && v80 != [*(*(&v98 + 1) + 8 * k) paymentType])
                  {

                    v84 = @"multiple";
                    goto LABEL_94;
                  }

                  v80 = [v83 paymentType];
                }

                v79 = [v77 countByEnumeratingWithState:&v98 objects:v103 count:16];
                if (v79)
                {
                  continue;
                }

                break;
              }
            }

            v84 = PKPaymentMethodTypeToString();
LABEL_94:

            [v44 setObject:v84 forKeyedSubscript:v91];
            v85 = [v75 issuerCountryCode];
            [v44 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            v37 = v86;
            v10 = v87;
          }

          v39 = v88;
          v9 = v89;
          v41 = v93;
          goto LABEL_96;
      }
    }

    else
    {
      if (v61 <= 4)
      {
        if (v61 == 3)
        {
          v64 = @"singlefamily";
        }

        else
        {
          v64 = @"cars";
        }

        goto LABEL_76;
      }

      if (v61 == 5)
      {
        v64 = @"multifamily";
        goto LABEL_76;
      }

      if (v61 == 6)
      {
        v64 = @"urbanmobility";
        goto LABEL_76;
      }
    }

    v65 = *MEMORY[0x1E69BB3A8];
LABEL_72:
    v64 = v65;
    goto LABEL_76;
  }

LABEL_96:

  if ([v41 count])
  {
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __PKAnalyticsReportExpressEnablementEvent_block_invoke_0;
    v103[3] = &unk_1E80106A8;
    v104 = v44;
    [v41 enumerateKeysAndObjectsUsingBlock:v103];
  }

  [MEMORY[0x1E69B8540] beginSubjectReporting:v38];
  [MEMORY[0x1E69B8540] subject:v38 sendEvent:v44];
  [MEMORY[0x1E69B8540] endSubjectReporting:v38];
}

@end