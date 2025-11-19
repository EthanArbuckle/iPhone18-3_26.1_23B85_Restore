@interface WebAppSceneDelegate
- (void)_tearDownWindowAndWebApp;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
@end

@implementation WebAppSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 URLContexts];
  v11 = [v10 anyObject];
  v12 = [v11 URL];

  v13 = webClipIdentifierFromLaunchURL(v12, @"webapp://web-push/");
  if (v13)
  {
    v14 = [v9 sourceApplication];
    v15 = [v14 hasPrefix:@"com.apple."];

    if (v15)
    {
      v16 = 1;
      goto LABEL_11;
    }
  }

  v17 = [v8 persistentIdentifier];
  if ([v17 hasPrefix:@"com.apple.webapp - "])
  {
    v18 = @"com.apple.webapp - ";
  }

  else
  {
    if (![v17 hasPrefix:@"com.apple.webapp-"])
    {
      v19 = v17;
      goto LABEL_10;
    }

    v18 = @"com.apple.webapp-";
  }

  v19 = [v17 substringFromIndex:{-[__CFString length](v18, "length")}];
LABEL_10:
  v20 = v19;

  v16 = 0;
  v13 = v20;
LABEL_11:
  [(WebAppSceneDelegate *)self connectWebClipIdentifier:v13 toScene:v21 forWebPush:v16];
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_shouldLoadWebApp)
  {
    v9 = [v7 anyObject];
    v10 = [v9 URL];

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
        [(WebAppSceneDelegate *)self connectWebClipIdentifier:v11 toScene:v6 forWebPush:0];
      }

      else
      {
        v11 = viewServiceLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v14 = [v8 anyObject];
          v15 = [v14 URL];
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

- (void)sceneDidBecomeActive:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_shouldLoadWebApp)
  {
    v5 = [(WebAppViewController *)self->_webApp webClip];
  }

  else
  {
    v5 = [(WebAppEligibilityViewController *)self->_eligibilityViewController webClip];
    [(WebAppEligibilityViewController *)self->_eligibilityViewController presentAlertIfNeeded];
  }

  v11[0] = @"url";
  v6 = [v5 pageURL];
  v12[0] = v6;
  v11[1] = @"title";
  v7 = [v5 title];
  v12[1] = v7;
  v11[2] = @"identifier";
  v8 = [v5 identifier];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  if (PLShouldLogRegisteredEvent())
  {
    PLLogRegisteredEvent();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sceneWillEnterForeground:(id)a3
{
  v9 = a3;
  sceneHasEverEnteredForeground = self->_sceneHasEverEnteredForeground;
  self->_sceneHasEverEnteredForeground = 1;
  if (sceneHasEverEnteredForeground && !self->_wasSuspendedUnderLock && (-[WebAppViewController webClip](self->_webApp, "webClip"), v5 = objc_claimAutoreleasedReturnValue(), [v5 pageURL], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "safari_isDataURL"), v6, v5, v7))
  {
    [(WebAppSceneDelegate *)self _tearDownWindowAndWebApp];
    v8 = [v9 session];
    [(WebAppSceneDelegate *)self scene:v9 willConnectToSession:v8 options:0];
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