@interface UITabSidebarItemRequest
- (UICollectionViewListCell)_cell;
- (id)_initWithAction:(id)action cell:(id)cell;
- (id)_initWithTab:(id)tab cell:(id)cell attributes:(unint64_t)attributes;
@end

@implementation UITabSidebarItemRequest

- (id)_initWithTab:(id)tab cell:(id)cell attributes:(unint64_t)attributes
{
  tabCopy = tab;
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = UITabSidebarItemRequest;
  v11 = [(UITabSidebarItemRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tab, tab);
    objc_storeWeak(&v12->_cell, cellCopy);
    v12->_attributes = attributes;
  }

  return v12;
}

- (id)_initWithAction:(id)action cell:(id)cell
{
  actionCopy = action;
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = UITabSidebarItemRequest;
  v9 = [(UITabSidebarItemRequest *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    objc_storeWeak(p_isa + 1, cellCopy);
  }

  return p_isa;
}

- (UICollectionViewListCell)_cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end