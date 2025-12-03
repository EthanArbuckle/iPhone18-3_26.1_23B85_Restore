@interface PKRemoteShareSecureElementPassViewController
- (void)_setRootViewController:(id)controller;
- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error;
- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error;
- (void)loadView;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale;
- (void)setPass:(id)pass environment:(unint64_t)environment isFromPeopleScreen:(BOOL)screen completion:(id)completion;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation PKRemoteShareSecureElementPassViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = PKRemoteShareSecureElementPassViewController;
  [(PKRemoteShareSecureElementPassViewController *)&v2 viewDidLoad];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PKRemoteShareSecureElementPassViewController;
  [(PKRemoteShareSecureElementPassViewController *)&v5 loadView];
  view = [(PKRemoteShareSecureElementPassViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKRemoteShareSecureElementPassViewController;
  [(PKRemoteShareSecureElementPassViewController *)&v4 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v13 = *MEMORY[0x1E69E9840];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v8 = NSStringFromCGSize(v14);
    v9 = 138543618;
    v10 = v8;
    v11 = 2048;
    scaleCopy = scale;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setPass:(id)pass environment:(unint64_t)environment isFromPeopleScreen:(BOOL)screen completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  v12 = objc_alloc(MEMORY[0x1E69B8840]);
  _hostProcessIdentifier = [(PKRemoteShareSecureElementPassViewController *)self _hostProcessIdentifier];
  [(PKRemoteShareSecureElementPassViewController *)self _hostAuditToken];
  v14 = [v12 initWithProcessIdentifier:_hostProcessIdentifier auditToken:location];
  if ([v14 shareableCredentialProvisioning] & 1) != 0 || (objc_msgSend(v14, "carKeyCredentialProvisioning") & 1) != 0 || (objc_msgSend(v14, "passesAllAccess"))
  {
    uniqueID = [passCopy uniqueID];
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v17 = [mEMORY[0x1E69B8A58] passWithUniqueID:uniqueID];
    secureElementPass = [v17 secureElementPass];

    if (secureElementPass)
    {
      if ([v14 entitledToPerformPassAction:2 pass:secureElementPass])
      {
        objc_initWeak(location, self);
        v19 = objc_alloc(MEMORY[0x1E69B9268]);
        mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
        v21 = MEMORY[0x1E69E96A0];
        v22 = MEMORY[0x1E69E96A0];
        v23 = [v19 initWithPass:secureElementPass webService:mEMORY[0x1E69B8EF8] paymentServiceProvider:0 queue:v21];

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __98__PKRemoteShareSecureElementPassViewController_setPass_environment_isFromPeopleScreen_completion___block_invoke;
        v28[3] = &unk_1E8022F78;
        objc_copyWeak(v31, location);
        v30 = completionCopy;
        v24 = v23;
        v29 = v24;
        v31[1] = environment;
        screenCopy = screen;
        [v24 updateSharesWithCompletion:v28];

        objc_destroyWeak(v31);
        objc_destroyWeak(location);
LABEL_13:

        goto LABEL_14;
      }

      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        v26 = "Process not entitled for presented pass";
        goto LABEL_11;
      }
    }

    else
    {
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        v26 = "Unable to find pass for provide pass uniqueID";
LABEL_11:
        _os_log_impl(&dword_1BD026000, v25, OS_LOG_TYPE_DEFAULT, v26, location, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_13;
  }

  v27 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Process not entitled for shareable pass provisioning", location, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_14:
}

void __98__PKRemoteShareSecureElementPassViewController_setPass_environment_isFromPeopleScreen_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
    goto LABEL_8;
  }

  if (([*(a1 + 32) sharingEnabled] & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Sharing not enabled for pass", v7, 2u);
    }

    goto LABEL_7;
  }

  v3 = [[PKPassShareInitiationNavigationController alloc] initWithSharesController:*(a1 + 32) environment:*(a1 + 56)];
  [(PKPassShareInitiationNavigationController *)v3 setShareDelegate:WeakRetained];
  [(PKPassShareInitiationNavigationController *)v3 setIsFromPeopleScreen:*(a1 + 64)];
  [WeakRetained _setRootViewController:v3];
  v4 = WeakRetained[124];
  WeakRetained[124] = v3;
  v5 = v3;

  (*(*(a1 + 40) + 16))();
LABEL_8:
}

- (void)_setRootViewController:(id)controller
{
  controllerCopy = controller;
  [(PKRemoteShareSecureElementPassViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  view2 = [(PKRemoteShareSecureElementPassViewController *)self view];
  [view2 addSubview:view];
  [view2 setNeedsLayout];
  [view2 layoutIfNeeded];
  [controllerCopy didMoveToParentViewController:self];
}

- (void)didFinishShareWithDidUserShare:(BOOL)share error:(id)error
{
  shareCopy = share;
  errorCopy = error;
  _remoteViewControllerProxy = [(PKRemoteShareSecureElementPassViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didFinishShareWithDidUserShare:shareCopy error:errorCopy];
}

- (void)didCreateShareURL:(id)l activationCode:(id)code error:(id)error
{
  errorCopy = error;
  codeCopy = code;
  lCopy = l;
  _remoteViewControllerProxy = [(PKRemoteShareSecureElementPassViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy didCreateShareURL:lCopy activationCode:codeCopy error:errorCopy];
}

@end