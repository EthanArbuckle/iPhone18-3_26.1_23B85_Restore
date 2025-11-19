@interface _PXSharedLibrarySettingsSection
- (void)addItemWithConfigurationHandler:(id)a3;
@end

@implementation _PXSharedLibrarySettingsSection

- (void)addItemWithConfigurationHandler:(id)a3
{
  v7 = a3;
  if (!self->_items)
  {
    v4 = objc_opt_new();
    items = self->_items;
    self->_items = v4;
  }

  v6 = objc_opt_new();
  v7[2](v7, v6);
  [(NSMutableArray *)self->_items addObject:v6];
}

@end