@interface _UIImageViewOverlayView
- (_UIImageViewOverlayViewDelegate)overlayViewDelegate;
- (void)setClipsToBounds:(BOOL)a3;
@end

@implementation _UIImageViewOverlayView

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIImageViewOverlayView;
  [(UIView *)&v6 setClipsToBounds:?];
  v5 = [(_UIImageViewOverlayView *)self overlayViewDelegate];
  [v5 overlayView:self didChangeClipsToBounds:v3];
}

- (_UIImageViewOverlayViewDelegate)overlayViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayViewDelegate);

  return WeakRetained;
}

@end