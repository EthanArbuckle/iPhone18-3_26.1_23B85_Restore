@interface PGPictureInPictureViewControllerClippingView
- (void)_setContinuousCornerRadius:(double)radius;
@end

@implementation PGPictureInPictureViewControllerClippingView

- (void)_setContinuousCornerRadius:(double)radius
{
  if (!self->_ignoreCornerRadiusUpdates)
  {
    v3.receiver = self;
    v3.super_class = PGPictureInPictureViewControllerClippingView;
    [(PGPictureInPictureViewControllerClippingView *)&v3 _setContinuousCornerRadius:radius];
  }
}

@end