@interface UITabBarItemProxy
- (UITabBarItemProxy)initWithItem:(id)item inTabBar:(id)bar;
@end

@implementation UITabBarItemProxy

- (UITabBarItemProxy)initWithItem:(id)item inTabBar:(id)bar
{
  itemCopy = item;
  barCopy = bar;
  v17.receiver = self;
  v17.super_class = UITabBarItemProxy;
  v9 = [(UITabBarItemProxy *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, item);
    v11 = [itemCopy _createViewForTabBar:barCopy asProxyView:1];
    view = v10->_view;
    v10->_view = v11;

    traitCollection = [barCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
    {
      item = v10->_item;
      if (item)
      {
        objc_storeWeak(&item->_changeObserver, barCopy);
      }
    }
  }

  return v10;
}

@end