@interface _TVRelatedWrappingView
- (UIView)relatedView;
@end

@implementation _TVRelatedWrappingView

- (UIView)relatedView
{
  WeakRetained = objc_loadWeakRetained(&self->_relatedView);

  return WeakRetained;
}

@end