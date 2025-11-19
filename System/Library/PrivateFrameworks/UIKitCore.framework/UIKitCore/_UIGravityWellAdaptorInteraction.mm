@interface _UIGravityWellAdaptorInteraction
- (UIView)view;
@end

@implementation _UIGravityWellAdaptorInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end