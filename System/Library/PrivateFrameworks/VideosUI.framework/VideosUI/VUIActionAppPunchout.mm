@interface VUIActionAppPunchout
- (VUIActionAppPunchout)initWithContextData:(id)data appContext:(id)context;
- (VUIAppContext)appContext;
- (id)_addMusicAppMetricsToUrl:(id)url;
- (void)_openPunchoutURL:(id)l;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionAppPunchout

- (VUIActionAppPunchout)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = VUIActionAppPunchout;
  v8 = [(VUIActionAppPunchout *)&v15 init];
  if (v8 && ([dataCopy vui_URLForKey:@"openUrl"], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [dataCopy vui_URLForKey:@"openUrl"];
    punchoutURL = v8->_punchoutURL;
    v8->_punchoutURL = v10;

    v12 = [dataCopy vui_dictionaryForKey:@"metrics"];
    metrics = v8->_metrics;
    v8->_metrics = v12;

    v8->_isSensitiveURL = [dataCopy vui_BOOLForKey:@"isSensitiveUrl" defaultValue:0];
    objc_storeWeak(&v8->_appContext, contextCopy);
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  punchoutURL = [(VUIActionAppPunchout *)self punchoutURL];
  v7 = punchoutURL;
  if (punchoutURL)
  {
    absoluteString = [punchoutURL absoluteString];
    v9 = [absoluteString containsString:@"music.apple.com"];

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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7 != 0);
  }
}

- (id)_addMusicAppMetricsToUrl:(id)url
{
  urlCopy = url;
  v5 = objc_opt_new();
  v6 = +[VUIMetricsController sharedInstance];
  lastRecordedPageEventData = [v6 lastRecordedPageEventData];

  if (lastRecordedPageEventData)
  {
    pageId = [lastRecordedPageEventData pageId];
    pageType = [lastRecordedPageEventData pageType];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", pageId, pageType];
    [v5 vui_setObjectIfNotNil:v10 forKey:@"tvAppPage"];
  }

  metrics = [(VUIActionAppPunchout *)self metrics];
  if (metrics)
  {
    [v5 addEntriesFromDictionary:metrics];
  }

  if ([v5 count])
  {
    v12 = [urlCopy vui_URLByAddingQueryParamsDictionary:v5];

    urlCopy = v12;
  }

  return urlCopy;
}

- (void)_openPunchoutURL:(id)l
{
  v39 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:lCopy resolvingAgainstBaseURL:0];
  scheme = [v6 scheme];
  lowercaseString = [scheme lowercaseString];
  v9 = [lowercaseString isEqualToString:@"https"];
  if ((v9 & 1) == 0)
  {
    scheme2 = [v6 scheme];
    lowercaseString2 = [scheme2 lowercaseString];
    if (![lowercaseString2 isEqualToString:@"http"])
    {
      isTVApp = 0;
LABEL_10:

      goto LABEL_11;
    }

    v27 = scheme2;
  }

  v11 = lCopy;
  v12 = v6;
  host = [v6 host];
  lowercaseString3 = [host lowercaseString];
  if ([lowercaseString3 isEqualToString:@"tv.apple.com"])
  {
    isTVApp = [MEMORY[0x1E69DF6D0] isTVApp];
  }

  else
  {
    isTVApp = 0;
  }

  v6 = v12;
  lCopy = v11;
  scheme2 = v27;
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
    v16 = [lCopy description];
  }

  v17 = VUIDefaultLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = v16;
    v35 = 1024;
    v36 = isTVApp;
    v37 = 1024;
    isSensitiveURL = [(VUIActionAppPunchout *)self isSensitiveURL];
    _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUIActionAppPunchout:: open url: %@, punchoutToTVApp: %d, isSensitiveURL: %d", buf, 0x18u);
  }

  if (isTVApp)
  {
    v18 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v18 openURLHandler];
    appContext = [(VUIActionAppPunchout *)self appContext];
    v21 = +[VUITVAppLauncher sharedInstance];
    deeplinkCompletionHandler = [v21 deeplinkCompletionHandler];
    [openURLHandler processDeeplink:lCopy appContext:appContext completion:deeplinkCompletionHandler];

    v23 = +[VUIMetricsController sharedInstance];
    absoluteString = [lCopy absoluteString];
    [v23 setExitEventDestinationUrl:absoluteString];
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v31 = *MEMORY[0x1E699F970];
    v32 = MEMORY[0x1E695E118];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v23 setFrontBoardOptions:v25];

    [v23 setSensitive:self->_isSensitiveURL];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__VUIActionAppPunchout__openPunchoutURL___block_invoke;
    v28[3] = &unk_1E8733CC8;
    v29 = v16;
    v30 = lCopy;
    [defaultWorkspace openURL:v30 configuration:v23 completionHandler:v28];

    absoluteString = v29;
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