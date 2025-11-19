@interface PXCuratedLibraryBottomSpacerController
- (BOOL)_shouldShowSpacerForGridViewState;
- (PXCuratedLibraryBottomSpacerController)initWithViewModel:(id)a3 extendedTraitCollection:(id)a4 layout:(id)a5 gridView:(id)a6;
- (double)visibleSpacerFraction;
- (void)_invalidateSpacer;
- (void)_invalidateWantsSpacer;
- (void)_performChangeForWantsSpacerInvalidation;
- (void)_updateSpacer;
- (void)_updateWantsSpacer;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)setHasAppearedOnce:(BOOL)a3;
- (void)setWantsSpacer:(BOOL)a3;
@end

@implementation PXCuratedLibraryBottomSpacerController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (CuratedLibraryViewModelObserverContext_249799 == a5)
  {
    if ((v6 & 5) != 0)
    {
LABEL_4:
      v11 = v9;
      [(PXCuratedLibraryBottomSpacerController *)self _performChangeForWantsSpacerInvalidation];
      v9 = v11;
    }
  }

  else
  {
    if (ExtendedTraitCollectionObserverContext != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:219 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 2) != 0)
    {
      goto LABEL_4;
    }
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
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
  v12 = [(PXCuratedLibraryBottomSpacerController *)self layout];
  [v12 padding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  v10 = [v9 scrollViewController];

  v11 = [(PXCuratedLibraryBottomSpacerController *)self wantsSpacer];
  if (v11)
  {
    [v10 scrollViewContentSize];
    [v12 presentedPadding];
    [v12 safeAreaInsets];
    [v10 visibleRect];
    [v10 contentInset];
    [v10 contentInset];
    [v12 padding];
    PXEdgeInsetsEqualToEdgeInsets();
  }

  [v12 setPadding:{v4, v6, 0.0, v8}];
  [(PXCuratedLibraryBottomSpacerController *)self setHasSpacer:v11];
}

- (void)_invalidateSpacer
{
  v2 = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSpacer];
}

- (void)_updateWantsSpacer
{
  if ([(PXCuratedLibraryBottomSpacerController *)self hasAppearedOnce])
  {
    v3 = [(PXCuratedLibraryBottomSpacerController *)self viewModel];
    if ([v3 zoomLevel] == 4)
    {
      v4 = [(PXCuratedLibraryBottomSpacerController *)self layout];
      v5 = [v4 allPhotosLayout];
      v6 = [v5 fillSafeAreaBottomInset];

      if (v6)
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
          v8 = [v3 zoomablePhotosViewModel];
          v9 = v8;
          if (v8)
          {
            [v8 zoomState];
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
  v2 = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsSpacer];
}

- (BOOL)_shouldShowSpacerForGridViewState
{
  v3 = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  [v3 scrollViewController];
  objc_claimAutoreleasedReturnValue();

  [(PXCuratedLibraryBottomSpacerController *)self visibleSpacerFraction];
  PXFloatGreaterThanFloat();
}

- (double)visibleSpacerFraction
{
  v3 = [(PXCuratedLibraryBottomSpacerController *)self gridView];
  v4 = [v3 scrollViewController];
  [v4 scrollViewVisibleRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PXCuratedLibraryBottomSpacerController *)self layout];
  [v4 scrollViewContentSize];
  v15 = v14;
  v17 = v16;
  [v13 presentedPadding];
  v19 = v17 - v18;
  [v13 safeAreaInsets];
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryBottomSpacerController;
  [(PXCuratedLibraryBottomSpacerController *)&v3 performChanges:a3];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryBottomSpacerController;
  [(PXCuratedLibraryBottomSpacerController *)&v4 didPerformChanges];
  v3 = [(PXCuratedLibraryBottomSpacerController *)self updater];
  [v3 updateIfNeeded];
}

- (void)setWantsSpacer:(BOOL)a3
{
  if (self->_wantsSpacer != a3)
  {
    self->_wantsSpacer = a3;
    [(PXCuratedLibraryBottomSpacerController *)self _invalidateSpacer];
  }
}

- (void)setHasAppearedOnce:(BOOL)a3
{
  if (self->_hasAppearedOnce != a3)
  {
    self->_hasAppearedOnce = a3;
    [(PXCuratedLibraryBottomSpacerController *)self _invalidateWantsSpacer];
  }
}

- (PXCuratedLibraryBottomSpacerController)initWithViewModel:(id)a3 extendedTraitCollection:(id)a4 layout:(id)a5 gridView:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v13)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

LABEL_10:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"layout"}];

      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection"}];

  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v15)
  {
    goto LABEL_5;
  }

LABEL_11:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryBottomSpacerController.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"gridView"}];

LABEL_5:
  v26.receiver = self;
  v26.super_class = PXCuratedLibraryBottomSpacerController;
  v16 = [(PXCuratedLibraryBottomSpacerController *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_viewModel, a3);
    [(PXCuratedLibraryViewModel *)v17->_viewModel registerChangeObserver:v17 context:CuratedLibraryViewModelObserverContext_249799];
    objc_storeStrong(&v17->_extendedTraitCollection, a4);
    [(PXExtendedTraitCollection *)v17->_extendedTraitCollection registerChangeObserver:v17 context:ExtendedTraitCollectionObserverContext];
    objc_storeStrong(&v17->_layout, a5);
    objc_storeStrong(&v17->_gridView, a6);
    v18 = [(PXGView *)v17->_gridView scrollViewController];
    [v18 registerObserver:v17];
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