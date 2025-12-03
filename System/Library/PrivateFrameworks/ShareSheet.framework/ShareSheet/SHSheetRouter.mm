@interface SHSheetRouter
- (BOOL)activityPerformer:(id)performer presentPopoverContentViewController:(id)controller;
- (BOOL)activityPerformerCanPresent:(id)present;
- (BOOL)isPresentedWithinPopover;
- (BOOL)presentationBlockingViewShouldPresentCloseButton;
- (SHSheetContentView)mainViewController;
- (SHSheetContentView)secondaryViewController;
- (SHSheetRouter)initWithRootViewController:(id)controller mainNavigationController:(id)navigationController supportsModalPresentations:(BOOL)presentations;
- (SHSheetRouter)initWithRootViewController:(id)controller supportsModalPresentations:(BOOL)presentations;
- (UINavigationController)secondaryNavigationController;
- (UINavigationController)userDefaultsNavigationController;
- (UIViewController)collaborationParticipantsViewController;
- (UIViewController)optionsViewController;
- (UIViewController)presentationBlockingViewController;
- (UIViewController)rootViewController;
- (id)_createUserDefaultsNavigationControllerWithRootViewController:(id)controller;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)_configureAirdropViewController:(id)controller;
- (void)_configureMainViewController:(id)controller;
- (void)_didDismissCollaborationParticipantsViewController;
- (void)_didDismissOptionsViewController;
- (void)_dismissOptionsViewController;
- (void)_installChildViewController:(id)controller forParentViewController:(id)viewController;
- (void)_presentViewController:(id)controller;
- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)notification;
- (void)activityPerformCleanUpPresentation:(id)presentation;
- (void)activityPerformer:(id)performer preparePresentationWithContext:(id)context completion:(id)completion;
- (void)activityPerformer:(id)performer presentViewController:(id)controller completion:(id)completion;
- (void)activityPerformer:(id)performer startListeningForDismissalTransitionWithCompletion:(id)completion;
- (void)activityPerformerStopListeningForDismissalTransition:(id)transition;
- (void)dismissCollaborationParticipantsViewController;
- (void)dismissForActivityPerformerResult:(id)result didPresentFromShareSheet:(BOOL)sheet completionHandler:(id)handler;
- (void)dismissPresentationBlockingViewControllerIfNeeded;
- (void)dismissRemoteCustomViewControllerIfNeeded;
- (void)dismissSecondaryViewControllerAnimated:(BOOL)animated;
- (void)dismissUserDefaultsViewControllerAnimated:(BOOL)animated;
- (void)handlePresentationBlockingViewControllerClose;
- (void)installAirdropViewController:(id)controller;
- (void)layoutPresentationBlockingViewController;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentAirdropViewController:(id)controller;
- (void)presentAlertController:(id)controller;
- (void)presentCollaborationParticipantsViewController:(id)controller dismissalHandler:(id)handler;
- (void)presentMainViewController:(id)controller withNavigationControllerSupport:(BOOL)support;
- (void)presentOptionsViewController:(id)controller dismissalHandler:(id)handler;
- (void)presentPresentationBlockingViewController;
- (void)presentRemoteCustomViewController:(id)controller;
- (void)presentSecondaryViewController:(id)controller;
- (void)presentUserDefaultsViewController:(id)controller;
@end

@implementation SHSheetRouter

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (BOOL)isPresentedWithinPopover
{
  rootViewController = [(SHSheetRouter *)self rootViewController];
  IsPresentedInPopover = SHSheetIsPresentedInPopover(rootViewController);

  return IsPresentedInPopover;
}

- (SHSheetRouter)initWithRootViewController:(id)controller mainNavigationController:(id)navigationController supportsModalPresentations:(BOOL)presentations
{
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  v13.receiver = self;
  v13.super_class = SHSheetRouter;
  v10 = [(SHSheetRouter *)&v13 init];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(SHSheetRouter *)v10 _createUserDefaultsNavigationControllerWithRootViewController:controllerCopy];

      navigationControllerCopy = v11;
    }

    objc_storeWeak(&v10->_rootViewController, controllerCopy);
    v10->_supportsModalPresentations = presentations;
    [navigationControllerCopy setDelegate:v10];
    objc_storeStrong(&v10->_mainNavigationController, navigationControllerCopy);
  }

  return v10;
}

- (SHSheetRouter)initWithRootViewController:(id)controller supportsModalPresentations:(BOOL)presentations
{
  presentationsCopy = presentations;
  controllerCopy = controller;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
  if ((dyld_program_sdk_at_least() & 1) == 0 && userInterfaceIdiom != 1)
  {
    [v9 _setPreferredNavigationBarPosition:2];
  }

  v10 = [(SHSheetRouter *)self initWithRootViewController:controllerCopy mainNavigationController:v9 supportsModalPresentations:presentationsCopy];

  return v10;
}

- (void)presentMainViewController:(id)controller withNavigationControllerSupport:(BOOL)support
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [(SHSheetRouter *)self setMainViewController:controllerCopy];
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    rootViewController = [(SHSheetRouter *)self rootViewController];
    v13 = 138412546;
    v14 = controllerCopy;
    v15 = 2112;
    v16 = rootViewController;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Install main view:%@ parentViewController:%@", &v13, 0x16u);
  }

  mainNavigationController = [(SHSheetRouter *)self mainNavigationController];
  [mainNavigationController pushViewController:controllerCopy animated:0];

  if (support)
  {
    mainNavigationController2 = [(SHSheetRouter *)self mainNavigationController];
  }

  else
  {
    mainNavigationController2 = controllerCopy;
  }

  v11 = mainNavigationController2;
  rootViewController2 = [(SHSheetRouter *)self rootViewController];
  [(SHSheetRouter *)self _installChildViewController:v11 forParentViewController:rootViewController2];

  [(SHSheetRouter *)self _configureMainViewController:v11];
}

- (void)presentSecondaryViewController:(id)controller
{
  v14 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [(SHSheetRouter *)self setSecondaryViewController:controllerCopy];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    rootViewController = [(SHSheetRouter *)self rootViewController];
    v10 = 138412546;
    v11 = controllerCopy;
    v12 = 2112;
    v13 = rootViewController;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Present secondary view:%@ parentViewController:%@", &v10, 0x16u);
  }

  v7 = [[_UIActivityNavigationController alloc] initWithRootViewController:controllerCopy];
  [(_UIActivityNavigationController *)v7 setDelegate:self];
  [(_UIActivityNavigationController *)v7 setTransitioningDelegate:self];
  [(_UIActivityNavigationController *)v7 setModalPresentationStyle:4];
  [(_UIActivityNavigationController *)v7 setPreferredContentSize:_ShareSheetDefaultSheetSize()];
  navigationBar = [(_UIActivityNavigationController *)v7 navigationBar];
  [navigationBar setRequestedContentSize:3];

  [(SHSheetRouter *)self setSecondaryNavigationController:v7];
  rootViewController2 = [(SHSheetRouter *)self rootViewController];
  [rootViewController2 presentViewController:v7 animated:1 completion:0];
}

- (id)_createUserDefaultsNavigationControllerWithRootViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  accessibilityIdentifier = [view accessibilityIdentifier];
  v7 = [@"ShareSheet.Edit" stringByAppendingString:accessibilityIdentifier];

  v8 = [SHSheetFactory createNavigationControllerWithRootViewController:controllerCopy delegate:self accessibilityIdentifier:v7];

  return v8;
}

- (void)presentUserDefaultsViewController:(id)controller
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = controllerCopy;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Present user defaults view controller:%@", &v10, 0xCu);
  }

  if ([(SHSheetRouter *)self supportsModalPresentations])
  {
    v6 = [(SHSheetRouter *)self _createUserDefaultsNavigationControllerWithRootViewController:controllerCopy];
    [(SHSheetRouter *)self _presentViewController:v6];
  }

  else
  {
    secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];
    v8 = secondaryNavigationController;
    if (secondaryNavigationController)
    {
      mainNavigationController = secondaryNavigationController;
    }

    else
    {
      mainNavigationController = [(SHSheetRouter *)self mainNavigationController];
    }

    v6 = mainNavigationController;

    [v6 pushViewController:controllerCopy animated:1];
  }

  [(SHSheetRouter *)self setUserDefaultsNavigationController:v6];
}

- (void)presentRemoteCustomViewController:(id)controller
{
  controllerCopy = controller;
  [(SHSheetRouter *)self setRemoteCustomViewController:controllerCopy];
  [controllerCopy setModalPresentationStyle:2];
  [(SHSheetRouter *)self _presentViewController:controllerCopy];
}

- (void)dismissRemoteCustomViewControllerIfNeeded
{
  remoteCustomViewController = [(SHSheetRouter *)self remoteCustomViewController];

  if (remoteCustomViewController)
  {
    remoteCustomViewController2 = [(SHSheetRouter *)self remoteCustomViewController];
    [remoteCustomViewController2 dismissViewControllerAnimated:1 completion:0];

    [(SHSheetRouter *)self setRemoteCustomViewController:0];
  }
}

- (void)presentPresentationBlockingViewController
{
  presentationBlockingViewController = [(SHSheetRouter *)self presentationBlockingViewController];

  if (!presentationBlockingViewController)
  {
    v9 = objc_alloc_init(SHSheetPresentationBlockingViewController);
    [(SHSheetPresentationBlockingViewController *)v9 setDelegate:self];
    [(SHSheetRouter *)self setPresentationBlockingViewController:v9];
    navigationItem = [(SHSheetPresentationBlockingViewController *)v9 navigationItem];
    [navigationItem setHidesBackButton:1];

    secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];
    v6 = secondaryNavigationController;
    if (secondaryNavigationController)
    {
      mainNavigationController = secondaryNavigationController;
    }

    else
    {
      mainNavigationController = [(SHSheetRouter *)self mainNavigationController];
    }

    v8 = mainNavigationController;

    [v8 pushViewController:v9 animated:0];
  }
}

- (void)dismissPresentationBlockingViewControllerIfNeeded
{
  presentationBlockingViewController = [(SHSheetRouter *)self presentationBlockingViewController];

  if (presentationBlockingViewController)
  {
    presentationBlockingViewController2 = [(SHSheetRouter *)self presentationBlockingViewController];
    navigationController = [presentationBlockingViewController2 navigationController];
    v6 = [navigationController popViewControllerAnimated:0];

    [(SHSheetRouter *)self setPresentationBlockingViewController:0];
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];
  mainViewController = [(SHSheetRouter *)self mainViewController];
  v7 = mainViewController;
  if (mainViewController)
  {
    rootViewController = mainViewController;
  }

  else
  {
    rootViewController = [(SHSheetRouter *)self rootViewController];
  }

  v9 = rootViewController;

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__SHSheetRouter__presentViewController___block_invoke;
  v17 = &unk_1E71F91A0;
  v18 = v9;
  v19 = controllerCopy;
  v10 = controllerCopy;
  v11 = v9;
  v12 = MEMORY[0x18CFF58E0](&v14);
  v13 = v12;
  if (secondaryNavigationController)
  {
    [secondaryNavigationController dismissViewControllerAnimated:1 completion:{v12, v14, v15, v16, v17, v18, v19}];
  }

  else
  {
    (*(v12 + 16))(v12);
  }
}

- (void)presentAirdropViewController:(id)controller
{
  controllerCopy = controller;
  [(SHSheetRouter *)self _configureAirdropViewController:controllerCopy];
  [(SHSheetRouter *)self _presentViewController:controllerCopy];
}

- (void)installAirdropViewController:(id)controller
{
  controllerCopy = controller;
  [(SHSheetRouter *)self _configureAirdropViewController:controllerCopy];
  rootViewController = [(SHSheetRouter *)self rootViewController];
  [(SHSheetRouter *)self _installChildViewController:controllerCopy forParentViewController:rootViewController];

  [(SHSheetRouter *)self _configureMainViewController:controllerCopy];
}

- (void)presentAlertController:(id)controller
{
  controllerCopy = controller;
  userDefaultsNavigationController = [(SHSheetRouter *)self userDefaultsNavigationController];
  topViewController = [userDefaultsNavigationController topViewController];
  v7 = topViewController;
  if (topViewController)
  {
    rootViewController = topViewController;
  }

  else
  {
    rootViewController = [(SHSheetRouter *)self rootViewController];
  }

  v9 = rootViewController;

  presentedViewController = [v9 presentedViewController];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v11 = getSFAirDropViewControllerClass_softClass_0;
  v19 = getSFAirDropViewControllerClass_softClass_0;
  if (!getSFAirDropViewControllerClass_softClass_0)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getSFAirDropViewControllerClass_block_invoke_0;
    v15[3] = &unk_1E71F91F0;
    v15[4] = &v16;
    __getSFAirDropViewControllerClass_block_invoke_0(v15);
    v11 = v17[3];
  }

  v12 = v11;
  _Block_object_dispose(&v16, 8);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    presentedViewController2 = [v9 presentedViewController];

    v9 = presentedViewController2;
  }

  [v9 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)presentOptionsViewController:(id)controller dismissalHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  [(SHSheetRouter *)self setOptionsViewController:controllerCopy];
  [(SHSheetRouter *)self setOptionsViewControllerDismissalHandler:handlerCopy];

  if ([(SHSheetRouter *)self isVisionIdiom])
  {
    mainNavigationController = [(SHSheetRouter *)self mainNavigationController];
    _window = [mainNavigationController _window];

    if (!_window)
    {
      goto LABEL_9;
    }

LABEL_7:
    mainNavigationController2 = [(SHSheetRouter *)self mainNavigationController];
LABEL_11:
    v13 = mainNavigationController2;
    [(_UIActivityNavigationController *)mainNavigationController2 pushViewController:controllerCopy animated:1];
    goto LABEL_20;
  }

  if (![(SHSheetRouter *)self isPresentedWithinPopover])
  {
    _ShareSheetSolariumEnabled();
    goto LABEL_9;
  }

  mainNavigationController3 = [(SHSheetRouter *)self mainNavigationController];
  _window2 = [mainNavigationController3 _window];

  if ((_ShareSheetSolariumEnabled() & 1) == 0 && _window2)
  {
    goto LABEL_7;
  }

LABEL_9:
  secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];

  if (secondaryNavigationController)
  {
    mainNavigationController2 = [(SHSheetRouter *)self secondaryNavigationController];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = controllerCopy;
  }

  else
  {
    v13 = [[_UIActivityNavigationController alloc] initWithRootViewController:controllerCopy];
    [(_UIActivityNavigationController *)v13 setDelegate:self];
    [(_UIActivityNavigationController *)v13 setModalPresentationStyle:2];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(_UIActivityNavigationController *)v13 setPreferredContentSize:_ShareSheetFormSheetSize()];
    }
  }

  v16 = _ShareSheetSolariumEnabled();
  v17 = objc_alloc(MEMORY[0x1E69DC708]);
  v18 = v17;
  if (v16)
  {
    v19 = [v17 initWithBarButtonSystemItem:0 target:self action:sel__dismissOptionsViewController];
  }

  else
  {
    v20 = _ShareSheetBundle();
    v21 = [v20 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
    v19 = [v18 initWithTitle:v21 style:2 target:self action:sel__dismissOptionsViewController];
  }

  navigationItem = [controllerCopy navigationItem];
  [navigationItem setRightBarButtonItem:v19];

  mainViewController = [(SHSheetRouter *)self mainViewController];
  [mainViewController presentViewController:v13 animated:1 completion:0];

LABEL_20:
}

- (void)_dismissOptionsViewController
{
  objc_initWeak(&location, self);
  mainViewController = [(SHSheetRouter *)self mainViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SHSheetRouter__dismissOptionsViewController__block_invoke;
  v4[3] = &unk_1E71F95A8;
  objc_copyWeak(&v5, &location);
  [mainViewController dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__SHSheetRouter__dismissOptionsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDismissOptionsViewController];
}

- (void)_didDismissOptionsViewController
{
  [(SHSheetRouter *)self setOptionsViewController:0];
  optionsViewControllerDismissalHandler = [(SHSheetRouter *)self optionsViewControllerDismissalHandler];
  if (optionsViewControllerDismissalHandler)
  {
    v4 = optionsViewControllerDismissalHandler;
    [(SHSheetRouter *)self setOptionsViewControllerDismissalHandler:0];
    v4[2](v4);
    optionsViewControllerDismissalHandler = v4;
  }
}

- (void)presentCollaborationParticipantsViewController:(id)controller dismissalHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  [(SHSheetRouter *)self setCollaborationParticipantsViewController:controllerCopy];
  [(SHSheetRouter *)self setCollaborationParticipantsDismissalHandler:handlerCopy];

  if ([(SHSheetRouter *)self isVisionIdiom]|| [(SHSheetRouter *)self isPresentedWithinPopover])
  {
    mainNavigationController = [(SHSheetRouter *)self mainNavigationController];
    _window = [mainNavigationController _window];

    if (_window)
    {
      mainNavigationController2 = [(SHSheetRouter *)self mainNavigationController];
LABEL_7:
      v11 = mainNavigationController2;
      [(_UIActivityNavigationController *)mainNavigationController2 pushViewController:controllerCopy animated:1];
      goto LABEL_8;
    }
  }

  secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];

  if (secondaryNavigationController)
  {
    mainNavigationController2 = [(SHSheetRouter *)self secondaryNavigationController];
    goto LABEL_7;
  }

  v11 = [[_UIActivityNavigationController alloc] initWithRootViewController:controllerCopy];
  [(_UIActivityNavigationController *)v11 setDelegate:self];
  [(_UIActivityNavigationController *)v11 setModalPresentationStyle:2];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(_UIActivityNavigationController *)v11 setPreferredContentSize:_ShareSheetFormSheetSize()];
  }

  v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismissCollaborationParticipantsViewController];
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setRightBarButtonItem:v14];

  mainViewController = [(SHSheetRouter *)self mainViewController];
  [mainViewController presentViewController:v11 animated:1 completion:0];

LABEL_8:
}

- (void)dismissCollaborationParticipantsViewController
{
  objc_initWeak(&location, self);
  mainViewController = [(SHSheetRouter *)self mainViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SHSheetRouter_dismissCollaborationParticipantsViewController__block_invoke;
  v4[3] = &unk_1E71F95A8;
  objc_copyWeak(&v5, &location);
  [mainViewController dismissViewControllerAnimated:1 completion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__SHSheetRouter_dismissCollaborationParticipantsViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didDismissCollaborationParticipantsViewController];
}

- (void)_didDismissCollaborationParticipantsViewController
{
  [(SHSheetRouter *)self setCollaborationParticipantsViewController:0];
  collaborationParticipantsDismissalHandler = [(SHSheetRouter *)self collaborationParticipantsDismissalHandler];
  if (collaborationParticipantsDismissalHandler)
  {
    v4 = collaborationParticipantsDismissalHandler;
    [(SHSheetRouter *)self setCollaborationParticipantsDismissalHandler:0];
    v4[2](v4);
    collaborationParticipantsDismissalHandler = v4;
  }
}

- (void)dismissSecondaryViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v11 = *MEMORY[0x1E69E9840];
  secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];

  if (secondaryNavigationController)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      secondaryNavigationController2 = [(SHSheetRouter *)self secondaryNavigationController];
      v9 = 138412290;
      v10 = secondaryNavigationController2;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Dismiss secondary navigation controller:%@", &v9, 0xCu);
    }

    secondaryNavigationController3 = [(SHSheetRouter *)self secondaryNavigationController];
    [secondaryNavigationController3 dismissViewControllerAnimated:animatedCopy completion:0];
  }
}

- (void)dismissUserDefaultsViewControllerAnimated:(BOOL)animated
{
  v10 = *MEMORY[0x1E69E9840];
  userDefaultsNavigationController = [(SHSheetRouter *)self userDefaultsNavigationController];

  if (userDefaultsNavigationController)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      userDefaultsNavigationController2 = [(SHSheetRouter *)self userDefaultsNavigationController];
      v8 = 138412290;
      v9 = userDefaultsNavigationController2;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Dismiss user defaults navigation controller:%@", &v8, 0xCu);
    }

    userDefaultsNavigationController3 = [(SHSheetRouter *)self userDefaultsNavigationController];
    [userDefaultsNavigationController3 dismissViewControllerAnimated:1 completion:0];

    [(SHSheetRouter *)self setUserDefaultsNavigationController:0];
  }
}

- (void)dismissForActivityPerformerResult:(id)result didPresentFromShareSheet:(BOOL)sheet completionHandler:(id)handler
{
  sheetCopy = sheet;
  v63 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  resultCopy = result;
  activity = [resultCopy activity];
  activityViewController = [activity activityViewController];
  completedState = [resultCopy completedState];

  if (completedState != 5)
  {
    _embeddedActivityViewController = [activity _embeddedActivityViewController];
    rootViewController4 = _embeddedActivityViewController;
    if (_embeddedActivityViewController)
    {
      _window = [_embeddedActivityViewController _window];
      if (_window)
      {
        isBeingDismissed = [rootViewController4 isBeingDismissed];
      }

      else
      {
        isBeingDismissed = 1;
      }

      if (activity && (isBeingDismissed & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (activity)
    {
LABEL_25:
      if (![activity _managesOwnPresentation])
      {
        goto LABEL_29;
      }

      rootViewController = 0;
LABEL_28:

      activityViewController = rootViewController;
      goto LABEL_29;
    }

    rootViewController = [(SHSheetRouter *)self rootViewController];
    goto LABEL_28;
  }

  if (sheetCopy)
  {
    presentingViewController = [activityViewController presentingViewController];

    if (!presentingViewController)
    {
      rootViewController2 = [(SHSheetRouter *)self rootViewController];

      activityViewController = rootViewController2;
    }

    if (([activityViewController isBeingDismissed] & 1) != 0 || (objc_msgSend(activityViewController, "presentingViewController"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {

      activityViewController = 0;
    }

    presentingViewController2 = [activityViewController presentingViewController];

    if (presentingViewController2)
    {
      presentingViewController3 = [activityViewController presentingViewController];

      activityViewController = presentingViewController3;
    }

    rootViewController3 = [(SHSheetRouter *)self rootViewController];
    v19 = rootViewController3;
    if (activityViewController == rootViewController3)
    {
      presentingViewController4 = [activityViewController presentingViewController];

      if (presentingViewController4)
      {
LABEL_59:
        [activityViewController presentingViewController];
        activityViewController = rootViewController4 = activityViewController;
        goto LABEL_29;
      }
    }

    else
    {
    }

    rootViewController4 = [(SHSheetRouter *)self rootViewController];
    if (activityViewController == rootViewController4)
    {
      goto LABEL_29;
    }

    presentingViewController5 = [activityViewController presentingViewController];
    if (!presentingViewController5)
    {
      goto LABEL_29;
    }

    v22 = presentingViewController5;
    presentingViewController6 = [activityViewController presentingViewController];
    rootViewController5 = [(SHSheetRouter *)self rootViewController];
    presentingViewController7 = [rootViewController5 presentingViewController];

    if (presentingViewController6 != presentingViewController7)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

  rootViewController4 = activityViewController;
  activityViewController = 0;
LABEL_29:

LABEL_30:
  v30 = share_sheet_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = activityViewController;
    _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "View controller to dismiss from:%@", buf, 0xCu);
  }

  presentedViewController = [activityViewController presentedViewController];
  v32 = presentedViewController;
  if (presentedViewController)
  {
    v33 = presentedViewController;
  }

  else
  {
    v33 = activityViewController;
  }

  v34 = v33;

  v35 = share_sheet_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v34;
    _os_log_impl(&dword_18B359000, v35, OS_LOG_TYPE_DEFAULT, "View controller to dismiss:%@", buf, 0xCu);
  }

  if (v34)
  {
    _window2 = [v34 _window];
    if (_window2)
    {
      v37 = [v34 isBeingDismissed] ^ 1;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 1;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __94__SHSheetRouter_dismissForActivityPerformerResult_didPresentFromShareSheet_completionHandler___block_invoke;
  v56[3] = &unk_1E71FB4E0;
  v58 = sheetCopy;
  v56[4] = self;
  v38 = handlerCopy;
  v57 = v38;
  v39 = [activity _dismissActivityFromViewController:activityViewController animated:v37 completion:v56];
  v40 = share_sheet_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = NSStringFromBOOL();
    *buf = 138412290;
    v60 = v41;
    _os_log_impl(&dword_18B359000, v40, OS_LOG_TYPE_DEFAULT, "Use custom presentation:%@", buf, 0xCu);
  }

  if ((v39 & 1) == 0)
  {
    if (activityViewController)
    {
      v42 = v37;
    }

    else
    {
      v42 = 0;
    }

    if (v42 == 1)
    {
      v43 = share_sheet_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v34;
        _os_log_impl(&dword_18B359000, v43, OS_LOG_TYPE_DEFAULT, "Dismiss view controller manually:%@", buf, 0xCu);
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __94__SHSheetRouter_dismissForActivityPerformerResult_didPresentFromShareSheet_completionHandler___block_invoke_143;
      v54[3] = &unk_1E71FA0F0;
      v54[4] = self;
      v55 = v38;
      [activityViewController dismissViewControllerAnimated:1 completion:v54];
    }

    else
    {
      if (sheetCopy)
      {
        rootViewController6 = [(SHSheetRouter *)self rootViewController];
        _window3 = [rootViewController6 _window];
        if (_window3)
        {
          rootViewController7 = [(SHSheetRouter *)self rootViewController];
          if ([rootViewController7 isBeingDismissed])
          {
            v47 = 1;
          }

          else
          {
            rootViewController8 = [(SHSheetRouter *)self rootViewController];
            presentingViewController8 = [rootViewController8 presentingViewController];
            v47 = presentingViewController8 == 0;
          }
        }

        else
        {
          v47 = 1;
        }
      }

      else
      {
        v47 = 1;
      }

      v51 = share_sheet_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        rootViewController9 = [(SHSheetRouter *)self rootViewController];
        v53 = NSStringFromBOOL();
        *buf = 138412546;
        v60 = rootViewController9;
        v61 = 2112;
        v62 = v53;
        _os_log_impl(&dword_18B359000, v51, OS_LOG_TYPE_DEFAULT, "didDismissRootViewController:%@ = %@", buf, 0x16u);
      }

      (*(v38 + 2))(v38, v47);
    }
  }
}

uint64_t __94__SHSheetRouter_dismissForActivityPerformerResult_didPresentFromShareSheet_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) rootViewController];
    v3 = [v2 _window];
    if (v3)
    {
      v4 = [*(a1 + 32) rootViewController];
      [v4 presentingViewController];
    }
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

uint64_t __94__SHSheetRouter_dismissForActivityPerformerResult_didPresentFromShareSheet_completionHandler___block_invoke_143(uint64_t a1)
{
  v2 = [*(a1 + 32) rootViewController];
  v3 = [v2 _window];
  if (v3)
  {
    v4 = [*(a1 + 32) rootViewController];
    [v4 presentingViewController];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)_configureMainViewController:(id)controller
{
  v26[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  rootViewController = [(SHSheetRouter *)self rootViewController];
  view2 = [rootViewController view];

  v18 = MEMORY[0x1E696ACD8];
  view3 = [controllerCopy view];
  leadingAnchor = [view3 leadingAnchor];
  leadingAnchor2 = [view2 leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v22;
  view4 = [controllerCopy view];
  trailingAnchor = [view4 trailingAnchor];
  trailingAnchor2 = [view2 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v17;
  view5 = [controllerCopy view];
  topAnchor = [view5 topAnchor];
  topAnchor2 = [view2 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v11;
  view6 = [controllerCopy view];

  bottomAnchor = [view6 bottomAnchor];
  bottomAnchor2 = [view2 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v16];
}

- (void)_configureAirdropViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:2];
  if (_ShareSheetPlatformPrefersPopover())
  {
    [controllerCopy setPreferredContentSize:_ShareSheetFormSheetSize()];
  }
}

- (void)_installChildViewController:(id)controller forParentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:viewControllerCopy];
  [viewControllerCopy addChildViewController:controllerCopy];
  view = [viewControllerCopy view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [controllerCopy didMoveToParentViewController:viewControllerCopy];
}

- (BOOL)activityPerformerCanPresent:(id)present
{
  rootViewController = [(SHSheetRouter *)self rootViewController];
  parentModalViewController = [rootViewController parentModalViewController];
  if (parentModalViewController)
  {
    isPresentedWithinPopover = 1;
  }

  else
  {
    rootViewController2 = [(SHSheetRouter *)self rootViewController];
    parentViewController = [rootViewController2 parentViewController];
    if (parentViewController)
    {
      isPresentedWithinPopover = 1;
    }

    else
    {
      isPresentedWithinPopover = [(SHSheetRouter *)self isPresentedWithinPopover];
    }
  }

  return isPresentedWithinPopover;
}

- (BOOL)activityPerformer:(id)performer presentPopoverContentViewController:(id)controller
{
  v24 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  controllerCopy = controller;
  rootViewController = [(SHSheetRouter *)self rootViewController];
  _popoverController = [rootViewController _popoverController];

  if (!_popoverController || ([_popoverController contentViewController], v10 = objc_claimAutoreleasedReturnValue(), -[SHSheetRouter rootViewController](self, "rootViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v10 == v11))
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = controllerCopy;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Present popover content view controller:%@", &v22, 0xCu);
    }

    v14 = _ShareSheetSolariumEnabled();
    if (_popoverController)
    {
      v12 = 1;
      [_popoverController setContentViewController:controllerCopy animated:1];
    }

    else
    {
      if (v14 & 1 | ![(SHSheetRouter *)self isPresentedWithinPopover])
      {
        [controllerCopy setModalPresentationStyle:2];
        view = [controllerCopy view];
        v12 = 1;
        [view setTintAdjustmentMode:1];

        activity = [performerCopy activity];
        [activity _willPresentAsFormSheet];

        rootViewController2 = [(SHSheetRouter *)self rootViewController];
        v18 = rootViewController2;
      }

      else
      {
        systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
        view2 = [controllerCopy view];
        [view2 setBackgroundColor:systemGroupedBackgroundColor];

        [controllerCopy setModalPresentationStyle:6];
        [controllerCopy setModalTransitionStyle:2];
        rootViewController2 = [(SHSheetRouter *)self rootViewController];
        v18 = rootViewController2;
        v12 = 1;
      }

      [rootViewController2 presentViewController:controllerCopy animated:1 completion:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)activityPerformer:(id)performer preparePresentationWithContext:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  rootViewController = [(SHSheetRouter *)self rootViewController];
  presentingViewController = [rootViewController presentingViewController];
  v11 = presentingViewController;
  if (presentingViewController)
  {
    rootViewController2 = presentingViewController;
  }

  else
  {
    keyWindow = [MEMORY[0x1E69DD2E8] keyWindow];
    rootViewController2 = [keyWindow rootViewController];
  }

  if ([contextCopy shouldPresentOverCurrentContext] && !objc_msgSend(contextCopy, "isCloudSharing"))
  {
    mainViewController = [(SHSheetRouter *)self mainViewController];
  }

  else
  {
    mainViewController = rootViewController2;
  }

  v15 = mainViewController;
  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = contextCopy;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "Prepare presentation with context:%@ presentationViewController:%@", buf, 0x16u);
  }

  if ([contextCopy shouldDismissBeforePresentation])
  {
    rootViewController3 = [(SHSheetRouter *)self rootViewController];
    if ([contextCopy shouldPresentOverCurrentContext])
    {

      rootViewController4 = [(SHSheetRouter *)self rootViewController];

      rootViewController3 = 0;
      rootViewController2 = rootViewController4;
    }

    secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];
    v20 = secondaryNavigationController;
    if (secondaryNavigationController)
    {
      v21 = secondaryNavigationController;
    }

    else
    {
      v21 = rootViewController3;
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __77__SHSheetRouter_activityPerformer_preparePresentationWithContext_completion___block_invoke;
  v31[3] = &unk_1E71F9958;
  v31[4] = self;
  v23 = v15;
  v32 = v23;
  v24 = completionCopy;
  v33 = v24;
  v25 = MEMORY[0x18CFF58E0](v31);
  v26 = v25;
  if (v22)
  {
    v27 = share_sheet_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v22;
      _os_log_impl(&dword_18B359000, v27, OS_LOG_TYPE_DEFAULT, "Dismiss view controller before presentation:%@", buf, 0xCu);
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __77__SHSheetRouter_activityPerformer_preparePresentationWithContext_completion___block_invoke_148;
    v28[3] = &unk_1E71F9958;
    v28[4] = self;
    v29 = rootViewController2;
    v30 = v26;
    [v22 dismissViewControllerAnimated:1 completion:v28];
  }

  else
  {
    (*(v25 + 16))(v25);
  }
}

uint64_t __77__SHSheetRouter_activityPerformer_preparePresentationWithContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPresentationViewController:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __77__SHSheetRouter_activityPerformer_preparePresentationWithContext_completion___block_invoke_148(id *a1)
{
  v2 = [a1[4] rootViewController];
  v3 = [v2 presentingViewController];
  v4 = v3;
  if (v3 != a1[5])
  {

LABEL_7:
    v8 = *(a1[6] + 2);

    v8();
    return;
  }

  v5 = [a1[4] isPresentedWithinPopover];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Dismiss activity view controller before presentation", buf, 2u);
  }

  v7 = [a1[4] rootViewController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SHSheetRouter_activityPerformer_preparePresentationWithContext_completion___block_invoke_149;
  v9[3] = &unk_1E71F9360;
  v10 = a1[6];
  [v7 dismissViewControllerAnimated:0 completion:v9];
}

- (void)activityPerformer:(id)performer presentViewController:(id)controller completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  rootViewController = [(SHSheetRouter *)self rootViewController];
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138412290;
    v39 = controllerCopy;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Present view controller for activity:%@", &v38, 0xCu);
  }

  popoverPresentationController = [rootViewController popoverPresentationController];
  if (popoverPresentationController)
  {
    v12 = popoverPresentationController;
    popoverPresentationController2 = [controllerCopy popoverPresentationController];

    if (popoverPresentationController2)
    {
      popoverPresentationController3 = [rootViewController popoverPresentationController];
      barButtonItem = [popoverPresentationController3 barButtonItem];
      popoverPresentationController4 = [controllerCopy popoverPresentationController];
      [popoverPresentationController4 setBarButtonItem:barButtonItem];

      popoverPresentationController5 = [rootViewController popoverPresentationController];
      [popoverPresentationController5 sourceRect];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      popoverPresentationController6 = [controllerCopy popoverPresentationController];
      [popoverPresentationController6 setSourceRect:{v19, v21, v23, v25}];

      popoverPresentationController7 = [rootViewController popoverPresentationController];
      sourceView = [popoverPresentationController7 sourceView];
      popoverPresentationController8 = [controllerCopy popoverPresentationController];
      [popoverPresentationController8 setSourceView:sourceView];
    }
  }

  view = [controllerCopy view];
  [view setTintAdjustmentMode:1];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v33 = [bundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

  rootViewController2 = [(SHSheetRouter *)self rootViewController];
  traitCollection = [rootViewController2 traitCollection];
  if ([traitCollection horizontalSizeClass] == 1 && v33)
  {
    modalPresentationStyle = [controllerCopy modalPresentationStyle];

    if (modalPresentationStyle == 7)
    {
      [controllerCopy setModalPresentationStyle:2];
    }
  }

  else
  {
  }

  presentationViewController = [(SHSheetRouter *)self presentationViewController];
  [presentationViewController presentViewController:controllerCopy animated:1 completion:completionCopy];
}

- (void)activityPerformCleanUpPresentation:(id)presentation
{
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SHSheetRouter *)v4 activityPerformCleanUpPresentation:v5, v6, v7, v8, v9, v10, v11];
  }

  [(SHSheetRouter *)self setPresentationViewController:0];
}

- (void)activityPerformer:(id)performer startListeningForDismissalTransitionWithCompletion:(id)completion
{
  if (!self->_listenForDismissalTransition)
  {
    completionCopy = completion;
    performerCopy = performer;
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SHSheetRouter *)v8 activityPerformer:v9 startListeningForDismissalTransitionWithCompletion:v10, v11, v12, v13, v14, v15];
    }

    self->_listenForDismissalTransition = 1;
    [(SHSheetRouter *)self setListenerCompletionHandler:completionCopy];

    activity = [performerCopy activity];

    activityViewController = [activity activityViewController];
    [(SHSheetRouter *)self setCurrentViewControllerForActivityBeingListened:activityViewController];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__presentationControllerDismissalTransitionDidEndNotification_ name:*MEMORY[0x1E69DE2C8] object:0];
  }
}

- (void)activityPerformerStopListeningForDismissalTransition:(id)transition
{
  if (self->_listenForDismissalTransition)
  {
    v4 = share_sheet_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(SHSheetRouter *)v4 activityPerformerStopListeningForDismissalTransition:v5, v6, v7, v8, v9, v10, v11];
    }

    self->_listenForDismissalTransition = 0;
    [(SHSheetRouter *)self setListenerCompletionHandler:0];
    [(SHSheetRouter *)self setCurrentViewControllerForActivityBeingListened:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE2C8] object:0];
  }
}

- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
  bOOLValue = [v6 BOOLValue];

  if (self->_listenForDismissalTransition && bOOLValue != 0)
  {
    currentViewControllerForActivityBeingListened = [(SHSheetRouter *)self currentViewControllerForActivityBeingListened];
    presentationViewController = [(SHSheetRouter *)self presentationViewController];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (!currentViewControllerForActivityBeingListened && presentationViewController)
    {
      if (userInterfaceIdiom == 1)
      {
        currentViewControllerForActivityBeingListened = [presentationViewController presentedViewController];
      }

      else
      {
        currentViewControllerForActivityBeingListened = 0;
      }
    }

    object = [notificationCopy object];

    if (object == currentViewControllerForActivityBeingListened)
    {
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = currentViewControllerForActivityBeingListened;
        _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Presentation controller dismissal detected for %@", &v16, 0xCu);
      }

      listenerCompletionHandler = [(SHSheetRouter *)self listenerCompletionHandler];
      listenerCompletionHandler[2]();
    }
  }
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  secondaryNavigationController = [(SHSheetRouter *)self secondaryNavigationController];

  if (secondaryNavigationController == controllerCopy)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD4F0]) initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    v13 = v12;
    v15 = v14;

    v16 = v13 != 320.0 || v15 != 568.0;
    [v10 _setWantsBottomAttachedInCompactHeight:v16];
    [v10 _setWidthFollowsPreferredContentSizeWhenBottomAttached:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  disappearingViewController = [controllerCopy disappearingViewController];

  v7 = controllerCopy;
  if (disappearingViewController)
  {
    disappearingViewController2 = [controllerCopy disappearingViewController];
    collaborationParticipantsViewController = [(SHSheetRouter *)self collaborationParticipantsViewController];
    v10 = collaborationParticipantsViewController;
    if (disappearingViewController2 == collaborationParticipantsViewController)
    {
      collaborationParticipantsDismissalHandler = [(SHSheetRouter *)self collaborationParticipantsDismissalHandler];

      if (collaborationParticipantsDismissalHandler)
      {
        [(SHSheetRouter *)self _didDismissCollaborationParticipantsViewController];
LABEL_10:
        v7 = controllerCopy;
        goto LABEL_11;
      }
    }

    else
    {
    }

    disappearingViewController3 = [controllerCopy disappearingViewController];
    optionsViewController = [(SHSheetRouter *)self optionsViewController];
    v13 = optionsViewController;
    if (disappearingViewController3 == optionsViewController)
    {
      optionsViewControllerDismissalHandler = [(SHSheetRouter *)self optionsViewControllerDismissalHandler];

      v7 = controllerCopy;
      if (!optionsViewControllerDismissalHandler)
      {
        goto LABEL_11;
      }

      [(SHSheetRouter *)self _didDismissOptionsViewController];
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)handlePresentationBlockingViewControllerClose
{
  mainViewController = [(SHSheetRouter *)self mainViewController];
  presenter = [mainViewController presenter];
  [presenter handleClose];
}

- (BOOL)presentationBlockingViewShouldPresentCloseButton
{
  mainViewController = [(SHSheetRouter *)self mainViewController];
  v3 = [mainViewController effectivePresentationStyle] != 7;

  return v3;
}

- (void)layoutPresentationBlockingViewController
{
  presentationBlockingViewController = [(SHSheetRouter *)self presentationBlockingViewController];
  view = [presentationBlockingViewController view];
  [view setNeedsLayout];
}

- (SHSheetContentView)mainViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainViewController);

  return WeakRetained;
}

- (UINavigationController)secondaryNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryNavigationController);

  return WeakRetained;
}

- (UINavigationController)userDefaultsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsNavigationController);

  return WeakRetained;
}

- (SHSheetContentView)secondaryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryViewController);

  return WeakRetained;
}

- (UIViewController)presentationBlockingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationBlockingViewController);

  return WeakRetained;
}

- (UIViewController)collaborationParticipantsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_collaborationParticipantsViewController);

  return WeakRetained;
}

- (UIViewController)optionsViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_optionsViewController);

  return WeakRetained;
}

@end