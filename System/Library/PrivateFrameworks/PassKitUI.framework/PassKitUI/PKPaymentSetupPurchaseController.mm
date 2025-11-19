@interface PKPaymentSetupPurchaseController
- (PKPaymentSetupPurchaseController)initWithProvisioningController:(id)a3 context:(int64_t)a4 purchaseControllerDelegate:(id)a5 product:(id)a6 provisioningMetadata:(id)a7;
- (id)paymentRequestForAmount:(id)a3;
- (id)paymentRequestForProduct:(id)a3 serviceProviderProduct:(id)a4 productItem:(id)a5;
- (void)presentAddCardAlert:(id)a3;
- (void)presentTermsAndConditionsWithCompletion:(id)a3;
- (void)presetPaymentRequest:(id)a3 forResultType:(int64_t)a4;
@end

@implementation PKPaymentSetupPurchaseController

- (PKPaymentSetupPurchaseController)initWithProvisioningController:(id)a3 context:(int64_t)a4 purchaseControllerDelegate:(id)a5 product:(id)a6 provisioningMetadata:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupPurchaseController;
  v17 = [(PKPaymentSetupPurchaseController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_product, a6);
    objc_storeStrong(&v18->_provisioningController, a3);
    v18->_setupContext = a4;
    objc_storeStrong(&v18->_purchaseControllerDelegate, a5);
    objc_storeStrong(&v18->_provisioningMethodMetadata, a7);
  }

  return v18;
}

- (void)presentAddCardAlert:(id)a3
{
  v4 = a3;
  v5 = [v4 merchantCapabilities] & 0xC;
  v6 = [v4 supportedNetworks];
  v7 = [v6 count];
  v8 = PKLocalizedPaymentString(&cfstr_SetupPurchaseP.isa);
  v26 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA_1.isa);
  if (v7 == 1)
  {
    v9 = @"SETUP_PURCHASE_ADD_SPECIFIC_CARD_ALERT_MESSAGE";
    if (v5 == 8)
    {
      v9 = @"SETUP_PURCHASE_ADD_SPECIFIC_DEBIT_CARD_ALERT_MESSAGE";
      v10 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ADD_SPECIFIC_DEBIT_CARD_ACTION";
    }

    else
    {
      v10 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ADD_SPECIFIC_CARD_ACTION";
    }

    v11 = v9;
    v12 = [v6 objectAtIndexedSubscript:0];
    PKPaymentCredentialTypeForPaymentNetworkName();

    v13 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    v14 = PKLocalizedPaymentString(v11, &stru_1F3BD5BF0.isa, v13);

    v15 = v10;
    v16 = PKDisplayablePaymentNetworkNameForPaymentCredentialType();
    v17 = PKLocalizedPaymentString(v15, &stru_1F3BD5BF0.isa, v16);
  }

  else
  {
    if (v5 == 8)
    {
      v14 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA_6.isa);
      v18 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ADD_DEBIT_CARD_ACTION";
    }

    else
    {
      v14 = PKLocalizedPaymentString(&cfstr_SetupPurchaseA_7.isa);
      v18 = @"SETUP_PURCHASE_ADD_PAYMENT_METHOD_ADD_CARD_ACTION";
    }

    v17 = PKLocalizedPaymentString(&v18->isa);
  }

  v19 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v14 preferredStyle:1];
  if (self->_setupContext == 4)
  {
    v20 = [MEMORY[0x1E69DC648] actionWithTitle:v17 style:0 handler:&__block_literal_global_224];
    [v19 addAction:v20];
  }

  else
  {
    v21 = [v4 supportedNetworks];
    v22 = MEMORY[0x1E69DC648];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_2;
    v28[3] = &unk_1E8011310;
    v29 = v21;
    v30 = self;
    v23 = v21;
    v24 = [v22 actionWithTitle:v17 style:0 handler:v28];
    [v19 addAction:v24];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_8;
  v27[3] = &unk_1E80112E8;
  v27[4] = self;
  v25 = [MEMORY[0x1E69DC648] actionWithTitle:v26 style:1 handler:v27];
  [v19 addAction:v25];

  [(PKPaymentSetupPurchaseControllerDelegate *)self->_purchaseControllerDelegate presentViewController:v19 animated:1 completion:0];
}

void __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke()
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"shoebox://", *MEMORY[0x1E69BC5C8]];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  v1 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  [v0 openURL:v1 configuration:0 completionHandler:0];
}

void __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B8EF8] sharedService];
  v3 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:v2];
  [v3 setAllowedPaymentNetworks:*(a1 + 32)];
  [*(*(a1 + 40) + 24) showSpinner:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_3;
  v6[3] = &unk_1E8013D88;
  v4 = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 preflightWithCompletion:v6];
}

void __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:8 provisioningController:*(a1 + 32) groupsController:0];
    v7 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:8];
    [(PKPaymentSetupDismissibleNavigationController *)v7 useStandardPlatformPresentationStyle];
    objc_initWeak(&location, *(a1 + 40));
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_4;
    v16[3] = &unk_1E8010A10;
    v16[4] = *(a1 + 40);
    v8 = v7;
    v17 = v8;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_6;
    v13[3] = &unk_1E80110E0;
    objc_copyWeak(&v15, &location);
    v9 = v8;
    v14 = v9;
    [PKProvisioningFlowBridge startProvisionToPurchaseFlowWithNavController:v9 context:v6 onFirstViewControllerShown:v16 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(*(a1 + 40) + 24) showSpinner:0];
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = PKDisplayableErrorForCommonType();
    }

    v6 = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_7;
    v12[3] = &unk_1E8010970;
    v12[4] = *(a1 + 40);
    v11 = PKAlertForDisplayableErrorWithHandlers(v10, 0, v12, 0);
    [*(*(a1 + 40) + 24) presentViewController:v11 animated:1 completion:0];
  }
}

uint64_t __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 24) showSpinner:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 presentViewController:v2 animated:1 completion:&__block_literal_global_115];
}

void __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] paymentSetupDidFinish:*(a1 + 32)];
    WeakRetained = v3;
  }
}

uint64_t __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_7(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 showKeyPad];
  }

  return result;
}

uint64_t __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_8(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 showKeyPad];
  }

  return result;
}

- (void)presetPaymentRequest:(id)a3 forResultType:(int64_t)a4
{
  v6 = a3;
  if (a4 != 2)
  {
    if (a4 == 9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __71__PKPaymentSetupPurchaseController_presetPaymentRequest_forResultType___block_invoke;
      v12[3] = &unk_1E8010970;
      v12[4] = self;
      v7 = PKCreateAlertControllerForWalletUninstalled(v12);
      [(PKPaymentSetupPurchaseControllerDelegate *)self->_purchaseControllerDelegate presentViewController:v7 animated:1 completion:0];

      goto LABEL_7;
    }

    if (a4 != 5)
    {
      [(PKPaymentSetupPurchaseControllerDelegate *)self->_purchaseControllerDelegate showSpinner:1];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __71__PKPaymentSetupPurchaseController_presetPaymentRequest_forResultType___block_invoke_2;
      v8[3] = &unk_1E8013B00;
      objc_copyWeak(&v10, &location);
      v9 = v6;
      [(PKPaymentSetupPurchaseController *)self presentTermsAndConditionsWithCompletion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      goto LABEL_7;
    }
  }

  [(PKPaymentSetupPurchaseController *)self presentAddCardAlert:v6];
LABEL_7:
}

uint64_t __71__PKPaymentSetupPurchaseController_presetPaymentRequest_forResultType___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(*(a1 + 32) + 24);

    return [v3 showKeyPad];
  }

  return result;
}

void __71__PKPaymentSetupPurchaseController_presetPaymentRequest_forResultType___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained[3] showSpinner:0];
    WeakRetained = v6;
    if (a2)
    {
      v5 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:*(a1 + 32)];
      [v5 setDelegate:v6[3]];
      [v5 _setPrivateDelegate:v6[3]];
      [v5 presentWithCompletion:0];

      WeakRetained = v6;
    }
  }
}

- (id)paymentRequestForAmount:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositType];
  v6 = @"SETUP_PURCHASE_REFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  if (v5 == 2)
  {
    v6 = @"SETUP_PURCHASE_NONREFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  }

  if (v5 == 1)
  {
    v6 = @"SETUP_PURCHASE_REFUNDABLE_DEPOSIT_ITEM_LABEL";
  }

  p_isa = &v6->isa;
  v7 = v4;
  v8 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositAmount];
  v9 = v7;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AB90] zero];
    v11 = [v10 compare:v8];

    v9 = v7;
    if (v11 == -1)
    {
      v9 = [v7 decimalNumberByAdding:v8];
    }
  }

  v12 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v13 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  v14 = [v12 action];
  [v13 setItemDescription:v14];

  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = [v12 serviceProviderDict];
  v17 = [v15 initWithDictionary:v16];

  [v17 setObject:v9 forKey:*MEMORY[0x1E69BC3E0]];
  v44 = v17;
  [v13 setServiceProviderData:v17];
  v18 = [v12 serviceProviderIdentifier];
  [v13 setServiceProviderIdentifier:v18];

  v45 = v9;
  if (self->_setupContext == 4 && PKIsAltAccountPairedOrPairing())
  {
    v19 = PKPairedOrPairingDevice();
    v20 = PKSerialNumberFromNRDevice();
  }

  else
  {
    v20 = 0;
  }

  v43 = v20;
  v21 = [objc_alloc(MEMORY[0x1E69B9218]) initWithServiceProviderOrder:v13 targetDeviceSerialNumber:v20];
  v22 = [v12 serviceProviderAcceptedNetworks];
  [v21 setSupportedNetworks:v22];

  v23 = [v12 serviceProviderCapabilities];
  [v21 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  v24 = [v12 serviceProviderCountryCode];
  [v21 setCountryCode:v24];

  v25 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata currency];
  [v21 setCurrencyCode:v25];

  v26 = [v12 serviceProviderSupportedCountries];
  [v21 setSupportedCountries:v26];

  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v28 = MEMORY[0x1E69B8E90];
  v29 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT_0.isa);
  v46 = v7;
  v30 = [v28 summaryItemWithLabel:v29 amount:v7];

  [v27 addObject:v30];
  if (v8)
  {
    v31 = [MEMORY[0x1E696AB90] zero];
    v32 = [v31 compare:v8];

    if (v32 == -1)
    {
      v33 = MEMORY[0x1E69B8E90];
      v34 = PKLocalizedPaymentString(p_isa);
      v35 = [v33 summaryItemWithLabel:v34 amount:v8];

      [v27 addObject:v35];
    }
  }

  v36 = [v12 serviceProviderLocalizedDisplayName];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = [(PKPaymentSetupProduct *)self->_product displayName];
  }

  v39 = v38;

  v40 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v39 amount:v45];
  [v27 addObject:v40];
  [v21 setPaymentSummaryItems:v27];

  return v21;
}

- (id)paymentRequestForProduct:(id)a3 serviceProviderProduct:(id)a4 productItem:(id)a5
{
  v68[2] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [v6 amount];
  v8 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositAmount];
  v9 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositType];
  v10 = @"SETUP_PURCHASE_REFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  if (v9 == 2)
  {
    v10 = @"SETUP_PURCHASE_NONREFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  }

  if (v9 == 1)
  {
    v10 = @"SETUP_PURCHASE_REFUNDABLE_DEPOSIT_ITEM_LABEL";
  }

  p_isa = &v10->isa;
  v65 = v8;
  if (v8)
  {
    v11 = [MEMORY[0x1E696AB90] zero];
    v12 = [v11 compare:v8];

    if (v12 == -1)
    {
      v13 = [v7 decimalNumberByAdding:v8];

      v7 = v13;
    }
  }

  v14 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v15 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  v16 = [v14 action];
  [v15 setItemDescription:v16];

  v17 = objc_alloc(MEMORY[0x1E695DF90]);
  v18 = [v14 serviceProviderDict];
  v19 = [v17 initWithDictionary:v18];

  [v19 setObject:v7 forKey:*MEMORY[0x1E69BC3E0]];
  v67[0] = @"identifier";
  v20 = [v6 identifier];
  v67[1] = @"amount";
  v68[0] = v20;
  v68[1] = v7;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];

  v61 = v21;
  v66 = v21;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  [v19 setObject:? forKey:?];
  v62 = v19;
  [v15 setServiceProviderData:v19];
  v22 = [v14 serviceProviderIdentifier];
  [v15 setServiceProviderIdentifier:v22];

  v64 = v7;
  if (self->_setupContext == 4 && PKIsAltAccountPairedOrPairing())
  {
    v23 = PKPairedOrPairingDevice();
    v24 = PKSerialNumberFromNRDevice();
  }

  else
  {
    v24 = 0;
  }

  v63 = v15;
  v59 = v24;
  v25 = [objc_alloc(MEMORY[0x1E69B9218]) initWithServiceProviderOrder:v15 targetDeviceSerialNumber:v24];
  v26 = [v14 serviceProviderAcceptedNetworks];
  [v25 setSupportedNetworks:v26];

  v27 = [v14 serviceProviderCapabilities];
  [v25 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  v28 = [v14 serviceProviderCountryCode];
  [v25 setCountryCode:v28];

  v29 = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata currency];
  [v25 setCurrencyCode:v29];

  v30 = [v14 serviceProviderSupportedCountries];
  [v25 setSupportedCountries:v30];

  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v32 = [v6 localizedDisplayName];
  v33 = [v6 localizedDescription];
  v34 = v33;
  v58 = v32;
  if (v33)
  {
    v35 = [v33 length];

    if (v35)
    {
      v36 = v32;
      v37 = v34;
      v38 = v37;
      if (v36 == v37)
      {
      }

      else
      {
        if (!v36)
        {

LABEL_30:
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v36, v38];
          goto LABEL_20;
        }

        v39 = [v36 isEqualToString:v37];

        if (!v39)
        {
          goto LABEL_30;
        }
      }
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v32, v56];
  v40 = LABEL_20:;
  v41 = MEMORY[0x1E69B8E90];
  v42 = v6;
  v43 = [v6 amount];
  v44 = [v41 summaryItemWithLabel:v40 amount:v43];

  [v31 addObject:v44];
  if (v65)
  {
    v45 = [MEMORY[0x1E696AB90] zero];
    v46 = [v45 compare:v65];

    if (v46 == -1)
    {
      v47 = MEMORY[0x1E69B8E90];
      v48 = PKLocalizedPaymentString(p_isa);
      v49 = [v47 summaryItemWithLabel:v48 amount:v65];

      [v31 addObject:v49];
    }
  }

  v50 = [v14 serviceProviderLocalizedDisplayName];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = [(PKPaymentSetupProduct *)self->_product displayName];
  }

  v53 = v52;

  v54 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v53 amount:v64];
  [v31 addObject:v54];
  [v25 setPaymentSummaryItems:v31];

  return v25;
}

- (void)presentTermsAndConditionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_acceptedTerms)
  {
    (*(v4 + 2))(v4, 1, 0);
  }

  else
  {
    v6 = [(PKPaymentSetupProduct *)self->_product termsURL];
    if (v6)
    {
      v7 = self->_purchaseControllerDelegate;
      if (v7)
      {
        v8 = [(PKPaymentProvisioningController *)self->_provisioningController webService];
        v9 = [PKProvisioningTermsPresenter alloc];
        v10 = [v8 context];
        v11 = -[PKProvisioningTermsPresenter initWithAllowNonSecureHTTP:paymentSetupContext:](v9, "initWithAllowNonSecureHTTP:paymentSetupContext:", [v10 devSigned], self->_setupContext);
        termsPresenter = self->_termsPresenter;
        self->_termsPresenter = v11;

        objc_initWeak(&location, self);
        v13 = self->_termsPresenter;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __76__PKPaymentSetupPurchaseController_presentTermsAndConditionsWithCompletion___block_invoke;
        v14[3] = &unk_1E8017218;
        objc_copyWeak(&v16, &location);
        v15 = v5;
        [(PKProvisioningTermsPresenter *)v13 presentWithTermsUrl:v6 forViewController:v7 completion:v14];

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }

      else
      {
        v5[2](v5, 0, 0);
      }
    }

    else
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __76__PKPaymentSetupPurchaseController_presentTermsAndConditionsWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKPaymentSetupPurchaseController_presentTermsAndConditionsWithCompletion___block_invoke_2;
  v8[3] = &unk_1E8020C68;
  objc_copyWeak(&v11, (a1 + 40));
  v12 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
}

void __76__PKPaymentSetupPurchaseController_presentTermsAndConditionsWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    WeakRetained[6] = 0;
    v5 = WeakRetained;

    if (*(a1 + 56) == 1)
    {
      [v5 setAcceptedTerms:1];
      v4 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v5[3] showKeyPad];
      }

      v4 = *(*(a1 + 40) + 16);
    }

    v4();
    WeakRetained = v5;
  }
}

@end