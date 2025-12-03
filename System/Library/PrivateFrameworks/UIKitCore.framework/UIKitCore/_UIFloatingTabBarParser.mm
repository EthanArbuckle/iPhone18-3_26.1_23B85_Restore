@interface _UIFloatingTabBarParser
- (BOOL)_canDisplayTabInBar:(id)bar;
- (BOOL)containsDescendantOfTab:(_BOOL8)tab;
- (id)_listItemsForTabs:(id)tabs customizableOnly:(BOOL)only;
- (id)_listItemsFromFavoriteOrder;
- (id)_listItemsFromOverrideFavoriteOrder;
- (id)sourceTabIdentifiers;
- (id)validateFavoriteOrder:(id *)order;
- (uint64_t)containsTab:(uint64_t)tab;
- (void)_insertIdentifiersFromItems:(id)items intoSet:(id)set;
- (void)_parseTabs:(id)tabs fixedTabs:(id)fixedTabs sourceTabs:(id)sourceTabs pinnedTabs:(id)pinnedTabs sourceIdentifiers:(id)identifiers;
- (void)currentFavoriteOrder;
- (void)fixedItems;
- (void)invalidateFavorites;
- (void)itemIdentifiers;
- (void)items;
- (void)pinnedItems;
- (void)reloadItems;
- (void)setIgnoredFavoriteOrderItems:(uint64_t)items;
@end

@implementation _UIFloatingTabBarParser

- (void)fixedItems
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      fixedTabs = [self fixedTabs];
      v5 = [selfCopy _listItemsForTabs:fixedTabs customizableOnly:0];
      v6 = selfCopy[1];
      selfCopy[1] = v5;

      v7 = selfCopy[4];
      selfCopy[4] = 0;

      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)pinnedItems
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      pinnedTabs = [self pinnedTabs];
      v5 = [selfCopy _listItemsForTabs:pinnedTabs customizableOnly:0];
      v6 = selfCopy[2];
      selfCopy[2] = v5;

      v7 = selfCopy[4];
      selfCopy[4] = 0;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)items
{
  if (self)
  {
    selfCopy = self;
    v3 = self[3];
    if (v3)
    {
LABEL_9:
      self = v3;
      v1 = vars8;
      goto LABEL_10;
    }

    if (self[8])
    {
      _listItemsFromOverrideFavoriteOrder = [self _listItemsFromOverrideFavoriteOrder];
    }

    else
    {
      favoriteOrder = [self favoriteOrder];

      if (!favoriteOrder)
      {
        sourceTabs = [selfCopy sourceTabs];
        v10 = [selfCopy _listItemsForTabs:sourceTabs customizableOnly:1];
        v11 = selfCopy[3];
        selfCopy[3] = v10;

        goto LABEL_8;
      }

      _listItemsFromOverrideFavoriteOrder = [selfCopy _listItemsFromFavoriteOrder];
    }

    sourceTabs = selfCopy[3];
    selfCopy[3] = _listItemsFromOverrideFavoriteOrder;
LABEL_8:

    v7 = selfCopy[4];
    selfCopy[4] = 0;

    v8 = selfCopy[5];
    selfCopy[5] = 0;

    v3 = selfCopy[3];
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

- (void)currentFavoriteOrder
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[5];
    if (!v2)
    {
      items = [(_UIFloatingTabBarParser *)self items];
      v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(items, "count")}];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = items;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            tabForSelection = [*(*(&v15 + 1) + 8 * v9) tabForSelection];
            identifier = [tabForSelection identifier];

            [v4 addObject:identifier];
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v12 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v4];
      v13 = selfCopy[5];
      selfCopy[5] = v12;

      v2 = selfCopy[5];
    }

    self = v2;
  }

  return self;
}

- (void)setIgnoredFavoriteOrderItems:(uint64_t)items
{
  v9 = a2;
  if (items)
  {
    v3 = *(items + 80);
    v4 = v9;
    v5 = v4;
    if (v3 == v4)
    {
    }

    else
    {
      if (v4 && v3)
      {
        v6 = [v3 isEqual:v4];

        if (v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v7 = [v5 copy];
      v8 = *(items + 80);
      *(items + 80) = v7;

      v3 = *(items + 24);
      *(items + 24) = 0;
    }
  }

LABEL_11:
}

- (id)sourceTabIdentifiers
{
  if (self)
  {
    self = [(_UIFloatingTabBarParser *)self validateFavoriteOrder:?];
    v1 = vars8;
  }

  return self;
}

- (id)validateFavoriteOrder:(id *)order
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (order)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [order[7] tabForIdentifier:v10];
          if (![v11 _hasCustomizablePlacement] || (objc_msgSend(order, "_canDisplayTabInBar:", v11) & 1) == 0)
          {
            if (!v7)
            {
              v7 = [v4 mutableCopy];
            }

            [v7 removeObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v4;
    }

    order = v12;
  }

  return order;
}

- (void)invalidateFavorites
{
  if (self)
  {
    customizationStore = [*(self + 56) customizationStore];
    sourceTabIdentifiers = [(_UIFloatingTabBarParser *)self sourceTabIdentifiers];
    v3 = [customizationStore favoriteOrderForDefaultIdentifiers:sourceTabIdentifiers];
    v4 = *(self + 112);
    *(self + 112) = v3;

    v5 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (void)itemIdentifiers
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x1E695DFA8]);
      fixedItems = [(_UIFloatingTabBarParser *)selfCopy fixedItems];
      v6 = [fixedItems count];
      pinnedItems = [(_UIFloatingTabBarParser *)selfCopy pinnedItems];
      v8 = [pinnedItems count] + v6;
      items = [(_UIFloatingTabBarParser *)selfCopy items];
      v10 = [v4 initWithCapacity:{v8 + objc_msgSend(items, "count")}];

      fixedItems2 = [(_UIFloatingTabBarParser *)selfCopy fixedItems];
      [selfCopy _insertIdentifiersFromItems:fixedItems2 intoSet:v10];

      items2 = [(_UIFloatingTabBarParser *)selfCopy items];
      [selfCopy _insertIdentifiersFromItems:items2 intoSet:v10];

      pinnedItems2 = [(_UIFloatingTabBarParser *)selfCopy pinnedItems];
      [selfCopy _insertIdentifiersFromItems:pinnedItems2 intoSet:v10];

      v14 = [v10 copy];
      v15 = selfCopy[4];
      selfCopy[4] = v14;

      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)containsTab:(uint64_t)tab
{
  v3 = a2;
  if (tab)
  {
    fixedItems = [(_UIFloatingTabBarParser *)tab fixedItems];
    IsRepresentedInListItems = _UITabIsRepresentedInListItems(v3, fixedItems);

    if (IsRepresentedInListItems & 1) != 0 || ([(_UIFloatingTabBarParser *)tab items], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabIsRepresentedInListItems(v3, v6), v6, (v7))
    {
      tab = 1;
    }

    else
    {
      pinnedItems = [(_UIFloatingTabBarParser *)tab pinnedItems];
      tab = _UITabIsRepresentedInListItems(v3, pinnedItems);
    }
  }

  return tab;
}

- (BOOL)containsDescendantOfTab:(_BOOL8)tab
{
  v3 = a2;
  if (tab)
  {
    fixedItems = [(_UIFloatingTabBarParser *)tab fixedItems];
    IsAncestorOfTabsInListItems = _UITabIsAncestorOfTabsInListItems(v3, fixedItems);

    if (IsAncestorOfTabsInListItems || ([(_UIFloatingTabBarParser *)tab items], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabIsAncestorOfTabsInListItems(v3, v6), v6, v7))
    {
      tab = 1;
    }

    else
    {
      pinnedItems = [(_UIFloatingTabBarParser *)tab pinnedItems];
      tab = _UITabIsAncestorOfTabsInListItems(v3, pinnedItems);
    }
  }

  return tab;
}

- (void)reloadItems
{
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    tabItems = [*(self + 56) tabItems];
    v6 = tabItems;
    v7 = MEMORY[0x1E695E0F0];
    if (tabItems)
    {
      v7 = tabItems;
    }

    v8 = v7;

    [self _parseTabs:v8 fixedTabs:v2 sourceTabs:v3 pinnedTabs:v4 sourceIdentifiers:v20];
    v9 = *(self + 88);
    *(self + 88) = v2;
    v10 = v2;

    v11 = *(self + 96);
    *(self + 96) = v3;
    v12 = v3;

    v13 = *(self + 104);
    *(self + 104) = v4;
    v14 = v4;

    v15 = [v20 copy];
    v16 = *(self + 48);
    *(self + 48) = v15;

    v17 = *(self + 8);
    *(self + 8) = 0;

    v18 = *(self + 24);
    *(self + 24) = 0;

    v19 = *(self + 16);
    *(self + 16) = 0;

    [(_UIFloatingTabBarParser *)self invalidateFavorites];
  }
}

- (void)_parseTabs:(id)tabs fixedTabs:(id)fixedTabs sourceTabs:(id)sourceTabs pinnedTabs:(id)pinnedTabs sourceIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  fixedTabsCopy = fixedTabs;
  sourceTabsCopy = sourceTabs;
  pinnedTabsCopy = pinnedTabs;
  identifiersCopy = identifiers;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [tabsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(tabsCopy);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        _tabPlacement = [v20 _tabPlacement];
        if (_tabPlacement > 3)
        {
          if (_tabPlacement == 5)
          {
            v24 = fixedTabsCopy;
          }

          else
          {
            if (_tabPlacement != 4)
            {
              goto LABEL_18;
            }

            v24 = pinnedTabsCopy;
          }

          [v24 addObject:v20];
        }

        else if (_tabPlacement == 1 || _tabPlacement == 3)
        {
          [sourceTabsCopy addObject:v20];
          identifier = [v20 identifier];
          [identifiersCopy addObject:identifier];
        }

LABEL_18:
        if ([v20 _isGroup])
        {
          children = [v20 children];
          [(_UIFloatingTabBarParser *)self _parseTabs:children fixedTabs:fixedTabsCopy sourceTabs:sourceTabsCopy pinnedTabs:pinnedTabsCopy sourceIdentifiers:identifiersCopy];
        }
      }

      v17 = [tabsCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }
}

- (void)_insertIdentifiersFromItems:(id)items intoSet:(id)set
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  setCopy = set;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        tabForSelection = [v11 tabForSelection];

        if (tabForSelection)
        {
          tabForSelection2 = [v11 tabForSelection];
          identifier = [tabForSelection2 identifier];
          [setCopy addObject:identifier];
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)_listItemsForTabs:(id)tabs customizableOnly:(BOOL)only
{
  onlyCopy = only;
  v22 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tabsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = tabsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (-[_UIFloatingTabBarParser _canDisplayTabInBar:](self, "_canDisplayTabInBar:", v13, v17) && (!onlyCopy || [v13 _hasCustomizablePlacement]))
        {
          v14 = [[_UIFloatingTabBarListItem alloc] initWithTab:v13];
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];

  return v15;
}

- (id)_listItemsFromOverrideFavoriteOrder
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  if (self)
  {
    overrideFavoriteOrder = self->_overrideFavoriteOrder;
  }

  else
  {
    overrideFavoriteOrder = 0;
  }

  v5 = [v3 initWithCapacity:{-[NSOrderedSet count](overrideFavoriteOrder, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  if (self)
  {
    v6 = self->_overrideFavoriteOrder;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if (self)
        {
          ignoredFavoriteOrderItems = self->_ignoredFavoriteOrderItems;
        }

        else
        {
          ignoredFavoriteOrderItems = 0;
        }

        if (![(NSSet *)ignoredFavoriteOrderItems containsObject:*(*(&v24 + 1) + 8 * v11), v24])
        {
          v14 = v12;
          v15 = v14;
          if (v14 != @"com.apple.UIKit.TabBar.Placeholder")
          {
            if (v14)
            {
              v16 = [(__CFString *)v14 isEqual:0x1EFB191F0];

              if (!v16)
              {
                goto LABEL_22;
              }

LABEL_18:
              if (self)
              {
                placeholderTab = self->_placeholderTab;
              }

              else
              {
                placeholderTab = 0;
              }

              v18 = [_UIFloatingTabBarListItem placeholderItemForTab:placeholderTab];
              [v5 addObject:v18];
            }

            else
            {

LABEL_22:
              if (self)
              {
                tabModel = self->_tabModel;
              }

              else
              {
                tabModel = 0;
              }

              v18 = [(_UITabModel *)tabModel tabForIdentifier:v15];
              if ([v18 _hasCustomizablePlacement] && -[_UIFloatingTabBarParser _canDisplayTabInBar:](self, "_canDisplayTabInBar:", v18))
              {
                v20 = [[_UIFloatingTabBarListItem alloc] initWithTab:v18];
                [v5 addObject:v20];
              }
            }

            goto LABEL_28;
          }

          goto LABEL_18;
        }

LABEL_28:
        ++v11;
      }

      while (v9 != v11);
      v21 = [(NSOrderedSet *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = v21;
    }

    while (v21);
  }

  v22 = [v5 copy];

  return v22;
}

- (id)_listItemsFromFavoriteOrder
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  favoriteOrder = [(_UIFloatingTabBarParser *)self favoriteOrder];
  v5 = [v3 initWithCapacity:{objc_msgSend(favoriteOrder, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  favoriteOrder2 = [(_UIFloatingTabBarParser *)self favoriteOrder];
  v7 = [favoriteOrder2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(favoriteOrder2);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (self)
        {
          if ([(NSSet *)self->_ignoredFavoriteOrderItems containsObject:*(*(&v18 + 1) + 8 * v10)])
          {
            goto LABEL_13;
          }

          tabModel = self->_tabModel;
        }

        else
        {
          v14 = [0 containsObject:*(*(&v18 + 1) + 8 * v10)];
          tabModel = 0;
          if (v14)
          {
            goto LABEL_13;
          }
        }

        v13 = [(_UITabModel *)tabModel tabForIdentifier:v11];
        if ([v13 _hasCustomizablePlacement] && -[_UIFloatingTabBarParser _canDisplayTabInBar:](self, "_canDisplayTabInBar:", v13))
        {
          [v5 addObject:v13];
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v15 = [favoriteOrder2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v15;
    }

    while (v15);
  }

  v16 = [(_UIFloatingTabBarParser *)self _listItemsForTabs:v5 customizableOnly:1];

  return v16;
}

- (BOOL)_canDisplayTabInBar:(id)bar
{
  barCopy = bar;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  v6 = !-[_UITabModel isTabHidden:](tabModel, "isTabHidden:", barCopy) && [barCopy _tabPlacement] != 6;

  return v6;
}

@end