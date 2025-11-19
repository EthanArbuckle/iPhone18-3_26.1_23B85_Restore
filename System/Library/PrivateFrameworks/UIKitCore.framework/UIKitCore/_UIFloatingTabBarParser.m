@interface _UIFloatingTabBarParser
- (BOOL)_canDisplayTabInBar:(id)a3;
- (BOOL)containsDescendantOfTab:(_BOOL8)a1;
- (id)_listItemsForTabs:(id)a3 customizableOnly:(BOOL)a4;
- (id)_listItemsFromFavoriteOrder;
- (id)_listItemsFromOverrideFavoriteOrder;
- (id)sourceTabIdentifiers;
- (id)validateFavoriteOrder:(id *)a1;
- (uint64_t)containsTab:(uint64_t)a1;
- (void)_insertIdentifiersFromItems:(id)a3 intoSet:(id)a4;
- (void)_parseTabs:(id)a3 fixedTabs:(id)a4 sourceTabs:(id)a5 pinnedTabs:(id)a6 sourceIdentifiers:(id)a7;
- (void)currentFavoriteOrder;
- (void)fixedItems;
- (void)invalidateFavorites;
- (void)itemIdentifiers;
- (void)items;
- (void)pinnedItems;
- (void)reloadItems;
- (void)setIgnoredFavoriteOrderItems:(uint64_t)a1;
@end

@implementation _UIFloatingTabBarParser

- (void)fixedItems
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (!v3)
    {
      v4 = [a1 fixedTabs];
      v5 = [v2 _listItemsForTabs:v4 customizableOnly:0];
      v6 = v2[1];
      v2[1] = v5;

      v7 = v2[4];
      v2[4] = 0;

      v3 = v2[1];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)pinnedItems
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1 pinnedTabs];
      v5 = [v2 _listItemsForTabs:v4 customizableOnly:0];
      v6 = v2[2];
      v2[2] = v5;

      v7 = v2[4];
      v2[4] = 0;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)items
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (v3)
    {
LABEL_9:
      a1 = v3;
      v1 = vars8;
      goto LABEL_10;
    }

    if (a1[8])
    {
      v4 = [a1 _listItemsFromOverrideFavoriteOrder];
    }

    else
    {
      v5 = [a1 favoriteOrder];

      if (!v5)
      {
        v6 = [v2 sourceTabs];
        v10 = [v2 _listItemsForTabs:v6 customizableOnly:1];
        v11 = v2[3];
        v2[3] = v10;

        goto LABEL_8;
      }

      v4 = [v2 _listItemsFromFavoriteOrder];
    }

    v6 = v2[3];
    v2[3] = v4;
LABEL_8:

    v7 = v2[4];
    v2[4] = 0;

    v8 = v2[5];
    v2[5] = 0;

    v3 = v2[3];
    goto LABEL_9;
  }

LABEL_10:

  return a1;
}

- (void)currentFavoriteOrder
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[5];
    if (!v2)
    {
      v3 = [(_UIFloatingTabBarParser *)a1 items];
      v4 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v3;
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

            v10 = [*(*(&v15 + 1) + 8 * v9) tabForSelection];
            v11 = [v10 identifier];

            [v4 addObject:v11];
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v12 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v4];
      v13 = v1[5];
      v1[5] = v12;

      v2 = v1[5];
    }

    a1 = v2;
  }

  return a1;
}

- (void)setIgnoredFavoriteOrderItems:(uint64_t)a1
{
  v9 = a2;
  if (a1)
  {
    v3 = *(a1 + 80);
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
      v8 = *(a1 + 80);
      *(a1 + 80) = v7;

      v3 = *(a1 + 24);
      *(a1 + 24) = 0;
    }
  }

LABEL_11:
}

- (id)sourceTabIdentifiers
{
  if (a1)
  {
    a1 = [(_UIFloatingTabBarParser *)a1 validateFavoriteOrder:?];
    v1 = vars8;
  }

  return a1;
}

- (id)validateFavoriteOrder:(id *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
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
          v11 = [a1[7] tabForIdentifier:v10];
          if (![v11 _hasCustomizablePlacement] || (objc_msgSend(a1, "_canDisplayTabInBar:", v11) & 1) == 0)
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

    a1 = v12;
  }

  return a1;
}

- (void)invalidateFavorites
{
  if (a1)
  {
    v6 = [*(a1 + 56) customizationStore];
    v2 = [(_UIFloatingTabBarParser *)a1 sourceTabIdentifiers];
    v3 = [v6 favoriteOrderForDefaultIdentifiers:v2];
    v4 = *(a1 + 112);
    *(a1 + 112) = v3;

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (void)itemIdentifiers
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x1E695DFA8]);
      v5 = [(_UIFloatingTabBarParser *)v2 fixedItems];
      v6 = [v5 count];
      v7 = [(_UIFloatingTabBarParser *)v2 pinnedItems];
      v8 = [v7 count] + v6;
      v9 = [(_UIFloatingTabBarParser *)v2 items];
      v10 = [v4 initWithCapacity:{v8 + objc_msgSend(v9, "count")}];

      v11 = [(_UIFloatingTabBarParser *)v2 fixedItems];
      [v2 _insertIdentifiersFromItems:v11 intoSet:v10];

      v12 = [(_UIFloatingTabBarParser *)v2 items];
      [v2 _insertIdentifiersFromItems:v12 intoSet:v10];

      v13 = [(_UIFloatingTabBarParser *)v2 pinnedItems];
      [v2 _insertIdentifiersFromItems:v13 intoSet:v10];

      v14 = [v10 copy];
      v15 = v2[4];
      v2[4] = v14;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)containsTab:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(_UIFloatingTabBarParser *)a1 fixedItems];
    IsRepresentedInListItems = _UITabIsRepresentedInListItems(v3, v4);

    if (IsRepresentedInListItems & 1) != 0 || ([(_UIFloatingTabBarParser *)a1 items], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabIsRepresentedInListItems(v3, v6), v6, (v7))
    {
      a1 = 1;
    }

    else
    {
      v8 = [(_UIFloatingTabBarParser *)a1 pinnedItems];
      a1 = _UITabIsRepresentedInListItems(v3, v8);
    }
  }

  return a1;
}

- (BOOL)containsDescendantOfTab:(_BOOL8)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [(_UIFloatingTabBarParser *)a1 fixedItems];
    IsAncestorOfTabsInListItems = _UITabIsAncestorOfTabsInListItems(v3, v4);

    if (IsAncestorOfTabsInListItems || ([(_UIFloatingTabBarParser *)a1 items], v6 = objc_claimAutoreleasedReturnValue(), v7 = _UITabIsAncestorOfTabsInListItems(v3, v6), v6, v7))
    {
      a1 = 1;
    }

    else
    {
      v8 = [(_UIFloatingTabBarParser *)a1 pinnedItems];
      a1 = _UITabIsAncestorOfTabsInListItems(v3, v8);
    }
  }

  return a1;
}

- (void)reloadItems
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v5 = [*(a1 + 56) tabItems];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    [a1 _parseTabs:v8 fixedTabs:v2 sourceTabs:v3 pinnedTabs:v4 sourceIdentifiers:v20];
    v9 = *(a1 + 88);
    *(a1 + 88) = v2;
    v10 = v2;

    v11 = *(a1 + 96);
    *(a1 + 96) = v3;
    v12 = v3;

    v13 = *(a1 + 104);
    *(a1 + 104) = v4;
    v14 = v4;

    v15 = [v20 copy];
    v16 = *(a1 + 48);
    *(a1 + 48) = v15;

    v17 = *(a1 + 8);
    *(a1 + 8) = 0;

    v18 = *(a1 + 24);
    *(a1 + 24) = 0;

    v19 = *(a1 + 16);
    *(a1 + 16) = 0;

    [(_UIFloatingTabBarParser *)a1 invalidateFavorites];
  }
}

- (void)_parseTabs:(id)a3 fixedTabs:(id)a4 sourceTabs:(id)a5 pinnedTabs:(id)a6 sourceIdentifiers:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = [v20 _tabPlacement];
        if (v21 > 3)
        {
          if (v21 == 5)
          {
            v24 = v12;
          }

          else
          {
            if (v21 != 4)
            {
              goto LABEL_18;
            }

            v24 = v14;
          }

          [v24 addObject:v20];
        }

        else if (v21 == 1 || v21 == 3)
        {
          [v13 addObject:v20];
          v23 = [v20 identifier];
          [v15 addObject:v23];
        }

LABEL_18:
        if ([v20 _isGroup])
        {
          v25 = [v20 children];
          [(_UIFloatingTabBarParser *)self _parseTabs:v25 fixedTabs:v12 sourceTabs:v13 pinnedTabs:v14 sourceIdentifiers:v15];
        }
      }

      v17 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }
}

- (void)_insertIdentifiersFromItems:(id)a3 intoSet:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 tabForSelection];

        if (v12)
        {
          v13 = [v11 tabForSelection];
          v14 = [v13 identifier];
          [v6 addObject:v14];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)_listItemsForTabs:(id)a3 customizableOnly:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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
        if (-[_UIFloatingTabBarParser _canDisplayTabInBar:](self, "_canDisplayTabInBar:", v13, v17) && (!v4 || [v13 _hasCustomizablePlacement]))
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
  v4 = [(_UIFloatingTabBarParser *)self favoriteOrder];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(_UIFloatingTabBarParser *)self favoriteOrder];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
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
      v15 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v8 = v15;
    }

    while (v15);
  }

  v16 = [(_UIFloatingTabBarParser *)self _listItemsForTabs:v5 customizableOnly:1];

  return v16;
}

- (BOOL)_canDisplayTabInBar:(id)a3
{
  v4 = a3;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  v6 = !-[_UITabModel isTabHidden:](tabModel, "isTabHidden:", v4) && [v4 _tabPlacement] != 6;

  return v6;
}

@end