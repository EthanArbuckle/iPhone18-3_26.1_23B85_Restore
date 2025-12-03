@interface PBFOrientationTransformPortalView
- (void)setPortalView:(id)view;
@end

@implementation PBFOrientationTransformPortalView

- (void)setPortalView:(id)view
{
  viewCopy = view;
  portalView = self->_portalView;
  if (portalView != viewCopy)
  {
    v7 = viewCopy;
    [(_UIPortalView *)portalView removeFromSuperview];
    objc_storeStrong(&self->_portalView, view);
    [(BSUIOrientationTransformWrapperView *)self addContentView:v7];
    [(PBFOrientationTransformPortalView *)self invalidateIntrinsicContentSize];
    [(PBFOrientationTransformPortalView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

@end