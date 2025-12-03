@interface PUActivitySharingController
- (BOOL)_shouldIncrementShareCountForActivityType:(id)type;
- (BOOL)activityViewControllerShouldCancelAfterPreparationCanceled:(id)canceled;
- (NSArray)selectedAssets;
- (NSDictionary)selectedAssetsByAssetCollection;
- (PHAsset)currentAsset;
- (PUActivitySharingController)init;
- (PUActivitySharingController)initWithActivitySharingConfiguration:(id)configuration;
- (PUActivitySharingController)new;
- (PUActivityViewController)internalActivityViewController;
- (PUCarouselSharingViewController)carouselViewController;
- (PXActivitySharingControllerDelegate)delegate;
- (PXActivityViewController)activityViewController;
- (PXSelectionSnapshot)selectionSnapshot;
- (id)_assetItemsForAssetsFetchResult:(id)result;
- (id)_createActivityViewControllerWithActivities:(id)activities;
- (id)activityViewControllerIfAvailable;
- (id)photosDataSource;
- (void)_activitySharingControllerWillDismissActivityViewController;
- (void)_activityViewControllerDidCompleteWithActivityType:(id)type success:(BOOL)success error:(id)error;
- (void)_cancel;
- (void)_cancelPreheatResourcesRequest;
- (void)_createPhotosViewControllerIfNeeded;
- (void)_handlePreheatRequestCompletionForAsset:(id)asset withSuccess:(BOOL)success cancelled:(BOOL)cancelled error:(id)error startTime:(id)time;
- (void)_incrementShareCountForSelectedAssets;
- (void)_preheatResources;
- (void)_updateCarouselSelectionEnabled:(BOOL)enabled;
- (void)_updateExcludedActivityTypes;
- (void)_updatePreheatResourcesRequest;
- (void)_updateSelectedAssetIdentifiers;
- (void)activityViewControllerDidFailAirdropTransfer:(id)transfer;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer;
- (void)activityViewControllerWillStartAirdropTransfer:(id)transfer;
- (void)carouselSharingViewController:(id)controller addAssetItem:(id)item;
- (void)carouselSharingViewController:(id)controller removeAssetItem:(id)item;
- (void)carouselSharingViewController:(id)controller replaceAssetItem:(id)item withAssetItem:(id)assetItem;
- (void)carouselSharingViewController:(id)controller setAssetItems:(id)items;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)selectInitialAssets;
@end

@implementation PUActivitySharingController

- (PUActivityViewController)internalActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_internalActivityViewController);

  return WeakRetained;
}

- (PXActivitySharingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updatePreheatResourcesRequest
{
  resourcePreheatingQueue = [(PUActivitySharingController *)self resourcePreheatingQueue];

  if (resourcePreheatingQueue)
  {
    selectedAssets = [(PUActivitySharingController *)self selectedAssets];
    resourcePreheatingQueue2 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PUActivitySharingController__updatePreheatResourcesRequest__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = selectedAssets;
    v6 = selectedAssets;
    dispatch_async(resourcePreheatingQueue2, v7);
  }
}

void __61__PUActivitySharingController__updatePreheatResourcesRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourcesPreheatRequest];

  if (v2)
  {
    v3 = [*(a1 + 32) resourcesPreheatRequest];
    v4 = *(a1 + 40);
    v6 = v3;
    v5 = [v3 asset];
    LOBYTE(v4) = [v4 containsObject:v5];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 32) _cancelPreheatResourcesRequest];
    }
  }
}

- (void)_cancelPreheatResourcesRequest
{
  resourcePreheatingQueue = [(PUActivitySharingController *)self resourcePreheatingQueue];

  if (resourcePreheatingQueue)
  {
    resourcePreheatingQueue2 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PUActivitySharingController__cancelPreheatResourcesRequest__block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(resourcePreheatingQueue2, block);
  }
}

uint64_t __61__PUActivitySharingController__cancelPreheatResourcesRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourcesPreheatRequest];
  [v2 cancelRetrievalRequest];

  v3 = *(a1 + 32);

  return [v3 setResourcesPreheatRequest:0];
}

- (void)_handlePreheatRequestCompletionForAsset:(id)asset withSuccess:(BOOL)success cancelled:(BOOL)cancelled error:(id)error startTime:(id)time
{
  cancelledCopy = cancelled;
  successCopy = success;
  v34 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  errorCopy = error;
  timeCopy = time;
  resourcePreheatingQueue = [(PUActivitySharingController *)self resourcePreheatingQueue];
  dispatch_assert_queue_V2(resourcePreheatingQueue);

  v16 = [MEMORY[0x1E695DF00] now];
  [v16 timeIntervalSinceDate:timeCopy];
  v18 = v17;

  v19 = PLShareSheetGetLog();
  v20 = v19;
  if (successCopy)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [assetCopy uuid];
      v26 = 134218498;
      selfCopy3 = self;
      v28 = 2114;
      v29 = uuid;
      v30 = 2048;
      v31 = v18;
      v22 = "<PUActivitySharingController:%p> Share Sheet Preheat Resources Request finished with success for asset uuid %{public}@. Took %.2f seconds.";
LABEL_7:
      v23 = v20;
      v24 = OS_LOG_TYPE_DEFAULT;
      v25 = 32;
LABEL_10:
      _os_log_impl(&dword_1B36F3000, v23, v24, v22, &v26, v25);
    }
  }

  else if (cancelledCopy)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [assetCopy uuid];
      v26 = 134218498;
      selfCopy3 = self;
      v28 = 2114;
      v29 = uuid;
      v30 = 2048;
      v31 = v18;
      v22 = "<PUActivitySharingController:%p> Share Sheet Preheat Resources Request cancelled for asset uuid %{public}@ after %.2f seconds";
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    uuid = [assetCopy uuid];
    v26 = 134218754;
    selfCopy3 = self;
    v28 = 2048;
    v29 = v18;
    v30 = 2114;
    v31 = uuid;
    v32 = 2114;
    v33 = errorCopy;
    v22 = "<PUActivitySharingController:%p> Share Sheet Preheat Resources Request failed after %.2f seconds for asset uuid %{public}@ with error: %{public}@.";
    v23 = v20;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 42;
    goto LABEL_10;
  }

  [(PUActivitySharingController *)self setResourcesPreheatRequest:0];
}

- (void)_preheatResources
{
  selectedAssets = [(PUActivitySharingController *)self selectedAssets];
  if ([selectedAssets count] == 1)
  {
    firstObject = [selectedAssets firstObject];
    resourcePreheatingQueue = [(PUActivitySharingController *)self resourcePreheatingQueue];

    if (!resourcePreheatingQueue)
    {
      v6 = px_dispatch_queue_create_serial();
      [(PUActivitySharingController *)self setResourcePreheatingQueue:v6];
    }

    resourcePreheatingQueue2 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PUActivitySharingController__preheatResources__block_invoke;
    v9[3] = &unk_1E7B80C38;
    v10 = firstObject;
    selfCopy = self;
    v8 = firstObject;
    dispatch_async(resourcePreheatingQueue2, v9);
  }
}

void __48__PUActivitySharingController__preheatResources__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6978A20]) initWithAsset:*(a1 + 32) requestType:1];
  [*(a1 + 40) setResourcesPreheatRequest:v2];
  v3 = PLShareSheetGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [v4 resourcesPreheatRequest];
    v6 = [v5 asset];
    v7 = [v6 uuid];
    *buf = 134218242;
    v15 = v4;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet Preheat Resources started for asset %{public}@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E695DF00] now];
  objc_initWeak(buf, *(a1 + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__PUActivitySharingController__preheatResources__block_invoke_244;
  v10[3] = &unk_1E7B74718;
  objc_copyWeak(&v13, buf);
  v11 = *(a1 + 32);
  v9 = v8;
  v12 = v9;
  [v2 retrieveRequiredResourcesWithOptions:0 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __48__PUActivitySharingController__preheatResources__block_invoke_244(id *a1, char a2, char a3, uint64_t a4, void *a5)
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v10 = [WeakRetained resourcePreheatingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PUActivitySharingController__preheatResources__block_invoke_2;
  block[3] = &unk_1E7B746F0;
  objc_copyWeak(&v17, a1 + 6);
  v11 = a1[4];
  v18 = a2;
  v19 = a3;
  v14 = v11;
  v15 = v8;
  v16 = a1[5];
  v12 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v17);
}

void __48__PUActivitySharingController__preheatResources__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handlePreheatRequestCompletionForAsset:*(a1 + 32) withSuccess:*(a1 + 64) cancelled:*(a1 + 65) error:*(a1 + 40) startTime:*(a1 + 48)];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  delegate = [(PUActivitySharingController *)self delegate];
  [delegate activitySharingControllerDidCancel:self];
}

- (void)carouselSharingViewController:(id)controller replaceAssetItem:(id)item withAssetItem:(id)assetItem
{
  assetItemCopy = assetItem;
  itemCopy = item;
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController replaceAssetItem:itemCopy withAssetItem:assetItemCopy];

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)carouselSharingViewController:(id)controller setAssetItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  isUsingCustomItems = [internalActivityViewController isUsingCustomItems];

  if (isUsingCustomItems)
  {
    v8 = PLShareSheetGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      internalActivityViewController2 = [(PUActivitySharingController *)self internalActivityViewController];
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = internalActivityViewController2;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Ignoring carousel changes. Using custom items", &v12, 0x16u);
    }
  }

  else
  {
    internalActivityViewController3 = [(PUActivitySharingController *)self internalActivityViewController];
    [internalActivityViewController3 setAssetItems:itemsCopy];

    [(PUActivitySharingController *)self _updateSelectedAssetIdentifiers];
    [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
  }
}

- (void)carouselSharingViewController:(id)controller removeAssetItem:(id)item
{
  itemCopy = item;
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController removeAssetItem:itemCopy];

  asset = [itemCopy asset];

  localIdentifier = [asset localIdentifier];

  internalActivityViewController2 = [(PUActivitySharingController *)self internalActivityViewController];
  _selectedAssetIdentifiers = [internalActivityViewController2 _selectedAssetIdentifiers];
  v10 = [_selectedAssetIdentifiers mutableCopy];

  [v10 removeObject:localIdentifier];
  internalActivityViewController3 = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController3 _setSelectedAssetIdentifiers:v10];

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)carouselSharingViewController:(id)controller addAssetItem:(id)item
{
  itemCopy = item;
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController addAssetItem:itemCopy];

  asset = [itemCopy asset];

  localIdentifier = [asset localIdentifier];

  internalActivityViewController2 = [(PUActivitySharingController *)self internalActivityViewController];
  _selectedAssetIdentifiers = [internalActivityViewController2 _selectedAssetIdentifiers];

  if (([_selectedAssetIdentifiers containsObject:localIdentifier] & 1) == 0)
  {
    if (_selectedAssetIdentifiers)
    {
      array = [_selectedAssetIdentifiers mutableCopy];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    v11 = array;
    [array addObject:localIdentifier];
    internalActivityViewController3 = [(PUActivitySharingController *)self internalActivityViewController];
    [internalActivityViewController3 _setSelectedAssetIdentifiers:v11];
  }

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)_updateSelectedAssetIdentifiers
{
  v3 = MEMORY[0x1E695DFB8];
  selectedAssets = [(PUActivitySharingController *)self selectedAssets];
  v8 = [v3 orderedSetWithArray:selectedAssets];

  v5 = [v8 valueForKey:@"localIdentifier"];
  array = [v5 array];

  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController _setSelectedAssetIdentifiers:array];
}

- (BOOL)activityViewControllerShouldCancelAfterPreparationCanceled:(id)canceled
{
  v14 = *MEMORY[0x1E69E9840];
  canceledCopy = canceled;
  v5 = PLShareSheetGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v12 = 2112;
    v13 = canceledCopy;
    v6 = v9;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "<%@:%p>: preparation was cancelled for activityViewController:%@", &v8, 0x20u);
  }

  [(PUActivitySharingController *)self _cancel];
  return 0;
}

- (void)activityViewControllerDidFailAirdropTransfer:(id)transfer
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet did fail AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:1];
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet did finish AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:1];
  [(PUActivitySharingController *)self _incrementShareCountForSelectedAssets];
}

- (void)activityViewControllerWillStartAirdropTransfer:(id)transfer
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet will start AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:0];
}

- (void)_updateCarouselSelectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x1E69E9840];
  v5 = PLShareSheetGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    selfCopy = self;
    v9 = 1024;
    v10 = enabledCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet update carousel selection enabled: %d", &v7, 0x12u);
  }

  [(PUCarouselSharingViewController *)self->_carouselViewController setSelectionEnabled:enabledCopy];
  mainCollectionView = [(PUCarouselSharingViewController *)self->_carouselViewController mainCollectionView];
  [mainCollectionView reloadData];
}

- (void)_activitySharingControllerWillDismissActivityViewController
{
  delegate = [(PUActivitySharingController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PUActivitySharingController *)self delegate];
    [delegate2 activitySharingControllerWillDismissActivityViewController:self];
  }

  [(PUActivitySharingController *)self _cancelPreheatResourcesRequest];
}

- (void)_cancel
{
  delegate = [(PUActivitySharingController *)self delegate];
  objc_initWeak(&location, self);
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PUActivitySharingController__cancel__block_invoke;
  v7[3] = &unk_1E7B746C8;
  v5 = delegate;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  [internalActivityViewController setCompletionWithItemsHandler:v7];

  internalActivityViewController2 = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController2 _cancel];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__PUActivitySharingController__cancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 activitySharingControllerDidCancel:WeakRetained];
}

- (void)_incrementShareCountForSelectedAssets
{
  v21 = *MEMORY[0x1E69E9840];
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  assets = [internalActivityViewController assets];

  PXIncrementShareCountForAssets();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = assets;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = *MEMORY[0x1E6991E20];
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * v11) px_currentVariationType])
        {
          v12 = MEMORY[0x1E6991F28];
          v18 = v10;
          v19 = v5;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          [v12 sendEvent:@"com.apple.photos.CPAnalytics.sharing.livePhotoShared" withPayload:v13];
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (BOOL)_shouldIncrementShareCountForActivityType:(id)type
{
  typeCopy = type;
  if ([PUActivityViewController isShareActivity:typeCopy])
  {
    v4 = [typeCopy isEqualToString:*MEMORY[0x1E69CDA78]] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (PHAsset)currentAsset
{
  if (self->_usePhotosStack)
  {
    currentAsset = [(PUPhotosSharingStackViewController *)self->_stackViewController currentAsset];
  }

  else
  {
    carouselViewController = [(PUActivitySharingController *)self carouselViewController];
    currentAsset = [carouselViewController currentAsset];
  }

  return currentAsset;
}

- (void)_activityViewControllerDidCompleteWithActivityType:(id)type success:(BOOL)success error:(id)error
{
  successCopy = success;
  v31 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  errorCopy = error;
  v10 = PLShareSheetGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
    v14 = @"NO";
    if (successCopy)
    {
      v14 = @"YES";
    }

    v15 = v14;
    v19 = 138413570;
    v20 = v11;
    v21 = 2048;
    selfCopy = self;
    v23 = 2112;
    v24 = internalActivityViewController;
    v25 = 2112;
    v26 = typeCopy;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "<%@:%p>: activityViewController %@ did complete with activity type:%@ didComplete:%@ error:%@", &v19, 0x3Eu);
  }

  if (successCopy && [(PUActivitySharingController *)self _shouldIncrementShareCountForActivityType:typeCopy])
  {
    [(PUActivitySharingController *)self _incrementShareCountForSelectedAssets];
  }

  if (typeCopy && ((-[PUActivitySharingController internalActivityViewController](self, "internalActivityViewController"), v16 = objc_claimAutoreleasedReturnValue(), [v16 presentingViewController], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) || successCopy))
  {
    delegate = [(PUActivitySharingController *)self delegate];
    [delegate activitySharingController:self didCompleteWithActivityType:typeCopy success:successCopy];
  }

  else
  {
    delegate = [(PUActivitySharingController *)self delegate];
    [delegate activitySharingControllerDidCancel:self];
  }
}

- (void)_updateExcludedActivityTypes
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  if (![(PUActivitySharingController *)self allowsAirPlayActivity])
  {
    [v3 addObject:*MEMORY[0x1E69C3CF0]];
  }

  person = [(PUActivitySharingController *)self person];
  faceCount = [person faceCount];

  if (faceCount <= 1)
  {
    v6 = *MEMORY[0x1E69C3E18];
    v21[0] = *MEMORY[0x1E69C3E60];
    v21[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v3 addObjectsFromArray:v7];
  }

  excludedActivityTypes = [(PUActivitySharingController *)self excludedActivityTypes];
  v9 = [excludedActivityTypes count];

  if (v9)
  {
    excludedActivityTypes2 = [(PUActivitySharingController *)self excludedActivityTypes];
    [v3 addObjectsFromArray:excludedActivityTypes2];
  }

  v11 = PLShareSheetGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = objc_opt_class();
    v17 = 2048;
    selfCopy = self;
    v19 = 2112;
    v20 = v3;
    v12 = v16;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "<%@:%p>: set ExcludedActivityTypes: %@", &v15, 0x20u);
  }

  allObjects = [v3 allObjects];
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  [internalActivityViewController setExcludedActivityTypes:allObjects];
}

- (id)_createActivityViewControllerWithActivities:(id)activities
{
  v46 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = MEMORY[0x1E695DFB8];
  selectedAssets = [(PUActivitySharingController *)self selectedAssets];
  v7 = [v5 orderedSetWithArray:selectedAssets];

  v8 = [v7 valueForKey:@"localIdentifier"];
  array = [v8 array];

  if (self->_usePhotosStack)
  {
    stackViewController = self->_stackViewController;
    if (!stackViewController)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"_stackViewController"}];

      stackViewController = self->_stackViewController;
    }

    assetFetchResult = [(PUPhotosSharingStackViewController *)stackViewController assetFetchResult];
    currentActivityAssetItems = [(PUActivitySharingController *)self _assetItemsForAssetsFetchResult:assetFetchResult];
  }

  else
  {
    carouselViewController = self->_carouselViewController;
    if (!carouselViewController)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"_carouselViewController"}];

      carouselViewController = self->_carouselViewController;
    }

    currentActivityAssetItems = [(PUCarouselSharingViewController *)carouselViewController currentActivityAssetItems];
  }

  firstObject = [v7 firstObject];
  photoLibrary = [firstObject photoLibrary];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke;
  block[3] = &unk_1E7B80DD0;
  v16 = photoLibrary;
  v39 = v16;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v18 = dispatch_get_global_queue(21, 0);
  dispatch_async(v18, v17);

  v19 = [[PUActivityViewController alloc] initWithAssetItems:currentActivityAssetItems photosApplicationActivities:activitiesCopy linkPresentation:0 assetIdentifiers:array sharingViewModel:self->_viewModel];
  [(PUActivityViewController *)v19 setDelegate:self];
  [(PUActivityViewController *)v19 setAirDropDelegate:self];
  [(PUActivityViewController *)v19 setActivitySharingController:self];
  [(PUActivityViewController *)v19 setEnableNewDesignInPhotos:1];
  [(PUActivityViewController *)v19 setAllowsCustomPresentationStyle:1];
  [(PUActivityViewController *)v19 setModalPresentationStyle:2];
  presentationController = [(PUActivityViewController *)v19 presentationController];
  [presentationController setDelegate:self];

  [(PUActivityViewController *)v19 setSharingStyle:0];
  v21 = 88;
  if (self->_usePhotosStack)
  {
    v21 = 16;
  }

  [(PUActivityViewController *)v19 setPhotosCarouselViewController:*(&self->super.isa + v21)];
  v22 = PLShareSheetGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    *buf = 138412802;
    v41 = v23;
    v42 = 2048;
    selfCopy = self;
    v44 = 2112;
    v45 = v19;
    v24 = v23;
    _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "<%@:%p>: creating PUActivityViewController:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v19);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke_228;
  aBlock[3] = &unk_1E7B746A0;
  objc_copyWeak(&v35, &location);
  objc_copyWeak(&v36, buf);
  v25 = _Block_copy(aBlock);
  [(PUActivityViewController *)v19 setCompletionWithItemsHandler:v25];
  [(PUActivityViewController *)v19 setReadyForInteraction:0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke_2_230;
  v31[3] = &unk_1E7B76F10;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, buf);
  v26 = _Block_copy(v31);
  [(PUActivityViewController *)v19 _setShareSheetReadyToInteractHandler:v26];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v19;
}

void __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke_228(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained allowsEmbedding];

  if ((v11 & 1) == 0)
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    [v12 setAirDropDelegate:0];
  }

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 _activityViewControllerDidCompleteWithActivityType:v9 success:a3 error:v8];
}

void __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke_2_230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setReadyForInteraction:1];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _preheatResources];
}

- (id)_assetItemsForAssetsFetchResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(resultCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = resultCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [PUActivityAssetItem alloc];
        v12 = [(PUActivityAssetItem *)v11 initWithAsset:v10, v14];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)selectInitialAssets
{
  viewModel = [(PUActivitySharingController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  viewModel2 = [(PUActivitySharingController *)self viewModel];
  collectionListFetchResult = [viewModel2 collectionListFetchResult];
  [selectionManager selectInitialAssetsInAssetCollections:collectionListFetchResult];

  [(PUActivitySharingController *)self _updateSelectedAssetIdentifiers];
}

- (NSArray)selectedAssets
{
  viewModel = [(PUActivitySharingController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  viewModel2 = [(PUActivitySharingController *)self viewModel];
  collectionListFetchResult = [viewModel2 collectionListFetchResult];
  v7 = [selectionManager selectedAssetsWithAssetCollectionOrdering:collectionListFetchResult];

  return v7;
}

- (NSDictionary)selectedAssetsByAssetCollection
{
  viewModel = [(PUActivitySharingController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  selectedAssetsByAssetCollection = [selectionManager selectedAssetsByAssetCollection];

  return selectedAssetsByAssetCollection;
}

- (PXSelectionSnapshot)selectionSnapshot
{
  viewModel = [(PUActivitySharingController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  return selectionSnapshot;
}

- (id)photosDataSource
{
  viewModel = [(PUActivitySharingController *)self viewModel];
  photosDataSource = [viewModel photosDataSource];

  return photosDataSource;
}

- (PXActivityViewController)activityViewController
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_internalActivityViewController);

  if (!WeakRetained)
  {
    if (self->_activityViewControllerWasCreated)
    {
      v5 = PLShareSheetGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = objc_opt_class();
        v16 = 2048;
        selfCopy = self;
        v6 = v15;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "<%@:%p>: Accessing lazy activityViewController getter when it has been dealloced already.", buf, 0x16u);
      }
    }

    self->_activityViewControllerWasCreated = 1;
    viewModel = [(PUActivitySharingController *)self viewModel];
    selectionManager = [viewModel selectionManager];
    isAnyAssetSelected = [selectionManager isAnyAssetSelected];

    if ((isAnyAssetSelected & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"self.viewModel.selectionManager.isAnyAssetSelected"}];
    }

    v10 = [(PUActivitySharingController *)self _createActivityViewControllerWithActivities:self->_activities];
    objc_storeWeak(&self->_internalActivityViewController, v10);

    [(PUActivitySharingController *)self _updateExcludedActivityTypes];
  }

  v11 = objc_loadWeakRetained(&self->_internalActivityViewController);

  return v11;
}

- (id)activityViewControllerIfAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  internalActivityViewController = [(PUActivitySharingController *)self internalActivityViewController];
  if (!internalActivityViewController)
  {
    activityViewControllerWasCreated = self->_activityViewControllerWasCreated;
    v5 = PLShareSheetGetLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (activityViewControllerWasCreated)
    {
      if (v6)
      {
        v10 = 138412546;
        v11 = objc_opt_class();
        v12 = 2048;
        selfCopy2 = self;
        v7 = v11;
        v8 = "<%@:%p>:  Accessing activityViewControllerIfAvailable when it has been dealloced already.";
LABEL_7:
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, v8, &v10, 0x16u);
      }
    }

    else if (v6)
    {
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2048;
      selfCopy2 = self;
      v7 = v11;
      v8 = "<%@:%p>:  Accessing activityViewControllerIfAvailable before it has been created.";
      goto LABEL_7;
    }
  }

  return internalActivityViewController;
}

- (PUCarouselSharingViewController)carouselViewController
{
  if (self->_usePhotosStack)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:134 description:@"Attempting to obtain carousel when using photos stack view"];
  }

  carouselViewController = self->_carouselViewController;

  return carouselViewController;
}

- (void)_createPhotosViewControllerIfNeeded
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_usePhotosStack)
  {
    if (self->_stackViewController)
    {
      v3 = PLShareSheetGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2048;
        selfCopy2 = self;
        v4 = v17;
        v5 = "<%@:%p>: _createPhotosViewControllerIfNeeded called for a non-nil _stackViewController...";
LABEL_8:
        _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, v5, &v16, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v6 = [[PUPhotosSharingStackViewController alloc] initWithAssetFetchResult:self->_initialAssetsFetchResult];
    stackViewController = self->_stackViewController;
    self->_stackViewController = v6;

    MEMORY[0x1EEE66BB8](v6, stackViewController);
  }

  else
  {
    if (self->_carouselViewController)
    {
      v3 = PLShareSheetGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = objc_opt_class();
        v18 = 2048;
        selfCopy2 = self;
        v4 = v17;
        v5 = "<%@:%p>: _createPhotosViewControllerIfNeeded called for a non-nil _carouselViewController...";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    v8 = [PUCarouselSharingViewController alloc];
    collectionListFetchResult = [(PUActivitySharingViewModel *)self->_viewModel collectionListFetchResult];
    assetsFetchResultsByAssetCollection = self->_assetsFetchResultsByAssetCollection;
    selectionManager = [(PUActivitySharingViewModel *)self->_viewModel selectionManager];
    v12 = [(PUCarouselSharingViewController *)v8 initWithPhotoCollectionsFetchResult:collectionListFetchResult assetsFetchResultsByAssetCollection:assetsFetchResultsByAssetCollection selection:selectionManager];

    [(PUCarouselSharingViewController *)v12 setDelegate:self];
    photosDataSource = [(PUActivitySharingViewModel *)self->_viewModel photosDataSource];
    [(PUCarouselSharingViewController *)v12 setPhotosDataSource:photosDataSource];

    selectionManager2 = [(PUActivitySharingViewModel *)self->_viewModel selectionManager];
    [selectionManager2 setDataSource:v12];

    carouselViewController = self->_carouselViewController;
    self->_carouselViewController = v12;
  }
}

- (PUActivitySharingController)initWithActivitySharingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"activitySharingConfiguration"}];
  }

  v23.receiver = self;
  v23.super_class = PUActivitySharingController;
  v6 = [(PUActivitySharingController *)&v23 init];
  if (v6)
  {
    v7 = [[PUActivitySharingViewModel alloc] initWithActivitySharingConfiguration:configurationCopy];
    viewModel = v6->_viewModel;
    v6->_viewModel = v7;

    assetsFetchResultsByAssetCollection = [configurationCopy assetsFetchResultsByAssetCollection];
    assetsFetchResultsByAssetCollection = v6->_assetsFetchResultsByAssetCollection;
    v6->_assetsFetchResultsByAssetCollection = assetsFetchResultsByAssetCollection;

    v6->_allowsAirPlayActivity = [configurationCopy allowsAirPlayActivity];
    person = [configurationCopy person];
    person = v6->_person;
    v6->_person = person;

    excludedActivityTypes = [configurationCopy excludedActivityTypes];
    excludedActivityTypes = v6->_excludedActivityTypes;
    v6->_excludedActivityTypes = excludedActivityTypes;

    activities = [configurationCopy activities];
    activities = v6->_activities;
    v6->_activities = activities;

    initialAssetsFetchResult = [configurationCopy initialAssetsFetchResult];
    initialAssetsFetchResult = v6->_initialAssetsFetchResult;
    v6->_initialAssetsFetchResult = initialAssetsFetchResult;

    v19 = _os_feature_enabled_impl();
    v6->_usePhotosStack = v19;
    if (v19 && !v6->_initialAssetsFetchResult)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"PUActivitySharingController.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"_initialAssetsFetchResult"}];
    }

    [(PUActivitySharingController *)v6 _createPhotosViewControllerIfNeeded];
  }

  return v6;
}

- (PUActivitySharingController)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:84 description:{@"%s is not available as initializer", "-[PUActivitySharingController new]"}];

  abort();
}

- (PUActivitySharingController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PUActivitySharingController init]"}];

  abort();
}

@end