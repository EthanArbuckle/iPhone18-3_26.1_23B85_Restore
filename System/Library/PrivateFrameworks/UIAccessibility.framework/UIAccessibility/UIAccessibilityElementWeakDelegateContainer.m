@interface UIAccessibilityElementWeakDelegateContainer
- (id)delegate;
@end

@implementation UIAccessibilityElementWeakDelegateContainer

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end