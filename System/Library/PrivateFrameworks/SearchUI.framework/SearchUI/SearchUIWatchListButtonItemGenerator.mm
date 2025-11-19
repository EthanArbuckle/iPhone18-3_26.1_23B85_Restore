@interface SearchUIWatchListButtonItemGenerator
- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIWatchListButtonItemGenerator

- (void)generateSearchUIButtonItemsWithSFButtonItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 watchListItem];
  v8 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [v7 type], objc_msgSend(v7, "isMediaContainer"));
  v9 = [v7 watchListIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95__SearchUIWatchListButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke;
  v12[3] = &unk_1E85B3078;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [SearchUIWatchListUtilities fetchWatchListStateForWatchListIdentifier:v9 type:v8 completion:v12];
}

void __95__SearchUIWatchListButtonItemGenerator_generateSearchUIButtonItemsWithSFButtonItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
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

  if (v5)
  {
    v8 = [(SearchUIButtonItem *)[SearchUIWatchListButtonItem alloc] initWithSFButtonItem:*(a1 + 32)];
    -[SearchUIButtonItem setStatus:](v8, "setStatus:", [v5 isWatchListed]);
    v9 = *(a1 + 40);
    v11[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    (*(v9 + 16))(v9, v10, 1);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end