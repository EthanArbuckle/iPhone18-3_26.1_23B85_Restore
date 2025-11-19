@interface _UIApplicationInfoParser
+ (id)mainBundleInfoParser;
- (_UIApplicationInfoParser)initWithApplicationProxy:(id)a3;
- (id)_initWithApplicationPlistData:(id)a3;
- (id)_initWithBundle:(id)a3;
- (void)_computeSupportedInterfaceOrientationsWithInfo:(id)a3;
- (void)_computeSupportedUserInterfaceStyleFromInfo:(id)a3;
@end

@implementation _UIApplicationInfoParser

+ (id)mainBundleInfoParser
{
  if (qword_1ED49E008 != -1)
  {
    dispatch_once(&qword_1ED49E008, &__block_literal_global_253);
  }

  v3 = _MergedGlobals_1108;

  return v3;
}

- (id)_initWithBundle:(id)a3
{
  v4 = [a3 infoDictionary];
  v5 = [(_UIApplicationInfoParser *)self _initWithApplicationPlistData:v4];

  return v5;
}

- (_UIApplicationInfoParser)initWithApplicationProxy:(id)a3
{
  v4 = a3;
  if (qword_1ED49E018 != -1)
  {
    dispatch_once(&qword_1ED49E018, &__block_literal_global_3_1);
  }

  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  v6 = [v4 sdkVersion];
  v7 = v6;
  if (v6)
  {
    LOBYTE(v6) = [v5 isVersion:v6 greaterThanOrEqualToVersion:@"13.0"];
  }

  self->_isYukonLinked = v6;
  v8 = [v4 objectsForInfoDictionaryKeys:qword_1ED49E010];
  v9 = [v8 rawValues];
  v10 = [(_UIApplicationInfoParser *)self _initWithApplicationPlistData:v9];

  return v10;
}

- (id)_initWithApplicationPlistData:(id)a3
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v119.receiver = self;
  v119.super_class = _UIApplicationInfoParser;
  v5 = [(_UIApplicationInfoParser *)&v119 init];
  if (!v5)
  {
    goto LABEL_81;
  }

  v6 = [v4 bs_safeStringForKey:@"UIStatusBarStyle"];
  v7 = [UIApplication statusBarStyleForString:v6];

  if (v7 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v5->_requestedStatusBarStyle = v8;
  v9 = [v4 bs_safeStringForKey:@"UIBackgroundStyle"];
  v97 = v9;
  if (v9)
  {
    v10 = [UIApplication _backgroundStyleForString:v9];
  }

  else
  {
    v11 = [v4 bs_safeNumberForKey:@"UIApplicationIsOpaque"];
    v12 = v11;
    if (v11)
    {
      v10 = [v11 BOOLValue] ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  v5->_backgroundStyle = v10;
  v5->_canChangeBackgroundStyle = 0;
  v13 = [v4 bs_safeNumberForKey:@"UIStatusBarHidden"];
  v5->_statusBarHidden = [v13 BOOLValue];

  v5->_statusBarHiddenWhenVerticallyCompact = 1;
  v14 = [v4 bs_safeNumberForKey:@"UIStatusBarHiddenWhenVerticallyCompact"];
  v15 = v14;
  if (v14 && ([v14 BOOLValue] & 1) == 0)
  {
    v5->_statusBarHiddenWhenVerticallyCompact = 0;
  }

  v16 = [v4 bs_safeStringForKey:@"UIWhitePointAdaptivityStyleKey"];
  if (v16 || ([v4 bs_safeStringForKey:@"_UIWhitePointAdaptivityStyle"], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    v5->_whitePointAdaptivityStyle = _UIWhitePointAdaptivityStyleFromString(v16);
  }

  else
  {
    v5->_whitePointAdaptivityStyle = 0;
  }

  v18 = [v4 allKeys];
  v19 = [v18 containsObject:@"UIViewControllerBasedStatusBarAppearance"];

  if (v19)
  {
    v20 = [v4 bs_BOOLForKey:@"UIViewControllerBasedStatusBarAppearance"];
    v21 = 1;
    if (!v20)
    {
      v21 = 2;
    }
  }

  else
  {
    v21 = 0;
  }

  v5->_viewControllerBasedStatusBarAppearance = v21;
  v22 = [v4 objectForKey:@"Capabilities"];
  v23 = [v4 bs_safeArrayForKey:@"Capabilities"];
  v24 = *MEMORY[0x1E69A28E8];
  if ([v23 containsObject:*MEMORY[0x1E69A28E8]])
  {

LABEL_25:
    v5->_requiresHighResolution = 1;
    goto LABEL_26;
  }

  v25 = [v4 bs_safeDictionaryForKey:@"Capabilities"];
  v26 = [v25 objectForKey:v24];
  v27 = [v26 BOOLValue];

  if (v27)
  {
    goto LABEL_25;
  }

LABEL_26:
  v5->_fakingRequiresHighResolution = 0;
  v28 = [v4 bs_safeArrayForKey:@"UIStatusBarStyleIgnoredOverrides"];
  v5->_ignoredOverrides = [UIApplication _statusBarStyleOverridesForArray:v28];

  v5->_systemWindowsSecure = [v4 bs_BOOLForKey:@"UIApplicationSystemWindowsSecureKey"];
  v5->_optOutOfRTL = [v4 bs_BOOLForKey:@"UIOptOutOfRTL"];
  v5->_disableLayoutAwareShortcuts = [v4 bs_BOOLForKey:@"NSDisableKeyboardLayoutAdjustedShortcuts"];
  v29 = [v4 bs_safeNumberForKey:@"UIApplicationExitsOnSuspend"];
  v5->_isExitsOnSuspend = [v29 BOOLValue];

  v30 = [v4 bs_safeStringForKey:@"UILaunchImageFile"];
  launchImageFile = v5->_launchImageFile;
  v5->_launchImageFile = v30;

  v32 = [v4 bs_safeStringForKey:@"NSAccentColorName"];
  keyColorAssetName = v5->_keyColorAssetName;
  v5->_keyColorAssetName = v32;

  v5->_supportedOnLockScreen = [v4 bs_BOOLForKey:@"UIApplicationShowsViewsWhileLocked"];
  v34 = [v4 bs_safeDictionaryForKey:@"UIApplicationInterfaceManifest"];
  v5->_supportsMultiwindow = [v34 bs_BOOLForKey:@"UIApplicationSupportsMultiwindow"];
  v35 = [v4 bs_safeDictionaryForKey:@"UIApplicationSceneManifest"];
  v36 = [v35 bs_safeDictionaryForKey:@"UISceneConfigurations"];
  sceneConfigurations = v5->_sceneConfigurations;
  v5->_sceneConfigurations = v36;

  if (v5->_supportsMultiwindow)
  {
    v38 = 1;
  }

  else
  {
    v38 = [v35 bs_BOOLForKey:@"UIApplicationSupportsMultipleScenes"];
  }

  v5->_supportsMultiwindow = v38;
  v39 = [v35 bs_safeStringForKey:@"UIApplicationPreferredDefaultSceneSessionRole"];
  preferredDefaultSceneSessionRole = v5->_preferredDefaultSceneSessionRole;
  v5->_preferredDefaultSceneSessionRole = v39;

  v5->_supportsSceneItemProviders = [v35 bs_BOOLForKey:@"UIApplicationSupportsSceneItemProviders"];
  v41 = [v4 objectForKey:@"com.apple.uikit.feature-a"];
  v5->_hasSupportsIndirectInputEventsKey = v41 != 0;

  v42 = [v4 objectForKey:@"UIApplicationSupportsIndirectInputEvents"];
  v5->_hasSupportsIndirectInputEventsKey |= v42 != 0;

  v5->_supportsIndirectInputEvents = [v4 bs_BOOLForKey:@"com.apple.uikit.feature-a"];
  v5->_supportsIndirectInputEvents |= [v4 bs_BOOLForKey:@"UIApplicationSupportsIndirectInputEvents"];
  v43 = [v4 bs_safeArrayForKey:@"UIDeviceFamily"];
  v44 = objc_opt_self();
  v45 = [v43 bs_objectsOfClass:v44];
  deviceFamilies = v5->_deviceFamilies;
  v5->_deviceFamilies = v45;

  v5->_supportsPrintCommand = [v4 bs_BOOLForKey:@"UIApplicationSupportsPrintCommand"];
  v5->_supportsAlwaysOnDisplay = [v4 bs_BOOLForKey:0x1EFB8E070];
  v5->_supportsBacklightEnvironment = [v4 bs_BOOLForKey:0x1EFB8E090];
  [(_UIApplicationInfoParser *)v5 _computeSupportedInterfaceOrientationsWithInfo:v4];
  [(_UIApplicationInfoParser *)v5 _computeSupportedUserInterfaceStyleFromInfo:v4];
  v47 = [(NSArray *)v5->_deviceFamilies containsObject:&unk_1EFE30910];
  v5->_uiRequiresFullScreenValue = [v4 bs_BOOLForKey:@"UIRequiresFullScreen"];
  v48 = [v4 objectForKey:@"UILaunchStoryboardName"];
  v93 = v35;
  v94 = v34;
  if (v48)
  {
    v5->_usesSplashBoard = 1;
    p_usesSplashBoard = &v5->_usesSplashBoard;
  }

  else
  {
    v50 = [v4 objectForKey:@"UILaunchStoryboards"];
    if (v50)
    {
      v5->_usesSplashBoard = 1;
      p_usesSplashBoard = &v5->_usesSplashBoard;
    }

    else
    {
      v51 = [v4 objectForKey:@"UILaunchScreen"];
      if (v51)
      {
        v5->_usesSplashBoard = 1;
        p_usesSplashBoard = &v5->_usesSplashBoard;
      }

      else
      {
        v52 = [v4 objectForKey:@"UILaunchScreens"];
        v5->_usesSplashBoard = v52 != 0;
        p_usesSplashBoard = &v5->_usesSplashBoard;
      }
    }
  }

  v53 = v5->_uiRequiresFullScreenValue || !dyld_program_sdk_at_least() || !*p_usesSplashBoard || !v47 || (~LODWORD(v5->_supportedInterfaceOrientations) & 0x1ELL) != 0;
  v5->_requiresFullScreen = v53;
  v5->_requiresGameControllerBasedFocus = [v4 bs_BOOLForKey:@"_UIRequiresGameControllerBasedFocus"];
  v5->_requestsFlattenedGameControllerFocusMovement = [v4 bs_BOOLForKey:@"_UIRequestsFlattenedGameControllerFocusMovement"];
  v5->_focusEnabledInLimitedControls = [v4 bs_BOOLForKey:@"_UIFocusLimitedControlsEnabled"];
  v5->_forcesDefaultFocusAppearance = [v4 bs_BOOLForKey:@"_UIFocusDefaultAppearanceEnabled"];
  v54 = [v4 bs_safeNumberForKey:@"UIFocusSystemEnabled"];
  v95 = v22;
  v96 = v15;
  v92 = v54;
  if (v54)
  {
    v55 = [v54 BOOLValue];
  }

  else
  {
    v55 = 1;
  }

  v98 = v5;
  v5->_focusSystemEnabled = v55;
  v56 = objc_opt_new();
  v100 = objc_opt_new();
  v99 = objc_opt_new();
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [v4 bs_safeArrayForKey:@"CFBundleDocumentTypes"];
  v57 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v116;
    v101 = *v116;
    do
    {
      v60 = 0;
      v102 = v58;
      do
      {
        if (*v116 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v115 + 1) + 8 * v60);
        v62 = [v61 objectForKeyedSubscript:{@"UIDocumentClass", v92}];
        v63 = v62;
        if (v62)
        {
          v64 = NSClassFromString(v62);
          if (v64)
          {
            v65 = v64;
            v66 = [v61 objectForKeyedSubscript:@"LSItemContentTypes"];
            v67 = MEMORY[0x1E6982C40];
            v106 = v66;
            v68 = [MEMORY[0x1E695DFD8] setWithArray:?];
            v69 = [v67 _typesWithIdentifiers:v68];

            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v105 = v69;
            v70 = [v69 allValues];
            v71 = [v70 countByEnumeratingWithState:&v111 objects:v121 count:16];
            if (v71)
            {
              v72 = v71;
              v73 = *v112;
              do
              {
                for (i = 0; i != v72; ++i)
                {
                  if (*v112 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  [v56 setObject:v65 forKey:*(*(&v111 + 1) + 8 * i)];
                }

                v72 = [v70 countByEnumeratingWithState:&v111 objects:v121 count:16];
              }

              while (v72);
            }

            v75 = [v61 objectForKeyedSubscript:@"CFBundleTypeRole"];
            v76 = [v75 isEqualToString:@"Viewer"];
            if ((v76 & 1) != 0 || [v75 isEqualToString:@"Editor"])
            {
              v104 = v75;
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v77 = v106;
              v78 = [v77 countByEnumeratingWithState:&v107 objects:v120 count:16];
              if (v78)
              {
                v79 = v78;
                v80 = *v108;
                if (v76)
                {
                  v81 = v100;
                }

                else
                {
                  v81 = v99;
                }

                do
                {
                  for (j = 0; j != v79; ++j)
                  {
                    if (*v108 != v80)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v83 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v107 + 1) + 8 * j)];
                    if (v83)
                    {
                      [v81 addObject:v83];
                    }
                  }

                  v79 = [v77 countByEnumeratingWithState:&v107 objects:v120 count:16];
                }

                while (v79);
              }

              v75 = v104;
            }

            v59 = v101;
            v58 = v102;
          }

          else
          {
            v84 = *(__UILogGetCategoryCachedImpl("UIDocument", &_initWithApplicationPlistData____s_category) + 8);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v123 = v63;
              _os_log_impl(&dword_188A29000, v84, OS_LOG_TYPE_ERROR, "Unable to find class %@ which is specified to handle documents in the application's info.plist", buf, 0xCu);
            }
          }
        }

        ++v60;
      }

      while (v60 != v58);
      v58 = [obj countByEnumeratingWithState:&v115 objects:v124 count:16];
    }

    while (v58);
  }

  v85 = [v56 copy];
  v5 = v98;
  utTypeToDocumentClassMap = v98->_utTypeToDocumentClassMap;
  v98->_utTypeToDocumentClassMap = v85;

  v87 = [v100 array];
  viewerRoleDocumentUTTypes = v98->_viewerRoleDocumentUTTypes;
  v98->_viewerRoleDocumentUTTypes = v87;

  v89 = [v99 array];
  editorRoleDocumentUTTypes = v98->_editorRoleDocumentUTTypes;
  v98->_editorRoleDocumentUTTypes = v89;

LABEL_81:
  return v5;
}

- (void)_computeSupportedInterfaceOrientationsWithInfo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bs_safeArrayForKey:@"UISupportedInterfaceOrientations"];
  v6 = [v5 bs_objectsOfClass:objc_opt_class()];

  if (_UIDeviceNativeUserInterfaceIdiomIgnoringClassic())
  {
    v7 = 1;
  }

  else
  {
    v7 = !+[UIDevice _hasHomeButton];
  }

  if ([v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v6;
    v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v10 |= 1 << [UIApplication interfaceOrientationForString:*(*(&v20 + 1) + 8 * i), v20];
        }

        v9 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);

      if (v10 == 4)
      {
        v13 = v7;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == 1)
      {
        v24 = @"UIInterfaceOrientationPortrait";
        v14 = 1;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

        v10 = 2;
        v6 = v15;
LABEL_31:
        v19 = [v6 objectAtIndex:{0, v20}];
        v18 = [UIApplication interfaceOrientationForString:v19];

        goto LABEL_32;
      }

      if ((v10 & 2) != 0)
      {
        v14 = 1;
        goto LABEL_31;
      }

      if ((v10 & 0x10) != 0)
      {
        v14 = 4;
        goto LABEL_31;
      }

      if ((v10 & 8) != 0)
      {
        v14 = 3;
        goto LABEL_31;
      }
    }

    else
    {

      v10 = 0;
    }

    if ((v10 & 4) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    goto LABEL_31;
  }

  v16 = [v4 bs_safeStringForKey:@"UIInterfaceOrientation"];
  v17 = [UIApplication interfaceOrientationForString:v16];
  if ((v7 & (v17 == 2)) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v10 = 0;
  v14 = v18;
LABEL_32:
  self->_launchingInterfaceOrientationForSpringBoard = v18;
  self->_supportedInterfaceOrientations = v10;
  self->_interfaceOrientation = v14;
}

- (void)_computeSupportedUserInterfaceStyleFromInfo:(id)a3
{
  v4 = [a3 bs_safeStringForKey:@"UIUserInterfaceStyle"];
  if (!v4)
  {
    if (self->_isYukonLinked)
    {
      v5 = @"Automatic";
    }

    else
    {
      v5 = @"Light";
    }

    v4 = v5;
  }

  v7 = v4;
  if ([(__CFString *)v4 isEqualToString:@"Automatic"])
  {
    self->_supportedUserInterfaceStyle = 0;
  }

  else
  {
    if ([(__CFString *)v7 isEqualToString:@"Dark"])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    self->_supportedUserInterfaceStyle = v6;
  }
}

@end