@interface PKPaymentAuthorizationViewController
+ (BOOL)canMakePayments;
+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks;
+ (BOOL)canMakePaymentsUsingNetworks:(NSArray *)supportedNetworks capabilities:(PKMerchantCapability)capabilties;
+ (BOOL)isPlatformSupported;
+ (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4;
- (PKPaymentAuthorizationViewController)initWithCoder:(id)a3;
- (PKPaymentAuthorizationViewController)initWithDisbursementRequest:(PKDisbursementRequest *)request;
- (PKPaymentAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PKPaymentAuthorizationViewController)initWithPaymentRequest:(PKPaymentRequest *)request;
- (PKPaymentAuthorizationViewControllerPrivateDelegate)privateDelegate;
- (id)delegate;
- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_presentInAppPaymentInterfaceWithWindow:(id)a3;
- (void)dealloc;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
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
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentAuthorizationViewController

+ (BOOL)isPlatformSupported
{
  if (isPlatformSupported_onceToken != -1)
  {
    dispatch_once(&isPlatformSupported_onceToken, &__block_literal_global_188);
  }

  return isPlatformSupported_supported;
}

void __59__PKPaymentAuthorizationViewController_isPlatformSupported__block_invoke()
{
  if (PKProcessIsiOSOnMac())
  {
    if (dyld_program_sdk_at_least())
    {
      v1 = [MEMORY[0x1E696AAE8] mainBundle];
      v0 = [v1 executablePath];
      isPlatformSupported_supported = PKHasImplementationOfSelectorInImage();
    }

    else
    {
      isPlatformSupported_supported = 0;
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

- (PKPaymentAuthorizationViewController)initWithDisbursementRequest:(PKDisbursementRequest *)request
{
  v4 = MEMORY[0x1E69B87C8];
  v5 = request;
  v6 = [[v4 alloc] initWithDisbursementRequest:v5];

  v7 = [(PKPaymentAuthorizationViewController *)self initWithPaymentRequest:v6];
  return v7;
}

+ (void)paymentServicesMerchantURLForAPIType:(int64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69B8960]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88__PKPaymentAuthorizationViewController_paymentServicesMerchantURLForAPIType_completion___block_invoke;
  v8[3] = &unk_1E801F750;
  v9 = v5;
  v7 = v5;
  [v6 paymentServicesMerchantURLForAPIType:a3 completion:v8];
}

void __88__PKPaymentAuthorizationViewController_paymentServicesMerchantURLForAPIType_completion___block_invoke(uint64_t a1, char a2, void *a3)
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

- (PKPaymentAuthorizationViewController)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return [(PKPaymentAuthorizationViewController *)self init];
}

- (PKPaymentAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69B8D70]);
  v6 = [(PKPaymentAuthorizationViewController *)self initWithPaymentRequest:v5];

  return v6;
}

- (PKPaymentAuthorizationViewController)initWithPaymentRequest:(PKPaymentRequest *)request
{
  v4 = request;
  v5 = [objc_alloc(MEMORY[0x1E69B8B60]) initWithPaymentRequest:v4];
  if (!v5)
  {
LABEL_10:

    self = 0;
    goto LABEL_11;
  }

  v10.receiver = self;
  v10.super_class = PKPaymentAuthorizationViewController;
  self = [(PKPaymentAuthorizationViewController *)&v10 initWithNibName:0 bundle:0];
  if (!self)
  {
    goto LABEL_11;
  }

  if (([(PKPaymentAuthorizationViewController *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1BD026000, v7, OS_LOG_TYPE_ERROR, "PKPaymentAuthorizationViewController does not support subclassing.", v9, 2u);
    }

    goto LABEL_10;
  }

  [v5 setDelegate:self];
  [v5 _setPrivateDelegate:self];
  objc_storeStrong(&self->_paymentCoordinator, v5);
  v6 = [(PKPaymentRequest *)v4 _shouldSupportLandscapeOrientation];
  if (v6)
  {
    LOBYTE(v6) = _UISolariumEnabled();
  }

  self->_shouldSupportLandscapeOrientation = v6;
LABEL_11:

  return self;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKPaymentAuthorizationViewController;
  [(PKPaymentAuthorizationViewController *)&v2 dealloc];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  if (self->_shouldSupportLandscapeOrientation)
  {
    return 26;
  }

  return 2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  kdebug_trace();
  v5.receiver = self;
  v5.super_class = PKPaymentAuthorizationViewController;
  [(PKPaymentAuthorizationViewController *)&v5 viewWillAppear:v3];
  if (!self->_viewHasAppeared)
  {
    self->_viewHasAppeared = 1;
    if (![(PKPaymentAuthorizationViewController *)self _requiresPresentationContext])
    {
      [(PKPaymentAuthorizationViewController *)self _presentInAppPaymentInterface];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationViewController;
  [(PKPaymentAuthorizationViewController *)&v6 viewDidAppear:a3];
  if ([(PKPaymentAuthorizationViewController *)self _requiresPresentationContext])
  {
    v4 = [(PKPaymentAuthorizationViewController *)self view];
    v5 = [v4 window];
    [(PKPaymentAuthorizationViewController *)self _presentInAppPaymentInterfaceWithWindow:v5];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentAuthorizationViewController;
  [(PKPaymentAuthorizationViewController *)&v4 viewWillDisappear:a3];
  if (([(PKPaymentAuthorizationViewController *)self isBeingDismissed]& 1) != 0 || ([(PKPaymentAuthorizationViewController *)self isMovingFromParentViewController]& 1) == 0)
  {
    [(PKPaymentAuthorizationCoordinator *)self->_paymentCoordinator setDelegate:0];
    [(PKPaymentAuthorizationCoordinator *)self->_paymentCoordinator _setPrivateDelegate:0];
    [(PKPaymentAuthorizationCoordinator *)self->_paymentCoordinator dismissWithCompletion:0];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didRequestMerchantSessionUpdate:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke;
  v7[3] = &unk_1E8010DD0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = objc_opt_respondsToSelector();

  v4 = *(a1 + 32);
  if (v3)
  {
    v9 = objc_loadWeakRetained((v4 + 1000));
    [v9 paymentAuthorizationViewController:*(a1 + 32) didRequestMerchantSessionUpdate:*(a1 + 40)];
  }

  else
  {
    v5 = objc_loadWeakRetained((v4 + 1016));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 1016));
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke_2;
      v10[3] = &unk_1E801F778;
      v8 = *(a1 + 32);
      v11 = *(a1 + 40);
      [v7 paymentAuthorizationViewController:v8 didRequestMerchantSession:v10];

      return;
    }

    v9 = [objc_alloc(MEMORY[0x1E69B8D80]) initWithStatus:1 merchantSession:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionUpdate___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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
  v14[2] = __127__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionWithURL_merchantSessionUpdate___block_invoke;
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

void __127__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didRequestMerchantSessionWithURL_merchantSessionUpdate___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1016));
  v3 = objc_opt_respondsToSelector();

  v4 = a1[4];
  if (v3)
  {
    v7 = objc_loadWeakRetained(v4 + 127);
    [v7 paymentAuthorizationViewController:a1[4] didRequestMerchantSessionWithURL:a1[5] merchantSessionUpdate:a1[7]];
  }

  else
  {
    v5 = a1[6];
    v6 = a1[7];

    [v4 paymentAuthorizationCoordinator:v5 didRequestMerchantSessionUpdate:v6];
  }
}

- (void)paymentAuthorizationCoordinatorWillAuthorizePayment:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinatorWillAuthorizePayment___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __92__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinatorWillAuthorizePayment___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1000));
    [v4 paymentAuthorizationViewControllerWillAuthorizePayment:*(a1 + 32)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationViewController:v5 didAuthorizePayment:v6 handler:*(a1 + 48)];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke_2;
    v8[3] = &unk_1E801F7A0;
    v9 = *(a1 + 48);
    [v7 paymentAuthorizationViewController:v5 didAuthorizePayment:v6 completion:v8];
  }
}

void __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizePayment_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E69B8B80]);
  [v4 setStatus:a2];
  (*(*(a1 + 32) + 16))();
}

- (void)paymentAuthorizationCoordinatorDidFinish:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinatorDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  [WeakRetained paymentAuthorizationViewControllerDidFinish:*(a1 + 32)];
}

- (void)paymentAuthorizationCoordinator:(id)a3 didSelectShippingMethod:(id)a4 handler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v9 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationViewController:*(a1 + 32) didSelectShippingMethod:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 1000));
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke_2;
      v10[3] = &unk_1E801F7C8;
      v11 = *(a1 + 48);
      [v6 paymentAuthorizationViewController:v7 didSelectShippingMethod:v8 completion:v10];

      return;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69B8D98]);
    [v9 setStatus:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __104__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingMethod_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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
  block[2] = __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke;
  block[3] = &unk_1E8012300;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1000));
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained((*(a1 + 40) + 1000));
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = objc_opt_respondsToSelector();

    v8 = objc_loadWeakRetained((*(a1 + 40) + 1000));
    if (v7)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_2;
      v17[3] = &unk_1E801F7F0;
      v9 = *(a1 + 40);
      v18 = *(a1 + 48);
      [v8 paymentAuthorizationViewController:v9 didSelectShippingContact:v2 completion:v17];

      v10 = v18;
    }

    else
    {
      v11 = objc_opt_respondsToSelector();

      if ((v11 & 1) == 0)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69B8D90]);
        [v6 setStatus:0];
        (*(*(a1 + 48) + 16))();
        goto LABEL_3;
      }

      v12 = objc_loadWeakRetained((*(a1 + 40) + 1000));
      v13 = *(a1 + 40);
      v14 = [*(a1 + 32) ABPerson];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_3;
      v15[3] = &unk_1E801F7F0;
      v16 = *(a1 + 48);
      [v12 paymentAuthorizationViewController:v13 didSelectShippingAddress:v14 completion:v15];

      v10 = v16;
    }

    goto LABEL_9;
  }

  [v5 paymentAuthorizationViewController:*(a1 + 40) didSelectShippingContact:v2 handler:*(a1 + 48)];
LABEL_3:

LABEL_9:
}

void __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = MEMORY[0x1E69B8D90];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v10 initWithErrors:MEMORY[0x1E695E0F0] paymentSummaryItems:v8 shippingMethods:v9];

  [v11 setStatus:a2];
  (*(*(a1 + 32) + 16))();
}

void __105__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectShippingAddress_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
  block[2] = __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v3 = objc_opt_respondsToSelector();

  v4 = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v9 = v4;
  if (v3)
  {
    [v4 paymentAuthorizationViewController:*(a1 + 32) didSelectPaymentMethod:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 1000));
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke_2;
      v10[3] = &unk_1E8010DA8;
      v11 = *(a1 + 48);
      [v6 paymentAuthorizationViewController:v7 didSelectPaymentMethod:v8 completion:v10];

      return;
    }

    v9 = objc_alloc_init(MEMORY[0x1E69B8D88]);
    (*(*(a1 + 48) + 16))();
  }
}

void __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didSelectPaymentMethod_handler___block_invoke_2(uint64_t a1, void *a2)
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
  block[2] = __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didChangeCouponCode_handler___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didChangeCouponCode_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1000));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained paymentAuthorizationViewController:a1[4] didChangeCouponCode:a1[5] handler:a1[6]];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E69B8D78]);
    (*(a1[6] + 16))();
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 willFinishWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_willFinishWithError___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __92__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_willFinishWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1016));
    [v4 paymentAuthorizationViewController:*(a1 + 32) willFinishWithError:*(a1 + 40)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didEncounterAuthorizationEvent:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didEncounterAuthorizationEvent___block_invoke;
  v4[3] = &unk_1E80119C8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __103__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didEncounterAuthorizationEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1016));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1016));
    [v4 paymentAuthorizationViewController:*(a1 + 32) didEncounterAuthorizationEvent:*(a1 + 40)];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didUpdateAccountServicePaymentMethod:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __117__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke;
  v14[3] = &unk_1E8011D78;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __117__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didUpdateAccountServicePaymentMethod_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1016));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 1016));
    [v4 paymentAuthorizationCoordinator:a1[5] didUpdateAccountServicePaymentMethod:a1[6] handler:a1[7]];
  }
}

- (void)paymentAuthorizationCoordinator:(id)a3 didAuthorizeApplePayTrustSignature:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __115__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke;
  v14[3] = &unk_1E8011D78;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __115__PKPaymentAuthorizationViewController_paymentAuthorizationCoordinator_didAuthorizeApplePayTrustSignature_handler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 1016));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1[4] + 1016));
    [v4 paymentAuthorizationCoordinator:a1[5] didAuthorizeApplePayTrustSignature:a1[6] handler:a1[7]];
  }
}

- (id)presentationSceneIdentifierForPaymentAuthorizationCoordinator:(id)a3
{
  v3 = [(PKPaymentAuthorizationViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (void)_presentInAppPaymentInterfaceWithWindow:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke;
  aBlock[3] = &unk_1E8013D38;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  paymentCoordinator = self->_paymentCoordinator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke_80;
  v7[3] = &unk_1E8010AD8;
  v8 = v4;
  v6 = v4;
  [(PKPaymentAuthorizationCoordinator *)paymentCoordinator presentWithCompletion:v7];
}

void __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke_2;
    v7[3] = &unk_1E8010A10;
    v7[4] = *(a1 + 32);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke_2(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_1BD026000, v2, OS_LOG_TYPE_ERROR, "Connection to remote alert view service failed", v4, 2u);
  }

  [*(a1 + 32) paymentAuthorizationCoordinator:*(*(a1 + 32) + 1008) willFinishWithError:*(a1 + 40)];
  return [*(a1 + 32) paymentAuthorizationCoordinatorDidFinish:*(*(a1 + 32) + 1008)];
}

void __80__PKPaymentAuthorizationViewController__presentInAppPaymentInterfaceWithWindow___block_invoke_80(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:-1 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PKPaymentAuthorizationViewControllerPrivateDelegate)privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);

  return WeakRetained;
}

@end