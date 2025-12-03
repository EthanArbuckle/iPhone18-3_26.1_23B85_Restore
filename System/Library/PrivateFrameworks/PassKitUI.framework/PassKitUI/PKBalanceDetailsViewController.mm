@interface PKBalanceDetailsViewController
- (BOOL)_shouldDisplayAction;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKBalanceDetailsViewController)initWithBalance:(id)balance forPass:(id)pass balanceReminder:(id)reminder associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style;
- (PKBalanceDetailsViewController)initWithBalance:(id)balance forPass:(id)pass balanceReminder:(id)reminder balanceName:(id)name currencyCode:(id)code associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)self0 style:(int64_t)self1;
- (PKBalanceDetailsViewController)initWithTransitPassProperties:(id)properties forPass:(id)pass balanceReminder:(id)reminder associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style;
- (PKBalanceDetailsViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)_numberOfBalanceDetailsRowsEnabled;
- (int64_t)_numberOfBalanceDetailsRowsEnabledForRowType:(unint64_t)type;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_balanceDetailsRowTypeForRowIndex:(int64_t)index;
- (void)_handleActionSelected;
- (void)_handleReminderAmountChanged:(id)changed;
- (void)_initializeReminderAmounts:(id)amounts;
- (void)dealloc;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)performActionViewControllerDidCancel:(id)cancel;
- (void)performActionViewControllerDidCompleteAutoReload:(id)reload;
- (void)performActionViewControllerDidPerformAction:(id)action;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKBalanceDetailsViewController

- (PKBalanceDetailsViewController)initWithBalance:(id)balance forPass:(id)pass balanceReminder:(id)reminder balanceName:(id)name currencyCode:(id)code associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)self0 style:(int64_t)self1
{
  balanceCopy = balance;
  passCopy = pass;
  reminderCopy = reminder;
  codeCopy = code;
  actionCopy = action;
  providerCopy = provider;
  type = [actionCopy type];
  if ((!actionCopy || type == 1 || type == 6) && self->_shouldShowReminderSettings)
  {
    v32.receiver = self;
    v32.super_class = PKBalanceDetailsViewController;
    v22 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v32, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:style != 1], 2);
    v23 = v22;
    if (v22)
    {
      objc_storeStrong(&v22->_currentBalance, balance);
      objc_storeStrong(&v23->_pass, pass);
      objc_storeStrong(&v23->_action, action);
      objc_storeStrong(&v23->_paymentDataProvider, provider);
      v23->_style = style;
      objc_storeStrong(&v23->_currencyCode, code);
      [(PKBalanceDetailsViewController *)v23 _initializeReminderAmounts:reminderCopy];
      if (objc_opt_respondsToSelector())
      {
        [(PKPaymentDataProvider *)v23->_paymentDataProvider addDelegate:v23];
      }

      navigationItem = [(PKBalanceDetailsViewController *)v23 navigationItem];
      if ((_UISolariumEnabled() & 1) == 0)
      {
        [navigationItem pkui_setupScrollEdgeChromelessAppearance];
        [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
      }

      v25 = PKLocalizedPaymentString(&cfstr_BalanceDetailB.isa);
      [navigationItem setTitle:v25];

      balanceCopy = v29;
    }

    self = v23;
    selfCopy = self;
  }

  else
  {
    v27 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Got invalid action type", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKBalanceDetailsViewController)initWithTransitPassProperties:(id)properties forPass:(id)pass balanceReminder:(id)reminder associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style
{
  serviceCopy = service;
  providerCopy = provider;
  actionCopy = action;
  reminderCopy = reminder;
  passCopy = pass;
  propertiesCopy = properties;
  v20 = PKLocalizedPaymentString(&cfstr_LowBalanceRemi.isa);
  balanceAmount = [propertiesCopy balanceAmount];
  currency = [balanceAmount currency];

  balance = [propertiesCopy balance];

  v24 = PKCurrencyAmountCreate(balance, currency);
  formattedStringValue = [v24 formattedStringValue];

  self->_shouldShowReminderSettings = 1;
  v26 = [(PKBalanceDetailsViewController *)self initWithBalance:formattedStringValue forPass:passCopy balanceReminder:reminderCopy balanceName:v20 currencyCode:currency associatedAction:actionCopy paymentDataProvider:providerCopy webService:serviceCopy style:style];

  return v26;
}

- (PKBalanceDetailsViewController)initWithBalance:(id)balance forPass:(id)pass balanceReminder:(id)reminder associatedAction:(id)action paymentDataProvider:(id)provider webService:(id)service style:(int64_t)style
{
  balanceCopy = balance;
  passCopy = pass;
  if (balanceCopy)
  {
    obj = balance;
    self->_isPostPaidPass = 0;
    serviceCopy = service;
    providerCopy = provider;
    actionCopy = action;
    reminderCopy = reminder;
    v22 = ![passCopy isAutoTopUpBalance:balanceCopy] || !objc_msgSend(passCopy, "isAutoTopEnabled") || self->_isPostPaidPass;
    self->_shouldShowReminderSettings = v22;
    formattedValue = [balanceCopy formattedValue];
    localizedTitle = [balanceCopy localizedTitle];
    currencyCode = [balanceCopy currencyCode];
    v26 = [(PKBalanceDetailsViewController *)self initWithBalance:formattedValue forPass:passCopy balanceReminder:reminderCopy balanceName:localizedTitle currencyCode:currencyCode associatedAction:actionCopy paymentDataProvider:providerCopy webService:serviceCopy style:style];

    if (v26)
    {
      objc_storeStrong(&v26->_balance, obj);
    }

    self = v26;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PKBalanceDetailsViewController;
  [(PKBalanceDetailsViewController *)&v8 viewWillAppear:appear];
  if (self->_style == 1)
  {
    v4 = PKBridgeAppearanceGetAppearanceSpecifier();
    PKAppearanceApplyToContainer(v4, self);

    tableView = [(PKBalanceDetailsViewController *)self tableView];
    v6 = PKBridgeAppearanceGetAppearanceSpecifier();
    tintColor = [v6 tintColor];
    [tableView setTintColor:tintColor];
  }
}

- (void)_initializeReminderAmounts:(id)amounts
{
  v26[4] = *MEMORY[0x1E69E9840];
  action = self->_action;
  amountsCopy = amounts;
  enteredValueItem = [(PKPaymentPassAction *)action enteredValueItem];
  lowBalanceReminderOptions = [enteredValueItem lowBalanceReminderOptions];
  reminderAmounts = self->_reminderAmounts;
  self->_reminderAmounts = lowBalanceReminderOptions;

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
  threshold = [amountsCopy threshold];

  v23 = [(NSArray *)v21 indexOfObject:threshold];
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

- (void)_handleReminderAmountChanged:(id)changed
{
  changedCopy = changed;
  v5 = [changedCopy row];
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
      v18 = changedCopy;
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
  externalActionContent = [(PKPaymentPassAction *)self->_action externalActionContent];
  title = [(PKPaymentPassAction *)self->_action title];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PKBalanceDetailsViewController__handleActionSelected__block_invoke;
  v10[3] = &unk_1E8014560;
  v10[4] = self;
  PKPaymentPassActionPerformExternalActionContent(pass, externalActionContent, title, v10);

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

- (BOOL)shouldMapSection:(unint64_t)section
{
  if (section)
  {
    if (section == 1)
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
    tableView = [(PKBalanceDetailsViewController *)self tableView];
    navigationItem = [(PKBalanceDetailsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKBalanceDetailsViewController *)self view];
  [view setNeedsLayout];
}

- (unint64_t)_balanceDetailsRowTypeForRowIndex:(int64_t)index
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

- (int64_t)_numberOfBalanceDetailsRowsEnabledForRowType:(unint64_t)type
{
  if (!type)
  {
    return 1;
  }

  if (type == 1)
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

  activationState = [(PKPaymentPass *)self->_pass activationState];
  if ([(PKPaymentPassAction *)self->_action type]== 1 && activationState - 1 < 2)
  {
    goto LABEL_14;
  }

  isActionAvailable = [(PKPaymentPassAction *)self->_action isActionAvailable];
  if (isActionAvailable)
  {
    if (([(PKPaymentPassAction *)self->_action unavailableActionBehavior]& 2) != 0)
    {
LABEL_14:
      LOBYTE(isActionAvailable) = 0;
      return isActionAvailable;
    }

    if (self->_style == 1)
    {

      LOBYTE(isActionAvailable) = PKIsAltAccountPairedOrPairing();
    }

    else
    {
      LOBYTE(isActionAvailable) = 1;
    }
  }

  return isActionAvailable;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"cell"];
  if (v7)
  {
    v8 = v7;
    [v7 setAccessoryType:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"cell"];
  }

  v9 = [pathCopy row];
  section = [pathCopy section];

  v11 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v11 == 1)
  {
    if (v9 < 1)
    {
      title = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_1.isa);
    }

    else
    {
      v15 = [(NSArray *)self->_reminderAmounts objectAtIndexedSubscript:v9 - 1];
      v16 = PKCurrencyAmountCreate(v15, self->_currencyCode);
      formattedStringValue = [v16 formattedStringValue];

      title = PKLocalizedPaymentString(&cfstr_LowBalanceRemi_0.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
    }

    textLabel = [v8 textLabel];
    [textLabel setText:title];

    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setText:0];

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

    textLabel2 = [v8 textLabel];
    systemBlueColor = PKBridgeAppearanceGetAppearanceSpecifier();
    textColor = [systemBlueColor textColor];
    goto LABEL_20;
  }

  if (v11)
  {
    goto LABEL_28;
  }

  v12 = [(PKBalanceDetailsViewController *)self _balanceDetailsRowTypeForRowIndex:v9];
  if (v12 == 1)
  {
    title = [(PKPaymentPassAction *)self->_action title];
    textLabel3 = [v8 textLabel];
    [textLabel3 setText:title];

    detailTextLabel2 = [v8 detailTextLabel];
    [detailTextLabel2 setText:0];

    style = self->_style;
    textLabel2 = [v8 textLabel];
    if (style != 1)
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v29 = textLabel2;
LABEL_25:
      [v29 setTextColor:systemBlueColor];
      goto LABEL_26;
    }

    systemBlueColor = PKBridgeAppearanceGetAppearanceSpecifier();
    textColor = [systemBlueColor buttonTextColor];
LABEL_20:
    v28 = textColor;
    [textLabel2 setTextColor:textColor];

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  if (!v12)
  {
    textLabel4 = [v8 textLabel];
    localizedTitle = [(PKPaymentBalance *)self->_balance localizedTitle];
    if (localizedTitle)
    {
      [textLabel4 setText:localizedTitle];
    }

    else
    {
      v30 = PKLocalizedPaymentString(&cfstr_BalanceDetailB.isa);
      [textLabel4 setText:v30];
    }

    detailTextLabel3 = [v8 detailTextLabel];
    [detailTextLabel3 setText:self->_currentBalance];

    if (self->_style == 1)
    {
      title = [v8 textLabel];
      textLabel2 = PKBridgeAppearanceGetAppearanceSpecifier();
      systemBlueColor = [textLabel2 textColor];
      v29 = title;
      goto LABEL_25;
    }
  }

LABEL_28:
  if (self->_style == 1)
  {
    v32 = objc_alloc(MEMORY[0x1E69DD250]);
    v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v34 = PKBridgeAppearanceGetAppearanceSpecifier();
    tableViewCellHighlightColor = [v34 tableViewCellHighlightColor];
    [v33 setBackgroundColor:tableViewCellHighlightColor];

    [v8 setSelectedBackgroundView:v33];
  }

  return v8;
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
    v7 = -[PKBalanceDetailsViewController _balanceDetailsRowTypeForRowIndex:](self, "_balanceDetailsRowTypeForRowIndex:", [pathCopy row]) == 1;
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
    [(PKBalanceDetailsViewController *)self _handleReminderAmountChanged:pathCopy];
  }

  else if (!v6 && -[PKBalanceDetailsViewController _balanceDetailsRowTypeForRowIndex:](self, "_balanceDetailsRowTypeForRowIndex:", [pathCopy row]) == 1)
  {
    [(PKBalanceDetailsViewController *)self _handleActionSelected];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 1)
  {
    v4 = PKLocalizedPaymentString(&cfstr_BalanceDetailR.isa);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
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

- (void)performActionViewControllerDidCompleteAutoReload:(id)reload
{
  [(PKBalanceDetailsViewController *)self performActionViewControllerDidPerformAction:reload];
  navigationController = [(PKBalanceDetailsViewController *)self navigationController];
  if ([navigationController pk_settings_useStateDrivenNavigation])
  {
    [navigationController pk_settings_popToRootViewController];
  }

  else
  {
    v4 = [navigationController popToRootViewControllerAnimated:1];
  }
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didReceiveBalanceUpdate:(id)update
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  updateCopy = update;
  uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
  v9 = [uniqueID isEqualToString:identifierCopy];

  if (v9)
  {
    v19 = updateCopy;
    v20 = identifierCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = updateCopy;
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
          identifiers = [v15 identifiers];
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

    updateCopy = v19;
    identifierCopy = v20;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  propertiesCopy = properties;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPaymentPass *)pass uniqueID];
  v10 = [uniqueID isEqualToString:identifierCopy];

  if (v10 && !self->_balance)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __101__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateWithTransitPassProperties___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = propertiesCopy;
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

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalanceWithIdentifier:(id)withIdentifier
{
  reminderCopy = reminder;
  withIdentifierCopy = withIdentifier;
  pass = self->_pass;
  identifierCopy = identifier;
  uniqueID = [(PKPaymentPass *)pass uniqueID];
  LOBYTE(pass) = [uniqueID isEqualToString:identifierCopy];

  if (pass)
  {
    identifiers = [(PKPaymentBalance *)self->_balance identifiers];
    v14 = [identifiers containsObject:withIdentifierCopy];

    if (v14)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __116__PKBalanceDetailsViewController_paymentPassWithUniqueIdentifier_didUpdateBalanceReminder_forBalanceWithIdentifier___block_invoke;
      v15[3] = &unk_1E8010A10;
      v15[4] = self;
      v16 = reminderCopy;
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