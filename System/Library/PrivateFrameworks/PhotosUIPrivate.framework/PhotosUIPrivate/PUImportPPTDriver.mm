@interface PUImportPPTDriver
+ (NSArray)importMediaURLs;
+ (id)sharedInstance;
- (PUImportPPTDriver)init;
- (PXImportViewControllerProvider)importViewControllerProvider;
- (double)_contentLoadingCheckInterval;
- (id)importController;
- (id)importViewController;
- (id)mediaProvider;
- (id)modelBatchesForOptions:(id)options;
- (void)_removeCurrentImportSourceIfNecessary;
- (void)_updateLoadingContentState;
- (void)actionCoordinator:(id)coordinator didCompleteWithImportSession:(id)session results:(id)results;
- (void)actionCoordinatorDidCancelImport:(id)import;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)ppt_insertImportDataSourceWithOptions:(id)options completionHandler:(id)handler;
- (void)ppt_mediaProviderDidProcessAsset:(id)asset;
- (void)ppt_performDeleteWithOptions:(id)options completionHandler:(id)handler;
- (void)ppt_performImportToLibraryWithOptions:(id)options completionHandler:(id)handler;
- (void)ppt_performThumbnailWithOptions:(id)options completionHandler:(id)handler;
- (void)ppt_removeImportDataSourceWithOptions:(id)options completionHandler:(id)handler;
- (void)signalImportToLibraryTestReply:(BOOL)reply;
- (void)signalInsertDatasourceReply:(BOOL)reply;
- (void)signalThumbnailTestReply:(BOOL)reply;
@end

@implementation PUImportPPTDriver

- (PXImportViewControllerProvider)importViewControllerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_importViewControllerProvider);

  return WeakRetained;
}

- (void)actionCoordinator:(id)coordinator didCompleteWithImportSession:(id)session results:(id)results
{
  coordinatorCopy = coordinator;
  sessionCopy = session;
  resultsCopy = results;
  importSemaphore = self->_importSemaphore;
  if (importSemaphore)
  {
    dispatch_semaphore_signal(importSemaphore);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_endTime = v11;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v13 = v12 - self->_startTime;
  v14 = MEMORY[0x1E696AEC0];
  v15 = self->_iteration + 1;
  self->_iteration = v15;
  v16 = [v14 stringWithFormat:@"Time to perform Import to Library %lu", v15];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  [(NSMutableDictionary *)self->_extraResults setObject:v17 forKeyedSubscript:v16];

  if (self->_importComplete)
  {
    options = [(PUImportPPTDriver *)self options];
    v19 = [options objectForKeyedSubscript:@"PUImportPPTDriverBatchCountKey"];
    integerValue = [v19 integerValue];

    if (integerValue >= 1)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      [(NSMutableDictionary *)self->_extraResults setObject:v21 forKeyedSubscript:@"Import batch size"];
    }

    [(PUImportPPTDriver *)self signalImportToLibraryTestReply:1];
  }
}

- (void)actionCoordinatorDidCancelImport:(id)import
{
  importSemaphore = self->_importSemaphore;
  if (importSemaphore)
  {
    dispatch_semaphore_signal(importSemaphore);
  }

  [(PUImportPPTDriver *)self signalImportToLibraryTestReply:0];
}

- (void)ppt_mediaProviderDidProcessAsset:(id)asset
{
  assetCopy = asset;
  userInfo = [assetCopy userInfo];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  startTime = self->_startTime;
  options = [(PUImportPPTDriver *)self options];
  v9 = [options objectForKeyedSubscript:@"PUImportPPTDriverThumbnailToFirstKey"];
  bOOLValue = [v9 BOOLValue];

  options2 = [(PUImportPPTDriver *)self options];
  v12 = [options2 objectForKeyedSubscript:@"PUImportPPTDriverThumbnailToAllAbsoluteKey"];
  bOOLValue2 = [v12 BOOLValue];

  options3 = [(PUImportPPTDriver *)self options];
  v15 = [options3 objectForKeyedSubscript:@"PUImportPPTDriverThumbnailToAllScreenKey"];
  bOOLValue3 = [v15 BOOLValue];

  v17 = [userInfo objectForKeyedSubscript:@"isLastDisplayItem"];
  bOOLValue4 = [v17 BOOLValue];

  v19 = [userInfo objectForKeyedSubscript:@"isLastAbsoluteItem"];
  bOOLValue5 = [v19 BOOLValue];

  if (bOOLValue5)
  {
    self->_hasSeenAbsolulteLastThumbnailMarker = 1;
    objc_sync_enter(self);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = [userInfo objectForKeyedSubscript:@"duration"];
    extraResults = selfCopy->_extraResults;
    v24 = [userInfo objectForKeyedSubscript:@"filename"];
    [(NSMutableDictionary *)extraResults setObject:v22 forKeyedSubscript:v24];

    startTime = [MEMORY[0x1E696AD98] numberWithDouble:v6 - startTime];
    [(NSMutableDictionary *)selfCopy->_extraResults setObject:startTime forKeyedSubscript:@"Image Processing Duration"];
  }

  objc_sync_exit(self);

  if (!bOOLValue2)
  {
    if (((bOOLValue | bOOLValue3 & bOOLValue4) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((self->_hasSeenAbsolulteLastThumbnailMarker | bOOLValue) & 1) != 0 || (bOOLValue3 & bOOLValue4)
  {
LABEL_9:
    [(PUImportPPTDriver *)self signalThumbnailTestReply:1];
  }

LABEL_10:
}

- (void)signalImportToLibraryTestReply:(BOOL)reply
{
  if (self->_importToLibraryTestReply)
  {
    px_dispatch_on_main_queue_sync();
  }
}

void __52__PUImportPPTDriver_signalImportToLibraryTestReply___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 24) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (void)signalThumbnailTestReply:(BOOL)reply
{
  if (self->_thumbnailTestReply)
  {
    px_dispatch_on_main_queue_sync();
  }
}

void __46__PUImportPPTDriver_signalThumbnailTestReply___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 16) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)signalInsertDatasourceReply:(BOOL)reply
{
  if (self->_insertDatasourceReply)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTime - self->_startTime];
    [(NSMutableDictionary *)self->_extraResults setObject:v5 forKeyedSubscript:@"Import source content load time"];

    v6 = [self->_insertDatasourceReply copy];
    insertDatasourceReply = self->_insertDatasourceReply;
    self->_insertDatasourceReply = 0;

    options = [(PUImportPPTDriver *)self options];
    v9 = [options objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenMediaProviderReadyKey"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      v11 = 1000000000;
    }

    else
    {
      v11 = 100000001;
    }

    v12 = dispatch_time(0, v11);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PUImportPPTDriver_signalInsertDatasourceReply___block_invoke;
    block[3] = &unk_1E7B7E720;
    block[4] = self;
    v15 = v6;
    replyCopy = reply;
    v13 = v6;
    dispatch_after(v12, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __49__PUImportPPTDriver_signalInsertDatasourceReply___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1 + 32) + 104) = v2;
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (double)_contentLoadingCheckInterval
{
  options = [(PUImportPPTDriver *)self options];
  v3 = [options objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenAllContentIsReadyKey"];
  bOOLValue = [v3 BOOLValue];

  result = 0.1;
  if (bOOLValue)
  {
    return 15.0;
  }

  return result;
}

- (void)_updateLoadingContentState
{
  options = [(PUImportPPTDriver *)self options];
  v4 = [options objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenAllContentIsReadyKey"];
  bOOLValue = [v4 BOOLValue];

  options2 = [(PUImportPPTDriver *)self options];
  v7 = [options2 objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenAnyContentIsReadyKey"];
  bOOLValue2 = [v7 BOOLValue];

  options3 = [(PUImportPPTDriver *)self options];
  v10 = [options3 objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenMediaProviderReadyKey"];
  bOOLValue3 = [v10 BOOLValue];

  WeakRetained = objc_loadWeakRetained(&self->_dataSourceManager);
  dataSource = [WeakRetained dataSource];

  numberOfItems = [dataSource numberOfItems];
  self->_loadingContentStarted = numberOfItems != 0;
  if (numberOfItems)
  {
    importController = [(PUImportPPTDriver *)self importController];
    isLoadingContent = [importController isLoadingContent];

    if (!(isLoadingContent & 1 | ((bOOLValue & 1) == 0) | bOOLValue3 & 1) || !(bOOLValue3 & 1 | ((self->_loadingContentStarted & bOOLValue2 & 1) == 0)))
    {
      [(PUImportPPTDriver *)self signalInsertDatasourceReply:1];
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  options = [(PUImportPPTDriver *)self options];
  v9 = [options objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenAnyContentIsReadyKey"];
  bOOLValue = [v9 BOOLValue];

  if (PXImportControllerObserverContext_32648 == context)
  {
    if (changeCopy)
    {
      importController = [(PUImportPPTDriver *)self importController];
      isLoadingContent = [importController isLoadingContent];

      if (isLoadingContent)
      {
        self->_loadingContentStarted = 1;
      }
    }
  }

  else if ((changeCopy & 1) != 0 && PXImportAssetsDataSourceManagerObserverContext_32649 == context)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_endTime = v11;
    if (bOOLValue)
    {

      [(PUImportPPTDriver *)self _updateLoadingContentState];
    }

    else
    {
      px_dispatch_on_main_queue_sync();
    }
  }
}

uint64_t __50__PUImportPPTDriver_observable_didChange_context___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__updateLoadingContentState object:0];
  v2 = *(a1 + 32);
  [v2 _contentLoadingCheckInterval];

  return [v2 performSelector:sel__updateLoadingContentState withObject:0 afterDelay:?];
}

- (id)modelBatchesForOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"PUImportPPTDriverAllModelKey"];
  bOOLValue = [v5 BOOLValue];

  v7 = [optionsCopy objectForKeyedSubscript:@"PUImportPPTDriverBatchCountKey"];
  integerValue = [v7 integerValue];

  v9 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceManager);
  unfilteredDataSource = [WeakRetained unfilteredDataSource];
  allItems = [unfilteredDataSource allItems];

  if (bOOLValue)
  {
    v13 = allItems;
  }

  else
  {
    v14 = [allItems count];
    if (integerValue >= v14)
    {
      v17 = 0;
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [allItems subarrayWithRange:{v15, integerValue}];

        [v9 addObject:v17];
        v15 += integerValue;
        v16 = v17;
      }

      while (integerValue + v15 < v14);
    }

    v13 = [allItems subarrayWithRange:{v15, v14 - v15}];
  }

  [v9 addObject:v13];

  return v9;
}

- (id)mediaProvider
{
  importController = [(PUImportPPTDriver *)self importController];
  importMediaProvider = [importController importMediaProvider];

  return importMediaProvider;
}

- (id)importController
{
  importViewController = [(PUImportPPTDriver *)self importViewController];
  importController = [importViewController importController];

  return importController;
}

- (id)importViewController
{
  importViewControllerProvider = [(PUImportPPTDriver *)self importViewControllerProvider];
  WeakRetained = objc_loadWeakRetained(&self->_currentImportSource);
  v5 = [importViewControllerProvider importViewControllerForImportSource:WeakRetained];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)ppt_performImportToLibraryWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  v7 = _Block_copy(handler);
  importToLibraryTestReply = self->_importToLibraryTestReply;
  self->_importToLibraryTestReply = v7;

  v9 = [optionsCopy objectForKeyedSubscript:@"PUImportPPTDriverAllModelKey"];
  LOBYTE(handler) = [v9 BOOLValue];

  v10 = [(PUImportPPTDriver *)self modelBatchesForOptions:optionsCopy];

  v11 = [PUImportActionCoordinator alloc];
  importViewController = [(PUImportPPTDriver *)self importViewController];
  importController = [(PUImportPPTDriver *)self importController];
  v14 = [(PUImportActionCoordinator *)v11 initWithViewController:importViewController importController:importController loggingSource:0];
  actionCoordinator = self->_actionCoordinator;
  self->_actionCoordinator = v14;

  [(PUImportActionCoordinator *)self->_actionCoordinator setPresentsAdditionalDeleteAllConfirmation:0];
  [(PUImportActionCoordinator *)self->_actionCoordinator setPpt_alwaysImportDuplicatesNoPrompt:1];
  [(PUImportActionCoordinator *)self->_actionCoordinator setDelegate:self];
  v16 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke;
  block[3] = &unk_1E7B805E8;
  handlerCopy = handler;
  block[4] = self;
  v19 = v10;
  v17 = v10;
  dispatch_async(v16, block);
}

void __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = *(a1 + 32);
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      v6 = MEMORY[0x1E69E96A0];
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_3;
          v16[3] = &unk_1E7B809F0;
          v9 = *(a1 + 32);
          v10 = *(a1 + 40);
          v16[4] = v8;
          v16[5] = v9;
          v17 = v10;
          dispatch_sync(v6, v16);
          v11 = dispatch_semaphore_create(0);
          v12 = *(a1 + 32);
          v13 = *(v12 + 80);
          *(v12 + 80) = v11;

          dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
          v14 = *(a1 + 32);
          v15 = *(v14 + 80);
          *(v14 + 80) = 0;

          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

void __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_4;
        v12[3] = &unk_1E7B77A98;
        v12[4] = *(a1 + 40);
        v12[5] = v7;
        [v7 performChanges:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_5;
  block[3] = &unk_1E7B809F0;
  v10 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v11 = *(a1 + 48);
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

void __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 setSelectable:1];
  v3 = [*(a1 + 32) importController];
  [v3 selectItem:*(a1 + 40)];
}

uint64_t __77__PUImportPPTDriver_ppt_performImportToLibraryWithOptions_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) lastObject];
  *(*(a1 + 32) + 88) = v2 == v3;

  v4 = *(*(a1 + 32) + 72);

  return [v4 ppt_beginImportFromBarButtonItem];
}

- (void)ppt_performThumbnailWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_importController);

  if (!WeakRetained)
  {
    _PFAssertFailHandler();
    goto LABEL_12;
  }

  v8 = objc_loadWeakRetained(&self->_dataSourceManager);

  if (!v8)
  {
LABEL_12:
    _PFAssertFailHandler();
    goto LABEL_13;
  }

  v9 = objc_loadWeakRetained(&self->_mediaProvider);

  if (!v9)
  {
LABEL_13:
    v17 = _PFAssertFailHandler();
    [(PUImportPPTDriver *)v17 ppt_performDeleteWithOptions:v18 completionHandler:v19, v20];
    return;
  }

  v10 = _Block_copy(handlerCopy);
  thumbnailTestReply = self->_thumbnailTestReply;
  self->_thumbnailTestReply = v10;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_startTime = v12;
  options = [(PUImportPPTDriver *)self options];
  v14 = [options objectForKeyedSubscript:@"PUImportPPTDriverThumbnailToFirstKey"];
  if ([v14 BOOLValue])
  {
    allValues = [(NSMutableDictionary *)self->_extraResults allValues];
    v16 = [allValues count];

    if (v16 >= 2)
    {
      [(PUImportPPTDriver *)self signalThumbnailTestReply:1];
    }
  }

  else
  {
  }
}

- (void)ppt_performDeleteWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_importController);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_dataSourceManager);

    if (v9)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      self->_startTime = v10;
      v11 = [(PUImportPPTDriver *)self modelBatchesForOptions:optionsCopy];
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke;
      block[3] = &unk_1E7B80CB0;
      v17 = v11;
      selfCopy = self;
      v19 = handlerCopy;
      v13 = handlerCopy;
      v14 = v11;
      dispatch_async(v12, block);

      return;
    }
  }

  else
  {
    _PFAssertFailHandler();
  }

  v15 = _PFAssertFailHandler();
  __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke(v15);
}

void __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = dispatch_semaphore_create(0);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = MEMORY[0x1E69E96A0];
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 32) lastObject];
        v10 = v8 == v9;

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke_2;
        block[3] = &unk_1E7B7E4F8;
        block[4] = *(a1 + 40);
        block[5] = v8;
        v11 = v2;
        v14 = v11;
        v16 = v10;
        v15 = *(a1 + 48);
        dispatch_async(v6, block);
        dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7B77A70;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = *(a1 + 64);
  v4 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = v4;
  [WeakRetained deleteItems:v3 withCompletionHandler:v5];
}

void __68__PUImportPPTDriver_ppt_performDeleteWithOptions_completionHandler___block_invoke_3(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  if (*(a1 + 56) == 1 && *(a1 + 48))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v3 = v2 - *(*(a1 + 40) + 104);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    [v5 setObject:v4 forKeyedSubscript:@"Delete all total time"];

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_removeCurrentImportSourceIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_importController);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_importController);
    [v4 unregisterChangeObserver:self context:PXImportControllerObserverContext_32648];

    objc_storeWeak(&self->_importController, 0);
    self->_loadingContentStarted = 0;
  }

  v5 = objc_loadWeakRetained(&self->_dataSourceManager);

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_dataSourceManager);
    [v6 unregisterChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_32649];

    objc_storeWeak(&self->_dataSourceManager, 0);
  }

  v7 = objc_loadWeakRetained(&self->_mediaProvider);

  if (v7)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69C4088] object:0];

    objc_storeWeak(&self->_mediaProvider, 0);
  }

  v9 = objc_loadWeakRetained(&self->_currentImportSource);

  if (v9)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    mEMORY[0x1E6978878] = [MEMORY[0x1E6978878] sharedInstance];
    v11 = objc_loadWeakRetained(&self->_currentImportSource);
    [mEMORY[0x1E69DC668] importController:mEMORY[0x1E6978878] removedImportSource:v11];

    objc_storeWeak(&self->_currentImportSource, 0);
  }
}

- (void)ppt_removeImportDataSourceWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  [(PUImportPPTDriver *)self _removeCurrentImportSourceIfNecessary];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1);
    v5 = handlerCopy;
  }
}

- (void)ppt_insertImportDataSourceWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_startTime = v7;
  v8 = _Block_copy(handlerCopy);
  insertDatasourceReply = self->_insertDatasourceReply;
  self->_insertDatasourceReply = v8;

  [(PUImportPPTDriver *)self setOptions:optionsCopy];
  [(PUImportPPTDriver *)self _removeCurrentImportSourceIfNecessary];
  v10 = [optionsCopy objectForKeyedSubscript:@"simulateSource"];
  bOOLValue = [v10 BOOLValue];

  if (!bOOLValue)
  {
    importViewController = [(PUImportPPTDriver *)self importViewController];
    importDataSourceManager = [importViewController importDataSourceManager];
    objc_storeWeak(&self->_dataSourceManager, importDataSourceManager);

    importController = [(PUImportPPTDriver *)self importController];
    objc_storeWeak(&self->_importController, importController);

    WeakRetained = objc_loadWeakRetained(&self->_dataSourceManager);
    if (WeakRetained)
    {
      v40 = objc_loadWeakRetained(&self->_importController);

      if (v40)
      {
        v41 = objc_loadWeakRetained(&self->_importController);
        self->_loadingContentStarted = [v41 isLoadingContent];

        v42 = objc_loadWeakRetained(&self->_importController);
        [v42 registerChangeObserver:self context:PXImportControllerObserverContext_32648];

        v43 = objc_loadWeakRetained(&self->_dataSourceManager);
        [v43 registerChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_32649];

        v44 = objc_loadWeakRetained(&self->_mediaProvider);
        if (!v44)
        {
          mediaProvider = [(PUImportPPTDriver *)self mediaProvider];
          objc_storeWeak(&self->_mediaProvider, mediaProvider);

          v46 = objc_loadWeakRetained(&self->_mediaProvider);
          if (!v46)
          {
LABEL_28:
            _PFAssertFailHandler();
            goto LABEL_29;
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel_ppt_mediaProviderDidProcessAsset_ name:*MEMORY[0x1E69C4088] object:0];
        }

        options = [(PUImportPPTDriver *)self options];
        v49 = [options objectForKeyedSubscript:@"PUImportPPTDriverNavigateToImportTabKey"];
        [v49 BOOLValue];

        options2 = [(PUImportPPTDriver *)self options];
        v51 = [options2 objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenMediaProviderReadyKey"];
        bOOLValue2 = [v51 BOOLValue];

        if (!bOOLValue2)
        {
          goto LABEL_22;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        self->_endTime = v53;
      }

      [(PUImportPPTDriver *)self signalInsertDatasourceReply:v40 != 0];
      goto LABEL_22;
    }

    _PFAssertFailHandler();
    goto LABEL_26;
  }

  importViewController = [objc_opt_class() importMediaURLs];
  if (![importViewController count])
  {
    goto LABEL_5;
  }

  v13 = [(PHImportUrlSource *)[PUImportPPTImportSource alloc] initWithURLs:importViewController];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  mEMORY[0x1E6978878] = [MEMORY[0x1E6978878] sharedInstance];
  [mEMORY[0x1E69DC668] importController:mEMORY[0x1E6978878] addedImportSource:v13];

  mEMORY[0x1E69C3630] = [MEMORY[0x1E69C3630] sharedController];
  mEMORY[0x1E6978878]2 = [MEMORY[0x1E6978878] sharedInstance];
  [mEMORY[0x1E69C3630] importController:mEMORY[0x1E6978878]2 addedImportSource:v13];

  objc_storeWeak(&self->_currentImportSource, v13);
  importController2 = [(PUImportPPTDriver *)self importController];
  objc_storeWeak(&self->_importController, importController2);

  v19 = objc_loadWeakRetained(&self->_importController);
  if (!v19)
  {
LABEL_26:
    _PFAssertFailHandler();
LABEL_27:
    _PFAssertFailHandler();
    goto LABEL_28;
  }

LABEL_5:
  importViewController2 = [(PUImportPPTDriver *)self importViewController];
  importDataSourceManager2 = [importViewController2 importDataSourceManager];
  objc_storeWeak(&self->_dataSourceManager, importDataSourceManager2);

  v22 = objc_loadWeakRetained(&self->_importController);
  if (!v22)
  {
LABEL_12:
    [(PUImportPPTDriver *)self signalInsertDatasourceReply:v22 != 0];
    goto LABEL_13;
  }

  v23 = objc_loadWeakRetained(&self->_dataSourceManager);

  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = objc_loadWeakRetained(&self->_importController);
  self->_loadingContentStarted = [v24 isLoadingContent];

  v25 = objc_loadWeakRetained(&self->_importController);
  [v25 registerChangeObserver:self context:PXImportControllerObserverContext_32648];

  v26 = objc_loadWeakRetained(&self->_dataSourceManager);
  [v26 registerChangeObserver:self context:PXImportAssetsDataSourceManagerObserverContext_32649];

  v27 = objc_loadWeakRetained(&self->_mediaProvider);
  if (v27)
  {
    goto LABEL_10;
  }

  mediaProvider2 = [(PUImportPPTDriver *)self mediaProvider];
  objc_storeWeak(&self->_mediaProvider, mediaProvider2);

  v29 = objc_loadWeakRetained(&self->_mediaProvider);
  if (!v29)
  {
LABEL_29:
    v54 = _PFAssertFailHandler();
    [(PUImportPPTDriver *)v54 additionalResults];
    return;
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_ppt_mediaProviderDidProcessAsset_ name:*MEMORY[0x1E69C4088] object:0];

LABEL_10:
  options3 = [(PUImportPPTDriver *)self options];
  v32 = [options3 objectForKeyedSubscript:@"PUImportPPTDriverNavigateToImportTabKey"];
  [v32 BOOLValue];

  options4 = [(PUImportPPTDriver *)self options];
  v34 = [options4 objectForKeyedSubscript:@"PUImportPPTDriverReplyWhenMediaProviderReadyKey"];
  bOOLValue3 = [v34 BOOLValue];

  if (bOOLValue3)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_endTime = v36;
    goto LABEL_12;
  }

LABEL_13:

LABEL_22:
}

- (PUImportPPTDriver)init
{
  v6.receiver = self;
  v6.super_class = PUImportPPTDriver;
  v2 = [(PUImportPPTDriver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    extraResults = v2->_extraResults;
    v2->_extraResults = v3;
  }

  return v2;
}

+ (NSArray)importMediaURLs
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"/Developer/PhotosImport/DCIM"];
  v4 = MEMORY[0x1E695DFF8];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v6 = @"/Library/Wallpaper/Stills/iPad";
  }

  else
  {
    v6 = @"/Library/Wallpaper/Stills/iPhone";
  }

  v7 = [v4 URLWithString:v6];

  path = [v3 path];
  v9 = [defaultManager fileExistsAtPath:path];

  v10 = v3;
  if (((v9 & 1) != 0 || ([v7 path], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(defaultManager, "fileExistsAtPath:", v11), v11, v10 = v7, v12)) && (v13 = v10) != 0)
  {
    v14 = v13;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    AddFileURLsFromDirectoryWithDepthToArray(v14, 2, v15);

    return v15;
  }

  else
  {
    v17 = _PFAssertFailHandler();
    AddFileURLsFromDirectoryWithDepthToArray(v17, v18, v19);
  }

  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PUImportPPTDriver_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_32707 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_32707, block);
  }

  v2 = sharedInstance_sSharedInstance;

  return v2;
}

uint64_t __35__PUImportPPTDriver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end