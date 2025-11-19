@interface VUIAccountSettingsConnectedAppsViewController
+ (void)fetchConnectedAppsWithCompletion:(id)a3;
- (BOOL)_runPrePromptContinuationCheck:(id)a3 sender:(id)a4;
- (CGSize)_iconSize;
- (VUIAccountSettingsConnectedAppsViewController)init;
- (id)_accessStatusForSpecifier:(id)a3;
- (id)_appGroupSpecifier;
- (id)_fetchAllChannels;
- (id)_getChannelDetailsFor:(id)a3 channelsResponse:(id)a4;
- (id)specifiers;
- (int64_t)_alertStyle;
- (void)_addPrivacyFooterToGroup:(id)a3;
- (void)_completeChannelDisablement:(BOOL)a3 channelID:(id)a4 externalID:(id)a5 error:(id)a6;
- (void)_completeChannelEnablement:(BOOL)a3 channelID:(id)a4 externalID:(id)a5;
- (void)_configureDoneButton;
- (void)_dismiss;
- (void)_handleChannelPromptDismiss:(id)a3;
- (void)_handleToggleSpecifierHelper:(id)a3 channel:(id)a4 externalID:(id)a5 vppaStatus:(int64_t)a6;
- (void)_loadAppGroup;
- (void)_promptToDisableChannel:(id)a3 withExternalID:(id)a4;
- (void)_promptToEnableChannel:(id)a3 withExternalID:(id)a4;
- (void)_reloadSpecifierValueAfterCancelation:(id)a3;
- (void)_showPrivacySheet:(id)a3;
- (void)_showVppaExpiredPrompt:(id)a3;
- (void)_startAppSpinner;
- (void)_stopAppSpinner;
- (void)_toggleSpecifier:(id)a3 sender:(id)a4;
- (void)viewDidLoad;
@end

@implementation VUIAccountSettingsConnectedAppsViewController

- (VUIAccountSettingsConnectedAppsViewController)init
{
  v5.receiver = self;
  v5.super_class = VUIAccountSettingsConnectedAppsViewController;
  v2 = [(VUIAccountSettingsConnectedAppsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VUIAccountSettingsConnectedAppsViewController *)v2 setShowsDoneButton:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = VUIAccountSettingsConnectedAppsViewController;
  [(VUIAccountSettingsConnectedAppsViewController *)&v12 viewDidLoad];
  v3 = [(VUIAccountSettingsConnectedAppsViewController *)self navigationItem];
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"SETTINGS_CONNECTED_APPS"];
  [v3 setTitle:v5];

  [(VUIAccountSettingsConnectedAppsViewController *)self _configureDoneButton];
  v6 = objc_alloc_init(VUIConnectedAppOperationCoordinator);
  inflightOperationCoordinator = self->_inflightOperationCoordinator;
  self->_inflightOperationCoordinator = v6;

  v8 = [VUIMetricsPageEventData createWithPageType:@"connectedApps"];
  v9 = +[VUIMetricsController sharedInstance];
  [v9 recordPage:v8];

  v10 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"ConnectedApps"];
  v11 = [(VUIAccountSettingsConnectedAppsViewController *)self view];
  [v11 setAccessibilityIdentifier:v10];
}

- (id)specifiers
{
  v3 = *MEMORY[0x1E69C57B8];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - specifiers - existing specifiers are nil, initializing them", buf, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!self->_appGroup)
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - specifiers - existing app group is nil, adding new appGroupSpecifier", v12, 2u);
      }

      v8 = [(VUIAccountSettingsConnectedAppsViewController *)self _appGroupSpecifier];
      appGroup = self->_appGroup;
      self->_appGroup = v8;

      [v6 addObject:self->_appGroup];
      [(VUIAccountSettingsConnectedAppsViewController *)self _loadAppGroup];
    }

    v10 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_appGroupSpecifier
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 preferredLocalizations];
  v5 = [v4 firstObject];

  v6 = +[VUILocalizationManager sharedInstance];
  v7 = [v6 localizedStringForKey:@"SETTINGS_APPS_GROUP"];
  v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v5];
  v9 = [v7 uppercaseStringWithLocale:v8];

  v10 = [MEMORY[0x1E69C5748] groupSpecifierWithName:v9];
  [v10 setProperty:@"VUISpinnerHeaderView" forKey:*MEMORY[0x1E69C5908]];
  [(VUIAccountSettingsConnectedAppsViewController *)self _addPrivacyFooterToGroup:v10];

  return v10;
}

- (void)_addPrivacyFooterToGroup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setProperty:v6 forKey:*MEMORY[0x1E69C58D8]];

  v7 = +[VUILocalizationManager sharedInstance];
  v15 = [v7 localizedStringForKey:@"SETTINGS_APPS_GROUP_FOOTER_FORMAT"];

  v8 = [MEMORY[0x1E69B7D50] linkWithBundleIdentifier:@"com.apple.onboarding.tvapp"];
  v9 = [v8 flow];
  v10 = [v9 localizedButtonTitle];

  v11 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v10];
  [v4 setProperty:v11 forKey:*MEMORY[0x1E69C58F8]];
  v17.location = [v11 rangeOfString:v10];
  v12 = NSStringFromRange(v17);
  [v4 setProperty:v12 forKey:*MEMORY[0x1E69C58E8]];

  v13 = [MEMORY[0x1E696B098] valueWithNonretainedObject:self];
  [v4 setProperty:v13 forKey:*MEMORY[0x1E69C58F0]];

  v14 = NSStringFromSelector(sel__showPrivacySheet_);
  [v4 setProperty:v14 forKey:*MEMORY[0x1E69C58E0]];
}

- (id)_fetchAllChannels
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__28;
  v21 = __Block_byref_object_dispose__28;
  v22 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__VUIAccountSettingsConnectedAppsViewController__fetchAllChannels__block_invoke;
  v14[3] = &unk_1E8735DD0;
  v16 = &v17;
  v4 = v2;
  v15 = v4;
  [v3 allChannels:v14];

  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v6 initWithCapacity:{objc_msgSend(v18[5], "count")}];
  v8 = v18[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__VUIAccountSettingsConnectedAppsViewController__fetchAllChannels__block_invoke_50;
  v12[3] = &unk_1E8732C58;
  v9 = v7;
  v13 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
  v10 = [v9 copy];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __66__VUIAccountSettingsConnectedAppsViewController__fetchAllChannels__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 localizedDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - allChannels failed with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __66__VUIAccountSettingsConnectedAppsViewController__fetchAllChannels__block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69E14F0];
  v5 = a3;
  v9 = [[v4 alloc] initWithDictionary:v5];

  v6 = [v9 channelID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 channelID];
    [v7 setObject:v9 forKey:v8];
  }
}

- (void)_loadAppGroup
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke;
  v3[3] = &unk_1E87307C8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [VUIAccountSettingsConnectedAppsViewController fetchConnectedAppsWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - loaded group for apps: %@", buf, 0xCu);
  }

  if (WeakRetained)
  {
    v9 = [v5 count];
    if (v6 || !v9)
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_cold_1(v6, v16);
      }

      [WeakRetained removeSpecifier:WeakRetained[182]];
    }

    else
    {
      if ([WeakRetained[183] count])
      {
        v10 = VUIDefaultLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [WeakRetained[183] count];
          *buf = 67109120;
          LODWORD(v22) = v11 != 0;
          _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - app specifier count is above 0: %d", buf, 8u);
        }

        [WeakRetained removeContiguousSpecifiers:WeakRetained[183] animated:0];
      }

      objc_initWeak(buf, WeakRetained);
      v12 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_54;
      block[3] = &unk_1E872D9B8;
      objc_copyWeak(&v20, buf);
      v13 = v5;
      v14 = *(a1 + 32);
      v18 = v13;
      v19 = v14;
      dispatch_async(v12, block);

      objc_destroyWeak(&v20);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v15 = VUIDefaultLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_cold_2(v15);
    }
  }
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_54(id *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained _fetchAllChannels];
  }

  else
  {
    WeakRetained = [MEMORY[0x1E69E1500] sharedInstance];
    [WeakRetained channelsByID];
  }
  v23 = ;

  v22 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a1[4];
  v24 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        v5 = MEMORY[0x1E69C5748];
        v6 = [v4 displayName];
        v7 = [v5 preferenceSpecifierNamed:v6 target:a1[5] set:sel__toggleSpecifier_sender_ get:sel__accessStatusForSpecifier_ detail:objc_opt_class() cell:6 edit:0];

        v8 = [v4 channelID];
        [v7 setIdentifier:v8];

        [v7 setUserInfo:v4];
        [a1[5] _iconSize];
        v10 = v9;
        v12 = v11;
        v13 = [v4 channelID];
        v14 = [v23 objectForKey:v13];

        objc_initWeak(&location, v7);
        v15 = VUIDefaultLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 channelID];
          v42.width = v10;
          v42.height = v12;
          v17 = NSStringFromCGSize(v42);
          *buf = 138412546;
          v37 = v16;
          v38 = 2112;
          v39 = v17;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - begin fetching icon for channelID: %@ of size: %@", buf, 0x16u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_63;
        aBlock[3] = &unk_1E8735E20;
        objc_copyWeak(&v29, &location);
        aBlock[4] = v4;
        objc_copyWeak(&v30, a1 + 6);
        v18 = _Block_copy(aBlock);
        if (_os_feature_enabled_impl())
        {
          [VUIAppIconImageService fetchIconForVUIInstallable:v14 size:v18 completion:v10, v12];
        }

        else
        {
          [VUIAppIconImageService fetchIconForInstallable:v14 size:v18 completion:v10, v12];
        }

        [v22 addObject:v7];

        objc_destroyWeak(&v30);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }

      v24 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v24);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_69;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v27, a1 + 6);
  v26 = v22;
  v19 = v22;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v27);
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_63(id *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v5 = WeakRetained;
  if (v3)
  {
    v6 = WeakRetained == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[4] channelID];
    *buf = 138412546;
    v21 = v9;
    v22 = 1024;
    v23 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - done fetching icon for channelID: %@ shouldSetSpecifier: %d", buf, 0x12u);
  }

  if (v7)
  {
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v11 = [v3 _applicationIconImageForFormat:0 precomposed:0 scale:?];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_65;
    v15[3] = &unk_1E8735DF8;
    objc_copyWeak(&v19, a1 + 6);
    v12 = v5;
    v13 = a1[4];
    v16 = v12;
    v17 = v13;
    v18 = v11;
    v14 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    objc_destroyWeak(&v19);
  }
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_65(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) identifier];
      v5 = [*(a1 + 40) channelID];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - set and reload specifier id: %@ for channel: %@", &v6, 0x16u);
    }

    [*(a1 + 32) setProperty:*(a1 + 48) forKey:*MEMORY[0x1E69C5920]];
    [WeakRetained reloadSpecifier:*(a1 + 32)];
  }
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_69(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - loadAppGroup - stopping app spinner and setting app specifiers", v4, 2u);
    }

    [WeakRetained _stopAppSpinner];
    objc_storeStrong(WeakRetained + 183, *(a1 + 32));
    [WeakRetained insertContiguousSpecifiers:*(a1 + 32) afterSpecifier:WeakRetained[182] animated:0];
  }
}

- (void)_startAppSpinner
{
  v2 = [(PSSpecifier *)self->_appGroup propertyForKey:*MEMORY[0x1E69C5910]];
  [v2 showSpinner];
}

- (void)_stopAppSpinner
{
  v2 = [(PSSpecifier *)self->_appGroup propertyForKey:*MEMORY[0x1E69C5910]];
  [v2 hideSpinner];
}

- (CGSize)_iconSize
{
  v2 = 29.0;
  v3 = 29.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_getChannelDetailsFor:(id)a3 channelsResponse:(id)a4
{
  if (a4)
  {
    v5 = [a4 vui_dictionaryForKey:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleToggleSpecifierHelper:(id)a3 channel:(id)a4 externalID:(id)a5 vppaStatus:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__VUIAccountSettingsConnectedAppsViewController__handleToggleSpecifierHelper_channel_externalID_vppaStatus___block_invoke;
  v16[3] = &unk_1E8735E48;
  objc_copyWeak(v20, &location);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20[1] = a6;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v16);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __108__VUIAccountSettingsConnectedAppsViewController__handleToggleSpecifierHelper_channel_externalID_vppaStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([*(a1 + 32) BOOLValue])
  {
    v2 = *(a1 + 40);
    if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [WeakRetained _showVppaExpiredPrompt:v2];
    }

    else
    {
      [WeakRetained _promptToEnableChannel:v2 withExternalID:*(a1 + 48)];
    }
  }

  else
  {
    [WeakRetained _promptToDisableChannel:*(a1 + 40) withExternalID:*(a1 + 48)];
  }
}

- (void)_toggleSpecifier:(id)a3 sender:(id)a4
{
  v40[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(VUIAccountSettingsConnectedAppsViewController *)self _runPrePromptContinuationCheck:v6 sender:v7])
  {
    v8 = [v7 userInfo];
    v9 = [v8 externalID];
    v10 = [v7 identifier];
    [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator setOperationForID:v10 operationType:v6 != 0];
    if (_os_feature_enabled_impl())
    {
      location = 0;
      p_location = &location;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__28;
      v37 = __Block_byref_object_dispose__28;
      v38 = 0;
      v11 = dispatch_semaphore_create(0);
      v12 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke;
      v30[3] = &unk_1E8735DD0;
      v32 = &location;
      v13 = v11;
      v31 = v13;
      [v12 allChannels:v30];

      v14 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v13, v14);
      v15 = objc_alloc(MEMORY[0x1E69E14F0]);
      v16 = [(VUIAccountSettingsConnectedAppsViewController *)self _getChannelDetailsFor:v10 channelsResponse:p_location[5]];
      v17 = [v15 initWithDictionary:v16];

      _Block_object_dispose(&location, 8);
    }

    else
    {
      v18 = [MEMORY[0x1E69E1500] sharedInstance];
      v17 = [v18 channelForID:v10];
    }

    objc_initWeak(&location, self);
    if (_os_feature_enabled_impl())
    {
      v19 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke_72;
      v28[3] = &unk_1E8735E70;
      v20 = &v29;
      objc_copyWeak(&v29, &location);
      v28[4] = v6;
      v28[5] = v17;
      v28[6] = v9;
      [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:0 completion:v28];
    }

    else
    {
      v21 = [MEMORY[0x1E69E1508] sharedInstance];
      v19 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke_2;
      v26[3] = &unk_1E8735E98;
      v20 = &v27;
      objc_copyWeak(&v27, &location);
      v26[4] = v6;
      v26[5] = v17;
      v26[6] = v9;
      [v21 fetchConfigurationWithCompletionHandler:v26];
    }

    objc_destroyWeak(v20);
    v22 = +[VUIMetricsController sharedInstance];
    v39[0] = @"targetId";
    v39[1] = @"targetType";
    v40[0] = v10;
    v40[1] = @"switch";
    v39[2] = @"actionType";
    v23 = [v6 BOOLValue];
    v24 = VUIMetricsActionTypeAdd;
    if (!v23)
    {
      v24 = VUIMetricsActionTypeRemove;
    }

    v40[2] = *v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
    [v22 recordClick:v25];

    objc_destroyWeak(&location);
  }
}

void __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 localizedDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - allChannels failed with error: %@", &v11, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 data];

  if (v3)
  {
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
  }

  v5 = objc_alloc(MEMORY[0x1E69E15C0]);
  v6 = [v3 vui_dictionaryForKey:@"data"];
  v7 = [v5 initWithServerResponseDictionary:v6 expirationDate:0 environmentHash:0];

  [WeakRetained _handleToggleSpecifierHelper:*(a1 + 32) channel:*(a1 + 40) externalID:*(a1 + 48) vppaStatus:{objc_msgSend(v7, "vppaStatus")}];
}

void __73__VUIAccountSettingsConnectedAppsViewController__toggleSpecifier_sender___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 vppaStatus];

  [WeakRetained _handleToggleSpecifierHelper:*(a1 + 32) channel:*(a1 + 40) externalID:*(a1 + 48) vppaStatus:v4];
}

- (id)_accessStatusForSpecifier:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [MEMORY[0x1E69E15D0] sharedSettings];
  v6 = [v4 channelID];
  v7 = [v4 externalID];
  v8 = [v5 settingsForChannelID:v6 externalID:v7];

  inflightOperationCoordinator = self->_inflightOperationCoordinator;
  v10 = [v4 channelID];
  v11 = [(VUIConnectedAppOperationCoordinator *)inflightOperationCoordinator specifierToggleValueForID:v10];

  if (v11)
  {
    v12 = v11;
  }

  else if ([v8 accessStatus] == 1)
  {
    v12 = MEMORY[0x1E695E118];
  }

  else
  {
    v12 = MEMORY[0x1E695E110];
  }

  return v12;
}

- (void)_showPrivacySheet:(id)a3
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69B7D58] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.tvapp"];
  [v4 setPresentingViewController:self];
  [v4 present];
  v5 = +[VUIMetricsController sharedInstance];
  v7[0] = @"targetId";
  v7[1] = @"targetType";
  v8[0] = @"privacyLink";
  v8[1] = @"link";
  v7[2] = @"actionType";
  v8[2] = @"privacyLink";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v5 recordClick:v6];
}

- (void)_showVppaExpiredPrompt:(id)a3
{
  v4 = a3;
  inflightOperationCoordinator = self->_inflightOperationCoordinator;
  v6 = [v4 channelID];
  [(VUIConnectedAppOperationCoordinator *)inflightOperationCoordinator clearOperationForID:v6];

  v7 = [(VUIAccountSettingsConnectedAppsViewController *)self navigationController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__VUIAccountSettingsConnectedAppsViewController__showVppaExpiredPrompt___block_invoke;
  v9[3] = &unk_1E872D768;
  v10 = v4;
  v8 = v4;
  [v7 dismissViewControllerAnimated:1 completion:v9];
}

void __72__VUIAccountSettingsConnectedAppsViewController__showVppaExpiredPrompt___block_invoke(uint64_t a1)
{
  v2 = +[VUIVPPAManager sharedInstance];
  [v2 startVPPAConsentFlow:*(a1 + 32) consentCancelButtonType:0 shouldForceVPPAPrompt:0 completion:&__block_literal_global_134];
}

void __72__VUIAccountSettingsConnectedAppsViewController__showVppaExpiredPrompt___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = VUIBoolLogString();
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - showVppaExpiredPrompt - Finished VPPA reconsent. Success: %@", &v7, 0xCu);
  }

  if (a3)
  {
    v6 = +[VUIVPPAManager sharedInstance];
    [v6 reloadConfigurationAfterVPPAChange];
  }
}

- (void)_completeChannelEnablement:(BOOL)a3 channelID:(id)a4 externalID:(id)a5
{
  v6 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator clearOperationForID:v8];
  if (v6)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToEnableChannel - Successfully enabled channel %@", &v13, 0xCu);
    }

    v11 = +[VUIVPPAManager sharedInstance];
    [v11 reloadConfigurationAfterVPPAChange];
  }

  else
  {
    v11 = [MEMORY[0x1E69E15D0] sharedSettings];
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToEnableChannel - Failed to sync opt-in to cloud, reverting", &v13, 2u);
    }

    [v11 setStatus:2 forChannelID:v8 externalID:v9];
    [(VUIAccountSettingsConnectedAppsViewController *)self _reloadSpecifierValueAfterCancelation:v8];
  }
}

- (void)_promptToEnableChannel:(id)a3 withExternalID:(id)a4
{
  v6 = a3;
  v43 = a4;
  v7 = [MEMORY[0x1E69D5920] activeAccount];
  v8 = [v7 username];

  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SETTINGS_APP_OPT_IN_PROMPT_FORMAT"];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v6 name];
  v42 = v10;
  v13 = [v11 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:0, v12, v8];

  v14 = +[VUILocalizationManager sharedInstance];
  v15 = [v14 localizedStringForKey:@"SETTINGS_APP_OPT_IN_TITLE_FORMAT"];

  v16 = MEMORY[0x1E696AEC0];
  v17 = [v6 name];
  v40 = v15;
  v18 = [v16 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, v17];

  v39 = v18;
  if ([(VUIAccountSettingsConnectedAppsViewController *)self _alertStyle]== 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v38 = v19;
  v41 = v13;
  v20 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v38 message:v13 preferredStyle:{-[VUIAccountSettingsConnectedAppsViewController _alertStyle](self, "_alertStyle")}];
  v21 = [v6 channelID];
  v22 = +[VUILocalizationManager sharedInstance];
  v23 = [v22 localizedStringForKey:@"SETTINGS_APP_OPT_IN_FORMAT"];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [v6 name];
  v37 = v23;
  v26 = [v24 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, v25];

  objc_initWeak(location, self);
  v27 = MEMORY[0x1E69DC648];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke;
  v48[3] = &unk_1E8735F10;
  objc_copyWeak(&v52, location);
  v28 = v21;
  v49 = v28;
  v29 = v43;
  v50 = v29;
  v30 = v6;
  v51 = v30;
  v44 = v26;
  v31 = [v27 actionWithTitle:v26 style:0 handler:v48];
  v32 = MEMORY[0x1E69DC648];
  v33 = +[VUILocalizationManager sharedInstance];
  v34 = [v33 localizedStringForKey:@"CANCEL"];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_3;
  v45[3] = &unk_1E8735F38;
  objc_copyWeak(&v47, location);
  v35 = v28;
  v46 = v35;
  v36 = [v32 actionWithTitle:v34 style:1 handler:v45];

  [v20 addAction:v31];
  [v20 addAction:v36];
  [(VUIAccountSettingsConnectedAppsViewController *)self presentViewController:v20 animated:1 completion:0];

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v52);
  objc_destroyWeak(location);
}

void __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained[184] setOperationForID:*(a1 + 32) operationType:3];
  v3 = [MEMORY[0x1E69E15D0] sharedSettings];
  [v3 setStatus:1 forChannelID:*(a1 + 32) externalID:*(a1 + 40)];
  v4 = [v3 settingsForChannelID:*(a1 + 32) externalID:*(a1 + 40)];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToEnableChannel - Enabling channel %@", buf, 0xCu);
  }

  if (_os_feature_enabled_impl())
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = [v4 channelID];
    [v7 setObject:v8 forKeyedSubscript:@"id"];

    [v7 setObject:@"Connect" forKeyedSubscript:@"action"];
    v20 = @"brandConsentSettings";
    v9 = [v7 copy];
    v19 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v21 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_103;
    v16[3] = &unk_1E8735EC0;
    v16[4] = WeakRetained;
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    [_TtC8VideosUI32VUIUserCloudStoreSettingsService updateWithSettings:v11 completionHandler:v16];
  }

  else
  {
    v12 = MEMORY[0x1E69E15C8];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_2;
    v13[3] = &unk_1E8735EE8;
    v13[4] = WeakRetained;
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    [v12 updateCloudStoreAppSettings:v4 deleteHistory:0 completion:v13];
  }
}

void __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_103(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) channelID];
  [v6 _completeChannelEnablement:v5 channelID:v7 externalID:*(a1 + 48)];
}

void __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) channelID];
  [v4 _completeChannelEnablement:a2 channelID:v5 externalID:*(a1 + 48)];
}

void __87__VUIAccountSettingsConnectedAppsViewController__promptToEnableChannel_withExternalID___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleChannelPromptDismiss:*(a1 + 32)];
}

- (void)_completeChannelDisablement:(BOOL)a3 channelID:(id)a4 externalID:(id)a5 error:(id)a6
{
  v8 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator clearOperationForID:v10];
  v13 = VUIDefaultLogObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v14)
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToDisableChannel - Successfully disabled channel %@", &v16, 0xCu);
    }

    v15 = +[VUIVPPAManager sharedInstance];
    [v15 reloadConfigurationAfterVPPAChange];
  }

  else
  {
    if (v14)
    {
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToDisableChannel - Failed to sync opt-out to cloud, reverting: %@", &v16, 0xCu);
    }

    v15 = [MEMORY[0x1E69E15D0] sharedSettings];
    [v15 setStatus:1 forChannelID:v10 externalID:v11];
    [(VUIAccountSettingsConnectedAppsViewController *)self _reloadSpecifierValueAfterCancelation:v10];
  }
}

- (void)_promptToDisableChannel:(id)a3 withExternalID:(id)a4
{
  v6 = a3;
  v54 = a4;
  v7 = [MEMORY[0x1E69D5920] activeAccount];
  v8 = [v7 username];

  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"SETTINGS_APP_OPT_OUT_PROMPT_FORMAT"];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v6 name];
  v13 = [v6 name];
  v14 = [v11 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@ %@" error:0, v12, v13, v8];

  v15 = +[VUILocalizationManager sharedInstance];
  v16 = [v15 localizedStringForKey:@"SETTINGS_APP_OPT_OUT_TITLE_FORMAT"];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v6 name];
  v19 = [v17 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v18];

  v51 = v19;
  if ([(VUIAccountSettingsConnectedAppsViewController *)self _alertStyle]== 1)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v50 = v20;
  v52 = v14;
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v50 message:v14 preferredStyle:{-[VUIAccountSettingsConnectedAppsViewController _alertStyle](self, "_alertStyle")}];
  v22 = [v6 channelID];
  v53 = self;
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke;
  aBlock[3] = &unk_1E8734880;
  objc_copyWeak(&v69, location);
  v23 = v22;
  v66 = v23;
  v49 = v54;
  v67 = v49;
  v55 = v6;
  v68 = v55;
  v24 = _Block_copy(aBlock);
  v25 = +[VUILocalizationManager sharedInstance];
  v26 = [v25 localizedStringForKey:@"SETTINGS_APP_OPT_OUT_FORMAT"];
  v48 = v16;

  v27 = MEMORY[0x1E696AEC0];
  v28 = [v55 name];
  v29 = [v27 stringWithValidatedFormat:v26 validFormatSpecifiers:@"%@" error:0, v28];
  v46 = v26;
  v47 = v10;

  v30 = MEMORY[0x1E69DC648];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_3;
  v62[3] = &unk_1E8735F60;
  v31 = v24;
  v64 = v31;
  v32 = v23;
  v63 = v32;
  v45 = v29;
  v33 = [v30 actionWithTitle:v29 style:0 handler:v62];
  v34 = MEMORY[0x1E69DC648];
  v35 = +[VUILocalizationManager sharedInstance];
  v36 = [v35 localizedStringForKey:@"SETTINGS_APP_OPT_OUT_AND_DELETE"];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_4;
  v59[3] = &unk_1E8735F60;
  v37 = v31;
  v61 = v37;
  v38 = v32;
  v60 = v38;
  v39 = [v34 actionWithTitle:v36 style:2 handler:v59];

  v40 = MEMORY[0x1E69DC648];
  v41 = +[VUILocalizationManager sharedInstance];
  v42 = [v41 localizedStringForKey:@"CANCEL"];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_5;
  v56[3] = &unk_1E8735F38;
  objc_copyWeak(&v58, location);
  v43 = v38;
  v57 = v43;
  v44 = [v40 actionWithTitle:v42 style:1 handler:v56];

  [v21 addAction:v33];
  [v21 addAction:v39];
  [v21 addAction:v44];
  [(VUIAccountSettingsConnectedAppsViewController *)v53 presentViewController:v21 animated:1 completion:0];

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v69);
  objc_destroyWeak(location);
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained[184] setOperationForID:*(a1 + 32) operationType:2];
  v5 = [MEMORY[0x1E69E15D0] sharedSettings];
  [v5 setStatus:2 forChannelID:*(a1 + 32) externalID:*(a1 + 40)];
  v6 = [v5 settingsForChannelID:*(a1 + 32) externalID:*(a1 + 40)];
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v9 = *(a1 + 32);
    if (a2)
    {
      v8 = @"YES";
    }

    *buf = 138412546;
    v27 = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - promptToDisableChannel - Disabling channel %@ Delete:%@", buf, 0x16u);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [v6 channelID];
    [v10 setObject:v11 forKeyedSubscript:@"id"];

    if (a2)
    {
      v12 = @"Disconnect";
    }

    else
    {
      v12 = @"Connect";
    }

    [v10 setObject:v12 forKeyedSubscript:@"action"];
    v24 = @"brandConsentSettings";
    v13 = [v10 copy];
    v23 = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    v25 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_128;
    v20[3] = &unk_1E8735EC0;
    v20[4] = WeakRetained;
    v21 = *(a1 + 48);
    v22 = *(a1 + 40);
    [_TtC8VideosUI32VUIUserCloudStoreSettingsService updateWithSettings:v15 completionHandler:v20];
  }

  else
  {
    v16 = MEMORY[0x1E69E15C8];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_2;
    v17[3] = &unk_1E8735EE8;
    v17[4] = WeakRetained;
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    [v16 updateCloudStoreAppSettings:v6 deleteHistory:a2 completion:v17];
  }
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_128(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a3;
  v9 = [v7 channelID];
  [v6 _completeChannelDisablement:v5 channelID:v9 externalID:a1[6] error:v8];
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = [v6 channelID];
  [v5 _completeChannelDisablement:a2 channelID:v8 externalID:a1[6] error:v7];
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_3(uint64_t a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = +[VUIMetricsController sharedInstance];
  v3 = *(a1 + 32);
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = v3;
  v6[1] = @"alertButton";
  v5[2] = @"actionType";
  v5[3] = @"actionContext";
  v6[2] = @"remove";
  v6[3] = @"alert";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  [v2 recordClick:v4];
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_4(uint64_t a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = +[VUIMetricsController sharedInstance];
  v3 = *(a1 + 32);
  v5[0] = @"targetId";
  v5[1] = @"targetType";
  v6[0] = v3;
  v6[1] = @"alertButton";
  v5[2] = @"actionType";
  v5[3] = @"actionContext";
  v6[2] = @"removeAndClearHistory";
  v6[3] = @"alert";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  [v2 recordClick:v4];
}

void __88__VUIAccountSettingsConnectedAppsViewController__promptToDisableChannel_withExternalID___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleChannelPromptDismiss:*(a1 + 32)];
}

- (BOOL)_runPrePromptContinuationCheck:(id)a3 sender:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator isReloadingForID:v8];
  v10 = v9 | [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator isCurrentlyPrompting];
  if (v10)
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"prompting";
      v16 = 138412802;
      v17 = v6;
      v18 = 2112;
      if (v9)
      {
        v12 = @"reloading";
      }

      v19 = v8;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - Received toggleSpecifier of value:%@ for specifierID: %@ while %@. Clearing operation for this channel", &v16, 0x20u);
    }

    [(VUIConnectedAppOperationCoordinator *)self->_inflightOperationCoordinator clearOperationForID:v8];
    [(VUIAccountSettingsConnectedAppsViewController *)self reloadSpecifier:v7 animated:1];
  }

  if (v6 && [v6 intValue] < 2)
  {
    v14 = v10 ^ 1;
  }

  else
  {
    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(VUIAccountSettingsConnectedAppsViewController *)v6 _runPrePromptContinuationCheck:v8 sender:v13];
    }

    v14 = 0;
  }

  return v14 & 1;
}

- (void)_reloadSpecifierValueAfterCancelation:(id)a3
{
  v4 = a3;
  v5 = [(VUIAccountSettingsConnectedAppsViewController *)self specifierForID:v4];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__VUIAccountSettingsConnectedAppsViewController__reloadSpecifierValueAfterCancelation___block_invoke;
  v8[3] = &unk_1E872D9B8;
  objc_copyWeak(&v11, &location);
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __87__VUIAccountSettingsConnectedAppsViewController__reloadSpecifierValueAfterCancelation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[184] setOperationForID:*(a1 + 32) operationType:4];
  [WeakRetained reloadSpecifier:*(a1 + 40) animated:1];
}

- (void)_handleChannelPromptDismiss:(id)a3
{
  v9[4] = *MEMORY[0x1E69E9840];
  inflightOperationCoordinator = self->_inflightOperationCoordinator;
  v5 = a3;
  [(VUIConnectedAppOperationCoordinator *)inflightOperationCoordinator clearOperationForID:v5];
  [(VUIAccountSettingsConnectedAppsViewController *)self _reloadSpecifierValueAfterCancelation:v5];
  v6 = +[VUIMetricsController sharedInstance];
  v8[0] = @"targetId";
  v8[1] = @"targetType";
  v9[0] = v5;
  v9[1] = @"alertButton";
  v8[2] = @"actionType";
  v8[3] = @"actionContext";
  v9[2] = @"cancel";
  v9[3] = @"alert";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  [v6 recordClick:v7];
}

- (int64_t)_alertStyle
{
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithHorizontalSizeClass:2];
  v4 = [(VUIAccountSettingsConnectedAppsViewController *)self traitCollection];
  v5 = [v4 containsTraitsInCollection:v3];

  return v5;
}

- (void)_configureDoneButton
{
  if (self->_showsDoneButton)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismiss];
    v4 = [(VUIAccountSettingsConnectedAppsViewController *)self navigationItem];
    [v4 setRightBarButtonItem:v5];
  }
}

- (void)_dismiss
{
  v2 = [(VUIAccountSettingsConnectedAppsViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

+ (void)fetchConnectedAppsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69E15D0] sharedSettings];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke;
  v6[3] = &unk_1E872E470;
  v7 = v3;
  v5 = v3;
  [v4 synchronize:1 completion:v6];
}

void __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_cold_1(v4, v5);
    }

    v6 = *(a1 + 32);
    v7 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    (*(v6 + 16))(v6, v7, v4);
  }

  else
  {
    v8 = [MEMORY[0x1E69E15D0] sharedSettings];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_146;
    v9[3] = &unk_1E872D7B8;
    v10 = v8;
    v11 = *(a1 + 32);
    v7 = v8;
    [v7 _updateDisplayNamesForUI:v9];
  }
}

void __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_146(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_2;
  block[3] = &unk_1E8735F88;
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _watchListAppsFiltered];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 count];
    v5 = *(a1 + 48);
    v6 = 134218240;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIAccountSettingsConnectedApps - fetchConnectedApps - finished fetching apps, count: %lu, updateSuccess: %d", &v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void __62__VUIAccountSettingsConnectedAppsViewController__loadAppGroup__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIAccountSettingsConnectedApps - loadAppGroup - app groups are empty or an error occured! aborting load. error: %@", &v2, 0xCu);
}

- (void)_runPrePromptContinuationCheck:(os_log_t)log sender:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1E323F000, log, OS_LOG_TYPE_ERROR, "VUIAccountSettingsConnectedApps - Received invalid toggleSpecifier value:%@ for specifierID: %@", &v3, 0x16u);
}

void __82__VUIAccountSettingsConnectedAppsViewController_fetchConnectedAppsWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUIAccountSettingsConnectedApps - fetchConnectedApps - failed to fetch connected apps with error: %@", &v2, 0xCu);
}

@end