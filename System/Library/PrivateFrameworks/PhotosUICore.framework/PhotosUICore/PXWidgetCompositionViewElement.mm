@interface PXWidgetCompositionViewElement
- (CGPoint)_anchorOffset;
- (CGPoint)_anchorPoint;
- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout;
- (id)checkOutViewTile;
- (id)contentTilingController;
- (id)createTileAnimator;
- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change;
- (void)_loadTilingController;
- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier;
- (void)checkInViewTile:(id)tile;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout;
- (void)saveAnchoring;
@end

@implementation PXWidgetCompositionViewElement

- (CGPoint)_anchorOffset
{
  x = self->__anchorOffset.x;
  y = self->__anchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)tilingController:(id)controller initialVisibleOriginForLayout:(id)layout
{
  layoutCopy = layout;
  [(PXWidgetCompositionViewElement *)self _anchorOffset];
  PXPointIsNull();
}

- (id)tilingController:(id)controller tileIdentifierConverterForChange:(id)change
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (void)checkInTile:(void *)tile withIdentifier:(PXTileIdentifier *)identifier
{
  tileCopy = tile;
  [(PXWidgetCompositionViewElement *)self setIsCheckingInTile:1];
  +[PXWidgetCompositionViewElementLayout viewTileIdentifier];
  v8 = *&identifier->index[5];
  v19[2] = *&identifier->index[3];
  v19[3] = v8;
  v19[4] = *&identifier->index[7];
  v20 = identifier->index[9];
  v9 = *&identifier->index[1];
  v19[0] = *&identifier->length;
  v19[1] = v9;
  v10 = *&v19[0] == *&v21[0];
  if (*&v19[0] && *&v19[0] == *&v21[0])
  {
    v11 = 1;
    do
    {
      v12 = *(v19 + v11);
      v13 = *(v21 + v11);
      v10 = v12 == v13;
      if (v11 >= *&v19[0])
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
    v16 = *&identifier->index[5];
    v21[2] = *&identifier->index[3];
    v21[3] = v16;
    v21[4] = *&identifier->index[7];
    v22 = identifier->index[9];
    v17 = *&identifier->index[1];
    v21[0] = *&identifier->length;
    v21[1] = v17;
    v18 = PXTileIdentifierDescription(v21);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:117 description:{@"unknown identifier %@", v18}];

    abort();
  }

  [(PXWidgetCompositionViewElement *)self checkInViewTile:tileCopy];
  [(PXWidgetCompositionViewElement *)self setIsCheckingInTile:0];
  _tilesInUse = [(PXWidgetCompositionViewElement *)self _tilesInUse];
  [_tilesInUse removeObject:tileCopy];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)identifier layout:(id)layout
{
  layoutCopy = layout;
  +[PXWidgetCompositionViewElementLayout viewTileIdentifier];
  v8 = *&identifier->index[5];
  v21[2] = *&identifier->index[3];
  v21[3] = v8;
  v21[4] = *&identifier->index[7];
  v22 = identifier->index[9];
  v9 = *&identifier->index[1];
  v21[0] = *&identifier->length;
  v21[1] = v9;
  v10 = *&v21[0] == *&v23[0];
  if (*&v21[0] && *&v21[0] == *&v23[0])
  {
    v11 = 1;
    do
    {
      v12 = *(v21 + v11);
      v13 = *(v23 + v11);
      v10 = v12 == v13;
      if (v11 >= *&v21[0])
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
    v18 = *&identifier->index[5];
    v23[2] = *&identifier->index[3];
    v23[3] = v18;
    v23[4] = *&identifier->index[7];
    v24 = identifier->index[9];
    v19 = *&identifier->index[1];
    v23[0] = *&identifier->length;
    v23[1] = v19;
    v20 = PXTileIdentifierDescription(v23);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:102 description:{@"unknown identifier %@", v20}];

    abort();
  }

  checkOutViewTile = [(PXWidgetCompositionViewElement *)self checkOutViewTile];
  _tilesInUse = [(PXWidgetCompositionViewElement *)self _tilesInUse];
  [_tilesInUse addObject:checkOutViewTile];

  return checkOutViewTile;
}

- (CGPoint)_anchorPoint
{
  _layout = [(PXWidgetCompositionViewElement *)self _layout];
  [_layout contentBounds];

  widget = [(PXWidgetCompositionElement *)self widget];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [widget contentViewAnchoringType]) == 0)
  {
    widget2 = [(PXWidgetCompositionElement *)self widget];
    v6 = [(PXWidgetCompositionElement *)self widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:widget2];
  }

  if (v6)
  {
    PXRectEdgeValue();
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:79 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    createTileAnimator = [(PXWidgetCompositionViewElement *)self createTileAnimator];
    tileAnimator = self->__tileAnimator;
    self->__tileAnimator = createTileAnimator;

    v5 = [MEMORY[0x1E695DFA8] set];
    tilesInUse = self->__tilesInUse;
    self->__tilesInUse = v5;

    v7 = objc_alloc_init(PXWidgetCompositionViewElementLayout);
    layout = self->__layout;
    self->__layout = v7;

    v9 = [[PXTilingController alloc] initWithLayout:self->__layout];
    tilingController = self->__tilingController;
    self->__tilingController = v9;

    v11 = self->__tilingController;
    scrollViewController = [(PXWidgetCompositionElement *)self scrollViewController];
    [(PXTilingController *)v11 setScrollController:scrollViewController];

    [(PXTilingController *)self->__tilingController setTileAnimator:self->__tileAnimator];
    [(PXTilingController *)self->__tilingController setTileSource:self];
    [(PXTilingController *)self->__tilingController setTransitionDelegate:self];
    v13 = self->__tilingController;

    [(PXTilingController *)v13 setScrollDelegate:self];
  }
}

- (void)saveAnchoring
{
  [(PXWidgetCompositionViewElement *)self _layout];
  [objc_claimAutoreleasedReturnValue() visibleRect];
  PXRectGetCenter();
}

- (id)contentTilingController
{
  [(PXWidgetCompositionViewElement *)self _loadTilingController];

  return [(PXWidgetCompositionViewElement *)self _tilingController];
}

- (void)checkInViewTile:(id)tile
{
  view = [tile view];
  [view removeFromSuperview];
}

- (id)checkOutViewTile
{
  widget = [(PXWidgetCompositionElement *)self widget];
  v4 = [[PXWidgetCompositionUIViewElementTile alloc] initWithWidget:widget];
  scrollViewController = [(PXWidgetCompositionElement *)self scrollViewController];
  view = [(PXWidgetCompositionUIViewElementTile *)v4 view];
  [scrollViewController addSubview:view];

  return v4;
}

- (id)createTileAnimator
{
  v2 = objc_alloc_init(PXWidgetCompositionUIViewElementTileAnimator);

  return v2;
}

@end