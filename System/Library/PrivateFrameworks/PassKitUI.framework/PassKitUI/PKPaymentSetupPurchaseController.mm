@interface PKPaymentSetupPurchaseController
- (PKPaymentSetupPurchaseController)initWithProvisioningController:(id)controller context:(int64_t)context purchaseControllerDelegate:(id)delegate product:(id)product provisioningMetadata:(id)metadata;
- (id)paymentRequestForAmount:(id)amount;
- (id)paymentRequestForProduct:(id)product serviceProviderProduct:(id)providerProduct productItem:(id)item;
- (void)presentAddCardAlert:(id)alert;
- (void)presentTermsAndConditionsWithCompletion:(id)completion;
- (void)presetPaymentRequest:(id)request forResultType:(int64_t)type;
@end

@implementation PKPaymentSetupPurchaseController

- (PKPaymentSetupPurchaseController)initWithProvisioningController:(id)controller context:(int64_t)context purchaseControllerDelegate:(id)delegate product:(id)product provisioningMetadata:(id)metadata
{
  controllerCopy = controller;
  delegateCopy = delegate;
  productCopy = product;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupPurchaseController;
  v17 = [(PKPaymentSetupPurchaseController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_product, product);
    objc_storeStrong(&v18->_provisioningController, controller);
    v18->_setupContext = context;
    objc_storeStrong(&v18->_purchaseControllerDelegate, delegate);
    objc_storeStrong(&v18->_provisioningMethodMetadata, metadata);
  }

  return v18;
}

- (void)presentAddCardAlert:(id)alert
{
  alertCopy = alert;
  v5 = [alertCopy merchantCapabilities] & 0xC;
  supportedNetworks = [alertCopy supportedNetworks];
  v7 = [supportedNetworks count];
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
    v12 = [supportedNetworks objectAtIndexedSubscript:0];
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
    supportedNetworks2 = [alertCopy supportedNetworks];
    v22 = MEMORY[0x1E69DC648];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__PKPaymentSetupPurchaseController_presentAddCardAlert___block_invoke_2;
    v28[3] = &unk_1E8011310;
    v29 = supportedNetworks2;
    selfCopy = self;
    v23 = supportedNetworks2;
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

- (void)presetPaymentRequest:(id)request forResultType:(int64_t)type
{
  requestCopy = request;
  if (type != 2)
  {
    if (type == 9)
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

    if (type != 5)
    {
      [(PKPaymentSetupPurchaseControllerDelegate *)self->_purchaseControllerDelegate showSpinner:1];
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __71__PKPaymentSetupPurchaseController_presetPaymentRequest_forResultType___block_invoke_2;
      v8[3] = &unk_1E8013B00;
      objc_copyWeak(&v10, &location);
      v9 = requestCopy;
      [(PKPaymentSetupPurchaseController *)self presentTermsAndConditionsWithCompletion:v8];

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      goto LABEL_7;
    }
  }

  [(PKPaymentSetupPurchaseController *)self presentAddCardAlert:requestCopy];
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

- (id)paymentRequestForAmount:(id)amount
{
  amountCopy = amount;
  depositType = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositType];
  v6 = @"SETUP_PURCHASE_REFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  if (depositType == 2)
  {
    v6 = @"SETUP_PURCHASE_NONREFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  }

  if (depositType == 1)
  {
    v6 = @"SETUP_PURCHASE_REFUNDABLE_DEPOSIT_ITEM_LABEL";
  }

  p_isa = &v6->isa;
  v7 = amountCopy;
  depositAmount = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositAmount];
  v9 = v7;
  if (depositAmount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v11 = [zero compare:depositAmount];

    v9 = v7;
    if (v11 == -1)
    {
      v9 = [v7 decimalNumberByAdding:depositAmount];
    }
  }

  digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v13 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  action = [digitalIssuanceMetadata action];
  [v13 setItemDescription:action];

  v15 = objc_alloc(MEMORY[0x1E695DF90]);
  serviceProviderDict = [digitalIssuanceMetadata serviceProviderDict];
  v17 = [v15 initWithDictionary:serviceProviderDict];

  [v17 setObject:v9 forKey:*MEMORY[0x1E69BC3E0]];
  v44 = v17;
  [v13 setServiceProviderData:v17];
  serviceProviderIdentifier = [digitalIssuanceMetadata serviceProviderIdentifier];
  [v13 setServiceProviderIdentifier:serviceProviderIdentifier];

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
  serviceProviderAcceptedNetworks = [digitalIssuanceMetadata serviceProviderAcceptedNetworks];
  [v21 setSupportedNetworks:serviceProviderAcceptedNetworks];

  serviceProviderCapabilities = [digitalIssuanceMetadata serviceProviderCapabilities];
  [v21 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  serviceProviderCountryCode = [digitalIssuanceMetadata serviceProviderCountryCode];
  [v21 setCountryCode:serviceProviderCountryCode];

  currency = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata currency];
  [v21 setCurrencyCode:currency];

  serviceProviderSupportedCountries = [digitalIssuanceMetadata serviceProviderSupportedCountries];
  [v21 setSupportedCountries:serviceProviderSupportedCountries];

  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v28 = MEMORY[0x1E69B8E90];
  v29 = PKLocalizedPaymentString(&cfstr_SetupPurchaseT_0.isa);
  v46 = v7;
  v30 = [v28 summaryItemWithLabel:v29 amount:v7];

  [v27 addObject:v30];
  if (depositAmount)
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
    v32 = [zero2 compare:depositAmount];

    if (v32 == -1)
    {
      v33 = MEMORY[0x1E69B8E90];
      v34 = PKLocalizedPaymentString(p_isa);
      v35 = [v33 summaryItemWithLabel:v34 amount:depositAmount];

      [v27 addObject:v35];
    }
  }

  serviceProviderLocalizedDisplayName = [digitalIssuanceMetadata serviceProviderLocalizedDisplayName];
  v37 = serviceProviderLocalizedDisplayName;
  if (serviceProviderLocalizedDisplayName)
  {
    displayName = serviceProviderLocalizedDisplayName;
  }

  else
  {
    displayName = [(PKPaymentSetupProduct *)self->_product displayName];
  }

  v39 = displayName;

  v40 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v39 amount:v45];
  [v27 addObject:v40];
  [v21 setPaymentSummaryItems:v27];

  return v21;
}

- (id)paymentRequestForProduct:(id)product serviceProviderProduct:(id)providerProduct productItem:(id)item
{
  v68[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  amount = [itemCopy amount];
  depositAmount = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositAmount];
  depositType = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata depositType];
  v10 = @"SETUP_PURCHASE_REFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  if (depositType == 2)
  {
    v10 = @"SETUP_PURCHASE_NONREFUNDABLE_SERVICE_FEE_ITEM_LABEL";
  }

  if (depositType == 1)
  {
    v10 = @"SETUP_PURCHASE_REFUNDABLE_DEPOSIT_ITEM_LABEL";
  }

  p_isa = &v10->isa;
  v65 = depositAmount;
  if (depositAmount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v12 = [zero compare:depositAmount];

    if (v12 == -1)
    {
      v13 = [amount decimalNumberByAdding:depositAmount];

      amount = v13;
    }
  }

  digitalIssuanceMetadata = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata digitalIssuanceMetadata];
  v15 = objc_alloc_init(MEMORY[0x1E69B8A10]);
  action = [digitalIssuanceMetadata action];
  [v15 setItemDescription:action];

  v17 = objc_alloc(MEMORY[0x1E695DF90]);
  serviceProviderDict = [digitalIssuanceMetadata serviceProviderDict];
  v19 = [v17 initWithDictionary:serviceProviderDict];

  [v19 setObject:amount forKey:*MEMORY[0x1E69BC3E0]];
  v67[0] = @"identifier";
  identifier = [itemCopy identifier];
  v67[1] = @"amount";
  v68[0] = identifier;
  v68[1] = amount;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];

  v61 = v21;
  v66 = v21;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  [v19 setObject:? forKey:?];
  v62 = v19;
  [v15 setServiceProviderData:v19];
  serviceProviderIdentifier = [digitalIssuanceMetadata serviceProviderIdentifier];
  [v15 setServiceProviderIdentifier:serviceProviderIdentifier];

  v64 = amount;
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
  serviceProviderAcceptedNetworks = [digitalIssuanceMetadata serviceProviderAcceptedNetworks];
  [v25 setSupportedNetworks:serviceProviderAcceptedNetworks];

  serviceProviderCapabilities = [digitalIssuanceMetadata serviceProviderCapabilities];
  [v25 setMerchantCapabilities:PKMerchantCapabilityFromStrings()];

  serviceProviderCountryCode = [digitalIssuanceMetadata serviceProviderCountryCode];
  [v25 setCountryCode:serviceProviderCountryCode];

  currency = [(PKPaymentProvisioningMethodMetadata *)self->_provisioningMethodMetadata currency];
  [v25 setCurrencyCode:currency];

  serviceProviderSupportedCountries = [digitalIssuanceMetadata serviceProviderSupportedCountries];
  [v25 setSupportedCountries:serviceProviderSupportedCountries];

  v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  localizedDisplayName = [itemCopy localizedDisplayName];
  localizedDescription = [itemCopy localizedDescription];
  v34 = localizedDescription;
  v58 = localizedDisplayName;
  if (localizedDescription)
  {
    v35 = [localizedDescription length];

    if (v35)
    {
      v36 = localizedDisplayName;
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

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", localizedDisplayName, v56];
  v40 = LABEL_20:;
  v41 = MEMORY[0x1E69B8E90];
  v42 = itemCopy;
  amount2 = [itemCopy amount];
  v44 = [v41 summaryItemWithLabel:v40 amount:amount2];

  [v31 addObject:v44];
  if (v65)
  {
    zero2 = [MEMORY[0x1E696AB90] zero];
    v46 = [zero2 compare:v65];

    if (v46 == -1)
    {
      v47 = MEMORY[0x1E69B8E90];
      v48 = PKLocalizedPaymentString(p_isa);
      v49 = [v47 summaryItemWithLabel:v48 amount:v65];

      [v31 addObject:v49];
    }
  }

  serviceProviderLocalizedDisplayName = [digitalIssuanceMetadata serviceProviderLocalizedDisplayName];
  v51 = serviceProviderLocalizedDisplayName;
  if (serviceProviderLocalizedDisplayName)
  {
    displayName = serviceProviderLocalizedDisplayName;
  }

  else
  {
    displayName = [(PKPaymentSetupProduct *)self->_product displayName];
  }

  v53 = displayName;

  v54 = [MEMORY[0x1E69B8E90] summaryItemWithLabel:v53 amount:v64];
  [v31 addObject:v54];
  [v25 setPaymentSummaryItems:v31];

  return v25;
}

- (void)presentTermsAndConditionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_acceptedTerms)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  else
  {
    termsURL = [(PKPaymentSetupProduct *)self->_product termsURL];
    if (termsURL)
    {
      v7 = self->_purchaseControllerDelegate;
      if (v7)
      {
        webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
        v9 = [PKProvisioningTermsPresenter alloc];
        context = [webService context];
        v11 = -[PKProvisioningTermsPresenter initWithAllowNonSecureHTTP:paymentSetupContext:](v9, "initWithAllowNonSecureHTTP:paymentSetupContext:", [context devSigned], self->_setupContext);
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
        [(PKProvisioningTermsPresenter *)v13 presentWithTermsUrl:termsURL forViewController:v7 completion:v14];

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