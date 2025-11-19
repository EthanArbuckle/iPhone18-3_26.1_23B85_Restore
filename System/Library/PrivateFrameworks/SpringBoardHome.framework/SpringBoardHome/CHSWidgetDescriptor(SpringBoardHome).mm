@interface CHSWidgetDescriptor(SpringBoardHome)
- (SBHWidget)sbh_iconDataSourceInDomain:()SpringBoardHome;
- (id)accentColor;
- (id)backgroundColor;
- (id)mostInterestingColor;
- (id)sbh_appName;
- (id)sbh_galleryItemIdentifier;
- (id)sbh_iconDataSource;
- (uint64_t)_widgetLocationStyleForAddWidgetSheetLocation:()SpringBoardHome;
- (uint64_t)sbh_disfavoredSizeClassesForAddWidgetSheetLocation:()SpringBoardHome;
- (uint64_t)sbh_isLinkedOnOrAfter:()SpringBoardHome;
- (uint64_t)sbh_supportsRemovableBackgroundOrAccessoryFamilies;
- (void)_loadColorsBackgroundColor:()SpringBoardHome accentColor:;
- (void)_loadColorsFromExtensionForBundleIdentifier:()SpringBoardHome backgroundColor:accentColor:;
- (void)_loadColorsFromShortcutsForBundleIdentifier:()SpringBoardHome backgroundColor:accentColor:;
@end

@implementation CHSWidgetDescriptor(SpringBoardHome)

- (id)sbh_appName
{
  v2 = [a1 extensionBundleIdentifier];
  v3 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v2);

  v4 = [v3 localizedName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 localizedShortName];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [a1 sbh_iconDataSource];
      v10 = objc_opt_class();
      v11 = v9;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v6 = [v13 displayName];
    }
  }

  return v6;
}

- (uint64_t)sbh_disfavoredSizeClassesForAddWidgetSheetLocation:()SpringBoardHome
{
  v2 = [a1 _widgetLocationStyleForAddWidgetSheetLocation:?];

  return [a1 disfavoredFamiliesForLocation:v2];
}

- (uint64_t)_widgetLocationStyleForAddWidgetSheetLocation:()SpringBoardHome
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BEE857A8[a3 - 1];
  }
}

- (uint64_t)sbh_supportsRemovableBackgroundOrAccessoryFamilies
{
  if (([a1 supportedFamilies] & 0x1C00) != 0)
  {
    return 1;
  }

  return [a1 sbh_supportsRemovableBackground];
}

- (id)sbh_iconDataSource
{
  v2 = +[SBHIconGridSizeClassDomain globalDomain];
  v3 = [a1 sbh_iconDataSourceInDomain:v2];

  return v3;
}

- (SBHWidget)sbh_iconDataSourceInDomain:()SpringBoardHome
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = a1;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v18 = v7;

    v19 = [v18 type];
    if (v19 > 3)
    {
      switch(v19)
      {
        case 4:
          v20 = SBHAppPredictionsElement;
          goto LABEL_23;
        case 5:
          v20 = SBHSmartStackElement;
          goto LABEL_23;
        case 6:
          v20 = SBHShortcutsSingleElement;
          goto LABEL_23;
      }
    }

    else
    {
      switch(v19)
      {
        case 1:
          v20 = SBHSiriSuggestionsElement;
          goto LABEL_23;
        case 2:
          v20 = SBHShortcutsFolderElement;
          goto LABEL_23;
        case 3:
          v20 = SBHFilesElement;
LABEL_23:
          v14 = objc_alloc_init(v20);
          goto LABEL_24;
      }
    }

    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Somehow got to SBHSpecialWidgetDescriptorTypeNone with a SBHSpecialWidgetDescriptor" userInfo:0];
    objc_exception_throw(v22);
  }

  v8 = [a1 extensionIdentity];
  v9 = -[SBHIconGridSizeClassSet initWithCHSWidgetFamilyMask:inDomain:]([SBHIconGridSizeClassSet alloc], "initWithCHSWidgetFamilyMask:inDomain:", [a1 supportedFamilies], v4);
  v10 = [SBHWidget alloc];
  v11 = [a1 kind];
  v12 = [v8 extensionBundleIdentifier];
  v13 = [v8 containerBundleIdentifier];
  v14 = [(SBHWidget *)v10 initWithKind:v11 extensionBundleIdentifier:v12 containerBundleIdentifier:v13 supportedGridSizeClasses:v9];

  v15 = SBLogWidgets();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(SBHWidget *)v14 extensionBundleIdentifier];
    v17 = [(SBHWidget *)v14 uniqueIdentifier];
    v23 = 138543618;
    v24 = v16;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "Widget %{public}@ %{public}@ created from CHS widget descriptor.", &v23, 0x16u);
  }

LABEL_24:

  return v14;
}

- (id)sbh_galleryItemIdentifier
{
  v2 = objc_getAssociatedObject(a1, &SBHAvocadoDescriptorGalleryItemIdentifierKey);
  if (!v2)
  {
    v3 = [a1 extensionIdentity];
    v15 = MEMORY[0x1E696AEC0];
    v4 = [v3 extensionBundleIdentifier];
    v5 = [a1 kind];
    v6 = [v3 containerBundleIdentifier];
    v7 = [a1 sbh_supportedSizeClasses];
    v8 = [a1 supportedFamilies];
    v9 = [a1 displayName];
    v10 = [a1 widgetDescription];
    v11 = [a1 intentType];
    v14 = v7;
    v12 = v4;
    v2 = [v15 stringWithFormat:@"AVO_DESCRIPTOR:%@-%@-%@-%lu-%lu-%@-%@-%@", v4, v5, v6, v14, v8, v9, v10, v11];

    objc_setAssociatedObject(a1, &SBHAvocadoDescriptorGalleryItemIdentifierKey, v2, 1);
  }

  return v2;
}

- (uint64_t)sbh_isLinkedOnOrAfter:()SpringBoardHome
{
  if (a3 == 1)
  {
    return [a1 isLinkedOnOrAfter:0];
  }

  else
  {
    return a3 == 0;
  }
}

- (id)backgroundColor
{
  v2 = objc_getAssociatedObject(a1, &SBHAvocadoDescriptorBackgroundColorKey);
  if (!v2)
  {
    v4 = 0;
    [a1 _loadColorsBackgroundColor:&v4 accentColor:0];
    v2 = v4;
  }

  return v2;
}

- (id)accentColor
{
  v2 = objc_getAssociatedObject(a1, &SBHAvocadoDescriptorAccentColorKey);
  if (!v2)
  {
    v4 = 0;
    [a1 _loadColorsBackgroundColor:0 accentColor:&v4];
    v2 = v4;
  }

  return v2;
}

- (id)mostInterestingColor
{
  v2 = [a1 accentColor];
  v3 = [a1 backgroundColor];
  v4 = v3;
  if (v3 | v2)
  {
    v5 = MEMORY[0x1E69DC888];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__CHSWidgetDescriptor_SpringBoardHome__mostInterestingColor__block_invoke;
    v8[3] = &unk_1E808A738;
    v9 = v3;
    v10 = v2;
    v6 = [v5 colorWithDynamicProvider:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_loadColorsBackgroundColor:()SpringBoardHome accentColor:
{
  v7 = [a1 extensionBundleIdentifier];
  v16 = 0;
  v17 = 0;
  [a1 _loadColorsFromExtensionForBundleIdentifier:v7 backgroundColor:&v17 accentColor:&v16];
  v8 = v17;
  v9 = v16;
  v14 = v9;
  v15 = v8;
  [a1 _loadColorsFromShortcutsForBundleIdentifier:v7 backgroundColor:&v15 accentColor:&v14];
  v10 = v15;

  v11 = v14;
  objc_setAssociatedObject(a1, &SBHAvocadoDescriptorBackgroundColorKey, v10, 1);
  objc_setAssociatedObject(a1, &SBHAvocadoDescriptorAccentColorKey, v11, 1);
  if (a3 && !*a3)
  {
    v12 = v10;
    *a3 = v10;
  }

  if (a4 && !*a4)
  {
    v13 = v11;
    *a4 = v11;
  }
}

- (void)_loadColorsFromExtensionForBundleIdentifier:()SpringBoardHome backgroundColor:accentColor:
{
  v7 = a3;
  if (!*a4 || !*a5)
  {
    v27 = a5;
    v28 = v7;
    v8 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v7 error:0];
    v9 = [v8 compatibilityObject];
    v10 = [v9 bundleURL];

    v11 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:v10];
    v12 = [v11 infoDictionary];
    v13 = [v12 objectForKey:@"NSWidgetBackgroundColorName"];
    v14 = [v12 objectForKey:@"NSAccentColorName"];
    v15 = objc_alloc(MEMORY[0x1E69DD368]);
    v16 = [MEMORY[0x1E69DC938] currentDevice];
    v29 = 0;
    v17 = [v15 initWithURL:v10 idiom:objc_msgSend(v16 error:{"userInterfaceIdiom"), &v29}];
    v18 = v29;

    if (v18)
    {
      v19 = SBLogWidgets();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CHSWidgetDescriptor(SpringBoardHome) _loadColorsFromExtensionForBundleIdentifier:v18 backgroundColor:v19 accentColor:?];
      }
    }

    else
    {
      v25 = v11;
      v26 = v8;
      v20 = objc_opt_new();
      v19 = [v17 colorNamed:v13 withTraitCollection:v20];

      v21 = objc_opt_new();
      v22 = [v17 colorNamed:v14 withTraitCollection:v21];

      if (v19 && !*a4)
      {
        v23 = v19;
        *a4 = v19;
      }

      if (v27 && v22 && !*v27)
      {
        v24 = v22;
        *v27 = v22;
      }

      v11 = v25;
      v8 = v26;
    }

    v7 = v28;
  }
}

- (void)_loadColorsFromShortcutsForBundleIdentifier:()SpringBoardHome backgroundColor:accentColor:
{
  v7 = a3;
  if (!*a4 || !*a5)
  {
    WFWidgetGetDefaultColors();
    v8 = 0;
    v9 = 0;
    if (v8 && !*a4)
    {
      v10 = v8;
      *a4 = v8;
    }

    if (v9 && !*a5)
    {
      v11 = v9;
      *a5 = v9;
    }
  }
}

- (void)_loadColorsFromExtensionForBundleIdentifier:()SpringBoardHome backgroundColor:accentColor:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Error creating asset manager: %{public}@", &v4, 0xCu);
}

@end