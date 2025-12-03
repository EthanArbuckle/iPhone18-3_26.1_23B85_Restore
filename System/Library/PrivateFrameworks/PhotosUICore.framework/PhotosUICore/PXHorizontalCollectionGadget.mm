@interface PXHorizontalCollectionGadget
- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGRect)visibleBounds;
- (CGRect)visibleContentRect;
- (CGSize)cachedMaxHeightForColumnWidth;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXGadgetDelegate)delegate;
- (PXHorizontalCollectionGadget)initWithDataSourceManager:(id)manager;
- (PXHorizontalCollectionGadget)initWithLayout:(id)layout dataSourceManager:(id)manager;
- (PXHorizontalCollectionGadget)initWithProviders:(id)providers;
- (PXHorizontalCollectionGadget)initWithProviders:(id)providers layout:(id)layout;
- (PXHorizontalCollectionGadgetDelegate)horizontalGadgetDelegate;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contextMenuWithSuggestedActions:(id)actions;
- (id)presentationEnvironmentForGadget:(id)gadget;
- (id)previewParametersForTargetPreviewView:(id)view;
- (id)previewViewControllerAtLocation:(CGPoint)location fromSourceView:(id)view;
- (id)targetPreviewViewForLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (int64_t)_columnSpanForTraitCollection:(id)collection;
- (void)_extendedTraitCollectionDidChange:(unint64_t)change;
- (void)_updateCollectionViewPaging;
- (void)_updateColumnSettings;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)commitPreviewView:(id)view;
- (void)commitPreviewViewController:(id)controller;
- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing;
- (void)didDismissPreviewWithPreviewView:(id)view committing:(BOOL)committing;
- (void)gadget:(id)gadget didChange:(unint64_t)change;
- (void)gadgetControllerFinishedUpdatingDataSourceWithChange:(id)change;
- (void)gadgetControllerHasAppeared;
- (void)gadgetControllerHasDisappeared;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)prefetchDuringScrollingForWidth:(double)width;
- (void)setCollectionAccessoryButtonTitle:(id)title;
- (void)setCollectionAccessoryButtonType:(unint64_t)type;
- (void)setCollectionHeight:(double)height;
- (void)setCollectionTitle:(id)title;
- (void)setCurrentColumnSpan:(int64_t)span;
- (void)setDefaultColumnSpan:(int64_t)span;
- (void)setGadgetSpec:(id)spec;
- (void)setLayout:(id)layout;
- (void)setVisibleContentRect:(CGRect)rect;
- (void)updateIfNeeded;
- (void)userDidSelectAccessoryButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

    delegate = [(PXHorizontalCollectionGadget *)self delegate];
    [delegate gadget:self didChange:v4];

    _horizontalGadgetUpdateFlags = 0;
    byte_1EB1EB0B2 = 0;
  }
}

- (void)_updateColumnSettings
{
  if (self->_gadgetSpec)
  {
    layout = [(PXGadgetUIViewController *)self layout];
    currentColumnSpan = [(PXHorizontalCollectionGadget *)self currentColumnSpan];
    [(PXGadgetSpec *)self->_gadgetSpec columnWidthForColumnSpan:currentColumnSpan];
    if (v5 > 0.0)
    {
      [layout setColumnWidth:?];
    }

    [(PXGadgetSpec *)self->_gadgetSpec columnSpacingForColumnSpan:currentColumnSpan];
    [layout setInterSectionSpacing:?];
    sharedScheduler = [off_1E7721858 sharedScheduler];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PXHorizontalCollectionGadget__updateColumnSettings__block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [sharedScheduler scheduleMainQueueTask:v7];
  }
}

- (int64_t)_columnSpanForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  defaultColumnSpan = [(PXHorizontalCollectionGadget *)self defaultColumnSpan];
  columnSpans = [(PXHorizontalCollectionGadget *)self columnSpans];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__PXHorizontalCollectionGadget__columnSpanForTraitCollection___block_invoke;
  v9[3] = &unk_1E77404B0;
  v6 = collectionCopy;
  v10 = v6;
  v11 = &v12;
  [columnSpans enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)setCurrentColumnSpan:(int64_t)span
{
  if (self->_currentColumnSpan != span)
  {
    self->_currentColumnSpan = span;
    [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
    [(PXHorizontalCollectionGadget *)self _updateCollectionViewPaging];
    delegate = [(PXHorizontalCollectionGadget *)self delegate];
    [delegate gadget:self didChange:64];
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

- (void)_extendedTraitCollectionDidChange:(unint64_t)change
{
  changeCopy = change;
  px_extendedTraitCollection = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
  if ([px_extendedTraitCollection layoutSizeClass])
  {
    if ([px_extendedTraitCollection layoutSizeSubclass])
    {
      if ([px_extendedTraitCollection layoutOrientation])
      {
        userInterfaceIdiom = [px_extendedTraitCollection userInterfaceIdiom];
        if ((changeCopy & 0x1F) != 0)
        {
          if (userInterfaceIdiom)
          {
            px_extendedTraitCollection2 = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
            traitCollection = [px_extendedTraitCollection2 traitCollection];

            [(PXHorizontalCollectionGadget *)self setCurrentColumnSpan:[(PXHorizontalCollectionGadget *)self _columnSpanForTraitCollection:traitCollection]];
          }
        }
      }
    }
  }
}

- (CGRect)visibleBounds
{
  collectionView = [(PXHorizontalCollectionGadget *)self collectionView];
  [(PXHorizontalCollectionGadget *)self visibleContentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  collectionView2 = [(PXHorizontalCollectionGadget *)self collectionView];
  superview = [collectionView2 superview];
  [collectionView convertRect:superview fromView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  collectionView3 = [(PXHorizontalCollectionGadget *)self collectionView];
  [collectionView3 bounds];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v8.receiver = self;
  v8.super_class = PXHorizontalCollectionGadget;
  [PXGadgetUIViewController observable:sel_observable_didChange_context_ didChange:observable context:?];
  if (PXExtendedTraitCollectionObservationContext_176541 == context)
  {
    [(PXHorizontalCollectionGadget *)self _extendedTraitCollectionDidChange:change];
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  viewCopy = view;
  layout = [(PXGadgetUIViewController *)self layout];
  [viewCopy contentOffset];
  v8 = v7;
  v10 = v9;

  [layout targetContentOffsetForProposedContentOffset:{v8, v10}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = PXHorizontalCollectionGadget;
  v4 = [(PXGadgetUIViewController *)&v6 collectionView:view cellForItemAtIndexPath:path];
  [v4 setClipsToBounds:0];

  return v4;
}

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  gadgetViewControllerLog = [(PXGadgetUIViewController *)self gadgetViewControllerLog];
  if (os_signpost_enabled(gadgetViewControllerLog))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "H_Gadget_CV_prefetchItems", "", v12, 2u);
  }

  firstObject = [pathsCopy firstObject];

  if (firstObject)
  {
    dataSource = [(PXGadgetUIViewController *)self dataSource];
    v9 = dataSource;
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v10 = [v9 gadgetAtIndexPath:v12];
    if (objc_opt_respondsToSelector())
    {
      contentViewController = [v10 contentViewController];
      [contentViewController view];
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

      contentViewController = [v10 contentView];
    }

    goto LABEL_12;
  }

LABEL_15:
  if (os_signpost_enabled(gadgetViewControllerLog))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, gadgetViewControllerLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "H_Gadget_CV_prefetchItems", "", v12, 2u);
  }
}

- (id)presentationEnvironmentForGadget:(id)gadget
{
  gadgetCopy = gadget;
  if (!gadgetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"gadget"}];
  }

  delegate = [(PXHorizontalCollectionGadget *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    v8 = [delegate presentationEnvironmentForGadget:gadgetCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXHorizontalCollectionGadget;
    v8 = [(PXGadgetUIViewController *)&v12 presentationEnvironmentForGadget:gadgetCopy];
  }

  v9 = v8;

  return v9;
}

- (BOOL)gadget:(id)gadget transitionToViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = PXHorizontalCollectionGadget;
  if ([(PXGadgetUIViewController *)&v16 gadget:gadget transitionToViewController:controllerCopy animated:animatedCopy completion:completionCopy])
  {
    v12 = 1;
  }

  else
  {
    delegate = [(PXHorizontalCollectionGadget *)self delegate];
    v14 = delegate;
    if (delegate)
    {
      v12 = [delegate gadget:self transitionToViewController:controllerCopy animated:animatedCopy completion:completionCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)gadget:(id)gadget didChange:(unint64_t)change
{
  gadgetCopy = gadget;
  v14.receiver = self;
  v14.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v14 gadget:gadgetCopy didChange:change];
  if ((change & 0x40) != 0)
  {
    [(PXHorizontalCollectionGadget *)self setCachedMaxHeightForColumnWidth:*off_1E7722230, *(off_1E7722230 + 1)];
  }

  if (change)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PXHorizontalCollectionGadget_gadget_didChange___block_invoke;
    v12[3] = &unk_1E7740460;
    v13 = gadgetCopy;
    [(PXHorizontalCollectionGadget *)self performChanges:v12];
  }

  delegate = [(PXHorizontalCollectionGadget *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(PXHorizontalCollectionGadget *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(PXHorizontalCollectionGadget *)self delegate];
      [delegate3 gadget:gadgetCopy didChange:change];
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

- (void)prefetchDuringScrollingForWidth:(double)width
{
  if (![(PXHorizontalCollectionGadget *)self isResourceLoaded])
  {
    [(PXHorizontalCollectionGadget *)self setIsResourceLoaded:1];
    [(PXHorizontalCollectionGadget *)self cachedMaxHeightForColumnWidth];
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = vcvtpd_s64_f64(width / v5);
    dataSource = [(PXGadgetUIViewController *)self dataSource];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PXHorizontalCollectionGadget_prefetchDuringScrollingForWidth___block_invoke;
    v8[3] = &unk_1E7740438;
    *&v8[5] = v6;
    v8[4] = v9;
    [dataSource enumerateGadgetsUsingBlock:v8];

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

- (id)targetPreviewViewForLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  spaceCopy = space;
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:spaceCopy inCoordinateSpace:x, y];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 targetPreviewViewForLocation:spaceCopy inCoordinateSpace:{x, y}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)commitPreviewView:(id)view
{
  viewCopy = view;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!previewOrbContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:376 description:@"previewOrbContext cannot be nil"];
  }

  previewOrbContext2 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext2 gadget];

  if (objc_opt_respondsToSelector())
  {
    [gadget commitPreviewView:viewCopy];
  }
}

- (void)didDismissPreviewWithPreviewView:(id)view committing:(BOOL)committing
{
  committingCopy = committing;
  viewCopy = view;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!previewOrbContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:368 description:@"previewOrbContext cannot be nil"];
  }

  previewOrbContext2 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext2 gadget];

  if (objc_opt_respondsToSelector())
  {
    [gadget didDismissPreviewWithPreviewView:viewCopy committing:committingCopy];
  }
}

- (void)didDismissPreviewViewController:(id)controller committing:(BOOL)committing
{
  committingCopy = committing;
  controllerCopy = controller;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!previewOrbContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:360 description:@"previewOrbContext cannot be nil"];
  }

  previewOrbContext2 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext2 gadget];

  if (objc_opt_respondsToSelector())
  {
    [gadget didDismissPreviewViewController:controllerCopy committing:committingCopy];
  }
}

- (void)commitPreviewViewController:(id)controller
{
  controllerCopy = controller;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];

  if (!previewOrbContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:352 description:@"previewOrbContext cannot be nil"];
  }

  previewOrbContext2 = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext2 gadget];

  if (objc_opt_respondsToSelector())
  {
    [gadget commitPreviewViewController:controllerCopy];
  }
}

- (id)contextMenuWithSuggestedActions:(id)actions
{
  actionsCopy = actions;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext gadget];

  if (objc_opt_respondsToSelector())
  {
    v7 = [gadget contextMenuWithSuggestedActions:actionsCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)previewParametersForTargetPreviewView:(id)view
{
  viewCopy = view;
  previewOrbContext = [(PXHorizontalCollectionGadget *)self previewOrbContext];
  gadget = [previewOrbContext gadget];

  if (objc_opt_respondsToSelector())
  {
    v7 = [gadget previewParametersForTargetPreviewView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)previewViewControllerAtLocation:(CGPoint)location fromSourceView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v8 = [(PXGadgetUIViewController *)self gadgetAtLocation:viewCopy inCoordinateSpace:x, y];
  if (v8)
  {
    v9 = objc_alloc_init(PXGadgetOrbContext);
    [(PXGadgetOrbContext *)v9 setGadget:v8];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v8 previewViewControllerAtLocation:viewCopy fromSourceView:{x, y}];
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

- (void)gadgetControllerFinishedUpdatingDataSourceWithChange:(id)change
{
  horizontalGadgetDelegate = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  [horizontalGadgetDelegate horizontalCollectionGadgetDatasourceDidUpdate:self];
}

- (void)gadgetControllerHasDisappeared
{
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [dataSource enumerateGadgetsUsingBlock:&__block_literal_global_22_176569];
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
  dataSource = [(PXGadgetUIViewController *)self dataSource];
  [dataSource enumerateGadgetsUsingBlock:&__block_literal_global_176572];
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
  gadgetSpec = [(PXHorizontalCollectionGadget *)self gadgetSpec];
  layout = [(PXGadgetUIViewController *)self layout];
  layoutSizeClass = [gadgetSpec layoutSizeClass];
  layoutOrientation = [gadgetSpec layoutOrientation];
  prefersPagingEnabled = 0;
  if (layoutSizeClass == 1 && layoutOrientation != 2)
  {
    prefersPagingEnabled = [layout prefersPagingEnabled];
  }

  collectionView = [(PXHorizontalCollectionGadget *)self collectionView];
  [gadgetSpec columnSpacingForColumnSpan:{-[PXHorizontalCollectionGadget currentColumnSpan](self, "currentColumnSpan")}];
  v9 = v8;
  [gadgetSpec contentInsets];
  [collectionView _setPagingOrigin:{-v10, 0.0}];
  [layout columnWidth];
  v12 = v11;
  [gadgetSpec layoutReferenceWidth];
  [collectionView _setInterpageSpacing:{v9 + v12 - v13, 0.0}];
  v14 = prefersPagingEnabled & 1;
  if (prefersPagingEnabled)
  {
    v15 = MEMORY[0x1E69DE3A0];
  }

  else
  {
    v15 = MEMORY[0x1E69DE3A8];
  }

  [collectionView setPagingEnabled:v14];
  [collectionView setDecelerationRate:*v15];
}

- (void)setGadgetSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_gadgetSpec != specCopy && ![(PXGadgetSpec *)specCopy isEqual:?])
  {
    objc_storeStrong(&self->_gadgetSpec, spec);
    if (self->_gadgetSpec)
    {
      v7 = MEMORY[0x1E69DD250];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PXHorizontalCollectionGadget_setGadgetSpec___block_invoke;
      v8[3] = &unk_1E774C620;
      v9 = v6;
      selfCopy = self;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PXHorizontalCollectionGadget *)self collectionHeight:fits.width];
  if (v5 == 0.0)
  {
    collectionView = [(PXHorizontalCollectionGadget *)self collectionView];
    [collectionView contentInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    layout = [(PXGadgetUIViewController *)self layout];
    [layout columnWidth];
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

- (void)userDidSelectAccessoryButton:(id)button
{
  buttonCopy = button;
  accessoryButtonAction = [(PXHorizontalCollectionGadget *)self accessoryButtonAction];

  if (accessoryButtonAction)
  {
    accessoryButtonAction2 = [(PXHorizontalCollectionGadget *)self accessoryButtonAction];
    (accessoryButtonAction2)[2](accessoryButtonAction2, self, buttonCopy);
  }
}

- (void)setVisibleContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_visibleContentRect = &self->_visibleContentRect;
  if (!CGRectEqualToRect(rect, self->_visibleContentRect))
  {
    p_visibleContentRect->origin.x = x;
    p_visibleContentRect->origin.y = y;
    p_visibleContentRect->size.width = width;
    p_visibleContentRect->size.height = height;

    [(PXGadgetUIViewController *)self visibleBoundsDidChange];
  }
}

- (void)setCollectionHeight:(double)height
{
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:189 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_collectionHeight != height)
  {
    self->_collectionHeight = height;
    byte_1EB1EB0B2 = 1;
  }
}

- (void)setCollectionAccessoryButtonTitle:(id)title
{
  titleCopy = title;
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:179 description:{@"[%@] %@ must be called from a performChanges block.", self, v10}];
  }

  v5 = titleCopy;
  if (self->_collectionAccessoryButtonTitle != titleCopy)
  {
    v6 = [(NSString *)titleCopy isEqual:?];
    v5 = titleCopy;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)titleCopy copy];
      collectionAccessoryButtonTitle = self->_collectionAccessoryButtonTitle;
      self->_collectionAccessoryButtonTitle = v7;

      v5 = titleCopy;
      HIBYTE(_horizontalGadgetUpdateFlags) = 1;
    }
  }
}

- (void)setCollectionAccessoryButtonType:(unint64_t)type
{
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:169 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (self->_collectionAccessoryButtonType != type)
  {
    self->_collectionAccessoryButtonType = type;
    HIBYTE(_horizontalGadgetUpdateFlags) = 1;
  }
}

- (void)setCollectionTitle:(id)title
{
  titleCopy = title;
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadget.m" lineNumber:159 description:{@"[%@] %@ must be called from a performChanges block.", self, v7}];
  }

  if (![(NSString *)self->_collectionTitle isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_collectionTitle, title);
    LOBYTE(_horizontalGadgetUpdateFlags) = 1;
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = [(PXHorizontalCollectionGadget *)self isPerformingChanges];
  [(PXHorizontalCollectionGadget *)self setIsPerformingChanges:1];
  if (changesCopy)
  {
    changesCopy[2](changesCopy, self);
  }

  [(PXHorizontalCollectionGadget *)self setIsPerformingChanges:isPerformingChanges];
  if (![(PXHorizontalCollectionGadget *)self isPerformingChanges])
  {
    [(PXHorizontalCollectionGadget *)self updateIfNeeded];
  }
}

- (void)setLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 setLayout:layout];
  [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
  [(PXHorizontalCollectionGadget *)self _updateCollectionViewPaging];
}

- (void)setDefaultColumnSpan:(int64_t)span
{
  if (self->_defaultColumnSpan != span)
  {
    self->_defaultColumnSpan = span;
    traitCollection = [(PXHorizontalCollectionGadget *)self traitCollection];
    [(PXHorizontalCollectionGadget *)self setCurrentColumnSpan:[(PXHorizontalCollectionGadget *)self _columnSpanForTraitCollection:traitCollection]];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewDidAppear:appear];
  [(PXHorizontalCollectionGadget *)self setIsResourceLoaded:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewWillAppear:appear];
  [(PXHorizontalCollectionGadget *)self contentViewWillAppear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v4 viewDidDisappear:disappear];
  [(PXHorizontalCollectionGadget *)self contentViewDidDisappear];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PXHorizontalCollectionGadget;
  [(PXGadgetUIViewController *)&v8 viewDidLoad];
  collectionView = [(PXHorizontalCollectionGadget *)self collectionView];
  [collectionView setClipsToBounds:0];
  gadgetSpec = [(PXHorizontalCollectionGadget *)self gadgetSpec];
  [gadgetSpec contentInsets];
  [collectionView setContentInset:?];

  [collectionView setShowsHorizontalScrollIndicator:0];
  [collectionView setShowsVerticalScrollIndicator:0];
  [collectionView setContentInsetAdjustmentBehavior:2];
  [collectionView _setAutomaticContentOffsetAdjustmentEnabled:1];
  [collectionView setAlwaysBounceVertical:0];
  [collectionView setAlwaysBounceHorizontal:1];
  [collectionView setDirectionalLockEnabled:1];
  [collectionView setFocusGroupIdentifier:0];
  [collectionView setSelectionFollowsFocus:{-[PXHorizontalCollectionGadget selectionFollowsFocus](self, "selectionFollowsFocus")}];
  prefersPagingEnabled = self->_prefersPagingEnabled;
  layout = [(PXGadgetUIViewController *)self layout];
  [layout setPrefersPagingEnabled:prefersPagingEnabled];

  px_extendedTraitCollection = [(PXHorizontalCollectionGadget *)self px_extendedTraitCollection];
  [px_extendedTraitCollection registerChangeObserver:self context:PXExtendedTraitCollectionObservationContext_176541];
  [(PXHorizontalCollectionGadget *)self _updateColumnSettings];
}

- (PXHorizontalCollectionGadget)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(PXGadgetCollectionViewLayout);
  [(PXGadgetCollectionViewLayout *)v5 setScrollDirection:1];
  v6 = [(PXHorizontalCollectionGadget *)self initWithLayout:v5 dataSourceManager:managerCopy];

  return v6;
}

- (PXHorizontalCollectionGadget)initWithProviders:(id)providers layout:(id)layout
{
  layoutCopy = layout;
  providersCopy = providers;
  v8 = [[PXBasicGadgetDataSourceManager alloc] initWithProviders:providersCopy];

  v9 = [(PXHorizontalCollectionGadget *)self initWithLayout:layoutCopy dataSourceManager:v8];
  return v9;
}

- (PXHorizontalCollectionGadget)initWithProviders:(id)providers
{
  providersCopy = providers;
  v5 = [[PXBasicGadgetDataSourceManager alloc] initWithProviders:providersCopy];

  v6 = [(PXHorizontalCollectionGadget *)self initWithDataSourceManager:v5];
  return v6;
}

- (PXHorizontalCollectionGadget)initWithLayout:(id)layout dataSourceManager:(id)manager
{
  v7.receiver = self;
  v7.super_class = PXHorizontalCollectionGadget;
  v4 = [(PXGadgetUIViewController *)&v7 initWithLayout:layout dataSourceManager:manager];
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