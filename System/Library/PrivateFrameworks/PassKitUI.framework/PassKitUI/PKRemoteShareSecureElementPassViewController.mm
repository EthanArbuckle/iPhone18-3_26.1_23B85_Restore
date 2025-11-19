@interface PKRemoteShareSecureElementPassViewController
- (void)_setRootViewController:(id)a3;
- (void)didCreateShareURL:(id)a3 activationCode:(id)a4 error:(id)a5;
- (void)didFinishShareWithDidUserShare:(BOOL)a3 error:(id)a4;
- (void)loadView;
- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4;
- (void)setPass:(id)a3 environment:(unint64_t)a4 isFromPeopleScreen:(BOOL)a5 completion:(id)a6;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
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
  v3 = [(PKRemoteShareSecureElementPassViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = PKRemoteShareSecureElementPassViewController;
  [(PKRemoteShareSecureElementPassViewController *)&v4 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
}

- (void)setDisplayPropertiesWithScreenSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
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
    v12 = a4;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Setting display properties with screenSize=%{public}@ scale=%.f", &v9, 0x16u);
  }

  PKSetDisplayProperties();
}

- (void)setPass:(id)a3 environment:(unint64_t)a4 isFromPeopleScreen:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_alloc(MEMORY[0x1E69B8840]);
  v13 = [(PKRemoteShareSecureElementPassViewController *)self _hostProcessIdentifier];
  [(PKRemoteShareSecureElementPassViewController *)self _hostAuditToken];
  v14 = [v12 initWithProcessIdentifier:v13 auditToken:location];
  if ([v14 shareableCredentialProvisioning] & 1) != 0 || (objc_msgSend(v14, "carKeyCredentialProvisioning") & 1) != 0 || (objc_msgSend(v14, "passesAllAccess"))
  {
    v15 = [v10 uniqueID];
    v16 = [MEMORY[0x1E69B8A58] sharedInstance];
    v17 = [v16 passWithUniqueID:v15];
    v18 = [v17 secureElementPass];

    if (v18)
    {
      if ([v14 entitledToPerformPassAction:2 pass:v18])
      {
        objc_initWeak(location, self);
        v19 = objc_alloc(MEMORY[0x1E69B9268]);
        v20 = [MEMORY[0x1E69B8EF8] sharedService];
        v21 = MEMORY[0x1E69E96A0];
        v22 = MEMORY[0x1E69E96A0];
        v23 = [v19 initWithPass:v18 webService:v20 paymentServiceProvider:0 queue:v21];

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __98__PKRemoteShareSecureElementPassViewController_setPass_environment_isFromPeopleScreen_completion___block_invoke;
        v28[3] = &unk_1E8022F78;
        objc_copyWeak(v31, location);
        v30 = v11;
        v24 = v23;
        v29 = v24;
        v31[1] = a4;
        v32 = a5;
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

    (*(v11 + 2))(v11, 0);
    goto LABEL_13;
  }

  v27 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&dword_1BD026000, v27, OS_LOG_TYPE_DEFAULT, "Process not entitled for shareable pass provisioning", location, 2u);
  }

  (*(v11 + 2))(v11, 0);
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

- (void)_setRootViewController:(id)a3
{
  v4 = a3;
  [(PKRemoteShareSecureElementPassViewController *)self addChildViewController:v4];
  v6 = [v4 view];
  v5 = [(PKRemoteShareSecureElementPassViewController *)self view];
  [v5 addSubview:v6];
  [v5 setNeedsLayout];
  [v5 layoutIfNeeded];
  [v4 didMoveToParentViewController:self];
}

- (void)didFinishShareWithDidUserShare:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PKRemoteShareSecureElementPassViewController *)self _remoteViewControllerProxy];
  [v7 didFinishShareWithDidUserShare:v4 error:v6];
}

- (void)didCreateShareURL:(id)a3 activationCode:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKRemoteShareSecureElementPassViewController *)self _remoteViewControllerProxy];
  [v11 didCreateShareURL:v10 activationCode:v9 error:v8];
}

@end