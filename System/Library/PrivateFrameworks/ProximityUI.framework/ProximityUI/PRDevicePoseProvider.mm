@interface PRDevicePoseProvider
- (PRDevicePoseProviderDelegate)delegate;
@end

@implementation PRDevicePoseProvider

- (PRDevicePoseProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end