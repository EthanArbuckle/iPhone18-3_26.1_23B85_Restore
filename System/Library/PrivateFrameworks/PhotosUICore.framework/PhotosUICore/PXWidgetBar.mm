@interface PXWidgetBar
- (PXScrollViewController)scrollViewController;
- (PXWidgetBar)initWithScrollViewController:(id)controller;
- (PXWidgetBarDelegate)delegate;
- (double)viewHeight;
- (id)checkOutTileWithKind:(int64_t)kind;
- (id)createTileAnimator;
- (id)createView;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (void)_setNeedsUpdate;
- (void)_setViewHeight:(double)height;
- (void)_updateIfNeeded;
- (void)_updateLayoutIfNeeded;
- (void)_updateViewHeightIfNeeded;
- (void)_updateViewIfNeeded;
- (void)checkInTile:(id)tile;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)didSelectDisclosureAffordance;
- (void)didSelectSubtitle;
- (void)performChanges:(id)changes;
- (void)setAllowUserInteractionWithSubtitle:(BOOL)subtitle;
- (void)setDelegate:(id)delegate;
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

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  tileCopy = tile;
  [(PXWidgetBar *)self checkInTile:tileCopy];
  _tilesInUse = [(PXWidgetBar *)self _tilesInUse];
  [_tilesInUse removeObject:tileCopy];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  +[PXWidgetBarLayout tileIdentifier];
  v8 = *&identifier->index[5];
  v18[2] = *&identifier->index[3];
  v18[3] = v8;
  v18[4] = *&identifier->index[7];
  v19 = identifier->index[9];
  v9 = *&identifier->index[1];
  v18[0] = *&identifier->length;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:235 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = [(PXWidgetBar *)self checkOutTileWithKind:1];
  _tilesInUse = [(PXWidgetBar *)self _tilesInUse];
  [_tilesInUse addObject:v14];

  return v14;
}

- (void)_updateLayoutIfNeeded
{
  if (self->_needsUpdateFlags.layout)
  {
    self->_needsUpdateFlags.layout = 0;
    [(PXWidgetBar *)self _viewHeight];
    v5 = v4;
    _layout = [(PXWidgetBar *)self _layout];
    [_layout setHeight:v5];
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
    view = [(PXWidgetBar *)self view];
    if (!view)
    {
      view = [(PXWidgetBar *)self createView];
      objc_storeStrong(&self->_view, view);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:157 description:@"not inside -performChanges: or -update"];
  }
}

- (void)performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(changes + 2))(changes, a2);
  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {

    [(PXWidgetBar *)self _updateIfNeeded];
  }
}

- (void)setAllowUserInteractionWithSubtitle:(BOOL)subtitle
{
  if (self->_allowUserInteractionWithSubtitle != subtitle)
  {
    self->_allowUserInteractionWithSubtitle = subtitle;
    [(PXWidgetBar *)self invalidateView];
  }
}

- (void)_setViewHeight:(double)height
{
  if (self->__viewHeight != height)
  {
    self->__viewHeight = height;
    [(PXWidgetBar *)self _invalidateLayout];
  }
}

- (double)viewHeight
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar viewHeight]", v6}];

  abort();
}

- (id)createView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:106 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar createView]", v6}];

  abort();
}

- (void)checkInTile:(id)tile
{
  tileCopy = tile;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar checkInTile:]", v8}];

  abort();
}

- (id)checkOutTileWithKind:(int64_t)kind
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:98 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar checkOutTileWithKind:]", v7}];

  abort();
}

- (id)createTileAnimator
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetBar.m" lineNumber:94 description:{@"Method %s is a responsibility of subclass %@", "-[PXWidgetBar createTileAnimator]", v6}];

  abort();
}

- (void)didSelectDisclosureAffordance
{
  if (self->_delegateRespondsTo.didSelectDisclosureAffordance)
  {
    delegate = [(PXWidgetBar *)self delegate];
    [delegate widgetBarDidSelectDisclosureAffordance:self];
  }
}

- (void)didSelectSubtitle
{
  if (self->_delegateRespondsTo.didSelectSubtitle)
  {
    delegate = [(PXWidgetBar *)self delegate];
    [delegate widgetBarDidSelectSubtitle:self];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didSelectSubtitle = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.didSelectDisclosureAffordance = objc_opt_respondsToSelector() & 1;
  }
}

- (PXWidgetBar)initWithScrollViewController:(id)controller
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = PXWidgetBar;
  v5 = [(PXWidgetBar *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scrollViewController, controllerCopy);
    createTileAnimator = [(PXWidgetBar *)v6 createTileAnimator];
    tileAnimator = v6->__tileAnimator;
    v6->__tileAnimator = createTileAnimator;

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

    [(PXTilingController *)v6->_tilingController setScrollController:controllerCopy];
    [(PXTilingController *)v6->_tilingController setTileAnimator:v6->__tileAnimator];
    [(PXTilingController *)v6->_tilingController setTileSource:v6];
    [(PXTilingController *)v6->_tilingController setTransitionDelegate:v6];
  }

  return v6;
}

@end