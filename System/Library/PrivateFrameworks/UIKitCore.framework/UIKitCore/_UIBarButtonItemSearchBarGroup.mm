@interface _UIBarButtonItemSearchBarGroup
- (BOOL)_viewNeedsWrapper;
- (_UIBarButtonItemSearchBarGroup)initWithBarButtonItems:(id)items representativeItem:(id)item;
- (id)searchBar;
- (id)searchItem;
- (uint64_t)_setDisabledExpansion:(uint64_t)result;
- (void)_checkInstanceVariables;
- (void)_setSearchBarShouldBeFlexible:(uint64_t)flexible;
- (void)setBarButtonItems:(id)items;
- (void)setHidden:(BOOL)hidden;
- (void)setProvidesRestingMeasurementValues:(uint64_t)values;
- (void)setRepresentativeItem:(id)item;
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
  if (self)
  {
    _items = [self _items];
    if ([_items count] >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__checkInstanceVariables object:self file:@"_UIBarButtonItemSearchBarGroup.m" lineNumber:29 description:{@"Too many items assigned to a _UIBarButtonItemSearchBarGroup. Fix this. self = %@", self}];
    }

    WeakRetained = objc_loadWeakRetained(self + 15);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = objc_loadWeakRetained(self + 15);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__checkInstanceVariables object:self file:@"_UIBarButtonItemSearchBarGroup.m" lineNumber:30 description:{@"_UIBarButtonItemSearchBarGroup's item's view must be a UISearchBar. Fix this. self = %@", self}];
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

- (_UIBarButtonItemSearchBarGroup)initWithBarButtonItems:(id)items representativeItem:(id)item
{
  v6.receiver = self;
  v6.super_class = _UIBarButtonItemSearchBarGroup;
  v4 = [(UIBarButtonItemGroup *)&v6 initWithBarButtonItems:items representativeItem:item];
  [(_UIBarButtonItemSearchBarGroup *)&v4->super.super.isa _checkInstanceVariables];
  [(UIBarButtonItemGroup *)v4 _setRequiresOwnSection:1];
  return v4;
}

- (void)setBarButtonItems:(id)items
{
  v8.receiver = self;
  v8.super_class = _UIBarButtonItemSearchBarGroup;
  itemsCopy = items;
  [(UIBarButtonItemGroup *)&v8 setBarButtonItems:itemsCopy];
  firstObject = [itemsCopy firstObject];

  objc_storeWeak(&self->_searchItem, firstObject);
  WeakRetained = objc_loadWeakRetained(&self->_searchItem);
  view = [WeakRetained view];
  objc_storeWeak(&self->_searchBar, view);

  [(_UIBarButtonItemSearchBarGroup *)&self->super.super.isa _checkInstanceVariables];
}

- (void)setRepresentativeItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v5.receiver = self;
    v5.super_class = _UIBarButtonItemSearchBarGroup;
    [(UIBarButtonItemGroup *)&v5 setRepresentativeItem:itemCopy];
    objc_storeWeak(&self->_searchIconItem, itemCopy);
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

- (void)setProvidesRestingMeasurementValues:(uint64_t)values
{
  if (values)
  {
    WeakRetained = objc_loadWeakRetained((values + 120));
    [WeakRetained _setProvidesRestingMeasurementValues:a2];

    if (a2)
    {
      representativeItem = [values representativeItem];
      *(values + 88) = representativeItem != 0;

      if ((*(values + 88) & 1) == 0)
      {
        v6 = objc_loadWeakRetained((values + 128));
        v7 = v6;
        if (v6)
        {
          _searchIconBarButtonItem = v6;
        }

        else
        {
          v12 = objc_loadWeakRetained((values + 120));
          _searchIconBarButtonItem = [v12 _searchIconBarButtonItem];
        }

        v17.receiver = values;
        v17.super_class = _UIBarButtonItemSearchBarGroup;
        objc_msgSendSuper2(&v17, sel_setRepresentativeItem_, _searchIconBarButtonItem);
        v11 = objc_loadWeakRetained((values + 120));
        [v11 _idealInlineWidthForLayoutState:2];
        v14 = v13;
        v15 = objc_loadWeakRetained((values + 112));
        [v15 _setWidth:v14];

        goto LABEL_10;
      }
    }

    else if ((*(values + 88) & 1) == 0)
    {
      v16.receiver = values;
      v16.super_class = _UIBarButtonItemSearchBarGroup;
      objc_msgSendSuper2(&v16, sel_setRepresentativeItem_, 0);
      _searchIconBarButtonItem = objc_loadWeakRetained((values + 120));
      [_searchIconBarButtonItem _idealInlineWidthForLayoutState:3];
      v10 = v9;
      v11 = objc_loadWeakRetained((values + 112));
      [v11 _setWidth:v10];
LABEL_10:
    }

    *(values + 104) = a2;
  }
}

- (void)_setSearchBarShouldBeFlexible:(uint64_t)flexible
{
  if (flexible)
  {
    WeakRetained = objc_loadWeakRetained((flexible + 120));
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
    view = [v4 view];
    window = [view window];
    if (window)
    {
      v7 = 0;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_searchBar);
      superview = [v8 superview];
      v7 = superview == 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = _UIBarButtonItemSearchBarGroup;
  [(UIBarButtonItemGroup *)&v5 setHidden:?];
  if (hiddenCopy)
  {
    self->_disabledExpansion = 0;
  }
}

@end