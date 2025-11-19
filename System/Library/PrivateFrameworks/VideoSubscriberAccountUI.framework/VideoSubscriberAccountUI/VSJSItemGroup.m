@interface VSJSItemGroup
- (int64_t)selectedItem;
- (void)setSelectedItem:(int64_t)a3;
@end

@implementation VSJSItemGroup

- (void)setSelectedItem:(int64_t)a3
{
  self->_selectedItem = a3;
  v4 = [(VSJSItemGroup *)self bridge];
  [v4 setJSSelectedItem:a3];
}

- (int64_t)selectedItem
{
  v2 = [(VSJSItemGroup *)self bridge];
  v3 = [v2 jsSelectedItem];

  return v3;
}

@end