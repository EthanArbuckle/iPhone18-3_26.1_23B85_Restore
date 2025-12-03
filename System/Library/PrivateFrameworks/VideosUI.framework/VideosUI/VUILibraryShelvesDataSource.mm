@interface VUILibraryShelvesDataSource
- (VUILibraryShelvesDataSource)initWithValidShelfTypes:(id)types;
- (VUIShelvesDataSourceDelegate)shelvesDelegate;
@end

@implementation VUILibraryShelvesDataSource

- (VUILibraryShelvesDataSource)initWithValidShelfTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = VUILibraryShelvesDataSource;
  v6 = [(VUILibraryShelvesDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shelfTypes, types);
  }

  return v7;
}

- (VUIShelvesDataSourceDelegate)shelvesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shelvesDelegate);

  return WeakRetained;
}

@end