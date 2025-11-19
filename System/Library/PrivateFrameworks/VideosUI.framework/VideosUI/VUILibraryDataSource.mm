@interface VUILibraryDataSource
- (VUILibraryDataSourceDelegate)delegate;
@end

@implementation VUILibraryDataSource

- (VUILibraryDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end