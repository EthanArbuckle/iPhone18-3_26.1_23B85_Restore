@interface _UIImageViewOverlayView
- (_UIImageViewOverlayViewDelegate)overlayViewDelegate;
- (void)setClipsToBounds:(BOOL)bounds;
@end

@implementation _UIImageViewOverlayView

- (void)setClipsToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  v6.receiver = self;
  v6.super_class = _UIImageViewOverlayView;
  [(UIView *)&v6 setClipsToBounds:?];
  overlayViewDelegate = [(_UIImageViewOverlayView *)self overlayViewDelegate];
  [overlayViewDelegate overlayView:self didChangeClipsToBounds:boundsCopy];
}

- (_UIImageViewOverlayViewDelegate)overlayViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayViewDelegate);

  return WeakRetained;
}

@end