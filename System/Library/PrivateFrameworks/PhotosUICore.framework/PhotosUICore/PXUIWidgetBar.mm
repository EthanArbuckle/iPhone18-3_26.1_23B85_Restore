@interface PXUIWidgetBar
- (PXUIWidgetBarViewTile)_viewTile;
- (id)checkOutTileWithKind:(int64_t)a3;
- (id)createTileAnimator;
- (void)checkInTile:(id)a3;
- (void)updateView;
@end

@implementation PXUIWidgetBar

- (void)updateView
{
  v5.receiver = self;
  v5.super_class = PXUIWidgetBar;
  [(PXWidgetBar *)&v5 updateView];
  v3 = [(PXWidgetBar *)self view];
  v4 = [(PXUIWidgetBar *)self _viewTile];
  [v4 setView:v3];
}

- (PXUIWidgetBarViewTile)_viewTile
{
  viewTile = self->__viewTile;
  if (!viewTile)
  {
    v4 = objc_alloc_init(PXUIWidgetBarViewTile);
    v5 = self->__viewTile;
    self->__viewTile = v4;

    viewTile = self->__viewTile;
  }

  return viewTile;
}

- (void)checkInTile:(id)a3
{
  v3 = [a3 view];
  [v3 setHidden:1];
}

- (id)checkOutTileWithKind:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(PXUIWidgetBar *)self _viewTile];
  }

  else
  {
    if (!a3)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXUIWidgetBar.m" lineNumber:35 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v4 = 0;
  }

  v5 = [v4 view];
  [v5 setHidden:0];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(PXWidgetBar *)self scrollViewController];
    [v7 addSubview:v5];
  }

  return v4;
}

- (id)createTileAnimator
{
  v2 = objc_alloc_init(PXBasicUIViewTileAnimator);

  return v2;
}

@end