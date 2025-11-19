@interface PXWidgetBar
- (PXScrollViewController)scrollViewController;
- (PXWidgetBar)initWithScrollViewController:(id)a3;
- (PXWidgetBarDelegate)delegate;
- (double)viewHeight;
- (id)checkOutTileWithKind:(int64_t)a3;
- (id)createTileAnimator;
- (id)createView;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (void)_setNeedsUpdate;
- (void)_setViewHeight:(double)a3;
- (void)_updateIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateViewHeightIfNeeded;
- (void)_updateViewIfNeeded;
- (void)checkInTile:(id)a3;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
- (void)didSelectDisclosureAffordance;
- (void)didSelectSubtitle;
- (void)performChanges:(id)a3;
- (void)setAllowUserInteractionWithSubtitle:(BOOL)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PXWidgetBar

- (PXWidgetBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXScrollViewController)scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  return WeakRetained;
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v5 = a3;
  [(PXWidgetBar *)self checkInTile:v5];
  v6 = [(PXWidgetBar *)self _tilesInUse];
  [v6 removeObject:v5];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  +[PXWidgetBarLayout tileIdentifier];
  v8 = *&a3->index[5];
  v18[2] = *&a3->index[3];
  v18[3] = v8;
  v18[4] = *&a3->index[7];
  v19 = a3->index[9];
  v9 = *&a3->index[1];
  v18[0] = *&a3->length;
  v18[1] = v9;
  v10 = *&v18[0] == v20[0];
  if (*&v18[0] && *&v18[0] == v20[0])
  {
    v11 = 1;
    do
    {
      v12 = *(v18 + v11);
      v13 = v20[v11];
      v10 = v12 == v13;
      if (v11 >= *&v18[0])
      {
        break;
      }

      ++v11;
    }

    while (v12 == v13);
  }

  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:235 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = [(PXWidgetBar *)self checkOutTileWithKind:1];
  v15 = [(PXWidgetBar *)self _tilesInUse];
  [v15 addObject:v14];

  return v14;
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsUpdateFlags.layout)
  {
    self->_needsUpdateFlags.layout = 0;
    [(PXWidgetBar *)self _viewHeight];
    v5 = v4;
    v6 = [(PXWidgetBar *)self _layout];
    [v6 setHeight:v5];
  }
}

- (void)_updateViewHeightIfNeeded
{
  if (self->_needsUpdateFlags.viewHeight)
  {
    self->_needsUpdateFlags.viewHeight = 0;
    [(PXWidgetBar *)self viewHeight];

    [(PXWidgetBar *)self _setViewHeight:?];
  }
}

- (void)_updateViewIfNeeded
{
  if (self->_needsUpdateFlags.view)
  {
    self->_needsUpdateFlags.view = 0;
    v4 = [(PXWidgetBar *)self view];
    if (!v4)
    {
      v4 = [(PXWidgetBar *)self createView];
      objc_storeStrong(&self->_view, v4);
      [(PXWidgetBar *)self invalidateViewHeight];
    }

    [(PXWidgetBar *)self updateView];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXWidgetBar *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXWidgetBar *)self _updateViewIfNeeded];
    [(PXWidgetBar *)self _updateViewHeightIfNeeded];
    [(PXWidgetBar *)self _updateLayoutIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:157 description:@"not inside -performChanges: or -update"];
  }
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, a2);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXWidgetBar *)self _updateIfNeeded];
  }
}

- (void)setAllowUserInteractionWithSubtitle:(BOOL)a3
{
  if (self->_allowUserInteractionWithSubtitle != a3)
  {
    self->_allowUserInteractionWithSubtitle = a3;
    [(PXWidgetBar *)self invalidateView];
  }
}

- (void)_setViewHeight:(double)a3
{
  if (self->__viewHeight != a3)
  {
    self->__viewHeight = a3;
    [(PXWidgetBar *)self _invalidateLayout];
  }
}

- (double)viewHeight
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar viewHeight]", v6}];

  abort();
}

- (id)createView
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:106 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar createView]", v6}];

  abort();
}

- (void)checkInTile:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar checkInTile:]", v8}];

  abort();
}

- (id)checkOutTileWithKind:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:98 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar checkOutTileWithKind:]", v7}];

  abort();
}

- (id)createTileAnimator
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:94 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar createTileAnimator]", v6}];

  abort();
}

- (void)didSelectDisclosureAffordance
{
  if (self->_delegateRespondsTo.didSelectDisclosureAffordance)
  {
    v4 = [(PXWidgetBar *)self delegate];
    [v4 widgetBarDidSelectDisclosureAffordance:self];
  }
}

- (void)didSelectSubtitle
{
  if (self->_delegateRespondsTo.didSelectSubtitle)
  {
    v4 = [(PXWidgetBar *)self delegate];
    [v4 widgetBarDidSelectSubtitle:self];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didSelectSubtitle = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didSelectDisclosureAffordance = objc_opt_respondsToSelector() & 1;
  }
}

- (PXWidgetBar)initWithScrollViewController:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXWidgetBar;
  v5 = [(PXWidgetBar *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollViewController, v4);
    v7 = [(PXWidgetBar *)v6 createTileAnimator];
    tileAnimator = v6->__tileAnimator;
    v6->__tileAnimator = v7;

    v9 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = v6->__tilesInUse;
    v6->__tilesInUse = v9;

    v11 = objc_alloc_init(PXWidgetBarLayout);
    layout = v6->__layout;
    v6->__layout = v11;
    v13 = v11;

    v14 = [[PXTilingController alloc] initWithLayout:v13];
    tilingController = v6->_tilingController;
    v6->_tilingController = v14;

    [(PXTilingController *)v6->_tilingController setScrollController:v4];
    [(PXTilingController *)v6->_tilingController setTileAnimator:v6->__tileAnimator];
    [(PXTilingController *)v6->_tilingController setTileSource:v6];
    [(PXTilingController *)v6->_tilingController setTransitionDelegate:v6];
  }

  return v6;
}

@end