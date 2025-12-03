@interface VUIActionLocationPrompt
- (UIResponder)targetResponder;
- (VUIActionLocationPrompt)initWithContextData:(id)data appContext:(id)context;
- (void)_locationAuthorizationStatusDidChange:(id)change;
- (void)_performLocationChecksWithTargetResponder:(id)responder shouldPromptLocationAlert:(BOOL)alert shouldRequestUserLocation:(BOOL)location isLocationAuthorized:(BOOL)authorized authorizationStatusDidChangeNotificationName:(id)name completionHandler:(id)handler;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionLocationPrompt

- (VUIActionLocationPrompt)initWithContextData:(id)data appContext:(id)context
{
  v34[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = VUIActionLocationPrompt;
  v7 = [(VUIActionLocationPrompt *)&v30 init];
  if (v7)
  {
    v7->_geoLocationEnforced = [dataCopy vui_BOOLForKey:@"geoLocationEnforced" defaultValue:0];
    isMac = [MEMORY[0x1E69DF6F0] isMac];
    v9 = 0;
    if ((isMac & 1) == 0)
    {
      v9 = [dataCopy vui_BOOLForKey:@"forcesSystemPrompt" defaultValue:1];
    }

    v7->_forcesSystemPrompt = v9;
    v10 = [dataCopy vui_stringForKey:@"settingsPromptTitle"];
    settingsPromptTitle = v7->_settingsPromptTitle;
    v7->_settingsPromptTitle = v10;

    v12 = [dataCopy vui_stringForKey:@"settingsPromptMessage"];
    settingsPromptMessage = v7->_settingsPromptMessage;
    v7->_settingsPromptMessage = v12;

    v14 = [dataCopy vui_stringForKey:@"settingsPromptButtonTitle"];
    settingsPromptButtonTitle = v7->_settingsPromptButtonTitle;
    v7->_settingsPromptButtonTitle = v14;

    v16 = [dataCopy vui_stringForKey:@"settingsPromptCancelTitle"];
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

    v18 = [dataCopy vui_stringForKey:@"settingsPromptUrl"];
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

    v24 = [dataCopy vui_dictionaryForKey:@"metrics"];
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

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  responderCopy = responder;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v8 = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus];
    geoLocationEnforced = [(VUIActionLocationPrompt *)self geoLocationEnforced];
    v10 = v8 == 1 && geoLocationEnforced;
    v11 = +[_TtC8VideosUI43VUILocationServiceProxyObjCNotificationName locationAuthorizationDidChange];
    [(VUIActionLocationPrompt *)self _performLocationChecksWithTargetResponder:responderCopy shouldPromptLocationAlert:v10 shouldRequestUserLocation:v8 == 2 isLocationAuthorized:v8 == 0 authorizationStatusDidChangeNotificationName:v11 completionHandler:handlerCopy];
  }

  else
  {
    defaultLocationManager = [MEMORY[0x1E69E1540] defaultLocationManager];
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69E1540];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__VUIActionLocationPrompt_performWithTargetResponder_completionHandler___block_invoke;
    v15[3] = &unk_1E8732988;
    v14 = defaultLocationManager;
    v16 = v14;
    objc_copyWeak(&v19, &location);
    v17 = responderCopy;
    v18 = handlerCopy;
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

- (void)_performLocationChecksWithTargetResponder:(id)responder shouldPromptLocationAlert:(BOOL)alert shouldRequestUserLocation:(BOOL)location isLocationAuthorized:(BOOL)authorized authorizationStatusDidChangeNotificationName:(id)name completionHandler:(id)handler
{
  authorizedCopy = authorized;
  locationCopy = location;
  alertCopy = alert;
  v47 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  nameCopy = name;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&_pendingInstance);
  if (WeakRetained)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:WeakRetained];

    [WeakRetained setTargetResponder:0];
    [WeakRetained setCompletionHandler:0];
  }

  if (alertCopy)
  {
    settingsURL = [(VUIActionLocationPrompt *)self settingsURL];
    if (settingsURL)
    {
      v20 = settingsURL;
      settingsPromptTitle = [(VUIActionLocationPrompt *)self settingsPromptTitle];
      if (settingsPromptTitle)
      {
        v22 = settingsPromptTitle;
        settingsPromptMessage = [(VUIActionLocationPrompt *)self settingsPromptMessage];
        if (settingsPromptMessage)
        {
          v24 = settingsPromptMessage;
          settingsPromptButtonTitle = [(VUIActionLocationPrompt *)self settingsPromptButtonTitle];

          if (settingsPromptButtonTitle)
          {
            settingsPromptTitle2 = [(VUIActionLocationPrompt *)self settingsPromptTitle];
            settingsPromptMessage2 = [(VUIActionLocationPrompt *)self settingsPromptMessage];
            v28 = [VUIAlertController vui_alertControllerWithTitle:settingsPromptTitle2 message:settingsPromptMessage2 preferredStyle:1];

            settingsPromptButtonTitle2 = [(VUIActionLocationPrompt *)self settingsPromptButtonTitle];
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __205__VUIActionLocationPrompt__performLocationChecksWithTargetResponder_shouldPromptLocationAlert_shouldRequestUserLocation_isLocationAuthorized_authorizationStatusDidChangeNotificationName_completionHandler___block_invoke;
            v44[3] = &unk_1E87329B0;
            v44[4] = self;
            v30 = [VUIAlertAction vui_actionWithTitle:settingsPromptButtonTitle2 style:0 handler:v44];

            settingsPromptCancelTitle = [(VUIActionLocationPrompt *)self settingsPromptCancelTitle];
            v32 = [VUIAlertAction vui_actionWithTitle:settingsPromptCancelTitle style:1 handler:0];

            [v28 vui_addAction:v30];
            [v28 vui_addAction:v32];
            v33 = +[VUIInterfaceFactory sharedInstance];
            controllerPresenter = [v33 controllerPresenter];

            [v28 vui_presentAlertFromPresentingController:controllerPresenter animated:1 completion:0];
            v35 = +[VUIMetricsController sharedInstance];
            dialogMetrics = [(VUIActionLocationPrompt *)self dialogMetrics];
            [v35 recordDialog:dialogMetrics];

            if (handlerCopy)
            {
              handlerCopy[2](handlerCopy, 0);
            }

            goto LABEL_22;
          }

          goto LABEL_25;
        }
      }
    }

LABEL_25:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_27;
  }

  if (locationCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__locationAuthorizationStatusDidChange_ name:nameCopy object:0];

    [(VUIActionLocationPrompt *)self setTargetResponder:responderCopy];
    [(VUIActionLocationPrompt *)self setCompletionHandler:handlerCopy];
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

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 0);
        }

        goto LABEL_22;
      }
    }

    else
    {
      defaultLocationManager = [MEMORY[0x1E69E1540] defaultLocationManager];
      [defaultLocationManager requestAuthorizationWithForcedPrompt:{-[VUIActionLocationPrompt geoLocationEnforced](self, "geoLocationEnforced")}];
    }

    v28 = +[VUIMetricsController sharedInstance];
    dialogMetrics2 = [(VUIActionLocationPrompt *)self dialogMetrics];
    [v28 recordDialog:dialogMetrics2];

LABEL_22:
    goto LABEL_27;
  }

  if (handlerCopy)
  {
    documentOptions = [(VUIAction *)self documentOptions];
    [(VUIAction *)self _finalizeWithSuccess:authorizedCopy targetResponder:responderCopy documentOptions:documentOptions completion:handlerCopy];
  }

LABEL_27:
}

void __205__VUIActionLocationPrompt__performLocationChecksWithTargetResponder_shouldPromptLocationAlert_shouldRequestUserLocation_isLocationAuthorized_authorizationStatusDidChangeNotificationName_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [*(a1 + 32) settingsURL];
  [v3 openSensitiveURL:v2 withOptions:0];
}

- (void)_locationAuthorizationStatusDidChange:(id)change
{
  changeCopy = change;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_completionHandler)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = +[_TtC8VideosUI27VUILocationServiceProxyObjC authorizationStatus]== 0;
    }

    else
    {
      userInfo = [changeCopy userInfo];
      v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69E16D8]];
      intValue = [v7 intValue];

      v5 = intValue == 1;
    }

    v9 = v5;
    targetResponder = [(VUIActionLocationPrompt *)self targetResponder];
    documentOptions = [(VUIAction *)self documentOptions];
    [(VUIAction *)self _finalizeWithSuccess:v9 targetResponder:targetResponder documentOptions:documentOptions completion:self->_completionHandler];

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