@interface VUIVPPAManager
+ (BOOL)_isReminderDue:(id)due reminderInterval:(double)interval;
+ (BOOL)channelAlreadyExists:(id)exists channelID:(id)d;
+ (id)_getChannelDetailsForID:(id)d;
+ (id)_getConsentedBrandsFromSettingsStore;
+ (id)_getConsentedChannels;
+ (id)_getDeniedBrandsFromSettingsStore;
+ (id)_getDeniedChannels;
+ (id)addUniqueChannels:(id)channels channels:(id)a4;
+ (id)sharedInstance;
- (BOOL)_isChannelVPPAPromptEligible:(id)eligible;
- (BOOL)_isVPPAPromptDueForConfig:(id)config;
- (VUIVPPAManager)init;
- (id)_appSettingsForChannelID:(id)d externalID:(id)iD;
- (id)_filterOutNotEligibleVPPAChannels:(id)channels;
- (id)_getChannelDetailsFor:(id)for channelsResponse:(id)response;
- (id)_getEligibleBulkChannels;
- (id)_getVPPABulkChannels:(int64_t)channels;
- (id)_rootViewController;
- (id)_subscribedAppBundleIdentifiers;
- (id)_watchlistOrderedChannels;
- (void)_completeConfigurationResponse:(id)response error:(id)error channelDetails:(id)details shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion;
- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)required shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion;
- (void)_presentVPPAConsentScreen:(id)screen vppaState:(int64_t)state completion:(id)completion;
- (void)_removeNotEligibleChannelFromSettingsStore:(id)store;
- (void)clearVPPAState;
- (void)reloadConfigurationAfterVPPAChange;
- (void)startVPPAConsentFlow:(id)flow consentCancelButtonType:(unint64_t)type shouldForceVPPAPrompt:(BOOL)prompt completion:(id)completion;
- (void)startVPPAConsentFlowForDeeplink:(id)deeplink channelsResponse:(id)response completion:(id)completion;
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

- (void)startVPPAConsentFlow:(id)flow consentCancelButtonType:(unint64_t)type shouldForceVPPAPrompt:(BOOL)prompt completion:(id)completion
{
  promptCopy = prompt;
  v27 = *MEMORY[0x1E69E9840];
  flowCopy = flow;
  completionCopy = completion;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (!ams_DSID)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!flowCopy)
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel.", buf, 2u);
    }

LABEL_8:

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_16;
  }

  self->_consentCancelButtonType = type;
  if (_os_feature_enabled_impl())
  {
    if ([(VUIVPPAManager *)self _isChannelVPPAPromptEligible:flowCopy])
    {
      [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:flowCopy shouldForceConsentPrompt:promptCopy completion:completionCopy];
    }

    else
    {
      v17 = VUIDefaultLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        name = [flowCopy name];
        *buf = 138412290;
        v26 = name;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __96__VUIVPPAManager_startVPPAConsentFlow_consentCancelButtonType_shouldForceVPPAPrompt_completion___block_invoke;
    v19[3] = &unk_1E8736BA0;
    objc_copyWeak(&v23, buf);
    v20 = flowCopy;
    v16 = mEMORY[0x1E69E1500];
    v21 = v16;
    v22 = completionCopy;
    v24 = promptCopy;
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

- (id)_getChannelDetailsFor:(id)for channelsResponse:(id)response
{
  responseCopy = response;
  if (response)
  {
    forCopy = for;
    v6 = [responseCopy vui_dictionaryForKey:@"channels"];
    responseCopy = [v6 vui_dictionaryForKey:forCopy];
  }

  return responseCopy;
}

- (void)startVPPAConsentFlowForDeeplink:(id)deeplink channelsResponse:(id)response completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  deeplinkCopy = deeplink;
  responseCopy = response;
  completionCopy = completion;
  activeAccount = [MEMORY[0x1E69D5920] activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  if (!ams_DSID)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - User not logged in. Cannot continue.", &buf, 2u);
    }

    goto LABEL_17;
  }

  if (!deeplinkCopy)
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
  if (!responseCopy || !v13)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__32;
    v31 = __Block_byref_object_dispose__32;
    v32 = 0;
    mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstanceFiltered];
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__VUIVPPAManager_startVPPAConsentFlowForDeeplink_channelsResponse_completion___block_invoke;
    v21[3] = &unk_1E8736BC8;
    objc_copyWeak(&v26, &location);
    p_buf = &buf;
    v18 = mEMORY[0x1E69E1500];
    v22 = v18;
    v23 = deeplinkCopy;
    v24 = completionCopy;
    [v18 loadIfNeededWithCompletion:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
    goto LABEL_22;
  }

  v14 = [(VUIVPPAManager *)self _getChannelDetailsFor:deeplinkCopy channelsResponse:responseCopy];
  if (!v14)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - No channel found for channel ID.", &buf, 2u);
    }

LABEL_17:

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_22;
  }

  v15 = [objc_alloc(MEMORY[0x1E69E14F0]) initWithDictionary:v14];
  if ([(VUIVPPAManager *)self _isChannelVPPAPromptEligible:v15])
  {
    [(VUIVPPAManager *)self _fetchConfigurationAndPresentVPPAIfRequired:v15 shouldForceConsentPrompt:0 completion:completionCopy];
  }

  else
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      name = [v15 name];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = name;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - %@ does not required vppa prompt.", &buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
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
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:&__block_literal_global_38_1];
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

- (void)_fetchConfigurationAndPresentVPPAIfRequired:(id)required shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion
{
  requiredCopy = required;
  completionCopy = completion;
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke;
    v19[3] = &unk_1E8736BF0;
    v10 = &v22;
    objc_copyWeak(&v22, &location);
    v20 = requiredCopy;
    promptCopy = prompt;
    v21 = completionCopy;
    [_TtC8VideosUI25VUIUTSNetworkManagerProxy fetchConfiguration:0 completion:v19];
    v11 = &v20;
    v12 = &v21;
  }

  else
  {
    mEMORY[0x1E69E1508] = [MEMORY[0x1E69E1508] sharedInstance];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__VUIVPPAManager__fetchConfigurationAndPresentVPPAIfRequired_shouldForceConsentPrompt_completion___block_invoke_2;
    v14[3] = &unk_1E8736C18;
    v10 = &v17;
    objc_copyWeak(&v17, &location);
    v15 = requiredCopy;
    promptCopy2 = prompt;
    v16 = completionCopy;
    [mEMORY[0x1E69E1508] fetchConfigurationWithOptions:0 cachePolicy:0 queryParameters:0 completion:v14];
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

- (void)_completeConfigurationResponse:(id)response error:(id)error channelDetails:(id)details shouldForceConsentPrompt:(BOOL)prompt completion:(id)completion
{
  responseCopy = response;
  detailsCopy = details;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__VUIVPPAManager__completeConfigurationResponse_error_channelDetails_shouldForceConsentPrompt_completion___block_invoke;
  block[3] = &unk_1E8736C40;
  objc_copyWeak(&v23, &location);
  v19 = responseCopy;
  v20 = detailsCopy;
  promptCopy = prompt;
  selfCopy = self;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = detailsCopy;
  v17 = responseCopy;
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

- (BOOL)_isChannelVPPAPromptEligible:(id)eligible
{
  eligibleCopy = eligible;
  if ([eligibleCopy isWatchListEnabled])
  {
    v4 = [eligibleCopy isFirstParty] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isVPPAPromptDueForConfig:(id)config
{
  configCopy = config;
  vppaStatus = [configCopy vppaStatus];
  vppaSessionDurationInMillis = [configCopy vppaSessionDurationInMillis];

  [vppaSessionDurationInMillis doubleValue];
  v7 = v6 / 1000.0;
  if (v7 <= 0.0)
  {
    v8 = 86400.0;
  }

  else
  {
    v8 = v7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [standardUserDefaults objectForKey:@"vppaConsentLastPrompted"];

  v11 = (vppaStatus & 0xFFFFFFFFFFFFFFFELL) == 2 || vppaStatus == 1 && [VUIVPPAManager _isReminderDue:v10 reminderInterval:v8];
  return v11;
}

- (void)_presentVPPAConsentScreen:(id)screen vppaState:(int64_t)state completion:(id)completion
{
  screenCopy = screen;
  completionCopy = completion;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Present consent screen", buf, 2u);
  }

  array = [MEMORY[0x1E695DF70] array];
  [array addObject:screenCopy];
  v12 = [(VUIVPPAManager *)self _getVPPABulkChannels:state];
  _getEligibleBulkChannels = [(VUIVPPAManager *)self _getEligibleBulkChannels];
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

    v16 = [objc_opt_class() addUniqueChannels:v15 channels:array];

    array = v16;
    goto LABEL_12;
  }

  if ([_getEligibleBulkChannels count])
  {
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Adding Eligible channels", buf, 2u);
    }

    v15 = _getEligibleBulkChannels;
    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65__VUIVPPAManager__presentVPPAConsentScreen_vppaState_completion___block_invoke;
  v20[3] = &unk_1E8736CE0;
  objc_copyWeak(v25, buf);
  v25[1] = state;
  v21 = array;
  selfCopy = self;
  v23 = screenCopy;
  v24 = completionCopy;
  v17 = screenCopy;
  v18 = array;
  v19 = completionCopy;
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

- (id)_getVPPABulkChannels:(int64_t)channels
{
  if ((channels - 1) <= 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    _getConsentedChannels = [objc_opt_class() _getConsentedChannels];
LABEL_5:
    v7 = _getConsentedChannels;
    [array addObjectsFromArray:_getConsentedChannels];

    goto LABEL_7;
  }

  if (channels == 3)
  {
    array = [MEMORY[0x1E695DF70] array];
    _getConsentedChannels2 = [objc_opt_class() _getConsentedChannels];
    [array addObjectsFromArray:_getConsentedChannels2];

    _getConsentedChannels = [objc_opt_class() _getDeniedChannels];
    goto LABEL_5;
  }

  array = 0;
LABEL_7:
  v8 = [(VUIVPPAManager *)self _filterOutNotEligibleVPPAChannels:array];

  return v8;
}

- (id)_filterOutNotEligibleVPPAChannels:(id)channels
{
  v23 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  if ([channelsCopy count])
  {
    v14 = channelsCopy;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = channelsCopy;
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
              name = [v10 name];
              *buf = 138412290;
              v21 = name;
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

    channelsCopy = v14;
  }

  else
  {
    v15 = channelsCopy;
  }

  return v15;
}

- (void)_removeNotEligibleChannelFromSettingsStore:(id)store
{
  v11 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  channelID = [storeCopy channelID];
  v6 = [mEMORY[0x1E69E15D0] settingsForChannelID:channelID externalID:0];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    appName = [storeCopy appName];
    v9 = 138412290;
    v10 = appName;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Removing not eligible channel %@ from settings store.", &v9, 0xCu);
  }

  [mEMORY[0x1E69E15D0] _removeWatchListApp:v6];
}

- (id)_getEligibleBulkChannels
{
  v40 = *MEMORY[0x1E69E9840];
  _subscribedAppBundleIdentifiers = [(VUIVPPAManager *)self _subscribedAppBundleIdentifiers];
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  _watchlistOrderedChannels = [(VUIVPPAManager *)self _watchlistOrderedChannels];
  v4 = [_watchlistOrderedChannels countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v33;
    *&v5 = 138412290;
    v23 = v5;
    v26 = _watchlistOrderedChannels;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(_watchlistOrderedChannels);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        appBundleIDs = [v9 appBundleIDs];
        if (([v9 isFirstParty] & 1) == 0 && objc_msgSend(v9, "isWatchListEnabled"))
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = _subscribedAppBundleIdentifiers;
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
                if ([appBundleIDs containsObject:v16])
                {
                  v17 = [(VUIVPPAManager *)selfCopy _subscriptionIdentifierForBundleID:v16];
                  channelID = [v9 channelID];
                  v19 = [(VUIVPPAManager *)selfCopy _appSettingsForChannelID:channelID externalID:v17];

                  if ((!v19 || ![v19 accessStatus]) && (objc_msgSend(array, "containsObject:", v9) & 1) == 0)
                  {
                    v20 = VUIDefaultLogObject();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      channelID2 = [v9 channelID];
                      *buf = v23;
                      v37 = channelID2;
                      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIVPPAManager - Found eligible channel: %@", buf, 0xCu);
                    }

                    [array addObject:v9];
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

          _watchlistOrderedChannels = v26;
        }
      }

      v6 = [_watchlistOrderedChannels countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v6);
  }

  return array;
}

+ (BOOL)_isReminderDue:(id)due reminderInterval:(double)interval
{
  if (!due)
  {
    return 1;
  }

  v4 = [due dateByAddingTimeInterval:interval];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v4 compare:date] == -1;

  return v6;
}

+ (BOOL)channelAlreadyExists:(id)exists channelID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  existsCopy = exists;
  dCopy = d;
  if (dCopy && (v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, (v7 = [existsCopy countByEnumeratingWithState:&v17 objects:v21 count:16]) != 0))
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
          objc_enumerationMutation(existsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          channelID = [v12 channelID];
          if (channelID)
          {
            channelID2 = [v12 channelID];
            v15 = [channelID2 isEqualToString:dCopy];

            v9 |= v15;
          }
        }
      }

      v8 = [existsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

+ (id)addUniqueChannels:(id)channels channels:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [channelsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(channelsCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          channelID = [v11 channelID];

          if (channelID)
          {
            v13 = objc_opt_class();
            channelID2 = [v11 channelID];
            LOBYTE(v13) = [v13 channelAlreadyExists:v6 channelID:channelID2];

            if ((v13 & 1) == 0)
            {
              [v6 addObject:v11];
            }
          }
        }
      }

      v8 = [channelsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_getConsentedChannels
{
  v17 = *MEMORY[0x1E69E9840];
  _getConsentedBrandsFromSettingsStore = [objc_opt_class() _getConsentedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _getConsentedBrandsFromSettingsStore;
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
  _getDeniedBrandsFromSettingsStore = [objc_opt_class() _getDeniedBrandsFromSettingsStore];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = _getDeniedBrandsFromSettingsStore;
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
  vui_keyWindow = [MEMORY[0x1E69DD2E8] vui_keyWindow];
  rootViewController = [vui_keyWindow rootViewController];

  return rootViewController;
}

- (id)_subscribedAppBundleIdentifiers
{
  defaultAppLibrary = [MEMORY[0x1E69E14D0] defaultAppLibrary];
  subscribedAppBundleIdentifiers = [defaultAppLibrary subscribedAppBundleIdentifiers];

  return subscribedAppBundleIdentifiers;
}

- (id)_watchlistOrderedChannels
{
  mEMORY[0x1E69E1500] = [MEMORY[0x1E69E1500] sharedInstance];
  orderedChannels = [mEMORY[0x1E69E1500] orderedChannels];

  return orderedChannels;
}

- (id)_appSettingsForChannelID:(id)d externalID:(id)iD
{
  v5 = MEMORY[0x1E69E15D0];
  iDCopy = iD;
  dCopy = d;
  sharedSettings = [v5 sharedSettings];
  v9 = [sharedSettings settingsForChannelID:dCopy externalID:iDCopy];

  return v9;
}

+ (id)_getConsentedBrandsFromSettingsStore
{
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  consentedBrands = [mEMORY[0x1E69E15D0] consentedBrands];

  return consentedBrands;
}

+ (id)_getDeniedBrandsFromSettingsStore
{
  mEMORY[0x1E69E15D0] = [MEMORY[0x1E69E15D0] sharedSettings];
  deniedBrands = [mEMORY[0x1E69E15D0] deniedBrands];

  return deniedBrands;
}

+ (id)_getChannelDetailsForID:(id)d
{
  v3 = MEMORY[0x1E69E1500];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance channelForID:dCopy];

  return v6;
}

@end