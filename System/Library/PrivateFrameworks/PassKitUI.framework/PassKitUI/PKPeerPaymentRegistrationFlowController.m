@interface PKPeerPaymentRegistrationFlowController
- (PKPaymentSetupDelegate)setupDelegate;
- (PKPeerPaymentRegistrationFlowController)initWithAccount:(id)a3 currencyAmount:(id)a4 state:(unint64_t)a5 senderAddress:(id)a6 setupDelegate:(id)a7;
- (PKPeerPaymentRegistrationFlowController)initWithUserInfo:(id)a3 setupDelegate:(id)a4;
- (void)preflightWithCompletion:(id)a3;
@end

@implementation PKPeerPaymentRegistrationFlowController

- (PKPeerPaymentRegistrationFlowController)initWithAccount:(id)a3 currencyAmount:(id)a4 state:(unint64_t)a5 senderAddress:(id)a6 setupDelegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentRegistrationFlowController;
  v17 = [(PKPeerPaymentRegistrationFlowController *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, a3);
    objc_storeStrong(&v18->_currencyAmount, a4);
    v18->_state = a5;
    objc_storeStrong(&v18->_senderAddress, a6);
    objc_storeWeak(&v18->_setupDelegate, v16);
  }

  return v18;
}

- (PKPeerPaymentRegistrationFlowController)initWithUserInfo:(id)a3 setupDelegate:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PKPeerPaymentRegistrationFlowController;
  v8 = [(PKPeerPaymentRegistrationFlowController *)&v26 init];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = [v6 objectForKey:@"account"];
  v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:0];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = *MEMORY[0x1E696A508];
    v27 = 0;
    v13 = [v10 decodeTopLevelObjectOfClass:v11 forKey:v12 error:&v27];
    v14 = v27;
    [v10 finishDecoding];
    if (v13)
    {
      goto LABEL_10;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 description];
      *buf = 138412290;
      v29 = v16;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Could not unarchive peer payment account data with error:%@", buf, 0xCu);
    }
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Could not initialize unarchiver with peer payment account data.", buf, 2u);
    }
  }

  v13 = 0;
LABEL_10:

  account = v8->_account;
  v8->_account = v13;

  v18 = [v6 PKDecimalNumberForKey:@"amount"];
  v19 = [v6 PKStringForKey:@"currency"];
  if ([(NSString *)v19 length]&& v18)
  {
    v20 = PKCurrencyAmountCreate(v18, v19);
    currencyAmount = v8->_currencyAmount;
    v8->_currencyAmount = v20;
  }

  v22 = [v6 objectForKey:@"senderAddress"];
  senderAddress = v8->_senderAddress;
  v8->_senderAddress = v22;

  v24 = [v6 objectForKey:@"state"];
  v8->_state = [v24 unsignedIntegerValue];

  objc_storeWeak(&v8->_setupDelegate, v7);
LABEL_14:

  return v8;
}

- (void)preflightWithCompletion:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (self->_account)
    {
      v5 = objc_alloc(MEMORY[0x1E69B8D48]);
      v6 = [MEMORY[0x1E69B8EF8] sharedService];
      v7 = [v5 initWithWebService:v6];

      v8 = [objc_alloc(MEMORY[0x1E69B8F38]) initWithPeerPaymentAccount:self->_account];
      [v8 setAmount:self->_currencyAmount];
      [v8 setFlowState:self->_state];
      [v8 setPendingPaymentSenderAddress:self->_senderAddress];
      if (v8)
      {
        v17[0] = v8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke;
        v12[3] = &unk_1E8017470;
        v13 = v7;
        v14 = self;
        v15 = v4;
        [v13 associateCredentials:v9 withCompletionHandler:v12];

        v10 = v13;
      }

      else
      {
        v11 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Could not create peer payment credential.", buf, 2u);
        }

        v10 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:0];
        [v10 setModalInPresentation:1];
        (*(v4 + 2))(v4, v10);
      }
    }

    else
    {
      v7 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:0];
      [v7 setModalInPresentation:1];
      (*(v4 + 2))(v4, v7);
    }
  }
}

void __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke_2;
  block[3] = &unk_1E8021110;
  v15 = a2;
  v11 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1 && !*(a1 + 32))
  {
    v5 = [[PKPaymentSetupNavigationController alloc] initWithProvisioningController:*(a1 + 40) context:0];
    [(PKPaymentSetupNavigationController *)v5 setPaymentSetupMode:1];
    [(PKNavigationController *)v5 setCustomFormSheetPresentationStyleForiPad];
    [(PKPaymentSetupNavigationController *)v5 setAllowsManualEntry:0];
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 40));
    [(PKPaymentSetupNavigationController *)v5 setSetupDelegate:WeakRetained];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke_3;
    v7[3] = &unk_1E80158C0;
    v8 = v5;
    v9 = *(a1 + 56);
    v4 = v5;
    [(PKPaymentSetupNavigationController *)v4 preflightWithCompletion:v7];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) description];
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Peer Payment associateCredential failed for local device with error:%@", buf, 0xCu);
    }

    v4 = [PKPaymentSetupNavigationController viewControllerForPresentingPaymentError:*(a1 + 32)];
    [(PKPaymentSetupNavigationController *)v4 setModalInPresentation:1];
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __67__PKPeerPaymentRegistrationFlowController_preflightWithCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setModalInPresentation:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (PKPaymentSetupDelegate)setupDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_setupDelegate);

  return WeakRetained;
}

@end