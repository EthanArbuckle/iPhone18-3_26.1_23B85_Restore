@interface PKPaymentAuthorizationController
+ (BOOL)canMakePayments;
+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks;
+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks capabilities:(PKMerchantCapability)capabilties;
+ (BOOL)isPlatformSupported;
+ (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4;
- (PKPaymentAuthorizationController)init;
- (PKPaymentAuthorizationController)initWithCoder:(id)a3;
- (PKPaymentAuthorizationController)initWithDisbursementRequest:(PKDisbursementRequest *)request;
- (PKPaymentAuthorizationController)initWithPaymentRequest:(PKPaymentRequest *)request;
- (PKPaymentAuthorizationControllerPrivateDelegate)privateDelegate;
- (id)_sceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (id)delegate;
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (void)dealloc;
- (void)dismissWithCompletion:(void *)completion;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeContextWithHandler:(id)a4;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didChangeCouponCode:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4;
- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionUpdate:(id)a4;
- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionWithURL:(id)a4 merchantSessionUpdate:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingAddress:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 willFinishWithError:(id)a4;
- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3;
- (void)paymentAuthorizationCoordinatorWillAuthorizePayment:(id)a3;
- (void)presentWithCompletion:(void *)completion;
@end

@implementation PKPaymentAuthorizationController

+ (BOOL)isPlatformSupported
{
  if (isPlatformSupported_onceToken_0 != -1)
  {
    dispatch_once(&isPlatformSupported_onceToken_0, &__block_literal_global_262);
  }

  return isPlatformSupported_supported_0;
}

void __55__PKPaymentAuthorizationController_isPlatformSupported__block_invoke()
{
  if (PKProcessIsiOSOnMac())
  {
    if (dyld_program_sdk_at_least())
    {
      v1 = [MEMORY[0x1E696AAE8] mainBundle];
      v0 = [v1 executablePath];
      isPlatformSupported_supported_0 = PKHasImplementationOfSelectorInImage();
    }

    else
    {
      isPlatformSupported_supported_0 = 0;
    }
  }
}

+ (BOOL)canMakePayments
{
  v2 = [a1 isPlatformSupported];
  if (v2)
  {
    v3 = MEMORY[0x1E69B8B60];

    LOBYTE(v2) = [v3 canMakePayments];
  }

  return v2;
}

+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks
{
  v4 = supportedNetworks;
  if ([a1 isPlatformSupported])
  {
    v5 = [MEMORY[0x1E69B8B60] canMakePaymentsUsingNetworks:v4 webDomain:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks capabilities:(PKMerchantCapability)capabilties
{
  v6 = supportedNetworks;
  if ([a1 isPlatformSupported])
  {
    v7 = [MEMORY[0x1E69B8B60] canMakePaymentsUsingNetworks:v6 capabilities:capabilties webDomain:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKPaymentAuthorizationController)initWithDisbursementRequest:(PKDisbursementRequest *)request
{
  v4 = MEMORY[0x1E69B87C8];
  v5 = request;
  v6 = [[v4 alloc] initWithDisbursementRequest:v5];

  v7 = [(PKPaymentAuthorizationController *)self initWithPaymentRequest:v6];
  return v7;
}

+ (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69B8960]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PKPaymentAuthorizationController_paymentServicesMerchantURLForAPIType_completion___block_invoke;
  v8[3] = &unk_1E801F750;
  v9 = v5;
  v7 = v5;
  [v6 paymentServicesMerchantURLForAPIType:a3 completion:v8];
}

void __84__PKPaymentAuthorizationController_paymentServicesMerchantURLForAPIType_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = v5;
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
      v6 = *(a1 + 32);
    }

    (*(v6 + 16))(v6, v8, v7);

    v5 = v8;
  }
}

- (PKPaymentAuthorizationController)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKPaymentAuthorizationController *)self init];
}

- (PKPaymentAuthorizationController)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69B8D70]);
  v4 = [(PKPaymentAuthorizationController *)self initWithPaymentRequest:v3];

  return v4;
}

- (PKPaymentAuthorizationController)initWithPaymentRequest:(PKPaymentRequest *)request
{
  v4 = request;
  v10.receiver = self;
  v10.super_class = PKPaymentAuthorizationController;
  v5 = [(PKPaymentAuthorizationController *)&v10 init];
  if (v5)
  {
    if (([(PKPaymentAuthorizationController *)v5 isMemberOfClass:objc_opt_class()]& 1) != 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:v4];
      [v6 setDelegate:v5];
      [v6 _setPrivateDelegate:v5];
      paymentCoordinator = v5->_paymentCoordinator;
      v5->_paymentCoordinator = v6;
    }

    else
    {
      paymentCoordinator = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(paymentCoordinator, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_1BD026000, paymentCoordinator, OS_LOG_TYPE_ERROR, "PKPaymentAuthorizationController does not support subclassing.", v9, 2u);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentAuthorizationController;
  [(PKPaymentAuthorizationController *)&v2 dealloc];
}

- (void)presentWithCompletion:(void *)completion
{
  v4 = completion;
  kdebug_trace();
  if (self->_paymentCoordinator)
  {
    objc_storeStrong(&self->_retainSelf, self);
    paymentCoordinator = self->_paymentCoordinator;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke;
    v11[3] = &unk_1E80158C0;
    v11[4] = self;
    v12 = v4;
    v6 = v4;
    [(PKPaymentAuthorizationCoordinator *)paymentCoordinator presentWithCompletion:v11];
    v7 = v12;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke_81;
    block[3] = &unk_1E8010B50;
    v10 = v4;
    v8 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v7 = v10;
  }
}

void __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke_2;
  block[3] = &unk_1E80150A8;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "Connection to remote alert view service failed", v5, 2u);
    }

    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
    [*(a1 + 32) paymentAuthorizationCoordinator:*(*(a1 + 32) + 24) willFinishWithError:v3];
    [*(a1 + 32) paymentAuthorizationCoordinatorDidFinish:*(*(a1 + 32) + 24)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

uint64_t __58__PKPaymentAuthorizationController_presentWithCompletion___block_invoke_81(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)dismissWithCompletion:(void *)completion
{
  v4 = completion;
  v5 = v4;
  paymentCoordinator = self->_paymentCoordinator;
  if (paymentCoordinator)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PKPaymentAuthorizationController_dismissWithCompletion___block_invoke;
    v7[3] = &unk_1E8010E20;
    v7[4] = self;
    v8 = v4;
    [(PKPaymentAuthorizationCoordinator *)paymentCoordinator dismissWithCompletion:v7];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __58__PKPaymentAuthorizationController_dismissWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  [*(*(a1 + 32) + 24) setDelegate:0];
  v5 = *(*(a1 + 32) + 24);

  return [v5 _setPrivateDelegate:0];
}

- (void)paymentAuthorizationCoordinatorWillAuthorizePayment:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__PKPaymentAuthorizationController_paymentAuthorizationCoordinatorWillAuthorizePayment___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __88__PKPaymentAuthorizationController_paymentAuthorizationCoordinatorWillAuthorizePayment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v4 paymentAuthorizationControllerWillAuthorizePayment:*(a1 + 32)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationController:v5 didAuthorizePayment:v6 handler:*(a1 + 48)];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke_2;
    v8[3] = &unk_1E801F7A0;
    v9 = *(a1 + 48);
    [v7 paymentAuthorizationController:v5 didAuthorizePayment:v6 completion:v8];
  }
}

void __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E69B8B80]);
  [v4 setStatus:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PKPaymentAuthorizationController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __77__PKPaymentAuthorizationController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained paymentAuthorizationControllerDidFinish:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = 0;

  [*(*(a1 + 32) + 24) setDelegate:0];
  v5 = *(*(a1 + 32) + 24);

  return [v5 _setPrivateDelegate:0];
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v9 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationController:*(a1 + 32) didSelectShippingMethod:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke_2;
      v10[3] = &unk_1E801F7C8;
      v11 = *(a1 + 48);
      [v6 paymentAuthorizationController:v7 didSelectShippingMethod:v8 completion:v10];

      return;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69B8D98]);
    [v9 setStatus:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E69B8D98];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setStatus:a2];
  [v7 setPaymentSummaryItems:v6];

  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingAddress:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke;
  block[3] = &unk_1E8012300;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __101__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v6 = v5;
  if (v4)
  {
    [v5 paymentAuthorizationController:*(a1 + 40) didSelectShippingContact:v2 handler:*(a1 + 48)];
LABEL_6:

    goto LABEL_7;
  }

  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B8D90]);
    [v6 setStatus:0];
    (*(*(a1 + 48) + 16))();
    goto LABEL_6;
  }

  v8 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_2;
  v10[3] = &unk_1E801F7F0;
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v8 paymentAuthorizationController:v9 didSelectShippingContact:v2 completion:v10];

LABEL_7:
}

void __101__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E69B8D90];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v10 initWithErrors:MEMORY[0x1E695E0F0] paymentSummaryItems:v8 shippingMethods:v9];

  [v11 setStatus:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectPaymentMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v9 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationController:*(a1 + 32) didSelectPaymentMethod:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke_2;
      v10[3] = &unk_1E8010DA8;
      v11 = *(a1 + 48);
      [v6 paymentAuthorizationController:v7 didSelectPaymentMethod:v8 completion:v10];

      return;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69B8D88]);
    (*(*(a1 + 48) + 16))();
  }
}

void __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69B8D88];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setPaymentSummaryItems:v4];

  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinator:(id)a3 didChangeCouponCode:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didChangeCouponCode_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didChangeCouponCode_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained paymentAuthorizationController:a1[4] didChangeCouponCode:a1[5] handler:a1[6]];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E69B8D78]);
    (*(a1[6] + 16))();
  }
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationSceneBundleIdentifierForPaymentAuthorizationController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)paymentAuthorizationCoordinator:(id)a3 willFinishWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_willFinishWithError___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __88__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_willFinishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 paymentAuthorizationController:*(a1 + 32) willFinishWithError:*(a1 + 40)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionUpdate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke;
  v7[3] = &unk_1E8010DD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v9 = objc_loadWeakRetained((v4 + 16));
    [v9 paymentAuthorizationController:*(a1 + 32) didRequestMerchantSessionUpdate:*(a1 + 40)];
  }

  else
  {
    v5 = objc_loadWeakRetained((v4 + 32));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 32));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke_2;
      v10[3] = &unk_1E801F778;
      v8 = *(a1 + 32);
      v11 = *(a1 + 40);
      [v7 paymentAuthorizationController:v8 didRequestMerchantSession:v10];

      return;
    }

    v9 = [objc_alloc(MEMORY[0x1E69B8D80]) initWithStatus:1 merchantSession:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = !v4;
  v6 = MEMORY[0x1E69B8D80];
  v7 = a2;
  v8 = [[v6 alloc] initWithStatus:v5 merchantSession:v7];

  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionWithURL:(id)a4 merchantSessionUpdate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionWithURL_merchantSessionUpdate___block_invoke;
  v14[3] = &unk_1E8014760;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __123__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didRequestMerchantSessionWithURL_merchantSessionUpdate___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  v4 = a1[4];
  if (v3)
  {
    v7 = objc_loadWeakRetained(v4 + 4);
    [v7 paymentAuthorizationController:a1[4] didRequestMerchantSessionWithURL:a1[5] merchantSessionUpdate:a1[7]];
  }

  else
  {
    v5 = a1[6];
    v6 = a1[7];

    [v4 paymentAuthorizationCoordinator:v5 didRequestMerchantSessionUpdate:v6];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeContextWithHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke;
  v7[3] = &unk_1E8010DD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizeContextWithHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v6 paymentAuthorizationController:*(a1 + 32) didAuthorizeContextWithHandler:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = objc_alloc(MEMORY[0x1E69B8B80]);
    v6 = [v5 initWithStatus:1 errors:MEMORY[0x1E695E0F0]];
    (*(v4 + 16))(v4);
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePurchase:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePurchase_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1[4] + 32));
    [v5 paymentAuthorizationController:a1[4] didAuthorizePurchase:a1[5] completion:a1[6]];
  }

  else
  {
    v4 = *(a1[6] + 16);

    v4();
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePeerPaymentQuote:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __105__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizePeerPaymentQuote_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1[4] + 32));
    [v6 paymentAuthorizationController:a1[4] didAuthorizePeerPaymentQuote:a1[5] handler:a1[6]];
  }

  else
  {
    v4 = a1[6];
    v5 = objc_alloc(MEMORY[0x1E69B8B80]);
    v6 = [v5 initWithStatus:1 errors:MEMORY[0x1E695E0F0]];
    (*(v4 + 16))(v4);
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didEncounterAuthorizationEvent___block_invoke;
  v4[3] = &unk_1E80119C8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __99__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didEncounterAuthorizationEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 paymentAuthorizationController:*(a1 + 32) didEncounterAuthorizationEvent:*(a1 + 40)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __113__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 32));
    [v4 paymentAuthorizationController:a1[4] didUpdateAccountServicePaymentMethod:a1[5] handler:a1[6]];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __111__PKPaymentAuthorizationController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 32));
    [v4 paymentAuthorizationController:a1[4] didAuthorizeApplePayTrustSignature:a1[5] handler:a1[6]];
  }
}

- (id)_sceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained presentationWindowForPaymentAuthorizationController:self];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 windowScene];
  v7 = [v6 _sceneIdentifier];

  v8 = objc_loadWeakRetained(&self->_privateDelegate);
  if (![v7 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [v8 presentationSceneIdentifierForPaymentAuthorizationController:self];

    v7 = v9;
  }

  return v7;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentAuthorizationControllerPrivateDelegate)privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);

  return WeakRetained;
}

@end