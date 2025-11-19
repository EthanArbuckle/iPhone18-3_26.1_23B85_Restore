@interface PGPictureInPictureViewControllerClippingView
- (void)_setContinuousCornerRadius:(double)a3;
@end

@implementation PGPictureInPictureViewControllerClippingView

- (void)_setContinuousCornerRadius:(double)a3
{
  if (!self->_ignoreCornerRadiusUpdates)
  {
    v3.receiver = self;
    v3.super_class = PGPictureInPictureViewControllerClippingView;
    [(PGPictureInPictureViewControllerClippingView *)&v3 _setContinuousCornerRadius:a3];
  }
}

@end