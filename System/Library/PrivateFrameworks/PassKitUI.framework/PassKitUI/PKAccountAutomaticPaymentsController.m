@interface PKAccountAutomaticPaymentsController
- (BOOL)canPerformScheduleAutomaticPaymentsWithPreset:(int64_t)a3 frequency:(int64_t)a4 amount:(id)a5 paymentDate:(id)a6;
- (PKAccountAutomaticPaymentsController)initWithAccountService:(id)a3 paymentWebService:(id)a4 account:(id)a5 context:(int64_t)a6;
- (PKAccountAutomaticPaymentsControllerDelegate)delegate;
- (id)_paymentRequest;
- (id)_paymentSummaryItems;
- (id)_schedulePaymentRequestWithBankAccount:(id)a3;
- (id)alertControllerForScheduledDate:(id)a3;
- (id)firstAutomaticPaymentDateForSelectedDate:(id)a3;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (int64_t)minimumPaymentDayForPreset:(int64_t)a3;
- (void)_addNewBankAccountIfNecessary:(id)a3;
- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4;
- (void)_performPaymentRequest:(id)a3;
- (void)_resetPaymentConfiguration;
- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)performScheduleAutomaticPayments:(id)a3;
- (void)preflightWithCompletion:(id)a3;
@end

@implementation PKAccountAutomaticPaymentsController

- (PKAccountAutomaticPaymentsController)initWithAccountService:(id)a3 paymentWebService:(id)a4 account:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v25.receiver = self;
  v25.super_class = PKAccountAutomaticPaymentsController;
  v14 = [(PKAccountAutomaticPaymentsController *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_accountService, a3);
    objc_storeStrong(&v15->_paymentWebService, a4);
    objc_storeStrong(&v15->_account, a5);
    v16 = [v13 creditDetails];
    v17 = [v16 productTimeZone];
    productTimeZone = v15->_productTimeZone;
    v15->_productTimeZone = v17;

    v19 = objc_alloc(MEMORY[0x1E695DEE8]);
    v20 = [v19 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    productCalendar = v15->_productCalendar;
    v15->_productCalendar = v20;

    [(NSCalendar *)v15->_productCalendar setTimeZone:v15->_productTimeZone];
    v15->_featureIdentifier = [v13 feature];
    v15->_paymentSetupContext = a6;
    v15->_needsPreflight = 1;
    v22 = objc_alloc_init(MEMORY[0x1E696AB78]);
    monthDayFormatter = v15->_monthDayFormatter;
    v15->_monthDayFormatter = v22;

    [(NSDateFormatter *)v15->_monthDayFormatter setLocalizedDateFormatFromTemplate:@"MMMM d"];
    [(NSDateFormatter *)v15->_monthDayFormatter setTimeZone:v15->_productTimeZone];
    [(PKAccountAutomaticPaymentsController *)v15 _resetPaymentConfiguration];
  }

  return v15;
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_needsPreflight)
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x1E69B8400] sharedInstance];
    v7 = [(PKAccount *)self->_account accountIdentifier];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PKAccountAutomaticPaymentsController_preflightWithCompletion___block_invoke;
    v8[3] = &unk_1E8011130;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [v6 updatePaymentFundingSourcesForAccountIdentifier:v7 force:1 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __64__PKAccountAutomaticPaymentsController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PKAccountAutomaticPaymentsController_preflightWithCompletion___block_invoke_2;
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

void __64__PKAccountAutomaticPaymentsController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v6 = WeakRetained;
    if (!v4)
    {
      objc_storeStrong(WeakRetained + 8, *(a1 + 40));
      v3 = v6;
      *(v6 + 129) = 0;
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))(v5, v4 == 0, *(a1 + 32));
      v3 = v6;
    }
  }
}

- (void)_resetPaymentConfiguration
{
  amount = self->_amount;
  self->_amount = 0;

  self->_paymentFrequency = 0;
  self->_paymentPreset = 0;
  paymentDate = self->_paymentDate;
  self->_paymentDate = 0;
}

- (id)_schedulePaymentRequestWithBankAccount:(id)a3
{
  schedulePaymentRequest = self->_schedulePaymentRequest;
  if (!schedulePaymentRequest)
  {
    account = self->_account;
    v6 = a3;
    v7 = [(PKAccount *)account schedulePaymentFeatureDescriptor];
    v8 = [v7 paymentTermsIdentifier];

    v9 = [(PKAccount *)self->_account creditDetails];
    v10 = [v9 currencyCode];

    amount = self->_amount;
    if (amount)
    {
      v12 = amount;
    }

    else
    {
      v13 = [MEMORY[0x1E696AB90] notANumber];
      v12 = PKCurrencyAmountCreate(v13, v10);
    }

    v29 = v10;
    v14 = [objc_alloc(MEMORY[0x1E69B83A8]) initWithType:1];
    v15 = [v6 identifier];

    [v14 setIdentifier:v15];
    v16 = [objc_alloc(MEMORY[0x1E69B83E0]) initWithCurrencyAmount:v12 fundingSource:v14];
    v17 = [objc_alloc(MEMORY[0x1E69B83E8]) initWithScheduledPayment:v16];
    v18 = objc_alloc_init(MEMORY[0x1E69B83B0]);
    paymentFrequency = self->_paymentFrequency;
    paymentPreset = self->_paymentPreset;
    if (paymentFrequency == 7)
    {
      paymentDate = self->_paymentDate;
      self->_paymentDate = 0;
    }

    [v18 setFrequency:paymentFrequency];
    [v18 setPreset:paymentPreset];
    v22 = [(PKAccount *)self->_account creditDetails];
    v23 = [v22 productTimeZone];
    [v18 setScheduleTimeZone:v23];

    [v18 setScheduledDate:self->_paymentDate];
    [v18 setPaymentTermsIdentifier:v8];
    if (paymentFrequency == 6 && self->_scheduledDay)
    {
      [v18 setScheduledDay:?];
      [v18 setScheduledDate:0];
    }

    v24 = objc_alloc_init(MEMORY[0x1E69B84C0]);
    [v24 setScheduledPayments:v17];
    [v24 setScheduleDetails:v18];
    v25 = [(PKAccount *)self->_account accountIdentifier];
    [v24 setAccountIdentifier:v25];

    v26 = [(PKAccount *)self->_account accountBaseURL];
    [v24 setBaseURL:v26];

    v27 = self->_schedulePaymentRequest;
    self->_schedulePaymentRequest = v24;

    schedulePaymentRequest = self->_schedulePaymentRequest;
  }

  return schedulePaymentRequest;
}

- (id)_paymentRequest
{
  v3 = [objc_alloc(MEMORY[0x1E69B8410]) initWithAccount:self->_account peerPaymentAccount:0 peerPaymentPass:0 transferType:1 fundingSources:self->_fundingSources currencyAmount:self->_amount paymentDate:self->_paymentDate objectSettings:0];
  [v3 setConfirmationStyle:0];
  v4 = [(PKAccountAutomaticPaymentsController *)self _paymentSummaryItems];
  [v3 setPaymentSummaryItems:v4];

  [v3 setPaymentFrequency:self->_paymentFrequency];

  return v3;
}

- (id)_paymentSummaryItems
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_paymentPreset > 3uLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = PKLocalizedFeatureString();
  }

  v4 = [(PKCurrencyAmount *)self->_amount amount];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AB90] zero];
  }

  v7 = v6;

  v8 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v3 amount:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (void)_addNewBankAccountIfNecessary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_fundingSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v24 + 1) + 8 * i) identifier];
        v11 = [v4 identifier];
        v12 = v10;
        v13 = v11;
        fundingSources = v13;
        if (v12 == v13)
        {

          goto LABEL_18;
        }

        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
        }

        else
        {
          v16 = [(NSArray *)v12 isEqualToString:v13];

          if (v16)
          {
            goto LABEL_19;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E69B83A0]);
  v17 = [(PKAccount *)self->_account accountIdentifier];
  [(NSArray *)v5 setAccountIdentifier:v17];

  v18 = [v4 bankName];
  [(NSArray *)v5 setName:v18];

  -[NSArray setStatus:](v5, "setStatus:", [v4 status]);
  v19 = [v4 routingNumber];
  [(NSArray *)v5 setRoutingNumber:v19];

  v20 = [v4 accountNumber];
  [(NSArray *)v5 setAccountNumber:v20];

  v12 = [objc_alloc(MEMORY[0x1E69B83A8]) initWithType:1];
  v21 = [v4 identifier];
  [(NSArray *)v12 setIdentifier:v21];

  v22 = [v4 accountSuffix];
  [(NSArray *)v12 setAccountSuffix:v22];

  [(NSArray *)v12 setFundingDetails:v5];
  v23 = [(NSArray *)self->_fundingSources mutableCopy];
  [(NSArray *)v23 addObject:v12];
  fundingSources = self->_fundingSources;
  self->_fundingSources = v23;
LABEL_18:

LABEL_19:
}

- (id)firstAutomaticPaymentDateForSelectedDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_paymentPreset == 1)
  {
    v10 = v4;
    goto LABEL_19;
  }

  v6 = [(PKAccount *)self->_account creditDetails];
  v7 = [v6 accountSummary];

  paymentPreset = self->_paymentPreset;
  if (paymentPreset == 3)
  {
    v9 = [v7 remainingStatementBalance];
  }

  else
  {
    if (paymentPreset != 2)
    {
      goto LABEL_10;
    }

    v9 = [v7 remainingMinimumPayment];
  }

  v11 = v9;
  if (v9)
  {
    v12 = [MEMORY[0x1E696AB90] zero];
    v13 = [v12 compare:v11] != -1;

    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  v14 = [v7 balanceSummary];
  v15 = [v14 closingDate];

  if (v15 && ([v5 compare:v15] != 1 ? (v16 = v13) : (v16 = 0), v16))
  {
    v17 = [(NSCalendar *)self->_productCalendar dateByAddingUnit:8 value:1 toDate:v5 options:0];
  }

  else
  {
    v17 = v5;
  }

  v10 = v17;

LABEL_19:

  return v10;
}

- (id)alertControllerForScheduledDate:(id)a3
{
  v4 = a3;
  if (v4 && ([(PKAccount *)self->_account isClosedAndChargedOff]& 1) == 0)
  {
    v6 = [(PKAccount *)self->_account creditDetails];
    v7 = [v6 accountSummary];

    v8 = [v7 paymentDueDate];
    v9 = v8;
    if (v8 && [v8 compare:v4] == -1)
    {
      if (self->_paymentPreset == 2)
      {
        [v7 remainingMinimumPayment];
      }

      else
      {
        [v7 remainingStatementBalance];
      }
      v10 = ;
      if (v10 && ([MEMORY[0x1E696AB90] zero], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "compare:", v10), v11, v12 == -1))
      {
        v16 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:v4];
        v13 = PKLocalizedFeatureString();

        v17 = [(NSDateFormatter *)self->_monthDayFormatter stringFromDate:v9, v16];
        v14 = PKLocalizedFeatureString();

        v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v13 message:v14 preferredStyle:{1, v17}];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)minimumPaymentDayForPreset:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 11;
  }

  else
  {
    return 1;
  }
}

- (BOOL)canPerformScheduleAutomaticPaymentsWithPreset:(int64_t)a3 frequency:(int64_t)a4 amount:(id)a5 paymentDate:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = v11;
  v13 = (a4 - 4) > 1 || a3 != 1;
  v14 = (a4 - 6) >= 2 && v13;
  v15 = v10 == 0;
  if (a3 != 1)
  {
    if (a4 != 7)
    {
      if (v11)
      {
        v18 = [(NSCalendar *)self->_productCalendar component:16 fromDate:v11]> 10;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v10)
  {
    v16 = [MEMORY[0x1E696AB90] zero];
    v17 = [v10 amount];
    v15 = [v16 compare:v17] == -1;
  }

  else
  {
    v15 = 0;
  }

  if (a4 == 7)
  {
LABEL_15:
    v18 = v12 == 0;
    goto LABEL_18;
  }

  v18 = v12 != 0;
LABEL_18:
  if (a3)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1;
  }

  v20 = v15 && v18;
  v21 = (v19 & 1) == 0 && v20;

  return v21;
}

- (void)performScheduleAutomaticPayments:(id)a3
{
  aBlock = a3;
  v4 = [(PKAccountAutomaticPaymentsController *)self _paymentRequest];
  if (v4)
  {
    v5 = _Block_copy(aBlock);
    performScheduleAutomaticPaymentsCompletion = self->_performScheduleAutomaticPaymentsCompletion;
    self->_performScheduleAutomaticPaymentsCompletion = v5;

    [(PKAccountAutomaticPaymentsController *)self _performPaymentRequest:v4];
  }

  else if (aBlock)
  {
    (*(aBlock + 2))(aBlock, 0, 0);
  }
}

- (void)_performPaymentRequest:(id)a3
{
  v4 = MEMORY[0x1E69B8B60];
  v5 = a3;
  v6 = [[v4 alloc] initWithPaymentRequest:v5];

  paymentAuthorizationCoordinator = self->_paymentAuthorizationCoordinator;
  self->_paymentAuthorizationCoordinator = v6;

  [(PKPaymentAuthorizationCoordinator *)self->_paymentAuthorizationCoordinator setDelegate:self];
  [(PKPaymentAuthorizationCoordinator *)self->_paymentAuthorizationCoordinator _setPrivateDelegate:self];
  v8 = self->_paymentAuthorizationCoordinator;

  [(PKPaymentAuthorizationCoordinator *)v8 presentWithCompletion:&__block_literal_global_127];
}

void __63__PKAccountAutomaticPaymentsController__performPaymentRequest___block_invoke(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "_paymentAuthorizationCoordinator presentWithCompletion: completed with success:%d", v4, 8u);
  }
}

- (void)_performApplePayTrustSignatureRequestWithSignature:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E69B8468];
  v8 = a3;
  v9 = [[v7 alloc] initWithApplePayTrustProtocol:self->_schedulePaymentRequest];
  [v9 setSignature:v8];

  paymentWebService = self->_paymentWebService;
  account = self->_account;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke;
  v13[3] = &unk_1E801ABF8;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [(PKPaymentWebService *)paymentWebService applePayTrustSignatureRequestWithRequest:v9 account:account completion:v13];
}

void __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2;
  v10[3] = &unk_1E8011D78;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    LOBYTE(v2) = *(a1 + 48) == 0;
  }

  *(*(a1 + 32) + 128) = v2;
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 48));
  v3 = [objc_alloc(MEMORY[0x1E69B8B80]) initWithStatus:*(*(a1 + 32) + 128) ^ 1 errors:0];
  v4 = *(a1 + 40);
  if (v4 && !*(a1 + 48))
  {
    v5 = [v4 payments];
    v6 = [v5 firstObject];

    v7 = [v6 paymentDate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = v7;

    v10 = [v6 scheduleDetails];
    v11 = [v10 scheduledDay];

    if ((v11 - 1) <= 0x1E)
    {
      *(*(a1 + 32) + 160) = v11;
    }

    *(*(a1 + 32) + 32) = [v6 willSkipFirstPaymentForAccount:*(*(a1 + 32) + 24)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    v14 = *(v12 + 24);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3;
    v17[3] = &unk_1E801ABD0;
    v17[4] = v12;
    v18 = v6;
    v15 = v6;
    [v13 updateScheduledPaymentsWithAccount:v14 completion:v17];
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v3);
  }
}

void __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_4;
    v5[3] = &unk_1E8010A10;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __102__PKAccountAutomaticPaymentsController__performApplePayTrustSignatureRequestWithSignature_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
  [WeakRetained accountAutomaticPaymentsController:*(a1 + 32) didSchedulePayment:*(a1 + 40)];
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_paymentAuthorizationCoordinator == v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "[PKAccountAutomaticPaymentsController paymentAuthorizationCoordinatorDidFinish:]";
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%s %p: paymentAuthorizationCoordinatorDidFinish: callback called.", buf, 0x16u);
    }

    paymentAuthorizationCoordinator = self->_paymentAuthorizationCoordinator;
    self->_paymentAuthorizationCoordinator = 0;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
    v7[3] = &unk_1E8010A10;
    v8 = v4;
    v9 = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2;
  v3[3] = &unk_1E8010970;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissWithCompletion:v3];
}

void __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinatorDidFinish___block_invoke_3(uint64_t a1)
{
  (*(*(*(a1 + 32) + 112) + 16))(*(*(a1 + 32) + 112), (*(*(a1 + 32) + 80) == 0) & *(*(a1 + 32) + 128));
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;
}

- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke;
  aBlock[3] = &unk_1E801AC48;
  v9 = v7;
  v17 = v9;
  v18 = self;
  v10 = v8;
  v19 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [(PKPaymentWebService *)self->_paymentWebService targetDevice];
  if (objc_opt_respondsToSelector())
  {
    paymentWebService = self->_paymentWebService;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_3;
    v14[3] = &unk_1E801A030;
    v15 = v11;
    [v12 paymentWebService:paymentWebService deviceMetadataWithFields:123 completion:v14];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

void __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bankAccountInformation];
  [*(a1 + 40) _addNewBankAccountIfNecessary:v5];
  v6 = *(a1 + 40);
  v7 = *(v6 + 56);
  *(v6 + 56) = 0;

  v8 = [*(a1 + 40) _schedulePaymentRequestWithBankAccount:v5];
  [*(*(a1 + 40) + 56) setDeviceMetadata:v4];

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(v10 + 16);
  v12 = *(v10 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_2;
  v13[3] = &unk_1E801AC20;
  v13[4] = v10;
  v14 = v9;
  [v11 schedulePaymentWithRequest:v12 completion:v13];
}

void __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = 0;
  if (a2 && !a3)
  {
    v4 = *(*(a1 + 32) + 56);
    v5 = a2;
    v6 = [v5 referenceIdentifier];
    v7 = [v4 manifestHashWithReferenceIdentifier:v6];

    v8 = objc_alloc(MEMORY[0x1E69B8598]);
    v9 = *MEMORY[0x1E69BB748];
    v10 = [v5 nonce];

    v14 = [v8 initWithKeyIdentifier:v9 manifestHash:v7 nonce:v10];
  }

  v11 = objc_alloc(MEMORY[0x1E69B8D88]);
  v12 = [*(a1 + 32) _paymentSummaryItems];
  v13 = [v11 initWithPaymentSummaryItems:v12];

  (*(*(a1 + 40) + 16))();
}

void __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __117__PKAccountAutomaticPaymentsController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke_4;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneIdentifierForAccountAutomaticPaymentsController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKAccountAutomaticPaymentsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end