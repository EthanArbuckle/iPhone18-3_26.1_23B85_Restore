@interface PKPaymentAuthorizationRemoteAlertViewController
- (BOOL)_shouldSupportLandscapeOrientation;
- (BOOL)presentCoordinatorForContext:(id)context;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (id)presentationCoordinators;
- (int)_preferredStatusBarVisibility;
- (int64_t)_currentInterfaceOrientation;
- (unint64_t)_maskForOrientation:(int64_t)orientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismissCoordinators;
- (void)_invalidateCoordinators;
- (void)_lockInterfaceOrientationIfNeeded;
- (void)configureAppearance;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)configureWithHostContext:(id)context;
- (void)configureWithUserInfo:(id)info dismissalHandler:(id)handler completion:(id)completion;
- (void)dealloc;
- (void)didInvalidateForRemoteAlert;
- (void)dismissWithReason:(unint64_t)reason completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)noteActivatedWithPresentationMode:(int64_t)mode;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationCoordinatorDidInvalidate:(id)invalidate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)requestSecondaryViewController;
- (void)setBlocksInput;
- (void)updateStatusBarVisibility;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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
  view = [(PKPaymentAuthorizationRemoteAlertViewController *)self view];
  layer = [view layer];
  [layer setHitTestsAsOpaque:self->_blocksInput];
}

- (void)setBlocksInput
{
  self->_blocksInput = 1;
  viewIfLoaded = [(PKPaymentAuthorizationRemoteAlertViewController *)self viewIfLoaded];
  layer = [viewIfLoaded layer];
  [layer setHitTestsAsOpaque:self->_blocksInput];
}

- (void)presentationCoordinatorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v10 = invalidateCopy;
  if (self->_mainCoordinator == invalidateCopy)
  {
    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    mainCoordinator = self->_mainCoordinator;
    self->_mainCoordinator = 0;

    [(PKPaymentAuthorizationRemoteAlertViewController *)self _invalidateCoordinators];
  }

  else
  {
    if (self->_nestedSheetCoordinator != invalidateCopy)
    {
      goto LABEL_6;
    }

    [(NSMutableArray *)self->_mutableCoordinators removeObjectIdenticalTo:?];
    nestedSheetCoordinator = self->_nestedSheetCoordinator;
    self->_nestedSheetCoordinator = 0;
  }

  invalidateCopy = v10;
LABEL_6:
  if (!self->_mainCoordinator)
  {
    _remoteViewControllerProxy = [(PKPaymentAuthorizationRemoteAlertViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy invalidate];
    [(PKPaymentAuthorizationRemoteAlertViewController *)self dismissViewControllerAnimated:0 completion:0];
    dismissalHandler = self->_dismissalHandler;
    if (dismissalHandler)
    {
      dismissalHandler[2]();
      v9 = self->_dismissalHandler;
      self->_dismissalHandler = 0;
    }

    invalidateCopy = v10;
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  presentedViewController = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentedViewController];
  v9 = presentedViewController;
  if (presentedViewController)
  {
    [presentedViewController sizeForChildContentContainer:containerCopy withParentContainerSize:{width, height}];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PKPaymentAuthorizationRemoteAlertViewController;
    [(PKPaymentAuthorizationRemoteAlertViewController *)&v16 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
  }

  v12 = v10;
  v13 = v11;

  v14 = v12;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v4 viewWillDisappear:disappear];
  if (self->_isPrimaryAlert)
  {
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _dismissCoordinators];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v4 viewDidDisappear:disappear];
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

- (void)dismissWithReason:(unint64_t)reason completion:(id)completion
{
  completionCopy = completion;
  if (self->_mainCoordinator)
  {
    v6 = completionCopy;
    [(PKPaymentAuthorizationRemoteAlertViewController *)self _dismissCoordinators];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v6 = completionCopy;
    completionCopy[2]();
  }

  completionCopy = v6;
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

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  userInfo = [context userInfo];
  [(PKPaymentAuthorizationRemoteAlertViewController *)self configureWithUserInfo:userInfo dismissalHandler:0 completion:completionCopy];
}

- (void)configureWithUserInfo:(id)info dismissalHandler:(id)handler completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  handlerCopy = handler;
  presentationCoordinators = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentationCoordinators];
  mutableCoordinators = self->_mutableCoordinators;
  self->_mutableCoordinators = presentationCoordinators;

  self->_interfaceOrientationLock = 0;
  [(PKPaymentAuthorizationRemoteAlertViewController *)self configureAppearance];
  if ([infoCopy count])
  {
    self->_hasUserInfo = 1;
    v12 = MEMORY[0x1E696ACD0];
    v13 = objc_opt_class();
    v14 = [infoCopy objectForKey:@"context"];
    v15 = [v12 unarchivedObjectOfClass:v13 fromData:v14 error:0];

    [(PKPaymentAuthorizationRemoteAlertViewController *)self configureWithHostContext:v15];
    if (([v15 awaitingRemoteNetworkPaymentRequest] & 1) != 0 || (objc_msgSend(v15, "request"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      [(PKPaymentAuthorizationRemoteAlertViewController *)self presentCoordinatorForContext:v15];
    }
  }

  else
  {
    lastObject = [(NSMutableArray *)self->_mutableCoordinators lastObject];
    mainCoordinator = self->_mainCoordinator;
    self->_mainCoordinator = lastObject;

    [(PKPaymentAuthorizationRemoteAlertViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  v19 = _Block_copy(handlerCopy);

  dismissalHandler = self->_dismissalHandler;
  self->_dismissalHandler = v19;

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (BOOL)presentCoordinatorForContext:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
  selfCopy = self;
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
      context = [v12 context];
      request = [context request];
      request2 = [contextCopy request];
      if (PKEqualObjects())
      {
        v16 = v10;
        v17 = v7;
        context2 = [v12 context];
        identifier = [context2 identifier];
        v20 = contextCopy;
        identifier2 = [contextCopy identifier];
        v22 = identifier;
        v23 = identifier2;
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
        contextCopy = v20;
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
  self = selfCopy;
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
    v29 = [[PKPaymentAuthorizationPresentationCoordinator alloc] initWithContext:contextCopy delegate:self];
    [*(&self->super.super.super.super.isa + v5) addObject:v29];
    if (self->_mainCoordinator)
    {
      objc_storeStrong(&self->_nestedSheetCoordinator, v29);
      primaryPresentingViewController = [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator primaryPresentingViewController];
      pkui_frontMostViewController = [primaryPresentingViewController pkui_frontMostViewController];
      [(PKPaymentAuthorizationPresentationCoordinator *)v29 updatePrimaryPresentingViewController:pkui_frontMostViewController isInitialPresentation:0];

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
  _remoteViewControllerProxy = [(PKPaymentAuthorizationRemoteAlertViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setAllowsBanners:1];
  [_remoteViewControllerProxy setAllowsSiri:0];
  [_remoteViewControllerProxy setAllowsAlertItems:1];
  if (PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    v2 = 0;
  }

  else
  {
    v2 = PKLandscapePaymentSheetEnabled() ^ 1;
  }

  [_remoteViewControllerProxy setLaunchingInterfaceOrientation:v2];
  if (PKPaymentAuthorizationControllerShouldPreventRotation())
  {
    [_remoteViewControllerProxy setOrientationChangedEventsEnabled:0];
  }

  [_remoteViewControllerProxy setDesiredHardwareButtonEvents:16];
  [_remoteViewControllerProxy setSwipeDismissalStyle:0];
  [_remoteViewControllerProxy setDismissalAnimationStyle:1];
  [_remoteViewControllerProxy setWallpaperStyle:1 withDuration:0.0];
}

- (void)configureWithHostContext:(id)context
{
  contextCopy = context;
  analyticsSubject = [contextCopy analyticsSubject];
  analyticsSubject = self->_analyticsSubject;
  self->_analyticsSubject = analyticsSubject;

  v6 = [(NSString *)self->_analyticsSubject length];
  v7 = contextCopy;
  if (v6)
  {
    analyticsArchivedSessionToken = [contextCopy analyticsArchivedSessionToken];
    v9 = self->_analyticsSubject;
    if (analyticsArchivedSessionToken)
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v9 withArchivedParent:analyticsArchivedSessionToken];
    }

    else
    {
      [MEMORY[0x1E69B8540] beginSubjectReporting:v9];
    }

    v7 = contextCopy;
  }
}

- (void)noteActivatedWithPresentationMode:(int64_t)mode
{
  if ((mode - 2) < 2)
  {
    self->_isPrimaryAlert = 1;
    goto LABEL_7;
  }

  if (!mode)
  {
    hasUserInfo = self->_hasUserInfo;
    self->_isPrimaryAlert = hasUserInfo;
    if (!hasUserInfo)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (mode == 1)
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
  presentedViewController = [(PKPaymentAuthorizationRemoteAlertViewController *)self presentedViewController];
  v3 = presentedViewController;
  if (presentedViewController)
  {
    _preferredStatusBarVisibility = [presentedViewController _preferredStatusBarVisibility];
  }

  else
  {
    _preferredStatusBarVisibility = 1;
  }

  return _preferredStatusBarVisibility;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v6.receiver = self;
  v6.super_class = PKPaymentAuthorizationRemoteAlertViewController;
  [(PKPaymentAuthorizationRemoteAlertViewController *)&v6 presentViewController:controller animated:animated completion:completion];
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

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPaymentAuthorizationRemoteAlertViewController_handleButtonActions___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = actionsCopy;
  v5 = actionsCopy;
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

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  secondaryTargetAlertHandle = self->_secondaryTargetAlertHandle;
  self->_secondaryTargetAlertHandle = 0;

  lastObject = [(NSMutableArray *)self->_mutableCoordinators lastObject];
  [lastObject updateSecondaryPresentingViewController:0];
}

- (BOOL)_shouldSupportLandscapeOrientation
{
  if (!PKLandscapePaymentSheetEnabled() || !_UISolariumEnabled())
  {
    return 0;
  }

  context = [(PKPaymentAuthorizationPresentationCoordinator *)self->_mainCoordinator context];
  request = [context request];

  if (request)
  {
    _shouldSupportLandscapeOrientation = [request _shouldSupportLandscapeOrientation];
  }

  else
  {
    _shouldSupportLandscapeOrientation = 0;
  }

  return _shouldSupportLandscapeOrientation;
}

- (void)_lockInterfaceOrientationIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (!self->_interfaceOrientationLock)
  {
    if ([(PKPaymentAuthorizationRemoteAlertViewController *)self _shouldSupportLandscapeOrientation])
    {
      _currentInterfaceOrientation = [(PKPaymentAuthorizationRemoteAlertViewController *)self _currentInterfaceOrientation];
      if (_currentInterfaceOrientation)
      {
        v4 = _currentInterfaceOrientation;
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
  view = [(PKPaymentAuthorizationRemoteAlertViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    interfaceOrientation = [windowScene interfaceOrientation];
  }

  else
  {
    interfaceOrientation = 0;
  }

  return interfaceOrientation;
}

- (unint64_t)_maskForOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 3)
  {
    return 26;
  }

  else
  {
    return qword_1BE117220[orientation - 1];
  }
}

@end