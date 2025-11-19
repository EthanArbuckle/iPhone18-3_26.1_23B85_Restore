@interface PXGPPTViewController
- (PXGPPTViewController)initWithCoder:(id)a3;
- (PXGPPTViewController)initWithLayout:(id)a3;
- (PXGPPTViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXGView)gridView;
- (void)_handleDoubleTap:(id)a3;
- (void)animate:(id)a3 animationRenderingCompletionHandler:(id)a4 proceedHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation PXGPPTViewController

- (void)_handleDoubleTap:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PXGPPTViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)animate:(id)a3 animationRenderingCompletionHandler:(id)a4 proceedHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXGPPTViewController *)self gridView];
  if (v8)
  {
    v8[2](v8, v11);
  }

  v12 = [v11 rootLayout];
  [v12 setNeedsUpdate];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__PXGPPTViewController_animate_animationRenderingCompletionHandler_proceedHandler___block_invoke;
  v15[3] = &unk_1E77425C8;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  [v11 installAnimationRenderingCompletionHandler:v15];
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
  v3 = [(PXGPPTViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setBackgroundColor:v4];

  v5 = [off_1E7721708 alloc];
  [v3 bounds];
  v6 = [v5 initWithFrame:?];
  gridView = self->_gridView;
  self->_gridView = v6;

  v8 = [(PXGPPTViewController *)self initialLayout];
  [(PXGView *)self->_gridView setRootLayout:v8];

  [(PXGView *)self->_gridView setAutoresizingMask:2];
  [(PXGView *)self->_gridView registerAllTextureProvidersWithMediaProvider:0];
  [v3 addSubview:self->_gridView];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTap_];
  [v9 setNumberOfTapsRequired:2];
  [v3 addGestureRecognizer:v9];
}

- (PXGPPTViewController)initWithLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXGPPTViewController;
  v6 = [(PXGPPTViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_initialLayout, a3);
    [(PXGPPTViewController *)v7 setModalPresentationStyle:0];
  }

  return v7;
}

- (PXGPPTViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXGPPTViewController.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXGPPTViewController initWithCoder:]"}];

  abort();
}

- (PXGPPTViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXGPPTViewController.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXGPPTViewController initWithNibName:bundle:]"}];

  abort();
}

@end