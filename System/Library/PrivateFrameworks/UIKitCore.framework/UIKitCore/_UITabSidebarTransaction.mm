@interface _UITabSidebarTransaction
- (BOOL)isTabHidden:(id)a3;
- (UITabBarControllerSidebar)sidebar;
- (_UITabSidebarTransaction)initWithTabs:(id)a3 sidebar:(id)a4;
- (id)_ancestorIdentifierForDescendant:(id)a3 parent:(id)a4;
- (id)_mutableDisplayOrderForGroupIdentifier:(id)a3;
- (id)currentDisplayOrderForGroupWithIdentifier:(id)a3;
- (void)_commit;
- (void)_resetDisplayOrderForGroup:(id)a3;
- (void)commit;
- (void)resetCustomizationForTabs:(id)a3;
- (void)updateTab:(id)a3 toHidden:(BOOL)a4;
- (void)updateTabs:(id)a3;
- (void)updateUsingTransaction:(id)a3;
@end

@implementation _UITabSidebarTransaction

- (_UITabSidebarTransaction)initWithTabs:(id)a3 sidebar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = _UITabSidebarTransaction;
  v8 = [(_UITabSidebarTransaction *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_committed = 0;
    v10 = [v6 mutableCopy];
    tabsByIdentifier = v9->_tabsByIdentifier;
    v9->_tabsByIdentifier = v10;

    objc_storeWeak(&v9->_sidebar, v7);
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

- (void)updateTabs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mutableCopy];
  tabsByIdentifier = self->_tabsByIdentifier;
  self->_tabsByIdentifier = v5;

  v7 = [(NSMutableSet *)self->_tabsBecomingVisible mutableCopy];
  v8 = [(NSMutableSet *)self->_tabsBecomingHidden mutableCopy];
  tabsBecomingVisible = self->_tabsBecomingVisible;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39___UITabSidebarTransaction_updateTabs___block_invoke;
  v32[3] = &unk_1E70FB298;
  v10 = v4;
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
  v15 = [(_UITabSidebarTransaction *)self updatedDisplayOrderForGroup];
  v16 = [v15 allKeys];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = v16;
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

- (BOOL)isTabHidden:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if (([(NSMutableSet *)self->_tabsBecomingHidden containsObject:v5]& 1) != 0)
  {
    v6 = 1;
  }

  else if (([(NSMutableSet *)self->_tabsBecomingVisible containsObject:v5]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 isHidden];
  }

  return v6;
}

- (void)updateTab:(id)a3 toHidden:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  if ([(_UITabSidebarTransaction *)self isCommitted])
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:94 description:@"Cannot update a transaction that has already been committed."];
  }

  v7 = [v11 identifier];
  if (v4)
  {
    if ([(NSMutableSet *)self->_tabsBecomingVisible containsObject:v7])
    {
      tabsBecomingVisible = self->_tabsBecomingVisible;
LABEL_8:
      [(NSMutableSet *)tabsBecomingVisible removeObject:v7];
      goto LABEL_14;
    }

    if (([v11 isHidden] & 1) == 0)
    {
      tabsBecomingHidden = self->_tabsBecomingHidden;
LABEL_13:
      [(NSMutableSet *)tabsBecomingHidden addObject:v7];
    }
  }

  else
  {
    if ([(NSMutableSet *)self->_tabsBecomingHidden containsObject:v7])
    {
      tabsBecomingVisible = self->_tabsBecomingHidden;
      goto LABEL_8;
    }

    if ([v11 isHidden])
    {
      tabsBecomingHidden = self->_tabsBecomingVisible;
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)resetCustomizationForTabs:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54___UITabSidebarTransaction_resetCustomizationForTabs___block_invoke;
  v3[3] = &unk_1E710C518;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

- (void)_resetDisplayOrderForGroup:(id)a3
{
  v6 = a3;
  if ([v6 allowsReordering])
  {
    v4 = [v6 identifier];
    v5 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:v4];

    [v5 removeAllObjects];
  }
}

- (id)currentDisplayOrderForGroupWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)_mutableDisplayOrderForGroupIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup objectForKey:v5];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v8 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
    v9 = [v8 objectForKey:v5];

    if (([v9 _isGroup] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:147 description:{@"Cannot change the display order for a non-group element: %@", v9}];
    }

    v10 = [v9 _filteredDisplayOrderIdentifiers];
    v11 = v10;
    if (v7)
    {
      [v7 addObjectsFromArray:v10];
    }

    else
    {
      v7 = [v10 mutableCopy];
      [(NSMutableDictionary *)self->_updatedDisplayOrderForGroup setObject:v7 forKey:v5];
    }
  }

  return v7;
}

- (id)_ancestorIdentifierForDescendant:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    while (1)
    {
      v10 = [v9 _parentGroup];
      v11 = [v10 identifier];
      v12 = [v7 identifier];
      v13 = v11;
      v14 = v12;
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

      v17 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
      v18 = [v9 _parentGroup];
      v19 = [v18 identifier];
      v20 = [v17 objectForKey:v19];

      v9 = v20;
      if (!v20)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
  v21 = [v9 identifier];

  return v21;
}

- (void)updateUsingTransaction:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(_UITabSidebarTransaction *)self isCommitted])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:171 description:@"Cannot update a transaction that has already been committed."];
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v40 = v5;
  obj = [v5 sectionTransactions];
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
        v8 = [v7 difference];
        v9 = [v7 finalSnapshot];
        v10 = [v9 items];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = v8;
        v48 = [v8 removals];
        v11 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
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
                objc_enumerationMutation(v48);
              }

              v15 = *(*(&v54 + 1) + 8 * i);
              v16 = [v15 object];
              v17 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
              v18 = [v17 objectForKey:v16];

              v19 = [v18 _parentGroup];
              v20 = [v19 identifier];

              v21 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:v20];
              v22 = [v15 object];
              [v21 removeObject:v22];
            }

            v12 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
          }

          while (v12);
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v46 = [v45 insertions];
        v49 = [v46 countByEnumeratingWithState:&v50 objects:v62 count:16];
        if (v49)
        {
          v47 = *v51;
          do
          {
            for (j = 0; j != v49; j = j + 1)
            {
              if (*v51 != v47)
              {
                objc_enumerationMutation(v46);
              }

              v24 = *(*(&v50 + 1) + 8 * j);
              v25 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
              v26 = [v24 object];
              v27 = [v25 objectForKey:v26];

              v28 = [v27 _parentGroup];
              v29 = [v28 identifier];
              v30 = [(_UITabSidebarTransaction *)self _mutableDisplayOrderForGroupIdentifier:v29];

              v31 = [v24 index];
              if (v31 >= [v10 count] - 1)
              {
                v32 = [v10 objectAtIndex:v31 - 1];
                v36 = [(_UITabSidebarTransaction *)self _ancestorIdentifierForDescendant:v32 parent:v28];
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
                v32 = [v10 objectAtIndex:v31 + 1];
                v33 = [(_UITabSidebarTransaction *)self _ancestorIdentifierForDescendant:v32 parent:v28];
                if (v33)
                {
                  v34 = v33;
                  v35 = [v30 indexOfObject:v33];
                  goto LABEL_25;
                }
              }

LABEL_28:
              v37 = [v24 index];
              if (v37 >= [v24 associatedIndex])
              {
                v35 = [v30 count];
              }

              else
              {
                v35 = 0;
              }

LABEL_31:
              v38 = [v24 object];
              [v30 insertObject:v38 atIndex:v35];
            }

            v49 = [v46 countByEnumeratingWithState:&v50 objects:v62 count:16];
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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITabSidebarTransaction.m" lineNumber:231 description:@"Cannot commit a transaction that has already been committed."];
  }

  [(_UITabSidebarTransaction *)self setCommitted:1];
  v4 = [(_UITabSidebarTransaction *)self sidebar];
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = *(v4 + 40);
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

  v10 = [v9 customizationStore];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34___UITabSidebarTransaction_commit__block_invoke;
  v13[3] = &unk_1E70F3590;
  v13[4] = self;
  [v10 performWithoutSavingCustomization:v13];
  v11 = [v9 tabItems];
  [v10 saveCustomizationForTabs:v11];
}

- (void)_commit
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [(_UITabSidebarTransaction *)self tabsBecomingHidden];
  v6 = [v5 count];
  v7 = [(_UITabSidebarTransaction *)self tabsBecomingVisible];
  v8 = [v4 initWithCapacity:{objc_msgSend(v7, "count") + v6}];

  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v39 = 0u;
  v9 = [(_UITabSidebarTransaction *)self tabsBecomingVisible];
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
        v16 = [v15 objectForKey:v14];

        [v16 setHidden:0];
        [v8 addObject:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [(_UITabSidebarTransaction *)self tabsBecomingHidden];
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * j);
        v23 = [(_UITabSidebarTransaction *)self tabsByIdentifier];
        v24 = [v23 objectForKey:v22];

        [v24 setHidden:1];
        [v8 addObject:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v19);
  }

  v25 = [(_UITabSidebarTransaction *)self sidebar];
  v26 = v25;
  if (v25)
  {
    v27 = *(v25 + 40);
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

  v30 = [(_UITabSidebarTransaction *)self updatedDisplayOrderForGroup];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __35___UITabSidebarTransaction__commit__block_invoke;
  v32[3] = &unk_1E710C540;
  v33 = v28;
  v34 = a2;
  v32[4] = self;
  v31 = v28;
  [v30 enumerateKeysAndObjectsUsingBlock:v32];
}

- (UITabBarControllerSidebar)sidebar
{
  WeakRetained = objc_loadWeakRetained(&self->_sidebar);

  return WeakRetained;
}

@end