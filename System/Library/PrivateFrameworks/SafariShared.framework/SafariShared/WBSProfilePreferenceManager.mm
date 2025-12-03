@interface WBSProfilePreferenceManager
- (WBSProfilePreferenceManager)initWithPerSitePreferencesStore:(id)store profileProvider:(id)provider;
- (id)identifierForProfilePreferenceForDomain:(id)domain;
- (id)localizedStringForValue:(id)value inPreference:(id)preference;
- (id)preferences;
- (id)valuesForPreference:(id)preference;
- (void)didRemoveProfileWithIdentifier:(id)identifier hasMultipleProfiles:(BOOL)profiles;
- (void)getProfilePreferenceValueForDomain:(id)domain withTimeout:(double)timeout fallbackValue:(id)value usingBlock:(id)block;
@end

@implementation WBSProfilePreferenceManager

- (WBSProfilePreferenceManager)initWithPerSitePreferencesStore:(id)store profileProvider:(id)provider
{
  storeCopy = store;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = WBSProfilePreferenceManager;
  v9 = [(WBSProfilePreferenceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, store);
    objc_storeStrong(&v10->_profileProvider, provider);
    v11 = [[WBSPerSitePreference alloc] initWithIdentifier:@"ProfilePreference"];
    profilePreference = v10->_profilePreference;
    v10->_profilePreference = v11;

    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    v13 = v10;
  }

  return v10;
}

- (id)identifierForProfilePreferenceForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    v5 = [(WBSPerSitePreferenceManager *)self valueOfPreference:self->_profilePreference forDomain:domainCopy];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:@"MostRecentProfile"] & 1) == 0)
    {
      v8 = [(WBSProfileProviding *)self->_profileProvider profileWithServerID:v6];
      identifier = [v8 identifier];
    }

    else
    {
      identifier = 0;
    }
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (void)getProfilePreferenceValueForDomain:(id)domain withTimeout:(double)timeout fallbackValue:(id)value usingBlock:(id)block
{
  blockCopy = block;
  profilePreference = self->_profilePreference;
  domainCopy = domain;
  v13 = [WBSPerSitePreferenceTimeout timeoutWithInterval:value fallbackValue:timeout];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__WBSProfilePreferenceManager_getProfilePreferenceValueForDomain_withTimeout_fallbackValue_usingBlock___block_invoke;
  v15[3] = &unk_1E7FB6CA8;
  v16 = blockCopy;
  v14 = blockCopy;
  [(WBSPerSitePreferenceManager *)self getValueOfPreference:profilePreference forDomain:domainCopy withTimeout:v13 usingBlock:v15];
}

- (id)localizedStringForValue:(id)value inPreference:(id)preference
{
  valueCopy = value;
  preferenceCopy = preference;
  v8 = valueCopy;
  v9 = v8;
  if (v8 && ![v8 isEqualToString:@"MostRecentProfile"])
  {
    v11 = [(WBSProfileProviding *)self->_profileProvider profileWithServerID:v9];
    title = [v11 title];
  }

  else
  {
    title = _WBSLocalizedString();
  }

  return title;
}

- (void)didRemoveProfileWithIdentifier:(id)identifier hasMultipleProfiles:(BOOL)profiles
{
  identifierCopy = identifier;
  v7 = self->_profilePreference;
  v8 = [MEMORY[0x1E695DFA8] set];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__WBSProfilePreferenceManager_didRemoveProfileWithIdentifier_hasMultipleProfiles___block_invoke;
  v12[3] = &unk_1E7FC99B8;
  v12[4] = self;
  v13 = v7;
  profilesCopy = profiles;
  v14 = identifierCopy;
  v15 = v8;
  v9 = v8;
  v10 = identifierCopy;
  v11 = v7;
  [(WBSPerSitePreferenceManager *)self getAllDomainsConfiguredForPreference:v11 usingBlock:v12];
}

void __82__WBSProfilePreferenceManager_didRemoveProfileWithIdentifier_hasMultipleProfiles___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [*(a1 + 32) valueOfPreference:*(a1 + 40) forDomain:v8];
        if (([v9 isEqualToString:*(a1 + 48)] & 1) != 0 || (*(a1 + 64) & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 40), "defaultProfileIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v11))
        {
          [*(a1 + 56) addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) removePreferenceValuesForDomains:*(a1 + 56) fromPreference:*(a1 + 40) completionHandler:0];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_profilePreference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)valuesForPreference:(id)preference
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(WBSProfilePreferenceManager *)self defaultPreferenceValueForPreferenceIfNotCustomized:preference];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  profiles = [(WBSProfileProviding *)self->_profileProvider profiles];
  v7 = [profiles safari_mapObjectsUsingBlock:&__block_literal_global_91];
  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

@end