@interface TVStoreApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)shouldBeForcedLeftToRight;
- (TVStoreApplicationDelegate)init;
- (id)_bagBootURL;
- (id)bagBootURLKey;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)_controllerDidDisplay:(id)display;
- (void)_launchApp;
- (void)_loadWithBootURL:(id)l;
- (void)_presetDialogWithError:(int64_t)error appController:(id)controller;
- (void)appController:(id)controller didFailWithError:(id)error;
- (void)applicationDidEnterBackground:(id)background;
- (void)dealloc;
- (void)reload;
- (void)updateIdleModeVisualEffectsStatus:(BOOL)status;
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  bagBootURLKey = [(TVStoreApplicationDelegate *)self bagBootURLKey];
  if (bagBootURLKey)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CCACA8];
    bagBootURLKey2 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
    v7 = [v5 stringWithFormat:@"com.apple.TVMLKit.bagBootURLKey://%@", bagBootURLKey2];
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
  appController = [(TVStoreApplicationDelegate *)self appController];
  [appController reload];
}

- (void)updateIdleModeVisualEffectsStatus:(BOOL)status
{
  statusCopy = status;
  if ([(TVStoreApplicationDelegate *)self supportsIdleModeVisualEffects])
  {
    v5 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [(TVStoreApplicationDelegate *)statusCopy updateIdleModeVisualEffectsStatus:v5];
    }

    [*MEMORY[0x277D76620] _setIdleModeVisualEffectsEnabled:{-[TVStoreApplicationDelegate supportsIdleModeVisualEffects](self, "supportsIdleModeVisualEffects") & statusCopy}];
  }
}

- (BOOL)shouldBeForcedLeftToRight
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.TVShows"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [bundleIdentifier isEqualToString:@"com.apple.TVMovies"];
  }

  return v4;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
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

  mEMORY[0x277D1B110] = [MEMORY[0x277D1B110] sharedCache];
  bagCache = self->_bagCache;
  self->_bagCache = mEMORY[0x277D1B110];

  v11 = objc_alloc(MEMORY[0x277D75DA0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v13 = [v11 initWithFrame:?];
  window = self->_window;
  self->_window = v13;

  v15 = self->_window;
  tvmlkit_keyColor = [MEMORY[0x277D75348] tvmlkit_keyColor];
  [(UIWindow *)v15 setTintColor:tvmlkit_keyColor];

  v17 = self->_window;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(UIWindow *)v17 setBackgroundColor:whiteColor];

  v19 = [optionsCopy copy];
  launchOptions = self->_launchOptions;
  self->_launchOptions = v19;

  v21 = +[_TVAppLoadingView loadingScreen];
  [v21 setTimeout:60.0];

  v22 = +[_TVAppLoadingView loadingScreen];
  [v22 showOverKeyWindowWithSpinnerOnly:0];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__controllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  [(TVStoreApplicationDelegate *)self _launchApp];
  return 1;
}

- (void)_launchApp
{
  bootURL = [(TVStoreApplicationDelegate *)self bootURL];
  if ([MEMORY[0x277D1B028] isInFactoryMode])
  {
    v3 = bootURL;
    if (bootURL)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x277CBEBC0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    bootURL = [standardUserDefaults objectForKey:@"boot-url"];
    v6 = [v4 URLWithString:?];
  }

  else
  {
    standardUserDefaults = [(TVStoreApplicationDelegate *)self _bagBootURL];
    v6 = [TVStoreApplicationSetupHelper bootURLWithBagBootURL:standardUserDefaults defaultBootURL:bootURL];
  }

  v7 = v6;

  v3 = v7;
LABEL_6:
  v9 = v3;
  [(TVStoreApplicationDelegate *)self _loadWithBootURL:v3];
}

- (void)applicationDidEnterBackground:(id)background
{
  if (self->_shouldTerminateOnEnterBackground)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] terminateWithSuccess];
  }
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  appController = [(TVStoreApplicationDelegate *)self appController];

  if (appController)
  {
    launchOpenURLOptions = [(TVStoreApplicationDelegate *)self appController];
    v12 = [launchOpenURLOptions openURL:lCopy options:optionsCopy];
  }

  else
  {
    if (!lCopy)
    {
      v12 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&self->_launchOpenURL, l);
    v13 = optionsCopy;
    launchOpenURLOptions = self->_launchOpenURLOptions;
    self->_launchOpenURLOptions = v13;
    v12 = 1;
  }

LABEL_6:
  return v12;
}

- (void)appController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  -[TVStoreApplicationDelegate _presetDialogWithError:appController:](self, "_presetDialogWithError:appController:", [error code], controllerCopy);
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  if (TVShouldConstrainToPortait() && ![(TVStoreApplicationDelegate *)self overrideOrientation])
  {
    return 2;
  }

  return 26;
}

- (void)_loadWithBootURL:(id)l
{
  lCopy = l;
  bagBootURLKey = [(TVStoreApplicationDelegate *)self bagBootURLKey];
  v6 = lCopy | bagBootURLKey;

  if (v6)
  {
    _bagBootURL = [(TVStoreApplicationDelegate *)self _bagBootURL];
    if ([lCopy isEqual:_bagBootURL])
    {
      bagBootURLKey2 = [(TVStoreApplicationDelegate *)self bagBootURLKey];
    }

    else
    {
      bagBootURLKey2 = 0;
    }

    if (bagBootURLKey2)
    {
      v10 = 0;
    }

    else
    {
      v10 = lCopy;
    }

    v11 = v10;

    [(TVStoreApplicationDelegate *)self setupWithBootURL:v11];
    offlineJSURL = 0;
    if (objc_opt_respondsToSelector())
    {
      offlineJSURL = [(TVStoreApplicationDelegate *)self offlineJSURL];
    }

    appLocalBootURL = [(TVStoreApplicationDelegate *)self appLocalBootURL];
    v14 = [TVStoreApplicationSetupHelper launchContextWithLaunchOptions:self->_launchOptions bootURL:v11 bagBootURLKey:bagBootURLKey2 useCache:appLocalBootURL != 0];
    v15 = v14;
    if (offlineJSURL)
    {
      [v14 setOfflineJSURL:offlineJSURL];
    }

    else
    {
      [v14 setAppLocalJSURL:appLocalBootURL];
    }

    v16 = [[TVApplicationController alloc] initWithContext:v15 window:self->_window delegate:self];
    objc_storeStrong(&self->_appController, v16);
    if (self->_launchOpenURL)
    {
      appController = [(TVStoreApplicationDelegate *)self appController];
      [appController openURL:self->_launchOpenURL options:self->_launchOpenURLOptions];

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

- (void)_controllerDidDisplay:(id)display
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 hide];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  [(TVStoreApplicationDelegate *)self didShowViewController];
}

- (void)_presetDialogWithError:(int64_t)error appController:(id)controller
{
  controllerCopy = controller;
  if (self->_headLess)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] terminateWithSuccess];
  }

  if (error == 2)
  {
    v7 = _TVMLLocString(@"TVAppInternetUnavailableTitle", @"Localizable");
    v8 = _TVMLLocString(@"TVAppInternetUnavailableError", @"Localizable");
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    localizedInfoDictionary = [mainBundle localizedInfoDictionary];
    v11 = [localizedInfoDictionary objectForKey:@"CFBundleName"];

    if (!v11)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      infoDictionary = [mainBundle2 infoDictionary];
      v11 = [infoDictionary objectForKey:@"CFBundleName"];
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
  if (controllerCopy)
  {
    [(UIWindow *)window makeKeyAndVisible];
    v22 = controllerCopy;
  }

  else
  {
    rootViewController = [(UIWindow *)window rootViewController];

    if (!rootViewController)
    {
      v24 = self->_window;
      v25 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
      [(UIWindow *)v24 setRootViewController:v25];
    }

    [(UIWindow *)self->_window makeKeyAndVisible];
    v22 = self->_window;
  }

  rootViewController2 = [(UIWindow *)v22 rootViewController];
  [rootViewController2 presentViewController:v16 animated:1 completion:0];
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