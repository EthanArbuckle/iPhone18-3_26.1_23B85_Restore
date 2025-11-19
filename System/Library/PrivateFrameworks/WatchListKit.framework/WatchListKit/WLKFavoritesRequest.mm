@interface WLKFavoritesRequest
- (id)convertToWLKFavorite:(id)a3;
- (void)makeRequestWithCompletion:(id)a3;
@end

@implementation WLKFavoritesRequest

- (void)makeRequestWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[WLKSportsFavoriteRequestOperation alloc] initWithAction:0 ids:0];
    objc_initWeak(&location, v5);
    objc_initWeak(&from, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__WLKFavoritesRequest_makeRequestWithCompletion___block_invoke;
    v7[3] = &unk_279E5E9E8;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    v8 = v4;
    [(WLKSportsFavoriteRequestOperation *)v5 setCompletionBlock:v7];
    v6 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [v6 addOperation:v5];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __49__WLKFavoritesRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained response];
  v4 = [v3 favorites];

  v5 = [v2 convertToWLKFavorite:v4];
  if (WLKIsTVApp())
  {
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CBEBD0]);
    v8 = WLKTVAppBundleID();
    v6 = [v7 initWithSuiteName:v8];
  }

  v9 = [MEMORY[0x277CBEAA8] now];
  [v6 setObject:v9 forKey:@"WLKSettingsLastSyncDate"];

  v10 = *(a1 + 32);
  v11 = [WeakRetained error];
  (*(v10 + 16))(v10, v5, v11);
}

- (id)convertToWLKFavorite:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [WLKFavorite alloc];
        v12 = [v10 ID];
        v13 = [v10 name];
        v14 = [v10 leagueId];
        v15 = [(WLKFavorite *)v11 initWithID:v12 name:v13 leagueID:v14];
        [v4 addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end