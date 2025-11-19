@interface UITabSidebarItemRequest
- (UICollectionViewListCell)_cell;
- (id)_initWithAction:(id)a3 cell:(id)a4;
- (id)_initWithTab:(id)a3 cell:(id)a4 attributes:(unint64_t)a5;
@end

@implementation UITabSidebarItemRequest

- (id)_initWithTab:(id)a3 cell:(id)a4 attributes:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = UITabSidebarItemRequest;
  v11 = [(UITabSidebarItemRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tab, a3);
    objc_storeWeak(&v12->_cell, v10);
    v12->_attributes = a5;
  }

  return v12;
}

- (id)_initWithAction:(id)a3 cell:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UITabSidebarItemRequest;
  v9 = [(UITabSidebarItemRequest *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_action, a3);
    objc_storeWeak(p_isa + 1, v8);
  }

  return p_isa;
}

- (UICollectionViewListCell)_cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end