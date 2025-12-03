@interface PKAddSecureElementPassViewController
+ (BOOL)canAddSecureElementPassWithConfiguration:(PKAddSecureElementPassConfiguration *)configuration;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKAddSecureElementPassViewController)initWithConfiguration:(PKAddSecureElementPassConfiguration *)configuration delegate:(id)delegate;
- (id)delegate;
- (void)_handleCanceledPresentationWithPresentingViewController:(id)controller;
- (void)dealloc;
- (void)didFinishWithPass:(id)pass error:(id)error;
- (void)didFinishWithPasses:(id)passes error:(id)error;
- (void)loadRemoteViewController;
- (void)loadView;
- (void)setRemoteVC:(id)c completionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddSecureElementPassViewController

+ (BOOL)canAddSecureElementPassWithConfiguration:(PKAddSecureElementPassConfiguration *)configuration
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = configuration;
  if (v4)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v6 = mEMORY[0x1E69B8A58];
    if (mEMORY[0x1E69B8A58])
    {
      v7 = [mEMORY[0x1E69B8A58] canAddSecureElementPassWithConfiguration:v4];
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromSelector(a2);
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Failed to initialize pass library in %@", &v11, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PKAddSecureElementPassViewController)initWithConfiguration:(PKAddSecureElementPassConfiguration *)configuration delegate:(id)delegate
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = configuration;
  v8 = delegate;
  v9 = SecTaskCreateFromSelf(0);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = SecTaskCopyValueForEntitlement(v9, *MEMORY[0x1E69BC3C0], 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v11 BOOLValue];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    CFRelease(v10);

    goto LABEL_19;
  }

  v11 = v11;
  if (([v11 containsObject:@"carkey"] & 1) == 0)
  {
    bOOLValue = [v11 containsObject:@"shareablecredential"];

LABEL_4:
    CFRelease(v10);

    if (bOOLValue)
    {
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_15:
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        *buf = 138543362;
        v33 = bundleIdentifier;
        _os_log_error_impl(&dword_1BD026000, v21, OS_LOG_TYPE_ERROR, "%{public}@ missing configuration parameter", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_19:
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      v26 = *MEMORY[0x1E69BC3C0];
      *buf = 138543618;
      v33 = bundleIdentifier2;
      v34 = 2114;
      v35 = v26;
      _os_log_error_impl(&dword_1BD026000, v21, OS_LOG_TYPE_ERROR, "%{public}@ missing entitlement: %{public}@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  CFRelease(v10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (([(PKAddSecureElementPassConfiguration *)v7 hasRequiredDataForProvisioning]& 1) == 0)
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v7;
      _os_log_error_impl(&dword_1BD026000, v21, OS_LOG_TYPE_ERROR, "%{public}@ does not have required data for provisioning", buf, 0xCu);
    }

LABEL_21:

    selfCopy = 0;
    goto LABEL_22;
  }

  v31.receiver = self;
  v31.super_class = PKAddSecureElementPassViewController;
  v13 = [(PKAddSecureElementPassViewController *)&v31 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_configuration, configuration);
    objc_storeWeak(&v14->_delegate, v8);
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    passbookHasBeenDeleted = [mEMORY[0x1E69B8A58] passbookHasBeenDeleted];

    if (passbookHasBeenDeleted)
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v17, OS_LOG_TYPE_DEFAULT, "Wallet deleted, prompting user to re-install Wallet", buf, 2u);
      }

      [(PKAddSecureElementPassViewController *)v14 setModalPresentationStyle:4];
      [(PKAddSecureElementPassViewController *)v14 setTransitioningDelegate:v14];
      objc_initWeak(buf, v14);
      v18 = objc_alloc_init(PKCancelingAnimatedTransitioningHandler);
      animatedTransitionHandler = v14->_animatedTransitionHandler;
      v14->_animatedTransitionHandler = v18;

      v20 = v14->_animatedTransitionHandler;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __71__PKAddSecureElementPassViewController_initWithConfiguration_delegate___block_invoke;
      v29[3] = &unk_1E8011FE8;
      objc_copyWeak(&v30, buf);
      [(PKCancelingAnimatedTransitioningHandler *)v20 setCancelationHandler:v29];
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      [(PKAddSecureElementPassViewController *)v14 loadRemoteViewController];
    }
  }

  self = v14;
  selfCopy = self;
LABEL_22:

  return selfCopy;
}

void __71__PKAddSecureElementPassViewController_initWithConfiguration_delegate___block_invoke(uint64_t a1, void *a2)
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
  v6.super_class = PKAddSecureElementPassViewController;
  [(PKAddSecureElementPassViewController *)&v6 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKAddSecureElementPassViewController;
  [(PKAddSecureElementPassViewController *)&v5 viewDidAppear:appear];
  if (self->_animatedTransitionHandler)
  {
    presentingViewController = [(PKAddSecureElementPassViewController *)self presentingViewController];
    [(PKAddSecureElementPassViewController *)self _handleCanceledPresentationWithPresentingViewController:presentingViewController];
  }
}

- (void)loadRemoteViewController
{
  v17 = *MEMORY[0x1E69E9840];
  configurationType = [(PKAddSecureElementPassConfiguration *)self->_configuration configurationType];
  if (configurationType == 1)
  {
    v5 = @"PKSubcredentialProvisioningServiceViewController";
    goto LABEL_12;
  }

  if (configurationType == 4 || configurationType == 2)
  {
    v5 = @"PKPushableCredentialsNavigationController";
LABEL_12:
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke;
    v14[3] = &unk_1E8015460;
    v14[4] = self;
    [(PKAddSecureElementPassViewController *)self _beginDelayingPresentation:v14 cancellationHandler:10.0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke_100;
    v12[3] = &unk_1E8015488;
    v12[4] = self;
    objc_copyWeak(&v13, buf);
    v10 = [PKRemoteAddSecureElementPassViewController requestViewController:v5 fromServiceWithBundleIdentifier:@"com.apple.PassbookUIService" connectionHandler:v12];
    remoteVCRequest = self->_remoteVCRequest;
    self->_remoteVCRequest = v10;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
    return;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    configuration = self->_configuration;
    *buf = 138412290;
    v16 = configuration;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Unknown view controller class for configuration: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [(PKAddSecureElementPassViewController *)self didFinishWithPasses:0 error:v9];
}

uint64_t __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Timed out while presenting add pass view controller", v7, 2u);
  }

  v5 = [*(*(a1 + 32) + 1016) invoke];
  return a2 ^ 1u;
}

void __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1016);
  *(v7 + 1016) = 0;

  if (!v5 || v6)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Failed to load remote view controller: %@", buf, 0xCu);
    }

    [*(a1 + 32) _endDelayingPresentation];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
    [*(a1 + 32) didFinishWithPasses:0 error:v11];
  }

  else
  {
    v9 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke_2;
    v12[3] = &unk_1E8010998;
    objc_copyWeak(&v13, (a1 + 40));
    [v9 setRemoteVC:v5 completionHandler:v12];
    objc_destroyWeak(&v13);
  }
}

void __64__PKAddSecureElementPassViewController_loadRemoteViewController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endDelayingPresentation];
}

- (void)setRemoteVC:(id)c completionHandler:(id)handler
{
  cCopy = c;
  handlerCopy = handler;
  objc_storeStrong(&self->_remoteVC, c);
  [(PKAddSecureElementPassViewController *)self addChildViewController:self->_remoteVC];
  view = [(PKRemoteAddSecureElementPassViewController *)self->_remoteVC view];
  view2 = [(PKAddSecureElementPassViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteVC didMoveToParentViewController:self];
  [(PKAddSecureElementPassViewController *)self setNeedsStatusBarAppearanceUpdate];
  remoteVC = self->_remoteVC;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke;
  v24[3] = &unk_1E8012C28;
  v12 = handlerCopy;
  v25 = v12;
  v13 = [(_UIRemoteViewController *)remoteVC serviceViewControllerProxyWithErrorHandler:v24];
  if (v13)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
    [fixedCoordinateSpace bounds];
    v17 = v16;
    v19 = v18;
    [mainScreen scale];
    [v13 setDisplayPropertiesWithScreenSize:v17 scale:{v19, v20}];

    configuration = self->_configuration;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_3;
    v22[3] = &unk_1E8010B50;
    v23 = v12;
    [v13 setConfiguration:configuration completionHandler:v22];
  }

  else if (v12)
  {
    v12[2](v12);
  }
}

void __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_2;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKAddSecureElementPassViewController_setRemoteVC_completionHandler___block_invoke_4;
    block[3] = &unk_1E8010B50;
    v3 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)didFinishWithPass:(id)pass error:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v6 = MEMORY[0x1E695DEC8];
  errorCopy = error;
  passCopy2 = pass;
  v9 = [v6 arrayWithObjects:&passCopy count:1];

  [(PKAddSecureElementPassViewController *)self didFinishWithPasses:v9 error:errorCopy, passCopy, v11];
}

- (void)didFinishWithPasses:(id)passes error:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  errorCopy = error;
  v8 = errorCopy;
  v9 = 0;
  atomic_compare_exchange_strong(&self->_finished, &v9, 1u);
  if (v9)
  {
    WeakRetained = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1BD026000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Error: didFinishWithPasses:error: called twice", &v16, 2u);
    }
  }

  else
  {
    if (errorCopy)
    {

      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Adding secure element passes finished with error: %@", &v16, 0xCu);
      }

      passesCopy = 0;
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = passesCopy;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Adding secure element passes finished with passes: %@", &v16, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!WeakRetained)
    {
      goto LABEL_17;
    }

    if (objc_opt_respondsToSelector())
    {
      [WeakRetained addSecureElementPassViewController:self didFinishAddingSecureElementPasses:passesCopy error:v8];
      goto LABEL_20;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "User is using deprecated delegate method.", &v16, 2u);
      }

      v13 = [passesCopy objectAtIndexedSubscript:0];
      [WeakRetained addSecureElementPassViewController:self didFinishAddingSecureElementPass:v13 error:v8];
    }

    else
    {
LABEL_17:
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Delegate not set, dismissing add secure element passes view controller.", &v16, 2u);
      }

      presentingViewController = [(PKAddSecureElementPassViewController *)self presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

LABEL_20:
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteVC != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKAddSecureElementPassViewController;
    [(PKAddSecureElementPassViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKAddSecureElementPassViewController;
  [(PKAddSecureElementPassViewController *)&v5 loadView];
  view = [(PKAddSecureElementPassViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKAddSecureElementPassViewController;
  [(PKAddSecureElementPassViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKAddSecureElementPassViewController *)self view];
  view2 = [(PKRemoteAddSecureElementPassViewController *)self->_remoteVC view];
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
  aBlock[2] = __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2;
  v15[3] = &unk_1E8010B50;
  v7 = v6;
  v16 = v7;
  v8 = PKCreateAlertControllerForWalletUninstalled(v15);
  pkui_frontMostViewController = [controllerCopy pkui_frontMostViewController];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4;
  v12[3] = &unk_1E8010DD0;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  [pkui_frontMostViewController presentViewController:v11 animated:1 completion:v12];
}

void __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [*(a1 + 32) didFinishWithPasses:0 error:v2];
}

void __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __96__PKAddSecureElementPassViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4(uint64_t a1)
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
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end