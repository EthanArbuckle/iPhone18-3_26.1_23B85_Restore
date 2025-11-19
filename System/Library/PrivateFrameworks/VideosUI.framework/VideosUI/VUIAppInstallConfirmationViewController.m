@interface VUIAppInstallConfirmationViewController
- (VUIAppInstallConfirmationViewController)init;
- (VUIAppInstallConfirmationViewController)initWithInstallable:(id)a3;
- (VUIAppInstallConfirmationViewController)initWithVUIInstallable:(id)a3;
- (id)_fileSizeWithDeviceSizes:(id)a3;
- (id)_namedRatingWithRatings:(id)a3;
- (void)_fetchAppInfo;
- (void)_fetchStoreInfoForAdamID:(id)a3 completion:(id)a4;
- (void)_handleAction;
- (void)_handleAppStore;
- (void)_handleCancel;
- (void)_handleSecondaryLink;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)setInstallingState;
- (void)setPreInstallState;
- (void)setSecondaryLinkTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation VUIAppInstallConfirmationViewController

- (VUIAppInstallConfirmationViewController)init
{
  [MEMORY[0x1E695DF30] raise:@"VUIAppInstallerViewControllerInitException" format:@"-init is not supported. Use -initWithChannel: title: message: placeholder:"];

  return 0;
}

- (VUIAppInstallConfirmationViewController)initWithInstallable:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = VUIAppInstallConfirmationViewController;
    v6 = [(VUIAppInstallConfirmationViewController *)&v12 init];
    if (v6)
    {
      v7 = [VUIAppInstallConfirmationView alloc];
      v8 = [(VUIAppInstallConfirmationView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      confirmationView = v6->_confirmationView;
      v6->_confirmationView = v8;

      objc_storeStrong(&v6->_installable, a3);
    }

    self = v6;
    v10 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"installable must be non-nil"];
    v10 = 0;
  }

  return v10;
}

- (VUIAppInstallConfirmationViewController)initWithVUIInstallable:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = VUIAppInstallConfirmationViewController;
    v6 = [(VUIAppInstallConfirmationViewController *)&v12 init];
    if (v6)
    {
      v7 = [VUIAppInstallConfirmationView alloc];
      v8 = [(VUIAppInstallConfirmationView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      confirmationView = v6->_confirmationView;
      v6->_confirmationView = v8;

      objc_storeStrong(&v6->_vuiInstallable, a3);
    }

    self = v6;
    v10 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"vuiInstallable must be non-nil"];
    v10 = 0;
  }

  return v10;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(VUIAppInstallConfirmationView *)self->_confirmationView setTitle:v4];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 2)
  {
    v7.receiver = self;
    v7.super_class = VUIAppInstallConfirmationViewController;
    [(VUIAppInstallConfirmationViewController *)&v7 setTitle:v4];
  }
}

- (void)setSecondaryLinkTitle:(id)a3
{
  confirmationView = self->_confirmationView;
  v4 = a3;
  v5 = [(VUIAppInstallConfirmationView *)confirmationView secondaryLinkButton];
  [v5 setTitle:v4 forState:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VUIAppInstallConfirmationViewController;
  [(VUIAppInstallConfirmationViewController *)&v11 viewDidAppear:a3];
  if (_os_feature_enabled_impl())
  {
    [(VUIAppInstallConfirmationViewController *)self vuiInstallable];
  }

  else
  {
    [(VUIAppInstallConfirmationViewController *)self installable];
  }
  v4 = ;
  v5 = [v4 appBundleIDs];

  v14 = @"appIds";
  v6 = [v5 componentsJoinedByString:{@", "}];
  v15[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v12 = @"pageDetails";
  v13 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = [VUIMetricsPageEventData createWithPageId:@"AppInstall" andPageType:@"AppInstall" andEventData:v8];

  v10 = +[VUIMetricsController sharedInstance];
  [v10 recordPage:v9];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];
  v6 = [(VUIAppInstallConfirmationView *)self->_confirmationView lockupView];

  if (v5 == v6)
  {
    v7 = [(VUIAppInstallConfirmationView *)self->_confirmationView actionButton];
    [v7 setEnabled:0];

    v8 = [(VUIAppInstallConfirmationView *)self->_confirmationView cancelButton];
    [v8 setEnabled:0];

    v9 = [(VUIAppInstallConfirmationView *)self->_confirmationView appStoreButton];
    [v9 setEnabled:0];
  }
}

- (void)setPreInstallState
{
  self->_state = 1;
  v3 = [(VUIAppInstallConfirmationViewController *)self lockup];
  v4 = [v3 installView];
  [v4 setWaiting];

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  confirmationView = self->_confirmationView;
  if (v6 == 2)
  {
    v8 = [(VUIAppInstallConfirmationView *)confirmationView lockupView];
    [v8 setCanFocus:1];

    v9 = self->_confirmationView;

    [(VUIAppInstallConfirmationView *)v9 setNeedsFocusUpdate];
  }

  else
  {
    v10 = [(VUIAppInstallConfirmationView *)confirmationView actionButton];
    [v10 setEnabled:0];

    v11 = [(VUIAppInstallConfirmationView *)self->_confirmationView cancelButton];
    [v11 setEnabled:0];

    v13 = [(VUIAppInstallConfirmationView *)self->_confirmationView actionButton];
    v12 = [MEMORY[0x1E69DC888] lightGrayColor];
    [v13 setBackgroundColor:v12];
  }
}

- (void)setInstallingState
{
  self->_state = 2;
  if ([(NSString *)self->_updateTitle length])
  {
    [(VUIAppInstallConfirmationView *)self->_confirmationView setTitle:self->_updateTitle];
  }

  if ([(NSString *)self->_updateMessage length])
  {
    [(VUIAppInstallConfirmationView *)self->_confirmationView setMessage:self->_updateMessage];
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 2)
  {
    barButtonItem = self->_barButtonItem;
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_DONE"];
    [(UIBarButtonItem *)barButtonItem setTitle:v7];

    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_INSTALLING"];

    v10 = [(VUIAppInstallConfirmationView *)self->_confirmationView actionButton];
    [v10 setTitle:v9 forStates:2];
  }

  v11 = [(VUIAppInstallConfirmationView *)self->_confirmationView actionButton];
  [v11 setAccessibilityIdentifier:@"UIA.TV.Button.install.state=installing"];
}

- (void)loadView
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    v5 = [(VUIAppInstallConfirmationView *)self->_confirmationView cancelButton];
    [v5 addTarget:self action:sel__handleCancel forControlEvents:0x2000];

    appStoreHandler = self->_appStoreHandler;
    v7 = [(VUIAppInstallConfirmationView *)self->_confirmationView appStoreButton];
    v8 = v7;
    if (appStoreHandler)
    {
      [v7 addTarget:self action:sel__handleAppStore forControlEvents:0x2000];
    }

    else
    {
      [v7 setHidden:1];
    }

    secondaryLinkHandler = self->_secondaryLinkHandler;
    v16 = [(VUIAppInstallConfirmationView *)self->_confirmationView secondaryLinkButton];
    v17 = v16;
    if (secondaryLinkHandler)
    {
      [v16 addTarget:self action:sel__handleSecondaryLink forControlEvents:0x2000];
    }

    else
    {
      [v16 setHidden:1];
    }
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E69DC708]);
    v10 = +[VUILocalizationManager sharedInstance];
    v11 = [v10 localizedStringForKey:@"APP_INSTALL_ACTION_TITLE_CLOSE"];
    v12 = [v9 initWithTitle:v11 style:2 target:self action:sel__handleCancel];
    barButtonItem = self->_barButtonItem;
    self->_barButtonItem = v12;

    v14 = [(VUIAppInstallConfirmationViewController *)self navigationItem];
    [v14 setRightBarButtonItem:self->_barButtonItem];
  }

  v18 = [(VUIAppInstallConfirmationView *)self->_confirmationView actionButton];
  [v18 addTarget:self action:sel__handleAction forControlEvents:0x2000];

  [(VUIAppLoadingViewController *)self setView:self->_confirmationView];
  [(VUIAppLoadingViewController *)self setLoading:1];

  [(VUIAppInstallConfirmationViewController *)self _fetchAppInfo];
}

- (void)_handleAction
{
  v6[3] = *MEMORY[0x1E69E9840];
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, a2);
  }

  v3 = +[VUIMetricsController sharedInstance];
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = @"install";
  v6[1] = @"button";
  v5[2] = @"actionType";
  v6[2] = @"install";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 recordClick:v4];
}

- (void)_handleCancel
{
  v6[3] = *MEMORY[0x1E69E9840];
  cancelationHandler = self->_cancelationHandler;
  if (cancelationHandler)
  {
    cancelationHandler[2](self->_cancelationHandler, self->_state);
  }

  v3 = +[VUIMetricsController sharedInstance];
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = @"cancel";
  v6[1] = @"button";
  v5[2] = @"actionType";
  v6[2] = @"cancel";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 recordClick:v4];
}

- (void)_handleAppStore
{
  v6[3] = *MEMORY[0x1E69E9840];
  appStoreHandler = self->_appStoreHandler;
  if (appStoreHandler)
  {
    appStoreHandler[2](self->_appStoreHandler, self->_state);
  }

  v3 = +[VUIMetricsController sharedInstance];
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = @"appStore";
  v6[1] = @"button";
  v5[2] = @"actionType";
  v6[2] = @"appStore";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v3 recordClick:v4];
}

- (void)_handleSecondaryLink
{
  secondaryLinkHandler = self->_secondaryLinkHandler;
  if (secondaryLinkHandler)
  {
    secondaryLinkHandler[2]();
  }
}

- (void)_fetchAppInfo
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  v5 = v4;

  +[VUIAppInstallConfirmationView iconSize];
  v23 = v7;
  v24 = v6;
  CGAffineTransformMakeScale(&v49, v5, v5);
  v19 = *&v49.c;
  v21 = *&v49.a;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  dispatch_group_enter(v8);
  if (_os_feature_enabled_impl())
  {
    [(VUIAppInstallConfirmationViewController *)self vuiInstallable];
  }

  else
  {
    [(VUIAppInstallConfirmationViewController *)self installable];
  }
  v9 = ;
  v10 = [v9 name];

  v49.a = 0.0;
  *&v49.b = &v49;
  *&v49.c = 0x3032000000;
  *&v49.d = __Block_byref_object_copy__4;
  *&v49.tx = __Block_byref_object_dispose__4;
  v49.ty = 0.0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__4;
  v47[4] = __Block_byref_object_dispose__4;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__4;
  v45[4] = __Block_byref_object_dispose__4;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__4;
  v43[4] = __Block_byref_object_dispose__4;
  v44 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke;
  aBlock[3] = &unk_1E872FD30;
  v42 = &v49;
  v11 = v8;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  v25 = vmlaq_n_f64(vmulq_n_f64(v20, v23), v22, v24);
  if (_os_feature_enabled_impl())
  {
    v13 = [(VUIAppInstallConfirmationViewController *)self vuiInstallable];
    [VUIAppIconImageService fetchIconForVUIInstallable:v13 size:v12 completion:*&v25];
  }

  else
  {
    v13 = [(VUIAppInstallConfirmationViewController *)self installable];
    [VUIAppIconImageService fetchIconForInstallable:v13 size:v12 completion:*&v25];
  }

  if (_os_feature_enabled_impl())
  {
    [(VUIAppInstallConfirmationViewController *)self vuiInstallable];
  }

  else
  {
    [(VUIAppInstallConfirmationViewController *)self installable];
  }
  v14 = ;
  v15 = [v14 appAdamIDs];
  v16 = [v15 firstObject];

  if (![(__CFString *)v16 length])
  {
    NSLog(&cfstr_Vuiappinstallc.isa);

    v16 = &stru_1F5DB25C0;
  }

  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke_2;
  v33[3] = &unk_1E872FD58;
  objc_copyWeak(&v38, &location);
  v35 = v45;
  v36 = v47;
  v37 = v43;
  v17 = v11;
  v34 = v17;
  [(VUIAppInstallConfirmationViewController *)self _fetchStoreInfoForAdamID:v16 completion:v33];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke_3;
  block[3] = &unk_1E872FD80;
  objc_copyWeak(&v32, &location);
  v27 = v10;
  v28 = &v49;
  v29 = v47;
  v30 = v45;
  v31 = v43;
  v18 = v10;
  dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v49, 8);
}

void __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke_2(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v10)
    {
      NSLog(&cfstr_Vuiappinstallc_0.isa, v10);
    }

    else
    {
      NSLog(&cfstr_Vuiappinstallc_1.isa);
      if (a2)
      {
        v12 = +[VUILocalizationManager sharedInstance];
        v13 = [v12 localizedStringForKey:@"APP_INSTALL_OFFERS_IN_APP_PURCHASES"];
        v14 = *(*(a1 + 40) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v17 = [WeakRetained _namedRatingWithRatings:v18];
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v17);
      if (isKindOfClass)
      {
      }

      if ([v9 length])
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __56__VUIAppInstallConfirmationViewController__fetchAppInfo__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained confirmationView];
    [v3 setAppIcon:*(*(*(a1 + 40) + 8) + 40)];

    v4 = [v8 confirmationView];
    [v4 setAppName:*(a1 + 32)];

    v5 = [v8 confirmationView];
    [v5 setAgeRating:*(*(*(a1 + 48) + 8) + 40)];

    v6 = [v8 confirmationView];
    [v6 setIAP:*(*(*(a1 + 56) + 8) + 40)];

    v7 = [v8 confirmationView];
    [v7 setAppSubtitle:*(*(*(a1 + 64) + 8) + 40)];

    [v8 setLoading:0];
    WeakRetained = v8;
  }
}

- (void)_fetchStoreInfoForAdamID:(id)a3 completion:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x1E698C7D8] vui_defaultBag];
  }

  else
  {
    [MEMORY[0x1E698C7D8] wlk_defaultBag];
  }
  v7 = ;
  if (v7 && (v8 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:0 clientIdentifier:@"com.tv.videosui" clientVersion:@"1" bag:v7]) != 0)
  {
    v9 = v8;
    v14[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v9 setItemIdentifiers:v10];

    v11 = [v9 perform];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__VUIAppInstallConfirmationViewController__fetchStoreInfoForAdamID_completion___block_invoke;
    v12[3] = &unk_1E872FDA8;
    v13 = v6;
    [v11 addFinishBlock:v12];
  }

  else
  {
    NSLog(&cfstr_Vuiappinstallc_2.isa);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    (*(v6 + 2))(v6, 0, 0, 0, v9);
  }
}

void __79__VUIAppInstallConfirmationViewController__fetchStoreInfoForAdamID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = [a2 responseDictionary];
  if (v11 || !v5)
  {
    NSLog(&cfstr_Vuiappinstallc_3.isa, v11);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = _os_feature_enabled_impl();
    v7 = off_1E8728190;
    if (!v6)
    {
      v7 = 0x1E69E14A8;
    }

    v8 = [objc_alloc(*v7) initWithDictionary:v5];
    [v8 hasInAppPurchases];
    v9 = [v8 contentRatingsBySystemDictionary];
    v10 = [v8 subtitle];

    if (*(a1 + 32))
    {
      NSLog(&cfstr_Vuiappinstallc_4.isa);
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (id)_fileSizeWithDeviceSizes:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  [MEMORY[0x1E698C8A8] thinnedAppVariantId];
  [MEMORY[0x1E698C8A8] compatibleProductType];
  v11[1] = v4 = 0;
  v11[2] = @"universal";
  while (1)
  {
    v5 = v11[v4];
    if (v5)
    {
      break;
    }

    if (++v4 == 3)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = [v3 objectForKey:v5];
LABEL_6:
  if ([v5 length])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  for (i = 2; i != -1; --i)
  {
  }

  return v8;
}

- (id)_namedRatingWithRatings:(id)a3
{
  v3 = [a3 objectForKey:@"appsApple"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"name"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end