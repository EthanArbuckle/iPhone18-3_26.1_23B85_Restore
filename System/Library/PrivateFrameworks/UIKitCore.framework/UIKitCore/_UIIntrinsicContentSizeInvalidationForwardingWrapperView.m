@interface _UIIntrinsicContentSizeInvalidationForwardingWrapperView
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
@end

@implementation _UIIntrinsicContentSizeInvalidationForwardingWrapperView

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self superview];
  [v5 _intrinsicContentSizeInvalidatedForChildView:v4];
}

@end