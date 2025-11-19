@interface PUPhotoEditToolControllerView
- (PUPhotoEditToolController)toolController;
- (PUPhotoEditToolControllerView)initWithToolController:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PUPhotoEditToolControllerView

- (PUPhotoEditToolController)toolController
{
  WeakRetained = objc_loadWeakRetained(&self->_toolController);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUPhotoEditToolControllerView *)self toolController];
  v9 = [v8 delegate];
  v10 = [v9 toolControllerHitEventForwardView:v8];

  if (v10 && (v16.receiver = self, v16.super_class = PUPhotoEditToolControllerView, [(PUPhotoEditToolControllerView *)&v16 hitTest:v7 withEvent:x, y], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == self))
  {
    v12 = v10;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUPhotoEditToolControllerView;
    v12 = [(PUPhotoEditToolControllerView *)&v15 hitTest:v7 withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (PUPhotoEditToolControllerView)initWithToolController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUPhotoEditToolControllerView;
  v5 = [(PUPhotoEditToolControllerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PUPhotoEditToolControllerView *)v5 setToolController:v4];
  }

  return v6;
}

@end