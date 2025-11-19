@interface PKBalanceDetailsViewController
- (BOOL)_shouldDisplayAction;
- (BOOL)shouldMapSection:(unint64_t)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PKBalanceDetailsViewController)initWithBalance:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 associatedAction:(id)a6 paymentDataProvider:(id)a7 webService:(id)a8 style:(int64_t)a9;
- (PKBalanceDetailsViewController)initWithBalance:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 balanceName:(id)a6 currencyCode:(id)a7 associatedAction:(id)a8 paymentDataProvider:(id)a9 webService:(id)a10 style:(int64_t)a11;
- (PKBalanceDetailsViewController)initWithTransitPassProperties:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 associatedAction:(id)a6 paymentDataProvider:(id)a7 webService:(id)a8 style:(int64_t)a9;
- (PKBalanceDetailsViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)_numberOfBalanceDetailsRowsEnabled;
- (int64_t)_numberOfBalanceDetailsRowsEnabledForRowType:(unint64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_balanceDetailsRowTypeForRowIndex:(int64_t)a3;
- (void)_handleActionSelected;
- (void)_handleReminderAmountChanged:(id)a3;
- (void)_initializeReminderAmounts:(id)a3;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)performActionViewControllerDidCancel:(id)a3;
- (void)performActionViewControllerDidCompleteAutoReload:(id)a3;
- (void)performActionViewControllerDidPerformAction:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKBalanceDetailsViewController

- (PKBalanceDetailsViewController)initWithBalance:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 balanceName:(id)a6 currencyCode:(id)a7 associatedAction:(id)a8 paymentDataProvider:(id)a9 webService:(id)a10 style:(int64_t)a11
{
  v17 = a3;
  v30 = a4;
  v31 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [v19 type];
  if ((!v19 || v21 == 1 || v21 == 6) && self->_shouldShowReminderSettings)
  {
    v32.receiver = self;
    v32.super_class = PKBalanceDetailsViewController;
    v22 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v32, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:a11 != 1], 2);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_currentBalance, a3);
      objc_storeStrong(&v23->_pass, a4);
      objc_storeStrong(&v23->_action, a8);
      objc_storeStrong(&v23->_paymentDataProvider, a9);
      v23->_style = a11;
      objc_storeStrong(&v23->_currencyCode, a7);
      [(PKBalanceDetailsViewController *)v23 _initializeReminderAmounts:v31];
      if (objc_opt_respondsToSelector())
      {
        [(PKPaymentDataProvider *)v23->_paymentDataProvider addDelegate:v23];
      }

      v24 = [(PKBalanceDetailsViewController *)v23 navigationItem];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        [v24 pkui_setupScrollEdgeChromelessAppearance];
        [v24 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
      }

      v25 = PKLocalizedPaymentString(&cfstr_BalanceDetailB.isa);
      [v24 setTitle:v25];

      v17 = v29;
    }

    self = v23;
    v26 = self;
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Got invalid action type", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

- (PKBalanceDetailsViewController)initWithTransitPassProperties:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 associatedAction:(id)a6 paymentDataProvider:(id)a7 webService:(id)a8 style:(int64_t)a9
{
  v28 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi.isa);
  v21 = [v19 balanceAmount];
  v22 = [v21 currency];

  v23 = [v19 balance];

  v24 = PKCurrencyAmountCreate(v23, v22);
  v25 = [v24 formattedStringValue];

  self->_shouldShowReminderSettings = 1;
  v26 = [(PKBalanceDetailsViewController *)self initWithBalance:v25 forPass:v18 balanceReminder:v17 balanceName:v20 currencyCode:v22 associatedAction:v16 paymentDataProvider:v15 webService:v28 style:a9];

  return v26;
}

- (PKBalanceDetailsViewController)initWithBalance:(id)a3 forPass:(id)a4 balanceReminder:(id)a5 associatedAction:(id)a6 paymentDataProvider:(id)a7 webService:(id)a8 style:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  if (v16)
  {
    obj = a3;
    self->_isPostPaidPass = 0;
    v18 = a8;
    v19 = a7;
    v20 = a6;
    v21 = a5;
    v22 = ![v17 isAutoTopUpBalance:v16] || !objc_msgSend(v17, "isAutoTopEnabled") || self->_isPostPaidPass;
    self->_shouldShowReminderSettings = v22;
    v23 = [v16 formattedValue];
    v24 = [v16 localizedTitle];
    v25 = [v16 currencyCode];
    v26 = [(PKBalanceDetailsViewController *)self initWithBalance:v23 forPass:v17 balanceReminder:v21 balanceName:v24 currencyCode:v25 associatedAction:v20 paymentDataProvider:v19 webService:v18 style:a9];

    if (v26)
    {
      objc_storeStrong(&v26->_balance, obj);
    }

    self = v26;
    v27 = self;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentDataProvider *)self->_paymentDataProvider removeDelegate:self];
  }

  v3.receiver = self;
  v3.super_class = PKBalanceDetailsViewController;
  [(PKSectionTableViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = PKBalanceDetailsViewController;
  [(PKBalanceDetailsViewController *)&v8 viewWillAppear:a3];
  if (self->_style == 1)
  {
    v4 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v4, self);

    v5 = [(PKBalanceDetailsViewController *)self tableView];
    v6 = PKBridgeAppearanceGetAppearanceSpecifier();
    v7 = [v6 tintColor];
    [v5 setTintColor:v7];
  }
}

- (void)_initializeReminderAmounts:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  action = self->_action;
  v5 = a3;
  v6 = [(PKPaymentPassAction *)action enteredValueItem];
  v7 = [v6 lowBalanceReminderOptions];
  reminderAmounts = self->_reminderAmounts;
  self->_reminderAmounts = v7;

  if ([(NSArray *)self->_reminderAmounts count]|| ![(PKPaymentPass *)self->_pass needsHardcodedReminderOptions])
  {
    goto LABEL_8;
  }

  if ([(PKPaymentPass *)self->_pass isSuicaPass])
  {
    v9 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:200 exponent:0 isNegative:0];
    v26[0] = v9;
    v10 = v26;
    v11 = 2000;
    v12 = 1000;
    v13 = 500;
  }

  else
  {
    if (![(PKPaymentPass *)self->_pass isChinaTransitCredential])
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:5 exponent:0 isNegative:0];
    v25 = v9;
    v10 = &v25;
    v11 = 20;
    v12 = 15;
    v13 = 10;
  }

  v14 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v13 exponent:0 isNegative:0];
  v10[1] = v14;
  v15 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v12 exponent:0 isNegative:0];
  v10[2] = v15;
  v16 = [MEMORY[0x1E696AB90] decimalNumberWithMantissa:v11 exponent:0 isNegative:0];
  v10[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v18 = self->_reminderAmounts;
  self->_reminderAmounts = v17;

LABEL_8:
  v19 = [(NSArray *)self->_reminderAmounts sortedArrayUsingComparator:&__block_literal_global_235];
  v20 = self->_reminderAmounts;
  self->_reminderAmounts = v19;

  v21 = self->_reminderAmounts;
  v22 = [v5 threshold];

  v23 = [(NSArray *)v21 indexOfObject:v22];
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 + 1;
  }

  self->_selectedReminderAmountIndex = v24;
}

- (void)_handleReminderAmountChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5 != self->_selectedReminderAmountIndex)
  {
    v6 = v5;
    if (v5)
    {
      v7 = [(NSArray *)self->_reminderAmounts objectAtIndexedSubscript:v5 - 1];
    }

    else
    {
      v7 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [objc_alloc(MEMORY[0x1E69B8B98]) initWithThreshold:v7 isEnabled:v6 != 0];
      objc_initWeak(&location, self);
      paymentDataProvider = self->_paymentDataProvider;
      balance = self->_balance;
      pass = self->_pass;
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __63__PKBalanceDetailsViewController__handleReminderAmountChanged___block_invoke;
      v17 = &unk_1E80232C8;
      objc_copyWeak(v19, &location);
      v19[1] = v6;
      v18 = v4;
      [(PKPaymentDataProvider *)paymentDataProvider setBalanceReminder:v8 forBalance:balance pass:pass completion:&v14];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained balanceDetailsViewController:self didUpdateBalanceReminder:v8 forBalance:{self->_balance, v14, v15, v16, v17}];
      }

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }
  }
}

void __63__PKBalanceDetailsViewController__handleReminderAmountChanged___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PKBalanceDetailsViewController__handleReminderAmountChanged___block_invoke_2;
    block[3] = &unk_1E8011408;
    objc_copyWeak(v5, a1 + 5);
    v5[1] = a1[6];
    v4 = a1[4];
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v5);
  }
}

void __63__PKBalanceDetailsViewController__handleReminderAmountChanged___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[147] != *(a1 + 48))
  {
    v7 = WeakRetained;
    v3 = [WeakRetained tableView];
    v4 = [v3 cellForRowAtIndexPath:*(a1 + 32)];
    [v4 setAccessoryType:3];
    v5 = [MEMORY[0x1E696AC88] indexPathForRow:v7[147] inSection:{objc_msgSend(*(a1 + 32), "section")}];
    v6 = [v3 cellForRowAtIndexPath:v5];

    [v6 setAccessoryType:0];
    v7[147] = *(a1 + 48);

    WeakRetained = v7;
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
    [(PKBalanceDetailsViewController *)self presentViewController:v5 animated:1 completion:0];
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
    [(PKBalanceDetailsViewController *)self presentViewController:v9 animated:1 completion:0];

    goto LABEL_7;
  }

  pass = self->_pass;
  v7 = [(PKPaymentPassAction *)self->_action externalActionContent];
  v8 = [(PKPaymentPassAction *)self->_action title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKBalanceDetailsViewController__handleActionSelected__block_invoke;
  v10[3] = &unk_1E8014560;
  v10[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, v7, v8, v10);

LABEL_8:
}

uint64_t __55__PKBalanceDetailsViewController__handleActionSelected__block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(result + 32) presentViewController:a3 animated:1 completion:0];
  }

  return result;
}

- (BOOL)shouldMapSection:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (self->_shouldShowReminderSettings)
      {
        v4 = [(NSArray *)self->_reminderAmounts count];
        if (v4)
        {
          LOBYTE(v4) = [(PKPaymentDataProvider *)self->_paymentDataProvider apiVersion]> 1;
        }
      }

      else
      {
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKBalanceDetailsViewController;
  [(PKBalanceDetailsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKBalanceDetailsViewController *)self tableView];
    v4 = [(PKBalanceDetailsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKBalanceDetailsViewController *)self view];
  [v3 setNeedsLayout];
}

- (unint64_t)_balanceDetailsRowTypeForRowIndex:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = v6;
    v7 += [(PKBalanceDetailsViewController *)self _numberOfBalanceDetailsRowsEnabledForRowType:v6];
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

- (int64_t)_numberOfBalanceDetailsRowsEnabled
{
  if ([(PKBalanceDetailsViewController *)self _shouldDisplayAction])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_numberOfBalanceDetailsRowsEnabledForRowType:(unint64_t)a3
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return [(PKBalanceDetailsViewController *)self _shouldDisplayAction:v3];
  }

  return 0;
}

- (BOOL)_shouldDisplayAction
{
  if (!self->_action || PKPassbookIsCurrentlyDeletedByUser())
  {
    goto LABEL_14;
  }

  v3 = [(PKPaymentPass *)self->_pass activationState];
  if ([(PKPaymentPassAction *)self->_action type]== 1 && v3 - 1 < 2)
  {
    goto LABEL_14;
  }

  v5 = [(PKPaymentPassAction *)self->_action isActionAvailable];
  if (v5)
  {
    if (([(PKPaymentPassAction *)self->_action unavailableActionBehavior]& 2) != 0)
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (self->_style == 1)
    {

      LOBYTE(v5) = PKIsAltAccountPairedOrPairing();
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 1)
  {
    return [(NSArray *)self->_reminderAmounts count]+ 1;
  }

  if (v5)
  {
    return 0;
  }

  return [(PKBalanceDetailsViewController *)self _numberOfBalanceDetailsRowsEnabled];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"cell"];
  if (v7)
  {
    v8 = v7;
    [v7 setAccessoryType:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"cell"];
  }

  v9 = [v6 row];
  v10 = [v6 section];

  v11 = [(PKSectionTableViewController *)self sectionForIndex:v10];
  if (v11 == 1)
  {
    if (v9 < 1)
    {
      v18 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_1.isa);
    }

    else
    {
      v15 = [(NSArray *)self->_reminderAmounts objectAtIndexedSubscript:v9 - 1];
      v16 = PKCurrencyAmountCreate(v15, self->_currencyCode);
      v17 = [v16 formattedStringValue];

      v18 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_0.isa, &stru_1F3BD5BF0.isa, v17);
    }

    v19 = [v8 textLabel];
    [v19 setText:v18];

    v20 = [v8 detailTextLabel];
    [v20 setText:0];

    if (v9 == self->_selectedReminderAmountIndex)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    [v8 setAccessoryType:v21];
    if (self->_style != 1)
    {
      goto LABEL_27;
    }

    v22 = [v8 textLabel];
    v23 = PKBridgeAppearanceGetAppearanceSpecifier();
    v24 = [v23 textColor];
    goto LABEL_20;
  }

  if (v11)
  {
    goto LABEL_28;
  }

  v12 = [(PKBalanceDetailsViewController *)self _balanceDetailsRowTypeForRowIndex:v9];
  if (v12 == 1)
  {
    v18 = [(PKPaymentPassAction *)self->_action title];
    v25 = [v8 textLabel];
    [v25 setText:v18];

    v26 = [v8 detailTextLabel];
    [v26 setText:0];

    style = self->_style;
    v22 = [v8 textLabel];
    if (style != 1)
    {
      v23 = [MEMORY[0x1E69DC888] systemBlueColor];
      v29 = v22;
LABEL_25:
      [v29 setTextColor:v23];
      goto LABEL_26;
    }

    v23 = PKBridgeAppearanceGetAppearanceSpecifier();
    v24 = [v23 buttonTextColor];
LABEL_20:
    v28 = v24;
    [v22 setTextColor:v24];

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  if (!v12)
  {
    v13 = [v8 textLabel];
    v14 = [(PKPaymentBalance *)self->_balance localizedTitle];
    if (v14)
    {
      [v13 setText:v14];
    }

    else
    {
      v30 = PKLocalizedPaymentString(&cfstr_BalanceDetailB.isa);
      [v13 setText:v30];
    }

    v31 = [v8 detailTextLabel];
    [v31 setText:self->_currentBalance];

    if (self->_style == 1)
    {
      v18 = [v8 textLabel];
      v22 = PKBridgeAppearanceGetAppearanceSpecifier();
      v23 = [v22 textColor];
      v29 = v18;
      goto LABEL_25;
    }
  }

LABEL_28:
  if (self->_style == 1)
  {
    v32 = objc_alloc(MEMORY[0x1E69DD250]);
    v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v34 = PKBridgeAppearanceGetAppearanceSpecifier();
    v35 = [v34 tableViewCellHighlightColor];
    [v33 setBackgroundColor:v35];

    [v8 setSelectedBackgroundView:v33];
  }

  return v8;
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
    v7 = -[PKBalanceDetailsViewController _balanceDetailsRowTypeForRowIndex:](self, "_balanceDetailsRowTypeForRowIndex:", [v5 row]) == 1;
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
    [(PKBalanceDetailsViewController *)self _handleReminderAmountChanged:v7];
  }

  else if (!v6 && -[PKBalanceDetailsViewController _balanceDetailsRowTypeForRowIndex:](self, "_balanceDetailsRowTypeForRowIndex:", [v7 row]) == 1)
  {
    [(PKBalanceDetailsViewController *)self _handleActionSelected];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(PKSectionTableViewController *)self sectionForIndex:a4]== 1)
  {
    v4 = PKLocalizedPaymentString(&cfstr_BalanceDetailR.isa);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:a4];
  if (v5 == 1)
  {
    v7 = @"REMINDERS_SECTION_REMINDER_FOOTER_ONLY";
  }

  else
  {
    if (v5 || self->_style != 1 || !self->_action || (PKIsAltAccountPairedOrPairing() & 1) != 0)
    {
      v6 = 0;
      goto LABEL_9;
    }

    if ([(PKPaymentPass *)self->_pass isTransitPass])
    {
      v7 = @"BALANCE_WATCH_TRANSIT_TOP_UP_INSTRUCTION";
    }

    else
    {
      v7 = @"BALANCE_WATCH_TOP_UP_INSTRUCTION";
    }
  }

  v6 = PKLocalizedPaymentString(&v7->isa);
LABEL_9:

  return v6;
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

- (void)performActionViewControllerDidCompleteAutoReload:(id)a3
{
  [(PKBalanceDetailsViewController *)self performActionViewControllerDidPerformAction:a3];
  v5 = [(PKBalanceDetailsViewController *)self navigationController];
  if ([v5 pk_settings_useStateDrivenNavigation])
  {
    [v5 pk_settings_popToRootViewController];
  }

  else
  {
    v4 = [v5 popToRootViewControllerAnimated:1];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didReceiveBalanceUpdate:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKPaymentPass *)self->_pass uniqueID];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    v19 = v7;
    v20 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [(PKPaymentBalance *)self->_balance identifiers:v19];
          v17 = [v15 identifiers];
          v18 = PKEqualObjects();

          if (v18)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __90__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke;
            block[3] = &unk_1E8010A10;
            block[4] = self;
            block[5] = v15;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            goto LABEL_12;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v7 = v19;
    v6 = v20;
  }
}

void __90__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didReceiveBalanceUpdate___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1104), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 1104) formattedValue];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1152);
  *(v3 + 1152) = v2;

  v5 = [*(a1 + 32) tableView];
  v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(*(a1 + 32), "sectionForIndex:", 0)}];
  v8 = [v5 cellForRowAtIndexPath:v6];

  v7 = [v8 detailTextLabel];
  [v7 setText:*(*(a1 + 32) + 1152)];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
{
  v6 = a4;
  pass = self->_pass;
  v8 = a3;
  v9 = [(PKPaymentPass *)pass uniqueID];
  v10 = [v9 isEqualToString:v8];

  if (v10 && !self->_balance)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __101__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __101__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) balance];
  v3 = [*(a1 + 40) balanceAmount];
  v4 = [v3 currency];
  v5 = PKCurrencyAmountCreate(v2, v4);
  v6 = [v5 formattedStringValue];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1152);
  *(v7 + 1152) = v6;

  v9 = [*(a1 + 32) tableView];
  v10 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(*(a1 + 32), "sectionForIndex:", 0)}];
  v12 = [v9 cellForRowAtIndexPath:v10];

  v11 = [v12 detailTextLabel];
  [v11 setText:*(*(a1 + 32) + 1152)];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalanceWithIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  pass = self->_pass;
  v11 = a3;
  v12 = [(PKPaymentPass *)pass uniqueID];
  LOBYTE(pass) = [v12 isEqualToString:v11];

  if (pass)
  {
    v13 = [(PKPaymentBalance *)self->_balance identifiers];
    v14 = [v13 containsObject:v9];

    if (v14)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __116__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
      v15[3] = &unk_1E8010A10;
      v15[4] = self;
      v16 = v8;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  else
  {
  }
}

void __116__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1168);
  v3 = [*(a1 + 40) threshold];
  v4 = [v2 indexOfObject:v3];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(*(a1 + 32) + 1176) = v5;
  v7 = [*(a1 + 32) tableView];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
  [v7 reloadSections:v6 withRowAnimation:5];
}

- (PKBalanceDetailsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end