@interface PXStoryRelatedOverlayItemDecorationSource
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXStoryRelatedOverlayItemDecorationSource)initWithObservableModel:(id)a3;
- (PXStoryRelatedOverlayItemDecorationSource)initWithViewModel:(id)a3;
- (PXStoryRelatedOverlayLayout)decoratedLayout;
- (id)selectedSpriteIndexesInLayout:(id)a3;
- (void)_invalidateSelectedRelatedIndex;
- (void)_updateSelectedRelatedIndex;
- (void)configureUpdater:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDecoratedLayout:(id)a3;
@end

@implementation PXStoryRelatedOverlayItemDecorationSource

- (PXStoryRelatedOverlayLayout)decoratedLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ViewModelObservationContext_242494 == a5)
  {
    if ((a4 & 0x100000000000000) != 0)
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
    [(PXStoryController *)&v9 observable:v8 didChange:a4 context:a5];
  }
}

- (void)_updateSelectedRelatedIndex
{
  v3 = [(PXStoryRelatedOverlayItemDecorationSource *)self viewModel];
  v4 = [v3 highlightedRelatedIndex];
  selectedIndex = self->_selectedIndex;

  if (v4 != selectedIndex)
  {
    v6 = [(PXStoryRelatedOverlayItemDecorationSource *)self viewModel];
    self->_selectedIndex = [v6 highlightedRelatedIndex];

    v7 = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    v8 = v7;
    v9 = self->_selectedIndex;
    v11 = v9 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0;
    [v7 showOrHideFullRelated:v11];

    v12 = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    [v12 invalidateDecoration];
  }
}

- (void)_invalidateSelectedRelatedIndex
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSelectedRelatedIndex];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
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

- (id)selectedSpriteIndexesInLayout:(id)a3
{
  if (self->_selectedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  else
  {
    v5 = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    v6 = [v5 relatedSelectionSpriteIndexRange];

    v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:self->_selectedIndex + v6];
  }

  return v3;
}

- (void)setDecoratedLayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    v6 = [(PXStoryRelatedOverlayItemDecorationSource *)self decoratedLayout];
    [v6 invalidateDecoration];

    v5 = obj;
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryRelatedOverlayItemDecorationSource;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateSelectedRelatedIndex, v4.receiver, v4.super_class}];
}

- (PXStoryRelatedOverlayItemDecorationSource)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryRelatedOverlayItemDecorationSource.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXStoryRelatedOverlayItemDecorationSource initWithObservableModel:]"}];

  abort();
}

- (PXStoryRelatedOverlayItemDecorationSource)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryRelatedOverlayItemDecorationSource;
  v6 = [(PXStoryController *)&v9 initWithObservableModel:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    v7->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_242494];
  }

  return v7;
}

@end