@interface _UIIntrinsicContentSizeInvalidationForwardingWrapperView
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
@end

@implementation _UIIntrinsicContentSizeInvalidationForwardingWrapperView

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  viewCopy = view;
  superview = [(UIView *)self superview];
  [superview _intrinsicContentSizeInvalidatedForChildView:viewCopy];
}

@end