@interface PXPixelBufferView
- (void)didMoveToWindow;
- (void)enqueuePixelBuffer:(__CVBuffer *)buffer;
@end

@implementation PXPixelBufferView

- (void)enqueuePixelBuffer:(__CVBuffer *)buffer
{
  imageQueueLayer = [(PXPixelBufferView *)self imageQueueLayer];
  [imageQueueLayer setPixelBuffer:buffer];
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = PXPixelBufferView;
  [(PXPixelBufferView *)&v9 didMoveToWindow];
  window = [(PXPixelBufferView *)self window];
  if (window)
  {
    window2 = [(PXPixelBufferView *)self window];
    screen = [window2 screen];
    [screen scale];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  layer = [(PXPixelBufferView *)self layer];
  [layer setContentsScale:v7];

  if (window)
  {
  }
}

@end