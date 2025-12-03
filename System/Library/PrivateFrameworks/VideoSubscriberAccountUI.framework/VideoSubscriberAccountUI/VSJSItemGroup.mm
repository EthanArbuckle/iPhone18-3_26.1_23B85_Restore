@interface VSJSItemGroup
- (int64_t)selectedItem;
- (void)setSelectedItem:(int64_t)item;
@end

@implementation VSJSItemGroup

- (void)setSelectedItem:(int64_t)item
{
  self->_selectedItem = item;
  bridge = [(VSJSItemGroup *)self bridge];
  [bridge setJSSelectedItem:item];
}

- (int64_t)selectedItem
{
  bridge = [(VSJSItemGroup *)self bridge];
  jsSelectedItem = [bridge jsSelectedItem];

  return jsSelectedItem;
}

@end