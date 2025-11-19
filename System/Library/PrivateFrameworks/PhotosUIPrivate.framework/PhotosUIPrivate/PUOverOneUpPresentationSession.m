@interface PUOverOneUpPresentationSession
- (BOOL)_dismissActivityViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_dismissAvalancheReviewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_dismissEditViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_dismissPhotoMarkupViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_dismissSlideshowViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (BOOL)_popToOneUpFromViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)_presentActivityViewController:(id)a3;
- (BOOL)_presentAvalancheReviewController:(id)a3;
- (BOOL)_presentEditViewController:(id)a3;
- (BOOL)_presentPhotoMarkupViewController:(id)a3;
- (BOOL)_presentScreenRoutePickerViewController:(id)a3;
- (BOOL)_presentSlideshowViewController:(id)a3;
- (BOOL)isPresentingAnOverOneUpViewController;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)presentViewController:(id)a3 animated:(BOOL)a4;
- (CGPoint)photosSharingTransition:(id)a3 contentOffsetForAssetReference:(id)a4;
- (CGRect)_frameAtIndexPath:(id)a3;
- (CGRect)_frameForAssetReference:(id)a3;
- (CGRect)_frameForItemAtIndexPath:(id)a3 inAssetCollectionsDataSource:(id)a4 allowZoom:(BOOL)a5;
- (CGSize)collectionViewContentSize;
- (PUOverOneUpPresentationSession)initWithActivitySharingActionPerformer:(id)a3;
- (PUOverOneUpPresentationSessionBarsDelegate)barsDelegate;
- (PUOverOneUpPresentationSessionDelegate)delegate;
- (PXActivitySharingControllerDelegate)activitySharingControllerDelegate;
- (id)_assetCollectionsDataSourceForCurrentModalViewController;
- (id)_assetReferenceAtGlobalIndex:(int64_t)a3;
- (id)_assetReferenceFromAsset:(id)a3 hintIndexPath:(id)a4 hintCollection:(id)a5;
- (id)_assetsDataSource;
- (id)_currentTileController;
- (id)_indexPathForGlobalIndex:(int64_t)a3;
- (id)_tilingView;
- (id)_viewModel;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)photosSharingTransition:(id)a3 layoutForAssetReference:(id)a4;
- (id)photosSharingTransitionTransitioningView:(id)a3;
- (id)ppt_activityViewController;
- (id)viewController;
- (id)viewToHideWhilePresentingWithTransition:(id)a3;
- (int64_t)_globalIndexForAssetReference:(id)a3;
- (int64_t)_globalIndexForIndexPath:(id)a3;
- (int64_t)_numberOfItems;
- (int64_t)_tileCountForCurrentModalViewController;
- (void)_activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5;
- (void)_activitySharingControllerDidCancel:(id)a3;
- (void)_finalizeAvalancheReviewControllerDismiss;
- (void)_finishOverOneUpPresentationSessionDismissForced:(BOOL)a3 animated:(BOOL)a4;
- (void)_invalidatePresentedViewControllers;
- (void)_performNavigationRequestForAssetDisplayDescriptor:(id)a3 completionHandler:(id)a4;
- (void)_prepareForActivitySharingControllerDismiss:(id)a3 completionHandler:(id)a4;
- (void)_removeViewController:(id)a3;
- (void)_updatePresentedViewControllersIfNeeded;
- (void)activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5;
- (void)activitySharingControllerDidCancel:(id)a3;
- (void)activitySharingControllerWillDismissActivityViewController:(id)a3;
- (void)avalancheReviewControllerDidComplete:(id)a3 animated:(BOOL)a4;
- (void)avalancheReviewControllerDidComplete:(id)a3 withAsset:(id)a4 animated:(BOOL)a5;
- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)editController:(id)a3 didFinishPreparingForTransitionAfterEditingPhoto:(id)a4;
- (void)editController:(id)a3 didFinishPreparingForTransitionAfterEditingVideo:(id)a4 modificationDate:(id)a5 seekTime:(id *)a6;
- (void)oneUpSharingAnimationController:(id)a3 setVisibility:(BOOL)a4 forAssetReference:(id)a5;
- (void)photoMarkupController:(id)a3 didFinishWithSavedAsset:(id)a4;
- (void)photosSharingTransition:(id)a3 setVisibility:(BOOL)a4 forAssetReference:(id)a5;
- (void)ppt_cancelActivity;
- (void)ppt_dismissShareSheetWithCompletion:(id)a3;
- (void)ppt_presentPhotoEditor;
- (void)ppt_presentShareSheetWithCompletion:(id)a3;
- (void)ppt_shareUsingActivityOfType:(id)a3;
- (void)setBarsDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4;
@end

@implementation PUOverOneUpPresentationSession

- (PXActivitySharingControllerDelegate)activitySharingControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingControllerDelegate);

  return WeakRetained;
}

- (PUOverOneUpPresentationSessionBarsDelegate)barsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_barsDelegate);

  return WeakRetained;
}

- (PUOverOneUpPresentationSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)ppt_presentPhotoEditor
{
  v9 = [(PUOverOneUpPresentationSession *)self viewController];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v9 px_descriptionForAssertionMessage];
      [v5 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1183 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v7, v8}];
    }
  }

  v4 = [v9 ppt_actionsController];
  [v4 performSimpleActionWithActionType:15];
}

- (void)ppt_dismissShareSheetWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(PUOverOneUpPresentationSession *)self activitySharingController];
  v11 = [v6 activityViewControllerIfAvailable];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v11 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1178 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v9, v10}];
    }
  }

  [(PUOverOneUpPresentationSession *)self _dismissActivityViewController:v11 animated:1 completionHandler:v5];
}

- (void)ppt_cancelActivity
{
  v4 = [(PUOverOneUpPresentationSession *)self activitySharingController];
  v9 = [v4 activityViewControllerIfAvailable];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v9 px_descriptionForAssertionMessage];
      [v5 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1173 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v7, v8}];
    }
  }

  [v9 ppt_cancelActivity];
}

- (void)ppt_shareUsingActivityOfType:(id)a3
{
  v5 = a3;
  v6 = [(PUOverOneUpPresentationSession *)self activitySharingController];
  v11 = [v6 activityViewControllerIfAvailable];

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v11 px_descriptionForAssertionMessage];
      [v7 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1164 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v9, v10}];
    }
  }

  [v11 ppt_performActivityOfType:v5];
}

- (id)ppt_activityViewController
{
  v2 = [(PUOverOneUpPresentationSession *)self activitySharingController];
  v3 = [v2 activityViewControllerIfAvailable];

  return v3;
}

- (void)ppt_presentShareSheetWithCompletion:(id)a3
{
  aBlock = a3;
  v5 = [(PUOverOneUpPresentationSession *)self viewController];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v5 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1152 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v11, v12}];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = _Block_copy(aBlock);
    v7 = pptAfterPresentationCompletion;
    pptAfterPresentationCompletion = v6;

    v8 = [v5 ppt_actionsController];
    [v8 performShareAction];
  }
}

- (id)_assetReferenceAtGlobalIndex:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(PUOverOneUpPresentationSession *)self _indexPathForGlobalIndex:?];
  if (v5)
  {
    v6 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v7 = [v6 assetReferenceAtIndexPath:v5];
  }

  else
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "globalIndex %li out of bounds", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)_globalIndexForAssetReference:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  v6 = [v5 assetReferenceForAssetReference:v4];

  if (!v4 || ([v6 indexPath], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[PUOverOneUpPresentationSession _globalIndexForIndexPath:](self, "_globalIndexForIndexPath:", v7), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "global index not found for assetReference %@", &v11, 0xCu);
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (int64_t)_numberOfItems
{
  v2 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  v3 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v4 = [v2 numberOfSubItemsAtIndexPath:v3];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:i];
      v6 += [v2 numberOfSubItemsAtIndexPath:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_indexPathForGlobalIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || [(PUOverOneUpPresentationSession *)self _numberOfItems]<= a3)
  {
    v13 = 0;
  }

  else
  {
    v5 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v7 = [v5 numberOfSubItemsAtIndexPath:v6];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v10];
        v12 = [v5 numberOfSubItemsAtIndexPath:v11] + v9;
        if (v12 > a3)
        {
          break;
        }

        ++v10;
        v9 = v12;
        if (v8 == v10)
        {
          goto LABEL_7;
        }
      }

      v13 = [MEMORY[0x1E696AC88] indexPathForItem:a3 - v9 inSection:v10];
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  return v13;
}

- (int64_t)_globalIndexForIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v7 = [v5 numberOfSubItemsAtIndexPath:v6];
    v8 = [v4 section];
    v9 = [v4 item];
    if (v8 >= v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v8];
      if (v10 >= [v5 numberOfSubItemsAtIndexPath:v11])
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (v8 >= 1)
      {
        v12 = 0;
        v13 = v11;
        do
        {
          v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v12];

          v10 += [v5 numberOfSubItemsAtIndexPath:v11];
          ++v12;
          v13 = v11;
        }

        while (v8 != v12);
      }
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"PUPhotosSharingSelectionBadgeKind"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"PUPhotosSharingOptionBadgeKind") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"PUAvalancheReviewBadgeKind"))
  {
    v8 = [(PUOverOneUpPresentationSession *)self layoutAttributesForItemAtIndexPath:v7];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (v17)
    {
      v18 = *MEMORY[0x1E695F058];
      v19 = *(MEMORY[0x1E695F058] + 8);
      v20 = *(MEMORY[0x1E695F058] + 16);
      v21 = *(MEMORY[0x1E695F058] + 24);
      v22 = [(PUActivitySharingController *)self->_activitySharingController carouselViewController];
      [v22 frameForBadgeOfKind:v6 forItemFrame:v7 atIndexPath:{v10, v12, v14, v16}];
    }

    else
    {
      v23 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
      [v23 selectionBadgeFrameForItemFrame:v7 atIndexPath:{v10, v12, v14, v16}];
      v25 = v24;
      v27 = v26;
      v20 = v28;
      v21 = v29;

      v18 = v10 + v25;
      v19 = v12 + v27;
    }

    v30 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:v6 withIndexPath:v7];

    [v30 setFrame:{v18, v19, v20, v21}];
    [v30 setZIndex:1];
    [v30 setAlpha:0.0];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
  [(PUOverOneUpPresentationSession *)self _frameForItemAtIndexPath:v4 inAssetCollectionsDataSource:v5 allowZoom:1];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v4];

  [v14 setFrame:{v7, v9, v11, v13}];

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PUOverOneUpPresentationSession *)self _tileCountForCurrentModalViewController];
  v9 = [(PUOverOneUpPresentationSession *)self viewController];
  v10 = [v9 view];
  [v10 frame];
  v12 = v11;

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = fmax(CGRectGetMinX(v21) / v12, 0.0);
  v14 = [MEMORY[0x1E695DF70] array];
  if (v8 > v13)
  {
    while (1)
    {
      v15 = [(PUOverOneUpPresentationSession *)self activitySharingController];
      if (v15)
      {
        v16 = [(PUOverOneUpPresentationSession *)self _assetReferenceAtGlobalIndex:v13];
        v17 = [v16 indexPath];
      }

      else
      {
        v17 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
      }

      v18 = [(PUOverOneUpPresentationSession *)self layoutAttributesForItemAtIndexPath:v17];
      [v18 frame];
      v22.size.width = v12 - (v22.origin.x - v13 * v12);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      if (!CGRectIntersectsRect(v22, v23))
      {
        break;
      }

      [v14 addObject:v18];
      ++v13;

      if (v8 == v13)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return v14;
}

- (CGSize)collectionViewContentSize
{
  v3 = [(PUOverOneUpPresentationSession *)self _tileCountForCurrentModalViewController];
  v4 = [(PUOverOneUpPresentationSession *)self viewController];
  v5 = [v4 view];
  [v5 frame];
  v7 = v6;
  v9 = v8;

  v10 = v7 * v3;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)_tileCountForCurrentModalViewController
{
  v3 = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (v3)
  {

    return [(PUOverOneUpPresentationSession *)self _numberOfItems];
  }

  else
  {
    v5 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    if (!v5)
    {
      return 0;
    }

    v6 = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
    v7 = [v6 assetCollectionsFetchResult];
    v8 = [v6 assetCollectionsFetchResult];
    v9 = [v8 count];

    v10 = 0;
    if (v9)
    {
      v11 = 0;
      do
      {
        v12 = [v7 objectAtIndex:v11];
        v13 = [v6 assetsInAssetCollection:v12];
        v10 += [v13 count];

        ++v11;
        v14 = [v6 assetCollectionsFetchResult];
        v15 = [v14 count];
      }

      while (v11 < v15);
    }

    return v10;
  }
}

- (id)_assetCollectionsDataSourceForCurrentModalViewController
{
  v3 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

  if (v3)
  {
    v4 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  }

  else
  {
    v5 = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (v5)
    {
      v4 = [(PUActivitySharingController *)self->_activitySharingController carouselViewController];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)oneUpSharingAnimationController:(id)a3 setVisibility:(BOOL)a4 forAssetReference:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(PUOverOneUpPresentationSession *)self viewController];
  v9 = v8;
  if (v5)
  {
    [v8 oneUpAssetTransitionDidEnd:v7];
  }

  else
  {
    [v8 oneUpAssetTransitionWillBegin:v7];
  }
}

- (id)viewToHideWhilePresentingWithTransition:(id)a3
{
  v5 = [(PUOverOneUpPresentationSession *)self viewController];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v5 px_descriptionForAssertionMessage];
      [v10 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:929 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v12, v13}];
    }
  }

  v6 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

  if (v6)
  {
    v7 = [v5 chromeView];
  }

  else
  {
    v7 = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (v7)
    {
      v8 = [v5 navigationController];
      v7 = [v8 toolbar];
    }
  }

  return v7;
}

- (id)photosSharingTransitionTransitioningView:(id)a3
{
  v3 = [(PUOverOneUpPresentationSession *)self viewController];
  v4 = [v3 view];
  v5 = [v4 superview];

  return v5;
}

- (void)photosSharingTransition:(id)a3 setVisibility:(BOOL)a4 forAssetReference:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(PUOverOneUpPresentationSession *)self viewController];
  v9 = v8;
  if (v5)
  {
    [v8 oneUpAssetTransitionDidEnd:v7];
  }

  else
  {
    [v8 oneUpAssetTransitionWillBegin:v7];
  }
}

- (CGPoint)photosSharingTransition:(id)a3 contentOffsetForAssetReference:(id)a4
{
  v5 = a4;
  v6 = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
  v7 = [v5 indexPath];

  [(PUOverOneUpPresentationSession *)self _frameForItemAtIndexPath:v7 inAssetCollectionsDataSource:v6 allowZoom:0];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)photosSharingTransition:(id)a3 layoutForAssetReference:(id)a4
{
  v4 = [[PUCollectionViewLayoutCache alloc] initWithProvider:self];

  return v4;
}

- (CGRect)_frameAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUOverOneUpPresentationSession *)self _tilingView];
  v6 = [v5 layout];
  v7 = [v6 layoutInfoForTileWithIndexPath:v4 kind:@"PUTileKindItemContent"];

  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 coordinateSystem];
  v17 = [v5 contentCoordinateSystem];
  v18 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v16, v17, v9, v11);
  v20 = v19;

  v21 = [(PUOverOneUpPresentationSession *)self viewController];
  v22 = [v21 view];
  [v5 convertRect:v22 toView:{v18, v20, v13, v15}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)_frameForAssetReference:(id)a3
{
  v5 = a3;
  v6 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  v7 = [v5 indexPath];
  v8 = [v6 assetAtIndexPath:v7];
  v9 = [v8 isEqual:v5];

  v10 = v5;
  if ((v9 & 1) == 0)
  {
    v11 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v10 = [v11 assetReferenceForAssetReference:v5];
  }

  v12 = [(PUOverOneUpPresentationSession *)self _tilingView];
  v13 = [v12 layout];
  if (!v13)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:869 description:@"Missing layout"];
  }

  v14 = [v10 indexPath];
  v15 = [v13 layoutInfoForTileWithIndexPath:v14 kind:@"PUTileKindItemContent"];

  if (v15)
  {
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v15 coordinateSystem];
    v25 = [v12 contentCoordinateSystem];
    v26 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v24, v25, v17, v19);
    v28 = v27;

    v29 = [(PUOverOneUpPresentationSession *)self viewController];
    v30 = [v29 view];
    [v12 convertRect:v30 toView:{v26, v28, v21, v23}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v32 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 16);
    v38 = *(MEMORY[0x1E695F050] + 24);
  }

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)_frameForItemAtIndexPath:(id)a3 inAssetCollectionsDataSource:(id)a4 allowZoom:(BOOL)a5
{
  v67 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 assetCollectionsFetchResult];
  v11 = [(PUOverOneUpPresentationSession *)self _viewModel];
  v12 = [v11 currentAssetReference];

  if (v10 && (v13 = [v10 count], v13 > objc_msgSend(v8, "section")))
  {
    v14 = [v10 objectAtIndex:{objc_msgSend(v8, "section")}];
    v15 = [v9 assetsInAssetCollection:v14];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:817 description:@"No datasource or index out of bounds"];

    v15 = 0;
    v14 = 0;
  }

  v17 = [v15 count];
  v69 = v10;
  v70 = v9;
  v68 = v14;
  if ([v8 item] >= v17)
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = [v14 uuid];
    v18 = [v22 stringWithFormat:@"PUOverOneUpPresentationSession: IndexPath %@ does not exist in collection %@ with count %lu", v8, v23, v17];

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:828 description:v18];
    v24 = 0;
  }

  else
  {
    v18 = [v15 objectAtIndex:{objc_msgSend(v8, "item")}];
    v19 = [v12 indexPath];
    if (v19)
    {
      v20 = [MEMORY[0x1E696AFB0] UUID];
      v21 = [v20 UUIDString];
    }

    else
    {
      v21 = 0;
    }

    v25 = [PUAssetReference alloc];
    v26 = [v12 assetCollection];
    v27 = [v12 indexPath];
    v24 = [(PUAssetReference *)v25 initWithAsset:v18 assetCollection:v26 indexPath:v27 dataSourceIdentifier:v21];
  }

  v28 = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (v28)
  {
    if (v24)
    {
      v29 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
      v30 = [v29 assetReferenceForAssetReference:v24];

      v31 = [(PUOverOneUpPresentationSession *)self _globalIndexForAssetReference:v30];
      if (v30)
      {
        v32 = [(PUAssetReference *)v30 asset];
        v33 = [v12 asset];
        v34 = [v32 isEqual:v33];

        v24 = v30;
      }

      else
      {
        v34 = 0;
        v24 = 0;
      }
    }

    else
    {
      v34 = 0;
      v31 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v35 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    v34 = 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 && v35)
    {
      v36 = [v12 asset];
      v37 = [v15 indexOfObject:v36];

      v38 = [v8 item];
      v31 = v38;
      v34 = v37 == 0x7FFFFFFFFFFFFFFFLL || v38 == 0x7FFFFFFFFFFFFFFFLL || v38 == v37;
    }
  }

  v41 = [(PUOverOneUpPresentationSession *)self viewController];
  v42 = [v41 view];
  [v42 frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  if (!v24 || (v34 & v67 & 1) != 0)
  {
    [(PUOverOneUpPresentationSession *)self _frameForAssetReference:v12];
  }

  else
  {
    v51 = [(PUAssetReference *)v24 asset];
    v52 = [v51 pixelWidth];
    v53 = [(PUAssetReference *)v24 asset];
    v54 = [v53 pixelHeight];

    v55 = PURectWithSizeThatFitsInRect(v52, v54, v44, v46, v48, v50);
  }

  v59 = v56;
  v60 = v57;
  v61 = v58;
  v62 = v55 + v31 * v48;

  v63 = v62;
  v64 = v59;
  v65 = v60;
  v66 = v61;
  result.size.height = v66;
  result.size.width = v65;
  result.origin.y = v64;
  result.origin.x = v63;
  return result;
}

- (void)_activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (!v10)
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "didCompleteWithActivityType: was called whereas self.activitySharingController == nil.", buf, 2u);
    }

    goto LABEL_11;
  }

  if (v5)
  {
    [(PUOverOneUpPresentationSession *)self setActivitySharingController:0];
    v11 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
    [v8 setDelegate:v11];
    [(PUOverOneUpPresentationSession *)self setActivitySharingControllerDelegate:0];
    if (([v9 isEqualToString:*MEMORY[0x1E69C3DB8]] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3D78]) & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3F30]) & 1) != 0 || objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69C3F28]))
    {
      v12 = [v8 selectedAssetsByAssetCollection];
    }

    else
    {
      v12 = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__PUOverOneUpPresentationSession__activitySharingController_didCompleteWithActivityType_success___block_invoke;
    v15[3] = &unk_1E7B7EA98;
    v15[4] = self;
    v16 = v8;
    v17 = v11;
    v18 = v9;
    v19 = v12;
    v13 = v12;
    v14 = v11;
    [(PUOverOneUpPresentationSession *)self _prepareForActivitySharingControllerDismiss:v16 completionHandler:v15];

LABEL_11:
  }
}

void __97__PUOverOneUpPresentationSession__activitySharingController_didCompleteWithActivityType_success___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activityViewControllerIfAvailable];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__PUOverOneUpPresentationSession__activitySharingController_didCompleteWithActivityType_success___block_invoke_2;
  v6[3] = &unk_1E7B7F1D0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  [v2 dismissViewController:v3 animated:1 completionHandler:v6];
}

void __97__PUOverOneUpPresentationSession__activitySharingController_didCompleteWithActivityType_success___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = [*(a1 + 40) sharingActionPerformer];
    [v3 performActionWithActivityType:*(a1 + 48) assetsByAssetCollection:*(a1 + 56)];
  }
}

- (void)_activitySharingControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [v4 setDelegate:v5];

  [(PUOverOneUpPresentationSession *)self setActivitySharingControllerDelegate:0];
  [(PUOverOneUpPresentationSession *)self setActivitySharingController:0];

  [(PUOverOneUpPresentationSession *)self _finishOverOneUpPresentationSessionDismissForced:0 animated:1];
}

- (void)_prepareForActivitySharingControllerDismiss:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 currentAsset];
  v8 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:v7 hintIndexPath:0 hintCollection:0];

  v9 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__PUOverOneUpPresentationSession__prepareForActivitySharingControllerDismiss_completionHandler___block_invoke;
  v11[3] = &unk_1E7B7C940;
  v12 = v6;
  v10 = v6;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v9 completionHandler:v11];
}

uint64_t __96__PUOverOneUpPresentationSession__prepareForActivitySharingControllerDismiss_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)activitySharingController:(id)a3 didCompleteWithActivityType:(id)a4 success:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [v11 activitySharingController:v9 didCompleteWithActivityType:v10 success:v5];

  v17 = v9;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v17 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:742 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v14, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:742 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v14}];
  }

LABEL_3:
  [(PUOverOneUpPresentationSession *)self _activitySharingController:v17 didCompleteWithActivityType:v10 success:v5];
}

- (void)activitySharingControllerWillDismissActivityViewController:(id)a3
{
  v5 = a3;
  v6 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
    [v8 activitySharingControllerWillDismissActivityViewController:v5];
  }

  v14 = v5;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v14 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:735 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:735 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v11}];
  }

LABEL_5:
  [(PUOverOneUpPresentationSession *)self _activitySharingControllerWillDismissActivityViewController:v14];
}

- (void)activitySharingControllerDidCancel:(id)a3
{
  v5 = a3;
  v6 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [v6 activitySharingControllerDidCancel:v5];

  v12 = v5;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    v11 = [v12 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:726 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v9, v11}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:726 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v9}];
  }

LABEL_3:
  [(PUOverOneUpPresentationSession *)self _activitySharingControllerDidCancel:v12];
}

- (void)_finalizeAvalancheReviewControllerDismiss
{
  v3 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [v3 setDelegate:0];

  [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:0];
}

- (void)avalancheReviewControllerDidComplete:(id)a3 animated:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_animated___block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [(PUOverOneUpPresentationSession *)self dismissViewController:a3 animated:a4 completionHandler:v4];
}

- (void)avalancheReviewControllerDidComplete:(id)a3 withAsset:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:a4 hintIndexPath:0 hintCollection:0];
  v10 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_withAsset_animated___block_invoke;
  v12[3] = &unk_1E7B7A3F0;
  v12[4] = self;
  v13 = v8;
  v14 = a5;
  v11 = v8;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v10 completionHandler:v12];
}

uint64_t __90__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_withAsset_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_withAsset_animated___block_invoke_2;
  v5[3] = &unk_1E7B80DD0;
  v5[4] = v2;
  return [v2 dismissViewController:v1 animated:v3 completionHandler:v5];
}

- (void)photoMarkupController:(id)a3 didFinishWithSavedAsset:(id)a4
{
  v5 = a3;
  v6 = [v5 reviewAsset];
  v7 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:v6 hintIndexPath:0 hintCollection:0];
  v8 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v7];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__PUOverOneUpPresentationSession_photoMarkupController_didFinishWithSavedAsset___block_invoke;
  v13 = &unk_1E7B7FB70;
  v14 = self;
  v15 = v5;
  v9 = v5;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v8 completionHandler:&v10];
  [v9 unregisterObserver:{self, v10, v11, v12, v13, v14}];
}

- (void)editController:(id)a3 didFinishPreparingForTransitionAfterEditingVideo:(id)a4 modificationDate:(id)a5 seekTime:(id *)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:a4 hintIndexPath:0 hintCollection:0];
  v13 = [PUAssetDisplayDescriptor alloc];
  buf = *a6;
  v14 = [(PUAssetDisplayDescriptor *)v13 initWithAssetReference:v12 modifiedAfterDate:v11 videoSeekTime:&buf];

  v15 = [(PUOverOneUpPresentationSession *)self viewController];
  v16 = [v15 navigationController];
  v17 = [v16 presentingViewController];
  v18 = [v17 parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 tabBar];
    [v19 setHidden:0];
  }

  v20 = PLOneUpGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.var0) = 138412546;
    *(&buf.var0 + 4) = v14;
    LOWORD(buf.var2) = 2112;
    *(&buf.var2 + 2) = v18;
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "Preparing to perform dismiss Edit for displayDescriptor: %@, parentController: %@", &buf, 0x16u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124__PUOverOneUpPresentationSession_editController_didFinishPreparingForTransitionAfterEditingVideo_modificationDate_seekTime___block_invoke;
  v22[3] = &unk_1E7B7FB70;
  v22[4] = self;
  v23 = v10;
  v21 = v10;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v14 completionHandler:v22];
}

void __124__PUOverOneUpPresentationSession_editController_didFinishPreparingForTransitionAfterEditingVideo_modificationDate_seekTime___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLOneUpGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "Performing dismiss Edit with success: %@, error: %@", &v8, 0x16u);
  }

  [*(a1 + 32) dismissViewController:*(a1 + 40) animated:1 completionHandler:0];
}

- (void)editController:(id)a3 didFinishPreparingForTransitionAfterEditingPhoto:(id)a4
{
  v6 = a3;
  v7 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:a4 hintIndexPath:0 hintCollection:0];
  v8 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v7];
  v9 = [(PUOverOneUpPresentationSession *)self viewController];
  v10 = [v9 navigationController];
  v11 = [v10 presentingViewController];
  v12 = [v11 parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 tabBar];
    [v13 setHidden:0];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PUOverOneUpPresentationSession_editController_didFinishPreparingForTransitionAfterEditingPhoto___block_invoke;
  v15[3] = &unk_1E7B7FB70;
  v15[4] = self;
  v16 = v6;
  v14 = v6;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v8 completionHandler:v15];
}

- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4
{
  v6 = a3;
  v7 = [a4 firstObject];
  v8 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:v7 hintIndexPath:0 hintCollection:0];
  v9 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PUOverOneUpPresentationSession_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke;
  v11[3] = &unk_1E7B7FB70;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v9 completionHandler:v11];
}

- (void)_performNavigationRequestForAssetDisplayDescriptor:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v10 = [v6 dateWithTimeIntervalSinceNow:2.0];
  v9 = [(PUOverOneUpPresentationSession *)self viewController];
  [v9 navigateToAssetDisplayDescriptor:v8 beforeDate:v10 completionHandler:v7];
}

- (id)_assetReferenceFromAsset:(id)a3 hintIndexPath:(id)a4 hintCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = v9;
    v12 = v10;
    if (!v11)
    {
      v11 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];

      if (v11)
      {
        v13 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];
        v11 = [v13 indexPath];
      }
    }

    if (!v12)
    {
      v12 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];

      if (v12)
      {
        v14 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];
        v12 = [v14 assetCollection];
      }
    }

    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];

    v17 = [[PUAssetReference alloc] initWithAsset:v8 assetCollection:v12 indexPath:v11 dataSourceIdentifier:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  [(PUOverOneUpPresentationSession *)self _invalidatePresentedViewControllers];
  [(PUOverOneUpPresentationSession *)self _updatePresentedViewControllersIfNeeded];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v6)
  {
    v9 = 1;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = *v15;
  v9 = 1;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      v12 = [v11 conformsToProtocol:&unk_1F2BCA758];
      if ((v9 & v12) == 1)
      {
        v9 = [v11 prepareForDismissingForced:v3];
        if (v9)
        {
          continue;
        }
      }

      else
      {
        v9 &= v12 ^ 1;
        if (v9)
        {
          continue;
        }
      }

      if (!v3)
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_16:

  [(PUOverOneUpPresentationSession *)self _finishOverOneUpPresentationSessionDismissForced:v9 | v3 animated:0];
  return v9;
}

- (void)_removeViewController:(id)a3
{
  v9 = a3;
  v4 = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];

  if (v4 == v9)
  {
    [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:0];
  }

  else
  {
    v5 = [(PUOverOneUpPresentationSession *)self _slideshowViewController];

    if (v5 == v9)
    {
      [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:0];
    }

    else
    {
      v6 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

      if (v6 == v9)
      {
        [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:0];
      }

      else
      {
        v7 = [(PUOverOneUpPresentationSession *)self _editViewController];

        v8 = v9;
        if (v7 != v9)
        {
          goto LABEL_10;
        }

        [(PUOverOneUpPresentationSession *)self _setEditViewController:0];
      }
    }
  }

  v8 = v9;
LABEL_10:
}

- (BOOL)_popToOneUpFromViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUOverOneUpPresentationSession *)self viewController];
  v8 = [v7 navigationController];
  v9 = [v8 viewControllers];
  v10 = [v9 indexOfObject:v7];
  v11 = [v9 containsObject:v6];
  if (v8)
  {
    v12 = v10 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = v13 & v11;
  if ((v13 & v11) == 1)
  {
    v21 = v4;
    v15 = [v9 px_subarrayAfterIndex:v10];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PUOverOneUpPresentationSession *)self _removeViewController:*(*(&v22 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v8 pu_popToViewController:v7 animated:v21 interactive:0];
  }

  return v14;
}

- (BOOL)_dismissAvalancheReviewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(PUOverOneUpPresentationSession *)self viewController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PUOverOneUpPresentationSession__dismissAvalancheReviewController_animated_completionHandler___block_invoke;
  v11[3] = &unk_1E7B80B48;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  [v8 pu_dismissViewControllerAnimated:v5 interactive:0 completion:v11];

  return 1;
}

uint64_t __95__PUOverOneUpPresentationSession__dismissAvalancheReviewController_animated_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _finalizeAvalancheReviewControllerDismiss];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)_dismissActivityViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PUOverOneUpPresentationSession__dismissActivityViewController_animated_completionHandler___block_invoke;
  v11[3] = &unk_1E7B80B48;
  v11[4] = self;
  v12 = v8;
  v9 = v8;
  [a3 pu_dismissViewControllerAnimated:v5 interactive:0 completion:v11];

  return 1;
}

uint64_t __92__PUOverOneUpPresentationSession__dismissActivityViewController_animated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activitySharingControllerDelegate];
  v3 = [*(a1 + 32) activitySharingController];
  [v3 setDelegate:v2];

  [*(a1 + 32) setActivitySharingControllerDelegate:0];
  [*(a1 + 32) setActivitySharingController:0];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)_dismissPhotoMarkupViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(PUOverOneUpPresentationSession *)self viewController];
  v11 = [v10 navigationController];
  [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:0];
  v12 = [v11 presentedViewController];

  if (v12 == v8)
  {
    v13 = 1;
    [v11 dismissViewControllerAnimated:1 completion:0];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = [(PUOverOneUpPresentationSession *)self _popToOneUpFromViewController:v8 animated:v6];
  if (v9)
  {
LABEL_3:
    v9[2](v9);
  }

LABEL_4:

  return v13;
}

- (BOOL)_dismissEditViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(PUOverOneUpPresentationSession *)self _popToOneUpFromViewController:a3 animated:v5];
  [(PUOverOneUpPresentationSession *)self _setEditViewController:0];
  if (v8)
  {
    v8[2](v8);
  }

  v10 = PLOneUpGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_DEBUG, "Actually dismissed Edit VC success? %@", &v13, 0xCu);
  }

  return v9;
}

- (BOOL)_dismissSlideshowViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  [a3 dismissViewControllerAnimated:a4 completion:a5];
  [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:0];
  return 1;
}

- (void)dismissViewController:(id)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUOverOneUpPresentationSession_dismissViewController_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B3B0;
  v10 = v9;
  v22 = v10;
  objc_copyWeak(&v23, &location);
  v11 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissPhotoMarkupViewController:v8 animated:v6 completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissSlideshowViewController:v8 animated:v6 completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissAvalancheReviewController:v8 animated:v6 completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PUOverOneUpPresentationSession *)self _dismissEditViewController:v8 animated:v6 completionHandler:v11])
    {
      goto LABEL_15;
    }

    v18 = PLOneUpGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 presentingViewController];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "modalPresentationStyle")}];
      *buf = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_1B36F3000, v18, OS_LOG_TYPE_ERROR, "Failed to dismiss view controller: %@. presentingVC: %@, modalPresentationStyle: %@", buf, 0x20u);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(PUOverOneUpPresentationSession *)self _dismissActivityViewController:v8 animated:v6 completionHandler:v11];
LABEL_7:
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = [v8 presentingViewController];
  v14 = v13 == 0;

  if (!v14)
  {
    if ([v8 modalPresentationStyle] != 7)
    {
      v17 = [(PUOverOneUpPresentationSession *)self viewController];
      [v17 dismissViewControllerAnimated:v6 completion:v11];

      goto LABEL_15;
    }

    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(PUOverOneUpPresentationSession *)self viewController];
      *buf = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "can't dismiss %@ from presumed presenting view controller %@", buf, 0x16u);
    }
  }

  v11[2](v11);
LABEL_15:

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __83__PUOverOneUpPresentationSession_dismissViewController_animated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishOverOneUpPresentationSessionDismissForced:0 animated:0];
}

- (BOOL)_presentScreenRoutePickerViewController:(id)a3
{
  v4 = a3;
  if (self->_barsDelegateFlags.respondsToBarButtonItem)
  {
    v5 = [(PUOverOneUpPresentationSession *)self barsDelegate];
    v6 = [v5 overOneUpPresentationSession:self barButtonItemForActivityType:*MEMORY[0x1E69C3CF0]];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 popoverPresentationController];
  [v7 setBarButtonItem:v6];

  v8 = [(PUOverOneUpPresentationSession *)self viewController];
  [v8 presentViewController:v4 animated:1 completion:0];

  return 1;
}

- (BOOL)_presentSlideshowViewController:(id)a3
{
  v4 = a3;
  [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:v4];
  [v4 setDelegate:self];
  v5 = [[PUSlideshowNavigationController alloc] initWithRootViewController:v4];

  [(PUSlideshowNavigationController *)v5 setModalTransitionStyle:2];
  v6 = [(PUOverOneUpPresentationSession *)self viewController];
  [v6 presentViewController:v5 animated:1 completion:0];

  return 1;
}

- (BOOL)_presentAvalancheReviewController:(id)a3
{
  v5 = a3;
  [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:v5];
  [v5 setDelegate:self];
  v6 = [[PUNavigationController alloc] initWithRootViewController:v5];

  v37 = v6;
  [(PUNavigationController *)v6 setModalPresentationStyle:0];
  v7 = [(PUOverOneUpPresentationSession *)self _viewModel];
  v8 = [v7 currentAssetReference];

  v9 = [v8 asset];
  v10 = [v9 burstIdentifier];
  if (!v10)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:380 description:@"Current asset must have an avalanche UUID"];
  }

  if ([v9 sourceType] == 4)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc(MEMORY[0x1E69BE2B0]);
  v13 = [v9 photoLibrary];
  v14 = [v13 mainQueueConcurrencyPhotoLibrary];
  v15 = [v12 initWithUUID:v10 sourceType:v11 photoLibrary:v14];

  v16 = [v9 pl_managedAsset];
  v36 = v15;
  v17 = [v15 assets];
  v18 = [v17 indexOfObject:v16];

  v35 = v10;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:386 description:@"expect asset"];
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:0];
  v20 = [MEMORY[0x1E696AFB0] UUID];
  v21 = [v20 UUIDString];

  v22 = [PUAssetReference alloc];
  v23 = [v8 asset];
  v24 = [v8 assetCollection];
  v25 = [(PUAssetReference *)v22 initWithAsset:v23 assetCollection:v24 indexPath:v19 dataSourceIdentifier:v21];

  v26 = objc_alloc_init(PUOneUpPhotosSharingTransitionContext);
  v27 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [(PUPhotosSharingTransitionContext *)v26 setAssetCollectionsDataSource:v27];

  [(PUOneUpPhotosSharingTransitionContext *)v26 setCurrentAssetReference:v25];
  v28 = [(PUViewControllerTransition *)[PUOneUpPhotosSharingTransition alloc] initWithDuration:0.300000012];
  v29 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [(PUOneUpPhotosSharingTransition *)v28 setSharingTransitionViewController:v29];

  v30 = [(PUOverOneUpPresentationSession *)self viewController];
  [(PUOneUpPhotosSharingTransition *)v28 setPresentingViewController:v30];

  [(PUOneUpPhotosSharingTransition *)v28 setOneUpPhotosSharingTransitionContext:v26];
  [(PUOneUpPhotosSharingTransition *)v28 setDelegate:self];
  v31 = [(PUOverOneUpPresentationSession *)self viewController];
  [v31 pu_presentViewController:v37 transition:v28 animated:1 interactive:0 completion:0];

  return 1;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [MEMORY[0x1E69C3A18] sharedInstance];
  v9 = [v8 enableOneUpAnimation];

  if (v9)
  {
    v10 = v7 == 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v11 = [(PUOverOneUpPresentationSession *)self _viewModel];
    v12 = [v11 currentAssetReference];

    v13 = objc_alloc_init(PUOneUpPhotosSharingTransitionContext);
    [(PUOneUpPhotosSharingTransitionContext *)v13 setCurrentAssetReference:v12];
    v14 = [PUOneUpSharingAnimationController alloc];
    v15 = [(PUOverOneUpPresentationSession *)self viewController];
    v16 = [(PUOneUpSharingAnimationController *)v14 initWithTransitionContext:v13 presentingViewController:v15];

    [(PUOneUpSharingAnimationController *)v16 setDelegate:self];
  }

  return v16;
}

- (BOOL)_presentActivityViewController:(id)a3
{
  v5 = a3;
  v6 = [v5 activitySharingController];
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  objc_storeStrong(&self->_activitySharingController, v6);
  v7 = [v6 delegate];
  objc_storeWeak(&self->_activitySharingControllerDelegate, v7);

  [v6 setDelegate:self];
  if (pptAfterPresentationCompletion)
  {
    v8 = [pptAfterPresentationCompletion copy];
    [v5 setPpt_readyToInteractHandler:v8];

    v9 = pptAfterPresentationCompletion;
    pptAfterPresentationCompletion = 0;
  }

  [v5 setTransitioningDelegate:self];
  v10 = [(PUOverOneUpPresentationSession *)self viewController];
  [v10 presentViewController:v5 animated:1 completion:0];

  return 1;
}

- (BOOL)_presentPhotoMarkupViewController:(id)a3
{
  v4 = a3;
  [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:v4];
  [v4 registerObserver:self];
  v5 = [(PUOverOneUpPresentationSession *)self viewController];
  v6 = [v5 navigationController];

  if ([v6 isNavigationBarHidden])
  {
    v7 = objc_alloc_init(PUCrossfadeNavigationTransition);
    [v6 pu_pushViewController:v4 withTransition:v7 animated:1 isInteractive:0];
  }

  else
  {
    v7 = objc_alloc_init(PUCrossfadeModalTransition);
    [v6 pu_presentViewController:v4 transition:v7 animated:1 interactive:0 completion:0];
  }

  return 1;
}

- (BOOL)_presentEditViewController:(id)a3
{
  v4 = a3;
  [(PUOverOneUpPresentationSession *)self _setEditViewController:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setPresentationDelegate:self];
  }

  v5 = objc_alloc_init(PUOneUpAssetNavigationTransition);
  v6 = [(PUOverOneUpPresentationSession *)self viewController];
  v7 = [v6 navigationController];
  v8 = [v7 presentingViewController];
  v9 = [v8 parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 tabBar];
    [v10 setHidden:1];
  }

  v11 = [(PUOverOneUpPresentationSession *)self viewController];
  v12 = [v11 navigationController];
  [v12 pu_pushViewController:v4 withTransition:v5 animated:1 isInteractive:0];

  return 1;
}

- (BOOL)presentViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_delegateFlags.respondsToIsReady || (-[PUOverOneUpPresentationSession delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 overOneUpPresentationSessionPresentingViewControllerIsReady:self], v7, v8))
  {
    v9 = [(PUOverOneUpPresentationSession *)self _viewModel];
    v10 = [v9 currentAssetReference];

    v11 = [v10 copy];
    [(PUOverOneUpPresentationSession *)self _setStashedAssetReference:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(PUOverOneUpPresentationSession *)self _presentPhotoMarkupViewController:v6])
      {
LABEL_23:
        v13 = [(PUOverOneUpPresentationSession *)self viewController];
        [v13 presentViewController:v6 animated:v4 completion:0];
        v12 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(PUOverOneUpPresentationSession *)self _presentAvalancheReviewController:v6])
        {
          goto LABEL_23;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(PUOverOneUpPresentationSession *)self _presentSlideshowViewController:v6])
          {
            goto LABEL_23;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(PUOverOneUpPresentationSession *)self _presentScreenRoutePickerViewController:v6])
            {
              goto LABEL_23;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![(PUOverOneUpPresentationSession *)self _presentEditViewController:v6])
              {
                goto LABEL_23;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PUOverOneUpPresentationSession *)self _presentActivityViewController:v6])
              {
                goto LABEL_23;
              }
            }
          }
        }
      }
    }

    if (!self->_delegateFlags.respondsToDidPresent)
    {
      v12 = 1;
      goto LABEL_26;
    }

    v13 = [(PUOverOneUpPresentationSession *)self delegate];
    [v13 overOneUpPresentationSession:self didPresent:v6];
    v12 = 1;
LABEL_24:

LABEL_26:
    goto LABEL_27;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)_currentTileController
{
  v3 = [(PUOverOneUpPresentationSession *)self _viewModel];
  v4 = [(PUOverOneUpPresentationSession *)self _tilingView];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 currentAssetReference];
    v8 = [v7 indexPath];
    v9 = [v7 dataSourceIdentifier];
    v10 = [v5 presentedTileControllerWithIndexPath:v8 kind:@"PUTileKindItemContent" dataSourceIdentifier:v9];

    v6 = v10;
  }

  return v6;
}

- (id)_assetsDataSource
{
  v2 = [(PUOverOneUpPresentationSession *)self _viewModel];
  v3 = [v2 assetsDataSource];

  return v3;
}

- (id)_viewModel
{
  if (self->_delegateFlags.respondsToBrowsingViewModel)
  {
    v3 = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [v3 overOneUpPresentationSessionBrowserViewModel:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_tilingView
{
  if (self->_delegateFlags.respondsToTilingView)
  {
    v3 = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [v3 overOneUpPresentationSessionTilingView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)viewController
{
  if (self->_delegateFlags.respondsToViewController)
  {
    v3 = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [v3 overOneUpPresentationSessionViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_finishOverOneUpPresentationSessionDismissForced:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  [(PUOverOneUpPresentationSession *)self _invalidatePresentedViewControllers];
  [(PUOverOneUpPresentationSession *)self _updatePresentedViewControllersIfNeeded];
  if (![(PUOverOneUpPresentationSession *)self isPresentingAnOverOneUpViewController]|| v5)
  {
    v7 = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
    if ([v7 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(PUOverOneUpPresentationSession *)self dismissViewController:*(*(&v14 + 1) + 8 * v12++) animated:v4 completionHandler:0, v14];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }

    if (self->_delegateFlags.respondsToDidFinish)
    {
      v13 = [(PUOverOneUpPresentationSession *)self delegate];
      [v13 overOneUpPresentationSessionDidFinish:self];
    }
  }
}

- (BOOL)isPresentingAnOverOneUpViewController
{
  v2 = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
  v3 = [v2 anyObject];

  return v3 != 0;
}

- (void)_updatePresentedViewControllersIfNeeded
{
  if ([(PUOverOneUpPresentationSession *)self _needsUpdatePresentedViewControllers])
  {
    [(PUOverOneUpPresentationSession *)self _setNeedsUpdatePresentedViewControllers:0];
    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v3 = [(PUOverOneUpPresentationSession *)self _slideshowViewController];

    if (v3)
    {
      v4 = [(PUOverOneUpPresentationSession *)self _slideshowViewController];
      [v11 addObject:v4];
    }

    v5 = [(PUOverOneUpPresentationSession *)self _editViewController];

    if (v5)
    {
      v6 = [(PUOverOneUpPresentationSession *)self _editViewController];
      [v11 addObject:v6];
    }

    v7 = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];

    if (v7)
    {
      v8 = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];
      [v11 addObject:v8];
    }

    v9 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    if (v9)
    {
      v10 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
      [v11 addObject:v10];
    }

    [(PUOverOneUpPresentationSession *)self _setPresentedViewControllers:v11];
  }
}

- (void)_invalidatePresentedViewControllers
{
  if (![(PUOverOneUpPresentationSession *)self _needsUpdatePresentedViewControllers])
  {
    [(PUOverOneUpPresentationSession *)self _setNeedsUpdatePresentedViewControllers:1];

    [(PUOverOneUpPresentationSession *)self _setPresentedViewControllers:0];
  }
}

- (void)setBarsDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_barsDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_barsDelegate, obj);
    self->_barsDelegateFlags.respondsToBarButtonItem = objc_opt_respondsToSelector() & 1;
    self->_barsDelegateFlags.respondsToDidAppendReviewScreenAction = objc_opt_respondsToSelector() & 1;
  }
}

- (PUOverOneUpPresentationSession)initWithActivitySharingActionPerformer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUOverOneUpPresentationSession;
  v5 = [(PUOverOneUpPresentationSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PUOverOneUpPresentationSession *)v5 setSharingActionPerformer:v4];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToTilingView = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToViewController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToBrowsingViewModel = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidPresent = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidFinish = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToIsReady = objc_opt_respondsToSelector() & 1;
  }
}

@end