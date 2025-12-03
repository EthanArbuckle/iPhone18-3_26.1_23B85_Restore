@interface _SBFluidSwitcherSheetMetricsView
- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)frame inSuperview:(id)superview;
- (UIEdgeInsets)overrideSafeAreaInsets;
@end

@implementation _SBFluidSwitcherSheetMetricsView

- (UIEdgeInsets)_safeAreaInsetsForFrame:(CGRect)frame inSuperview:(id)superview
{
  top = self->_overrideSafeAreaInsets.top;
  left = self->_overrideSafeAreaInsets.left;
  bottom = self->_overrideSafeAreaInsets.bottom;
  right = self->_overrideSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)overrideSafeAreaInsets
{
  top = self->_overrideSafeAreaInsets.top;
  left = self->_overrideSafeAreaInsets.left;
  bottom = self->_overrideSafeAreaInsets.bottom;
  right = self->_overrideSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end