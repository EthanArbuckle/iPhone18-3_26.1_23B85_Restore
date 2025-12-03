@interface PKAddPassesViewController
+ (BOOL)canAddPasses;
- (BOOL)prefersStatusBarHidden;
- (CGSize)preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result;
- (PKAddPassesViewController)initWithIssuerData:(NSData *)issuerData signature:(NSData *)signature error:(NSError *)error;
- (PKAddPassesViewController)initWithPass:(PKPass *)pass;
- (PKAddPassesViewController)initWithPasses:(id)passes fromPresentationSource:(unint64_t)source;
- (PKAddPassesViewController)initWithPassesContainer:(id)container fromPresentationSource:(unint64_t)source;
- (id)_initWithPasses:(id)passes orPassesContainer:(id)container orIssuerData:(id)data withSignature:(id)signature fromPresentationSource:(unint64_t)source error:(id *)error;
- (id)delegate;
- (int64_t)modalPresentationStyle;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applyRemoteViewController:(id)controller;
- (void)_aquireAssertions;
- (void)_handleCanceledPresentationWithPresentingViewController:(id)controller;
- (void)_ingestionDidFinishWithResult:(unint64_t)result;
- (void)_requestRemoteViewController;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillResignActive:(id)active;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKAddPassesViewController

+ (BOOL)canAddPasses
{
  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  if (!PKIsPad())
  {
    has_internal_ui = os_variant_has_internal_ui();
    isPassbookVisible = [mEMORY[0x1E69B8A58] isPassbookVisible];
    if (has_internal_ui)
    {
      if ((isPassbookVisible & 1) == 0 && ([mEMORY[0x1E69B8A58] passbookHasBeenDeleted] & 1) == 0)
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v8 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69BBFA8]];

        goto LABEL_13;
      }
    }

    else if ((isPassbookVisible & 1) == 0)
    {
      passbookHasBeenDeleted = [mEMORY[0x1E69B8A58] passbookHasBeenDeleted];
      goto LABEL_12;
    }

    v8 = 1;
    goto LABEL_13;
  }

  if (_os_feature_enabled_impl())
  {
    passbookHasBeenDeleted = [mEMORY[0x1E69B8A58] iPadSupportsPasses];
LABEL_12:
    v8 = passbookHasBeenDeleted;
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (PKAddPassesViewController)initWithPass:(PKPass *)pass
{
  v10 = *MEMORY[0x1E69E9840];
  if (pass)
  {
    v9 = pass;
    v4 = MEMORY[0x1E695DEC8];
    v5 = pass;
    v6 = [v4 arrayWithObjects:&v9 count:1];

    self = [(PKAddPassesViewController *)self initWithPasses:v6, v9, v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAddPassesViewController)initWithPasses:(id)passes fromPresentationSource:(unint64_t)source
{
  passesCopy = passes;
  if ([passesCopy count])
  {
    self = [(PKAddPassesViewController *)self _initWithPasses:passesCopy orPassesContainer:0 orIssuerData:0 withSignature:0 fromPresentationSource:source error:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAddPassesViewController)initWithPassesContainer:(id)container fromPresentationSource:(unint64_t)source
{
  if (container)
  {
    self = [(PKAddPassesViewController *)self _initWithPasses:0 orPassesContainer:container orIssuerData:0 withSignature:0 fromPresentationSource:source error:0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKAddPassesViewController)initWithIssuerData:(NSData *)issuerData signature:(NSData *)signature error:(NSError *)error
{
  selfCopy = 0;
  if (issuerData && signature)
  {
    self = [(PKAddPassesViewController *)self _initWithPasses:0 orPassesContainer:0 orIssuerData:issuerData withSignature:signature fromPresentationSource:0 error:error];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)_initWithPasses:(id)passes orPassesContainer:(id)container orIssuerData:(id)data withSignature:(id)signature fromPresentationSource:(unint64_t)source error:(id *)error
{
  v46[1] = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  containerCopy = container;
  dataCopy = data;
  signatureCopy = signature;
  if (!+[PKAddPassesViewController canAddPasses])
  {
    goto LABEL_17;
  }

  v18 = [(PKAddPassesViewController *)self initWithNibName:0 bundle:0];
  self = v18;
  if (v18)
  {
    v18->_presentationSource = source;
    if (containerCopy)
    {
      objc_storeStrong(&v18->_passesContainer, container);
LABEL_8:
      [(PKAddPassesViewController *)self _aquireAssertions];
      mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
      passbookHasBeenDeleted = [mEMORY[0x1E69B8A58] passbookHasBeenDeleted];

      if (passbookHasBeenDeleted)
      {
        v30 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1BD026000, v30, OS_LOG_TYPE_DEFAULT, "Wallet deleted, prompting user to re-install Wallet", buf, 2u);
        }

        [(PKAddPassesViewController *)self setModalPresentationStyle:4];
        [(PKAddPassesViewController *)self setTransitioningDelegate:self];
        objc_initWeak(buf, self);
        v31 = objc_alloc_init(PKCancelingAnimatedTransitioningHandler);
        animatedTransitionHandler = self->_animatedTransitionHandler;
        self->_animatedTransitionHandler = v31;

        v33 = self->_animatedTransitionHandler;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __119__PKAddPassesViewController__initWithPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_error___block_invoke_94;
        v40[3] = &unk_1E8011FE8;
        objc_copyWeak(&v41, buf);
        [(PKCancelingAnimatedTransitioningHandler *)v33 setCancelationHandler:v40];
        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);
      }

      else
      {
        [(PKAddPassesViewController *)self _requestRemoteViewController];
      }

      v45 = @"bundle";
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      pKSanitizedBundleIdentifier = [mainBundle PKSanitizedBundleIdentifier];
      v46[0] = pKSanitizedBundleIdentifier;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      MEMORY[0x1BFB41980](*MEMORY[0x1E69B9E78], v36);

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];
      [defaultCenter addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

      goto LABEL_14;
    }

    if (passesCopy)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(passesCopy, "count")}];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __119__PKAddPassesViewController__initWithPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_error___block_invoke;
      v43[3] = &unk_1E8013158;
      v44 = v20;
      v21 = v20;
      [passesCopy enumerateObjectsUsingBlock:v43];
      v22 = [v21 copy];
      passes = self->_passes;
      self->_passes = v22;

      objc_autoreleasePoolPop(v19);
      goto LABEL_8;
    }

    v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:signatureCopy options:0];
    signature = self->_signature;
    self->_signature = v24;

    v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedData:dataCopy options:0];
    issuerData = self->_issuerData;
    self->_issuerData = v26;

    if (PKValidateIssuerBindingData())
    {
      goto LABEL_8;
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BBBC8] code:3 userInfo:0];
      *error = selfCopy = 0;
      goto LABEL_18;
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

LABEL_14:
  self = self;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

void __119__PKAddPassesViewController__initWithPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 archiveData];
  [v2 addObject:v3];
}

void __119__PKAddPassesViewController__initWithPasses_orPassesContainer_orIssuerData_withSignature_fromPresentationSource_error___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCanceledPresentationWithPresentingViewController:v3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PKAssertion *)self->_contactlessInterfaceAssertion invalidate];
  invoke = [(_UIAsyncInvocation *)self->_viewServiceCancelRequest invoke];
  [(PKRemoteAddPassesViewController *)self->_remoteViewController setDelegate:0];
  v5.receiver = self;
  v5.super_class = PKAddPassesViewController;
  [(PKAddPassesViewController *)&v5 dealloc];
}

- (void)applicationDidBecomeActive:(id)active
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
  [serviceViewControllerProxy evaluateBrightness];
}

- (void)applicationWillResignActive:(id)active
{
  serviceViewControllerProxy = [(_UIRemoteViewController *)self->_remoteViewController serviceViewControllerProxy];
  [serviceViewControllerProxy resetBrightness];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKAddPassesViewController;
  [(PKAddPassesViewController *)&v6 viewDidAppear:appear];
  if (self->_animatedTransitionHandler)
  {
    presentingViewController = [(PKAddPassesViewController *)self presentingViewController];
    [(PKAddPassesViewController *)self _handleCanceledPresentationWithPresentingViewController:presentingViewController];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PKAddPassesViewController_viewDidAppear___block_invoke;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:0 animations:0.4 completion:0.1];
  }
}

void __43__PKAddPassesViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v2 setBackgroundColor:v1];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKAddPassesViewController;
  [(PKAddPassesViewController *)&v5 viewWillLayoutSubviews];
  view = [(PKAddPassesViewController *)self view];
  view2 = [(PKRemoteAddPassesViewController *)self->_remoteViewController view];
  [view bounds];
  [view2 setFrame:?];
}

- (int64_t)modalPresentationStyle
{
  if (PKIsPad())
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

- (CGSize)preferredContentSize
{
  v2 = 450.0;
  v3 = 700.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    return [(_UIRemoteViewController *)remoteViewController supportedInterfaceOrientations];
  }

  else
  {
    return 2;
  }
}

- (BOOL)prefersStatusBarHidden
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    LOBYTE(remoteViewController) = [(PKRemoteAddPassesViewController *)remoteViewController prefersStatusBarHidden];
  }

  return remoteViewController;
}

- (int64_t)preferredStatusBarStyle
{
  result = self->_remoteViewController;
  if (result)
  {
    return [result preferredStatusBarStyle];
  }

  return result;
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)result
{
  if (self->_remoteViewController != container)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = PKAddPassesViewController;
    [(PKAddPassesViewController *)&v6 sizeForChildContentContainer:result.width withParentContainerSize:result.height];
  }

  return result;
}

- (void)_requestRemoteViewController
{
  viewServiceCancelRequest = self->_viewServiceCancelRequest;
  if (viewServiceCancelRequest)
  {
    invoke = [(_UIAsyncInvocation *)viewServiceCancelRequest invoke];
    v5 = self->_viewServiceCancelRequest;
    self->_viewServiceCancelRequest = 0;
  }

  [(PKAddPassesViewController *)self _beginDelayingPresentation:0 cancellationHandler:10.0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__PKAddPassesViewController__requestRemoteViewController__block_invoke;
  aBlock[3] = &unk_1E8013180;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [PKRemoteAddPassesViewController requestViewController:@"PKServiceAddPassesViewController" fromServiceWithBundleIdentifier:@"com.apple.PassbookUIService" connectionHandler:v6];
  v8 = self->_viewServiceCancelRequest;
  self->_viewServiceCancelRequest = v7;
}

void __57__PKAddPassesViewController__requestRemoteViewController__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1000);
  *(v7 + 1000) = 0;

  if (v5)
  {
    [*(a1 + 32) _applyRemoteViewController:v5];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v6;
      _os_log_error_impl(&dword_1BD026000, v9, OS_LOG_TYPE_ERROR, "Connection to PassbookUIService failed: %{public}@", &v14, 0xCu);
    }

    [*(a1 + 32) _endDelayingPresentation];
    [*(a1 + 32) _ingestionDidFinishWithResult:0];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 1048);
  *(v10 + 1048) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 1072);
  *(v12 + 1072) = 0;
}

- (void)_applyRemoteViewController:(id)controller
{
  controllerCopy = controller;
  viewServiceCancelRequest = self->_viewServiceCancelRequest;
  if (viewServiceCancelRequest)
  {
    invoke = [(_UIAsyncInvocation *)viewServiceCancelRequest invoke];
    v7 = self->_viewServiceCancelRequest;
    self->_viewServiceCancelRequest = 0;
  }

  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = controllerCopy;
  v9 = controllerCopy;

  view = [(PKRemoteAddPassesViewController *)self->_remoteViewController view];
  view2 = [(PKAddPassesViewController *)self view];
  [(PKAddPassesViewController *)self addChildViewController:self->_remoteViewController];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view2 setBackgroundColor:systemBackgroundColor];

  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [(_UIRemoteViewController *)self->_remoteViewController didMoveToParentViewController:self];
  v12 = self->_remoteViewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(PKRemoteAddPassesViewController *)v12 setDelegate:WeakRetained];

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  serviceViewControllerProxy = [(_UIRemoteViewController *)v9 serviceViewControllerProxy];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  [fixedCoordinateSpace bounds];
  v18 = v17;
  v20 = v19;
  [mainScreen scale];
  [serviceViewControllerProxy setDisplayPropertiesWithScreenSize:v18 scale:{v20, v21}];

  serviceViewControllerProxy2 = [(_UIRemoteViewController *)v9 serviceViewControllerProxy];
  [serviceViewControllerProxy2 ingestPasses:self->_passes orPassesContainer:self->_passesContainer orIssuerData:self->_issuerData withSignature:self->_signature fromPresentationSource:self->_presentationSource];

  [(PKAddPassesViewController *)self _endDelayingPresentation];
  [(PKAddPassesViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(PKAddPassesViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)_ingestionDidFinishWithResult:(unint64_t)result
{
  v19[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  delegate = [(PKAddPassesViewController *)self delegate];
  v7 = delegate;
  if (result == 1)
  {
    self->_succeeded = 1;
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 addPassesViewControllerDidFinish:self];
  }

  else
  {
    presentingViewController = [(PKAddPassesViewController *)self presentingViewController];

    if (presentingViewController)
    {
      presentingViewController2 = [(PKAddPassesViewController *)self presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      presentingViewController2 = [(PKAddPassesViewController *)self navigationController];
      v10 = [presentingViewController2 popViewControllerAnimated:1];
    }
  }

  v11 = MEMORY[0x1E69B9E88];
  if (result != 1)
  {
    v11 = MEMORY[0x1E69B9E80];
  }

  v12 = *v11;
  v18 = @"bundle";
  v13 = MEMORY[0x1E696AAE8];
  v14 = v12;
  mainBundle = [v13 mainBundle];
  pKSanitizedBundleIdentifier = [mainBundle PKSanitizedBundleIdentifier];
  v19[0] = pKSanitizedBundleIdentifier;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  MEMORY[0x1BFB41980](v14, v17);
}

- (void)setDelegate:(id)delegate
{
  if (self->_remoteViewController)
  {
    [(PKRemoteAddPassesViewController *)self->_remoteViewController setDelegate:delegate];
  }

  else
  {
    objc_storeWeak(&self->_delegate, delegate);
  }
}

- (id)delegate
{
  if (self->_remoteViewController)
  {
    WeakRetained = [(PKRemoteAddPassesViewController *)self->_remoteViewController delegate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  return WeakRetained;
}

- (void)_handleCanceledPresentationWithPresentingViewController:(id)controller
{
  animatedTransitionHandler = self->_animatedTransitionHandler;
  self->_animatedTransitionHandler = 0;
  controllerCopy = controller;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2;
  v15[3] = &unk_1E8010B50;
  v7 = v6;
  v16 = v7;
  v8 = PKCreateAlertControllerForWalletUninstalled(v15);
  pkui_frontMostViewController = [controllerCopy pkui_frontMostViewController];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4;
  v12[3] = &unk_1E8010DD0;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  [pkui_frontMostViewController presentViewController:v11 animated:1 completion:v12];
}

void __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_3;
  block[3] = &unk_1E8010B50;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __85__PKAddPassesViewController__handleCanceledPresentationWithPresentingViewController___block_invoke_4(uint64_t a1)
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

- (void)_aquireAssertions
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__PKAddPassesViewController__aquireAssertions__block_invoke;
  v2[3] = &unk_1E80131A8;
  v2[4] = self;
  [MEMORY[0x1E69B8650] acquireAssertionOfType:0 withReason:@"Add Passes View Controller" completion:v2];
}

void __46__PKAddPassesViewController__aquireAssertions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PKAddPassesViewController__aquireAssertions__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __46__PKAddPassesViewController__aquireAssertions__block_invoke_2(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 1016), v2);
    objc_initWeak(location, *(a1 + 32));
    v3 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__PKAddPassesViewController__aquireAssertions__block_invoke_3;
    v6[3] = &unk_1E8010998;
    objc_copyWeak(&v7, location);
    [v3 setInvalidationHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Error Acquiring Assertion for Add Passes View Controller: %@", location, 0xCu);
    }
  }
}

void __46__PKAddPassesViewController__aquireAssertions__block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Assertion Invalidated: %@", &v4, 0xCu);
  }
}

@end