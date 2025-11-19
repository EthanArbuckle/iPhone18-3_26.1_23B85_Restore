@interface VKAVCapturePreviewView
- (double)videoRotationAngle;
- (id)delegate;
- (id)previewLayer;
- (id)setDelegate:(id *)result;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setVideoRotationAngle:(void *)a1;
@end

@implementation VKAVCapturePreviewView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = VKAVCapturePreviewView;
  [(VKAVCapturePreviewView *)&v5 didMoveToWindow];
  v3 = [(VKAVCapturePreviewView *)&self->super.super.super.isa delegate];
  v4 = [(VKAVCapturePreviewView *)self window];
  [v3 previewView:self didMoveToWindow:v4];
}

- (void)layoutSubviews
{
  p_bounds = &self->_bounds;
  [(VKAVCapturePreviewView *)self bounds];
  if (!VKMNearlyEqualRects(p_bounds->origin.x, p_bounds->origin.y, p_bounds->size.width, p_bounds->size.height, v4, v5, v6, v7))
  {
    [(VKAVCapturePreviewView *)self bounds];
    p_bounds->origin.x = v8;
    p_bounds->origin.y = v9;
    p_bounds->size.width = v10;
    p_bounds->size.height = v11;
    v12 = [(VKAVCapturePreviewView *)&self->super.super.super.isa delegate];
    [v12 didChangeBoundsForPreviewView:self];
  }

  v13.receiver = self;
  v13.super_class = VKAVCapturePreviewView;
  [(VKAVCapturePreviewView *)&v13 layoutSubviews];
}

- (id)previewLayer
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_class();
    v3 = [v1 layer];
    v1 = VKDynamicCast(v2, v3);
  }

  return v1;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 55);
    v1 = vars8;
  }

  return WeakRetained;
}

- (double)videoRotationAngle
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(VKAVCapturePreviewView *)a1 previewLayer];
  v2 = [v1 connection];
  [v2 videoRotationAngle];
  v4 = v3;

  return v4;
}

- (void)setVideoRotationAngle:(void *)a1
{
  if (a1)
  {
    v3 = [(VKAVCapturePreviewView *)a1 previewLayer];
    v4 = [v3 connection];

    [v4 setVideoRotationAngle:a2];
  }
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 55, a2);
  }

  return result;
}

@end