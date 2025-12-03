@interface PKPassDetailScheduledPaymentsSectionController
- (BOOL)_shouldDisplaySection:(id)section;
- (BOOL)_updateSections;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (PKPassDetailScheduledPaymentsSectionController)initWithAccount:(id)account pass:(id)pass accountService:(id)service delegate:(id)delegate;
- (PKPassDetailScheduledPaymentsSectionControllerDelegate)delegate;
- (id)_accountServiceScheduledPaymentsCellForRowIndex:(int64_t)index sectionIdentifier:(id)identifier tableView:(id)view;
- (id)_dueDateFormatter;
- (id)_dueTimeFormatter;
- (id)_scheduledPaymentCellForPayment:(id)payment tableView:(id)view;
- (id)_titleForScheduledPaymentsSection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (id)titleForFooterInSectionIdentifier:(id)identifier;
- (id)titleForHeaderInSectionIdentifier:(id)identifier;
- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier;
- (unint64_t)_accountServiceScheduledPaymentsRowTypeForRowIndex:(int64_t)index sectionIdentifier:(id)identifier;
- (void)_fetchScheduledPaymentsWithAccountIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)fetchScheduledPaymentsAndReloadSections:(id)sections;
- (void)presentSchedulePayments:(id)payments completion:(id)completion;
- (void)reloadScheduledPayments;
- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier;
- (void)setCurrentSegment:(unint64_t)segment;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier;
- (void)updateWithAccount:(id)account;
@end

@implementation PKPassDetailScheduledPaymentsSectionController

- (PKPassDetailScheduledPaymentsSectionController)initWithAccount:(id)account pass:(id)pass accountService:(id)service delegate:(id)delegate
{
  v21[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  passCopy = pass;
  serviceCopy = service;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = PKPassDetailScheduledPaymentsSectionController;
  v15 = [(PKPaymentPassDetailSectionController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_pass, pass);
    objc_storeStrong(&v16->_accountService, service);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v21[0] = @"SchedulePaymentsSectionIdentifier";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    allSectionIdentifiers = v16->_allSectionIdentifiers;
    v16->_allSectionIdentifiers = v17;

    [(PKPassDetailScheduledPaymentsSectionController *)v16 _updateSections];
    [(PKAccountService *)v16->_accountService registerObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  [(PKAccountService *)self->_accountService unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PKPassDetailScheduledPaymentsSectionController;
  [(PKPassDetailScheduledPaymentsSectionController *)&v3 dealloc];
}

- (void)reloadScheduledPayments
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  allSectionIdentifiers = [(PKPassDetailScheduledPaymentsSectionController *)self allSectionIdentifiers];
  [WeakRetained reloadSectionIdentifiers:allSectionIdentifiers updates:0];
}

- (BOOL)_updateSections
{
  v3 = self->_sectionIdentifiers;
  if ([(PKPaymentPassDetailSectionController *)self currentSegment])
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    allSectionIdentifiers = self->_allSectionIdentifiers;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PKPassDetailScheduledPaymentsSectionController__updateSections__block_invoke;
    v10[3] = &unk_1E801C1C0;
    v10[4] = self;
    v4 = [(NSArray *)allSectionIdentifiers pk_objectsPassingTest:v10];
  }

  sectionIdentifiers = self->_sectionIdentifiers;
  self->_sectionIdentifiers = v4;
  v7 = v4;

  v8 = PKEqualObjects();
  return v8 ^ 1;
}

- (void)fetchScheduledPaymentsAndReloadSections:(id)sections
{
  sectionsCopy = sections;
  if ([(PKPassDetailScheduledPaymentsSectionController *)self _updateSections])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained recomputeMappedSectionsAndReloadSections:self->_sectionIdentifiers];
  }

  else
  {
    [(PKPassDetailScheduledPaymentsSectionController *)self reloadScheduledPayments];
  }

  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  [(PKPassDetailScheduledPaymentsSectionController *)self _fetchScheduledPaymentsWithAccountIdentifier:accountIdentifier completion:sectionsCopy];
}

- (void)updateWithAccount:(id)account
{
  accountCopy = account;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_account, account);
    [(PKPassDetailScheduledPaymentsSectionController *)self fetchScheduledPaymentsAndReloadSections:0];
  }
}

- (void)presentSchedulePayments:(id)payments completion:(id)completion
{
  paymentsCopy = payments;
  completionCopy = completion;
  objc_storeStrong(&self->_presentationSceneIdentifier, payments);
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke;
  aBlock[3] = &unk_1E80113B0;
  objc_copyWeak(&v25, location);
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  if (!self->_loadingAutomaticPayments)
  {
    mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
    detailViewStyle = [(PKPaymentPassDetailSectionController *)self detailViewStyle];
    v12 = detailViewStyle;
    v13 = 3;
    if (detailViewStyle != 1)
    {
      v13 = 0;
    }

    if (detailViewStyle == 2)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    v15 = [[PKAccountAutomaticPaymentsController alloc] initWithAccountService:self->_accountService paymentWebService:mEMORY[0x1E69B8EF8] account:self->_account context:v14];
    [(PKAccountAutomaticPaymentsController *)v15 setDelegate:self];
    [(PKAccountAutomaticPaymentsController *)v15 setAutomaticPayments:self->_recurringPayments];
    v9[2](v9, 1);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke_2;
    v18[3] = &unk_1E80271A0;
    objc_copyWeak(v23, location);
    v16 = v15;
    v19 = v16;
    v21 = v9;
    v17 = mEMORY[0x1E69B8EF8];
    v20 = v17;
    v23[1] = v12;
    v23[2] = v14;
    v22 = completionCopy;
    [(PKAccountAutomaticPaymentsController *)v16 preflightWithCompletion:v18];

    objc_destroyWeak(v23);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

void __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 105) = a2;
    v16 = WeakRetained;
    v6 = [*(*(a1 + 32) + 136) count];
    v5 = v16;
    if (!v6)
    {
      v7 = [*(*(a1 + 32) + 144) count];
      v8 = objc_loadWeakRetained((*(a1 + 32) + 152));
      v9 = [v8 cellForRow:objc_msgSend(*(*(a1 + 32) + 144) inSection:{"count"), @"SchedulePaymentsSectionIdentifier"}];

      if (v9)
      {
        v10 = [v9 detailTextLabel];
        v11 = [v10 text];
        v12 = [v11 length];

        if (!v12)
        {
          v14 = [v9 textLabel];
          v15 = [v14 textColor];

          [v16 showSpinner:a2 inCell:v9 overrideTextColor:v15];
          if (a2)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        [v16 showSpinner:a2 inCell:v9 detailText:0];
        if ((a2 & 1) == 0)
        {
LABEL_6:
          v13 = objc_loadWeakRetained(v16 + 19);
          [v13 reloadRow:v7 inSectionWithSectionIdentifier:@"SchedulePaymentsSectionIdentifier"];
        }
      }

LABEL_7:

      v5 = v16;
    }
  }
}

void __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke_3;
  block[3] = &unk_1E8027178;
  objc_copyWeak(&v17, (a1 + 64));
  v19 = a2;
  v14 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v18 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v17);
}

void __85__PKPassDetailScheduledPaymentsSectionController_presentSchedulePayments_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if (*(a1 + 96) == 1 && !*(a1 + 32))
    {
      v3 = [*(a1 + 40) automaticPayments];
      v5 = [v3 count];
      (*(*(a1 + 56) + 16))();
      if (v5)
      {
        v6 = [PKCreditAccountPaymentDetailsViewController alloc];
        v7 = v10[8];
        v8 = [v3 firstObject];
        v4 = [(PKCreditAccountPaymentDetailsViewController *)v6 initWithAccount:v7 payment:v8 paymentWebService:*(a1 + 48) detailViewStyle:*(a1 + 80)];

        v9 = [[PKNavigationController alloc] initWithRootViewController:v4];
        PKPaymentSetupApplyContextAppearance(*(a1 + 88), v9);
        (*(*(a1 + 64) + 16))();

        goto LABEL_6;
      }

      v4 = [[PKAccountAutomaticPaymentsViewController alloc] initWithController:*(a1 + 40) showSetupPrompt:0];
      if (PKIsVision())
      {
        [(PKAccountAutomaticPaymentsViewController *)v4 setModalPresentationStyle:1];
        [(PKAccountAutomaticPaymentsViewController *)v4 setModalTransitionStyle:0];
      }

      else if ([(UIViewController *)v4 pkui_userInterfaceIdiomSupportsLargeLayouts])
      {
        [(PKAccountAutomaticPaymentsViewController *)v4 setModalPresentationStyle:2];
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
      v3 = +[PKAccountFlowController displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:](PKAccountFlowController, "displayableErrorForError:featureIdentifier:genericErrorTitle:genericErrorMessage:", *(a1 + 32), [v10[8] feature], 0, 0);
      v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, 0, 0);
    }

    (*(*(a1 + 64) + 16))();
LABEL_6:

    WeakRetained = v10;
  }
}

- (void)scheduledPaymentsChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v6 = identifierCopy;
  v7 = accountIdentifier;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

      goto LABEL_9;
    }

    v9 = [v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPassDetailScheduledPaymentsSectionController_scheduledPaymentsChangedForAccountIdentifier___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_9:
}

- (void)setCurrentSegment:(unint64_t)segment
{
  v4.receiver = self;
  v4.super_class = PKPassDetailScheduledPaymentsSectionController;
  [(PKPaymentPassDetailSectionController *)&v4 setCurrentSegment:segment];
  [(PKPassDetailScheduledPaymentsSectionController *)self _updateSections];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = -[PKPassDetailScheduledPaymentsSectionController _accountServiceScheduledPaymentsRowTypeForRowIndex:sectionIdentifier:](self, "_accountServiceScheduledPaymentsRowTypeForRowIndex:sectionIdentifier:", [path row], identifierCopy);

  return v8 == 3 || !self->_loadingPayments;
}

- (id)titleForHeaderInSectionIdentifier:(id)identifier
{
  if (PKEqualObjects())
  {
    _titleForScheduledPaymentsSection = [(PKPassDetailScheduledPaymentsSectionController *)self _titleForScheduledPaymentsSection];
  }

  else
  {
    _titleForScheduledPaymentsSection = 0;
  }

  return _titleForScheduledPaymentsSection;
}

- (id)titleForFooterInSectionIdentifier:(id)identifier
{
  if (!PKEqualObjects())
  {
    goto LABEL_13;
  }

  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];

  remainingStatementBalance = [accountSummary remainingStatementBalance];
  paymentDueDate = [accountSummary paymentDueDate];
  currentStatement = [accountSummary currentStatement];
  [(PKAccount *)self->_account feature];
  v10 = 1;
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    v11 = !paymentDueDate || currentStatement == 0;
    if (!v11 && !-[NSArray count](self->_recurringPayments, "count") && [remainingStatementBalance pk_isPositiveNumber])
    {
      IsSingular = PKHourOfDateIsSingular();
      v13 = @"ACCOUNT_SERVICE_BILL_PAYMENT_PAYMENT_DUE_BY";
      if (IsSingular)
      {
        v13 = @"ACCOUNT_SERVICE_BILL_PAYMENT_PAYMENT_DUE_BY_HOUR_ONE";
      }

      v14 = v13;
      _dueDateFormatter = [(PKPassDetailScheduledPaymentsSectionController *)self _dueDateFormatter];
      v16 = [_dueDateFormatter stringFromDate:paymentDueDate];

      _dueTimeFormatter = [(PKPassDetailScheduledPaymentsSectionController *)self _dueTimeFormatter];
      v18 = [_dueTimeFormatter stringFromDate:paymentDueDate];

      v3 = PKLocalizedFeatureString();

      v10 = 0;
    }
  }

  if (v10)
  {
LABEL_13:
    v3 = 0;
  }

  return v3;
}

- (int64_t)tableView:(id)view numberOfRowsInSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];

  adjustedBalance = [accountSummary adjustedBalance];
  if (adjustedBalance)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v10 = [adjustedBalance compare:zero] == 1;
  }

  else
  {
    v10 = 0;
  }

  if (PKEqualObjects())
  {
    v11 = [(NSArray *)self->_recurringPayments count];
    v12 = [(NSArray *)self->_scheduledPayments count];
    if (v11 <= 0)
    {
      v11 = !self->_loadingPayments;
    }

    v13 = v12 + v10 + v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  viewCopy = view;
  v10 = -[PKPassDetailScheduledPaymentsSectionController _accountServiceScheduledPaymentsCellForRowIndex:sectionIdentifier:tableView:](self, "_accountServiceScheduledPaymentsCellForRowIndex:sectionIdentifier:tableView:", [path row], identifierCopy, viewCopy);

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path sectionIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if (PKStoreDemoModeEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didSelectInDemoMode];
    goto LABEL_17;
  }

  v10 = [pathCopy row];
  v11 = [(PKPassDetailScheduledPaymentsSectionController *)self _accountServiceScheduledPaymentsRowTypeForRowIndex:v10 sectionIdentifier:identifierCopy];
  WeakRetained = 0;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 didSelectSchedulePayments];

      v14 = MEMORY[0x1E69BB188];
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_17;
      }

      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 didSelectMakePaymentWithConfig:0];

      v14 = MEMORY[0x1E69BB190];
    }

    v15 = *v14;
    WeakRetained = 0;
  }

  else
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_17;
      }

      WeakRetained = [(NSArray *)self->_scheduledPayments objectAtIndexedSubscript:v10 - [(NSArray *)self->_recurringPayments count]];
      v12 = MEMORY[0x1E69BB180];
    }

    else
    {
      WeakRetained = [(NSArray *)self->_recurringPayments objectAtIndexedSubscript:v10];
      v12 = MEMORY[0x1E69BB178];
    }

    v15 = *v12;
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 didSelectPayment:WeakRetained];
    }
  }

  if (v15)
  {
    [(PKPaymentPassDetailSectionController *)self reportPassDetailsAnalyticsForTappedRowTag:v15 additionalAnalytics:0 pass:self->_pass];
  }

LABEL_17:
}

- (BOOL)_shouldDisplaySection:(id)section
{
  sectionCopy = section;
  if ([(PKPaymentPassDetailSectionController *)self detailViewStyle]== 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69B8770] shouldDisplayScheduledPaymentsWithAccount:self->_account andPass:self->_pass];
  }

  v6 = PKEqualObjects();

  return v6 & v5;
}

- (id)_dueDateFormatter
{
  dueDateFormatter = self->_dueDateFormatter;
  if (!dueDateFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dueDateFormatter;
    self->_dueDateFormatter = v4;

    v6 = self->_dueDateFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)self->_dueDateFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
    [(NSDateFormatter *)self->_dueDateFormatter setFormattingContext:1];
    dueDateFormatter = self->_dueDateFormatter;
  }

  return dueDateFormatter;
}

- (id)_dueTimeFormatter
{
  dueTimeFormatter = self->_dueTimeFormatter;
  if (!dueTimeFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v5 = self->_dueTimeFormatter;
    self->_dueTimeFormatter = v4;

    v6 = self->_dueTimeFormatter;
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [(NSDateFormatter *)v6 setLocale:autoupdatingCurrentLocale];

    [(NSDateFormatter *)self->_dueTimeFormatter setLocalizedDateFormatFromTemplate:@"j:mm a"];
    [(NSDateFormatter *)self->_dueTimeFormatter setFormattingContext:1];
    dueTimeFormatter = self->_dueTimeFormatter;
  }

  return dueTimeFormatter;
}

- (id)_titleForScheduledPaymentsSection
{
  [(PKAccount *)self->_account feature];

  return PKLocalizedFeatureString();
}

- (id)_accountServiceScheduledPaymentsCellForRowIndex:(int64_t)index sectionIdentifier:(id)identifier tableView:(id)view
{
  viewCopy = view;
  v9 = [(PKPassDetailScheduledPaymentsSectionController *)self _accountServiceScheduledPaymentsRowTypeForRowIndex:index sectionIdentifier:identifier];
  v10 = v9;
  if (v9 > 1)
  {
    [(PKAccount *)self->_account feature];
    if (v10 != 2)
    {
      if (![(NSArray *)self->_scheduledPayments count])
      {
        [(NSArray *)self->_recurringPayments count];
      }

      v22 = PKLocalizedFeatureString();
      v23 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v22 forTableView:viewCopy];
      goto LABEL_13;
    }

    v14 = PKLocalizedFeatureString();
    v15 = PKLocalizedFeatureString();
    v16 = 1;
    v17 = [(PKPaymentPassDetailSectionController *)self infoCellWithPrimaryText:v14 detailText:v15 cellStyle:1 forTableView:viewCopy];
    v18 = v17;
    if (self->_loadingAutomaticPayments)
    {
      detailTextLabel = [v17 detailTextLabel];
      [detailTextLabel setText:0];

      v20 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v20 startAnimating];
      if (self->_loadingAutomaticPayments)
      {
        tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        v16 = 0;
LABEL_26:
        textLabel = [v18 textLabel];
        [textLabel setTextColor:tertiaryLabelColor];

        [v18 setAccessoryType:v16];
        [v18 setAccessoryView:v20];

        v24 = MEMORY[0x1E69B9C30];
        goto LABEL_27;
      }

      v16 = 0;
    }

    else
    {
      v20 = 0;
    }

    primaryTextColor = [(PKPaymentPassDetailSectionController *)self primaryTextColor];
    v28 = primaryTextColor;
    if (primaryTextColor)
    {
      labelColor = primaryTextColor;
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    tertiaryLabelColor = labelColor;

    goto LABEL_26;
  }

  if (v9)
  {
    scheduledPayments = self->_scheduledPayments;
    indexCopy = index - [(NSArray *)self->_recurringPayments count];
    recurringPayments = scheduledPayments;
  }

  else
  {
    recurringPayments = self->_recurringPayments;
    indexCopy = index;
  }

  v22 = [(NSArray *)recurringPayments objectAtIndexedSubscript:indexCopy];
  v23 = [(PKPassDetailScheduledPaymentsSectionController *)self _scheduledPaymentCellForPayment:v22 tableView:viewCopy];
LABEL_13:
  v18 = v23;

  v24 = MEMORY[0x1E69B9B30];
  v25 = MEMORY[0x1E69B9A28];
  v26 = MEMORY[0x1E69B9D90];
  if (v10 == 1)
  {
    v26 = MEMORY[0x1E69B9BC8];
  }

  if (v10 != 3)
  {
    v25 = v26;
  }

  if (v10)
  {
    v24 = v25;
  }

LABEL_27:
  [v18 setAccessibilityIdentifier:*v24];

  return v18;
}

- (id)_scheduledPaymentCellForPayment:(id)payment tableView:(id)view
{
  paymentCopy = payment;
  v7 = [view dequeueReusableCellWithIdentifier:@"scheduledPaymentCell"];
  if (!v7)
  {
    v7 = [[PKAccountScheduledPaymentCell alloc] initWithStyle:1 reuseIdentifier:@"scheduledPaymentCell"];
    primaryTextColor = [(PKPaymentPassDetailSectionController *)self primaryTextColor];
    [(PKAccountScheduledPaymentCell *)v7 setTitleColor:primaryTextColor];
  }

  [(PKAccountScheduledPaymentCell *)v7 setPayment:paymentCopy forAccount:self->_account];

  return v7;
}

- (void)_fetchScheduledPaymentsWithAccountIdentifier:(id)identifier completion:(id)completion
{
  v32[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  if (PKStoreDemoModeEnabled())
  {
    p_loadingPayments = &self->_loadingPayments;
    self->_loadingPayments = 1;
    [(PKPassDetailScheduledPaymentsSectionController *)self reloadScheduledPayments];
LABEL_4:
    v9 = objc_alloc_init(MEMORY[0x1E69B8398]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v9 setReferenceIdentifier:uUIDString];

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    [v9 setClientReferenceIdentifier:uUIDString2];

    v14 = [objc_alloc(MEMORY[0x1E69B83A8]) initWithType:1];
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString3 = [uUID3 UUIDString];
    [v14 setIdentifier:uUIDString3];

    [v14 setAccountSuffix:@"2354"];
    v17 = objc_alloc_init(MEMORY[0x1E69B83A0]);
    [v17 setName:@"Bank of America"];
    [v14 setFundingDetails:v17];
    [v9 setFundingSource:v14];
    v18 = objc_alloc_init(MEMORY[0x1E69B83B0]);
    [v18 setFrequency:7];
    [v18 setPreset:3];
    date = [MEMORY[0x1E695DF00] date];
    v20 = PKEndOfMonth();
    [v18 setScheduledDate:v20];

    [v9 setScheduleDetails:v18];
    date2 = [MEMORY[0x1E695DF00] date];
    v22 = PKEndOfMonth();
    [v9 setPaymentDate:v22];

    [v9 setState:1];
    v32[0] = v9;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
    recurringPayments = self->_recurringPayments;
    self->_recurringPayments = v23;

    *p_loadingPayments = 0;
    [(PKPassDetailScheduledPaymentsSectionController *)self reloadScheduledPayments];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    goto LABEL_7;
  }

  v8 = PKUIOnlyDemoModeEnabled();
  p_loadingPayments = &self->_loadingPayments;
  self->_loadingPayments = 1;
  [(PKPassDetailScheduledPaymentsSectionController *)self reloadScheduledPayments];
  if (v8)
  {
    goto LABEL_4;
  }

  account = self->_account;
  if (account && ([(PKAccount *)account accessLevel]| 2) != 2)
  {
    objc_initWeak(&location, self);
    accountService = self->_accountService;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __106__PKPassDetailScheduledPaymentsSectionController__fetchScheduledPaymentsWithAccountIdentifier_completion___block_invoke;
    v28[3] = &unk_1E8011130;
    objc_copyWeak(&v30, &location);
    v29 = completionCopy;
    [(PKAccountService *)accountService scheduledPaymentsWithAccountIdentifier:identifierCopy includeFailedRecurringPayments:1 completion:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_7:
}

void __106__PKPassDetailScheduledPaymentsSectionController__fetchScheduledPaymentsWithAccountIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__PKPassDetailScheduledPaymentsSectionController__fetchScheduledPaymentsWithAccountIdentifier_completion___block_invoke_2;
  v9[3] = &unk_1E8019A28;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __106__PKPassDetailScheduledPaymentsSectionController__fetchScheduledPaymentsWithAccountIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 104) = 0;
    if (!*(a1 + 32) && *(a1 + 40))
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = *(a1 + 40);
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v23 + 1) + 8 * i);
            if ([v11 isRecurring])
            {
              v12 = v4;
            }

            else
            {
              v12 = v5;
            }

            [v12 addObject:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v8);
      }

      v13 = [v4 copy];
      v14 = v3[17];
      v3[17] = v13;

      v15 = [v5 pk_objectsPassingTest:&__block_literal_global_260];
      v16 = v3[18];
      v3[18] = v15;

      v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"paymentDate" ascending:1];
      v18 = v3[18];
      v27 = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      v20 = [v18 sortedArrayUsingDescriptors:v19];
      v21 = v3[18];
      v3[18] = v20;
    }

    [v3 reloadScheduledPayments];
    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))();
    }
  }
}

BOOL __106__PKPassDetailScheduledPaymentsSectionController__fetchScheduledPaymentsWithAccountIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 scheduleDetails];
  v3 = [v2 frequency] != 1;

  return v3;
}

- (unint64_t)_accountServiceScheduledPaymentsRowTypeForRowIndex:(int64_t)index sectionIdentifier:(id)identifier
{
  recurringPayments = self->_recurringPayments;
  identifierCopy = identifier;
  v8 = [(NSArray *)recurringPayments count];
  v9 = [(NSArray *)self->_scheduledPayments count];
  v10 = PKEqualObjects();

  if (!v10)
  {
    return 3;
  }

  v11 = index - v8;
  if (index - v8 < v9)
  {
    return v11 >= 0;
  }

  if (((v8 == 0) & ~self->_loadingPayments & (v11 == v9)) != 0)
  {
    return 2;
  }

  return 3;
}

- (PKPassDetailScheduledPaymentsSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end