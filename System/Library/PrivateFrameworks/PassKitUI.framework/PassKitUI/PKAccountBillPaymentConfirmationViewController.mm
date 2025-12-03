@interface PKAccountBillPaymentConfirmationViewController
- (BOOL)_shouldShowSetupAutoPayView;
- (PKAccountBillPaymentConfirmationViewController)initWithAccount:(id)account paymentPass:(id)pass scheduledPayments:(id)payments;
- (PKAccountBillPaymentConfirmationViewController)initWithAccount:(id)account previousAccountSummary:(id)summary paymentPass:(id)pass payments:(id)payments suggestionList:(id)list interestForPaymentTotal:(id)total interestForStatementBalance:(id)balance;
- (id)_availableCreditText;
- (id)_trailingInterestMonthMidpoint;
- (void)_updateBodyContentViewMessage;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)loadView;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKAccountBillPaymentConfirmationViewController

- (PKAccountBillPaymentConfirmationViewController)initWithAccount:(id)account previousAccountSummary:(id)summary paymentPass:(id)pass payments:(id)payments suggestionList:(id)list interestForPaymentTotal:(id)total interestForStatementBalance:(id)balance
{
  v55 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  summaryCopy = summary;
  passCopy = pass;
  paymentsCopy = payments;
  listCopy = list;
  totalCopy = total;
  balanceCopy = balance;
  v18 = [(PKExplanationViewController *)self init];
  v19 = v18;
  if (v18)
  {
    v44 = summaryCopy;
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v19->_previousAccountSummary, summary);
    objc_storeStrong(&v19->_paymentPass, pass);
    objc_storeStrong(&v19->_payments, payments);
    objc_storeStrong(&v19->_suggestionList, list);
    objc_storeStrong(&v19->_interestForPaymentTotal, total);
    objc_storeStrong(&v19->_interestForStatementBalance, balance);
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v19->_paymentService;
    v19->_paymentService = paymentService;

    zero = [MEMORY[0x1E696AB90] zero];
    pendingPaymentsTotal = v19->_pendingPaymentsTotal;
    v19->_pendingPaymentsTotal = zero;

    v19->_isScheduledPayment = 0;
    v19->_hasRecurringPayments = 0;
    zero2 = [MEMORY[0x1E696AB90] zero];
    paymentsTotal = v19->_paymentsTotal;
    v19->_paymentsTotal = zero2;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v26 = v19->_payments;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(v26);
          }

          currencyAmount = [*(*(&v50 + 1) + 8 * i) currencyAmount];
          amount = [currencyAmount amount];

          v33 = [(NSDecimalNumber *)v19->_paymentsTotal decimalNumberByAdding:amount];
          v34 = v19->_paymentsTotal;
          v19->_paymentsTotal = v33;
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v28);
    }

    creditDetails = [(PKAccount *)v19->_account creditDetails];
    productTimeZone = [creditDetails productTimeZone];

    v37 = objc_alloc_init(MEMORY[0x1E696AB78]);
    productMonthDayFormatter = v19->_productMonthDayFormatter;
    v19->_productMonthDayFormatter = v37;

    [(NSDateFormatter *)v19->_productMonthDayFormatter setTimeZone:productTimeZone];
    [(NSDateFormatter *)v19->_productMonthDayFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
    creditDetails2 = [(PKAccount *)v19->_account creditDetails];
    currencyCode = [creditDetails2 currencyCode];
    v41 = PKMutableNumberFormatterForCurrencyCode();
    amountFormatter = v19->_amountFormatter;
    v19->_amountFormatter = v41;

    summaryCopy = v44;
  }

  return v19;
}

- (PKAccountBillPaymentConfirmationViewController)initWithAccount:(id)account paymentPass:(id)pass scheduledPayments:(id)payments
{
  paymentsCopy = payments;
  v9 = [(PKAccountBillPaymentConfirmationViewController *)self initWithAccount:account previousAccountSummary:0 paymentPass:pass payments:paymentsCopy suggestionList:0 interestForPaymentTotal:0 interestForStatementBalance:0];
  v10 = v9;
  if (v9)
  {
    v9->_isScheduledPayment = 1;
    firstObject = [paymentsCopy firstObject];
    paymentDate = [firstObject paymentDate];
    scheduledDate = v10->_scheduledDate;
    v10->_scheduledDate = paymentDate;
  }

  return v10;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentConfirmationViewController;
  [(PKExplanationViewController *)&v6 loadView];
  v3 = [[PKBillPaymentRingView alloc] initWithSuggestedAmountList:self->_suggestionList delegate:self dataSource:self];
  v4 = [[PKAccountBillPaymentCheckmarkRingView alloc] initWithRingView:v3];
  checkmarkRingView = self->_checkmarkRingView;
  self->_checkmarkRingView = v4;
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = PKAccountBillPaymentConfirmationViewController;
  [(PKExplanationViewController *)&v28 viewDidLoad];
  v3 = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:self->_paymentsTotal];
  [(PKAccount *)self->_account feature];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v27 = v3;
  if (self->_isScheduledPayment)
  {
    v5 = [(NSDateFormatter *)self->_productMonthDayFormatter stringFromDate:self->_scheduledDate];
    v6 = PKLocalizedFeatureString();
    v25 = v3;
    v7 = PKLocalizedFeatureString();
    [explanationView showCheckmark:0 animated:{0, v25, v5}];
  }

  else
  {
    v26 = v3;
    v6 = PKLocalizedFeatureString();
    v7 = PKLocalizedFeatureString();
    _availableCreditText = [(PKAccountBillPaymentConfirmationViewController *)self _availableCreditText];
    if ([_availableCreditText length])
    {
      v9 = [v7 stringByAppendingString:@" "];
      v10 = [v9 stringByAppendingString:_availableCreditText];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = _availableCreditText;
      }

      v13 = v12;

      v7 = v13;
    }

    [explanationView setTopLogoPadding:32.0];
    [explanationView setBodyViewPadding:35.0];
    [explanationView setTitleAccessoriesEnabled:0];
    [explanationView setHeroView:self->_checkmarkRingView];
    [explanationView setHeroViewSizeThatFitsOverride:&__block_literal_global_28];
  }

  ringView = [(PKAccountBillPaymentCheckmarkRingView *)self->_checkmarkRingView ringView];
  [ringView setAmount:self->_paymentsTotal animated:0];
  [ringView setIsSmall:1];
  [ringView completeInitialDisplayAnimated:0];
  checkmarkLayer = [(PKAccountBillPaymentCheckmarkRingView *)self->_checkmarkRingView checkmarkLayer];
  currentStartColor = [ringView currentStartColor];
  [checkmarkLayer setColor:objc_msgSend(currentStartColor animated:{"CGColor"), 0}];

  [explanationView setTitleText:v6];
  [explanationView setBodyText:v7];
  [explanationView setShowPrivacyView:0];
  navigationItem = [(PKAccountBillPaymentConfirmationViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setHidesBackButton:1];
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  titleLabel = [primaryButton titleLabel];
  v21 = PKAccountBillPaymentPrimaryButtonTintColor();
  [primaryButton setTintColor:v21];

  v22 = PKAccountBillPaymentPrimaryButtonTextColor();
  [primaryButton updateTitleColorWithColor:v22];

  [primaryButton setContentEdgeInsets:{0.0, 14.0, 0.0, 14.0}];
  v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 2, 0);
  [titleLabel setFont:v23];
  v24 = PKLocalizedFeatureString();
  [primaryButton setTitle:v24 forState:0];

  [titleLabel setAdjustsFontSizeToFitWidth:1];
}

uint64_t __61__PKAccountBillPaymentConfirmationViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  [a2 sizeThatFits:?];

  return PKSizeScaleAspectFit();
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKAccountBillPaymentConfirmationViewController;
  [(PKAccountBillPaymentConfirmationViewController *)&v5 viewDidAppear:appear];
  if (self->_isScheduledPayment)
  {
    explanationView = [(PKExplanationViewController *)self explanationView];
    [explanationView setShowCheckmark:1];
  }

  else
  {
    explanationView = [(PKAccountBillPaymentCheckmarkRingView *)self->_checkmarkRingView checkmarkLayer];
    [explanationView setRevealed:1 animated:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentConfirmationViewController;
  [(PKAccountBillPaymentConfirmationViewController *)&v6 viewWillDisappear:disappear];
  if (!self->_hasPerformedCategoryAnimation && !self->_isScheduledPayment)
  {
    paymentService = self->_paymentService;
    uniqueID = [(PKPaymentPass *)self->_paymentPass uniqueID];
    [(PKPaymentService *)paymentService recomputeCategoryVisualizationMangitudesForPassUniqueID:uniqueID style:2];

    self->_hasPerformedCategoryAnimation = 1;
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PKAccountBillPaymentConfirmationViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8011130;
  objc_copyWeak(&v10, &location);
  v7 = completionCopy;
  v9 = v7;
  [mEMORY[0x1E69B8400] scheduledPaymentsWithAccountIdentifier:accountIdentifier includeFailedRecurringPayments:1 completion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __74__PKAccountBillPaymentConfirmationViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PKAccountBillPaymentConfirmationViewController_preflightWithCompletion___block_invoke_2;
  block[3] = &unk_1E80111F8;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __74__PKAccountBillPaymentConfirmationViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[138];
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v32 + 1) + 8 * i) referenceIdentifier];
          if ([v11 length])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    v27 = v5;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = a1;
    v12 = *(a1 + 32);
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          v18 = [v17 scheduleDetails];
          if (*(v3 + 1209))
          {
            v19 = 1;
          }

          else
          {
            v19 = [v17 isRecurring];
          }

          *(v3 + 1209) = v19;
          if ([v17 state] == 1 && objc_msgSend(v18, "frequency") == 1)
          {
            v20 = [v17 referenceIdentifier];
            v21 = [v27 containsObject:v20];

            if ((v21 & 1) == 0)
            {
              v22 = [v17 currencyAmount];
              v23 = [v22 amount];

              v24 = [v3[146] decimalNumberByAdding:v23];
              v25 = v3[146];
              v3[146] = v24;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v14);
    }

    [v3 _updateBodyContentViewMessage];
    (*(*(v26 + 40) + 16))();
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  if ([(PKAccountBillPaymentConfirmationViewController *)self _shouldShowSetupAutoPayView])
  {
    v4 = [PKAccountAutomaticPaymentsController alloc];
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    presentingViewController = [(PKAccountAutomaticPaymentsController *)v4 initWithAccountService:mEMORY[0x1E69B8400] paymentWebService:mEMORY[0x1E69B8EF8] account:self->_account context:0];

    v7 = [[PKAccountAutomaticPaymentsViewController alloc] initWithController:presentingViewController showSetupPrompt:1];
    navigationItem = [(PKAccountAutomaticPaymentsViewController *)v7 navigationItem];
    [navigationItem _setNavigationBarHidden:1];

    navigationController = [(PKAccountBillPaymentConfirmationViewController *)self navigationController];
    [navigationController pushViewController:v7 animated:1];

    PKAppleCardSetAutopayPromptPresented();
  }

  else
  {
    presentingViewController = [(PKAccountBillPaymentConfirmationViewController *)self presentingViewController];
    [(PKAccountAutomaticPaymentsController *)presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_updateBodyContentViewMessage
{
  paymentDueDate = [(PKCreditAccountSummary *)self->_previousAccountSummary paymentDueDate];
  _shouldDisplayInterestSummary = [(PKAccountBillPaymentConfirmationViewController *)self _shouldDisplayInterestSummary];
  v4 = paymentDueDate;
  if (!_shouldDisplayInterestSummary)
  {
    goto LABEL_30;
  }

  previousAccountSummary = self->_previousAccountSummary;
  if (!previousAccountSummary || paymentDueDate == 0)
  {
    goto LABEL_30;
  }

  remainingMinimumPayment = [(PKCreditAccountSummary *)previousAccountSummary remainingMinimumPayment];
  v8 = [remainingMinimumPayment decimalNumberBySubtracting:self->_pendingPaymentsTotal];

  v9 = [v8 decimalNumberBySubtracting:self->_paymentsTotal];

  remainingStatementBalance = [(PKCreditAccountSummary *)self->_previousAccountSummary remainingStatementBalance];
  v11 = [remainingStatementBalance decimalNumberBySubtracting:self->_pendingPaymentsTotal];

  v12 = [v11 decimalNumberBySubtracting:self->_paymentsTotal];

  [(PKAccount *)self->_account feature];
  pk_isPositiveNumber = [(NSDecimalNumber *)self->_interestForPaymentTotal pk_isPositiveNumber];
  pk_isPositiveNumber2 = [(NSDecimalNumber *)self->_interestForStatementBalance pk_isPositiveNumber];
  LODWORD(v11) = [v9 pk_isPositiveNumber];
  v39 = v12;
  pk_isPositiveNumber3 = [v12 pk_isPositiveNumber];
  IsSingular = PKHourOfDateIsSingular();
  v16 = PKMediumDayAndLongMonthStringFromDate();
  v17 = [MEMORY[0x1E696AB78] localizedStringFromDate:paymentDueDate dateStyle:0 timeStyle:1];
  v18 = v17;
  if (v11)
  {
    _trailingInterestMonthMidpoint = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:v9];
    v35 = v18;
    v36 = v16;
    v34 = _trailingInterestMonthMidpoint;
    v20 = PKLocalizedFeatureString();
    v21 = @"exclamationmark.triangle";
LABEL_8:
    v22 = v9;
    v23 = v39;
LABEL_23:

    goto LABEL_24;
  }

  v37 = v17;
  if (pk_isPositiveNumber3)
  {
    if (pk_isPositiveNumber2)
    {
      v24 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_STATEMENT_BALANCE_REMAINING_BODY_WITH_TRAILING_INTEREST";
      v25 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_STATEMENT_BALANCE_REMAINING_BODY_WITH_TRAILING_INTEREST_HOUR_ONE";
    }

    else
    {
      if (!pk_isPositiveNumber)
      {
        _trailingInterestMonthMidpoint = 0;
        v23 = v39;
LABEL_22:
        [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:v23];
        v18 = v37;
        v35 = v37;
        v34 = v36 = v16;
        v20 = PKLocalizedFeatureString();

        v21 = @"exclamationmark.triangle";
        v22 = v9;
        goto LABEL_23;
      }

      v24 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_STATEMENT_BALANCE_REMAINING_BODY_NO_TRAILING_INTEREST";
      v25 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_STATEMENT_BALANCE_REMAINING_BODY_NO_TRAILING_INTEREST_HOUR_ONE";
    }

    if (IsSingular)
    {
      v24 = v25;
    }

    v23 = v39;
    _trailingInterestMonthMidpoint = v24;
    goto LABEL_22;
  }

  v18 = v17;
  if ((pk_isPositiveNumber & pk_isPositiveNumber2) == 1)
  {
    _trailingInterestMonthMidpoint = [(PKAccountBillPaymentConfirmationViewController *)self _trailingInterestMonthMidpoint];
    if (_trailingInterestMonthMidpoint)
    {
      productTimeZone = [(PKAccount *)self->_account productTimeZone];
      v27 = PKEndOfNextMonthAndTimeZone();

      v28 = PKMonthStringFromDate();
      PKMediumDayAndLongMonthStringFromDate();
      v35 = v34 = v28;
      v20 = PKLocalizedFeatureString();

      v18 = v37;
      v21 = @"info.circle";
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    goto LABEL_8;
  }

  v21 = 0;
  v20 = 0;
  v22 = v9;
  v23 = v39;
LABEL_24:
  v29 = [(PKExplanationViewController *)self explanationView:v34];
  if ([v20 length])
  {
    messageContentView = self->_messageContentView;
    if (!messageContentView)
    {
      v31 = objc_alloc_init(PKAccountBillPaymentMessageContentView);
      v32 = self->_messageContentView;
      self->_messageContentView = v31;

      [v29 setBodyView:self->_messageContentView];
      messageContentView = self->_messageContentView;
    }

    [(PKAccountBillPaymentMessageContentView *)messageContentView setMessage:v20];
    [(PKAccountBillPaymentMessageContentView *)self->_messageContentView setSystemImage:v21];
    [v29 setNeedsLayout];
  }

  else
  {
    [v29 setBodyView:0];
    v33 = self->_messageContentView;
    self->_messageContentView = 0;
  }

  v4 = paymentDueDate;
LABEL_30:
}

- (id)_availableCreditText
{
  v3 = [(NSArray *)self->_payments pk_firstObjectPassingTest:&__block_literal_global_145];
  expectedCreditReleaseDate = [v3 expectedCreditReleaseDate];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  availableCredit = [accountSummary availableCredit];

  if (availableCredit)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v9 = [zero compare:availableCredit] == -1 || -[PKAccount state](self->_account, "state") == 1;
  }

  else
  {
    v9 = [(PKAccount *)self->_account state]== 1;
  }

  if ([(PKAccount *)self->_account hideBillPaymentHoldTime])
  {
    v10 = 1;
  }

  else
  {
    v10 = !v9;
  }

  if (v10 || expectedCreditReleaseDate == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v13 = [MEMORY[0x1E695DF00] now];
  v14 = PKDateRangeNumberOfIntervalsForUnit();
  if ((v14 - 1) > 4)
  {
    if ((v14 - 6) > 3)
    {
      if ((v14 - 10) > 7)
      {
        v12 = 0;
        goto LABEL_24;
      }

      v16 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_CREDIT_RELEASE_HOLD_2";
    }

    else
    {
      v16 = @"ACCOUNT_SERVICE_BILL_PAYMENT_CONFIRMATION_CREDIT_RELEASE_HOLD_1";
    }

    v12 = PKDynamicLocalizedAppleCardString(&v16->isa);
  }

  else
  {
    v15 = PKMediumDayAndLongMonthStringFromDate();
    v12 = PKDynamicLocalizedAppleCardString(&cfstr_AccountService_87.isa, &cfstr_1_0.isa, v15);
  }

LABEL_24:

LABEL_25:

  return v12;
}

BOOL __70__PKAccountBillPaymentConfirmationViewController__availableCreditText__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 expectedCreditReleaseDate];
  v3 = v2 != 0;

  return v3;
}

- (id)_trailingInterestMonthMidpoint
{
  balanceSummary = [(PKCreditAccountSummary *)self->_previousAccountSummary balanceSummary];
  openingDate = [balanceSummary openingDate];
  closingDate = [balanceSummary closingDate];
  v6 = closingDate;
  if (openingDate)
  {
    v7 = closingDate == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14 = 0;
  }

  else
  {
    v8 = PKDatesMidpoint();
    v9 = objc_alloc(MEMORY[0x1E695DEE8]);
    v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    creditDetails = [(PKAccount *)self->_account creditDetails];
    productTimeZone = [creditDetails productTimeZone];
    [v10 setTimeZone:productTimeZone];

    v13 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v13 setMonth:-2];
    v14 = [v10 dateByAddingComponents:v13 toDate:v8 options:0];
  }

  return v14;
}

- (BOOL)_shouldShowSetupAutoPayView
{
  supportsScheduleRecurringPayments = PKBroadwayAutopayPrompt2024Enabled();
  if (supportsScheduleRecurringPayments)
  {
    if (self->_hasRecurringPayments || [(PKAccount *)self->_account feature]!= 2)
    {
      LOBYTE(supportsScheduleRecurringPayments) = 0;
    }

    else
    {
      supportsScheduleRecurringPayments = [(PKAccount *)self->_account supportsScheduleRecurringPayments];
      if (supportsScheduleRecurringPayments)
      {
        supportsScheduleRecurringPayments = [MEMORY[0x1E69B8770] shouldDisplayScheduledPaymentsWithAccount:self->_account andPass:self->_paymentPass];
        if (supportsScheduleRecurringPayments)
        {
          creditDetails = [(PKAccount *)self->_account creditDetails];
          accountSummary = [creditDetails accountSummary];
          balanceStatus = [accountSummary balanceStatus];

          if (balanceStatus == 2)
          {
            LOBYTE(supportsScheduleRecurringPayments) = 1;
          }

          else
          {
            LOBYTE(supportsScheduleRecurringPayments) = PKAppleCardAutopayPromptPresented() ^ 1;
          }
        }
      }
    }
  }

  return supportsScheduleRecurringPayments;
}

@end