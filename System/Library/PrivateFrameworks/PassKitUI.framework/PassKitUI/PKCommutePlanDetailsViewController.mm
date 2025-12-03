@interface PKCommutePlanDetailsViewController
- (BOOL)_shouldShowRenewAction;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKCommutePlanDetailsViewController)initWithCommutePlan:(id)plan associatedAction:(id)action forPass:(id)pass paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_numberOfCommutePlanDetailsRowsEnabledForRowType:(unint64_t)type;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_commutePlanDetailsRowTypeForRowIndex:(int64_t)index;
- (void)_fetchRemindersWithCompletion:(id)completion;
- (void)_handleActionSelected;
- (void)_handleReminderIntervalChanged:(int64_t)changed;
- (void)_reloadBalanceWithCompletion:(id)completion;
- (void)_reloadChangedIndexPathsWithOldIndex:(unint64_t)index newIndex:(unint64_t)newIndex inSection:(unint64_t)section;
- (void)_resetReminderIntervalsForCountPlans:(id)plans;
- (void)_resetReminderIntervalsForTimedPlans:(id)plans;
- (void)_updateSelectedBalanceReminderWithBalanceReminder:(id)reminder;
- (void)_updateSelectedReminderIntervalsIndexWithReminder:(id)reminder;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceivePlanUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCommutePlanDetailsViewController

- (PKCommutePlanDetailsViewController)initWithCommutePlan:(id)plan associatedAction:(id)action forPass:(id)pass paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style
{
  planCopy = plan;
  actionCopy = action;
  passCopy = pass;
  providerCopy = provider;
  obj = service;
  serviceCopy = service;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  title = [planCopy title];
  [v17 addObject:title];

  details = [planCopy details];
  [v17 addObjectsFromArray:details];

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

  objc_storeStrong(&v20->_pass, pass);
  v25 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:passCopy];
  balanceModel = v20->_balanceModel;
  v20->_balanceModel = v25;

  objc_storeStrong(&v20->_commutePlan, plan);
  objc_storeStrong(&v20->_action, action);
  objc_storeStrong(&v20->_paymentDataProvider, provider);
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)v20->_paymentDataProvider addDelegate:v20];
  }

  objc_storeStrong(&v20->_webService, obj);
  v20->_style = style;
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
    navigationItem = [(PKCommutePlanDetailsViewController *)v20 navigationItem];
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
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

    tableView = [(PKCommutePlanDetailsViewController *)self tableView];
    v5 = PKBridgeAppearanceGetAppearanceSpecifier();
    tintColor = [v5 tintColor];
    [tableView setTintColor:tintColor];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
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
    v11[2] = __94__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = updateCopy;
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
    v11[2] = __91__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didReceivePlanUpdate___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = updateCopy;
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
    v11[2] = __105__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = propertiesCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __105__PKCommutePlanDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1192) setTransitProperties:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)_reloadBalanceWithCompletion:(id)completion
{
  completionCopy = completion;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
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
  devicePrimaryPaymentApplication = [(PKPaymentPass *)self->_pass devicePrimaryPaymentApplication];
  dispatch_group_enter(v6);
  paymentDataProvider = self->_paymentDataProvider;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke;
  v29[3] = &unk_1E8016A48;
  v33 = v38;
  v9 = devicePrimaryPaymentApplication;
  v30 = v9;
  selfCopy = self;
  v10 = v6;
  v32 = v10;
  [(PKPaymentDataProvider *)paymentDataProvider transitStateWithPassUniqueIdentifier:uniqueID paymentApplication:v9 completion:v29];
  dispatch_group_enter(v10);
  v11 = self->_paymentDataProvider;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_2;
  v26[3] = &unk_1E8016A70;
  v28 = v36;
  v12 = v10;
  v27 = v12;
  [(PKPaymentDataProvider *)v11 balancesForPaymentPassWithUniqueIdentifier:uniqueID completion:v26];
  dispatch_group_enter(v12);
  v13 = self->_paymentDataProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_3;
  v23[3] = &unk_1E8012BB0;
  v25 = v34;
  v14 = v12;
  v24 = v14;
  [(PKPaymentDataProvider *)v13 plansForPaymentPassWithUniqueIdentifier:uniqueID completion:v23];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__PKCommutePlanDetailsViewController__reloadBalanceWithCompletion___block_invoke_4;
  v16[3] = &unk_1E801CFC8;
  objc_copyWeak(&v21, &location);
  v19 = v36;
  v20 = v34;
  v17 = completionCopy;
  v18 = v38;
  v15 = completionCopy;
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

- (void)_resetReminderIntervalsForTimedPlans:(id)plans
{
  plansCopy = plans;
  if ([(PKPaymentPassAction *)self->_action type]== 2 && ([(PKTransitCommutePlan *)self->_commutePlan properties]& 1) != 0)
  {
    expiryDate = [(PKTransitCommutePlan *)self->_commutePlan expiryDate];
    startDate = [(PKTransitCommutePlan *)self->_commutePlan startDate];
    if (!startDate)
    {
      startDate = [MEMORY[0x1E695DF00] now];
    }

    if (plansCopy && [plansCopy count])
    {
      identifier = [(PKTransitCommutePlan *)self->_commutePlan identifier];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke;
      v18[3] = &unk_1E801CFF0;
      v19 = identifier;
      v8 = identifier;
      v9 = [plansCopy pk_firstObjectPassingTest:v18];
      v10 = v9;
      if (v9)
      {
        expiryDate2 = [v9 expiryDate];

        startDate2 = [v10 startDate];

        startDate = startDate2;
        expiryDate = expiryDate2;
      }
    }

    if (expiryDate)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForTimedPlans___block_invoke_44;
      v15[3] = &unk_1E801D018;
      v16 = expiryDate;
      v17 = startDate;
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

- (void)_resetReminderIntervalsForCountPlans:(id)plans
{
  plansCopy = plans;
  if ([(PKPaymentPassAction *)self->_action type]== 2)
  {
    properties = [(PKTransitCommutePlan *)self->_commutePlan properties];
    if (plansCopy)
    {
      if ((properties & 4) != 0 && [plansCopy count])
      {
        v6 = [(PKTransitCommutePlan *)self->_commutePlan passFieldForKey:*MEMORY[0x1E69BC580]];
        foreignReferenceIdentifiers = [v6 foreignReferenceIdentifiers];
        allObjects = [plansCopy allObjects];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForCountPlans___block_invoke;
        v16[3] = &unk_1E801D040;
        v9 = foreignReferenceIdentifiers;
        v17 = v9;
        v10 = [allObjects pk_firstObjectPassingTest:v16];

        if (v10)
        {
          value = [v10 value];
          integerValue = [value integerValue];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __75__PKCommutePlanDetailsViewController__resetReminderIntervalsForCountPlans___block_invoke_57;
          v15[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
          v15[4] = integerValue;
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

- (void)_fetchRemindersWithCompletion:(id)completion
{
  completionCopy = completion;
  properties = [(PKTransitCommutePlan *)self->_commutePlan properties];
  if ((properties & 4) != 0)
  {
    if (!self->_dataProviderImplementsBalanceReminderAPI)
    {
      goto LABEL_10;
    }

    v6 = objc_alloc(MEMORY[0x1E69B8B90]);
    foreignReferenceIdentifiers = [(PKTransitCommutePlan *)self->_commutePlan foreignReferenceIdentifiers];
    v8 = [v6 initWithIdentifiers:foreignReferenceIdentifiers forValue:0 roundingToExponent:0];

    objc_initWeak(&location, self);
    paymentDataProvider = self->_paymentDataProvider;
    pass = self->_pass;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PKCommutePlanDetailsViewController__fetchRemindersWithCompletion___block_invoke;
    v17[3] = &unk_1E801D088;
    objc_copyWeak(&v19, &location);
    v18 = completionCopy;
    [(PKPaymentDataProvider *)paymentDataProvider balanceReminderThresholdForBalance:v8 pass:pass withCompletion:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  if ((properties & 3) == 1)
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
      v15 = completionCopy;
      [(PKPaymentDataProvider *)v11 commutePlanReminderForCommutePlan:commutePlan pass:v13 withCompletion:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      goto LABEL_11;
    }

LABEL_10:
    [(PKCommutePlanDetailsViewController *)self _reloadBalanceWithCompletion:completionCopy];
    goto LABEL_11;
  }

  if ((properties & 1) != 0 && ((properties & 2) != 0 || !self->_dataProviderImplementsCommutePlanReminderAPI))
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

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (section)
  {
    return section == 1 && self->_canShowReminders;
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
    tableView = [(PKCommutePlanDetailsViewController *)self tableView];
    navigationItem = [(PKCommutePlanDetailsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)_handleReminderIntervalChanged:(int64_t)changed
{
  if (self->_selectedReminderIntervalsIndex != changed)
  {
    self->_shouldLoadReminderInterval = 0;
    v5 = changed < 1;
    v6 = changed - 1;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSArray *)self->_reminderIntervals objectAtIndexedSubscript:v6];
    }

    tableView = [(PKCommutePlanDetailsViewController *)self tableView];
    v9 = [(PKSectionTableViewController *)self indexForSection:1];
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedReminderIntervalsIndex inSection:v9];
    v11 = [tableView cellForRowAtIndexPath:v10];

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
      foreignReferenceIdentifiers = [(PKTransitCommutePlan *)self->_commutePlan foreignReferenceIdentifiers];
      v20 = [v18 initWithIdentifiers:foreignReferenceIdentifiers forValue:0 roundingToExponent:0];

      [(PKPaymentDataProvider *)self->_paymentDataProvider setBalanceReminder:v17 forBalance:v20 pass:self->_pass completion:0];
    }

    v21 = [MEMORY[0x1E696AC88] indexPathForRow:changed inSection:v9];
    v22 = [tableView cellForRowAtIndexPath:v21];

    [v22 setAccessoryType:3];
    self->_selectedReminderIntervalsIndex = changed;
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
  externalActionContent = [(PKPaymentPassAction *)self->_action externalActionContent];
  title = [(PKPaymentPassAction *)self->_action title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PKCommutePlanDetailsViewController__handleActionSelected__block_invoke;
  v10[3] = &unk_1E8014560;
  v10[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v10);

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

- (void)_updateSelectedBalanceReminderWithBalanceReminder:(id)reminder
{
  reminderIntervals = self->_reminderIntervals;
  v5 = MEMORY[0x1E696AD98];
  threshold = [reminder threshold];
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(threshold, "unsignedIntegerValue")}];
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

- (void)_updateSelectedReminderIntervalsIndexWithReminder:(id)reminder
{
  [reminder timeInterval];
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

- (void)_reloadChangedIndexPathsWithOldIndex:(unint64_t)index newIndex:(unint64_t)newIndex inSection:(unint64_t)section
{
  v12[2] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:section];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:newIndex inSection:section];
  tableView = [(PKCommutePlanDetailsViewController *)self tableView];
  v12[0] = v8;
  v12[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [tableView reloadRowsAtIndexPaths:v11 withRowAnimation:5];
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKCommutePlanDetailsViewController *)self view];
  [view setNeedsLayout];
}

- (unint64_t)_commutePlanDetailsRowTypeForRowIndex:(int64_t)index
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

  while (v7 <= index);
  if (v7 <= index)
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

- (int64_t)_numberOfCommutePlanDetailsRowsEnabledForRowType:(unint64_t)type
{
  if (type == 1)
  {
    return [(PKCommutePlanDetailsViewController *)self _shouldShowRenewAction:v3];
  }

  if (type)
  {
    return 0;
  }

  fields = self->_fields;

  return [(NSArray *)fields count];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  section = [pathCopy section];

  v10 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v10 == 1)
  {
    v18 = [viewCopy dequeueReusableCellWithIdentifier:@"reminderCellIdentifier"];
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
        unsignedIntegerValue = [v31 unsignedIntegerValue];

        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
        PKLocalizedPaymentString(&cfstr_CommutePlanRen.isa, &stru_1F3BD5BF0.isa, v33);
      }

      else
      {
        if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 1) == 0)
        {
          v12 = 0;
LABEL_32:
          textLabel = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [textLabel setText:v12];

          detailTextLabel = [(PKCommutePlanDetailsTableViewCell *)v18 detailTextLabel];
          [detailTextLabel setText:0];

          textLabel2 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [textLabel2 setLineBreakMode:0];

          textLabel3 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          [textLabel3 setNumberOfLines:2];

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
          textLabel4 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
          if (style == 2)
          {
            labelColor = PKBridgeAppearanceGetAppearanceSpecifier();
            textColor = [labelColor textColor];
            [textLabel4 setTextColor:textColor];
          }

          else
          {
            labelColor = [MEMORY[0x1E69DC888] labelColor];
            [textLabel4 setTextColor:labelColor];
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
      label = [v12 label];
      value = [v12 value];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"planDetailsCellStyle%d", 0];
      v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];
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
        foreignReferenceIdentifiers = [v12 foreignReferenceIdentifiers];
        v21 = [(PKTransitBalanceModel *)balanceModel balanceForIdentifiers:foreignReferenceIdentifiers];

        formattedValue = [v21 formattedValue];

        value = formattedValue;
      }

      v23 = [v12 key];
      v24 = v23;
      if (v8)
      {
        if (![v23 isEqualToString:*MEMORY[0x1E69BC580]])
        {
          if ([v24 isEqualToString:*MEMORY[0x1E69BC590]])
          {
            startDateString = [(PKTransitCommutePlan *)self->_commutePlan startDateString];
LABEL_50:
            v54 = startDateString;

            value = v54;
            goto LABEL_51;
          }

          if ([v24 isEqualToString:*MEMORY[0x1E69BC588]])
          {
            startDateString = [(PKTransitCommutePlan *)self->_commutePlan expiryDateString];
            goto LABEL_50;
          }

LABEL_51:
          [(PKCommutePlanDetailsTableViewCell *)v18 setPrimaryText:label];
          [(PKCommutePlanDetailsTableViewCell *)v18 setSecondaryText:value];

LABEL_52:
          goto LABEL_53;
        }
      }

      else if (([(PKTransitCommutePlan *)self->_commutePlan properties]& 4) != 0)
      {
        PKCommutePlanFormatTitleFromLabelAndValue();
        v45 = label;

        v46 = value;
        goto LABEL_47;
      }

      PKCommutePlanFieldEitherLabelOrValueIsEmpty();
      PKCommutePlanFormatTitleFromLabelAndValue();
      v45 = label;

      v46 = value;
LABEL_47:
      v53 = v46;

      value = v53;
      label = v45;
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
  v18 = [viewCopy dequeueReusableCellWithIdentifier:v27];
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
  textLabel5 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
  title = [(PKPaymentPassAction *)self->_action title];
  [textLabel5 setText:title];

  v49 = self->_style;
  textLabel6 = [(PKCommutePlanDetailsTableViewCell *)v18 textLabel];
  if (v49 == 2)
  {
    systemBlueColor = PKBridgeAppearanceGetAppearanceSpecifier();
    buttonTextColor = [systemBlueColor buttonTextColor];
    [textLabel6 setTextColor:buttonTextColor];
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [textLabel6 setTextColor:systemBlueColor];
  }

LABEL_53:

  return v18;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
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
    v7 = -[PKCommutePlanDetailsViewController _commutePlanDetailsRowTypeForRowIndex:](self, "_commutePlanDetailsRowTypeForRowIndex:", [pathCopy row]) == 1;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v6 == 1)
  {
    -[PKCommutePlanDetailsViewController _handleReminderIntervalChanged:](self, "_handleReminderIntervalChanged:", [pathCopy row]);
  }

  else if (!v6 && -[PKCommutePlanDetailsViewController _commutePlanDetailsRowTypeForRowIndex:](self, "_commutePlanDetailsRowTypeForRowIndex:", [pathCopy row]) == 1 && -[PKCommutePlanDetailsViewController _shouldShowRenewAction](self, "_shouldShowRenewAction"))
  {
    [(PKCommutePlanDetailsViewController *)self _handleActionSelected];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 1)
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
    unitType = [v8 unitType];

    v5 = [(NSArray *)self->_reminderIntervals count];
    if (unitType)
    {
      if (unitType == 2)
      {
        if (v5)
        {
          v6 = @"COMMUTE_PLAN_DETAILS_REMINDER_SECTION_HEADER_COUNT_BASED_UNIT_TICKETS";
          goto LABEL_5;
        }
      }

      else if (unitType == 1)
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]!= 1 || ((v5 = [(PKTransitCommutePlan *)self->_commutePlan properties]& 1, self->_canShowReminders) ? (v6 = v5 == 0) : (v6 = 1), v6))
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