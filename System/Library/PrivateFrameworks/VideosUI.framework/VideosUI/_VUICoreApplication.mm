@interface _VUICoreApplication
- (UITraitEnvironment)keyTraitEnvironment;
- (UIWindow)keyWindow;
- (VUITVApplicationControllerContext)launchContext;
- (_VUICoreApplication)initWithLaunchContext:(id)context;
- (id)appIdentifier;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)appTraitCollection;
@end

@implementation _VUICoreApplication

- (id)appJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  javaScriptApplicationURL = [WeakRetained javaScriptApplicationURL];

  return javaScriptApplicationURL;
}

- (_VUICoreApplication)initWithLaunchContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = _VUICoreApplication;
  v5 = [(_VUICoreApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_launchContext, contextCopy);
  }

  return v6;
}

- (id)appIdentifier
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  return bundleIdentifier;
}

- (id)appLaunchParams
{
  v3 = objc_opt_new();
  appJSURL = [(_VUICoreApplication *)self appJSURL];
  absoluteString = [appJSURL absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKey:@"location"];
  }

  javaScriptLaunchOptions = [(_VUICoreApplication *)self javaScriptLaunchOptions];
  v7 = [javaScriptLaunchOptions count];

  if (v7)
  {
    javaScriptLaunchOptions2 = [(_VUICoreApplication *)self javaScriptLaunchOptions];
    [v3 addEntriesFromDictionary:javaScriptLaunchOptions2];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)appTraitCollection
{
  v57[12] = *MEMORY[0x1E69E9840];
  keyWindow = [(_VUICoreApplication *)self keyWindow];
  if (keyWindow)
  {
    goto LABEL_10;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  allObjects = [connectedScenes allObjects];
  firstObject = [allObjects firstObject];

  if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    keyWindow = [firstObject keyWindow];
  }

  else
  {
    v8 = MEMORY[0x1E69DDA98];
    delegate = [*MEMORY[0x1E69DDA98] delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [*v8 delegate];
      keyWindow = [delegate2 window];
    }

    else
    {
      keyWindow = 0;
    }
  }

  if (keyWindow)
  {
LABEL_10:
    traitCollection = [keyWindow traitCollection];
  }

  else
  {
    traitCollection = 0;
  }

  keyTraitEnvironment = [(_VUICoreApplication *)self keyTraitEnvironment];
  v13 = keyTraitEnvironment;
  if (!traitCollection && keyTraitEnvironment)
  {
    traitCollection = [keyTraitEnvironment traitCollection];
  }

  if (traitCollection)
  {
    v56[0] = @"userInterfaceIdiom";
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    if (UserInterfaceString_onceToken != -1)
    {
      [_VUICoreApplication appTraitCollection];
    }

    v15 = UserInterfaceString_userInterfaceStrings;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:userInterfaceIdiom];
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

    v55 = v20;
    v57[0] = v20;
    v56[1] = @"screenWidth";
    v21 = MEMORY[0x1E696AD98];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v53 = [v21 numberWithDouble:v22];
    v57[1] = v53;
    v56[2] = @"screenHeight";
    v23 = MEMORY[0x1E696AD98];
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 bounds];
    v51 = [v23 numberWithDouble:v24];
    v57[2] = v51;
    v56[3] = @"displayScale";
    v25 = MEMORY[0x1E696AD98];
    [traitCollection displayScale];
    v50 = [v25 numberWithDouble:?];
    v57[3] = v50;
    v56[4] = @"layoutDirection";
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

    v28 = @"ltr";
    if (userInterfaceLayoutDirection == 1)
    {
      v28 = @"rtl";
    }

    v57[4] = v28;
    v56[5] = @"horizontalSizeClass";
    v48 = v28;
    v49 = SizeClassString([traitCollection horizontalSizeClass]);
    v57[5] = v49;
    v56[6] = @"verticalSizeClass";
    v29 = SizeClassString([traitCollection verticalSizeClass]);
    v57[6] = v29;
    v56[7] = @"preferredContentSizeCategory";
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v31 = preferredContentSizeCategory;
    if (*MEMORY[0x1E69DDC68] == preferredContentSizeCategory)
    {
      v32 = @"extraSmall";
    }

    else if (*MEMORY[0x1E69DDC88] == preferredContentSizeCategory)
    {
      v32 = @"small";
    }

    else if (*MEMORY[0x1E69DDC78] == preferredContentSizeCategory)
    {
      v32 = @"medium";
    }

    else if (*MEMORY[0x1E69DDC70] == preferredContentSizeCategory)
    {
      v32 = @"large";
    }

    else if (*MEMORY[0x1E69DDC60] == preferredContentSizeCategory)
    {
      v32 = @"extraLarge";
    }

    else if (*MEMORY[0x1E69DDC58] == preferredContentSizeCategory)
    {
      v32 = @"extraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC50] == preferredContentSizeCategory)
    {
      v32 = @"extraExtraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC40] == preferredContentSizeCategory)
    {
      v32 = @"accessibilityMedium";
    }

    else if (*MEMORY[0x1E69DDC38] == preferredContentSizeCategory)
    {
      v32 = @"accessibilityLarge";
    }

    else if (*MEMORY[0x1E69DDC30] == preferredContentSizeCategory)
    {
      v32 = @"accessibilityExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC28] == preferredContentSizeCategory)
    {
      v32 = @"accessibilityExtraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC20] == preferredContentSizeCategory)
    {
      v32 = @"accessibilityExtraExtraExtraLarge";
    }

    else
    {
      v32 = @"unspecified";
    }

    v57[7] = v32;
    v56[8] = @"windowWidth";
    v34 = MEMORY[0x1E696AD98];
    v35 = v32;
    [keyWindow bounds];
    v37 = [v34 numberWithDouble:v36];
    v57[8] = v37;
    v56[9] = @"windowHeight";
    v38 = MEMORY[0x1E696AD98];
    [keyWindow bounds];
    v40 = [v38 numberWithDouble:v39];
    v57[9] = v40;
    v56[10] = @"orientation";
    statusBarOrientation = [*MEMORY[0x1E69DDA98] statusBarOrientation];
    if ((statusBarOrientation - 3) >= 2)
    {
      v42 = @"unspecified";
    }

    else
    {
      v42 = @"landscape";
    }

    if ((statusBarOrientation - 1) >= 2)
    {
      v43 = v42;
    }

    else
    {
      v43 = @"portrait";
    }

    v57[10] = v43;
    v56[11] = @"forceTouchCapable";
    v44 = v43;
    forceTouchCapability = [traitCollection forceTouchCapability];
    v46 = @"false";
    if (forceTouchCapability == 2)
    {
      v46 = @"true";
    }

    v57[11] = v46;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:12];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (VUITVApplicationControllerContext)launchContext
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);

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