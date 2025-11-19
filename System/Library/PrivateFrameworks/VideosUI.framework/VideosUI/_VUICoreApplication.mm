@interface _VUICoreApplication
- (UITraitEnvironment)keyTraitEnvironment;
- (UIWindow)keyWindow;
- (VUITVApplicationControllerContext)launchContext;
- (_VUICoreApplication)initWithLaunchContext:(id)a3;
- (id)appIdentifier;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)appTraitCollection;
@end

@implementation _VUICoreApplication

- (id)appJSURL
{
  WeakRetained = objc_loadWeakRetained(&self->_launchContext);
  v3 = [WeakRetained javaScriptApplicationURL];

  return v3;
}

- (_VUICoreApplication)initWithLaunchContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _VUICoreApplication;
  v5 = [(_VUICoreApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_launchContext, v4);
  }

  return v6;
}

- (id)appIdentifier
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)appLaunchParams
{
  v3 = objc_opt_new();
  v4 = [(_VUICoreApplication *)self appJSURL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    [v3 setObject:v5 forKey:@"location"];
  }

  v6 = [(_VUICoreApplication *)self javaScriptLaunchOptions];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(_VUICoreApplication *)self javaScriptLaunchOptions];
    [v3 addEntriesFromDictionary:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (id)appTraitCollection
{
  v57[12] = *MEMORY[0x1E69E9840];
  v3 = [(_VUICoreApplication *)self keyWindow];
  if (v3)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 connectedScenes];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v7 keyWindow];
  }

  else
  {
    v8 = MEMORY[0x1E69DDA98];
    v9 = [*MEMORY[0x1E69DDA98] delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [*v8 delegate];
      v3 = [v10 window];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
LABEL_10:
    v11 = [v3 traitCollection];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(_VUICoreApplication *)self keyTraitEnvironment];
  v13 = v12;
  if (!v11 && v12)
  {
    v11 = [v12 traitCollection];
  }

  if (v11)
  {
    v56[0] = @"userInterfaceIdiom";
    v14 = [v11 userInterfaceIdiom];
    if (UserInterfaceString_onceToken != -1)
    {
      [_VUICoreApplication appTraitCollection];
    }

    v15 = UserInterfaceString_userInterfaceStrings;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
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
    v54 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v54 bounds];
    v53 = [v21 numberWithDouble:v22];
    v57[1] = v53;
    v56[2] = @"screenHeight";
    v23 = MEMORY[0x1E696AD98];
    v52 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v52 bounds];
    v51 = [v23 numberWithDouble:v24];
    v57[2] = v51;
    v56[3] = @"displayScale";
    v25 = MEMORY[0x1E696AD98];
    [v11 displayScale];
    v50 = [v25 numberWithDouble:?];
    v57[3] = v50;
    v56[4] = @"layoutDirection";
    v26 = [MEMORY[0x1E69DC668] sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];

    v28 = @"ltr";
    if (v27 == 1)
    {
      v28 = @"rtl";
    }

    v57[4] = v28;
    v56[5] = @"horizontalSizeClass";
    v48 = v28;
    v49 = SizeClassString([v11 horizontalSizeClass]);
    v57[5] = v49;
    v56[6] = @"verticalSizeClass";
    v29 = SizeClassString([v11 verticalSizeClass]);
    v57[6] = v29;
    v56[7] = @"preferredContentSizeCategory";
    v30 = [v11 preferredContentSizeCategory];
    v31 = v30;
    if (*MEMORY[0x1E69DDC68] == v30)
    {
      v32 = @"extraSmall";
    }

    else if (*MEMORY[0x1E69DDC88] == v30)
    {
      v32 = @"small";
    }

    else if (*MEMORY[0x1E69DDC78] == v30)
    {
      v32 = @"medium";
    }

    else if (*MEMORY[0x1E69DDC70] == v30)
    {
      v32 = @"large";
    }

    else if (*MEMORY[0x1E69DDC60] == v30)
    {
      v32 = @"extraLarge";
    }

    else if (*MEMORY[0x1E69DDC58] == v30)
    {
      v32 = @"extraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC50] == v30)
    {
      v32 = @"extraExtraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC40] == v30)
    {
      v32 = @"accessibilityMedium";
    }

    else if (*MEMORY[0x1E69DDC38] == v30)
    {
      v32 = @"accessibilityLarge";
    }

    else if (*MEMORY[0x1E69DDC30] == v30)
    {
      v32 = @"accessibilityExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC28] == v30)
    {
      v32 = @"accessibilityExtraExtraLarge";
    }

    else if (*MEMORY[0x1E69DDC20] == v30)
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
    [v3 bounds];
    v37 = [v34 numberWithDouble:v36];
    v57[8] = v37;
    v56[9] = @"windowHeight";
    v38 = MEMORY[0x1E696AD98];
    [v3 bounds];
    v40 = [v38 numberWithDouble:v39];
    v57[9] = v40;
    v56[10] = @"orientation";
    v41 = [*MEMORY[0x1E69DDA98] statusBarOrientation];
    if ((v41 - 3) >= 2)
    {
      v42 = @"unspecified";
    }

    else
    {
      v42 = @"landscape";
    }

    if ((v41 - 1) >= 2)
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
    v45 = [v11 forceTouchCapability];
    v46 = @"false";
    if (v45 == 2)
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