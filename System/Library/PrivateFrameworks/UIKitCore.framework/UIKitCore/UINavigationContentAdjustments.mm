@interface UINavigationContentAdjustments
- (UIEdgeInsets)insetAdjustment;
- (UIScrollView)adjustedScrollView;
@end

@implementation UINavigationContentAdjustments

- (UIEdgeInsets)insetAdjustment
{
  top = self->_insetAdjustment.top;
  left = self->_insetAdjustment.left;
  bottom = self->_insetAdjustment.bottom;
  right = self->_insetAdjustment.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIScrollView)adjustedScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_adjustedScrollView);

  return WeakRetained;
}

@end