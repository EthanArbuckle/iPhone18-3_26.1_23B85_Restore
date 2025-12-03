@interface PUOverOneUpPresentationSession
- (BOOL)_dismissActivityViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)_dismissAvalancheReviewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)_dismissEditViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)_dismissPhotoMarkupViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)_dismissSlideshowViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)_popToOneUpFromViewController:(id)controller animated:(BOOL)animated;
- (BOOL)_presentActivityViewController:(id)controller;
- (BOOL)_presentAvalancheReviewController:(id)controller;
- (BOOL)_presentEditViewController:(id)controller;
- (BOOL)_presentPhotoMarkupViewController:(id)controller;
- (BOOL)_presentScreenRoutePickerViewController:(id)controller;
- (BOOL)_presentSlideshowViewController:(id)controller;
- (BOOL)isPresentingAnOverOneUpViewController;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)presentViewController:(id)controller animated:(BOOL)animated;
- (CGPoint)photosSharingTransition:(id)transition contentOffsetForAssetReference:(id)reference;
- (CGRect)_frameAtIndexPath:(id)path;
- (CGRect)_frameForAssetReference:(id)reference;
- (CGRect)_frameForItemAtIndexPath:(id)path inAssetCollectionsDataSource:(id)source allowZoom:(BOOL)zoom;
- (CGSize)collectionViewContentSize;
- (PUOverOneUpPresentationSession)initWithActivitySharingActionPerformer:(id)performer;
- (PUOverOneUpPresentationSessionBarsDelegate)barsDelegate;
- (PUOverOneUpPresentationSessionDelegate)delegate;
- (PXActivitySharingControllerDelegate)activitySharingControllerDelegate;
- (id)_assetCollectionsDataSourceForCurrentModalViewController;
- (id)_assetReferenceAtGlobalIndex:(int64_t)index;
- (id)_assetReferenceFromAsset:(id)asset hintIndexPath:(id)path hintCollection:(id)collection;
- (id)_assetsDataSource;
- (id)_currentTileController;
- (id)_indexPathForGlobalIndex:(int64_t)index;
- (id)_tilingView;
- (id)_viewModel;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (id)photosSharingTransition:(id)transition layoutForAssetReference:(id)reference;
- (id)photosSharingTransitionTransitioningView:(id)view;
- (id)ppt_activityViewController;
- (id)viewController;
- (id)viewToHideWhilePresentingWithTransition:(id)transition;
- (int64_t)_globalIndexForAssetReference:(id)reference;
- (int64_t)_globalIndexForIndexPath:(id)path;
- (int64_t)_numberOfItems;
- (int64_t)_tileCountForCurrentModalViewController;
- (void)_activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success;
- (void)_activitySharingControllerDidCancel:(id)cancel;
- (void)_finalizeAvalancheReviewControllerDismiss;
- (void)_finishOverOneUpPresentationSessionDismissForced:(BOOL)forced animated:(BOOL)animated;
- (void)_invalidatePresentedViewControllers;
- (void)_performNavigationRequestForAssetDisplayDescriptor:(id)descriptor completionHandler:(id)handler;
- (void)_prepareForActivitySharingControllerDismiss:(id)dismiss completionHandler:(id)handler;
- (void)_removeViewController:(id)controller;
- (void)_updatePresentedViewControllersIfNeeded;
- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success;
- (void)activitySharingControllerDidCancel:(id)cancel;
- (void)activitySharingControllerWillDismissActivityViewController:(id)controller;
- (void)avalancheReviewControllerDidComplete:(id)complete animated:(BOOL)animated;
- (void)avalancheReviewControllerDidComplete:(id)complete withAsset:(id)asset animated:(BOOL)animated;
- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler;
- (void)editController:(id)controller didFinishPreparingForTransitionAfterEditingPhoto:(id)photo;
- (void)editController:(id)controller didFinishPreparingForTransitionAfterEditingVideo:(id)video modificationDate:(id)date seekTime:(id *)time;
- (void)oneUpSharingAnimationController:(id)controller setVisibility:(BOOL)visibility forAssetReference:(id)reference;
- (void)photoMarkupController:(id)controller didFinishWithSavedAsset:(id)asset;
- (void)photosSharingTransition:(id)transition setVisibility:(BOOL)visibility forAssetReference:(id)reference;
- (void)ppt_cancelActivity;
- (void)ppt_dismissShareSheetWithCompletion:(id)completion;
- (void)ppt_presentPhotoEditor;
- (void)ppt_presentShareSheetWithCompletion:(id)completion;
- (void)ppt_shareUsingActivityOfType:(id)type;
- (void)setBarsDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets;
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
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  if (viewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      px_descriptionForAssertionMessage = [viewController px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1183 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v7, px_descriptionForAssertionMessage}];
    }
  }

  ppt_actionsController = [viewController ppt_actionsController];
  [ppt_actionsController performSimpleActionWithActionType:15];
}

- (void)ppt_dismissShareSheetWithCompletion:(id)completion
{
  completionCopy = completion;
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];
  activityViewControllerIfAvailable = [activitySharingController activityViewControllerIfAvailable];

  if (activityViewControllerIfAvailable)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      px_descriptionForAssertionMessage = [activityViewControllerIfAvailable px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1178 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v9, px_descriptionForAssertionMessage}];
    }
  }

  [(PUOverOneUpPresentationSession *)self _dismissActivityViewController:activityViewControllerIfAvailable animated:1 completionHandler:completionCopy];
}

- (void)ppt_cancelActivity
{
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];
  activityViewControllerIfAvailable = [activitySharingController activityViewControllerIfAvailable];

  if (activityViewControllerIfAvailable)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      px_descriptionForAssertionMessage = [activityViewControllerIfAvailable px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1173 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v7, px_descriptionForAssertionMessage}];
    }
  }

  [activityViewControllerIfAvailable ppt_cancelActivity];
}

- (void)ppt_shareUsingActivityOfType:(id)type
{
  typeCopy = type;
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];
  activityViewControllerIfAvailable = [activitySharingController activityViewControllerIfAvailable];

  if (activityViewControllerIfAvailable)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      px_descriptionForAssertionMessage = [activityViewControllerIfAvailable px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1164 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.activitySharingController.activityViewControllerIfAvailable", v9, px_descriptionForAssertionMessage}];
    }
  }

  [activityViewControllerIfAvailable ppt_performActivityOfType:typeCopy];
}

- (id)ppt_activityViewController
{
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];
  activityViewControllerIfAvailable = [activitySharingController activityViewControllerIfAvailable];

  return activityViewControllerIfAvailable;
}

- (void)ppt_presentShareSheetWithCompletion:(id)completion
{
  aBlock = completion;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  if (viewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [viewController px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:1152 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v11, px_descriptionForAssertionMessage}];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = _Block_copy(aBlock);
    v7 = pptAfterPresentationCompletion;
    pptAfterPresentationCompletion = v6;

    ppt_actionsController = [viewController ppt_actionsController];
    [ppt_actionsController performShareAction];
  }
}

- (id)_assetReferenceAtGlobalIndex:(int64_t)index
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [(PUOverOneUpPresentationSession *)self _indexPathForGlobalIndex:?];
  if (v5)
  {
    _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v7 = [_assetsDataSource assetReferenceAtIndexPath:v5];
  }

  else
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      indexCopy = index;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "globalIndex %li out of bounds", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)_globalIndexForAssetReference:(id)reference
{
  v13 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  v6 = [_assetsDataSource assetReferenceForAssetReference:referenceCopy];

  if (!referenceCopy || ([v6 indexPath], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[PUOverOneUpPresentationSession _globalIndexForIndexPath:](self, "_globalIndexForIndexPath:", v7), v7, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = referenceCopy;
      _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "global index not found for assetReference %@", &v11, 0xCu);
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (int64_t)_numberOfItems
{
  _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  v3 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v4 = [_assetsDataSource numberOfSubItemsAtIndexPath:v3];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:i];
      v6 += [_assetsDataSource numberOfSubItemsAtIndexPath:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_indexPathForGlobalIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || [(PUOverOneUpPresentationSession *)self _numberOfItems]<= index)
  {
    v13 = 0;
  }

  else
  {
    _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v7 = [_assetsDataSource numberOfSubItemsAtIndexPath:v6];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v10];
        v12 = [_assetsDataSource numberOfSubItemsAtIndexPath:v11] + v9;
        if (v12 > index)
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

      v13 = [MEMORY[0x1E696AC88] indexPathForItem:index - v9 inSection:v10];
    }

    else
    {
LABEL_7:
      v13 = 0;
    }
  }

  return v13;
}

- (int64_t)_globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v6 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v7 = [_assetsDataSource numberOfSubItemsAtIndexPath:v6];
    section = [pathCopy section];
    item = [pathCopy item];
    if (section >= v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = item;
      v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
      if (v10 >= [_assetsDataSource numberOfSubItemsAtIndexPath:v11])
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else if (section >= 1)
      {
        v12 = 0;
        v13 = v11;
        do
        {
          v11 = [MEMORY[0x1E696AC88] indexPathWithIndex:v12];

          v10 += [_assetsDataSource numberOfSubItemsAtIndexPath:v11];
          ++v12;
          v13 = v11;
        }

        while (section != v12);
      }
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  if (([kindCopy isEqualToString:@"PUPhotosSharingSelectionBadgeKind"] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"PUPhotosSharingOptionBadgeKind") & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"PUAvalancheReviewBadgeKind"))
  {
    v8 = [(PUOverOneUpPresentationSession *)self layoutAttributesForItemAtIndexPath:pathCopy];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (activitySharingController)
    {
      v18 = *MEMORY[0x1E695F058];
      v19 = *(MEMORY[0x1E695F058] + 8);
      v20 = *(MEMORY[0x1E695F058] + 16);
      v21 = *(MEMORY[0x1E695F058] + 24);
      carouselViewController = [(PUActivitySharingController *)self->_activitySharingController carouselViewController];
      [carouselViewController frameForBadgeOfKind:kindCopy forItemFrame:pathCopy atIndexPath:{v10, v12, v14, v16}];
    }

    else
    {
      _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
      [_avalancheReviewController selectionBadgeFrameForItemFrame:pathCopy atIndexPath:{v10, v12, v14, v16}];
      v25 = v24;
      v27 = v26;
      v20 = v28;
      v21 = v29;

      v18 = v10 + v25;
      v19 = v12 + v27;
    }

    v30 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:kindCopy withIndexPath:pathCopy];

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

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  _assetCollectionsDataSourceForCurrentModalViewController = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
  [(PUOverOneUpPresentationSession *)self _frameForItemAtIndexPath:pathCopy inAssetCollectionsDataSource:_assetCollectionsDataSourceForCurrentModalViewController allowZoom:1];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:pathCopy];

  [v14 setFrame:{v7, v9, v11, v13}];

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _tileCountForCurrentModalViewController = [(PUOverOneUpPresentationSession *)self _tileCountForCurrentModalViewController];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  view = [viewController view];
  [view frame];
  v12 = v11;

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = fmax(CGRectGetMinX(v21) / v12, 0.0);
  array = [MEMORY[0x1E695DF70] array];
  if (_tileCountForCurrentModalViewController > v13)
  {
    while (1)
    {
      activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];
      if (activitySharingController)
      {
        v16 = [(PUOverOneUpPresentationSession *)self _assetReferenceAtGlobalIndex:v13];
        indexPath = [v16 indexPath];
      }

      else
      {
        indexPath = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
      }

      v18 = [(PUOverOneUpPresentationSession *)self layoutAttributesForItemAtIndexPath:indexPath];
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

      [array addObject:v18];
      ++v13;

      if (_tileCountForCurrentModalViewController == v13)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:

  return array;
}

- (CGSize)collectionViewContentSize
{
  _tileCountForCurrentModalViewController = [(PUOverOneUpPresentationSession *)self _tileCountForCurrentModalViewController];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  view = [viewController view];
  [view frame];
  v7 = v6;
  v9 = v8;

  v10 = v7 * _tileCountForCurrentModalViewController;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (int64_t)_tileCountForCurrentModalViewController
{
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (activitySharingController)
  {

    return [(PUOverOneUpPresentationSession *)self _numberOfItems];
  }

  else
  {
    _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    if (!_avalancheReviewController)
    {
      return 0;
    }

    _assetCollectionsDataSourceForCurrentModalViewController = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
    assetCollectionsFetchResult = [_assetCollectionsDataSourceForCurrentModalViewController assetCollectionsFetchResult];
    assetCollectionsFetchResult2 = [_assetCollectionsDataSourceForCurrentModalViewController assetCollectionsFetchResult];
    v9 = [assetCollectionsFetchResult2 count];

    v10 = 0;
    if (v9)
    {
      v11 = 0;
      do
      {
        v12 = [assetCollectionsFetchResult objectAtIndex:v11];
        v13 = [_assetCollectionsDataSourceForCurrentModalViewController assetsInAssetCollection:v12];
        v10 += [v13 count];

        ++v11;
        assetCollectionsFetchResult3 = [_assetCollectionsDataSourceForCurrentModalViewController assetCollectionsFetchResult];
        v15 = [assetCollectionsFetchResult3 count];
      }

      while (v11 < v15);
    }

    return v10;
  }
}

- (id)_assetCollectionsDataSourceForCurrentModalViewController
{
  _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

  if (_avalancheReviewController)
  {
    _avalancheReviewController2 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  }

  else
  {
    activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (activitySharingController)
    {
      _avalancheReviewController2 = [(PUActivitySharingController *)self->_activitySharingController carouselViewController];
    }

    else
    {
      _avalancheReviewController2 = 0;
    }
  }

  return _avalancheReviewController2;
}

- (void)oneUpSharingAnimationController:(id)controller setVisibility:(BOOL)visibility forAssetReference:(id)reference
{
  visibilityCopy = visibility;
  controllerCopy = controller;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  v9 = viewController;
  if (visibilityCopy)
  {
    [viewController oneUpAssetTransitionDidEnd:controllerCopy];
  }

  else
  {
    [viewController oneUpAssetTransitionWillBegin:controllerCopy];
  }
}

- (id)viewToHideWhilePresentingWithTransition:(id)transition
{
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  if (viewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      px_descriptionForAssertionMessage = [viewController px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:929 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.viewController", v12, px_descriptionForAssertionMessage}];
    }
  }

  _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

  if (_avalancheReviewController)
  {
    chromeView = [viewController chromeView];
  }

  else
  {
    chromeView = [(PUOverOneUpPresentationSession *)self activitySharingController];

    if (chromeView)
    {
      navigationController = [viewController navigationController];
      chromeView = [navigationController toolbar];
    }
  }

  return chromeView;
}

- (id)photosSharingTransitionTransitioningView:(id)view
{
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  view = [viewController view];
  superview = [view superview];

  return superview;
}

- (void)photosSharingTransition:(id)transition setVisibility:(BOOL)visibility forAssetReference:(id)reference
{
  visibilityCopy = visibility;
  transitionCopy = transition;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  v9 = viewController;
  if (visibilityCopy)
  {
    [viewController oneUpAssetTransitionDidEnd:transitionCopy];
  }

  else
  {
    [viewController oneUpAssetTransitionWillBegin:transitionCopy];
  }
}

- (CGPoint)photosSharingTransition:(id)transition contentOffsetForAssetReference:(id)reference
{
  referenceCopy = reference;
  _assetCollectionsDataSourceForCurrentModalViewController = [(PUOverOneUpPresentationSession *)self _assetCollectionsDataSourceForCurrentModalViewController];
  indexPath = [referenceCopy indexPath];

  [(PUOverOneUpPresentationSession *)self _frameForItemAtIndexPath:indexPath inAssetCollectionsDataSource:_assetCollectionsDataSourceForCurrentModalViewController allowZoom:0];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)photosSharingTransition:(id)transition layoutForAssetReference:(id)reference
{
  v4 = [[PUCollectionViewLayoutCache alloc] initWithProvider:self];

  return v4;
}

- (CGRect)_frameAtIndexPath:(id)path
{
  pathCopy = path;
  _tilingView = [(PUOverOneUpPresentationSession *)self _tilingView];
  layout = [_tilingView layout];
  v7 = [layout layoutInfoForTileWithIndexPath:pathCopy kind:@"PUTileKindItemContent"];

  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  coordinateSystem = [v7 coordinateSystem];
  contentCoordinateSystem = [_tilingView contentCoordinateSystem];
  v18 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v9, v11);
  v20 = v19;

  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  view = [viewController view];
  [_tilingView convertRect:view toView:{v18, v20, v13, v15}];
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

- (CGRect)_frameForAssetReference:(id)reference
{
  referenceCopy = reference;
  _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
  indexPath = [referenceCopy indexPath];
  v8 = [_assetsDataSource assetAtIndexPath:indexPath];
  v9 = [v8 isEqual:referenceCopy];

  v10 = referenceCopy;
  if ((v9 & 1) == 0)
  {
    _assetsDataSource2 = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
    v10 = [_assetsDataSource2 assetReferenceForAssetReference:referenceCopy];
  }

  _tilingView = [(PUOverOneUpPresentationSession *)self _tilingView];
  layout = [_tilingView layout];
  if (!layout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:869 description:@"Missing layout"];
  }

  indexPath2 = [v10 indexPath];
  v15 = [layout layoutInfoForTileWithIndexPath:indexPath2 kind:@"PUTileKindItemContent"];

  if (v15)
  {
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    coordinateSystem = [v15 coordinateSystem];
    contentCoordinateSystem = [_tilingView contentCoordinateSystem];
    v26 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v17, v19);
    v28 = v27;

    viewController = [(PUOverOneUpPresentationSession *)self viewController];
    view = [viewController view];
    [_tilingView convertRect:view toView:{v26, v28, v21, v23}];
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

- (CGRect)_frameForItemAtIndexPath:(id)path inAssetCollectionsDataSource:(id)source allowZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  pathCopy = path;
  sourceCopy = source;
  assetCollectionsFetchResult = [sourceCopy assetCollectionsFetchResult];
  _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
  currentAssetReference = [_viewModel currentAssetReference];

  if (assetCollectionsFetchResult && (v13 = [assetCollectionsFetchResult count], v13 > objc_msgSend(pathCopy, "section")))
  {
    v14 = [assetCollectionsFetchResult objectAtIndex:{objc_msgSend(pathCopy, "section")}];
    v15 = [sourceCopy assetsInAssetCollection:v14];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:817 description:@"No datasource or index out of bounds"];

    v15 = 0;
    v14 = 0;
  }

  v17 = [v15 count];
  v69 = assetCollectionsFetchResult;
  v70 = sourceCopy;
  v68 = v14;
  if ([pathCopy item] >= v17)
  {
    v22 = MEMORY[0x1E696AEC0];
    uuid = [v14 uuid];
    v18 = [v22 stringWithFormat:@"PUOverOneUpPresentationSession: IndexPath %@ does not exist in collection %@ with count %lu", pathCopy, uuid, v17];

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:828 description:v18];
    v24 = 0;
  }

  else
  {
    v18 = [v15 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    indexPath = [currentAssetReference indexPath];
    if (indexPath)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      currentHandler2 = [uUID UUIDString];
    }

    else
    {
      currentHandler2 = 0;
    }

    v25 = [PUAssetReference alloc];
    assetCollection = [currentAssetReference assetCollection];
    indexPath2 = [currentAssetReference indexPath];
    v24 = [(PUAssetReference *)v25 initWithAsset:v18 assetCollection:assetCollection indexPath:indexPath2 dataSourceIdentifier:currentHandler2];
  }

  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (activitySharingController)
  {
    if (v24)
    {
      _assetsDataSource = [(PUOverOneUpPresentationSession *)self _assetsDataSource];
      v30 = [_assetsDataSource assetReferenceForAssetReference:v24];

      v31 = [(PUOverOneUpPresentationSession *)self _globalIndexForAssetReference:v30];
      if (v30)
      {
        asset = [(PUAssetReference *)v30 asset];
        asset2 = [currentAssetReference asset];
        v34 = [asset isEqual:asset2];

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
    _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    v34 = 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v15 && _avalancheReviewController)
    {
      asset3 = [currentAssetReference asset];
      v37 = [v15 indexOfObject:asset3];

      item = [pathCopy item];
      v31 = item;
      v34 = v37 == 0x7FFFFFFFFFFFFFFFLL || item == 0x7FFFFFFFFFFFFFFFLL || item == v37;
    }
  }

  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  view = [viewController view];
  [view frame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  if (!v24 || (v34 & zoomCopy & 1) != 0)
  {
    [(PUOverOneUpPresentationSession *)self _frameForAssetReference:currentAssetReference];
  }

  else
  {
    asset4 = [(PUAssetReference *)v24 asset];
    pixelWidth = [asset4 pixelWidth];
    asset5 = [(PUAssetReference *)v24 asset];
    pixelHeight = [asset5 pixelHeight];

    v55 = PURectWithSizeThatFitsInRect(pixelWidth, pixelHeight, v44, v46, v48, v50);
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

- (void)_activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success
{
  successCopy = success;
  controllerCopy = controller;
  typeCopy = type;
  activitySharingController = [(PUOverOneUpPresentationSession *)self activitySharingController];

  if (!activitySharingController)
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "didCompleteWithActivityType: was called whereas self.activitySharingController == nil.", buf, 2u);
    }

    goto LABEL_11;
  }

  if (successCopy)
  {
    [(PUOverOneUpPresentationSession *)self setActivitySharingController:0];
    activitySharingControllerDelegate = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
    [controllerCopy setDelegate:activitySharingControllerDelegate];
    [(PUOverOneUpPresentationSession *)self setActivitySharingControllerDelegate:0];
    if (([typeCopy isEqualToString:*MEMORY[0x1E69C3DB8]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3D78]) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3F30]) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69C3F28]))
    {
      selectedAssetsByAssetCollection = [controllerCopy selectedAssetsByAssetCollection];
    }

    else
    {
      selectedAssetsByAssetCollection = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __97__PUOverOneUpPresentationSession__activitySharingController_didCompleteWithActivityType_success___block_invoke;
    v15[3] = &unk_1E7B7EA98;
    v15[4] = self;
    v16 = controllerCopy;
    v17 = activitySharingControllerDelegate;
    v18 = typeCopy;
    v19 = selectedAssetsByAssetCollection;
    v13 = selectedAssetsByAssetCollection;
    v14 = activitySharingControllerDelegate;
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

- (void)_activitySharingControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  activitySharingControllerDelegate = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [cancelCopy setDelegate:activitySharingControllerDelegate];

  [(PUOverOneUpPresentationSession *)self setActivitySharingControllerDelegate:0];
  [(PUOverOneUpPresentationSession *)self setActivitySharingController:0];

  [(PUOverOneUpPresentationSession *)self _finishOverOneUpPresentationSessionDismissForced:0 animated:1];
}

- (void)_prepareForActivitySharingControllerDismiss:(id)dismiss completionHandler:(id)handler
{
  handlerCopy = handler;
  currentAsset = [dismiss currentAsset];
  v8 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:currentAsset hintIndexPath:0 hintCollection:0];

  v9 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __96__PUOverOneUpPresentationSession__prepareForActivitySharingControllerDismiss_completionHandler___block_invoke;
  v11[3] = &unk_1E7B7C940;
  v12 = handlerCopy;
  v10 = handlerCopy;
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

- (void)activitySharingController:(id)controller didCompleteWithActivityType:(id)type success:(BOOL)success
{
  successCopy = success;
  controllerCopy = controller;
  typeCopy = type;
  activitySharingControllerDelegate = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [activitySharingControllerDelegate activitySharingController:controllerCopy didCompleteWithActivityType:typeCopy success:successCopy];

  v17 = controllerCopy;
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [v17 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:742 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v14, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:742 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v14}];
  }

LABEL_3:
  [(PUOverOneUpPresentationSession *)self _activitySharingController:v17 didCompleteWithActivityType:typeCopy success:successCopy];
}

- (void)activitySharingControllerWillDismissActivityViewController:(id)controller
{
  controllerCopy = controller;
  activitySharingControllerDelegate = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    activitySharingControllerDelegate2 = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
    [activitySharingControllerDelegate2 activitySharingControllerWillDismissActivityViewController:controllerCopy];
  }

  v14 = controllerCopy;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:735 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:735 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v11}];
  }

LABEL_5:
  [(PUOverOneUpPresentationSession *)self _activitySharingControllerWillDismissActivityViewController:v14];
}

- (void)activitySharingControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  activitySharingControllerDelegate = [(PUOverOneUpPresentationSession *)self activitySharingControllerDelegate];
  [activitySharingControllerDelegate activitySharingControllerDidCancel:cancelCopy];

  v12 = cancelCopy;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
    px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:726 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"activitySharingController", v9, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:726 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"activitySharingController", v9}];
  }

LABEL_3:
  [(PUOverOneUpPresentationSession *)self _activitySharingControllerDidCancel:v12];
}

- (void)_finalizeAvalancheReviewControllerDismiss
{
  _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [_avalancheReviewController setDelegate:0];

  [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:0];
}

- (void)avalancheReviewControllerDidComplete:(id)complete animated:(BOOL)animated
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_animated___block_invoke;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = self;
  [(PUOverOneUpPresentationSession *)self dismissViewController:complete animated:animated completionHandler:v4];
}

- (void)avalancheReviewControllerDidComplete:(id)complete withAsset:(id)asset animated:(BOOL)animated
{
  completeCopy = complete;
  v9 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:asset hintIndexPath:0 hintCollection:0];
  v10 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__PUOverOneUpPresentationSession_avalancheReviewControllerDidComplete_withAsset_animated___block_invoke;
  v12[3] = &unk_1E7B7A3F0;
  v12[4] = self;
  v13 = completeCopy;
  animatedCopy = animated;
  v11 = completeCopy;
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

- (void)photoMarkupController:(id)controller didFinishWithSavedAsset:(id)asset
{
  controllerCopy = controller;
  reviewAsset = [controllerCopy reviewAsset];
  v7 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:reviewAsset hintIndexPath:0 hintCollection:0];
  v8 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v7];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __80__PUOverOneUpPresentationSession_photoMarkupController_didFinishWithSavedAsset___block_invoke;
  v13 = &unk_1E7B7FB70;
  selfCopy = self;
  v15 = controllerCopy;
  v9 = controllerCopy;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v8 completionHandler:&v10];
  [v9 unregisterObserver:{self, v10, v11, v12, v13, selfCopy}];
}

- (void)editController:(id)controller didFinishPreparingForTransitionAfterEditingVideo:(id)video modificationDate:(id)date seekTime:(id *)time
{
  v25 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dateCopy = date;
  v12 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:video hintIndexPath:0 hintCollection:0];
  v13 = [PUAssetDisplayDescriptor alloc];
  buf = *time;
  v14 = [(PUAssetDisplayDescriptor *)v13 initWithAssetReference:v12 modifiedAfterDate:dateCopy videoSeekTime:&buf];

  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];
  presentingViewController = [navigationController presentingViewController];
  parentViewController = [presentingViewController parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabBar = [parentViewController tabBar];
    [tabBar setHidden:0];
  }

  v20 = PLOneUpGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.var0) = 138412546;
    *(&buf.var0 + 4) = v14;
    LOWORD(buf.var2) = 2112;
    *(&buf.var2 + 2) = parentViewController;
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "Preparing to perform dismiss Edit for displayDescriptor: %@, parentController: %@", &buf, 0x16u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124__PUOverOneUpPresentationSession_editController_didFinishPreparingForTransitionAfterEditingVideo_modificationDate_seekTime___block_invoke;
  v22[3] = &unk_1E7B7FB70;
  v22[4] = self;
  v23 = controllerCopy;
  v21 = controllerCopy;
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

- (void)editController:(id)controller didFinishPreparingForTransitionAfterEditingPhoto:(id)photo
{
  controllerCopy = controller;
  v7 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:photo hintIndexPath:0 hintCollection:0];
  v8 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v7];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];
  presentingViewController = [navigationController presentingViewController];
  parentViewController = [presentingViewController parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabBar = [parentViewController tabBar];
    [tabBar setHidden:0];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__PUOverOneUpPresentationSession_editController_didFinishPreparingForTransitionAfterEditingPhoto___block_invoke;
  v15[3] = &unk_1E7B7FB70;
  v15[4] = self;
  v16 = controllerCopy;
  v14 = controllerCopy;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v8 completionHandler:v15];
}

- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets
{
  finishCopy = finish;
  firstObject = [assets firstObject];
  v8 = [(PUOverOneUpPresentationSession *)self _assetReferenceFromAsset:firstObject hintIndexPath:0 hintCollection:0];
  v9 = [PUAssetDisplayDescriptor assetDisplayDescriptorForSimpleNavigationToAssetReference:v8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__PUOverOneUpPresentationSession_slideshowViewControllerDidFinish_withVisibleAssets___block_invoke;
  v11[3] = &unk_1E7B7FB70;
  v11[4] = self;
  v12 = finishCopy;
  v10 = finishCopy;
  [(PUOverOneUpPresentationSession *)self _performNavigationRequestForAssetDisplayDescriptor:v9 completionHandler:v11];
}

- (void)_performNavigationRequestForAssetDisplayDescriptor:(id)descriptor completionHandler:(id)handler
{
  v6 = MEMORY[0x1E695DF00];
  handlerCopy = handler;
  descriptorCopy = descriptor;
  v10 = [v6 dateWithTimeIntervalSinceNow:2.0];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  [viewController navigateToAssetDisplayDescriptor:descriptorCopy beforeDate:v10 completionHandler:handlerCopy];
}

- (id)_assetReferenceFromAsset:(id)asset hintIndexPath:(id)path hintCollection:(id)collection
{
  assetCopy = asset;
  pathCopy = path;
  collectionCopy = collection;
  if (assetCopy)
  {
    _stashedAssetReference = pathCopy;
    _stashedAssetReference3 = collectionCopy;
    if (!_stashedAssetReference)
    {
      _stashedAssetReference = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];

      if (_stashedAssetReference)
      {
        _stashedAssetReference2 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];
        _stashedAssetReference = [_stashedAssetReference2 indexPath];
      }
    }

    if (!_stashedAssetReference3)
    {
      _stashedAssetReference3 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];

      if (_stashedAssetReference3)
      {
        _stashedAssetReference4 = [(PUOverOneUpPresentationSession *)self _stashedAssetReference];
        _stashedAssetReference3 = [_stashedAssetReference4 assetCollection];
      }
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v17 = [[PUAssetReference alloc] initWithAsset:assetCopy assetCollection:_stashedAssetReference3 indexPath:_stashedAssetReference dataSourceIdentifier:uUIDString];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  v19 = *MEMORY[0x1E69E9840];
  [(PUOverOneUpPresentationSession *)self _invalidatePresentedViewControllers];
  [(PUOverOneUpPresentationSession *)self _updatePresentedViewControllersIfNeeded];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _presentedViewControllers = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
  v6 = [_presentedViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(_presentedViewControllers);
      }

      v11 = *(*(&v14 + 1) + 8 * i);
      v12 = [v11 conformsToProtocol:&unk_1F2BCA758];
      if ((v9 & v12) == 1)
      {
        v9 = [v11 prepareForDismissingForced:forcedCopy];
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

      if (!forcedCopy)
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    v7 = [_presentedViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_16:

  [(PUOverOneUpPresentationSession *)self _finishOverOneUpPresentationSessionDismissForced:v9 | forcedCopy animated:0];
  return v9;
}

- (void)_removeViewController:(id)controller
{
  controllerCopy = controller;
  _photoMarkupViewController = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];

  if (_photoMarkupViewController == controllerCopy)
  {
    [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:0];
  }

  else
  {
    _slideshowViewController = [(PUOverOneUpPresentationSession *)self _slideshowViewController];

    if (_slideshowViewController == controllerCopy)
    {
      [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:0];
    }

    else
    {
      _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

      if (_avalancheReviewController == controllerCopy)
      {
        [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:0];
      }

      else
      {
        _editViewController = [(PUOverOneUpPresentationSession *)self _editViewController];

        v8 = controllerCopy;
        if (_editViewController != controllerCopy)
        {
          goto LABEL_10;
        }

        [(PUOverOneUpPresentationSession *)self _setEditViewController:0];
      }
    }
  }

  v8 = controllerCopy;
LABEL_10:
}

- (BOOL)_popToOneUpFromViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];
  viewControllers = [navigationController viewControllers];
  v10 = [viewControllers indexOfObject:viewController];
  v11 = [viewControllers containsObject:controllerCopy];
  if (navigationController)
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
    v21 = animatedCopy;
    v15 = [viewControllers px_subarrayAfterIndex:v10];
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

    [navigationController pu_popToViewController:viewController animated:v21 interactive:0];
  }

  return v14;
}

- (BOOL)_dismissAvalancheReviewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__PUOverOneUpPresentationSession__dismissAvalancheReviewController_animated_completionHandler___block_invoke;
  v11[3] = &unk_1E7B80B48;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [viewController pu_dismissViewControllerAnimated:animatedCopy interactive:0 completion:v11];

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

- (BOOL)_dismissActivityViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PUOverOneUpPresentationSession__dismissActivityViewController_animated_completionHandler___block_invoke;
  v11[3] = &unk_1E7B80B48;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  [controller pu_dismissViewControllerAnimated:animatedCopy interactive:0 completion:v11];

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

- (BOOL)_dismissPhotoMarkupViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  controllerCopy = controller;
  handlerCopy = handler;
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];
  [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:0];
  presentedViewController = [navigationController presentedViewController];

  if (presentedViewController == controllerCopy)
  {
    v13 = 1;
    [navigationController dismissViewControllerAnimated:1 completion:0];
    if (!handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = [(PUOverOneUpPresentationSession *)self _popToOneUpFromViewController:controllerCopy animated:animatedCopy];
  if (handlerCopy)
  {
LABEL_3:
    handlerCopy[2](handlerCopy);
  }

LABEL_4:

  return v13;
}

- (BOOL)_dismissEditViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = [(PUOverOneUpPresentationSession *)self _popToOneUpFromViewController:controller animated:animatedCopy];
  [(PUOverOneUpPresentationSession *)self _setEditViewController:0];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
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

- (BOOL)_dismissSlideshowViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  [controller dismissViewControllerAnimated:animated completion:handler];
  [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:0];
  return 1;
}

- (void)dismissViewController:(id)controller animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  v31 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__PUOverOneUpPresentationSession_dismissViewController_animated_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7B7B3B0;
  v10 = handlerCopy;
  v22 = v10;
  objc_copyWeak(&v23, &location);
  v11 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissPhotoMarkupViewController:controllerCopy animated:animatedCopy completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissSlideshowViewController:controllerCopy animated:animatedCopy completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(PUOverOneUpPresentationSession *)self _dismissAvalancheReviewController:controllerCopy animated:animatedCopy completionHandler:v11];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(PUOverOneUpPresentationSession *)self _dismissEditViewController:controllerCopy animated:animatedCopy completionHandler:v11])
    {
      goto LABEL_15;
    }

    v18 = PLOneUpGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      presentingViewController = [controllerCopy presentingViewController];
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(controllerCopy, "modalPresentationStyle")}];
      *buf = 138412802;
      v26 = controllerCopy;
      v27 = 2112;
      v28 = presentingViewController;
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
      v12 = [(PUOverOneUpPresentationSession *)self _dismissActivityViewController:controllerCopy animated:animatedCopy completionHandler:v11];
LABEL_7:
      if (v12)
      {
        goto LABEL_15;
      }
    }
  }

  presentingViewController2 = [controllerCopy presentingViewController];
  v14 = presentingViewController2 == 0;

  if (!v14)
  {
    if ([controllerCopy modalPresentationStyle] != 7)
    {
      viewController = [(PUOverOneUpPresentationSession *)self viewController];
      [viewController dismissViewControllerAnimated:animatedCopy completion:v11];

      goto LABEL_15;
    }

    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      viewController2 = [(PUOverOneUpPresentationSession *)self viewController];
      *buf = 138412546;
      v26 = controllerCopy;
      v27 = 2112;
      v28 = viewController2;
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

- (BOOL)_presentScreenRoutePickerViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_barsDelegateFlags.respondsToBarButtonItem)
  {
    barsDelegate = [(PUOverOneUpPresentationSession *)self barsDelegate];
    v6 = [barsDelegate overOneUpPresentationSession:self barButtonItemForActivityType:*MEMORY[0x1E69C3CF0]];
  }

  else
  {
    v6 = 0;
  }

  popoverPresentationController = [controllerCopy popoverPresentationController];
  [popoverPresentationController setBarButtonItem:v6];

  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  [viewController presentViewController:controllerCopy animated:1 completion:0];

  return 1;
}

- (BOOL)_presentSlideshowViewController:(id)controller
{
  controllerCopy = controller;
  [(PUOverOneUpPresentationSession *)self _setSlideshowViewController:controllerCopy];
  [controllerCopy setDelegate:self];
  v5 = [[PUSlideshowNavigationController alloc] initWithRootViewController:controllerCopy];

  [(PUSlideshowNavigationController *)v5 setModalTransitionStyle:2];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  [viewController presentViewController:v5 animated:1 completion:0];

  return 1;
}

- (BOOL)_presentAvalancheReviewController:(id)controller
{
  controllerCopy = controller;
  [(PUOverOneUpPresentationSession *)self _setAvalancheReviewController:controllerCopy];
  [controllerCopy setDelegate:self];
  v6 = [[PUNavigationController alloc] initWithRootViewController:controllerCopy];

  v37 = v6;
  [(PUNavigationController *)v6 setModalPresentationStyle:0];
  _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
  currentAssetReference = [_viewModel currentAssetReference];

  asset = [currentAssetReference asset];
  burstIdentifier = [asset burstIdentifier];
  if (!burstIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:380 description:@"Current asset must have an avalanche UUID"];
  }

  if ([asset sourceType] == 4)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = objc_alloc(MEMORY[0x1E69BE2B0]);
  photoLibrary = [asset photoLibrary];
  mainQueueConcurrencyPhotoLibrary = [photoLibrary mainQueueConcurrencyPhotoLibrary];
  v15 = [v12 initWithUUID:burstIdentifier sourceType:v11 photoLibrary:mainQueueConcurrencyPhotoLibrary];

  pl_managedAsset = [asset pl_managedAsset];
  v36 = v15;
  assets = [v15 assets];
  v18 = [assets indexOfObject:pl_managedAsset];

  v35 = burstIdentifier;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:386 description:@"expect asset"];
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v22 = [PUAssetReference alloc];
  asset2 = [currentAssetReference asset];
  assetCollection = [currentAssetReference assetCollection];
  v25 = [(PUAssetReference *)v22 initWithAsset:asset2 assetCollection:assetCollection indexPath:v19 dataSourceIdentifier:uUIDString];

  v26 = objc_alloc_init(PUOneUpPhotosSharingTransitionContext);
  _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [(PUPhotosSharingTransitionContext *)v26 setAssetCollectionsDataSource:_avalancheReviewController];

  [(PUOneUpPhotosSharingTransitionContext *)v26 setCurrentAssetReference:v25];
  v28 = [(PUViewControllerTransition *)[PUOneUpPhotosSharingTransition alloc] initWithDuration:0.300000012];
  _avalancheReviewController2 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
  [(PUOneUpPhotosSharingTransition *)v28 setSharingTransitionViewController:_avalancheReviewController2];

  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  [(PUOneUpPhotosSharingTransition *)v28 setPresentingViewController:viewController];

  [(PUOneUpPhotosSharingTransition *)v28 setOneUpPhotosSharingTransitionContext:v26];
  [(PUOneUpPhotosSharingTransition *)v28 setDelegate:self];
  viewController2 = [(PUOverOneUpPresentationSession *)self viewController];
  [viewController2 pu_presentViewController:v37 transition:v28 animated:1 interactive:0 completion:0];

  return 1;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  enableOneUpAnimation = [mEMORY[0x1E69C3A18] enableOneUpAnimation];

  if (enableOneUpAnimation)
  {
    v10 = userInterfaceIdiom == 1;
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
    _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
    currentAssetReference = [_viewModel currentAssetReference];

    v13 = objc_alloc_init(PUOneUpPhotosSharingTransitionContext);
    [(PUOneUpPhotosSharingTransitionContext *)v13 setCurrentAssetReference:currentAssetReference];
    v14 = [PUOneUpSharingAnimationController alloc];
    viewController = [(PUOverOneUpPresentationSession *)self viewController];
    v16 = [(PUOneUpSharingAnimationController *)v14 initWithTransitionContext:v13 presentingViewController:viewController];

    [(PUOneUpSharingAnimationController *)v16 setDelegate:self];
  }

  return v16;
}

- (BOOL)_presentActivityViewController:(id)controller
{
  controllerCopy = controller;
  activitySharingController = [controllerCopy activitySharingController];
  if (!activitySharingController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOverOneUpPresentationSession.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"activitySharingController"}];
  }

  objc_storeStrong(&self->_activitySharingController, activitySharingController);
  delegate = [activitySharingController delegate];
  objc_storeWeak(&self->_activitySharingControllerDelegate, delegate);

  [activitySharingController setDelegate:self];
  if (pptAfterPresentationCompletion)
  {
    v8 = [pptAfterPresentationCompletion copy];
    [controllerCopy setPpt_readyToInteractHandler:v8];

    v9 = pptAfterPresentationCompletion;
    pptAfterPresentationCompletion = 0;
  }

  [controllerCopy setTransitioningDelegate:self];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  [viewController presentViewController:controllerCopy animated:1 completion:0];

  return 1;
}

- (BOOL)_presentPhotoMarkupViewController:(id)controller
{
  controllerCopy = controller;
  [(PUOverOneUpPresentationSession *)self _setPhotoMarkupViewController:controllerCopy];
  [controllerCopy registerObserver:self];
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];

  if ([navigationController isNavigationBarHidden])
  {
    v7 = objc_alloc_init(PUCrossfadeNavigationTransition);
    [navigationController pu_pushViewController:controllerCopy withTransition:v7 animated:1 isInteractive:0];
  }

  else
  {
    v7 = objc_alloc_init(PUCrossfadeModalTransition);
    [navigationController pu_presentViewController:controllerCopy transition:v7 animated:1 interactive:0 completion:0];
  }

  return 1;
}

- (BOOL)_presentEditViewController:(id)controller
{
  controllerCopy = controller;
  [(PUOverOneUpPresentationSession *)self _setEditViewController:controllerCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setPresentationDelegate:self];
  }

  v5 = objc_alloc_init(PUOneUpAssetNavigationTransition);
  viewController = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController = [viewController navigationController];
  presentingViewController = [navigationController presentingViewController];
  parentViewController = [presentingViewController parentViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tabBar = [parentViewController tabBar];
    [tabBar setHidden:1];
  }

  viewController2 = [(PUOverOneUpPresentationSession *)self viewController];
  navigationController2 = [viewController2 navigationController];
  [navigationController2 pu_pushViewController:controllerCopy withTransition:v5 animated:1 isInteractive:0];

  return 1;
}

- (BOOL)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (!self->_delegateFlags.respondsToIsReady || (-[PUOverOneUpPresentationSession delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 overOneUpPresentationSessionPresentingViewControllerIsReady:self], v7, v8))
  {
    _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
    currentAssetReference = [_viewModel currentAssetReference];

    v11 = [currentAssetReference copy];
    [(PUOverOneUpPresentationSession *)self _setStashedAssetReference:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(PUOverOneUpPresentationSession *)self _presentPhotoMarkupViewController:controllerCopy])
      {
LABEL_23:
        viewController = [(PUOverOneUpPresentationSession *)self viewController];
        [viewController presentViewController:controllerCopy animated:animatedCopy completion:0];
        v12 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(PUOverOneUpPresentationSession *)self _presentAvalancheReviewController:controllerCopy])
        {
          goto LABEL_23;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(PUOverOneUpPresentationSession *)self _presentSlideshowViewController:controllerCopy])
          {
            goto LABEL_23;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(PUOverOneUpPresentationSession *)self _presentScreenRoutePickerViewController:controllerCopy])
            {
              goto LABEL_23;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![(PUOverOneUpPresentationSession *)self _presentEditViewController:controllerCopy])
              {
                goto LABEL_23;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PUOverOneUpPresentationSession *)self _presentActivityViewController:controllerCopy])
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

    viewController = [(PUOverOneUpPresentationSession *)self delegate];
    [viewController overOneUpPresentationSession:self didPresent:controllerCopy];
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
  _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
  _tilingView = [(PUOverOneUpPresentationSession *)self _tilingView];
  v5 = _tilingView;
  v6 = 0;
  if (_viewModel && _tilingView)
  {
    currentAssetReference = [_viewModel currentAssetReference];
    indexPath = [currentAssetReference indexPath];
    dataSourceIdentifier = [currentAssetReference dataSourceIdentifier];
    v10 = [v5 presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

    v6 = v10;
  }

  return v6;
}

- (id)_assetsDataSource
{
  _viewModel = [(PUOverOneUpPresentationSession *)self _viewModel];
  assetsDataSource = [_viewModel assetsDataSource];

  return assetsDataSource;
}

- (id)_viewModel
{
  if (self->_delegateFlags.respondsToBrowsingViewModel)
  {
    delegate = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [delegate overOneUpPresentationSessionBrowserViewModel:self];
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
    delegate = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [delegate overOneUpPresentationSessionTilingView:self];
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
    delegate = [(PUOverOneUpPresentationSession *)self delegate];
    v4 = [delegate overOneUpPresentationSessionViewController:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_finishOverOneUpPresentationSessionDismissForced:(BOOL)forced animated:(BOOL)animated
{
  animatedCopy = animated;
  forcedCopy = forced;
  v19 = *MEMORY[0x1E69E9840];
  [(PUOverOneUpPresentationSession *)self _invalidatePresentedViewControllers];
  [(PUOverOneUpPresentationSession *)self _updatePresentedViewControllersIfNeeded];
  if (![(PUOverOneUpPresentationSession *)self isPresentingAnOverOneUpViewController]|| forcedCopy)
  {
    _presentedViewControllers = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
    if ([_presentedViewControllers count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = _presentedViewControllers;
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

            [(PUOverOneUpPresentationSession *)self dismissViewController:*(*(&v14 + 1) + 8 * v12++) animated:animatedCopy completionHandler:0, v14];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }

    if (self->_delegateFlags.respondsToDidFinish)
    {
      delegate = [(PUOverOneUpPresentationSession *)self delegate];
      [delegate overOneUpPresentationSessionDidFinish:self];
    }
  }
}

- (BOOL)isPresentingAnOverOneUpViewController
{
  _presentedViewControllers = [(PUOverOneUpPresentationSession *)self _presentedViewControllers];
  anyObject = [_presentedViewControllers anyObject];

  return anyObject != 0;
}

- (void)_updatePresentedViewControllersIfNeeded
{
  if ([(PUOverOneUpPresentationSession *)self _needsUpdatePresentedViewControllers])
  {
    [(PUOverOneUpPresentationSession *)self _setNeedsUpdatePresentedViewControllers:0];
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    _slideshowViewController = [(PUOverOneUpPresentationSession *)self _slideshowViewController];

    if (_slideshowViewController)
    {
      _slideshowViewController2 = [(PUOverOneUpPresentationSession *)self _slideshowViewController];
      [weakObjectsHashTable addObject:_slideshowViewController2];
    }

    _editViewController = [(PUOverOneUpPresentationSession *)self _editViewController];

    if (_editViewController)
    {
      _editViewController2 = [(PUOverOneUpPresentationSession *)self _editViewController];
      [weakObjectsHashTable addObject:_editViewController2];
    }

    _photoMarkupViewController = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];

    if (_photoMarkupViewController)
    {
      _photoMarkupViewController2 = [(PUOverOneUpPresentationSession *)self _photoMarkupViewController];
      [weakObjectsHashTable addObject:_photoMarkupViewController2];
    }

    _avalancheReviewController = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];

    if (_avalancheReviewController)
    {
      _avalancheReviewController2 = [(PUOverOneUpPresentationSession *)self _avalancheReviewController];
      [weakObjectsHashTable addObject:_avalancheReviewController2];
    }

    [(PUOverOneUpPresentationSession *)self _setPresentedViewControllers:weakObjectsHashTable];
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

- (void)setBarsDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_barsDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_barsDelegate, obj);
    self->_barsDelegateFlags.respondsToBarButtonItem = objc_opt_respondsToSelector() & 1;
    self->_barsDelegateFlags.respondsToDidAppendReviewScreenAction = objc_opt_respondsToSelector() & 1;
  }
}

- (PUOverOneUpPresentationSession)initWithActivitySharingActionPerformer:(id)performer
{
  performerCopy = performer;
  v8.receiver = self;
  v8.super_class = PUOverOneUpPresentationSession;
  v5 = [(PUOverOneUpPresentationSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PUOverOneUpPresentationSession *)v5 setSharingActionPerformer:performerCopy];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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