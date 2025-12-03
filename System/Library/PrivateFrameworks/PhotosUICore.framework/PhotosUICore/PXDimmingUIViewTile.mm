@interface PXDimmingUIViewTile
- (PXDimmingUIViewTile)initWithFrame:(CGRect)frame;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)prepareForReuse;
@end

@implementation PXDimmingUIViewTile

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  viewSpec = [data viewSpec];
  if (viewSpec)
  {
    v7 = viewSpec;
    backgroundColor = [viewSpec backgroundColor];
    [(PXDimmingUIViewTile *)self setBackgroundColor:backgroundColor];

    viewSpec = v7;
  }
}

- (void)prepareForReuse
{
  view = [(PXDimmingUIViewTile *)self view];
  [view setHidden:0];
}

- (void)becomeReusable
{
  view = [(PXDimmingUIViewTile *)self view];
  [view setHidden:1];
}

- (PXDimmingUIViewTile)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXDimmingUIViewTile;
  v3 = [(PXDimmingUIViewTile *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXDimmingUIViewTile *)v3 setUserInteractionEnabled:0];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PXDimmingUIViewTile *)v4 setBackgroundColor:systemBackgroundColor];
  }

  return v4;
}

@end