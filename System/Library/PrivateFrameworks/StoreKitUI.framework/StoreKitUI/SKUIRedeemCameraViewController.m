@interface SKUIRedeemCameraViewController
- (BOOL)_enabled;
- (SKUIRedeemCameraViewController)initWithRedeemCategory:(int64_t)a3;
- (SKUIRedeemCameraViewController)initWithRedeemCategoryFullscreen:(int64_t)a3;
- (SKUIRedeemCameraViewControllerDelegate)delegate;
- (SKUIRedeemViewCameraOverrideDelegate)cameraOverrideDelegate;
- (id)redeemerViewForSKUIRedeemCameraView:(id)a3;
- (void)SKUIRedeemCameraView:(id)a3 textFieldDidChange:(id)a4;
- (void)SKUIRedeemPreflightImagesDidLoad:(id)a3;
- (void)_cameraRedeemDidFinish:(id)a3 error:(id)a4;
- (void)_cancelAction:(id)a3;
- (void)_performRedeemOperationWithCode:(id)a3 cameraRecognized:(BOOL)a4 allowOverride:(BOOL)a5 completion:(id)a6;
- (void)_redeemAction:(id)a3;
- (void)_redeemDidFinish:(id)a3 error:(id)a4;
- (void)_setEnabled:(BOOL)a3;
- (void)_updateRightBarButtonItemsForRedeemInputState:(int64_t)a3;
- (void)cancelRedeemerViewForSKUIRedeemCameraView:(id)a3;
- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4;
- (void)codeRedeemerControllerDidDisplayMessage:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)presentFullScreenCameraViewForSKUIRedeemCameraView:(id)a3;
- (void)redeemCameraViewController:(id)a3 didFinishWithRedeem:(id)a4;
- (void)showITunesPassLearnMoreForSKUIRedeemCameraView:(id)a3;
- (void)startRedeemerViewForSKUIRedeemCameraView:(id)a3;
@end

@implementation SKUIRedeemCameraViewController

- (SKUIRedeemCameraViewController)initWithRedeemCategory:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemCameraViewController initWithRedeemCategory:];
  }

  v8.receiver = self;
  v8.super_class = SKUIRedeemCameraViewController;
  v5 = [(SKUIRedeemCameraViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_category = a3;
    v5->_fullscreen = 0;
    [(SKUIRedeemCameraViewController *)v5 setEdgesForExtendedLayout:0];
  }

  return v6;
}

- (SKUIRedeemCameraViewController)initWithRedeemCategoryFullscreen:(int64_t)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemCameraViewController initWithRedeemCategoryFullscreen:];
  }

  v6.receiver = self;
  v6.super_class = SKUIRedeemCameraViewController;
  result = [(SKUIRedeemCameraViewController *)&v6 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_category = a3;
    result->_fullscreen = 1;
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(SKUIRedeemStepViewController *)self configuration];
  [v3 removeObserver:self name:0x2828123E8 object:v4];

  v5.receiver = self;
  v5.super_class = SKUIRedeemCameraViewController;
  [(SKUIRedeemCameraViewController *)&v5 dealloc];
}

- (void)loadView
{
  v32 = [(SKUIRedeemStepViewController *)self clientContext];
  v3 = [(SKUIRedeemCameraViewController *)self navigationItem];
  [v3 setHidesBackButton:1];
  v4 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v4 setAction:sel__cancelAction_];
  [v4 setTarget:self];
  if (v32)
  {
    [v32 localizedStringForKey:@"CAMERA_REDEEM_CANCEL_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_CANCEL_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;
  [v4 setTitle:v5];

  [v3 setLeftBarButtonItem:v4];
  v6 = objc_alloc_init(MEMORY[0x277D751E0]);
  redeemButton = self->_redeemButton;
  self->_redeemButton = v6;

  [(UIBarButtonItem *)self->_redeemButton setAction:sel__redeemAction_];
  [(UIBarButtonItem *)self->_redeemButton setTarget:self];
  v8 = self->_redeemButton;
  if (v32)
  {
    [v32 localizedStringForKey:@"CAMERA_REDEEM_REDEEM_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_REDEEM_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v9 = ;
  [(UIBarButtonItem *)v8 setTitle:v9];

  [(UIBarButtonItem *)self->_redeemButton setStyle:2];
  [(UIBarButtonItem *)self->_redeemButton setEnabled:[(NSString *)self->_initialCode length]!= 0];
  v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
  [v10 startAnimating];
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v10];
  activityBarButtonItem = self->_activityBarButtonItem;
  self->_activityBarButtonItem = v11;

  if ([MEMORY[0x277D00F70] isCRCodeRedeemerAvailable] >= 2)
  {
    v13 = objc_alloc_init(MEMORY[0x277D751E0]);
    flipButton = self->_flipButton;
    self->_flipButton = v13;

    [(UIBarButtonItem *)self->_flipButton setAction:sel__flipAction_];
    [(UIBarButtonItem *)self->_flipButton setTarget:self];
    v15 = self->_flipButton;
    v16 = MEMORY[0x277D755B8];
    v17 = SKUIBundle();
    v18 = [v16 imageNamed:@"CameraFlip" inBundle:v17];
    [(UIBarButtonItem *)v15 setImage:v18];
  }

  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:1];
  v19 = [(SKUIRedeemStepViewController *)self configuration];
  v20 = [v19 landingImage];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = [(SKUIRedeemStepViewController *)self configuration];
  [v21 addObserver:self selector:sel_SKUIRedeemPreflightImagesDidLoad_ name:0x2828123E8 object:v22];

  if (self->_fullscreen)
  {
    v23 = [[SKUIFullscreenRedeemCameraView alloc] initWithClientContext:v32];
    v24 = [(SKUIRedeemStepViewController *)self clientContext];
    v25 = v24;
    if (v24)
    {
      [v24 localizedStringForKey:@"CAMERA_REDEEM_TITLE" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_TITLE" inBundles:0 inTable:@"Redeem"];
    }
    v30 = ;
    [(SKUIRedeemCameraViewController *)self setTitle:v30];
  }

  else
  {
    v26 = [MEMORY[0x277D75418] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = [[SKUIIPadRedeemCameraView alloc] initWithClientContext:v32];
    }

    else
    {
      v23 = [[SKUIRedeemCameraView alloc] initWithClientContext:v32];
      if ([(SKUIRedeemStepViewController *)self shouldShowPassbookLearnMore])
      {
        v28 = [(SKUIRedeemStepViewController *)self configuration];
        v29 = [v28 ITunesPassConfiguration];
        [(SKUIFullscreenRedeemCameraView *)v23 setITunesPassConfiguration:v29];
      }
    }
  }

  v31 = [MEMORY[0x277D75348] whiteColor];
  [(SKUIFullscreenRedeemCameraView *)v23 setBackgroundColor:v31];

  [(SKUIFullscreenRedeemCameraView *)v23 setText:self->_initialCode];
  [(SKUIFullscreenRedeemCameraView *)v23 setImage:v20];
  [(SKUIFullscreenRedeemCameraView *)v23 setDelegate:self];
  [(SKUIFullscreenRedeemCameraView *)v23 start];
  [(SKUIRedeemCameraViewController *)self setView:v23];
}

- (void)_cancelAction:(id)a3
{
  v4 = [(SKUIRedeemCameraViewController *)self parentViewController];
  v5 = v4;
  if (!v4)
  {
    v4 = self;
  }

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)_redeemAction:(id)a3
{
  v4 = a3;
  v5 = [(SKUIRedeemCameraViewController *)self view];
  v6 = [v5 text];

  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:2];
  [(SKUIRedeemCameraViewController *)self _setEnabled:0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUIRedeemCameraViewController__redeemAction___block_invoke;
  v7[3] = &unk_2781FBA58;
  objc_copyWeak(&v8, &location);
  [(SKUIRedeemCameraViewController *)self _performRedeemOperationWithCode:v6 cameraRecognized:0 allowOverride:1 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__SKUIRedeemCameraViewController__redeemAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _redeemDidFinish:v6 error:v5];
}

- (void)cancelRedeemerViewForSKUIRedeemCameraView:(id)a3
{
  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:1];
  camera = self->_camera;

  [(CRCodeRedeemerController *)camera cancel];
}

- (void)presentFullScreenCameraViewForSKUIRedeemCameraView:(id)a3
{
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([(SKUIRedeemCameraViewController *)self cameraOverrideDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7))
  {
    v8 = [(SKUIRedeemCameraViewController *)self cameraOverrideDelegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__SKUIRedeemCameraViewController_presentFullScreenCameraViewForSKUIRedeemCameraView___block_invoke;
    v14[3] = &unk_2781FBD10;
    v14[4] = self;
    [v8 overrideIPadRedeemCamera:self completion:v14];
  }

  else
  {
    v13 = [[SKUIRedeemViewControllerLegacy alloc] initWithRedeemCategory:0];
    v9 = [(SKUIRedeemCameraViewController *)self delegate];
    [(SKUIRedeemViewControllerLegacy *)v13 setCameraDelegate:v9];

    [(SKUIRedeemViewControllerLegacy *)v13 setModalPresentationStyle:0];
    v10 = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemViewControllerLegacy *)v13 setClientContext:v10];

    v11 = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemViewControllerLegacy *)v13 setOperationQueue:v11];

    [(SKUIRedeemViewControllerLegacy *)v13 setCameraRedeemVisible:1];
    v12 = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemViewControllerLegacy *)v13 setRedeemConfiguration:v12];

    [(SKUIRedeemViewControllerLegacy *)v13 setShouldPerformInitialOperationOnAppear:0];
    [(SKUIRedeemCameraViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (id)redeemerViewForSKUIRedeemCameraView:(id)a3
{
  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:0];
  if (!self->_camera)
  {
    v4 = objc_alloc_init(MEMORY[0x277D00F70]);
    camera = self->_camera;
    self->_camera = v4;

    [(SKUIRedeemCameraViewController *)self addChildViewController:self->_camera];
    [(CRCodeRedeemerController *)self->_camera setDelegate:self];
  }

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v8 = [(SKUIRedeemStepViewController *)self clientContext];
    v9 = v8;
    if (v8)
    {
      [v8 localizedStringForKey:@"CAMERA_REDEEM_TITLE" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_TITLE" inBundles:0 inTable:@"Redeem"];
    }
    v10 = ;
    [(SKUIRedeemCameraViewController *)self setTitle:v10];
  }

  v11 = self->_camera;

  return [(CRCodeRedeemerController *)v11 view];
}

- (void)showITunesPassLearnMoreForSKUIRedeemCameraView:(id)a3
{
  v8 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
  v4 = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v8 setClientContext:v4];

  v5 = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v8 setConfiguration:v5];

  v6 = [(SKUIRedeemStepViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v8 setOperationQueue:v6];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(SKUIRedeemCameraViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)SKUIRedeemCameraView:(id)a3 textFieldDidChange:(id)a4
{
  v8 = a4;
  v5 = [(SKUIRedeemCameraViewController *)self _enabled];
  redeemButton = self->_redeemButton;
  v7 = v5 && [v8 length] != 0;
  [(UIBarButtonItem *)redeemButton setEnabled:v7];
}

- (void)startRedeemerViewForSKUIRedeemCameraView:(id)a3
{
  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:0];
  v4 = dispatch_time(0, 50000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SKUIRedeemCameraViewController_startRedeemerViewForSKUIRedeemCameraView___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

- (void)redeemCameraViewController:(id)a3 didFinishWithRedeem:(id)a4
{
  v5 = a4;
  [(SKUIRedeemCameraViewController *)self dismissViewControllerAnimated:1 completion:0];
  v10 = [[SKUIRedeemResultsViewController alloc] initWithRedeem:v5];

  v6 = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v10 setClientContext:v6];

  [(SKUIRedeemResultsViewController *)v10 setRedeemCategory:self->_category];
  v7 = [(SKUIRedeemStepViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v10 setOperationQueue:v7];

  v8 = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v10 setConfiguration:v8];

  v9 = [(SKUIRedeemCameraViewController *)self navigationController];
  [v9 pushViewController:v10 animated:1];
}

- (void)codeRedeemerController:(id)a3 didEndWithInfo:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SKUIRedeemCameraViewController_codeRedeemerController_didEndWithInfo___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __72__SKUIRedeemCameraViewController_codeRedeemerController_didEndWithInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clientContext];
  v3 = [*(a1 + 40) valueForKey:*MEMORY[0x277D00F48]];
  v4 = [*(a1 + 40) valueForKey:*MEMORY[0x277D00F40]];
  v5 = v4;
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = [*(a1 + 32) view];
    [v7 setText:v5];

    [*(a1 + 32) _setEnabled:0];
    [*(*(a1 + 32) + 1032) showMessage:0 color:0 style:1 duration:0.0];
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__SKUIRedeemCameraViewController_codeRedeemerController_didEndWithInfo___block_invoke_2;
    v11[3] = &unk_2781FBA58;
    objc_copyWeak(&v12, &location);
    [v8 _performRedeemOperationWithCode:v5 cameraRecognized:1 allowOverride:1 completion:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    goto LABEL_11;
  }

  if ([v3 code] != 1 && v5 && objc_msgSend(v3, "code") != 2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = *(*(a1 + 32) + 1032);
  if (v2)
  {
    [v2 localizedStringForKey:@"CAMERA_REDEEM_UNABLE_TO_READ_CODE" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_UNABLE_TO_READ_CODE" inBundles:0 inTable:@"Redeem"];
  }
  v9 = ;
  v10 = [MEMORY[0x277D75348] redColor];
  [v6 showMessage:v9 color:v10 style:3 duration:1.0];

LABEL_11:
}

void __72__SKUIRedeemCameraViewController_codeRedeemerController_didEndWithInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cameraRedeemDidFinish:v6 error:v5];
}

- (void)codeRedeemerControllerDidDisplayMessage:(id)a3
{
  v4 = a3;
  if (self->_successfulRedeem)
  {
    v12 = v4;
    if (self->_fullscreen && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(SKUIRedeemResultsViewController *)WeakRetained redeemCameraViewController:self didFinishWithRedeem:self->_successfulRedeem];
    }

    else
    {
      WeakRetained = [[SKUIRedeemResultsViewController alloc] initWithRedeem:self->_successfulRedeem];
      v8 = [(SKUIRedeemStepViewController *)self clientContext];
      [(SKUIRedeemStepViewController *)WeakRetained setClientContext:v8];

      [(SKUIRedeemResultsViewController *)WeakRetained setRedeemCategory:self->_category];
      v9 = [(SKUIRedeemStepViewController *)self operationQueue];
      [(SKUIRedeemStepViewController *)WeakRetained setOperationQueue:v9];

      v10 = [(SKUIRedeemStepViewController *)self configuration];
      [(SKUIRedeemStepViewController *)WeakRetained setConfiguration:v10];

      v11 = [(SKUIRedeemCameraViewController *)self navigationController];
      [v11 pushViewController:WeakRetained animated:1];

      UIKeyboardOrderOutAutomatic();
    }

    v4 = v12;
  }
}

- (void)SKUIRedeemPreflightImagesDidLoad:(id)a3
{
  v6 = [(SKUIRedeemCameraViewController *)self view];
  v4 = [(SKUIRedeemStepViewController *)self configuration];
  v5 = [v4 landingImage];
  [v6 setImage:v5];
}

- (void)_performRedeemOperationWithCode:(id)a3 cameraRecognized:(BOOL)a4 allowOverride:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v8 = a4;
  v16 = a3;
  v10 = a6;
  if (v7 && ([(SKUIRedeemCameraViewController *)self delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    v13 = [(SKUIRedeemCameraViewController *)self delegate];
    [(SKUIRedeemOperation *)v13 overrideRedeemOperationWithCode:v16 cameraRecognized:v8 completion:v10];
  }

  else
  {
    v13 = [[SKUIRedeemOperation alloc] initWithCode:v16];
    [(SKUIRedeemOperation *)v13 setCameraRecognized:v8];
    v14 = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemOperation *)v13 setClientContext:v14];

    [(SKUIRedeemOperation *)v13 setResultBlock:v10];
    v15 = [(SKUIRedeemStepViewController *)self operationQueue];
    [v15 addOperation:v13];
  }
}

- (void)_setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIRedeemCameraViewController *)self view];
  v8 = v5;
  if (v3)
  {
    [v5 setEnabled:1];
    redeemButton = self->_redeemButton;
    v7 = [v8 text];
    -[UIBarButtonItem setEnabled:](redeemButton, "setEnabled:", [v7 length] != 0);
  }

  else
  {
    [v5 setEnabled:0];
    [(UIBarButtonItem *)self->_redeemButton setEnabled:0];
  }
}

- (BOOL)_enabled
{
  v2 = [(SKUIRedeemCameraViewController *)self view];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)_cameraRedeemDidFinish:(id)a3 error:(id)a4
{
  v15 = a3;
  v7 = a4;
  if (v15)
  {
    camera = self->_camera;
    v9 = [MEMORY[0x277D75348] greenColor];
    [(CRCodeRedeemerController *)camera showMessage:0 color:v9 style:2 duration:1.0];

    objc_storeStrong(&self->_successfulRedeem, a3);
  }

  else
  {
    [(SKUIRedeemCameraViewController *)self _setEnabled:1];
    if (v7 && ([v7 userInfo], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "valueForKey:", @"hideError"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {
      v12 = self->_camera;
      v13 = [v7 localizedDescription];
      v14 = [MEMORY[0x277D75348] redColor];
      [(CRCodeRedeemerController *)v12 showMessage:v13 color:v14 style:3 duration:1.0];
    }

    else
    {
      [(CRCodeRedeemerController *)self->_camera startSession];
    }
  }

  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:0];
}

- (void)_redeemDidFinish:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    UIKeyboardOrderOutAutomatic();
    v9 = [[SKUIRedeemResultsViewController alloc] initWithRedeem:v6];
    v10 = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemStepViewController *)v9 setClientContext:v10];

    [(SKUIRedeemResultsViewController *)v9 setRedeemCategory:self->_category];
    v11 = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemStepViewController *)v9 setOperationQueue:v11];

    v12 = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemStepViewController *)v9 setConfiguration:v12];

    v13 = [(SKUIRedeemCameraViewController *)self navigationController];
    [v13 pushViewController:v9 animated:1];
  }

  else
  {
    if (!v7 || ([v7 userInfo], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "valueForKey:", @"hideError"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      [(SKUIRedeemCameraViewController *)self _setEnabled:1];
      v9 = [(SKUIRedeemCameraViewController *)self view];
      [(SKUIRedeemResultsViewController *)v9 showKeyboard];
      goto LABEL_7;
    }

    v16 = [(SKUIRedeemStepViewController *)self clientContext];
    v9 = v16;
    v17 = MEMORY[0x277D75110];
    if (v16)
    {
      [(SKUIRedeemResultsViewController *)v16 localizedStringForKey:@"CAMERA_REDEEM_ERROR_TITLE" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_ERROR_TITLE" inBundles:0 inTable:@"Redeem"];
    }
    v18 = ;
    v19 = [v8 localizedDescription];
    v13 = [v17 alertControllerWithTitle:v18 message:v19 preferredStyle:1];

    v20 = MEMORY[0x277D750F8];
    if (v9)
    {
      [(SKUIRedeemResultsViewController *)v9 localizedStringForKey:@"CAMERA_REDEEM_OK_BUTTON" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_OK_BUTTON" inBundles:0 inTable:@"Redeem"];
    }
    v21 = ;
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __57__SKUIRedeemCameraViewController__redeemDidFinish_error___block_invoke;
    v26 = &unk_2781FBDB8;
    v27 = v8;
    v28 = self;
    v22 = [v20 actionWithTitle:v21 style:0 handler:&v23];
    [v13 addAction:{v22, v23, v24, v25, v26}];

    [(SKUIRedeemCameraViewController *)self presentViewController:v13 animated:1 completion:0];
  }

LABEL_7:
  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:1];
}

void __57__SKUIRedeemCameraViewController__redeemDidFinish_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) code];
  v3 = *(a1 + 40);
  if (v2 == 9518)
  {
    v4 = [v3 redeemStepDelegate];
    [v4 redeemStepViewControllerShouldValidateNationalID:*(a1 + 40)];
  }

  else
  {
    [v3 _setEnabled:1];
    v4 = [*(a1 + 40) view];
    [v4 showKeyboard];
  }
}

- (void)_updateRightBarButtonItemsForRedeemInputState:(int64_t)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = [(SKUIRedeemCameraViewController *)self navigationItem];
    activityBarButtonItem = self->_activityBarButtonItem;
    v10[0] = self->_redeemButton;
    v10[1] = activityBarButtonItem;
    v5 = MEMORY[0x277CBEA60];
    p_redeemButton = v10;
    v7 = 2;
  }

  else
  {
    if (a3 == 1)
    {
      v4 = [(SKUIRedeemCameraViewController *)self navigationItem];
      redeemButton = self->_redeemButton;
      v5 = MEMORY[0x277CBEA60];
      p_redeemButton = &redeemButton;
    }

    else
    {
      if (a3)
      {
        return;
      }

      v4 = [(SKUIRedeemCameraViewController *)self navigationItem];
      v12[0] = self->_flipButton;
      v5 = MEMORY[0x277CBEA60];
      p_redeemButton = v12;
    }

    v7 = 1;
  }

  v9 = [v5 arrayWithObjects:p_redeemButton count:v7];
  [v4 setRightBarButtonItems:v9];
}

- (SKUIRedeemCameraViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SKUIRedeemViewCameraOverrideDelegate)cameraOverrideDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraOverrideDelegate);

  return WeakRetained;
}

- (void)initWithRedeemCategory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemCameraViewController initWithRedeemCategory:]";
}

- (void)initWithRedeemCategoryFullscreen:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemCameraViewController initWithRedeemCategoryFullscreen:]";
}

@end