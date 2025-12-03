@interface PXUIWidgetBar
- (PXUIWidgetBarViewTile)_viewTile;
- (id)checkOutTileWithKind:(int64_t)kind;
- (id)createTileAnimator;
- (void)checkInTile:(id)tile;
- (void)updateView;
@end

@implementation PXUIWidgetBar

- (void)updateView
{
  v5.receiver = self;
  v5.super_class = PXUIWidgetBar;
  [(PXWidgetBar *)&v5 updateView];
  view = [(PXWidgetBar *)self view];
  _viewTile = [(PXUIWidgetBar *)self _viewTile];
  [_viewTile setView:view];
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

- (void)checkInTile:(id)tile
{
  view = [tile view];
  [view setHidden:1];
}

- (id)checkOutTileWithKind:(int64_t)kind
{
  if (kind == 1)
  {
    _viewTile = [(PXUIWidgetBar *)self _viewTile];
  }

  else
  {
    if (!kind)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIWidgetBar.m" lineNumber:35 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    _viewTile = 0;
  }

  view = [_viewTile view];
  [view setHidden:0];
  superview = [view superview];

  if (!superview)
  {
    scrollViewController = [(PXWidgetBar *)self scrollViewController];
    [scrollViewController addSubview:view];
  }

  return _viewTile;
}

- (id)createTileAnimator
{
  v2 = objc_alloc_init(PXBasicUIViewTileAnimator);

  return v2;
}

@end