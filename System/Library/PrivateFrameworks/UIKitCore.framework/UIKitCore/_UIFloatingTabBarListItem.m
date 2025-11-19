@interface _UIFloatingTabBarListItem
+ (id)placeholderItemForTab:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UITab)contentTab;
- (_UIFloatingTabBarListItem)initWithTab:(id)a3;
@end

@implementation _UIFloatingTabBarListItem

- (_UIFloatingTabBarListItem)initWithTab:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UIFloatingTabBarListItem;
  v6 = [(_UIFloatingTabBarListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabForSelection, a3);
  }

  return v7;
}

+ (id)placeholderItemForTab:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIFloatingTabBarListItem);
  v4->_isPlaceholder = 1;
  contentTab = v4->_contentTab;
  v4->_contentTab = v3;

  return v4;
}

- (UITab)contentTab
{
  contentTab = self->_contentTab;
  if (!contentTab)
  {
    contentTab = self->_tabForSelection;
  }

  return contentTab;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_tabForSelection == self->_tabForSelection && v4->_contentTab == self->_contentTab && v4->_isPlaceholder == self->_isPlaceholder;
  }

  return v5;
}

@end