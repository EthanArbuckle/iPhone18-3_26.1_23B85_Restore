@interface WBSWebExtensionNewTabOverridePreferencesManager
+ (void)migrateStorageToPerProfileFormatIfNecessaryWithDefaults:(id)a3;
- (BOOL)isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:(id)a3;
- (BOOL)shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:(id)a3;
- (WBSWebExtensionNewTabOverridePreferencesManager)initWithExtensionsController:(id)a3;
- (id)_webExtensionOverridingNewTabPageWithDefaults:(id)a3;
- (id)cloudExtensionStateForDefaults:(id)a3;
- (id)extensionComposedIdentifierForNewTabPreferenceInDefaults:(id)a3;
- (id)sortedComposedIdentifiersForExtensionsWithOverridePages;
- (void)clearNewTabBehaviorInDefaults:(id)a3 fromUserGesture:(BOOL)a4;
- (void)setNewTabBehaviorWithExtensionComposedIdentifier:(id)a3 inDefaults:(id)a4 fromUserGesture:(BOOL)a5;
@end

@implementation WBSWebExtensionNewTabOverridePreferencesManager

- (WBSWebExtensionNewTabOverridePreferencesManager)initWithExtensionsController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WBSWebExtensionNewTabOverridePreferencesManager;
  v5 = [(WBSWebExtensionNewTabOverridePreferencesManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webExtensionsController, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:(id)a3
{
  v4 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self _webExtensionOverridingNewTabPageWithDefaults:a3];
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v6 = [v4 extension];
  v7 = [WeakRetained extensionIsEnabled:v6];

  return v7;
}

- (BOOL)shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v6 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self _webExtensionOverridingNewTabPageWithDefaults:v4];

  if ([v6 allowedInPrivateBrowsing])
  {
    v7 = [v6 extension];
    v8 = [WeakRetained extensionIsEnabled:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_webExtensionOverridingNewTabPageWithDefaults:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v6 = [MEMORY[0x1E69C88D8] sharedController];
  if ([v6 managedNewTabPageState] == 2)
  {
    v7 = [v6 managedNewTabPageExtensionComposedIdentifier];
LABEL_3:
    v8 = [WeakRetained webExtensionForComposedIdentifier:v7];
    goto LABEL_9;
  }

  v9 = [WeakRetained profileServerID];
  v10 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v9];

  if (v10)
  {
    v7 = [v4 dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    v11 = [WeakRetained profileServerID];
    v12 = [v7 safari_stringForKey:v11];
    v8 = [WeakRetained webExtensionForComposedIdentifier:v12];
  }

  else
  {
    v13 = [WeakRetained profile];
    v7 = [v13 settingForKey:*MEMORY[0x1E69C8C58]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 length])
    {
      goto LABEL_3;
    }

    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (id)sortedComposedIdentifiersForExtensionsWithOverridePages
{
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v3 = [WeakRetained extensions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__WBSWebExtensionNewTabOverridePreferencesManager_sortedComposedIdentifiersForExtensionsWithOverridePages__block_invoke;
  v11[3] = &unk_1E8289348;
  v4 = WeakRetained;
  v12 = v4;
  v5 = [v3 sortedArrayUsingComparator:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__WBSWebExtensionNewTabOverridePreferencesManager_sortedComposedIdentifiersForExtensionsWithOverridePages__block_invoke_2;
  v9[3] = &unk_1E8289370;
  v10 = v4;
  v6 = v4;
  v7 = [v5 safari_mapAndFilterObjectsUsingBlock:v9];

  return v7;
}

uint64_t __106__WBSWebExtensionNewTabOverridePreferencesManager_sortedComposedIdentifiersForExtensionsWithOverridePages__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 webExtensionForExtension:a2];
  v8 = [v7 displayName];
  v9 = [*(a1 + 32) webExtensionForExtension:v6];

  v10 = [v9 displayName];
  v11 = [v8 localizedCompare:v10];

  return v11;
}

id __106__WBSWebExtensionNewTabOverridePreferencesManager_sortedComposedIdentifiersForExtensionsWithOverridePages__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) webExtensionForExtension:v3];
  v5 = [v4 newTabOverridePageURL];
  if (v5 && [*(a1 + 32) extensionIsEnabled:v3])
  {
    v6 = [v4 composedIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)extensionComposedIdentifierForNewTabPreferenceInDefaults:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69C88D8] sharedController];
  if ([v5 managedNewTabPageState] == 2)
  {
    v6 = [v5 managedNewTabPageExtensionComposedIdentifier];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
    v8 = [WeakRetained profileServerID];
    v9 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v8];

    if (v9)
    {
      v10 = [v4 dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
      v11 = [WeakRetained profileServerID];
      v6 = [v10 objectForKeyedSubscript:v11];
    }

    else
    {
      v12 = [WeakRetained profile];
      v10 = [v12 settingForKey:*MEMORY[0x1E69C8C58]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      v6 = v13;
    }
  }

  return v6;
}

- (void)setNewTabBehaviorWithExtensionComposedIdentifier:(id)a3 inDefaults:(id)a4 fromUserGesture:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v11 = [WeakRetained profileServerID];
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v11])
  {
    v12 = [v9 dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
    }

    v20 = v15;

    [v20 setObject:v8 forKeyedSubscript:v11];
    [v9 setObject:v20 forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    if ([v11 isEqualToString:*MEMORY[0x1E69C8B58]])
    {
      v21 = [MEMORY[0x1E695DF00] now];
      [v9 safari_setDate:v21 forKey:@"NewTabPageLastModified"];

      [v9 setBool:v5 forKey:@"NewTabPageSetByUserGesture"];
      v22 = +[WBSCloudExtensionStateManager sharedManager];
      [v22 localExtensionStateDidChange];
    }
  }

  else
  {
    v16 = [WeakRetained tabGroupManager];
    v17 = [WeakRetained profile];
    v18 = [v17 identifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __127__WBSWebExtensionNewTabOverridePreferencesManager_setNewTabBehaviorWithExtensionComposedIdentifier_inDefaults_fromUserGesture___block_invoke;
    v23[3] = &unk_1E8286A70;
    v24 = v8;
    v19 = [v16 updateProfileWithIdentifier:v18 persist:1 usingBlock:v23 completionHandler:0];
  }
}

void __127__WBSWebExtensionNewTabOverridePreferencesManager_setNewTabBehaviorWithExtensionComposedIdentifier_inDefaults_fromUserGesture___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v6 = a2;
  v4 = [v3 numberWithInteger:6];
  [v6 setSetting:v4 forKey:*MEMORY[0x1E69C8C60]];

  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = &stru_1F4646D10;
  }

  [v6 setSetting:v5 forKey:*MEMORY[0x1E69C8C58]];
}

- (void)clearNewTabBehaviorInDefaults:(id)a3 fromUserGesture:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v7 = [WeakRetained profileServerID];
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v7])
  {
    v8 = [v17 dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = v11;

    [v12 removeObjectForKey:v7];
    [v17 setValue:v12 forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    if (![v7 isEqualToString:*MEMORY[0x1E69C8B58]])
    {
      goto LABEL_9;
    }

    v16 = [MEMORY[0x1E695DF00] now];
    [v17 safari_setDate:v16 forKey:@"NewTabPageLastModified"];

    [v17 setBool:v4 forKey:@"NewTabPageSetByUserGesture"];
    v13 = +[WBSCloudExtensionStateManager sharedManager];
    [v13 localExtensionStateDidChange];
  }

  else
  {
    v12 = [WeakRetained tabGroupManager];
    v13 = [WeakRetained profile];
    v14 = [v13 identifier];
    v15 = [v12 updateProfileWithIdentifier:v14 persist:1 usingBlock:&__block_literal_global_67 completionHandler:0];
  }

LABEL_9:
}

- (id)cloudExtensionStateForDefaults:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v6 = [WeakRetained profileServerID];
  v7 = [v6 isEqualToString:*MEMORY[0x1E69C8B58]];

  if (v7)
  {
    if ([(WBSWebExtensionNewTabOverridePreferencesManager *)self isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:v4])
    {
      v8 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self extensionComposedIdentifierForNewTabPreferenceInDefaults:v4];
    }

    else
    {
      v8 = &stru_1F4646D10;
    }

    v10 = [v4 safari_dateForKey:@"NewTabPageLastModified"];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DF00] now];
      [v4 safari_setDate:v10 forKey:@"NewTabPageLastModified"];
    }

    v11 = *MEMORY[0x1E69C95C8];
    v14[0] = *MEMORY[0x1E69C95C0];
    v14[1] = v11;
    v15[0] = v8;
    v15[1] = v10;
    v14[2] = *MEMORY[0x1E69C95D0];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "BOOLForKey:", @"NewTabPageSetByUserGesture"}];
    v15[2] = v12;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

+ (void)migrateStorageToPerProfileFormatIfNecessaryWithDefaults:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 stringForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
  v5 = v4;
  if (v4)
  {
    v7 = *MEMORY[0x1E69C8B58];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v3 setValue:v6 forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
  }
}

@end