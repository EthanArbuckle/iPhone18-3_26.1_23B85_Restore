@interface PXMemoriesFeedViewControllerHelper
- (BOOL)canRequestNewMemoriesForReason:(unint64_t)reason;
- (CGPoint)anchorMemoryOrigin;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (CGRect)memoriesFeedTilingLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio;
- (PXMemoriesFeedTilingLayout)currentLayout;
- (PXMemoriesFeedTilingLayout)targetLayout;
- (PXMemoriesFeedViewControllerHelper)initWithPhotoLibrary:(id)library;
- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)controller photoLibrary:(id)library traitCollection:(id)collection memoriesStyle:(unint64_t)style tilingControllerConfigurationBlock:(id)block;
- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)controller photoLibrary:(id)library traitCollection:(id)collection tilingControllerConfigurationBlock:(id)block;
- (PXMemoriesFeedViewControllerHelperDelegate)delegate;
- (PXSimpleIndexPath)indexPathForMemoryInScrollViewAtPoint:(SEL)point;
- (PXSimpleIndexPath)indexPathForMemoryObjectReference:(SEL)reference;
- (id)_memoryReferenceInsertedOnChangeToDataSource:(id)source withChangeDetails:(id)details;
- (id)memoriesFeedTilingLayout:(id)layout titleFontNameForItemAtIndexPath:(PXSimpleIndexPath *)path;
- (id)memoryInfoAtIndexPath:(PXSimpleIndexPath *)path;
- (id)memoryInfoForMemoryObjectReference:(id)reference;
- (id)memoryInfoInScrollViewAtPoint:(CGPoint)point;
- (id)memoryObjectReferenceInScrollViewAtPoint:(CGPoint)point;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change;
- (void)_configureMetrics:(id)metrics;
- (void)_enumerateInsertedItemsInChangeDetails:(id)details withDataSource:(id)source usingBlock:(id)block;
- (void)_handleChangeFromDataSource:(id)source toDataSource:(id)dataSource withChangeDetails:(id)details;
- (void)_handleDataSourceChange;
- (void)_handleFinishedRequestingNewMemoriesWithSuccess:(BOOL)success reason:(unint64_t)reason error:(id)error;
- (void)_handleNewLayoutSnapshot:(id)snapshot;
- (void)_handleRefreshCompletionWithResultInformation:(id)information reason:(unint64_t)reason error:(id)error;
- (void)_handleTraitCollectionChange:(unint64_t)change;
- (void)_scrollToTargetMemoryUUIDWhenReady:(id)ready;
- (void)_setSpec:(id)spec;
- (void)_startRefreshForReason:(unint64_t)reason;
- (void)_updateHighlightedIndexPathInLayout;
- (void)_updateHighlightedIndexPathInLayout:(id)layout;
- (void)_updateIfNeeded;
- (void)_updateLayoutEngineIfNeeded;
- (void)_updateSelectedIndexPathsInLayout;
- (void)_updateSelectedIndexPathsInLayout:(id)layout;
- (void)didChangeTilingControllerLayout;
- (void)feedViewControllerDidAppear:(id)appear shouldUpdateNotifications:(BOOL)notifications;
- (void)feedViewControllerDidDisappear:(id)disappear;
- (void)invalidateMetrics;
- (void)layoutEngine:(id)engine willGenerateLayoutWithGenerator:(id)generator forSection:(unint64_t)section;
- (void)layoutEngineDidUpdateLayoutSnapshot:(id)snapshot;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)requestNewMemoriesForReason:(unint64_t)reason withCompletion:(id)completion;
- (void)saveAnchorMemory;
- (void)scrollFilterShouldRequestAdditionalContent:(id)content;
- (void)scrollMemoryReferenceToVisible:(id)visible animated:(BOOL)animated;
- (void)setActivatedMemoryReference:(id)reference;
- (void)setDelegate:(id)delegate;
- (void)setHighlightedMemoryReference:(id)reference;
- (void)setLastActionPresentationMemoryReference:(id)reference;
- (void)setScrollTargetMemoryUUID:(id)d;
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

- (void)_scrollToTargetMemoryUUIDWhenReady:(id)ready
{
  readyCopy = ready;
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  currentLayout = [tilingController currentLayout];

  dataSource = [currentLayout dataSource];
  v7 = [dataSource sectionedObjectReferenceForMemoryUUID:readyCopy];

  if (v7)
  {
    [(PXMemoriesFeedViewControllerHelper *)self scrollMemoryReferenceToVisible:v7 animated:1];
    scrollTargetMemoryUUID = self->_scrollTargetMemoryUUID;
    self->_scrollTargetMemoryUUID = 0;
  }
}

- (void)setScrollTargetMemoryUUID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_scrollTargetMemoryUUID, d);
  v5 = dCopy;
  if (dCopy)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _scrollToTargetMemoryUUIDWhenReady:dCopy];
    v5 = dCopy;
  }
}

- (id)memoriesFeedTilingLayout:(id)layout titleFontNameForItemAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSource = [layout dataSource];
  v6 = *&path->item;
  v11[0] = *&path->dataSourceIdentifier;
  v11[1] = v6;
  v7 = [dataSource objectAtIndexPath:v11];
  assetCollection = [v7 assetCollection];
  titleFontName = [assetCollection titleFontName];

  return titleFontName;
}

- (CGRect)memoriesFeedTilingLayout:(id)layout contentsRectForItemAtIndexPath:(PXSimpleIndexPath *)path forAspectRatio:(double)ratio
{
  dataSource = [layout dataSource];
  v8 = *&path->item;
  v24[0] = *&path->dataSourceIdentifier;
  v24[1] = v8;
  v9 = [dataSource objectAtIndexPath:v24];
  primaryAsset = [v9 primaryAsset];
  if (memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__onceToken != -1)
  {
    dispatch_once(&memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__onceToken, &__block_literal_global_280_104988);
  }

  v11 = *off_1E77221F8;
  v12 = *(off_1E77221F8 + 1);
  v13 = *(off_1E77221F8 + 2);
  v14 = *(off_1E77221F8 + 3);
  if (primaryAsset && memoriesFeedTilingLayout_contentsRectForItemAtIndexPath_forAspectRatio__PHAssetRespondsToBestCropRect == 1)
  {
    assetCollection = [v9 assetCollection];
    [primaryAsset bestCropRectForAspectRatio:1 verticalContentMode:objc_msgSend(assetCollection cropMode:{"px_shouldUseFacesRectForSmartCropping"), ratio}];
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

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  layoutCopy = layout;
  [layoutCopy contentBounds];
  [layoutCopy contentInset];
  scrollViewController = [(PXMemoriesFeedViewControllerHelper *)self scrollViewController];
  [scrollViewController visibleOrigin];

  PXPointApproximatelyEqualToPoint();
}

- (id)tilingController:(id)controller transitionAnimationCoordinatorForChange:(id)change
{
  controllerCopy = controller;
  changeCopy = change;
  if (self->_delegateRespondsTo.feedIsVisible && (-[PXMemoriesFeedViewControllerHelper delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 memoriesFeedViewControllerHelperFeedIsVisible:self], v8, !v9))
  {
    _transitionAnimationCoordinator = 0;
  }

  else
  {
    _transitionAnimationCoordinator = [(PXMemoriesFeedViewControllerHelper *)self _transitionAnimationCoordinator];
  }

  return _transitionAnimationCoordinator;
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  changeCopy = change;
  fromLayout = [changeCopy fromLayout];
  dataSource = [fromLayout dataSource];

  toLayout = [changeCopy toLayout];

  dataSource2 = [toLayout dataSource];

  if (dataSource == dataSource2 || [dataSource isEqual:dataSource2])
  {
    v10 = objc_alloc_init(PXTileIdentifierIdentityConverter);
    v11 = 0;
  }

  else
  {
    dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    changeHistory = [dataSourceManager changeHistory];
    v11 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(dataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource2, "identifier")}];

    v10 = [(PXSectionedTileIdentifierConverter *)[PXMemoriesFeedTileIdentifierConverter alloc] initWithFromDataSource:dataSource toDataSource:dataSource2 changeDetails:v11];
    if (self->_delegateRespondsTo.reloadedTileKindsOnObjectChanged)
    {
      delegate = [(PXMemoriesFeedViewControllerHelper *)self delegate];
      v16 = [delegate memoriesFeedViewControllerHelperReloadedTileKindsOnObjectChanged:self];

      [(PXTileIdentifierIdentityConverter *)v10 setReloadedTileKindsOnObjectChanged:v16];
    }
  }

  return v10;
}

- (void)scrollFilterShouldRequestAdditionalContent:(id)content
{
  dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  if (objc_opt_respondsToSelector())
  {
    [dataSourceManager generateAdditionalEntriesIfPossible];
  }
}

- (void)layoutEngine:(id)engine willGenerateLayoutWithGenerator:(id)generator forSection:(unint64_t)section
{
  engineCopy = engine;
  generatorCopy = generator;
  if (self->__layoutEngine != engineCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:830 description:{@"Invalid parameter not satisfying: %@", @"layoutEngine == __layoutEngine"}];
  }

  v11 = generatorCopy;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:831 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"generator", v17, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:831 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"generator", v17}];
  }

LABEL_5:
  if ([(PXMemoriesSpec *)self->__spec feedShouldAllowHeaders])
  {
    dataSourceSnapshot = [(PXSectionedLayoutEngine *)engineCopy dataSourceSnapshot];
    [dataSourceSnapshot identifier];
    if (section)
    {
      if (dataSourceSnapshot)
      {
        [dataSourceSnapshot indexPathForFirstPastMemorySection];
      }

      v13 = section == 0;
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

- (void)layoutEngineDidUpdateLayoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v10 = snapshotCopy;
  if (self->__layoutEngine != snapshotCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"layoutEngine == __layoutEngine"}];

    snapshotCopy = v10;
  }

  layoutSnapshot = [(PXSectionedLayoutEngine *)snapshotCopy layoutSnapshot];
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  layoutSnapshot2 = [currentLayout layoutSnapshot];

  if (layoutSnapshot2 != layoutSnapshot)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _handleNewLayoutSnapshot:layoutSnapshot];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXDataSourceManagerObservationContext_105017 == context)
  {
    v11 = observableCopy;
    [(PXMemoriesFeedViewControllerHelper *)self _handleDataSourceChange];
  }

  else if (PXExtendedTraitCollectionObservationContext_105018 == context)
  {
    v11 = observableCopy;
    [(PXMemoriesFeedViewControllerHelper *)self _handleTraitCollectionChange:change];
  }

  else if (PXSpecManagerObservationContext_105019 == context)
  {
    v11 = observableCopy;
    specManager = [(PXMemoriesFeedViewControllerHelper *)self specManager];
    spec = [specManager spec];

    [(PXMemoriesFeedViewControllerHelper *)self _setSpec:spec];
  }

  else
  {
    if (PXSelectionManagerObservationContext_105020 != context)
    {
      goto LABEL_10;
    }

    v11 = observableCopy;
    [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout];
  }

  observableCopy = v11;
LABEL_10:
}

- (void)_handleNewLayoutSnapshot:(id)snapshot
{
  v15 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  [(PXMemoriesFeedViewControllerHelper *)self saveAnchorMemory];
  _spec = [(PXMemoriesFeedViewControllerHelper *)self _spec];
  v6 = [[PXMemoriesFeedTilingLayout alloc] initWithSpec:_spec layoutSnapshot:snapshotCopy];
  [(PXMemoriesFeedViewControllerHelper *)self _configureLayout:v6];
  [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:v6];
  v7 = PLMemoriesGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = snapshotCopy;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "%@ layout engine did emit new snapshot:\r%@\r\rTransitioning to new layout %@", &v9, 0x20u);
  }

  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  [tilingController transitionToLayout:v6];
  [(PXMemoriesFeedViewControllerHelper *)self didChangeTilingControllerLayout];
}

- (void)_handleTraitCollectionChange:(unint64_t)change
{
  if ((change & 0x110) != 0)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _invalidateLayoutEngine];
  }
}

- (void)_updateHighlightedIndexPathInLayout:(id)layout
{
  layoutCopy = layout;
  if (layoutCopy)
  {
    v5 = *(off_1E7722228 + 1);
    v14 = *off_1E7722228;
    v15 = v5;
    highlightedMemoryReference = [(PXMemoriesFeedViewControllerHelper *)self highlightedMemoryReference];
    lastActionPresentationMemoryReference = [(PXMemoriesFeedViewControllerHelper *)self lastActionPresentationMemoryReference];
    if (lastActionPresentationMemoryReference)
    {
      v8 = 0;
    }

    else
    {
      v8 = highlightedMemoryReference;
    }

    v9 = v8;

    if (v9)
    {
      dataSource = [layoutCopy dataSource];
      v11 = dataSource;
      if (dataSource)
      {
        [dataSource indexPathForObjectReference:v9];
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
    [layoutCopy setHighlightedMemoryIndexPath:&v12];
  }
}

- (void)_updateHighlightedIndexPathInLayout
{
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:currentLayout];
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  targetLayout = [tilingController targetLayout];

  if (targetLayout != currentLayout)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout:targetLayout];
  }
}

- (void)_updateSelectedIndexPathsInLayout:(id)layout
{
  layoutCopy = layout;
  selectionManager = [(PXMemoriesFeedViewControllerHelper *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [layoutCopy dataSource];
  dataSource2 = [selectionSnapshot dataSource];

  if (dataSource == dataSource2)
  {
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    [layoutCopy setSelectedMemoryIndexPaths:selectedIndexPaths];
  }
}

- (void)_updateSelectedIndexPathsInLayout
{
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout:currentLayout];
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  targetLayout = [tilingController targetLayout];

  if (targetLayout != currentLayout)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _updateSelectedIndexPathsInLayout:targetLayout];
  }
}

- (void)_handleDataSourceChange
{
  _layoutEngine = [(PXMemoriesFeedViewControllerHelper *)self _layoutEngine];
  dataSourceSnapshot = [_layoutEngine dataSourceSnapshot];
  dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  dataSourceManager2 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  changeHistory = [dataSourceManager2 changeHistory];
  v9 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(dataSourceSnapshot toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource, "identifier")}];

  if ([v9 count] == 1)
  {
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  [(PXMemoriesFeedViewControllerHelper *)self _handleChangeFromDataSource:dataSourceSnapshot toDataSource:dataSource withChangeDetails:firstObject];
  if ([dataSource numberOfSections] < 1)
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
  v18 = dataSource;
  v19 = firstObject;
  v12 = firstObject;
  v13 = dataSource;
  v14 = v11;
  [_layoutEngine performChanges:v16];
  if (self->_hasAppeared)
  {
    dataSourceManager3 = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    [dataSourceManager3 updateCurrentMemoriesNonPendingAndNotificationStatus];
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
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  [currentLayout visibleRect];
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
  [currentLayout contentInset];
  [currentLayout visibleRect];
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

- (void)scrollMemoryReferenceToVisible:(id)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  scrollController = [tilingController scrollController];
  [scrollController updateIfNeeded];

  currentLayout = [tilingController currentLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dataSource = [currentLayout dataSource];
    v11 = dataSource;
    v55 = 0u;
    v56 = 0u;
    if (dataSource)
    {
      [dataSource indexPathForObjectReference:visibleCopy];
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
        [currentLayout contentBounds];
        v12 = v22;
        v13 = v23;
        v14 = v24;
        v15 = 1.0;
      }

      else
      {
        identifier = [v11 identifier];
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
        v37 = identifier;
        v38 = *(&v55 + 1);
        v39 = v56;
        v40 = 0u;
        v41 = 0u;
        v42 = 0;
        if ([currentLayout getGeometry:&v43 group:0 userData:0 forTileWithIdentifier:&v36])
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
        [v26 convertRect:objc_msgSend(currentLayout fromCoordinateSpaceIdentifier:"coordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(tilingController, "contentCoordinateSpaceIdentifier"), v12, v13, v14, v15}];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        scrollViewController = [(PXMemoriesFeedViewControllerHelper *)self scrollViewController];
        [scrollViewController scrollRectToVisible:animatedCopy animated:{v28, v30, v32, v34}];
      }
    }
  }
}

- (void)_configureMetrics:(id)metrics
{
  metricsCopy = metrics;
  _spec = [(PXMemoriesFeedViewControllerHelper *)self _spec];
  [metricsCopy setSpec:_spec];
  traitCollection = [(PXMemoriesFeedViewControllerHelper *)self traitCollection];
  [traitCollection layoutReferenceSize];
  v7 = v6;
  v9 = v8;

  [metricsCopy setReferenceSize:{v7, v9}];
  [_spec layoutInsets];
  [metricsCopy setContentInsets:?];
  if (self->_delegateRespondsTo.configureMetrics)
  {
    delegate = [(PXMemoriesFeedViewControllerHelper *)self delegate];
    [delegate memoriesFeedViewControllerHelper:self configureMetrics:metricsCopy];
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

    dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    _spec = [(PXMemoriesFeedViewControllerHelper *)self _spec];
    v10 = objc_alloc_init([_spec feedLayoutMetricsClass]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:585 description:{@"Invalid parameter not satisfying: %@", @"[metrics isKindOfClass:[PXMemoriesFeedLayoutMetrics class]]"}];
    }

    [(PXMemoriesFeedViewControllerHelper *)self _configureMetrics:v10];
    v11 = [_spec newLayoutGeneratorWithMetrics:v10];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"[layoutGenerator isKindOfClass:[PXMemoriesFeedLayoutGenerator class]]"}];
    }

    feedAxis = [_spec feedAxis];
    [(PXSectionedLayoutEngine *)self->__layoutEngine setDelegate:0];
    v13 = [off_1E77218B8 alloc];
    [_spec layoutInsets];
    v14 = [v13 initWithAxis:feedAxis layoutGenerator:v11 dataSourceSnapshot:dataSource insets:?];
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

- (void)_setSpec:(id)spec
{
  specCopy = spec;
  if (self->__spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->__spec, spec);
    [(PXMemoriesFeedViewControllerHelper *)self _invalidateLayoutEngine];
    specCopy = v6;
  }
}

- (void)_enumerateInsertedItemsInChangeDetails:(id)details withDataSource:(id)source usingBlock:(id)block
{
  detailsCopy = details;
  sourceCopy = source;
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  toDataSourceIdentifier = [detailsCopy toDataSourceIdentifier];
  sectionChanges = [detailsCopy sectionChanges];
  if ([sectionChanges hasIncrementalChanges])
  {
    insertedIndexes = [sectionChanges insertedIndexes];
  }

  else
  {
    insertedIndexes = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke;
  v21[3] = &unk_1E7738C08;
  v13 = sourceCopy;
  v22 = v13;
  v14 = blockCopy;
  v23 = v14;
  v24 = &v26;
  v25 = toDataSourceIdentifier;
  [insertedIndexes enumerateIndexesUsingBlock:v21];
  if ((v27[3] & 1) == 0)
  {
    sectionsWithItemChanges = [detailsCopy sectionsWithItemChanges];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __103__PXMemoriesFeedViewControllerHelper__enumerateInsertedItemsInChangeDetails_withDataSource_usingBlock___block_invoke_2;
    v16[3] = &unk_1E7738C08;
    v17 = detailsCopy;
    v18 = v14;
    v19 = &v26;
    v20 = toDataSourceIdentifier;
    [sectionsWithItemChanges enumerateIndexesUsingBlock:v16];
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

- (id)_memoryReferenceInsertedOnChangeToDataSource:(id)source withChangeDetails:(id)details
{
  sourceCopy = source;
  detailsCopy = details;
  v9 = detailsCopy;
  if (detailsCopy)
  {
    toDataSourceIdentifier = [detailsCopy toDataSourceIdentifier];
    if (toDataSourceIdentifier != [sourceCopy identifier])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:496 description:@"data source identifier mismatch"];
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
    [(PXMemoriesFeedViewControllerHelper *)self _enumerateInsertedItemsInChangeDetails:v9 withDataSource:sourceCopy usingBlock:v17];
    if (v19[4] == *off_1E7721F68)
    {
      v12 = 0;
    }

    else
    {
      v13 = *(v19 + 3);
      v16[0] = *(v19 + 2);
      v16[1] = v13;
      v12 = [sourceCopy objectReferenceAtIndexPath:v16];
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

- (void)_handleFinishedRequestingNewMemoriesWithSuccess:(BOOL)success reason:(unint64_t)reason error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if ((reason | 2) == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:482 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXMemoriesFeedViewControllerHelper *)self _setRequestingNewMemories:0];
  _newMemoriesRequestCompletion = [(PXMemoriesFeedViewControllerHelper *)self _newMemoriesRequestCompletion];

  v10 = errorCopy;
  if (_newMemoriesRequestCompletion)
  {
    _newMemoriesRequestCompletion2 = [(PXMemoriesFeedViewControllerHelper *)self _newMemoriesRequestCompletion];
    (_newMemoriesRequestCompletion2)[2](_newMemoriesRequestCompletion2, successCopy, errorCopy);

    [(PXMemoriesFeedViewControllerHelper *)self _setNewMemoriesRequestCompletion:0];
    v10 = errorCopy;
  }
}

- (void)_handleRefreshCompletionWithResultInformation:(id)information reason:(unint64_t)reason error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  errorCopy = error;
  v10 = PLMemoriesGetLog();
  v11 = v10;
  if (informationCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = informationCopy;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Memories refresh result: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Memories refresh error: %@", buf, 0xCu);
  }

  v12 = +[PXMemoriesFeedSettings sharedInstance];
  dataSourceType = [v12 dataSourceType];

  domain = [errorCopy domain];
  v11 = domain;
  if (dataSourceType == 3)
  {
    if ([domain isEqualToString:@"com.apple.photoanalysis"])
    {
      code = [errorCopy code];

      if (code == 6)
      {
        v16 = 30;
        goto LABEL_13;
      }

LABEL_16:
      [(PXMemoriesFeedViewControllerHelper *)self _handleFinishedRequestingNewMemoriesWithSuccess:informationCopy != 0 reason:reason error:0];
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (![domain isEqualToString:@"com.apple.photos.test"])
  {
    goto LABEL_15;
  }

  code2 = [errorCopy code];

  if (code2 != 42)
  {
    goto LABEL_16;
  }

  v16 = 3;
LABEL_13:
  _refreshRetryCount = [(PXMemoriesFeedViewControllerHelper *)self _refreshRetryCount];
  [(PXMemoriesFeedViewControllerHelper *)self _setRefreshRetryCount:_refreshRetryCount + 1];
  if (_refreshRetryCount >= v16)
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
  v21[1] = reason;
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

- (void)_startRefreshForReason:(unint64_t)reason
{
  v5 = +[PXMemoriesFeedSettings sharedInstance];
  dataSourceType = [v5 dataSourceType];

  if (dataSourceType != 3)
  {
    v7 = [(PXMemoriesFeedViewControllerHelper *)self _refreshRetryCount]< 2;
    objc_initWeak(&location, self);
    v9 = v7;
    objc_copyWeak(v8, &location);
    v8[1] = reason;
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

- (void)feedViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  [(PXMemoriesFeedViewControllerHelper *)self saveAnchorMemory];
  self->_hasAppeared = 0;
  eventTracker = [(PXMemoriesFeedViewControllerHelper *)self eventTracker];
  [eventTracker logViewControllerDidDisappear:disappearCopy];
}

- (void)feedViewControllerDidAppear:(id)appear shouldUpdateNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  appearCopy = appear;
  dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
  if (!self->_hasKickedOffBatchGeneration)
  {
    self->_hasKickedOffBatchGeneration = 1;
    [dataSourceManager generateAdditionalEntriesIfPossible];
  }

  self->_hasAppeared = 1;
  eventTracker = [(PXMemoriesFeedViewControllerHelper *)self eventTracker];
  [eventTracker logViewControllerDidAppear:appearCopy];

  if (notificationsCopy)
  {
    [dataSourceManager updateCurrentMemoriesNonPendingAndNotificationStatus];
  }
}

- (void)setHighlightedMemoryReference:(id)reference
{
  referenceCopy = reference;
  if (self->_highlightedMemoryReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_highlightedMemoryReference, reference);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    referenceCopy = v6;
  }
}

- (void)setLastActionPresentationMemoryReference:(id)reference
{
  referenceCopy = reference;
  if (self->_lastActionPresentationMemoryReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_lastActionPresentationMemoryReference, reference);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    referenceCopy = v6;
  }
}

- (void)setActivatedMemoryReference:(id)reference
{
  referenceCopy = reference;
  if (self->_activatedMemoryReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_activatedMemoryReference, reference);
    [(PXMemoriesFeedViewControllerHelper *)self _updateHighlightedIndexPathInLayout];
    referenceCopy = v6;
  }
}

- (PXMemoriesFeedTilingLayout)targetLayout
{
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  targetLayout = [tilingController targetLayout];

  return targetLayout;
}

- (PXMemoriesFeedTilingLayout)currentLayout
{
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  currentLayout = [tilingController currentLayout];

  return currentLayout;
}

- (PXSimpleIndexPath)indexPathForMemoryObjectReference:(SEL)reference
{
  v6 = a4;
  v7 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v7;
  if (v6)
  {
    currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
    dataSource = [currentLayout dataSource];
    v10 = dataSource;
    if (dataSource)
    {
      [dataSource indexPathForObjectReference:v6];
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

- (id)memoryInfoAtIndexPath:(PXSimpleIndexPath *)path
{
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  dataSource = [currentLayout dataSource];
  v6 = *&path->item;
  v9[0] = *&path->dataSourceIdentifier;
  v9[1] = v6;
  v7 = [dataSource objectAtIndexPath:v9];

  return v7;
}

- (PXSimpleIndexPath)indexPathForMemoryInScrollViewAtPoint:(SEL)point
{
  y = a4.y;
  x = a4.x;
  v7 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v7;
  tilingController = [(PXMemoriesFeedViewControllerHelper *)self tilingController];
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  if (currentLayout)
  {
    v9 = +[PXTilingCoordinateSpaceConverter defaultConverter];
    [v9 convertPoint:objc_msgSend(tilingController fromCoordinateSpaceIdentifier:"contentCoordinateSpaceIdentifier") toCoordinateSpaceIdentifier:{objc_msgSend(currentLayout, "coordinateSpaceIdentifier"), x, y}];
    v11 = v10;
    v13 = v12;

    [currentLayout indexPathForMemoryAtPoint:{v11, v13}];
  }

  return result;
}

- (id)memoryInfoForMemoryObjectReference:(id)reference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
    dataSource = [currentLayout dataSource];
    v7 = dataSource;
    if (dataSource)
    {
      dataSource2 = dataSource;
    }

    else
    {
      dataSourceManager = [(PXMemoriesFeedViewControllerHelper *)self dataSourceManager];
      dataSource2 = [dataSourceManager dataSource];
    }

    v9 = [dataSource2 objectReferenceForObjectReference:referenceCopy];

    if (v9)
    {
      [v9 indexPath];
      referenceCopy = [dataSource2 objectAtIndexPath:&v12];
    }

    else
    {
      referenceCopy = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return referenceCopy;
}

- (id)memoryInfoInScrollViewAtPoint:(CGPoint)point
{
  v4 = [(PXMemoriesFeedViewControllerHelper *)self memoryObjectReferenceInScrollViewAtPoint:point.x, point.y];
  v5 = [(PXMemoriesFeedViewControllerHelper *)self memoryInfoForMemoryObjectReference:v4];

  return v5;
}

- (id)memoryObjectReferenceInScrollViewAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  currentLayout = [(PXMemoriesFeedViewControllerHelper *)self currentLayout];
  dataSource = [currentLayout dataSource];
  v11 = 0u;
  v12 = 0u;
  [(PXMemoriesFeedViewControllerHelper *)self indexPathForMemoryInScrollViewAtPoint:x, y];
  if (dataSource && v11 != *off_1E7721F68)
  {
    v10[0] = v11;
    v10[1] = v12;
    v8 = [dataSource objectReferenceAtIndexPath:v10];
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
  _memoryReferenceToScrollToVisible = [(PXMemoriesFeedViewControllerHelper *)self _memoryReferenceToScrollToVisible];
  if (_memoryReferenceToScrollToVisible)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _setMemoryReferenceToScrollToVisible:0];
    v4 = PLMemoriesGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412546;
      selfCopy = self;
      v7 = 2112;
      v8 = _memoryReferenceToScrollToVisible;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, "%@ scrolling memory reference %@", &v5, 0x16u);
    }

    [(PXMemoriesFeedViewControllerHelper *)self scrollMemoryReferenceToVisible:_memoryReferenceToScrollToVisible animated:self->_hasAppeared];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)requestNewMemoriesForReason:(unint64_t)reason withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ((reason | 2) != 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"(PHMemoryCreationReasonUserRequest == reason) || (PHMemoryCreationReasonTodayWidgetRequest == reason)"}];
  }

  _isRequestingNewMemories = [(PXMemoriesFeedViewControllerHelper *)self _isRequestingNewMemories];
  v10 = [(PXMemoriesFeedViewControllerHelper *)self canRequestNewMemoriesForReason:reason];
  if (!_isRequestingNewMemories && v10)
  {
    [(PXMemoriesFeedViewControllerHelper *)self _setNewMemoriesRequestCompletion:completionCopy];
    [(PXMemoriesFeedViewControllerHelper *)self _setRequestingNewMemories:1];
    [(PXMemoriesFeedViewControllerHelper *)self _setRefreshRetryCount:0];
    date = [MEMORY[0x1E695DF00] date];
    [(PXMemoriesFeedViewControllerHelper *)self _setLastUserMemoryGenerationRequestDate:date];

    [(PXMemoriesFeedViewControllerHelper *)self _startRefreshForReason:reason];
    goto LABEL_18;
  }

  v12 = PLMemoriesGetLog();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (_isRequestingNewMemories)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = "Widget";
    if (reason == 1)
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
    if (reason == 1)
    {
      v16 = "User";
    }

    *buf = 136315138;
    v18 = v16;
    v15 = "%s request to generate memories ignored: reached request limit";
  }

  _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
LABEL_16:

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

LABEL_18:
}

- (BOOL)canRequestNewMemoriesForReason:(unint64_t)reason
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"PXIgnoreRefreshLimit"] & 1) != 0 || reason == 1)
  {
    v7 = 1;
  }

  else
  {
    if (!reason || reason == 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:217 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v7 = 0;
  }

  return v7;
}

- (void)_handleChangeFromDataSource:(id)source toDataSource:(id)dataSource withChangeDetails:(id)details
{
  v28 = *MEMORY[0x1E69E9840];
  dataSourceCopy = dataSource;
  detailsCopy = details;
  v10 = PLMemoriesGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v26 = 138412802;
    *&v26[4] = self;
    *&v26[12] = 2112;
    *&v26[14] = dataSourceCopy;
    *&v26[22] = 2112;
    v27 = detailsCopy;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEBUG, "%@ data source changed to %@ with details %@", v26, 0x20u);
  }

  _lastUserMemoryGenerationRequestDate = [(PXMemoriesFeedViewControllerHelper *)self _lastUserMemoryGenerationRequestDate];
  v12 = _lastUserMemoryGenerationRequestDate;
  if (_lastUserMemoryGenerationRequestDate)
  {
    [_lastUserMemoryGenerationRequestDate timeIntervalSinceNow];
    v14 = v13;
    [(PXMemoriesFeedViewControllerHelper *)self _setLastUserMemoryGenerationRequestDate:v12];
    if (v14 <= 0.0 && v14 > -36000.0)
    {
      v15 = [(PXMemoriesFeedViewControllerHelper *)self _memoryReferenceInsertedOnChangeToDataSource:dataSourceCopy withChangeDetails:detailsCopy];
      v16 = PLMemoriesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  if (!source && [dataSourceCopy numberOfSections] >= 1 && objc_msgSend(dataSourceCopy, "numberOfItemsInSection:", 0) >= 1)
  {
    *v26 = [dataSourceCopy identifier];
    *&v26[8] = 0uLL;
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [dataSourceCopy objectReferenceAtIndexPath:v26];
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
    v15 = [dataSourceCopy sectionedObjectReferenceForMemoryUUID:?];
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

- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)controller photoLibrary:(id)library traitCollection:(id)collection memoriesStyle:(unint64_t)style tilingControllerConfigurationBlock:(id)block
{
  controllerCopy = controller;
  libraryCopy = library;
  collectionCopy = collection;
  blockCopy = block;
  v45.receiver = self;
  v45.super_class = PXMemoriesFeedViewControllerHelper;
  v17 = [(PXMemoriesFeedViewControllerHelper *)&v45 init];
  v18 = v17;
  if (v17)
  {
    v17->_needsToUpdate.layoutEngine = 1;
    v19 = PXMemoriesViewControllerEventTrackerCreate(collectionCopy);
    eventTracker = v18->_eventTracker;
    v18->_eventTracker = v19;

    objc_storeStrong(&v18->_scrollViewController, controller);
    objc_storeStrong(&v18->_photoLibrary, library);
    objc_storeStrong(&v18->_traitCollection, collection);
    v21 = [[PXMemoriesSpecManager alloc] initWithExtendedTraitCollection:collectionCopy options:0 style:style];
    specManager = v18->_specManager;
    v18->_specManager = v21;

    spec = [(PXFeatureSpecManager *)v18->_specManager spec];
    spec = v18->__spec;
    v18->__spec = spec;

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"[transitionAnimationCoordinator isKindOfClass:[PXMemoriesFeedTransitionAnimationCoordinator class]]"}];
    }

    objc_storeStrong(&v18->__transitionAnimationCoordinator, v31);
    v32 = [PXMemoriesFeedTilingLayout alloc];
    v33 = v18->__spec;
    layoutSnapshot = [(PXSectionedLayoutEngine *)v18->__layoutEngine layoutSnapshot];
    v35 = [(PXMemoriesFeedTilingLayout *)v32 initWithSpec:v33 layoutSnapshot:layoutSnapshot];

    [(PXMemoriesFeedViewControllerHelper *)v18 _configureLayout:v35];
    v36 = [[PXTilingController alloc] initWithLayout:v35];
    tilingController = v18->_tilingController;
    v18->_tilingController = v36;

    [(PXTilingController *)v18->_tilingController setScrollController:v18->_scrollViewController];
    [(PXTilingController *)v18->_tilingController setScrollDelegate:v18];
    [(PXTilingController *)v18->_tilingController setTransitionDelegate:v18];
    blockCopy[2](blockCopy, v18->_tilingController, v18->__spec);
    tileSource = [(PXTilingController *)v18->_tilingController tileSource];

    if (!tileSource)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:146 description:@"The configured tiling controller must have a tile source."];
    }

    tileAnimator = [(PXTilingController *)v18->_tilingController tileAnimator];

    if (!tileAnimator)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v18 file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:147 description:@"The configured tiling controller must have a tile animator."];
    }
  }

  return v18;
}

- (PXMemoriesFeedViewControllerHelper)initWithScrollViewController:(id)controller photoLibrary:(id)library traitCollection:(id)collection tilingControllerConfigurationBlock:(id)block
{
  controllerCopy = controller;
  libraryCopy = library;
  collectionCopy = collection;
  blockCopy = block;
  if (!collectionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedViewControllerHelper.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"traitCollection"}];
  }

  v15 = [(PXMemoriesFeedViewControllerHelper *)self initWithScrollViewController:controllerCopy photoLibrary:libraryCopy traitCollection:collectionCopy memoriesStyle:0 tilingControllerConfigurationBlock:blockCopy];

  return v15;
}

- (PXMemoriesFeedViewControllerHelper)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v9.receiver = self;
  v9.super_class = PXMemoriesFeedViewControllerHelper;
  v6 = [(PXMemoriesFeedViewControllerHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
  }

  return v7;
}

@end