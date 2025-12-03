@interface PKCreditAccountPaymentDetailsViewController
- (BOOL)_showRecurringDay;
- (BOOL)_showRecurringDetailsAmount;
- (BOOL)shouldMapSection:(unint64_t)section;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKCreditAccountPaymentDetailsViewController)initWithAccount:(id)account payment:(id)payment paymentWebService:(id)service overrideViewStyle:(unint64_t)style;
- (PKCreditAccountPaymentDetailsViewControllerDelegate)delegate;
- (id)_cancelPaymentCellForTableView:(id)view;
- (id)_cancellationDateForPayment;
- (id)_hyperlinkFooterView;
- (id)_modifyPaymentCellForTableView:(id)view;
- (id)_paymentAmountToDisplay;
- (id)_stringForPaymentFrequency;
- (id)_stringForPaymentPreset;
- (id)_tableView:(id)view paymentDetailsCellForPaymentDetailsRowAtIndexPath:(id)path;
- (id)_tableView:(id)view recurringPaymentDetailsCellForPaymentDetailsRowAtIndexPath:(id)path;
- (id)_tableView:(id)view recurringPaymentStatusCellForRowAtIndexPath:(id)path;
- (id)_tableView:(id)view recurringPaymentUpcomingPaymentCellForPaymentDetailsRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)_numberOfRecurringPaymentDetailsRows;
- (int64_t)_recurringPaymentDetailsRowTypeForRowAtIndex:(int64_t)index;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_applyDetailViewStylingToCell:(id)cell;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_cancelPayment:(unint64_t)payment;
- (void)_cancelPaymentSelected:(unint64_t)selected sourceView:(id)view;
- (void)_computeRecurringDetailsRowMap;
- (void)_configureDeletePaymentCell:(id)cell;
- (void)_configureDismissCell:(id)cell;
- (void)_configureLinkCell:(id)cell;
- (void)_modifyPaymentSelected;
- (void)_reportEventForPassIfNecessary:(id)necessary;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKCreditAccountPaymentDetailsViewController

- (PKCreditAccountPaymentDetailsViewController)initWithAccount:(id)account payment:(id)payment paymentWebService:(id)service overrideViewStyle:(unint64_t)style
{
  accountCopy = account;
  paymentCopy = payment;
  serviceCopy = service;
  v62.receiver = self;
  v62.super_class = PKCreditAccountPaymentDetailsViewController;
  v14 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v62, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 5);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = accountCopy;
  v17 = paymentCopy;
  objc_storeStrong(&v14->_account, account);
  v15->_featureIdentifier = [v16 feature];
  objc_storeStrong(&v15->_payment, payment);
  v61 = v16;
  creditDetails = [v16 creditDetails];
  accountSummary = [creditDetails accountSummary];
  paymentDueDate = [accountSummary paymentDueDate];
  paymentDueDate = v15->_paymentDueDate;
  v15->_paymentDueDate = paymentDueDate;

  scheduleDetails = [(PKAccountPayment *)v15->_payment scheduleDetails];
  preset = [scheduleDetails preset];

  isRecurring = [(PKAccountPayment *)v15->_payment isRecurring];
  v25 = [(PKAccountPayment *)v15->_payment isOnHoldForAccount:v15->_account];
  v26 = [(PKAccountPayment *)v15->_payment isBeforeNextCycleForAccount:v15->_account];
  if (isRecurring)
  {
    v27 = [(PKAccountPayment *)v15->_payment state]== 4;
  }

  else
  {
    v27 = 0;
  }

  v28 = preset & 0xFFFFFFFFFFFFFFFELL;
  v15->_isFailedRecurringPayment = v27;
  if ([(PKAccountPayment *)v15->_payment willSkipFirstPaymentForAccount:v15->_account])
  {
    v29 = 0;
    v15->_showStatusSection = 1;
  }

  else
  {
    isFailedRecurringPayment = v15->_isFailedRecurringPayment;
    v15->_showStatusSection = isFailedRecurringPayment;
    v29 = isRecurring & !isFailedRecurringPayment;
  }

  v15->_showUpcomingPaymentSection = v29;
  if (v28 == 2)
  {
    v31 = v25 & (v26 ^ 1);
  }

  else
  {
    v31 = 0;
  }

  paymentCopy = v17;
  v15->_isPaymentAmountPending = v31;
  objc_storeStrong(&v15->_paymentWebService, service);
  v15->_viewStyle = style;
  creditDetails2 = [(PKAccount *)v15->_account creditDetails];
  currencyCode = [creditDetails2 currencyCode];
  v34 = PKMutableNumberFormatterForCurrencyCode();
  currencyFormatter = v15->_currencyFormatter;
  v15->_currencyFormatter = v34;

  accountCopy = v61;
  creditDetails3 = [v61 creditDetails];
  productTimeZone = [creditDetails3 productTimeZone];

  v38 = objc_alloc_init(MEMORY[0x1E696AB78]);
  productDateFormatter = v15->_productDateFormatter;
  v15->_productDateFormatter = v38;

  [(NSDateFormatter *)v15->_productDateFormatter setTimeZone:productTimeZone];
  [(NSDateFormatter *)v15->_productDateFormatter setLocalizedDateFormatFromTemplate:@"M/d/yyyy"];
  if ([paymentCopy isRecurring])
  {
    v40 = objc_alloc_init(MEMORY[0x1E696AB78]);
    productDayFormatter = v15->_productDayFormatter;
    v15->_productDayFormatter = v40;

    [(NSDateFormatter *)v15->_productDayFormatter setTimeZone:productTimeZone];
    scheduleDetails2 = [paymentCopy scheduleDetails];
    frequency = [scheduleDetails2 frequency];

    if ((frequency & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v44 = @"EEEE";
LABEL_16:
      [(NSDateFormatter *)v15->_productDayFormatter setLocalizedDateFormatFromTemplate:v44];
      goto LABEL_17;
    }

    if (frequency == 6)
    {
      v44 = @"d";
      goto LABEL_16;
    }
  }

LABEL_17:
  v45 = objc_alloc_init(MEMORY[0x1E696AB78]);
  localTimeFormatter = v15->_localTimeFormatter;
  v15->_localTimeFormatter = v45;

  v47 = v15->_localTimeFormatter;
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(NSDateFormatter *)v47 setLocale:autoupdatingCurrentLocale];

  [(NSDateFormatter *)v15->_localTimeFormatter setLocalizedDateFormatFromTemplate:@"j:mm a z"];
  v49 = objc_alloc_init(MEMORY[0x1E696AB78]);
  localCancellationDateFormatter = v15->_localCancellationDateFormatter;
  v15->_localCancellationDateFormatter = v49;

  v51 = v15->_localCancellationDateFormatter;
  autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [(NSDateFormatter *)v51 setLocale:autoupdatingCurrentLocale2];

  [(NSDateFormatter *)v15->_localCancellationDateFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    navigationItem = [(PKCreditAccountPaymentDetailsViewController *)v15 navigationItem];
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  v54 = objc_alloc_init(MEMORY[0x1E696AB78]);
  productPaymentMonthFormatter = v15->_productPaymentMonthFormatter;
  v15->_productPaymentMonthFormatter = v54;

  [(NSDateFormatter *)v15->_productPaymentMonthFormatter setTimeZone:productTimeZone];
  [(NSDateFormatter *)v15->_productPaymentMonthFormatter setLocalizedDateFormatFromTemplate:@"MMMM"];
  v56 = objc_alloc_init(MEMORY[0x1E696AB78]);
  productPaymentDateFormatter = v15->_productPaymentDateFormatter;
  v15->_productPaymentDateFormatter = v56;

  [(NSDateFormatter *)v15->_productPaymentDateFormatter setTimeZone:productTimeZone];
  [(NSDateFormatter *)v15->_productPaymentDateFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
  v58 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  localizedDayNumberFormatter = v15->_localizedDayNumberFormatter;
  v15->_localizedDayNumberFormatter = v58;

  [(PKCreditAccountPaymentDetailsViewController *)v15 _computeRecurringDetailsRowMap];
LABEL_20:

  return v15;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKCreditAccountPaymentDetailsViewController;
  [(PKSectionTableViewController *)&v28 viewDidLoad];
  tableView = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"LinkCellReuseIdentifier"];
  v4 = objc_opt_class();
  v5 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:0];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:3];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedRowHeight:50.0];
  navigationController = [(PKCreditAccountPaymentDetailsViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  v11 = PKEqualObjects();

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonPressed_];
    navigationItem = [(PKCreditAccountPaymentDetailsViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v12];
  }

  viewStyle = self->_viewStyle;
  if (viewStyle == 2)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [tableView setBackgroundColor:systemBackgroundColor];

    backgroundView = [tableView backgroundView];
    systemBackgroundColor2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [backgroundView setBackgroundColor:systemBackgroundColor2];

LABEL_10:
    goto LABEL_11;
  }

  if (viewStyle == 1)
  {
    backgroundView = PKBridgeAppearanceGetAppearanceSpecifier();
    backgroundColor = [backgroundView backgroundColor];
    [tableView setBackgroundColor:backgroundColor];

    backgroundView2 = [tableView backgroundView];
    backgroundColor2 = [backgroundView backgroundColor];
    [backgroundView2 setBackgroundColor:backgroundColor2];

    tableViewSeparatorColor = [backgroundView tableViewSeparatorColor];
    [tableView setSeparatorColor:tableViewSeparatorColor];

    tintColor = [backgroundView tintColor];
    [tableView setSectionIndexColor:tintColor];

    foregroundColor = [backgroundView foregroundColor];
    [tableView setSectionIndexBackgroundColor:foregroundColor];

    if ([backgroundView hasDarkAppearance])
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    [tableView setIndicatorStyle:v22];
    goto LABEL_10;
  }

LABEL_11:
  [(PKAccountPayment *)self->_payment isRecurring];
  navigationItem2 = [(PKCreditAccountPaymentDetailsViewController *)self navigationItem];
  v26 = PKLocalizedFeatureString();
  [navigationItem2 setTitle:v26];

  view = [(PKCreditAccountPaymentDetailsViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9A28]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKCreditAccountPaymentDetailsViewController;
  [(PKCreditAccountPaymentDetailsViewController *)&v5 viewDidAppear:appear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKCreditAccountPaymentDetailsViewController *)self _reportEventForPassIfNecessary:v4];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKCreditAccountPaymentDetailsViewController;
  [(PKCreditAccountPaymentDetailsViewController *)&v5 viewDidDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKCreditAccountPaymentDetailsViewController *)self _reportEventForPassIfNecessary:v4];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCreditAccountPaymentDetailsViewController;
  [(PKCreditAccountPaymentDetailsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
    navigationItem = [(PKCreditAccountPaymentDetailsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)_computeRecurringDetailsRowMap
{
  if ([(PKAccountPayment *)self->_payment isRecurring])
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v12 setObject:&unk_1F3CC78E0 forKeyedSubscript:v3];

    if ([(PKCreditAccountPaymentDetailsViewController *)self _showRecurringDetailsAmount])
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      [v12 setObject:&unk_1F3CC78F8 forKeyedSubscript:v4];

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5 + 1;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    [v12 setObject:&unk_1F3CC7910 forKeyedSubscript:v7];

    if ([(PKCreditAccountPaymentDetailsViewController *)self _showRecurringDay])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
      [v12 setObject:&unk_1F3CC7928 forKeyedSubscript:v8];

      v6 = v5 + 2;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    [v12 setObject:&unk_1F3CC7940 forKeyedSubscript:v9];

    v10 = [v12 copy];
    recurringDetailsRowMap = self->_recurringDetailsRowMap;
    self->_recurringDetailsRowMap = v10;
  }
}

- (int64_t)_recurringPaymentDetailsRowTypeForRowAtIndex:(int64_t)index
{
  recurringDetailsRowMap = self->_recurringDetailsRowMap;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v5 = [(NSDictionary *)recurringDetailsRowMap objectForKeyedSubscript:v4];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 6;
  }

  return integerValue;
}

- (int64_t)_numberOfRecurringPaymentDetailsRows
{
  if (![(PKAccountPayment *)self->_payment isRecurring])
  {
    return 0;
  }

  if ([(PKCreditAccountPaymentDetailsViewController *)self _showRecurringDetailsAmount])
  {
    v3 = 5;
  }

  else
  {
    v3 = 4;
  }

  return v3 - ([(PKCreditAccountPaymentDetailsViewController *)self _showRecurringDay]^ 1);
}

- (BOOL)_showRecurringDetailsAmount
{
  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  v3 = [scheduleDetails preset] == 1;

  return v3;
}

- (BOOL)_showRecurringDay
{
  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  frequency = [scheduleDetails frequency];

  return (frequency - 4) < 3;
}

- (id)_stringForPaymentPreset
{
  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  preset = [scheduleDetails preset];

  if ((preset - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedFeatureString();
  }

  return v4;
}

- (id)_stringForPaymentFrequency
{
  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  frequency = [scheduleDetails frequency];

  if ((frequency - 4) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = PKLocalizedFeatureString();
  }

  return v4;
}

- (id)_paymentAmountToDisplay
{
  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  preset = [scheduleDetails preset];

  zero = [MEMORY[0x1E696AB90] zero];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];

  if (!self->_isPaymentAmountPending)
  {
    switch(preset)
    {
      case 3:
        remainingStatementBalance = [accountSummary remainingStatementBalance];
        break;
      case 2:
        remainingStatementBalance = [accountSummary remainingMinimumPayment];
        break;
      case 1:
        adjustedBalance = [accountSummary adjustedBalance];
        currencyAmount = [(PKAccountPayment *)self->_payment currencyAmount];
        amount = [currencyAmount amount];

        if ([zero compare:adjustedBalance] == -1)
        {
          zero2 = amount;
        }

        else
        {
          zero2 = [MEMORY[0x1E696AB90] zero];
        }

        v13 = zero2;

        if (!v13)
        {
          goto LABEL_13;
        }

LABEL_10:
        v14 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v13];

        goto LABEL_14;
      default:
        goto LABEL_13;
    }

    v13 = remainingStatementBalance;
    if (remainingStatementBalance)
    {
      goto LABEL_10;
    }
  }

LABEL_13:
  v14 = PKLocalizedFeatureString();
LABEL_14:

  return v14;
}

- (void)_cancelButtonPressed:(id)pressed
{
  presentingViewController = [(PKCreditAccountPaymentDetailsViewController *)self presentingViewController];
  v6 = presentingViewController;
  if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(PKCreditAccountPaymentDetailsViewController *)self navigationController];
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_cancellationDateForPayment
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  productTimeZone = [creditDetails productTimeZone];

  paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
  if (paymentDate)
  {
    v6 = productTimeZone == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E695DEE8]);
    v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [v8 setTimeZone:productTimeZone];
    v9 = [v8 components:28 fromDate:paymentDate];
    v10 = [v8 dateFromComponents:v9];
    v11 = [v10 dateByAddingTimeInterval:-60.0];
  }

  return v11;
}

- (id)_hyperlinkFooterView
{
  hyperlinkFooterView = self->_hyperlinkFooterView;
  if (!hyperlinkFooterView)
  {
    v4 = PKLocalizedFeatureString();
    v5 = PKLocalizedFeatureString();
    v6 = PKStringWithValidatedFormat();
    objc_initWeak(&location, self->_account);
    objc_initWeak(&from, self);
    v7 = objc_alloc_init(PKFooterHyperlinkView);
    v8 = self->_hyperlinkFooterView;
    self->_hyperlinkFooterView = v7;

    v9 = self->_hyperlinkFooterView;
    v10 = PKAttributedStringByAddingLinkToSubstring(v6, v5, 0);
    [(PKFooterHyperlinkView *)v9 setAttributedText:v10, v5];

    v11 = self->_hyperlinkFooterView;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__PKCreditAccountPaymentDetailsViewController__hyperlinkFooterView__block_invoke;
    v16[3] = &unk_1E801BF58;
    objc_copyWeak(&v17, &from);
    objc_copyWeak(&v18, &location);
    v16[4] = self;
    [(PKFooterHyperlinkView *)v11 setAction:v16];
    if (self->_viewStyle == 1)
    {
      v12 = self->_hyperlinkFooterView;
      v13 = PKBridgeAppearanceGetAppearanceSpecifier();
      footerHyperlinkColor = [v13 footerHyperlinkColor];
      [(PKFooterHyperlinkView *)v12 setLinkTextColor:footerHyperlinkColor];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);

    hyperlinkFooterView = self->_hyperlinkFooterView;
  }

  return hyperlinkFooterView;
}

void __67__PKCreditAccountPaymentDetailsViewController__hyperlinkFooterView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = v5;
  if (v5 && WeakRetained)
  {
    v7 = [v5 creditDetails];
    v8 = [v7 termsIdentifier];

    if (v8)
    {
      v9 = 4 * (*(*(a1 + 32) + 1144) == 1);
      v10 = [PKAccountTermsAndConditionsController alloc];
      v11 = [MEMORY[0x1E69B8EF8] sharedService];
      v12 = [(PKAccountTermsAndConditionsController *)v10 initWithAccount:v6 webService:v11 context:v9 termsIdentifier:v8];
      v13 = WeakRetained[145];
      WeakRetained[145] = v12;

      v14 = WeakRetained[145];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __67__PKCreditAccountPaymentDetailsViewController__hyperlinkFooterView__block_invoke_2;
      v15[3] = &unk_1E80162F0;
      objc_copyWeak(&v16, (a1 + 40));
      [v14 termsViewControllerWithCompletion:v15];
      objc_destroyWeak(&v16);
    }
  }
}

void __67__PKCreditAccountPaymentDetailsViewController__hyperlinkFooterView__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, 0, 0);
      v8 = [WeakRetained navigationController];
      [v8 presentViewController:v7 animated:1 completion:0];
    }

    else if (v9)
    {
      [WeakRetained presentViewController:v9 animated:1 completion:0];
    }
  }
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  v4 = 0;
  if (section > 1)
  {
    if (section == 2)
    {
      v7 = 1234;
    }

    else
    {
      if (section != 3)
      {
        if (section == 4)
        {
          v4 = [(PKAccountPayment *)self->_payment state]== 1 && !self->_isFailedRecurringPayment;
        }

        return v4 & 1;
      }

      v7 = 1233;
    }

    v4 = *(&self->super.super.super.super.super.isa + v7);
    return v4 & 1;
  }

  if (!section)
  {
    v4 = [(PKAccountPayment *)self->_payment isRecurring]^ 1;
    return v4 & 1;
  }

  if (section != 1)
  {
    return v4 & 1;
  }

  payment = self->_payment;

  return [(PKAccountPayment *)payment isRecurring];
}

- (void)_applyDetailViewStylingToCell:(id)cell
{
  cellCopy = cell;
  viewStyle = self->_viewStyle;
  if (viewStyle == 2)
  {
    v14 = cellCopy;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v14 setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    if (viewStyle != 1)
    {
      goto LABEL_6;
    }

    v14 = cellCopy;
    textLabel = [cellCopy textLabel];
    v7 = PKBridgeAppearanceGetAppearanceSpecifier();
    textColor = [v7 textColor];
    [textLabel setTextColor:textColor];

    detailTextLabel = [v14 detailTextLabel];
    v10 = PKBridgeAppearanceGetAppearanceSpecifier();
    altTextColor = [v10 altTextColor];
    [detailTextLabel setTextColor:altTextColor];

    secondarySystemBackgroundColor = PKBridgeAppearanceGetAppearanceSpecifier();
    foregroundColor = [secondarySystemBackgroundColor foregroundColor];
    [v14 setBackgroundColor:foregroundColor];
  }

  cellCopy = v14;
LABEL_6:
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKCreditAccountPaymentDetailsViewController *)self view];
  [view setNeedsLayout];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v7 = [pathCopy row];
  switch(v6)
  {
    case 1uLL:
      v9 = [(PKCreditAccountPaymentDetailsViewController *)self _recurringPaymentDetailsRowTypeForRowAtIndex:v7]== 5;
      break;
    case 3uLL:
      if (self->_cancellingPayment)
      {
        goto LABEL_6;
      }

      v9 = [pathCopy row] == 1;
      break;
    case 4uLL:
      v8 = !self->_cancellingPayment;
      goto LABEL_12;
    default:
LABEL_6:
      v8 = 0;
      goto LABEL_12;
  }

  v8 = v9;
LABEL_12:

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(PKSectionTableViewController *)self sectionForIndex:section]== 2)
  {
    v4 = PKLocalizedFeatureString();
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
  if (!v5)
  {
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    if (self->_isPaymentAmountPending)
    {
      v8 = PKLocalizedFeatureString();
      goto LABEL_10;
    }

LABEL_5:
    _cancellationDateForPayment = [(PKCreditAccountPaymentDetailsViewController *)self _cancellationDateForPayment];
    if (_cancellationDateForPayment)
    {
      v7 = [(NSDateFormatter *)self->_localTimeFormatter stringFromDate:_cancellationDateForPayment];
      v10 = [(NSDateFormatter *)self->_localCancellationDateFormatter stringFromDate:_cancellationDateForPayment];
      v8 = PKLocalizedFeatureString();
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v5 == 3)
  {
    if (self->_isFailedRecurringPayment)
    {
      goto LABEL_3;
    }
  }

  else if (v5 == 4)
  {
LABEL_3:
    _hyperlinkFooterView = [(PKCreditAccountPaymentDetailsViewController *)self _hyperlinkFooterView];
    goto LABEL_6;
  }

  _hyperlinkFooterView = 0;
LABEL_6:

  return _hyperlinkFooterView;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {

        return [(PKCreditAccountPaymentDetailsViewController *)self _numberOfRecurringPaymentDetailsRows];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 3;
    }
  }

  else if (result != 2)
  {
    if (result == 3)
    {
      if (self->_isFailedRecurringPayment)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return result == 4;
    }
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_13;
      }

      v10 = [(PKCreditAccountPaymentDetailsViewController *)self _tableView:viewCopy recurringPaymentDetailsCellForPaymentDetailsRowAtIndexPath:pathCopy];
    }

    else
    {
      v10 = [(PKCreditAccountPaymentDetailsViewController *)self _tableView:viewCopy paymentDetailsCellForPaymentDetailsRowAtIndexPath:pathCopy];
    }
  }

  else
  {
    switch(v8)
    {
      case 2:
        v10 = [(PKCreditAccountPaymentDetailsViewController *)self _tableView:viewCopy recurringPaymentUpcomingPaymentCellForPaymentDetailsRowAtIndexPath:pathCopy];
        break;
      case 3:
        v10 = [(PKCreditAccountPaymentDetailsViewController *)self _tableView:viewCopy recurringPaymentStatusCellForRowAtIndexPath:pathCopy];
        break;
      case 4:
        v10 = [(PKCreditAccountPaymentDetailsViewController *)self _cancelPaymentCellForTableView:viewCopy];
        break;
      default:
        goto LABEL_13;
    }
  }

  v9 = v10;
LABEL_13:

  return v9;
}

- (id)_tableView:(id)view paymentDetailsCellForPaymentDetailsRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:0];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  paymentStatusDate = [(PKAccountPayment *)self->_payment paymentStatusDate];
  v11 = paymentStatusDate;
  if (paymentStatusDate)
  {
    paymentDate = paymentStatusDate;
  }

  else
  {
    paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
  }

  v13 = paymentDate;

  v14 = [pathCopy row];
  switch(v14)
  {
    case 2:
      v15 = PKLocalizedFeatureString();
      fundingSource = [(PKAccountPayment *)self->_payment fundingSource];
      displayDescription = [fundingSource displayDescription];

      v17 = MEMORY[0x1E69B9508];
      v21 = 5;
      goto LABEL_11;
    case 1:
      v15 = PKLocalizedFeatureString();
      currencyFormatter = self->_currencyFormatter;
      currencyAmount = [(PKAccountPayment *)self->_payment currencyAmount];
      amount = [currencyAmount amount];
      displayDescription = [(NSNumberFormatter *)currencyFormatter stringFromNumber:amount];

      v17 = MEMORY[0x1E69B9448];
      goto LABEL_9;
    case 0:
      v15 = PKLocalizedFeatureString();
      displayDescription = [(NSDateFormatter *)self->_productDateFormatter stringFromDate:v13];
      v17 = MEMORY[0x1E69B9698];
LABEL_9:
      v21 = 4;
LABEL_11:
      v23 = *v17;
      goto LABEL_13;
  }

  displayDescription = 0;
  v23 = 0;
  v15 = 0;
  v21 = 4;
LABEL_13:
  textLabel = [v9 textLabel];
  [textLabel setText:v15];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:displayDescription];
  [detailTextLabel setLineBreakMode:v21];
  [(PKCreditAccountPaymentDetailsViewController *)self _applyDetailViewStylingToCell:v9];
  PKAccessibilityIDCellSet(v9, v23);

  return v9;
}

- (id)_tableView:(id)view recurringPaymentDetailsCellForPaymentDetailsRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:0];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = [pathCopy row];
  v11 = [(PKCreditAccountPaymentDetailsViewController *)self _recurringPaymentDetailsRowTypeForRowAtIndex:v10];
  v12 = 0;
  v13 = 4;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        v15 = PKLocalizedFeatureString();
        fundingSource = [(PKAccountPayment *)self->_payment fundingSource];
        displayDescription = [fundingSource displayDescription];

        v12 = *MEMORY[0x1E69B9508];
        v13 = 5;
      }

      else
      {
        displayDescription = 0;
        v15 = 0;
        if (v11 == 5)
        {
          v17 = [(PKCreditAccountPaymentDetailsViewController *)self _modifyPaymentCellForTableView:viewCopy];
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }

    scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
    frequency = [scheduleDetails frequency];

    v20 = *MEMORY[0x1E69B96A0];
    v21 = v20;
    if ((frequency & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v15 = PKLocalizedFeatureString();
      productDayFormatter = self->_productDayFormatter;
      paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
      displayDescription = [(NSDateFormatter *)productDayFormatter stringFromDate:paymentDate];
      v24 = MEMORY[0x1E69B9DE8];
    }

    else
    {
      if (frequency != 6)
      {
        displayDescription = 0;
        v12 = v20;
        goto LABEL_28;
      }

      v15 = PKLocalizedFeatureString();
      scheduleDetails2 = [(PKAccountPayment *)self->_payment scheduleDetails];
      scheduledDay = [scheduleDetails2 scheduledDay];

      if (scheduledDay)
      {
        localizedDayNumberFormatter = self->_localizedDayNumberFormatter;
        paymentDate = [MEMORY[0x1E696AD98] numberWithInteger:scheduledDay];
        [(NSNumberFormatter *)localizedDayNumberFormatter stringFromNumber:paymentDate];
      }

      else
      {
        v35 = self->_productDayFormatter;
        paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
        [(NSDateFormatter *)v35 stringFromDate:paymentDate];
      }
      displayDescription = ;
      v24 = MEMORY[0x1E69B9968];
    }

    v12 = *v24;
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_28:
    v15 = PKLocalizedFeatureString();
    goto LABEL_15;
  }

  if (!v11)
  {
    v15 = PKLocalizedFeatureString();
    displayDescription = [(PKCreditAccountPaymentDetailsViewController *)self _stringForPaymentPreset];
    v16 = MEMORY[0x1E69B9D78];
    goto LABEL_14;
  }

  if (v11 == 1)
  {
    v15 = PKLocalizedFeatureString();
    currencyFormatter = self->_currencyFormatter;
    currencyAmount = [(PKAccountPayment *)self->_payment currencyAmount];
    amount = [currencyAmount amount];
    displayDescription = [(NSNumberFormatter *)currencyFormatter stringFromNumber:amount];

    v16 = MEMORY[0x1E69B9448];
    goto LABEL_14;
  }

  displayDescription = 0;
  v15 = 0;
  if (v11 == 2)
  {
    v15 = PKLocalizedFeatureString();
    displayDescription = [(PKCreditAccountPaymentDetailsViewController *)self _stringForPaymentFrequency];
    v16 = MEMORY[0x1E69B9828];
LABEL_14:
    v12 = *v16;
LABEL_15:
    v13 = 4;
  }

LABEL_16:
  textLabel = [v9 textLabel];
  [textLabel setText:v15];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:displayDescription];
  [detailTextLabel setLineBreakMode:v13];
  [(PKCreditAccountPaymentDetailsViewController *)self _applyDetailViewStylingToCell:v9];
  PKAccessibilityIDCellSet(v9, v12);
  v17 = v9;

LABEL_17:

  return v17;
}

- (id)_tableView:(id)view recurringPaymentUpcomingPaymentCellForPaymentDetailsRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:0];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  v10 = [pathCopy row];
  if (v10 == 1)
  {
    v11 = PKLocalizedFeatureString();
    _paymentAmountToDisplay = [(PKCreditAccountPaymentDetailsViewController *)self _paymentAmountToDisplay];
    v16 = MEMORY[0x1E69B9448];
  }

  else
  {
    v11 = 0;
    _paymentAmountToDisplay = 0;
    v13 = 0;
    if (v10)
    {
      goto LABEL_6;
    }

    v11 = PKLocalizedFeatureString();
    productDateFormatter = self->_productDateFormatter;
    paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
    _paymentAmountToDisplay = [(NSDateFormatter *)productDateFormatter stringFromDate:paymentDate];

    v16 = MEMORY[0x1E69B9698];
  }

  v13 = *v16;
LABEL_6:
  textLabel = [v9 textLabel];
  [textLabel setText:v11];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:_paymentAmountToDisplay];

  [(PKCreditAccountPaymentDetailsViewController *)self _applyDetailViewStylingToCell:v9];
  PKAccessibilityIDCellSet(v9, v13);

  return v9;
}

- (id)_tableView:(id)view recurringPaymentStatusCellForRowAtIndexPath:(id)path
{
  v67[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ([path row] == 1)
  {
    v61 = [viewCopy dequeueReusableCellWithIdentifier:@"LinkCellReuseIdentifier"];
    [(PKCreditAccountPaymentDetailsViewController *)self _configureDismissCell:?];
    goto LABEL_17;
  }

  v7 = [(PKCreditAccountPaymentDetailsViewController *)self _reuseIdentifierForSection:3];
  v56 = viewCopy;
  v61 = [viewCopy dequeueReusableCellWithIdentifier:v7];

  scheduleDetails = [(PKAccountPayment *)self->_payment scheduleDetails];
  [scheduleDetails preset];

  viewStyle = self->_viewStyle;
  if (viewStyle == 1)
  {
    v12 = PKBridgeAppearanceGetAppearanceSpecifier();
    foregroundColor = [v12 foregroundColor];
    [v61 setBackgroundColor:foregroundColor];

    v14 = PKBridgeAppearanceGetAppearanceSpecifier();
    textColor = [v14 textColor];

    v15 = PKBridgeAppearanceGetAppearanceSpecifier();
    altTextColor = [v15 altTextColor];
  }

  else
  {
    if (viewStyle == 2)
    {
      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
      [v61 setBackgroundColor:secondarySystemBackgroundColor];
    }

    textColor = [MEMORY[0x1E69DC888] labelColor];
    altTextColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  if (self->_isFailedRecurringPayment)
  {
    v16 = PKLocalizedFeatureString();
    v58 = PKLocalizedFeatureString();
    v54 = PKLocalizedFeatureString();
    [MEMORY[0x1E69DC888] redColor];
    v18 = paymentDate = textColor;
  }

  else
  {
    paymentDate = [(PKAccountPayment *)self->_payment paymentDate];
    v19 = PKLocalizedFeatureString();
    [(NSDateFormatter *)self->_productPaymentMonthFormatter stringFromDate:paymentDate];
    v20 = v59 = textColor;
    v16 = PKStringWithValidatedFormat();
    v21 = PKLocalizedFeatureString();
    v51 = [(NSDateFormatter *)self->_productPaymentDateFormatter stringFromDate:paymentDate, v20];
    v54 = PKStringWithValidatedFormat();

    v18 = v59;
    v58 = 0;
  }

  v22 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40]];
  v23 = [MEMORY[0x1E69DB878] fontWithDescriptor:v22 size:17.0];
  v24 = objc_alloc(MEMORY[0x1E696AD40]);
  v26 = *MEMORY[0x1E69DB650];
  v66[0] = *MEMORY[0x1E69DB648];
  v25 = v66[0];
  v66[1] = v26;
  v67[0] = v23;
  v67[1] = v18;
  v60 = v18;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v55 = v16;
  v53 = [v24 initWithString:v16 attributes:v27];

  v28 = MEMORY[0x1E69DB688];
  v52 = v26;
  if (!v58)
  {
    v37 = v53;
    v38 = v54;
    if (v54)
    {
      goto LABEL_13;
    }

LABEL_15:
    viewCopy = v56;
    v44 = altTextColor;
    goto LABEL_16;
  }

  v29 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];

  v30 = [MEMORY[0x1E69DB878] fontWithDescriptor:v29 size:17.0];

  v31 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v31 setParagraphSpacingBefore:2.0];
  v32 = objc_alloc(MEMORY[0x1E695DF90]);
  v33 = *v28;
  v64[0] = v25;
  v64[1] = v33;
  v65[0] = v30;
  v65[1] = v31;
  v64[2] = v26;
  v65[2] = altTextColor;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];
  v35 = [v32 initWithDictionary:v34];

  v36 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v58 attributes:v35];
  v37 = v53;
  [v53 appendAttributedString:v36];

  v22 = v29;
  v23 = v30;
  v38 = v54;
  if (!v54)
  {
    goto LABEL_15;
  }

LABEL_13:
  v39 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:{*MEMORY[0x1E69DDCF8], v51}];

  v40 = [MEMORY[0x1E69DB878] fontWithDescriptor:v39 size:15.0];

  v41 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v41 setParagraphSpacingBefore:6.0];
  v42 = objc_alloc(MEMORY[0x1E695DF90]);
  v43 = *MEMORY[0x1E69DB688];
  v62[0] = v25;
  v62[1] = v43;
  v63[0] = v40;
  v63[1] = v41;
  v62[2] = v52;
  v44 = altTextColor;
  v63[2] = altTextColor;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
  v46 = [v42 initWithDictionary:v45];

  v47 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v38 attributes:v46];
  [v37 appendAttributedString:v47];

  v22 = v39;
  v23 = v40;
  viewCopy = v56;
LABEL_16:
  textLabel = [v61 textLabel];
  [textLabel setAttributedText:v37];

  textLabel2 = [v61 textLabel];
  [textLabel2 setNumberOfLines:0];

  PKAccessibilityIDCellSet(v61, *MEMORY[0x1E69B9CC0]);
LABEL_17:

  return v61;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v7 = -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  switch(v7)
  {
    case 1uLL:
      if (-[PKCreditAccountPaymentDetailsViewController _recurringPaymentDetailsRowTypeForRowAtIndex:](self, "_recurringPaymentDetailsRowTypeForRowAtIndex:", [pathCopy row]) == 5)
      {
        [(PKCreditAccountPaymentDetailsViewController *)self _modifyPaymentSelected];
      }

      break;
    case 3uLL:
      if ([pathCopy row] == 1)
      {
        [(PKCreditAccountPaymentDetailsViewController *)self _cancelPayment:3];
      }

      break;
    case 4uLL:
      v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(PKCreditAccountPaymentDetailsViewController *)self _cancelPaymentSelected:4 sourceView:v8];

      break;
  }
}

- (void)_cancelPaymentSelected:(unint64_t)selected sourceView:(id)view
{
  viewCopy = view;
  if (!self->_cancellingPayment)
  {
    objc_initWeak(&location, self);
    [(PKAccountPayment *)self->_payment isRecurring];
    v7 = PKLocalizedFeatureString();
    v8 = PKLocalizedFeatureString();
    v9 = PKLocalizedFeatureString();
    v10 = PKLocalizedFeatureString();
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v8 preferredStyle:{0, v7}];
    popoverPresentationController = [v11 popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    v13 = MEMORY[0x1E69DC648];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __81__PKCreditAccountPaymentDetailsViewController__cancelPaymentSelected_sourceView___block_invoke;
    v17[3] = &unk_1E801BF80;
    objc_copyWeak(v18, &location);
    v18[1] = selected;
    v14 = [v13 actionWithTitle:v9 style:2 handler:v17];
    [v11 addAction:v14];

    v15 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:1 handler:0];
    [v11 addAction:v15];

    [(PKCreditAccountPaymentDetailsViewController *)self presentViewController:v11 animated:1 completion:0];
    objc_destroyWeak(v18);

    objc_destroyWeak(&location);
  }
}

void __81__PKCreditAccountPaymentDetailsViewController__cancelPaymentSelected_sourceView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _cancelPayment:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_modifyPaymentSelected
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_GenericFeature.isa);
  v8 = [v3 alertControllerWithTitle:v4 message:0 preferredStyle:1];

  v5 = MEMORY[0x1E69DC648];
  v6 = PKLocalizedString(&cfstr_GenericFeature_0.isa);
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];
  [v8 addAction:v7];

  [(PKCreditAccountPaymentDetailsViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (id)_cancelPaymentCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"LinkCellReuseIdentifier"];
  [(PKCreditAccountPaymentDetailsViewController *)self _configureDeletePaymentCell:v4];
  PKAccessibilityIDCellSet(v4, *MEMORY[0x1E69B95A0]);

  return v4;
}

- (id)_modifyPaymentCellForTableView:(id)view
{
  v4 = [view dequeueReusableCellWithIdentifier:@"LinkCellReuseIdentifier"];
  [(PKCreditAccountPaymentDetailsViewController *)self _configureLinkCell:v4];
  [(PKAccountPayment *)self->_payment isRecurring];
  textLabel = [v4 textLabel];
  v6 = PKLocalizedFeatureString();
  [textLabel setText:v6];

  PKAccessibilityIDCellSet(v4, *MEMORY[0x1E69B9960]);

  return v4;
}

- (void)_configureDeletePaymentCell:(id)cell
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  if (self->_cancellingPayment)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [cellCopy setAccessoryView:v5];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [textLabel setTextColor:tertiaryLabelColor];
  }

  else
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    [textLabel setTextColor:redColor];

    [cellCopy setAccessoryView:0];
  }

  [(PKAccountPayment *)self->_payment isRecurring];
  v8 = PKLocalizedFeatureString();
  [textLabel setText:v8];

  viewStyle = self->_viewStyle;
  if (viewStyle == 2)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    if (viewStyle != 1)
    {
      goto LABEL_9;
    }

    secondarySystemBackgroundColor = PKBridgeAppearanceGetAppearanceSpecifier();
    foregroundColor = [secondarySystemBackgroundColor foregroundColor];
    [cellCopy setBackgroundColor:foregroundColor];
  }

LABEL_9:
  PKAccessibilityIDCellSet(cellCopy, *MEMORY[0x1E69B95A0]);
}

- (void)_configureDismissCell:(id)cell
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  if (self->_cancellingPayment)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [cellCopy setAccessoryView:v5];
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [textLabel setTextColor:systemGrayColor];
  }

  else
  {
    tableView = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
    tintColor = [tableView tintColor];
    [textLabel setTextColor:tintColor];

    [cellCopy setAccessoryView:0];
  }

  v9 = PKLocalizedFeatureString();
  [textLabel setText:v9];

  viewStyle = self->_viewStyle;
  if (viewStyle == 2)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    if (viewStyle != 1)
    {
      goto LABEL_9;
    }

    secondarySystemBackgroundColor = PKBridgeAppearanceGetAppearanceSpecifier();
    foregroundColor = [secondarySystemBackgroundColor foregroundColor];
    [cellCopy setBackgroundColor:foregroundColor];
  }

LABEL_9:
  PKAccessibilityIDCellSet(cellCopy, *MEMORY[0x1E69B9708]);
}

- (void)_configureLinkCell:(id)cell
{
  cellCopy = cell;
  textLabel = [cellCopy textLabel];
  tableView = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
  tintColor = [tableView tintColor];
  [textLabel setTextColor:tintColor];

  [cellCopy setAccessoryView:0];
  viewStyle = self->_viewStyle;
  if (viewStyle == 2)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    if (viewStyle != 1)
    {
      goto LABEL_6;
    }

    secondarySystemBackgroundColor = PKBridgeAppearanceGetAppearanceSpecifier();
    foregroundColor = [secondarySystemBackgroundColor foregroundColor];
    [cellCopy setBackgroundColor:foregroundColor];
  }

LABEL_6:
}

- (void)_cancelPayment:(unint64_t)payment
{
  if (!self->_cancellingPayment)
  {
    self->_cancellingPayment = 1;
    v5 = self->_payment;
    if (payment == 4)
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 4)}];
      tableView = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
      v8 = [tableView cellForRowAtIndexPath:v6];

      [(PKCreditAccountPaymentDetailsViewController *)self _configureDeletePaymentCell:v8];
    }

    else
    {
      if (payment != 3)
      {
        v6 = 0;
        goto LABEL_8;
      }

      v6 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:{-[PKSectionTableViewController indexForSection:](self, "indexForSection:", 3)}];
      tableView2 = [(PKCreditAccountPaymentDetailsViewController *)self tableView];
      v8 = [tableView2 cellForRowAtIndexPath:v6];

      [(PKCreditAccountPaymentDetailsViewController *)self _configureDismissCell:v8];
    }

LABEL_8:
    referenceIdentifier = [(PKAccountPayment *)v5 referenceIdentifier];
    v11 = objc_alloc_init(MEMORY[0x1E69B8480]);
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    [v11 setAccountIdentifier:accountIdentifier];

    accountBaseURL = [(PKAccount *)self->_account accountBaseURL];
    [v11 setBaseURL:accountBaseURL];

    [v11 setPaymentReferenceIdentifier:referenceIdentifier];
    objc_initWeak(&location, self);
    paymentWebService = self->_paymentWebService;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke;
    v17[3] = &unk_1E801BFF8;
    v17[4] = self;
    objc_copyWeak(v20, &location);
    v15 = v5;
    v18 = v15;
    v16 = v6;
    v19 = v16;
    v20[1] = payment;
    [(PKPaymentWebService *)paymentWebService cancelPaymentWithRequest:v11 completion:v17];

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69B8400] sharedInstance];
  v8 = *(*(a1 + 32) + 1104);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke_2;
  v14[3] = &unk_1E801BFD0;
  objc_copyWeak(v19, (a1 + 56));
  v9 = v5;
  v15 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v16 = v10;
  v17 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v18 = v12;
  v19[1] = v13;
  [v7 updateScheduledPaymentsWithAccount:v8 completion:v14];

  objc_destroyWeak(v19);
}

void __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke_3;
  block[3] = &unk_1E801BFA8;
  objc_copyWeak(v17, (a1 + 64));
  v12 = *(a1 + 32);
  v13 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v14 = v5;
  v15 = v6;
  v8 = v7;
  v9 = *(a1 + 72);
  v16 = v8;
  v17[1] = v9;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v17);
}

void __62__PKCreditAccountPaymentDetailsViewController__cancelPayment___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v15 = WeakRetained;
    if (*(a1 + 32) && !*(a1 + 40))
    {
      v10 = objc_loadWeakRetained(WeakRetained + 156);
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        [*(a1 + 48) setState:3];
        v12 = objc_loadWeakRetained(v15 + 156);
        [v12 paymentDetailsViewController:v15 didCancelPayment:*(a1 + 48)];
      }

      v4 = [v15 navigationController];
      v8 = [v4 topViewController];
      if (v8 == v15 || ([v15 parentViewController], v13 = objc_claimAutoreleasedReturnValue(), v13, v8 == v13))
      {
        if ([v4 pk_settings_useStateDrivenNavigation])
        {
          [v4 pk_settings_popViewController];
        }

        else
        {
          v14 = [v4 popViewControllerAnimated:1];
        }
      }
    }

    else
    {
      *(*(a1 + 56) + 1232) = 0;
      v3 = [WeakRetained tableView];
      v4 = [v3 cellForRowAtIndexPath:*(a1 + 64)];

      v5 = *(a1 + 80);
      if (v5 == 4)
      {
        v6 = [v15 tableView];
        v7 = [v6 cellForRowAtIndexPath:*(a1 + 64)];

        [v15 _configureDeletePaymentCell:v7];
      }

      else if (v5 == 3)
      {
        [v15 _configureDismissCell:v4];
      }

      v8 = [PKAccountFlowController displayableErrorForError:*(a1 + 40) featureIdentifier:v15[140] genericErrorTitle:0 genericErrorMessage:0];
      v9 = PKAlertForDisplayableErrorWithHandlers(v8, 0, 0, 0);
      [v15 presentViewController:v9 animated:1 completion:0];
    }

    WeakRetained = v15;
  }
}

- (void)_reportEventForPassIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForAccount:self->_account];
  if (necessaryCopy && v4)
  {
    v5 = [necessaryCopy mutableCopy];
    [v5 setObject:*MEMORY[0x1E69BA5A8] forKey:*MEMORY[0x1E69BABE8]];
    v6 = MEMORY[0x1E69B8540];
    v7 = [v5 copy];
    [v6 subject:v4 sendEvent:v7];
  }
}

- (PKCreditAccountPaymentDetailsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end