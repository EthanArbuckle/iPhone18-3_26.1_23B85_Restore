@interface PXPhotosAppGridContentController
- (BOOL)canPlay:(id)a3;
- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)a3;
- (BOOL)isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)a3;
- (BOOL)shouldEnablePlaybackFor:(id)a3;
- (CGRect)frameFor:(id)a3 outMinPlayableSize:(CGSize *)a4;
- (CGRect)visibleRectFor:(id)a3;
- (PXPhotosAppGridContentController)init;
- (PXPhotosAppGridContentController)initWithConfiguration:(id)a3 contentController:(id)a4;
- (PXPhotosContentController)contentController;
- (PXPhotosGridFooterPresentation)footerPresentation;
- (PXPhotosGridFooterStatusController)footerStatusController;
- (UIEdgeInsets)maskPaddingForFooterPresentation:(id)a3;
- (UIEdgeInsets)safeAreaInsetsFor:(id)a3;
- (id)makeBodyLayoutProviderForContentController:(id)a3 style:(int64_t)a4 headerStyle:(int64_t)a5;
- (id)makeHeaderLayoutProviderForContentController:(id)a3 style:(int64_t)a4 viewProvider:(id)a5 bannerProvider:(id)a6;
- (id)presentingViewControllerForFooterStatusController:(id)a3;
- (unint64_t)filterSortedRecordsStrategy;
- (void)_updateBarsController:(id)a3;
- (void)appIntentsEnumerateAssetCollections:(id)a3;
- (void)appIntentsEnumerateAssets:(id)a3;
- (void)appIntentsEnumeratePersons:(id)a3;
- (void)contentController:(id)a3 didChangeCurrentLens:(id)a4;
- (void)contentViewDidAppearForContentController:(id)a3 animated:(BOOL)a4;
- (void)contentViewDidDisappearForContentController:(id)a3 animated:(BOOL)a4;
- (void)contentViewDidScrollToInitialPositionForContentController:(id)a3;
- (void)contentViewWillAppearForContentController:(id)a3 animated:(BOOL)a4;
- (void)dismissPresentedViewControllerForFooterPresentation:(id)a3;
- (void)footerPresentation:(id)a3 presentViewController:(id)a4;
- (void)gridView:(id)a3 didBecomeAvailableForContentController:(id)a4;
- (void)initializationWillFinishForContentController:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)setShouldEnablePlaybackDuringAnimatedScroll:(BOOL)a3;
- (void)swift_init;
@end

@implementation PXPhotosAppGridContentController

- (void)swift_init
{
  v2 = self;
  sub_1A3FDBA64();
}

- (PXPhotosContentController)contentController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentController);

  return WeakRetained;
}

- (void)appIntentsEnumeratePersons:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:537 description:{@"Invalid parameter not satisfying: %@", @"personHandler"}];
  }

  v6 = [(PXPhotosAppGridContentController *)self contentController];
  v7 = [v6 viewModel];
  v8 = [v7 privacyController];
  v9 = [v8 isLocked];

  if (!v9)
  {
    v11 = [v7 currentDataSource];
    v12 = [v11 container];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v12 = [v6 gridView];
      [v12 bounds];
      v5[2](v5, v13, 1);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_13;
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate people because the UI is currently locked.", buf, 2u);
  }

LABEL_14:
}

- (void)appIntentsEnumerateAssets:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  v6 = [(PXPhotosAppGridContentController *)self contentController];
  v7 = [v6 viewModel];
  v8 = [v7 privacyController];
  v9 = [v8 isLocked];

  if (!v9)
  {
    v11 = [v6 viewModel];
    v12 = [v11 selectionSnapshot];

    v13 = [v12 fetchSelectedObjects];
    [v13 mutableCopy];

    v14 = [v6 layout];
    [v6 gridView];
    objc_claimAutoreleasedReturnValue();
    [v14 visibleRect];
    [v14 safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate assets because the UI is currently locked.", buf, 2u);
  }
}

void __62__PXPhotosAppGridContentController_appIntentsEnumerateAssets___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = v13;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;

    if (v16)
    {
      v17 = [*(a1 + 32) indexOfObject:v16];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(a1 + 32) removeObjectAtIndex:v17];
      }

      [*(a1 + 40) convertRect:v14 fromDescendantLayout:{a4, a5, a6, a7}];
      [*(a1 + 40) coordinateSpace];
      objc_claimAutoreleasedReturnValue();
      PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    }
  }

  else
  {
  }

  v18 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [0 uuid];
    v20 = objc_opt_class();
    v21 = *(a1 + 56);
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2048;
    v27 = v21;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Skipping non-PhotoKit asset: %{public}@, in: <%{public}@:%p>", &v22, 0x20u);
  }
}

void __62__PXPhotosAppGridContentController_appIntentsEnumerateAssets___block_invoke_400(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v4;

    if (v3)
    {
      (*(*(a1 + 32) + 16))(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    }
  }

  else
  {

    v3 = 0;
  }
}

- (void)appIntentsEnumerateAssetCollections:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"assetCollectionHandler"}];
  }

  v6 = [(PXPhotosAppGridContentController *)self contentController];
  v7 = [v6 viewModel];
  v8 = [v7 privacyController];
  v9 = [v8 isLocked];

  if (!v9)
  {
    v11 = [v6 viewModel];
    v12 = [v11 selectionSnapshot];

    v13 = [v12 fetchSelectedObjects];
    [v13 mutableCopy];

    v14 = [v6 layout];
    [v6 gridView];
    objc_claimAutoreleasedReturnValue();
    [v14 visibleRect];
    [v14 safeAreaInsets];
    PXEdgeInsetsInsetRect();
  }

  v10 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Cannot enumerate asset collections because the UI is currently locked.", buf, 2u);
  }
}

void __72__PXPhotosAppGridContentController_appIntentsEnumerateAssetCollections___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = v13;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;

    if (v16)
    {
      v17 = [*(a1 + 32) indexOfObject:v16];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(a1 + 32) removeObjectAtIndex:v17];
      }

      [*(a1 + 40) convertRect:v14 fromDescendantLayout:{a4, a5, a6, a7}];
      [*(a1 + 40) coordinateSpace];
      objc_claimAutoreleasedReturnValue();
      PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    }
  }

  else
  {
  }

  v18 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = [0 uuid];
    v20 = objc_opt_class();
    v21 = *(a1 + 56);
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2048;
    v27 = v21;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Skipping non-PhotoKit asset collection: %{public}@, in: <%{public}@:%p>", &v22, 0x20u);
  }
}

void __72__PXPhotosAppGridContentController_appIntentsEnumerateAssetCollections___block_invoke_393(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v4;

    if (v3)
    {
      (*(*(a1 + 32) + 16))(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    }
  }

  else
  {

    v3 = 0;
  }
}

- (unint64_t)filterSortedRecordsStrategy
{
  v2 = [(PXPhotosAppGridContentController *)self contentController];
  v3 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 photosContentControllerFilterSortedRecordsStrategy:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDisplayAssetEligibleForPlaybackWithSettlingEffect:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosAppGridContentController *)self contentController];
  v6 = [v5 delegate];
  v7 = [v6 photosContentController:v5 isDisplayAssetEligibleForPlaybackWithSettlingEffect:v4];

  return v7;
}

- (BOOL)isDisplayAssetEligibleForAutoPlayback:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosAppGridContentController *)self contentController];
  v6 = [v5 delegate];
  v7 = [v6 photosContentController:v5 isDisplayAssetEligibleForAutoPlayback:v4];

  return v7;
}

- (BOOL)canPlay:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosAppGridContentController *)self contentController];
  v6 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 photosContentController:v5 canPlayAssetInline:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)frameFor:(id)a3 outMinPlayableSize:(CGSize *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  v10 = a3;
  v11 = [(PXPhotosAppGridContentController *)self contentController];
  v12 = [v11 layout];

  v13 = [v12 spriteIndexForSpriteReference:v10];
  if (v13 != -1)
  {
    v31 = *off_1E7722008;
    v14 = *(off_1E7722028 + 1);
    v30[0] = *off_1E7722028;
    v30[1] = v14;
    v15 = *(off_1E7722048 + 7);
    v32[6] = *(off_1E7722048 + 6);
    v32[7] = v15;
    v16 = *(off_1E7722048 + 9);
    v32[8] = *(off_1E7722048 + 8);
    v32[9] = v16;
    v17 = *(off_1E7722048 + 3);
    v32[2] = *(off_1E7722048 + 2);
    v32[3] = v17;
    v18 = *(off_1E7722048 + 5);
    v32[4] = *(off_1E7722048 + 4);
    v32[5] = v18;
    v19 = *(off_1E7722048 + 1);
    v32[0] = *off_1E7722048;
    v32[1] = v19;
    v20 = *off_1E7722040;
    v21 = *(off_1E7722040 + 1);
    v29 = *(off_1E7722040 + 4);
    v28[0] = v20;
    v28[1] = v21;
    [v12 copyLayoutForSpritesInRange:v13 | 0x100000000 entities:&v31 geometries:v30 styles:v32 infos:v28];
    [v12 minPlayableSizeForSpriteAtIndex:v13];
    a4->width = v22;
    a4->height = v23;
    PXRectWithCenterAndSize();
  }

  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsFor:(id)a3
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  v4 = [v3 layout];
  [v4 safeAreaInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (CGRect)visibleRectFor:(id)a3
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  v4 = [v3 layout];
  [v4 visibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)shouldEnablePlaybackFor:(id)a3
{
  v4 = [(PXPhotosAppGridContentController *)self contentController];
  v5 = [v4 gridView];
  v6 = [v5 scrollingSpeedometer];
  v7 = [v6 regime] < 2 || -[PXPhotosAppGridContentController shouldEnablePlaybackDuringAnimatedScroll](self, "shouldEnablePlaybackDuringAnimatedScroll");

  return v7;
}

- (UIEdgeInsets)maskPaddingForFooterPresentation:(id)a3
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  v4 = [v3 delegate];
  [v4 maskPaddingForContentController:v3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)dismissPresentedViewControllerForFooterPresentation:(id)a3
{
  v4 = [(PXPhotosAppGridContentController *)self contentController];
  v3 = [v4 delegate];
  [v3 dismissPresentedViewControllerForContentController:v4];
}

- (void)footerPresentation:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v7 = [(PXPhotosAppGridContentController *)self contentController];
  v6 = [v7 delegate];
  [v6 photosContentController:v7 presentViewController:v5];
}

- (id)presentingViewControllerForFooterStatusController:(id)a3
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  v4 = [v3 delegate];
  v5 = [v4 presentingViewControllerForContentController:v3];

  return v5;
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
{
  v3 = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [v3 visibleRectDidChange];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXPhotosViewOptionsModelObservationContext != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:324 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 4) != 0)
  {
    v15 = v9;
    v10 = [(PXPhotosAppGridContentController *)self viewOptionsModel];
    v11 = [v10 selectedLensControlItem];
    v12 = [(PXPhotosAppGridContentController *)self contentController];
    v13 = [v12 overlayController];
    [v13 setCurrentLens:v11];

    v9 = v15;
  }
}

- (void)contentController:(id)a3 didChangeCurrentLens:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosAppGridContentController *)self viewOptionsModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__PXPhotosAppGridContentController_contentController_didChangeCurrentLens___block_invoke;
  v9[3] = &unk_1E77454F0;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  [v7 performChanges:v9];
}

void __75__PXPhotosAppGridContentController_contentController_didChangeCurrentLens___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = a2;
    [v6 setSelectedLensControlItem:v2];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = a2;
    v6 = [v3 lensControlItems];
    v5 = [v6 lastObject];
    [v4 setSelectedLensControlItem:v5];
  }
}

- (void)contentViewDidScrollToInitialPositionForContentController:(id)a3
{
  v4 = [(PXPhotosAppGridContentController *)self footerPresentation];
  [v4 viewDidScrollToInitialPosition];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidScrollToInitialPosition];
}

- (void)contentViewDidDisappearForContentController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [v7 setIsContentViewVisible:0];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidDisappear:v4];
  v8 = [v6 gridView];

  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge clearViewAnnotationDelegateFor:v8];
}

- (void)contentViewDidAppearForContentController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
  [v7 setIsContentViewVisible:1];

  v8 = [(PXPhotosAppGridContentController *)self footerStatusController];
  [v8 viewDidAppear];

  v9 = [(PXPhotosAppGridContentController *)self footerPresentation];
  [v9 viewDidAppear];

  [(PXPhotosAppGridContentController *)self swift_contentViewDidAppear:v4];
  v11 = [v6 gridView];

  v10 = v11;
  if (v11)
  {
    PXAppIntentsSetViewAnnotationDelegate(v11, self);
    v10 = v11;
  }
}

- (void)contentViewWillAppearForContentController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if ([(PXPhotosAppGridContentController *)self needsCountsInitially])
  {
    v6 = [v11 countsController];
    [v6 prepareCountsIfNeeded];
  }

  v7 = [v11 viewModel];
  v8 = [v7 wantsFooterVisibleImmediately];

  if (v8)
  {
    v9 = [(PXPhotosAppGridContentController *)self footerStatusController];
    [v9 viewWillAppear];

    v10 = [(PXPhotosAppGridContentController *)self footerPresentation];
    [v10 viewWillAppear];
  }

  [(PXPhotosAppGridContentController *)self swift_contentViewWillAppear:v4];
}

- (void)initializationWillFinishForContentController:(id)a3
{
  v4 = a3;
  v5 = PXPhotosViewEventTrackerCreate(v4);
  eventTracker = self->_eventTracker;
  self->_eventTracker = v5;

  v7 = [v4 viewModel];
  v8 = [v7 viewOptionsModel];
  viewOptionsModel = self->_viewOptionsModel;
  self->_viewOptionsModel = v8;

  [(PXPhotosViewOptionsModel *)self->_viewOptionsModel registerChangeObserver:self context:PXPhotosViewOptionsModelObservationContext];
  v10 = self->_viewOptionsModel;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PXPhotosAppGridContentController_initializationWillFinishForContentController___block_invoke;
  v12[3] = &unk_1E7749528;
  v13 = v4;
  v11 = v4;
  [(PXPhotosViewOptionsModel *)v10 performChanges:v12];
  [(PXPhotosAppGridContentController *)self swift_init];
}

void __81__PXPhotosAppGridContentController_initializationWillFinishForContentController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 overlayController];
  v4 = [v5 availableLenses];
  [v3 setAdditionalLensControlItems:v4];
}

- (void)gridView:(id)a3 didBecomeAvailableForContentController:(id)a4
{
  v5 = a3;
  v6 = [v5 scrollingSpeedometer];
  [(PXPhotosContentInlinePlaybackController *)self->_photosInlinePlaybackController setScrollViewSpeedometer:v6];

  v7 = [v5 scrollViewController];

  [v7 registerObserver:self];
}

- (id)makeBodyLayoutProviderForContentController:(id)a3 style:(int64_t)a4 headerStyle:(int64_t)a5
{
  v7 = [a3 viewModel];
  if (a4 == 3)
  {
    v9 = [[PXEditorialBodyLayoutProvider alloc] initWithViewModel:v7];
    v8 = v9;
    if (a5 == 7)
    {
      [(PXEditorialBodyLayoutProvider *)v9 setAvoidsFullWidthHeroes:1];
    }

    if ([v7 gridStyle] == 3 || objc_msgSend(v7, "gridStyle") == 4)
    {
      [(PXPhotosGridMessagesBodyLayoutProvider *)v8 setAvoidsFullWidthHeroes:1];
    }
  }

  else if (a4 == 2)
  {
    v8 = [[PXPhotosGridMessagesBodyLayoutProvider alloc] initWithViewModel:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)makeHeaderLayoutProviderForContentController:(id)a3 style:(int64_t)a4 viewProvider:(id)a5 bannerProvider:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 viewModel];
  v12 = v11;
  v13 = 0;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v15 = PXContentSyndicationSectionHeaderLayoutProvider;
      }

      else
      {
        v15 = PXDuplicatesSectionHeaderLayoutProvider;
      }
    }

    else if (a4 == 1)
    {
      v15 = PXAlbumSectionHeaderLayoutProvider;
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_21;
      }

      v15 = PXImportSectionHeaderLayoutProvider;
    }

    goto LABEL_19;
  }

  if (a4 <= 6)
  {
    if (a4 != 5)
    {
      v13 = [[PXAlbumSectionHeaderLayoutProvider alloc] initWithViewModel:v11 viewProvider:v9];
      [(PXAlbumSectionHeaderLayoutProvider *)v13 setEditorialStyle:1];
      goto LABEL_21;
    }

    v15 = PXSharingSuggestionSectionHeaderLayoutProvider;
    goto LABEL_19;
  }

  if (a4 == 7)
  {
    v16 = [[PXPhotosKeyAssetSectionHeaderLayoutProvider alloc] initWithViewModel:v11 viewProvider:v9 bannerProvider:v10];
LABEL_20:
    v13 = v16;
    goto LABEL_21;
  }

  if (a4 != 8)
  {
    if (a4 != 9)
    {
      goto LABEL_21;
    }

    v14 = [v11 contentFilterState];
    [v14 setIsSearchResultsFilterButton:1];

    v15 = PXPhotosSearchSectionHeaderLayoutProvider;
LABEL_19:
    v16 = [[v15 alloc] initWithViewModel:v12 viewProvider:v9];
    goto LABEL_20;
  }

  v13 = [[PXAlbumSectionHeaderLayoutProvider alloc] initWithViewModel:v11 viewProvider:v9];
  [(PXAlbumSectionHeaderLayoutProvider *)v13 setAllowsFloatingBackground:0];
LABEL_21:

  return v13;
}

- (PXPhotosGridFooterPresentation)footerPresentation
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  v4 = [v3 gridView];
  v5 = v4;
  footerPresentation = self->_footerPresentation;
  if (footerPresentation)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7)
  {
    v8 = [v3 layout];
    v9 = [PXPhotosGridFooterPresentation alloc];
    v10 = [v3 viewModel];
    v11 = [(PXPhotosGridFooterPresentation *)v9 initWithViewModel:v10 gridView:v5 layout:v8];
    v12 = self->_footerPresentation;
    self->_footerPresentation = v11;

    [(PXPhotosGridFooterPresentation *)self->_footerPresentation setDelegate:self];
    footerPresentation = self->_footerPresentation;
  }

  v13 = footerPresentation;

  return footerPresentation;
}

- (PXPhotosGridFooterStatusController)footerStatusController
{
  v3 = [(PXPhotosAppGridContentController *)self contentController];
  if (!self->_footerStatusController && [(PXPhotosAppGridContentController *)self needsFooterStatusController]&& v3)
  {
    v4 = [v3 countsController];
    v5 = [PXPhotosGridFooterStatusController alloc];
    v6 = [v3 viewModel];
    v7 = [(PXPhotosGridFooterStatusController *)v5 initWithViewModel:v6 itemsCountsController:v4];
    footerStatusController = self->_footerStatusController;
    self->_footerStatusController = v7;

    [(PXPhotosGridFooterStatusController *)self->_footerStatusController setDelegate:self];
  }

  v9 = self->_footerStatusController;
  v10 = v9;

  return v9;
}

- (void)_updateBarsController:(id)a3
{
  v9 = a3;
  v4 = [v9 viewModel];
  v5 = [v9 delegate];
  v6 = [v5 presentingViewControllerForContentController:v9];

  if ([v4 isEmbedded] && objc_msgSend(v4, "allowsChromeManagementBehavior") && v6)
  {
    v7 = [[PXPhotosBarsController alloc] initWithPhotosContentController:v9];
    barsController = self->_barsController;
    self->_barsController = v7;

    [(PXBarsController *)self->_barsController setViewController:v6];
  }
}

- (void)setShouldEnablePlaybackDuringAnimatedScroll:(BOOL)a3
{
  if (self->_shouldEnablePlaybackDuringAnimatedScroll != a3)
  {
    self->_shouldEnablePlaybackDuringAnimatedScroll = a3;
    v4 = [(PXPhotosAppGridContentController *)self inlinePlaybackController];
    [v4 invalidatePlaybackEnabled];
  }
}

- (PXPhotosAppGridContentController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosAppGridContentController.m" lineNumber:94 description:{@"%s is not available as initializer", "-[PXPhotosAppGridContentController init]"}];

  abort();
}

- (PXPhotosAppGridContentController)initWithConfiguration:(id)a3 contentController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PXPhotosAppGridContentController;
  v8 = [(PXPhotosAppGridContentController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_contentController, v7);
    v10 = objc_alloc_init(PXPhotosContentInlinePlaybackController);
    photosInlinePlaybackController = v9->_photosInlinePlaybackController;
    v9->_photosInlinePlaybackController = v10;

    [(PXPhotosContentInlinePlaybackController *)v9->_photosInlinePlaybackController setDelegate:v9];
    v12 = [v6 footerViewModel];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v6 footerVisibilityStyle] != 0;
    }

    v9->_needsFooterStatusController = v13;

    v9->_needsCountsInitially = v9->_needsFooterStatusController;
  }

  return v9;
}

@end