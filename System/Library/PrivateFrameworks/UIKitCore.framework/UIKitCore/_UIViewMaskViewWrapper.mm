@interface _UIViewMaskViewWrapper
- (UIView)maskView;
@end

@implementation _UIViewMaskViewWrapper

- (UIView)maskView
{
  WeakRetained = objc_loadWeakRetained(&self->_maskView);

  return WeakRetained;
}

@end