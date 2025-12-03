@interface PXGPPTViewController
- (PXGPPTViewController)initWithCoder:(id)coder;
- (PXGPPTViewController)initWithLayout:(id)layout;
- (PXGPPTViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXGView)gridView;
- (void)_handleDoubleTap:(id)tap;
- (void)animate:(id)animate animationRenderingCompletionHandler:(id)handler proceedHandler:(id)proceedHandler;
- (void)viewDidLoad;
@end

@implementation PXGPPTViewController

- (void)_handleDoubleTap:(id)tap
{
  if ([tap state] == 3)
  {

    [(PXGPPTViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)animate:(id)animate animationRenderingCompletionHandler:(id)handler proceedHandler:(id)proceedHandler
{
  animateCopy = animate;
  handlerCopy = handler;
  proceedHandlerCopy = proceedHandler;
  gridView = [(PXGPPTViewController *)self gridView];
  if (animateCopy)
  {
    animateCopy[2](animateCopy, gridView);
  }

  rootLayout = [gridView rootLayout];
  [rootLayout setNeedsUpdate];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PXGPPTViewController_animate_animationRenderingCompletionHandler_proceedHandler___block_invoke;
  v15[3] = &unk_1E77425C8;
  v16 = handlerCopy;
  v17 = proceedHandlerCopy;
  v13 = proceedHandlerCopy;
  v14 = handlerCopy;
  [gridView installAnimationRenderingCompletionHandler:v15];
}

void __83__PXGPPTViewController_animate_animationRenderingCompletionHandler_proceedHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x1E69E96A0];

    dispatch_async(v4, v3);
  }
}

- (PXGView)gridView
{
  [(PXGPPTViewController *)self loadViewIfNeeded];
  gridView = self->_gridView;

  return gridView;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PXGPPTViewController;
  [(PXGPPTViewController *)&v10 viewDidLoad];
  view = [(PXGPPTViewController *)self view];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [view setBackgroundColor:whiteColor];

  v5 = [off_1E7721708 alloc];
  [view bounds];
  v6 = [v5 initWithFrame:?];
  gridView = self->_gridView;
  self->_gridView = v6;

  initialLayout = [(PXGPPTViewController *)self initialLayout];
  [(PXGView *)self->_gridView setRootLayout:initialLayout];

  [(PXGView *)self->_gridView setAutoresizingMask:2];
  [(PXGView *)self->_gridView registerAllTextureProvidersWithMediaProvider:0];
  [view addSubview:self->_gridView];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTap_];
  [v9 setNumberOfTapsRequired:2];
  [view addGestureRecognizer:v9];
}

- (PXGPPTViewController)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = PXGPPTViewController;
  v6 = [(PXGPPTViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialLayout, layout);
    [(PXGPPTViewController *)v7 setModalPresentationStyle:0];
  }

  return v7;
}

- (PXGPPTViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPPTViewController.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXGPPTViewController initWithCoder:]"}];

  abort();
}

- (PXGPPTViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPPTViewController.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXGPPTViewController initWithNibName:bundle:]"}];

  abort();
}

@end