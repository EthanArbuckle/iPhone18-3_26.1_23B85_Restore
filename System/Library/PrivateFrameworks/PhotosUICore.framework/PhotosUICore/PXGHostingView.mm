@interface PXGHostingView
- (PXGHostingView)initWithFrame:(CGRect)frame;
- (void)_updatePresenter;
- (void)didMoveToWindow;
- (void)hostingController:(id)controller didRenderFrame:(id)frame;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setHostingController:(id)controller;
@end

@implementation PXGHostingView

- (void)hostingController:(id)controller didRenderFrame:(id)frame
{
  frameCopy = frame;
  controllerCopy = controller;
  hostingController = [(PXGHostingView *)self hostingController];

  if (hostingController == controllerCopy)
  {
    pixelBufferView = [(PXGHostingView *)self pixelBufferView];
    [pixelBufferView enqueuePixelBuffer:{objc_msgSend(frameCopy, "pixelBuffer")}];
  }
}

- (void)setHostingController:(id)controller
{
  controllerCopy = controller;
  hostingController = self->_hostingController;
  if (hostingController != controllerCopy)
  {
    v10 = controllerCopy;
    [(PXGHostingController *)hostingController unregisterFrameObserver:self];
    objc_storeStrong(&self->_hostingController, controller);
    pixelBufferView = [(PXGHostingView *)self pixelBufferView];
    [pixelBufferView enqueuePixelBuffer:0];

    [(PXGHostingController *)self->_hostingController registerFrameObserver:self];
    addPresenter = [(PXGHostingController *)v10 addPresenter];
    presenter = self->_presenter;
    self->_presenter = addPresenter;

    [(PXGHostingView *)self setNeedsLayout];
    controllerCopy = v10;
  }
}

- (void)_updatePresenter
{
  presenter = self->_presenter;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__PXGHostingView__updatePresenter__block_invoke;
  v3[3] = &unk_1E773EFA0;
  v3[4] = self;
  [(PXGMutableHostingControllerPresenter *)presenter performChanges:v3];
}

void __34__PXGHostingView__updatePresenter__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) bounds];
  [v7 setSize:{v3, v4}];
  v5 = [*(a1 + 32) window];
  v6 = [v5 screen];

  if (v6)
  {
    [v6 scale];
    [v7 setDisplayScale:?];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PXGHostingView;
  [(PXGHostingView *)&v3 didMoveToWindow];
  [(PXGHostingView *)self setNeedsLayout];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = PXGHostingView;
  [(PXGHostingView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(PXGHostingView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXGHostingView;
  [(PXGHostingView *)&v12 layoutSubviews];
  [(PXGHostingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  pixelBufferView = [(PXGHostingView *)self pixelBufferView];
  [pixelBufferView setFrame:{v4, v6, v8, v10}];

  [(PXGHostingView *)self _updatePresenter];
}

- (PXGHostingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXGHostingView;
  v3 = [(PXGHostingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [PXPixelBufferView alloc];
    [(PXGHostingView *)v3 bounds];
    v5 = [(PXPixelBufferView *)v4 initWithFrame:?];
    pixelBufferView = v3->_pixelBufferView;
    v3->_pixelBufferView = v5;

    [(PXGHostingView *)v3 addSubview:v3->_pixelBufferView];
    [(PXGHostingView *)v3 setClipsToBounds:1];
  }

  return v3;
}

@end