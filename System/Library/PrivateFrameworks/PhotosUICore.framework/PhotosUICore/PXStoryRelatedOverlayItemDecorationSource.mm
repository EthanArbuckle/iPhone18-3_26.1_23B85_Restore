@interface PXStoryRelatedOverlayItemDecorationSource
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (PXStoryRelatedOverlayItemDecorationSource)initWithObservableModel:(id)model;
- (PXStoryRelatedOverlayItemDecorationSource)initWithViewModel:(id)model;
- (PXStoryRelatedOverlayLayout)decoratedLayout;
- (id)selectedSpriteIndexesInLayout:(id)layout;
- (void)_invalidateSelectedRelatedIndex;
- (void)_updateSelectedRelatedIndex;
- (void)configureUpdater:(id)updater;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDecoratedLayout:(id)layout;
@end

@implementation PXStoryRelatedOverlayItemDecorationSource

- (PXStoryRelatedOverlayLayout)decoratedLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_242494 == context)
  {
    if ((change & 0x100000000000000) != 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __74__PXStoryRelatedOverlayItemDecorationSource_observable_didChange_context___block_invoke;
      v10[3] = &unk_1E774AFA8;
      v10[4] = self;
      [(PXStoryController *)self performChanges:v10];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXStoryRelatedOverlayItemDecorationSource;
    [(PXStoryController *)&v9 observable:observableCopy didChange:change context:context];
  }
}

- (void)_updateSelectedRelatedIndex
{
  viewModel = [(PXStoryRelatedOverlayItemDecorationSource *)self viewModel];
  highlightedRelatedIndex = [viewModel highlightedRelatedIndex];
  selectedIndex = self->_selectedIndex;

  if (highlightedRelatedIndex != selectedIndex)
  {
    viewModel2 = [(PXStoryRelatedOverlayItemDecorationSource *)self viewModel];
    self->_selectedIndex = [viewModel2 highlightedRelatedIndex];

    decoratedLayout = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    v8 = decoratedLayout;
    v9 = self->_selectedIndex;
    v11 = v9 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0;
    [decoratedLayout showOrHideFullRelated:v11];

    decoratedLayout2 = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    [decoratedLayout2 invalidateDecoration];
  }
}

- (void)_invalidateSelectedRelatedIndex
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSelectedRelatedIndex];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *off_1E7722000;
  v5 = *(off_1E7722000 + 1);
  v6 = *(off_1E7722000 + 2);
  v7 = *(off_1E7722000 + 3);
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (id)selectedSpriteIndexesInLayout:(id)layout
{
  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  else
  {
    decoratedLayout = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    relatedSelectionSpriteIndexRange = [decoratedLayout relatedSelectionSpriteIndexRange];

    v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:self->_selectedIndex + relatedSelectionSpriteIndexRange];
  }

  return v3;
}

- (void)setDecoratedLayout:(id)layout
{
  obj = layout;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    decoratedLayout = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    v5 = obj;
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryRelatedOverlayItemDecorationSource;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateSelectedRelatedIndex, v4.receiver, v4.super_class}];
}

- (PXStoryRelatedOverlayItemDecorationSource)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayItemDecorationSource.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryRelatedOverlayItemDecorationSource initWithObservableModel:]"}];

  abort();
}

- (PXStoryRelatedOverlayItemDecorationSource)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXStoryRelatedOverlayItemDecorationSource;
  v6 = [(PXStoryController *)&v9 initWithObservableModel:modelCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    v7->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_242494];
  }

  return v7;
}

@end