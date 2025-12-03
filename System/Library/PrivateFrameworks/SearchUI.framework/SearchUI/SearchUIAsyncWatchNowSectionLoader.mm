@interface SearchUIAsyncWatchNowSectionLoader
+ (BOOL)supportsSectionModel:(id)model;
- (SearchUIAsyncWatchNowSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id;
- (id)cacheIdentifier;
- (id)placeholderCardSections;
- (void)fetchCardSectionsWithCompletionHandler:(id)handler;
@end

@implementation SearchUIAsyncWatchNowSectionLoader

+ (BOOL)supportsSectionModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rowModels = [modelCopy rowModels];
    if ([rowModels count] == 1)
    {
      rowModels2 = [modelCopy rowModels];
      firstObject = [rowModels2 firstObject];
      cardSection = [firstObject cardSection];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (SearchUIAsyncWatchNowSectionLoader)initWithSectionModel:(id)model result:(id)result queryId:(unint64_t)id
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = SearchUIAsyncWatchNowSectionLoader;
  v9 = [(SearchUIAsyncSectionLoader *)&v18 initWithSectionModel:modelCopy result:result queryId:id];
  if (v9)
  {
    rowModels = [modelCopy rowModels];
    firstObject = [rowModels firstObject];
    cardSection = [firstObject cardSection];

    watchListItem = [cardSection watchListItem];
    watchListItem = v9->_watchListItem;
    v9->_watchListItem = watchListItem;

    cardSectionId = [cardSection cardSectionId];
    cardSectionId = v9->_cardSectionId;
    v9->_cardSectionId = cardSectionId;
  }

  return v9;
}

- (id)cacheIdentifier
{
  watchListItem = [(SearchUIAsyncWatchNowSectionLoader *)self watchListItem];
  watchListIdentifier = [watchListItem watchListIdentifier];

  return watchListIdentifier;
}

- (id)placeholderCardSections
{
  v6[1] = *MEMORY[0x1E69E9840];
  watchListItem = [(SearchUIAsyncWatchNowSectionLoader *)self watchListItem];
  v3 = +[SearchUIWatchNowCardSection placeholderCardForMediaContainer:](SearchUIWatchNowCardSection, "placeholderCardForMediaContainer:", [watchListItem isMediaContainer]);
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)fetchCardSectionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  watchListItem = [(SearchUIAsyncWatchNowSectionLoader *)self watchListItem];
  v6 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [watchListItem type], objc_msgSend(watchListItem, "isMediaContainer"));
  watchListIdentifier = [watchListItem watchListIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__SearchUIAsyncWatchNowSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E85B4270;
  objc_copyWeak(&v11, &location);
  v8 = handlerCopy;
  v10 = v8;
  [SearchUIWatchListUtilities fetchButtonsForWatchListIdentifier:watchListIdentifier type:v6 isHorizontallySrollingStyle:1 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __77__SearchUIAsyncWatchNowSectionLoader_fetchCardSectionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_opt_new();
  [v6 setCardSection:MEMORY[0x1E695E0F0]];
  [v6 setAnimated:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v30 = a1;
    v31 = v6;
    v7 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v12 buttonType];
          if (v13 != 3)
          {
            if (v13 == 2 && ([v12 storeIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
            {
              v15 = objc_opt_new();
              v16 = [v12 storeIdentifier];
              [v15 setStoreIdentifier:v16];
            }

            else
            {
              v15 = objc_opt_new();
              v17 = MEMORY[0x1E69CA320];
              v16 = [v12 punchoutURL];
              v18 = [v17 punchoutWithURL:v16];
              [v15 setPunchout:v18];
            }

            v19 = objc_opt_new();
            v20 = [v12 thumbnailImage];
            [v19 setImage:v20];

            v21 = MEMORY[0x1E69CA3A0];
            v22 = [v12 title];
            v23 = [v21 textWithString:v22];
            [v19 setTitle:v23];

            v24 = [v19 title];
            [v24 setMaxLines:1];

            v25 = MEMORY[0x1E69CA3A0];
            v26 = [v12 subtitle];
            v27 = [v25 textWithString:v26];
            [v19 setSubtitle:v27];

            v28 = [v19 subtitle];
            [v28 setMaxLines:2];

            [v19 setCommand:v15];
            v29 = [WeakRetained cardSectionId];
            [v19 setCardSectionId:v29];

            [v7 addObject:v19];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v9);
    }

    v6 = v31;
    [v31 setCardSection:v7];
    (*(*(v30 + 32) + 16))();

    v5 = v32;
  }
}

@end