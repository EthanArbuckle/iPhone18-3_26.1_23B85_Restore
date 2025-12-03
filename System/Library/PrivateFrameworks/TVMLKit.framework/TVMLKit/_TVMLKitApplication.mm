@interface _TVMLKitApplication
- (BOOL)appIsPrivileged;
- (BOOL)appIsTrusted;
- (BOOL)supportsPictureInPicturePlayback;
- (IKAppDataStorage)localDataStorage;
- (TVAppRootViewController)appRootViewController;
- (TVApplicationControllerContext)launchContext;
- (UITraitEnvironment)keyTraitEnvironment;
- (UIWindow)keyWindow;
- (_TVMLKitApplication)initWithLaunchContext:(id)context;
- (id)activeDocument;
- (id)appIdentifier;
- (id)appJSCachePath;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)appLocalJSURL;
- (id)appTraitCollection;
- (id)bagBootURLKey;
- (id)offlineJSURL;
@end

@implementation _TVMLKitApplication

- (_TVMLKitApplication)initWithLaunchContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = _TVMLKitApplication;
  v5 = [(_TVMLKitApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_launchContext, contextCopy);
    v6->_headless = 0;
  }

  return v6;
}

- (BOOL)supportsPictureInPicturePlayback
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  supportsPictureInPicturePlayback = [WeakRetained supportsPictureInPicturePlayback];

  return supportsPictureInPicturePlayback;
}

- (id)activeDocument
{
  appRootViewController = [(_TVMLKitApplication *)self appRootViewController];
  currentNavigationController = [appRootViewController currentNavigationController];

  if ([currentNavigationController conformsToProtocol:&unk_287E7C190])
  {
    v4 = currentNavigationController;
  }

  else
  {
    v4 = 0;
  }

  activeDocument = [v4 activeDocument];

  return activeDocument;
}

- (id)appIdentifier
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)appJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  javaScriptApplicationURL = [WeakRetained javaScriptApplicationURL];

  return javaScriptApplicationURL;
}

- (id)appLocalJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  appLocalJSURL = [WeakRetained appLocalJSURL];

  return appLocalJSURL;
}

- (id)appJSCachePath
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  appJSCachePath = [WeakRetained appJSCachePath];

  return appJSCachePath;
}

- (id)offlineJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  offlineJSURL = [WeakRetained offlineJSURL];

  return offlineJSURL;
}

- (id)bagBootURLKey
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  bagBootURLKey = [WeakRetained bagBootURLKey];

  return bagBootURLKey;
}

- (id)appLaunchParams
{
  v3 = objc_opt_new();
  appJSURL = [(_TVMLKitApplication *)self appJSURL];
  absoluteString = [appJSURL absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"location"];
  }

  bagBootURLKey = [(_TVMLKitApplication *)self bagBootURLKey];
  if (bagBootURLKey)
  {
    [v3 setObject:bagBootURLKey forKey:@"bagBootURLKey"];
  }

  javaScriptLaunchOptions = [(_TVMLKitApplication *)self javaScriptLaunchOptions];
  v8 = [javaScriptLaunchOptions count];

  if (v8)
  {
    javaScriptLaunchOptions2 = [(_TVMLKitApplication *)self javaScriptLaunchOptions];
    [v3 addEntriesFromDictionary:javaScriptLaunchOptions2];
  }

  if (self->_headless)
  {
    [v3 setObject:@"background" forKeyedSubscript:@"launchContext"];
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)appIsTrusted
{
  v2 = +[_TVProcessInfo currentProcessInfo];
  hasiTunesAPIEntitlement = [v2 hasiTunesAPIEntitlement];

  return hasiTunesAPIEntitlement;
}

- (BOOL)appIsPrivileged
{
  v2 = +[_TVProcessInfo currentProcessInfo];
  hasPrivateEntitlement = [v2 hasPrivateEntitlement];

  return hasPrivateEntitlement;
}

- (id)appTraitCollection
{
  v56[12] = *MEMORY[0x277D85DE8];
  keyWindow = [(_TVMLKitApplication *)self keyWindow];
  window = keyWindow;
  v5 = MEMORY[0x277D76620];
  if (!self->_headless && !keyWindow)
  {
    delegate = [*MEMORY[0x277D76620] delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [*v5 delegate];
      window = [delegate2 window];
    }

    else
    {
      window = 0;
    }
  }

  if (window && ([window traitCollection], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    keyTraitEnvironment = [(_TVMLKitApplication *)self keyTraitEnvironment];

    if (!keyTraitEnvironment || (-[_TVMLKitApplication keyTraitEnvironment](self, "keyTraitEnvironment"), v11 = objc_claimAutoreleasedReturnValue(), [v11 traitCollection], v9 = objc_claimAutoreleasedReturnValue(), v11, !v9))
    {
      v32 = 0;
      goto LABEL_52;
    }
  }

  userInterfaceLayoutDirection = [*v5 userInterfaceLayoutDirection];
  statusBarOrientation = [*v5 statusBarOrientation];
  v55[0] = @"userInterfaceIdiom";
  userInterfaceIdiom = [v9 userInterfaceIdiom];
  if (UserInterfaceString_onceToken != -1)
  {
    [_TVMLKitApplication appTraitCollection];
  }

  v15 = UserInterfaceString_userInterfaceStrings;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:userInterfaceIdiom];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"unspecified";
  }

  v20 = v19;

  v54 = v20;
  v56[0] = v20;
  v55[1] = @"screenWidth";
  v21 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v52 = [v21 numberWithDouble:v22];
  v56[1] = v52;
  v55[2] = @"screenHeight";
  v23 = MEMORY[0x277CCABB0];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 bounds];
  v50 = [v23 numberWithDouble:v24];
  v56[2] = v50;
  v55[3] = @"displayScale";
  v25 = MEMORY[0x277CCABB0];
  [v9 displayScale];
  v26 = [v25 numberWithDouble:?];
  v27 = @"ltr";
  if (userInterfaceLayoutDirection == 1)
  {
    v27 = @"rtl";
  }

  v49 = v26;
  v56[3] = v26;
  v56[4] = v27;
  v55[4] = @"layoutDirection";
  v55[5] = @"horizontalSizeClass";
  v47 = v27;
  v48 = SizeClassString([v9 horizontalSizeClass]);
  v56[5] = v48;
  v55[6] = @"verticalSizeClass";
  v28 = SizeClassString([v9 verticalSizeClass]);
  v56[6] = v28;
  v55[7] = @"preferredContentSizeCategory";
  preferredContentSizeCategory = [v9 preferredContentSizeCategory];
  v30 = preferredContentSizeCategory;
  if (*MEMORY[0x277D76830] == preferredContentSizeCategory)
  {
    v31 = @"extraSmall";
  }

  else if (*MEMORY[0x277D76858] == preferredContentSizeCategory)
  {
    v31 = @"small";
  }

  else if (*MEMORY[0x277D76840] == preferredContentSizeCategory)
  {
    v31 = @"medium";
  }

  else if (*MEMORY[0x277D76838] == preferredContentSizeCategory)
  {
    v31 = @"large";
  }

  else if (*MEMORY[0x277D76828] == preferredContentSizeCategory)
  {
    v31 = @"extraLarge";
  }

  else if (*MEMORY[0x277D76820] == preferredContentSizeCategory)
  {
    v31 = @"extraExtraLarge";
  }

  else if (*MEMORY[0x277D76818] == preferredContentSizeCategory)
  {
    v31 = @"extraExtraExtraLarge";
  }

  else if (*MEMORY[0x277D76808] == preferredContentSizeCategory)
  {
    v31 = @"accessibilityMedium";
  }

  else if (*MEMORY[0x277D76800] == preferredContentSizeCategory)
  {
    v31 = @"accessibilityLarge";
  }

  else if (*MEMORY[0x277D767F8] == preferredContentSizeCategory)
  {
    v31 = @"accessibilityExtraLarge";
  }

  else if (*MEMORY[0x277D767F0] == preferredContentSizeCategory)
  {
    v31 = @"accessibilityExtraExtraLarge";
  }

  else if (*MEMORY[0x277D767E8] == preferredContentSizeCategory)
  {
    v31 = @"accessibilityExtraExtraExtraLarge";
  }

  else
  {
    v31 = @"unspecified";
  }

  v56[7] = v31;
  v55[8] = @"windowWidth";
  v33 = MEMORY[0x277CCABB0];
  v34 = v31;
  [window size];
  v35 = [v33 numberWithDouble:?];
  v56[8] = v35;
  v55[9] = @"windowHeight";
  v36 = MEMORY[0x277CCABB0];
  [window size];
  v38 = [v36 numberWithDouble:v37];
  v39 = v38;
  v40 = @"landscape";
  if ((statusBarOrientation - 3) >= 2)
  {
    v40 = @"unspecified";
  }

  if ((statusBarOrientation - 1) < 2)
  {
    v40 = @"portrait";
  }

  v56[9] = v38;
  v56[10] = v40;
  v55[10] = @"orientation";
  v55[11] = @"forceTouchCapable";
  v41 = v40;
  forceTouchCapability = [v9 forceTouchCapability];
  v43 = @"false";
  if (forceTouchCapability == 2)
  {
    v43 = @"true";
  }

  v56[11] = v43;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:12];

LABEL_52:
  if (v32)
  {
    v44 = v32;
  }

  else
  {
    v44 = MEMORY[0x277CBEC10];
  }

  v45 = v44;

  return v44;
}

- (TVApplicationControllerContext)launchContext
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);

  return WeakRetained;
}

- (IKAppDataStorage)localDataStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_localDataStorage);

  return WeakRetained;
}

- (TVAppRootViewController)appRootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_appRootViewController);

  return WeakRetained;
}

- (UIWindow)keyWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_keyWindow);

  return WeakRetained;
}

- (UITraitEnvironment)keyTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_keyTraitEnvironment);

  return WeakRetained;
}

@end