@interface SearchUISportsFollowButtonItemGenerator
- (BOOL)isUserSignedIntoStore;
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUISportsFollowButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SearchUISportsFollowButtonItem alloc] initWithSFButtonItem:v6];
  v9 = [v6 sportsItem];
  v10 = [v9 type];
  if ((v10 - 1) > 1)
  {
    if (v10 != 3)
    {
      v7[2](v7, 0, 1);
      goto LABEL_9;
    }

    if (generateSearchUIButtonItemsWithSFButtonItem_completion__onceToken != -1)
    {
      [SearchUISportsFollowButtonItemGenerator generateSearchUIButtonItemsWithSFButtonItem:completion:];
    }

    v12 = generateSearchUIButtonItemsWithSFButtonItem_completion__liveActivitiesEnabledCache;
    v13 = [MEMORY[0x1E695DFB0] null];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_4;
    v14[3] = &unk_1E85B3050;
    v15 = v8;
    v17 = v7;
    v16 = v6;
    [v12 getObjectForKey:v13 completionHandler:v14];

    v11 = v15;
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
    v18[3] = &unk_1E85B3028;
    v19 = v8;
    v22 = v7;
    v20 = self;
    v21 = v6;
    [_TtC8SearchUI19SearchUITVUtilities fetchSportsFavoritesEnabledStatusWithCompletionHandler:v18];

    v11 = v19;
  }

LABEL_9:
}

void __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2;
    v14[3] = &unk_1E85B3000;
    v16 = *(a1 + 56);
    v15 = *(a1 + 32);
    [v6 updateStateIfNeededWithCompletionHandler:v14];
  }

  else if ([*(a1 + 40) isUserSignedIntoStore] && +[SearchUIUtilities isAppInstalledWithBundleId:](SearchUIUtilities, "isAppInstalledWithBundleId:", @"com.apple.sports"))
  {
    v7 = objc_opt_new();
    [v7 setApplicationBundleIdentifier:@"com.apple.sports"];
    v8 = [[SearchUIButtonItem alloc] initWithSFButtonItem:*(a1 + 48)];
    v9 = [*(a1 + 32) title];
    [(SearchUIButtonItem *)v8 setTitle:v9];

    v10 = [*(a1 + 32) image];
    if (v10)
    {
      [(SearchUIButtonItem *)v8 setImage:v10];
    }

    else
    {
      v11 = [*(a1 + 32) fallbackImage];
      [(SearchUIButtonItem *)v8 setImage:v11];
    }

    -[SearchUIButtonItem setUseDefaultSymbolFillStyle:](v8, "setUseDefaultSymbolFillStyle:", [*(a1 + 32) useDefaultSymbolFillStyle]);
    [(SearchUIButtonItem *)v8 setCommand:v7];
    v12 = *(a1 + 56);
    v17[0] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    (*(v12 + 16))(v12, v13, 1);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_2(uint64_t a1, char a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (a2)
  {
    v6[0] = *(a1 + 32);
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    (*(v2 + 16))(v2, v3, 1);
  }

  else
  {
    v4 = *(v2 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0, 1);
  }
}

uint64_t __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_3()
{
  generateSearchUIButtonItemsWithSFButtonItem_completion__liveActivitiesEnabledCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

void __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_4(id *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v3 = a1[4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_5;
    v10[3] = &unk_1E85B3000;
    v12 = a1[6];
    v11 = a1[4];
    [v3 updateStateIfNeededWithCompletionHandler:v10];
  }

  else
  {
    v4 = [a1[5] fallbackTitle];

    if (v4)
    {
      v5 = [[SearchUIButtonItem alloc] initWithSFButtonItem:a1[5]];
      v6 = [a1[5] fallbackTitle];
      [(SearchUIButtonItem *)v5 setTitle:v6];

      v7 = a1[6];
      v13[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      v7[2](v7, v8, 1);
    }

    else
    {
      v9 = *(a1[6] + 2);

      v9();
    }
  }
}

void __98__SearchUISportsFollowButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_5(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  (*(v1 + 16))(v1, v2, 1);
}

- (BOOL)isUserSignedIntoStore
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6959A48] defaultStore];
  v23[0] = *MEMORY[0x1E6959930];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v4 = [v2 accountsWithAccountTypeIdentifiers:v3 error:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {

    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      if ([v11 isActive])
      {
LABEL_7:
        v12 = v11;

        v8 = v12;
        continue;
      }

      if (!v8)
      {
        if ([v11 ams_isLocalAccount])
        {
          goto LABEL_7;
        }

        v8 = 0;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if (!v8)
  {
LABEL_16:
    v13 = [MEMORY[0x1E6959A48] defaultStore];
    v8 = [v13 ams_localiTunesAccount];
  }

  v14 = [v8 ams_DSID];
  v15 = [v14 stringValue];
  v16 = v15 != 0;

  return v16;
}

@end