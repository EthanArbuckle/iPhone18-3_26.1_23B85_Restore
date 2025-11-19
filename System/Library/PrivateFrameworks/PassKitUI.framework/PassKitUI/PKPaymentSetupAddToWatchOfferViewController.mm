@interface PKPaymentSetupAddToWatchOfferViewController
+ (void)shouldShowAddToWatchOfferForPass:(id)a3 inContext:(int64_t)a4 externalProvisioningDeviceSerialNumbers:(id)a5 completion:(id)a6;
+ (void)shouldShowAddToWatchOfferForPass:(id)a3 inContext:(int64_t)a4 withCompletion:(id)a5;
- (PKPaymentSetupAddToWatchOfferViewController)initWithPaymentPass:(id)a3 context:(int64_t)a4 dismissalHandler:(id)a5;
- (void)_handleBridgeProvisioningError:(id)a3;
- (void)_handleDismissal:(BOOL)a3;
- (void)addToWatchOfferViewControllerDidNotRequestToAddToWatch;
- (void)addToWatchOfferViewControllerDidRequestToAddToWatch;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PKPaymentSetupAddToWatchOfferViewController

+ (void)shouldShowAddToWatchOfferForPass:(id)a3 inContext:(int64_t)a4 withCompletion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_withCompletion___block_invoke;
  v9[3] = &unk_1E8019160;
  v10 = v7;
  v8 = v7;
  [PKPaymentSetupAddToWatchOfferViewController shouldShowAddToWatchOfferForPass:a3 inContext:a4 externalProvisioningDeviceSerialNumbers:0 completion:v9];
}

+ (void)shouldShowAddToWatchOfferForPass:(id)a3 inContext:(int64_t)a4 externalProvisioningDeviceSerialNumbers:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Checking add to watch offer for pass", buf, 2u);
    }

    if (PKPaymentSetupContextIsBridge())
    {
      v10[2](v10, 0, @"FlowType is bridge");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsSetupAssistant())
    {
      v10[2](v10, 0, @"FlowType is setup assistant");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsIssuerApp())
    {
      v10[2](v10, 0, @"FlowType is issuer app");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsMerchantApp())
    {
      v10[2](v10, 0, @"FlowType is merchant app");
      goto LABEL_19;
    }

    if ((PKIsPhone() & 1) == 0)
    {
      v10[2](v10, 0, @"Companion is not supported on device");
      goto LABEL_19;
    }

    if (!v8 || ([v8 supportsSerialNumberBasedProvisioning] & 1) == 0)
    {
      v10[2](v10, 0, @"pass doesn't support serial number based provisioning");
      goto LABEL_19;
    }

    if ([v8 requiresTransferSerialNumberBasedProvisioning])
    {
      v10[2](v10, 0, @"pass requires transfer");
      goto LABEL_19;
    }

    if (v9)
    {
      v12 = PKPairedOrPairingDevice();
      v13 = PKSerialNumberFromNRDevice();

      if ([v9 containsObject:v13])
      {
        v10[2](v10, 0, @"pass already provisioned onto watch earlier in flow");
LABEL_26:

        goto LABEL_19;
      }
    }

    v13 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3[0]());
    if (v13)
    {
      v14 = [v8 paymentPass];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke;
      v15[3] = &unk_1E80158C0;
      v16 = v13;
      v17 = v10;
      [v16 shouldShowWatchOfferForPaymentPass:v14 withCompletion:v15];
    }

    goto LABEL_26;
  }

LABEL_19:
}

void __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke_2;
  v2[3] = &unk_1E8010FA8;
  v4 = a2;
  v3 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (PKPaymentSetupAddToWatchOfferViewController)initWithPaymentPass:(id)a3 context:(int64_t)a4 dismissalHandler:(id)a5
{
  v8 = a5;
  v9 = [(PKAddToWatchOfferViewController *)self initWithPass:a3 context:a4];
  if (v9)
  {
    v10 = [v8 copy];
    dismissalHandler = v9->_dismissalHandler;
    v9->_dismissalHandler = v10;
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupAddToWatchOfferViewController;
  [(PKPaymentSetupAddToWatchOfferViewController *)&v7 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  v4 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3[0]());
  v5 = [(PKAddToWatchOfferViewController *)self pass];
  v6 = [v5 paymentPass];
  [v4 noteWatchOfferShownForPaymentPass:v6];
}

- (void)_handleBridgeProvisioningError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportError:v4 context:0];
    v5 = MEMORY[0x1E69DC650];
    v6 = PKTitleForDisplayableError();
    v7 = MEMORY[0x1BFB42D10](v4);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = [v4 localizedRecoveryOptions];
    v10 = [v9 firstObject];

    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69BB898]];

    v13 = @"OK_BUTTON_TITLE";
    if (v10 && v12)
    {
      v14 = MEMORY[0x1E69DC648];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __78__PKPaymentSetupAddToWatchOfferViewController__handleBridgeProvisioningError___block_invoke;
      v21 = &unk_1E8011310;
      v22 = v12;
      v23 = self;
      v15 = [v14 actionWithTitle:v10 style:0 handler:&v18];
      [v8 addAction:{v15, v18, v19, v20, v21}];

      v13 = @"CANCEL";
    }

    v16 = PKLocalizedString(&v13->isa);
    v17 = [MEMORY[0x1E69DC648] actionWithTitle:v16 style:1 handler:0];
    [v8 addAction:v17];
    [(PKPaymentSetupAddToWatchOfferViewController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(PKPaymentSetupAddToWatchOfferViewController *)self _handleDismissal:0];
  }
}

uint64_t __78__PKPaymentSetupAddToWatchOfferViewController__handleBridgeProvisioningError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];

  v3 = *(a1 + 40);

  return [v3 _handleDismissal:0];
}

- (void)_handleDismissal:(BOOL)a3
{
  v3 = a3;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:a3 context:0];
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    v6 = *(dismissalHandler + 2);

    v6();
  }

  else
  {
    v7 = [(PKPaymentSetupAddToWatchOfferViewController *)self presentingViewController];
    [v7 dismissViewControllerAnimated:!v3 completion:0];
  }
}

- (void)addToWatchOfferViewControllerDidNotRequestToAddToWatch
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];

  [(PKPaymentSetupAddToWatchOfferViewController *)self _handleDismissal:0];
}

- (void)addToWatchOfferViewControllerDidRequestToAddToWatch
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  v3 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3[0]());
  [(PKAddToWatchOfferViewController *)self showSpinner:1];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke;
  v15[3] = &unk_1E8011A18;
  v15[4] = &v16;
  v5 = [v4 beginBackgroundTaskWithName:@"com.apple.passbook.watchOffer" expirationHandler:v15];
  v17[3] = v5;

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Asking bridge to open from watch offer", buf, 2u);
  }

  v7 = [(PKAddToWatchOfferViewController *)self pass];
  v8 = [v7 paymentPass];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_57;
  v10[3] = &unk_1E8019188;
  v9 = v3;
  v11 = v9;
  v12 = self;
  v13 = &v16;
  [v9 beginProvisioningFromWatchOfferForPaymentPass:v8 withCompletion:v10];

  _Block_object_dispose(&v16, 8);
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_57(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_2;
  v8[3] = &unk_1E8015378;
  v11 = a2;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showSpinner:0];
  if (*(a1 + 56) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Success opening bridge", buf, 2u);
    }

    v3 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_58;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    goto LABEL_15;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E69BB840]])
    {
      v6 = [*(a1 + 40) code];

      if (v6 == 10)
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Bridge failed to open from watch offer. Wallet not installed in Watch", buf, 2u);
        }

        [*(*(a1 + 32) + 1120) reportPageCompleted:0 context:0];
        v8 = PKCreateAlertControllerForWatchWalletUninstalled(0);
        [*(a1 + 32) presentViewController:v8 animated:1 completion:0];

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Bridge failed to open from watch offer showing error", buf, 2u);
  }

  [*(a1 + 32) _handleBridgeProvisioningError:*(a1 + 40)];
LABEL_15:
  v10 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 48) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];

    *(*(*(a1 + 48) + 8) + 24) = v10;
  }
}

@end