@interface _UIFloatingTabBarCustomizationProxy
- (BOOL)canInsertFavoriteTab:(id)a3;
- (void)insertFavoriteTab:(id)a3;
- (void)removeFavoriteTab:(id)a3;
@end

@implementation _UIFloatingTabBarCustomizationProxy

- (BOOL)canInsertFavoriteTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
  if ([WeakRetained isEditing])
  {
    v6 = [v4 _tabModel];
    v7 = [WeakRetained tabModel];
    if (v6 == v7 && [WeakRetained _canDragTab:v4])
    {
      v8 = [WeakRetained tabModel];
      v9 = [v8 isTabHidden:v4] ^ 1;
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

- (void)insertFavoriteTab:(id)a3
{
  v7 = a3;
  if ([(_UIFloatingTabBarCustomizationProxy *)self canInsertFavoriteTab:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
    v5 = [WeakRetained dragController];
    v6 = [v7 identifier];
    [v5 insertTabForIdentifier:v6];
  }
}

- (void)removeFavoriteTab:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);
  v5 = [WeakRetained dragController];
  v6 = [v4 identifier];

  [v5 removeTabForIdentifier:v6];
}

@end