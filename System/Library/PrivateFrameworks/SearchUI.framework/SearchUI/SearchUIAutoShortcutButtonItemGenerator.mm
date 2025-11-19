@interface SearchUIAutoShortcutButtonItemGenerator
+ (id)shortcutsForBundleId:(id)a3;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIAutoShortcutButtonItemGenerator

+ (id)shortcutsForBundleId:(id)a3
{
  v3 = a3;
  if (shortcutsForBundleId__onceToken != -1)
  {
    +[SearchUIAutoShortcutButtonItemGenerator shortcutsForBundleId:];
  }

  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:0];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 localeIdentifier];

    v7 = [shortcutsForBundleId__shortcutsProvider autoShortcutsForApplicationRecord:v4 localeIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __64__SearchUIAutoShortcutButtonItemGenerator_shortcutsForBundleId___block_invoke()
{
  shortcutsForBundleId__shortcutsProvider = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = a4;
  v29 = v5;
  v25 = [v5 appAutoShortcutsItem];
  v28 = [v25 bundleIdentifier];
  v6 = [objc_opt_class() shortcutsForBundleId:v28];
  v27 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 systemImageName];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 localizedShortTitle];

          if (v15)
          {
            v16 = objc_opt_new();
            v17 = [v12 systemImageName];
            [v16 setSymbolName:v17];

            [v16 setIsTemplate:1];
            v18 = [objc_alloc(MEMORY[0x1E69E09B0]) initWithAutoShortcut:v12 bundleIdentifier:v28];
            v19 = objc_opt_new();
            [v19 setIsRunnableWorkflow:1];
            v30 = 0;
            v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v30];
            v21 = v30;
            [v19 setIntentMessageData:v20];

            if (v21)
            {
              v22 = SearchUIGeneralLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v36 = v21;
                _os_log_error_impl(&dword_1DA169000, v22, OS_LOG_TYPE_ERROR, "SearchUIAutoShortcutButtonItemGenerator autoshortcuts archive data object error: %@", buf, 0xCu);
              }
            }

            v23 = [[SearchUIButtonItem alloc] initWithSFButtonItem:v29];
            v24 = [v12 localizedShortTitle];
            [(SearchUIButtonItem *)v23 setTitle:v24];

            [(SearchUIButtonItem *)v23 setImage:v16];
            [(SearchUIButtonItem *)v23 setCommand:v19];
            [v27 addObject:v23];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v9);
  }

  v26[2](v26, v27, 1);
}

@end