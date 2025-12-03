@interface PXSettingsIndex
+ (id)_entriesForSettingsController:(id)controller usingProgress:(id)progress;
+ (id)createIndexForSettings:(id)settings resultHandler:(id)handler;
- (PXSettingsIndex)init;
- (id)_initWithEntries:(id)entries;
- (id)searchForText:(id)text resultHandler:(id)handler;
@end

@implementation PXSettingsIndex

- (id)searchForText:(id)text resultHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  entries = [(PXSettingsIndex *)self entries];
  v9 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  if ([textCopy length])
  {
    v10 = dispatch_get_global_queue(2, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__PXSettingsIndex_searchForText_resultHandler___block_invoke;
    v12[3] = &unk_1E774BDB0;
    v13 = entries;
    v14 = v9;
    v15 = textCopy;
    v16 = handlerCopy;
    dispatch_async(v10, v12);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }

  return v9;
}

void __47__PXSettingsIndex_searchForText_resultHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v16 + 1) + 8 * v7);
      if ([*(a1 + 40) isCancelled])
      {
        break;
      }

      if ([v8 matchesSearchString:*(a1 + 48)])
      {
        v9 = [[PXSettingsSearchResult alloc] _initWithEntry:v8];
        [v2 addObject:v9];
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PXSettingsIndex_searchForText_resultHandler___block_invoke_2;
  block[3] = &unk_1E774A0E0;
  v13 = *(a1 + 40);
  v10 = *(a1 + 56);
  v14 = v2;
  v15 = v10;
  v11 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __47__PXSettingsIndex_searchForText_resultHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (id)_initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = PXSettingsIndex;
  v5 = [(PXSettingsIndex *)&v9 init];
  if (v5)
  {
    v6 = [entriesCopy copy];
    entries = v5->_entries;
    v5->_entries = v6;
  }

  return v5;
}

- (PXSettingsIndex)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSettingsIndex.m" lineNumber:187 description:{@"%s is not available as initializer", "-[PXSettingsIndex init]"}];

  abort();
}

+ (id)_entriesForSettingsController:(id)controller usingProgress:(id)progress
{
  controllerCopy = controller;
  progressCopy = progress;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke;
  aBlock[3] = &unk_1E7731C20;
  v30 = &v35;
  v12 = progressCopy;
  v25 = v12;
  v13 = controllerCopy;
  v26 = v13;
  v31 = v40;
  v32 = v39;
  v14 = array3;
  v27 = v14;
  v15 = array;
  v28 = v15;
  v16 = array2;
  v29 = v16;
  v33 = a2;
  selfCopy = self;
  v17 = _Block_copy(aBlock);
  if ((v36[3] & 1) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = MEMORY[0x1E69E96A0];
    do
    {
      v22[0] = v18;
      v22[1] = 3221225472;
      v22[2] = __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_5;
      v22[3] = &unk_1E774C250;
      v23 = v17;
      dispatch_sync(v19, v22);
    }

    while (*(v36 + 24) != 1);
  }

  v20 = v15;

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);

  return v20;
}

void __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 8);
  if (*(v1 + 24))
  {
    goto LABEL_4;
  }

  if ([*(a1 + 32) isCancelled])
  {
    v1 = *(*(a1 + 72) + 8);
LABEL_4:
    *(v1 + 24) = 1;
    return;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_2;
  v9[3] = &unk_1E7744B50;
  v3 = *(a1 + 40);
  v12 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v14 = *(a1 + 96);
  v13 = *(a1 + 72);
  PXSettingsPerformIndexingOperation(v9);
}

uint64_t __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_5(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2 + 0.0333333333;
  while (1)
  {
    result = [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v5 > v3)
    {
      break;
    }

    (*(*(a1 + 32) + 16))();
  }

  return result;
}

void __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [*(a1 + 32) topViewController];
    v5 = [v4 tableView];
    v6 = *(*(*(a1 + 64) + 8) + 24);
    if (v6 < [v4 numberOfSectionsInTableView:v5])
    {
      v7 = *(*(*(a1 + 72) + 8) + 24);
      if (v7 >= [v4 tableView:v5 numberOfRowsInSection:*(*(*(a1 + 64) + 8) + 24)])
      {
        ++*(*(*(a1 + 64) + 8) + 24);
        *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_25:

        return;
      }

      v8 = [MEMORY[0x1E696AC88] indexPathForRow:*(*(*(a1 + 72) + 8) + 24) inSection:*(*(*(a1 + 64) + 8) + 24)];
      v9 = [[_PXSettingsIndexEntry alloc] initWithRowAtIndexPath:v8 inTableView:v5];
      v10 = [*(a1 + 40) lastObject];
      [(_PXSettingsIndexEntry *)v9 setParentEntry:v10];

      [*(a1 + 48) addObject:v9];
      [v5 scrollToRowAtIndexPath:v8 atScrollPosition:0 animated:0];
      v11 = [_PXSettingsIndexEntry _cellForRowAtIndexPath:v8 inTableView:v5];
      if ([v11 accessoryType] != 1)
      {
        goto LABEL_23;
      }

      v28 = [*(a1 + 32) viewControllers];
      v12 = isIndexingQueryCount;
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v38 = 0;
      v13 = *(a1 + 32);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_3;
      v31[3] = &unk_1E774A1B8;
      v32 = v4;
      v33 = v5;
      v26 = v8;
      v34 = v26;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __63__PXSettingsIndex__entriesForSettingsController_usingProgress___block_invoke_4;
      v30[3] = &unk_1E774BD00;
      v30[4] = &v35;
      [v13 px_performWithoutAnimations:v31 completionHandler:v30];
      if (*(v36 + 24) == 1)
      {
        v14 = [*(a1 + 32) viewControllers];
        v15 = v14;
        if (isIndexingQueryCount > v12 && ([v14 isEqualToArray:v28] & 1) != 0)
        {
          goto LABEL_22;
        }

        v16 = [v15 count];
        if (v16 == [v28 count] + 1)
        {
          v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v28, "count")}];
          v18 = [v15 objectsAtIndexes:v17];
          if ([v18 isEqualToArray:v28])
          {
            v19 = [*(a1 + 32) presentedViewController];

            if (!v19)
            {
              [*(a1 + 56) addObject:v26];
              [*(a1 + 40) addObject:v9];
              *(*(*(a1 + 64) + 8) + 24) = 0;
              *(*(*(a1 + 72) + 8) + 24) = 0;

              _Block_object_dispose(&v35, 8);
LABEL_24:

              goto LABEL_25;
            }
          }

          else
          {
          }
        }

        v21 = [*(a1 + 32) presentedViewController];

        if (v21)
        {
          v22 = [*(a1 + 32) presentingViewController];
          [v22 dismissViewControllerAnimated:0 completion:0];

LABEL_22:
          _Block_object_dispose(&v35, 8);

LABEL_23:
          ++*(*(*(a1 + 72) + 8) + 24);
          goto LABEL_24;
        }
      }

      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = *(a1 + 96);
      v27 = *(a1 + 88);
      v24 = [(_PXSettingsIndexEntry *)v9 subtitle];
      v25 = [(_PXSettingsIndexEntry *)v9 title];
      [v15 handleFailureInMethod:v27 object:v23 file:@"PXSettingsIndex.m" lineNumber:149 description:{@"The action for '%@ %@' didn't push a view controller as expected. Please use PXSettingsIsIndexing() to bail out of non-indexable actions.", v24, v25}];

      goto LABEL_22;
    }
  }

  if ([*(a1 + 56) count])
  {
    v20 = [*(a1 + 32) popViewControllerAnimated:0];
    v29 = [*(a1 + 56) lastObject];
    [*(a1 + 56) removeLastObject];
    [*(a1 + 40) removeLastObject];
    *(*(*(a1 + 64) + 8) + 24) = [v29 section];
    *(*(*(a1 + 72) + 8) + 24) = [v29 row] + 1;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }
}

+ (id)createIndexForSettings:(id)settings resultHandler:(id)handler
{
  settingsCopy = settings;
  handlerCopy = handler;
  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  v9 = dispatch_queue_create("PXSettingsIndex", 0);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke;
  v16[3] = &unk_1E773DAC8;
  v17 = settingsCopy;
  v10 = v8;
  v19 = handlerCopy;
  selfCopy = self;
  v18 = v10;
  v11 = handlerCopy;
  v12 = settingsCopy;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke(id *a1)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__47617;
  v22[4] = __Block_byref_object_dispose__47618;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__47617;
  v20 = __Block_byref_object_dispose__47618;
  v21 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke_1;
  block[3] = &unk_1E7746888;
  v14 = v22;
  v15 = &v16;
  v13 = a1[4];
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  if ([a1[5] isCancelled])
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_opt_class() _entriesForSettingsController:v17[5] usingProgress:a1[5]];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke_2;
  v11[3] = &unk_1E774BD00;
  v11[4] = v22;
  v3 = MEMORY[0x1E69E96A0];
  dispatch_sync(MEMORY[0x1E69E96A0], v11);

  if (([a1[5] isCancelled] & 1) == 0)
  {
    v4 = [objc_alloc(objc_opt_class()) _initWithEntries:v2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke_3;
    v8[3] = &unk_1E774C2F0;
    v5 = a1[6];
    v9 = v4;
    v10 = v5;
    v6 = v4;
    v7 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v22, 8);
}

uint64_t __56__PXSettingsIndex_createIndexForSettings_resultHandler___block_invoke_1(void *a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD2E8]);
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v4 = [v2 initWithFrame:?];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [objc_alloc(MEMORY[0x1E69C66C0]) initWithRootSettings:a1[4]];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(a1[5] + 8) + 40) setRootViewController:*(*(a1[6] + 8) + 40)];
  [*(*(a1[5] + 8) + 40) setAlpha:0.0];
  v10 = *(*(a1[5] + 8) + 40);

  return [v10 setHidden:0];
}

@end