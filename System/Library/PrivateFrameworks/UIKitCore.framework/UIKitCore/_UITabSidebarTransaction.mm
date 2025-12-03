@interface _UITabSidebarTransaction
- (BOOL)isTabHidden:(id)hidden;
- (UITabBarControllerSidebar)sidebar;
- (_UITabSidebarTransaction)initWithTabs:(id)tabs sidebar:(id)sidebar;
- (id)_ancestorIdentifierForDescendant:(id)descendant parent:(id)parent;
- (id)_mutableDisplayOrderForGroupIdentifier:(id)identifier;
- (id)currentDisplayOrderForGroupWithIdentifier:(id)identifier;
- (void)_commit;
- (void)_resetDisplayOrderForGroup:(id)group;
- (void)commit;
- (void)resetCustomizationForTabs:(id)tabs;
- (void)updateTab:(id)tab toHidden:(BOOL)hidden;
- (void)updateTabs:(id)tabs;
- (void)updateUsingTransaction:(id)transaction;
@end

@implementation _UITabSidebarTransaction

- (_UITabSidebarTransaction)initWithTabs:(id)tabs sidebar:(id)sidebar
{
  tabsCopy = tabs;
  sidebarCopy = sidebar;
  v19.receiver = self;
  v19.super_class = _UITabSidebarTransaction;
  v8 = [(_UITabSidebarTransaction *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_committed = 0;
    v10 = [tabsCopy mutableCopy];
    tabsByIdentifier = v9->_tabsByIdentifier;
    v9->_tabsByIdentifier = v10;

    objc_storeWeak(&v9->_sidebar, sidebarCopy);
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    tabsBecomingHidden = v9->_tabsBecomingHidden;
    v9->_tabsBecomingHidden = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    tabsBecomingVisible = v9->_tabsBecomingVisible;
    v9->_tabsBecomingVisible = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedDisplayOrderForGroup = v9->_updatedDisplayOrderForGroup;
    v9->_updatedDisplayOrderForGroup = v16;
  }

  return v9;
}

- (void)updateTabs:(id)tabs
{
  v36 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  v5 = [tabsCopy mutableCopy];
  tabsByIdentifier = self->_tabsByIdentifier;
  self->_tabsByIdentifier = v5;

  v7 = [(NSMutableSet *)self->_tabsBecomingVisible mutableCopy];
  v8 = [(NSMutableSet *)self->_tabsBecomingHidden mutableCopy];
  tabsBecomingVisible = self->_tabsBecomingVisible;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39___UITabSidebarTransaction_updateTabs___block_invoke;
  v32[3] = &unk_1E70FB298;
  v10 = tabsCopy;
  v33 = v10;
  v11 = v7;
  v34 = v11;
  [(NSMutableSet *)tabsBecomingVisible enumerateObjectsUsingBlock:v32];
  tabsBecomingHidden = self->_tabsBecomingHidden;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39___UITabSidebarTransaction_updateTabs___block_invoke_2;
  v29[3] = &unk_1E70FB298;
  v13 = v10;
  v30 = v13;
  v14 = v8;
  v31 = v14;
  [(NSMutableSet *)tabsBecomingHidden enumerateObjectsUsingBlock:v29];
  objc_storeStrong(&self->_tabsBecomingVisible, v7);
  objc_storeStrong(&self->_tabsBecomingHidden, v8);
  updatedDisplayOrderForGroup = [(_UITabSidebarTransaction *)self updatedDisplayOrderForGroup];
  allKeys = [updatedDisplayOrderForGroup allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = allKeys;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        v23 = [v13 objectForKey:{v22, v25}];
        v24 = v23;
        if (!v23 || ([v23 _isGroup] & 1) == 0)
        {
          [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup removeObjectForKey:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v19);
  }
}

- (BOOL)isTabHidden:(id)hidden
{
  hiddenCopy = hidden;
  identifier = [hiddenCopy identifier];
  if (([(NSMutableSet *)self->_tabsBecomingHidden containsObject:identifier]& 1) != 0)
  {
    isHidden = 1;
  }

  else if (([(NSMutableSet *)self->_tabsBecomingVisible containsObject:identifier]& 1) != 0)
  {
    isHidden = 0;
  }

  else
  {
    isHidden = [hiddenCopy isHidden];
  }

  return isHidden;
}

- (void)updateTab:(id)tab toHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  tabCopy = tab;
  if ([(_UITabSidebarTransaction *)self isCommitted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:94 description:@"Cannot update a transaction that has already been committed."];
  }

  identifier = [tabCopy identifier];
  if (hiddenCopy)
  {
    if ([(NSMutableSet *)self->_tabsBecomingVisible containsObject:identifier])
    {
      tabsBecomingVisible = self->_tabsBecomingVisible;
LABEL_8:
      [(NSMutableSet *)tabsBecomingVisible removeObject:identifier];
      goto LABEL_14;
    }

    if (([tabCopy isHidden] & 1) == 0)
    {
      tabsBecomingHidden = self->_tabsBecomingHidden;
LABEL_13:
      [(NSMutableSet *)tabsBecomingHidden addObject:identifier];
    }
  }

  else
  {
    if ([(NSMutableSet *)self->_tabsBecomingHidden containsObject:identifier])
    {
      tabsBecomingVisible = self->_tabsBecomingHidden;
      goto LABEL_8;
    }

    if ([tabCopy isHidden])
    {
      tabsBecomingHidden = self->_tabsBecomingVisible;
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)resetCustomizationForTabs:(id)tabs
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___UITabSidebarTransaction_resetCustomizationForTabs___block_invoke;
  v3[3] = &unk_1E710C518;
  v3[4] = self;
  [tabs enumerateObjectsUsingBlock:v3];
}

- (void)_resetDisplayOrderForGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy allowsReordering])
  {
    identifier = [groupCopy identifier];
    v5 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:identifier];

    [v5 removeAllObjects];
  }
}

- (id)currentDisplayOrderForGroupWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup objectForKey:identifier];
  v4 = [v3 copy];

  return v4;
}

- (id)_mutableDisplayOrderForGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup objectForKey:identifierCopy];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    tabsByIdentifier = [(_UITabSidebarTransaction *)self tabsByIdentifier];
    v9 = [tabsByIdentifier objectForKey:identifierCopy];

    if (([v9 _isGroup] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:147 description:{@"Cannot change the display order for a non-group element: %@", v9}];
    }

    _filteredDisplayOrderIdentifiers = [v9 _filteredDisplayOrderIdentifiers];
    v11 = _filteredDisplayOrderIdentifiers;
    if (v7)
    {
      [v7 addObjectsFromArray:_filteredDisplayOrderIdentifiers];
    }

    else
    {
      v7 = [_filteredDisplayOrderIdentifiers mutableCopy];
      [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup setObject:v7 forKey:identifierCopy];
    }
  }

  return v7;
}

- (id)_ancestorIdentifierForDescendant:(id)descendant parent:(id)parent
{
  descendantCopy = descendant;
  parentCopy = parent;
  tabsByIdentifier = [(_UITabSidebarTransaction *)self tabsByIdentifier];
  v9 = [tabsByIdentifier objectForKey:descendantCopy];

  if (v9)
  {
    while (1)
    {
      _parentGroup = [v9 _parentGroup];
      identifier = [_parentGroup identifier];
      identifier2 = [parentCopy identifier];
      v13 = identifier;
      v14 = identifier2;
      v15 = v14;
      if (v13 == v14)
      {
        break;
      }

      if (v13 && v14)
      {
        v16 = [v13 isEqual:v14];

        if (v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      tabsByIdentifier2 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
      _parentGroup2 = [v9 _parentGroup];
      identifier3 = [_parentGroup2 identifier];
      v20 = [tabsByIdentifier2 objectForKey:identifier3];

      v9 = v20;
      if (!v20)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
  identifier4 = [v9 identifier];

  return identifier4;
}

- (void)updateUsingTransaction:(id)transaction
{
  v65 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  if ([(_UITabSidebarTransaction *)self isCommitted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:171 description:@"Cannot update a transaction that has already been committed."];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v40 = transactionCopy;
  obj = [transactionCopy sectionTransactions];
  v43 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v43)
  {
    v42 = *v59;
    do
    {
      v6 = 0;
      do
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v6;
        v7 = *(*(&v58 + 1) + 8 * v6);
        difference = [v7 difference];
        finalSnapshot = [v7 finalSnapshot];
        items = [finalSnapshot items];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = difference;
        removals = [difference removals];
        v11 = [removals countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v55;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v55 != v13)
              {
                objc_enumerationMutation(removals);
              }

              v15 = *(*(&v54 + 1) + 8 * i);
              object = [v15 object];
              tabsByIdentifier = [(_UITabSidebarTransaction *)self tabsByIdentifier];
              v18 = [tabsByIdentifier objectForKey:object];

              _parentGroup = [v18 _parentGroup];
              identifier = [_parentGroup identifier];

              v21 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:identifier];
              object2 = [v15 object];
              [v21 removeObject:object2];
            }

            v12 = [removals countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v12);
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        insertions = [v45 insertions];
        v49 = [insertions countByEnumeratingWithState:&v50 objects:v62 count:16];
        if (v49)
        {
          v47 = *v51;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v51 != v47)
              {
                objc_enumerationMutation(insertions);
              }

              v24 = *(*(&v50 + 1) + 8 * j);
              tabsByIdentifier2 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
              object3 = [v24 object];
              v27 = [tabsByIdentifier2 objectForKey:object3];

              _parentGroup2 = [v27 _parentGroup];
              identifier2 = [_parentGroup2 identifier];
              v30 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:identifier2];

              index = [v24 index];
              if (index >= [items count] - 1)
              {
                v32 = [items objectAtIndex:index - 1];
                v36 = [(_UITabSidebarTransaction *)self _ancestorIdentifierForDescendant:v32 parent:_parentGroup2];
                if (v36)
                {
                  v34 = v36;
                  v35 = [v30 indexOfObject:v36] + 1;
LABEL_25:

                  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_28;
                }
              }

              else
              {
                v32 = [items objectAtIndex:index + 1];
                v33 = [(_UITabSidebarTransaction *)self _ancestorIdentifierForDescendant:v32 parent:_parentGroup2];
                if (v33)
                {
                  v34 = v33;
                  v35 = [v30 indexOfObject:v33];
                  goto LABEL_25;
                }
              }

LABEL_28:
              index2 = [v24 index];
              if (index2 >= [v24 associatedIndex])
              {
                v35 = [v30 count];
              }

              else
              {
                v35 = 0;
              }

LABEL_31:
              object4 = [v24 object];
              [v30 insertObject:object4 atIndex:v35];
            }

            v49 = [insertions countByEnumeratingWithState:&v50 objects:v62 count:16];
          }

          while (v49);
        }

        v6 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v43);
  }
}

- (void)commit
{
  if ([(_UITabSidebarTransaction *)self isCommitted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:231 description:@"Cannot commit a transaction that has already been committed."];
  }

  [(_UITabSidebarTransaction *)self setCommitted:1];
  sidebar = [(_UITabSidebarTransaction *)self sidebar];
  v5 = sidebar;
  if (!sidebar)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = *(sidebar + 40);
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = *(v6 + 150);
LABEL_6:
  v9 = v8;

  customizationStore = [v9 customizationStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34___UITabSidebarTransaction_commit__block_invoke;
  v13[3] = &unk_1E70F3590;
  v13[4] = self;
  [customizationStore performWithoutSavingCustomization:v13];
  tabItems = [v9 tabItems];
  [customizationStore saveCustomizationForTabs:tabItems];
}

- (void)_commit
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  tabsBecomingHidden = [(_UITabSidebarTransaction *)self tabsBecomingHidden];
  v6 = [tabsBecomingHidden count];
  tabsBecomingVisible = [(_UITabSidebarTransaction *)self tabsBecomingVisible];
  v8 = [v4 initWithCapacity:{objc_msgSend(tabsBecomingVisible, "count") + v6}];

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39 = 0u;
  tabsBecomingVisible2 = [(_UITabSidebarTransaction *)self tabsBecomingVisible];
  v10 = [tabsBecomingVisible2 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(tabsBecomingVisible2);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        tabsByIdentifier = [(_UITabSidebarTransaction *)self tabsByIdentifier];
        v16 = [tabsByIdentifier objectForKey:v14];

        [v16 setHidden:0];
        [v8 addObject:v16];
      }

      v11 = [tabsBecomingVisible2 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  tabsBecomingHidden2 = [(_UITabSidebarTransaction *)self tabsBecomingHidden];
  v18 = [tabsBecomingHidden2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(tabsBecomingHidden2);
        }

        v22 = *(*(&v35 + 1) + 8 * j);
        tabsByIdentifier2 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
        v24 = [tabsByIdentifier2 objectForKey:v22];

        [v24 setHidden:1];
        [v8 addObject:v24];
      }

      v19 = [tabsBecomingHidden2 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v19);
  }

  sidebar = [(_UITabSidebarTransaction *)self sidebar];
  v26 = sidebar;
  if (sidebar)
  {
    v27 = *(sidebar + 40);
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if ([v8 count])
  {
    v29 = [v8 copy];
    [(UITabBarController *)v28 _notifyVisibilityChangesForTabs:v29];
  }

  updatedDisplayOrderForGroup = [(_UITabSidebarTransaction *)self updatedDisplayOrderForGroup];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35___UITabSidebarTransaction__commit__block_invoke;
  v32[3] = &unk_1E710C540;
  v33 = v28;
  v34 = a2;
  v32[4] = self;
  v31 = v28;
  [updatedDisplayOrderForGroup enumerateKeysAndObjectsUsingBlock:v32];
}

- (UITabBarControllerSidebar)sidebar
{
  WeakRetained = objc_loadWeakRetained(&self->_sidebar);

  return WeakRetained;
}

@end