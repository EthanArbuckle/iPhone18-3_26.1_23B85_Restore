@interface PXCuratedLibraryBottomSpacerController
- (BOOL)_shouldShowSpacerForGridViewState;
- (PXCuratedLibraryBottomSpacerController)initWithViewModel:(id)model extendedTraitCollection:(id)collection layout:(id)layout gridView:(id)view;
- (double)visibleSpacerFraction;
- (void)_invalidateSpacer;
- (void)_invalidateWantsSpacer;
- (void)_performChangeForWantsSpacerInvalidation;
- (void)_updateSpacer;
- (void)_updateWantsSpacer;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)setHasAppearedOnce:(BOOL)once;
- (void)setWantsSpacer:(BOOL)spacer;
@end

@implementation PXCuratedLibraryBottomSpacerController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CuratedLibraryViewModelObserverContext_249799 == context)
  {
    if ((changeCopy & 5) != 0)
    {
LABEL_4:
      v11 = observableCopy;
      [(PXCuratedLibraryBottomSpacerController *)self _performChangeForWantsSpacerInvalidation];
      observableCopy = v11;
    }
  }

  else
  {
    if (ExtendedTraitCollectionObserverContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:219 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 2) != 0)
    {
      goto LABEL_4;
    }
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__PXCuratedLibraryBottomSpacerController_scrollViewControllerContentBoundsDidChange___block_invoke;
  v3[3] = &unk_1E774B0D0;
  v3[4] = self;
  [(PXCuratedLibraryBottomSpacerController *)self performChanges:v3];
}

- (void)_performChangeForWantsSpacerInvalidation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __82__PXCuratedLibraryBottomSpacerController__performChangeForWantsSpacerInvalidation__block_invoke;
  v2[3] = &unk_1E774B0D0;
  v2[4] = self;
  [(PXCuratedLibraryBottomSpacerController *)self performChanges:v2];
}

- (void)_updateSpacer
{
  layout = [(PXCuratedLibraryBottomSpacerController *)self layout];
  [layout padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  gridView = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  scrollViewController = [gridView scrollViewController];

  wantsSpacer = [(PXCuratedLibraryBottomSpacerController *)self wantsSpacer];
  if (wantsSpacer)
  {
    [scrollViewController scrollViewContentSize];
    [layout presentedPadding];
    [layout safeAreaInsets];
    [scrollViewController visibleRect];
    [scrollViewController contentInset];
    [scrollViewController contentInset];
    [layout padding];
    PXEdgeInsetsEqualToEdgeInsets();
  }

  [layout setPadding:{v4, v6, 0.0, v8}];
  [(PXCuratedLibraryBottomSpacerController *)self setHasSpacer:wantsSpacer];
}

- (void)_invalidateSpacer
{
  updater = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSpacer];
}

- (void)_updateWantsSpacer
{
  if ([(PXCuratedLibraryBottomSpacerController *)self hasAppearedOnce])
  {
    viewModel = [(PXCuratedLibraryBottomSpacerController *)self viewModel];
    if ([viewModel zoomLevel] == 4)
    {
      layout = [(PXCuratedLibraryBottomSpacerController *)self layout];
      allPhotosLayout = [layout allPhotosLayout];
      fillSafeAreaBottomInset = [allPhotosLayout fillSafeAreaBottomInset];

      if (fillSafeAreaBottomInset)
      {
        if ([(PXCuratedLibraryBottomSpacerController *)self _shouldShowSpacerForGridViewState])
        {
          v7 = 1;
LABEL_10:
          [(PXCuratedLibraryBottomSpacerController *)self setWantsSpacer:v7 & 1, v10, v11, v12, v13, v14, v15, v16];

          return;
        }

        if ([(PXCuratedLibraryBottomSpacerController *)self wantsSpacer])
        {
          zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
          v9 = zoomablePhotosViewModel;
          if (zoomablePhotosViewModel)
          {
            [zoomablePhotosViewModel zoomState];
            v7 = BYTE8(v13);
          }

          else
          {
            v7 = 0;
            v16 = 0;
            v14 = 0u;
            v15 = 0u;
            v12 = 0u;
            v13 = 0u;
            v10 = 0u;
            v11 = 0u;
          }

          goto LABEL_10;
        }
      }
    }

    v7 = 0;
    goto LABEL_10;
  }
}

- (void)_invalidateWantsSpacer
{
  updater = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsSpacer];
}

- (BOOL)_shouldShowSpacerForGridViewState
{
  gridView = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  [gridView scrollViewController];
  objc_claimAutoreleasedReturnValue();

  [(PXCuratedLibraryBottomSpacerController *)self visibleSpacerFraction];
  PXFloatGreaterThanFloat();
}

- (double)visibleSpacerFraction
{
  gridView = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  scrollViewController = [gridView scrollViewController];
  [scrollViewController scrollViewVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layout = [(PXCuratedLibraryBottomSpacerController *)self layout];
  [scrollViewController scrollViewContentSize];
  v15 = v14;
  v17 = v16;
  [layout presentedPadding];
  v19 = v17 - v18;
  [layout safeAreaInsets];
  v21 = v20;
  v23 = v22;
  v24 = v22 + v19;
  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  v37.origin.x = v21;
  v37.origin.y = v24;
  rect = v15;
  v37.size.width = v15;
  v37.size.height = v23;
  v34 = CGRectIntersection(v33, v37);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v29 = 0.0;
  if (!CGRectIsEmpty(v34))
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v30 = CGRectGetHeight(v35);
    v36.origin.x = v21;
    v36.origin.y = v24;
    v36.size.width = rect;
    v36.size.height = v23;
    v29 = v30 / CGRectGetHeight(v36);
  }

  return v29;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryBottomSpacerController;
  [(PXCuratedLibraryBottomSpacerController *)&v3 performChanges:changes];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryBottomSpacerController;
  [(PXCuratedLibraryBottomSpacerController *)&v4 didPerformChanges];
  updater = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [updater updateIfNeeded];
}

- (void)setWantsSpacer:(BOOL)spacer
{
  if (self->_wantsSpacer != spacer)
  {
    self->_wantsSpacer = spacer;
    [(PXCuratedLibraryBottomSpacerController *)self _invalidateSpacer];
  }
}

- (void)setHasAppearedOnce:(BOOL)once
{
  if (self->_hasAppearedOnce != once)
  {
    self->_hasAppearedOnce = once;
    [(PXCuratedLibraryBottomSpacerController *)self _invalidateWantsSpacer];
  }
}

- (PXCuratedLibraryBottomSpacerController)initWithViewModel:(id)model extendedTraitCollection:(id)collection layout:(id)layout gridView:(id)view
{
  modelCopy = model;
  collectionCopy = collection;
  layoutCopy = layout;
  viewCopy = view;
  if (modelCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (collectionCopy)
    {
LABEL_3:
      if (layoutCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"layout"}];

      if (viewCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection"}];

  if (!layoutCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (viewCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"gridView"}];

LABEL_5:
  v26.receiver = self;
  v26.super_class = PXCuratedLibraryBottomSpacerController;
  v16 = [(PXCuratedLibraryBottomSpacerController *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_viewModel, model);
    [(PXCuratedLibraryViewModel *)v17->_viewModel registerChangeObserver:v17 context:CuratedLibraryViewModelObserverContext_249799];
    objc_storeStrong(&v17->_extendedTraitCollection, collection);
    [(PXExtendedTraitCollection *)v17->_extendedTraitCollection registerChangeObserver:v17 context:ExtendedTraitCollectionObserverContext];
    objc_storeStrong(&v17->_layout, layout);
    objc_storeStrong(&v17->_gridView, view);
    scrollViewController = [(PXGView *)v17->_gridView scrollViewController];
    [scrollViewController registerObserver:v17];
    v19 = [[off_1E7721940 alloc] initWithTarget:v17];
    updater = v17->_updater;
    v17->_updater = v19;

    [(PXUpdater *)v17->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v17->_updater addUpdateSelector:sel__updateWantsSpacer];
    [(PXUpdater *)v17->_updater addUpdateSelector:sel__updateSpacer];
  }

  return v17;
}

@end