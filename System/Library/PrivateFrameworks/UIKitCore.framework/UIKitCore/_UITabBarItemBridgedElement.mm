@interface _UITabBarItemBridgedElement
- (BOOL)isEnabled;
- (BOOL)isSelected;
- (BOOL)isSpringLoaded;
- (UIEdgeInsets)imageInsetsForStyle:(int64_t)style state:(int64_t)state;
- (_UITabBarItemBridgedElement)initWithViewController:(id)controller;
- (id)accessibilityAttributedLabel;
- (id)accessibilityIdentifier;
- (id)badgeForStyle:(int64_t)style state:(int64_t)state;
- (id)badgeValue;
- (id)imageForStyle:(int64_t)style state:(int64_t)state;
- (id)scrollEdgeAppearance;
- (id)standardAppearance;
- (id)title;
- (id)titleForStyle:(int64_t)style state:(int64_t)state;
- (int64_t)preferredPlacement;
- (void)_reloadTabBarItem;
- (void)_setBridgedTabBarItem:(id)item;
- (void)_tabDataProviderContentDidChange:(id)change;
@end

@implementation _UITabBarItemBridgedElement

- (int64_t)preferredPlacement
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  preferredPlacement = [tabBarItem preferredPlacement];

  return preferredPlacement;
}

- (id)badgeValue
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  badgeValue = [tabBarItem badgeValue];

  return badgeValue;
}

- (id)title
{
  v2 = [(_UITabBarItemBridgedElement *)self titleForStyle:1 state:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = v4;

  return v4;
}

- (_UITabBarItemBridgedElement)initWithViewController:(id)controller
{
  controllerCopy = controller;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v13.receiver = self;
  v13.super_class = _UITabBarItemBridgedElement;
  v7 = [(_UITabElement *)&v13 initWithIdentifier:uUIDString title:&stru_1EFB14550 image:0];

  if (v7)
  {
    tabBarItem = [controllerCopy tabBarItem];
    tabBarItem = v7->_tabBarItem;
    v7->_tabBarItem = tabBarItem;

    v10 = v7->_tabBarItem;
    if (v10)
    {
      objc_storeWeak(&v10->_changeObserver, v7);
      v11 = v7->_tabBarItem;
    }

    else
    {
      v11 = 0;
    }

    [(UITabBarItem *)v11 set_fallbackSourceItem:v7];
    [(_UITabElement *)v7 _setViewController:controllerCopy];
  }

  return v7;
}

- (void)_reloadTabBarItem
{
  _viewController = [(_UITabElement *)self _viewController];
  tabBarItem = [_viewController tabBarItem];

  [(_UITabBarItemBridgedElement *)self _setBridgedTabBarItem:tabBarItem];
}

- (void)_setBridgedTabBarItem:(id)item
{
  itemCopy = item;
  tabBarItem = self->_tabBarItem;
  if (tabBarItem != itemCopy)
  {
    v12 = itemCopy;
    _changeObserver = [(UITabBarItem *)&tabBarItem->super.super.isa _changeObserver];

    if (_changeObserver == self)
    {
      v8 = self->_tabBarItem;
      if (v8)
      {
        objc_storeWeak(&v8->_changeObserver, 0);
        v9 = self->_tabBarItem;
      }

      else
      {
        v9 = 0;
      }

      [(UITabBarItem *)v9 set_fallbackSourceItem:?];
    }

    objc_storeStrong(&self->_tabBarItem, item);
    v10 = self->_tabBarItem;
    if (v10)
    {
      objc_storeWeak(&v10->_changeObserver, self);
      v11 = self->_tabBarItem;
    }

    else
    {
      v11 = 0;
    }

    [(UITabBarItem *)v11 set_fallbackSourceItem:?];
    itemCopy = v12;
  }
}

- (BOOL)isEnabled
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  isEnabled = [tabBarItem isEnabled];

  return isEnabled;
}

- (BOOL)isSelected
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  isSelected = [tabBarItem isSelected];

  return isSelected;
}

- (BOOL)isSpringLoaded
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  isSpringLoaded = [tabBarItem isSpringLoaded];

  return isSpringLoaded;
}

- (id)titleForStyle:(int64_t)style state:(int64_t)state
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [tabBarItem titleForStyle:style state:state];

  return v7;
}

- (id)badgeForStyle:(int64_t)style state:(int64_t)state
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [tabBarItem badgeForStyle:style state:state];

  return v7;
}

- (id)imageForStyle:(int64_t)style state:(int64_t)state
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [tabBarItem imageForStyle:style state:state];

  return v7;
}

- (UIEdgeInsets)imageInsetsForStyle:(int64_t)style state:(int64_t)state
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  [tabBarItem imageInsetsForStyle:style state:state];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)standardAppearance
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  standardAppearance = [tabBarItem standardAppearance];

  return standardAppearance;
}

- (id)scrollEdgeAppearance
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  scrollEdgeAppearance = [tabBarItem scrollEdgeAppearance];

  return scrollEdgeAppearance;
}

- (void)_tabDataProviderContentDidChange:(id)change
{
  _tabModel = [(UITab *)self _tabModel];
  [_tabModel tabContentDidChange:self];
}

- (id)accessibilityIdentifier
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  accessibilityIdentifier = [tabBarItem accessibilityIdentifier];

  return accessibilityIdentifier;
}

- (id)accessibilityAttributedLabel
{
  tabBarItem = [(_UITabBarItemBridgedElement *)self tabBarItem];
  accessibilityAttributedLabel = [tabBarItem accessibilityAttributedLabel];

  return accessibilityAttributedLabel;
}

@end