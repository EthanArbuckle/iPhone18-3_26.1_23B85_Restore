@interface _UIFloatingTabBarListItem
+ (id)placeholderItemForTab:(id)tab;
- (BOOL)isEqual:(id)equal;
- (UITab)contentTab;
- (_UIFloatingTabBarListItem)initWithTab:(id)tab;
@end

@implementation _UIFloatingTabBarListItem

- (_UIFloatingTabBarListItem)initWithTab:(id)tab
{
  tabCopy = tab;
  v9.receiver = self;
  v9.super_class = _UIFloatingTabBarListItem;
  v6 = [(_UIFloatingTabBarListItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabForSelection, tab);
  }

  return v7;
}

+ (id)placeholderItemForTab:(id)tab
{
  tabCopy = tab;
  v4 = objc_alloc_init(_UIFloatingTabBarListItem);
  v4->_isPlaceholder = 1;
  contentTab = v4->_contentTab;
  v4->_contentTab = tabCopy;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_tabForSelection == self->_tabForSelection && equalCopy->_contentTab == self->_contentTab && equalCopy->_isPlaceholder == self->_isPlaceholder;
  }

  return v5;
}

@end