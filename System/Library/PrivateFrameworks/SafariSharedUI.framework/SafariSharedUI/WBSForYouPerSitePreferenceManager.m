@interface WBSForYouPerSitePreferenceManager
- (WBSForYouPerSitePreferenceManager)initWithPerSitePreferencesStore:(id)a3;
- (id)preferences;
- (void)allowedForYouRecommendationsFromRecommendations:(id)a3 completionHandler:(id)a4;
- (void)setPreferenceValue:(int64_t)a3 forURL:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSForYouPerSitePreferenceManager

- (WBSForYouPerSitePreferenceManager)initWithPerSitePreferencesStore:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WBSForYouPerSitePreferenceManager;
  v6 = [(WBSForYouPerSitePreferenceManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_preferencesStore, a3);
    v8 = objc_alloc(MEMORY[0x1E69C8FB8]);
    v9 = [v8 initWithIdentifier:*MEMORY[0x1E69C9308]];
    preference = v7->_preference;
    v7->_preference = v9;

    [(WBSPerSitePreferenceManager *)v7 setStorageDelegate:v7];
    [(WBSPerSitePreferenceManager *)v7 setDefaultsDelegate:v7];
    v11 = v7;
  }

  return v7;
}

- (void)allowedForYouRecommendationsFromRecommendations:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  preferencesStore = self->_preferencesStore;
  v9 = *MEMORY[0x1E69C94E0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__WBSForYouPerSitePreferenceManager_allowedForYouRecommendationsFromRecommendations_completionHandler___block_invoke;
  v12[3] = &unk_1E8285158;
  v13 = v7;
  v14 = v6;
  v10 = v7;
  v11 = v6;
  [(WBSPerSitePreferencesSQLiteStore *)preferencesStore getAllDomainsConfiguredForPreference:v9 completionHandler:v12];
}

void __103__WBSForYouPerSitePreferenceManager_allowedForYouRecommendationsFromRecommendations_completionHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 pageURL];
          v14 = [v13 safari_userVisibleHostWithoutWWWSubdomain];

          if ([v14 length] && (objc_msgSend(v5, "containsObject:", v14) & 1) == 0)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)setPreferenceValue:(int64_t)a3 forURL:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a5;
  v10 = a4;
  v13 = [v8 numberWithInteger:a3];
  preference = self->_preference;
  v12 = [v10 safari_userVisibleHostWithoutWWWSubdomain];

  [(WBSPerSitePreferenceManager *)self setValue:v13 ofPreference:preference forDomain:v12 completionHandler:v9];
}

- (id)preferences
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_preference;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

@end