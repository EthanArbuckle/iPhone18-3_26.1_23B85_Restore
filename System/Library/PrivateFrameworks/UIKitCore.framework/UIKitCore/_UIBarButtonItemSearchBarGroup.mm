@interface _UIBarButtonItemSearchBarGroup
- (BOOL)_viewNeedsWrapper;
- (_UIBarButtonItemSearchBarGroup)initWithBarButtonItems:(id)a3 representativeItem:(id)a4;
- (id)searchBar;
- (id)searchItem;
- (uint64_t)_setDisabledExpansion:(uint64_t)result;
- (void)_checkInstanceVariables;
- (void)_setSearchBarShouldBeFlexible:(uint64_t)a1;
- (void)setBarButtonItems:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setProvidesRestingMeasurementValues:(uint64_t)a1;
- (void)setRepresentativeItem:(id)a3;
@end

@implementation _UIBarButtonItemSearchBarGroup

- (id)searchItem
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_checkInstanceVariables
{
  if (a1)
  {
    v8 = [a1 _items];
    if ([v8 count] >= 2)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel__checkInstanceVariables object:a1 file:@"_UIBarButtonItemSearchBarGroup.m" lineNumber:29 description:{@"Too many items assigned to a _UIBarButtonItemSearchBarGroup. Fix this. self = %@", a1}];
    }

    WeakRetained = objc_loadWeakRetained(a1 + 15);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = objc_loadWeakRetained(a1 + 15);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:sel__checkInstanceVariables object:a1 file:@"_UIBarButtonItemSearchBarGroup.m" lineNumber:30 description:{@"_UIBarButtonItemSearchBarGroup's item's view must be a UISearchBar. Fix this. self = %@", a1}];
      }
    }
  }
}

- (id)searchBar
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 15);
    v1 = vars8;
  }

  return WeakRetained;
}

- (_UIBarButtonItemSearchBarGroup)initWithBarButtonItems:(id)a3 representativeItem:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIBarButtonItemSearchBarGroup;
  v4 = [(UIBarButtonItemGroup *)&v6 initWithBarButtonItems:a3 representativeItem:a4];
  [(_UIBarButtonItemSearchBarGroup *)&v4->super.super.isa _checkInstanceVariables];
  [(UIBarButtonItemGroup *)v4 _setRequiresOwnSection:1];
  return v4;
}

- (void)setBarButtonItems:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIBarButtonItemSearchBarGroup;
  v4 = a3;
  [(UIBarButtonItemGroup *)&v8 setBarButtonItems:v4];
  v5 = [v4 firstObject];

  objc_storeWeak(&self->_searchItem, v5);
  WeakRetained = objc_loadWeakRetained(&self->_searchItem);
  v7 = [WeakRetained view];
  objc_storeWeak(&self->_searchBar, v7);

  [(_UIBarButtonItemSearchBarGroup *)&self->super.super.isa _checkInstanceVariables];
}

- (void)setRepresentativeItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5.receiver = self;
    v5.super_class = _UIBarButtonItemSearchBarGroup;
    [(UIBarButtonItemGroup *)&v5 setRepresentativeItem:v4];
    objc_storeWeak(&self->_searchIconItem, v4);
  }

  else if (self->_providesRestingMeasurementValues)
  {
    self->_hadRepresentativeItemBeforeMovingToProvisionalState = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIBarButtonItemSearchBarGroup;
    [(UIBarButtonItemGroup *)&v5 setRepresentativeItem:0];
  }
}

- (void)setProvidesRestingMeasurementValues:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained _setProvidesRestingMeasurementValues:a2];

    if (a2)
    {
      v5 = [a1 representativeItem];
      *(a1 + 88) = v5 != 0;

      if ((*(a1 + 88) & 1) == 0)
      {
        v6 = objc_loadWeakRetained((a1 + 128));
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v12 = objc_loadWeakRetained((a1 + 120));
          v8 = [v12 _searchIconBarButtonItem];
        }

        v17.receiver = a1;
        v17.super_class = _UIBarButtonItemSearchBarGroup;
        objc_msgSendSuper2(&v17, sel_setRepresentativeItem_, v8);
        v11 = objc_loadWeakRetained((a1 + 120));
        [v11 _idealInlineWidthForLayoutState:2];
        v14 = v13;
        v15 = objc_loadWeakRetained((a1 + 112));
        [v15 _setWidth:v14];

        goto LABEL_10;
      }
    }

    else if ((*(a1 + 88) & 1) == 0)
    {
      v16.receiver = a1;
      v16.super_class = _UIBarButtonItemSearchBarGroup;
      objc_msgSendSuper2(&v16, sel_setRepresentativeItem_, 0);
      v8 = objc_loadWeakRetained((a1 + 120));
      [v8 _idealInlineWidthForLayoutState:3];
      v10 = v9;
      v11 = objc_loadWeakRetained((a1 + 112));
      [v11 _setWidth:v10];
LABEL_10:
    }

    *(a1 + 104) = a2;
  }
}

- (void)_setSearchBarShouldBeFlexible:(uint64_t)a1
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 120));
    [WeakRetained _setNavigationBarWantsFlexibleInlineSearch:a2];
  }
}

- (uint64_t)_setDisabledExpansion:(uint64_t)result
{
  if (result)
  {
    *(result + 89) = a2;
  }

  return result;
}

- (BOOL)_viewNeedsWrapper
{
  WeakRetained = objc_loadWeakRetained(&self->_searchBar);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_searchIconItem);
    v5 = [v4 view];
    v6 = [v5 window];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_searchBar);
      v9 = [v8 superview];
      v7 = v9 == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIBarButtonItemSearchBarGroup;
  [(UIBarButtonItemGroup *)&v5 setHidden:?];
  if (v3)
  {
    self->_disabledExpansion = 0;
  }
}

@end