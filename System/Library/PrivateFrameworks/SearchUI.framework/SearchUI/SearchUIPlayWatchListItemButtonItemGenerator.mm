@interface SearchUIPlayWatchListItemButtonItemGenerator
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIPlayWatchListItemButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 watchListItem];
  v8 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [v7 type], objc_msgSend(v7, "isMediaContainer"));
  v9 = [v7 watchListIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__SearchUIPlayWatchListItemButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
  v12[3] = &unk_1E85B2FD8;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [SearchUIWatchListUtilities fetchButtonsForWatchListIdentifier:v9 type:v8 isHorizontallySrollingStyle:0 completion:v12];
}

void __103__SearchUIPlayWatchListItemButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SearchUIButtonItemLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __103__SearchUIPlayWatchListItemButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_cold_1(v6, v7);
    }
  }

  v8 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([v14 buttonType] == 1)
        {
          v15 = [v14 punchoutURL];

          if (v15)
          {
            v16 = objc_opt_new();
            v17 = MEMORY[0x1E69CA320];
            v18 = [v14 punchoutURL];
            v19 = [v17 punchoutWithURL:v18];
            [v16 setPunchout:v19];

            v20 = [[SearchUIButtonItem alloc] initWithSFButtonItem:*(a1 + 32)];
            v21 = [*(a1 + 32) title];
            if (v21)
            {
              [(SearchUIButtonItem *)v20 setTitle:v21];
            }

            else
            {
              v22 = [v14 title];
              if (v22)
              {
                [(SearchUIButtonItem *)v20 setTitle:v22];
              }

              else
              {
                v23 = [SearchUIUtilities localizedStringForKey:@"WATCH_LIVE"];
                [(SearchUIButtonItem *)v20 setTitle:v23];
              }
            }

            v24 = [*(a1 + 32) image];
            if (v24)
            {
              [(SearchUIButtonItem *)v20 setImage:v24];
            }

            else
            {
              v25 = [[SearchUISymbolImage alloc] initWithSymbolName:@"play"];
              [(SearchUIButtonItem *)v20 setImage:v25];
            }

            [(SearchUIButtonItem *)v20 setCommand:v16];
            [v8 addObject:v20];

            goto LABEL_25;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  (*(*(a1 + 40) + 16))();
}

void __103__SearchUIPlayWatchListItemButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "error fetching watch list state for watch list identifier: %@", &v2, 0xCu);
}

@end