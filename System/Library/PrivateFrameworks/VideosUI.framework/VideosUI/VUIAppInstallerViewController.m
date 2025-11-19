@interface VUIAppInstallerViewController
- (VUIAppInstallerViewController)init;
- (VUIAppInstallerViewController)initWithInstallable:(id)a3 punchoutURL:(id)a4;
- (VUIAppInstallerViewController)initWithVUIInstallable:(id)a3 punchoutURL:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginInstallingApp;
- (void)_dismissAppInstallWithCompletion:(id)a3;
- (void)_finishInstallationWithCompletion:(id)a3;
- (void)_initConfirmation;
- (void)_updateWithInstallProgress:(double)a3;
- (void)beginInstallingAppWithProgressHandler:(id)a3 completion:(id)a4;
- (void)loadView;
@end

@implementation VUIAppInstallerViewController

- (VUIAppInstallerViewController)init
{
  [MEMORY[0x1E695DF30] raise:@"VUIAppInstallerViewControllerInitException" format:@"-init is not supported. Use -initWithChannel:"];

  return 0;
}

- (VUIAppInstallerViewController)initWithInstallable:(id)a3 punchoutURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = VUIAppInstallerViewController;
    v9 = [(VUIAppInstallerViewController *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_installable, a3);
      v10->_displayAppStoreLink = 1;
      v11 = objc_alloc_init(VUIASDDialogObserver);
      [(VUIASDDialogObserver *)v11 setPresenterViewController:v10];
      [(VUIAppInstallerViewController *)v10 setDialogObserver:v11];
      [(VUIAppInstallerViewController *)v10 setPunchoutURL:v8];
    }

    self = v10;
    v12 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"installable must be non-nil"];
    v12 = 0;
  }

  return v12;
}

- (VUIAppInstallerViewController)initWithVUIInstallable:(id)a3 punchoutURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = VUIAppInstallerViewController;
    v9 = [(VUIAppInstallerViewController *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_vuiInstallable, a3);
      v10->_displayAppStoreLink = 1;
      v11 = objc_alloc_init(VUIASDDialogObserver);
      [(VUIASDDialogObserver *)v11 setPresenterViewController:v10];
      [(VUIAppInstallerViewController *)v10 setDialogObserver:v11];
      [(VUIAppInstallerViewController *)v10 setPunchoutURL:v8];
    }

    self = v10;
    v12 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"installable must be non-nil"];
    v12 = 0;
  }

  return v12;
}

- (void)_initConfirmation
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  v4 = [v3 allAppBundleIdentifiers];

  v5 = _os_feature_enabled_impl();
  v6 = &OBJC_IVAR___VUIAppInstallerViewController__installable;
  if (v5)
  {
    v6 = &OBJC_IVAR___VUIAppInstallerViewController__vuiInstallable;
  }

  [*(&self->super.super.super.super.isa + *v6) appBundleIDs];
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v7 = v99 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v98 objects:v103 count:16];
  if (v8)
  {
    v9 = *v99;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v99 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v4 containsObject:*(*(&v98 + 1) + 8 * v10)])
        {
          v11 = 1;
          goto LABEL_13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v98 objects:v103 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  NSLog(&cfstr_AppInstallatio.isa, v11);
  v82 = self->_confirmationTitle;
  v12 = self->_confirmationBody;
  v81 = self->_confirmationInstallButtonTitle;
  v78 = self->_localizedContentTitle;
  v13 = self->_updateBody;
  v80 = self->_updateTitle;
  if (_os_feature_enabled_impl())
  {
    [(VUIAppInstallerViewController *)self vuiInstallable];
  }

  else
  {
    [(VUIAppInstallerViewController *)self installable];
  }
  v14 = ;
  v79 = [v14 name];

  if (![(NSString *)v82 length])
  {
    v15 = [MEMORY[0x1E69DC938] currentDevice];
    v16 = [v15 userInterfaceIdiom] == 2;

    v17 = MEMORY[0x1E696AEC0];
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = v18;
    v20 = @"APP_GET_ALERT_TITLE_FORMAT";
    if (v16)
    {
      v20 = @"APP_INSTALL_ALERT_TITLE_FORMAT";
    }

    if (v11)
    {
      v21 = @"APP_UPDATE_ALERT_TITLE_FORMAT";
    }

    else
    {
      v21 = v20;
    }

    v22 = [v18 localizedStringForKey:v21];
    v23 = [v17 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v79];

    v82 = v23;
  }

  if ([(NSString *)v12 length])
  {
    v77 = v12;
  }

  else
  {
    if ([(NSString *)v78 length])
    {
      if (v11)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = +[VUILocalizationManager sharedInstance];
        v26 = [v25 localizedStringForKey:@"APP_UPDATE_ALERT_MESSAGE_FORMAT"];
        v77 = [v24 stringWithValidatedFormat:v26 validFormatSpecifiers:@"%@ %@" error:0, v78, v79];
      }

      else
      {
        v27 = [MEMORY[0x1E69DC938] currentDevice];
        v28 = [v27 userInterfaceIdiom] == 2;

        v29 = MEMORY[0x1E696AEC0];
        v30 = +[VUILocalizationManager sharedInstance];
        v25 = v30;
        if (v28)
        {
          [v30 localizedStringForKey:@"APP_INSTALL_ALERT_MESSAGE_FORMAT"];
        }

        else
        {
          [v30 localizedStringForKey:@"APP_INSTALL_ALERT_MESSAGE_FORMAT_IOS"];
        }
        v26 = ;
        v77 = [v29 stringWithValidatedFormat:v26 validFormatSpecifiers:@"%@ %@" error:0, v78, v79];
      }

      v12 = v25;
    }

    else
    {
      v77 = @" ";
    }
  }

  if (![(NSString *)v81 length])
  {
    v31 = [MEMORY[0x1E69DC938] currentDevice];
    v32 = [v31 userInterfaceIdiom] == 2;

    v33 = +[VUILocalizationManager sharedInstance];
    v34 = v33;
    if (v32)
    {
      if (v11)
      {
        [v33 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_UPDATE"];
      }

      else
      {
        [v33 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_INSTALL"];
      }
      v35 = ;

      v81 = v35;
    }

    else
    {
      if (v11)
      {
        v36 = @"APP_INSTALL_ACTION_TITLE_UPDATE";
      }

      else
      {
        v36 = @"APP_INSTALL_ACTION_TITLE_GET";
      }

      v37 = [v33 localizedStringForKey:v36];

      v81 = [v37 localizedUppercaseString];
      v34 = v37;
    }
  }

  if ([(NSString *)v13 length])
  {
    v76 = v13;
  }

  else
  {
    if ([(NSString *)v78 length])
    {
      v38 = MEMORY[0x1E696AEC0];
      v39 = +[VUILocalizationManager sharedInstance];
      v40 = v39;
      if (v11)
      {
        v41 = @"APP_INSTALL_PAGE_UPDATE_SUBTITLE_FORMAT";
      }

      else
      {
        v41 = @"APP_INSTALL_PAGE_SUBTITLE_FORMAT";
      }

      v42 = [(NSString *)v39 localizedStringForKey:v41];
      v76 = [v38 stringWithValidatedFormat:v42 validFormatSpecifiers:@"%@ %@" error:0, v78, v79];

      v13 = v40;
    }

    else
    {
      v76 = @" ";
    }
  }

  if (![(NSString *)v80 length])
  {
    v43 = MEMORY[0x1E696AEC0];
    v44 = +[VUILocalizationManager sharedInstance];
    v45 = [v44 localizedStringForKey:@"APP_INSTALL_PAGE_TITLE_FORMAT"];
    v46 = [v43 stringWithValidatedFormat:v45 validFormatSpecifiers:@"%@" error:0, v79];

    if (v11)
    {
      v47 = MEMORY[0x1E696AEC0];
      v48 = +[VUILocalizationManager sharedInstance];
      v49 = [v48 localizedStringForKey:@"APP_INSTALL_PAGE_UPDATE_TITLE_FORMAT"];
      v80 = [v47 stringWithValidatedFormat:v49 validFormatSpecifiers:@"%@" error:0, v79];
    }

    else
    {
      v80 = v46;
    }
  }

  v50 = _os_feature_enabled_impl();
  v51 = [VUIAppInstallConfirmationViewController alloc];
  v52 = v51;
  if (v50)
  {
    v53 = [(VUIAppInstallerViewController *)self vuiInstallable];
    v54 = [(VUIAppInstallConfirmationViewController *)v52 initWithVUIInstallable:v53];
    confirmationController = self->_confirmationController;
    self->_confirmationController = v54;
  }

  else
  {
    v56 = [(VUIAppInstallConfirmationViewController *)v51 initWithInstallable:self->_installable];
    v53 = self->_confirmationController;
    self->_confirmationController = v56;
  }

  v57 = [(VUIAppInstallerViewController *)self confirmationController];
  [v57 setTitle:v82];

  v58 = [(VUIAppInstallerViewController *)self confirmationController];
  [v58 setMessage:v77];

  v59 = [(VUIAppInstallerViewController *)self confirmationController];
  v60 = [v59 actionButton];
  [v60 setTitle:v81 forState:0];

  v61 = [(VUIAppInstallerViewController *)self confirmationController];
  [v61 setUpdateTitle:v80];

  v62 = [(VUIAppInstallerViewController *)self confirmationController];
  [v62 setUpdateMessage:v76];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke;
  aBlock[3] = &unk_1E8730F00;
  objc_copyWeak(&v96, &location);
  aBlock[4] = self;
  v63 = _Block_copy(aBlock);
  v64 = self->_confirmationController;
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_3;
  v93[3] = &unk_1E8736358;
  v65 = v63;
  v94 = v65;
  [(VUIAppInstallConfirmationViewController *)v64 setCancelationHandler:v93];
  v66 = self->_confirmationController;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_4;
  v91[3] = &unk_1E872E4B8;
  objc_copyWeak(&v92, &location);
  [(VUIAppInstallConfirmationViewController *)v66 setActionHandler:v91];
  v67 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v67 userInterfaceIdiom] == 2)
  {
    displayAppStoreLink = self->_displayAppStoreLink;

    if (displayAppStoreLink)
    {
      v89 = 0;
      from = 0;
      if (_os_feature_enabled_impl())
      {
        v69 = [(VUIAppInstallerViewController *)self vuiInstallable];
        objc_storeWeak(&v89, v69);
      }

      else
      {
        v69 = [(VUIAppInstallerViewController *)self installable];
        objc_storeWeak(&from, v69);
      }

      v70 = self->_confirmationController;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_5;
      v85[3] = &unk_1E8736380;
      v86 = v65;
      objc_copyWeak(&v87, &from);
      objc_copyWeak(&v88, &v89);
      [(VUIAppInstallConfirmationViewController *)v70 setAppStoreHandler:v85];
      objc_destroyWeak(&v88);
      objc_destroyWeak(&v87);

      objc_destroyWeak(&v89);
      objc_destroyWeak(&from);
    }
  }

  else
  {
  }

  v71 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v71 userInterfaceIdiom] == 2)
  {
    displaySecondaryLink = self->_displaySecondaryLink;

    if (displaySecondaryLink)
    {
      [(VUIAppInstallConfirmationViewController *)self->_confirmationController setSecondaryLinkTitle:self->_secondaryLinkTitle];
      v73 = self->_confirmationController;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_7;
      v83[3] = &unk_1E872E4B8;
      objc_copyWeak(&v84, &location);
      [(VUIAppInstallConfirmationViewController *)v73 setSecondaryLinkHandler:v83];
      objc_destroyWeak(&v84);
    }
  }

  else
  {
  }

  v102 = self->_confirmationController;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  [(VUIAppInstallerViewController *)self setViewControllers:v74];

  v75 = [(VUIAppInstallerViewController *)self navigationBar];
  [v75 _setHidesShadow:1];
  [v75 _setDisableBlurTinting:1];

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v96);
  objc_destroyWeak(&location);
}

void __50__VUIAppInstallerViewController__initConfirmation__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    NSLog(&cfstr_Vuiappinstalle_10.isa);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained confirmationController];
      v6 = [v5 presentingViewController];
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    NSLog(&cfstr_Vuiappinstalle_9.isa);
    v7 = objc_loadWeakRetained((a1 + 40));
    v4 = v7;
    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_2;
      v9[3] = &unk_1E872D768;
      v9[4] = v7;
      [v7 _dismissAppInstallWithCompletion:v9];
    }
  }

  v8 = [*(*(a1 + 32) + 1576) actionButton];
  [v8 setAccessibilityIdentifier:@"UIA.TV.Button.install.state=inactive"];
}

uint64_t __50__VUIAppInstallerViewController__initConfirmation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) completionBlock];
    v3[2](v3, 0, 0, 0);
  }

  [*(a1 + 32) setCompletionBlock:0];
  [*(a1 + 32) setProgressBlock:0];
  v4 = *(a1 + 32);

  return [v4 setConfirmationController:0];
}

void __50__VUIAppInstallerViewController__initConfirmation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    NSLog(&cfstr_Vuiappinstalle_11.isa);
    [v2 _beginInstallingApp];
    WeakRetained = v2;
  }
}

void __50__VUIAppInstallerViewController__initConfirmation__block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = dispatch_time(0, 300000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__VUIAppInstallerViewController__initConfirmation__block_invoke_6;
  v3[3] = &unk_1E872EFE8;
  objc_copyWeak(&v4, (a1 + 40));
  objc_copyWeak(&v5, (a1 + 48));
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __50__VUIAppInstallerViewController__initConfirmation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (_os_feature_enabled_impl())
  {
    v4 = v3;
  }

  else
  {
    v4 = WeakRetained;
  }

  v6 = [v4 appStoreURL];
  if (v6)
  {
    NSLog(&cfstr_Vuiappinstalle_12.isa, v6);
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 openURL:v6 options:MEMORY[0x1E695E0F8] completionHandler:0];
  }
}

void __50__VUIAppInstallerViewController__initConfirmation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained secondaryLinkHandler];
    v2[2]();

    WeakRetained = v3;
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = VUIAppInstallerViewController;
  [(VUIAppInstallerViewController *)&v7 loadView];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 2)
  {
    v5 = [(VUIAppInstallerViewController *)self view];
    v6 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [v5 setBackgroundColor:v6];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = VUIAppInstallerViewController;
  return [(VUIAppInstallerViewController *)&v6 supportedInterfaceOrientations];
}

- (void)beginInstallingAppWithProgressHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(VUIAppInstallerViewController *)self _dismissAppInstallWithCompletion:0];
  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    self->_progressBlock = 0;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    self->_completionBlock = 0;
  }

  v10 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  [v10 beginIgnoringAppLibraryChanges];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__VUIAppInstallerViewController_beginInstallingAppWithProgressHandler_completion___block_invoke;
  aBlock[3] = &unk_1E87363A8;
  v20 = v7;
  v11 = v7;
  v12 = _Block_copy(aBlock);
  v13 = self->_completionBlock;
  self->_completionBlock = v12;

  self->_lastProgress = 0.0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__VUIAppInstallerViewController_beginInstallingAppWithProgressHandler_completion___block_invoke_2;
  v17[3] = &unk_1E87363D0;
  v17[4] = self;
  v18 = v6;
  v14 = v6;
  v15 = _Block_copy(v17);
  v16 = self->_progressBlock;
  self->_progressBlock = v15;

  [(VUIAppInstallerViewController *)self _initConfirmation];
}

void __82__VUIAppInstallerViewController_beginInstallingAppWithProgressHandler_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4;
  v7 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  [v7 endIgnoringAppLibraryChanges];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3, v9);
  }
}

uint64_t __82__VUIAppInstallerViewController_beginInstallingAppWithProgressHandler_completion___block_invoke_2(uint64_t result, double a2)
{
  if (*(result + 40))
  {
    v3 = result;
    result = [*(result + 32) lastProgress];
    if ((v4.n128_f64[0] * 100.0) != (a2 * 100.0))
    {
      v5 = *(*(v3 + 40) + 16);
      v4.n128_f64[0] = a2;

      return v5(v4);
    }
  }

  return result;
}

- (void)_beginInstallingApp
{
  [(VUIAppInstallConfirmationViewController *)self->_confirmationController setPreInstallState];
  [(VUIASDDialogObserver *)self->_dialogObserver startListening];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke;
  aBlock[3] = &unk_1E87363F8;
  objc_copyWeak(&v10, &location);
  v3 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3;
  v7[3] = &unk_1E8736448;
  objc_copyWeak(&v8, &location);
  v4 = _Block_copy(v7);
  if (_os_feature_enabled_impl())
  {
    v5 = +[VUIAppInstaller defaultAppInstaller];
    [(VUIAppInstallerViewController *)self vuiInstallable];
  }

  else
  {
    v5 = [MEMORY[0x1E69E14C8] defaultAppInstaller];
    [(VUIAppInstallerViewController *)self installable];
  }
  v6 = ;
  [v5 installAppForInstallable:v6 sceneIdentifier:0 progressHandler:v3 completion:v4];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke(uint64_t a1, double a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_2;
  v3[3] = &unk_1E8730340;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = *&a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithInstallProgress:*(a1 + 40)];
  v2 = [WeakRetained progressBlock];

  if (v2)
  {
    v3 = [WeakRetained progressBlock];
    v3[2](*(a1 + 40));
  }
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained dialogObserver];

  if (v5)
  {
    v6 = [WeakRetained dialogObserver];
    [v6 stopListening];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_4;
  v8[3] = &unk_1E872D990;
  v8[4] = WeakRetained;
  v9 = v3;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_4(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_5;
  aBlock[3] = &unk_1E8736420;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v22 = v2;
  v3 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3_99;
  v19[3] = &unk_1E8733150;
  v4 = v3;
  v19[4] = *(a1 + 32);
  v20 = v4;
  v5 = _Block_copy(v19);
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUIAppInstallerViewController - fetch app link data", v18, 2u);
  }

  v7 = [*(a1 + 32) punchoutURL];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AF20]);
    v9 = [*(a1 + 32) punchoutURL];
    v10 = [v8 initWithURL:v9 resolvingAgainstBaseURL:0];

    v11 = [v10 scheme];
    v12 = [v11 lowercaseString];
    if ([v12 isEqualToString:@"https"])
    {
    }

    else
    {
      v13 = [v10 scheme];
      v14 = [v13 lowercaseString];
      v15 = [v14 isEqualToString:@"http"];

      if (!v15)
      {
        (*(v4 + 2))(v4, 0, *(a1 + 32));
        goto LABEL_10;
      }
    }

    v16 = MEMORY[0x1E69635C0];
    v17 = [*(a1 + 32) punchoutURL];
    [v16 afterAppLinksBecomeAvailableForURL:v17 limit:-1 performBlock:v5];

LABEL_10:
    goto LABEL_11;
  }

  (*(v4 + 2))(v4, 0, *(a1 + 32));
LABEL_11:
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIAppInstallerViewController - Posting app install finished.", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_95;
  v10[3] = &unk_1E872D9B8;
  objc_copyWeak(&v13, buf);
  v11 = *(a1 + 40);
  v9 = v5;
  v12 = v9;
  [v8 _finishInstallationWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_95(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained confirmationController];
  v4 = [v3 presentingViewController];

  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v4 == 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIAppInstallerViewController - Hiding app install display. Headless: %d", &buf, 8u);
  }

  objc_initWeak(&buf, WeakRetained);
  v6 = dispatch_time(0, 500000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_96;
  v7[3] = &unk_1E872F3A0;
  objc_copyWeak(&v10, &buf);
  v8 = a1[4];
  v9 = a1[5];
  v11 = v4 == 0;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_96(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_initWeak(&location, WeakRetained);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_2_97;
  v3[3] = &unk_1E872F3A0;
  objc_copyWeak(&v6, &location);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  [WeakRetained _dismissAppInstallWithCompletion:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_2_97(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 40) == 0;
  }

  v10 = WeakRetained;
  v4 = [WeakRetained progressBlock];

  if (v4)
  {
    v5 = [v10 progressBlock];
    v5[2](1.0);
  }

  v6 = [v10 completionBlock];

  if (v6)
  {
    v7 = [v10 completionBlock];
    v8 = v7;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v9 = *(a1 + 40);
    }

    (*(v7 + 16))(v7, v3, *(a1 + 56), v9);
  }
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3_99(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3_99_cold_1(v6, v7);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v13 = __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_100;
  v14 = &unk_1E8730538;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v15 = v6;
  v16 = v9;
  v17 = v8;
  v10 = MEMORY[0x1E696AF00];
  v11 = v6;
  if ([v10 isMainThread])
  {
    v13(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_dismissAppInstallWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(VUIAppInstallConfirmationViewController *)self->_confirmationController presentingViewController];
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__VUIAppInstallerViewController__dismissAppInstallWithCompletion___block_invoke;
    v7[3] = &unk_1E872D7E0;
    v8 = v4;
    [v5 dismissViewControllerAnimated:1 completion:v7];
  }

  else if (v4)
  {
    v4[2](v4);
  }

  confirmationController = self->_confirmationController;
  self->_confirmationController = 0;
}

uint64_t __66__VUIAppInstallerViewController__dismissAppInstallWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateWithInstallProgress:(double)a3
{
  if (a3 == 0.0)
  {
    [(VUIAppInstallConfirmationViewController *)self->_confirmationController setInstallingState];
  }

  v6 = [(VUIAppInstallConfirmationViewController *)self->_confirmationController lockup];
  v5 = [v6 installView];
  [v5 setInstallProgress:a3];
}

- (void)_finishInstallationWithCompletion:(id)a3
{
  confirmationController = self->_confirmationController;
  v4 = a3;
  v6 = [(VUIAppInstallConfirmationViewController *)confirmationController lockup];
  v5 = [v6 installView];
  [v5 finishInstallationWithCompletion:v4];
}

void __52__VUIAppInstallerViewController__beginInstallingApp__block_invoke_3_99_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIAppInstallerViewController::afterAppLinksBecomeAvailableForURL returned with error: %@", &v2, 0xCu);
}

@end