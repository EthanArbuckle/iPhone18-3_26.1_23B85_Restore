@interface PLTileContainerView
- (PLTileContainerView)initWithFrame:(CGRect)frame photoTileController:(id)controller;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PLTileContainerView

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = PLTileContainerView;
  [(PLTileContainerView *)&v5 willMoveToSuperview:?];
  [(PLPhotoTileViewController *)self->_photoTileController _viewWillMoveToSuperView:superview];
}

- (PLTileContainerView)initWithFrame:(CGRect)frame photoTileController:(id)controller
{
  v8.receiver = self;
  v8.super_class = PLTileContainerView;
  v5 = [(PLTileContainerView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [-[PLTileContainerView layer](v5 "layer")];
    v6->_photoTileController = controller;
  }

  return v6;
}

@end