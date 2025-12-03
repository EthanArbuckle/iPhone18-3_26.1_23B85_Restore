@interface PXGHostingLayer
- (PXGHostingLayer)init;
- (void)_updatePresenter;
- (void)hostingController:(id)controller didRenderFrame:(id)frame;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsScale:(double)scale;
- (void)setHostingController:(id)controller;
- (void)setVisibilityInfo:(id)info;
@end

@implementation PXGHostingLayer

- (void)hostingController:(id)controller didRenderFrame:(id)frame
{
  pixelBuffer = [frame pixelBuffer];

  [(PXImageQueueLayer *)self setPixelBuffer:pixelBuffer];
}

- (void)_updatePresenter
{
  visibilityInfo = [(PXGHostingLayer *)self visibilityInfo];
  v4 = visibilityInfo;
  if (visibilityInfo && ![visibilityInfo isVisible])
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
    addPresenter = [presenter addPresenter];
    v7 = self->_presenter;
    self->_presenter = addPresenter;

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

- (void)setContentsScale:(double)scale
{
  v4.receiver = self;
  v4.super_class = PXGHostingLayer;
  [(PXGHostingLayer *)&v4 setContentsScale:scale];
  [(PXGHostingLayer *)self _updatePresenter];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = PXGHostingLayer;
  [(PXGHostingLayer *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(PXGHostingLayer *)self _updatePresenter];
}

- (void)setVisibilityInfo:(id)info
{
  infoCopy = info;
  visibilityInfo = self->_visibilityInfo;
  if (visibilityInfo != infoCopy)
  {
    v7 = infoCopy;
    [(PXGHostingLayerVisibilityInfo *)visibilityInfo setDelegate:0];
    objc_storeStrong(&self->_visibilityInfo, info);
    [(PXGHostingLayerVisibilityInfo *)v7 setDelegate:self];
    [(PXGHostingLayer *)self _updatePresenter];
    infoCopy = v7;
  }
}

- (void)setHostingController:(id)controller
{
  controllerCopy = controller;
  if (self->_hostingController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(&self->_hostingController, controller);
    lastFrame = [(PXGHostingController *)v7 lastFrame];
    -[PXImageQueueLayer setPixelBuffer:](self, "setPixelBuffer:", [lastFrame pixelBuffer]);

    [(PXGHostingController *)v7 registerFrameObserver:self];
    [(PXGHostingLayer *)self _updatePresenter];
    controllerCopy = v7;
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