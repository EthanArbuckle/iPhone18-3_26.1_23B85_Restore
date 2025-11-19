@interface TVStoreApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)shouldBeForcedLeftToRight;
- (TVStoreApplicationDelegate)init;
- (id)_bagBootURL;
- (id)bagBootURLKey;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)_controllerDidDisplay:(id)a3;
- (void)_launchApp;
- (void)_loadWithBootURL:(id)a3;
- (void)_presetDialogWithError:(int64_t)a3 appController:(id)a4;
- (void)appController:(id)a3 didFailWithError:(id)a4;
- (void)applicationDidEnterBackground:(id)a3;
- (void)dealloc;
- (void)reload;
- (void)updateIdleModeVisualEffectsStatus:(BOOL)a3;
@end

@implementation TVStoreApplicationDelegate

- (TVStoreApplicationDelegate)init
{
  v3.receiver = self;
  v3.super_class = TVStoreApplicationDelegate;
  return [(TVStoreApplicationDelegate *)&v3 init];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVStoreApplicationDelegate;
  [(TVStoreApplicationDelegate *)&v4 dealloc];
}

- (id)bagBootURLKey
{
  if ([MEMORY[0x277D1B028] isInFactoryMode])
  {
    v2 = 0;
  }

  else
  {
    v2 = @"itml-app-url";
  }

  return v2;
}

- (id)_bagBootURL
{
  v3 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CCACA8];
    v6 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
    v7 = [v5 stringWithFormat:@"com.apple.TVMLKit.bagBootURLKey://%@", v6];
    v8 = [v4 URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reload
{
  v2 = [(TVStoreApplicationDelegate *)self appController];
  [v2 reload];
}

- (void)updateIdleModeVisualEffectsStatus:(BOOL)a3
{
  v3 = a3;
  if ([(TVStoreApplicationDelegate *)self supportsIdleModeVisualEffects])
  {
    v5 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [(TVStoreApplicationDelegate *)v3 updateIdleModeVisualEffectsStatus:v5];
    }

    [*MEMORY[0x277D76620] _setIdleModeVisualEffectsEnabled:{-[TVStoreApplicationDelegate supportsIdleModeVisualEffects](self, "supportsIdleModeVisualEffects") & v3}];
  }
}

- (BOOL)shouldBeForcedLeftToRight
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if ([v3 isEqualToString:@"com.apple.TVShows"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"com.apple.TVMovies"];
  }

  return v4;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TVMLKitSignpostLogObject;
  if (os_signpost_enabled(TVMLKitSignpostLogObject))
  {
    *v25 = 0;
    _os_signpost_emit_with_name_impl(&dword_26CD9A000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TVApplicationControllerSetup", &unk_26CE8F202, v25, 2u);
  }

  if ([(TVStoreApplicationDelegate *)self shouldBeForcedLeftToRight])
  {
    [*MEMORY[0x277D76620] _setForcedUserInterfaceLayoutDirection:0];
  }

  v9 = [MEMORY[0x277D1B110] sharedCache];
  bagCache = self->_bagCache;
  self->_bagCache = v9;

  v11 = objc_alloc(MEMORY[0x277D75DA0]);
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 bounds];
  v13 = [v11 initWithFrame:?];
  window = self->_window;
  self->_window = v13;

  v15 = self->_window;
  v16 = [MEMORY[0x277D75348] tvmlkit_keyColor];
  [(UIWindow *)v15 setTintColor:v16];

  v17 = self->_window;
  v18 = [MEMORY[0x277D75348] whiteColor];
  [(UIWindow *)v17 setBackgroundColor:v18];

  v19 = [v7 copy];
  launchOptions = self->_launchOptions;
  self->_launchOptions = v19;

  v21 = +[_TVAppLoadingView loadingScreen];
  [v21 setTimeout:60.0];

  v22 = +[_TVAppLoadingView loadingScreen];
  [v22 showOverKeyWindowWithSpinnerOnly:0];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel__controllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  [(TVStoreApplicationDelegate *)self _launchApp];
  return 1;
}

- (void)_launchApp
{
  v8 = [(TVStoreApplicationDelegate *)self bootURL];
  if ([MEMORY[0x277D1B028] isInFactoryMode])
  {
    v3 = v8;
    if (v8)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x277CBEBC0];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = [v5 objectForKey:@"boot-url"];
    v6 = [v4 URLWithString:?];
  }

  else
  {
    v5 = [(TVStoreApplicationDelegate *)self _bagBootURL];
    v6 = [TVStoreApplicationSetupHelper bootURLWithBagBootURL:v5 defaultBootURL:v8];
  }

  v7 = v6;

  v3 = v7;
LABEL_6:
  v9 = v3;
  [(TVStoreApplicationDelegate *)self _loadWithBootURL:v3];
}

- (void)applicationDidEnterBackground:(id)a3
{
  if (self->_shouldTerminateOnEnterBackground)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    [v4 terminateWithSuccess];
  }
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TVStoreApplicationDelegate *)self appController];

  if (v10)
  {
    launchOpenURLOptions = [(TVStoreApplicationDelegate *)self appController];
    v12 = [launchOpenURLOptions openURL:v8 options:v9];
  }

  else
  {
    if (!v8)
    {
      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&self->_launchOpenURL, a4);
    v13 = v9;
    launchOpenURLOptions = self->_launchOpenURLOptions;
    self->_launchOpenURLOptions = v13;
    v12 = 1;
  }

LABEL_6:
  return v12;
}

- (void)appController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  -[TVStoreApplicationDelegate _presetDialogWithError:appController:](self, "_presetDialogWithError:appController:", [a4 code], v6);
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    return 30;
  }

  if (TVShouldConstrainToPortait() && ![(TVStoreApplicationDelegate *)self overrideOrientation])
  {
    return 2;
  }

  return 26;
}

- (void)_loadWithBootURL:(id)a3
{
  v4 = a3;
  v5 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
  v6 = v4 | v5;

  if (v6)
  {
    v8 = [(TVStoreApplicationDelegate *)self _bagBootURL];
    if ([v4 isEqual:v8])
    {
      v9 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v4;
    }

    v11 = v10;

    [(TVStoreApplicationDelegate *)self setupWithBootURL:v11];
    v12 = 0;
    if (objc_opt_respondsToSelector())
    {
      v12 = [(TVStoreApplicationDelegate *)self offlineJSURL];
    }

    v13 = [(TVStoreApplicationDelegate *)self appLocalBootURL];
    v14 = [TVStoreApplicationSetupHelper launchContextWithLaunchOptions:self->_launchOptions bootURL:v11 bagBootURLKey:v9 useCache:v13 != 0];
    v15 = v14;
    if (v12)
    {
      [v14 setOfflineJSURL:v12];
    }

    else
    {
      [v14 setAppLocalJSURL:v13];
    }

    v16 = [[TVApplicationController alloc] initWithContext:v15 window:self->_window delegate:self];
    objc_storeStrong(&self->_appController, v16);
    if (self->_launchOpenURL)
    {
      v17 = [(TVStoreApplicationDelegate *)self appController];
      [v17 openURL:self->_launchOpenURL options:self->_launchOpenURLOptions];

      launchOpenURL = self->_launchOpenURL;
      self->_launchOpenURL = 0;

      launchOpenURLOptions = self->_launchOpenURLOptions;
      self->_launchOpenURLOptions = 0;
    }
  }

  else
  {
    v7 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVStoreApplicationDelegate _loadWithBootURL:v7];
    }

    [(TVStoreApplicationDelegate *)self _presetDialogWithError:3 appController:0];
  }

  v20 = TVMLKitSignpostLogObject;
  if (os_signpost_enabled(TVMLKitSignpostLogObject))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26CD9A000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TVApplicationControllerSetup", &unk_26CE8F202, buf, 2u);
  }

  v21 = TVMLKitSignpostLogObject;
  if (os_signpost_enabled(TVMLKitSignpostLogObject))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_26CD9A000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TVApplicationControllerJSEvaluation", &unk_26CE8F202, v22, 2u);
  }
}

- (void)_controllerDidDisplay:(id)a3
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 hide];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  [(TVStoreApplicationDelegate *)self didShowViewController];
}

- (void)_presetDialogWithError:(int64_t)a3 appController:(id)a4
{
  v27 = a4;
  if (self->_headLess)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    [v6 terminateWithSuccess];
  }

  if (a3 == 2)
  {
    v7 = _TVMLLocString(@"TVAppInternetUnavailableTitle", @"Localizable");
    v8 = _TVMLLocString(@"TVAppInternetUnavailableError", @"Localizable");
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedInfoDictionary];
    v11 = [v10 objectForKey:@"CFBundleName"];

    if (!v11)
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 infoDictionary];
      v11 = [v13 objectForKey:@"CFBundleName"];
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = _TVMLLocString(@"TVInternalAppFailureTitle", @"Localizable");
    v7 = [v14 stringWithFormat:v15, v11];

    v8 = _TVMLLocString(@"TVInternalAppFailureBody", @"Localizable");
  }

  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v17 = MEMORY[0x277D750F8];
  v18 = _TVMLLocString(@"TVAppOK", @"Localizable");
  v19 = [v17 actionWithTitle:v18 style:1 handler:&__block_literal_global_28];

  [v16 addAction:v19];
  self->_shouldTerminateOnEnterBackground = 1;
  v20 = +[_TVAppLoadingView loadingScreen];
  [v20 hide];

  window = self->_window;
  if (v27)
  {
    [(UIWindow *)window makeKeyAndVisible];
    v22 = v27;
  }

  else
  {
    v23 = [(UIWindow *)window rootViewController];

    if (!v23)
    {
      v24 = self->_window;
      v25 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
      [(UIWindow *)v24 setRootViewController:v25];
    }

    [(UIWindow *)self->_window makeKeyAndVisible];
    v22 = self->_window;
  }

  v26 = [(UIWindow *)v22 rootViewController];
  [v26 presentViewController:v16 animated:1 completion:0];
}

void __67__TVStoreApplicationDelegate__presetDialogWithError_appController___block_invoke()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 terminateWithSuccess];
}

- (void)updateIdleModeVisualEffectsStatus:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"disabled";
  if (a1)
  {
    v2 = @"enabled";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_DEBUG, "Idle mode visual effects are %@", &v3, 0xCu);
}

@end