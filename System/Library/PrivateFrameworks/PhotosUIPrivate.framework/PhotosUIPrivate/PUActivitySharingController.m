@interface PUActivitySharingController
- (BOOL)_shouldIncrementShareCountForActivityType:(id)a3;
- (BOOL)activityViewControllerShouldCancelAfterPreparationCanceled:(id)a3;
- (NSArray)selectedAssets;
- (NSDictionary)selectedAssetsByAssetCollection;
- (PHAsset)currentAsset;
- (PUActivitySharingController)init;
- (PUActivitySharingController)initWithActivitySharingConfiguration:(id)a3;
- (PUActivitySharingController)new;
- (PUActivityViewController)internalActivityViewController;
- (PUCarouselSharingViewController)carouselViewController;
- (PXActivitySharingControllerDelegate)delegate;
- (PXActivityViewController)activityViewController;
- (PXSelectionSnapshot)selectionSnapshot;
- (id)_assetItemsForAssetsFetchResult:(id)a3;
- (id)_createActivityViewControllerWithActivities:(id)a3;
- (id)activityViewControllerIfAvailable;
- (id)photosDataSource;
- (void)_activitySharingControllerWillDismissActivityViewController;
- (void)_activityViewControllerDidCompleteWithActivityType:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_cancel;
- (void)_cancelPreheatResourcesRequest;
- (void)_createPhotosViewControllerIfNeeded;
- (void)_handlePreheatRequestCompletionForAsset:(id)a3 withSuccess:(BOOL)a4 cancelled:(BOOL)a5 error:(id)a6 startTime:(id)a7;
- (void)_incrementShareCountForSelectedAssets;
- (void)_preheatResources;
- (void)_updateCarouselSelectionEnabled:(BOOL)a3;
- (void)_updateExcludedActivityTypes;
- (void)_updatePreheatResourcesRequest;
- (void)_updateSelectedAssetIdentifiers;
- (void)activityViewControllerDidFailAirdropTransfer:(id)a3;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)a3;
- (void)activityViewControllerWillStartAirdropTransfer:(id)a3;
- (void)carouselSharingViewController:(id)a3 addAssetItem:(id)a4;
- (void)carouselSharingViewController:(id)a3 removeAssetItem:(id)a4;
- (void)carouselSharingViewController:(id)a3 replaceAssetItem:(id)a4 withAssetItem:(id)a5;
- (void)carouselSharingViewController:(id)a3 setAssetItems:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
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
  v3 = [(PUActivitySharingController *)self resourcePreheatingQueue];

  if (v3)
  {
    v4 = [(PUActivitySharingController *)self selectedAssets];
    v5 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__PUActivitySharingController__updatePreheatResourcesRequest__block_invoke;
    v7[3] = &unk_1E7B80C38;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async(v5, v7);
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
  v3 = [(PUActivitySharingController *)self resourcePreheatingQueue];

  if (v3)
  {
    v4 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PUActivitySharingController__cancelPreheatResourcesRequest__block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

uint64_t __61__PUActivitySharingController__cancelPreheatResourcesRequest__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resourcesPreheatRequest];
  [v2 cancelRetrievalRequest];

  v3 = *(a1 + 32);

  return [v3 setResourcesPreheatRequest:0];
}

- (void)_handlePreheatRequestCompletionForAsset:(id)a3 withSuccess:(BOOL)a4 cancelled:(BOOL)a5 error:(id)a6 startTime:(id)a7
{
  v9 = a5;
  v10 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [(PUActivitySharingController *)self resourcePreheatingQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [MEMORY[0x1E695DF00] now];
  [v16 timeIntervalSinceDate:v14];
  v18 = v17;

  v19 = PLShareSheetGetLog();
  v20 = v19;
  if (v10)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 uuid];
      v26 = 134218498;
      v27 = self;
      v28 = 2114;
      v29 = v21;
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

  else if (v9)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v12 uuid];
      v26 = 134218498;
      v27 = self;
      v28 = 2114;
      v29 = v21;
      v30 = 2048;
      v31 = v18;
      v22 = "<PUActivitySharingController:%p> Share Sheet Preheat Resources Request cancelled for asset uuid %{public}@ after %.2f seconds";
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v21 = [v12 uuid];
    v26 = 134218754;
    v27 = self;
    v28 = 2048;
    v29 = v18;
    v30 = 2114;
    v31 = v21;
    v32 = 2114;
    v33 = v13;
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
  v3 = [(PUActivitySharingController *)self selectedAssets];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
    v5 = [(PUActivitySharingController *)self resourcePreheatingQueue];

    if (!v5)
    {
      v6 = px_dispatch_queue_create_serial();
      [(PUActivitySharingController *)self setResourcePreheatingQueue:v6];
    }

    v7 = [(PUActivitySharingController *)self resourcePreheatingQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PUActivitySharingController__preheatResources__block_invoke;
    v9[3] = &unk_1E7B80C38;
    v10 = v4;
    v11 = self;
    v8 = v4;
    dispatch_async(v7, v9);
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(PUActivitySharingController *)self delegate];
  [v4 activitySharingControllerDidCancel:self];
}

- (void)carouselSharingViewController:(id)a3 replaceAssetItem:(id)a4 withAssetItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PUActivitySharingController *)self internalActivityViewController];
  [v9 replaceAssetItem:v8 withAssetItem:v7];

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)carouselSharingViewController:(id)a3 setAssetItems:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PUActivitySharingController *)self internalActivityViewController];
  v7 = [v6 isUsingCustomItems];

  if (v7)
  {
    v8 = PLShareSheetGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = [(PUActivitySharingController *)self internalActivityViewController];
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "<%@:%p>: Ignoring carousel changes. Using custom items", &v12, 0x16u);
    }
  }

  else
  {
    v11 = [(PUActivitySharingController *)self internalActivityViewController];
    [v11 setAssetItems:v5];

    [(PUActivitySharingController *)self _updateSelectedAssetIdentifiers];
    [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
  }
}

- (void)carouselSharingViewController:(id)a3 removeAssetItem:(id)a4
{
  v5 = a4;
  v6 = [(PUActivitySharingController *)self internalActivityViewController];
  [v6 removeAssetItem:v5];

  v7 = [v5 asset];

  v12 = [v7 localIdentifier];

  v8 = [(PUActivitySharingController *)self internalActivityViewController];
  v9 = [v8 _selectedAssetIdentifiers];
  v10 = [v9 mutableCopy];

  [v10 removeObject:v12];
  v11 = [(PUActivitySharingController *)self internalActivityViewController];
  [v11 _setSelectedAssetIdentifiers:v10];

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)carouselSharingViewController:(id)a3 addAssetItem:(id)a4
{
  v5 = a4;
  v6 = [(PUActivitySharingController *)self internalActivityViewController];
  [v6 addAssetItem:v5];

  v7 = [v5 asset];

  v13 = [v7 localIdentifier];

  v8 = [(PUActivitySharingController *)self internalActivityViewController];
  v9 = [v8 _selectedAssetIdentifiers];

  if (([v9 containsObject:v13] & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF70] array];
    }

    v11 = v10;
    [v10 addObject:v13];
    v12 = [(PUActivitySharingController *)self internalActivityViewController];
    [v12 _setSelectedAssetIdentifiers:v11];
  }

  [(PUActivitySharingController *)self _updatePreheatResourcesRequest];
}

- (void)_updateSelectedAssetIdentifiers
{
  v3 = MEMORY[0x1E695DFB8];
  v4 = [(PUActivitySharingController *)self selectedAssets];
  v8 = [v3 orderedSetWithArray:v4];

  v5 = [v8 valueForKey:@"localIdentifier"];
  v6 = [v5 array];

  v7 = [(PUActivitySharingController *)self internalActivityViewController];
  [v7 _setSelectedAssetIdentifiers:v6];
}

- (BOOL)activityViewControllerShouldCancelAfterPreparationCanceled:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLShareSheetGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    v6 = v9;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "<%@:%p>: preparation was cancelled for activityViewController:%@", &v8, 0x20u);
  }

  [(PUActivitySharingController *)self _cancel];
  return 0;
}

- (void)activityViewControllerDidFailAirdropTransfer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet did fail AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:1];
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet did finish AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:1];
  [(PUActivitySharingController *)self _incrementShareCountForSelectedAssets];
}

- (void)activityViewControllerWillStartAirdropTransfer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PLShareSheetGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = self;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet will start AirDrop transfer", &v5, 0xCu);
  }

  [(PUActivitySharingController *)self _updateCarouselSelectionEnabled:0];
}

- (void)_updateCarouselSelectionEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = PLShareSheetGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = self;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "<PUActivitySharingController:%p> Share Sheet update carousel selection enabled: %d", &v7, 0x12u);
  }

  [(PUCarouselSharingViewController *)self->_carouselViewController setSelectionEnabled:v3];
  v6 = [(PUCarouselSharingViewController *)self->_carouselViewController mainCollectionView];
  [v6 reloadData];
}

- (void)_activitySharingControllerWillDismissActivityViewController
{
  v3 = [(PUActivitySharingController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PUActivitySharingController *)self delegate];
    [v5 activitySharingControllerWillDismissActivityViewController:self];
  }

  [(PUActivitySharingController *)self _cancelPreheatResourcesRequest];
}

- (void)_cancel
{
  v3 = [(PUActivitySharingController *)self delegate];
  objc_initWeak(&location, self);
  v4 = [(PUActivitySharingController *)self internalActivityViewController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PUActivitySharingController__cancel__block_invoke;
  v7[3] = &unk_1E7B746C8;
  v5 = v3;
  v8 = v5;
  objc_copyWeak(&v9, &location);
  [v4 setCompletionWithItemsHandler:v7];

  v6 = [(PUActivitySharingController *)self internalActivityViewController];
  [v6 _cancel];

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
  v2 = [(PUActivitySharingController *)self internalActivityViewController];
  v3 = [v2 assets];

  PXIncrementShareCountForAssets();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
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

- (BOOL)_shouldIncrementShareCountForActivityType:(id)a3
{
  v3 = a3;
  if ([PUActivityViewController isShareActivity:v3])
  {
    v4 = [v3 isEqualToString:*MEMORY[0x1E69CDA78]] ^ 1;
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
    v2 = [(PUPhotosSharingStackViewController *)self->_stackViewController currentAsset];
  }

  else
  {
    v3 = [(PUActivitySharingController *)self carouselViewController];
    v2 = [v3 currentAsset];
  }

  return v2;
}

- (void)_activityViewControllerDidCompleteWithActivityType:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PLShareSheetGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = [(PUActivitySharingController *)self internalActivityViewController];
    v14 = @"NO";
    if (v6)
    {
      v14 = @"YES";
    }

    v15 = v14;
    v19 = 138413570;
    v20 = v11;
    v21 = 2048;
    v22 = self;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEFAULT, "<%@:%p>: activityViewController %@ did complete with activity type:%@ didComplete:%@ error:%@", &v19, 0x3Eu);
  }

  if (v6 && [(PUActivitySharingController *)self _shouldIncrementShareCountForActivityType:v8])
  {
    [(PUActivitySharingController *)self _incrementShareCountForSelectedAssets];
  }

  if (v8 && ((-[PUActivitySharingController internalActivityViewController](self, "internalActivityViewController"), v16 = objc_claimAutoreleasedReturnValue(), [v16 presentingViewController], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17) || v6))
  {
    v18 = [(PUActivitySharingController *)self delegate];
    [v18 activitySharingController:self didCompleteWithActivityType:v8 success:v6];
  }

  else
  {
    v18 = [(PUActivitySharingController *)self delegate];
    [v18 activitySharingControllerDidCancel:self];
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

  v4 = [(PUActivitySharingController *)self person];
  v5 = [v4 faceCount];

  if (v5 <= 1)
  {
    v6 = *MEMORY[0x1E69C3E18];
    v21[0] = *MEMORY[0x1E69C3E60];
    v21[1] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [(PUActivitySharingController *)self excludedActivityTypes];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(PUActivitySharingController *)self excludedActivityTypes];
    [v3 addObjectsFromArray:v10];
  }

  v11 = PLShareSheetGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = self;
    v19 = 2112;
    v20 = v3;
    v12 = v16;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "<%@:%p>: set ExcludedActivityTypes: %@", &v15, 0x20u);
  }

  v13 = [v3 allObjects];
  v14 = [(PUActivitySharingController *)self internalActivityViewController];
  [v14 setExcludedActivityTypes:v13];
}

- (id)_createActivityViewControllerWithActivities:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v5 = MEMORY[0x1E695DFB8];
  v6 = [(PUActivitySharingController *)self selectedAssets];
  v7 = [v5 orderedSetWithArray:v6];

  v8 = [v7 valueForKey:@"localIdentifier"];
  v9 = [v8 array];

  if (self->_usePhotosStack)
  {
    stackViewController = self->_stackViewController;
    if (!stackViewController)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"_stackViewController"}];

      stackViewController = self->_stackViewController;
    }

    v11 = [(PUPhotosSharingStackViewController *)stackViewController assetFetchResult];
    v12 = [(PUActivitySharingController *)self _assetItemsForAssetsFetchResult:v11];
  }

  else
  {
    carouselViewController = self->_carouselViewController;
    if (!carouselViewController)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"_carouselViewController"}];

      carouselViewController = self->_carouselViewController;
    }

    v12 = [(PUCarouselSharingViewController *)carouselViewController currentActivityAssetItems];
  }

  v14 = [v7 firstObject];
  v15 = [v14 photoLibrary];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PUActivitySharingController__createActivityViewControllerWithActivities___block_invoke;
  block[3] = &unk_1E7B80DD0;
  v16 = v15;
  v39 = v16;
  v17 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  v18 = dispatch_get_global_queue(21, 0);
  dispatch_async(v18, v17);

  v19 = [[PUActivityViewController alloc] initWithAssetItems:v12 photosApplicationActivities:v30 linkPresentation:0 assetIdentifiers:v9 sharingViewModel:self->_viewModel];
  [(PUActivityViewController *)v19 setDelegate:self];
  [(PUActivityViewController *)v19 setAirDropDelegate:self];
  [(PUActivityViewController *)v19 setActivitySharingController:self];
  [(PUActivityViewController *)v19 setEnableNewDesignInPhotos:1];
  [(PUActivityViewController *)v19 setAllowsCustomPresentationStyle:1];
  [(PUActivityViewController *)v19 setModalPresentationStyle:2];
  v20 = [(PUActivityViewController *)v19 presentationController];
  [v20 setDelegate:self];

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
    v43 = self;
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

- (id)_assetItemsForAssetsFetchResult:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
  v3 = [(PUActivitySharingController *)self viewModel];
  v4 = [v3 selectionManager];
  v5 = [(PUActivitySharingController *)self viewModel];
  v6 = [v5 collectionListFetchResult];
  [v4 selectInitialAssetsInAssetCollections:v6];

  [(PUActivitySharingController *)self _updateSelectedAssetIdentifiers];
}

- (NSArray)selectedAssets
{
  v3 = [(PUActivitySharingController *)self viewModel];
  v4 = [v3 selectionManager];
  v5 = [(PUActivitySharingController *)self viewModel];
  v6 = [v5 collectionListFetchResult];
  v7 = [v4 selectedAssetsWithAssetCollectionOrdering:v6];

  return v7;
}

- (NSDictionary)selectedAssetsByAssetCollection
{
  v2 = [(PUActivitySharingController *)self viewModel];
  v3 = [v2 selectionManager];
  v4 = [v3 selectedAssetsByAssetCollection];

  return v4;
}

- (PXSelectionSnapshot)selectionSnapshot
{
  v2 = [(PUActivitySharingController *)self viewModel];
  v3 = [v2 selectionManager];
  v4 = [v3 selectionSnapshot];

  return v4;
}

- (id)photosDataSource
{
  v2 = [(PUActivitySharingController *)self viewModel];
  v3 = [v2 photosDataSource];

  return v3;
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
        v17 = self;
        v6 = v15;
        _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "<%@:%p>: Accessing lazy activityViewController getter when it has been dealloced already.", buf, 0x16u);
      }
    }

    self->_activityViewControllerWasCreated = 1;
    v7 = [(PUActivitySharingController *)self viewModel];
    v8 = [v7 selectionManager];
    v9 = [v8 isAnyAssetSelected];

    if ((v9 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"self.viewModel.selectionManager.isAnyAssetSelected"}];
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
  v3 = [(PUActivitySharingController *)self internalActivityViewController];
  if (!v3)
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
        v13 = self;
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
      v13 = self;
      v7 = v11;
      v8 = "<%@:%p>:  Accessing activityViewControllerIfAvailable before it has been created.";
      goto LABEL_7;
    }
  }

  return v3;
}

- (PUCarouselSharingViewController)carouselViewController
{
  if (self->_usePhotosStack)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:134 description:@"Attempting to obtain carousel when using photos stack view"];
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
        v19 = self;
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
        v19 = self;
        v4 = v17;
        v5 = "<%@:%p>: _createPhotosViewControllerIfNeeded called for a non-nil _carouselViewController...";
        goto LABEL_8;
      }

LABEL_9:

      return;
    }

    v8 = [PUCarouselSharingViewController alloc];
    v9 = [(PUActivitySharingViewModel *)self->_viewModel collectionListFetchResult];
    assetsFetchResultsByAssetCollection = self->_assetsFetchResultsByAssetCollection;
    v11 = [(PUActivitySharingViewModel *)self->_viewModel selectionManager];
    v12 = [(PUCarouselSharingViewController *)v8 initWithPhotoCollectionsFetchResult:v9 assetsFetchResultsByAssetCollection:assetsFetchResultsByAssetCollection selection:v11];

    [(PUCarouselSharingViewController *)v12 setDelegate:self];
    v13 = [(PUActivitySharingViewModel *)self->_viewModel photosDataSource];
    [(PUCarouselSharingViewController *)v12 setPhotosDataSource:v13];

    v14 = [(PUActivitySharingViewModel *)self->_viewModel selectionManager];
    [v14 setDataSource:v12];

    carouselViewController = self->_carouselViewController;
    self->_carouselViewController = v12;
  }
}

- (PUActivitySharingController)initWithActivitySharingConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"activitySharingConfiguration"}];
  }

  v23.receiver = self;
  v23.super_class = PUActivitySharingController;
  v6 = [(PUActivitySharingController *)&v23 init];
  if (v6)
  {
    v7 = [[PUActivitySharingViewModel alloc] initWithActivitySharingConfiguration:v5];
    viewModel = v6->_viewModel;
    v6->_viewModel = v7;

    v9 = [v5 assetsFetchResultsByAssetCollection];
    assetsFetchResultsByAssetCollection = v6->_assetsFetchResultsByAssetCollection;
    v6->_assetsFetchResultsByAssetCollection = v9;

    v6->_allowsAirPlayActivity = [v5 allowsAirPlayActivity];
    v11 = [v5 person];
    person = v6->_person;
    v6->_person = v11;

    v13 = [v5 excludedActivityTypes];
    excludedActivityTypes = v6->_excludedActivityTypes;
    v6->_excludedActivityTypes = v13;

    v15 = [v5 activities];
    activities = v6->_activities;
    v6->_activities = v15;

    v17 = [v5 initialAssetsFetchResult];
    initialAssetsFetchResult = v6->_initialAssetsFetchResult;
    v6->_initialAssetsFetchResult = v17;

    v19 = _os_feature_enabled_impl();
    v6->_usePhotosStack = v19;
    if (v19 && !v6->_initialAssetsFetchResult)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:v6 file:@"PUActivitySharingController.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"_initialAssetsFetchResult"}];
    }

    [(PUActivitySharingController *)v6 _createPhotosViewControllerIfNeeded];
  }

  return v6;
}

- (PUActivitySharingController)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:84 description:{@"%s is not available as initializer", "-[PUActivitySharingController new]"}];

  abort();
}

- (PUActivitySharingController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUActivitySharingController.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PUActivitySharingController init]"}];

  abort();
}

@end