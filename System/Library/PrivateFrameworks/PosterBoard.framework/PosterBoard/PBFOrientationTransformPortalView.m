@interface PBFOrientationTransformPortalView
- (void)setPortalView:(id)a3;
@end

@implementation PBFOrientationTransformPortalView

- (void)setPortalView:(id)a3
{
  v5 = a3;
  portalView = self->_portalView;
  if (portalView != v5)
  {
    v7 = v5;
    [(_UIPortalView *)portalView removeFromSuperview];
    objc_storeStrong(&self->_portalView, a3);
    [(BSUIOrientationTransformWrapperView *)self addContentView:v7];
    [(PBFOrientationTransformPortalView *)self invalidateIntrinsicContentSize];
    [(PBFOrientationTransformPortalView *)self setNeedsLayout];
    v5 = v7;
  }
}

@end