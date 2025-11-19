@interface WBSProfilePreferenceManager
- (WBSProfilePreferenceManager)initWithPerSitePreferencesStore:(id)a3 profileProvider:(id)a4;
- (id)identifierForProfilePreferenceForDomain:(id)a3;
- (id)localizedStringForValue:(id)a3 inPreference:(id)a4;
- (id)preferences;
- (id)valuesForPreference:(id)a3;
- (void)didRemoveProfileWithIdentifier:(id)a3 hasMultipleProfiles:(BOOL)a4;
- (void)getProfilePreferenceValueForDomain:(id)a3 withTimeout:(double)a4 fallbackValue:(id)a5 usingBlock:(id)a6;
@end

@implementation WBSProfilePreferenceManager

- (WBSProfilePreferenceManager)initWithPerSitePreferencesStore:(id)a3 profileProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WBSProfilePreferenceManager;
  v9 = [(WBSProfilePreferenceManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_perSitePreferencesStore, a3);
    objc_storeStrong(&v10->_profileProvider, a4);
    v11 = [[WBSPerSitePreference alloc] initWithIdentifier:@"ProfilePreference"];
    profilePreference = v10->_profilePreference;
    v10->_profilePreference = v11;

    [(WBSPerSitePreferenceManager *)v10 setStorageDelegate:v10];
    [(WBSPerSitePreferenceManager *)v10 setDefaultsDelegate:v10];
    v13 = v10;
  }

  return v10;
}

- (id)identifierForProfilePreferenceForDomain:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(WBSPerSitePreferenceManager *)self valueOfPreference:self->_profilePreference forDomain:v4];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:@"MostRecentProfile"] & 1) == 0)
    {
      v8 = [(WBSProfileProviding *)self->_profileProvider profileWithServerID:v6];
      v7 = [v8 identifier];
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

  return v7;
}

- (void)getProfilePreferenceValueForDomain:(id)a3 withTimeout:(double)a4 fallbackValue:(id)a5 usingBlock:(id)a6
{
  v10 = a6;
  profilePreference = self->_profilePreference;
  v12 = a3;
  v13 = [WBSPerSitePreferenceTimeout timeoutWithInterval:a5 fallbackValue:a4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__WBSProfilePreferenceManager_getProfilePreferenceValueForDomain_withTimeout_fallbackValue_usingBlock___block_invoke;
  v15[3] = &unk_1E7FB6CA8;
  v16 = v10;
  v14 = v10;
  [(WBSPerSitePreferenceManager *)self getValueOfPreference:profilePreference forDomain:v12 withTimeout:v13 usingBlock:v15];
}

- (id)localizedStringForValue:(id)a3 inPreference:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8 && ![v8 isEqualToString:@"MostRecentProfile"])
  {
    v11 = [(WBSProfileProviding *)self->_profileProvider profileWithServerID:v9];
    v10 = [v11 title];
  }

  else
  {
    v10 = _WBSLocalizedString();
  }

  return v10;
}

- (void)didRemoveProfileWithIdentifier:(id)a3 hasMultipleProfiles:(BOOL)a4
{
  v6 = a3;
  v7 = self->_profilePreference;
  v8 = [MEMORY[0x1E695DFA8] set];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__WBSProfilePreferenceManager_didRemoveProfileWithIdentifier_hasMultipleProfiles___block_invoke;
  v12[3] = &unk_1E7FC99B8;
  v12[4] = self;
  v13 = v7;
  v16 = a4;
  v14 = v6;
  v15 = v8;
  v9 = v8;
  v10 = v6;
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

- (id)valuesForPreference:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [(WBSProfilePreferenceManager *)self defaultPreferenceValueForPreferenceIfNotCustomized:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [(WBSProfileProviding *)self->_profileProvider profiles];
  v7 = [v6 safari_mapObjectsUsingBlock:&__block_literal_global_91];
  v8 = [v5 arrayByAddingObjectsFromArray:v7];

  return v8;
}

@end