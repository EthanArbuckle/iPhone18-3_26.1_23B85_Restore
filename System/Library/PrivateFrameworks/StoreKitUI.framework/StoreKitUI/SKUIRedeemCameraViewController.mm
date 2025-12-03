@interface SKUIRedeemCameraViewController
- (BOOL)_enabled;
- (SKUIRedeemCameraViewController)initWithRedeemCategory:(int64_t)category;
- (SKUIRedeemCameraViewController)initWithRedeemCategoryFullscreen:(int64_t)fullscreen;
- (SKUIRedeemCameraViewControllerDelegate)delegate;
- (SKUIRedeemViewCameraOverrideDelegate)cameraOverrideDelegate;
- (id)redeemerViewForSKUIRedeemCameraView:(id)view;
- (void)SKUIRedeemCameraView:(id)view textFieldDidChange:(id)change;
- (void)SKUIRedeemPreflightImagesDidLoad:(id)load;
- (void)_cameraRedeemDidFinish:(id)finish error:(id)error;
- (void)_cancelAction:(id)action;
- (void)_performRedeemOperationWithCode:(id)code cameraRecognized:(BOOL)recognized allowOverride:(BOOL)override completion:(id)completion;
- (void)_redeemAction:(id)action;
- (void)_redeemDidFinish:(id)finish error:(id)error;
- (void)_setEnabled:(BOOL)enabled;
- (void)_updateRightBarButtonItemsForRedeemInputState:(int64_t)state;
- (void)cancelRedeemerViewForSKUIRedeemCameraView:(id)view;
- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info;
- (void)codeRedeemerControllerDidDisplayMessage:(id)message;
- (void)dealloc;
- (void)loadView;
- (void)presentFullScreenCameraViewForSKUIRedeemCameraView:(id)view;
- (void)redeemCameraViewController:(id)controller didFinishWithRedeem:(id)redeem;
- (void)showITunesPassLearnMoreForSKUIRedeemCameraView:(id)view;
- (void)startRedeemerViewForSKUIRedeemCameraView:(id)view;
@end

@implementation SKUIRedeemCameraViewController

- (SKUIRedeemCameraViewController)initWithRedeemCategory:(int64_t)category
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
    v5->_category = category;
    v5->_fullscreen = 0;
    [(SKUIRedeemCameraViewController *)v5 setEdgesForExtendedLayout:0];
  }

  return v6;
}

- (SKUIRedeemCameraViewController)initWithRedeemCategoryFullscreen:(int64_t)fullscreen
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
    result->_category = fullscreen;
    result->_fullscreen = 1;
  }

  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  [defaultCenter removeObserver:self name:0x2828123E8 object:configuration];

  v5.receiver = self;
  v5.super_class = SKUIRedeemCameraViewController;
  [(SKUIRedeemCameraViewController *)&v5 dealloc];
}

- (void)loadView
{
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  navigationItem = [(SKUIRedeemCameraViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v4 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v4 setAction:sel__cancelAction_];
  [v4 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"CAMERA_REDEEM_CANCEL_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_CANCEL_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v5 = ;
  [v4 setTitle:v5];

  [navigationItem setLeftBarButtonItem:v4];
  v6 = objc_alloc_init(MEMORY[0x277D751E0]);
  redeemButton = self->_redeemButton;
  self->_redeemButton = v6;

  [(UIBarButtonItem *)self->_redeemButton setAction:sel__redeemAction_];
  [(UIBarButtonItem *)self->_redeemButton setTarget:self];
  v8 = self->_redeemButton;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"CAMERA_REDEEM_REDEEM_BUTTON" inTable:@"Redeem"];
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
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  landingImage = [configuration landingImage];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  configuration2 = [(SKUIRedeemStepViewController *)self configuration];
  [defaultCenter addObserver:self selector:sel_SKUIRedeemPreflightImagesDidLoad_ name:0x2828123E8 object:configuration2];

  if (self->_fullscreen)
  {
    v23 = [[SKUIFullscreenRedeemCameraView alloc] initWithClientContext:clientContext];
    clientContext2 = [(SKUIRedeemStepViewController *)self clientContext];
    v25 = clientContext2;
    if (clientContext2)
    {
      [clientContext2 localizedStringForKey:@"CAMERA_REDEEM_TITLE" inTable:@"Redeem"];
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = [[SKUIIPadRedeemCameraView alloc] initWithClientContext:clientContext];
    }

    else
    {
      v23 = [[SKUIRedeemCameraView alloc] initWithClientContext:clientContext];
      if ([(SKUIRedeemStepViewController *)self shouldShowPassbookLearnMore])
      {
        configuration3 = [(SKUIRedeemStepViewController *)self configuration];
        iTunesPassConfiguration = [configuration3 ITunesPassConfiguration];
        [(SKUIFullscreenRedeemCameraView *)v23 setITunesPassConfiguration:iTunesPassConfiguration];
      }
    }
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(SKUIFullscreenRedeemCameraView *)v23 setBackgroundColor:whiteColor];

  [(SKUIFullscreenRedeemCameraView *)v23 setText:self->_initialCode];
  [(SKUIFullscreenRedeemCameraView *)v23 setImage:landingImage];
  [(SKUIFullscreenRedeemCameraView *)v23 setDelegate:self];
  [(SKUIFullscreenRedeemCameraView *)v23 start];
  [(SKUIRedeemCameraViewController *)self setView:v23];
}

- (void)_cancelAction:(id)action
{
  selfCopy = [(SKUIRedeemCameraViewController *)self parentViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_redeemAction:(id)action
{
  actionCopy = action;
  view = [(SKUIRedeemCameraViewController *)self view];
  text = [view text];

  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:2];
  [(SKUIRedeemCameraViewController *)self _setEnabled:0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUIRedeemCameraViewController__redeemAction___block_invoke;
  v7[3] = &unk_2781FBA58;
  objc_copyWeak(&v8, &location);
  [(SKUIRedeemCameraViewController *)self _performRedeemOperationWithCode:text cameraRecognized:0 allowOverride:1 completion:v7];
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

- (void)cancelRedeemerViewForSKUIRedeemCameraView:(id)view
{
  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:1];
  camera = self->_camera;

  [(CRCodeRedeemerController *)camera cancel];
}

- (void)presentFullScreenCameraViewForSKUIRedeemCameraView:(id)view
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ([(SKUIRedeemCameraViewController *)self cameraOverrideDelegate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7))
  {
    cameraOverrideDelegate = [(SKUIRedeemCameraViewController *)self cameraOverrideDelegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__SKUIRedeemCameraViewController_presentFullScreenCameraViewForSKUIRedeemCameraView___block_invoke;
    v14[3] = &unk_2781FBD10;
    v14[4] = self;
    [cameraOverrideDelegate overrideIPadRedeemCamera:self completion:v14];
  }

  else
  {
    v13 = [[SKUIRedeemViewControllerLegacy alloc] initWithRedeemCategory:0];
    delegate = [(SKUIRedeemCameraViewController *)self delegate];
    [(SKUIRedeemViewControllerLegacy *)v13 setCameraDelegate:delegate];

    [(SKUIRedeemViewControllerLegacy *)v13 setModalPresentationStyle:0];
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemViewControllerLegacy *)v13 setClientContext:clientContext];

    operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemViewControllerLegacy *)v13 setOperationQueue:operationQueue];

    [(SKUIRedeemViewControllerLegacy *)v13 setCameraRedeemVisible:1];
    configuration = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemViewControllerLegacy *)v13 setRedeemConfiguration:configuration];

    [(SKUIRedeemViewControllerLegacy *)v13 setShouldPerformInitialOperationOnAppear:0];
    [(SKUIRedeemCameraViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (id)redeemerViewForSKUIRedeemCameraView:(id)view
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

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"CAMERA_REDEEM_TITLE" inTable:@"Redeem"];
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

- (void)showITunesPassLearnMoreForSKUIRedeemCameraView:(id)view
{
  v8 = objc_alloc_init(SKUIRedeemITunesPassLearnMoreViewController);
  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v8 setClientContext:clientContext];

  configuration = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v8 setConfiguration:configuration];

  operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v8 setOperationQueue:operationQueue];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [(SKUIRedeemCameraViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)SKUIRedeemCameraView:(id)view textFieldDidChange:(id)change
{
  changeCopy = change;
  _enabled = [(SKUIRedeemCameraViewController *)self _enabled];
  redeemButton = self->_redeemButton;
  v7 = _enabled && [changeCopy length] != 0;
  [(UIBarButtonItem *)redeemButton setEnabled:v7];
}

- (void)startRedeemerViewForSKUIRedeemCameraView:(id)view
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

- (void)redeemCameraViewController:(id)controller didFinishWithRedeem:(id)redeem
{
  redeemCopy = redeem;
  [(SKUIRedeemCameraViewController *)self dismissViewControllerAnimated:1 completion:0];
  v10 = [[SKUIRedeemResultsViewController alloc] initWithRedeem:redeemCopy];

  clientContext = [(SKUIRedeemStepViewController *)self clientContext];
  [(SKUIRedeemStepViewController *)v10 setClientContext:clientContext];

  [(SKUIRedeemResultsViewController *)v10 setRedeemCategory:self->_category];
  operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
  [(SKUIRedeemStepViewController *)v10 setOperationQueue:operationQueue];

  configuration = [(SKUIRedeemStepViewController *)self configuration];
  [(SKUIRedeemStepViewController *)v10 setConfiguration:configuration];

  navigationController = [(SKUIRedeemCameraViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)codeRedeemerController:(id)controller didEndWithInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SKUIRedeemCameraViewController_codeRedeemerController_didEndWithInfo___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
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

- (void)codeRedeemerControllerDidDisplayMessage:(id)message
{
  messageCopy = message;
  if (self->_successfulRedeem)
  {
    v12 = messageCopy;
    if (self->_fullscreen && (v5 = objc_loadWeakRetained(&self->_delegate), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [(SKUIRedeemResultsViewController *)WeakRetained redeemCameraViewController:self didFinishWithRedeem:self->_successfulRedeem];
    }

    else
    {
      WeakRetained = [[SKUIRedeemResultsViewController alloc] initWithRedeem:self->_successfulRedeem];
      clientContext = [(SKUIRedeemStepViewController *)self clientContext];
      [(SKUIRedeemStepViewController *)WeakRetained setClientContext:clientContext];

      [(SKUIRedeemResultsViewController *)WeakRetained setRedeemCategory:self->_category];
      operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
      [(SKUIRedeemStepViewController *)WeakRetained setOperationQueue:operationQueue];

      configuration = [(SKUIRedeemStepViewController *)self configuration];
      [(SKUIRedeemStepViewController *)WeakRetained setConfiguration:configuration];

      navigationController = [(SKUIRedeemCameraViewController *)self navigationController];
      [navigationController pushViewController:WeakRetained animated:1];

      UIKeyboardOrderOutAutomatic();
    }

    messageCopy = v12;
  }
}

- (void)SKUIRedeemPreflightImagesDidLoad:(id)load
{
  view = [(SKUIRedeemCameraViewController *)self view];
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  landingImage = [configuration landingImage];
  [view setImage:landingImage];
}

- (void)_performRedeemOperationWithCode:(id)code cameraRecognized:(BOOL)recognized allowOverride:(BOOL)override completion:(id)completion
{
  overrideCopy = override;
  recognizedCopy = recognized;
  codeCopy = code;
  completionCopy = completion;
  if (overrideCopy && ([(SKUIRedeemCameraViewController *)self delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_respondsToSelector(), v11, (v12 & 1) != 0))
  {
    delegate = [(SKUIRedeemCameraViewController *)self delegate];
    [(SKUIRedeemOperation *)delegate overrideRedeemOperationWithCode:codeCopy cameraRecognized:recognizedCopy completion:completionCopy];
  }

  else
  {
    delegate = [[SKUIRedeemOperation alloc] initWithCode:codeCopy];
    [(SKUIRedeemOperation *)delegate setCameraRecognized:recognizedCopy];
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemOperation *)delegate setClientContext:clientContext];

    [(SKUIRedeemOperation *)delegate setResultBlock:completionCopy];
    operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
    [operationQueue addOperation:delegate];
  }
}

- (void)_setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  view = [(SKUIRedeemCameraViewController *)self view];
  v8 = view;
  if (enabledCopy)
  {
    [view setEnabled:1];
    redeemButton = self->_redeemButton;
    text = [v8 text];
    -[UIBarButtonItem setEnabled:](redeemButton, "setEnabled:", [text length] != 0);
  }

  else
  {
    [view setEnabled:0];
    [(UIBarButtonItem *)self->_redeemButton setEnabled:0];
  }
}

- (BOOL)_enabled
{
  view = [(SKUIRedeemCameraViewController *)self view];
  isEnabled = [view isEnabled];

  return isEnabled;
}

- (void)_cameraRedeemDidFinish:(id)finish error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  if (finishCopy)
  {
    camera = self->_camera;
    greenColor = [MEMORY[0x277D75348] greenColor];
    [(CRCodeRedeemerController *)camera showMessage:0 color:greenColor style:2 duration:1.0];

    objc_storeStrong(&self->_successfulRedeem, finish);
  }

  else
  {
    [(SKUIRedeemCameraViewController *)self _setEnabled:1];
    if (errorCopy && ([errorCopy userInfo], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "valueForKey:", @"hideError"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {
      v12 = self->_camera;
      localizedDescription = [errorCopy localizedDescription];
      redColor = [MEMORY[0x277D75348] redColor];
      [(CRCodeRedeemerController *)v12 showMessage:localizedDescription color:redColor style:3 duration:1.0];
    }

    else
    {
      [(CRCodeRedeemerController *)self->_camera startSession];
    }
  }

  [(SKUIRedeemCameraViewController *)self _updateRightBarButtonItemsForRedeemInputState:0];
}

- (void)_redeemDidFinish:(id)finish error:(id)error
{
  finishCopy = finish;
  errorCopy = error;
  v8 = errorCopy;
  if (finishCopy)
  {
    UIKeyboardOrderOutAutomatic();
    view = [[SKUIRedeemResultsViewController alloc] initWithRedeem:finishCopy];
    clientContext = [(SKUIRedeemStepViewController *)self clientContext];
    [(SKUIRedeemStepViewController *)view setClientContext:clientContext];

    [(SKUIRedeemResultsViewController *)view setRedeemCategory:self->_category];
    operationQueue = [(SKUIRedeemStepViewController *)self operationQueue];
    [(SKUIRedeemStepViewController *)view setOperationQueue:operationQueue];

    configuration = [(SKUIRedeemStepViewController *)self configuration];
    [(SKUIRedeemStepViewController *)view setConfiguration:configuration];

    navigationController = [(SKUIRedeemCameraViewController *)self navigationController];
    [navigationController pushViewController:view animated:1];
  }

  else
  {
    if (!errorCopy || ([errorCopy userInfo], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "valueForKey:", @"hideError"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      [(SKUIRedeemCameraViewController *)self _setEnabled:1];
      view = [(SKUIRedeemCameraViewController *)self view];
      [(SKUIRedeemResultsViewController *)view showKeyboard];
      goto LABEL_7;
    }

    clientContext2 = [(SKUIRedeemStepViewController *)self clientContext];
    view = clientContext2;
    v17 = MEMORY[0x277D75110];
    if (clientContext2)
    {
      [(SKUIRedeemResultsViewController *)clientContext2 localizedStringForKey:@"CAMERA_REDEEM_ERROR_TITLE" inTable:@"Redeem"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CAMERA_REDEEM_ERROR_TITLE" inBundles:0 inTable:@"Redeem"];
    }
    v18 = ;
    localizedDescription = [v8 localizedDescription];
    navigationController = [v17 alertControllerWithTitle:v18 message:localizedDescription preferredStyle:1];

    v20 = MEMORY[0x277D750F8];
    if (view)
    {
      [(SKUIRedeemResultsViewController *)view localizedStringForKey:@"CAMERA_REDEEM_OK_BUTTON" inTable:@"Redeem"];
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
    selfCopy = self;
    v22 = [v20 actionWithTitle:v21 style:0 handler:&v23];
    [navigationController addAction:{v22, v23, v24, v25, v26}];

    [(SKUIRedeemCameraViewController *)self presentViewController:navigationController animated:1 completion:0];
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

- (void)_updateRightBarButtonItemsForRedeemInputState:(int64_t)state
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (state == 2)
  {
    navigationItem = [(SKUIRedeemCameraViewController *)self navigationItem];
    activityBarButtonItem = self->_activityBarButtonItem;
    v10[0] = self->_redeemButton;
    v10[1] = activityBarButtonItem;
    v5 = MEMORY[0x277CBEA60];
    p_redeemButton = v10;
    v7 = 2;
  }

  else
  {
    if (state == 1)
    {
      navigationItem = [(SKUIRedeemCameraViewController *)self navigationItem];
      redeemButton = self->_redeemButton;
      v5 = MEMORY[0x277CBEA60];
      p_redeemButton = &redeemButton;
    }

    else
    {
      if (state)
      {
        return;
      }

      navigationItem = [(SKUIRedeemCameraViewController *)self navigationItem];
      v12[0] = self->_flipButton;
      v5 = MEMORY[0x277CBEA60];
      p_redeemButton = v12;
    }

    v7 = 1;
  }

  v9 = [v5 arrayWithObjects:p_redeemButton count:v7];
  [navigationItem setRightBarButtonItems:v9];
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