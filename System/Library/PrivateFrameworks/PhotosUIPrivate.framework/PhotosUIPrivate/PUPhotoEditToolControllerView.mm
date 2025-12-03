@interface PUPhotoEditToolControllerView
- (PUPhotoEditToolController)toolController;
- (PUPhotoEditToolControllerView)initWithToolController:(id)controller;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PUPhotoEditToolControllerView

- (PUPhotoEditToolController)toolController
{
  WeakRetained = objc_loadWeakRetained(&self->_toolController);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  toolController = [(PUPhotoEditToolControllerView *)self toolController];
  delegate = [toolController delegate];
  v10 = [delegate toolControllerHitEventForwardView:toolController];

  if (v10 && (v16.receiver = self, v16.super_class = PUPhotoEditToolControllerView, [(PUPhotoEditToolControllerView *)&v16 hitTest:eventCopy withEvent:x, y], v11 = objc_claimAutoreleasedReturnValue(), v11, v11 == self))
  {
    v12 = v10;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PUPhotoEditToolControllerView;
    v12 = [(PUPhotoEditToolControllerView *)&v15 hitTest:eventCopy withEvent:x, y];
  }

  v13 = v12;

  return v13;
}

- (PUPhotoEditToolControllerView)initWithToolController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = PUPhotoEditToolControllerView;
  v5 = [(PUPhotoEditToolControllerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PUPhotoEditToolControllerView *)v5 setToolController:controllerCopy];
  }

  return v6;
}

@end