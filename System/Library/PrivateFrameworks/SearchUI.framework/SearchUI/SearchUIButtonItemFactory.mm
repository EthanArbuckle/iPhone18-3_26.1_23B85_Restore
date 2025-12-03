@interface SearchUIButtonItemFactory
- (SearchUIButtonItemFactory)init;
- (SearchUIButtonItemGeneratorViewDelegate)delegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (void)fetchSearchUIButtonitemsWithSFButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems shouldReverseButtonOrder:(BOOL)order completion:(id)completion;
- (void)updateCompletionHandlerWithSFButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems shouldReverseButtonOrder:(BOOL)order completion:(id)completion;
@end

@implementation SearchUIButtonItemFactory

- (SearchUIButtonItemFactory)init
{
  v5.receiver = self;
  v5.super_class = SearchUIButtonItemFactory;
  v2 = [(SearchUIButtonItemFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUIButtonItemFactory *)v2 setCountMoreButtonTowardsMaxCount:1];
  }

  return v3;
}

- (void)fetchSearchUIButtonitemsWithSFButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems shouldReverseButtonOrder:(BOOL)order completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  [(SearchUIButtonItemFactory *)self timeLimitForSubsequentButtonGeneratorUpdates];
  if (v12 != 0.0)
  {
    v13 = [MEMORY[0x1E695DF00] now];
    [(SearchUIButtonItemFactory *)self setStartTime:v13];

    objc_initWeak(&location, self);
    [(SearchUIButtonItemFactory *)self timeLimitForSubsequentButtonGeneratorUpdates];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke;
    block[3] = &unk_1E85B2D88;
    objc_copyWeak(v26, &location);
    v24 = itemsCopy;
    v26[1] = buttonItems;
    orderCopy = order;
    v25 = completionCopy;
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v26);
    objc_destroyWeak(&location);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_2;
  v18[3] = &unk_1E85B2E00;
  v18[4] = self;
  v19 = itemsCopy;
  orderCopy2 = order;
  v20 = completionCopy;
  buttonItemsCopy = buttonItems;
  v16 = completionCopy;
  v17 = itemsCopy;
  [SearchUIUtilities dispatchMainIfNecessary:v18];
}

void __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateCompletionHandlerWithSFButtonItems:*(a1 + 32) maxButtonItems:*(a1 + 56) shouldReverseButtonOrder:*(a1 + 64) completion:*(a1 + 40)];
}

void __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:{objc_msgSend(*(a1 + 40), "count")}];
  [*(a1 + 32) setFetchedCommandButtonItemsForButtons:v2];

  v3 = objc_opt_new();
  [*(a1 + 32) setButtonItemGenerators:v3];

  v4 = objc_opt_new();
  [*(a1 + 32) setFullyGeneratedButtonItems:v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v8 _searchUIButtonItemGeneratorClass];
        v9 = objc_opt_new();
        v10 = [*(a1 + 32) delegate];
        [v9 setDelegate:v10];

        v11 = [*(a1 + 32) feedbackDelegate];
        [v9 setFeedbackDelegate:v11];

        objc_initWeak(&location, *(a1 + 32));
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_3;
        v17[3] = &unk_1E85B2DD8;
        objc_copyWeak(v20, &location);
        v17[4] = v8;
        v12 = *(a1 + 40);
        v14 = *(a1 + 48);
        v13 = *(a1 + 56);
        v18 = v12;
        v20[1] = v13;
        v21 = *(a1 + 64);
        v19 = v14;
        [v9 generateSearchUIButtonItemsWithSFButtonItem:v8 completion:v17];
        if (v9)
        {
          v15 = [*(a1 + 32) buttonItemGenerators];
          [v15 addObject:v9];
        }

        objc_destroyWeak(v20);
        objc_destroyWeak(&location);
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

void __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_4;
  v11[3] = &unk_1E85B2DB0;
  objc_copyWeak(v16, (a1 + 56));
  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v17 = a3;
  v9 = v8;
  v10 = *(a1 + 64);
  v14 = v9;
  v16[1] = v10;
  v18 = *(a1 + 72);
  v15 = *(a1 + 48);
  [SearchUIUtilities dispatchMainIfNecessary:v11];

  objc_destroyWeak(v16);
}

void __122__SearchUIButtonItemFactory_fetchSearchUIButtonitemsWithSFButtonItems_maxButtonItems_shouldReverseButtonOrder_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained fetchedCommandButtonItemsForButtons];
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  [v2 setObject:v4 forKey:*(a1 + 40)];

  if (*(a1 + 80) == 1)
  {
    v5 = [WeakRetained fullyGeneratedButtonItems];
    [v5 addObject:*(a1 + 40)];
  }

  [WeakRetained updateCompletionHandlerWithSFButtonItems:*(a1 + 48) maxButtonItems:*(a1 + 72) shouldReverseButtonOrder:*(a1 + 81) completion:*(a1 + 56)];
}

- (void)updateCompletionHandlerWithSFButtonItems:(id)items maxButtonItems:(unint64_t)buttonItems shouldReverseButtonOrder:(BOOL)order completion:(id)completion
{
  orderCopy = order;
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  completionCopy = completion;
  v11 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        fetchedCommandButtonItemsForButtons = [(SearchUIButtonItemFactory *)self fetchedCommandButtonItemsForButtons];
        v19 = [fetchedCommandButtonItemsForButtons objectForKey:v17];

        if ([v19 count])
        {
          [v11 addObjectsFromArray:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v14);
  }

  if (buttonItems && [v11 count] > buttonItems)
  {
    v20 = objc_opt_new();
    v21 = buttonItems - [(SearchUIButtonItemFactory *)self countMoreButtonTowardsMaxCount];
    for (j = v21 - (v21 == [v11 count] - 1); j < objc_msgSend(v11, "count"); ++j)
    {
      v23 = [v11 objectAtIndexedSubscript:j];
      [v20 addObject:v23];
    }

    [v11 removeObjectsInArray:v20];
    v24 = objc_opt_new();
    [v24 setSymbolName:@"ellipsis"];
    [v24 setIsTemplate:1];
    v25 = [[SearchUIButtonItem alloc] initWithSFButtonItem:0];
    [(SearchUIButtonItem *)v25 setImage:v24];
    [(SearchUIButtonItem *)v25 setPreviewButtonItems:v20];
    [(SearchUIButtonItem *)v25 setIsOverflowButton:1];
    [v11 addObject:v25];
  }

  if (orderCopy)
  {
    reverseObjectEnumerator = [v11 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v28 = [allObjects mutableCopy];

    v11 = v28;
  }

  startTime = [(SearchUIButtonItemFactory *)self startTime];
  [startTime timeIntervalSinceNow];
  v31 = v30;
  [(SearchUIButtonItemFactory *)self timeLimitForSubsequentButtonGeneratorUpdates];
  v33 = v32;

  fetchedCommandButtonItemsForButtons2 = [(SearchUIButtonItemFactory *)self fetchedCommandButtonItemsForButtons];
  v35 = [fetchedCommandButtonItemsForButtons2 count];
  v36 = [v12 count];

  fullyGeneratedButtonItems = [(SearchUIButtonItemFactory *)self fullyGeneratedButtonItems];
  v38 = [fullyGeneratedButtonItems count];
  v39 = [v12 count];

  v41 = v33 < -v31 && v35 == v36;
  v42 = v38 == v39 || v41;
  completionCopy[2](completionCopy, v11, v42);
}

- (SearchUIButtonItemGeneratorViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end