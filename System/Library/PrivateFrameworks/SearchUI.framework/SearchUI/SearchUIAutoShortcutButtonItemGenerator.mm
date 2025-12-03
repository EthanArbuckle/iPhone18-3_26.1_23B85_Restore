@interface SearchUIAutoShortcutButtonItemGenerator
+ (id)shortcutsForBundleId:(id)id;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion;
@end

@implementation SearchUIAutoShortcutButtonItemGenerator

+ (id)shortcutsForBundleId:(id)id
{
  idCopy = id;
  if (shortcutsForBundleId__onceToken != -1)
  {
    +[SearchUIAutoShortcutButtonItemGenerator shortcutsForBundleId:];
  }

  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:idCopy allowPlaceholder:0 error:0];
  if (v4)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v7 = [shortcutsForBundleId__shortcutsProvider autoShortcutsForApplicationRecord:v4 localeIdentifier:localeIdentifier];
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

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)item completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v29 = itemCopy;
  appAutoShortcutsItem = [itemCopy appAutoShortcutsItem];
  bundleIdentifier = [appAutoShortcutsItem bundleIdentifier];
  v6 = [objc_opt_class() shortcutsForBundleId:bundleIdentifier];
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
        systemImageName = [v12 systemImageName];
        if (systemImageName)
        {
          v14 = systemImageName;
          localizedShortTitle = [v12 localizedShortTitle];

          if (localizedShortTitle)
          {
            v16 = objc_opt_new();
            systemImageName2 = [v12 systemImageName];
            [v16 setSymbolName:systemImageName2];

            [v16 setIsTemplate:1];
            v18 = [objc_alloc(MEMORY[0x1E69E09B0]) initWithAutoShortcut:v12 bundleIdentifier:bundleIdentifier];
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
            localizedShortTitle2 = [v12 localizedShortTitle];
            [(SearchUIButtonItem *)v23 setTitle:localizedShortTitle2];

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

  completionCopy[2](completionCopy, v27, 1);
}

@end