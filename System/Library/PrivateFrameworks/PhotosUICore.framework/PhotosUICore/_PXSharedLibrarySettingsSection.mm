@interface _PXSharedLibrarySettingsSection
- (void)addItemWithConfigurationHandler:(id)handler;
@end

@implementation _PXSharedLibrarySettingsSection

- (void)addItemWithConfigurationHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_items)
  {
    v4 = objc_opt_new();
    items = self->_items;
    self->_items = v4;
  }

  v6 = objc_opt_new();
  handlerCopy[2](handlerCopy, v6);
  [(NSMutableArray *)self->_items addObject:v6];
}

@end