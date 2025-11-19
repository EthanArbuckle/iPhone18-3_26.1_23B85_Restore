@interface VKCLookupButton
- (VKCLookupButtonDelegate)delegate;
@end

@implementation VKCLookupButton

- (VKCLookupButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end