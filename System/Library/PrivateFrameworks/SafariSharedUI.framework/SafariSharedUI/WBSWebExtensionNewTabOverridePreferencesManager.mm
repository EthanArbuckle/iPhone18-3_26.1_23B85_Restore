@interface WBSWebExtensionNewTabOverridePreferencesManager
+ (void)migrateStorageToPerProfileFormatIfNecessaryWithDefaults:(id)defaults;
- (BOOL)isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:(id)defaults;
- (BOOL)shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:(id)defaults;
- (WBSWebExtensionNewTabOverridePreferencesManager)initWithExtensionsController:(id)controller;
- (id)_webExtensionOverridingNewTabPageWithDefaults:(id)defaults;
- (id)cloudExtensionStateForDefaults:(id)defaults;
- (id)extensionComposedIdentifierForNewTabPreferenceInDefaults:(id)defaults;
- (id)sortedComposedIdentifiersForExtensionsWithOverridePages;
- (void)clearNewTabBehaviorInDefaults:(id)defaults fromUserGesture:(BOOL)gesture;
- (void)setNewTabBehaviorWithExtensionComposedIdentifier:(id)identifier inDefaults:(id)defaults fromUserGesture:(BOOL)gesture;
@end

@implementation WBSWebExtensionNewTabOverridePreferencesManager

- (WBSWebExtensionNewTabOverridePreferencesManager)initWithExtensionsController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = WBSWebExtensionNewTabOverridePreferencesManager;
  v5 = [(WBSWebExtensionNewTabOverridePreferencesManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webExtensionsController, controllerCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:(id)defaults
{
  v4 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self _webExtensionOverridingNewTabPageWithDefaults:defaults];
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  extension = [v4 extension];
  v7 = [WeakRetained extensionIsEnabled:extension];

  return v7;
}

- (BOOL)shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  v6 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self _webExtensionOverridingNewTabPageWithDefaults:defaultsCopy];

  if ([v6 allowedInPrivateBrowsing])
  {
    extension = [v6 extension];
    v8 = [WeakRetained extensionIsEnabled:extension];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_webExtensionOverridingNewTabPageWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  mEMORY[0x1E69C88D8] = [MEMORY[0x1E69C88D8] sharedController];
  if ([mEMORY[0x1E69C88D8] managedNewTabPageState] == 2)
  {
    managedNewTabPageExtensionComposedIdentifier = [mEMORY[0x1E69C88D8] managedNewTabPageExtensionComposedIdentifier];
LABEL_3:
    v8 = [WeakRetained webExtensionForComposedIdentifier:managedNewTabPageExtensionComposedIdentifier];
    goto LABEL_9;
  }

  profileServerID = [WeakRetained profileServerID];
  v10 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID];

  if (v10)
  {
    managedNewTabPageExtensionComposedIdentifier = [defaultsCopy dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    profileServerID2 = [WeakRetained profileServerID];
    v12 = [managedNewTabPageExtensionComposedIdentifier safari_stringForKey:profileServerID2];
    v8 = [WeakRetained webExtensionForComposedIdentifier:v12];
  }

  else
  {
    profile = [WeakRetained profile];
    managedNewTabPageExtensionComposedIdentifier = [profile settingForKey:*MEMORY[0x1E69C8C58]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [managedNewTabPageExtensionComposedIdentifier length])
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
  extensions = [WeakRetained extensions];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__WBSWebExtensionNewTabOverridePreferencesManager_sortedComposedIdentifiersForExtensionsWithOverridePages__block_invoke;
  v11[3] = &unk_1E8289348;
  v4 = WeakRetained;
  v12 = v4;
  v5 = [extensions sortedArrayUsingComparator:v11];

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

- (id)extensionComposedIdentifierForNewTabPreferenceInDefaults:(id)defaults
{
  defaultsCopy = defaults;
  mEMORY[0x1E69C88D8] = [MEMORY[0x1E69C88D8] sharedController];
  if ([mEMORY[0x1E69C88D8] managedNewTabPageState] == 2)
  {
    managedNewTabPageExtensionComposedIdentifier = [mEMORY[0x1E69C88D8] managedNewTabPageExtensionComposedIdentifier];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
    profileServerID = [WeakRetained profileServerID];
    v9 = [WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID];

    if (v9)
    {
      v10 = [defaultsCopy dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
      profileServerID2 = [WeakRetained profileServerID];
      managedNewTabPageExtensionComposedIdentifier = [v10 objectForKeyedSubscript:profileServerID2];
    }

    else
    {
      profile = [WeakRetained profile];
      v10 = [profile settingForKey:*MEMORY[0x1E69C8C58]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }

      managedNewTabPageExtensionComposedIdentifier = v13;
    }
  }

  return managedNewTabPageExtensionComposedIdentifier;
}

- (void)setNewTabBehaviorWithExtensionComposedIdentifier:(id)identifier inDefaults:(id)defaults fromUserGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  identifierCopy = identifier;
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  profileServerID = [WeakRetained profileServerID];
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID])
  {
    v12 = [defaultsCopy dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      dictionary = v13;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v20 = dictionary;

    [v20 setObject:identifierCopy forKeyedSubscript:profileServerID];
    [defaultsCopy setObject:v20 forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    if ([profileServerID isEqualToString:*MEMORY[0x1E69C8B58]])
    {
      v21 = [MEMORY[0x1E695DF00] now];
      [defaultsCopy safari_setDate:v21 forKey:@"NewTabPageLastModified"];

      [defaultsCopy setBool:gestureCopy forKey:@"NewTabPageSetByUserGesture"];
      v22 = +[WBSCloudExtensionStateManager sharedManager];
      [v22 localExtensionStateDidChange];
    }
  }

  else
  {
    tabGroupManager = [WeakRetained tabGroupManager];
    profile = [WeakRetained profile];
    identifier = [profile identifier];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __127__WBSWebExtensionNewTabOverridePreferencesManager_setNewTabBehaviorWithExtensionComposedIdentifier_inDefaults_fromUserGesture___block_invoke;
    v23[3] = &unk_1E8286A70;
    v24 = identifierCopy;
    v19 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:v23 completionHandler:0];
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

- (void)clearNewTabBehaviorInDefaults:(id)defaults fromUserGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  profileServerID = [WeakRetained profileServerID];
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:profileServerID])
  {
    v8 = [defaultsCopy dictionaryForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      dictionary = v9;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    tabGroupManager = dictionary;

    [tabGroupManager removeObjectForKey:profileServerID];
    [defaultsCopy setValue:tabGroupManager forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
    if (![profileServerID isEqualToString:*MEMORY[0x1E69C8B58]])
    {
      goto LABEL_9;
    }

    v16 = [MEMORY[0x1E695DF00] now];
    [defaultsCopy safari_setDate:v16 forKey:@"NewTabPageLastModified"];

    [defaultsCopy setBool:gestureCopy forKey:@"NewTabPageSetByUserGesture"];
    profile = +[WBSCloudExtensionStateManager sharedManager];
    [profile localExtensionStateDidChange];
  }

  else
  {
    tabGroupManager = [WeakRetained tabGroupManager];
    profile = [WeakRetained profile];
    identifier = [profile identifier];
    v15 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:&__block_literal_global_67 completionHandler:0];
  }

LABEL_9:
}

- (id)cloudExtensionStateForDefaults:(id)defaults
{
  v15[3] = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  WeakRetained = objc_loadWeakRetained(&self->_webExtensionsController);
  profileServerID = [WeakRetained profileServerID];
  v7 = [profileServerID isEqualToString:*MEMORY[0x1E69C8B58]];

  if (v7)
  {
    if ([(WBSWebExtensionNewTabOverridePreferencesManager *)self isNewTabPageOverriddenByAnEnabledExtensionInUserDefaults:defaultsCopy])
    {
      v8 = [(WBSWebExtensionNewTabOverridePreferencesManager *)self extensionComposedIdentifierForNewTabPreferenceInDefaults:defaultsCopy];
    }

    else
    {
      v8 = &stru_1F4646D10;
    }

    v10 = [defaultsCopy safari_dateForKey:@"NewTabPageLastModified"];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DF00] now];
      [defaultsCopy safari_setDate:v10 forKey:@"NewTabPageLastModified"];
    }

    v11 = *MEMORY[0x1E69C95C8];
    v14[0] = *MEMORY[0x1E69C95C0];
    v14[1] = v11;
    v15[0] = v8;
    v15[1] = v10;
    v14[2] = *MEMORY[0x1E69C95D0];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(defaultsCopy, "BOOLForKey:", @"NewTabPageSetByUserGesture"}];
    v15[2] = v12;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

+ (void)migrateStorageToPerProfileFormatIfNecessaryWithDefaults:(id)defaults
{
  v8[1] = *MEMORY[0x1E69E9840];
  defaultsCopy = defaults;
  v4 = [defaultsCopy stringForKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
  v5 = v4;
  if (v4)
  {
    v7 = *MEMORY[0x1E69C8B58];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [defaultsCopy setValue:v6 forKey:@"IdentifierOfExtensionWithOverridePageForNewTabs"];
  }
}

@end