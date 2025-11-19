@interface PKCommutePlanDetailsViewController
- (BOOL)_shouldShowRenewAction;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKCommutePlanDetailsViewController)initWithCommutePlan:(id)a3 associatedAction:(id)a4 forPass:(id)a5 paymentDataProvider:(id)a6 webService:(id)a7 style:(int64_t)a8;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_numberOfCommutePlanDetailsRowsEnabledForRowType:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_commutePlanDetailsRowTypeForRowIndex:(int64_t)a3;
- (void)_fetchRemindersWithCompletion:(id)a3;
- (void)_handleActionSelected;
- (void)_handleReminderIntervalChanged:(int64_t)a3;
- (void)_reloadBalanceWithCompletion:(id)a3;
- (void)_reloadChangedIndexPathsWithOldIndex:(unint64_t)a3 newIndex:(unint64_t)a4 inSection:(unint64_t)a5;
- (void)_resetReminderIntervalsForCountPlans:(id)a3;
- (void)_resetReminderIntervalsForTimedPlans:(id)a3;
- (void)_updateSelectedBalanceReminderWithBalanceReminder:(id)a3;
- (void)_updateSelectedReminderIntervalsIndexWithReminder:(id)a3;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceivePlanUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCommutePlanDetailsViewController

- (PKCommutePlanDetailsViewController)initWithCommutePlan:(id)a3 associatedAction:(id)a4 forPass:(id)a5 paymentDataProvider:(id)a6 webService:(id)a7 style:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v38 = a6;
  obj = a7;
  v37 = a7;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = [v14 title];
  [v17 addObject:v18];

  v19 = [v14 details];
  [v17 addObjectsFromArray:v19];

  v39.receiver = self;
  v39.super_class = PKCommutePlanDetailsViewController;
  v20 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v39, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 2);
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = [v17 copy];
  fields = v20->_fields;
  v20->_fields = v21;

  v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  reminderIntervals = v20->_reminderIntervals;
  v20->_reminderIntervals = v23;

  objc_storeStrong(&v20->_pass, a5);
  v25 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v16];
  balanceModel = v20->_balanceModel;
  v20->_balanceModel = v25;

  objc_storeStrong(&v20->_commutePlan, a3);
  objc_storeStrong(&v20->_action, a4);
  objc_storeStrong(&v20->_paymentDataProvider, a6);
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)v20->_paymentDataProvider addDelegate:v20];
  }

  objc_storeStrong(&v20->_webService, obj);
  v20->_style = a8;
  v27 = objc_alloc_init(MEMORY[0x1E696AB70]);
  timeIntervalFormatter = v20->_timeIntervalFormatter;
  v20->_timeIntervalFormatter = v27;

  [(NSDateComponentsFormatter *)v20->_timeIntervalFormatter setUnitsStyle:3];
  [(NSDateComponentsFormatter *)v20->_timeIntervalFormatter setMaximumUnitCount:1];
  if (objc_opt_respondsToSelector())
  {
    v29 = objc_opt_respondsToSelector();
  }

  else
  {
    v29 = 0;
  }

  v20->_dataProviderImplementsBalanceReminderAPI = v29 & 1;
  if (objc_opt_respondsToSelector())
  {
    v30 = objc_opt_respondsToSelector();
    v20->_dataProviderImplementsCommutePlanReminderAPI = v30 & 1;
    if (v30)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20->_dataProviderImplementsCommutePlanReminderAPI = 0;
  }

  if (!v20->_dataProviderImplementsBalanceReminderAPI)
  {
    v31 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v31 = [(PKPaymentDataProvider *)v20->_paymentDataProvider apiVersion]> 1;
LABEL_14:
  v20->_canShowReminders = v31;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v32 = [(PKCommutePlanDetailsViewController *)v20 navigationItem];
    [v32 pkui_setupScrollEdgeChromelessAppearance];
    [v32 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  v33 = PKPassLocalizedStringWithFormat();
  [(PKCommutePlanDetailsViewController *)v20 setTitle:v33, 0];

LABEL_17:
  return v20;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKCommutePlanDetailsViewController;
  [(PKSectionTableViewController *)&v7 viewDidLoad];
  if (self->_style == 2)
  {
    v3 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v3, self);

    v4 = [(PKCommutePlanDetailsViewController *)self tableView];
    v5 = PKBridgeAppearanceGetAppearanceSpecifier();
    v6 = [v5 tintColor];
    [v4 setTintColor:v6];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
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
    v11[2] = __94__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __94__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setDynamicBalances:*(a1 + 40)];
  [*(a1 + 32) _resetReminderIntervalsForCountPlans:*(a1 + 40)];
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
    v11[2] = __91__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __91__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) updateWithDynamicCommutePlans:*(a1 + 40)];
  [*(a1 + 32) _resetReminderIntervalsForTimedPlans:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
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
    v11[2] = __105__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __105__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setTransitProperties:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)_reloadBalanceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentPass *)self->_pass uniqueID];
  v6 = dispatch_group_create();
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__39;
  v38[4] = __Block_byref_object_dispose__39;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__39;
  v36[4] = __Block_byref_object_dispose__39;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__39;
  v34[4] = __Block_byref_object_dispose__39;
  v35 = 0;
  v7 = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  dispatch_group_enter(v6);
  paymentDataProvider = self->_paymentDataProvider;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke;
  v29[3] = &unk_1E8016A48;
  v33 = v38;
  v9 = v7;
  v30 = v9;
  v31 = self;
  v10 = v6;
  v32 = v10;
  [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:v5 paymentApplication:v9 completion:v29];
  dispatch_group_enter(v10);
  v11 = self->_paymentDataProvider;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_2;
  v26[3] = &unk_1E8016A70;
  v28 = v36;
  v12 = v10;
  v27 = v12;
  [(PKPaymentDataProvider *)v11 balancesForPaymentPassWithUniqueIdentifier:v5 completion:v26];
  dispatch_group_enter(v12);
  v13 = self->_paymentDataProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_3;
  v23[3] = &unk_1E8012BB0;
  v25 = v34;
  v14 = v12;
  v24 = v14;
  [(PKPaymentDataProvider *)v13 plansForPaymentPassWithUniqueIdentifier:v5 completion:v23];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_4;
  v16[3] = &unk_1E801CFC8;
  objc_copyWeak(&v21, &location);
  v19 = v36;
  v20 = v34;
  v17 = v4;
  v18 = v38;
  v15 = v4;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
}

void __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:*(a1[5] + 1120)];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = a1[6];

  dispatch_group_leave(v6);
}

void __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[149] setTransitProperties:*(*(*(a1 + 40) + 8) + 40)];
    [v6[149] setDynamicBalances:*(*(*(a1 + 48) + 8) + 40)];
    [v6 _resetReminderIntervalsForCountPlans:*(*(*(a1 + 48) + 8) + 40)];
    [v6[149] updateWithDynamicCommutePlans:*(*(*(a1 + 56) + 8) + 40)];
    [v6 _resetReminderIntervalsForTimedPlans:*(*(*(a1 + 56) + 8) + 40)];
    v4 = [v6 tableView];
    [v4 reloadData];

    v3 = v6;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 1);
      v3 = v6;
    }
  }
}

- (void)_resetReminderIntervalsForTimedPlans:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassAction *)self->_action type]== 2 && ([(PKTransitCommutePlan *)self->_commutePlan properties]& 1) != 0)
  {
    v5 = [(PKTransitCommutePlan *)self->_commutePlan expiryDate];
    v6 = [(PKTransitCommutePlan *)self->_commutePlan startDate];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF00] now];
    }

    if (v4 && [v4 count])
    {
      v7 = [(PKTransitCommutePlan *)self->_commutePlan identifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke;
      v18[3] = &unk_1E801CFF0;
      v19 = v7;
      v8 = v7;
      v9 = [v4 pk_firstObjectPassingTest:v18];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 expiryDate];

        v12 = [v10 startDate];

        v6 = v12;
        v5 = v11;
      }
    }

    if (v5)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke_44;
      v15[3] = &unk_1E801D018;
      v16 = v5;
      v17 = v6;
      v13 = [&unk_1F3CC84E0 pk_objectsPassingTest:v15];
      reminderIntervals = self->_reminderIntervals;
      self->_reminderIntervals = v13;
    }
  }
}

uint64_t __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
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
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

BOOL __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke_44(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = v3;
  [*(a1 + 32) timeIntervalSince1970];
  v6 = v5;
  [*(a1 + 40) timeIntervalSince1970];
  return v4 < v6 - v7;
}

- (void)_resetReminderIntervalsForCountPlans:(id)a3
{
  v4 = a3;
  if ([(PKPaymentPassAction *)self->_action type]== 2)
  {
    v5 = [(PKTransitCommutePlan *)self->_commutePlan properties];
    if (v4)
    {
      if ((v5 & 4) != 0 && [v4 count])
      {
        v6 = [(PKTransitCommutePlan *)self->_commutePlan passFieldForKey:*MEMORY[0x1E69BC580]];
        v7 = [v6 foreignReferenceIdentifiers];
        v8 = [v4 allObjects];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForCountPlans___block_invoke;
        v16[3] = &unk_1E801D040;
        v9 = v7;
        v17 = v9;
        v10 = [v8 pk_firstObjectPassingTest:v16];

        if (v10)
        {
          v11 = [v10 value];
          v12 = [v11 integerValue];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForCountPlans___block_invoke_57;
          v15[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
          v15[4] = v12;
          v13 = [&unk_1F3CC84F8 pk_objectsPassingTest:v15];
          reminderIntervals = self->_reminderIntervals;
          self->_reminderIntervals = v13;
        }
      }
    }
  }
}

uint64_t __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForCountPlans___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifiers];
  v3 = PKEqualObjects();

  return v3;
}

- (void)_fetchRemindersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitCommutePlan *)self->_commutePlan properties];
  if ((v5 & 4) != 0)
  {
    if (!self->_dataProviderImplementsBalanceReminderAPI)
    {
      goto LABEL_10;
    }

    v6 = objc_alloc(MEMORY[0x1E69B8B90]);
    v7 = [(PKTransitCommutePlan *)self->_commutePlan foreignReferenceIdentifiers];
    v8 = [v6 initWithIdentifiers:v7 forValue:0 roundingToExponent:0];

    objc_initWeak(&location, self);
    paymentDataProvider = self->_paymentDataProvider;
    pass = self->_pass;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke;
    v17[3] = &unk_1E801D088;
    objc_copyWeak(&v19, &location);
    v18 = v4;
    [(PKPaymentDataProvider *)paymentDataProvider balanceReminderThresholdForBalance:v8 pass:pass withCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  if ((v5 & 3) == 1)
  {
    if (self->_dataProviderImplementsCommutePlanReminderAPI)
    {
      self->_selectedReminderIntervalsIndex = 0;
      self->_shouldLoadReminderInterval = 1;
      objc_initWeak(&location, self);
      v11 = self->_paymentDataProvider;
      commutePlan = self->_commutePlan;
      v13 = self->_pass;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_4;
      v14[3] = &unk_1E801D0B0;
      objc_copyWeak(&v16, &location);
      v15 = v4;
      [(PKPaymentDataProvider *)v11 commutePlanReminderForCommutePlan:commutePlan pass:v13 withCompletion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

LABEL_10:
    [(PKCommutePlanDetailsViewController *)self _reloadBalanceWithCompletion:v4];
    goto LABEL_11;
  }

  if ((v5 & 1) != 0 && ((v5 & 2) != 0 || !self->_dataProviderImplementsCommutePlanReminderAPI))
  {
    goto LABEL_10;
  }

LABEL_11:
}

void __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8019A98;
  v11 = v3;
  v12 = WeakRetained;
  v13 = *(a1 + 32);
  v5 = v3;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_3;
  block[3] = &unk_1E8010DD0;
  block[4] = WeakRetained;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _updateSelectedBalanceReminderWithBalanceReminder:?];
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_5;
  aBlock[3] = &unk_1E8019A98;
  aBlock[4] = WeakRetained;
  v11 = v3;
  v12 = *(a1 + 32);
  v5 = v3;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_6;
  block[3] = &unk_1E8010DD0;
  block[4] = WeakRetained;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke_5(void *a1)
{
  v2 = a1[4];
  if (v2 && v2[1160] == 1)
  {
    [v2 _updateSelectedReminderIntervalsIndexWithReminder:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (a3)
  {
    return a3 == 1 && self->_canShowReminders;
  }

  else
  {
    return 1;
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCommutePlanDetailsViewController;
  [(PKCommutePlanDetailsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKCommutePlanDetailsViewController *)self tableView];
    v4 = [(PKCommutePlanDetailsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)_handleReminderIntervalChanged:(int64_t)a3
{
  if (self->_selectedReminderIntervalsIndex != a3)
  {
    self->_shouldLoadReminderInterval = 0;
    v5 = a3 < 1;
    v6 = a3 - 1;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSArray *)self->_reminderIntervals objectAtIndexedSubscript:v6];
    }

    v8 = [(PKCommutePlanDetailsViewController *)self tableView];
    v9 = [(PKSectionTableViewController *)self indexForSection:1];
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedReminderIntervalsIndex inSection:v9];
    v11 = [v8 cellForRowAtIndexPath:v10];

    [v11 setAccessoryType:0];
    if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 1) != 0)
    {
      v14 = objc_alloc(MEMORY[0x1E69B8BA8]);
      [v7 doubleValue];
      v15 = [v14 initWithTimeInterval:?];
      [(PKPaymentDataProvider *)self->_paymentDataProvider setCommutePlanReminder:v15 forCommutePlan:self->_commutePlan pass:self->_pass completion:0];
    }

    else if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 4) != 0)
    {
      v12 = objc_alloc(MEMORY[0x1E69B8B98]);
      v13 = MEMORY[0x1E696AB90];
      if (v7)
      {
        [v7 decimalValue];
      }

      else
      {
        v23[0] = 0;
        v23[1] = 0;
        v24 = 0;
      }

      v16 = [v13 decimalNumberWithDecimal:v23];
      v17 = [v12 initWithThreshold:v16 isEnabled:1];

      v18 = objc_alloc(MEMORY[0x1E69B8B90]);
      v19 = [(PKTransitCommutePlan *)self->_commutePlan foreignReferenceIdentifiers];
      v20 = [v18 initWithIdentifiers:v19 forValue:0 roundingToExponent:0];

      [(PKPaymentDataProvider *)self->_paymentDataProvider setBalanceReminder:v17 forBalance:v20 pass:self->_pass completion:0];
    }

    v21 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:v9];
    v22 = [v8 cellForRowAtIndexPath:v21];

    [v22 setAccessoryType:3];
    self->_selectedReminderIntervalsIndex = a3;
  }
}

- (void)_handleActionSelected
{
  v11 = 0;
  v12 = 0;
  v3 = [(PKPaymentPass *)self->_pass canPerformAction:self->_action unableReason:&v12 displayableError:&v11];
  v4 = v11;
  if ((v3 & 1) == 0 && v12 != 2)
  {
    v5 = [PKPerformActionViewController alertControllerForUnableReason:v12 action:self->_action displayableError:v4 addCardActionHandler:0];
    [(PKCommutePlanDetailsViewController *)self presentViewController:v5 animated:1 completion:0];
LABEL_7:

    goto LABEL_8;
  }

  if (![(PKPaymentPassAction *)self->_action hasExternalActionContent])
  {
    v5 = [[PKPerformActionViewController alloc] initWithPass:self->_pass action:self->_action paymentDataProvider:self->_paymentDataProvider];
    [(PKPerformActionViewController *)v5 setDelegate:self];
    [(PKPerformActionViewController *)v5 setWebService:self->_webService];
    v9 = [[PKNavigationController alloc] initWithRootViewController:v5];
    [(PKNavigationController *)v9 setSupportedInterfaceOrientations:2];
    [(PKCommutePlanDetailsViewController *)self presentViewController:v9 animated:1 completion:0];

    goto LABEL_7;
  }

  pass = self->_pass;
  v7 = [(PKPaymentPassAction *)self->_action externalActionContent];
  v8 = [(PKPaymentPassAction *)self->_action title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKCommutePlanDetailsViewController__handleActionSelected__block_invoke;
  v10[3] = &unk_1E8014560;
  v10[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, v7, v8, v10);

LABEL_8:
}

uint64_t __59__PKCommutePlanDetailsViewController__handleActionSelected__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

- (void)_updateSelectedBalanceReminderWithBalanceReminder:(id)a3
{
  reminderIntervals = self->_reminderIntervals;
  v5 = MEMORY[0x1E696AD98];
  v6 = [a3 threshold];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v8 = [(NSArray *)reminderIntervals indexOfObject:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (self->_selectedReminderIntervalsIndex != v9)
  {
    self->_selectedReminderIntervalsIndex = v9;
    if (self->_canShowReminders)
    {

      [PKCommutePlanDetailsViewController _reloadChangedIndexPathsWithOldIndex:"_reloadChangedIndexPathsWithOldIndex:newIndex:inSection:" newIndex:? inSection:?];
    }
  }
}

- (void)_updateSelectedReminderIntervalsIndexWithReminder:(id)a3
{
  [a3 timeInterval];
  reminderIntervals = self->_reminderIntervals;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [(NSArray *)reminderIntervals indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (self->_selectedReminderIntervalsIndex != v7)
  {
    self->_selectedReminderIntervalsIndex = v7;
    if (self->_canShowReminders)
    {

      [PKCommutePlanDetailsViewController _reloadChangedIndexPathsWithOldIndex:"_reloadChangedIndexPathsWithOldIndex:newIndex:inSection:" newIndex:? inSection:?];
    }
  }
}

- (void)_reloadChangedIndexPathsWithOldIndex:(unint64_t)a3 newIndex:(unint64_t)a4 inSection:(unint64_t)a5
{
  v12[2] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:a5];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a4 inSection:a5];
  v10 = [(PKCommutePlanDetailsViewController *)self tableView];
  v12[0] = v8;
  v12[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKCommutePlanDetailsViewController *)self view];
  [v3 setNeedsLayout];
}

- (unint64_t)_commutePlanDetailsRowTypeForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v6;
    v7 += [(PKCommutePlanDetailsViewController *)self _numberOfCommutePlanDetailsRowsEnabledForRowType:v6];
    if (v5)
    {
      break;
    }

    v5 = 1;
    v6 = 1;
  }

  while (v7 <= a3);
  if (v7 <= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

- (BOOL)_shouldShowRenewAction
{
  action = self->_action;
  if (action)
  {
    LOBYTE(action) = [(PKPaymentPassAction *)action isActionAvailable];
  }

  return action;
}

- (int64_t)_numberOfCommutePlanDetailsRowsEnabledForRowType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return [(PKCommutePlanDetailsViewController *)self _shouldShowRenewAction:v3];
  }

  if (a3)
  {
    return 0;
  }

  fields = self->_fields;

  return [(NSArray *)fields count];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 1)
  {
    result = [(NSArray *)self->_reminderIntervals count];
    if (result)
    {
      return [(NSArray *)self->_reminderIntervals count]+ 1;
    }
  }

  else if (v5)
  {
    return 0;
  }

  else
  {

    return [(PKCommutePlanDetailsViewController *)self _numberOfCommutePlanDetailsRowsEnabled];
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 row];
  v9 = [v7 section];

  v10 = [(PKSectionTableViewController *)self sectionForIndex:v9];
  if (v10 == 1)
  {
    v18 = [v6 dequeueReusableCellWithIdentifier:@"reminderCellIdentifier"];
    if (!v18)
    {
      v18 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"reminderCellIdentifier"];
      if (self->_style == 2)
      {
        v26 = PKBridgeAppearanceGetAppearanceSpecifier();
        PKAppearanceApplyToContainer(v26, v18);
      }
    }

    if (v8 >= 1)
    {
      if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 4) != 0)
      {
        v31 = [(NSArray *)self->_reminderIntervals objectAtIndexedSubscript:v8 - 1];
        v32 = [v31 unsignedIntegerValue];

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
        PKLocalizedPaymentString(&cfstr_CommutePlanRen.isa, &stru_1F3BD5BF0.isa, v33);
      }

      else
      {
        if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 1) == 0)
        {
          v12 = 0;
LABEL_32:
          v36 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [v36 setText:v12];

          v37 = [(PKCommutePlanDetailsTableViewCell *)v18 detailTextLabel];
          [v37 setText:0];

          v38 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [v38 setLineBreakMode:0];

          v39 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [v39 setNumberOfLines:2];

          if (v8 == self->_selectedReminderIntervalsIndex)
          {
            v40 = 3;
          }

          else
          {
            v40 = 0;
          }

          [(PKCommutePlanDetailsTableViewCell *)v18 setAccessoryType:v40];
          style = self->_style;
          v42 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          if (style == 2)
          {
            v43 = PKBridgeAppearanceGetAppearanceSpecifier();
            v44 = [v43 textColor];
            [v42 setTextColor:v44];
          }

          else
          {
            v43 = [MEMORY[0x1E69DC888] labelColor];
            [v42 setTextColor:v43];
          }

          goto LABEL_52;
        }

        timeIntervalFormatter = self->_timeIntervalFormatter;
        v35 = [(NSArray *)self->_reminderIntervals objectAtIndexedSubscript:v8 - 1];
        [v35 doubleValue];
        v33 = [(NSDateComponentsFormatter *)timeIntervalFormatter stringFromTimeInterval:?];

        PKLocalizedPaymentString(&cfstr_CommutePlanRen_0.isa, &stru_1F3BD5BF0.isa, v33);
      }
      v12 = ;

      goto LABEL_32;
    }

    v12 = PKLocalizedPaymentString(&cfstr_CommutePlanRen_1.isa);
    goto LABEL_32;
  }

  if (v10)
  {
    goto LABEL_28;
  }

  v11 = [(PKCommutePlanDetailsViewController *)self _commutePlanDetailsRowTypeForRowIndex:v8];
  if (v11 != 1)
  {
    if (!v11)
    {
      v12 = [(NSArray *)self->_fields objectAtIndexedSubscript:v8];
      v13 = [v12 label];
      v14 = [v12 value];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"planDetailsCellStyle%d", 0];
      v16 = [v6 dequeueReusableCellWithIdentifier:v15];
      if (!v16)
      {
        v16 = [[PKCommutePlanDetailsTableViewCell alloc] initWithStyle:0 reuseIdentifier:v15 passDetailViewStyle:self->_style];
        if (self->_style == 2)
        {
          v17 = PKBridgeAppearanceGetAppearanceSpecifier();
          PKAppearanceApplyToContainer(v17, v16);
        }
      }

      v18 = v16;
      if (([v12 foreignReferenceType] - 1) <= 1)
      {
        balanceModel = self->_balanceModel;
        v20 = [v12 foreignReferenceIdentifiers];
        v21 = [(PKTransitBalanceModel *)balanceModel balanceForIdentifiers:v20];

        v22 = [v21 formattedValue];

        v14 = v22;
      }

      v23 = [v12 key];
      v24 = v23;
      if (v8)
      {
        if (![v23 isEqualToString:*MEMORY[0x1E69BC580]])
        {
          if ([v24 isEqualToString:*MEMORY[0x1E69BC590]])
          {
            v25 = [(PKTransitCommutePlan *)self->_commutePlan startDateString];
LABEL_50:
            v54 = v25;

            v14 = v54;
            goto LABEL_51;
          }

          if ([v24 isEqualToString:*MEMORY[0x1E69BC588]])
          {
            v25 = [(PKTransitCommutePlan *)self->_commutePlan expiryDateString];
            goto LABEL_50;
          }

LABEL_51:
          [(PKCommutePlanDetailsTableViewCell *)v18 setPrimaryText:v13];
          [(PKCommutePlanDetailsTableViewCell *)v18 setSecondaryText:v14];

LABEL_52:
          goto LABEL_53;
        }
      }

      else if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 4) != 0)
      {
        PKCommutePlanFormatTitleFromLabelAndValue();
        v45 = v13;

        v46 = v14;
        goto LABEL_47;
      }

      PKCommutePlanFieldEitherLabelOrValueIsEmpty();
      PKCommutePlanFormatTitleFromLabelAndValue();
      v45 = v13;

      v46 = v14;
LABEL_47:
      v53 = v46;

      v14 = v53;
      v13 = v45;
      goto LABEL_51;
    }

LABEL_28:
    v18 = 0;
    goto LABEL_53;
  }

  if (![(PKCommutePlanDetailsViewController *)self _shouldShowRenewAction])
  {
    goto LABEL_28;
  }

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"actionCellIdentifier"];
  v18 = [v6 dequeueReusableCellWithIdentifier:v27];
  if (!v18)
  {
    v18 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:v27];
    if (self->_style == 2)
    {
      v28 = PKBridgeAppearanceGetAppearanceSpecifier();
      PKAppearanceApplyToContainer(v28, v18);
    }
  }

  action = self->_action;
  if ([(PKPaymentPass *)self->_pass isSuicaPass])
  {
    v30 = [(PKPaymentPassAction *)self->_action type]== 2;
  }

  else
  {
    v30 = 0;
  }

  [(PKPaymentPassAction *)action setReverseButtonTitleForLegacySuica:v30];
  v47 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
  v48 = [(PKPaymentPassAction *)self->_action title];
  [v47 setText:v48];

  v49 = self->_style;
  v50 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
  if (v49 == 2)
  {
    v51 = PKBridgeAppearanceGetAppearanceSpecifier();
    v52 = [v51 buttonTextColor];
    [v50 setTextColor:v52];
  }

  else
  {
    v51 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v50 setTextColor:v51];
  }

LABEL_53:

  return v18;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v5 section]);
  if (v6 == 1)
  {
    v7 = 1;
  }

  else if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -[PKCommutePlanDetailsViewController _commutePlanDetailsRowTypeForRowIndex:](self, "_commutePlanDetailsRowTypeForRowIndex:", [v5 row]) == 1;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a4;
  [a3 deselectRowAtIndexPath:v7 animated:1];
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  if (v6 == 1)
  {
    -[PKCommutePlanDetailsViewController _handleReminderIntervalChanged:](self, "_handleReminderIntervalChanged:", [v7 row]);
  }

  else if (!v6 && -[PKCommutePlanDetailsViewController _commutePlanDetailsRowTypeForRowIndex:](self, "_commutePlanDetailsRowTypeForRowIndex:", [v7 row]) == 1 && -[PKCommutePlanDetailsViewController _shouldShowRenewAction](self, "_shouldShowRenewAction"))
  {
    [(PKCommutePlanDetailsViewController *)self _handleActionSelected];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 1)
  {
    if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 4) == 0)
    {
      v5 = [(NSArray *)self->_reminderIntervals count];
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER";
      goto LABEL_5;
    }

    v8 = [(PKTransitCommutePlan *)self->_commutePlan passFieldForKey:*MEMORY[0x1E69BC580]];
    v9 = [v8 unitType];

    v5 = [(NSArray *)self->_reminderIntervals count];
    if (v9)
    {
      if (v9 == 2)
      {
        if (v5)
        {
          v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER_COUNT_BASED_UNIT_TICKETS";
          goto LABEL_5;
        }
      }

      else if (v9 == 1)
      {
        if (v5)
        {
          v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER_COUNT_BASED_UNIT_RIDES";
LABEL_5:
          v5 = PKLocalizedPaymentString(&v6->isa);
        }
      }

      else if (v5)
      {
        v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER_COUNT_BASED_NONE";
        goto LABEL_5;
      }
    }

    else if (v5)
    {
      v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER_COUNT_BASED_UNIT_TRIPS";
      goto LABEL_5;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]!= 1 || ((v5 = [(PKTransitCommutePlan *)self->_commutePlan properties]& 1, self->_canShowReminders) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_reminderIntervals count];
    if (v8)
    {
      v8 = PKPassLocalizedStringWithFormat();
    }
  }

  return v8;
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