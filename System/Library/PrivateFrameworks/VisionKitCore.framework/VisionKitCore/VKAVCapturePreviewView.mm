@interface VKAVCapturePreviewView
- (double)videoRotationAngle;
- (id)delegate;
- (id)previewLayer;
- (id)setDelegate:(id *)result;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setVideoRotationAngle:(void *)angle;
@end

@implementation VKAVCapturePreviewView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = VKAVCapturePreviewView;
  [(VKAVCapturePreviewView *)&v5 didMoveToWindow];
  delegate = [(VKAVCapturePreviewView *)&self->super.super.super.isa delegate];
  window = [(VKAVCapturePreviewView *)self window];
  [delegate previewView:self didMoveToWindow:window];
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
    delegate = [(VKAVCapturePreviewView *)&self->super.super.super.isa delegate];
    [delegate didChangeBoundsForPreviewView:self];
  }

  v13.receiver = self;
  v13.super_class = VKAVCapturePreviewView;
  [(VKAVCapturePreviewView *)&v13 layoutSubviews];
}

- (id)previewLayer
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_opt_class();
    layer = [selfCopy layer];
    selfCopy = VKDynamicCast(v2, layer);
  }

  return selfCopy;
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
  if (!self)
  {
    return 0.0;
  }

  previewLayer = [(VKAVCapturePreviewView *)self previewLayer];
  connection = [previewLayer connection];
  [connection videoRotationAngle];
  v4 = v3;

  return v4;
}

- (void)setVideoRotationAngle:(void *)angle
{
  if (angle)
  {
    previewLayer = [(VKAVCapturePreviewView *)angle previewLayer];
    connection = [previewLayer connection];

    [connection setVideoRotationAngle:a2];
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