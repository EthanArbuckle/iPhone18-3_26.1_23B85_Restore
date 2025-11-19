@interface PXGHostingView
- (PXGHostingView)initWithFrame:(CGRect)a3;
- (void)_updatePresenter;
- (void)didMoveToWindow;
- (void)hostingController:(id)a3 didRenderFrame:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setHostingController:(id)a3;
@end

@implementation PXGHostingView

- (void)hostingController:(id)a3 didRenderFrame:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PXGHostingView *)self hostingController];

  if (v7 == v6)
  {
    v8 = [(PXGHostingView *)self pixelBufferView];
    [v8 enqueuePixelBuffer:{objc_msgSend(v9, "pixelBuffer")}];
  }
}

- (void)setHostingController:(id)a3
{
  v5 = a3;
  hostingController = self->_hostingController;
  if (hostingController != v5)
  {
    v10 = v5;
    [(PXGHostingController *)hostingController unregisterFrameObserver:self];
    objc_storeStrong(&self->_hostingController, a3);
    v7 = [(PXGHostingView *)self pixelBufferView];
    [v7 enqueuePixelBuffer:0];

    [(PXGHostingController *)self->_hostingController registerFrameObserver:self];
    v8 = [(PXGHostingController *)v10 addPresenter];
    presenter = self->_presenter;
    self->_presenter = v8;

    [(PXGHostingView *)self setNeedsLayout];
    v5 = v10;
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

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXGHostingView;
  [(PXGHostingView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(PXGHostingView *)self pixelBufferView];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(PXGHostingView *)self _updatePresenter];
}

- (PXGHostingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXGHostingView;
  v3 = [(PXGHostingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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