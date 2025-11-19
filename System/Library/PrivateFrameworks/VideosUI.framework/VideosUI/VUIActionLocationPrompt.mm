@interface VUIActionLocationPrompt
- (UIResponder)targetResponder;
- (VUIActionLocationPrompt)initWithContextData:(id)a3 appContext:(id)a4;
- (void)_locationAuthorizationStatusDidChange:(id)a3;
- (void)_performLocationChecksWithTargetResponder:(id)a3 shouldPromptLocationAlert:(BOOL)a4 shouldRequestUserLocation:(BOOL)a5 isLocationAuthorized:(BOOL)a6 authorizationStatusDidChangeNotificationName:(id)a7 completionHandler:(id)a8;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionLocationPrompt

- (VUIActionLocationPrompt)initWithContextData:(id)a3 appContext:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30.receiver = self;
  v30.super_class = VUIActionLocationPrompt;
  v7 = [(VUIActionLocationPrompt *)&v30 init];
  if (v7)
  {
    v7->_geoLocationEnforced = [v6 vui_BOOLForKey:@"geoLocationEnforced" defaultValue:0];
    v8 = [MEMORY[0x1E69DF6F0] isMac];
    v9 = 0;
    if ((v8 & 1) == 0)
    {
      v9 = [v6 vui_BOOLForKey:@"forcesSystemPrompt" defaultValue:1];
    }

    v7->_forcesSystemPrompt = v9;
    v10 = [v6 vui_stringForKey:@"settingsPromptTitle"];
    settingsPromptTitle = v7->_settingsPromptTitle;
    v7->_settingsPromptTitle = v10;

    v12 = [v6 vui_stringForKey:@"settingsPromptMessage"];
    settingsPromptMessage = v7->_settingsPromptMessage;
    v7->_settingsPromptMessage = v12;

    v14 = [v6 vui_stringForKey:@"settingsPromptButtonTitle"];
    settingsPromptButtonTitle = v7->_settingsPromptButtonTitle;
    v7->_settingsPromptButtonTitle = v14;

    v16 = [v6 vui_stringForKey:@"settingsPromptCancelTitle"];
    v17 = v16;
    if (!v16)
    {
      v4 = +[VUILocalizationManager sharedInstance];
      v17 = [v4 localizedStringForKey:@"CANCEL"];
    }

    objc_storeStrong(&v7->_settingsPromptCancelTitle, v17);
    if (!v16)
    {
    }

    v18 = [v6 vui_stringForKey:@"settingsPromptUrl"];
    v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
    settingsURL = v7->_settingsURL;
    v7->_settingsURL = v19;

    v21 = MEMORY[0x1E695DF90];
    v33[0] = @"dialogId";
    v33[1] = @"dialogType";
    v34[0] = @"locationAuthorization";
    v34[1] = @"locationAuthorization";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v23 = [v21 dictionaryWithDictionary:v22];

    v24 = [v6 vui_dictionaryForKey:@"metrics"];
    v25 = v24;
    if (v24)
    {
      v31 = @"details";
      v32 = v24;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v23 addEntriesFromDictionary:v26];
    }

    v27 = [v23 copy];
    dialogMetrics = v7->_dialogMetrics;
    v7->_dialogMetrics = v27;
  }

  return v7;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    v8 = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus];
    v9 = [(VUIActionLocationPrompt *)self geoLocationEnforced];
    v10 = v8 == 1 && v9;
    v11 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationAuthorizationDidChange];
    [(VUIActionLocationPrompt *)self _performLocationChecksWithTargetResponder:v6 shouldPromptLocationAlert:v10 shouldRequestUserLocation:v8 == 2 isLocationAuthorized:v8 == 0 authorizationStatusDidChangeNotificationName:v11 completionHandler:v7];
  }

  else
  {
    v12 = [MEMORY[0x1E69E1540] defaultLocationManager];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E1540];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__VUIActionLocationPrompt_performWithTargetResponder_completionHandler___block_invoke;
    v15[3] = &unk_1E8732988;
    v14 = v12;
    v16 = v14;
    objc_copyWeak(&v19, &location);
    v17 = v6;
    v18 = v7;
    [v13 locationServicesEnabled:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __72__VUIActionLocationPrompt_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__VUIActionLocationPrompt_performWithTargetResponder_completionHandler___block_invoke_2;
  v5[3] = &unk_1E8732960;
  objc_copyWeak(&v8, (a1 + 56));
  v9 = a2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 fetchAuthorizationStatus:v5];

  objc_destroyWeak(&v8);
}

void __72__VUIActionLocationPrompt_performWithTargetResponder_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (![WeakRetained geoLocationEnforced])
  {
    v5 = 0;
LABEL_7:
    v4 = WeakRetained;
    goto LABEL_8;
  }

  if (*(a1 + 56) != 1)
  {
    v5 = 1;
    goto LABEL_7;
  }

  v4 = WeakRetained;
  if (!a2)
  {
    v8 = [WeakRetained forcesSystemPrompt];
    v4 = WeakRetained;
    v5 = v8 ^ 1u;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_8:
  if (a2 == -1)
  {
    v7 = 1;
    goto LABEL_15;
  }

LABEL_9:
  if ([v4 geoLocationEnforced])
  {
    v6 = [WeakRetained forcesSystemPrompt];
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_15:
  [WeakRetained _performLocationChecksWithTargetResponder:*(a1 + 32) shouldPromptLocationAlert:v5 shouldRequestUserLocation:v7 isLocationAuthorized:a2 == 1 authorizationStatusDidChangeNotificationName:*MEMORY[0x1E69E16C8] completionHandler:*(a1 + 40)];
}

- (void)_performLocationChecksWithTargetResponder:(id)a3 shouldPromptLocationAlert:(BOOL)a4 shouldRequestUserLocation:(BOOL)a5 isLocationAuthorized:(BOOL)a6 authorizationStatusDidChangeNotificationName:(id)a7 completionHandler:(id)a8
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  WeakRetained = objc_loadWeakRetained(&_pendingInstance);
  if (WeakRetained)
  {
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 removeObserver:WeakRetained];

    [WeakRetained setTargetResponder:0];
    [WeakRetained setCompletionHandler:0];
  }

  if (v12)
  {
    v19 = [(VUIActionLocationPrompt *)self settingsURL];
    if (v19)
    {
      v20 = v19;
      v21 = [(VUIActionLocationPrompt *)self settingsPromptTitle];
      if (v21)
      {
        v22 = v21;
        v23 = [(VUIActionLocationPrompt *)self settingsPromptMessage];
        if (v23)
        {
          v24 = v23;
          v25 = [(VUIActionLocationPrompt *)self settingsPromptButtonTitle];

          if (v25)
          {
            v26 = [(VUIActionLocationPrompt *)self settingsPromptTitle];
            v27 = [(VUIActionLocationPrompt *)self settingsPromptMessage];
            v28 = [VUIAlertController vui_alertControllerWithTitle:v26 message:v27 preferredStyle:1];

            v29 = [(VUIActionLocationPrompt *)self settingsPromptButtonTitle];
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __205__VUIActionLocationPrompt__performLocationChecksWithTargetResponder_shouldPromptLocationAlert_shouldRequestUserLocation_isLocationAuthorized_authorizationStatusDidChangeNotificationName_completionHandler___block_invoke;
            v44[3] = &unk_1E87329B0;
            v44[4] = self;
            v30 = [VUIAlertAction vui_actionWithTitle:v29 style:0 handler:v44];

            v31 = [(VUIActionLocationPrompt *)self settingsPromptCancelTitle];
            v32 = [VUIAlertAction vui_actionWithTitle:v31 style:1 handler:0];

            [v28 vui_addAction:v30];
            [v28 vui_addAction:v32];
            v33 = +[VUIInterfaceFactory sharedInstance];
            v34 = [v33 controllerPresenter];

            [v28 vui_presentAlertFromPresentingController:v34 animated:1 completion:0];
            v35 = +[VUIMetricsController sharedInstance];
            v36 = [(VUIActionLocationPrompt *)self dialogMetrics];
            [v35 recordDialog:v36];

            if (v16)
            {
              v16[2](v16, 0);
            }

            goto LABEL_22;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_25:
    if (v16)
    {
      v16[2](v16, 0);
    }

    goto LABEL_27;
  }

  if (v11)
  {
    v37 = [MEMORY[0x1E696AD88] defaultCenter];
    [v37 addObserver:self selector:sel__locationAuthorizationStatusDidChange_ name:v15 object:0];

    [(VUIActionLocationPrompt *)self setTargetResponder:v14];
    [(VUIActionLocationPrompt *)self setCompletionHandler:v16];
    objc_storeWeak(&_pendingInstance, self);
    if (_os_feature_enabled_impl())
    {
      v43 = 0;
      [_TtC8VideosUI27VUILocationServiceProxyObjC requestUserAuthorizationAndReturnError:&v43];
      v38 = v43;
      if (v38)
      {
        v28 = v38;
        v39 = VUIDefaultLogObject();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v28;
          _os_log_impl(&dword_1E323F000, v39, OS_LOG_TYPE_INFO, "VUIActionLocationPrompt:: failed to request user authorization to use location: %@", buf, 0xCu);
        }

        if (v16)
        {
          v16[2](v16, 0);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v41 = [MEMORY[0x1E69E1540] defaultLocationManager];
      [v41 requestAuthorizationWithForcedPrompt:{-[VUIActionLocationPrompt geoLocationEnforced](self, "geoLocationEnforced")}];
    }

    v28 = +[VUIMetricsController sharedInstance];
    v42 = [(VUIActionLocationPrompt *)self dialogMetrics];
    [v28 recordDialog:v42];

LABEL_22:
    goto LABEL_27;
  }

  if (v16)
  {
    v40 = [(VUIAction *)self documentOptions];
    [(VUIAction *)self _finalizeWithSuccess:v10 targetResponder:v14 documentOptions:v40 completion:v16];
  }

LABEL_27:
}

void __205__VUIActionLocationPrompt__performLocationChecksWithTargetResponder_shouldPromptLocationAlert_shouldRequestUserLocation_isLocationAuthorized_authorizationStatusDidChangeNotificationName_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [*(a1 + 32) settingsURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)_locationAuthorizationStatusDidChange:(id)a3
{
  v13 = a3;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  if (self->_completionHandler)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus]== 0;
    }

    else
    {
      v6 = [v13 userInfo];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69E16D8]];
      v8 = [v7 intValue];

      v5 = v8 == 1;
    }

    v9 = v5;
    v10 = [(VUIActionLocationPrompt *)self targetResponder];
    v11 = [(VUIAction *)self documentOptions];
    [(VUIAction *)self _finalizeWithSuccess:v9 targetResponder:v10 documentOptions:v11 completion:self->_completionHandler];

    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

- (UIResponder)targetResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_targetResponder);

  return WeakRetained;
}

@end