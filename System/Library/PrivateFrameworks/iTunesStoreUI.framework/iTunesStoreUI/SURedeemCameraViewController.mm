@interface SURedeemCameraViewController
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (void)_cancelButtonAction;
- (void)_detectedCode:(id)code;
- (void)_dismissKeyboard;
- (void)_hideOverlay;
- (void)_layoutCodeTextField;
- (void)_layoutCodeTextFieldWithNotification:(id)notification;
- (void)_overlayTapAction;
- (void)_presentCameraErrorAlert;
- (void)_recognitionError;
- (void)_recognitionSuccess;
- (void)_redeemButtonAction;
- (void)_setBackButtonTitle:(id)title;
- (void)_setup;
- (void)_setupActivityIndicator;
- (void)_setupCameraController;
- (void)_setupCodeTextField;
- (void)_setupNavigationItem;
- (void)_setupNotifications;
- (void)_setupOverlayView;
- (void)_showOverlay;
- (void)_startActivityIndicator;
- (void)_startCameraController;
- (void)_stopAcitivityIndicator;
- (void)_stopCameraController;
- (void)_toggleCameraButtonAction;
- (void)_updateNavigationItemAnimated;
- (void)_updateState;
- (void)codeRedeemerControllerDidEndWithCode:(id)code error:(id)error;
- (void)dealloc;
- (void)loadView;
- (void)performAction:(int64_t)action withObject:(id)object;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SURedeemCameraViewController

- (void)performAction:(int64_t)action withObject:(id)object
{
  objectCopy = object;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SURedeemCameraViewController_performAction_withObject___block_invoke;
  block[3] = &unk_1E8164B40;
  v9 = objectCopy;
  actionCopy = action;
  block[4] = self;
  v7 = objectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__SURedeemCameraViewController_performAction_withObject___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        return [*(result + 32) _recognitionError];
      case 5:
        return [*(result + 32) _recognitionSuccess];
      case 6:
        return [*(result + 32) _setBackButtonTitle:*(result + 40)];
    }
  }

  else if (v1)
  {
    if (v1 == 2)
    {
      return [*(result + 32) _pauseCamera];
    }

    else if (v1 == 3)
    {
      return [*(result + 32) _resumeCamera];
    }
  }

  else
  {
    return [*(result + 32) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v3 viewDidLoad];
  [(SURedeemCameraViewController *)self _setup];
  [(SURedeemCameraViewController *)self setState:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v4 viewDidAppear:appear];
  [(SURedeemCameraViewController *)self _startCameraController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v4 viewDidDisappear:disappear];
  [(SURedeemCameraViewController *)self _stopCameraController];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v15 viewWillLayoutSubviews];
  cameraController = [(SURedeemCameraViewController *)self cameraController];
  view = [cameraController view];
  view2 = [(SURedeemCameraViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  activityIndicator = [(SURedeemCameraViewController *)self activityIndicator];
  view3 = [(SURedeemCameraViewController *)self view];
  [view3 center];
  v9 = v8;
  view4 = [(SURedeemCameraViewController *)self view];
  [view4 bounds];
  v12 = v11;
  view5 = [(SURedeemCameraViewController *)self view];
  [view5 safeAreaInsets];
  [activityIndicator setCenter:{v9, v12 - v14 + -44.0 + -64.0}];

  [(SURedeemCameraViewController *)self _layoutCodeTextField];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(SURedeemCameraViewController *)self setKeyboardHeight:0.0];
  [(SURedeemCameraViewController *)self _dismissKeyboard];
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [(SURedeemCameraViewController *)self setView:v4];
}

- (void)_setup
{
  [(SURedeemCameraViewController *)self _setupCameraController];
  [(SURedeemCameraViewController *)self _setupCodeTextField];
  [(SURedeemCameraViewController *)self _setupNavigationItem];
  [(SURedeemCameraViewController *)self _setupNotifications];
  [(SURedeemCameraViewController *)self _setupOverlayView];

  [(SURedeemCameraViewController *)self _setupActivityIndicator];
}

- (void)_setupActivityIndicator
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:0];
  [(UIActivityIndicatorView *)v3 setAlpha:0.0];
  [(UIActivityIndicatorView *)v3 setHidden:1];
  view = [(SURedeemCameraViewController *)self view];
  [view addSubview:v3];

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;
}

- (void)_setupCameraController
{
  if ([objc_opt_class() cameraSupported])
  {
    v3 = objc_alloc_init(SUCodeRedeemerController);
    [(SURedeemCameraViewController *)self setCameraController:v3];

    cameraController = [(SURedeemCameraViewController *)self cameraController];
    [cameraController willMoveToParentViewController:self];

    cameraController2 = [(SURedeemCameraViewController *)self cameraController];
    [(SURedeemCameraViewController *)self addChildViewController:cameraController2];

    view = [(SURedeemCameraViewController *)self view];
    cameraController3 = [(SURedeemCameraViewController *)self cameraController];
    view2 = [cameraController3 view];
    [view addSubview:view2];

    cameraController4 = [(SURedeemCameraViewController *)self cameraController];
    [cameraController4 didMoveToParentViewController:self];
  }
}

- (void)_setupCodeTextField
{
  v3 = [[SURedeemCodeTextField alloc] initWithHeight:44.0];
  [(SURedeemCodeTextField *)v3 setDelegate:self];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ENTER_CODE_MANUALLY" value:&stru_1F41B3660 table:0];
  [(SURedeemCodeTextField *)v3 setPlaceholder:v5];

  view = [(SURedeemCameraViewController *)self view];
  [view addSubview:v3];

  codeTextField = self->_codeTextField;
  self->_codeTextField = v3;
}

- (void)_setupNavigationItem
{
  navigationItem = [(SURedeemCameraViewController *)self navigationItem];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SCAN_CARD" value:&stru_1F41B3660 table:0];
  [navigationItem setTitle:v5];

  navigationItem2 = [(SURedeemCameraViewController *)self navigationItem];
  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonAction];
  [navigationItem2 setLeftBarButtonItem:v7];

  v8 = objc_alloc(MEMORY[0x1E69DC708]);
  v9 = MEMORY[0x1E69DCAB8];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"CameraFlip.png" inBundle:v10];
  v12 = [v8 initWithImage:v11 style:0 target:self action:sel__toggleCameraButtonAction];
  [(SURedeemCameraViewController *)self setToggleCameraBarButton:v12];

  v13 = objc_alloc(MEMORY[0x1E69DC708]);
  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v14 = [v16 localizedStringForKey:@"REDEEM" value:&stru_1F41B3660 table:0];
  v15 = [v13 initWithTitle:v14 style:0 target:self action:sel__redeemButtonAction];
  [(SURedeemCameraViewController *)self setRedeemBarButton:v15];
}

- (void)_setupNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && [(SURedeemCameraViewController *)self ignoreDefaultKeyboardNotifications])
  {
    [defaultCenter addObserver:self selector:sel__layoutCodeTextFieldWithNotification_ name:@"SUKeyboardDidChangeNotification" object:0];
    v5 = SUKeyboardWillChangeNotification;
  }

  else
  {
    v6 = MEMORY[0x1E69DE080];
    if (userInterfaceIdiom == 1)
    {
      v6 = MEMORY[0x1E69DDF78];
    }

    [defaultCenter addObserver:self selector:sel__layoutCodeTextFieldWithNotification_ name:*v6 object:0];
    v5 = MEMORY[0x1E69DE078];
  }

  [defaultCenter addObserver:self selector:sel__layoutCodeTextFieldWithNotification_ name:*v5 object:0];
}

- (void)_setupOverlayView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UIView *)v3 setAlpha:0.0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(UIView *)v3 setBackgroundColor:blackColor];

  [(UIView *)v3 setHidden:1];
  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__overlayTapAction];
  [(UIView *)v3 addGestureRecognizer:v8];
  overlayView = self->_overlayView;
  self->_overlayView = v3;

  view = [(SURedeemCameraViewController *)self view];
  overlayView = [(SURedeemCameraViewController *)self overlayView];
  [view addSubview:overlayView];
}

- (void)_cancelButtonAction
{
  [(SURedeemCameraViewController *)self _dismissKeyboard];
  [(SURedeemCameraViewController *)self setState:0];

  [(SURedeemCameraViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_redeemButtonAction
{
  [(SURedeemCameraViewController *)self _dismissKeyboard];
  codeTextField = [(SURedeemCameraViewController *)self codeTextField];
  text = [codeTextField text];

  [(SURedeemCameraViewController *)self _detectedCode:text];
}

- (void)_setBackButtonTitle:(id)title
{
  v4 = MEMORY[0x1E69DC708];
  titleCopy = title;
  v7 = [[v4 alloc] initWithTitle:titleCopy style:0 target:self action:sel__cancelButtonAction];

  navigationItem = [(SURedeemCameraViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v7];
}

- (void)_toggleCameraButtonAction
{
  toggleCameraBarButton = [(SURedeemCameraViewController *)self toggleCameraBarButton];
  [toggleCameraBarButton setEnabled:0];

  objc_initWeak(&location, self);
  cameraController = [(SURedeemCameraViewController *)self cameraController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SURedeemCameraViewController__toggleCameraButtonAction__block_invoke;
  v5[3] = &unk_1E8164920;
  objc_copyWeak(&v6, &location);
  [cameraController toggleCameraWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__SURedeemCameraViewController__toggleCameraButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained toggleCameraBarButton];
  [v1 setEnabled:1];
}

- (void)_overlayTapAction
{
  if ([(SURedeemCameraViewController *)self state]!= 2)
  {
    codeTextField = [(SURedeemCameraViewController *)self codeTextField];
    [codeTextField setText:0];

    [(SURedeemCameraViewController *)self _dismissKeyboard];
  }
}

- (void)_recognitionError
{
  cameraController = [(SURedeemCameraViewController *)self cameraController];
  [cameraController recognitionError];
}

- (void)_recognitionSuccess
{
  cameraController = [(SURedeemCameraViewController *)self cameraController];
  [cameraController recognitionSuccess];
}

- (void)_startActivityIndicator
{
  activityIndicator = [(SURedeemCameraViewController *)self activityIndicator];
  [activityIndicator startAnimating];

  activityIndicator2 = [(SURedeemCameraViewController *)self activityIndicator];
  [activityIndicator2 setHidden:0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SURedeemCameraViewController__startActivityIndicator__block_invoke;
  v5[3] = &unk_1E81645E8;
  v5[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0.5];
}

void __55__SURedeemCameraViewController__startActivityIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicator];
  [v1 setAlpha:1.0];
}

- (void)_stopAcitivityIndicator
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SURedeemCameraViewController__stopAcitivityIndicator__block_invoke;
  v3[3] = &unk_1E81645E8;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__SURedeemCameraViewController__stopAcitivityIndicator__block_invoke_2;
  v2[3] = &unk_1E8165410;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.5];
}

void __55__SURedeemCameraViewController__stopAcitivityIndicator__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicator];
  [v1 setAlpha:0.0];
}

void __55__SURedeemCameraViewController__stopAcitivityIndicator__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIndicator];
  [v2 setHidden:1];

  v3 = [*(a1 + 32) activityIndicator];
  [v3 stopAnimating];
}

- (void)_startCameraController
{
  if (![(SURedeemCameraViewController *)self state])
  {
    cameraController = [(SURedeemCameraViewController *)self cameraController];
    delegate = [cameraController delegate];

    if (!delegate)
    {
      cameraController2 = [(SURedeemCameraViewController *)self cameraController];
      [cameraController2 setDelegate:self];

      cameraController3 = [(SURedeemCameraViewController *)self cameraController];
      [cameraController3 startSession];
    }
  }
}

- (void)_stopCameraController
{
  cameraController = [(SURedeemCameraViewController *)self cameraController];
  if (cameraController)
  {
    v4 = cameraController;
    cameraController2 = [(SURedeemCameraViewController *)self cameraController];
    delegate = [cameraController2 delegate];

    if (delegate)
    {
      cameraController3 = [(SURedeemCameraViewController *)self cameraController];
      [cameraController3 setDelegate:0];

      cameraController4 = [(SURedeemCameraViewController *)self cameraController];
      [cameraController4 cancel];
    }
  }
}

- (void)_hideOverlay
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SURedeemCameraViewController__hideOverlay__block_invoke;
  v3[3] = &unk_1E81645E8;
  v3[4] = self;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __44__SURedeemCameraViewController__hideOverlay__block_invoke_2;
  v2[3] = &unk_1E8165410;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:v2 completion:0.5];
}

void __44__SURedeemCameraViewController__hideOverlay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayView];
  [v1 setAlpha:0.0];
}

void __44__SURedeemCameraViewController__hideOverlay__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayView];
  [v1 setHidden:1];
}

- (void)_showOverlay
{
  overlayView = [(SURedeemCameraViewController *)self overlayView];
  [overlayView setHidden:0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SURedeemCameraViewController__showOverlay__block_invoke;
  v4[3] = &unk_1E81645E8;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.5];
}

void __44__SURedeemCameraViewController__showOverlay__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayView];
  [v1 setAlpha:0.4];
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  if ([(SURedeemCameraViewController *)self state]== 1)
  {
    [(SURedeemCameraViewController *)self setState:0];
  }

  return 1;
}

- (void)codeRedeemerControllerDidEndWithCode:(id)code error:(id)error
{
  codeCopy = code;
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SURedeemCameraViewController_codeRedeemerControllerDidEndWithCode_error___block_invoke;
  block[3] = &unk_1E81644D0;
  v11 = errorCopy;
  v12 = codeCopy;
  selfCopy = self;
  v8 = codeCopy;
  v9 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __75__SURedeemCameraViewController_codeRedeemerControllerDidEndWithCode_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    [*(a1 + 48) _presentCameraErrorAlert];
    v2 = *(a1 + 48);

    return [v2 _recognitionError];
  }

  else
  {
    v4 = [*(a1 + 48) codeTextField];
    [v4 setText:*(a1 + 40)];

    v6 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v5 _detectedCode:v6];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SURedeemCameraViewController;
  [(SURedeemCameraViewController *)&v4 dealloc];
}

- (void)_detectedCode:(id)code
{
  codeCopy = code;
  codeHandler = [(SURedeemCameraViewController *)self codeHandler];

  if (codeHandler)
  {
    codeHandler2 = [(SURedeemCameraViewController *)self codeHandler];
    (codeHandler2)[2](codeHandler2, codeCopy);
  }
}

- (void)_dismissKeyboard
{
  view = [(SURedeemCameraViewController *)self view];
  [view endEditing:1];
}

- (void)_layoutCodeTextField
{
  view = [(SURedeemCameraViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if ([(SURedeemCameraViewController *)self state]== 1)
  {
    v8 = 44.0;
  }

  else
  {
    view2 = [(SURedeemCameraViewController *)self view];
    [view2 safeAreaInsets];
    v8 = v10 + 44.0;
  }

  codeTextField = [(SURedeemCameraViewController *)self codeTextField];
  [(SURedeemCameraViewController *)self keyboardHeight];
  [codeTextField setFrame:{0.0, v7 - v12 - v8, v5, v8}];

  overlayView = [(SURedeemCameraViewController *)self overlayView];
  [(SURedeemCameraViewController *)self keyboardHeight];
  [overlayView setFrame:{0.0, 0.0, v5, v7 - v13 - v8}];
}

- (void)_layoutCodeTextFieldWithNotification:(id)notification
{
  notificationCopy = notification;
  v5 = 0.0;
  if ([(SURedeemCameraViewController *)self state]== 1)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
    [v7 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v5 = v14;

    if (![(SURedeemCameraViewController *)self ignoreDefaultKeyboardNotifications])
    {
      view = [(SURedeemCameraViewController *)self view];
      view2 = [(SURedeemCameraViewController *)self view];
      window = [view2 window];
      [view convertRect:window fromView:{v9, v11, v13, v5}];
      v11 = v18;
      v5 = v19;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      view3 = [(SURedeemCameraViewController *)self view];
      [view3 bounds];
      v5 = v23 - v11;
    }
  }

  [(SURedeemCameraViewController *)self setKeyboardHeight:fmax(v5, 0.0)];
  userInfo2 = [notificationCopy userInfo];
  v25 = [userInfo2 valueForKey:*MEMORY[0x1E69DDF38]];
  intValue = [v25 intValue];

  userInfo3 = [notificationCopy userInfo];
  v28 = [userInfo3 valueForKey:*MEMORY[0x1E69DDF40]];
  [v28 floatValue];
  v30 = v29;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __69__SURedeemCameraViewController__layoutCodeTextFieldWithNotification___block_invoke;
  v31[3] = &unk_1E81645E8;
  v31[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:intValue delay:v31 options:0 animations:v30 completion:0.0];
}

- (void)_presentCameraErrorAlert
{
  [(SURedeemCameraViewController *)self _pauseCamera];
  v3 = MEMORY[0x1E69DC650];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"REDEEM_CAMERA_ERROR_TITLE" value:&stru_1F41B3660 table:0];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"REDEEM_CAMERA_ERROR_MESSAGE" value:&stru_1F41B3660 table:0];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC648];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_1F41B3660 table:0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __56__SURedeemCameraViewController__presentCameraErrorAlert__block_invoke;
  v16 = &unk_1E8165438;
  objc_copyWeak(&v17, &location);
  v12 = [v9 actionWithTitle:v11 style:0 handler:&v13];

  [v8 addAction:{v12, v13, v14, v15, v16}];
  [(SURedeemCameraViewController *)self presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __56__SURedeemCameraViewController__presentCameraErrorAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resumeCamera];
}

- (void)_updateState
{
  if (![(SURedeemCameraViewController *)self state])
  {
    [(SURedeemCameraViewController *)self _stopAcitivityIndicator];
    [(SURedeemCameraViewController *)self _dismissKeyboard];
    [(SURedeemCameraViewController *)self _startCameraController];
    [(SURedeemCameraViewController *)self _hideOverlay];
    codeTextField = [(SURedeemCameraViewController *)self codeTextField];
LABEL_7:
    v5 = codeTextField;
    v6 = 1;
    goto LABEL_8;
  }

  if ([(SURedeemCameraViewController *)self state]!= 2)
  {
    if ([(SURedeemCameraViewController *)self state]!= 1)
    {
      goto LABEL_9;
    }

    [(SURedeemCameraViewController *)self _stopAcitivityIndicator];
    [(SURedeemCameraViewController *)self _stopCameraController];
    [(SURedeemCameraViewController *)self _showOverlay];
    codeTextField = [(SURedeemCameraViewController *)self overlayView];
    goto LABEL_7;
  }

  [(SURedeemCameraViewController *)self _startActivityIndicator];
  [(SURedeemCameraViewController *)self _stopCameraController];
  [(SURedeemCameraViewController *)self _showOverlay];
  [(SURedeemCameraViewController *)self _dismissKeyboard];
  overlayView = [(SURedeemCameraViewController *)self overlayView];
  [overlayView setUserInteractionEnabled:0];

  codeTextField = [(SURedeemCameraViewController *)self codeTextField];
  v5 = codeTextField;
  v6 = 0;
LABEL_8:
  [codeTextField setUserInteractionEnabled:v6];

LABEL_9:

  [(SURedeemCameraViewController *)self _updateNavigationItemAnimated];
}

- (void)_updateNavigationItemAnimated
{
  if (![(SURedeemCameraViewController *)self state])
  {
    navigationItem = [(SURedeemCameraViewController *)self navigationItem];
    toggleCameraBarButton = [(SURedeemCameraViewController *)self toggleCameraBarButton];
LABEL_7:
    v4 = toggleCameraBarButton;
    [navigationItem setRightBarButtonItem:toggleCameraBarButton];

    goto LABEL_8;
  }

  if ([(SURedeemCameraViewController *)self state]!= 2)
  {
    if ([(SURedeemCameraViewController *)self state]!= 1)
    {
      return;
    }

    navigationItem = [(SURedeemCameraViewController *)self navigationItem];
    toggleCameraBarButton = [(SURedeemCameraViewController *)self redeemBarButton];
    goto LABEL_7;
  }

  navigationItem = [(SURedeemCameraViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];
LABEL_8:
}

@end