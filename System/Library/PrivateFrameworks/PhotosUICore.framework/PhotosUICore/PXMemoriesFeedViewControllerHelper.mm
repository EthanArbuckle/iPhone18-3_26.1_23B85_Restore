@interface PXMemoriesFeedViewControllerHelper
- (BOOL)canRequestNewMemoriesForReason:(unint64_t)a3;
- (CGPoint)anchorMemoryOrigin;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (CGRect)memoriesFeedTilingLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5;
- (PXMemoriesFeedTilingLayout)currentLayout;
- (PXMemoriesFeedTilingLayout)targetLayout;
- (PXMemoriesFeedViewControllerHelper)initWithPhotoLibrary:(id)a3;
- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)a3 photoLibrary:(id)a4 traitCollection:(id)a5 memoriesStyle:(unint64_t)a6 tilingControllerConfigurationBlock:(id)a7;
- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)a3 photoLibrary:(id)a4 traitCollection:(id)a5 tilingControllerConfigurationBlock:(id)a6;
- (PXMemoriesFeedViewControllerHelperDelegate)delegate;
- (PXSimpleIndexPath)indexPathForMemoryInScrollViewAtPoint:(SEL)a3;
- (PXSimpleIndexPath)indexPathForMemoryObjectReference:(SEL)a3;
- (id)_memoryReferenceInsertedOnChangeToDataSource:(id)a3 withChangeDetails:(id)a4;
- (id)memoriesFeedTilingLayout:(id)a3 titleFontNameForItemAtIndexPath:(PXSimpleIndexPath *)a4;
- (id)memoryInfoAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)memoryInfoForMemoryObjectReference:(id)a3;
- (id)memoryInfoInScrollViewAtPoint:(CGPoint)a3;
- (id)memoryObjectReferenceInScrollViewAtPoint:(CGPoint)a3;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4;
- (void)_configureMetrics:(id)a3;
- (void)_enumerateInsertedItemsInChangeDetails:(id)a3 withDataSource:(id)a4 usingBlock:(id)a5;
- (void)_handleChangeFromDataSource:(id)a3 toDataSource:(id)a4 withChangeDetails:(id)a5;
- (void)_handleDataSourceChange;
- (void)_handleFinishedRequestingNewMemoriesWithSuccess:(BOOL)a3 reason:(unint64_t)a4 error:(id)a5;
- (void)_handleNewLayoutSnapshot:(id)a3;
- (void)_handleRefreshCompletionWithResultInformation:(id)a3 reason:(unint64_t)a4 error:(id)a5;
- (void)_handleTraitCollectionChange:(unint64_t)a3;
- (void)_scrollToTargetMemoryUUIDWhenReady:(id)a3;
- (void)_setSpec:(id)a3;
- (void)_startRefreshForReason:(unint64_t)a3;
- (void)_updateHighlightedIndexPathInLayout;
- (void)_updateHighlightedIndexPathInLayout:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateLayoutEngineIfNeeded;
- (void)_updateSelectedIndexPathsInLayout;
- (void)_updateSelectedIndexPathsInLayout:(id)a3;
- (void)didChangeTilingControllerLayout;
- (void)feedViewControllerDidAppear:(id)a3 shouldUpdateNotifications:(BOOL)a4;
- (void)feedViewControllerDidDisappear:(id)a3;
- (void)invalidateMetrics;
- (void)layoutEngine:(id)a3 willGenerateLayoutWithGenerator:(id)a4 forSection:(unint64_t)a5;
- (void)layoutEngineDidUpdateLayoutSnapshot:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)requestNewMemoriesForReason:(unint64_t)a3 withCompletion:(id)a4;
- (void)saveAnchorMemory;
- (void)scrollFilterShouldRequestAdditionalContent:(id)a3;
- (void)scrollMemoryReferenceToVisible:(id)a3 animated:(BOOL)a4;
- (void)setActivatedMemoryReference:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHighlightedMemoryReference:(id)a3;
- (void)setLastActionPresentationMemoryReference:(id)a3;
- (void)setScrollTargetMemoryUUID:(id)a3;
@end

@implementation PXMemoriesFeedViewControllerHelper

- (CGPoint)anchorMemoryOrigin
{
  x = self->_anchorMemoryOrigin.x;
  y = self->_anchorMemoryOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXMemoriesFeedViewControllerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_scrollToTargetMemoryUUIDWhenReady:(id)a3
{
  v4 = a3;
  v5 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v9 = [v5 currentLayout];

  v6 = [v9 dataSource];
  v7 = [v6 sectionedObjectReferenceForMemoryUUID:v4];

  if (v7)
  {
    [(PXMemoriesFeedViewControllerHelper *)self scrollMemoryReferenceToVisible:v7 animated:1];
    scrollTargetMemoryUUID = self->_scrollTargetMemoryUUID;
    self->_scrollTargetMemoryUUID = 0;
  }
}

- (void)setScrollTargetMemoryUUID:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_scrollTargetMemoryUUID, a3);
  v5 = v6;
  if (v6)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _scrollToTargetMemoryUUIDWhenReady:v6];
    v5 = v6;
  }
}

- (id)memoriesFeedTilingLayout:(id)a3 titleFontNameForItemAtIndexPath:(PXSimpleIndexPath *)a4
{
  v5 = [a3 dataSource];
  v6 = *&a4->item;
  v11[0] = *&a4->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [v5 objectAtIndexPath:v11];
  v8 = [v7 assetCollection];
  v9 = [v8 titleFontName];

  return v9;
}

- (CGRect)memoriesFeedTilingLayout:(id)a3 contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)a4 forAspectRatio:(double)a5
{
  v7 = [a3 dataSource];
  v8 = *&a4->item;
  v24[0] = *&a4->dataSourceIdentifier;
  v24[1] = v8;
  v9 = [v7 objectAtIndexPath:v24];
  v10 = [v9 primaryAsset];
  if (memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__onceToken != -1)
  {
    dispatch_once(&memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__onceToken, &__block_literal_global_280_104988);
  }

  v11 = *off_1E77221F8;
  v12 = *(off_1E77221F8 + 1);
  v13 = *(off_1E77221F8 + 2);
  v14 = *(off_1E77221F8 + 3);
  if (v10 && memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__PHAssetRespondsToBestCropRect == 1)
  {
    v15 = [v9 assetCollection];
    [v10 bestCropRectForAspectRatio:1 verticalContentMode:objc_msgSend(v15 cropMode:{"px_shouldUseFacesRectForSmartCropping"), a5}];
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __109__PXMemoriesFeedViewControllerHelper_memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio___block_invoke()
{
  result = [MEMORY[0x1E6978630] instancesRespondToSelector:sel_bestCropRectForAspectRatio_verticalContentMode_cropMode_];
  memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__PHAssetRespondsToBestCropRect = result;
  return result;
}

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v5 = a4;
  [v5 contentBounds];
  [v5 contentInset];
  v6 = [(PXMemoriesFeedViewControllerHelper *)self scrollViewController];
  [v6 visibleOrigin];

  PXPointApproximatelyEqualToPoint();
}

- (id)tilingController:(id)a3 transitionAnimationCoordinatorForChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_delegateRespondsTo.feedIsVisible && (-[PXMemoriesFeedViewControllerHelper delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 memoriesFeedViewControllerHelperFeedIsVisible:self], v8, !v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [(PXMemoriesFeedViewControllerHelper *)self _transitionAnimationCoordinator];
  }

  return v10;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v5 = a4;
  v6 = [v5 fromLayout];
  v7 = [v6 dataSource];

  v8 = [v5 toLayout];

  v9 = [v8 dataSource];

  if (v7 == v9 || [v7 isEqual:v9])
  {
    v10 = objc_alloc_init(PXTileIdentifierIdentityConverter);
    v11 = 0;
  }

  else
  {
    v13 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    v14 = [v13 changeHistory];
    v11 = [v14 changeDetailsFromDataSourceIdentifier:objc_msgSend(v7 toDataSourceIdentifier:{"identifier"), objc_msgSend(v9, "identifier")}];

    v10 = [(PXSectionedTileIdentifierConverter *)[PXMemoriesFeedTileIdentifierConverter alloc] initWithFromDataSource:v7 toDataSource:v9 changeDetails:v11];
    if (self->_delegateRespondsTo.reloadedTileKindsOnObjectChanged)
    {
      v15 = [(PXMemoriesFeedViewControllerHelper *)self delegate];
      v16 = [v15 memoriesFeedViewControllerHelperReloadedTileKindsOnObjectChanged:self];

      [(PXTileIdentifierIdentityConverter *)v10 setReloadedTileKindsOnObjectChanged:v16];
    }
  }

  return v10;
}

- (void)scrollFilterShouldRequestAdditionalContent:(id)a3
{
  v3 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  if (objc_opt_respondsToSelector())
  {
    [v3 generateAdditionalEntriesIfPossible];
  }
}

- (void)layoutEngine:(id)a3 willGenerateLayoutWithGenerator:(id)a4 forSection:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (self->__layoutEngine != v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:830 description:{@"Invalid parameter not satisfying: %@", @"layoutEngine == __layoutEngine"}];
  }

  v11 = v10;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    v19 = [v11 px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:831 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"generator", v17, v19}];
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:831 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"generator", v17}];
  }

LABEL_5:
  if ([(PXMemoriesSpec *)self->__spec feedShouldAllowHeaders])
  {
    v12 = [(PXSectionedLayoutEngine *)v9 dataSourceSnapshot];
    [v12 identifier];
    if (a5)
    {
      if (v12)
      {
        [v12 indexPathForFirstPastMemorySection];
      }

      v13 = a5 == 0;
    }

    else
    {
      v13 = 1;
      [v11 setIsFirstHeader:1];
    }
  }

  else
  {
    v13 = 0;
  }

  [v11 setIncludeDateHeader:v13];
}

- (void)layoutEngineDidUpdateLayoutSnapshot:(id)a3
{
  v5 = a3;
  v10 = v5;
  if (self->__layoutEngine != v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"layoutEngine == __layoutEngine"}];

    v5 = v10;
  }

  v6 = [(PXSectionedLayoutEngine *)v5 layoutSnapshot];
  v7 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  v8 = [v7 layoutSnapshot];

  if (v8 != v6)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _handleNewLayoutSnapshot:v6];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PXDataSourceManagerObservationContext_105017 == a5)
  {
    v11 = v8;
    [(PXMemoriesFeedViewControllerHelper *)self _handleDataSourceChange];
  }

  else if (PXExtendedTraitCollectionObservationContext_105018 == a5)
  {
    v11 = v8;
    [(PXMemoriesFeedViewControllerHelper *)self _handleTraitCollectionChange:a4];
  }

  else if (PXSpecManagerObservationContext_105019 == a5)
  {
    v11 = v8;
    v9 = [(PXMemoriesFeedViewControllerHelper *)self specManager];
    v10 = [v9 spec];

    [(PXMemoriesFeedViewControllerHelper *)self _setSpec:v10];
  }

  else
  {
    if (PXSelectionManagerObservationContext_105020 != a5)
    {
      goto LABEL_10;
    }

    v11 = v8;
    [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout];
  }

  v8 = v11;
LABEL_10:
}

- (void)_handleNewLayoutSnapshot:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PXMemoriesFeedViewControllerHelper *)self saveAnchorMemory];
  v5 = [(PXMemoriesFeedViewControllerHelper *)self _spec];
  v6 = [[PXMemoriesFeedTilingLayout alloc] initWithSpec:v5 layoutSnapshot:v4];
  [(PXMemoriesFeedViewControllerHelper *)self _configureLayout:v6];
  [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:v6];
  v7 = PLMemoriesGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@ layout engine did emit new snapshot:\r%@\r\rTransitioning to new layout %@", &v9, 0x20u);
  }

  v8 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  [v8 transitionToLayout:v6];
  [(PXMemoriesFeedViewControllerHelper *)self didChangeTilingControllerLayout];
}

- (void)_handleTraitCollectionChange:(unint64_t)a3
{
  if ((a3 & 0x110) != 0)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _invalidateLayoutEngine];
  }
}

- (void)_updateHighlightedIndexPathInLayout:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = *(off_1E7722228 + 1);
    v14 = *off_1E7722228;
    v15 = v5;
    v6 = [(PXMemoriesFeedViewControllerHelper *)self highlightedMemoryReference];
    v7 = [(PXMemoriesFeedViewControllerHelper *)self lastActionPresentationMemoryReference];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v4 dataSource];
      v11 = v10;
      if (v10)
      {
        [v10 indexPathForObjectReference:v9];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
    }

    v12 = v14;
    v13 = v15;
    [v4 setHighlightedMemoryIndexPath:&v12];
  }
}

- (void)_updateHighlightedIndexPathInLayout
{
  v5 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:v5];
  v3 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v4 = [v3 targetLayout];

  if (v4 != v5)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:v4];
  }
}

- (void)_updateSelectedIndexPathsInLayout:(id)a3
{
  v9 = a3;
  v4 = [(PXMemoriesFeedViewControllerHelper *)self selectionManager];
  v5 = [v4 selectionSnapshot];
  v6 = [v9 dataSource];
  v7 = [v5 dataSource];

  if (v6 == v7)
  {
    v8 = [v5 selectedIndexPaths];
    [v9 setSelectedMemoryIndexPaths:v8];
  }
}

- (void)_updateSelectedIndexPathsInLayout
{
  v5 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout:v5];
  v3 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v4 = [v3 targetLayout];

  if (v4 != v5)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout:v4];
  }
}

- (void)_handleDataSourceChange
{
  v3 = [(PXMemoriesFeedViewControllerHelper *)self _layoutEngine];
  v4 = [v3 dataSourceSnapshot];
  v5 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  v6 = [v5 dataSource];

  v7 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  v8 = [v7 changeHistory];
  v9 = [v8 changeDetailsFromDataSourceIdentifier:objc_msgSend(v4 toDataSourceIdentifier:{"identifier"), objc_msgSend(v6, "identifier")}];

  if ([v9 count] == 1)
  {
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  [(PXMemoriesFeedViewControllerHelper *)self _handleChangeFromDataSource:v4 toDataSource:v6 withChangeDetails:v10];
  if ([v6 numberOfSections] < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  }

  [(PXMemoriesFeedViewControllerHelper *)self saveAnchorMemory];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__PXMemoriesFeedViewControllerHelper__handleDataSourceChange__block_invoke;
  v16[3] = &unk_1E7738CA0;
  v17 = v11;
  v18 = v6;
  v19 = v10;
  v12 = v10;
  v13 = v6;
  v14 = v11;
  [v3 performChanges:v16];
  if (self->_hasAppeared)
  {
    v15 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    [v15 updateCurrentMemoriesNonPendingAndNotificationStatus];
  }
}

void __61__PXMemoriesFeedViewControllerHelper__handleDataSourceChange__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setSeedItem:v3];
  [v4 setDataSourceSnapshot:a1[5] withChangeDetails:a1[6]];
}

- (void)saveAnchorMemory
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [v2 visibleRect];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x7810000000;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23[3] = &unk_1A561E057;
  v29 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0xE010000000;
  v10[3] = &unk_1A561E057;
  v3 = *(off_1E7722248 + 9);
  v19 = *(off_1E7722248 + 8);
  v20 = v3;
  v4 = *(off_1E7722248 + 11);
  v21 = *(off_1E7722248 + 10);
  v22 = v4;
  v5 = *(off_1E7722248 + 5);
  v15 = *(off_1E7722248 + 4);
  v16 = v5;
  v6 = *(off_1E7722248 + 7);
  v17 = *(off_1E7722248 + 6);
  v18 = v6;
  v7 = *(off_1E7722248 + 1);
  v11 = *off_1E7722248;
  v12 = v7;
  v8 = *(off_1E7722248 + 3);
  v13 = *(off_1E7722248 + 2);
  v14 = v8;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0x7FEFFFFFFFFFFFFFLL;
  [v2 contentInset];
  [v2 visibleRect];
  PXEdgeInsetsInsetRect();
}

void __54__PXMemoriesFeedViewControllerHelper_saveAnchorMemory__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  if ((*(a2 + 8) | 2) == 3)
  {
    PXDistanceBetweenPoints();
  }
}

- (void)scrollMemoryReferenceToVisible:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v8 = [v7 scrollController];
  [v8 updateIfNeeded];

  v9 = [v7 currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 dataSource];
    v11 = v10;
    v55 = 0u;
    v56 = 0u;
    if (v10)
    {
      [v10 indexPathForObjectReference:v6];
      if (v55 != *off_1E7721F68)
      {
        v12 = *MEMORY[0x1E695F050];
        v13 = *(MEMORY[0x1E695F050] + 8);
        v14 = *(MEMORY[0x1E695F050] + 16);
        v15 = *(MEMORY[0x1E695F050] + 24);
        [v11 firstItemIndexPath];
        v16 = *(&v43 + 1);
        v17 = v43;
        v18 = v44;
        v19 = *(&v55 + 1);
        v20 = v55;
        v21 = v56;
        goto LABEL_7;
      }
    }

    else if (*off_1E7721F68)
    {
      v21 = 0;
      v19 = 0;
      v18 = 0;
      v16 = 0;
      v17 = 0;
      v20 = 0;
      v12 = *MEMORY[0x1E695F050];
      v13 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v15 = *(MEMORY[0x1E695F050] + 24);
      v43 = 0uLL;
      v44 = 0uLL;
LABEL_7:
      if (v20 == v17 && v19 == v16 && v21 == v18 && *(&v56 + 1) == *(&v44 + 1))
      {
        [v9 contentBounds];
        v12 = v22;
        v13 = v23;
        v14 = v24;
        v15 = 1.0;
      }

      else
      {
        v25 = [v11 identifier];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = xmmword_1A5380E60;
        v37 = v25;
        v38 = *(&v55 + 1);
        v39 = v56;
        v40 = 0u;
        v41 = 0u;
        v42 = 0;
        if ([v9 getGeometry:&v43 group:0 userData:0 forTileWithIdentifier:&v36])
        {
          sub_1A524D1F4();
        }
      }

      v57.origin.x = v12;
      v57.origin.y = v13;
      v57.size.width = v14;
      v57.size.height = v15;
      if (!CGRectIsNull(v57))
      {
        v26 = +[PXTilingCoordinateSpaceConverter defaultConverter];
        [v26 convertRect:objc_msgSend(v9 fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(v7, "contentCoordinateSpaceIdentifier"), v12, v13, v14, v15}];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = [(PXMemoriesFeedViewControllerHelper *)self scrollViewController];
        [v35 scrollRectToVisible:v4 animated:{v28, v30, v32, v34}];
      }
    }
  }
}

- (void)_configureMetrics:(id)a3
{
  v11 = a3;
  v4 = [(PXMemoriesFeedViewControllerHelper *)self _spec];
  [v11 setSpec:v4];
  v5 = [(PXMemoriesFeedViewControllerHelper *)self traitCollection];
  [v5 layoutReferenceSize];
  v7 = v6;
  v9 = v8;

  [v11 setReferenceSize:{v7, v9}];
  [v4 layoutInsets];
  [v11 setContentInsets:?];
  if (self->_delegateRespondsTo.configureMetrics)
  {
    v10 = [(PXMemoriesFeedViewControllerHelper *)self delegate];
    [v10 memoriesFeedViewControllerHelper:self configureMetrics:v11];
  }
}

- (void)_updateLayoutEngineIfNeeded
{
  if (self->_needsToUpdate.layoutEngine)
  {
    v22 = v2;
    v23 = v3;
    self->_needsToUpdate.layoutEngine = 0;
    v6 = PLMemoriesGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "Updating memories feed layout", buf, 2u);
    }

    v7 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    v8 = [v7 dataSource];
    v9 = [(PXMemoriesFeedViewControllerHelper *)self _spec];
    v10 = objc_alloc_init([v9 feedLayoutMetricsClass]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:585 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedLayoutMetrics class]]"}];
    }

    [(PXMemoriesFeedViewControllerHelper *)self _configureMetrics:v10];
    v11 = [v9 newLayoutGeneratorWithMetrics:v10];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"[layoutGenerator isKindOfClass:[PXMemoriesFeedLayoutGenerator class]]"}];
    }

    v12 = [v9 feedAxis];
    [(PXSectionedLayoutEngine *)self->__layoutEngine setDelegate:0];
    v13 = [off_1E77218B8 alloc];
    [v9 layoutInsets];
    v14 = [v13 initWithAxis:v12 layoutGenerator:v11 dataSourceSnapshot:v8 insets:?];
    layoutEngine = self->__layoutEngine;
    self->__layoutEngine = v14;

    [(PXSectionedLayoutEngine *)self->__layoutEngine setDelegate:self];
    v16 = [(PXSectionedLayoutEngine *)self->__layoutEngine performChangesAndWait:&__block_literal_global_105035];
    if (!self->_delegateRespondsTo.feedIsVisible || (-[PXMemoriesFeedViewControllerHelper delegate](self, "delegate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 memoriesFeedViewControllerHelperFeedIsVisible:self], v17, (v18 & 1) == 0))
    {
      [(PXMemoriesFeedViewControllerHelper *)self _handleNewLayoutSnapshot:v16];
    }
  }
}

void __65__PXMemoriesFeedViewControllerHelper__updateLayoutEngineIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AC88];
  v4 = a2;
  v3 = [v2 indexPathForItem:0 inSection:0];
  [v4 setSeedItem:v3];

  [v4 setSeedSize:{1000000.0, 1000000.0}];
}

- (void)_updateIfNeeded
{
  if ([(PXMemoriesFeedViewControllerHelper *)self _needsUpdate])
  {

    [(PXMemoriesFeedViewControllerHelper *)self _updateLayoutEngineIfNeeded];
  }
}

- (void)_setSpec:(id)a3
{
  v5 = a3;
  if (self->__spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__spec, a3);
    [(PXMemoriesFeedViewControllerHelper *)self _invalidateLayoutEngine];
    v5 = v6;
  }
}

- (void)_enumerateInsertedItemsInChangeDetails:(id)a3 withDataSource:(id)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = [v7 toDataSourceIdentifier];
  v11 = [v7 sectionChanges];
  if ([v11 hasIncrementalChanges])
  {
    v12 = [v11 insertedIndexes];
  }

  else
  {
    v12 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke;
  v21[3] = &unk_1E7738C08;
  v13 = v8;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v24 = &v26;
  v25 = v10;
  [v12 enumerateIndexesUsingBlock:v21];
  if ((v27[3] & 1) == 0)
  {
    v15 = [v7 sectionsWithItemChanges];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke_2;
    v16[3] = &unk_1E7738C08;
    v17 = v7;
    v18 = v14;
    v19 = &v26;
    v20 = v10;
    [v15 enumerateIndexesUsingBlock:v16];
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) numberOfItemsInSection:a2];
  if (result >= 1)
  {
    v8 = result;
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 48);
      v11[0] = *(a1 + 56);
      v11[1] = a2;
      v11[2] = i;
      v11[3] = 0x7FFFFFFFFFFFFFFFLL;
      result = (*(*(a1 + 40) + 16))(*(a1 + 40), v11, *(v10 + 8) + 24, v7);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }

  return result;
}

void __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) itemChangesInSection:a2];
  if ([v6 hasIncrementalChanges])
  {
    v7 = [v6 insertedIndexes];
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke_3;
  v10[3] = &unk_1E7738C30;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = a2;
  v11 = v8;
  v12 = v9;
  [v7 enumerateIndexesUsingBlock:v10];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

uint64_t __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), &v7, *(*(a1 + 40) + 8) + 24, a4);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)_memoryReferenceInsertedOnChangeToDataSource:(id)a3 withChangeDetails:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 toDataSourceIdentifier];
    if (v10 != [v7 identifier])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:496 description:@"data source identifier mismatch"];
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x4010000000;
    v21 = &unk_1A561E057;
    v11 = *(off_1E7722228 + 1);
    v22 = *off_1E7722228;
    v23 = v11;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__PXMemoriesFeedViewControllerHelper__memoryReferenceInsertedOnChangeToDataSource_withChangeDetails___block_invoke;
    v17[3] = &unk_1E7738BE0;
    v17[4] = &v18;
    [(PXMemoriesFeedViewControllerHelper *)self _enumerateInsertedItemsInChangeDetails:v9 withDataSource:v7 usingBlock:v17];
    if (v19[4] == *off_1E7721F68)
    {
      v12 = 0;
    }

    else
    {
      v13 = *(v19 + 3);
      v16[0] = *(v19 + 2);
      v16[1] = v13;
      v12 = [v7 objectReferenceAtIndexPath:v16];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __101__PXMemoriesFeedViewControllerHelper__memoryReferenceInsertedOnChangeToDataSource_withChangeDetails___block_invoke(uint64_t result, _OWORD *a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v5 = *(v3 + 32);
  v4 = (v3 + 32);
  if (v5 == *off_1E7721F68)
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

- (void)_handleFinishedRequestingNewMemoriesWithSuccess:(BOOL)a3 reason:(unint64_t)a4 error:(id)a5
{
  v6 = a3;
  v13 = a5;
  if ((a4 | 2) == 2)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:482 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXMemoriesFeedViewControllerHelper *)self _setRequestingNewMemories:0];
  v9 = [(PXMemoriesFeedViewControllerHelper *)self _newMemoriesRequestCompletion];

  v10 = v13;
  if (v9)
  {
    v11 = [(PXMemoriesFeedViewControllerHelper *)self _newMemoriesRequestCompletion];
    (v11)[2](v11, v6, v13);

    [(PXMemoriesFeedViewControllerHelper *)self _setNewMemoriesRequestCompletion:0];
    v10 = v13;
  }
}

- (void)_handleRefreshCompletionWithResultInformation:(id)a3 reason:(unint64_t)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PLMemoriesGetLog();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Memories refresh result: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Memories refresh error: %@", buf, 0xCu);
  }

  v12 = +[PXMemoriesFeedSettings sharedInstance];
  v13 = [v12 dataSourceType];

  v14 = [v9 domain];
  v11 = v14;
  if (v13 == 3)
  {
    if ([v14 isEqualToString:@"com.apple.photoanalysis"])
    {
      v15 = [v9 code];

      if (v15 == 6)
      {
        v16 = 30;
        goto LABEL_13;
      }

LABEL_16:
      [(PXMemoriesFeedViewControllerHelper *)self _handleFinishedRequestingNewMemoriesWithSuccess:v8 != 0 reason:a4 error:0];
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (![v14 isEqualToString:@"com.apple.photos.test"])
  {
    goto LABEL_15;
  }

  v17 = [v9 code];

  if (v17 != 42)
  {
    goto LABEL_16;
  }

  v16 = 3;
LABEL_13:
  v18 = [(PXMemoriesFeedViewControllerHelper *)self _refreshRetryCount];
  [(PXMemoriesFeedViewControllerHelper *)self _setRefreshRetryCount:v18 + 1];
  if (v18 >= v16)
  {
    goto LABEL_16;
  }

  objc_initWeak(buf, self);
  v19 = dispatch_time(0, 5000000000);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__PXMemoriesFeedViewControllerHelper__handleRefreshCompletionWithResultInformation_reason_error___block_invoke;
  v20[3] = &unk_1E7749808;
  objc_copyWeak(v21, buf);
  v21[1] = a4;
  dispatch_after(v19, MEMORY[0x1E69E96A0], v20);
  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
LABEL_17:
}

void __97__PXMemoriesFeedViewControllerHelper__handleRefreshCompletionWithResultInformation_reason_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startRefreshForReason:*(a1 + 40)];
}

- (void)_startRefreshForReason:(unint64_t)a3
{
  v5 = +[PXMemoriesFeedSettings sharedInstance];
  v6 = [v5 dataSourceType];

  if (v6 != 3)
  {
    v7 = [(PXMemoriesFeedViewControllerHelper *)self _refreshRetryCount]< 2;
    objc_initWeak(&location, self);
    v9 = v7;
    objc_copyWeak(v8, &location);
    v8[1] = a3;
    px_dispatch_on_main_queue();
  }
}

void __61__PXMemoriesFeedViewControllerHelper__startRefreshForReason___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  v5 = v2;
  v3 = 0;
  if (*(a1 + 48) == 1)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.photos.test" code:42 userInfo:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRefreshCompletionWithResultInformation:v5 reason:*(a1 + 40) error:v3];
}

- (void)invalidateMetrics
{
  [(PXMemoriesFeedViewControllerHelper *)self _invalidateLayoutEngine];

  [(PXMemoriesFeedViewControllerHelper *)self _updateIfNeeded];
}

- (void)feedViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  [(PXMemoriesFeedViewControllerHelper *)self saveAnchorMemory];
  self->_hasAppeared = 0;
  v5 = [(PXMemoriesFeedViewControllerHelper *)self eventTracker];
  [v5 logViewControllerDidDisappear:v4];
}

- (void)feedViewControllerDidAppear:(id)a3 shouldUpdateNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  if (!self->_hasKickedOffBatchGeneration)
  {
    self->_hasKickedOffBatchGeneration = 1;
    [v8 generateAdditionalEntriesIfPossible];
  }

  self->_hasAppeared = 1;
  v7 = [(PXMemoriesFeedViewControllerHelper *)self eventTracker];
  [v7 logViewControllerDidAppear:v6];

  if (v4)
  {
    [v8 updateCurrentMemoriesNonPendingAndNotificationStatus];
  }
}

- (void)setHighlightedMemoryReference:(id)a3
{
  v5 = a3;
  if (self->_highlightedMemoryReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_highlightedMemoryReference, a3);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    v5 = v6;
  }
}

- (void)setLastActionPresentationMemoryReference:(id)a3
{
  v5 = a3;
  if (self->_lastActionPresentationMemoryReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastActionPresentationMemoryReference, a3);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    v5 = v6;
  }
}

- (void)setActivatedMemoryReference:(id)a3
{
  v5 = a3;
  if (self->_activatedMemoryReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_activatedMemoryReference, a3);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    v5 = v6;
  }
}

- (PXMemoriesFeedTilingLayout)targetLayout
{
  v2 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v3 = [v2 targetLayout];

  return v3;
}

- (PXMemoriesFeedTilingLayout)currentLayout
{
  v2 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v3 = [v2 currentLayout];

  return v3;
}

- (PXSimpleIndexPath)indexPathForMemoryObjectReference:(SEL)a3
{
  v6 = a4;
  v7 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v7;
  if (v6)
  {
    v8 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
    v9 = [v8 dataSource];
    v10 = v9;
    if (v9)
    {
      [v9 indexPathForObjectReference:v6];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *&retstr->dataSourceIdentifier = v12;
    *&retstr->item = v13;
  }

  return result;
}

- (id)memoryInfoAtIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  v5 = [v4 dataSource];
  v6 = *&a3->item;
  v9[0] = *&a3->dataSourceIdentifier;
  v9[1] = v6;
  v7 = [v5 objectAtIndexPath:v9];

  return v7;
}

- (PXSimpleIndexPath)indexPathForMemoryInScrollViewAtPoint:(SEL)a3
{
  y = a4.y;
  x = a4.x;
  v7 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v7;
  v15 = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  v8 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  if (v8)
  {
    v9 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    [v9 convertPoint:objc_msgSend(v15 fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(v8, "coordinateSpaceIdentifier"), x, y}];
    v11 = v10;
    v13 = v12;

    [v8 indexPathForMemoryAtPoint:{v11, v13}];
  }

  return result;
}

- (id)memoryInfoForMemoryObjectReference:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
    v6 = [v5 dataSource];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
      v8 = [v10 dataSource];
    }

    v9 = [v8 objectReferenceForObjectReference:v4];

    if (v9)
    {
      [v9 indexPath];
      v4 = [v8 objectAtIndexPath:&v12];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v4;
}

- (id)memoryInfoInScrollViewAtPoint:(CGPoint)a3
{
  v4 = [(PXMemoriesFeedViewControllerHelper *)self memoryObjectReferenceInScrollViewAtPoint:a3.x, a3.y];
  v5 = [(PXMemoriesFeedViewControllerHelper *)self memoryInfoForMemoryObjectReference:v4];

  return v5;
}

- (id)memoryObjectReferenceInScrollViewAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  v7 = [v6 dataSource];
  v11 = 0u;
  v12 = 0u;
  [(PXMemoriesFeedViewControllerHelper *)self indexPathForMemoryInScrollViewAtPoint:x, y];
  if (v7 && v11 != *off_1E7721F68)
  {
    v10[0] = v11;
    v10[1] = v12;
    v8 = [v7 objectReferenceAtIndexPath:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)didChangeTilingControllerLayout
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(PXMemoriesFeedViewControllerHelper *)self _memoryReferenceToScrollToVisible];
  if (v3)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _setMemoryReferenceToScrollToVisible:0];
    v4 = PLMemoriesGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412546;
      v6 = self;
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ scrolling memory reference %@", &v5, 0x16u);
    }

    [(PXMemoriesFeedViewControllerHelper *)self scrollMemoryReferenceToVisible:v3 animated:self->_hasAppeared];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->feedIsVisible = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->reloadedTileKindsOnObjectChanged = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->configureMetrics = objc_opt_respondsToSelector() & 1;
  }
}

- (void)requestNewMemoriesForReason:(unint64_t)a3 withCompletion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ((a3 | 2) != 3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"(PHMemoryCreationReasonUserRequest == reason) || (PHMemoryCreationReasonTodayWidgetRequest == reason)"}];
  }

  v9 = [(PXMemoriesFeedViewControllerHelper *)self _isRequestingNewMemories];
  v10 = [(PXMemoriesFeedViewControllerHelper *)self canRequestNewMemoriesForReason:a3];
  if (!v9 && v10)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _setNewMemoriesRequestCompletion:v7];
    [(PXMemoriesFeedViewControllerHelper *)self _setRequestingNewMemories:1];
    [(PXMemoriesFeedViewControllerHelper *)self _setRefreshRetryCount:0];
    v11 = [MEMORY[0x1E695DF00] date];
    [(PXMemoriesFeedViewControllerHelper *)self _setLastUserMemoryGenerationRequestDate:v11];

    [(PXMemoriesFeedViewControllerHelper *)self _startRefreshForReason:a3];
    goto LABEL_18;
  }

  v12 = PLMemoriesGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = "Widget";
    if (a3 == 1)
    {
      v14 = "User";
    }

    *buf = 136315138;
    v18 = v14;
    v15 = "%s request to generate memories ignored: request already in progress";
  }

  else
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v16 = "Widget";
    if (a3 == 1)
    {
      v16 = "User";
    }

    *buf = 136315138;
    v18 = v16;
    v15 = "%s request to generate memories ignored: reached request limit";
  }

  _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
LABEL_16:

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

LABEL_18:
}

- (BOOL)canRequestNewMemoriesForReason:(unint64_t)a3
{
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([v6 BOOLForKey:@"PXIgnoreRefreshLimit"] & 1) != 0 || a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    if (!a3 || a3 == 2)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:217 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = 0;
  }

  return v7;
}

- (void)_handleChangeFromDataSource:(id)a3 toDataSource:(id)a4 withChangeDetails:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = PLMemoriesGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v26 = 138412802;
    *&v26[4] = self;
    *&v26[12] = 2112;
    *&v26[14] = v8;
    *&v26[22] = 2112;
    v27 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "%@ data source changed to %@ with details %@", v26, 0x20u);
  }

  v11 = [(PXMemoriesFeedViewControllerHelper *)self _lastUserMemoryGenerationRequestDate];
  v12 = v11;
  if (v11)
  {
    [v11 timeIntervalSinceNow];
    v14 = v13;
    [(PXMemoriesFeedViewControllerHelper *)self _setLastUserMemoryGenerationRequestDate:v12];
    if (v14 <= 0.0 && v14 > -36000.0)
    {
      v15 = [(PXMemoriesFeedViewControllerHelper *)self _memoryReferenceInsertedOnChangeToDataSource:v8 withChangeDetails:v9];
      v16 = PLMemoriesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  if (!a3 && [v8 numberOfSections] >= 1 && objc_msgSend(v8, "numberOfItemsInSection:", 0) >= 1)
  {
    *v26 = [v8 identifier];
    *&v26[8] = 0uLL;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [v8 objectReferenceAtIndexPath:v26];
    v16 = PLMemoriesGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_16:
      *v26 = 138412546;
      *&v26[4] = self;
      *&v26[12] = 2112;
      *&v26[14] = v15;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "%@ memory to scroll to visible %@", v26, 0x16u);
    }

LABEL_17:

    [(PXMemoriesFeedViewControllerHelper *)self _setMemoryReferenceToScrollToVisible:v15];
LABEL_26:

    goto LABEL_27;
  }

  if (self->_scrollTargetMemoryUUID)
  {
    v15 = [v8 sectionedObjectReferenceForMemoryUUID:?];
    if (v15)
    {
      [(PXMemoriesFeedViewControllerHelper *)self _setMemoryReferenceToScrollToVisible:v15];
      [(PXMemoriesFeedViewControllerHelper *)self setScrollTargetMemoryUUID:0];
      v17 = PLMemoriesGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        scrollTargetMemoryUUID = self->_scrollTargetMemoryUUID;
        *v26 = 138412802;
        *&v26[4] = self;
        *&v26[12] = 2112;
        *&v26[14] = v15;
        *&v26[22] = 2112;
        v27 = scrollTargetMemoryUUID;
        v19 = "%@ memory to scroll to a memory target %@ (uuid - %@)";
        v20 = v17;
        v21 = OS_LOG_TYPE_DEBUG;
        v22 = 32;
LABEL_24:
        _os_log_impl(&dword_1A3C1C000, v20, v21, v19, v26, v22);
      }

LABEL_25:

      goto LABEL_26;
    }

    v23 = _handleChangeFromDataSource_toDataSource_withChangeDetails__numberOfRetry++;
    if (v23 < 2)
    {
      v17 = PLMemoriesGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }

      v25 = self->_scrollTargetMemoryUUID;
      *v26 = 138412546;
      *&v26[4] = self;
      *&v26[12] = 2112;
      *&v26[14] = v25;
      v19 = "%@ attempted to scroll to a memory with uuid %@ but couldn't find sectioned object reference for it. Try again at the next iteration of datasource change.";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      [(PXMemoriesFeedViewControllerHelper *)self setScrollTargetMemoryUUID:0];
      _handleChangeFromDataSource_toDataSource_withChangeDetails__numberOfRetry = 0;
      v17 = PLMemoriesGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v24 = self->_scrollTargetMemoryUUID;
      *v26 = 138412546;
      *&v26[4] = self;
      *&v26[12] = 2112;
      *&v26[14] = v24;
      v19 = "%@ Failed to scroll to a memory with uuid %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
    }

    v22 = 22;
    goto LABEL_24;
  }

LABEL_27:
}

- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)a3 photoLibrary:(id)a4 traitCollection:(id)a5 memoriesStyle:(unint64_t)a6 tilingControllerConfigurationBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = PXMemoriesFeedViewControllerHelper;
  v17 = [(PXMemoriesFeedViewControllerHelper *)&v45 init];
  v18 = v17;
  if (v17)
  {
    v17->_needsToUpdate.layoutEngine = 1;
    v19 = PXMemoriesViewControllerEventTrackerCreate(v15);
    eventTracker = v18->_eventTracker;
    v18->_eventTracker = v19;

    objc_storeStrong(&v18->_scrollViewController, a3);
    objc_storeStrong(&v18->_photoLibrary, a4);
    objc_storeStrong(&v18->_traitCollection, a5);
    v21 = [[PXMemoriesSpecManager alloc] initWithExtendedTraitCollection:v15 options:0 style:a6];
    specManager = v18->_specManager;
    v18->_specManager = v21;

    v23 = [(PXFeatureSpecManager *)v18->_specManager spec];
    spec = v18->__spec;
    v18->__spec = v23;

    v25 = [objc_alloc(-[PXMemoriesSpec feedDataSourceManagerClass](v18->__spec "feedDataSourceManagerClass"))];
    dataSourceManager = v18->_dataSourceManager;
    v18->_dataSourceManager = v25;

    [(PXMemoriesFeedDataSourceManagerBase *)v18->_dataSourceManager startObservingChanges];
    v27 = [[off_1E77218C8 alloc] initWithDataSourceManager:v18->_dataSourceManager];
    selectionManager = v18->_selectionManager;
    v18->_selectionManager = v27;

    [(PXSectionedDataSourceManager *)v18->_dataSourceManager registerChangeObserver:v18 context:PXDataSourceManagerObservationContext_105017];
    [(PXSectionedSelectionManager *)v18->_selectionManager registerChangeObserver:v18 context:PXSelectionManagerObservationContext_105020];
    [(PXExtendedTraitCollection *)v18->_traitCollection registerChangeObserver:v18 context:PXExtendedTraitCollectionObservationContext_105018];
    [(PXMemoriesSpecManager *)v18->_specManager registerChangeObserver:v18 context:PXSpecManagerObservationContext_105019];
    [(PXMemoriesFeedDataSourceManager *)v18->_dataSourceManager startGeneratingMemories];
    v29 = [[PXMemoriesFeedScrollFilter alloc] initWithScrollViewController:v18->_scrollViewController];
    scrollFilter = v18->__scrollFilter;
    v18->__scrollFilter = v29;

    [(PXMemoriesFeedScrollFilter *)v18->__scrollFilter setDelegate:v18];
    [(PXMemoriesFeedScrollFilter *)v18->__scrollFilter setSpec:v18->__spec];
    v31 = objc_alloc_init([(PXMemoriesSpec *)v18->__spec feedTransitionAnimationCoordinatorClass]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"[transitionAnimationCoordinator isKindOfClass:[PXMemoriesFeedTransitionAnimationCoordinator class]]"}];
    }

    objc_storeStrong(&v18->__transitionAnimationCoordinator, v31);
    v32 = [PXMemoriesFeedTilingLayout alloc];
    v33 = v18->__spec;
    v34 = [(PXSectionedLayoutEngine *)v18->__layoutEngine layoutSnapshot];
    v35 = [(PXMemoriesFeedTilingLayout *)v32 initWithSpec:v33 layoutSnapshot:v34];

    [(PXMemoriesFeedViewControllerHelper *)v18 _configureLayout:v35];
    v36 = [[PXTilingController alloc] initWithLayout:v35];
    tilingController = v18->_tilingController;
    v18->_tilingController = v36;

    [(PXTilingController *)v18->_tilingController setScrollController:v18->_scrollViewController];
    [(PXTilingController *)v18->_tilingController setScrollDelegate:v18];
    [(PXTilingController *)v18->_tilingController setTransitionDelegate:v18];
    v16[2](v16, v18->_tilingController, v18->__spec);
    v38 = [(PXTilingController *)v18->_tilingController tileSource];

    if (!v38)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:146 description:@"The configured tiling controller must have a tile source."];
    }

    v39 = [(PXTilingController *)v18->_tilingController tileAnimator];

    if (!v39)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:147 description:@"The configured tiling controller must have a tile animator."];
    }
  }

  return v18;
}

- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)a3 photoLibrary:(id)a4 traitCollection:(id)a5 tilingControllerConfigurationBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"traitCollection"}];
  }

  v15 = [(PXMemoriesFeedViewControllerHelper *)self initWithScrollViewController:v11 photoLibrary:v12 traitCollection:v13 memoriesStyle:0 tilingControllerConfigurationBlock:v14];

  return v15;
}

- (PXMemoriesFeedViewControllerHelper)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMemoriesFeedViewControllerHelper;
  v6 = [(PXMemoriesFeedViewControllerHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
  }

  return v7;
}

@end