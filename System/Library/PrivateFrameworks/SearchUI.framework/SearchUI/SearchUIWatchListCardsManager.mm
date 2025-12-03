@interface SearchUIWatchListCardsManager
- (BOOL)isTappable;
- (SearchUIWatchListCardsManager)initWithWatchListIdentifier:(id)identifier;
- (void)addWatchListRowModelObserver:(id)observer;
@end

@implementation SearchUIWatchListCardsManager

- (SearchUIWatchListCardsManager)initWithWatchListIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SearchUIWatchListCardsManager;
  v5 = [(SearchUIWatchListCardsManager *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIWatchListCardsManager *)v5 setWatchListIdentifier:identifierCopy];
    v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
    [(SearchUIWatchListCardsManager *)v6 setRowModels:v7];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SearchUIWatchListCardsManager_initWithWatchListIdentifier___block_invoke;
    v9[3] = &unk_1E85B4AB8;
    v10 = v6;
    [SearchUIWatchListUtilities generateWatchListReponseForWatchListIdentifier:identifierCopy type:5 completion:v9];
  }

  return v6;
}

void __61__SearchUIWatchListCardsManager_initWithWatchListIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SearchUIWatchListCardsManager_initWithWatchListIdentifier___block_invoke_2;
  v5[3] = &unk_1E85B2540;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v5];
}

void __61__SearchUIWatchListCardsManager_initWithWatchListIdentifier___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setResponse:*(a1 + 40)];
  v2 = [[SearchUIWatchListState alloc] initWithResponse:*(a1 + 40)];
  [*(a1 + 32) setWatchListState:v2];

  v3 = [*(a1 + 32) response];
  [*(a1 + 32) setIsInUpNext:{objc_msgSend(v3, "isWatchListed")}];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = a1;
  obj = [*(a1 + 32) rowModels];
  v4 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v38 = *v41;
    v35 = *MEMORY[0x1E69E1708];
    v36 = *MEMORY[0x1E69E1710];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = [*(v39 + 32) response];
        v9 = [v8 playables];
        v10 = [v9 firstObject];

        if (!v10)
        {
          [v7 setHasError:1];
          goto LABEL_28;
        }

        v11 = [SearchUIWatchListIconImage alloc];
        v12 = [v10 channelDetails];
        v13 = [v12 images];
        v14 = [(SearchUIWatchListIconImage *)v11 initWithArtwork:v13];

        [SearchUIAppIconImage sizeForVariant:2];
        [(SearchUIWatchListIconImage *)v14 setSize:?];
        v15 = [v10 channelDetails];
        LODWORD(v13) = [v15 isAppInstalled];

        if (!v13)
        {
          v24 = [v10 channelDetails];
          v25 = [v24 appStoreURL];

          if (!v25)
          {
            goto LABEL_20;
          }

          v22 = [v10 channelDetails];
          v23 = [v22 appStoreURL];
          goto LABEL_16;
        }

        v16 = [v10 punchoutUrls];
        v17 = [v16 objectForKeyedSubscript:v36];
        v18 = [v17 length];
        v19 = [v10 punchoutUrls];
        v20 = v19;
        if (v18)
        {
          v21 = v36;
        }

        else
        {
          v21 = v35;
        }

        v22 = [v19 objectForKeyedSubscript:v21];

        if ([v22 length])
        {
          v23 = [MEMORY[0x1E695DFF8] URLWithString:v22];
LABEL_16:
          v25 = v23;
          goto LABEL_18;
        }

        v25 = 0;
LABEL_18:

        if (!v25)
        {
LABEL_20:
          v26 = 0;
          goto LABEL_21;
        }

        v26 = [MEMORY[0x1E69CA320] punchoutWithURL:v25];
LABEL_21:
        v27 = [v7 cardSection];
        v28 = [v27 watchListItem];
        v29 = [v28 watchLiveTextFormat];

        v30 = [v10 channelDetails];
        v31 = [v30 name];

        if ([v29 length])
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = v32;
        if ([v29 length])
        {
          v34 = v31;
        }

        else
        {
          v34 = 0;
        }

        [v7 updateWithTitle:v33 subtitle:v34 image:v14 punchout:v26];

LABEL_28:
      }

      v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v5);
  }
}

- (void)addWatchListRowModelObserver:(id)observer
{
  observerCopy = observer;
  rowModels = [(SearchUIWatchListCardsManager *)self rowModels];
  [rowModels addObject:observerCopy];
}

- (BOOL)isTappable
{
  response = [(SearchUIWatchListCardsManager *)self response];
  v3 = response != 0;

  return v3;
}

@end