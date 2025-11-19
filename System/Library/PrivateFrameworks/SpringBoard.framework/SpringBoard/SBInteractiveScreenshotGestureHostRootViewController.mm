@interface SBInteractiveScreenshotGestureHostRootViewController
- (SBInteractiveScreenshotGestureHostRootViewController)initWithScreen:(id)a3;
- (void)_reloadLayerHostView;
- (void)invalidate;
- (void)setHostingContextID:(unsigned int)a3 pid:(int)a4;
- (void)viewDidLoad;
@end

@implementation SBInteractiveScreenshotGestureHostRootViewController

- (SBInteractiveScreenshotGestureHostRootViewController)initWithScreen:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBInteractiveScreenshotGestureHostRootViewController;
  v6 = [(SBInteractiveScreenshotGestureHostRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_screen, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBInteractiveScreenshotGestureHostRootViewController;
  [(SBInteractiveScreenshotGestureHostRootViewController *)&v3 viewDidLoad];
  [(SBInteractiveScreenshotGestureHostRootViewController *)self _reloadLayerHostView];
}

- (void)invalidate
{
  [(_UILayerHostView *)self->_layerHostView removeFromSuperview];
  layerHostView = self->_layerHostView;
  self->_layerHostView = 0;
}

- (void)setHostingContextID:(unsigned int)a3 pid:(int)a4
{
  if (self->_hostingContextID != a3 || self->_hostingPid != a4)
  {
    self->_hostingContextID = a3;
    self->_hostingPid = a4;
    if ([(SBInteractiveScreenshotGestureHostRootViewController *)self isViewLoaded])
    {

      [(SBInteractiveScreenshotGestureHostRootViewController *)self _reloadLayerHostView];
    }
  }
}

- (void)_reloadLayerHostView
{
  layerHostView = self->_layerHostView;
  if (layerHostView)
  {
    [(_UILayerHostView *)layerHostView removeFromSuperview];
    v4 = self->_layerHostView;
    self->_layerHostView = 0;
  }

  if (self->_hostingContextID && self->_hostingPid)
  {
    v5 = [(SBInteractiveScreenshotGestureHostRootViewController *)self view];
    [v5 bounds];
    [(UIScreen *)self->_screen nativeBounds];
    v7 = v6;
    v9 = v8;
    [(UIScreen *)self->_screen bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIScreen *)self->_screen _rotation];
    v19 = v18;
    [(UIScreen *)self->_screen scale];
    v21 = v20;
    v22 = v15 * v20;
    v23 = (v7 < v9) ^ (v22 >= v17 * v21);
    if (v23)
    {
      v24 = v17 * v21;
    }

    else
    {
      v24 = v22;
    }

    if (v23)
    {
      v25 = v22;
    }

    else
    {
      v25 = v17 * v21;
    }

    CGAffineTransformMakeRotation(&v30, -v19);
    UIIntegralTransform();
    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v25;
    v32.size.height = v24;
    CGRectApplyAffineTransform(v32, &v31);
    v26 = objc_alloc(MEMORY[0x277D76098]);
    BSRectWithSize();
    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v27 = [v26 initWithFrame:self->_hostingPid pid:self->_hostingContextID contextID:?];
    v28 = self->_layerHostView;
    self->_layerHostView = v27;

    memset(&v31, 0, sizeof(v31));
    CGAffineTransformMakeRotation(&v31, v19);
    v29 = v31;
    CGAffineTransformScale(&v30, &v29, 1.0 / v21, 1.0 / v21);
    v31 = v30;
    [(_UILayerHostView *)self->_layerHostView setTransform:&v30];
    [v5 addSubview:self->_layerHostView];
  }
}

@end