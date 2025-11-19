@interface PKAccountBillPaymentPayLaterViewController
- (PKAccountBillPaymentObserver)observer;
- (PKAccountBillPaymentPayLaterViewController)initWithAccount:(id)a3 accountUserCollection:(id)a4 billPaymentController:(id)a5 transactionSource:(id)a6 suggestionList:(id)a7 selectedAmount:(id)a8;
- (double)_payButtonTopPadding;
- (double)_sideMargin;
- (id)_addBankAccountInformationViewController;
- (id)_dateForRow:(int64_t)a3;
- (id)_dateStringForRow:(int64_t)a3 formatter:(id)a4;
- (id)_interestForSelectedDate:(id)a3;
- (id)_payOnTitle;
- (id)_stripTimeFromDate:(id)a3;
- (id)presentationSceneIdentifierForAccountBillPaymentController:(id)a3;
- (void)_accountDidChange:(id)a3;
- (void)_dismissViewControllerWithSuccess:(BOOL)a3;
- (void)_payOnButtonTapped:(id)a3;
- (void)_performBillPaymentWithAmount:(id)a3 scheduledDate:(id)a4 billPaymentSuggestedAmountDataEvent:(id)a5;
- (void)_presentAddBankAccount;
- (void)_presentAlertControllerForError:(id)a3;
- (void)_setEnabled:(BOOL)a3;
- (void)_setNavigationBarEnabled:(BOOL)a3;
- (void)_updateLabelText;
- (void)accountBillPaymentController:(id)a3 hasChangedState:(unint64_t)a4 error:(id)a5 updatedAccount:(id)a6;
- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4;
- (void)addBankAccountInformationViewControllerDidFinish:(id)a3;
- (void)billPaymentPayInterestDescriptionViewHasTappedLearnMore:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAccountBillPaymentPayLaterViewController

- (PKAccountBillPaymentPayLaterViewController)initWithAccount:(id)a3 accountUserCollection:(id)a4 billPaymentController:(id)a5 transactionSource:(id)a6 suggestionList:(id)a7 selectedAmount:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v70 = a6;
  v69 = a7;
  v68 = a8;
  v71.receiver = self;
  v71.super_class = PKAccountBillPaymentPayLaterViewController;
  v18 = [(PKAccountBillPaymentPayLaterViewController *)&v71 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    v67 = v16;
    objc_storeStrong(&v18->_account, a3);
    objc_storeStrong(&v19->_accountUserCollection, a4);
    objc_storeStrong(&v19->_transactionSource, a6);
    objc_storeStrong(&v19->_billPaymentCoordinator, a5);
    [(PKAccountBillPaymentController *)v19->_billPaymentCoordinator setDelegate:v19];
    objc_storeStrong(&v19->_suggestionList, a7);
    objc_storeStrong(&v19->_selectedAmount, a8);
    v66 = [(PKAccount *)v19->_account creditDetails];
    v20 = [v66 accountSummary];
    v21 = [v20 remainingStatementBalance];
    remainingStatementBalance = v19->_remainingStatementBalance;
    v19->_remainingStatementBalance = v21;

    v23 = [v15 creditDetails];
    v24 = [v23 rates];
    v25 = [v24 aprForPurchases];
    apr = v19->_apr;
    v19->_apr = v25;

    v19->_currentPickerViewRow[0] = -1;
    v27 = objc_alloc(MEMORY[0x1E695DEE8]);
    v28 = *MEMORY[0x1E695D850];
    v29 = [v27 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    productCalendar = v19->_productCalendar;
    v19->_productCalendar = v29;

    v31 = v19->_productCalendar;
    v32 = [v15 creditDetails];
    v33 = [v32 productTimeZone];
    [(NSCalendar *)v31 setTimeZone:v33];

    v34 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v28];
    localCalendar = v19->_localCalendar;
    v19->_localCalendar = v34;

    v36 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatterDayOfWeek = v19->_dateFormatterDayOfWeek;
    v19->_dateFormatterDayOfWeek = v36;

    v38 = v19->_dateFormatterDayOfWeek;
    v39 = [v15 creditDetails];
    v40 = [v39 productTimeZone];
    [(NSDateFormatter *)v38 setTimeZone:v40];

    v41 = v19->_dateFormatterDayOfWeek;
    v42 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v41 setLocale:v42];

    [(NSDateFormatter *)v19->_dateFormatterDayOfWeek setLocalizedDateFormatFromTemplate:@"EEEE, MMMM d"];
    [(NSDateFormatter *)v19->_dateFormatterDayOfWeek setFormattingContext:2];
    v43 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v19->_dateFormatter;
    v19->_dateFormatter = v43;

    v45 = v19->_dateFormatter;
    v46 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v45 setLocale:v46];

    v47 = v19->_dateFormatter;
    v48 = [v15 creditDetails];
    v49 = [v48 productTimeZone];
    [(NSDateFormatter *)v47 setTimeZone:v49];

    [(NSDateFormatter *)v19->_dateFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
    v50 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v50 setDay:1];
    v51 = v19->_productCalendar;
    v52 = [MEMORY[0x1E695DF00] date];
    v53 = [(NSCalendar *)v51 dateByAddingComponents:v50 toDate:v52 options:0];

    v54 = [(PKAccountBillPaymentPayLaterViewController *)v19 _stripTimeFromDate:v53];
    minDate = v19->_minDate;
    v19->_minDate = v54;

    v56 = [v20 paymentDueDate];
    if (!v56 || [v15 isClosedAndChargedOff])
    {
      v57 = PKEndOfNextMonth();

      v56 = v57;
    }

    v58 = [(PKAccountBillPaymentPayLaterViewController *)v19 _stripTimeFromDate:v56];
    maxDate = v19->_maxDate;
    v19->_maxDate = v58;

    v60 = v19->_maxDate;
    if (!v60)
    {
      objc_storeStrong(&v19->_maxDate, v19->_minDate);
      v60 = v19->_maxDate;
    }

    v61 = [(NSCalendar *)v19->_productCalendar components:16 fromDate:v19->_minDate toDate:v60 options:0];
    v19->_numDays = [v61 day] + 1;

    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v62 = [(PKAccountBillPaymentPayLaterViewController *)v19 navigationItem];
      v63 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v63 configureWithTransparentBackground];
      [v62 setStandardAppearance:v63];
    }

    v64 = [MEMORY[0x1E696AD88] defaultCenter];
    [v64 addObserver:v19 selector:sel__accountDidChange_ name:*MEMORY[0x1E69B9E60] object:0];

    v16 = v67;
  }

  return v19;
}

- (void)dealloc
{
  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v4 = self->_CLInUse;
    self->_CLInUse = 0;
  }

  v5.receiver = self;
  v5.super_class = PKAccountBillPaymentPayLaterViewController;
  [(PKAccountBillPaymentPayLaterViewController *)&v5 dealloc];
}

- (void)loadView
{
  v56.receiver = self;
  v56.super_class = PKAccountBillPaymentPayLaterViewController;
  [(PKAccountBillPaymentPayLaterViewController *)&v56 loadView];
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v3 pkui_applyContainerConcentricCornerConfiguration];

  [(PKAccount *)self->_account feature];
  v4 = PKUIGetMinScreenWidthType();
  v5 = PKLocalizedFeatureString();
  v6 = PKOBKTextAlignment();
  v52 = v5;
  if (v4 || PKIsVision())
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    payLaterTitleLabel = self->_payLaterTitleLabel;
    self->_payLaterTitleLabel = v7;

    [(UILabel *)self->_payLaterTitleLabel setTextAlignment:v6];
    [(UILabel *)self->_payLaterTitleLabel setText:v5];
    v9 = _UISolariumFeatureFlagEnabled();
    v10 = self->_payLaterTitleLabel;
    if (v9)
    {
      v11 = PKOBKHeaderTitleFont();
      [(UILabel *)v10 setFont:v11];

      v12 = self->_payLaterTitleLabel;
      v13 = PKOBKHeaderTitleTextColor();
      [(UILabel *)v12 setTextColor:v13];
    }

    else
    {
      v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB0], *MEMORY[0x1E69DDC58], 32770, 0);
      [(UILabel *)v10 setFont:v13];
    }

    [(UILabel *)self->_payLaterTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_payLaterTitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  }

  else
  {
    [(PKAccountBillPaymentPayLaterViewController *)self setTitle:v5];
  }

  v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  whenToPayQuestionLabel = self->_whenToPayQuestionLabel;
  self->_whenToPayQuestionLabel = v14;

  [(UILabel *)self->_whenToPayQuestionLabel setTextAlignment:v6];
  v16 = self->_whenToPayQuestionLabel;
  v17 = [(PKAccount *)self->_account creditDetails];
  v18 = [v17 currencyCode];
  v19 = PKFormattedCurrencyStringFromNumber();
  v20 = PKLocalizedFeatureString();
  [(UILabel *)v16 setText:v20, v19];

  v21 = _UISolariumFeatureFlagEnabled();
  v22 = self->_whenToPayQuestionLabel;
  v23 = MEMORY[0x1E69DDC38];
  if (v21)
  {
    v24 = PKOBKHeaderSubtitleFont();
    [(UILabel *)v22 setFont:v24];

    v25 = self->_whenToPayQuestionLabel;
    v26 = PKOBKHeaderSubtitleTextColor();
    [(UILabel *)v25 setTextColor:v26];
  }

  else
  {
    v26 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 0x8000, 0);
    [(UILabel *)v22 setFont:v26];
  }

  [(UILabel *)self->_whenToPayQuestionLabel setNumberOfLines:0];
  [(UILabel *)self->_whenToPayQuestionLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  v27 = objc_alloc_init(_PKContinuousPickerView);
  datePicker = self->_datePicker;
  self->_datePicker = &v27->super;

  [(UIPickerView *)self->_datePicker setDelegate:self];
  [(UIPickerView *)self->_datePicker setDataSource:self];
  v29 = [[PKAccountBillPaymentPayInterestDescriptionView alloc] initWithAccount:self->_account];
  interestDescriptionView = self->_interestDescriptionView;
  self->_interestDescriptionView = v29;

  v31 = [(PKAccount *)self->_account creditDetails];
  v32 = [v31 accountSummary];
  v33 = [v32 paymentDueDate];

  if ([(PKAccount *)self->_account showBillPaymentInterest])
  {
    [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView setInterestChargeDate:v33];
  }

  [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView setDelegate:self];
  if (_UISolariumFeatureFlagEnabled())
  {
    v34 = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    v35 = PKAccountBillPaymentPrimaryButtonTextColor();
    [v34 setBaseForegroundColor:v35];

    [v34 setContentInsets:{0.0, 14.0, 0.0, 14.0}];
    [v34 setTitleTextAttributesTransformer:&__block_literal_global_123];
    v36 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v34 primaryAction:0];
    payOnButton = self->_payOnButton;
    self->_payOnButton = v36;

    objc_initWeak(&location, self);
    v38 = self->_payOnButton;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __54__PKAccountBillPaymentPayLaterViewController_loadView__block_invoke_2;
    v53[3] = &unk_1E8013CE8;
    objc_copyWeak(&v54, &location);
    [(UIButton *)v38 setConfigurationUpdateHandler:v53];
    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  else
  {
    v39 = PKCreateLargeSolidButton();
    v40 = self->_payOnButton;
    self->_payOnButton = v39;

    v41 = self->_payOnButton;
    v42 = +[PKAccountBillPaymentViewController backgroundColor];
    [(UIButton *)v41 updateTitleColorWithColor:v42];

    v43 = [(UIButton *)self->_payOnButton titleLabel];
    v44 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *v23, 2, 0);
    v45 = [v44 pk_fixedWidthFont];
    [v43 setFont:v45];

    [(UIButton *)self->_payOnButton setContentEdgeInsets:0.0, 14.0, 0.0, 14.0];
  }

  v46 = self->_payOnButton;
  v47 = PKAccountBillPaymentPrimaryButtonTintColor();
  [(UIButton *)v46 setTintColor:v47];

  v48 = [(UIButton *)self->_payOnButton titleLabel];
  [v48 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)self->_payOnButton addTarget:self action:sel__payOnButtonTapped_ forControlEvents:64];
  [(UIButton *)self->_payOnButton setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  v49 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  v50 = +[PKAccountBillPaymentViewController backgroundColor];
  [v49 setBackgroundColor:v50];

  [v49 addSubview:self->_payLaterTitleLabel];
  [v49 addSubview:self->_whenToPayQuestionLabel];
  [v49 addSubview:self->_datePicker];
  [v49 addSubview:self->_payOnButton];
  [v49 addSubview:self->_interestDescriptionView];
  [(PKAccountBillPaymentPayLaterViewController *)self _updateLabelText];
  v51 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v51 setAccessibilityIdentifier:*MEMORY[0x1E69B9A18]];
}

id __54__PKAccountBillPaymentPayLaterViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], *MEMORY[0x1E69DB970]);
  v4 = [v3 pk_fixedWidthFont];

  [v2 setObject:v4 forKey:*MEMORY[0x1E69DB648]];

  return v2;
}

void __54__PKAccountBillPaymentPayLaterViewController_loadView__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 configuration];
    [v4 setShowsActivityIndicator:WeakRetained[1144]];
    if (WeakRetained[1144] == 1)
    {
      [v4 setTitle:0];
    }

    else
    {
      v5 = [WeakRetained _payOnTitle];
      [v4 setTitle:v5];
    }

    [v6 setConfiguration:v4];
  }
}

- (void)viewWillLayoutSubviews
{
  v41.receiver = self;
  v41.super_class = PKAccountBillPaymentPayLaterViewController;
  [(PKAccountBillPaymentPayLaterViewController *)&v41 viewWillLayoutSubviews];
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v13 = v12;
  v15 = v14;
  [(PKAccountBillPaymentPayLaterViewController *)self _sideMargin];
  v17 = v16;
  if (_UISolariumFeatureFlagEnabled())
  {
    v18 = v13 + 20.0;
  }

  else
  {
    v18 = v13;
  }

  v19 = _UISolariumFeatureFlagEnabled();
  v20 = v15 + 5.0;
  if (v19)
  {
    v20 = 0.0;
  }

  v21 = v9 - (v17 + v17);
  remainder.origin.x = v5 + v17;
  remainder.origin.y = v7 + v18;
  remainder.size.width = v21;
  remainder.size.height = v11 - (v18 + v20);
  memset(&v39, 0, sizeof(v39));
  _UISolariumFeatureFlagEnabled();
  if (_UISolariumFeatureFlagEnabled())
  {
    PKContentAlignmentMake();
  }

  if (self->_payLaterTitleLabel)
  {
    if ((PKIsVision() & 1) == 0 && (_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      if (PKUIGetMinScreenWidthType() <= 4)
      {
        v22 = 7.0;
      }

      else
      {
        v22 = 15.0;
      }

      CGRectDivide(remainder, &v39, &remainder, v22, CGRectMinYEdge);
    }

    [(UILabel *)self->_payLaterTitleLabel sizeThatFits:v9 - (v17 + v17), 3.40282347e38, *&v39.origin, *&v39.size];
    CGRectDivide(remainder, &v39, &remainder, v23, CGRectMinYEdge);
    PKSizeAlignedInRect();
    [(UILabel *)self->_payLaterTitleLabel setFrame:?];
  }

  else if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    CGRectDivide(remainder, &v39, &remainder, 20.0, CGRectMinYEdge);
  }

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    CGRectDivide(remainder, &v39, &remainder, 15.0, CGRectMinYEdge);
  }

  [(UILabel *)self->_whenToPayQuestionLabel sizeThatFits:v21, 3.40282347e38, *&v39.origin, *&v39.size];
  CGRectDivide(remainder, &v39, &remainder, v24, CGRectMinYEdge);
  PKSizeAlignedInRect();
  [(UILabel *)self->_whenToPayQuestionLabel setFrame:?];
  width = remainder.size.width;
  if (_UISolariumFeatureFlagEnabled())
  {
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    v26 = CGRectGetMaxY(v42) + -50.0;
    v27 = [(PKAccountBillPaymentPayLaterViewController *)self view];
    [v27 _concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v26, v9, 50.0, 0.0, 28.0, 28.0, 28.0}];
    v29 = v28;
    v31 = v30;
    v33 = v32;

    width = v9 - (v29 + v33);
    CGRectDivide(remainder, &v39, &remainder, v31, CGRectMaxYEdge);
  }

  [(UIButton *)self->_payOnButton sizeThatFits:width, 3.40282347e38];
  if (v34 >= 50.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 50.0;
  }

  CGRectDivide(remainder, &v39, &remainder, v35, CGRectMaxYEdge);
  PKSizeAlignedInRect();
  [(UIButton *)self->_payOnButton setFrame:?];
  [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView sizeThatFits:v21, 3.40282347e38];
  v37 = v36;
  [(PKAccountBillPaymentPayLaterViewController *)self _payButtonTopPadding];
  CGRectDivide(remainder, &v39, &remainder, v38, CGRectMaxYEdge);
  CGRectDivide(remainder, &v39, &remainder, v37, CGRectMaxYEdge);
  PKSizeAlignedInRect();
  [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView setFrame:?];
  _UISolariumFeatureFlagEnabled();
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    CGRectDivide(remainder, &v39, &remainder, 20.0, CGRectMinYEdge);
  }

  PKSizeAlignedInRect();
  [(UIPickerView *)self->_datePicker setFrame:?];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKAccountBillPaymentPayLaterViewController;
  [(PKAccountBillPaymentPayLaterViewController *)&v6 viewWillDisappear:a3];
  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v5 = self->_CLInUse;
    self->_CLInUse = 0;
  }
}

- (void)accountBillPaymentController:(id)a3 hasChangedState:(unint64_t)a4 error:(id)a5 updatedAccount:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  self->_performingAction = 0;
  switch(a4)
  {
    case 2uLL:
      [(PKAccountBillPaymentPayLaterViewController *)self _setEnabled:1];
      break;
    case 1uLL:
      if (v12)
      {
        objc_storeStrong(&self->_account, a6);
      }

      WeakRetained = objc_loadWeakRetained(&self->_observer);
      if (objc_opt_respondsToSelector())
      {
        v15 = [(PKAccountBillPaymentController *)self->_billPaymentCoordinator payments];
        [WeakRetained accountBillPaymentViewController:self didSchedulePayments:v15];
      }

      v16 = [(PKAccountBillPaymentController *)self->_billPaymentCoordinator payments];
      if ([v16 count])
      {
        v17 = [(PKTransactionSource *)self->_transactionSource paymentPass];
        v18 = [[PKAccountBillPaymentConfirmationViewController alloc] initWithAccount:self->_account paymentPass:v17 scheduledPayments:v16];
        objc_initWeak(&location, self);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __112__PKAccountBillPaymentPayLaterViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke;
        v20[3] = &unk_1E80113B0;
        objc_copyWeak(&v22, &location);
        v19 = v18;
        v21 = v19;
        [(PKAccountBillPaymentConfirmationViewController *)v19 preflightWithCompletion:v20];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PKAccountBillPaymentPayLaterViewController *)self _dismissViewControllerWithSuccess:1];
      }

      break;
    case 0uLL:
      [(PKAccountBillPaymentPayLaterViewController *)self _presentAlertControllerForError:v11];
      break;
  }
}

void __112__PKAccountBillPaymentPayLaterViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __112__PKAccountBillPaymentPayLaterViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke_2;
  v2[3] = &unk_1E80110E0;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

void __112__PKAccountBillPaymentPayLaterViewController_accountBillPaymentController_hasChangedState_error_updatedAccount___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained navigationController];
    [v3 pushViewController:*(a1 + 32) animated:1];

    WeakRetained = v4;
  }
}

- (id)presentationSceneIdentifierForAccountBillPaymentController:(id)a3
{
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  billPaymentCoordinator = self->_billPaymentCoordinator;
  v8 = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v8 count:1];
  [(PKAccountBillPaymentController *)billPaymentCoordinator setFundingSources:v7, v8, v9];
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__PKAccountBillPaymentPayLaterViewController_addBankAccountInformationViewControllerDidFinish___block_invoke;
  v3[3] = &unk_1E8010970;
  v3[4] = self;
  [(PKAccountBillPaymentPayLaterViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

void __95__PKAccountBillPaymentPayLaterViewController_addBankAccountInformationViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1200);
  *(v2 + 1200) = 0;

  v4 = [*(a1 + 32) _dateForRow:{objc_msgSend(*(*(a1 + 32) + 1152), "selectedRowInComponent:", 0)}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1024);
  v7 = *(v5 + 1104);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __95__PKAccountBillPaymentPayLaterViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2;
  v8[3] = &unk_1E8013D38;
  v8[4] = v5;
  [v6 canPerformBillPaymentWithAmount:v7 scheduledDate:v4 completion:v8];
}

void __95__PKAccountBillPaymentPayLaterViewController_addBankAccountInformationViewControllerDidFinish___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    [*(a1 + 32) _payOnButtonTapped:0];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = v5;
    [*(a1 + 32) _presentAlertControllerForError:v5];
  }

  v6 = v7;
LABEL_6:
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  if (self->_currentPickerViewRow[a5] != a4)
  {
    self->_currentPickerViewRow[a5] = a4;
    [(PKAccountBillPaymentPayLaterViewController *)self _updateLabelText];
  }
}

- (void)billPaymentPayInterestDescriptionViewHasTappedLearnMore:(id)a3
{
  v6 = [[PKAccountBillPaymentLearnMoreViewController alloc] initWithAccount:self->_account];
  v4 = [[PKNavigationController alloc] initWithRootViewController:v6];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v4 setModalPresentationStyle:3];
    v5 = [(PKAccountBillPaymentPayLaterViewController *)self navigationController];
    [v5 presentViewController:v4 withTransition:8 completion:0];
  }

  else
  {
    v5 = [(PKAccountBillPaymentPayLaterViewController *)self navigationController];
    [v5 presentViewController:v4 animated:1 completion:0];
  }
}

- (void)_performBillPaymentWithAmount:(id)a3 scheduledDate:(id)a4 billPaymentSuggestedAmountDataEvent:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_CLInUse)
  {
    v11 = MEMORY[0x1E695FBE0];
    v12 = PKPassKitCoreBundle();
    v13 = [v11 newAssertionForBundle:v12 withReason:@"Perform Account Service Future Payment"];
    CLInUse = self->_CLInUse;
    self->_CLInUse = v13;
  }

  if (self->_performingAction)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[PKAccountBillPaymentPayLaterViewController _performBillPaymentWithAmount:scheduledDate:billPaymentSuggestedAmountDataEvent:]";
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "%s: Cannot Present - already performing action", &v16, 0xCu);
    }
  }

  else
  {
    self->_performingAction = 1;
    [(PKAccountBillPaymentPayLaterViewController *)self _setEnabled:0];
    [(PKAccountBillPaymentController *)self->_billPaymentCoordinator performBillPaymentActionWithAmount:v8 scheduledDate:v9 billPaymentSuggestedAmountDataEvent:v10];
  }
}

- (void)_accountDidChange:(id)a3
{
  if (self->_account)
  {
    v4 = [MEMORY[0x1E69B8400] sharedInstance];
    v5 = [(PKAccount *)self->_account accountIdentifier];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PKAccountBillPaymentPayLaterViewController__accountDidChange___block_invoke;
    v6[3] = &unk_1E80112C0;
    v6[4] = self;
    [v4 accountWithIdentifier:v5 completion:v6];
  }
}

void __64__PKAccountBillPaymentPayLaterViewController__accountDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__PKAccountBillPaymentPayLaterViewController__accountDidChange___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_payOnButtonTapped:(id)a3
{
  [(PKAccountBillPaymentPayLaterViewController *)self _setEnabled:0];
  v4 = [(PKAccountBillPaymentPayLaterViewController *)self _dateForRow:[(UIPickerView *)self->_datePicker selectedRowInComponent:0]];
  billPaymentCoordinator = self->_billPaymentCoordinator;
  selectedAmount = self->_selectedAmount;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PKAccountBillPaymentPayLaterViewController__payOnButtonTapped___block_invoke;
  v8[3] = &unk_1E8013D88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(PKAccountBillPaymentController *)billPaymentCoordinator canPerformBillPaymentWithAmount:selectedAmount scheduledDate:v7 completion:v8];
}

void __65__PKAccountBillPaymentPayLaterViewController__payOnButtonTapped___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v14 = v5;
  if (a2)
  {
    v6 = [*(*(a1 + 32) + 1000) accountIdentifier];
    v7 = [*(*(a1 + 32) + 1000) creditDetails];
    v8 = [v7 accountSummary];
    v9 = [v8 currentStatement];
    v10 = [v9 identifier];

    v11 = [*(*(a1 + 32) + 1032) billPaymentSelectedSuggestedAmountDataEventForAmount:*(*(a1 + 32) + 1104) accountIdentifier:v6 statementIdentifier:v10];
    [*(a1 + 32) _performBillPaymentWithAmount:*(*(a1 + 32) + 1104) scheduledDate:*(a1 + 40) billPaymentSuggestedAmountDataEvent:v11];
  }

  else
  {
    v12 = v5;
    v13 = *(a1 + 32);
    if (v12)
    {
      [v13 _presentAlertControllerForError:v12];
    }

    else
    {
      [v13 _presentAddBankAccount];
    }

    [*(a1 + 32) _setEnabled:1];
  }
}

- (id)_interestForSelectedDate:(id)a3
{
  v4 = a3;
  interestCalculator = self->_interestCalculator;
  if (!interestCalculator)
  {
    v6 = [MEMORY[0x1E69B8720] configurationWithCreditAccount:self->_account];
    [v6 setCalculationMethod:1];
    v7 = [objc_alloc(MEMORY[0x1E69B8718]) initWithConfiguration:v6];
    v8 = self->_interestCalculator;
    self->_interestCalculator = v7;

    v9 = [(PKTransactionSource *)self->_transactionSource transactionSourceIdentifiers];
    accountUserCollection = self->_accountUserCollection;
    if (accountUserCollection)
    {
      v11 = [(PKAccountUserCollection *)accountUserCollection transactionSourceIdentifiers];
      if (v11)
      {
        v12 = [v9 setByAddingObjectsFromSet:v11];

        v9 = v12;
      }
    }

    v13 = [MEMORY[0x1E69B8DB8] paymentService];
    v14 = [v6 periodStartDate];
    v15 = [v6 periodEndDate];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__PKAccountBillPaymentPayLaterViewController__interestForSelectedDate___block_invoke;
    v19[3] = &unk_1E8013E48;
    v19[4] = self;
    [v13 approvedTransactionsForTransactionSourceIdentifiers:v9 withTransactionSource:0 withBackingData:1 startDate:v14 endDate:v15 limit:0 completion:v19];

    interestCalculator = self->_interestCalculator;
  }

  v16 = [(PKCompoundInterestCalculator *)interestCalculator configuration];
  [v16 updateWithCreditAccount:self->_account];

  v17 = [(PKCompoundInterestCalculator *)self->_interestCalculator compoundInterestForPaymentOfAmount:self->_selectedAmount onDate:v4];

  return v17;
}

void __71__PKAccountBillPaymentPayLaterViewController__interestForSelectedDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PKAccountBillPaymentPayLaterViewController__interestForSelectedDate___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __71__PKAccountBillPaymentPayLaterViewController__interestForSelectedDate___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1184) configuration];
  v3 = [*(a1 + 40) allObjects];
  [v2 setPeriodTransactions:v3];

  v4 = *(a1 + 32);

  return [v4 _updateLabelText];
}

- (double)_payButtonTopPadding
{
  if (!PKUIGetMinScreenWidthType())
  {
    return 20.0;
  }

  v2 = _UISolariumFeatureFlagEnabled();
  result = 35.0;
  if (v2)
  {
    return 20.0;
  }

  return result;
}

- (double)_sideMargin
{
  if (_UISolariumFeatureFlagEnabled())
  {

    return PKSetupViewConstantsViewMargin();
  }

  else
  {
    v3 = PKUIGetMinScreenWidthType();
    result = 44.0;
    if (v3 < 5)
    {
      result = 24.0;
    }

    if (!v3)
    {
      return 16.0;
    }
  }

  return result;
}

- (void)_setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v5 setUserInteractionEnabled:v3];

  [(UIPickerView *)self->_datePicker setUserInteractionEnabled:v3];
  [(UIButton *)self->_payOnButton setEnabled:v3];
  self->_showSpinner = !v3;
  v6 = _UISolariumFeatureFlagEnabled();
  payOnButton = self->_payOnButton;
  if (v6)
  {
    [(UIButton *)payOnButton setNeedsUpdateConfiguration];
  }

  else
  {
    [(UIButton *)payOnButton setShowSpinner:v3 ^ 1];
  }

  [(PKAccountBillPaymentPayLaterViewController *)self _setNavigationBarEnabled:v3];
  v8 = [(PKAccountBillPaymentPayLaterViewController *)self navigationItem];
  v9 = [v8 backBarButtonItem];
  [v9 setEnabled:v3];

  v10 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v10 setNeedsLayout];
}

- (void)_setNavigationBarEnabled:(BOOL)a3
{
  v3 = a3;
  v9 = [(PKAccountBillPaymentPayLaterViewController *)self navigationController];
  v5 = [v9 navigationBar];
  [v5 setUserInteractionEnabled:v3];

  v6 = [v9 interactivePopGestureRecognizer];
  [v6 setEnabled:v3];

  v7 = [(PKAccountBillPaymentPayLaterViewController *)self navigationItem];
  [v7 setHidesBackButton:v3 ^ 1 animated:1];
  v8 = [v7 leftBarButtonItem];
  [v8 setEnabled:v3];
}

- (id)_dateForRow:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setDay:a3];
  v6 = [(NSCalendar *)self->_productCalendar dateByAddingComponents:v5 toDate:self->_minDate options:0];

  return v6;
}

- (id)_dateStringForRow:(int64_t)a3 formatter:(id)a4
{
  v6 = a4;
  v7 = [(PKAccountBillPaymentPayLaterViewController *)self _dateForRow:a3];
  v8 = [v6 stringFromDate:v7];

  return v8;
}

- (id)_stripTimeFromDate:(id)a3
{
  v4 = [(NSCalendar *)self->_productCalendar components:28 fromDate:a3];
  v5 = [(NSCalendar *)self->_productCalendar dateFromComponents:v4];

  return v5;
}

- (void)_updateLabelText
{
  v6 = [(PKAccountBillPaymentPayLaterViewController *)self _dateForRow:[(UIPickerView *)self->_datePicker selectedRowInComponent:0]];
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self _interestForSelectedDate:?];
  if (_UISolariumFeatureFlagEnabled() && !PKIsVision())
  {
    [(UIButton *)self->_payOnButton setNeedsUpdateConfiguration];
    [(UIButton *)self->_payOnButton setNeedsLayout];
  }

  else
  {
    v4 = [(PKAccountBillPaymentPayLaterViewController *)self _payOnTitle];
    [(UIButton *)self->_payOnButton setTitle:v4 forState:0];
    [(UIButton *)self->_payOnButton sizeToFit];
  }

  if ([(PKAccount *)self->_account showBillPaymentInterest])
  {
    [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView setInterest:v3];
  }

  [(PKAccountBillPaymentPayInterestDescriptionView *)self->_interestDescriptionView setSelectedPaymentDate:v6];
  v5 = [(PKAccountBillPaymentPayLaterViewController *)self view];
  [v5 setNeedsLayout];
}

- (id)_payOnTitle
{
  [(PKAccount *)self->_account feature];
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self _dateStringForRow:[(UIPickerView *)self->_datePicker selectedRowInComponent:0] formatter:self->_dateFormatter];
  v4 = [(PKAccount *)self->_account creditDetails];
  v5 = [v4 currencyCode];
  v6 = PKFormattedCurrencyStringFromNumber();

  v7 = PKLocalizedFeatureString();

  return v7;
}

- (void)_presentAddBankAccount
{
  v4 = [(PKAccountBillPaymentPayLaterViewController *)self _addBankAccountInformationViewController];
  [v4 setOfferKeychainPreFill:1];
  v3 = [[PKNavigationController alloc] initWithRootViewController:v4];
  [(PKNavigationController *)v3 setSupportedInterfaceOrientations:2];
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [(PKNavigationController *)v3 setModalPresentationStyle:2];
  }

  [(PKAccountBillPaymentPayLaterViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (id)_addBankAccountInformationViewController
{
  addBankAccountViewController = self->_addBankAccountViewController;
  if (!addBankAccountViewController)
  {
    v4 = [PKAddBankAccountInformationViewController alloc];
    v5 = [objc_alloc(MEMORY[0x1E69B86A8]) initWithType:1];
    v6 = [(PKAccount *)self->_account creditDetails];
    v7 = [v6 countryCode];
    v8 = [(PKAddBankAccountInformationViewController *)v4 initWithDelegate:self bankInformation:v5 accountCountryCode:v7 featureAccount:self->_account];
    v9 = self->_addBankAccountViewController;
    self->_addBankAccountViewController = v8;

    addBankAccountViewController = self->_addBankAccountViewController;
  }

  return addBankAccountViewController;
}

- (void)_dismissViewControllerWithSuccess:(BOOL)a3
{
  v3 = [(PKAccountBillPaymentPayLaterViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentAlertControllerForError:(id)a3
{
  account = self->_account;
  v5 = a3;
  v7 = [PKAccountFlowController displayableErrorForError:v5 featureIdentifier:[(PKAccount *)account feature] genericErrorTitle:0 genericErrorMessage:0];

  v6 = [PKAccountBillPaymentViewController alertControllerForDisplayableError:v7];
  if (v6)
  {
    [(PKAccountBillPaymentPayLaterViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  [(PKAccountBillPaymentPayLaterViewController *)self _setEnabled:1];
}

- (PKAccountBillPaymentObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end