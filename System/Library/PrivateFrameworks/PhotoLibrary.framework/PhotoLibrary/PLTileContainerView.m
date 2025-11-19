@interface PLTileContainerView
- (PLTileContainerView)initWithFrame:(CGRect)a3 photoTileController:(id)a4;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PLTileContainerView

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = PLTileContainerView;
  [(PLTileContainerView *)&v5 willMoveToSuperview:?];
  [(PLPhotoTileViewController *)self->_photoTileController _viewWillMoveToSuperView:a3];
}

- (PLTileContainerView)initWithFrame:(CGRect)a3 photoTileController:(id)a4
{
  v8.receiver = self;
  v8.super_class = PLTileContainerView;
  v5 = [(PLTileContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [-[PLTileContainerView layer](v5 "layer")];
    v6->_photoTileController = a4;
  }

  return v6;
}

@end