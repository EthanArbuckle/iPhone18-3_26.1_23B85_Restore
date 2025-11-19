@interface _TVMLKitApplication
- (BOOL)appIsPrivileged;
- (BOOL)appIsTrusted;
- (BOOL)supportsPictureInPicturePlayback;
- (IKAppDataStorage)localDataStorage;
- (TVAppRootViewController)appRootViewController;
- (TVApplicationControllerContext)launchContext;
- (UITraitEnvironment)keyTraitEnvironment;
- (UIWindow)keyWindow;
- (_TVMLKitApplication)initWithLaunchContext:(id)a3;
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

- (_TVMLKitApplication)initWithLaunchContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _TVMLKitApplication;
  v5 = [(_TVMLKitApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_launchContext, v4);
    v6->_headless = 0;
  }

  return v6;
}

- (BOOL)supportsPictureInPicturePlayback
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained supportsPictureInPicturePlayback];

  return v3;
}

- (id)activeDocument
{
  v2 = [(_TVMLKitApplication *)self appRootViewController];
  v3 = [v2 currentNavigationController];

  if ([v3 conformsToProtocol:&unk_287E7C190])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 activeDocument];

  return v5;
}

- (id)appIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)appJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained javaScriptApplicationURL];

  return v3;
}

- (id)appLocalJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained appLocalJSURL];

  return v3;
}

- (id)appJSCachePath
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained appJSCachePath];

  return v3;
}

- (id)offlineJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained offlineJSURL];

  return v3;
}

- (id)bagBootURLKey
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained bagBootURLKey];

  return v3;
}

- (id)appLaunchParams
{
  v3 = objc_opt_new();
  v4 = [(_TVMLKitApplication *)self appJSURL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    [v3 setObject:v5 forKey:@"location"];
  }

  v6 = [(_TVMLKitApplication *)self bagBootURLKey];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"bagBootURLKey"];
  }

  v7 = [(_TVMLKitApplication *)self javaScriptLaunchOptions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(_TVMLKitApplication *)self javaScriptLaunchOptions];
    [v3 addEntriesFromDictionary:v9];
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
  v3 = [v2 hasiTunesAPIEntitlement];

  return v3;
}

- (BOOL)appIsPrivileged
{
  v2 = +[_TVProcessInfo currentProcessInfo];
  v3 = [v2 hasPrivateEntitlement];

  return v3;
}

- (id)appTraitCollection
{
  v56[12] = *MEMORY[0x277D85DE8];
  v3 = [(_TVMLKitApplication *)self keyWindow];
  v4 = v3;
  v5 = MEMORY[0x277D76620];
  if (!self->_headless && !v3)
  {
    v6 = [*MEMORY[0x277D76620] delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [*v5 delegate];
      v4 = [v7 window];
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 && ([v4 traitCollection], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
  }

  else
  {
    v10 = [(_TVMLKitApplication *)self keyTraitEnvironment];

    if (!v10 || (-[_TVMLKitApplication keyTraitEnvironment](self, "keyTraitEnvironment"), v11 = objc_claimAutoreleasedReturnValue(), [v11 traitCollection], v9 = objc_claimAutoreleasedReturnValue(), v11, !v9))
    {
      v32 = 0;
      goto LABEL_52;
    }
  }

  v12 = [*v5 userInterfaceLayoutDirection];
  v13 = [*v5 statusBarOrientation];
  v55[0] = @"userInterfaceIdiom";
  v14 = [v9 userInterfaceIdiom];
  if (UserInterfaceString_onceToken != -1)
  {
    [_TVMLKitApplication appTraitCollection];
  }

  v15 = UserInterfaceString_userInterfaceStrings;
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
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
  v53 = [MEMORY[0x277D759A0] mainScreen];
  [v53 bounds];
  v52 = [v21 numberWithDouble:v22];
  v56[1] = v52;
  v55[2] = @"screenHeight";
  v23 = MEMORY[0x277CCABB0];
  v51 = [MEMORY[0x277D759A0] mainScreen];
  [v51 bounds];
  v50 = [v23 numberWithDouble:v24];
  v56[2] = v50;
  v55[3] = @"displayScale";
  v25 = MEMORY[0x277CCABB0];
  [v9 displayScale];
  v26 = [v25 numberWithDouble:?];
  v27 = @"ltr";
  if (v12 == 1)
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
  v29 = [v9 preferredContentSizeCategory];
  v30 = v29;
  if (*MEMORY[0x277D76830] == v29)
  {
    v31 = @"extraSmall";
  }

  else if (*MEMORY[0x277D76858] == v29)
  {
    v31 = @"small";
  }

  else if (*MEMORY[0x277D76840] == v29)
  {
    v31 = @"medium";
  }

  else if (*MEMORY[0x277D76838] == v29)
  {
    v31 = @"large";
  }

  else if (*MEMORY[0x277D76828] == v29)
  {
    v31 = @"extraLarge";
  }

  else if (*MEMORY[0x277D76820] == v29)
  {
    v31 = @"extraExtraLarge";
  }

  else if (*MEMORY[0x277D76818] == v29)
  {
    v31 = @"extraExtraExtraLarge";
  }

  else if (*MEMORY[0x277D76808] == v29)
  {
    v31 = @"accessibilityMedium";
  }

  else if (*MEMORY[0x277D76800] == v29)
  {
    v31 = @"accessibilityLarge";
  }

  else if (*MEMORY[0x277D767F8] == v29)
  {
    v31 = @"accessibilityExtraLarge";
  }

  else if (*MEMORY[0x277D767F0] == v29)
  {
    v31 = @"accessibilityExtraExtraLarge";
  }

  else if (*MEMORY[0x277D767E8] == v29)
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
  [v4 size];
  v35 = [v33 numberWithDouble:?];
  v56[8] = v35;
  v55[9] = @"windowHeight";
  v36 = MEMORY[0x277CCABB0];
  [v4 size];
  v38 = [v36 numberWithDouble:v37];
  v39 = v38;
  v40 = @"landscape";
  if ((v13 - 3) >= 2)
  {
    v40 = @"unspecified";
  }

  if ((v13 - 1) < 2)
  {
    v40 = @"portrait";
  }

  v56[9] = v38;
  v56[10] = v40;
  v55[10] = @"orientation";
  v55[11] = @"forceTouchCapable";
  v41 = v40;
  v42 = [v9 forceTouchCapability];
  v43 = @"false";
  if (v42 == 2)
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