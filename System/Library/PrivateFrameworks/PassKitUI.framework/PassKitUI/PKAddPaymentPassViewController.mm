@interface PKAddPaymentPassViewController
+ (BOOL)canAddPaymentPass;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKAddPaymentPassViewController)initWithRequestConfiguration:(PKAddPaymentPassRequestConfiguration *)configuration delegate:(id)delegate;
- (id)delegate;
- (int64_t)modalPresentationStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_handleCanceledPresentationWithPresentingViewController:(id)controller;
- (void)_setRemoteVC:(id)c completionHandler:(id)handler;
- (void)dealloc;
- (void)loadRemoteViewController;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddPaymentPassViewController

+ (BOOL)canAddPaymentPass
{
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
  v3 = [objc_alloc(MEMORY[0x1E69B8518]) initWithType:5];
  v4 = [mEMORY[0x1E69B8A58] canAddSecureElementPassWithConfiguration:v3];

  return v4;
}

- (PKAddPaymentPassViewController)initWithRequestConfiguration:(PKAddPaymentPassRequestConfiguration *)configuration delegate:(id)delegate
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = configuration;
  v8 = delegate;
  v9 = SecTaskCreateFromSelf(0);
  if (v9)
  {
    v10 = v9;
    v11 = SecTaskCopyValueForEntitlement(v9, *MEMORY[0x1E69B9E68], 0);
    bOOLValue = [v11 BOOLValue];
    CFRelease(v10);
  }

  else
  {
    bOOLValue = 1;
  }

  cardholderName = [(PKAddPaymentPassRequestConfiguration *)v7 cardholderName];
  if (cardholderName || ([(PKAddPaymentPassRequestConfiguration *)v7 primaryAccountSuffix], (cardholderName = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    cardDetails = [(PKAddPaymentPassRequestConfiguration *)v7 cardDetails];
    v25 = [cardDetails count];

    if (!v25)
    {
      goto LABEL_15;
    }
  }

  encryptionScheme = [(PKAddPaymentPassRequestConfiguration *)v7 encryptionScheme];
  v15 = (encryptionScheme != 0) & bOOLValue;

  if (v15)
  {
    v32.receiver = self;
    v32.super_class = PKAddPaymentPassViewController;
    v16 = [(PKAddPaymentPassViewController *)&v32 initWithNibName:0 bundle:0];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_configuration, configuration);
      objc_storeWeak(&v17->_delegate, v8);
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      passbookHasBeenDeleted = [mEMORY[0x1E69B8A58] passbookHasBeenDeleted];

      if (passbookHasBeenDeleted)
      {
        v20 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v20, OS_LOG_TYPE_DEFAULT, "Wallet deleted, prompting user to re-install Wallet", buf, 2u);
        }

        [(PKAddPaymentPassViewController *)v17 setModalPresentationStyle:4];
        [(PKAddPaymentPassViewController *)v17 setTransitioningDelegate:v17];
        objc_initWeak(buf, v17);
        v21 = objc_alloc_init(PKCancelingAnimatedTransitioningHandler);
        animatedTransitionHandler = v17->_animatedTransitionHandler;
        v17->_animatedTransitionHandler = v21;

        v23 = v17->_animatedTransitionHandler;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __72__PKAddPaymentPassViewController_initWithRequestConfiguration_delegate___block_invoke;
        v30[3] = &unk_1E8011FE8;
        objc_copyWeak(&v31, buf);
        [(PKCancelingAnimatedTransitioningHandler *)v23 setCancelationHandler:v30];
        objc_destroyWeak(&v31);
        objc_destroyWeak(buf);
      }

      else
      {
        [(PKAddPaymentPassViewController *)v17 loadRemoteViewController];
      }
    }

    goto LABEL_20;
  }

LABEL_15:

  if ((bOOLValue & 1) == 0)
  {
    v26 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      *buf = 138543362;
      v34 = bundleIdentifier;
      _os_log_error_impl(&dword_1BD026000, v26, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement: com.apple.developer.payment-pass-provisioning", buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_20:

  return v17;
}

void __72__PKAddPaymentPassViewController_initWithRequestConfiguration_delegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCanceledPresentationWithPresentingViewController:v3];
}

- (void)dealloc
{
  remoteVCRequest = self->_remoteVCRequest;
  if (remoteVCRequest)
  {
    invoke = [(_UIAsyncInvocation *)remoteVCRequest invoke];
    v5 = self->_remoteVCRequest;
    self->_remoteVCRequest = 0;
  }

  v6.receiver = self;
  v6.super_class = PKAddPaymentPassViewController;
  [(PKAddPaymentPassViewController *)&v6 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKAddPaymentPassViewController;
  [(PKAddPaymentPassViewController *)&v5 viewDidAppear:appear];
  if (self->_animatedTransitionHandler)
  {
    presentingViewController = [(PKAddPaymentPassViewController *)self presentingViewController];
    [(PKAddPaymentPassViewController *)self _handleCanceledPresentationWithPresentingViewController:presentingViewController];
  }
}

- (void)loadRemoteViewController
{
  objc_initWeak(&location, self);
  [(PKAddPaymentPassViewController *)self _beginDelayingPresentation:0 cancellationHandler:10.0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKAddPaymentPassViewController_loadRemoteViewController__block_invoke;
  v5[3] = &unk_1E8012C00;
  objc_copyWeak(&v6, &location);
  v3 = [PKRemoteAddPaymentPassViewController requestViewController:@"PKServiceAddPaymentPassViewController" fromServiceWithBundleIdentifier:@"com.apple.PassbookUIService" connectionHandler:v5];
  remoteVCRequest = self->_remoteVCRequest;
  self->_remoteVCRequest = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__PKAddPaymentPassViewController_loadRemoteViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 126);
    *(WeakRetained + 126) = 0;

    if (v5)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __58__PKAddPaymentPassViewController_loadRemoteViewController__block_invoke_2;
      v13[3] = &unk_1E8010998;
      objc_copyWeak(&v14, (a1 + 32));
      [v8 _setRemoteVC:v5 completionHandler:v13];
      objc_destroyWeak(&v14);
    }

    else
    {
      [v8 _endDelayingPresentation];
      if (v6)
      {
        v15 = *MEMORY[0x1E696AA08];
        v16[0] = v6;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      }

      else
      {
        v10 = 0;
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:v10];
      v12 = [v8 delegate];
      [v12 addPaymentPassViewController:v8 didFinishAddingPaymentPass:0 error:v11];
    }
  }
}

void __58__PKAddPaymentPassViewController_loadRemoteViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _endDelayingPresentation];
    WeakRetained = v2;
  }
}

- (void)_setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  remoteVC = self->_remoteVC;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(PKRemoteAddPaymentPassViewController *)remoteVC setDelegate:WeakRetained];

  objc_storeWeak(&self->_delegate, 0);
  [(PKAddPaymentPassViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteAddPaymentPassViewController *)self->_remoteVC view];
  view2 = [(PKAddPaymentPassViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKAddPaymentPassViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKAddPaymentPassViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  v13 = self->_remoteVC;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke;
  v26[3] = &unk_1E8012C28;
  v14 = handlerCopy;
  v27 = v14;
  v15 = [(_UIRemoteViewController *)v13 serviceViewControllerProxyWithErrorHandler:v26];
  if (v15)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v19 = v18;
    v21 = v20;
    [mainScreen scale];
    [v15 setDisplayPropertiesWithScreenSize:v19 scale:{v21, v22}];

    configuration = self->_configuration;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke_3;
    v24[3] = &unk_1E8010B50;
    v25 = v14;
    [v15 setConfiguration:configuration completionHandler:v24];
  }

  else if (v14)
  {
    v14[2](v14);
  }
}

void __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PKAddPaymentPassViewController__setRemoteVC_completionHandler___block_invoke_4;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (int64_t)modalPresentationStyle
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteVC = self->_remoteVC;
  if (remoteVC)
  {
    return [(_UIRemoteViewController *)remoteVC supportedInterfaceOrientations];
  }

  else
  {
    return 2;
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKAddPaymentPassViewController;
    [(PKAddPaymentPassViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAddPaymentPassViewController;
  [(PKAddPaymentPassViewController *)&v5 loadView];
  view = [(PKAddPaymentPassViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKAddPaymentPassViewController;
  [(PKAddPaymentPassViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKAddPaymentPassViewController *)self view];
  view2 = [(PKRemoteAddPaymentPassViewController *)self->_remoteVC view];
  [view bounds];
  [view2 setFrame:?];
}

- (void)_handleCanceledPresentationWithPresentingViewController:(id)controller
{
  animatedTransitionHandler = self->_animatedTransitionHandler;
  self->_animatedTransitionHandler = 0;
  controllerCopy = controller;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2;
  v15[3] = &unk_1E8010B50;
  v7 = v6;
  v16 = v7;
  v8 = PKCreateAlertControllerForWalletUninstalled(v15);
  pkui_frontMostViewController = [controllerCopy pkui_frontMostViewController];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4;
  v12[3] = &unk_1E8010DD0;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  [pkui_frontMostViewController presentViewController:v11 animated:1 completion:v12];
}

void __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:2 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 addPaymentPassViewController:*(a1 + 32) didFinishAddingPaymentPass:0 error:v3];
}

void __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __90__PKAddPaymentPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];

  if (!v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Failed to present download wallet alert!", v4, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (id)delegate
{
  if (self->_remoteVC)
  {
    WeakRetained = [(PKRemoteAddPaymentPassViewController *)self->_remoteVC delegate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  if (self->_remoteVC)
  {
    [(PKRemoteAddPaymentPassViewController *)self->_remoteVC setDelegate:delegate];
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegate);
  }
}

@end