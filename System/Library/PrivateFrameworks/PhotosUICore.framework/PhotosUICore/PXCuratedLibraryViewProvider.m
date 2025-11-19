@interface PXCuratedLibraryViewProvider
- (BOOL)attemptSetInSelectMode:(BOOL)a3;
- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5;
- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4;
- (BOOL)ensureSelectMode;
- (BOOL)zoomablePhotosInteractionShouldBegin:(id)a3;
- (CGPoint)pointForPointReference:(id)a3 inCoordinateSpace:(id)a4;
- (PXAssetReference)preferredAnchorAssetReference;
- (PXCuratedLibraryViewProvider)init;
- (PXCuratedLibraryViewProvider)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4;
- (PXCuratedLibraryViewProvider)initWithPhotoLibrary:(id)a3 extendedTraitCollection:(id)a4 initialZoomLevel:(int64_t)a5;
- (PXGAXResponder)axNextResponder;
- (PXSectionedObjectReference)preferredObjectReferenceToScrollToWhenRestoringState;
- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5;
- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5;
- (PXSimpleIndexPath)selectionManager:(SEL)a3 indexPathClosestToIndexPath:(id)a4 inDirection:(PXSimpleIndexPath *)a5;
- (UIEdgeInsets)anchorPaddingForCurrentZoomLevel;
- (id)_itemsGeometryForDataSource:(id)a3;
- (id)additionalRectDiagnosticsProvidersForView:(id)a3;
- (id)axContainingScrollViewForAXGroup:(id)a3;
- (id)hitTestResultControlsForCurrentZoomLevel;
- (id)indexPathsForItemsInRect:(CGRect)a3 coordinateSpace:(id)a4;
- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)a3 toIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5;
- (id)pointReferenceAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (id)selectionContainerWithUndoManager:(id)a3;
- (id)selectionManager:(id)a3 indexPathsBetweenIndexPath:(PXSimpleIndexPath *)a4 andIndexPath:(PXSimpleIndexPath *)a5 inDirection:(unint64_t)a6;
- (id)sortOrderMenuActionTitleForItemIndex:(int64_t)a3;
- (id)systemImageNameForActionType:(id)a3;
- (id)titleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)zoomablePhotosInteraction:(id)a3 assetReferenceAtLocation:(CGPoint)a4;
- (int64_t)_layoutVariantToUse:(BOOL)a3 viewMode:(int64_t)a4;
- (int64_t)menuActionStateForActionType:(id)a3;
- (int64_t)selectionBasisForSelectionManager:(id)a3;
- (int64_t)sortOrderMenuActionStateForItemIndex:(int64_t)a3;
- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3;
- (void)_logLibraryCountsIfNecessary;
- (void)appIntentsEnumerateAssets:(id)a3;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
- (void)extendSelectionInDirection:(unint64_t)a3;
- (void)gridViewDidAppear;
- (void)gridViewDidDisappear;
- (void)moveSelectionInDirection:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performActionWithType:(id)a3;
- (void)performSortOrderMenuActionForItemAtIndex:(int64_t)a3;
- (void)prepareForNavigationToObjectReference:(id)a3;
- (void)scrollLibraryViewToObjectReference:(id)a3 scrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 completionHandler:(id)a6;
- (void)toggleSelectMode;
- (void)zoomInAllPhotos;
- (void)zoomOutAllPhotos;
- (void)zoomablePhotosInteractionWillBegin:(id)a3;
@end

@implementation PXCuratedLibraryViewProvider

- (void)_logLibraryCountsIfNecessary
{
  v3 = [(PXCuratedLibraryViewProvider *)self itemCountsController];
  v4 = v3;
  if (v3)
  {
    [v3 counts];
  }

  v5 = [(PXCuratedLibraryViewProvider *)self eventTracker];
  [v5 logLibraryItemsCount:0];
}

- (void)gridViewDidAppear
{
  v3 = [(PXCuratedLibraryViewProvider *)self gridView];
  PXAppIntentsSetViewAnnotationDelegate(v3, self);
}

- (PXGAXResponder)axNextResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_axNextResponder);

  return WeakRetained;
}

- (void)appIntentsEnumerateAssets:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:901 description:{@"Invalid parameter not satisfying: %@", @"assetHandler"}];
  }

  v6 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v7 = [v6 selectionSnapshot];

  v8 = [v7 fetchSelectedObjects];
  [v8 mutableCopy];

  v9 = [(PXCuratedLibraryViewProvider *)self layout];
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  [v9 visibleRect];
  [v9 safeAreaInsets];
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
  v2 = [(PXCuratedLibraryViewProvider *)self gridView];
  [_TtC12PhotosUICore33PXAppIntentsViewAnnotationsBridge clearViewAnnotationDelegateFor:v2];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCuratedLibraryViewModelObservationContext == a5)
  {
    goto LABEL_12;
  }

  if (CountsControllerObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    v17 = v9;
    [(PXCuratedLibraryViewProvider *)self _logLibraryCountsIfNecessary];
    goto LABEL_11;
  }

  if (PXSharedLibraryStatusProviderObservationContext_20210 == a5)
  {
    if ((v6 & 3) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (PXLibraryFilterStateObservationContext_20211 != a5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:872 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
LABEL_10:
    v17 = v9;
    v10 = [(PXCuratedLibraryViewProvider *)self sharedLibraryStatusProvider];
    v11 = [v10 hasSharedLibraryOrPreview];
    v12 = [(PXCuratedLibraryViewProvider *)self libraryFilterState];
    v13 = -[PXCuratedLibraryViewProvider _layoutVariantToUse:viewMode:](self, "_layoutVariantToUse:viewMode:", v11, [v12 viewMode]);
    v14 = [(PXCuratedLibraryViewProvider *)self viewModel];
    v15 = [v14 specManager];
    [v15 setVariant:v13];

LABEL_11:
    v9 = v17;
  }

LABEL_12:
}

- (UIEdgeInsets)anchorPaddingForCurrentZoomLevel
{
  v2 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v3 = [v2 zoomLevel];

  if ((v3 - 1) < 2 || v3 == 4)
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

- (PXSimpleIndexPath)selectionManager:(SEL)a3 indexPathClosestToIndexPath:(id)a4 inDirection:(PXSimpleIndexPath *)a5
{
  v10 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v11 = [v10 zoomLevel];
  v12 = [v10 assetsDataSourceManager];
  v13 = [v12 dataSourceForZoomLevel:v11];

  *&retstr->dataSourceIdentifier = 0u;
  *&retstr->item = 0u;
  v14 = *&a5->item;
  v16[0] = *&a5->dataSourceIdentifier;
  v16[1] = v14;
  [(PXCuratedLibraryViewProvider *)self selectableIndexPathClosestToIndexPath:v16 fromDataSource:v13 inDirection:a6];

  return result;
}

- (id)selectionManager:(id)a3 indexPathsBetweenIndexPath:(PXSimpleIndexPath *)a4 andIndexPath:(PXSimpleIndexPath *)a5 inDirection:(unint64_t)a6
{
  v10 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v11 = [v10 zoomLevel];
  v12 = [v10 assetsDataSourceManager];
  v13 = [v12 dataSourceForZoomLevel:v11];

  if (a6 == 2)
  {
    a6 = 5;
LABEL_7:
    v22 = *&a4->dataSourceIdentifier;
    v23 = *&a4->item;
    v17 = objc_alloc_init(off_1E77217C8);
    v19 = v22;
    v18 = v23;
    v16 = v17;
    v20 = *off_1E7721F68;
    do
    {
      v25 = v19;
      v26 = v18;
      [(PXCuratedLibraryViewProvider *)self selectableIndexPathClosestToIndexPath:&v25 fromDataSource:v13 inDirection:a6, v22.i64[0]];
      v22 = v27;
      v24 = v28;
      [v16 addIndexPath:&v27];
      v19 = v22;
      v18 = v24;
    }

    while ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v22, *&a5->dataSourceIdentifier), vceqq_s64(v24, *&a5->item)))) & 1) == 0 && v22.i64[0] != v20);
    goto LABEL_10;
  }

  if (a6 == 1)
  {
    a6 = 6;
    goto LABEL_7;
  }

  if (a6)
  {
    goto LABEL_7;
  }

  v14 = *&a4->item;
  v27 = *&a4->dataSourceIdentifier;
  v28 = v14;
  v15 = *&a5->item;
  v25 = *&a5->dataSourceIdentifier;
  v26 = v15;
  v16 = [(PXCuratedLibraryViewProvider *)self indexPathsFromIndexPath:&v27 toIndexPath:&v25 inDataSource:v13];
LABEL_10:

  return v16;
}

- (int64_t)selectionBasisForSelectionManager:(id)a3
{
  v5 = a3;
  v6 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v7 = [v6 zoomLevel];

  if (v7 >= 5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:792 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = qword_1A5381590[v7];

  return v8;
}

- (id)zoomablePhotosInteraction:(id)a3 assetReferenceAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(PXCuratedLibraryViewProvider *)self gridView];
  v7 = [v6 firstCuratedLibraryHitTestResultsAtPoint:1 withControl:{x, y}];
  v8 = [v7 assetReference];

  return v8;
}

- (void)zoomablePhotosInteractionWillBegin:(id)a3
{
  v4 = [(PXCuratedLibraryViewProvider *)self assetsDataSourceManager];
  [v4 forceAllPhotosAccurateIfNeeded];

  v5 = [(PXCuratedLibraryViewProvider *)self layout];
  [v5 clearLastVisibleAreaAnchoringInformation];
}

- (BOOL)zoomablePhotosInteractionShouldBegin:(id)a3
{
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v4 = [v3 allowedActions];
  v5 = [v4 containsObject:@"PXCuratedLibraryActionAllPhotosInteractiveZoom"];

  return v5;
}

- (BOOL)axGroup:(id)a3 didRequestToPerformAction:(int64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(PXCuratedLibraryViewProvider *)self axNextResponder];
  LOBYTE(a4) = [v10 axGroup:v9 didRequestToPerformAction:a4 userInfo:v8];

  return a4;
}

- (void)_handleChangeToModifySelectionWithUserInfo:(id)a3
{
  v3 = a3;
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

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((a4 & 2) != 0)
  {
    PXGAXGetFocusFromAndToInfosForUserInfo();
  }

  if ((a4 & 4) != 0)
  {
    PXGAXGetSelectionFromAndToInfosForUserInfo();
  }

  v10 = [(PXCuratedLibraryViewProvider *)self axNextResponder];
  [v10 axGroup:v8 didChange:a4 userInfo:v9];
}

- (id)axContainingScrollViewForAXGroup:(id)a3
{
  v3 = [(PXCuratedLibraryViewProvider *)self gridView];
  v4 = [v3 scrollViewController];
  v5 = [v4 scrollView];

  return v5;
}

- (CGPoint)pointForPointReference:(id)a3 inCoordinateSpace:(id)a4
{
  v5 = a3;
  v6 = [(PXCuratedLibraryViewProvider *)self gridView];
  [v6 rootLayout];
  [objc_claimAutoreleasedReturnValue() pointForPointReference:v5];

  [v6 scrollViewController];
  [objc_claimAutoreleasedReturnValue() contentCoordinateSpace];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)pointReferenceAtPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  v5 = a4;
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  PXPointConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)indexPathsForItemsInRect:(CGRect)a3 coordinateSpace:(id)a4
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(PXCuratedLibraryViewProvider *)self gridView];
  objc_claimAutoreleasedReturnValue();
  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
}

- (id)indexPathsFromIndexPath:(PXSimpleIndexPath *)a3 toIndexPath:(PXSimpleIndexPath *)a4 inDataSource:(id)a5
{
  v9 = a5;
  v10 = [(PXCuratedLibraryViewProvider *)self _itemsGeometryForDataSource:v9];
  if (v10)
  {
    v11 = [v9 identifier];
    if (a3->dataSourceIdentifier != v11)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      [v42 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:575 description:{@"Invalid parameter not satisfying: %@", @"originalFromIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];
    }

    if (a3->section)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:576 description:{@"Invalid parameter not satisfying: %@", @"originalFromIndexPath.section == section"}];
    }

    if (a4->dataSourceIdentifier != v11)
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      [v44 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:577 description:{@"Invalid parameter not satisfying: %@", @"originalToIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];
    }

    if (a4->section)
    {
      v45 = [MEMORY[0x1E696AAA8] currentHandler];
      [v45 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:578 description:{@"Invalid parameter not satisfying: %@", @"originalToIndexPath.section == section"}];
    }

    v12 = [v10 itemsBetweenItem:a3->item andItem:a4->item];
    v13 = [off_1E7721768 indexPathSetWithItemIndexes:v12 dataSourceIdentifier:v11 section:0];
  }

  else
  {
    v50 = a2;
    dataSourceIdentifier = a3->dataSourceIdentifier;
    section = a3->section;
    item = a3->item;
    subitem = a3->subitem;
    v46 = a4;
    v47 = a3;
    v18 = a4->dataSourceIdentifier;
    v19 = a4->section;
    v55 = self;
    v21 = a4->item;
    v20 = a4->subitem;
    v67 = dataSourceIdentifier;
    v68 = section;
    v69 = item;
    v70 = subitem;
    v22 = [v9 objectReferenceAtIndexPath:&v67];
    v53 = v21;
    v54 = v18;
    v67 = v18;
    v68 = v19;
    v56 = v9;
    v57 = v19;
    v69 = v21;
    v70 = v20;
    v52 = v20;
    v23 = [v9 objectReferenceAtIndexPath:&v67];
    v24 = [(PXCuratedLibraryViewProvider *)v55 gridView];
    v48 = v23;
    v49 = v22;
    LOBYTE(v19) = [v24 isObjectReference:v22 visuallyBeforeObjectReference:v23];

    if ((v19 & 1) == 0)
    {
      dataSourceIdentifier = v46->dataSourceIdentifier;
      section = v46->section;
      item = v46->item;
      subitem = v46->subitem;
      v57 = v47->section;
      v53 = v47->item;
      v54 = v47->dataSourceIdentifier;
      v52 = v47->subitem;
    }

    v13 = [off_1E77217C8 indexPathSet];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__PXCuratedLibraryViewProvider_indexPathsFromIndexPath_toIndexPath_inDataSource___block_invoke;
    aBlock[3] = &unk_1E7745A38;
    aBlock[4] = v55;
    aBlock[5] = v50;
    v25 = *&v47->item;
    v63 = *&v47->dataSourceIdentifier;
    v64 = v25;
    v26 = *&v46->item;
    v65 = *&v46->dataSourceIdentifier;
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
      [v13 addIndexPath:&v67];
      v30 = dataSourceIdentifier == v54 && section == v57;
      v31 = v30 && item == v53;
      v58 = dataSourceIdentifier;
      v59 = section;
      v32 = v31 && subitem == v52;
      v33 = v32;
      v60 = item;
      v61 = subitem;
      [(PXCuratedLibraryViewProvider *)v55 selectableIndexPathClosestToIndexPath:&v58 fromDataSource:v56 inDirection:5];
      dataSourceIdentifier = v67;
      v34 = v68;
      item = v69;
      subitem = v70;
      if ([v13 containsIndexPath:&v67])
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
      [v13 unionIndexPathSet:v36];
    }

    v37 = 0;
    v38 = *off_1E7721F68;
    while ((v37 & 1) == 0 && dataSourceIdentifier != v38)
    {
      v67 = dataSourceIdentifier;
      v68 = v34;
      v69 = item;
      v70 = subitem;
      [v13 addIndexPath:&v67];
      v40 = dataSourceIdentifier == v54 && v34 == v57 && item == v53;
      v58 = dataSourceIdentifier;
      v59 = v34;
      v37 = v40 && subitem == v52;
      v60 = item;
      v61 = subitem;
      [(PXCuratedLibraryViewProvider *)v55 selectableIndexPathClosestToIndexPath:&v58 fromDataSource:v56 inDirection:5];
      dataSourceIdentifier = v67;
      v34 = v68;
      item = v69;
      subitem = v70;
      if ([v13 containsIndexPath:&v67])
      {
        v51[2]();
        v67 = v54;
        v68 = v57;
        v69 = v53;
        v70 = v52;
        [v13 addIndexPath:&v67];
        break;
      }
    }

LABEL_29:

    v9 = v56;
    v10 = 0;
  }

  return v13;
}

- (PXSimpleIndexPath)selectableIndexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5
{
  v10 = a5;
  v11 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v11;
  v12 = *off_1E7721F68;
  do
  {
    v13 = *&a4->item;
    v17 = *&a4->dataSourceIdentifier;
    v18 = v13;
    [(PXCuratedLibraryViewProvider *)self _indexPathClosestToIndexPath:&v17 fromDataSource:v10 inDirection:a6];
    v14 = *&retstr->item;
    *&a4->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&a4->item = v14;
    if (retstr->dataSourceIdentifier == v12)
    {
      break;
    }

    v15 = *&retstr->item;
    v17 = *&retstr->dataSourceIdentifier;
    v18 = v15;
  }

  while (![(PXCuratedLibraryViewProvider *)self canSelectObjectAtIndexPath:&v17 inDataSource:v10]);

  return result;
}

- (void)extendSelectionInDirection:(unint64_t)a3
{
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 selectionManager];
  v7 = v6;
  if (v6)
  {
    [v6 startingIndexPathForMoveInDirection:a3];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v8 = *off_1E7721F68;
  if (v17 == *off_1E7721F68)
  {
    [(PXCuratedLibraryViewProvider *)self moveSelectionInDirection:a3];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v9 = [v5 selectionManager];
    v10 = v9;
    if (v9)
    {
      v13 = v17;
      v14 = v18;
      [v9 extendSelectionFromIndexPath:&v13 inDirection:a3 withDelegate:self];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    if (v15 != v8)
    {
      v11 = [v5 currentDataSource];
      v13 = v15;
      v14 = v16;
      v12 = [v11 objectReferenceAtIndexPath:&v13];

      if (v12)
      {
        [(PXCuratedLibraryViewProvider *)self anchorPaddingForCurrentZoomLevel];
        [(PXCuratedLibraryViewProvider *)self scrollLibraryViewToObjectReference:v12 scrollPosition:0 padding:0 completionHandler:?];
      }
    }
  }
}

- (void)moveSelectionInDirection:(unint64_t)a3
{
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 selectionManager];
  v7 = v6;
  if (v6)
  {
    [v6 moveSelectionInDirection:a3 withDelegate:self];
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
    v16 = [v5 currentDataSource];
    v18[0] = v19;
    v18[1] = v20;
    v17 = [v16 objectReferenceAtIndexPath:v18];

    if (v17)
    {
      [(PXCuratedLibraryViewProvider *)self scrollLibraryViewToObjectReference:v17 scrollPosition:0 padding:0 completionHandler:v9, v11, v13, v15];
    }
  }
}

- (BOOL)canSelectObjectAtIndexPath:(PXSimpleIndexPath *)a3 inDataSource:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_2;
  }

  if (a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v8) = a3->subitem == 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_2:
    LOBYTE(v8) = 0;
  }

  else
  {
    v9 = *&a3->item;
    v13[0] = *&a3->dataSourceIdentifier;
    v13[1] = v9;
    v10 = [v6 assetCollectionAtSectionIndexPath:v13];
    v11 = [(PXCuratedLibraryViewProvider *)self viewModel];
    v8 = !PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v10, [v11 zoomLevel]);
  }

LABEL_7:

  return v8;
}

- (PXSimpleIndexPath)_indexPathClosestToIndexPath:(SEL)a3 fromDataSource:(PXSimpleIndexPath *)a4 inDirection:(id)a5
{
  v10 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x4010000000;
  v43 = &unk_1A561E057;
  v11 = *(off_1E7722228 + 1);
  v44 = *off_1E7722228;
  v45 = v11;
  v12 = [(PXCuratedLibraryViewProvider *)self _itemsGeometryForDataSource:v10];
  v13 = v12;
  if (!v12)
  {
    if (!a6)
    {
      goto LABEL_13;
    }

    v17 = [(PXCuratedLibraryViewProvider *)self hitTestResultControlsForCurrentZoomLevel];
    if (a4->dataSourceIdentifier != *off_1E7721F68)
    {
      if (a4->item == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a4->section != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = *&a4->item;
          v38 = *&a4->dataSourceIdentifier;
          v39 = v18;
          v19 = [v10 assetCollectionReferenceAtSectionIndexPath:&v38];
          v20 = [(PXCuratedLibraryViewProvider *)self layout];
          v21 = [v20 spriteReferenceForObjectReference:v19];

          v22 = [(PXCuratedLibraryViewProvider *)self gridView];
          v23 = v32;
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke_2;
          v32[3] = &unk_1E772F488;
          v32[4] = v17;
          v24 = v10;
          v25 = *&a4->item;
          v33 = *&a4->dataSourceIdentifier;
          v34 = v25;
          v32[5] = v24;
          v32[6] = &v40;
          [v22 enumerateCuratedLibraryHitTestResultsInDirection:a6 fromSpriteReference:v21 usingBlock:v32];
LABEL_11:
        }
      }

      else if (a4->subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = *&a4->item;
        v38 = *&a4->dataSourceIdentifier;
        v39 = v26;
        v19 = [v10 assetReferenceAtItemIndexPath:&v38];
        v27 = [(PXCuratedLibraryViewProvider *)self layout];
        v21 = [v27 spriteReferenceForObjectReference:v19];

        v22 = [(PXCuratedLibraryViewProvider *)self gridView];
        v23 = v35;
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __88__PXCuratedLibraryViewProvider__indexPathClosestToIndexPath_fromDataSource_inDirection___block_invoke;
        v35[3] = &unk_1E772F488;
        v35[4] = v17;
        v28 = v10;
        v29 = *&a4->item;
        v36 = *&a4->dataSourceIdentifier;
        v37 = v29;
        v35[5] = v28;
        v35[6] = &v40;
        [v22 enumerateCuratedLibraryHitTestResultsInDirection:a6 fromSpriteReference:v21 usingBlock:v35];
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

  v14 = [v12 itemClosestToItem:a4->item inDirection:a6];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v41;
    v16 = *&a4->item;
    *(v41 + 2) = *&a4->dataSourceIdentifier;
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

- (id)_itemsGeometryForDataSource:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewProvider *)self layout];
  v6 = [v5 presentedItemsGeometryForDataSource:v4];

  return v6;
}

- (id)hitTestResultControlsForCurrentZoomLevel
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v5 = [v4 zoomLevel];

  if (v5 > 2)
  {
    if ((v5 - 3) >= 2)
    {
      goto LABEL_10;
    }

    v5 = 1;
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v5 = 2;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_10;
      }

      [v3 addIndex:3];
      v5 = 4;
    }
  }

  [v3 addIndex:v5];
LABEL_10:

  return v3;
}

- (void)scrollLibraryViewToObjectReference:(id)a3 scrollPosition:(unint64_t)a4 padding:(UIEdgeInsets)a5 completionHandler:(id)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v13 = a3;
  v14 = a6;
  v15 = v14;
  if (v13)
  {
    v16 = [(PXCuratedLibraryViewProvider *)self layout];
    v17 = [(PXCuratedLibraryViewProvider *)self gridView];
    v18 = [(PXCuratedLibraryViewProvider *)self viewModel];
    v19 = [v18 assetsDataSourceManager];
    v20 = [v19 dataSource];
    v21 = [v20 objectReferenceNearestToObjectReference:v13];
    if (v20)
    {
      [v20 indexPathForObjectReference:v21];
      v22 = *(&v32 + 1);
      if (*(&v32 + 1) == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_9:
        v23 = [v17 scrollViewController];
        [v23 stopScrollingAndZoomingAnimations];

        if (a4 != 2)
        {
          [v16 estimatedHeaderHeight];
          if (top < v24)
          {
            top = v24;
          }
        }

        v25 = [v16 createAnchorForScrollingSpriteForObjectReference:v21 toScrollPosition:a4 padding:{top, left, bottom, right}];
        v26 = [v25 autoInvalidate];

        if ([v18 zoomLevel] == 4)
        {
          v27 = [v16 allPhotosLayout];
          [v27 invalidateItemsLayout];
        }

        if (v15)
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __108__PXCuratedLibraryViewProvider_scrollLibraryViewToObjectReference_scrollPosition_padding_completionHandler___block_invoke_2;
          v28[3] = &unk_1E774C2F0;
          v30 = v15;
          v29 = v21;
          [v17 installLayoutCompletionHandler:v28];
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
    [v19 performChanges:v31];
    goto LABEL_9;
  }

  if (v14)
  {
    v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"can't scroll library view to objectReference %@", 0}];
    (v15)[2](v15, 0, v16);
LABEL_17:
  }
}

- (id)selectionContainerWithUndoManager:(id)a3
{
  v5 = a3;
  v6 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v7 = [v6 selectionSnapshot];
  v8 = [v6 zoomLevel];
  v9 = 0;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      goto LABEL_8;
    }

    if (v8 != 4)
    {
      goto LABEL_13;
    }

    v10 = [v6 zoomablePhotosViewModel];
    v11 = [v10 isDisplayingIndividualItems];

    if (v11)
    {
LABEL_8:
      v9 = 7;
    }

    else
    {
      v13 = [off_1E77218D8 alloc];
      v14 = [v6 currentDataSource];
      v15 = [off_1E7721768 indexPathSet];
      v16 = *(off_1E7722228 + 1);
      v26[0] = *off_1E7722228;
      v26[1] = v16;
      v17 = [v13 initWithDataSource:v14 selectedIndexPaths:v15 cursorIndexPath:v26];

      v9 = 7;
      v7 = v17;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        v9 = 9;
        break;
      case 2:
        v9 = 8;
        break;
      case 0:
        v12 = [MEMORY[0x1E696AAA8] currentHandler];
        [v12 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:373 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

LABEL_13:
  v18 = [PXSelectionContainer alloc];
  v19 = [(PXCuratedLibraryViewProvider *)self photoLibrary];
  v20 = [v19 px_virtualCollections];
  v21 = [v20 photosCollection];
  v22 = [v6 assetsDataSourceManager];
  v23 = [v22 changeHistory];
  v24 = [(PXSelectionContainer *)v18 initWithSelectionSnapshot:v7 collection:v21 undoManager:v5 context:v9 privacyController:0 changeHistory:v23];

  return v24;
}

- (void)performSortOrderMenuActionForItemAtIndex:(int64_t)a3
{
  v4 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v5 = [v4 viewOptionsModel];

  [v5 performActionForSortOrderAtIndex:a3];
}

- (int64_t)sortOrderMenuActionStateForItemIndex:(int64_t)a3
{
  v4 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v5 = [v4 viewOptionsModel];

  v6 = [v5 menuActionStateForSortOrderAtIndex:a3];
  return v6;
}

- (id)sortOrderMenuActionTitleForItemIndex:(int64_t)a3
{
  v4 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v5 = [v4 viewOptionsModel];

  v6 = [v5 titleForSortOrderAtIndex:a3];

  return v6;
}

- (int64_t)menuActionStateForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  v8 = [v7 menuActionState];
  return v8;
}

- (id)systemImageNameForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  v8 = [v7 menuActionImageName];

  return v8;
}

- (id)titleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v8 = [v7 actionManager];

  v9 = [v8 actionPerformerForActionType:v6];
  v10 = v9;
  if (v9)
  {
    [v9 localizedTitleForUseCase:a4];
  }

  else
  {
    [v8 localizedTitleForActionType:v6 useCase:a4];
  }
  v11 = ;

  return v11;
}

- (void)performActionWithType:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v6 = [v5 actionManager];
  v7 = [v6 actionPerformerForActionType:v4];

  [v7 performActionWithCompletionHandler:0];
}

- (BOOL)ensureSelectMode
{
  [(PXCuratedLibraryViewProvider *)self attemptSetInSelectMode:1];
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v4 = [v3 isSelecting];

  return v4;
}

- (void)toggleSelectMode
{
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  -[PXCuratedLibraryViewProvider attemptSetInSelectMode:](self, "attemptSetInSelectMode:", [v3 isSelecting] ^ 1);
}

- (BOOL)attemptSetInSelectMode:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v5 = [v4 allowedActions];
  v6 = v5;
  if (!v3)
  {
    v9 = [v5 containsObject:@"PXCuratedLibraryActionCancelSelectMode"];

    if (v9)
    {
      v8 = &__block_literal_global_213;
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v7 = [v5 containsObject:@"PXCuratedLibraryActionEnterSelectMode"];

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = &__block_literal_global_20243;
LABEL_6:
  [v4 performChanges:v8];
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)zoomOutAllPhotos
{
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v4 = [v3 assetsDataSourceManager];
  [v4 forceAllPhotosAccurateIfNeeded];

  v5 = [v3 zoomablePhotosViewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PXCuratedLibraryViewProvider_zoomOutAllPhotos__block_invoke;
  v6[3] = &unk_1E7736F60;
  v6[4] = self;
  [v5 performChanges:v6];
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
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v4 = [v3 zoomablePhotosViewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PXCuratedLibraryViewProvider_zoomInAllPhotos__block_invoke;
  v5[3] = &unk_1E7736F60;
  v5[4] = self;
  [v4 performChanges:v5];
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

- (void)prepareForNavigationToObjectReference:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryViewProvider *)self viewModel];
  if ([v5 zoomLevel] == 4)
  {
    v6 = [v5 zoomablePhotosViewModel];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PXCuratedLibraryViewProvider_prepareForNavigationToObjectReference___block_invoke;
    v7[3] = &unk_1E7736F60;
    v8 = v4;
    [v6 performChanges:v7];
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

- (int64_t)_layoutVariantToUse:(BOOL)a3 viewMode:(int64_t)a4
{
  if (a4 < 3 && a3)
  {
    return a4 + 1;
  }

  else
  {
    return 0;
  }
}

- (PXSectionedObjectReference)preferredObjectReferenceToScrollToWhenRestoringState
{
  v2 = [(PXCuratedLibraryViewProvider *)self gridView];
  v3 = [v2 scrollViewController];
  v4 = [v3 isScrolledAtEdge:3 tolerance:100.0];

  if ((v4 & 1) == 0)
  {
    [v2 bounds];
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
  v3 = [(PXCuratedLibraryViewProvider *)self viewModel];
  v4 = [v3 selectionSnapshot];

  if ([v4 isAnyItemSelected])
  {
    [v4 dataSource];
    objc_claimAutoreleasedReturnValue();
    v9 = 0u;
    v10 = 0u;
    if (v4)
    {
      [v4 cursorIndexPath];
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

- (id)additionalRectDiagnosticsProvidersForView:(id)a3
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

- (PXCuratedLibraryViewProvider)initWithConfiguration:(id)a3 extendedTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = PXCuratedLibraryViewProvider;
  v8 = [(PXCuratedLibraryViewProvider *)&v55 init];
  if (v8)
  {
    v9 = [v6 photoLibrary];
    objc_storeStrong(&v8->_photoLibrary, v9);
    objc_storeStrong(&v8->_extendedTraitCollection, a4);
    v10 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v9];
    mediaProvider = v8->_mediaProvider;
    v8->_mediaProvider = v10;

    v12 = [[PXCuratedLibraryLayoutSpecManager alloc] initWithExtendedTraitCollection:v8->_extendedTraitCollection options:16 variant:0];
    v13 = [(PXUIMediaProvider *)v8->_mediaProvider availableThumbnailSizes];
    [(PXCuratedLibraryLayoutSpecManager *)v12 setAvailableThumbnailSizes:v13];

    v14 = -[PXCuratedLibraryStyleGuide initWithExtendedTraitCollection:secondaryToolbarStyle:]([PXCuratedLibraryStyleGuide alloc], "initWithExtendedTraitCollection:secondaryToolbarStyle:", v8->_extendedTraitCollection, [v6 secondaryToolbarStyle]);
    v15 = [v6 initialZoomLevel];
    if (!v15)
    {
      v16 = [off_1E7721948 standardUserDefaults];
      v17 = [v16 curatedLibraryZoomLevel];

      if (v17 && (v18 = [v17 integerValue], (v18 - 5) >= 0xFFFFFFFFFFFFFFFCLL))
      {
        v15 = v18;
        if (v18 == 3)
        {
          if ([v6 enableDays])
          {
            v15 = 3;
          }

          else
          {
            v15 = 4;
          }
        }
      }

      else
      {
        v15 = 4;
      }
    }

    v19 = +[PXCuratedLibraryAssetsDataSourceManagerConfiguration configurationWithPhotoLibrary:enableDays:](PXCuratedLibraryAssetsDataSourceManagerConfiguration, "configurationWithPhotoLibrary:enableDays:", v9, [v6 enableDays]);
    v20 = [[PXCuratedLibraryViewModel alloc] initWithConfiguration:v6 assetsDataSourceManagerConfiguration:v19 zoomLevel:v15 mediaProvider:v8->_mediaProvider specManager:v12 styleGuide:v14];
    viewModel = v8->_viewModel;
    v8->_viewModel = v20;

    v22 = [[PXCuratedLibraryLayout alloc] initWithViewModel:v8->_viewModel];
    layout = v8->_layout;
    v8->_layout = v22;

    v24 = [(PXCuratedLibraryViewModel *)v8->_viewModel assetsDataSourceManager];
    assetsDataSourceManager = v8->_assetsDataSourceManager;
    v8->_assetsDataSourceManager = v24;

    v26 = [(PXCuratedLibraryViewModel *)v8->_viewModel videoPlaybackController];
    videoPlaybackController = v8->_videoPlaybackController;
    v8->_videoPlaybackController = v26;

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
    if ([v6 enableFooter])
    {
      v36 = [[PXCuratedLibraryFooterController alloc] initWithGridView:v8->_gridView layout:v8->_layout viewModel:v8->_viewModel itemsCountsController:v31->_itemCountsController];
      footerController = v31->_footerController;
      v31->_footerController = v36;
    }

    v38 = PXCuratedLibraryEventTrackerCreate(v8->_viewModel, v8->_layout);
    eventTracker = v31->_eventTracker;
    v31->_eventTracker = v38;

    v40 = v31->_eventTracker;
    v41 = [(PXCuratedLibraryViewModel *)v8->_viewModel analysisStatus];
    [v41 setEventTracker:v40];

    v42 = [off_1E7721990 alloc];
    v43 = [(PXCuratedLibraryViewModel *)v8->_viewModel zoomablePhotosViewModel];
    v44 = [v42 initWithZoomablePhotosViewModel:v43];
    zoomablePhotosInteraction = v31->_zoomablePhotosInteraction;
    v31->_zoomablePhotosInteraction = v44;

    [(PXZoomablePhotosInteraction *)v31->_zoomablePhotosInteraction setView:v8->_gridView];
    [(PXZoomablePhotosInteraction *)v31->_zoomablePhotosInteraction setDelegate:v31];
    [(PXCuratedLibraryViewModel *)v8->_viewModel registerChangeObserver:v31 context:PXCuratedLibraryViewModelObservationContext];
    v46 = [(PXCuratedLibraryViewProvider *)v31 viewModel];
    v47 = [v46 sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v31->_sharedLibraryStatusProvider;
    v31->_sharedLibraryStatusProvider = v47;

    [(PXSharedLibraryStatusProvider *)v31->_sharedLibraryStatusProvider registerChangeObserver:v31 context:PXSharedLibraryStatusProviderObservationContext_20210];
    v49 = [(PXCuratedLibraryViewProvider *)v31 viewModel];
    v50 = [v49 libraryFilterState];
    libraryFilterState = v31->_libraryFilterState;
    v31->_libraryFilterState = v50;

    [(PXLibraryFilterState *)v31->_libraryFilterState registerChangeObserver:v31 context:PXLibraryFilterStateObservationContext_20211];
    [(PXCuratedLibraryLayoutSpecManager *)v12 setVariant:[(PXCuratedLibraryViewProvider *)v31 _layoutVariantToUse:[(PXSharedLibraryStatusProvider *)v31->_sharedLibraryStatusProvider hasSharedLibraryOrPreview] viewMode:[(PXLibraryFilterState *)v31->_libraryFilterState viewMode]]];
    [(PXCuratedLibraryViewProvider *)v31 _logLibraryCountsIfNecessary];
  }

  return v8;
}

- (PXCuratedLibraryViewProvider)initWithPhotoLibrary:(id)a3 extendedTraitCollection:(id)a4 initialZoomLevel:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[PXCuratedLibraryViewConfiguration alloc] initWithPhotoLibrary:v9];

  [(PXCuratedLibraryViewConfiguration *)v10 setInitialZoomLevel:a5];
  v11 = [(PXCuratedLibraryViewProvider *)self initWithConfiguration:v10 extendedTraitCollection:v8];

  return v11;
}

- (PXCuratedLibraryViewProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryViewProvider.m" lineNumber:71 description:{@"%s is not available as initializer", "-[PXCuratedLibraryViewProvider init]"}];

  abort();
}

@end