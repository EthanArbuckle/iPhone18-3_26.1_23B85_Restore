@interface UITabBarItemProxy
- (UITabBarItemProxy)initWithItem:(id)a3 inTabBar:(id)a4;
@end

@implementation UITabBarItemProxy

- (UITabBarItemProxy)initWithItem:(id)a3 inTabBar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = UITabBarItemProxy;
  v9 = [(UITabBarItemProxy *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_item, a3);
    v11 = [v7 _createViewForTabBar:v8 asProxyView:1];
    view = v10->_view;
    v10->_view = v11;

    v13 = [v8 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 6)
    {
      item = v10->_item;
      if (item)
      {
        objc_storeWeak(&item->_changeObserver, v8);
      }
    }
  }

  return v10;
}

@end