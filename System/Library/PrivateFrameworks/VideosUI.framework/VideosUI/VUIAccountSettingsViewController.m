@interface VUIAccountSettingsViewController
- (NSNumber)_pendingSyncMySportsEnabled;
- (NSNumber)_syncMySportsEnabled;
- (VUIAccountSettingsViewController)init;
- (id)_accountSpecifiers;
- (id)_autoPlayNextVideoSpecifiers;
- (id)_clearHistorySpecifiers;
- (id)_createAxIdFromTableCell:(id)a3;
- (id)_dialogMetricsData;
- (id)_externalSpecifiers;
- (id)_mySportsSpecifiers;
- (id)_notificationGroupSpecifierIdentifier;
- (id)_notificationSpecifiers;
- (id)_signOutSpecifiers;
- (id)_sourcesSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_alertStyle;
- (void)_addPrivacyFooterToGroup:(id)a3;
- (void)_checkConnectedAppsWithDispatchGroup:(id)a3;
- (void)_checkExternalLinksWithDispatchGroup:(id)a3;
- (void)_clearPlayHistory:(id)a3;
- (void)_clearPlayHistoryHelper:(BOOL)a3 error:(id)a4;
- (void)_didSelectSpecifier:(id)a3 isManualSelection:(BOOL)a4;
- (void)_fetchMySportsSyncSettingWithCompletion:(id)a3;
- (void)_handleAccountSettingsEventWithAmsWebView:(id)a3 storeServicesBagKey:(id)a4 storeServicesUrl:(id)a5;
- (void)_handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5;
- (void)_handleNotificationsOff;
- (void)_navigateToSubsection:(int64_t)a3 clearSubsection:(BOOL)a4;
- (void)_parseUrl:(id)a3;
- (void)_promptForNotificationsAuth;
- (void)_recordDialogClick:(id)a3;
- (void)_resolveLandingBehavior;
- (void)_resolveSportsFavoriteFeatureEnabler;
- (void)_setSyncMySportsEnabled:(id)a3;
- (void)_showPrivacySheet:(id)a3;
- (void)_syncMySportsSettingDidChange:(id)a3;
- (void)nextEpisodeSettingDidChange;
- (void)recommendedItemsSettingDidChange;
- (void)setAuthenticationInProgress:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation VUIAccountSettingsViewController

- (VUIAccountSettingsViewController)init
{
  v22.receiver = self;
  v22.super_class = VUIAccountSettingsViewController;
  v2 = [(VUIAccountSettingsViewController *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_authenticationInProgress = 0;
    v2->_installedWatchListAppCount = 0;
    v2->_connectedWatchListAppCount = 0;
    v2->_initialSubsection = 0;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[_TtC8VideosUI24VUISportsFavoriteService UserConsentDidChangeNotification];
    [v4 addObserver:v3 selector:sel__syncMySportsSettingDidChange_ name:v5 object:0];

    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__VUIAccountSettingsViewController_init__block_invoke;
    aBlock[3] = &unk_1E8730668;
    objc_copyWeak(&v20, &location);
    v6 = _Block_copy(aBlock);
    if (_os_feature_enabled_impl())
    {
      [VUILocalNotificationService authorizationStatusWithCompletionHandler:v6];
    }

    else
    {
      v7 = [MEMORY[0x1E6983308] vuiNotificationCenter];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __40__VUIAccountSettingsViewController_init__block_invoke_3;
      v17[3] = &unk_1E872E530;
      v18 = v6;
      [v7 getNotificationSettingsWithCompletionHandler:v17];
    }

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__VUIAccountSettingsViewController_init__block_invoke_4;
    v15 = &unk_1E872F5D0;
    objc_copyWeak(&v16, &location);
    [(VUIAccountSettingsViewController *)v3 _fetchMySportsSyncSettingWithCompletion:&v12];
    v8 = objc_alloc(MEMORY[0x1E69E15A0]);
    v9 = [v8 initWithDelegate:{v3, v12, v13, v14, v15}];
    autoPlayToggleInterface = v3->_autoPlayToggleInterface;
    v3->_autoPlayToggleInterface = v9;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __40__VUIAccountSettingsViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__VUIAccountSettingsViewController_init__block_invoke_2;
  v3[3] = &unk_1E8730340;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __40__VUIAccountSettingsViewController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNotifAuthStatus:*(a1 + 40)];
  if (*(a1 + 40) != 2)
  {
    [WeakRetained reloadSpecifiers];
  }
}

uint64_t __40__VUIAccountSettingsViewController_init__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 authorizationStatus];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void __40__VUIAccountSettingsViewController_init__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v5 = v6[191];
    v6[191] = v4;

    [v6 reloadSpecifiers];
    WeakRetained = v6;
  }
}

- (void)_fetchMySportsSyncSettingWithCompletion:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke;
  block[3] = &unk_1E872D7E0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke(uint64_t a1)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8730690;
  v14 = v15;
  v13 = *(a1 + 32);
  v1 = _Block_copy(aBlock);
  v2 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_4;
  block[3] = &unk_1E872D7E0;
  v3 = v1;
  v11 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_5;
  v5[3] = &unk_1E87306B8;
  v7 = v8;
  v4 = v3;
  v6 = v4;
  [_TtC8VideosUI24VUISportsFavoriteService userConsentWithCompletionHandler:v5];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v15, 8);
}

void __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_3;
    v4[3] = &unk_1E872FFC0;
    v5 = *(a1 + 32);
    v6 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 40) + 8) + 24) = [a2 status] == 2;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_5_cold_1(a1 + 40, v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (+[VUIAuthenticationManager userHasActiveAccount])
  {
    v4 = [(VUIAccountSettingsViewController *)self _accountSpecifiers];
    [v3 addObjectsFromArray:v4];

    if (self->_installedWatchListAppCount > 0 || self->_initialSubsection == 1)
    {
      v5 = [(VUIAccountSettingsViewController *)self _sourcesSpecifiers];
      [v3 addObjectsFromArray:v5];
    }

    v6 = [(VUIAccountSettingsViewController *)self _externalSpecifiers];
    [v3 addObjectsFromArray:v6];

    v7 = [(VUIAccountSettingsViewController *)self _clearHistorySpecifiers];
    [v3 addObjectsFromArray:v7];

    if (_os_feature_enabled_impl())
    {
      v8 = [(VUIAccountSettingsViewController *)self _autoPlayNextVideoSpecifiers];
      [v3 addObjectsFromArray:v8];
    }

    if ([(VUIAccountSettingsViewController *)self notifAuthStatus]!= 2)
    {
      v9 = [(VUIAccountSettingsViewController *)self _notificationSpecifiers];
      [v3 addObjectsFromArray:v9];
    }

    v10 = [(VUIAccountSettingsViewController *)self sportsFavoriteFeatureEnabled];
    if ([v10 BOOLValue])
    {
      syncMySportsEnabled = self->__syncMySportsEnabled;

      if (!syncMySportsEnabled)
      {
LABEL_13:
        if (!+[VUIUtilities isStoreOrPressDemoMode](VUIUtilities, "isStoreOrPressDemoMode") && +[VUIUtilities allowsAccountModification])
        {
          v12 = [(VUIAccountSettingsViewController *)self _signOutSpecifiers];
          [v3 addObjectsFromArray:v12];
        }

        goto LABEL_19;
      }

      v10 = [(VUIAccountSettingsViewController *)self _mySportsSpecifiers];
      [v3 addObjectsFromArray:v10];
    }

    goto LABEL_13;
  }

  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [VUIAccountSettingsViewController specifiers];
  }

  [(VUIAccountSettingsViewController *)self _dismissViewController];
LABEL_19:
  [(VUIAccountSettingsViewController *)self setSpecifiers:v3];
  v14 = [v3 copy];

  return v14;
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = VUIAccountSettingsViewController;
  [(VUIAccountSettingsViewController *)&v26 viewDidLoad];
  v3 = [(VUIAccountSettingsViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VUIAccountSettingsViewController *)self navigationController];
  [v5 setNavigationBarHidden:0];

  v6 = [(VUIAccountSettingsViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 setPrefersLargeTitles:0];

  v8 = [(VUIAccountSettingsViewController *)self navigationItem];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SETTINGS_ACCOUNT"];
  [v8 setTitle:v10];

  if (MEMORY[0x1E6913230]())
  {
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:0];
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v11 style:0 target:self action:sel__dismissViewController];
    v13 = [(VUIAccountSettingsViewController *)self navigationItem];
    [v13 setLeftBarButtonItem:0];

    v14 = [(VUIAccountSettingsViewController *)self navigationItem];
    [v14 setRightBarButtonItem:v12];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E69DC708]);
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = [v16 localizedStringForKey:@"DONE"];
    v11 = [v15 initWithTitle:v17 style:2 target:self action:sel__dismissViewController];

    v18 = [(VUIAccountSettingsViewController *)self navigationItem];
    [v18 setLeftBarButtonItem:0];

    v19 = [(VUIAccountSettingsViewController *)self navigationItem];
    [v19 setRightBarButtonItem:v11];

    v20 = [MEMORY[0x1E69DCCC0] appearance];
    v21 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [v20 setBarTintColor:v21];

    v12 = [MEMORY[0x1E69DCCC0] appearance];
    v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [v12 setShadowImage:v14];
  }

  v22 = [MEMORY[0x1E69DC708] appearance];
  v23 = [MEMORY[0x1E69DC888] vui_keyColor];
  [v22 setTintColor:v23];

  v24 = +[VUIMetricsController sharedInstance];
  v25 = [(VUIAccountSettingsViewController *)self _dialogMetricsData];
  [v24 recordDialog:v25];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUIAccountSettingsViewController;
  [(VUIAccountSettingsViewController *)&v4 viewWillAppear:a3];
  [(VUIAccountSettingsViewController *)self _resolveLandingBehavior];
  [(VUIAccountSettingsViewController *)self _resolveSportsFavoriteFeatureEnabler];
}

- (id)_accountSpecifiers
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"AccountGroupSpecifier"];
  v4 = +[VUIAuthenticationManager creditsString];
  if ([v4 length])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"SETTINGS_CREDIT"];
    v8 = [v5 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v4];

    [v3 setProperty:v8 forKey:*MEMORY[0x1E69C5900]];
    [v3 setProperty:&unk_1F5E5CF30 forKey:*MEMORY[0x1E69C58D0]];
  }

  v9 = MEMORY[0x1E69C5748];
  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:@"SETTINGS_ACCOUNT"];
  v12 = [v9 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  [v12 setProperty:v13 forKey:*MEMORY[0x1E69C5988]];

  v14 = +[VUIAuthenticationManager userFullName];
  [v12 setProperty:v14 forKey:*MEMORY[0x1E69C59A8]];

  v15 = +[VUIAuthenticationManager userAccountName];
  [v12 setProperty:v15 forKey:*MEMORY[0x1E69C59A0]];

  v16 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v12 setProperty:v16 forKey:*MEMORY[0x1E69C5998]];

  [v12 setProperty:@"accountName" forKey:*MEMORY[0x1E69C5918]];
  [v12 setControllerLoadAction:sel__didSelectSpecifier_];
  v19[0] = v3;
  v19[1] = v12;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  return v17;
}

- (id)_sourcesSpecifiers
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C5748];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_SOURCES"];
  v6 = [v3 groupSpecifierWithID:@"SourcesGroupSpecifier" name:v5];

  v7 = MEMORY[0x1E69C5748];
  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"SETTINGS_CONNECTED_APPS"];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel__getConnectedAppsCountString detail:objc_opt_class() cell:2 edit:0];

  [v10 setControllerLoadAction:sel__didSelectSpecifier_];
  [v10 setProperty:@"connectedApps" forKey:*MEMORY[0x1E69C5918]];
  v13[0] = v6;
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

- (id)_externalSpecifiers
{
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"ExternalGroupSpecifier"];
  v4 = MEMORY[0x1E69C5748];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"SETTINGS_MANAGE_SUBSCRIPTIONS"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

  v8 = MEMORY[0x1E69C5748];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SETTINGS_REDEEM_GIFT_CARD_OR_CODE"];
  v11 = [v8 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

  v12 = objc_opt_class();
  v13 = *MEMORY[0x1E69C5860];
  [v7 setProperty:v12 forKey:*MEMORY[0x1E69C5860]];
  [v11 setProperty:objc_opt_class() forKey:v13];
  v14 = *MEMORY[0x1E69DE3D0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  v16 = *MEMORY[0x1E69C5988];
  [v7 setProperty:v15 forKey:*MEMORY[0x1E69C5988]];

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v30 = v16;
  [v11 setProperty:v17 forKey:v16];

  [v7 setButtonAction:sel__didSelectSpecifier_];
  [v11 setButtonAction:sel__didSelectSpecifier_];
  v18 = *MEMORY[0x1E69C5918];
  [v7 setProperty:@"manageSubscriptions" forKey:*MEMORY[0x1E69C5918]];
  [v11 setProperty:@"redeemGiftCardOrCode" forKey:v18];
  v19 = objc_alloc(MEMORY[0x1E695DF70]);
  v31 = v3;
  v32[0] = v3;
  v32[1] = v7;
  v32[2] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v21 = [v19 initWithArray:v20];

  if (self->_addFundsUrl)
  {
    v22 = MEMORY[0x1E69C5748];
    v23 = +[VUILocalizationManager sharedInstance];
    [v23 localizedStringForKey:@"SETTINGS_ADD_MONEY_TO_ACCOUNT"];
    v25 = v24 = v13;
    v26 = [v22 preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

    [v26 setProperty:objc_opt_class() forKey:v24];
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v26 setProperty:v27 forKey:v30];

    [v26 setButtonAction:sel__didSelectSpecifier_];
    [v26 setProperty:@"addMoneyToAccount" forKey:v18];
    [v21 addObject:v26];
  }

  v28 = [v21 copy];

  return v28;
}

- (id)_clearHistorySpecifiers
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"ClearHistoryGroupSpecifier"];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_CLEAR_HISTORY_FOOTER"];

  v6 = MEMORY[0x1E696AEC0];
  v7 = +[VUIAuthenticationManager userAccountName];
  v8 = [v6 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v7];

  [v3 setProperty:v8 forKey:*MEMORY[0x1E69C5900]];
  v9 = MEMORY[0x1E69C5748];
  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:@"SETTINGS_CLEAR_HISTORY"];
  v12 = [v9 deleteButtonSpecifierWithName:v11 target:self action:sel__clearPlayHistory_];

  [v12 setProperty:@"clearPlayHistory" forKey:*MEMORY[0x1E69C5918]];
  v15[0] = v3;
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

- (id)_autoPlayNextVideoSpecifiers
{
  v29[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C5748];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_AUTO_PLAY"];
  v6 = [v3 groupSpecifierWithID:@"AutoPlayNextVideoSpecifier" name:v5];

  v7 = +[VUILocalizationManager sharedInstance];
  v28 = [v7 localizedStringForKey:@"SETTINGS_AUTO_PLAY_FOOTER"];

  [v6 setProperty:v28 forKey:*MEMORY[0x1E69C5900]];
  v8 = MEMORY[0x1E69C5748];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SETTINGS_AUTO_PLAY_NEXT_EPISODE"];
  v11 = [v8 preferenceSpecifierNamed:v10 target:self->_autoPlayToggleInterface set:sel_setIsNextEpisodeSettingEnabled_ get:sel_isNextEpisodeSettingEnabled detail:0 cell:6 edit:0];

  v12 = *MEMORY[0x1E69DE3D0];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  v14 = *MEMORY[0x1E69C5988];
  [v11 setProperty:v13 forKey:*MEMORY[0x1E69C5988]];

  v15 = *MEMORY[0x1E69C5918];
  [v11 setProperty:@"autoPlayNextVideo" forKey:*MEMORY[0x1E69C5918]];
  v16 = *MEMORY[0x1E69C5820];
  [v11 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69C5820]];
  autoPlayNextEpisodeSpecifier = self->_autoPlayNextEpisodeSpecifier;
  self->_autoPlayNextEpisodeSpecifier = v11;
  v18 = v11;

  v19 = MEMORY[0x1E69C5748];
  v20 = +[VUILocalizationManager sharedInstance];
  v21 = [v20 localizedStringForKey:@"SETTINGS_AUTO_PLAY_RECOMMENDED_ITEMS"];
  v22 = [v19 preferenceSpecifierNamed:v21 target:self->_autoPlayToggleInterface set:sel_setIsRecommendedItemsSettingEnabled_ get:sel_isRecommendedItemsSettingEnabled detail:0 cell:6 edit:0];

  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v22 setProperty:v23 forKey:v14];

  [v22 setProperty:@"autoPlayNextVideo" forKey:v15];
  [v22 setProperty:MEMORY[0x1E695E118] forKey:v16];
  autoPlayRecommendedItemsSpecifier = self->_autoPlayRecommendedItemsSpecifier;
  self->_autoPlayRecommendedItemsSpecifier = v22;
  v25 = v22;

  v29[0] = v6;
  v29[1] = v18;
  v29[2] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];

  return v26;
}

- (id)_notificationSpecifiers
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"NotificationGroupSpecifier"];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_ALLOW_NOTIFICATIONS_FOOTER"];

  [v3 setProperty:v5 forKey:*MEMORY[0x1E69C5900]];
  v6 = MEMORY[0x1E69C5748];
  v7 = [(VUIAccountSettingsViewController *)self _notificationGroupSpecifierIdentifier];
  v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v8 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  [v8 setProperty:v9 forKey:*MEMORY[0x1E69C5988]];

  [v8 setButtonAction:sel__didSelectSpecifier_];
  v12[0] = v3;
  v12[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (id)_mySportsSpecifiers
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C5748];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_SPORTS"];
  v6 = [v3 groupSpecifierWithID:@"SportsGroupSpecifier" name:v5];

  v7 = MEMORY[0x1E69C5748];
  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"SETTINGS_SPORTS_SYNC_MY_SPORTS"];
  v10 = [v7 preferenceSpecifierNamed:v9 target:self set:sel__setSyncMySportsEnabled_ get:sel__syncMySportsEnabled detail:0 cell:6 edit:0];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  [v10 setProperty:v11 forKey:*MEMORY[0x1E69C5988]];

  [v10 setProperty:@"syncMySports" forKey:*MEMORY[0x1E69C5918]];
  syncMySportsSpecifier = self->_syncMySportsSpecifier;
  self->_syncMySportsSpecifier = v10;
  v13 = v10;

  [(VUIAccountSettingsViewController *)self _addPrivacyFooterToGroup:v6];
  v16[0] = v6;
  v16[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  return v14;
}

- (void)_addPrivacyFooterToGroup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58D8]];

  v7 = +[VUILocalizationManager sharedInstance];
  v15 = [v7 localizedStringForKey:@"SPORTS_PRIVACY_FOOTER_FORMAT"];

  v8 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:@"com.apple.onboarding.mysports"];
  v9 = [v8 flow];
  v10 = [v9 localizedButtonTitle];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v15, v10];
  [v4 setProperty:v11 forKey:*MEMORY[0x1E69C58F8]];
  v17.location = [v11 rangeOfString:v10];
  v12 = NSStringFromRange(v17);
  [v4 setProperty:v12 forKey:*MEMORY[0x1E69C58E8]];

  v13 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  [v4 setProperty:v13 forKey:*MEMORY[0x1E69C58F0]];

  v14 = NSStringFromSelector(sel__showPrivacySheet_);
  [v4 setProperty:v14 forKey:*MEMORY[0x1E69C58E0]];
}

- (void)_showPrivacySheet:(id)a3
{
  v4 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mysports"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (id)_signOutSpecifiers
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C5748] groupSpecifierWithID:@"SignOutGroupSpecifier"];
  v4 = MEMORY[0x1E69C5748];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"SETTINGS_SIGN_OUT"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x1E69C5860]];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DE3D0]];
  [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5988]];

  [v7 setButtonAction:sel__didSelectSpecifier_];
  [v7 setProperty:@"signOut" forKey:*MEMORY[0x1E69C5918]];
  v11[0] = v3;
  v11[1] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  return v9;
}

- (void)nextEpisodeSettingDidChange
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __63__VUIAccountSettingsViewController_nextEpisodeSettingDidChange__block_invoke;
  v6 = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  v2 = &v3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __63__VUIAccountSettingsViewController_nextEpisodeSettingDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifier:WeakRetained[187]];
    WeakRetained = v2;
  }
}

- (void)recommendedItemsSettingDidChange
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __68__VUIAccountSettingsViewController_recommendedItemsSettingDidChange__block_invoke;
  v6 = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  v2 = &v3;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(v2);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __68__VUIAccountSettingsViewController_recommendedItemsSettingDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifier:WeakRetained[188]];
    WeakRetained = v2;
  }
}

- (void)_didSelectSpecifier:(id)a3 isManualSelection:(BOOL)a4
{
  v4 = a4;
  v51[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:@"accountName"];

  if (v8)
  {
    [(VUIAccountSettingsViewController *)self _handleAccountSettingsEventWithAmsWebView:kVUIBagKeyModifyAccountURL storeServicesBagKey:kVUIBagKeyModifyAccountURL storeServicesUrl:0];
    v50[0] = @"targetId";
    v50[1] = @"targetType";
    v51[0] = @"account";
    v51[1] = @"menuItem";
    v50[2] = @"actionType";
    v51[2] = @"account";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    [(VUIAccountSettingsViewController *)self _recordDialogClick:v9];
  }

  else
  {
    v10 = [v6 identifier];
    v11 = [v10 isEqualToString:@"connectedApps"];

    if (v11)
    {
      v12 = objc_alloc_init(VUIAccountSettingsConnectedAppsViewController);
      [(VUIAccountSettingsConnectedAppsViewController *)v12 setShowsDoneButton:v4 ^ 1];
      v13 = [(VUIAccountSettingsViewController *)self navigationController];
      [v13 pushViewController:v12 animated:v4];

      v48[0] = @"targetId";
      v48[1] = @"targetType";
      v49[0] = @"connectedApps";
      v49[1] = @"menuItem";
      v48[2] = @"actionType";
      v49[2] = @"connectedApps";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
      [(VUIAccountSettingsViewController *)self _recordDialogClick:v14];
    }

    else
    {
      v15 = [v6 identifier];
      v16 = [v15 isEqualToString:@"manageSubscriptions"];

      if (v16)
      {
        [(VUIAccountSettingsViewController *)self _handleAccountSettingsEventWithAmsWebView:kVUIBagKeyManageSubscriptionsURL];
        v46[0] = @"targetId";
        v46[1] = @"targetType";
        v47[0] = @"manageSubscriptions";
        v47[1] = @"menuItem";
        v46[2] = @"actionType";
        v47[2] = @"manageSubscriptions";
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
        [(VUIAccountSettingsViewController *)self _recordDialogClick:v17];
      }

      else
      {
        v18 = [v6 identifier];
        v19 = [v18 isEqualToString:@"redeemGiftCardOrCode"];

        if (v19)
        {
          v20 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E697BAD0]];
          [(VUIAccountSettingsViewController *)self _handleAccountSettingsEventWithAmsWebView:kVUIBagKeyRedeemCodeURL storeServicesBagKey:0 storeServicesUrl:v20];
          v44[0] = @"targetId";
          v44[1] = @"targetType";
          v45[0] = @"giftCard";
          v45[1] = @"menuItem";
          v44[2] = @"actionType";
          v45[2] = @"giftCard";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
          [(VUIAccountSettingsViewController *)self _recordDialogClick:v21];
        }

        else
        {
          v22 = [v6 identifier];
          v23 = [v22 isEqualToString:@"addMoneyToAccount"];

          if (v23)
          {
            [(VUIAccountSettingsViewController *)self _handleAccountSettingsEventWithAmsWebView:kVUIBagKeyAddFundsURL storeServicesBagKey:0 storeServicesUrl:self->_addFundsUrl];
            v42[0] = @"targetId";
            v42[1] = @"targetType";
            v43[0] = @"addFunds";
            v43[1] = @"menuItem";
            v42[2] = @"actionType";
            v43[2] = @"addFunds";
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
            [(VUIAccountSettingsViewController *)self _recordDialogClick:v24];
          }

          else
          {
            v25 = [v6 identifier];
            v26 = [v25 isEqualToString:@"signOut"];

            if (v26)
            {
              [(VUIAccountSettingsViewController *)self setAuthenticationInProgress:1];
              objc_initWeak(&location, self);
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke;
              v37[3] = &unk_1E87306E0;
              objc_copyWeak(&v38, &location);
              [VUIAuthenticationManager signOutUserWithCompletionHandler:v37];
              v40[0] = @"targetId";
              v40[1] = @"targetType";
              v41[0] = @"signOut";
              v41[1] = @"menuItem";
              v40[2] = @"actionType";
              v41[2] = @"signOut";
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
              [(VUIAccountSettingsViewController *)self _recordDialogClick:v27];

              objc_destroyWeak(&v38);
              objc_destroyWeak(&location);
            }

            else
            {
              v28 = [v6 identifier];
              v29 = [(VUIAccountSettingsViewController *)self _notificationGroupSpecifierIdentifier];
              v30 = [v28 isEqualToString:v29];

              if (v30)
              {
                objc_initWeak(&location, self);
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_3;
                aBlock[3] = &unk_1E8730668;
                objc_copyWeak(&v36, &location);
                v31 = _Block_copy(aBlock);
                if (_os_feature_enabled_impl())
                {
                  [VUILocalNotificationService authorizationStatusWithCompletionHandler:v31];
                }

                else
                {
                  v32 = [MEMORY[0x1E6983308] vuiNotificationCenter];
                  v33[0] = MEMORY[0x1E69E9820];
                  v33[1] = 3221225472;
                  v33[2] = __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_5;
                  v33[3] = &unk_1E872E530;
                  v34 = v31;
                  [v32 getNotificationSettingsWithCompletionHandler:v33];
                }

                objc_destroyWeak(&v36);
                objc_destroyWeak(&location);
              }
            }
          }
        }
      }
    }
  }
}

void __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_2;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v3);
  }
}

void __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAuthenticationInProgress:0];
  [WeakRetained _dismissViewController];
}

void __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_3(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_4;
  v3[3] = &unk_1E8730340;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    v4 = WeakRetained;
    [WeakRetained _handleNotificationsOff];
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = WeakRetained;
    [WeakRetained _promptForNotificationsAuth];
  }

  WeakRetained = v4;
LABEL_6:
}

uint64_t __74__VUIAccountSettingsViewController__didSelectSpecifier_isManualSelection___block_invoke_5(uint64_t a1, void *a2)
{
  [a2 authorizationStatus];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_clearPlayHistoryHelper:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
  }

  else
  {
    v7 = &stru_1F5DB25C0;
  }

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - Delete-all! %@ %@", &v10, 0x16u);
  }

  if (v4)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_51);
  }
}

void __66__VUIAccountSettingsViewController__clearPlayHistoryHelper_error___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"VUIClearPlayHistoryNotification" object:0];
}

- (void)_clearPlayHistory:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = +[VUIAuthenticationManager userAccountName];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"SETTINGS_CLEAR_HISTORY_PROMPT_FORMAT_CONTINUE_WATCHING"];

  v7 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v4];
  v8 = 0;
  if ([(VUIAccountSettingsViewController *)self _alertStyle]== 1)
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v8 = [v9 localizedStringForKey:@"SETTINGS_CLEAR_HISTORY_TITLE"];
  }

  v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v7 preferredStyle:{-[VUIAccountSettingsViewController _alertStyle](self, "_alertStyle")}];
  v11 = MEMORY[0x1E69DC648];
  v12 = +[VUILocalizationManager sharedInstance];
  v13 = [v12 localizedStringForKey:@"SETTINGS_CLEAR_HISTORY"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke;
  v20[3] = &unk_1E8730730;
  v20[4] = self;
  v14 = [v11 actionWithTitle:v13 style:2 handler:v20];

  v15 = MEMORY[0x1E69DC648];
  v16 = +[VUILocalizationManager sharedInstance];
  v17 = [v16 localizedStringForKey:@"CANCEL"];
  v18 = [v15 actionWithTitle:v17 style:1 handler:&__block_literal_global_309];

  [v10 addAction:v14];
  [v10 addAction:v18];
  [(VUIAccountSettingsViewController *)self presentViewController:v10 animated:1 completion:0];
  v21[0] = @"targetId";
  v21[1] = @"targetType";
  v22[0] = @"clearPlayHistory";
  v22[1] = @"menuItem";
  v21[2] = @"actionType";
  v22[2] = @"clearPlayHistory";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [(VUIAccountSettingsViewController *)self _recordDialogClick:v19];
}

void __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  if (_os_feature_enabled_impl())
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"clearPlayHistory"];
    v5 = [v4 copy];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke_2;
    v9[3] = &unk_1E8730708;
    objc_copyWeak(&v10, &location);
    [_TtC8VideosUI32VUIUserCloudStoreSettingsService updateWithSettings:v5 completionHandler:v9];

    objc_destroyWeak(&v10);
  }

  else
  {
    v6 = MEMORY[0x1E69E15C8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke_3;
    v7[3] = &unk_1E87306E0;
    objc_copyWeak(&v8, &location);
    [v6 deleteAllHistoryWithCompletion:v7];
    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

void __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearPlayHistoryHelper:v4 == 0 error:v4];
}

void __54__VUIAccountSettingsViewController__clearPlayHistory___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearPlayHistoryHelper:a2 error:v5];
}

- (void)_syncMySportsSettingDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->__pendingSyncMySportsEnabled);

  if (!WeakRetained)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke;
    v5[3] = &unk_1E872E4B8;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 194) invalidate];
    v4 = MEMORY[0x1E695DFF0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke_2;
    v7[3] = &unk_1E87303B8;
    objc_copyWeak(&v8, (a1 + 32));
    v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v7 block:0.5];
    v6 = v3[194];
    v3[194] = v5;

    objc_destroyWeak(&v8);
  }
}

void __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke_3;
    v5[3] = &unk_1E872F5D0;
    objc_copyWeak(&v6, (a1 + 32));
    [WeakRetained _fetchMySportsSyncSettingWithCompletion:v5];
    objc_destroyWeak(&v6);
  }
}

void __66__VUIAccountSettingsViewController__syncMySportsSettingDidChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v5 = v6[191];
    v6[191] = v4;

    [v6 reloadSpecifier:v6[186]];
    WeakRetained = v6;
  }
}

- (NSNumber)_syncMySportsEnabled
{
  syncMySportsEnabled = self->__syncMySportsEnabled;
  if (!syncMySportsEnabled)
  {
    v4 = dispatch_semaphore_create(0);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __56__VUIAccountSettingsViewController__syncMySportsEnabled__block_invoke;
    v14 = &unk_1E8730778;
    v16 = &v17;
    v5 = v4;
    v15 = v5;
    [(VUIAccountSettingsViewController *)self _fetchMySportsSyncSettingWithCompletion:&v11];
    v6 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v7 = WLKSystemLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [VUIAccountSettingsViewController _syncMySportsEnabled];
      }
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{*(v18 + 24), v11, v12, v13, v14}];
    v9 = self->__syncMySportsEnabled;
    self->__syncMySportsEnabled = v8;

    _Block_object_dispose(&v17, 8);
    syncMySportsEnabled = self->__syncMySportsEnabled;
  }

  return syncMySportsEnabled;
}

- (void)_setSyncMySportsEnabled:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->__syncMySportsEnabled, a3);
  objc_storeWeak(&self->__pendingSyncMySportsEnabled, v5);
  [(NSTimer *)self->_syncMySportsDebouncer invalidate];
  [(NSTimer *)self->_syncMySportsNotifyDebouncer invalidate];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke;
  v9[3] = &unk_1E87303B8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:1.0];
  syncMySportsDebouncer = self->_syncMySportsDebouncer;
  self->_syncMySportsDebouncer = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [_TtC8VideosUI26VUIUserConsentModification alloc];
    v6 = [WeakRetained _syncMySportsEnabled];
    if ([v6 BOOLValue])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(VUIUserConsentModification *)v5 initWithStatus:v7];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke_2;
    v9[3] = &unk_1E87307A0;
    objc_copyWeak(&v10, (a1 + 32));
    [_TtC8VideosUI24VUISportsFavoriteService modifyUserConsentWithModification:v8 completionHandler:v9];
    objc_destroyWeak(&v10);
  }
}

void __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 192, 0);
    v7 = WLKSystemLogObject();
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke_2_cold_1(v4);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9[0] = 0;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Settings: Successfully set sports syncing opt in status. Reloading specifier.", v9, 2u);
      }

      [v6 _syncMySportsSettingDidChange:0];
    }
  }
}

- (void)_resolveSportsFavoriteFeatureEnabler
{
  v3 = [(VUIAccountSettingsViewController *)self sportsFavoriteFeatureEnabled];

  if (!v3)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v4, &location);
    WLKFetchIsSportsFavoritesEnabled();
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __72__VUIAccountSettingsViewController__resolveSportsFavoriteFeatureEnabler__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72__VUIAccountSettingsViewController__resolveSportsFavoriteFeatureEnabler__block_invoke_cold_1(v5);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__VUIAccountSettingsViewController__resolveSportsFavoriteFeatureEnabler__block_invoke_313;
    v9[3] = &unk_1E872ECA0;
    v9[4] = WeakRetained;
    v10 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

uint64_t __72__VUIAccountSettingsViewController__resolveSportsFavoriteFeatureEnabler__block_invoke_313(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1520);
  *(v3 + 1520) = v2;

  v5 = *(a1 + 32);

  return [v5 reloadSpecifiers];
}

- (void)_resolveLandingBehavior
{
  if ([(VUIAccountSettingsViewController *)self initialSubsection])
  {
    v3 = [(VUIAccountSettingsViewController *)self initialSubsection];

    [(VUIAccountSettingsViewController *)self _navigateToSubsection:v3 clearSubsection:1];
  }

  else
  {
    v4 = dispatch_group_create();
    [(VUIAccountSettingsViewController *)self _checkConnectedAppsWithDispatchGroup:v4];
    [(VUIAccountSettingsViewController *)self _checkExternalLinksWithDispatchGroup:v4];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__VUIAccountSettingsViewController__resolveLandingBehavior__block_invoke;
    v5[3] = &unk_1E872E4B8;
    objc_copyWeak(&v6, &location);
    dispatch_group_notify(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __59__VUIAccountSettingsViewController__resolveLandingBehavior__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)_checkConnectedAppsWithDispatchGroup:(id)a3
{
  v4 = a3;
  dispatch_group_enter(v4);
  [(VUIAccountSettingsViewController *)self setInstalledWatchListAppCount:0];
  [(VUIAccountSettingsViewController *)self setConnectedWatchListAppCount:0];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__VUIAccountSettingsViewController__checkConnectedAppsWithDispatchGroup___block_invoke;
  v6[3] = &unk_1E87307C8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [VUIAccountSettingsConnectedAppsViewController fetchConnectedAppsWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __73__VUIAccountSettingsViewController__checkConnectedAppsWithDispatchGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = VUIDefaultLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 || !WeakRetained)
  {
    if (v9)
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - an error occured fetching installed apps: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 134217984;
      v20 = [v5 count];
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - installed watchlist app count is: %lu", buf, 0xCu);
    }

    WeakRetained[184] = [v5 count];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) accessStatus] == 1)
          {
            ++WeakRetained[185];
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_checkExternalLinksWithDispatchGroup:(id)a3
{
  v4 = [MEMORY[0x1E69D5928] app];
  v6 = [v4 urlForKey:kVUIBagKeyAddFundsURL];

  v5 = v6;
  if (v6)
  {
    [(VUIAccountSettingsViewController *)self setAddFundsUrl:v6];
    v5 = v6;
  }
}

- (id)_dialogMetricsData
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"dialogId";
  v4[1] = @"dialogType";
  v5[0] = @"accountSettings";
  v5[1] = @"accountSettings";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)_recordDialogClick:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [(VUIAccountSettingsViewController *)self _dialogMetricsData];
  v8 = [v4 dictionaryWithDictionary:v6];

  [v8 addEntriesFromDictionary:v5];
  v7 = +[VUIMetricsController sharedInstance];
  [v7 recordClick:v8];
}

- (id)_notificationGroupSpecifierIdentifier
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v6 = @"SETTINGS_ALLOW_NOTIFICATIONS_ON_THIS_IPHONE";
    goto LABEL_7;
  }

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = @"SETTINGS_ALLOW_NOTIFICATIONS_ON_THIS_IPAD";
LABEL_7:
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:v6];

    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    v6 = @"SETTINGS_ALLOW_NOTIFICATIONS_ON_THIS_VISION_PRO";
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = VUIAccountSettingsViewController;
  v5 = [(VUIAccountSettingsViewController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 textField];
    [v6 setDelegate:self];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = v5;
  }

  v8 = [(VUIAccountSettingsViewController *)self _createAxIdFromTableCell:v5];
  [v5 setAccessibilityIdentifier:v8];

LABEL_6:

  return v5;
}

- (int64_t)_alertStyle
{
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:2];
  v4 = [(VUIAccountSettingsViewController *)self traitCollection];
  v5 = [v4 containsTraitsInCollection:v3];

  return v5;
}

- (void)_handleAccountSettingsEventWithAmsWebView:(id)a3 storeServicesBagKey:(id)a4 storeServicesUrl:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E69D5928];
  v11 = a3;
  v12 = [v10 app];
  v13 = [v12 urlForKey:v11];

  if (v13)
  {
    [(VUIAccountSettingsViewController *)self _parseUrl:v13];
    goto LABEL_12;
  }

  if (v8)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - Falling back to legacy StoreServices key", buf, 2u);
    }

    v15 = self;
    v16 = 0;
    v17 = v8;
LABEL_11:
    [(VUIAccountSettingsViewController *)v15 _handleAccountSettingsEventWithUrl:v16 amsBagKey:v17 useAMSWebView:0];
    goto LABEL_12;
  }

  v18 = VUIDefaultLogObject();
  v19 = v18;
  if (v9)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - Falling back to legacy StoreServices URL", v20, 2u);
    }

    v15 = self;
    v16 = v9;
    v17 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [VUIAccountSettingsViewController _handleAccountSettingsEventWithAmsWebView:storeServicesBagKey:storeServicesUrl:];
  }

LABEL_12:
}

- (void)_parseUrl:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698CB70]);
  v6 = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v7 = [v5 initWithBag:v6];

  v8 = [v7 typeForURL:v4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__VUIAccountSettingsViewController__parseUrl___block_invoke;
  v10[3] = &unk_1E87307F0;
  v9 = v4;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [v8 addFinishBlock:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
}

void __46__VUIAccountSettingsViewController__parseUrl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__VUIAccountSettingsViewController__parseUrl___block_invoke_cold_1(a1);
    }
  }

  v8 = [v5 intValue];
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109120;
    v11[1] = v8 == 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - AMSURLParser for Account Settings URL. useAMSWebView=%d", v11, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAccountSettingsEventWithUrl:*(a1 + 32) amsBagKey:0 useAMSWebView:v8 == 0];
}

- (void)_handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__VUIAccountSettingsViewController__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView___block_invoke;
  block[3] = &unk_1E872F3A0;
  objc_copyWeak(&v15, &location);
  v16 = a5;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __95__VUIAccountSettingsViewController__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained navigationController];
  if (v3 && *(a1 + 56) == 1)
  {
    [VUIApplicationRouter pushAccountSettingsEventWithUrl:*(a1 + 32) amsBagKey:*(a1 + 40) useAMSWebView:1 fromNavigationController:v3];
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __95__VUIAccountSettingsViewController__handleAccountSettingsEventWithUrl_amsBagKey_useAMSWebView___block_invoke_2;
    v4[3] = &unk_1E8730818;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    [WeakRetained dismissViewControllerAnimated:1 completion:v4];
  }
}

- (id)_createAxIdFromTableCell:(id)a3
{
  v3 = [a3 specifier];
  v4 = [v3 identifier];

  v5 = [@"UIA.TV.AccountSettings." stringByAppendingString:v4];

  return v5;
}

- (void)_handleNotificationsOff
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DC650];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_NOTIFICATIONS_ARE_OFF_TITLE"];
  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"SETTINGS_NOTIFICATIONS_ARE_OFF_MESSAGE"];
  v8 = [v3 alertControllerWithTitle:v5 message:v7 preferredStyle:1];

  v9 = MEMORY[0x1E69DC648];
  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:@"SETTINGS_GO_TO_SETTINGS"];
  v12 = [v9 actionWithTitle:v11 style:0 handler:&__block_literal_global_348];

  v13 = MEMORY[0x1E69DC648];
  v14 = +[VUILocalizationManager sharedInstance];
  v15 = [v14 localizedStringForKey:@"SETTINGS_ACCESS_DENY"];
  v16 = [v13 actionWithTitle:v15 style:1 handler:0];

  [v8 addAction:v16];
  [v8 addAction:v12];
  [(VUIAccountSettingsViewController *)self presentViewController:v8 animated:1 completion:0];
  v18[0] = @"targetId";
  v18[1] = @"targetType";
  v19[0] = @"gotoSettings";
  v19[1] = @"menuItem";
  v18[2] = @"actionType";
  v19[2] = @"gotoSettings";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [(VUIAccountSettingsViewController *)self _recordDialogClick:v17];
}

void __59__VUIAccountSettingsViewController__handleNotificationsOff__block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=NOTIFICATIONS_ID&path=com.apple.tv"];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openSensitiveURL:v1 withOptions:0];
}

- (void)_promptForNotificationsAuth
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __63__VUIAccountSettingsViewController__promptForNotificationsAuth__block_invoke;
  v7 = &unk_1E87306E0;
  objc_copyWeak(&v8, &location);
  v2 = _Block_copy(&v4);
  if (_os_feature_enabled_impl())
  {
    [VUILocalNotificationService requestAuthorizationWithOptions:7 completionHandler:v2, v4, v5, v6, v7];
  }

  else
  {
    v3 = [MEMORY[0x1E6983308] vuiNotificationCenter];
    [v3 requestAuthorizationWithOptions:7 completionHandler:v2];
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__VUIAccountSettingsViewController__promptForNotificationsAuth__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__VUIAccountSettingsViewController__promptForNotificationsAuth__block_invoke_2;
  v3[3] = &unk_1E872EDE0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __63__VUIAccountSettingsViewController__promptForNotificationsAuth__block_invoke_2(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [WeakRetained setNotifAuthStatus:v4];
  [v3 reloadSpecifiers];
  v6[0] = @"targetId";
  v6[1] = @"targetType";
  v7[0] = @"promptNotificationAuthorization";
  v7[1] = @"menuItem";
  v6[2] = @"actionType";
  v7[2] = @"promptNotificationAuthorization";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v3 _recordDialogClick:v5];
}

- (void)_navigateToSubsection:(int64_t)a3 clearSubsection:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [(VUIAccountSettingsViewController *)self initialSubsection];
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIAccountSettings - Navigating to initial subsection: %ld", &v12, 0xCu);
  }

  if (a3 == 1)
  {
    v8 = @"connectedApps";
  }

  else
  {
    if (a3 != 2)
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [VUIAccountSettingsViewController _navigateToSubsection:clearSubsection:];
      }

      goto LABEL_12;
    }

    v8 = @"manageSubscriptions";
  }

  v9 = [(VUIAccountSettingsViewController *)self specifierForID:v8];
  if (v9)
  {
    v10 = v9;
    [(VUIAccountSettingsViewController *)self _didSelectSpecifier:v9 isManualSelection:0];
    goto LABEL_14;
  }

LABEL_12:
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [VUIAccountSettingsViewController _navigateToSubsection:clearSubsection:];
  }

LABEL_14:

  if (v4)
  {
    [(VUIAccountSettingsViewController *)self setInitialSubsection:0];
  }
}

- (void)setAuthenticationInProgress:(BOOL)a3
{
  v22 = *MEMORY[0x1E69E9840];
  self->_authenticationInProgress = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(VUIAccountSettingsViewController *)self specifiers];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = *MEMORY[0x1E69C58C8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:!self->_authenticationInProgress];
        [v10 setProperty:v11 forKey:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [v12 startAnimating];
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v12];
  v14 = [(VUIAccountSettingsViewController *)self navigationItem];
  v15 = v14;
  if (self->_authenticationInProgress)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  [v14 setLeftBarButtonItem:v16];
}

- (NSNumber)_pendingSyncMySportsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->__pendingSyncMySportsEnabled);

  return WeakRetained;
}

void __76__VUIAccountSettingsViewController__fetchMySportsSyncSettingWithCompletion___block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __60__VUIAccountSettingsViewController__setSyncMySportsEnabled___block_invoke_2_cold_1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __72__VUIAccountSettingsViewController__resolveSportsFavoriteFeatureEnabler__block_invoke_cold_1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __46__VUIAccountSettingsViewController__parseUrl___block_invoke_cold_1(uint64_t a1)
{
  v6 = [*(a1 + 32) absoluteString];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end