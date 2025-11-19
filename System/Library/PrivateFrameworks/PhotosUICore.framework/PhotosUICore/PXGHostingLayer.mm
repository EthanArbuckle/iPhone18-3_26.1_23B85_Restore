@interface PXGHostingLayer
- (PXGHostingLayer)init;
- (void)_updatePresenter;
- (void)hostingController:(id)a3 didRenderFrame:(id)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentsScale:(double)a3;
- (void)setHostingController:(id)a3;
- (void)setVisibilityInfo:(id)a3;
@end

@implementation PXGHostingLayer

- (void)hostingController:(id)a3 didRenderFrame:(id)a4
{
  v5 = [a4 pixelBuffer];

  [(PXImageQueueLayer *)self setPixelBuffer:v5];
}

- (void)_updatePresenter
{
  v3 = [(PXGHostingLayer *)self visibilityInfo];
  v4 = v3;
  if (v3 && ![v3 isVisible])
  {
    presenter = self->_presenter;
    if (presenter)
    {
      self->_presenter = 0;
      goto LABEL_7;
    }
  }

  else if (!self->_presenter)
  {
    presenter = [(PXGHostingLayer *)self hostingController];
    v6 = [presenter addPresenter];
    v7 = self->_presenter;
    self->_presenter = v6;

LABEL_7:
  }

  v8 = self->_presenter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__PXGHostingLayer__updatePresenter__block_invoke;
  v9[3] = &unk_1E773EFA0;
  v9[4] = self;
  [(PXGMutableHostingControllerPresenter *)v8 performChanges:v9];
}

void __35__PXGHostingLayer__updatePresenter__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 bounds];
  [v6 setSize:{v4, v5}];
  [*(a1 + 32) contentsScale];
  [v6 setDisplayScale:?];
}

- (void)setContentsScale:(double)a3
{
  v4.receiver = self;
  v4.super_class = PXGHostingLayer;
  [(PXGHostingLayer *)&v4 setContentsScale:a3];
  [(PXGHostingLayer *)self _updatePresenter];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PXGHostingLayer;
  [(PXGHostingLayer *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PXGHostingLayer *)self _updatePresenter];
}

- (void)setVisibilityInfo:(id)a3
{
  v5 = a3;
  visibilityInfo = self->_visibilityInfo;
  if (visibilityInfo != v5)
  {
    v7 = v5;
    [(PXGHostingLayerVisibilityInfo *)visibilityInfo setDelegate:0];
    objc_storeStrong(&self->_visibilityInfo, a3);
    [(PXGHostingLayerVisibilityInfo *)v7 setDelegate:self];
    [(PXGHostingLayer *)self _updatePresenter];
    v5 = v7;
  }
}

- (void)setHostingController:(id)a3
{
  v5 = a3;
  if (self->_hostingController != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_hostingController, a3);
    v6 = [(PXGHostingController *)v7 lastFrame];
    -[PXImageQueueLayer setPixelBuffer:](self, "setPixelBuffer:", [v6 pixelBuffer]);

    [(PXGHostingController *)v7 registerFrameObserver:self];
    [(PXGHostingLayer *)self _updatePresenter];
    v5 = v7;
  }
}

- (PXGHostingLayer)init
{
  v5.receiver = self;
  v5.super_class = PXGHostingLayer;
  v2 = [(PXImageQueueLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXGHostingLayer *)v2 setMasksToBounds:1];
  }

  return v3;
}

@end