@interface PPConnectionsSource
- (PPConnectionsLocationSourceDelegate)delegate;
@end

@implementation PPConnectionsSource

- (PPConnectionsLocationSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end