@interface SHSheetRouter
- (BOOL)activityPerformer:(id)a3 presentPopoverContentViewController:(id)a4;
- (BOOL)activityPerformerCanPresent:(id)a3;
- (BOOL)isPresentedWithinPopover;
- (BOOL)presentationBlockingViewShouldPresentCloseButton;
- (SHSheetContentView)mainViewController;
- (SHSheetContentView)secondaryViewController;
- (SHSheetRouter)initWithRootViewController:(id)a3 mainNavigationController:(id)a4 supportsModalPresentations:(BOOL)a5;
- (SHSheetRouter)initWithRootViewController:(id)a3 supportsModalPresentations:(BOOL)a4;
- (UINavigationController)secondaryNavigationController;
- (UINavigationController)userDefaultsNavigationController;
- (UIViewController)collaborationParticipantsViewController;
- (UIViewController)optionsViewController;
- (UIViewController)presentationBlockingViewController;
- (UIViewController)rootViewController;
- (id)_createUserDefaultsNavigationControllerWithRootViewController:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)_configureAirdropViewController:(id)a3;
- (void)_configureMainViewController:(id)a3;
- (void)_didDismissCollaborationParticipantsViewController;
- (void)_didDismissOptionsViewController;
- (void)_dismissOptionsViewController;
- (void)_installChildViewController:(id)a3 forParentViewController:(id)a4;
- (void)_presentViewController:(id)a3;
- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)a3;
- (void)activityPerformCleanUpPresentation:(id)a3;
- (void)activityPerformer:(id)a3 preparePresentationWithContext:(id)a4 completion:(id)a5;
- (void)activityPerformer:(id)a3 presentViewController:(id)a4 completion:(id)a5;
- (void)activityPerformer:(id)a3 startListeningForDismissalTransitionWithCompletion:(id)a4;
- (void)activityPerformerStopListeningForDismissalTransition:(id)a3;
- (void)dismissCollaborationParticipantsViewController;
- (void)dismissForActivityPerformerResult:(id)a3 didPresentFromShareSheet:(BOOL)a4 completionHandler:(id)a5;
- (void)dismissPresentationBlockingViewControllerIfNeeded;
- (void)dismissRemoteCustomViewControllerIfNeeded;
- (void)dismissSecondaryViewControllerAnimated:(BOOL)a3;
- (void)dismissUserDefaultsViewControllerAnimated:(BOOL)a3;
- (void)handlePresentationBlockingViewControllerClose;
- (void)installAirdropViewController:(id)a3;
- (void)layoutPresentationBlockingViewController;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentAirdropViewController:(id)a3;
- (void)presentAlertController:(id)a3;
- (void)presentCollaborationParticipantsViewController:(id)a3 dismissalHandler:(id)a4;
- (void)presentMainViewController:(id)a3 withNavigationControllerSupport:(BOOL)a4;
- (void)presentOptionsViewController:(id)a3 dismissalHandler:(id)a4;
- (void)presentPresentationBlockingViewController;
- (void)presentRemoteCustomViewController:(id)a3;
- (void)presentSecondaryViewController:(id)a3;
- (void)presentUserDefaultsViewController:(id)a3;
@end

@implementation SHSheetRouter

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (BOOL)isPresentedWithinPopover
{
  v2 = [(SHSheetRouter *)self rootViewController];
  IsPresentedInPopover = SHSheetIsPresentedInPopover(v2);

  return IsPresentedInPopover;
}

- (SHSheetRouter)initWithRootViewController:(id)a3 mainNavigationController:(id)a4 supportsModalPresentations:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SHSheetRouter;
  v10 = [(SHSheetRouter *)&v13 init];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(SHSheetRouter *)v10 _createUserDefaultsNavigationControllerWithRootViewController:v8];

      v9 = v11;
    }

    objc_storeWeak(&v10->_rootViewController, v8);
    v10->_supportsModalPresentations = a5;
    [v9 setDelegate:v10];
    objc_storeStrong(&v10->_mainNavigationController, v9);
  }

  return v10;
}

- (SHSheetRouter)initWithRootViewController:(id)a3 supportsModalPresentations:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
  if ((dyld_program_sdk_at_least() & 1) == 0 && v8 != 1)
  {
    [v9 _setPreferredNavigationBarPosition:2];
  }

  v10 = [(SHSheetRouter *)self initWithRootViewController:v6 mainNavigationController:v9 supportsModalPresentations:v4];

  return v10;
}

- (void)presentMainViewController:(id)a3 withNavigationControllerSupport:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SHSheetRouter *)self setMainViewController:v6];
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SHSheetRouter *)self rootViewController];
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_18B359000, v7, OS_LOG_TYPE_DEFAULT, "Install main view:%@ parentViewController:%@", &v13, 0x16u);
  }

  v9 = [(SHSheetRouter *)self mainNavigationController];
  [v9 pushViewController:v6 animated:0];

  if (a4)
  {
    v10 = [(SHSheetRouter *)self mainNavigationController];
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  v12 = [(SHSheetRouter *)self rootViewController];
  [(SHSheetRouter *)self _installChildViewController:v11 forParentViewController:v12];

  [(SHSheetRouter *)self _configureMainViewController:v11];
}

- (void)presentSecondaryViewController:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SHSheetRouter *)self setSecondaryViewController:v4];
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SHSheetRouter *)self rootViewController];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Present secondary view:%@ parentViewController:%@", &v10, 0x16u);
  }

  v7 = [[_UIActivityNavigationController alloc] initWithRootViewController:v4];
  [(_UIActivityNavigationController *)v7 setDelegate:self];
  [(_UIActivityNavigationController *)v7 setTransitioningDelegate:self];
  [(_UIActivityNavigationController *)v7 setModalPresentationStyle:4];
  [(_UIActivityNavigationController *)v7 setPreferredContentSize:_ShareSheetDefaultSheetSize()];
  v8 = [(_UIActivityNavigationController *)v7 navigationBar];
  [v8 setRequestedContentSize:3];

  [(SHSheetRouter *)self setSecondaryNavigationController:v7];
  v9 = [(SHSheetRouter *)self rootViewController];
  [v9 presentViewController:v7 animated:1 completion:0];
}

- (id)_createUserDefaultsNavigationControllerWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [v5 accessibilityIdentifier];
  v7 = [@"ShareSheet.Edit" stringByAppendingString:v6];

  v8 = [SHSheetFactory createNavigationControllerWithRootViewController:v4 delegate:self accessibilityIdentifier:v7];

  return v8;
}

- (void)presentUserDefaultsViewController:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = share_sheet_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Present user defaults view controller:%@", &v10, 0xCu);
  }

  if ([(SHSheetRouter *)self supportsModalPresentations])
  {
    v6 = [(SHSheetRouter *)self _createUserDefaultsNavigationControllerWithRootViewController:v4];
    [(SHSheetRouter *)self _presentViewController:v6];
  }

  else
  {
    v7 = [(SHSheetRouter *)self secondaryNavigationController];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(SHSheetRouter *)self mainNavigationController];
    }

    v6 = v9;

    [v6 pushViewController:v4 animated:1];
  }

  [(SHSheetRouter *)self setUserDefaultsNavigationController:v6];
}

- (void)presentRemoteCustomViewController:(id)a3
{
  v4 = a3;
  [(SHSheetRouter *)self setRemoteCustomViewController:v4];
  [v4 setModalPresentationStyle:2];
  [(SHSheetRouter *)self _presentViewController:v4];
}

- (void)dismissRemoteCustomViewControllerIfNeeded
{
  v3 = [(SHSheetRouter *)self remoteCustomViewController];

  if (v3)
  {
    v4 = [(SHSheetRouter *)self remoteCustomViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    [(SHSheetRouter *)self setRemoteCustomViewController:0];
  }
}

- (void)presentPresentationBlockingViewController
{
  v3 = [(SHSheetRouter *)self presentationBlockingViewController];

  if (!v3)
  {
    v9 = objc_alloc_init(SHSheetPresentationBlockingViewController);
    [(SHSheetPresentationBlockingViewController *)v9 setDelegate:self];
    [(SHSheetRouter *)self setPresentationBlockingViewController:v9];
    v4 = [(SHSheetPresentationBlockingViewController *)v9 navigationItem];
    [v4 setHidesBackButton:1];

    v5 = [(SHSheetRouter *)self secondaryNavigationController];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(SHSheetRouter *)self mainNavigationController];
    }

    v8 = v7;

    [v8 pushViewController:v9 animated:0];
  }
}

- (void)dismissPresentationBlockingViewControllerIfNeeded
{
  v3 = [(SHSheetRouter *)self presentationBlockingViewController];

  if (v3)
  {
    v4 = [(SHSheetRouter *)self presentationBlockingViewController];
    v5 = [v4 navigationController];
    v6 = [v5 popViewControllerAnimated:0];

    [(SHSheetRouter *)self setPresentationBlockingViewController:0];
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetRouter *)self secondaryNavigationController];
  v6 = [(SHSheetRouter *)self mainViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(SHSheetRouter *)self rootViewController];
  }

  v9 = v8;

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__SHSheetRouter__presentViewController___block_invoke;
  v17 = &unk_1E71F91A0;
  v18 = v9;
  v19 = v4;
  v10 = v4;
  v11 = v9;
  v12 = MEMORY[0x18CFF58E0](&v14);
  v13 = v12;
  if (v5)
  {
    [v5 dismissViewControllerAnimated:1 completion:{v12, v14, v15, v16, v17, v18, v19}];
  }

  else
  {
    (*(v12 + 16))(v12);
  }
}

- (void)presentAirdropViewController:(id)a3
{
  v4 = a3;
  [(SHSheetRouter *)self _configureAirdropViewController:v4];
  [(SHSheetRouter *)self _presentViewController:v4];
}

- (void)installAirdropViewController:(id)a3
{
  v5 = a3;
  [(SHSheetRouter *)self _configureAirdropViewController:v5];
  v4 = [(SHSheetRouter *)self rootViewController];
  [(SHSheetRouter *)self _installChildViewController:v5 forParentViewController:v4];

  [(SHSheetRouter *)self _configureMainViewController:v5];
}

- (void)presentAlertController:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetRouter *)self userDefaultsNavigationController];
  v6 = [v5 topViewController];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(SHSheetRouter *)self rootViewController];
  }

  v9 = v8;

  v10 = [v9 presentedViewController];
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
    v14 = [v9 presentedViewController];

    v9 = v14;
  }

  [v9 presentViewController:v4 animated:1 completion:0];
}

- (void)presentOptionsViewController:(id)a3 dismissalHandler:(id)a4
{
  v24 = a3;
  v6 = a4;
  [(SHSheetRouter *)self setOptionsViewController:v24];
  [(SHSheetRouter *)self setOptionsViewControllerDismissalHandler:v6];

  if ([(SHSheetRouter *)self isVisionIdiom])
  {
    v7 = [(SHSheetRouter *)self mainNavigationController];
    v8 = [v7 _window];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    v11 = [(SHSheetRouter *)self mainNavigationController];
LABEL_11:
    v13 = v11;
    [(_UIActivityNavigationController *)v11 pushViewController:v24 animated:1];
    goto LABEL_20;
  }

  if (![(SHSheetRouter *)self isPresentedWithinPopover])
  {
    _ShareSheetSolariumEnabled();
    goto LABEL_9;
  }

  v9 = [(SHSheetRouter *)self mainNavigationController];
  v10 = [v9 _window];

  if ((_ShareSheetSolariumEnabled() & 1) == 0 && v10)
  {
    goto LABEL_7;
  }

LABEL_9:
  v12 = [(SHSheetRouter *)self secondaryNavigationController];

  if (v12)
  {
    v11 = [(SHSheetRouter *)self secondaryNavigationController];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v24;
  }

  else
  {
    v13 = [[_UIActivityNavigationController alloc] initWithRootViewController:v24];
    [(_UIActivityNavigationController *)v13 setDelegate:self];
    [(_UIActivityNavigationController *)v13 setModalPresentationStyle:2];
    v14 = [MEMORY[0x1E69DC938] currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 1)
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

  v22 = [v24 navigationItem];
  [v22 setRightBarButtonItem:v19];

  v23 = [(SHSheetRouter *)self mainViewController];
  [v23 presentViewController:v13 animated:1 completion:0];

LABEL_20:
}

- (void)_dismissOptionsViewController
{
  objc_initWeak(&location, self);
  v3 = [(SHSheetRouter *)self mainViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SHSheetRouter__dismissOptionsViewController__block_invoke;
  v4[3] = &unk_1E71F95A8;
  objc_copyWeak(&v5, &location);
  [v3 dismissViewControllerAnimated:1 completion:v4];

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
  v3 = [(SHSheetRouter *)self optionsViewControllerDismissalHandler];
  if (v3)
  {
    v4 = v3;
    [(SHSheetRouter *)self setOptionsViewControllerDismissalHandler:0];
    v4[2](v4);
    v3 = v4;
  }
}

- (void)presentCollaborationParticipantsViewController:(id)a3 dismissalHandler:(id)a4
{
  v17 = a3;
  v6 = a4;
  [(SHSheetRouter *)self setCollaborationParticipantsViewController:v17];
  [(SHSheetRouter *)self setCollaborationParticipantsDismissalHandler:v6];

  if ([(SHSheetRouter *)self isVisionIdiom]|| [(SHSheetRouter *)self isPresentedWithinPopover])
  {
    v7 = [(SHSheetRouter *)self mainNavigationController];
    v8 = [v7 _window];

    if (v8)
    {
      v9 = [(SHSheetRouter *)self mainNavigationController];
LABEL_7:
      v11 = v9;
      [(_UIActivityNavigationController *)v9 pushViewController:v17 animated:1];
      goto LABEL_8;
    }
  }

  v10 = [(SHSheetRouter *)self secondaryNavigationController];

  if (v10)
  {
    v9 = [(SHSheetRouter *)self secondaryNavigationController];
    goto LABEL_7;
  }

  v11 = [[_UIActivityNavigationController alloc] initWithRootViewController:v17];
  [(_UIActivityNavigationController *)v11 setDelegate:self];
  [(_UIActivityNavigationController *)v11 setModalPresentationStyle:2];
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    [(_UIActivityNavigationController *)v11 setPreferredContentSize:_ShareSheetFormSheetSize()];
  }

  v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismissCollaborationParticipantsViewController];
  v15 = [v17 navigationItem];
  [v15 setRightBarButtonItem:v14];

  v16 = [(SHSheetRouter *)self mainViewController];
  [v16 presentViewController:v11 animated:1 completion:0];

LABEL_8:
}

- (void)dismissCollaborationParticipantsViewController
{
  objc_initWeak(&location, self);
  v3 = [(SHSheetRouter *)self mainViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SHSheetRouter_dismissCollaborationParticipantsViewController__block_invoke;
  v4[3] = &unk_1E71F95A8;
  objc_copyWeak(&v5, &location);
  [v3 dismissViewControllerAnimated:1 completion:v4];

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
  v3 = [(SHSheetRouter *)self collaborationParticipantsDismissalHandler];
  if (v3)
  {
    v4 = v3;
    [(SHSheetRouter *)self setCollaborationParticipantsDismissalHandler:0];
    v4[2](v4);
    v3 = v4;
  }
}

- (void)dismissSecondaryViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(SHSheetRouter *)self secondaryNavigationController];

  if (v5)
  {
    v6 = share_sheet_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SHSheetRouter *)self secondaryNavigationController];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Dismiss secondary navigation controller:%@", &v9, 0xCu);
    }

    v8 = [(SHSheetRouter *)self secondaryNavigationController];
    [v8 dismissViewControllerAnimated:v3 completion:0];
  }
}

- (void)dismissUserDefaultsViewControllerAnimated:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(SHSheetRouter *)self userDefaultsNavigationController];

  if (v4)
  {
    v5 = share_sheet_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SHSheetRouter *)self userDefaultsNavigationController];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_18B359000, v5, OS_LOG_TYPE_DEFAULT, "Dismiss user defaults navigation controller:%@", &v8, 0xCu);
    }

    v7 = [(SHSheetRouter *)self userDefaultsNavigationController];
    [v7 dismissViewControllerAnimated:1 completion:0];

    [(SHSheetRouter *)self setUserDefaultsNavigationController:0];
  }
}

- (void)dismissForActivityPerformerResult:(id)a3 didPresentFromShareSheet:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = [v9 activity];
  v11 = [v10 activityViewController];
  v12 = [v9 completedState];

  if (v12 != 5)
  {
    v26 = [v10 _embeddedActivityViewController];
    v20 = v26;
    if (v26)
    {
      v27 = [v26 _window];
      if (v27)
      {
        v28 = [v20 isBeingDismissed];
      }

      else
      {
        v28 = 1;
      }

      if (v10 && (v28 & 1) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (v10)
    {
LABEL_25:
      if (![v10 _managesOwnPresentation])
      {
        goto LABEL_29;
      }

      v29 = 0;
LABEL_28:

      v11 = v29;
      goto LABEL_29;
    }

    v29 = [(SHSheetRouter *)self rootViewController];
    goto LABEL_28;
  }

  if (v5)
  {
    v13 = [v11 presentingViewController];

    if (!v13)
    {
      v14 = [(SHSheetRouter *)self rootViewController];

      v11 = v14;
    }

    if (([v11 isBeingDismissed] & 1) != 0 || (objc_msgSend(v11, "presentingViewController"), v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {

      v11 = 0;
    }

    v16 = [v11 presentingViewController];

    if (v16)
    {
      v17 = [v11 presentingViewController];

      v11 = v17;
    }

    v18 = [(SHSheetRouter *)self rootViewController];
    v19 = v18;
    if (v11 == v18)
    {
      v48 = [v11 presentingViewController];

      if (v48)
      {
LABEL_59:
        [v11 presentingViewController];
        v11 = v20 = v11;
        goto LABEL_29;
      }
    }

    else
    {
    }

    v20 = [(SHSheetRouter *)self rootViewController];
    if (v11 == v20)
    {
      goto LABEL_29;
    }

    v21 = [v11 presentingViewController];
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = v21;
    v23 = [v11 presentingViewController];
    v24 = [(SHSheetRouter *)self rootViewController];
    v25 = [v24 presentingViewController];

    if (v23 != v25)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

  v20 = v11;
  v11 = 0;
LABEL_29:

LABEL_30:
  v30 = share_sheet_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v11;
    _os_log_impl(&dword_18B359000, v30, OS_LOG_TYPE_DEFAULT, "View controller to dismiss from:%@", buf, 0xCu);
  }

  v31 = [v11 presentedViewController];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v11;
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
    v36 = [v34 _window];
    if (v36)
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
  v58 = v5;
  v56[4] = self;
  v38 = v8;
  v57 = v38;
  v39 = [v10 _dismissActivityFromViewController:v11 animated:v37 completion:v56];
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
    if (v11)
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
      [v11 dismissViewControllerAnimated:1 completion:v54];
    }

    else
    {
      if (v5)
      {
        v44 = [(SHSheetRouter *)self rootViewController];
        v45 = [v44 _window];
        if (v45)
        {
          v46 = [(SHSheetRouter *)self rootViewController];
          if ([v46 isBeingDismissed])
          {
            v47 = 1;
          }

          else
          {
            v49 = [(SHSheetRouter *)self rootViewController];
            v50 = [v49 presentingViewController];
            v47 = v50 == 0;
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
        v52 = [(SHSheetRouter *)self rootViewController];
        v53 = NSStringFromBOOL();
        *buf = 138412546;
        v60 = v52;
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

- (void)_configureMainViewController:(id)a3
{
  v26[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(SHSheetRouter *)self rootViewController];
  v7 = [v6 view];

  v18 = MEMORY[0x1E696ACD8];
  v25 = [v4 view];
  v24 = [v25 leadingAnchor];
  v23 = [v7 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v26[0] = v22;
  v21 = [v4 view];
  v20 = [v21 trailingAnchor];
  v19 = [v7 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v26[1] = v17;
  v8 = [v4 view];
  v9 = [v8 topAnchor];
  v10 = [v7 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v26[2] = v11;
  v12 = [v4 view];

  v13 = [v12 bottomAnchor];
  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v26[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  [v18 activateConstraints:v16];
}

- (void)_configureAirdropViewController:(id)a3
{
  v3 = a3;
  [v3 setModalPresentationStyle:2];
  if (_ShareSheetPlatformPrefersPopover())
  {
    [v3 setPreferredContentSize:_ShareSheetFormSheetSize()];
  }
}

- (void)_installChildViewController:(id)a3 forParentViewController:(id)a4
{
  v5 = a4;
  v8 = a3;
  [v8 willMoveToParentViewController:v5];
  [v5 addChildViewController:v8];
  v6 = [v5 view];
  v7 = [v8 view];
  [v6 addSubview:v7];

  [v8 didMoveToParentViewController:v5];
}

- (BOOL)activityPerformerCanPresent:(id)a3
{
  v4 = [(SHSheetRouter *)self rootViewController];
  v5 = [v4 parentModalViewController];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(SHSheetRouter *)self rootViewController];
    v8 = [v7 parentViewController];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(SHSheetRouter *)self isPresentedWithinPopover];
    }
  }

  return v6;
}

- (BOOL)activityPerformer:(id)a3 presentPopoverContentViewController:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(SHSheetRouter *)self rootViewController];
  v9 = [v8 _popoverController];

  if (!v9 || ([v9 contentViewController], v10 = objc_claimAutoreleasedReturnValue(), -[SHSheetRouter rootViewController](self, "rootViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v10 == v11))
  {
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&dword_18B359000, v13, OS_LOG_TYPE_DEFAULT, "Present popover content view controller:%@", &v22, 0xCu);
    }

    v14 = _ShareSheetSolariumEnabled();
    if (v9)
    {
      v12 = 1;
      [v9 setContentViewController:v7 animated:1];
    }

    else
    {
      if (v14 & 1 | ![(SHSheetRouter *)self isPresentedWithinPopover])
      {
        [v7 setModalPresentationStyle:2];
        v15 = [v7 view];
        v12 = 1;
        [v15 setTintAdjustmentMode:1];

        v16 = [v6 activity];
        [v16 _willPresentAsFormSheet];

        v17 = [(SHSheetRouter *)self rootViewController];
        v18 = v17;
      }

      else
      {
        v19 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
        v20 = [v7 view];
        [v20 setBackgroundColor:v19];

        [v7 setModalPresentationStyle:6];
        [v7 setModalTransitionStyle:2];
        v17 = [(SHSheetRouter *)self rootViewController];
        v18 = v17;
        v12 = 1;
      }

      [v17 presentViewController:v7 animated:1 completion:0];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)activityPerformer:(id)a3 preparePresentationWithContext:(id)a4 completion:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(SHSheetRouter *)self rootViewController];
  v10 = [v9 presentingViewController];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [MEMORY[0x1E69DD2E8] keyWindow];
    v12 = [v13 rootViewController];
  }

  if ([v7 shouldPresentOverCurrentContext] && !objc_msgSend(v7, "isCloudSharing"))
  {
    v14 = [(SHSheetRouter *)self mainViewController];
  }

  else
  {
    v14 = v12;
  }

  v15 = v14;
  v16 = share_sheet_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v35 = v7;
    v36 = 2112;
    v37 = v15;
    _os_log_impl(&dword_18B359000, v16, OS_LOG_TYPE_DEFAULT, "Prepare presentation with context:%@ presentationViewController:%@", buf, 0x16u);
  }

  if ([v7 shouldDismissBeforePresentation])
  {
    v17 = [(SHSheetRouter *)self rootViewController];
    if ([v7 shouldPresentOverCurrentContext])
    {

      v18 = [(SHSheetRouter *)self rootViewController];

      v17 = 0;
      v12 = v18;
    }

    v19 = [(SHSheetRouter *)self secondaryNavigationController];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v17;
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
  v24 = v8;
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
    v29 = v12;
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

- (void)activityPerformer:(id)a3 presentViewController:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(SHSheetRouter *)self rootViewController];
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138412290;
    v39 = v7;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Present view controller for activity:%@", &v38, 0xCu);
  }

  v11 = [v9 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v7 popoverPresentationController];

    if (v13)
    {
      v14 = [v9 popoverPresentationController];
      v15 = [v14 barButtonItem];
      v16 = [v7 popoverPresentationController];
      [v16 setBarButtonItem:v15];

      v17 = [v9 popoverPresentationController];
      [v17 sourceRect];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [v7 popoverPresentationController];
      [v26 setSourceRect:{v19, v21, v23, v25}];

      v27 = [v9 popoverPresentationController];
      v28 = [v27 sourceView];
      v29 = [v7 popoverPresentationController];
      [v29 setSourceView:v28];
    }
  }

  v30 = [v7 view];
  [v30 setTintAdjustmentMode:1];

  v31 = [MEMORY[0x1E696AAE8] mainBundle];
  v32 = [v31 bundleIdentifier];
  v33 = [v32 isEqualToString:@"com.apple.mobilesafari"];

  v34 = [(SHSheetRouter *)self rootViewController];
  v35 = [v34 traitCollection];
  if ([v35 horizontalSizeClass] == 1 && v33)
  {
    v36 = [v7 modalPresentationStyle];

    if (v36 == 7)
    {
      [v7 setModalPresentationStyle:2];
    }
  }

  else
  {
  }

  v37 = [(SHSheetRouter *)self presentationViewController];
  [v37 presentViewController:v7 animated:1 completion:v8];
}

- (void)activityPerformCleanUpPresentation:(id)a3
{
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SHSheetRouter *)v4 activityPerformCleanUpPresentation:v5, v6, v7, v8, v9, v10, v11];
  }

  [(SHSheetRouter *)self setPresentationViewController:0];
}

- (void)activityPerformer:(id)a3 startListeningForDismissalTransitionWithCompletion:(id)a4
{
  if (!self->_listenForDismissalTransition)
  {
    v6 = a4;
    v7 = a3;
    v8 = share_sheet_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(SHSheetRouter *)v8 activityPerformer:v9 startListeningForDismissalTransitionWithCompletion:v10, v11, v12, v13, v14, v15];
    }

    self->_listenForDismissalTransition = 1;
    [(SHSheetRouter *)self setListenerCompletionHandler:v6];

    v16 = [v7 activity];

    v17 = [v16 activityViewController];
    [(SHSheetRouter *)self setCurrentViewControllerForActivityBeingListened:v17];

    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:self selector:sel__presentationControllerDismissalTransitionDidEndNotification_ name:*MEMORY[0x1E69DE2C8] object:0];
  }
}

- (void)activityPerformerStopListeningForDismissalTransition:(id)a3
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
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 removeObserver:self name:*MEMORY[0x1E69DE2C8] object:0];
  }
}

- (void)_presentationControllerDismissalTransitionDidEndNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DE2C0]];
  v7 = [v6 BOOLValue];

  if (self->_listenForDismissalTransition && v7 != 0)
  {
    v9 = [(SHSheetRouter *)self currentViewControllerForActivityBeingListened];
    v10 = [(SHSheetRouter *)self presentationViewController];
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (!v9 && v10)
    {
      if (v12 == 1)
      {
        v9 = [v10 presentedViewController];
      }

      else
      {
        v9 = 0;
      }
    }

    v13 = [v4 object];

    if (v13 == v9)
    {
      v14 = share_sheet_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&dword_18B359000, v14, OS_LOG_TYPE_DEFAULT, "Presentation controller dismissal detected for %@", &v16, 0xCu);
      }

      v15 = [(SHSheetRouter *)self listenerCompletionHandler];
      v15[2]();
    }
  }
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(SHSheetRouter *)self secondaryNavigationController];

  if (v9 == v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DD4F0]) initWithPresentedViewController:v7 presentingViewController:v8];
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 _referenceBounds];
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v16 = a3;
  v6 = [v16 disappearingViewController];

  v7 = v16;
  if (v6)
  {
    v8 = [v16 disappearingViewController];
    v9 = [(SHSheetRouter *)self collaborationParticipantsViewController];
    v10 = v9;
    if (v8 == v9)
    {
      v14 = [(SHSheetRouter *)self collaborationParticipantsDismissalHandler];

      if (v14)
      {
        [(SHSheetRouter *)self _didDismissCollaborationParticipantsViewController];
LABEL_10:
        v7 = v16;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v11 = [v16 disappearingViewController];
    v12 = [(SHSheetRouter *)self optionsViewController];
    v13 = v12;
    if (v11 == v12)
    {
      v15 = [(SHSheetRouter *)self optionsViewControllerDismissalHandler];

      v7 = v16;
      if (!v15)
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
  v3 = [(SHSheetRouter *)self mainViewController];
  v2 = [v3 presenter];
  [v2 handleClose];
}

- (BOOL)presentationBlockingViewShouldPresentCloseButton
{
  v2 = [(SHSheetRouter *)self mainViewController];
  v3 = [v2 effectivePresentationStyle] != 7;

  return v3;
}

- (void)layoutPresentationBlockingViewController
{
  v3 = [(SHSheetRouter *)self presentationBlockingViewController];
  v2 = [v3 view];
  [v2 setNeedsLayout];
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