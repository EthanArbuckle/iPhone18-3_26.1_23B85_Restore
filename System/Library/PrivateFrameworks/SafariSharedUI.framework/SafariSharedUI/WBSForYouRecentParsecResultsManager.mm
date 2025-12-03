@interface WBSForYouRecentParsecResultsManager
+ (id)recommendationsMatchingTopic:(id)topic fromArray:(id)array;
- (BOOL)_hasPermissibleResultTypeForResult:(id)result;
- (id)_bestAcceptableImageForSFResult:(id)result;
- (id)_cacheEnsuringExistence;
- (void)_createInternalQueueIfNecessary;
- (void)appendResultsIfApplicable:(id)applicable withDelayedExistenceCheck:(BOOL)check;
- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler;
@end

@implementation WBSForYouRecentParsecResultsManager

- (void)appendResultsIfApplicable:(id)applicable withDelayedExistenceCheck:(BOOL)check
{
  v54 = *MEMORY[0x1E69E9840];
  applicableCopy = applicable;
  if ([applicableCopy count] <= 2)
  {
    v5 = [applicableCopy count];
  }

  else
  {
    v5 = 2;
  }

  v35 = [applicableCopy subarrayWithRange:{0, v5}];
  if ([v35 count])
  {
    objc_initWeak(&location, self);
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v48 = 0u;
    obj = v35;
    v6 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (!v6)
    {
      goto LABEL_37;
    }

    v39 = *v49;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v48 + 1) + 8 * i);
        if ([(WBSForYouRecentParsecResultsManager *)self _hasPermissibleResultTypeForResult:v8])
        {
          v9 = [v8 url];
          v10 = v9;
          if (!v9 || ([v9 safari_isHTTPFamilyURL] & 1) == 0)
          {
            goto LABEL_34;
          }

          v11 = v8;
          sectionBundleIdentifier = [v11 sectionBundleIdentifier];
          v13 = [sectionBundleIdentifier isEqualToString:@"com.apple.parsec.web_index"];

          if (v13)
          {
            v14 = [v11 safari_firstInlineCardSectionOfClass:objc_opt_class()];
            title3 = v14;
            if (v14)
            {
              descriptions = [v14 descriptions];
              firstObject = [descriptions firstObject];
              text = [firstObject text];

              if (!text)
              {
                title = [title3 title];
                text = [title text];
              }

              if ([text length])
              {
                whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
                title2 = [whitespaceAndNewlineCharacterSet mutableCopy];

                [title2 addCharactersInString:@"—"];
                [text stringByTrimmingCharactersInSet:title2];
              }

              else
              {
                title2 = [v11 title];
                [title2 text];
              }
              text2 = ;

LABEL_26:
LABEL_28:

              if ([text2 length])
              {
                v26 = [WBSForYouLinkRecommendation alloc];
                date = [MEMORY[0x1E695DF00] date];
                v28 = [(WBSForYouLinkRecommendation *)v26 initWithTitle:text2 url:v10 lastSeenDate:date source:2 topicSource:0];

                v29 = _WBSLocalizedString();
                [(WBSForYouLinkRecommendation *)v28 setFootnote:v29];

                identifier = [v11 identifier];
                [(WBSForYouLinkRecommendation *)v28 setSourceID:identifier];

                v31 = [(WBSForYouRecentParsecResultsManager *)self _bestAcceptableImageForSFResult:v11];
                v45[0] = MEMORY[0x1E69E9820];
                v45[1] = 3221225472;
                v45[2] = __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke;
                v45[3] = &unk_1E82851A8;
                v32 = v28;
                v46 = v32;
                objc_copyWeak(&v47, &location);
                [v31 loadImageDataWithCompletionHandler:v45];
                if (check)
                {
                  objc_initWeak(&from, v11);
                  v33 = dispatch_time(0, 200000000);
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke_3;
                  block[3] = &unk_1E82851D0;
                  objc_copyWeak(&v43, &from);
                  block[4] = self;
                  v41 = v32;
                  v42 = v10;
                  dispatch_after(v33, MEMORY[0x1E69E96A0], block);

                  objc_destroyWeak(&v43);
                  objc_destroyWeak(&from);
                }

                else
                {
                  _cacheEnsuringExistence = [(WBSForYouRecentParsecResultsManager *)self _cacheEnsuringExistence];
                  [_cacheEnsuringExistence setObject:v32 forKey:v10];
                }

                objc_destroyWeak(&v47);
              }

LABEL_34:
              continue;
            }

            v22 = [v11 safari_firstInlineCardSectionOfClass:objc_opt_class()];
            title3 = v22;
            if (v22)
            {
              text = [v22 leadingText];
              v18Text = [text text];
LABEL_25:
              text2 = v18Text;
              goto LABEL_26;
            }

            v25 = [v11 safari_firstInlineCardSectionOfClass:objc_opt_class()];
            title3 = v25;
            if (v25)
            {
              text = [v25 title];
              v18Text = [text text];
              goto LABEL_25;
            }
          }

          title3 = [v11 title];
          text2 = [title3 text];
          goto LABEL_28;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (!v6)
      {
LABEL_37:

        objc_destroyWeak(&location);
        break;
      }
    }
  }
}

void __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke_2;
    block[3] = &unk_1E8285180;
    v7 = *(a1 + 32);
    v8 = v4;
    v5 = v4;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v9);
  }
}

void __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained notifyImageWasUpdatedForRecommendation:*(a1 + 32)];
}

void __91__WBSForYouRecentParsecResultsManager_appendResultsIfApplicable_withDelayedExistenceCheck___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (WeakRetained)
  {
    v3 = [*(a1 + 32) _cacheEnsuringExistence];
    [v3 setObject:*(a1 + 40) forKey:*(a1 + 48)];
  }
}

- (id)_bestAcceptableImageForSFResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  array = [MEMORY[0x1E695DF70] array];
  thumbnail = [resultCopy thumbnail];
  if (thumbnail)
  {
    [array addObject:thumbnail];
  }

  icon = [resultCopy icon];
  if (icon)
  {
    [array addObject:icon];
  }

  completionImage = [resultCopy completionImage];
  if (completionImage)
  {
    [array addObject:completionImage];
  }

  secondaryTitleImage = [resultCopy secondaryTitleImage];
  if (secondaryTitleImage)
  {
    [array addObject:secondaryTitleImage];
  }

  inlineCard = [resultCopy inlineCard];
  cardSections = [inlineCard cardSections];
  firstObject = [cardSections firstObject];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = [firstObject performSelector:sel_thumbnail];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (v12)
  {
    [array addObject:v12];
  }

LABEL_15:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = array;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = 0;
    v16 = *v27;
    v17 = 0.0;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        [v19 size];
        if (v21 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        if (v22 > v17 && v22 >= 60.0)
        {
          v24 = v19;

          v15 = v24;
          v17 = v22;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_hasPermissibleResultTypeForResult:(id)result
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  v5 = [identifier hasPrefix:@"wiki:"];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69C8FA8] typeForSFSearchResult:resultCopy];
    if (v7 >= 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 0xAu >> v7;
    }
  }

  return v6 & 1;
}

- (id)_cacheEnsuringExistence
{
  cache = self->_cache;
  if (!cache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_cache;
    self->_cache = v4;

    [(NSCache *)self->_cache setCountLimit:200];
    cache = self->_cache;
  }

  return cache;
}

- (void)retrieveRecommendationsMatchingTopic:(id)topic withCompletionHandler:(id)handler
{
  topicCopy = topic;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = WBSForYouRecentParsecResultsManager;
  [(WBSForYouRecommendationMediatorDataSource *)&v17 emitStartRetrievingRecommendationsPerformanceMarker];
  [(WBSForYouRecentParsecResultsManager *)self _createInternalQueueIfNecessary];
  recentRecommendations = [(WBSForYouRecentParsecResultsManager *)self recentRecommendations];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__WBSForYouRecentParsecResultsManager_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke;
  block[3] = &unk_1E8283708;
  v15 = recentRecommendations;
  v16 = handlerCopy;
  v14 = topicCopy;
  v10 = recentRecommendations;
  v11 = topicCopy;
  v12 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __98__WBSForYouRecentParsecResultsManager_retrieveRecommendationsMatchingTopic_withCompletionHandler___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = [WBSForYouRecentParsecResultsManager recommendationsMatchingTopic:a1[4] fromArray:a1[5]];
  (*(v1 + 16))(v1);
}

- (void)_createInternalQueueIfNecessary
{
  if (!self->_internalQueue)
  {
    v3 = dispatch_queue_create("com.apple.Safari.WBSForYouRecentParsecResultsManager.internalQueue", 0);
    internalQueue = self->_internalQueue;
    self->_internalQueue = v3;
  }
}

+ (id)recommendationsMatchingTopic:(id)topic fromArray:(id)array
{
  v35 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v22 = arrayCopy;
    title = [topicCopy title];
    array = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title contains[cd] %@", title];
    [array addObject:v7];

    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"originalQueriesString contains[cd] %@", title];
    [array addObject:v8];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    associatedTopics = [topicCopy associatedTopics];
    v10 = [associatedTopics countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(associatedTopics);
          }

          title2 = [*(*(&v29 + 1) + 8 * i) title];
          v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"title contains[cd] %@", title2];
          [array addObject:v14];

          v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"originalQueriesString contains[cd] %@", title2];
          [array addObject:v15];
        }

        v10 = [associatedTopics countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    v16 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
    v17 = [v22 filteredArrayUsingPredicate:v16];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    arrayCopy = v17;
    v18 = [arrayCopy countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(arrayCopy);
          }

          [*(*(&v25 + 1) + 8 * j) setTopicSource:{objc_msgSend(topicCopy, "source")}];
        }

        v18 = [arrayCopy countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }
  }

  return arrayCopy;
}

@end