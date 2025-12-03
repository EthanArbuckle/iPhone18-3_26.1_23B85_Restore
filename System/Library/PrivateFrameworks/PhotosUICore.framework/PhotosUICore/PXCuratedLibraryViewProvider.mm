@interface PXCuratedLibraryViewProvider
- (BOOL)attemptSetInSelectMode:(BOOL)mode;
- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info;
- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source;
- (BOOL)ensureSelectMode;
- (BOOL)zoomablePhotosInteractionShouldBegin:(id)begin;
- (CGPoint)pointForPointReference:(id)reference inCoordinateSpace:(id)space;
- (PXAssetReference)preferredAnchorAssetReference;
- (PXCuratedLibraryViewProvider)init;
- (PXCuratedLibraryViewProvider)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection;
- (PXCuratedLibraryViewProvider)initWithPhotoLibrary:(id)library extendedTraitCollection:(id)collection initialZoomLevel:(int64_t)level;
- (PXGAXResponder)axNextResponder;
- (PXSectionedObjectReference)preferredObjectReferenceToScrollToWhenRestoringState;
- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction;
- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction;
- (PXSimpleIndexPath)selectionManager:(SEL)manager indexPathClosestToIndexPath:(id)path inDirection:(PXSimpleIndexPath *)direction;
- (UIEdgeInsets)anchorPaddingForCurrentZoomLevel;
- (id)_itemsGeometryForDataSource:(id)source;
- (id)additionalRectDiagnosticsProvidersForView:(id)view;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)hitTestResultControlsForCurrentZoomLevel;
- (id)indexPathsForItemsInRect:(CGRect)rect coordinateSpace:(id)space;
- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)source;
- (id)pointReferenceAtPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (id)selectionContainerWithUndoManager:(id)manager;
- (id)selectionManager:(id)manager indexPathsBetweenIndexPath:(PXSimpleIndexPath *)path andIndexPath:(PXSimpleIndexPath *)indexPath inDirection:(unint64_t)direction;
- (id)sortOrderMenuActionTitleForItemIndex:(int64_t)index;
- (id)systemImageNameForActionType:(id)type;
- (id)titleForActionType:(id)type useCase:(unint64_t)case;
- (id)zoomablePhotosInteraction:(id)interaction assetReferenceAtLocation:(CGPoint)location;
- (int64_t)_layoutVariantToUse:(BOOL)use viewMode:(int64_t)mode;
- (int64_t)menuActionStateForActionType:(id)type;
- (int64_t)selectionBasisForSelectionManager:(id)manager;
- (int64_t)sortOrderMenuActionStateForItemIndex:(int64_t)index;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)info;
- (void)_logLibraryCountsIfNecessary;
- (void)appIntentsEnumerateAssets:(id)assets;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
- (void)extendSelectionInDirection:(unint64_t)direction;
- (void)gridViewDidAppear;
- (void)gridViewDidDisappear;
- (void)moveSelectionInDirection:(unint64_t)direction;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performActionWithType:(id)type;
- (void)performSortOrderMenuActionForItemAtIndex:(int64_t)index;
- (void)prepareForNavigationToObjectReference:(id)reference;
- (void)scrollLibraryViewToObjectReference:(id)reference scrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding completionHandler:(id)handler;
- (void)toggleSelectMode;
- (void)zoomInAllPhotos;
- (void)zoomOutAllPhotos;
- (void)zoomablePhotosInteractionWillBegin:(id)begin;
@end

@implementation PXCuratedLibraryViewProvider

- (void)_logLibraryCountsIfNecessary
{
  itemCountsController = [(PXCuratedLibraryViewProvider *)self itemCountsController];
  v4 = itemCountsController;
  if (itemCountsController)
  {
    [itemCountsController counts];
  }

  eventTracker = [(PXCuratedLibraryViewProvider *)self eventTracker];
  [eventTracker logLibraryItemsCount:0];
}

- (void)gridViewDidAppear
{
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  PXAppIntentsSetViewAnnotationDelegate(gridView, self);
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (void)appIntentsEnumerateAssets:(id)assets
{
  assetsCopy = assets;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];

  fetchSelectedObjects = [selectionSnapshot fetchSelectedObjects];
  [fetchSelectedObjects mutableCopy];

  layout = [(PXCuratedLibraryViewProvider *)self layout];
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  [layout visibleRect];
  [layout safeAreaInsets];
  PXEdgeInsetsInsetRect();
}

void __58__PXCuratedLibraryViewProvider_appIntentsEnumerateAssets___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
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

void __58__PXCuratedLibraryViewProvider_appIntentsEnumerateAssets___block_invoke_253(uint64_t a1, void *a2)
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

- (void)gridViewDidDisappear
{
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge clearViewAnnotationDelegateFor:gridView];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXCuratedLibraryViewModelObservationContext == context)
  {
    goto LABEL_12;
  }

  if (CountsControllerObservationContext == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_12;
    }

    v17 = observableCopy;
    [(PXCuratedLibraryViewProvider *)self _logLibraryCountsIfNecessary];
    goto LABEL_11;
  }

  if (PXSharedLibraryStatusProviderObservationContext_20210 == context)
  {
    if ((changeCopy & 3) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (PXLibraryFilterStateObservationContext_20211 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:872 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
LABEL_10:
    v17 = observableCopy;
    sharedLibraryStatusProvider = [(PXCuratedLibraryViewProvider *)self sharedLibraryStatusProvider];
    hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];
    libraryFilterState = [(PXCuratedLibraryViewProvider *)self libraryFilterState];
    v13 = -[PXCuratedLibraryViewProvider _layoutVariantToUse:viewMode:](self, "_layoutVariantToUse:viewMode:", hasSharedLibraryOrPreview, [libraryFilterState viewMode]);
    viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
    specManager = [viewModel specManager];
    [specManager setVariant:v13];

LABEL_11:
    observableCopy = v17;
  }

LABEL_12:
}

- (UIEdgeInsets)anchorPaddingForCurrentZoomLevel
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if ((zoomLevel - 1) < 2 || zoomLevel == 4)
  {
    PXEdgeInsetsMake();
  }

  v4 = *off_1E7721FA8;
  v5 = *(off_1E7721FA8 + 1);
  v6 = *(off_1E7721FA8 + 2);
  v7 = *(off_1E7721FA8 + 3);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (PXSimpleIndexPath)selectionManager:(SEL)manager indexPathClosestToIndexPath:(id)path inDirection:(PXSimpleIndexPath *)direction
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomLevel = [viewModel zoomLevel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  v13 = [assetsDataSourceManager dataSourceForZoomLevel:zoomLevel];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v14 = *&direction->item;
  v16[0] = *&direction->dataSourceIdentifier;
  v16[1] = v14;
  [(PXCuratedLibraryViewProvider *)self selectableIndexPathClosestToIndexPath:v16 fromDataSource:v13 inDirection:a6];

  return result;
}

- (id)selectionManager:(id)manager indexPathsBetweenIndexPath:(PXSimpleIndexPath *)path andIndexPath:(PXSimpleIndexPath *)indexPath inDirection:(unint64_t)direction
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomLevel = [viewModel zoomLevel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  v13 = [assetsDataSourceManager dataSourceForZoomLevel:zoomLevel];

  if (direction == 2)
  {
    direction = 5;
LABEL_7:
    v22 = *&path->dataSourceIdentifier;
    v23 = *&path->item;
    v17 = objc_alloc_init(off_1E77217C8);
    v19 = v22;
    v18 = v23;
    v16 = v17;
    v20 = *off_1E7721F68;
    do
    {
      v25 = v19;
      v26 = v18;
      [(PXCuratedLibraryViewProvider *)self selectableIndexPathClosestToIndexPath:&v25 fromDataSource:v13 inDirection:direction, v22.i64[0]];
      v22 = v27;
      v24 = v28;
      [v16 addIndexPath:&v27];
      v19 = v22;
      v18 = v24;
    }

    while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v22, *&indexPath->dataSourceIdentifier), vceqq_s64(v24, *&indexPath->item)))) & 1) == 0 && v22.i64[0] != v20);
    goto LABEL_10;
  }

  if (direction == 1)
  {
    direction = 6;
    goto LABEL_7;
  }

  if (direction)
  {
    goto LABEL_7;
  }

  v14 = *&path->item;
  v27 = *&path->dataSourceIdentifier;
  v28 = v14;
  v15 = *&indexPath->item;
  v25 = *&indexPath->dataSourceIdentifier;
  v26 = v15;
  v16 = [(PXCuratedLibraryViewProvider *)self indexPathsFromIndexPath:&v27 toIndexPath:&v25 inDataSource:v13];
LABEL_10:

  return v16;
}

- (int64_t)selectionBasisForSelectionManager:(id)manager
{
  managerCopy = manager;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:792 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = qword_1A5381590[zoomLevel];

  return v8;
}

- (id)zoomablePhotosInteraction:(id)interaction assetReferenceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  v7 = [gridView firstCuratedLibraryHitTestResultsAtPoint:1 withControl:{x, y}];
  assetReference = [v7 assetReference];

  return assetReference;
}

- (void)zoomablePhotosInteractionWillBegin:(id)begin
{
  assetsDataSourceManager = [(PXCuratedLibraryViewProvider *)self assetsDataSourceManager];
  [assetsDataSourceManager forceAllPhotosAccurateIfNeeded];

  layout = [(PXCuratedLibraryViewProvider *)self layout];
  [layout clearLastVisibleAreaAnchoringInformation];
}

- (BOOL)zoomablePhotosInteractionShouldBegin:(id)begin
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  allowedActions = [viewModel allowedActions];
  v5 = [allowedActions containsObject:@"PXCuratedLibraryActionAllPhotosInteractiveZoom"];

  return v5;
}

- (BOOL)axGroup:(id)group didRequestToPerformAction:(int64_t)action userInfo:(id)info
{
  infoCopy = info;
  groupCopy = group;
  axNextResponder = [(PXCuratedLibraryViewProvider *)self axNextResponder];
  LOBYTE(action) = [axNextResponder axGroup:groupCopy didRequestToPerformAction:action userInfo:infoCopy];

  return action;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = 0;
  v5 = 0;
  PXGAXGetFocusFromAndToInfosForUserInfo();
}

uint64_t __75__PXCuratedLibraryViewProvider__handleChangeToModifySelectionWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if ((change & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((change & 4) != 0)
  {
    PXGAXGetSelectionFromAndToInfosForUserInfo();
  }

  axNextResponder = [(PXCuratedLibraryViewProvider *)self axNextResponder];
  [axNextResponder axGroup:groupCopy didChange:change userInfo:infoCopy];
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  scrollViewController = [gridView scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (CGPoint)pointForPointReference:(id)reference inCoordinateSpace:(id)space
{
  referenceCopy = reference;
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  [gridView rootLayout];
  [objc_claimAutoreleasedReturnValue() pointForPointReference:referenceCopy];

  [gridView scrollViewController];
  [objc_claimAutoreleasedReturnValue() contentCoordinateSpace];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)pointReferenceAtPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  spaceCopy = space;
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)indexPathsForItemsInRect:(CGRect)rect coordinateSpace:(id)space
{
  v7 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath inDataSource:(id)source
{
  sourceCopy = source;
  v10 = [(PXCuratedLibraryViewProvider *)self _itemsGeometryForDataSource:sourceCopy];
  if (v10)
  {
    identifier = [sourceCopy identifier];
    if (path->dataSourceIdentifier != identifier)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:575 description:{@"Invalid parameter not satisfying: %@", @"originalFromIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];
    }

    if (path->section)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:576 description:{@"Invalid parameter not satisfying: %@", @"originalFromIndexPath.section == section"}];
    }

    if (indexPath->dataSourceIdentifier != identifier)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:577 description:{@"Invalid parameter not satisfying: %@", @"originalToIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];
    }

    if (indexPath->section)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:578 description:{@"Invalid parameter not satisfying: %@", @"originalToIndexPath.section == section"}];
    }

    v12 = [v10 itemsBetweenItem:path->item andItem:indexPath->item];
    indexPathSet = [off_1E7721768 indexPathSetWithItemIndexes:v12 dataSourceIdentifier:identifier section:0];
  }

  else
  {
    v50 = a2;
    dataSourceIdentifier = path->dataSourceIdentifier;
    section = path->section;
    item = path->item;
    subitem = path->subitem;
    indexPathCopy = indexPath;
    pathCopy = path;
    v18 = indexPath->dataSourceIdentifier;
    v19 = indexPath->section;
    selfCopy = self;
    v21 = indexPath->item;
    v20 = indexPath->subitem;
    v67 = dataSourceIdentifier;
    v68 = section;
    v69 = item;
    v70 = subitem;
    v22 = [sourceCopy objectReferenceAtIndexPath:&v67];
    v53 = v21;
    v54 = v18;
    v67 = v18;
    v68 = v19;
    v56 = sourceCopy;
    v57 = v19;
    v69 = v21;
    v70 = v20;
    v52 = v20;
    v23 = [sourceCopy objectReferenceAtIndexPath:&v67];
    gridView = [(PXCuratedLibraryViewProvider *)selfCopy gridView];
    v48 = v23;
    v49 = v22;
    LOBYTE(v19) = [gridView isObjectReference:v22 visuallyBeforeObjectReference:v23];

    if ((v19 & 1) == 0)
    {
      dataSourceIdentifier = indexPathCopy->dataSourceIdentifier;
      section = indexPathCopy->section;
      item = indexPathCopy->item;
      subitem = indexPathCopy->subitem;
      v57 = pathCopy->section;
      v53 = pathCopy->item;
      v54 = pathCopy->dataSourceIdentifier;
      v52 = pathCopy->subitem;
    }

    indexPathSet = [off_1E77217C8 indexPathSet];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PXCuratedLibraryViewProvider_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke;
    aBlock[3] = &unk_1E7745A38;
    aBlock[4] = selfCopy;
    aBlock[5] = v50;
    v25 = *&pathCopy->item;
    v63 = *&pathCopy->dataSourceIdentifier;
    v64 = v25;
    v26 = *&indexPathCopy->item;
    v65 = *&indexPathCopy->dataSourceIdentifier;
    v66 = v26;
    v51 = _Block_copy(aBlock);
    while (1)
    {
      v27 = subitem;
      v28 = item;
      v29 = dataSourceIdentifier;
      v67 = dataSourceIdentifier;
      v68 = section;
      v69 = item;
      v70 = subitem;
      [indexPathSet addIndexPath:&v67];
      v30 = dataSourceIdentifier == v54 && section == v57;
      v31 = v30 && item == v53;
      v58 = dataSourceIdentifier;
      v59 = section;
      v32 = v31 && subitem == v52;
      v33 = v32;
      v60 = item;
      v61 = subitem;
      [(PXCuratedLibraryViewProvider *)selfCopy selectableIndexPathClosestToIndexPath:&v58 fromDataSource:v56 inDirection:5];
      dataSourceIdentifier = v67;
      v34 = v68;
      item = v69;
      subitem = v70;
      if ([indexPathSet containsIndexPath:&v67])
      {
        break;
      }

      if (v34 != section || v33)
      {
        if (v33)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    v51[2]();
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_34:
    if (v34 < v57)
    {
      v34 = v57 - 1;
      item = [v56 numberOfItemsInSection:v57 - 1] - 1;
      dataSourceIdentifier = [v56 identifier];
      v67 = v29;
      v68 = section;
      v69 = v28;
      v70 = v27;
      v58 = dataSourceIdentifier;
      v59 = v57 - 1;
      subitem = 0x7FFFFFFFFFFFFFFFLL;
      v60 = item;
      v61 = 0x7FFFFFFFFFFFFFFFLL;
      v36 = [v56 indexPathSetFromIndexPath:&v67 toIndexPath:&v58];
      [indexPathSet unionIndexPathSet:v36];
    }

    v37 = 0;
    v38 = *off_1E7721F68;
    while ((v37 & 1) == 0 && dataSourceIdentifier != v38)
    {
      v67 = dataSourceIdentifier;
      v68 = v34;
      v69 = item;
      v70 = subitem;
      [indexPathSet addIndexPath:&v67];
      v40 = dataSourceIdentifier == v54 && v34 == v57 && item == v53;
      v58 = dataSourceIdentifier;
      v59 = v34;
      v37 = v40 && subitem == v52;
      v60 = item;
      v61 = subitem;
      [(PXCuratedLibraryViewProvider *)selfCopy selectableIndexPathClosestToIndexPath:&v58 fromDataSource:v56 inDirection:5];
      dataSourceIdentifier = v67;
      v34 = v68;
      item = v69;
      subitem = v70;
      if ([indexPathSet containsIndexPath:&v67])
      {
        v51[2]();
        v67 = v54;
        v68 = v57;
        v69 = v53;
        v70 = v52;
        [indexPathSet addIndexPath:&v67];
        break;
      }
    }

LABEL_29:

    sourceCopy = v56;
    v10 = 0;
  }

  return indexPathSet;
}

- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction
{
  directionCopy = direction;
  v11 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v11;
  v12 = *off_1E7721F68;
  do
  {
    v13 = *&source->item;
    v17 = *&source->dataSourceIdentifier;
    v18 = v13;
    [(PXCuratedLibraryViewProvider *)self _indexPathClosestToIndexPath:&v17 fromDataSource:directionCopy inDirection:a6];
    v14 = *&retstr->item;
    *&source->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&source->item = v14;
    if (retstr->dataSourceIdentifier == v12)
    {
      break;
    }

    v15 = *&retstr->item;
    v17 = *&retstr->dataSourceIdentifier;
    v18 = v15;
  }

  while (![(PXCuratedLibraryViewProvider *)self canSelectObjectAtIndexPath:&v17 inDataSource:directionCopy]);

  return result;
}

- (void)extendSelectionInDirection:(unint64_t)direction
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  v17 = 0u;
  v18 = 0u;
  selectionManager = [viewModel selectionManager];
  v7 = selectionManager;
  if (selectionManager)
  {
    [selectionManager startingIndexPathForMoveInDirection:direction];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v8 = *off_1E7721F68;
  if (v17 == *off_1E7721F68)
  {
    [(PXCuratedLibraryViewProvider *)self moveSelectionInDirection:direction];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    selectionManager2 = [viewModel selectionManager];
    v10 = selectionManager2;
    if (selectionManager2)
    {
      v13 = v17;
      v14 = v18;
      [selectionManager2 extendSelectionFromIndexPath:&v13 inDirection:direction withDelegate:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    if (v15 != v8)
    {
      currentDataSource = [viewModel currentDataSource];
      v13 = v15;
      v14 = v16;
      v12 = [currentDataSource objectReferenceAtIndexPath:&v13];

      if (v12)
      {
        [(PXCuratedLibraryViewProvider *)self anchorPaddingForCurrentZoomLevel];
        [(PXCuratedLibraryViewProvider *)self scrollLibraryViewToObjectReference:v12 scrollPosition:0 padding:0 completionHandler:?];
      }
    }
  }
}

- (void)moveSelectionInDirection:(unint64_t)direction
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  v19 = 0u;
  v20 = 0u;
  selectionManager = [viewModel selectionManager];
  v7 = selectionManager;
  if (selectionManager)
  {
    [selectionManager moveSelectionInDirection:direction withDelegate:self];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  if (v19 != *off_1E7721F68)
  {
    [(PXCuratedLibraryViewProvider *)self anchorPaddingForCurrentZoomLevel];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    currentDataSource = [viewModel currentDataSource];
    v18[0] = v19;
    v18[1] = v20;
    v17 = [currentDataSource objectReferenceAtIndexPath:v18];

    if (v17)
    {
      [(PXCuratedLibraryViewProvider *)self scrollLibraryViewToObjectReference:v17 scrollPosition:0 padding:0 completionHandler:v9, v11, v13, v15];
    }
  }
}

- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)path inDataSource:(id)source
{
  sourceCopy = source;
  v7 = sourceCopy;
  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_2;
  }

  if (path->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v8) = path->subitem == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = *&path->item;
    v13[0] = *&path->dataSourceIdentifier;
    v13[1] = v9;
    v10 = [sourceCopy assetCollectionAtSectionIndexPath:v13];
    viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
    v8 = !PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v10, [viewModel zoomLevel]);
  }

LABEL_7:

  return v8;
}

- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)path fromDataSource:(PXSimpleIndexPath *)source inDirection:(id)direction
{
  directionCopy = direction;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = &unk_1A561E057;
  v11 = *(off_1E7722228 + 1);
  v44 = *off_1E7722228;
  v45 = v11;
  v12 = [(PXCuratedLibraryViewProvider *)self _itemsGeometryForDataSource:directionCopy];
  v13 = v12;
  if (!v12)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    hitTestResultControlsForCurrentZoomLevel = [(PXCuratedLibraryViewProvider *)self hitTestResultControlsForCurrentZoomLevel];
    if (source->dataSourceIdentifier != *off_1E7721F68)
    {
      if (source->item == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (source->section != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = *&source->item;
          v38 = *&source->dataSourceIdentifier;
          v39 = v18;
          v19 = [directionCopy assetCollectionReferenceAtSectionIndexPath:&v38];
          layout = [(PXCuratedLibraryViewProvider *)self layout];
          v21 = [layout spriteReferenceForObjectReference:v19];

          gridView = [(PXCuratedLibraryViewProvider *)self gridView];
          v23 = v32;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2;
          v32[3] = &unk_1E772F488;
          v32[4] = hitTestResultControlsForCurrentZoomLevel;
          v24 = directionCopy;
          v25 = *&source->item;
          v33 = *&source->dataSourceIdentifier;
          v34 = v25;
          v32[5] = v24;
          v32[6] = &v40;
          [gridView enumerateCuratedLibraryHitTestResultsInDirection:a6 fromSpriteReference:v21 usingBlock:v32];
LABEL_11:
        }
      }

      else if (source->subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = *&source->item;
        v38 = *&source->dataSourceIdentifier;
        v39 = v26;
        v19 = [directionCopy assetReferenceAtItemIndexPath:&v38];
        layout2 = [(PXCuratedLibraryViewProvider *)self layout];
        v21 = [layout2 spriteReferenceForObjectReference:v19];

        gridView = [(PXCuratedLibraryViewProvider *)self gridView];
        v23 = v35;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke;
        v35[3] = &unk_1E772F488;
        v35[4] = hitTestResultControlsForCurrentZoomLevel;
        v28 = directionCopy;
        v29 = *&source->item;
        v36 = *&source->dataSourceIdentifier;
        v37 = v29;
        v35[5] = v28;
        v35[6] = &v40;
        [gridView enumerateCuratedLibraryHitTestResultsInDirection:a6 fromSpriteReference:v21 usingBlock:v35];
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v14 = [v12 itemClosestToItem:source->item inDirection:a6];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v41;
    v16 = *&source->item;
    *(v41 + 2) = *&source->dataSourceIdentifier;
    *(v15 + 3) = v16;
    v15[6] = v14;
  }

LABEL_13:
  v30 = *(v41 + 3);
  *&retstr->dataSourceIdentifier = *(v41 + 2);
  *&retstr->item = v30;

  _Block_object_dispose(&v40, 8);
  return result;
}

void __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 assetReference];
  if (v6 && [*(a1 + 32) containsIndex:{objc_msgSend(v5, "control")}])
  {
    v7 = 0uLL;
    v8 = *(a1 + 40);
    if (v8)
    {
      [v8 indexPathForAssetReference:v6];
      v7 = 0u;
      v9 = 0u;
    }

    else
    {
      v9 = 0uLL;
    }

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 56), v7), vceqq_s64(*(a1 + 72), v9)))) & 1) == 0)
    {
      v10 = *(*(a1 + 48) + 8);
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0u;
      *a3 = 1;
    }
  }
}

void __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 assetCollectionReference];
  if (v6 && [*(a1 + 32) containsIndex:{objc_msgSend(v5, "control")}])
  {
    v7 = 0uLL;
    v8 = *(a1 + 40);
    if (v8)
    {
      [v8 indexPathForAssetCollectionReference:v6];
      v7 = 0u;
      v9 = 0u;
    }

    else
    {
      v9 = 0uLL;
    }

    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 56), v7), vceqq_s64(*(a1 + 72), v9)))) & 1) == 0)
    {
      v10 = *(*(a1 + 48) + 8);
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0u;
      *a3 = 1;
    }
  }
}

- (id)_itemsGeometryForDataSource:(id)source
{
  sourceCopy = source;
  layout = [(PXCuratedLibraryViewProvider *)self layout];
  v6 = [layout presentedItemsGeometryForDataSource:sourceCopy];

  return v6;
}

- (id)hitTestResultControlsForCurrentZoomLevel
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomLevel = [viewModel zoomLevel];

  if (zoomLevel > 2)
  {
    if ((zoomLevel - 3) >= 2)
    {
      goto LABEL_10;
    }

    zoomLevel = 1;
  }

  else if (zoomLevel)
  {
    if (zoomLevel == 1)
    {
      zoomLevel = 2;
    }

    else
    {
      if (zoomLevel != 2)
      {
        goto LABEL_10;
      }

      [v3 addIndex:3];
      zoomLevel = 4;
    }
  }

  [v3 addIndex:zoomLevel];
LABEL_10:

  return v3;
}

- (void)scrollLibraryViewToObjectReference:(id)reference scrollPosition:(unint64_t)position padding:(UIEdgeInsets)padding completionHandler:(id)handler
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  referenceCopy = reference;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (referenceCopy)
  {
    layout = [(PXCuratedLibraryViewProvider *)self layout];
    gridView = [(PXCuratedLibraryViewProvider *)self gridView];
    viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
    assetsDataSourceManager = [viewModel assetsDataSourceManager];
    dataSource = [assetsDataSourceManager dataSource];
    v21 = [dataSource objectReferenceNearestToObjectReference:referenceCopy];
    if (dataSource)
    {
      [dataSource indexPathForObjectReference:v21];
      v22 = *(&v32 + 1);
      if (*(&v32 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_9:
        scrollViewController = [gridView scrollViewController];
        [scrollViewController stopScrollingAndZoomingAnimations];

        if (position != 2)
        {
          [layout estimatedHeaderHeight];
          if (top < v24)
          {
            top = v24;
          }
        }

        v25 = [layout createAnchorForScrollingSpriteForObjectReference:v21 toScrollPosition:position padding:{top, left, bottom, right}];
        autoInvalidate = [v25 autoInvalidate];

        if ([viewModel zoomLevel] == 4)
        {
          allPhotosLayout = [layout allPhotosLayout];
          [allPhotosLayout invalidateItemsLayout];
        }

        if (v15)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __108__PXCuratedLibraryViewProvider_scrollLibraryViewToObjectReference_scrollPosition_padding_completionHandler___block_invoke_2;
          v28[3] = &unk_1E774C2F0;
          v30 = v15;
          v29 = v21;
          [gridView installLayoutCompletionHandler:v28];
        }

        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __108__PXCuratedLibraryViewProvider_scrollLibraryViewToObjectReference_scrollPosition_padding_completionHandler___block_invoke;
    v31[3] = &__block_descriptor_40_e58_v16__0___PXCuratedLibraryMutableAssetsDataSourceManager__8l;
    v31[4] = v22;
    [assetsDataSourceManager performChanges:v31];
    goto LABEL_9;
  }

  if (handlerCopy)
  {
    layout = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"can't scroll library view to objectReference %@", 0}];
    (v15)[2](v15, 0, layout);
LABEL_17:
  }
}

- (id)selectionContainerWithUndoManager:(id)manager
{
  managerCopy = manager;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];
  zoomLevel = [viewModel zoomLevel];
  v9 = 0;
  if (zoomLevel > 2)
  {
    if (zoomLevel == 3)
    {
      goto LABEL_8;
    }

    if (zoomLevel != 4)
    {
      goto LABEL_13;
    }

    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];

    if (isDisplayingIndividualItems)
    {
LABEL_8:
      v9 = 7;
    }

    else
    {
      v13 = [off_1E77218D8 alloc];
      currentDataSource = [viewModel currentDataSource];
      indexPathSet = [off_1E7721768 indexPathSet];
      v16 = *(off_1E7722228 + 1);
      v26[0] = *off_1E7722228;
      v26[1] = v16;
      v17 = [v13 initWithDataSource:currentDataSource selectedIndexPaths:indexPathSet cursorIndexPath:v26];

      v9 = 7;
      selectionSnapshot = v17;
    }
  }

  else
  {
    switch(zoomLevel)
    {
      case 1:
        v9 = 9;
        break;
      case 2:
        v9 = 8;
        break;
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:373 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

LABEL_13:
  v18 = [PXSelectionContainer alloc];
  photoLibrary = [(PXCuratedLibraryViewProvider *)self photoLibrary];
  px_virtualCollections = [photoLibrary px_virtualCollections];
  photosCollection = [px_virtualCollections photosCollection];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  changeHistory = [assetsDataSourceManager changeHistory];
  v24 = [(PXSelectionContainer *)v18 initWithSelectionSnapshot:selectionSnapshot collection:photosCollection undoManager:managerCopy context:v9 privacyController:0 changeHistory:changeHistory];

  return v24;
}

- (void)performSortOrderMenuActionForItemAtIndex:(int64_t)index
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];

  [viewOptionsModel performActionForSortOrderAtIndex:index];
}

- (int64_t)sortOrderMenuActionStateForItemIndex:(int64_t)index
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];

  v6 = [viewOptionsModel menuActionStateForSortOrderAtIndex:index];
  return v6;
}

- (id)sortOrderMenuActionTitleForItemIndex:(int64_t)index
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];

  v6 = [viewOptionsModel titleForSortOrderAtIndex:index];

  return v6;
}

- (int64_t)menuActionStateForActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  actionManager = [viewModel actionManager];
  v7 = [actionManager actionPerformerForActionType:typeCopy];

  menuActionState = [v7 menuActionState];
  return menuActionState;
}

- (id)systemImageNameForActionType:(id)type
{
  typeCopy = type;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  actionManager = [viewModel actionManager];
  v7 = [actionManager actionPerformerForActionType:typeCopy];

  menuActionImageName = [v7 menuActionImageName];

  return menuActionImageName;
}

- (id)titleForActionType:(id)type useCase:(unint64_t)case
{
  typeCopy = type;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  actionManager = [viewModel actionManager];

  v9 = [actionManager actionPerformerForActionType:typeCopy];
  v10 = v9;
  if (v9)
  {
    [v9 localizedTitleForUseCase:case];
  }

  else
  {
    [actionManager localizedTitleForActionType:typeCopy useCase:case];
  }
  v11 = ;

  return v11;
}

- (void)performActionWithType:(id)type
{
  typeCopy = type;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  actionManager = [viewModel actionManager];
  v7 = [actionManager actionPerformerForActionType:typeCopy];

  [v7 performActionWithCompletionHandler:0];
}

- (BOOL)ensureSelectMode
{
  [(PXCuratedLibraryViewProvider *)self attemptSetInSelectMode:1];
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  isSelecting = [viewModel isSelecting];

  return isSelecting;
}

- (void)toggleSelectMode
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  -[PXCuratedLibraryViewProvider attemptSetInSelectMode:](self, "attemptSetInSelectMode:", [viewModel isSelecting] ^ 1);
}

- (BOOL)attemptSetInSelectMode:(BOOL)mode
{
  modeCopy = mode;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  allowedActions = [viewModel allowedActions];
  v6 = allowedActions;
  if (!modeCopy)
  {
    v9 = [allowedActions containsObject:@"PXCuratedLibraryActionCancelSelectMode"];

    if (v9)
    {
      v8 = &__block_literal_global_213;
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [allowedActions containsObject:@"PXCuratedLibraryActionEnterSelectMode"];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = &__block_literal_global_20243;
LABEL_6:
  [viewModel performChanges:v8];
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)zoomOutAllPhotos
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  assetsDataSourceManager = [viewModel assetsDataSourceManager];
  [assetsDataSourceManager forceAllPhotosAccurateIfNeeded];

  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PXCuratedLibraryViewProvider_zoomOutAllPhotos__block_invoke;
  v6[3] = &unk_1E7736F60;
  v6[4] = self;
  [zoomablePhotosViewModel performChanges:v6];
}

void __48__PXCuratedLibraryViewProvider_zoomOutAllPhotos__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 zoomState];
    v5 = *(&v9 + 1) + 1;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = 1;
    v7 = 0u;
    v8 = 0u;
  }

  v6 = [*(a1 + 32) preferredAnchorAssetReference];
  [v4 zoomToColumnIndex:v5 withAnchorAssetReference:v6 animated:1];
}

- (void)zoomInAllPhotos
{
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PXCuratedLibraryViewProvider_zoomInAllPhotos__block_invoke;
  v5[3] = &unk_1E7736F60;
  v5[4] = self;
  [zoomablePhotosViewModel performChanges:v5];
}

void __47__PXCuratedLibraryViewProvider_zoomInAllPhotos__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 zoomState];
    v5 = *(&v9 + 1) - 1;
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = -1;
    v7 = 0u;
    v8 = 0u;
  }

  v6 = [*(a1 + 32) preferredAnchorAssetReference];
  [v4 zoomToColumnIndex:v5 withAnchorAssetReference:v6 animated:1];
}

- (void)prepareForNavigationToObjectReference:(id)reference
{
  referenceCopy = reference;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  if ([viewModel zoomLevel] == 4)
  {
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PXCuratedLibraryViewProvider_prepareForNavigationToObjectReference___block_invoke;
    v7[3] = &unk_1E7736F60;
    v8 = referenceCopy;
    [zoomablePhotosViewModel performChanges:v7];
  }
}

void __70__PXCuratedLibraryViewProvider_prepareForNavigationToObjectReference___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  [v4 zoomInToIndividualItemsWithAnchorAssetReference:v3 animated:0];
}

- (int64_t)_layoutVariantToUse:(BOOL)use viewMode:(int64_t)mode
{
  if (mode < 3 && use)
  {
    return mode + 1;
  }

  else
  {
    return 0;
  }
}

- (PXSectionedObjectReference)preferredObjectReferenceToScrollToWhenRestoringState
{
  gridView = [(PXCuratedLibraryViewProvider *)self gridView];
  scrollViewController = [gridView scrollViewController];
  v4 = [scrollViewController isScrolledAtEdge:3 tolerance:100.0];

  if ((v4 & 1) == 0)
  {
    [gridView bounds];
    PXRectGetCenter();
  }

  return 0;
}

- (PXAssetReference)preferredAnchorAssetReference
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__20249;
  v15 = __Block_byref_object_dispose__20250;
  v16 = 0;
  viewModel = [(PXCuratedLibraryViewProvider *)self viewModel];
  selectionSnapshot = [viewModel selectionSnapshot];

  if ([selectionSnapshot isAnyItemSelected])
  {
    [selectionSnapshot dataSource];
    objc_claimAutoreleasedReturnValue();
    v9 = 0u;
    v10 = 0u;
    if (selectionSnapshot)
    {
      [selectionSnapshot cursorIndexPath];
    }

    [(PXCuratedLibraryViewProvider *)self layout];
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0x7FEFFFFFFFFFFFFFLL;
    [objc_claimAutoreleasedReturnValue() visibleRect];
    PXRectGetCenter();
  }

  v5 = v12[5];
  if (!v5)
  {
    [(PXCuratedLibraryViewProvider *)self gridView];
    [objc_claimAutoreleasedReturnValue() bounds];
    PXRectGetCenter();
  }

  v6 = v5;

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __61__PXCuratedLibraryViewProvider_preferredAnchorAssetReference__block_invoke(int64x2_t *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v10 = 0u;
  v11 = 0u;
  v7 = a1[2].i64[0];
  if (v7)
  {
    [v7 indexPathForObjectReference:v6];
  }

  v8 = a1[2].i64[1];
  v9[0] = v10;
  v9[1] = v11;
  if ([v8 isIndexPathSelected:v9])
  {
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v10, a1[4]), vceqq_s64(v11, a1[5])))) & 1) == 0)
    {
      PXRectShortestDistanceToPoint();
    }

    objc_storeStrong((*(a1[3].i64[0] + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)additionalRectDiagnosticsProvidersForView:(id)view
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = +[PXCuratedLibrarySettings sharedInstance];
  if ([v4 enablePlaybackDiagnostics])
  {
    v7[0] = self->_videoPlaybackController;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (PXCuratedLibraryViewProvider)initWithConfiguration:(id)configuration extendedTraitCollection:(id)collection
{
  configurationCopy = configuration;
  collectionCopy = collection;
  v55.receiver = self;
  v55.super_class = PXCuratedLibraryViewProvider;
  v8 = [(PXCuratedLibraryViewProvider *)&v55 init];
  if (v8)
  {
    photoLibrary = [configurationCopy photoLibrary];
    objc_storeStrong(&v8->_photoLibrary, photoLibrary);
    objc_storeStrong(&v8->_extendedTraitCollection, collection);
    v10 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:photoLibrary];
    mediaProvider = v8->_mediaProvider;
    v8->_mediaProvider = v10;

    v12 = [[PXCuratedLibraryLayoutSpecManager alloc] initWithExtendedTraitCollection:v8->_extendedTraitCollection options:16 variant:0];
    availableThumbnailSizes = [(PXUIMediaProvider *)v8->_mediaProvider availableThumbnailSizes];
    [(PXCuratedLibraryLayoutSpecManager *)v12 setAvailableThumbnailSizes:availableThumbnailSizes];

    v14 = -[PXCuratedLibraryStyleGuide initWithExtendedTraitCollection:secondaryToolbarStyle:]([PXCuratedLibraryStyleGuide alloc], "initWithExtendedTraitCollection:secondaryToolbarStyle:", v8->_extendedTraitCollection, [configurationCopy secondaryToolbarStyle]);
    initialZoomLevel = [configurationCopy initialZoomLevel];
    if (!initialZoomLevel)
    {
      standardUserDefaults = [off_1E7721948 standardUserDefaults];
      curatedLibraryZoomLevel = [standardUserDefaults curatedLibraryZoomLevel];

      if (curatedLibraryZoomLevel && (v18 = [curatedLibraryZoomLevel integerValue], (v18 - 5) >= 0xFFFFFFFFFFFFFFFCLL))
      {
        initialZoomLevel = v18;
        if (v18 == 3)
        {
          if ([configurationCopy enableDays])
          {
            initialZoomLevel = 3;
          }

          else
          {
            initialZoomLevel = 4;
          }
        }
      }

      else
      {
        initialZoomLevel = 4;
      }
    }

    v19 = +[PXCuratedLibraryAssetsDataSourceManagerConfiguration configurationWithPhotoLibrary:enableDays:](PXCuratedLibraryAssetsDataSourceManagerConfiguration, "configurationWithPhotoLibrary:enableDays:", photoLibrary, [configurationCopy enableDays]);
    v20 = [[PXCuratedLibraryViewModel alloc] initWithConfiguration:configurationCopy assetsDataSourceManagerConfiguration:v19 zoomLevel:initialZoomLevel mediaProvider:v8->_mediaProvider specManager:v12 styleGuide:v14];
    viewModel = v8->_viewModel;
    v8->_viewModel = v20;

    v22 = [[PXCuratedLibraryLayout alloc] initWithViewModel:v8->_viewModel];
    layout = v8->_layout;
    v8->_layout = v22;

    assetsDataSourceManager = [(PXCuratedLibraryViewModel *)v8->_viewModel assetsDataSourceManager];
    assetsDataSourceManager = v8->_assetsDataSourceManager;
    v8->_assetsDataSourceManager = assetsDataSourceManager;

    videoPlaybackController = [(PXCuratedLibraryViewModel *)v8->_viewModel videoPlaybackController];
    videoPlaybackController = v8->_videoPlaybackController;
    v8->_videoPlaybackController = videoPlaybackController;

    [(PXCuratedLibraryVideoPlaybackController *)v8->_videoPlaybackController setCuratedLibraryLayout:v8->_layout];
    v28 = objc_alloc_init(off_1E7721708);
    gridView = v8->_gridView;
    v8->_gridView = v28;

    [(PXGView *)v8->_gridView setRootLayout:v8->_layout];
    [(PXGView *)v8->_gridView setDiagnosticsSource:v8];
    [(PXGView *)v8->_gridView setAxNextResponder:v8];
    [(PXGView *)v8->_gridView registerAllTextureProvidersWithMediaProvider:v8->_mediaProvider namedImagesBundle:0];
    v30 = v8->_viewModel;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __78__PXCuratedLibraryViewProvider_initWithConfiguration_extendedTraitCollection___block_invoke;
    v53[3] = &unk_1E7748B68;
    v31 = v8;
    v54 = v31;
    [(PXCuratedLibraryViewModel *)v30 performChanges:v53];
    v32 = [off_1E77214A8 alloc];
    v33 = [(PXCuratedLibraryAssetsDataSourceManager *)v8->_assetsDataSourceManager dataSourceManagerForZoomLevel:4];
    v34 = [v32 initWithAssetsDataSourceManager:v33];
    itemCountsController = v31->_itemCountsController;
    v31->_itemCountsController = v34;

    [(PXAssetsDataSourceCountsController *)v31->_itemCountsController registerChangeObserver:v31 context:CountsControllerObservationContext];
    if ([configurationCopy enableFooter])
    {
      v36 = [[PXCuratedLibraryFooterController alloc] initWithGridView:v8->_gridView layout:v8->_layout viewModel:v8->_viewModel itemsCountsController:v31->_itemCountsController];
      footerController = v31->_footerController;
      v31->_footerController = v36;
    }

    v38 = PXCuratedLibraryEventTrackerCreate(v8->_viewModel, v8->_layout);
    eventTracker = v31->_eventTracker;
    v31->_eventTracker = v38;

    v40 = v31->_eventTracker;
    analysisStatus = [(PXCuratedLibraryViewModel *)v8->_viewModel analysisStatus];
    [analysisStatus setEventTracker:v40];

    v42 = [off_1E7721990 alloc];
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v8->_viewModel zoomablePhotosViewModel];
    v44 = [v42 initWithZoomablePhotosViewModel:zoomablePhotosViewModel];
    zoomablePhotosInteraction = v31->_zoomablePhotosInteraction;
    v31->_zoomablePhotosInteraction = v44;

    [(PXZoomablePhotosInteraction *)v31->_zoomablePhotosInteraction setView:v8->_gridView];
    [(PXZoomablePhotosInteraction *)v31->_zoomablePhotosInteraction setDelegate:v31];
    [(PXCuratedLibraryViewModel *)v8->_viewModel registerChangeObserver:v31 context:PXCuratedLibraryViewModelObservationContext];
    viewModel = [(PXCuratedLibraryViewProvider *)v31 viewModel];
    sharedLibraryStatusProvider = [viewModel sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v31->_sharedLibraryStatusProvider;
    v31->_sharedLibraryStatusProvider = sharedLibraryStatusProvider;

    [(PXSharedLibraryStatusProvider *)v31->_sharedLibraryStatusProvider registerChangeObserver:v31 context:PXSharedLibraryStatusProviderObservationContext_20210];
    viewModel2 = [(PXCuratedLibraryViewProvider *)v31 viewModel];
    libraryFilterState = [viewModel2 libraryFilterState];
    libraryFilterState = v31->_libraryFilterState;
    v31->_libraryFilterState = libraryFilterState;

    [(PXLibraryFilterState *)v31->_libraryFilterState registerChangeObserver:v31 context:PXLibraryFilterStateObservationContext_20211];
    [(PXCuratedLibraryLayoutSpecManager *)v12 setVariant:[(PXCuratedLibraryViewProvider *)v31 _layoutVariantToUse:[(PXSharedLibraryStatusProvider *)v31->_sharedLibraryStatusProvider hasSharedLibraryOrPreview] viewMode:[(PXLibraryFilterState *)v31->_libraryFilterState viewMode]]];
    [(PXCuratedLibraryViewProvider *)v31 _logLibraryCountsIfNecessary];
  }

  return v8;
}

- (PXCuratedLibraryViewProvider)initWithPhotoLibrary:(id)library extendedTraitCollection:(id)collection initialZoomLevel:(int64_t)level
{
  collectionCopy = collection;
  libraryCopy = library;
  v10 = [[PXCuratedLibraryViewConfiguration alloc] initWithPhotoLibrary:libraryCopy];

  [(PXCuratedLibraryViewConfiguration *)v10 setInitialZoomLevel:level];
  v11 = [(PXCuratedLibraryViewProvider *)self initWithConfiguration:v10 extendedTraitCollection:collectionCopy];

  return v11;
}

- (PXCuratedLibraryViewProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:71 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewProvider init]"}];

  abort();
}

@end