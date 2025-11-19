@interface VUIActionAppPunchout
- (VUIActionAppPunchout)initWithContextData:(id)a3 appContext:(id)a4;
- (VUIAppContext)appContext;
- (id)_addMusicAppMetricsToUrl:(id)a3;
- (void)_openPunchoutURL:(id)a3;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionAppPunchout

- (VUIActionAppPunchout)initWithContextData:(id)a3 appContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = VUIActionAppPunchout;
  v8 = [(VUIActionAppPunchout *)&v15 init];
  if (v8 && ([v6 vui_URLForKey:@"openUrl"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [v6 vui_URLForKey:@"openUrl"];
    punchoutURL = v8->_punchoutURL;
    v8->_punchoutURL = v10;

    v12 = [v6 vui_dictionaryForKey:@"metrics"];
    metrics = v8->_metrics;
    v8->_metrics = v12;

    v8->_isSensitiveURL = [v6 vui_BOOLForKey:@"isSensitiveUrl" defaultValue:0];
    objc_storeWeak(&v8->_appContext, v7);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(VUIActionAppPunchout *)self punchoutURL];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 absoluteString];
    v9 = [v8 containsString:@"music.apple.com"];

    if (v9)
    {
      v10 = [(VUIActionAppPunchout *)self _addMusicAppMetricsToUrl:v7];
    }

    else
    {
      v10 = v7;
    }

    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIActionAppPunchout:: punching out to %@", &v12, 0xCu);
    }

    [(VUIActionAppPunchout *)self _openPunchoutURL:v10];
  }

  if (v5)
  {
    v5[2](v5, v7 != 0);
  }
}

- (id)_addMusicAppMetricsToUrl:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = +[VUIMetricsController sharedInstance];
  v7 = [v6 lastRecordedPageEventData];

  if (v7)
  {
    v8 = [v7 pageId];
    v9 = [v7 pageType];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v8, v9];
    [v5 vui_setObjectIfNotNil:v10 forKey:@"tvAppPage"];
  }

  v11 = [(VUIActionAppPunchout *)self metrics];
  if (v11)
  {
    [v5 addEntriesFromDictionary:v11];
  }

  if ([v5 count])
  {
    v12 = [v4 vui_URLByAddingQueryParamsDictionary:v5];

    v4 = v12;
  }

  return v4;
}

- (void)_openPunchoutURL:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:0];
  v7 = [v6 scheme];
  v8 = [v7 lowercaseString];
  v9 = [v8 isEqualToString:@"https"];
  if ((v9 & 1) == 0)
  {
    v10 = [v6 scheme];
    v3 = [v10 lowercaseString];
    if (![v3 isEqualToString:@"http"])
    {
      v15 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v27 = v10;
  }

  v11 = v5;
  v12 = v6;
  v13 = [v6 host];
  v14 = [v13 lowercaseString];
  if ([v14 isEqualToString:@"tv.apple.com"])
  {
    v15 = [MEMORY[0x1E69DF6D0] isTVApp];
  }

  else
  {
    v15 = 0;
  }

  v6 = v12;
  v5 = v11;
  v10 = v27;
  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:

  if ([(VUIActionAppPunchout *)self isSensitiveURL])
  {
    v16 = @"<sensitive url>";
  }

  else
  {
    v16 = [v5 description];
  }

  v17 = VUIDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = v16;
    v35 = 1024;
    v36 = v15;
    v37 = 1024;
    v38 = [(VUIActionAppPunchout *)self isSensitiveURL];
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIActionAppPunchout:: open url: %@, punchoutToTVApp: %d, isSensitiveURL: %d", buf, 0x18u);
  }

  if (v15)
  {
    v18 = +[VUIInterfaceFactory sharedInstance];
    v19 = [v18 openURLHandler];
    v20 = [(VUIActionAppPunchout *)self appContext];
    v21 = +[VUITVAppLauncher sharedInstance];
    v22 = [v21 deeplinkCompletionHandler];
    [v19 processDeeplink:v5 appContext:v20 completion:v22];

    v23 = +[VUIMetricsController sharedInstance];
    v24 = [v5 absoluteString];
    [v23 setExitEventDestinationUrl:v24];
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v31 = *MEMORY[0x1E699F970];
    v32 = MEMORY[0x1E695E118];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v23 setFrontBoardOptions:v25];

    [v23 setSensitive:self->_isSensitiveURL];
    v26 = [MEMORY[0x1E6963608] defaultWorkspace];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__VUIActionAppPunchout__openPunchoutURL___block_invoke;
    v28[3] = &unk_1E8733CC8;
    v29 = v16;
    v30 = v5;
    [v26 openURL:v30 configuration:v23 completionHandler:v28];

    v24 = v29;
  }
}

void __41__VUIActionAppPunchout__openPunchoutURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIActionAppPunchout:: open url: %@, result: %@, error: %@", &v11, 0x20u);
  }

  if (!v6)
  {
    v9 = +[VUIMetricsController sharedInstance];
    v10 = [*(a1 + 40) absoluteString];
    [v9 setExitEventDestinationUrl:v10];
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end