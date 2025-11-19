@interface PXPixelBufferView
- (void)didMoveToWindow;
- (void)enqueuePixelBuffer:(__CVBuffer *)a3;
@end

@implementation PXPixelBufferView

- (void)enqueuePixelBuffer:(__CVBuffer *)a3
{
  v4 = [(PXPixelBufferView *)self imageQueueLayer];
  [v4 setPixelBuffer:a3];
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = PXPixelBufferView;
  [(PXPixelBufferView *)&v9 didMoveToWindow];
  v5 = [(PXPixelBufferView *)self window];
  if (v5)
  {
    v2 = [(PXPixelBufferView *)self window];
    v3 = [v2 screen];
    [v3 scale];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = [(PXPixelBufferView *)self layer];
  [v8 setContentsScale:v7];

  if (v5)
  {
  }
}

@end