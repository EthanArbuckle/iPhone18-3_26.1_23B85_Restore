@interface VUIVPPAManager
+ (BOOL)_isReminderDue:(id)a3 reminderInterval:(double)a4;
+ (BOOL)channelAlreadyExists:(id)a3 channelID:(id)a4;
+ (id)_getChannelDetailsForID:(id)a3;
+ (id)_getConsentedBrandsFromSettingsStore;
+ (id)_getConsentedChannels;
+ (id)_getDeniedBrandsFromSettingsStore;
+ (id)_getDeniedChannels;
+ (id)addUniqueChannels:(id)a3 channels:(id)a4;
+ (id)sharedInstance;
- (BOOL)_isChannelVPPAPromptEligible:(id)a3;
- (BOOL)_isVPPAPromptDueForConfig:(id)a3;
- (VUIVPPAManager)init;
- (id)_appSettingsForChannelID:(id)a3 externalID:(id)a4;
- (id)_filterOutNotEligibleVPPAChannels:(id)a3;
- (id)_getChannelDetailsFor:(id)a3 channelsResponse:(id)a4;
- (id)_getEligibleBulkChannels;
- (id)_getVPPABulkChannels:(int64_t)a3;
- (id)_rootViewController;
- (id)_subscribedAppBundleIdentifiers;
- (id)_watchlistOrderedChannels;
- (void)_completeConfigurationResponse:(id)a3 error:(id)a4 channelDetails:(id)a5 shouldForceConsentPrompt:(BOOL)a6 completion:(id)a7;
- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)a3 shouldForceConsentPrompt:(BOOL)a4 completion:(id)a5;
- (void)_presentVPPAConsentScreen:(id)a3 vppaState:(int64_t)a4 completion:(id)a5;
- (void)_removeNotEligibleChannelFromSettingsStore:(id)a3;
- (void)clearVPPAState;
- (void)reloadConfigurationAfterVPPAChange;
- (void)startVPPAConsentFlow:(id)a3 consentCancelButtonType:(unint64_t)a4 shouldForceVPPAPrompt:(BOOL)a5 completion:(id)a6;
- (void)startVPPAConsentFlowForDeeplink:(id)a3 channelsResponse:(id)a4 completion:(id)a5;
@end

@implementation VUIVPPAManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_7 != -1)
  {
    +[VUIVPPAManager sharedInstance];
  }

  v3 = sharedInstance___instance_6;

  return v3;
}

void __32__VUIVPPAManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIVPPAManager);
  v1 = sharedInstance___instance_6;
  sharedInstance___instance_6 = v0;
}

- (VUIVPPAManager)init
{
  v3.receiver = self;
  v3.super_class = VUIVPPAManager;
  result = [(VUIVPPAManager *)&v3 init];
  if (result)
  {
    result->_alreadyInProgress = 0;
  }

  return result;
}

- (void)startVPPAConsentFlow:(id)a3 consentCancelButtonType:(unint64_t)a4 shouldForceVPPAPrompt:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x1E69D5920] activeAccount];
  v13 = [v12 ams_DSID];

  if (!v13)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel.", buf, 2u);
    }

LABEL_8:

    (*(v11 + 2))(v11, 0, 0);
    goto LABEL_16;
  }

  self->_consentCancelButtonType = a4;
  if (_os_feature_enabled_impl())
  {
    if ([(VUIVPPAManager *)self _isChannelVPPAPromptEligible:v10])
    {
      [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:v10 shouldForceConsentPrompt:v7 completion:v11];
    }

    else
    {
      v17 = VUIDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v10 name];
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", buf, 0xCu);
      }

      (*(v11 + 2))(v11, 1, 0);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __96__VUIVPPAManager_startVPPAConsentFlow_consentCancelButtonType_shouldForceVPPAPrompt_completion___block_invoke;
    v19[3] = &unk_1E8736BA0;
    objc_copyWeak(&v23, buf);
    v20 = v10;
    v16 = v15;
    v21 = v16;
    v22 = v11;
    v24 = v7;
    [v16 loadIfNeededWithCompletion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

LABEL_16:
}

void __96__VUIVPPAManager_startVPPAConsentFlow_consentCancelButtonType_shouldForceVPPAPrompt_completion___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!a2 || ([*(a1 + 32) channelID], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "channelForID:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v6 = *(a1 + 32);
  }

  if ([WeakRetained _isChannelVPPAPromptEligible:v6])
  {
    [WeakRetained _fetchConfigurationAndPresentVPPAIfRequired:v6 shouldForceConsentPrompt:*(a1 + 64) completion:*(a1 + 48)];
  }

  else
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 name];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &v9, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)clearVPPAState
{
  [(VUIVPPAManager *)self setAccessViewController:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__VUIVPPAManager_clearVPPAState__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_getChannelDetailsFor:(id)a3 channelsResponse:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = a3;
    v6 = [v4 vui_dictionaryForKey:@"channels"];
    v4 = [v6 vui_dictionaryForKey:v5];
  }

  return v4;
}

- (void)startVPPAConsentFlowForDeeplink:(id)a3 channelsResponse:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69D5920] activeAccount];
  v12 = [v11 ams_DSID];

  if (!v12)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (!v8)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel ID.", &buf, 2u);
    }

    goto LABEL_17;
  }

  v13 = _os_feature_enabled_impl();
  if (!v9 || !v13)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__32;
    v31 = __Block_byref_object_dispose__32;
    v32 = 0;
    v17 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__VUIVPPAManager_startVPPAConsentFlowForDeeplink_channelsResponse_completion___block_invoke;
    v21[3] = &unk_1E8736BC8;
    objc_copyWeak(&v26, &location);
    p_buf = &buf;
    v18 = v17;
    v22 = v18;
    v23 = v8;
    v24 = v10;
    [v18 loadIfNeededWithCompletion:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
    goto LABEL_22;
  }

  v14 = [(VUIVPPAManager *)self _getChannelDetailsFor:v8 channelsResponse:v9];
  if (!v14)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel found for channel ID.", &buf, 2u);
    }

LABEL_17:

    (*(v10 + 2))(v10, 0, 0);
    goto LABEL_22;
  }

  v15 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:v14];
  if ([(VUIVPPAManager *)self _isChannelVPPAPromptEligible:v15])
  {
    [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:v15 shouldForceConsentPrompt:0 completion:v10];
  }

  else
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v15 name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &buf, 0xCu);
    }

    (*(v10 + 2))(v10, 1, 0);
  }

LABEL_22:
}

void __78__VUIVPPAManager_startVPPAConsentFlowForDeeplink_channelsResponse_completion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (a2)
  {
    v5 = [*(a1 + 32) channelForID:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel.", &v10, 2u);
    }

    goto LABEL_11;
  }

  if (([WeakRetained _isChannelVPPAPromptEligible:?] & 1) == 0)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(*(a1 + 56) + 8) + 40) name];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &v10, 0xCu);
    }

LABEL_11:

    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  [WeakRetained _fetchConfigurationAndPresentVPPAIfRequired:*(*(*(a1 + 56) + 8) + 40) shouldForceConsentPrompt:0 completion:*(a1 + 48)];
LABEL_12:
}

- (void)reloadConfigurationAfterVPPAChange
{
  if (_os_feature_enabled_impl())
  {

    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:1 completion:&__block_literal_global_32_2];
  }

  else
  {
    v2 = [MEMORY[0x1E69E1508] sharedInstance];
    [v2 fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_38_1];
  }
}

void __52__VUIVPPAManager_reloadConfigurationAfterVPPAChange__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"VUIVPPADidChangeNotification" object:0 userInfo:0];
  }
}

void __52__VUIVPPAManager_reloadConfigurationAfterVPPAChange__block_invoke_35(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"VUIVPPADidChangeNotification" object:0 userInfo:0];
  }
}

- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)a3 shouldForceConsentPrompt:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke;
    v19[3] = &unk_1E8736BF0;
    v10 = &v22;
    objc_copyWeak(&v22, &location);
    v20 = v8;
    v23 = a4;
    v21 = v9;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:0 completion:v19];
    v11 = &v20;
    v12 = &v21;
  }

  else
  {
    v13 = [MEMORY[0x1E69E1508] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke_2;
    v14[3] = &unk_1E8736C18;
    v10 = &v17;
    objc_copyWeak(&v17, &location);
    v15 = v8;
    v18 = a4;
    v16 = v9;
    [v13 fetchConfigurationWithOptions:0 cachePolicy:0 queryParameters:0 completion:v14];
    v11 = &v15;
    v12 = &v16;
  }

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 data];

  if (v6)
  {
    v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:0];
  }

  v8 = objc_alloc(MEMORY[0x1E69E15C0]);
  v9 = [v6 vui_dictionaryForKey:@"data"];
  v10 = [v8 initWithServerResponseDictionary:v9 expirationDate:0 environmentHash:0];

  [WeakRetained _completeConfigurationResponse:v10 error:v5 channelDetails:*(a1 + 32) shouldForceConsentPrompt:*(a1 + 56) completion:*(a1 + 40)];
}

void __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained _completeConfigurationResponse:v5 error:v6 channelDetails:*(a1 + 32) shouldForceConsentPrompt:*(a1 + 56) completion:*(a1 + 40)];
  }

  else
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Failed to fetch init config: %@", &v10, 0xCu);
    }
  }
}

- (void)_completeConfigurationResponse:(id)a3 error:(id)a4 channelDetails:(id)a5 shouldForceConsentPrompt:(BOOL)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  objc_initWeak(&location, self);
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VUIVPPAManager__completeConfigurationResponse_error_channelDetails_shouldForceConsentPrompt_completion___block_invoke;
  block[3] = &unk_1E8736C40;
  objc_copyWeak(&v23, &location);
  v19 = v11;
  v20 = v12;
  v24 = a6;
  v21 = self;
  v22 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  dispatch_async(v14, block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __106__VUIVPPAManager__completeConfigurationResponse_error_channelDetails_shouldForceConsentPrompt_completion___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) vppaStatus];
  v4 = [*(a1 + 32) vppaStatusString];
  v5 = [MEMORY[0x1E69E15D0] sharedSettings];
  v6 = [*(a1 + 40) channelID];
  v7 = [v5 settingsForChannelID:v6 externalID:0];

  if (v7)
  {
    v8 = [v7 accessStatus] == 1;
    v9 = [v7 accessStatus] == 2;
    v10 = [v7 accessStatus] == 0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 1;
  }

  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v3;
    if (v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = @"not found";
    }

    [*(a1 + 40) name];
    v14 = v25 = v10;
    v15 = [*(a1 + 40) isConsented];
    v16 = @"not consented";
    if (v15)
    {
      v16 = @"consented";
    }

    v17 = @"unknown";
    if (v9)
    {
      v17 = @"denied";
    }

    *buf = 138413058;
    v27 = v13;
    v3 = v12;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v16;
    if (v8)
    {
      v18 = @"granted";
    }

    else
    {
      v18 = v17;
    }

    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - VPPA state is %@. '%@' cached state: %@, access in settings: %@", buf, 0x2Au);

    v10 = v25;
  }

  if (!v4)
  {
    if (v10)
    {
      if (!v9)
      {
        goto LABEL_32;
      }
    }

    else if (!v9 || (*(a1 + 72) & 1) == 0)
    {
      v20 = VUIDefaultLogObject();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:

        goto LABEL_37;
      }

      v21 = [*(a1 + 40) name];
      *buf = 138412290;
      v27 = v21;
      v22 = "VUIVPPAManager - No vppaStatus found. %@ is consented or has explicitly denied";
LABEL_35:
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);

      goto LABEL_36;
    }

    v19 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_31:

LABEL_32:
      [WeakRetained _presentVPPAConsentScreen:*(a1 + 40) vppaState:v3 completion:*(a1 + 56)];
      goto LABEL_39;
    }

LABEL_30:
    v23 = [*(a1 + 40) name];
    *buf = 138412290;
    v27 = v23;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Forcing consent prompt for explicitly denied channel %@", buf, 0xCu);

    goto LABEL_31;
  }

  if ([*(a1 + 48) _isVPPAPromptDueForConfig:*(a1 + 32)])
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - bulk consent is due", buf, 2u);
    }

    goto LABEL_31;
  }

  if (v9 | (([*(a1 + 40) isConsented] & 1) == 0))
  {
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_32;
      }

      if (*(a1 + 72))
      {
        v19 = VUIDefaultLogObject();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    v20 = VUIDefaultLogObject();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v21 = [*(a1 + 40) name];
    *buf = 138412290;
    v27 = v21;
    v22 = "VUIVPPAManager - User has explicitly specified consent for %@";
    goto LABEL_35;
  }

LABEL_37:
  v24 = *(a1 + 56);
  if (v24)
  {
    (*(v24 + 16))(v24, 1, 0);
  }

LABEL_39:
}

- (BOOL)_isChannelVPPAPromptEligible:(id)a3
{
  v3 = a3;
  if ([v3 isWatchListEnabled])
  {
    v4 = [v3 isFirstParty] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isVPPAPromptDueForConfig:(id)a3
{
  v3 = a3;
  v4 = [v3 vppaStatus];
  v5 = [v3 vppaSessionDurationInMillis];

  [v5 doubleValue];
  v7 = v6 / 1000.0;
  if (v7 <= 0.0)
  {
    v8 = 86400.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 objectForKey:@"vppaConsentLastPrompted"];

  v11 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 2 || v4 == 1 && [VUIVPPAManager _isReminderDue:v10 reminderInterval:v8];
  return v11;
}

- (void)_presentVPPAConsentScreen:(id)a3 vppaState:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Present consent screen", buf, 2u);
  }

  v11 = [MEMORY[0x1E695DF70] array];
  [v11 addObject:v8];
  v12 = [(VUIVPPAManager *)self _getVPPABulkChannels:a4];
  v13 = [(VUIVPPAManager *)self _getEligibleBulkChannels];
  if ([v12 count])
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Adding VPPA channels", buf, 2u);
    }

    v15 = v12;
LABEL_11:

    v16 = [objc_opt_class() addUniqueChannels:v15 channels:v11];

    v11 = v16;
    goto LABEL_12;
  }

  if ([v13 count])
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Adding Eligible channels", buf, 2u);
    }

    v15 = v13;
    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke;
  v20[3] = &unk_1E8736CE0;
  objc_copyWeak(v25, buf);
  v25[1] = a4;
  v21 = v11;
  v22 = self;
  v23 = v8;
  v24 = v9;
  v17 = v8;
  v18 = v11;
  v19 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(buf);
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke(uint64_t a1)
{
  v38[4] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained alreadyInProgress])
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Already presenting Consent screen. Skipping", buf, 2u);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
      goto LABEL_20;
    }
  }

  else
  {
    [WeakRetained setAlreadyInProgress:1];
  }

  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [MEMORY[0x1E695DF00] date];
  [v5 setObject:v6 forKey:@"vppaConsentLastPrompted"];

  v7 = [MEMORY[0x1E69D5920] activeAccount];
  v8 = [v7 username];

  v9 = &stru_1F5DB25C0;
  if (v8)
  {
    v9 = v8;
  }

  v37[0] = @"account";
  v37[1] = @"NewVPPAConsentPrompt";
  v10 = MEMORY[0x1E695E118];
  v11 = *(a1 + 72);
  v12 = v11 == 0;
  if (v11)
  {
    v13 = MEMORY[0x1E695E110];
  }

  else
  {
    v13 = MEMORY[0x1E695E118];
  }

  v38[0] = v9;
  v38[1] = v13;
  if (v12)
  {
    v10 = MEMORY[0x1E695E110];
  }

  v37[2] = @"requireVPPAStateUpdate";
  v37[3] = @"shouldDenyOnCancel";
  v38[2] = v10;
  v38[3] = MEMORY[0x1E695E110];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v15 = [VUIAccessViewController alloc];
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) consentCancelButtonType];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_68;
  v31 = &unk_1E8736CB8;
  v32 = WeakRetained;
  v33 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v34 = v18;
  v35 = v19;
  v20 = [(VUIAccessViewController *)v15 initWithChannels:v16 options:v14 consentCancelButtonType:v17 completionHandler:&v28];
  [*(a1 + 40) setAccessViewController:{v20, v28, v29, v30, v31, v32}];
  v21 = [MEMORY[0x1E69DC938] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 2)
  {
    v23 = 8;
  }

  else
  {
    v24 = [MEMORY[0x1E69DC938] currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 1)
    {
      v23 = 2;
    }

    else
    {
      v23 = -2;
    }
  }

  [(VUIAccessViewController *)v20 setModalPresentationStyle:v23];
  v26 = [*(a1 + 40) _rootViewController];
  [v26 presentViewController:v20 animated:1 completion:0];
  v27 = [MEMORY[0x1E696AD88] defaultCenter];
  [v27 postNotificationName:@"VUIVPPAPresentedNotification" object:0 userInfo:0];

LABEL_20:
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_68(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a2;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Received access result: %lu", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_69;
  block[3] = &unk_1E8736C90;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v6;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_69(uint64_t a1)
{
  v2 = [*(a1 + 32) accessViewController];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_2;
  v8 = &unk_1E8736C68;
  v11 = *(a1 + 56);
  v9 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v10 = v3;
  v12 = v4;
  [v2 dismissViewControllerAnimated:1 completion:&v5];

  [*(a1 + 32) setAccessViewController:{0, v5, v6, v7, v8}];
  [*(a1 + 32) setAlreadyInProgress:0];
}

void __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) appName];
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Updating VPPA consent for channel details: %@ and invalidating cache", buf, 0xCu);
    }

    if (_os_feature_enabled_impl())
    {
      v5 = +[_TtC8VideosUI28VUIUTSChannelsRequestManager sharedInstance];
      [v5 resetCache];
    }

    else
    {
      v5 = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
      v6 = [*(a1 + 32) channelID];
      [v5 updateConsentStatusForCachedEntry:v6 consented:1];
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (*(a1 + 48) - 1) < 2 || *(a1 + 56) == 1;
    (*(v7 + 16))(v7, v8, v2 == 1);
  }

  v9 = [*(a1 + 32) channelID];
  v13[1] = @"userAcceptedVPPA";
  v14[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v2 == 1];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 postNotificationName:@"VUIVPPADismissedNotification" object:0 userInfo:v11];
}

- (id)_getVPPABulkChannels:(int64_t)a3
{
  if ((a3 - 1) <= 1)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [objc_opt_class() _getConsentedChannels];
LABEL_5:
    v7 = v5;
    [v4 addObjectsFromArray:v5];

    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v6 = [objc_opt_class() _getConsentedChannels];
    [v4 addObjectsFromArray:v6];

    v5 = [objc_opt_class() _getDeniedChannels];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:
  v8 = [(VUIVPPAManager *)self _filterOutNotEligibleVPPAChannels:v4];

  return v8;
}

- (id)_filterOutNotEligibleVPPAChannels:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v14 = v4;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (([v10 isiTunes] & 1) != 0 || (objc_msgSend(v10, "isFirstParty") & 1) != 0 || !objc_msgSend(v10, "isWatchListEnabled"))
          {
            v11 = VUIDefaultLogObject();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 name];
              *buf = 138412290;
              v21 = v12;
              _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ not eligible for VPPA.", buf, 0xCu);
            }

            [(VUIVPPAManager *)self _removeNotEligibleChannelFromSettingsStore:v10];
          }

          else
          {
            [v15 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    v4 = v14;
  }

  else
  {
    v15 = v4;
  }

  return v15;
}

- (void)_removeNotEligibleChannelFromSettingsStore:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69E15D0] sharedSettings];
  v5 = [v3 channelID];
  v6 = [v4 settingsForChannelID:v5 externalID:0];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 appName];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Removing not eligible channel %@ from settings store.", &v9, 0xCu);
  }

  [v4 _removeWatchListApp:v6];
}

- (id)_getEligibleBulkChannels
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = [(VUIVPPAManager *)self _subscribedAppBundleIdentifiers];
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(VUIVPPAManager *)self _watchlistOrderedChannels];
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v33;
    *&v5 = 138412290;
    v23 = v5;
    v26 = v3;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 appBundleIDs];
        if (([v9 isFirstParty] & 1) == 0 && objc_msgSend(v9, "isWatchListEnabled"))
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = v27;
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v29;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * j);
                if ([v10 containsObject:v16])
                {
                  v17 = [(VUIVPPAManager *)v25 _subscriptionIdentifierForBundleID:v16];
                  v18 = [v9 channelID];
                  v19 = [(VUIVPPAManager *)v25 _appSettingsForChannelID:v18 externalID:v17];

                  if ((!v19 || ![v19 accessStatus]) && (objc_msgSend(v24, "containsObject:", v9) & 1) == 0)
                  {
                    v20 = VUIDefaultLogObject();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      v21 = [v9 channelID];
                      *buf = v23;
                      v37 = v21;
                      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Found eligible channel: %@", buf, 0xCu);
                    }

                    [v24 addObject:v9];
                  }

                  goto LABEL_24;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:

          v3 = v26;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v6);
  }

  return v24;
}

+ (BOOL)_isReminderDue:(id)a3 reminderInterval:(double)a4
{
  if (!a3)
  {
    return 1;
  }

  v4 = [a3 dateByAddingTimeInterval:a4];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [v4 compare:v5] == -1;

  return v6;
}

+ (BOOL)channelAlreadyExists:(id)a3 channelID:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6 && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16]) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 channelID];
          if (v13)
          {
            v14 = [v12 channelID];
            v15 = [v14 isEqualToString:v6];

            v9 |= v15;
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

+ (id)addUniqueChannels:(id)a3 channels:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 channelID];

          if (v12)
          {
            v13 = objc_opt_class();
            v14 = [v11 channelID];
            LOBYTE(v13) = [v13 channelAlreadyExists:v6 channelID:v14];

            if ((v13 & 1) == 0)
            {
              [v6 addObject:v11];
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_getConsentedChannels
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _getConsentedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() _getChannelDetailsForID:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = v9;
        if (v9 && ([v9 isiTunes] & 1) == 0 && (objc_msgSend(v10, "isFirstParty") & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)_getDeniedChannels
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _getDeniedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() _getChannelDetailsForID:{*(*(&v12 + 1) + 8 * i), v12}];
        v10 = v9;
        if (v9 && ([v9 isiTunes] & 1) == 0 && (objc_msgSend(v10, "isFirstParty") & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_rootViewController
{
  v2 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  v3 = [v2 rootViewController];

  return v3;
}

- (id)_subscribedAppBundleIdentifiers
{
  v2 = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  v3 = [v2 subscribedAppBundleIdentifiers];

  return v3;
}

- (id)_watchlistOrderedChannels
{
  v2 = [MEMORY[0x1E69E1500] sharedInstance];
  v3 = [v2 orderedChannels];

  return v3;
}

- (id)_appSettingsForChannelID:(id)a3 externalID:(id)a4
{
  v5 = MEMORY[0x1E69E15D0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedSettings];
  v9 = [v8 settingsForChannelID:v7 externalID:v6];

  return v9;
}

+ (id)_getConsentedBrandsFromSettingsStore
{
  v2 = [MEMORY[0x1E69E15D0] sharedSettings];
  v3 = [v2 consentedBrands];

  return v3;
}

+ (id)_getDeniedBrandsFromSettingsStore
{
  v2 = [MEMORY[0x1E69E15D0] sharedSettings];
  v3 = [v2 deniedBrands];

  return v3;
}

+ (id)_getChannelDetailsForID:(id)a3
{
  v3 = MEMORY[0x1E69E1500];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 channelForID:v4];

  return v6;
}

@end