@interface _UIFloatingTabBarCustomizationProxy
- (BOOL)canInsertFavoriteTab:(id)tab;
- (void)insertFavoriteTab:(id)tab;
- (void)removeFavoriteTab:(id)tab;
@end

@implementation _UIFloatingTabBarCustomizationProxy

- (BOOL)canInsertFavoriteTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
  if ([WeakRetained isEditing])
  {
    _tabModel = [tabCopy _tabModel];
    tabModel = [WeakRetained tabModel];
    if (_tabModel == tabModel && [WeakRetained _canDragTab:tabCopy])
    {
      tabModel2 = [WeakRetained tabModel];
      v9 = [tabModel2 isTabHidden:tabCopy] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)insertFavoriteTab:(id)tab
{
  tabCopy = tab;
  if ([(_UIFloatingTabBarCustomizationProxy *)self canInsertFavoriteTab:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
    dragController = [WeakRetained dragController];
    identifier = [tabCopy identifier];
    [dragController insertTabForIdentifier:identifier];
  }
}

- (void)removeFavoriteTab:(id)tab
{
  tabCopy = tab;
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
  dragController = [WeakRetained dragController];
  identifier = [tabCopy identifier];

  [dragController removeTabForIdentifier:identifier];
}

@end