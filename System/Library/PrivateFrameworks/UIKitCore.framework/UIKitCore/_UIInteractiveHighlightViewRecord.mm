@interface _UIInteractiveHighlightViewRecord
- (UIView)superview;
- (UIView)view;
@end

@implementation _UIInteractiveHighlightViewRecord

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIView)superview
{
  WeakRetained = objc_loadWeakRetained(&self->_superview);

  return WeakRetained;
}

@end