@interface UITabGroup
- (BOOL)_canBeReordered;
- (BOOL)_canReorderChild:(id)a3;
- (BOOL)_isCustomizable;
- (BOOL)_setDisplayOrderIdentifiers:(id)a3;
- (NSArray)displayOrder;
- (UITabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 children:(id)a6 viewControllerProvider:(id)a7;
- (id)_defaultChildForSelection;
- (id)_displayedViewController;
- (id)_existingDisplayedViewController;
- (id)_filteredDisplayOrderIdentifiers;
- (id)_orderedChildrenForDisplayOrder:(id)a3;
- (id)_selectedTabHierarchy;
- (id)managingTabGroup;
- (id)tabForIdentifier:(id)a3;
- (void)_didChangeTabModel:(id)a3;
- (void)_elementsDidChange;
- (void)_invalidateDisplayOrder;
- (void)_performWithoutUpdatingManagingNavigationController:(id)a3;
- (void)_registerManagingNavigationTraitsIfNeeded;
- (void)_selectElement:(id)a3 notifyOnReselection:(BOOL)a4 performBeforeNotifyingDelegate:(id)a5;
- (void)_selectedElementDidChange;
- (void)_updateDescriptionWithBuilder:(id)a3 recursive:(BOOL)a4;
- (void)_updateForManagingNavigationStackChange;
- (void)_updateManagingNavigationStackUsingTransition:(unint64_t)a3 isExplicit:(BOOL)a4;
- (void)_validateSelectedElement;
- (void)setAllowsReordering:(BOOL)a3;
- (void)setChildren:(id)a3;
- (void)setIsSidebarDestination:(BOOL)a3;
- (void)setManagingNavigationController:(id)a3;
- (void)setSelectedChild:(id)a3;
- (void)setSidebarAppearance:(unint64_t)a3;
@end

@implementation UITabGroup

- (id)_existingDisplayedViewController
{
  v3 = [(UITabGroup *)self managingNavigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabGroup;
    v5 = [(UITab *)&v8 _existingDisplayedViewController];
  }

  v6 = v5;

  return v6;
}

- (void)_invalidateDisplayOrder
{
  displayOrder = self->_displayOrder;
  self->_displayOrder = 0;
}

- (void)_validateSelectedElement
{
  v3 = [(UITabGroup *)self selectedChild];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 parent];

    if (v5 != self)
    {
      children = self->_children;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__UITabGroup__validateSelectedElement__block_invoke;
      v9[3] = &unk_1E7101F18;
      v7 = v4;
      v10 = v7;
      v8 = [(NSArray *)children indexOfObjectPassingTest:v9];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(UITabGroup *)self _defaultChildForSelection];
      }

      else
      {
        [(NSArray *)self->_children objectAtIndex:v8];
      }
      v4 = ;

      [(UITabGroup *)self setSelectedChild:v4];
    }
  }
}

- (void)_elementsDidChange
{
  v3 = [(UITab *)self _tabModel];
  [v3 elementsDidChangeForGroup:self];
}

- (id)_displayedViewController
{
  v3 = [(UITabGroup *)self managingNavigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabGroup;
    v5 = [(UITab *)&v8 _displayedViewController];
  }

  v6 = v5;

  return v6;
}

- (void)_registerManagingNavigationTraitsIfNeeded
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!self->_sizeClassTraitRegistration)
  {
    v3 = [(UITab *)self tabBarController];
    v4 = objc_opt_self();
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [v3 registerForTraitChanges:v5 withTarget:self action:sel__updateManagingNavigationStackFromTraitUpdate];
    sizeClassTraitRegistration = self->_sizeClassTraitRegistration;
    self->_sizeClassTraitRegistration = v6;
  }
}

- (BOOL)_isCustomizable
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v8.receiver = self;
  v8.super_class = UITabGroup;
  v12 = [(UITab *)&v8 _isCustomizable];
  if ((v10[3] & 1) != 0 || (v3 = [(UITabGroup *)self allowsReordering], (*(v10 + 24) = v3) != 0))
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UITabGroup *)self children];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29__UITabGroup__isCustomizable__block_invoke;
    v7[3] = &unk_1E71057F8;
    v7[4] = &v9;
    [v5 enumerateObjectsUsingBlock:v7];

    v4 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  return v4 & 1;
}

- (UITabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 children:(id)a6 viewControllerProvider:(id)a7
{
  v12 = a6;
  v20.receiver = self;
  v20.super_class = UITabGroup;
  v13 = [(UITab *)&v20 initWithTitle:a3 image:a4 identifier:a5 viewControllerProvider:a7];
  v14 = v13;
  if (v13)
  {
    children = v13->_children;
    v16 = MEMORY[0x1E695E0F0];
    v13->_children = MEMORY[0x1E695E0F0];

    displayOrderIdentifiers = v14->_displayOrderIdentifiers;
    v14->_displayOrderIdentifiers = v16;

    sidebarActions = v14->_sidebarActions;
    v14->_sidebarActions = v16;

    [(UITabGroup *)v14 setChildren:v12];
  }

  return v14;
}

- (void)setSelectedChild:(id)a3
{
  v5 = a3;
  if (self->_selectedChild != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedChild, a3);
    [(UITabGroup *)self _selectedElementDidChange];
    v5 = v6;
  }
}

- (void)setChildren:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"children"}];
  }

  v6 = [v5 differenceFromArray:self->_children withOptions:0 usingEquivalenceTest:&__block_literal_global_175];
  if ([v6 hasChanges])
  {
    v60 = a2;
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v8 = [v6 removals];
    v9 = [v8 countByEnumeratingWithState:&v85 objects:v94 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v86;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v86 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v85 + 1) + 8 * i) object];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v85 objects:v94 count:16];
      }

      while (v10);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v14 = [v6 insertions];
    v15 = [v14 countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v82;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v82 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v81 + 1) + 8 * j) object];
          [v7 removeObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v16);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v20 = v7;
    v21 = [v20 countByEnumeratingWithState:&v77 objects:v92 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v78;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v78 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v77 + 1) + 8 * k);
          v26 = [v25 parent];

          if (v26 == self)
          {
            [v25 _setParent:0];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v77 objects:v92 count:16];
      }

      while (v22);
    }

    v61 = v20;
    v62 = v6;

    v27 = [v5 copy];
    children = self->_children;
    self->_children = v27;

    [MEMORY[0x1E695DF90] dictionary];
    v64 = v63 = v5;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v29 = v5;
    v30 = [v29 countByEnumeratingWithState:&v73 objects:v91 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v74;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v74 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v73 + 1) + 8 * m);
          v35 = [v34 parent];
          v36 = v35;
          if (v35)
          {
            v37 = v35 == self;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v38 = [(UITab *)v35 identifier];
            v39 = [v64 objectForKey:v38];

            if (!v39)
            {
              v39 = [MEMORY[0x1E695DFA8] set];
              v40 = [(UITab *)v36 identifier];
              [v64 setObject:v39 forKey:v40];
            }

            [v39 addObject:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v73 objects:v91 count:16];
      }

      while (v31);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v41 = [v64 objectEnumerator];
    v42 = [v41 countByEnumeratingWithState:&v69 objects:v90 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v70;
      do
      {
        for (n = 0; n != v43; ++n)
        {
          if (*v70 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v69 + 1) + 8 * n);
          v47 = [v46 anyObject];
          v48 = [v47 parent];

          v49 = [v48 children];
          v50 = [v49 mutableCopy];

          v51 = [v46 allObjects];
          [v50 removeObjectsInArray:v51];

          [v48 setChildren:v50];
        }

        v43 = [v41 countByEnumeratingWithState:&v69 objects:v90 count:16];
      }

      while (v43);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = v29;
    v53 = [v52 countByEnumeratingWithState:&v65 objects:v89 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v66;
      do
      {
        for (ii = 0; ii != v54; ++ii)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v65 + 1) + 8 * ii);
          if ([v57 _isUniquelySPI])
          {
            v58 = [MEMORY[0x1E696AAA8] currentHandler];
            [v58 handleFailureInMethod:v60 object:self file:@"UITabGroup.m" lineNumber:109 description:@"Cannot add _UITab objects to a UITabGroup. Please use UITab directly."];
          }

          [v57 _setParent:self];
        }

        v54 = [v52 countByEnumeratingWithState:&v65 objects:v89 count:16];
      }

      while (v54);
    }

    [(UITabGroup *)self _invalidateDisplayOrder];
    [(UITabGroup *)self _elementsDidChange];
    [(UITabGroup *)self _validateSelectedElement];

    v6 = v62;
    v5 = v63;
  }
}

- (void)setIsSidebarDestination:(BOOL)a3
{
  if (self->_isSidebarDestination != a3)
  {
    self->_isSidebarDestination = a3;
    [(UITabGroup *)self _validateSelectedElement];
  }
}

- (NSArray)displayOrder
{
  displayOrder = self->_displayOrder;
  if (!displayOrder)
  {
    v4 = [(UITabGroup *)self _orderedChildrenForDisplayOrder:0];
    v5 = self->_displayOrder;
    self->_displayOrder = v4;

    displayOrder = self->_displayOrder;
  }

  return displayOrder;
}

- (void)setAllowsReordering:(BOOL)a3
{
  if (self->_allowsReordering != a3)
  {
    self->_allowsReordering = a3;
    [(UITab *)self _customizabilityDidChange];
  }
}

- (void)setSidebarAppearance:(unint64_t)a3
{
  if (self->_sidebarAppearance != a3)
  {
    self->_sidebarAppearance = a3;
    [(UITabGroup *)self _elementsDidChange];
  }
}

- (id)tabForIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(UITabGroup *)self children];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = *v17;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        v13 = v10;
      }

      else
      {
        if (![v10 _isGroup])
        {
          continue;
        }

        v13 = [v10 tabForIdentifier:v4];
      }

      v14 = v13;
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (id)managingTabGroup
{
  v3 = [(UITab *)self parent];
  v4 = [v3 managingTabGroup];

  if (!v4)
  {
    v4 = [(UITabGroup *)self managingNavigationController];

    if (v4)
    {
      v4 = self;
    }
  }

  return v4;
}

- (void)setManagingNavigationController:(id)a3
{
  v5 = a3;
  if (self->_managingNavigationController != v5)
  {
    v11 = v5;
    v6 = [(UITabGroup *)self _displayedViewController];
    v7 = [(UINavigationController *)self->_managingNavigationController _managedTabGroup];

    if (v7 == self)
    {
      [(UINavigationController *)self->_managingNavigationController _setManagedTabGroup:0];
    }

    objc_storeStrong(&self->_managingNavigationController, a3);
    v8 = [(UITabGroup *)self _displayedViewController];

    if (v8 != v6)
    {
      [(UITab *)self _updateLinkedTabBarItem];
      v9 = [(UITab *)self tabBarController];
      [(UITabBarController *)v9 _displayedViewControllerDidChangeForTab:v6 previousViewController:?];
    }

    v10 = [(UINavigationController *)v11 _managedTabGroup];

    if (v10)
    {
      [(UINavigationController *)v11 _setManagedTabGroup:0];
    }

    [(UINavigationController *)v11 _setManagedTabGroup:self];
    [(UITabGroup *)self _registerManagingNavigationTraitsIfNeeded];
    [(UITabGroup *)self _updateManagingNavigationStackUsingTransition:0 isExplicit:0];

    v5 = v11;
  }
}

- (void)_updateManagingNavigationStackUsingTransition:(unint64_t)a3 isExplicit:(BOOL)a4
{
  v4 = a4;
  v107 = *MEMORY[0x1E69E9840];
  v73 = [(UITab *)self tabBarController];
  if (v73 && !self->_isUpdatingManagedNavigationController)
  {
    v7 = [(UITabGroup *)self managingNavigationController];
    if (v7)
    {
      v8 = [(UITab *)self parent];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          v10 = [v9 managingNavigationController];

          if (v10)
          {
            break;
          }

          v11 = [v9 parent];

          v9 = v11;
          if (!v11)
          {
            goto LABEL_8;
          }
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke;
        block[3] = &unk_1E70F35B8;
        v99 = v9;
        v100 = self;
        v57 = _MergedGlobals_1_7;
        obj = v9;
        if (v57 != -1)
        {
          dispatch_once(&_MergedGlobals_1_7, block);
        }
      }

      else
      {
LABEL_8:
        v63 = a3;
        v64 = self;
        v12 = [(UITabGroup *)self _selectedTabHierarchy];
        v65 = v7;
        v67 = [v7 viewControllers];
        v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
        v14 = [v73 traitCollection];
        v66 = [v14 horizontalSizeClass];

        v15 = [MEMORY[0x1E695DFA8] set];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        obj = v12;
        v76 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (v76)
        {
          v74 = *v95;
          v16 = !v4;
          if (v66 == 2)
          {
            v16 = 1;
          }

          v71 = v16;
          do
          {
            for (i = 0; i != v76; ++i)
            {
              if (*v95 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v94 + 1) + 8 * i);
              v19 = [v18 _displayedViewControllers];
              v20 = v19;
              if ((v71 & 1) == 0 && [v19 count])
              {
                v21 = [v20 objectAtIndex:0];
                v22 = [v67 containsObject:v21];

                if ((v22 & 1) == 0)
                {
                  [v18 _resetViewController];
                }

                v23 = [v18 _displayedViewControllers];

                v20 = v23;
              }

              v24 = [(UITabBarController *)v73 _displayedViewControllersForTab:v18 proposedViewControllers:v20];
              v25 = v24;
              if (v24)
              {
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v26 = [v24 countByEnumeratingWithState:&v90 objects:v105 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v91;
                  do
                  {
                    for (j = 0; j != v27; ++j)
                    {
                      if (*v91 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v30 = *(*(&v90 + 1) + 8 * j);
                      if ([v13 containsObject:v30])
                      {
                        v31 = v15;
                      }

                      else
                      {
                        v31 = v13;
                      }

                      [v31 addObject:v30];
                    }

                    v27 = [v25 countByEnumeratingWithState:&v90 objects:v105 count:16];
                  }

                  while (v27);
                }
              }

              [v18 _setDisplayedViewControllers:v25];
            }

            v76 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
          }

          while (v76);
        }

        if ([v15 count])
        {
          v77 = [MEMORY[0x1E696AD60] string];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v68 = obj;
          v72 = [v68 countByEnumeratingWithState:&v86 objects:v104 count:16];
          if (v72)
          {
            v70 = *v87;
            do
            {
              v32 = 0;
              do
              {
                if (*v87 != v70)
                {
                  objc_enumerationMutation(v68);
                }

                v75 = v32;
                v33 = *(*(&v86 + 1) + 8 * v32);
                v34 = objc_opt_class();
                v35 = [v33 title];
                v36 = [v33 identifier];
                [v77 appendFormat:@"<%@: %p, title='%@', identifier='%@'>\n", v34, v33, v35, v36];

                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                v37 = [v33 _displayedViewControllers];
                v38 = [v37 countByEnumeratingWithState:&v82 objects:v103 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v83;
                  do
                  {
                    for (k = 0; k != v39; ++k)
                    {
                      if (*v83 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v82 + 1) + 8 * k);
                      if ([v15 containsObject:v42])
                      {
                        if (v42)
                        {
                          v43 = MEMORY[0x1E696AEC0];
                          v44 = v42;
                          v45 = objc_opt_class();
                          v46 = NSStringFromClass(v45);
                          v47 = [v43 stringWithFormat:@"<%@: %p>", v46, v44];
                        }

                        else
                        {
                          v47 = @"(nil)";
                        }

                        [v77 appendFormat:@"\t%@ (DUPLICATE)\n", v47];
                      }

                      else
                      {
                        if (v42)
                        {
                          v48 = MEMORY[0x1E696AEC0];
                          v49 = v42;
                          v50 = objc_opt_class();
                          v51 = NSStringFromClass(v50);
                          v47 = [v48 stringWithFormat:@"<%@: %p>", v51, v49];
                        }

                        else
                        {
                          v47 = @"(nil)";
                        }

                        [v77 appendFormat:@"\t%@\n", v47];
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v82 objects:v103 count:16];
                  }

                  while (v39);
                }

                v32 = v75 + 1;
              }

              while (v75 + 1 != v72);
              v72 = [v68 countByEnumeratingWithState:&v86 objects:v104 count:16];
            }

            while (v72);
          }

          if (os_variant_has_internal_diagnostics())
          {
            v62 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v102 = v77;
              _os_log_fault_impl(&dword_188A29000, v62, OS_LOG_TYPE_FAULT, "All view controllers in the selected hierarchy must have distinct view controllers. Found duplicates:\n%@", buf, 0xCu);
            }
          }

          else
          {
            v52 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499258) + 8);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v102 = v77;
              _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "All view controllers in the selected hierarchy must have distinct view controllers. Found duplicates:\n%@", buf, 0xCu);
            }
          }
        }

        if (v63)
        {
          v7 = v65;
          if ([v13 count])
          {
            v53 = +[UIView areAnimationsEnabled];
          }

          else
          {
            v53 = 0;
          }
        }

        else
        {
          v53 = 0;
          v7 = v65;
        }

        v59 = v63 == 2 && v66 == 2;
        [v7 _setWantsTabCrossfadeTransition:v59];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke_33;
        v78[3] = &unk_1E70F5AF0;
        v60 = v7;
        v79 = v60;
        v80 = v13;
        v81 = v53;
        v61 = v13;
        [(UITabGroup *)v64 _performWithoutUpdatingManagingNavigationController:v78];
        [v60 _setWantsTabCrossfadeTransition:0];
      }
    }

    else
    {
      v54 = [(UITabGroup *)self selectedChild];
      v55 = [v54 _isGroup];

      if (v55)
      {
        v56 = [(UITabGroup *)self selectedChild];
        [v56 _updateManagingNavigationStackUsingTransition:a3 isExplicit:v4];
      }
    }
  }
}

void __71__UITabGroup__updateManagingNavigationStackUsingTransition_isExplicit___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("UITab", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_6) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = [*(a1 + 40) identifier];
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UITabGroup.managingNavigationController does not supported nesting. The managingNavigationController from the rootmost UITabGroup (%@) will be used, and the nested one (%@) will be ignored.", &v7, 0x16u);
  }
}

- (void)_updateForManagingNavigationStackChange
{
  v66 = *MEMORY[0x1E69E9840];
  if (!self->_isUpdatingManagedNavigationController)
  {
    v2 = [(UITabGroup *)self managingNavigationController];
    v41 = [v2 viewControllers];

    v3 = [(UITabGroup *)self _selectedTabHierarchy];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0x7FFFFFFFFFFFFFFFLL;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__64;
    v59 = __Block_byref_object_dispose__64;
    v60 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_37;
    v50[3] = &unk_1E71057D0;
    v39 = v3;
    v51 = v39;
    v52 = &__block_literal_global_36;
    v53 = &v55;
    v54 = &v61;
    [v41 enumerateObjectsWithOptions:2 usingBlock:v50];
    if ([v56[5] _isGroup])
    {
      v4 = v56[5];
      v5 = [v4 selectedChild];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        while (1)
        {
          v8 = [v7 _displayedViewControllers];
          v9 = [v8 count];

          if (![v7 _isGroup])
          {
            break;
          }

          v10 = [v7 selectedChild];

          if (v10)
          {
            v11 = v9 != 0;
          }

          else
          {
            v11 = 1;
          }

          v7 = v10;
          if (v11)
          {
            if (!v9)
            {
              goto LABEL_15;
            }

            goto LABEL_14;
          }
        }

        v10 = 0;
        if (!v9)
        {
          goto LABEL_15;
        }

LABEL_14:

        v6 = 0;
      }

      else
      {
        v10 = 0;
      }

LABEL_15:
      v12 = v62[3] + 1;
      v62[3] = v12;
      while (v12 < [v41 count])
      {
        v13 = [v41 objectAtIndex:v62[3]];
        v14 = [v13 tab];
        v15 = [v14 _parentGroup];
        v16 = v15 == v4;

        if (!v16)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v17 = [v4 children];
          v18 = [v17 countByEnumeratingWithState:&v46 objects:v65 count:16];
          v19 = v18;
          if (v18)
          {
            v20 = *v47;
LABEL_20:
            v21 = 0;
            while (1)
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v46 + 1) + 8 * v21);
              v18 = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(v18, v22, v13);
              if (v18)
              {
                break;
              }

              if (v19 == ++v21)
              {
                v18 = [v17 countByEnumeratingWithState:&v46 objects:v65 count:16];
                v19 = v18;
                if (v18)
                {
                  goto LABEL_20;
                }

                goto LABEL_34;
              }
            }

            v23 = v22;

            if (v23)
            {
              goto LABEL_30;
            }
          }

          else
          {
LABEL_34:
          }

          goto LABEL_35;
        }

        v23 = v14;
LABEL_30:

        if (![v23 _isGroup] || (objc_msgSend(v23, "children"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count") == 0, v24, v25))
        {
          v6 = v23;
LABEL_35:

          break;
        }

        v26 = v23;

        v6 = [v26 selectedChild];

        v12 = v62[3] + 1;
        v62[3] = v12;
        v4 = v26;
      }

      if (!v6)
      {
        v35 = [v4 selectedChild];
        v36 = v35 == 0;

        if (!v36)
        {
          v37 = [v4 selectedChild];
          if (v37)
          {
            while (1)
            {
              [v37 _resetViewController];
              if (![v37 _isGroup])
              {
                break;
              }

              v38 = [v37 selectedChild];

              v37 = v38;
              if (!v38)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_37:
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_3;
      v42[3] = &unk_1E70F6228;
      v27 = v4;
      v43 = v27;
      v28 = v6;
      v44 = v28;
      v45 = self;
      [(UITabGroup *)self _performWithoutUpdatingManagingNavigationController:v42];
      if (v6)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      objc_storeStrong(v56 + 5, v29);
    }

    v30 = v62[3];
    if ((v30 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
    {
      while (1)
      {
        v31 = [v41 objectAtIndex:v30 - 1];
        if ((__53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(v31, v56[5], v31) & 1) == 0)
        {
          break;
        }

        --v62[3];

        v30 = v62[3];
        if ((v30 - 0x7FFFFFFFFFFFFFFFLL) < 0x8000000000000002)
        {
          goto LABEL_46;
        }
      }

      v30 = v62[3];
    }

LABEL_46:
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v56[5];
      if (!v32)
      {
        v32 = self;
      }

      v33 = v32;
      [(UITab *)v33 _setDisplayedViewControllers:v41];
    }

    else
    {
      v34 = [v41 count];
      v33 = [v41 subarrayWithRange:{v30, v34 - v62[3]}];
      [v56[5] _setDisplayedViewControllers:v33];
    }

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);
  }
}

uint64_t __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 tab];
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v7 = [v4 _displayedViewControllers];
    v8 = [v7 containsObject:v5];
  }

  return v8;
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_37(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_2;
  v11[3] = &unk_1E71057A8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v9;
  v14 = *(a1 + 48);
  v15 = a3;
  v16 = a4;
  v10 = v7;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v11];
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 64);
    **(a1 + 72) = 1;
    *a4 = 1;
  }
}

void __53__UITabGroup__updateForManagingNavigationStackChange__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setSelectedChild:*(a1 + 40)];
  v2 = [*(a1 + 48) _tabModel];
  [v2 selectTab:*(a1 + 32) notifyOnReselection:0];
}

- (void)_performWithoutUpdatingManagingNavigationController:(id)a3
{
  isUpdatingManagedNavigationController = self->_isUpdatingManagedNavigationController;
  self->_isUpdatingManagedNavigationController = 1;
  (*(a3 + 2))(a3, a2);
  self->_isUpdatingManagedNavigationController = isUpdatingManagedNavigationController;
}

- (id)_selectedTabHierarchy
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = self;
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      if (![v5 _isGroup])
      {
        break;
      }

      v6 = v5;
      v5 = [v6 selectedChild];
    }

    while (v5);
  }

  return v3;
}

- (void)_selectedElementDidChange
{
  v3 = [(UITab *)self _tabModel];
  [v3 selectedElementDidChangeForGroup:self];
}

uint64_t __38__UITabGroup__validateSelectedElement__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  return v8;
}

uint64_t __29__UITabGroup__isCustomizable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 _isCustomizable];
  *(*(*(a1 + 32) + 8) + 24) |= result;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (void)_didChangeTabModel:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_sizeClassTraitRegistration)
  {
    v5 = [(UITab *)self tabBarController];
    [v5 unregisterForTraitChanges:self->_sizeClassTraitRegistration];

    sizeClassTraitRegistration = self->_sizeClassTraitRegistration;
    self->_sizeClassTraitRegistration = 0;
  }

  v19.receiver = self;
  v19.super_class = UITabGroup;
  [(UITab *)&v19 _didChangeTabModel:v4];
  if (v4)
  {
    v7 = [v4 customizationStore];
    v8 = [(UITab *)self identifier];
    v9 = [v7 displayOrderIdentifiersForGroupWithIdentifier:v8];

    if (v9)
    {
      [(UITabGroup *)self _setDisplayOrderIdentifiers:v9];
    }

    [(UITabGroup *)self _registerManagingNavigationTraitsIfNeeded];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_children;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) _didChangeTabModel:{v4, v15}];
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (id)_defaultChildForSelection
{
  if ([(UITabGroup *)self isSidebarDestination])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(UITab *)self _tabModel];
    v5 = [(UITabGroup *)self defaultChildIdentifier];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__64;
    v31 = __Block_byref_object_dispose__64;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__64;
    v25 = __Block_byref_object_dispose__64;
    v26 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__UITabGroup__defaultChildForSelection__block_invoke;
    aBlock[3] = &unk_1E7105820;
    v6 = v4;
    v20 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [(UITabGroup *)self children];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__UITabGroup__defaultChildForSelection__block_invoke_2;
    v13[3] = &unk_1E7105848;
    v9 = v5;
    v14 = v9;
    v10 = v7;
    v15 = v10;
    v16 = &v27;
    v17 = v33;
    v18 = &v21;
    [v8 enumerateObjectsUsingBlock:v13];

    v11 = v28[5];
    if (!v11)
    {
      v11 = v22[5];
    }

    v3 = v11;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(v33, 8);
  }

  return v3;
}

uint64_t __39__UITabGroup__defaultChildForSelection__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    return [v2 isTabHidden:a2];
  }

  else
  {
    return [a2 isHidden];
  }
}

void __39__UITabGroup__defaultChildForSelection__block_invoke_2(void *a1, void *a2, uint64_t a3, BOOL *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    if ([v10 _isElement] && ((*(a1[5] + 16))() & 1) == 0)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  if (!*(*(a1[8] + 8) + 40) && [v10 _isElement] && ((*(a1[5] + 16))() & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
  }

  if (*(*(a1[7] + 8) + 24) == 1)
  {
    if (*(*(a1[6] + 8) + 40))
    {
      v9 = 1;
    }

    else
    {
      v9 = *(*(a1[8] + 8) + 40) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

- (BOOL)_canBeReordered
{
  if ([(UITabGroup *)self sidebarAppearance]== 2)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = UITabGroup;
  return [(UITab *)&v4 _canBeReordered];
}

- (BOOL)_canReorderChild:(id)a3
{
  v4 = a3;
  v5 = [(UITabGroup *)self children];
  v6 = [v5 containsObject:v4];
  v8 = v6 && (-[UITabGroup sidebarAppearance](self, "sidebarAppearance") != 1 || (-[UITab parent](self, "parent"), v7 = ;
  return v8;
}

- (id)_filteredDisplayOrderIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(UITabGroup *)self displayOrder];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_orderedChildrenForDisplayOrder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [(UITabGroup *)self displayOrderIdentifiers];
  }

  if (!self->_displayOrder)
  {
    goto LABEL_12;
  }

  displayOrderIdentifiers = self->_displayOrderIdentifiers;
  v6 = v4;
  v7 = displayOrderIdentifiers;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (!v6 || !v7)
  {

    goto LABEL_12;
  }

  v9 = [(NSArray *)v6 isEqual:v7];

  if (v9)
  {
LABEL_10:
    v22 = self->_displayOrder;
    goto LABEL_24;
  }

LABEL_12:
  v10 = [(UITabGroup *)self children];
  if ([v4 count])
  {
    v11 = [(NSArray *)v10 mutableCopy];
    v21 = v4;
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v10, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __46__UITabGroup__orderedChildrenForDisplayOrder___block_invoke;
          v24[3] = &unk_1E7101F18;
          v24[4] = v16;
          v17 = [v11 indexOfObjectPassingTest:v24];
          if (v17 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = v17;
            v19 = [v11 objectAtIndex:v17];
            [(NSArray *)v22 addObject:v19];
            [v11 removeObjectAtIndex:v18];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    [(NSArray *)v22 addObjectsFromArray:v11];
    v4 = v21;
  }

  else
  {
    v22 = v10;
  }

LABEL_24:

  return v22;
}

uint64_t __46__UITabGroup__orderedChildrenForDisplayOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_selectElement:(id)a3 notifyOnReselection:(BOOL)a4 performBeforeNotifyingDelegate:(id)a5
{
  v6 = a4;
  v10 = a3;
  v11 = a5;
  if (v10 && ![(UITab *)v10 _isElement])
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UITabGroup.m" lineNumber:716 description:{@"Cannot select a tab (%@) that is not seletable.", v10}];
  }

  selectedChild = self->_selectedChild;
  objc_storeStrong(&self->_selectedChild, a3);
  if (v11)
  {
    v11[2](v11);
  }

  if (selectedChild != v10 || !v6)
  {
    v18 = v10;
  }

  else
  {
    if (v10)
    {
      v14 = v10;
      while (1)
      {
        v18 = v14;
        [(UITab *)v14 _setDisplayedViewControllers:0];
        if (![(UITab *)v18 _isGroup])
        {
          break;
        }

        v15 = [(UITab *)v18 selectedChild];

        v14 = v15;
        if (!v15)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v18 = 0;
    }

    v16 = [(UITabGroup *)self managingTabGroup];
    [v16 _updateManagingNavigationStackUsingTransition:1 isExplicit:1];
  }

  if (selectedChild != v10)
  {
    [(UITabGroup *)self _selectedElementDidChange];
  }
}

- (BOOL)_setDisplayOrderIdentifiers:(id)a3
{
  v5 = a3;
  v6 = self->_displayOrderIdentifiers;
  v7 = v5;
  v8 = v7;
  v9 = v6 != v7;
  if (v6 == v7)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v10 = [(NSArray *)v6 isEqual:v7];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_displayOrderIdentifiers, a3);
    [(UITabGroup *)self _invalidateDisplayOrder];
    v6 = [(UITab *)self _tabModel];
    [(NSArray *)v6 displayOrderIdentifiersDidChangeForGroup:self];
    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_updateDescriptionWithBuilder:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8.receiver = self;
  v8.super_class = UITabGroup;
  [(UITab *)&v8 _updateDescriptionWithBuilder:v6 recursive:v4];
  if (!v4 && [(NSArray *)self->_children count])
  {
    v7 = [v6 appendName:@"children" object:self->_children usingLightweightDescription:1];
  }
}

@end