@interface PXHorizontalCollectionGadget
- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGRect)visibleBounds;
- (CGRect)visibleContentRect;
- (CGSize)cachedMaxHeightForColumnWidth;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXGadgetDelegate)delegate;
- (PXHorizontalCollectionGadget)initWithDataSourceManager:(id)a3;
- (PXHorizontalCollectionGadget)initWithLayout:(id)a3 dataSourceManager:(id)a4;
- (PXHorizontalCollectionGadget)initWithProviders:(id)a3;
- (PXHorizontalCollectionGadget)initWithProviders:(id)a3 layout:(id)a4;
- (PXHorizontalCollectionGadgetDelegate)horizontalGadgetDelegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)contextMenuWithSuggestedActions:(id)a3;
- (id)presentationEnvironmentForGadget:(id)a3;
- (id)previewParametersForTargetPreviewView:(id)a3;
- (id)previewViewControllerAtLocation:(CGPoint)a3 fromSourceView:(id)a4;
- (id)targetPreviewViewForLocation:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (int64_t)_columnSpanForTraitCollection:(id)a3;
- (void)_extendedTraitCollectionDidChange:(unint64_t)a3;
- (void)_updateCollectionViewPaging;
- (void)_updateColumnSettings;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)commitPreviewView:(id)a3;
- (void)commitPreviewViewController:(id)a3;
- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4;
- (void)didDismissPreviewWithPreviewView:(id)a3 committing:(BOOL)a4;
- (void)gadget:(id)a3 didChange:(unint64_t)a4;
- (void)gadgetControllerFinishedUpdatingDataSourceWithChange:(id)a3;
- (void)gadgetControllerHasAppeared;
- (void)gadgetControllerHasDisappeared;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)prefetchDuringScrollingForWidth:(double)a3;
- (void)setCollectionAccessoryButtonTitle:(id)a3;
- (void)setCollectionAccessoryButtonType:(unint64_t)a3;
- (void)setCollectionHeight:(double)a3;
- (void)setCollectionTitle:(id)a3;
- (void)setCurrentColumnSpan:(int64_t)a3;
- (void)setDefaultColumnSpan:(int64_t)a3;
- (void)setGadgetSpec:(id)a3;
- (void)setLayout:(id)a3;
- (void)setVisibleContentRect:(CGRect)a3;
- (void)updateIfNeeded;
- (void)userDidSelectAccessoryButton:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXHorizontalCollectionGadget

- (CGSize)cachedMaxHeightForColumnWidth
{
  width = self->_cachedMaxHeightForColumnWidth.width;
  height = self->_cachedMaxHeightForColumnWidth.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXHorizontalCollectionGadgetDelegate)horizontalGadgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_horizontalGadgetDelegate);

  return WeakRetained;
}

- (CGRect)visibleContentRect
{
  x = self->_visibleContentRect.origin.x;
  y = self->_visibleContentRect.origin.y;
  width = self->_visibleContentRect.size.width;
  height = self->_visibleContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXGadgetDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateIfNeeded
{
  v6.receiver = self;
  v6.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v6 updateIfNeeded];
  v3 = _horizontalGadgetUpdateFlags;
  if ((_horizontalGadgetUpdateFlags & 1) != 0 || (_horizontalGadgetUpdateFlags & 0x100) != 0 || byte_1EB1EB0B2)
  {
    if (HIBYTE(_horizontalGadgetUpdateFlags))
    {
      v3 = _horizontalGadgetUpdateFlags | 2;
    }

    if (byte_1EB1EB0B2)
    {
      v4 = v3 | 0x40;
    }

    else
    {
      v4 = v3;
    }

    v5 = [(PXHorizontalCollectionGadget *)self delegate];
    [v5 gadget:self didChange:v4];

    _horizontalGadgetUpdateFlags = 0;
    byte_1EB1EB0B2 = 0;
  }
}

- (void)_updateColumnSettings
{
  if (self->_gadgetSpec)
  {
    v3 = [(PXGadgetUIViewController *)self layout];
    v4 = [(PXHorizontalCollectionGadget *)self currentColumnSpan];
    [(PXGadgetSpec *)self->_gadgetSpec columnWidthForColumnSpan:v4];
    if (v5 > 0.0)
    {
      [v3 setColumnWidth:?];
    }

    [(PXGadgetSpec *)self->_gadgetSpec columnSpacingForColumnSpan:v4];
    [v3 setInterSectionSpacing:?];
    v6 = [off_1E7721858 sharedScheduler];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PXHorizontalCollectionGadget__updateColumnSettings__block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [v6 scheduleMainQueueTask:v7];
  }
}

- (int64_t)_columnSpanForTraitCollection:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = [(PXHorizontalCollectionGadget *)self defaultColumnSpan];
  v5 = [(PXHorizontalCollectionGadget *)self columnSpans];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXHorizontalCollectionGadget__columnSpanForTraitCollection___block_invoke;
  v9[3] = &unk_1E77404B0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __62__PXHorizontalCollectionGadget__columnSpanForTraitCollection___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([*(a1 + 32) containsTraitsInCollection:a2])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

- (void)setCurrentColumnSpan:(int64_t)a3
{
  if (self->_currentColumnSpan != a3)
  {
    self->_currentColumnSpan = a3;
    [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
    [(PXHorizontalCollectionGadget *)self _updateCollectionViewPaging];
    v5 = [(PXHorizontalCollectionGadget *)self delegate];
    [v5 gadget:self didChange:64];
  }
}

uint64_t __66__PXHorizontalCollectionGadget__ensureCachedHeightForColumnWidth___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 sizeThatFits:{*(a1 + 48), 1.79769313e308}];
  v6 = v5;
  if (v5 >= 1.79769313e308)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXHorizontalCollectionGadget.m" lineNumber:569 description:{@"Invalid parameter not satisfying: %@", @"preferredHeight < CGFLOAT_MAX"}];
  }

  *(*(*(a1 + 40) + 8) + 24) = fmax(*(*(*(a1 + 40) + 8) + 24), v6);
  result = [*(a1 + 32) isFixedHeight];
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (void)_extendedTraitCollectionDidChange:(unint64_t)a3
{
  v3 = a3;
  v8 = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
  if ([v8 layoutSizeClass])
  {
    if ([v8 layoutSizeSubclass])
    {
      if ([v8 layoutOrientation])
      {
        v5 = [v8 userInterfaceIdiom];
        if ((v3 & 0x1F) != 0)
        {
          if (v5)
          {
            v6 = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
            v7 = [v6 traitCollection];

            [(PXHorizontalCollectionGadget *)self setCurrentColumnSpan:[(PXHorizontalCollectionGadget *)self _columnSpanForTraitCollection:v7]];
          }
        }
      }
    }
  }
}

- (CGRect)visibleBounds
{
  v3 = [(PXHorizontalCollectionGadget *)self collectionView];
  [(PXHorizontalCollectionGadget *)self visibleContentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PXHorizontalCollectionGadget *)self collectionView];
  v13 = [v12 superview];
  [v3 convertRect:v13 fromView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(PXHorizontalCollectionGadget *)self collectionView];
  [v22 bounds];
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  v32 = CGRectIntersection(v31, v34);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;

  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8.receiver = self;
  v8.super_class = PXHorizontalCollectionGadget;
  [PXGadgetUIViewController observable:sel_observable_didChange_context_ didChange:a3 context:?];
  if (PXExtendedTraitCollectionObservationContext_176541 == a5)
  {
    [(PXHorizontalCollectionGadget *)self _extendedTraitCollectionDidChange:a4];
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  v5 = a3;
  v6 = [(PXGadgetUIViewController *)self layout];
  [v5 contentOffset];
  v8 = v7;
  v10 = v9;

  [v6 targetContentOffsetForProposedContentOffset:{v8, v10}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = PXHorizontalCollectionGadget;
  v4 = [(PXGadgetUIViewController *)&v6 collectionView:a3 cellForItemAtIndexPath:a4];
  [v4 setClipsToBounds:0];

  return v4;
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(v6))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "H_Gadget_CV_prefetchItems", "", v12, 2u);
  }

  v7 = [v5 firstObject];

  if (v7)
  {
    v8 = [(PXGadgetUIViewController *)self dataSource];
    v9 = v8;
    if (v8)
    {
      [v8 firstItemIndexPath];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v10 = [v9 gadgetAtIndexPath:v12];
    if (objc_opt_respondsToSelector())
    {
      v11 = [v10 contentViewController];
      [v11 view];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_12:
        if (objc_opt_respondsToSelector())
        {
          [(PXHorizontalCollectionGadget *)self cachedMaxHeightForColumnWidth];
          [v10 prefetchDuringScrollingForWidth:?];
        }

        goto LABEL_15;
      }

      v11 = [v10 contentView];
    }

    goto LABEL_12;
  }

LABEL_15:
  if (os_signpost_enabled(v6))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "H_Gadget_CV_prefetchItems", "", v12, 2u);
  }
}

- (id)presentationEnvironmentForGadget:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
  }

  v6 = [(PXHorizontalCollectionGadget *)self delegate];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 presentationEnvironmentForGadget:v5];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXHorizontalCollectionGadget;
    v8 = [(PXGadgetUIViewController *)&v12 presentationEnvironmentForGadget:v5];
  }

  v9 = v8;

  return v9;
}

- (BOOL)gadget:(id)a3 transitionToViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = PXHorizontalCollectionGadget;
  if ([(PXGadgetUIViewController *)&v16 gadget:a3 transitionToViewController:v10 animated:v7 completion:v11])
  {
    v12 = 1;
  }

  else
  {
    v13 = [(PXHorizontalCollectionGadget *)self delegate];
    v14 = v13;
    if (v13)
    {
      v12 = [v13 gadget:self transitionToViewController:v10 animated:v7 completion:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)gadget:(id)a3 didChange:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v14 gadget:v6 didChange:a4];
  if ((a4 & 0x40) != 0)
  {
    [(PXHorizontalCollectionGadget *)self setCachedMaxHeightForColumnWidth:*off_1E7722230, *(off_1E7722230 + 1)];
  }

  if (a4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PXHorizontalCollectionGadget_gadget_didChange___block_invoke;
    v12[3] = &unk_1E7740460;
    v13 = v6;
    [(PXHorizontalCollectionGadget *)self performChanges:v12];
  }

  v7 = [(PXHorizontalCollectionGadget *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(PXHorizontalCollectionGadget *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(PXHorizontalCollectionGadget *)self delegate];
      [v11 gadget:v6 didChange:a4];
    }
  }
}

void __49__PXHorizontalCollectionGadget_gadget_didChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localizedTitle];
  [v3 setCollectionTitle:v4];
}

- (void)prefetchDuringScrollingForWidth:(double)a3
{
  if (![(PXHorizontalCollectionGadget *)self isResourceLoaded])
  {
    [(PXHorizontalCollectionGadget *)self setIsResourceLoaded:1];
    [(PXHorizontalCollectionGadget *)self cachedMaxHeightForColumnWidth];
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = vcvtpd_s64_f64(a3 / v5);
    v7 = [(PXGadgetUIViewController *)self dataSource];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PXHorizontalCollectionGadget_prefetchDuringScrollingForWidth___block_invoke;
    v8[3] = &unk_1E7740438;
    *&v8[5] = v6;
    v8[4] = v9;
    [v7 enumerateGadgetsUsingBlock:v8];

    _Block_object_dispose(v9, 8);
  }
}

void __64__PXHorizontalCollectionGadget_prefetchDuringScrollingForWidth___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 contentViewController];
    [v5 view];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = [v6 contentView];
  }

LABEL_6:
  if (objc_opt_respondsToSelector())
  {
    [v6 prefetchDuringScrollingForWidth:*(a1 + 40)];
  }

  *a3 = --*(*(*(a1 + 32) + 8) + 24) < 1;
}

- (id)targetPreviewViewForLocation:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:v7 inCoordinateSpace:x, y];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 targetPreviewViewForLocation:v7 inCoordinateSpace:{x, y}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)commitPreviewView:(id)a3
{
  v9 = a3;
  v5 = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:376 description:@"previewOrbContext cannot be nil"];
  }

  v6 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v7 = [v6 gadget];

  if (objc_opt_respondsToSelector())
  {
    [v7 commitPreviewView:v9];
  }
}

- (void)didDismissPreviewWithPreviewView:(id)a3 committing:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v7 = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:368 description:@"previewOrbContext cannot be nil"];
  }

  v8 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v9 = [v8 gadget];

  if (objc_opt_respondsToSelector())
  {
    [v9 didDismissPreviewWithPreviewView:v11 committing:v4];
  }
}

- (void)didDismissPreviewViewController:(id)a3 committing:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v7 = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:360 description:@"previewOrbContext cannot be nil"];
  }

  v8 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v9 = [v8 gadget];

  if (objc_opt_respondsToSelector())
  {
    [v9 didDismissPreviewViewController:v11 committing:v4];
  }
}

- (void)commitPreviewViewController:(id)a3
{
  v9 = a3;
  v5 = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:352 description:@"previewOrbContext cannot be nil"];
  }

  v6 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v7 = [v6 gadget];

  if (objc_opt_respondsToSelector())
  {
    [v7 commitPreviewViewController:v9];
  }
}

- (id)contextMenuWithSuggestedActions:(id)a3
{
  v4 = a3;
  v5 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v6 = [v5 gadget];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 contextMenuWithSuggestedActions:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)previewParametersForTargetPreviewView:(id)a3
{
  v4 = a3;
  v5 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  v6 = [v5 gadget];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 previewParametersForTargetPreviewView:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)previewViewControllerAtLocation:(CGPoint)a3 fromSourceView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:v7 inCoordinateSpace:x, y];
  if (v8)
  {
    v9 = objc_alloc_init(PXGadgetOrbContext);
    [(PXGadgetOrbContext *)v9 setGadget:v8];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v8 previewViewControllerAtLocation:v7 fromSourceView:{x, y}];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  [(PXHorizontalCollectionGadget *)self setPreviewOrbContext:v9];

  return v10;
}

- (void)gadgetControllerFinishedUpdatingDataSourceWithChange:(id)a3
{
  v4 = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  [v4 horizontalCollectionGadgetDatasourceDidUpdate:self];
}

- (void)gadgetControllerHasDisappeared
{
  v2 = [(PXGadgetUIViewController *)self dataSource];
  [v2 enumerateGadgetsUsingBlock:&__block_literal_global_22_176569];
}

void __62__PXHorizontalCollectionGadget_gadgetControllerHasDisappeared__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 gadgetControllerHasDisappeared];
  }
}

- (void)gadgetControllerHasAppeared
{
  v2 = [(PXGadgetUIViewController *)self dataSource];
  [v2 enumerateGadgetsUsingBlock:&__block_literal_global_176572];
}

void __59__PXHorizontalCollectionGadget_gadgetControllerHasAppeared__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 gadgetControllerHasAppeared];
  }
}

- (void)_updateCollectionViewPaging
{
  v16 = [(PXHorizontalCollectionGadget *)self gadgetSpec];
  v3 = [(PXGadgetUIViewController *)self layout];
  v4 = [v16 layoutSizeClass];
  v5 = [v16 layoutOrientation];
  v6 = 0;
  if (v4 == 1 && v5 != 2)
  {
    v6 = [v3 prefersPagingEnabled];
  }

  v7 = [(PXHorizontalCollectionGadget *)self collectionView];
  [v16 columnSpacingForColumnSpan:{-[PXHorizontalCollectionGadget currentColumnSpan](self, "currentColumnSpan")}];
  v9 = v8;
  [v16 contentInsets];
  [v7 _setPagingOrigin:{-v10, 0.0}];
  [v3 columnWidth];
  v12 = v11;
  [v16 layoutReferenceWidth];
  [v7 _setInterpageSpacing:{v9 + v12 - v13, 0.0}];
  v14 = v6 & 1;
  if (v6)
  {
    v15 = MEMORY[0x1E69DE3A0];
  }

  else
  {
    v15 = MEMORY[0x1E69DE3A8];
  }

  [v7 setPagingEnabled:v14];
  [v7 setDecelerationRate:*v15];
}

- (void)setGadgetSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_gadgetSpec != v5 && ![(PXGadgetSpec *)v5 isEqual:?])
  {
    objc_storeStrong(&self->_gadgetSpec, a3);
    if (self->_gadgetSpec)
    {
      v7 = MEMORY[0x1E69DD250];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PXHorizontalCollectionGadget_setGadgetSpec___block_invoke;
      v8[3] = &unk_1E774C620;
      v9 = v6;
      v10 = self;
      [v7 performWithoutAnimation:v8];
    }
  }
}

uint64_t __46__PXHorizontalCollectionGadget_setGadgetSpec___block_invoke(uint64_t a1)
{
  [*(a1 + 32) contentInsets];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 40) collectionView];
  [v10 setContentInset:{v3, v5, v7, v9}];

  [*(a1 + 40) _updateColumnSettings];
  v11 = *(a1 + 40);

  return [v11 _updateCollectionViewPaging];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(PXHorizontalCollectionGadget *)self collectionHeight:a3.width];
  if (v5 == 0.0)
  {
    v6 = [(PXHorizontalCollectionGadget *)self collectionView];
    [v6 contentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(PXGadgetUIViewController *)self layout];
    [v15 columnWidth];
    if (v16 == 0.0)
    {
      v16 = width - v10 - v14;
    }

    [(PXHorizontalCollectionGadget *)self _ensureCachedHeightForColumnWidth:v16];
    [(PXHorizontalCollectionGadget *)self cachedMaxHeightForColumnWidth];
    v18 = v12 + v8 + v17;
  }

  else
  {
    v18 = v5;
  }

  v19 = width;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)userDidSelectAccessoryButton:(id)a3
{
  v6 = a3;
  v4 = [(PXHorizontalCollectionGadget *)self accessoryButtonAction];

  if (v4)
  {
    v5 = [(PXHorizontalCollectionGadget *)self accessoryButtonAction];
    (v5)[2](v5, self, v6);
  }
}

- (void)setVisibleContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_visibleContentRect = &self->_visibleContentRect;
  if (!CGRectEqualToRect(a3, self->_visibleContentRect))
  {
    p_visibleContentRect->origin.x = x;
    p_visibleContentRect->origin.y = y;
    p_visibleContentRect->size.width = width;
    p_visibleContentRect->size.height = height;

    [(PXGadgetUIViewController *)self visibleBoundsDidChange];
  }
}

- (void)setCollectionHeight:(double)a3
{
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:189 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_collectionHeight != a3)
  {
    self->_collectionHeight = a3;
    byte_1EB1EB0B2 = 1;
  }
}

- (void)setCollectionAccessoryButtonTitle:(id)a3
{
  v11 = a3;
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:179 description:{@"[%@] %@ must be called from a performChanges block.", self, v10}];
  }

  v5 = v11;
  if (self->_collectionAccessoryButtonTitle != v11)
  {
    v6 = [(NSString *)v11 isEqual:?];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v11 copy];
      collectionAccessoryButtonTitle = self->_collectionAccessoryButtonTitle;
      self->_collectionAccessoryButtonTitle = v7;

      v5 = v11;
      HIBYTE(_horizontalGadgetUpdateFlags) = 1;
    }
  }
}

- (void)setCollectionAccessoryButtonType:(unint64_t)a3
{
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:169 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_collectionAccessoryButtonType != a3)
  {
    self->_collectionAccessoryButtonType = a3;
    HIBYTE(_horizontalGadgetUpdateFlags) = 1;
  }
}

- (void)setCollectionTitle:(id)a3
{
  v8 = a3;
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:159 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (![(NSString *)self->_collectionTitle isEqualToString:v8])
  {
    objc_storeStrong(&self->_collectionTitle, a3);
    LOBYTE(_horizontalGadgetUpdateFlags) = 1;
  }
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  v4 = [(PXHorizontalCollectionGadget *)self isPerformingChanges];
  [(PXHorizontalCollectionGadget *)self setIsPerformingChanges:1];
  if (v5)
  {
    v5[2](v5, self);
  }

  [(PXHorizontalCollectionGadget *)self setIsPerformingChanges:v4];
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    [(PXHorizontalCollectionGadget *)self updateIfNeeded];
  }
}

- (void)setLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 setLayout:a3];
  [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
  [(PXHorizontalCollectionGadget *)self _updateCollectionViewPaging];
}

- (void)setDefaultColumnSpan:(int64_t)a3
{
  if (self->_defaultColumnSpan != a3)
  {
    self->_defaultColumnSpan = a3;
    v5 = [(PXHorizontalCollectionGadget *)self traitCollection];
    [(PXHorizontalCollectionGadget *)self setCurrentColumnSpan:[(PXHorizontalCollectionGadget *)self _columnSpanForTraitCollection:v5]];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewDidAppear:a3];
  [(PXHorizontalCollectionGadget *)self setIsResourceLoaded:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewWillAppear:a3];
  [(PXHorizontalCollectionGadget *)self contentViewWillAppear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewDidDisappear:a3];
  [(PXHorizontalCollectionGadget *)self contentViewDidDisappear];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v8 viewDidLoad];
  v3 = [(PXHorizontalCollectionGadget *)self collectionView];
  [v3 setClipsToBounds:0];
  v4 = [(PXHorizontalCollectionGadget *)self gadgetSpec];
  [v4 contentInsets];
  [v3 setContentInset:?];

  [v3 setShowsHorizontalScrollIndicator:0];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  [v3 _setAutomaticContentOffsetAdjustmentEnabled:1];
  [v3 setAlwaysBounceVertical:0];
  [v3 setAlwaysBounceHorizontal:1];
  [v3 setDirectionalLockEnabled:1];
  [v3 setFocusGroupIdentifier:0];
  [v3 setSelectionFollowsFocus:{-[PXHorizontalCollectionGadget selectionFollowsFocus](self, "selectionFollowsFocus")}];
  prefersPagingEnabled = self->_prefersPagingEnabled;
  v6 = [(PXGadgetUIViewController *)self layout];
  [v6 setPrefersPagingEnabled:prefersPagingEnabled];

  v7 = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
  [v7 registerChangeObserver:self context:PXExtendedTraitCollectionObservationContext_176541];
  [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
}

- (PXHorizontalCollectionGadget)initWithDataSourceManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXGadgetCollectionViewLayout);
  [(PXGadgetCollectionViewLayout *)v5 setScrollDirection:1];
  v6 = [(PXHorizontalCollectionGadget *)self initWithLayout:v5 dataSourceManager:v4];

  return v6;
}

- (PXHorizontalCollectionGadget)initWithProviders:(id)a3 layout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PXBasicGadgetDataSourceManager alloc] initWithProviders:v7];

  v9 = [(PXHorizontalCollectionGadget *)self initWithLayout:v6 dataSourceManager:v8];
  return v9;
}

- (PXHorizontalCollectionGadget)initWithProviders:(id)a3
{
  v4 = a3;
  v5 = [[PXBasicGadgetDataSourceManager alloc] initWithProviders:v4];

  v6 = [(PXHorizontalCollectionGadget *)self initWithDataSourceManager:v5];
  return v6;
}

- (PXHorizontalCollectionGadget)initWithLayout:(id)a3 dataSourceManager:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXHorizontalCollectionGadget;
  v4 = [(PXGadgetUIViewController *)&v7 initWithLayout:a3 dataSourceManager:a4];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1304) = *off_1E7722230;
    *(v4 + 156) = 0;
    *(v4 + 162) = 0;
    v4[1178] = 1;
    [v4 setContentVisible:0];
  }

  return v5;
}

@end