@interface PKPaymentAuthorizationRemoteAlertViewController
- (BOOL)_shouldSupportLandscapeOrientation;
- (BOOL)presentCoordinatorForContext:(id)a3;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (id)presentationCoordinators;
- (int)_preferredStatusBarVisibility;
- (int64_t)_currentInterfaceOrientation;
- (unint64_t)_maskForOrientation:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissCoordinators;
- (void)_invalidateCoordinators;
- (void)_lockInterfaceOrientationIfNeeded;
- (void)configureAppearance;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)configureWithHostContext:(id)a3;
- (void)configureWithUserInfo:(id)a3 dismissalHandler:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)didInvalidateForRemoteAlert;
- (void)dismissWithReason:(unint64_t)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)noteActivatedWithPresentationMode:(int64_t)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationCoordinatorDidInvalidate:(id)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)requestSecondaryViewController;
- (void)setBlocksInput;
- (void)updateStatusBarVisibility;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentAuthorizationRemoteAlertViewController

- (id)presentationCoordinators
{
  if (_MergedGlobals_5_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5_5, &__block_literal_global_272);
  }

  v3 = qword_1EBD68288;

  return v3;
}

void __75__PKPaymentAuthorizationRemoteAlertViewController_presentationCoordinators__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = qword_1EBD68288;
  qword_1EBD68288 = v0;
}

- (void)dealloc
{
  if (self->_isPrimaryAlert)
  {
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _invalidateCoordinators];
  }

  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v5 viewDidLoad];
  v3 = [(PKPaymentAuthorizationRemoteAlertViewController *)self view];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:self->_blocksInput];
}

- (void)setBlocksInput
{
  self->_blocksInput = 1;
  v4 = [(PKPaymentAuthorizationRemoteAlertViewController *)self viewIfLoaded];
  v3 = [v4 layer];
  [v3 setHitTestsAsOpaque:self->_blocksInput];
}

- (void)presentationCoordinatorDidInvalidate:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_mainCoordinator == v4)
  {
    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    mainCoordinator = self->_mainCoordinator;
    self->_mainCoordinator = 0;

    [(PKPaymentAuthorizationRemoteAlertViewController *)self _invalidateCoordinators];
  }

  else
  {
    if (self->_nestedSheetCoordinator != v4)
    {
      goto LABEL_6;
    }

    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    nestedSheetCoordinator = self->_nestedSheetCoordinator;
    self->_nestedSheetCoordinator = 0;
  }

  v4 = v10;
LABEL_6:
  if (!self->_mainCoordinator)
  {
    v7 = [(PKPaymentAuthorizationRemoteAlertViewController *)self _remoteViewControllerProxy];
    [v7 invalidate];
    [(PKPaymentAuthorizationRemoteAlertViewController *)self dismissViewControllerAnimated:0 completion:0];
    dismissalHandler = self->_dismissalHandler;
    if (dismissalHandler)
    {
      dismissalHandler[2]();
      v9 = self->_dismissalHandler;
      self->_dismissalHandler = 0;
    }

    v4 = v10;
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentedViewController];
  v9 = v8;
  if (v8)
  {
    [v8 sizeForChildContentContainer:v7 withParentContainerSize:{width, height}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PKPaymentAuthorizationRemoteAlertViewController;
    [(PKPaymentAuthorizationRemoteAlertViewController *)&v16 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v4 viewWillDisappear:a3];
  if (self->_isPrimaryAlert)
  {
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _dismissCoordinators];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v4 viewDidDisappear:a3];
  if ([(NSString *)self->_analyticsSubject length])
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:self->_analyticsSubject];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    return 30;
  }

  if (![(PKPaymentAuthorizationRemoteAlertViewController *)self _shouldSupportLandscapeOrientation])
  {
    return 2;
  }

  [(PKPaymentAuthorizationRemoteAlertViewController *)self _lockInterfaceOrientationIfNeeded];
  interfaceOrientationLock = self->_interfaceOrientationLock;

  return [(PKPaymentAuthorizationRemoteAlertViewController *)self _maskForOrientation:interfaceOrientationLock];
}

- (void)dismissWithReason:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  if (self->_mainCoordinator)
  {
    v6 = v5;
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _dismissCoordinators];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = v5;
    v5[2]();
  }

  v5 = v6;
LABEL_6:
}

- (void)_invalidateCoordinators
{
  if (self->_mainCoordinator)
  {
    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator invalidate];
  }

  if (self->_nestedSheetCoordinator)
  {
    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    nestedSheetCoordinator = self->_nestedSheetCoordinator;

    [(PKPaymentAuthorizationPresentationCoordinator *)nestedSheetCoordinator invalidate];
  }
}

- (void)_dismissCoordinators
{
  nestedSheetCoordinator = self->_nestedSheetCoordinator;
  if (nestedSheetCoordinator)
  {
    [(PKPaymentAuthorizationPresentationCoordinator *)nestedSheetCoordinator dismissWithReason:2 completion:0];
  }

  mainCoordinator = self->_mainCoordinator;
  if (mainCoordinator)
  {

    [(PKPaymentAuthorizationPresentationCoordinator *)mainCoordinator dismissWithReason:2 completion:0];
  }
}

- (void)didInvalidateForRemoteAlert
{
  v3.receiver = self;
  v3.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(SBUIRemoteAlertServiceViewController *)&v3 didInvalidateForRemoteAlert];
  if (self->_isPrimaryAlert)
  {
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _invalidateCoordinators];
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 userInfo];
  [(PKPaymentAuthorizationRemoteAlertViewController *)self configureWithUserInfo:v7 dismissalHandler:0 completion:v6];
}

- (void)configureWithUserInfo:(id)a3 dismissalHandler:(id)a4 completion:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentationCoordinators];
  mutableCoordinators = self->_mutableCoordinators;
  self->_mutableCoordinators = v10;

  self->_interfaceOrientationLock = 0;
  [(PKPaymentAuthorizationRemoteAlertViewController *)self configureAppearance];
  if ([v21 count])
  {
    self->_hasUserInfo = 1;
    v12 = MEMORY[0x1E696ACD0];
    v13 = objc_opt_class();
    v14 = [v21 objectForKey:@"context"];
    v15 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:0];

    [(PKPaymentAuthorizationRemoteAlertViewController *)self configureWithHostContext:v15];
    if (([v15 awaitingRemoteNetworkPaymentRequest] & 1) != 0 || (objc_msgSend(v15, "request"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      [(PKPaymentAuthorizationRemoteAlertViewController *)self presentCoordinatorForContext:v15];
    }
  }

  else
  {
    v17 = [(NSMutableArray *)self->_mutableCoordinators lastObject];
    mainCoordinator = self->_mainCoordinator;
    self->_mainCoordinator = v17;

    [(PKPaymentAuthorizationRemoteAlertViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  v19 = _Block_copy(v9);

  dismissalHandler = self->_dismissalHandler;
  self->_dismissalHandler = v19;

  if (v8)
  {
    v8[2](v8);
  }
}

- (BOOL)presentCoordinatorForContext:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = 1048;
  v6 = [(NSMutableArray *)self->_mutableCoordinators copy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v8)
  {

    goto LABEL_21;
  }

  v9 = v8;
  v34 = 1048;
  v35 = self;
  v36 = 0;
  v10 = *v40;
  do
  {
    v11 = 0;
    v37 = v9;
    do
    {
      if (*v40 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v39 + 1) + 8 * v11);
      v13 = [v12 context];
      v14 = [v13 request];
      v15 = [v4 request];
      if (PKEqualObjects())
      {
        v16 = v10;
        v17 = v7;
        v18 = [v12 context];
        v19 = [v18 identifier];
        v20 = v4;
        v21 = [v4 identifier];
        v22 = v19;
        v23 = v21;
        v24 = v23;
        if (v22 == v23)
        {
          v26 = 1;
LABEL_14:
          v36 = v26;
        }

        else
        {
          if (v22)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = [v22 isEqualToString:v23] | v36;
            goto LABEL_14;
          }
        }

        v7 = v17;
        v4 = v20;
        v10 = v16;
        v9 = v37;
      }

      ++v11;
    }

    while (v9 != v11);
    v9 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v9);

  v5 = v34;
  self = v35;
  if (v36)
  {
    v27 = 1;
    goto LABEL_30;
  }

LABEL_21:
  secondaryTargetAlertHandle = self->_secondaryTargetAlertHandle;
  v27 = secondaryTargetAlertHandle == 0;
  if (secondaryTargetAlertHandle)
  {
    v29 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(&v29->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, &v29->super, OS_LOG_TYPE_DEFAULT, "Secondary alert already presented, we cannot show a nested payment request", buf, 2u);
    }
  }

  else
  {
    v29 = [[PKPaymentAuthorizationPresentationCoordinator alloc] initWithContext:v4 delegate:self];
    [*(&self->super.super.super.super.isa + v5) addObject:v29];
    if (self->_mainCoordinator)
    {
      objc_storeStrong(&self->_nestedSheetCoordinator, v29);
      v30 = [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator primaryPresentingViewController];
      v31 = [v30 pkui_frontMostViewController];
      [(PKPaymentAuthorizationPresentationCoordinator *)v29 updatePrimaryPresentingViewController:v31 isInitialPresentation:0];

      v32 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v32, OS_LOG_TYPE_DEFAULT, "Presenting nested coordinator", buf, 2u);
      }
    }

    else
    {
      objc_storeStrong(&self->_mainCoordinator, v29);
      [(PKPaymentAuthorizationRemoteAlertViewController *)self _lockInterfaceOrientationIfNeeded];
      [(PKPaymentAuthorizationRemoteAlertViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
    }
  }

LABEL_30:
  return v27;
}

- (void)configureAppearance
{
  v3 = [(PKPaymentAuthorizationRemoteAlertViewController *)self _remoteViewControllerProxy];
  [v3 setAllowsBanners:1];
  [v3 setAllowsSiri:0];
  [v3 setAllowsAlertItems:1];
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    v2 = 0;
  }

  else
  {
    v2 = PKLandscapePaymentSheetEnabled() ^ 1;
  }

  [v3 setLaunchingInterfaceOrientation:v2];
  if (PKPaymentAuthorizationControllerShouldPreventRotation())
  {
    [v3 setOrientationChangedEventsEnabled:0];
  }

  [v3 setDesiredHardwareButtonEvents:16];
  [v3 setSwipeDismissalStyle:0];
  [v3 setDismissalAnimationStyle:1];
  [v3 setWallpaperStyle:1 withDuration:0.0];
}

- (void)configureWithHostContext:(id)a3
{
  v10 = a3;
  v4 = [v10 analyticsSubject];
  analyticsSubject = self->_analyticsSubject;
  self->_analyticsSubject = v4;

  v6 = [(NSString *)self->_analyticsSubject length];
  v7 = v10;
  if (v6)
  {
    v8 = [v10 analyticsArchivedSessionToken];
    v9 = self->_analyticsSubject;
    if (v8)
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v9 withArchivedParent:v8];
    }

    else
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v9];
    }

    v7 = v10;
  }
}

- (void)noteActivatedWithPresentationMode:(int64_t)a3
{
  if ((a3 - 2) < 2)
  {
    self->_isPrimaryAlert = 1;
    goto LABEL_7;
  }

  if (!a3)
  {
    hasUserInfo = self->_hasUserInfo;
    self->_isPrimaryAlert = hasUserInfo;
    if (!hasUserInfo)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (a3 == 1)
  {
    self->_isPrimaryAlert = 1;
    self->_shouldRequestSecondaryAlert = 1;
    if (!self->_isPrimaryAlert)
    {
      goto LABEL_11;
    }

LABEL_7:
    [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator updatePrimaryPresentingViewController:self isInitialPresentation:1];
    return;
  }

  self->_shouldRequestSecondaryAlert = 0;
  self->_isPrimaryAlert = 0;
LABEL_11:
  [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator updateSecondaryPresentingViewController:self];
}

- (int)_preferredStatusBarVisibility
{
  v2 = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentedViewController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 _preferredStatusBarVisibility];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v6 presentViewController:a3 animated:a4 completion:a5];
  [(PKPaymentAuthorizationRemoteAlertViewController *)self updateStatusBarVisibility];
}

- (void)updateStatusBarVisibility
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__PKPaymentAuthorizationRemoteAlertViewController_updateStatusBarVisibility__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.0];
}

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentAuthorizationRemoteAlertViewController_handleButtonActions___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__PKPaymentAuthorizationRemoteAlertViewController_handleButtonActions___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1048) lastObject];
  v3 = [v2 handleHomeButtonPressed];

  if ((v3 & 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8) sendResponseWithUnHandledEvents:{objc_msgSend(*(*(&v9 + 1) + 8 * v8), "events", v9)}];
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)requestSecondaryViewController
{
  if (self->_shouldRequestSecondaryAlert && !self->_secondaryTargetAlertHandle)
  {
    v3 = objc_alloc(MEMORY[0x1E69D42A0]);
    v4 = *MEMORY[0x1E69BBFD0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v11 = [v3 initWithServiceName:v4 viewControllerClassName:v6];

    [v11 setPrefersEmbeddedDisplayPresentation:1];
    v7 = objc_alloc_init(MEMORY[0x1E69D4298]);
    v8 = objc_alloc_init(MEMORY[0x1E69D4288]);
    [v8 setActivatingForSiri:1];
    [v8 setShouldStashPictureInPictureIfNeeded:1];
    v9 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v11 configurationContext:v7];
    secondaryTargetAlertHandle = self->_secondaryTargetAlertHandle;
    self->_secondaryTargetAlertHandle = v9;

    [(SBSRemoteAlertHandle *)self->_secondaryTargetAlertHandle registerObserver:self];
    [(SBSRemoteAlertHandle *)self->_secondaryTargetAlertHandle activateWithContext:v8];
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  secondaryTargetAlertHandle = self->_secondaryTargetAlertHandle;
  self->_secondaryTargetAlertHandle = 0;

  v6 = [(NSMutableArray *)self->_mutableCoordinators lastObject];
  [v6 updateSecondaryPresentingViewController:0];
}

- (BOOL)_shouldSupportLandscapeOrientation
{
  if (!PKLandscapePaymentSheetEnabled() || !_UISolariumEnabled())
  {
    return 0;
  }

  v3 = [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator context];
  v4 = [v3 request];

  if (v4)
  {
    v5 = [v4 _shouldSupportLandscapeOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_lockInterfaceOrientationIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_interfaceOrientationLock)
  {
    if ([(PKPaymentAuthorizationRemoteAlertViewController *)self _shouldSupportLandscapeOrientation])
    {
      v3 = [(PKPaymentAuthorizationRemoteAlertViewController *)self _currentInterfaceOrientation];
      if (v3)
      {
        v4 = v3;
        v5 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = 134217984;
          v7 = v4;
          _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Set payment request interface orientation lock to %ld", &v6, 0xCu);
        }

        self->_interfaceOrientationLock = v4;
      }
    }
  }
}

- (int64_t)_currentInterfaceOrientation
{
  v2 = [(PKPaymentAuthorizationRemoteAlertViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_maskForOrientation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 26;
  }

  else
  {
    return qword_1BE117220[a3 - 1];
  }
}

@end