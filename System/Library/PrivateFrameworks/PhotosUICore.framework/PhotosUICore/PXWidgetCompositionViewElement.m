@interface PXWidgetCompositionViewElement
- (CGPoint)_anchorOffset;
- (CGPoint)_anchorPoint;
- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4;
- (id)checkOutViewTile;
- (id)contentTilingController;
- (id)createTileAnimator;
- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4;
- (void)_loadTilingController;
- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4;
- (void)checkInViewTile:(id)a3;
- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4;
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

- (CGPoint)tilingController:(id)a3 initialVisibleOriginForLayout:(id)a4
{
  v5 = a4;
  [(PXWidgetCompositionViewElement *)self _anchorOffset];
  PXPointIsNull();
}

- (id)tilingController:(id)a3 tileIdentifierConverterForChange:(id)a4
{
  v4 = objc_alloc_init(PXTileIdentifierIdentityConverter);

  return v4;
}

- (void)checkInTile:(void *)a3 withIdentifier:(PXTileIdentifier *)a4
{
  v7 = a3;
  [(PXWidgetCompositionViewElement *)self setIsCheckingInTile:1];
  +[PXWidgetCompositionViewElementLayout viewTileIdentifier];
  v8 = *&a4->index[5];
  v19[2] = *&a4->index[3];
  v19[3] = v8;
  v19[4] = *&a4->index[7];
  v20 = a4->index[9];
  v9 = *&a4->index[1];
  v19[0] = *&a4->length;
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *&a4->index[5];
    v21[2] = *&a4->index[3];
    v21[3] = v16;
    v21[4] = *&a4->index[7];
    v22 = a4->index[9];
    v17 = *&a4->index[1];
    v21[0] = *&a4->length;
    v21[1] = v17;
    v18 = PXTileIdentifierDescription(v21);
    [v15 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:117 description:{@"unknown identifier %@", v18}];

    abort();
  }

  [(PXWidgetCompositionViewElement *)self checkInViewTile:v7];
  [(PXWidgetCompositionViewElement *)self setIsCheckingInTile:0];
  v14 = [(PXWidgetCompositionViewElement *)self _tilesInUse];
  [v14 removeObject:v7];
}

- (void)checkOutTileForIdentifier:(PXTileIdentifier *)a3 layout:(id)a4
{
  v7 = a4;
  +[PXWidgetCompositionViewElementLayout viewTileIdentifier];
  v8 = *&a3->index[5];
  v21[2] = *&a3->index[3];
  v21[3] = v8;
  v21[4] = *&a3->index[7];
  v22 = a3->index[9];
  v9 = *&a3->index[1];
  v21[0] = *&a3->length;
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
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *&a3->index[5];
    v23[2] = *&a3->index[3];
    v23[3] = v18;
    v23[4] = *&a3->index[7];
    v24 = a3->index[9];
    v19 = *&a3->index[1];
    v23[0] = *&a3->length;
    v23[1] = v19;
    v20 = PXTileIdentifierDescription(v23);
    [v17 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:102 description:{@"unknown identifier %@", v20}];

    abort();
  }

  v14 = [(PXWidgetCompositionViewElement *)self checkOutViewTile];
  v15 = [(PXWidgetCompositionViewElement *)self _tilesInUse];
  [v15 addObject:v14];

  return v14;
}

- (CGPoint)_anchorPoint
{
  v4 = [(PXWidgetCompositionViewElement *)self _layout];
  [v4 contentBounds];

  v5 = [(PXWidgetCompositionElement *)self widget];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v6 = [v5 contentViewAnchoringType]) == 0)
  {
    v7 = [(PXWidgetCompositionElement *)self widget];
    v6 = [(PXWidgetCompositionElement *)self widgetDefaultContentViewAnchoringTypeForDisclosureHeightChange:v7];
  }

  if (v6)
  {
    PXRectEdgeValue();
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PXWidgetCompositionViewElement.m" lineNumber:79 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)_loadTilingController
{
  if (!self->__tilingController)
  {
    v3 = [(PXWidgetCompositionViewElement *)self createTileAnimator];
    tileAnimator = self->__tileAnimator;
    self->__tileAnimator = v3;

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
    v12 = [(PXWidgetCompositionElement *)self scrollViewController];
    [(PXTilingController *)v11 setScrollController:v12];

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

- (void)checkInViewTile:(id)a3
{
  v3 = [a3 view];
  [v3 removeFromSuperview];
}

- (id)checkOutViewTile
{
  v3 = [(PXWidgetCompositionElement *)self widget];
  v4 = [[PXWidgetCompositionUIViewElementTile alloc] initWithWidget:v3];
  v5 = [(PXWidgetCompositionElement *)self scrollViewController];
  v6 = [(PXWidgetCompositionUIViewElementTile *)v4 view];
  [v5 addSubview:v6];

  return v4;
}

- (id)createTileAnimator
{
  v2 = objc_alloc_init(PXWidgetCompositionUIViewElementTileAnimator);

  return v2;
}

@end