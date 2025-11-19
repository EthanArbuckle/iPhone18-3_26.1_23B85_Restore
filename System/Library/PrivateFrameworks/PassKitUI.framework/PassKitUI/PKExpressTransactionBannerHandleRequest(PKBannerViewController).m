@interface PKExpressTransactionBannerHandleRequest(PKBannerViewController)
- (PKExpressTransactionBannerViewController)createBannerViewController;
@end

@implementation PKExpressTransactionBannerHandleRequest(PKBannerViewController)

- (PKExpressTransactionBannerViewController)createBannerViewController
{
  v1 = [a1 passUniqueIdentifier];
  objc_opt_self();
  if (v1)
  {
    v2 = [MEMORY[0x1E69B8A58] sharedInstance];
    v3 = [v2 passWithUniqueID:v1];

    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = [PKExpressTransactionBannerViewController alloc];
      v6 = v4;
      if (v5)
      {
        v38.receiver = v5;
        v38.super_class = PKExpressTransactionBannerViewController;
        v7 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
        v5 = v7;
        if (v7)
        {
          objc_storeStrong(&v7->_pass, v3);
          v8 = [MEMORY[0x1E69B8DB8] paymentService];
          paymentService = v5->_paymentService;
          v5->_paymentService = v8;

          [(PKPaymentService *)v5->_paymentService registerObserver:v5];
          v5->_state = 0;
          v5->_activeLayoutMode = 0;
          if ([(PKPass *)v5->_pass passType]== PKPassTypeSecureElement)
          {
            v10 = v5->_pass;
            v11 = v10;
            if (v10 && [(PKPass *)v10 isStoredValuePass])
            {
              v12 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:v11];
              transitBalanceModel = v5->_transitBalanceModel;
              v5->_transitBalanceModel = v12;

              v22 = [(PKPass *)v5->_pass uniqueID];
              v14 = [(PKPass *)v11 devicePrimaryPaymentApplication];
              v15 = dispatch_group_create();
              objc_initWeak(&location, v5);
              v35[0] = 0;
              v35[1] = v35;
              v35[2] = 0x3032000000;
              v35[3] = __Block_byref_object_copy__71;
              v35[4] = __Block_byref_object_dispose__71;
              v36 = 0;
              v33[0] = 0;
              v33[1] = v33;
              v33[2] = 0x3032000000;
              v33[3] = __Block_byref_object_copy__71;
              v33[4] = __Block_byref_object_dispose__71;
              v34 = 0;
              dispatch_group_enter(v15);
              v16 = v5->_paymentService;
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke;
              v28[3] = &unk_1E8016A48;
              v32 = v35;
              v17 = v14;
              v29 = v17;
              v11 = v11;
              v30 = v11;
              v18 = v15;
              v31 = v18;
              [(PKPaymentService *)v16 transitStateWithPassUniqueIdentifier:v22 paymentApplication:v17 completion:v28];
              dispatch_group_enter(v18);
              v19 = v5->_paymentService;
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_2;
              v25[3] = &unk_1E8016A70;
              v27 = v33;
              v20 = v18;
              v26 = v20;
              [(PKPaymentService *)v19 balancesForPaymentPassWithUniqueIdentifier:v22 completion:v25];
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __58__PKExpressTransactionBannerViewController__initWithPass___block_invoke_3;
              block[3] = &unk_1E8025B58;
              objc_copyWeak(&v24, &location);
              block[4] = v35;
              block[5] = v33;
              dispatch_group_notify(v20, MEMORY[0x1E69E96A0], block);
              objc_destroyWeak(&v24);

              _Block_object_dispose(v33, 8);
              _Block_object_dispose(v35, 8);

              objc_destroyWeak(&location);
            }
          }

          else
          {
            v11 = 0;
          }
        }
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

@end