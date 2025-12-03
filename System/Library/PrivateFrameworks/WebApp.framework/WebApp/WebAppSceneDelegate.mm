@interface WebAppSceneDelegate
- (void)_tearDownWindowAndWebApp;
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneWillEnterForeground:(id)foreground;
@end

@implementation WebAppSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  uRLContexts = [optionsCopy URLContexts];
  anyObject = [uRLContexts anyObject];
  v12 = [anyObject URL];

  v13 = webClipIdentifierFromLaunchURL(v12, @"webapp://web-push/");
  if (v13)
  {
    sourceApplication = [optionsCopy sourceApplication];
    v15 = [sourceApplication hasPrefix:@"com.apple."];

    if (v15)
    {
      v16 = 1;
      goto LABEL_11;
    }
  }

  persistentIdentifier = [sessionCopy persistentIdentifier];
  if ([persistentIdentifier hasPrefix:@"com.apple.webapp - "])
  {
    v18 = @"com.apple.webapp - ";
  }

  else
  {
    if (![persistentIdentifier hasPrefix:@"com.apple.webapp-"])
    {
      v19 = persistentIdentifier;
      goto LABEL_10;
    }

    v18 = @"com.apple.webapp-";
  }

  v19 = [persistentIdentifier substringFromIndex:{-[__CFString length](v18, "length")}];
LABEL_10:
  v20 = v19;

  v16 = 0;
  v13 = v20;
LABEL_11:
  [(WebAppSceneDelegate *)self connectWebClipIdentifier:v13 toScene:sceneCopy forWebPush:v16];
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  v19 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  contextsCopy = contexts;
  v8 = contextsCopy;
  if (self->_shouldLoadWebApp)
  {
    anyObject = [contextsCopy anyObject];
    v10 = [anyObject URL];

    v11 = webClipIdentifierFromLaunchURL(v10, @"webapp://web-push/");
    webApp = self->_webApp;
    if (v11)
    {
      [(WebAppViewController *)webApp processWebPushWithIdentifier:v11];
    }

    else
    {
      if (webApp && ![(WebAppViewController *)webApp wasLaunchedForWebPush])
      {
        goto LABEL_11;
      }

      v13 = webClipIdentifierFromLaunchURL(v10, @"webapp:");
      if (v13)
      {
        v11 = v13;
        [(WebAppSceneDelegate *)self _tearDownWindowAndWebApp];
        [(WebAppSceneDelegate *)self connectWebClipIdentifier:v11 toScene:sceneCopy forWebPush:0];
      }

      else
      {
        v11 = viewServiceLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          anyObject2 = [v8 anyObject];
          v15 = [anyObject2 URL];
          v17 = 138739971;
          v18 = v15;
          _os_log_impl(&dword_272C17000, v11, OS_LOG_TYPE_INFO, "scene:openURLContexts: Launch URL %{sensitive}@ did not contain a web clip identifier", &v17, 0xCu);
        }
      }
    }

LABEL_11:
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidBecomeActive:(id)active
{
  v12[3] = *MEMORY[0x277D85DE8];
  activeCopy = active;
  if (self->_shouldLoadWebApp)
  {
    webClip = [(WebAppViewController *)self->_webApp webClip];
  }

  else
  {
    webClip = [(WebAppEligibilityViewController *)self->_eligibilityViewController webClip];
    [(WebAppEligibilityViewController *)self->_eligibilityViewController presentAlertIfNeeded];
  }

  v11[0] = @"url";
  pageURL = [webClip pageURL];
  v12[0] = pageURL;
  v11[1] = @"title";
  title = [webClip title];
  v12[1] = title;
  v11[2] = @"identifier";
  identifier = [webClip identifier];
  v12[2] = identifier;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  sceneHasEverEnteredForeground = self->_sceneHasEverEnteredForeground;
  self->_sceneHasEverEnteredForeground = 1;
  if (sceneHasEverEnteredForeground && !self->_wasSuspendedUnderLock && (-[WebAppViewController webClip](self->_webApp, "webClip"), v5 = objc_claimAutoreleasedReturnValue(), [v5 pageURL], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isDataURL"), v6, v5, v7))
  {
    [(WebAppSceneDelegate *)self _tearDownWindowAndWebApp];
    session = [foregroundCopy session];
    [(WebAppSceneDelegate *)self scene:foregroundCopy willConnectToSession:session options:0];
  }

  else
  {
    [(WebAppViewController *)self->_webApp openURLWithCustomSchemeIfNeeded];
  }
}

- (void)_tearDownWindowAndWebApp
{
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;

  v4 = +[WebAppNotificationCenterDelegate sharedDelegate];
  [v4 removeWebAppViewController:self->_webApp];

  webApp = self->_webApp;
  self->_webApp = 0;

  eligibilityViewController = self->_eligibilityViewController;
  self->_eligibilityViewController = 0;
}

@end