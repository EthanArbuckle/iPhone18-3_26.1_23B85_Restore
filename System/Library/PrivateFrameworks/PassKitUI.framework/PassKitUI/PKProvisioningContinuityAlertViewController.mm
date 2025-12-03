@interface PKProvisioningContinuityAlertViewController
- (void)_configureViewController;
- (void)_dismissForSource:(unint64_t)source;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKProvisioningContinuityAlertViewController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v8.receiver = self;
  v8.super_class = PKProvisioningContinuityAlertViewController;
  [(PKProvisioningContinuityAlertViewController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    [windowCopy bounds];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    PKSetDisplayProperties();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKProvisioningContinuityAlertViewController;
  [(PKProvisioningContinuityAlertViewController *)&v4 viewWillAppear:appear];
  [(PKProvisioningContinuityAlertViewController *)self _configureViewController];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKProvisioningContinuityAlertViewController;
  [(PKProvisioningContinuityAlertViewController *)&v4 viewWillDisappear:disappear];
  [(PKProvisioningContinuityAlertViewController *)self _dismissForSource:1];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  contextCopy = context;
  _remoteViewControllerProxy = [(PKProvisioningContinuityAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:0];
  [_remoteViewControllerProxy setWallpaperStyle:0 withDuration:0.0];
  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PKProvisioningContinuityAlertViewController_configureWithContext_completion___block_invoke;
  aBlock[3] = &unk_1E8018300;
  v9 = completionCopy;
  v33 = v9;
  v10 = _remoteViewControllerProxy;
  v31 = v10;
  selfCopy = self;
  v11 = _Block_copy(aBlock);
  userInfo = [contextCopy userInfo];

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = userInfo;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: presenting for info: %@", buf, 0xCu);
  }

  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BC018]];
  if (v14)
  {
    v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BC008]];
    if (!v15)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Missing transfer token", buf, 2u);
      }

      v11[2](v11, 1);
      goto LABEL_33;
    }

    v29 = [MEMORY[0x1E69B9290] createForTransferToken:v15];
    v16 = [MEMORY[0x1E69B9278] createHandleForDescriptor:? queue:?];
    handle = self->_handle;
    self->_handle = v16;

    v18 = self->_handle;
    v19 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v18)
    {
      if (v19)
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Failed to create handle for transferToken: '%@'", buf, 0xCu);
      }

      v11[2](v11, 1);
      goto LABEL_32;
    }

    v28 = v9;
    if (v19)
    {
      *buf = 138412290;
      v35 = v14;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Creating content provider for %@", buf, 0xCu);
    }

    v20 = *MEMORY[0x1E69BC020];
    v21 = v14;
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (!v22)
      {

LABEL_24:
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v21;
          _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Unknown type: '%@'", buf, 0xCu);
        }

        goto LABEL_27;
      }

      v27 = [v21 isEqualToString:v22];

      if (!v27)
      {
        goto LABEL_24;
      }
    }

    v24 = [[PKProvisioningContinuityCarKeyHostViewController alloc] initWithHandle:self->_handle userInfo:userInfo parent:self];
    contentProvider = self->_contentProvider;
    self->_contentProvider = v24;

LABEL_27:
    v26 = v11[2];
    v9 = v28;
    if (self->_contentProvider)
    {
      v26(v11, 0);
    }

    else
    {
      v26(v11, 1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Unknown create content provider", buf, 2u);
      }
    }

LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKProvisioningContinuityAlertViewController: Alert presentation missing type", buf, 2u);
  }

  v11[2](v11, 1);
LABEL_34:
}

uint64_t __79__PKProvisioningContinuityAlertViewController_configureWithContext_completion___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  if (a2)
  {
    [*(a1 + 32) invalidate];
    v5 = *(a1 + 40);

    return [v5 _dismissForSource:2];
  }

  return result;
}

- (void)_configureViewController
{
  contentProvider = self->_contentProvider;
  if (contentProvider)
  {
    v4 = contentProvider;
    view = [(PKProvisioningContinuityAlertViewController *)self view];
    view2 = [(PKProvisioningContinuityAlertHostContentProviding *)v4 view];
    [(PKProvisioningContinuityAlertViewController *)self addChildViewController:v4];
    [view addSubview:view2];
    [(PKProvisioningContinuityAlertHostContentProviding *)v4 didMoveToParentViewController:self];

    [(PKProvisioningContinuityAlertViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(PKProvisioningContinuityAlertViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
    [view setNeedsLayout];
    [view layoutIfNeeded];
  }
}

- (void)_dismissForSource:(unint64_t)source
{
  if (source)
  {
    [(PKSharingChannelHandle *)self->_handle closeWithCompletion:0];
    [(PKSharingChannelHandle *)self->_handle invalidate];
    handle = self->_handle;
    self->_handle = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PKProvisioningContinuityAlertViewController__dismissForSource___block_invoke;
  aBlock[3] = &unk_1E8010970;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  presentedViewController = [(PKProvisioningContinuityAlertViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [(PKProvisioningContinuityAlertViewController *)self dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v5[2](v5);
  }
}

void __65__PKProvisioningContinuityAlertViewController__dismissForSource___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 invalidate];
}

@end